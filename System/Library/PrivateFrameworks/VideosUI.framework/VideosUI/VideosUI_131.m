uint64_t sub_1E41130F4(uint64_t a1)
{
  sub_1E3C34E14();
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v248 = a1;
  v258 = a1 + 64;
  v268 = v7;
LABEL_4:
  if (v6)
  {
    v10 = v9;
    goto LABEL_10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v303 = 0u;
      v304 = 0u;
      v302 = 0u;
      goto LABEL_11;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
LABEL_10:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v10 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1E328438C(*(a1 + 56) + 32 * v12, __src);
      *&v302 = v15;
      *(&v302 + 1) = v14;
      sub_1E329504C(__src, &v303);

LABEL_11:
      v285 = v302;
      v286 = v303;
      v287 = v304;
      if (!*(&v302 + 1))
      {
      }

      sub_1E329504C(&v286, &v282);
      OUTLINED_FUNCTION_74();
      v16 = sub_1E3D46B48();
      v24 = v16;
      switch(v16)
      {
        case '0':
          v51 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v51, v52, v53, v54, v55, v56, v57, v58, v173, v183, v193, v204, v216, v228, v240, v252, v262, v272, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376AD24();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376AD24();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376AD24();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376AD24();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376AD24();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376AD24();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v136, v137);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v138;
          (*(*v1 + 1600))(&v278, 48, 1, &qword_1F5D549D8);
          goto LABEL_158;
        case '1':
          v59 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v59, v60, v61, v62, v63, v64, v65, v66, v174, v184, v194, v205, v217, v229, v241, v253, v263, v273, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E37695D0();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E37695D0();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E37695D0();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E37695D0();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E37695D0();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E37695D0();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v139, v140);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v141;
          (*(*v1 + 1600))(&v278, 49, 1, &unk_1F5D54948);
          goto LABEL_158;
        case '2':
        case 'D':
        case 'K':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224);
          sub_1E3C3AB84(&v302, v24, 1);
          goto LABEL_38;
        case '3':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224);
          sub_1E3C3A5F4(&v302, 51, 1);
          goto LABEL_38;
        case '4':
        case 'A':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224);
          sub_1E3C3A5D4(&v302, v24, 1);
          goto LABEL_38;
        case '5':
          v77 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v77, v78, v79, v80, v81, v82, v83, v84, v176, v186, v196, v207, v219, v231, v243, v255, v265, v275, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B10C();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B10C();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B10C();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B10C();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B10C();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B10C();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v145, v146);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v147;
          (*(*v1 + 1600))(&v278, 53, 1, &unk_1F5D54A68);
          goto LABEL_158;
        case '6':
          v43 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v43, v44, v45, v46, v47, v48, v49, v50, v172, v182, v192, v203, v215, v227, v239, v251, v261, v271, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B2C8();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B2C8();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B2C8();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B2C8();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B2C8();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B2C8();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v133, v134);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v135;
          (*(*v1 + 1600))(&v278, 54, 1, &qword_1F5D54AF8);
          goto LABEL_158;
        case '7':
          v26 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v26, v27, v28, v29, v30, v31, v32, v33, v170, v180, v190, v201, v213, v225, v237, v249, v259, v269, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B4C8();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B4C8();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B4C8();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B4C8();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B4C8();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B4C8();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v129, v130);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v131;
          (*(*v1 + 1600))(&v278, 55, 1, &unk_1F5D54B88);
          goto LABEL_158;
        case '8':
          v86 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v86, v87, v88, v89, v90, v91, v92, v93, v177, v187, v197, v208, v220, v232, v244, v256, v266, v276, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376BD2C();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376BD2C();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376BD2C();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376BD2C();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376BD2C();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376BD2C();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v148, v149);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v150;
          (*(*v1 + 1600))(&v278, 56, 1, &unk_1F5D54E58);
          goto LABEL_158;
        case ':':
          v67 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v67, v68, v69, v70, v71, v72, v73, v74, v175, v185, v195, v206, v218, v230, v242, v254, v264, v274, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B670();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B670();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B670();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B670();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B670();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B670();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v142, v143);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v144;
          (*(*v1 + 1600))(&v278, 58, 1, &unk_1F5D54C18);
          goto LABEL_158;
        case ';':
          v94 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v94, v95, v96, v97, v98, v99, v100, v101, v178, v188, v198, v209, v221, v233, v245, v257, v267, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            OUTLINED_FUNCTION_74();
            sub_1E376B880();
          }

          if (*(&v303 + 1))
          {
            OUTLINED_FUNCTION_25_113();
            OUTLINED_FUNCTION_53();
            sub_1E376B880();
          }

          if (*(&v304 + 1))
          {
            OUTLINED_FUNCTION_24_116();
            OUTLINED_FUNCTION_53();
            sub_1E376B880();
          }

          if (v306)
          {
            OUTLINED_FUNCTION_23_109();
            OUTLINED_FUNCTION_168();
            sub_1E376B880();
          }

          if (v308)
          {
            OUTLINED_FUNCTION_22_102();
            OUTLINED_FUNCTION_17_11();
            sub_1E376B880();
          }

          v7 = v310;
          if (v310)
          {
            OUTLINED_FUNCTION_21_123();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_4_271();
            sub_1E376B880();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
          }

          OUTLINED_FUNCTION_0_347();
          sub_1E3C2FCB8(v151, v152);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v153;
          (*(*v1 + 1600))(&v278, 59, 1, &unk_1F5D54CA8);
LABEL_158:
          sub_1E325F748(__src, &unk_1ECF296E0);
          result = __swift_destroy_boxed_opaque_existential_1(&v282);
          v3 = v258;
          goto LABEL_4;
        case '>':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224);
          v25 = 62;
          goto LABEL_37;
        case '?':
        case '@':
          OUTLINED_FUNCTION_24_56(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224);
          v25 = v24;
LABEL_37:
          sub_1E3C3ABD4(&v302, v25, 1);
LABEL_38:
          v85 = &v302;
          goto LABEL_39;
        case 'B':
          sub_1E328438C(&v282, __dst);
          sub_1E3C3913C();
          v102 = v303;
          v103 = BYTE8(v303);
          v104 = v304;
          v105 = BYTE8(v304);
          v106 = v306;
          v107 = v308;
          v222 = v307;
          v234 = v309;
          v246 = v310;
          v210 = v305;
          if (BYTE8(v302))
          {
            v108 = 0;
            if ((BYTE8(v303) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v108 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            if ((v103 & 1) == 0)
            {
LABEL_47:
              v109 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
              if ((v105 & 1) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_53;
            }
          }

          v109 = 0;
          if ((v105 & 1) == 0)
          {
LABEL_48:
            v110 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            if ((v106 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_54;
          }

LABEL_53:
          v110 = 0;
          if ((v106 & 1) == 0)
          {
LABEL_49:
            v111 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            if ((v107 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_55;
          }

LABEL_54:
          v111 = 0;
          if ((v107 & 1) == 0)
          {
LABEL_50:
            v112 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
            goto LABEL_56;
          }

LABEL_55:
          v112 = 0;
LABEL_56:
          if (v246)
          {
            v113 = 0;
          }

          else
          {
            v113 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
          }

          *__src = v108;
          v278 = v109;
          v297 = v111;
          v295 = v110;
          v293 = v112;
          v291 = v113;
          v114 = sub_1E3280A90(0, &qword_1EE23ADD0);
          v247 = v108;
          v235 = v109;
          v223 = v111;
          v211 = v110;
          v199 = v112;
          v115 = v113;
          v123 = OUTLINED_FUNCTION_16_88(v115, v116, v117, v118, v119, v120, v121, v122, v169, v115, v199, v211, v223, v235, v247, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C2FCB8(v123, v124);
          v126 = *(&v302 + 1);
          v125 = v302;
          v127 = v303;
          v128 = v304;
          *__src = v302;
          *&__src[16] = v303;
          *&__src[32] = v304;
          (*(*v1 + 1600))(__src, 66, 1, v114);

          sub_1E325F748(__dst, &unk_1ECF296E0);
          result = __swift_destroy_boxed_opaque_existential_1(&v282);
          a1 = v248;
          v3 = v258;
          v7 = v268;
          break;
        case 'C':
          sub_1E328438C(&v282, &v278);
          sub_1E3C3913C();
          if (!*(&v302 + 1) || (OUTLINED_FUNCTION_19_153(), OUTLINED_FUNCTION_74(), sub_1E376BA44(), OUTLINED_FUNCTION_16_162(), v76))
          {
            v236 = 0;
            LODWORD(v224) = 1;
          }

          else
          {
            v236 = j__OUTLINED_FUNCTION_13_30(v75);
            LODWORD(v224) = 0;
          }

          if (!*(&v303 + 1) || (, OUTLINED_FUNCTION_74(), sub_1E376BA44(), OUTLINED_FUNCTION_16_162(), v76))
          {
            v212 = 0;
            LODWORD(v200) = 1;
          }

          else
          {
            v212 = j__OUTLINED_FUNCTION_13_30(v154);
            LODWORD(v200) = 0;
          }

          if (!*(&v304 + 1) || (, OUTLINED_FUNCTION_74(), sub_1E376BA44(), OUTLINED_FUNCTION_16_162(), v76))
          {
            v189 = 0;
            v156 = 1;
          }

          else
          {
            v189 = j__OUTLINED_FUNCTION_13_30(v155);
            v156 = 0;
          }

          v157 = v306;
          if (!v306)
          {
            goto LABEL_171;
          }

          OUTLINED_FUNCTION_74();
          sub_1E376BA44();
          OUTLINED_FUNCTION_16_162();
          if (v76)
          {
            v157 = 0;
LABEL_171:
            v159 = 1;
          }

          else
          {
            v157 = j__OUTLINED_FUNCTION_13_30(v158);
            v159 = 0;
          }

          v160 = v308;
          if (!v308)
          {
            goto LABEL_176;
          }

          OUTLINED_FUNCTION_53();
          sub_1E376BA44();
          OUTLINED_FUNCTION_16_162();
          if (v76)
          {
            v160 = 0;
LABEL_176:
            v162 = 1;
          }

          else
          {
            v160 = j__OUTLINED_FUNCTION_13_30(v161);
            v162 = 0;
          }

          if (v310)
          {

            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_168();
            sub_1E376BA44();
            OUTLINED_FUNCTION_16_162();
            if (v76)
            {
              v164 = 0;
              v165 = 1;
            }

            else
            {
              v164 = j__OUTLINED_FUNCTION_13_30(v163);
              v165 = 0;
            }

            v3 = v258;
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
            v164 = 0;
            v165 = 1;
          }

          *__dst = v236;
          __dst[8] = v224;
          v297 = v212;
          LOBYTE(v298) = v200;
          v295 = v189;
          LOBYTE(v296) = v156;
          v293 = v157;
          LOBYTE(v294) = v159;
          v291 = v160;
          LOBYTE(v292) = v162;
          v289 = v164;
          LOBYTE(v290) = v165;
          type metadata accessor for NSLineBreakMode();
          v167 = v166;
          sub_1E3C2FCB8(__dst, __src);
          memcpy(__dst, __src, 0x59uLL);
          OUTLINED_FUNCTION_36();
          (*(v168 + 1600))(__dst, 67, 1, v167);
          sub_1E325F748(&v278, &unk_1ECF296E0);
          result = __swift_destroy_boxed_opaque_existential_1(&v282);
          a1 = v248;
          v7 = v268;
          goto LABEL_4;
        case 'F':
          v34 = OUTLINED_FUNCTION_22_60(v16, v17, v18, v19, v20, v21, v22, v23, v169, v179, v189, v200, v212, v224, v236, v248, v258, v268, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          OUTLINED_FUNCTION_16_88(v34, v35, v36, v37, v38, v39, v40, v41, v171, v181, v191, v202, v214, v226, v238, v250, v260, v270, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, __src[0]);
          sub_1E3C3913C();
          if (*(&v302 + 1))
          {
            OUTLINED_FUNCTION_19_153();
            sub_1E325F748(&v302, &qword_1ECF346E8);
            OUTLINED_FUNCTION_74();
            v42 = sub_1E376BC10();
          }

          else
          {
            sub_1E325F748(&v302, &qword_1ECF346E8);
            v42 = 3;
          }

          LOBYTE(v278) = v42;
          LOBYTE(v297) = 3;
          LOBYTE(v295) = 3;
          LOBYTE(v293) = 3;
          sub_1E3C3DE00(&unk_1F5D54DC8);
          LOBYTE(v289) = v291;
          sub_1E3C3DE00(&unk_1F5D54DC8);
          v300 = v301;
          sub_1E3C2FCB8(&v278, __dst);
          OUTLINED_FUNCTION_13_191();
          LODWORD(v278) = *__dst;
          WORD2(v278) = v132;
          (*(*v1 + 1600))(&v278, 70, 1, &unk_1F5D54DC8);
          v85 = __src;
LABEL_39:
          sub_1E325F748(v85, &unk_1ECF296E0);
          goto LABEL_40;
        default:
LABEL_40:
          result = __swift_destroy_boxed_opaque_existential_1(&v282);
          goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E41144F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35[3] = a3;
  v38 = a2;
  v42 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40628);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40630);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v37 = v35 - v9;
  type metadata accessor for RoomBanner();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CastRoomBanner();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v35 - v20;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v35 - v23;
  switch(*(a1 + 98))
  {
    case 'Q':

      sub_1E3A9700C(v34, v15);
      sub_1E4114DA0(v15, v21, type metadata accessor for CastRoomBanner);
      swift_storeEnumTagMultiPayload();
      sub_1E4114C48();
      sub_1E4114C9C(&qword_1EE2831B0, type metadata accessor for CastRoomBanner);
      sub_1E4201F44();
      sub_1E37E93E8(v24, v18, &qword_1ECF40648);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      sub_1E325F6F0(v24, &qword_1ECF40648);
      v32 = v15;
      v33 = type metadata accessor for CastRoomBanner;
      return sub_1E4114E00(v32, v33);
    case 'R':
    case 'S':
    case 'V':

      v25 = v38;

      sub_1E3884424(a1, v25, __src);
      memcpy(v21, __src, 0x60uLL);
      swift_storeEnumTagMultiPayload();
      sub_1E38855B4(__src, v43);
      sub_1E4114C48();
      sub_1E4114C9C(&qword_1EE2831B0, type metadata accessor for CastRoomBanner);
      sub_1E4201F44();
      v26 = &qword_1ECF40648;
      sub_1E37E93E8(v24, v18, &qword_1ECF40648);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      sub_1E4114E58(__src);
      v27 = v24;
      return sub_1E325F6F0(v27, v26);
    case 'T':

      v30 = v38;

      sub_1E39DC940(a1, v30, v12);
      sub_1E4114DA0(v12, v7, type metadata accessor for RoomBanner);
      swift_storeEnumTagMultiPayload();
      sub_1E4114C9C(&qword_1EE287D68, type metadata accessor for RoomBanner);
      v31 = v37;
      sub_1E4201F44();
      sub_1E37E93E8(v31, v18, &qword_1ECF40630);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      sub_1E325F6F0(v31, &qword_1ECF40630);
      v32 = v12;
      v33 = type metadata accessor for RoomBanner;
      return sub_1E4114E00(v32, v33);
    default:
      swift_storeEnumTagMultiPayload();
      sub_1E4114C9C(&qword_1EE287D68, type metadata accessor for RoomBanner);
      v28 = v37;
      sub_1E4201F44();
      v26 = &qword_1ECF40630;
      sub_1E37E93E8(v28, v18, &qword_1ECF40630);
      OUTLINED_FUNCTION_2_267();
      swift_storeEnumTagMultiPayload();
      sub_1E4114B8C();
      sub_1E4114CE4();
      OUTLINED_FUNCTION_0_348();
      sub_1E4201F44();
      v27 = v28;
      return sub_1E325F6F0(v27, v26);
  }
}

unint64_t sub_1E4114B8C()
{
  result = qword_1EE289208;
  if (!qword_1EE289208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40648);
    sub_1E4114C48();
    sub_1E4114C9C(&qword_1EE2831B0, type metadata accessor for CastRoomBanner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289208);
  }

  return result;
}

unint64_t sub_1E4114C48()
{
  result = qword_1EE288080;
  if (!qword_1EE288080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288080);
  }

  return result;
}

uint64_t sub_1E4114C9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4114CE4()
{
  result = qword_1EE2891F8;
  if (!qword_1EE2891F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40630);
    sub_1E4114C9C(&qword_1EE287D68, type metadata accessor for RoomBanner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891F8);
  }

  return result;
}

uint64_t sub_1E4114DA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E4114E00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E4114EBC()
{
  result = qword_1EE288D28;
  if (!qword_1EE288D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF40650);
    sub_1E4114B8C();
    sub_1E4114CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D28);
  }

  return result;
}

uint64_t sub_1E4114F48()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E4114F94(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E4115000(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E411508C()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E41150CC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E411517C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 0;
  v6 = type metadata accessor for RootSplitTabBarController();
  OUTLINED_FUNCTION_25();
  v3 = objc_msgSendSuper2(v1, v2, v0, v6);
  result = [v3 view];
  if (result)
  {
    v5 = result;
    [result setBackgroundColor_];

    [v3 setDelegate_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E41152A4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_splitDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_trackModeSwitchOnParentMoveEvents) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4115354(void *a1)
{
  v2 = v1;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RootSplitTabBarController();
  v33.receiver = v2;
  v33.super_class = v16;
  v17 = objc_msgSendSuper2(&v33, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    type metadata accessor for RootSplitViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = a1;
    if (![v19 isKindOfClass_] || ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))() & 1) == 0)
    {

      *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 1;
      *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 0;
      return;
    }

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v29 = sub_1E4206A04();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_349();
    OUTLINED_FUNCTION_1_308(COERCE_DOUBLE(1107296256));
    v31 = v20;
    v32 = &block_descriptor_4_2;
    v21 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    OUTLINED_FUNCTION_2_268();
    v22 = OUTLINED_FUNCTION_6_237();
    v23 = v29;
    MEMORY[0x1E6911380](v22);
    _Block_release(v21);

    goto LABEL_8;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v17))
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v24 = sub_1E4206A04();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_349();
    OUTLINED_FUNCTION_1_308(COERCE_DOUBLE(1107296256));
    v31 = v25;
    v32 = &block_descriptor_167;
    v26 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    OUTLINED_FUNCTION_2_268();
    v27 = OUTLINED_FUNCTION_6_237();
    MEMORY[0x1E6911380](v27);
    _Block_release(v26);

LABEL_8:
    (*(v6 + 8))(v9, v4);
    (*(v12 + 8))(v15, v10);
    return;
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForDissapear) = 1;
  *(v2 + OBJC_IVAR____TtC8VideosUI25RootSplitTabBarController_listenForAppear) = 1;
}

void sub_1E4115780(char a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x70))();
    v6 = v5;

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(a1 & 1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E411591C(char a1, SEL *a2, uint64_t *a3, char a4)
{
  v8 = v4;
  v16.receiver = v8;
  v16.super_class = type metadata accessor for RootSplitTabBarController();
  result = objc_msgSendSuper2(&v16, *a2, a1 & 1);
  v11 = *a3;
  if (*(v8 + *a3) == 1)
  {
    v12 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x88))(result);
    if ((result & 1) == 0)
    {
      result = (*((*v12 & *v8) + 0x70))();
      if (result)
      {
        v14 = v13;
        ObjectType = swift_getObjectType();
        (*(v14 + 16))(a4 & 1, ObjectType, v14);
        result = swift_unknownObjectRelease();
      }

      *(v8 + v11) = 0;
    }
  }

  return result;
}

void sub_1E4115A9C(unint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = sub_1E4115D98(a1);
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x1E69E7CC0];
      v22 = MEMORY[0x1E69E7CC0];
      v8 = sub_1E32AE9B0(v5);
      if (!v8)
      {
LABEL_23:

        if (v7 >> 62)
        {
          sub_1E3280A90(0, &qword_1EE23B250);

          sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          sub_1E3280A90(0, &qword_1EE23B250);
        }

        sub_1E3280A90(0, &qword_1EE23B250);
        v21 = sub_1E42062A4();

        goto LABEL_26;
      }

      v9 = v8;
      type metadata accessor for RootHostingViewController();
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E6911E60](i, v6);
          }

          else
          {
            v11 = *(v6 + 8 * i + 32);
          }

          v12 = v11;
          sub_1E41191BC(v12);
          MEMORY[0x1E6910BF0]();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
        }

        v7 = v22;
        goto LABEL_23;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }
  }

  v13 = sub_1E4116514(v2, &selRef_viewControllers);
  if (v13)
  {
    v14 = sub_1E4115ECC(v13);

    if (v14)
    {
      v15 = sub_1E32AE9B0(v14);
      if (v15)
      {
        v16 = v15;
        if (v15 < 1)
        {
          goto LABEL_31;
        }

        v17 = 0;
        v18 = MEMORY[0x1E69E7D40];
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E6911E60](v17, v14);
          }

          else
          {
            v19 = *(v14 + 8 * v17 + 32);
          }

          v20 = v19;
          ++v17;
          (*((*v18 & *v19) + 0x98))(0);
        }

        while (v16 != v17);
      }

      v21 = 0;
LABEL_26:
      v23.receiver = v3;
      v23.super_class = type metadata accessor for RootSplitTabBarController();
      objc_msgSendSuper2(&v23, sel_setViewControllers_animated_, v21, a2 & 1);
    }
  }
}

id sub_1E4115D98(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_1E4115ECC(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for RootHostingViewController();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_1E4116140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSplitTabBarController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4116184(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for RootSplitTabBarController();
  if (swift_dynamicCastClass())
  {
    v6 = a1;
    sub_1E4116260(a2);
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x70))())
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        (*(v11 + 8))(v9, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

void sub_1E4116260(void *a1)
{
  v2 = v1;
  v4 = sub_1E4116514(v2, &selRef_vuiViewControllers);
  if (!v4)
  {
    return;
  }

  v5 = sub_1E4115ECC(v4);

  if (!v5)
  {
    return;
  }

  type metadata accessor for RootHostingViewController();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
LABEL_26:

    return;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x60);
  v8 = a1;
  v9 = v7();
  if (!v9 || (v10 = sub_1E3D4B954(v9), !v11))
  {

    goto LABEL_26;
  }

  v12 = v10;
  v13 = v11;
  v23 = v8;
  v14 = sub_1E32AE9B0(v5);
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      goto LABEL_26;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E6911E60](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v5 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v18 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x60))();
    if (v18 && (v19 = sub_1E3D4B954(v18), v20))
    {
      if (v12 == v19 && v13 == v20)
      {

        goto LABEL_26;
      }

      v22 = sub_1E42079A4();

      if (v22)
      {

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1E4116514(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1E3280A90(0, &qword_1EE23B250);
  v4 = sub_1E42062B4();

  return v4;
}

uint64_t sub_1E41165F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 248) = a4;
  *(v5 + 256) = a5;

  v6 = sub_1E39C0300();

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1E4116670(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a3;
  v33 = a4;
  v12 = sub_1E41FE624();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE614();
  v16 = sub_1E41FE5E4();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  v19 = *(v7 + 840);

  v20 = v19(v16, v18, 0, a5, a6);
  if (v20)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;

    *(inited + 32) = sub_1E3C7CCAC(0);
    *(inited + 40) = v23;
    v34 = 0x656372756F736572;
    v35 = 0xEB000000002F2F3ALL;
    MEMORY[0x1E69109E0](a1, a2);

    v24 = v34;
    v25 = v35;
    v26 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v24;
    *(inited + 56) = v25;
    v27 = sub_1E4205CB4();
    type metadata accessor for ImageViewModel();
    swift_retain_n();
    v28 = sub_1E3F5321C(39, v27, v20);
    v29 = v33;
    if (v28)
    {
      MEMORY[0x1E6910BF0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v21 = v37;
    }

    type metadata accessor for TextViewModel();
    v36 = v26;
    v34 = v32;
    v35 = v29;
    if (sub_1E3C27638(23, &v34, v20, 0, 0))
    {
      MEMORY[0x1E6910BF0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v21 = v37;
    }

    (*(*v20 + 472))(v21);
  }

  else
  {
  }

  return v20;
}

BOOL sub_1E41169BC(unsigned __int8 a1)
{
  v2 = a1 - 1;
  if (v2 <= 1)
  {
    (*(v1 + 248))();
  }

  return v2 < 2;
}

uint64_t sub_1E4116A64()
{
  v0 = ViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 264, 7);
}

void *sub_1E4116AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40670) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &__src[-v5];
  sub_1E4116C78(*(v1 + 16), &__src[-v5]);
  v7 = &v6[*(v3 + 44)];
  *v7 = (*(v1 + 112) & 0x100) == 0;
  v7[1] = 1;
  if (sub_1E41175F8())
  {
    sub_1E4203DB4();
  }

  else
  {
    sub_1E4203DA4();
  }

  sub_1E42015C4();
  sub_1E329E454(v6, a1, &qword_1ECF40670);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40678);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E4116C78@<X0>(unsigned __int16 *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v93 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B188);
  OUTLINED_FUNCTION_6_4(v5, &v104);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v82 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D0);
  OUTLINED_FUNCTION_6_4(v8, &v108);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v82 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38540);
  OUTLINED_FUNCTION_6_4(v11, &v103);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v82 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40680);
  v15 = OUTLINED_FUNCTION_6_4(v14, &v105);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(&v82 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40688);
  OUTLINED_FUNCTION_6_4(v19, &v106);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40698);
  OUTLINED_FUNCTION_6_4(v27, &v107);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  v32 = *(v31 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v82 - v34;
  v36 = a1[49];
  if (sub_1E373F6E0())
  {
    sub_1E3EB9AD0(0, 0, 1, v3[13], 0, 0, &v96);
    OUTLINED_FUNCTION_9_198();
    v100 = v37;
    v99 = v96;
    v101 = v97;
    v102 = v98;
    v38 = (*(*a1 + 392))();
    v39 = OUTLINED_FUNCTION_7_245();
    sub_1E382A9B4(v39, v40, v38, v41);

    (*(v32 + 16))(v26, v35, v31);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_2();
    sub_1E4117840();
    sub_1E4201F44();
    sub_1E3294EE4(v30, v22, &qword_1ECF40698);
    swift_storeEnumTagMultiPayload();
    sub_1E411779C();
    sub_1E3E94434();
    OUTLINED_FUNCTION_4_272();
    sub_1E4201F44();
    sub_1E325F6F0(v30, &qword_1ECF40698);
    return (*(v32 + 8))(v35, v31);
  }

  else
  {
    v82 = v23;
    v83 = v26;
    v84 = v30;
    v85 = v32;
    v86 = v31;
    if (sub_1E373F6E0())
    {
      OUTLINED_FUNCTION_5_251(v3[4], v3[5]);
      OUTLINED_FUNCTION_9_198();
      v100 = v43;
      v99 = v96;
      v101 = v97;
      v102 = v98;
      v44 = *(*a1 + 392);
      v45 = v44();
      v46 = v91;
      sub_1E382A9B4(a1, &v99, v45, v91);

      *(v46 + *(v87 + 36)) = 1;
      v48 = (v44)(v47);
      if (v48 && ((*(*v48 + 176))(v94), v49 = v94[0], v50 = v94[1], v51 = v94[2], v52 = v94[3], , (v95 & 1) == 0))
      {
        v53.n128_u64[0] = v49;
        v54.n128_u64[0] = v50;
        v55.n128_u64[0] = v51;
        v56.n128_u64[0] = v52;
        v57 = j_nullsub_1(v53, v54, v55, v56);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_5_8();
      }

      v69 = v57;
      v70 = v58;
      v71 = v59;
      v72 = v60;
      v73 = v22;
      v74 = v92;
      v75 = v84;
      v76 = v83;
      v77 = sub_1E4202734();
      v78 = v88;
      sub_1E329E454(v91, v88, &qword_1ECF38540);
      v79 = v78 + *(v74 + 36);
      *v79 = v77;
      *(v79 + 8) = v69;
      *(v79 + 16) = v70;
      *(v79 + 24) = v71;
      *(v79 + 32) = v72;
      *(v79 + 40) = 0;
      v80 = v78;
      v81 = v89;
      sub_1E329E454(v80, v89, &qword_1ECF40680);
      sub_1E3294EE4(v81, v76, &qword_1ECF40680);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_2();
      sub_1E4117840();
      sub_1E4201F44();
      sub_1E3294EE4(v75, v73, &qword_1ECF40698);
      swift_storeEnumTagMultiPayload();
      sub_1E411779C();
      sub_1E3E94434();
      OUTLINED_FUNCTION_4_272();
      sub_1E4201F44();
      sub_1E325F6F0(v75, &qword_1ECF40698);
      return sub_1E325F6F0(v81, &qword_1ECF40680);
    }

    else
    {
      sub_1E373F6E0();
      OUTLINED_FUNCTION_5_251(v3[4], v3[5]);
      OUTLINED_FUNCTION_9_198();
      v100 = v61;
      v99 = v96;
      v101 = v97;
      v102 = v98;
      v62 = (*(*a1 + 392))();
      v63 = OUTLINED_FUNCTION_7_245();
      sub_1E382A9B4(v63, v64, v62, v65);

      v66 = OUTLINED_FUNCTION_3_278();
      v67(v66);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_2();
      v68 = v90;
      sub_1E4201F44();
      sub_1E3294EE4(v68, v22, &qword_1ECF3B0D0);
      swift_storeEnumTagMultiPayload();
      sub_1E411779C();
      sub_1E3E94434();
      OUTLINED_FUNCTION_4_272();
      sub_1E4201F44();
      sub_1E325F6F0(v68, &qword_1ECF3B0D0);
      return (*(v23 + 8))(v35, v36);
    }
  }
}

uint64_t sub_1E41175F8()
{
  v1 = (**(v0 + 16) + 392);
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    type metadata accessor for TextLayout();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = (*(*v4 + 1976))();

      if (v5 != 7)
      {
        sub_1E376C3B8();
        v3 = sub_1E4205E84();
        if (v3)
        {
          LOBYTE(v6) = 1;
          return v6 & 1;
        }
      }
    }

    else
    {
    }
  }

  v6 = (v2)(v3);
  if (v6)
  {
    v7 = (*(*v6 + 456))(v6);

    if (v7 == 7)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      sub_1E3793D00();
      LOBYTE(v6) = sub_1E4205E84();
    }
  }

  return v6 & 1;
}

unint64_t sub_1E411779C()
{
  result = qword_1ECF406A0;
  if (!qword_1ECF406A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40698);
    swift_getOpaqueTypeConformance2();
    sub_1E4117840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406A0);
  }

  return result;
}

unint64_t sub_1E4117840()
{
  result = qword_1ECF406A8;
  if (!qword_1ECF406A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40680);
    sub_1E41178CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406A8);
  }

  return result;
}

unint64_t sub_1E41178CC()
{
  result = qword_1ECF406B0;
  if (!qword_1ECF406B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38540);
    swift_getOpaqueTypeConformance2();
    sub_1E38680BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406B0);
  }

  return result;
}

void *sub_1E4117970@<X0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, unsigned int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  v11 = (a6 >> 8) & 1;
  result = memcpy((a7 + 32), __src, 0x41uLL);
  *(a7 + 104) = a8;
  *(a7 + 112) = v8;
  *(a7 + 113) = v11;
  return result;
}

uint64_t sub_1E41179F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 114))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4117A30(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4117AA0()
{
  result = qword_1ECF406B8;
  if (!qword_1ECF406B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40678);
    sub_1E4117B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406B8);
  }

  return result;
}

unint64_t sub_1E4117B2C()
{
  result = qword_1ECF406C0;
  if (!qword_1ECF406C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40670);
    sub_1E4117BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406C0);
  }

  return result;
}

unint64_t sub_1E4117BB8()
{
  result = qword_1ECF406C8;
  if (!qword_1ECF406C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF406D0);
    sub_1E411779C();
    sub_1E3E94434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF406C8);
  }

  return result;
}

uint64_t sub_1E4117C44()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for BarButtonItemsLayout();
    swift_allocObject();
    v1 = sub_1E3C2F9A0();
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E4117CDC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for LargeTitleAccessoryViewLayout();
    swift_allocObject();
    v1 = sub_1E4118C9C();
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E4117DB8()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E4117E98(0);

  return v1;
}

uint64_t sub_1E4117E3C()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E4117E98(v2);

  return v1;
}

uint64_t sub_1E4117E98(uint64_t a1)
{
  v29[3] = &unk_1F5D5DBE8;
  v29[4] = &off_1F5D5C9D8;
  LOBYTE(v29[0]) = 1;
  type metadata accessor for ViewModel();
  v2 = j__OUTLINED_FUNCTION_18();
  sub_1E39C3418(v29, v2 & 1, a1);
  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_9_2();
  (*(v3 + 1160))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_9_2();
  v5 = *(v4 + 1720);
  v5();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1696))(7);

  v8 = (v5)(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  OUTLINED_FUNCTION_9_2();
  v13 = *(v12 + 1744);
  v13();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 256))(0x4064000000000000, 0);

  (v13)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 360))(0x4038000000000000, 0);

  v18 = (v5)(v17);
  sub_1E3C37CBC(v18, 23);

  v20 = (v13)(v19);
  sub_1E3C37CBC(v20, 39);

  OUTLINED_FUNCTION_9_2();
  v22 = *(v21 + 1768);
  v23 = v22();
  sub_1E3C37CBC(v23, 102);

  v25 = (v22)(v24);
  sub_1E3C37CBC(v25, 101);

  OUTLINED_FUNCTION_9_2();
  v27 = (*(v26 + 1792))();
  sub_1E3C37CBC(v27, 103);
}

void sub_1E4118204(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a1);
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2CA00();
}

uint64_t sub_1E4118274()
{
  v0 = type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3BBD964(8, v1 & 1, v2, v3 & 1);
  sub_1E41E1A64(&v5, sub_1E4118310, v0, &v6);

  return v6;
}

uint64_t sub_1E4118310(uint64_t *a1)
{
  v2 = sub_1E39DFFC8();
  v3 = *a1;
  if (v2)
  {
    *&v46 = 0x4034000000000000;
    BYTE8(v46) = 0;
    (*(*v3 + 1608))(2);
    OUTLINED_FUNCTION_111();
    v5 = *(v4 + 200);
    v5();
    OUTLINED_FUNCTION_9_2();
    (*(v6 + 312))();
    OUTLINED_FUNCTION_9_2();
    (*(v7 + 1888))(1);
    v46 = 0u;
    v47 = 0u;
    v48 = 1;
    OUTLINED_FUNCTION_111();
    (*(v8 + 184))(&v46);
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    OUTLINED_FUNCTION_9_2();
    (*(v11 + 752))();
    OUTLINED_FUNCTION_9_2();
    v13 = *(v12 + 2096);
    v14 = v13();
    v15 = (v5)();
    (*(*v14 + 2144))(v15, v16 & 1);

    v18 = (v13)(v17);
    (*(*v18 + 752))([v9 clearColor]);

    v20 = (v13)(v19);
    v21 = *sub_1E3E5FDEC();
    v22 = *(*v20 + 680);
    v23 = v21;
    v22(v21);
  }

  else
  {
    (*(*v3 + 208))(0x4034000000000000, 0);
    OUTLINED_FUNCTION_111();
    v26 = *(v25 + 200);
    v26();
    OUTLINED_FUNCTION_9_2();
    (*(v27 + 312))();
    v46 = 0u;
    v47 = 0u;
    v48 = 1;
    OUTLINED_FUNCTION_111();
    (*(v28 + 184))(&v46);
    v29 = [objc_opt_self() clearColor];
    OUTLINED_FUNCTION_9_2();
    (*(v30 + 752))();
    OUTLINED_FUNCTION_9_2();
    v32 = *(v31 + 2096);
    v33 = v32();
    v34 = (v26)();
    (*(*v33 + 2144))(v34, v35 & 1);

    v37 = (v32)(v36);
    v38 = *sub_1E3E5FDEC();
    v39 = *(*v37 + 680);
    v40 = v38;
    v39(v38);

    v42 = (v32)(v41);
    v43 = *sub_1E3E605D4();
    v44 = *(*v42 + 752);
    v45 = v43;
    v44(v43);
  }
}

uint64_t sub_1E4118928(__int16 a1, void *a2)
{
  if (a1 == 39)
  {
    type metadata accessor for ImageLayout();
    v13 = sub_1E3BD61D8();
    sub_1E3755B54();
    v17 = objc_opt_self();

    v18 = [v17 blackColor];
    v19 = [v17 whiteColor];
    v20 = sub_1E3E5F2F8(v18, v19);

    OUTLINED_FUNCTION_9_2();
    (*(v21 + 680))(v20);

    return v13;
  }

  if (a1 != 40)
  {
    switch(a1)
    {
      case '>':
        type metadata accessor for ButtonLayout();
        v11 = j__OUTLINED_FUNCTION_18();
        v4 = sub_1E3B050E8();
        v12 = j__OUTLINED_FUNCTION_18();
        v6 = v11 & 1;
        v7 = v12 & 1;
        v8 = 6;
        return sub_1E3BBD964(v8, v6, v4, v7);
      case 'A':
        type metadata accessor for ButtonLayout();
        return sub_1E3BC565C();
      case '?':
LABEL_6:
        type metadata accessor for ButtonLayout();
        v3 = j__OUTLINED_FUNCTION_18();
        v4 = sub_1E3B050E8();
        v5 = j__OUTLINED_FUNCTION_18();
        v6 = v3 & 1;
        v7 = v5 & 1;
        v8 = 8;
        return sub_1E3BBD964(v8, v6, v4, v7);
    }

    if (a2)
    {
      v15 = a2[3];
      if (v15)
      {
        v16 = a2[2] == 0x74747542656E6F44 && v15 == 0xEC00000064496E6FLL;
        if (v16 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_6;
        }
      }

      if (a1 != 59)
      {
        goto LABEL_6;
      }

      v22 = 43;
      (*(*a2 + 776))(&v23, &v22, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (*(&v24 + 1))
      {
        if (swift_dynamicCast() && (v22 & 1) != 0)
        {
          type metadata accessor for ButtonLayout();
          return sub_1E3BBFB74();
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (a1 != 59)
      {
        goto LABEL_6;
      }

      v23 = 0u;
      v24 = 0u;
    }

    sub_1E329505C(&v23);
    goto LABEL_6;
  }

  return sub_1E3C35CA4(40);
}

uint64_t sub_1E4118C10()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(6, v3 & 1, v4, v5 & 1);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E4118C9C()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1696);

  v4 = v2(v3);
  sub_1E3C37CBC(v4, 62);

  return v1;
}

void sub_1E4118D40()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    v7 = v2;
    v3 = [v2 parentViewController];
    if (!v3 || (v4 = v3, sub_1E3280A90(0, &qword_1EE23B250), v5 = v0, v6 = sub_1E4206F64(), v4, v5, (v6 & 1) == 0))
    {
      [v1 addChildViewController_];
      if ([v1 isViewLoaded])
      {
        sub_1E411948C();
      }

      [v7 didMoveToParentViewController_];
    }
  }
}

void *sub_1E4118E74()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E4118EBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  v7 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = *&v2[v6];
  if (v8)
  {
    if (!v5)
    {
LABEL_16:
      sub_1E4118D40();
      goto LABEL_17;
    }

    sub_1E3280A90(0, &unk_1EE23B090);
    v9 = v8;
    v10 = v5;
    v11 = sub_1E4206F64();

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v5)
    {
LABEL_17:

      return;
    }

    v10 = v5;
  }

  v12 = v10;
  v13 = [v12 parentViewController];
  if (!v13 || (v14 = v13, sub_1E3280A90(0, &qword_1EE23B250), v15 = v2, v16 = sub_1E4206F64(), v14, v15, (v16 & 1) == 0))
  {

    goto LABEL_15;
  }

  [v12 willMoveToParentViewController_];
  v17 = v12;
  if (![v15 isViewLoaded])
  {
LABEL_13:

    [v12 removeFromParentViewController];
LABEL_15:

    goto LABEL_16;
  }

  v18 = [v12 view];
  if (v18)
  {
    v19 = v18;
    [v18 removeFromSuperview];

    v17 = [v12 view];
    if (v17)
    {
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1E41190D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E41191F0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  *(v1 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController) = 0;
  swift_beginAccess();
  *(v1 + v3) = a1;
  type metadata accessor for RootHostingViewController();
  v4 = a1;
  OUTLINED_FUNCTION_25();
  v7 = objc_msgSendSuper2(v5, v6);
  sub_1E4118D40();

  return v7;
}

char *sub_1E41192B8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController) = 0;
  type metadata accessor for RootHostingViewController();
  OUTLINED_FUNCTION_25();
  v3 = objc_msgSendSuper2(v1, v2);
  v4 = sub_1E41190D0();
  v5 = OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;

  sub_1E4118D40();
  return v3;
}

void sub_1E4119380()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController_contentNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25RootHostingViewController____lazy_storage___emptyNavigationController) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E411940C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RootHostingViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setBackgroundColor_];

    sub_1E411948C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E411948C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_2_269();
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  v5 = v2;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  [v4 addSubview_];

  v8 = OUTLINED_FUNCTION_1_309();
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E42A1E20;
  v11 = OUTLINED_FUNCTION_1_309();
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  v13 = [v11 trailingAnchor];

  v14 = OUTLINED_FUNCTION_2_269();
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = OUTLINED_FUNCTION_0_350();
  *(v10 + 32) = v17;
  v18 = OUTLINED_FUNCTION_1_309();
  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = OUTLINED_FUNCTION_2_269();
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = OUTLINED_FUNCTION_0_350();
  *(v10 + 40) = v24;
  v25 = OUTLINED_FUNCTION_1_309();
  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v25;
  v27 = [v25 bottomAnchor];

  v28 = OUTLINED_FUNCTION_2_269();
  if (!v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = OUTLINED_FUNCTION_0_350();
  *(v10 + 48) = v31;
  v32 = OUTLINED_FUNCTION_1_309();

  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = [v32 leadingAnchor];

  v34 = OUTLINED_FUNCTION_2_269();
  if (!v34)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 leadingAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v10 + 56) = v38;
  sub_1E3280A90(0, &qword_1EE23B1A0);
  v39 = sub_1E42062A4();

  [v36 activateConstraints_];
}

void sub_1E41198B4(void *a1)
{
  v2 = a1;

  sub_1E4118EBC(a1);
}

void sub_1E41198EC()
{
  v0 = sub_1E41190D0();

  sub_1E4118EBC(v0);
}

id sub_1E411996C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E41199EC(uint64_t a1)
{
  switch(a1)
  {
    case 4:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

void sub_1E4119B04(uint64_t a1)
{
  switch(a1)
  {
    case -4831:
    case -4822:
    case -4821:
    case -4816:
    case -4815:
    case -4814:
    case -4813:
    case -4811:
    case -4810:
    case -4808:
    case -4806:
    case -4805:
      OUTLINED_FUNCTION_1_310();
      break;
    case -4825:
    case -4824:
    case -4823:
    case -4820:
    case -4812:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E4119DAC()
{
  result = TVAppFeature.isEnabled.getter(17);
  if (result)
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3_279();
    v2 = *(v1 + 552);

    v2(&v5, v3);

    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
    return sub_1E4148DE0(sub_1E411ACC8);
  }

  return result;
}

uint64_t sub_1E4119EBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;

  OUTLINED_FUNCTION_5_0();
  if (*(v1 + v5) != v4)
  {
    sub_1E4119DAC();
  }
}

void sub_1E4119F50(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_5_0();
  v4 = *&v1[v3];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_6:
    [a1 removeFromSuperview];
    v6 = *&v1[v3];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    MEMORY[0x1EEE9AC00](v7);
    v8 = v6;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970);
    sub_1E4148DE0(sub_1E3EE0DA4);
  }
}

void sub_1E411A078(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1E4119F50(v4);
}

char *sub_1E411A0E4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  type metadata accessor for EpicShowcaseViewLayout();
  *(v0 + v2) = sub_1E37E7E7C();
  *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView) = 0;
  OUTLINED_FUNCTION_2_270(&OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl);
  type metadata accessor for VUICarouselView();
  OUTLINED_FUNCTION_5_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) = sub_1E3890DAC();
  v3 = OUTLINED_FUNCTION_5_8();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  v7 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView;
  [v6 addSubview_];
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    [v6 setClipsToBounds_];
    [*&v6[v7] setClipsToBounds_];
  }

  return v6;
}

void sub_1E411A214()
{
  v1 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  type metadata accessor for EpicShowcaseViewLayout();
  *(v0 + v1) = sub_1E37E7E7C();
  *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView) = 0;
  OUTLINED_FUNCTION_2_270(&OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E411A2D4(char a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_170();
  objc_msgSendSuper2(v7, v8, v6);
  if (a1)
  {
    OUTLINED_FUNCTION_5_0();

    v9 = sub_1E37E8894(a2);

    if (v9 != 0.0)
    {
      sub_1E411AB64();
      CGRectGetHeight(v38);
      VUIRoundValue();
    }
  }

  else
  {
    v10 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl];
    if (v10)
    {
      v11 = v10;
      v12 = OUTLINED_FUNCTION_170();
      [v13 v14];
      v16 = v15;
      v18 = v17;
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_279();
      v20 = *(v19 + 1696);

      v20(&v37, v21);

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
      sub_1E4148C68(sub_1E3C2FC84, v22, v35);
      v23 = v36;
      OUTLINED_FUNCTION_9_7();
      [v11 setFrame_];
      [v11 center];
      [v11 setCenter_];
    }

    v25 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];
    sub_1E411A89C();
    [v25 setFrame_];
    OUTLINED_FUNCTION_9_7();
    sub_1E411AB64();
    v27 = v26;
    v29 = v28;
    v30 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
    OUTLINED_FUNCTION_5_0();
    v31 = *&v3[v30];
    if (v31)
    {
      v32 = v31;
      [v32 frame];
      v39.origin.x = OUTLINED_FUNCTION_170();
      v39.size.width = v27;
      v39.size.height = v29;
      if (!CGRectEqualToRect(v39, v42))
      {
        OUTLINED_FUNCTION_9_7();
        [v3 vuiIsRTL];
        OUTLINED_FUNCTION_170();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v32 setFrame_];
      }
    }

    v33 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_lastViewWidth;
    v34 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_lastViewWidth];
    OUTLINED_FUNCTION_9_7();
    if (v34 != CGRectGetWidth(v40))
    {
      sub_1E4119DAC();
      OUTLINED_FUNCTION_9_7();
      *&v3[v33] = CGRectGetWidth(v41);
    }
  }

  OUTLINED_FUNCTION_170();
}

id sub_1E411A68C(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageCount] = a1;
  v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_shouldShowPageControl] = a2;
  if (v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_shouldShowPageControl])
  {
    v4 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageCount] > 1;
    v5 = &v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl];
    if (v4 == v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = &v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl];
    if ((v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl] & 1) == 0)
    {
      goto LABEL_15;
    }

    LOBYTE(v4) = 0;
  }

  *v5 = v4;
  v6 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl;
  v7 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl];
  if (v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_effectiveShowingPageControl] == 1)
  {
    if (v7 || (v8 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init], objc_msgSend(v8, sel_setCurrentPage_, 0), objc_msgSend(v8, sel_addTarget_action_forControlEvents_, v2, sel_pageChangeEventWithSender_, 4096), v9 = *&v2[v6], *&v2[v6] = v8, v9, (v7 = *&v2[v6]) != 0))
    {
      v10 = [v7 superview];
      if (!v10 || (v11 = v10, v10, v11 != v2))
      {
        if (*&v2[v6])
        {
          [v2 addSubview_];
        }
      }
    }
  }

  else if (v7)
  {
    [v7 removeFromSuperview];
  }

LABEL_15:
  result = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl];
  if (result)
  {

    return [result setNumberOfPages_];
  }

  return result;
}

id sub_1E411A830(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_pageControl);
  if (result)
  {
    return [result setCurrentPage_];
  }

  return result;
}

id sub_1E411A854()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
  sub_1E411A89C();

  return [v1 setFrame_];
}

void sub_1E411A89C()
{
  v1 = v0;
  [v0 bounds];
  sub_1E411AB64();
  v3 = v2;
  v5 = v4;
  v6 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_5_0();
  if (*&v1[v6])
  {
    v20.origin.x = OUTLINED_FUNCTION_17_4();
    v20.size.width = v3;
    v20.size.height = v5;
    CGRectGetMaxY(v20);
  }

  VUIRoundValue();
  if (TVAppFeature.isEnabled.getter(17))
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_9_7();
    Width = CGRectGetWidth(v21);
    v8 = sub_1E3A2579C(Width);
    if (sub_1E3A24FDC(v8))
    {
      v9 = sub_1E3A25914();
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v9 = *MEMORY[0x1E69DDCE0];
      v11 = *(MEMORY[0x1E69DDCE0] + 8);
      v13 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    OUTLINED_FUNCTION_5_0();

    OUTLINED_FUNCTION_9_7();
    v19 = CGRectGetWidth(v23);
    sub_1E37E8894(v19);

    OUTLINED_FUNCTION_9_7();
    CGRectGetWidth(v24);
    sub_1E3CEE8A0(v9, v11, v13, v15, 0.0);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    CGRectGetWidth(v22);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3_279();
    v17 = *(v16 + 304);

    v17(v18);
  }
}

void sub_1E411AB64()
{
  OUTLINED_FUNCTION_0_8();
  v2 = objc_opt_self();
  v10.origin.x = OUTLINED_FUNCTION_2_0();
  [v2 vui:CGRectGetWidth(v10) paddingForWindowWidth:?];
  v11.origin.x = sub_1E3CEE8A0(v3, v4, v5, v6, v1);
  Width = CGRectGetWidth(v11);
  v8 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_0_12();
  v9 = *(v0 + v8);
  if (v9)
  {
    [v9 vui:Width sizeThatFits:0.0];
  }

  OUTLINED_FUNCTION_17_4();
}

void sub_1E411ACC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if ([*(*(v1 + 16) + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) vuiLayer])
  {
    v4 = OUTLINED_FUNCTION_17_4();
    v7 = v5;
    [v5 setCornerRadius_];
  }
}

uint64_t sub_1E411AD70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
  OUTLINED_FUNCTION_15_0();
  return sub_1E379539C(v1 + v3, a1, &qword_1ECF2C970);
}

uint64_t sub_1E411ADCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
  OUTLINED_FUNCTION_11_3();
  sub_1E37C5630(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1E411AE24()
{
  v1 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
  }

  else
  {
    v4 = v0;
    type metadata accessor for EpicShowcaseViewContainer();
    v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1E411AE94(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_38_2();
  sub_1E379539C(v5, v6, v7);
  OUTLINED_FUNCTION_11_3();
  sub_1E37C5BDC(a1, v1 + v4);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_38_2();
  sub_1E379539C(v9, v10, v11);
  OUTLINED_FUNCTION_38_2();
  sub_1E379539C(v12, v13, v14);
  if (*(&v35 + 1))
  {
    sub_1E379539C(&v34, v32, &qword_1ECF40720);
    if (*(&v38 + 1))
    {
      v30[0] = v37;
      v30[1] = v38;
      v31 = v39;
      v15 = MEMORY[0x1E6911D60](v32, v30);
      sub_1E375D84C(v30);
      sub_1E375D84C(v32);
      sub_1E325F748(&v34, &qword_1ECF40720);
      if (v15)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1E375D84C(v32);
  }

  else if (!*(&v38 + 1))
  {
    sub_1E325F748(&v34, &qword_1ECF40720);
    goto LABEL_16;
  }

  sub_1E325F748(&v34, &qword_1ECF2A678);
LABEL_9:
  v16 = sub_1E411AE24();
  v17 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_headerView;
  OUTLINED_FUNCTION_5_0();
  v18 = *&v16[v17];
  v19 = v18;

  sub_1E379539C(v2 + v8, &v34, &qword_1ECF40720);
  if (*(&v35 + 1))
  {
    v32[0] = v34;
    v32[1] = v35;
    v33 = v36;
    v20 = *(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
    sub_1E374E74C(v32, &v34);
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v21 = v40;
      v22 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v23 = v22;
      v24 = sub_1E393D9C4(v21, v18, &v34, 0);

      sub_1E325F748(&v34, &qword_1ECF296C0);
    }

    else
    {
      v24 = 0;
    }

    sub_1E411A078(v24);

    sub_1E375D84C(v32);
  }

  else
  {
    sub_1E325F748(&v34, &qword_1ECF40720);
    v25 = *(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);
    sub_1E411A078(0);
  }

  [*(v2 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer) vui_setNeedsLayout];

LABEL_16:
  v26 = OUTLINED_FUNCTION_32_0();
  sub_1E325F748(v26, v27);
  return sub_1E325F748(v29, &qword_1ECF40720);
}

uint64_t sub_1E411B1D8()
{
  v0 = sub_1E411AE24();
  v1 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  OUTLINED_FUNCTION_15_0();
  v2 = *&v0[v1];

  return v2;
}

id sub_1E411B22C(uint64_t a1)
{
  v2 = v1;

  v4 = sub_1E411AE24();
  v5 = OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_layout;
  OUTLINED_FUNCTION_15_0();
  v6 = *&v4[v5];

  if (v6 == a1)
  {
  }

  v7 = *&v2[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer];

  v8 = v7;
  v9 = OUTLINED_FUNCTION_50();
  sub_1E4119EBC(v9);

  result = [v2 view];
  if (result)
  {
    v11 = result;
    [result bounds];
    OUTLINED_FUNCTION_22_13();

    v12 = OUTLINED_FUNCTION_17_4();
    sub_1E411B314(1, v12, v13);
  }

  __break(1u);
  return result;
}

void sub_1E411B314(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v99 - v16;
  if (a2 != 0.0 || a3 != 0.0)
  {
    v18 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth;
    v19 = *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth];
    if (v19 == a2 && (a1 & 1) == 0)
    {
LABEL_28:
      if (v19 != a2)
      {
        *&v4[v18] = a2;
        sub_1E411B1D8();
        v63 = OUTLINED_FUNCTION_31_97();
        v64 = sub_1E37E8894(v63);

        sub_1E411B1D8();
        v65 = OUTLINED_FUNCTION_31_97();
        sub_1E37E8628(v65);
        v67 = v66;

        sub_1E411B1D8();
        v68 = OUTLINED_FUNCTION_31_97();
        sub_1E37E8858(v68);
        v70 = v69;

        v71 = sub_1E324FBDC();
        (*(v10 + 16))(v14, v71, v8);
        v72 = v4;
        v73 = sub_1E41FFC94();
        v74 = sub_1E42067E4();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = OUTLINED_FUNCTION_100();
          v114[0] = v76;
          *v75 = 136315906;
          v77 = sub_1E411BEC0();
          v79 = sub_1E3270FC8(v77, v78, v114);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2048;
          *(v75 + 14) = v67;
          *(v75 + 22) = 2048;
          *(v75 + 24) = v64;
          *(v75 + 32) = 2048;
          *(v75 + 34) = v70;
          _os_log_impl(&dword_1E323F000, v73, v74, "%s configure itemWidth =%f, height=%f, spacing =%f", v75, 0x2Au);
          __swift_destroy_boxed_opaque_existential_1(v76);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v10 + 8))(v14, v8);
        v80 = sub_1E411AE24();
        v81 = *&v80[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

        OUTLINED_FUNCTION_5_0();
        sub_1E411B1D8();
        v82 = OUTLINED_FUNCTION_31_97();
        sub_1E37E89C8(v82);
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;

        v91 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
        v92 = *(*&v72[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
        v114[0] = v67;
        *&v114[1] = v64;
        v114[2] = v70;
        v114[3] = v84;
        v114[4] = v86;
        v114[5] = v88;
        v114[6] = v90;
        v115 = 0;
        v93 = v92;
        sub_1E3AFC1C4(v114);

        v94 = *(*&v72[v91] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
        v95 = *sub_1E411B1D8();
        v96 = (*(v95 + 1560))();

        v97 = sub_1E3A24FDC(v96);
        v98 = 0;
        if (v97)
        {
          v98 = sub_1E3C46280();
        }

        sub_1E3AFBF18(v98 & 1);

        sub_1E41207B0();
      }
    }

    else
    {
      v100 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth;
      v102 = v14;
      type metadata accessor for LayoutGrid();
      v20 = sub_1E3A2579C(a2);
      v21 = sub_1E324FBDC();
      (*(v10 + 16))(v17, v21, v8);
      v22 = v10;
      v23 = v3;
      v24 = sub_1E41FFC94();
      v25 = sub_1E4206814();

      v26 = os_log_type_enabled(v24, v25);
      v104 = v8;
      v103 = v22;
      v101 = v3;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v114[0] = swift_slowAlloc();
        *v27 = 136315394;
        v28 = sub_1E411BEC0();
        v30 = sub_1E3270FC8(v28, v29, v114);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        v31 = sub_1E3A253B8(v20);
        v33 = sub_1E3270FC8(v31, v32, v114);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_1E323F000, v24, v25, "%s sizeOrTraitsDidChange to %s", v27, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v22 + 8))(v17, v104);
      }

      else
      {

        (*(v22 + 8))(v17, v8);
      }

      v34 = [v23 vuiTraitCollection];
      sub_1E3C2AE10();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = *(*sub_1E411B1D8() + 1640);
      v106 = v36;
      v107 = v38;
      v105 = v40;
      v41(v36, v38, v40);

      v42 = sub_1E411BD18();
      v43 = v42;
      if ((v42 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1E4207344();
        type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_1_17();
        sub_1E32749E0(v44, v45);
        OUTLINED_FUNCTION_32_0();
        sub_1E4206664();
        v46 = v109;
        v47 = v110;
        v48 = v111;
        v49 = v112;
        v50 = v113;
      }

      else
      {
        v51 = -1 << *(v42 + 32);
        v47 = v42 + 56;
        v48 = ~v51;
        v52 = -v51;
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        else
        {
          v53 = -1;
        }

        v50 = v53 & *(v42 + 56);

        v49 = 0;
        v46 = v43;
      }

      v99[1] = v48;
      v54 = (v48 + 64) >> 6;
      if (v46 < 0)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v55 = v49;
        v56 = v50;
        v57 = v49;
        if (!v50)
        {
          break;
        }

LABEL_19:
        v58 = (v56 - 1) & v56;
        v59 = *(*(v46 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));

        if (!v59)
        {
LABEL_27:
          sub_1E34AF4DC();

          v4 = v101;
          v18 = v100;
          v19 = *&v101[v100];
          v8 = v104;
          v10 = v103;
          v14 = v102;
          goto LABEL_28;
        }

        while (1)
        {
          if ((*(*v59 + 392))(v60))
          {
            OUTLINED_FUNCTION_26_0();
            (*(v62 + 1640))(v106, v107, v105);
          }

          v49 = v57;
          v50 = v58;
          if ((v46 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_21:
          v61 = sub_1E42073C4();
          if (v61)
          {
            v108 = v61;
            type metadata accessor for ViewModel();
            v60 = swift_dynamicCast();
            v59 = v114[0];
            v57 = v49;
            v58 = v50;
            if (v114[0])
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v57 >= v54)
        {
          goto LABEL_27;
        }

        v56 = *(v47 + 8 * v57);
        ++v55;
        if (v56)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1E411BB9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;

  OUTLINED_FUNCTION_5_0();
  v6 = *(v1 + v5);
  if (v6)
  {
    if (v6 == v4)
    {
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  v7 = [objc_opt_self() current];
  OUTLINED_FUNCTION_8_21();
  v11 = v10;
  v12 = *(v1 + v5);
  if (v12)
  {
    v13 = v8;
    v14 = v9;
    v15 = *(*v12 + 392);

    v17 = v15(v16);

    if (v17)
    {
      OUTLINED_FUNCTION_8();
      (*(v18 + 1640))(v13, v11, v14);
    }
  }

LABEL_9:
}

uint64_t sub_1E411BD18()
{
  v1 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels);
  }

  else
  {
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      v2 = sub_1E37CB554(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E411BDA4()
{
  v1 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor);
  }

  else
  {
    v3 = v0;
    TVAppFeature.isEnabled.getter(17);
    v4 = sub_1E411AE24();
    v5 = *&v4[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

    sub_1E3AFBD8C();
    *(v3 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor) = 1;
    type metadata accessor for ScrollViewVisibilityMonitor();
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = sub_1E414F9CC();
    *(v3 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E411BEC0()
{
  sub_1E42074B4();

  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  v2 = sub_1E4207944();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_1E411BFA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = &v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *&v3[v10] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex] = 0;
  v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor] = 0;
  v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor] = 0;
  v11 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_playbackManager;
  type metadata accessor for EpicShowcasePlaybackManager();
  result = sub_1E3E2F33C();
  *&v3[v11] = result;
  v13 = qword_1EE295C40;
  *&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_instance] = qword_1EE295C40;
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    qword_1EE295C40 = v15;
    if (a2)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    v18.receiver = v4;
    v18.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v16, a3);

    return v17;
  }

  return result;
}

void sub_1E411C18C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_headerViewModel;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *(v0 + v3) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___cellVisibilityMonitor) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_playbackManager;
  type metadata accessor for EpicShowcasePlaybackManager();
  *(v0 + v4) = sub_1E3E2F33C();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E411C2D0()
{
  v1 = sub_1E411AE24();
  [v0 setView_];

  v2 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
  v3 = *(*&v0[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate;
  OUTLINED_FUNCTION_3_0();
  *(v3 + 8) = &off_1F5D986C0;
  OUTLINED_FUNCTION_32_0();
  swift_unknownObjectWeakAssign();
  v4 = *(*&v0[v2] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView) + OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource;
  OUTLINED_FUNCTION_3_0();
  *(v4 + 8) = &off_1F5D986A8;
  OUTLINED_FUNCTION_32_0();
  swift_unknownObjectWeakAssign();
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v0 selector:sel_handleFullscreenPlaybackUIDidChange_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  v7 = sub_1E41FFEA4();
  v8 = MEMORY[0x1E69DC0F8];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206944();
  swift_unknownObjectRelease();
}

void sub_1E411C4A4()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      OUTLINED_FUNCTION_22_13();

      v4 = OUTLINED_FUNCTION_17_4();
      sub_1E411B314(1, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E411C574(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_vui_viewWillAppear_, a1 & 1);
  v3 = sub_1E411AE24();
  v4 = *&v3[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  [v4 vui_setNeedsLayout];
}

id sub_1E411C63C(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, sel_vui_willMoveToParentViewController_, a1);
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor];
  if (a1)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 304);

    v6(v7);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }
}

void sub_1E411C774()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v35 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v33 = v12;
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_vui_viewDidAppear_, v3 & 1);
  v16 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor;
  if (*&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {
LABEL_8:
    sub_1E411CC40();
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v29 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v30 = swift_allocObject();
    *(v30 + 16) = v1;
    v36[4] = sub_1E411CEC0;
    v36[5] = v30;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_1E378AEA4;
    v36[3] = &block_descriptor_168;
    v31 = _Block_copy(v36);
    v32 = v1;

    sub_1E4203FE4();
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1E32749E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v10, v31);
    _Block_release(v31);

    (*(v35 + 8))(v10, v5);
    (*(v33 + 8))(v15, v34);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    while (1)
    {
      v19 = v18;
      v18 = [v18 superview];

      if (!v18)
      {
        goto LABEL_8;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ScrollViewVisibilityMonitor();
        v20 = v18;
        OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_21_7();
        v21 = sub_1E414F9CC();
        v22 = [v1 view];
        if (!v22)
        {
          goto LABEL_10;
        }

        v23 = v22;
        OUTLINED_FUNCTION_4_0();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v25 + 288))(v23, v26 & 1, sub_1E412126C, v24);

        OUTLINED_FUNCTION_36();
        (*(v27 + 304))();
        OUTLINED_FUNCTION_36();
        (*(v28 + 328))();

        *&v1[v16] = v21;

        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_1E411CC40()
{
  result = sub_1E4120AE4();
  if (result)
  {
    v4 = result;
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v5 + 576))();
    if (v6)
    {
      v7 = v6;
      v8 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0();
      if (*(v8 + 24))
      {
        sub_1E327F454(v8, v18);
        v9 = v19;
        v10 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        result = [v0 view];
        if (!result)
        {
          __break(1u);
          goto LABEL_16;
        }

        v11 = result;
        [result frame];
        OUTLINED_FUNCTION_22_13();

        (*(*(v10 + 8) + 24))(v9, 0.0, 0.0, v1, v2);
        __swift_destroy_boxed_opaque_existential_1(v18);
        if (*(v8 + 24))
        {
          sub_1E327F454(v8, v18);
          v12 = v19;
          v13 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          result = [v0 view];
          if (result)
          {
            v14 = result;
            (*(v13 + 16))(result, v7, v12, v13);

            __swift_destroy_boxed_opaque_existential_1(v18);
            if (*(v8 + 24))
            {
              sub_1E327F454(v8, v18);
              v15 = v19;
              v16 = v20;
              __swift_project_boxed_opaque_existential_1(v18, v19);
              result = [v0 view];
              if (result)
              {
                v17 = result;
                (*(*(v16 + 8) + 56))(result, v4, v15);

                return __swift_destroy_boxed_opaque_existential_1(v18);
              }

              goto LABEL_17;
            }

            goto LABEL_10;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }
      }

LABEL_10:
    }
  }

  return result;
}

void sub_1E411CEC0()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 304);

    v2(v3);
  }
}

id sub_1E411CF94(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v4, sel_vui_didMoveToParentViewController_, a1);
  if (a1)
  {
    if ((*(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didHostedInStackView) = 1;
    }
  }

  return result;
}

uint64_t sub_1E411D058(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_vui_viewWillDisappear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  return sub_1E411D100();
}

uint64_t sub_1E411D100()
{
  result = sub_1E4120AE4();
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_26_0();
    v4 = (*(v3 + 576))();
    if (v4)
    {
      v5 = v4;
      v6 = v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0();
      if (*(v6 + 24) && (sub_1E327F454(v6, v11), v7 = v12, v8 = v13, __swift_project_boxed_opaque_existential_1(v11, v12), (*(v8 + 24))(v5, v7, v8), __swift_destroy_boxed_opaque_existential_1(v11), *(v6 + 24)))
      {
        sub_1E327F454(v6, v11);
        v9 = v12;
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(*(v10 + 8) + 64))(v2, v9);

        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1E411D2C8()
{
  v3 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_viewDidLayoutSubviews);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    OUTLINED_FUNCTION_22_13();

    if (v1 != 0.0 || v2 != 0.0)
    {
      v6 = sub_1E411AE24();
      v7 = OUTLINED_FUNCTION_17_4();
      [v8 v9];

      if ((sub_1E39DFFC8() & 1) == 0)
      {
        v10 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
        OUTLINED_FUNCTION_20_5();
        [v11 v12];
        v13 = *&v3[v10];
        sub_1E411A854();
      }

      v14 = OUTLINED_FUNCTION_17_4();
      sub_1E411B314(0, v14, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E411D424(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v24.receiver = v3;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*&v3[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v22 = sub_1E411D60C;
  v23 = v10;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_9_7;
  v11 = _Block_copy(&v18);
  v12 = v4;

  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v22 = sub_1E411CEC0;
  v23 = v13;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_15_3;
  v14 = _Block_copy(&v18);
  v15 = v12;

  OUTLINED_FUNCTION_38_2();
  [v16 v17];
  _Block_release(v14);
  _Block_release(v11);
}

void sub_1E411D60C()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    OUTLINED_FUNCTION_22_13();

    v3 = OUTLINED_FUNCTION_17_4();
    sub_1E411B314(0, v3, v4);
  }

  else
  {
    __break(1u);
  }
}

id sub_1E411D6F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
  {

    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_8();
    (*(v3 + 312))(v4 & 1);
  }

  if (v0[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_didCreateCellVisibilityMonitor] == 1)
  {
    sub_1E411BDA4();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_8();
    (*(v5 + 312))(v6 & 1);
  }

  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_1E411D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40728);
  sub_1E4148C68(sub_1E411D9D4, v9, &v14);
  v10 = v14;
  v11 = *&a3;
  v12 = *&a4;
  if (a5 == 1)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  sub_1E411DA10(a1, v11, v12);
  return v10;
}

id sub_1E411D9D4@<X0>(void *a1@<X8>)
{
  type metadata accessor for EpicShowcaseViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E411DA10(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;

  v16 = sub_1E411BB9C(v15);
  v17 = (*(*a1 + 1040))(v16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  if (!sub_1E32AE9B0(v17))
  {

LABEL_14:
    v30 = sub_1E324FBDC();
    (*(v10 + 16))(v14, v30, v8);
    v31 = v4;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_6_21();
      v35 = OUTLINED_FUNCTION_100();
      *&v47 = v35;
      *v34 = 136315138;
      v36 = sub_1E411BEC0();
      v38 = sub_1E3270FC8(v36, v37, &v47);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1E323F000, v32, v33, "%s configureController: items is nil", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_17;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E6911E60](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v19 = *(v18 + 32);
  }

  v21 = (*(*v19 + 872))(v20);
  if (!v21)
  {

    goto LABEL_14;
  }

  v22 = v21;
  if ((*(*a1 + 392))())
  {
    type metadata accessor for EpicShowcaseViewLayout();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1E411AE24();
      v26 = *&v25[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

      type metadata accessor for FlowcaseViewCell();
      sub_1E384EE08(174);
      sub_1E3AFC138();

      LOBYTE(v50[0]) = 4;
      v27 = *(*a1 + 776);
      v27(&v47, v50, &unk_1F5D5D258, &off_1F5D5C7B8);
      if (*(&v48 + 1))
      {
        if (OUTLINED_FUNCTION_36_76())
        {
          v28 = v50[0];
          v29 = sub_1E3DE9DF4();
          OUTLINED_FUNCTION_3_0();
          *v29 = v28;
        }
      }

      else
      {
        sub_1E325F748(&v47, &unk_1ECF296E0);
      }

      LOBYTE(v50[0]) = 5;
      v27(&v47, v50, &unk_1F5D5D258, &off_1F5D5C7B8);
      if (*(&v48 + 1))
      {
        if (OUTLINED_FUNCTION_36_76())
        {
          v40 = v50[0];
          v41 = sub_1E3DE9E00();
          OUTLINED_FUNCTION_3_0();
          *v41 = v40;
        }
      }

      else
      {
        sub_1E325F748(&v47, &unk_1ECF296E0);
      }

      v42 = sub_1E37C889C(v22);

      sub_1E411E5B0(v42, 0);

      sub_1E411B22C(v24);

      v44 = sub_1E411BB9C(v43);
      if ((*(*a1 + 968))(v44))
      {
        type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_1_17();
        sub_1E32749E0(v45, v46);
        sub_1E4207414();
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
      }

      sub_1E411AE94(&v47);
      sub_1E411B314(0, a2, a3);
      sub_1E41207B0();

LABEL_17:
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_3();
}

void sub_1E411E080()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v51 - v10;
  type metadata accessor for CollectionViewModel();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  OUTLINED_FUNCTION_26_0();
  v15 = *(v14 + 392);

  v17 = v15(v16);
  if (!v17)
  {
LABEL_15:

LABEL_16:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v31(v8);
    v32 = v0;
    v33 = sub_1E41FFC94();
    v34 = sub_1E42067F4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_6_21();
      v36 = OUTLINED_FUNCTION_100();
      v52[0] = v36;
      *v35 = 136315138;
      v37 = sub_1E411BEC0();
      v39 = sub_1E3270FC8(v37, v38, v52);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1E323F000, v33, v34, "%s EpicShowcase view layout is missing", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
    goto LABEL_26;
  }

  v18 = v17;
  type metadata accessor for EpicShowcaseViewLayout();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;
  v21 = (*(*v13 + 1040))();
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  if (!sub_1E32AE9B0(v21))
  {
LABEL_21:

    goto LABEL_22;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1E6911E60](0, v22);
    goto LABEL_9;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);

LABEL_9:

    v25 = (*(*v23 + 872))(v24);
    if (v25)
    {
      v26 = v25;
      if (sub_1E32AE9B0(v25))
      {

        sub_1E411BB9C(v13);

        v27 = sub_1E411B22C(v20);
        v28 = (*(*v13 + 968))(v27);
        if (v28)
        {
          v51[1] = v28;
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_1_17();
          sub_1E32749E0(v29, v30);
          sub_1E4207414();
        }

        else
        {
          memset(v52, 0, 40);
        }

        sub_1E411AE94(v52);
        v50 = sub_1E37C889C(v26);

        sub_1E411E5B0(v50, 1);

LABEL_26:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      goto LABEL_21;
    }

LABEL_22:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v40(v11);
    v41 = v1;
    v42 = sub_1E41FFC94();
    v43 = sub_1E42067F4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_6_21();
      v45 = OUTLINED_FUNCTION_100();
      v51[0] = v18;
      v46 = v45;
      v52[0] = v45;
      *v44 = 136315138;
      v47 = sub_1E411BEC0();
      v49 = sub_1E3270FC8(v47, v48, v52);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1E323F000, v42, v43, "%s collection doesn't have any groups/items.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v4 + 8))(v11, v2);
    goto LABEL_26;
  }

  __break(1u);
}

void sub_1E411E5B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  if ((a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();

    v41 = sub_1E37CB37C(v40, a1);

    if (v41)
    {
      return;
    }

    *&v3[v5] = a1;

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_3_0();

  v6 = sub_1E41E1E3C();

  *&v3[v5] = a1;

  v7 = *(v6 + 16);

  if (v7)
  {
LABEL_29:
    sub_1E4120B90();
    return;
  }

  v8 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;
  OUTLINED_FUNCTION_5_0();
  v9 = *&v3[v8];
  if (!v9)
  {
    return;
  }

  LOBYTE(v48[0]) = 30;
  v10 = *(*v9 + 776);

  v10(__src, v48, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!__src[3])
  {

    sub_1E325F748(__src, &unk_1ECF296E0);
    return;
  }

  if (!swift_dynamicCast() || (v48[0] & 1) == 0)
  {
LABEL_26:

    return;
  }

  v11 = sub_1E411AE24();
  v12 = *&v11[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  v13 = sub_1E3AFBD1C();
  v14 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v42 = v14;
  if (!*(*&v3[v14] + 16) || (v44 = sub_1E32AE9B0(v13)) == 0)
  {
LABEL_25:

    goto LABEL_26;
  }

  v43 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
  v15 = 4;
  while (1)
  {
    v16 = v15 - 4;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](v15 - 4, v13);
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v17 = *(v13 + 8 * v15);
    }

    v18 = v17;
    v19 = v15 - 3;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v20 = *(*&v3[v43] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
    v21 = sub_1E3AFCAA4(v18);
    v23 = v22;

    if (v23)
    {
      goto LABEL_22;
    }

    v47 = *&v3[v42];
    v45 = v21;
    v46 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(&qword_1EE23B440, &unk_1ECF2A508);
    sub_1E38D2054(&v45, v48);
    if (!v49)
    {

      sub_1E325F748(v48, &qword_1ECF40720);
      goto LABEL_24;
    }

    type metadata accessor for ViewModel();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_22:
    }

    else
    {
      v24 = (*(*v45 + 392))();
      if (v24)
      {
        v25 = v24;
        v26 = [v3 view];
        if (!v26)
        {
          goto LABEL_34;
        }

        v27 = v26;
        type metadata accessor for LayoutGrid();
        [v27 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_17_4();
        OUTLINED_FUNCTION_20_5();
        Width = CGRectGetWidth(v52);
        sub_1E3A2579C(Width);
        v29 = [v3 vuiTraitCollection];
        OUTLINED_FUNCTION_8_21();
        v31 = v30;
        (*(*v25 + 1640))();
      }

      sub_1E411F134(__src);
      type metadata accessor for UIFactory();
      v47 = v18;
      v49 = &unk_1F5D869A0;
      v50 = &off_1F5D868A0;
      v48[0] = swift_allocObject();
      memcpy((v48[0] + 16), __src, 0x52uLL);
      v32 = sub_1E3280A90(0, &qword_1EE23B120);

      v33 = v18;
      OUTLINED_FUNCTION_21_7();
      sub_1E38E5240(v34, v35, v36, v37, v38, v32, v39);

      sub_1E325F748(v48, &qword_1ECF296C0);
    }

LABEL_24:
    ++v15;
    if (v19 == v44)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1E411EB6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_6_21();
    v15 = OUTLINED_FUNCTION_100();
    v19 = v15;
    *v14 = 136315138;
    v16 = sub_1E411BEC0();
    v18 = sub_1E3270FC8(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, v2, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E411ECEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = sub_1E41FE844();
  if ((result & 0x8000000000000000) == 0)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
    result = OUTLINED_FUNCTION_5_0();
    if (v6 < *(*&v2[v7] + 16))
    {
      v41[0] = a2;
      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_1_17();
      sub_1E32749E0(v8, v9);

      sub_1E4207414();
      OUTLINED_FUNCTION_11_3();
      v10 = *&v2[v7];
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v3[v7] = v10;
      if ((result & 1) == 0)
      {
LABEL_24:
        result = sub_1E37CB8C4(v10);
        v10 = result;
        *&v3[v7] = result;
      }

      if (v6 >= *(v10 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
        sub_1E37CB8D8(__src, v10 + 40 * v6 + 32);
        *&v3[v7] = v10;
        swift_endAccess();
        v11 = sub_1E411AE24();
        v12 = *&v11[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

        v10 = v12;
        v13 = sub_1E3AFBD1C();

        v14 = sub_1E32AE9B0(v13);
        if (v14)
        {
          v15 = v14;
          v39 = v6;
          v40 = v3;
          v38 = a2;
          v6 = 0;
          v7 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer;
          a2 = v13 & 0xC000000000000001;
          while (1)
          {
            if (a2)
            {
              v16 = MEMORY[0x1E6911E60](v6, v13);
            }

            else
            {
              if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v16 = *(v13 + 8 * v6 + 32);
            }

            v17 = v16;
            v3 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v18 = *(*&v40[v7] + OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView);
            v10 = sub_1E3AFCAA4(v17);
            v20 = v19;

            if ((v20 & 1) == 0 && v10 == v39)
            {
              break;
            }

            ++v6;
            if (v3 == v15)
            {
            }
          }

          v21 = *(*v38 + 392);
          v22 = v17;
          v23 = v21();
          if (v23)
          {
            v24 = v23;
            result = [v40 view];
            if (!result)
            {
              goto LABEL_26;
            }

            v25 = result;

            type metadata accessor for LayoutGrid();
            [v25 bounds];
            OUTLINED_FUNCTION_3();

            OUTLINED_FUNCTION_17_4();
            OUTLINED_FUNCTION_20_5();
            Width = CGRectGetWidth(v43);
            sub_1E3A2579C(Width);
            v27 = [v40 vuiTraitCollection];
            OUTLINED_FUNCTION_8_21();
            v29 = v28;
            (*(*v24 + 1640))();
          }

          else
          {
          }

          sub_1E411F134(__src);
          type metadata accessor for UIFactory();
          v41[5] = v22;
          v41[3] = &unk_1F5D869A0;
          v41[4] = &off_1F5D868A0;
          v41[0] = swift_allocObject();
          memcpy((v41[0] + 16), __src, 0x52uLL);
          v30 = sub_1E3280A90(0, &qword_1EE23B120);
          v31 = v22;
          OUTLINED_FUNCTION_21_7();
          sub_1E38E5240(v32, v33, v34, v35, v36, v30, v37);

          return sub_1E325F748(v41, &qword_1ECF296C0);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void *sub_1E411F134@<X0>(void *a1@<X8>)
{
  sub_1E3DF9E68(__src);
  v2 = sub_1E411AE24();
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  v4 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  OUTLINED_FUNCTION_5_0();
  v14 = *&v3[v4];

  *__src = v14;
  __src[16] = 0;
  __src[41] = 1;
  sub_1E411B1D8();
  OUTLINED_FUNCTION_32_96();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_17_4();
  v8 = sub_1E37E879C(v6, v5, v7);
  v10 = v9;
  v12 = v11;

  OUTLINED_FUNCTION_32_96();
  OUTLINED_FUNCTION_5_0();
  v18[0] = sub_1E3D43D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0);
  sub_1E4148DE0(sub_1E37CCD5C);

  *&__src[24] = v8;
  *&__src[32] = v10;
  __src[40] = v12 & 1;
  memcpy(__dst, __src, 0x52uLL);
  memcpy(v18, __src, 0x52uLL);
  sub_1E37CCDA0(__dst, v15);
  sub_1E37CCDFC(v18);
  return memcpy(a1, __dst, 0x52uLL);
}

uint64_t sub_1E411F388()
{
  v1 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_15_0();
  return *(*(v0 + v1) + 16);
}

void sub_1E411F3C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v27 = *&v1[v11];
  v22 = v3;
  v23 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v12, &unk_1ECF2A508);
  sub_1E38D2054(&v22, &v24);
  if (*(&v25 + 1))
  {
    v28[0] = v24;
    v28[1] = v25;
    v29 = v26;

    sub_1E411F650(v28, v3);
    sub_1E375D84C(v28);
  }

  else
  {
    sub_1E325F748(&v24, &qword_1ECF40720);

    v13 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v13, v4);
    v14 = v1;
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_21();
      v18 = OUTLINED_FUNCTION_100();
      *&v28[0] = v18;
      *v17 = 136315138;
      v19 = sub_1E411BEC0();
      v21 = sub_1E3270FC8(v19, v20, v28);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1E323F000, v15, v16, "%s Delegate did not return a valid cell.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E411F650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF40730);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  sub_1E374E74C(a1, v75);
  type metadata accessor for ViewModel();
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v12 = v80[0];
  v13 = (*(*v80[0] + 392))();
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v63 = v11;
  v64 = v8;
  v65 = v6;
  v15 = [v3 view];
  if (!v15)
  {
    __break(1u);
LABEL_17:
    sub_1E42076B4();
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for LayoutGrid();
  [v16 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_20_5();
  Width = CGRectGetWidth(v81);
  sub_1E3A2579C(Width);
  v18 = [v3 vuiTraitCollection];
  OUTLINED_FUNCTION_8_21();
  v20 = v19;
  v21 = *(*v14 + 1640);
  v66 = v14;
  v21();

  v22 = sub_1E411AE24();
  v23 = *&v22[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  sub_1E384EE08(*(v12 + 98));
  v26 = sub_1E3AFC644(v24, v25, a2);

  type metadata accessor for FlowcaseViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0x1E69E7D40];
    v30 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x250);
    v31 = v26;

    v30(v32);

    v33 = *(v12 + 16);
    v34 = *(v12 + 24);
    v35 = *((*v29 & *v28) + 0x1F0);

    v36 = v31;
    v35(v33, v34);
  }

  sub_1E411F134(v80);
  sub_1E38BAE74(v73);
  v37 = v74;
  v38 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v39 = *(*&v3[v38] + 16);
  v72 = 0;
  type metadata accessor for UIFactory();
  v70 = v26;
  v76[1] = v73[1];
  v76[0] = v73[0];
  v77 = v39;
  v79 = HIBYTE(v37);
  v78 = v72 | (v37 << 8);
  v40 = v26;

  sub_1E3DE9D74(v76, v80, v75);
  *(&v68 + 1) = &type metadata for FlowcaseCellViewContext;
  v69 = &off_1F5D864D8;
  *&v67 = swift_allocObject();
  memcpy((v67 + 16), v75, 0x82uLL);
  v41 = sub_1E3280A90(0, &qword_1EE23B120);
  OUTLINED_FUNCTION_21_7();
  sub_1E38E5240(v42, v43, v44, v45, v46, v41, v47);

  sub_1E325F748(&v67, &qword_1ECF296C0);
  v48 = swift_allocObject();
  v71 = v40;
  v49 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A660);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(&v67, v48 + 16);
    v50 = sub_1E411BDA4();
    v51 = *(v48 + 40);
    v52 = *(v48 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v48 + 16, v51);
    (*(v52 + 40))(v50, v51, v52);
    if (*(v12 + 24))
    {
      v53 = *(v12 + 16);
      v54 = *(v12 + 24);
    }

    else
    {
      v53 = 0;
      v54 = 0xE000000000000000;
    }

    OUTLINED_FUNCTION_8();
    v56 = *(v55 + 264);

    v57 = v56(v53, v54);

    if (v57)
    {
      *&v67 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0);
      sub_1E328FCF4(&qword_1EE28A1D0, &qword_1ECF2E1B0);
      v58 = v63;
      sub_1E4200824();
      sub_1E328FCF4(&qword_1EE28A358, &unk_1ECF40730);

      v59 = v65;
      v60 = sub_1E4200844();

      (*(v64 + 8))(v58, v59);
    }

    else
    {
      v60 = 0;
    }

    OUTLINED_FUNCTION_11_3();
    v61 = *(v48 + 40);
    v62 = *(v48 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v48 + 16, v61);
    (*(v62 + 64))(v60, v61, v62);
    swift_endAccess();
  }

  else
  {

    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_1E325F748(&v67, &unk_1ECF40740);
    swift_deallocUninitializedObject();
  }

  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E411FE3C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v19 = *(v4 + v7);
  *&v17[0] = a3;
  BYTE8(v17[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v8, &unk_1ECF2A508);
  sub_1E38D2054(v17, v20);
  if (v21)
  {
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v20[0] = sub_1E411BD18();
      sub_1E37CC6E0();

      *(v4 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels) = v20[0];
    }
  }

  else
  {
    sub_1E325F748(v20, &qword_1ECF40720);
  }

  v19 = a2;
  sub_1E3280A90(0, &qword_1EE23B120);
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A518);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v17, v20);
    v10 = v21;
    v11 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = (*(v11 + 8))(v10, v11);
    if (v12)
    {
      v13 = v12;
      [v12 vui:0 willMoveToParentViewController:?];
      [v13 removeFromParentViewController];
      v14 = swift_dynamicCastObjCProtocolConditional();
      if (v14)
      {
        v15 = v14;
        if ([v14 respondsToSelector_])
        {
          [v15 didEndDisplaying];
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    return sub_1E325F748(v17, &unk_1ECF2A520);
  }
}

id sub_1E41200BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E411AE24();
  sub_1E411A830(a2);

  sub_1E411D100();
  *(v3 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex) = a2;

  return sub_1E411CC40();
}

void sub_1E4120128()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v13 = sub_1E324FBDC();
  v14 = *(v5 + 16);
  v58 = v13;
  v59 = v5 + 16;
  v57 = v14;
  (v14)(v12);
  v15 = v0;
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  v18 = v15;

  LODWORD(v62) = v17;
  v19 = os_log_type_enabled(v16, v17);
  v63 = v2;
  v60 = v5;
  v61 = v9;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_100();
    v67[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = sub_1E411BEC0();
    v23 = sub_1E3270FC8(v21, v22, v67);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = ViewModelEvent.description.getter(2);
    v26 = sub_1E3270FC8(v24, v25, v67);

    *(v20 + 14) = v26;
    v2 = v63;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v2;
    _os_log_impl(&dword_1E323F000, v16, v62, "%s uiEventOccured event: %s at index=%ld", v20, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v27 = *(v5 + 8);
  v27(v12, v3);
  v28 = v3;
  v29 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v66 = *&v18[v29];
  v64 = v2;
  v65 = 0;
  v30 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v31, &unk_1ECF2A508);
  sub_1E38D2054(&v64, v67);
  if (v68)
  {
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v32 = v64;
      v33 = v61;
      v57(v61, v58, v3);
      v34 = v18;

      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();

      v37 = os_log_type_enabled(v35, v36);
      v62 = v34;
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_100();
        v67[0] = swift_slowAlloc();
        *v38 = 136315650;
        v39 = sub_1E411BEC0();
        sub_1E3270FC8(v39, v40, v67);
        OUTLINED_FUNCTION_50();

        *(v38 + 4) = v34;
        *(v38 + 12) = 2080;
        v41 = ViewModelEvent.description.getter(2);
        sub_1E3270FC8(v41, v42, v67);
        OUTLINED_FUNCTION_50();

        *(v38 + 14) = v34;
        *(v38 + 22) = 2080;
        v44 = (*(*v32 + 368))(v43);
        sub_1E3270FC8(v44, v45, v67);
        OUTLINED_FUNCTION_50();

        *(v38 + 24) = v32;
        _os_log_impl(&dword_1E323F000, v35, v36, "%s dispatching event: %s on viewModel: %s", v38, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v46 = v61;
      }

      else
      {

        v46 = v33;
      }

      v27(v46, v28);
      v47 = v63;
      if (sub_1E378CB90() & 1) != 0 || (sub_1E378CB90())
      {
        v48 = &v62[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_viewImpressioner];
        OUTLINED_FUNCTION_5_0();
        if (*(v48 + 24))
        {
          sub_1E327F454(v48, v67);
          __swift_project_boxed_opaque_existential_1(v67, v68);
          v49 = OUTLINED_FUNCTION_50();
          v51 = v50(v49);
          __swift_destroy_boxed_opaque_existential_1(v67);
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
      }

      v52 = sub_1E411AE24();
      v53 = *&v52[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

      v54 = sub_1E3AFC998(v47);
      v55 = *(*v32 + 800);
      v56 = v54;
      v55(2, v51, v54, 0);
    }
  }

  else
  {
    sub_1E325F748(v67, &qword_1ECF40720);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4120704()
{
  v0 = sub_1E411AE24();
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  v2 = &v1[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration];
  OUTLINED_FUNCTION_5_0();
  v3 = v2[1];

  result = 0;
  if (v3 > 0.0)
  {
    VUIRoundValue();
    return v5;
  }

  return result;
}

void sub_1E41207B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_collectionViewModel;
  OUTLINED_FUNCTION_5_0();
  if (!*&v1[v9])
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_6;
  }

  LOBYTE(v32[0]) = 0;
  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 776);

  v11(&v33, v32, &unk_1F5D5D138, &off_1F5D5C778);

  if (!*(&v34 + 1))
  {
LABEL_6:
    sub_1E325F748(&v33, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v12 = LOBYTE(v32[0]);
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:
  sub_1E411B1D8();
  OUTLINED_FUNCTION_26_0();
  v14 = (*(v13 + 1560))();

  LODWORD(v15) = sub_1E3A24FDC(v14) & v12;
  v16 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  v17 = *(*&v1[v16] + 16);
  v18 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v18, v2);
  v19 = v1;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v31 = v2;
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_100();
    v32[0] = v23;
    *v22 = 136315650;
    v24 = sub_1E411BEC0();
    v30 = v8;
    v26 = v4;
    v27 = v17;
    v28 = v15;
    v15 = sub_1E3270FC8(v24, v25, v32);

    *(v22 + 4) = v15;
    LOBYTE(v15) = v28;
    v17 = v27;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v15 & 1;
    *(v22 + 18) = 2048;
    *(v22 + 20) = v27;
    _os_log_impl(&dword_1E323F000, v20, v21, "%s updatePageControlVisibility showsPageControl=%{BOOL}d, itemCount =%ld", v22, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v26 + 8))(v30, v31);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v29 = sub_1E411AE24();
  sub_1E411A68C(v17, v15 & 1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4120AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_centeredItemIndex);
  v2 = OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0();
  result = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
    v4 = *(v0 + v2);
    if (v1 < *(v4 + 16))
    {
      sub_1E374E74C(v4 + 40 * v1 + 32, v6);
      type metadata accessor for ViewModel();
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1E4120B90()
{
  v1 = v0;
  sub_1E411BD18();

  *(v0 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___visibleCellViewModels) = MEMORY[0x1E69E7CD0];

  v2 = sub_1E411AE24();
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI25EpicShowcaseViewContainer_carouselView];

  sub_1E3AFC7E4();
  sub_1E41207B0();
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController____lazy_storage___carouselViewContainer);

  return [v4 vui_setNeedsLayout];
}

void sub_1E4120C38()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isFullscreenPlaybackUIBeingShown];

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
    {
      OUTLINED_FUNCTION_8();
      v5 = *(v4 + 312);

      v5(0);
    }

    return;
  }

  v6 = [objc_opt_self() currentNavigationController];
  if (!v6)
  {
    return;
  }

  v18 = v6;
  v7 = [v6 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_20_2();
  v8 = sub_1E42062B4();

  v19 = sub_1E37CB21C(v8);

  if (!v19)
  {
    goto LABEL_18;
  }

  type metadata accessor for DocumentViewController();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1B0))();
    if (v10)
    {
      v11 = v10;
      v12 = [v1 parentViewController];
      if (v12)
      {
        v13 = v12;

        if (v13 == v11 && *&v1[OBJC_IVAR____TtC8VideosUI26EpicShowcaseViewController_selfVisibilityMonitor])
        {
          OUTLINED_FUNCTION_8();
          v15 = *(v14 + 304);

          v15(v16);
        }
      }

      else
      {
      }

LABEL_18:
      v17 = v18;
      goto LABEL_19;
    }
  }

  v17 = v19;
LABEL_19:
}

uint64_t sub_1E4120FB0(unsigned __int8 *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_0();
  sub_1E327F454(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 80))(v2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_1E4121034(unint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v3 = sub_1E32AE9B0(a1);
  v4 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7D40];
  while (1)
  {
    if (v3 == v4)
    {

      v15 = sub_1E3E30038(v18);

      OUTLINED_FUNCTION_36();
      (*(v16 + 256))(v15);

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    type metadata accessor for FlowcaseViewCell();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = (*((*v5 & *v8) + 0x1E8))();
      v11 = v10;

      if (!v11)
      {
        goto LABEL_16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1E3740F88(0, *(v18 + 2) + 1, 1, v18);
      }

      v13 = *(v18 + 2);
      v12 = *(v18 + 3);
      if (v13 >= v12 >> 1)
      {
        v18 = sub_1E3740F88((v12 > 1), v13 + 1, 1, v18);
      }

      *(v18 + 2) = v13 + 1;
      v14 = &v18[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      ++v4;
    }

    else
    {

LABEL_16:
      ++v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1E412126C(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *sub_1E411BDA4();
    if (a1)
    {
      (*(v4 + 304))();

      OUTLINED_FUNCTION_36();
      v6 = *(v5 + 328);

      v6(v7);
    }

    else
    {
      (*(v4 + 312))(0);
    }
  }

  return result;
}

void sub_1E4121398()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v79 = v6;
  v80 = v7;
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v83 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v78 - v15;
  sub_1E4201044();
  v17 = OUTLINED_FUNCTION_9_199(&qword_1EE289D88);
  sub_1E42066B4();
  sub_1E4206724();
  OUTLINED_FUNCTION_26_120();
  v18 = v17;
  if (sub_1E4206714() == 1)
  {
    sub_1E395FB64(v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
    {
      sub_1E325F6F0(v16, &qword_1ECF2ED18);
      v19 = 0;
LABEL_38:
      *v3 = v19;
      goto LABEL_39;
    }

    v42 = sub_1E4201504();
    OUTLINED_FUNCTION_16_163(v42, v43, v44, v45);
    sub_1E4200EF4();
    (*(v10 + 8))(v16, v8);
LABEL_36:
    v19 = 0;
    goto LABEL_38;
  }

  v82 = v8;
  v78[2] = v5;
  v78[1] = v1;
  v20 = *(v1 + 32);
  if (sub_1E3CCE274(v20, 2u) & 1) != 0 || (sub_1E3CCE274(v20, 7u))
  {
    v21 = OUTLINED_FUNCTION_14_185();
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = v21;
      v78[0] = v3;
      v84 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_238(v21);
      OUTLINED_FUNCTION_19_154();
      if (v23 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v24 = (v10 + 16);
      v25 = (v10 + 8);
      do
      {
        v26 = OUTLINED_FUNCTION_18_141();
        v27 = v82;
        v28 = v83;
        (*v24)(v83);
        v29 = OUTLINED_FUNCTION_4_273();
        v26(v29);
        v30 = sub_1E4201504();
        OUTLINED_FUNCTION_0_351(v30, v31, v32, v33);
        sub_1E4200EF4();
        v34 = sub_1E4201514();
        OUTLINED_FUNCTION_0_351(v34, v35, v36, v37);
        sub_1E4200EF4();
        (*v25)(v28, v27);
        v84 = v22;
        v38 = v18;
        v40 = *(v22 + 16);
        v39 = *(v22 + 24);
        if (v40 >= v39 >> 1)
        {
          v41 = OUTLINED_FUNCTION_7_246(v39);
          sub_1E3A79F84(v41, v40 + 1, 1);
          v22 = v84;
        }

        *(v22 + 16) = v40 + 1;
        OUTLINED_FUNCTION_23_110(v22 + 16 * v40);
        sub_1E4206734();
        --v23;
        v18 = v38;
      }

      while (v23);
      v3 = v78[0];
    }

    goto LABEL_21;
  }

  v46 = OUTLINED_FUNCTION_14_185();
  v22 = MEMORY[0x1E69E7CC0];
  if (!v46)
  {
LABEL_21:
    v76 = v80;
    v77 = v79;
LABEL_22:
    v60 = *(v22 + 16);
    if (v60)
    {
      v61 = 0;
      v62 = (v22 + 40);
      v63 = 0.0;
      do
      {
        v64 = v62 - 1;
        if (v61)
        {
          v64 = v62;
        }

        ++v61;
        v63 = v63 + *v64;
        v62 += 2;
      }

      while (v60 != v61);
      v65 = (v22 + 40);
      v66 = 0.0;
      do
      {
        v67 = *v65;
        v65 += 2;
        v68 = v67;
        if (v66 <= v67)
        {
          v66 = v68;
        }

        --v60;
      }

      while (v60);
    }

    else
    {
      v63 = 0.0;
    }

    v69 = OUTLINED_FUNCTION_24_0();
    sub_1E3952BE0(v69, v70, v71, v72);
    sub_1E42066B4();
    sub_1E4206724();
    OUTLINED_FUNCTION_26_120();
    if (!__OFSUB__(sub_1E4206714(), 1))
    {
      if (v77)
      {
LABEL_39:
        OUTLINED_FUNCTION_42();
        return;
      }

      if (v63 >= v76)
      {
        v73 = OUTLINED_FUNCTION_24_0();
        sub_1E3952BD8(v73, v74, v75);
        v19 = 1;
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_41;
  }

  v47 = v46;
  v84 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_238(v46);
  OUTLINED_FUNCTION_19_154();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v81 = (v10 + 16);
    v48 = (v10 + 8);
    v78[0] = v3;
    v49 = v82;
    do
    {
      v50 = OUTLINED_FUNCTION_18_141();
      v51 = v83;
      (*v81)(v83);
      v52 = OUTLINED_FUNCTION_4_273();
      v50(v52);
      v53 = sub_1E4201504();
      OUTLINED_FUNCTION_0_351(v53, v54, v55, v56);
      sub_1E4200EF4();
      (*v48)(v51, v49);
      v84 = v22;
      v58 = *(v22 + 16);
      v57 = *(v22 + 24);
      if (v58 >= v57 >> 1)
      {
        v59 = OUTLINED_FUNCTION_7_246(v57);
        sub_1E3A79F84(v59, v58 + 1, 1);
        v22 = v84;
      }

      *(v22 + 16) = v58 + 1;
      OUTLINED_FUNCTION_23_110(v22 + 16 * v58);
      sub_1E4206734();
      --v47;
    }

    while (v47);
    v76 = v80;
    v77 = v79;
    v3 = v78[0];
    goto LABEL_22;
  }

LABEL_42:
  __break(1u);
}

void sub_1E41218D4()
{
  OUTLINED_FUNCTION_41_5();
  v263 = v0;
  v278 = v1;
  v3 = v2;
  v254 = v4;
  v255 = v5;
  LODWORD(v256) = v6;
  v257 = v7;
  v9 = v8;
  v11 = v10;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40758);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40760);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40768);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v275 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  v23 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v249 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v26);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40770);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40778);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v238 - v31;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v35 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v250 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v238 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v238 - v41);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v45);
  *&v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40788);
  v51 = OUTLINED_FUNCTION_17_2(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E50);
  v55 = OUTLINED_FUNCTION_17_2(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40790);
  OUTLINED_FUNCTION_17_2(v58);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v60);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40798);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  v63 = (&v238 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18);
  v65 = OUTLINED_FUNCTION_17_2(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_18_6();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_25_3();
  v71 = v70;
  v72 = OUTLINED_FUNCTION_9_199(&qword_1EE289D88);
  sub_1E42066B4();
  sub_1E4206724();
  OUTLINED_FUNCTION_26_120();
  v274 = v72;
  if (sub_1E4206714() == 1)
  {
    sub_1E395FB64(v71);
    if (__swift_getEnumTagSinglePayload(v71, 1, v35) != 1)
    {
      sub_1E4201504();
      v83 = v82;
      v85 = v84;
      sub_1E4203F04();
      OUTLINED_FUNCTION_15_174();
      LOBYTE(v279) = v83 & 1;
      LOBYTE(v281) = v85 & 1;
      OUTLINED_FUNCTION_20_131();
      sub_1E4200F04();
      (*(v250 + 8))(v71, v35);
LABEL_83:
      OUTLINED_FUNCTION_42();
      return;
    }

    v73 = &qword_1ECF2ED18;
    v74 = v71;
LABEL_82:
    sub_1E325F6F0(v74, v73);
    goto LABEL_83;
  }

  v239 = v32;
  v244 = v3;
  v75 = *v278;
  v76 = v23;
  v277 = v35;
  v278 = v23;
  if (v75 == 1)
  {
    v77 = v244;
    sub_1E395FB64(v68);
    v78 = v277;
    if (__swift_getEnumTagSinglePayload(v68, 1, v277) == 1)
    {
      sub_1E325F6F0(v68, &qword_1ECF2ED18);
      v79 = v250;
      v80 = v23;
      v81 = v256;
    }

    else
    {
      v81 = v256;
      OUTLINED_FUNCTION_25_114();
      LOBYTE(v281) = v114 & 1;
      sub_1E4200EF4();
      v79 = v250;
      (*(v250 + 8))(v68, v78);
      v80 = v23;
    }

    v115 = v245;
    sub_1E395FB64(v245);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v115, 1, v78);
    v266 = v11;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v115, &qword_1ECF2ED18);
      v117 = v257;
    }

    else
    {
      sub_1E4203F04();
      OUTLINED_FUNCTION_15_174();
      OUTLINED_FUNCTION_25_114();
      LOBYTE(v281) = v118 & 1;
      OUTLINED_FUNCTION_20_131();
      v117 = v257;
      sub_1E4200F04();
      (*(v79 + 8))(v115, v78);
    }

    v119 = v246;
    v120 = OUTLINED_FUNCTION_16();
    sub_1E3952BD8(v120, v121, v122);
    if (v81)
    {
      v123 = v9;
    }

    else
    {
      v123 = v117;
    }

    (*(v249 + 16))(v119, v77, v80);
    v124 = v248;
    sub_1E4122F60(1, v248);
    sub_1E3294EE4(v124, v63, &qword_1ECF407A8);
    v125 = (v63 + *(v247 + 36));
    v126 = v124[2];
    v127 = v124[3];
    *v125 = v126;
    v125[1] = v127;
    v275 = v125;
    sub_1E325F6F0(v124, &qword_1ECF407A8);
    v273 = v79 + 16;
    v128 = (v79 + 32);
    v129 = *v63;
    v271 = (v79 + 8);
    v130 = v274;
    for (i = v129; ; v129 = i)
    {
      if (v126 == v129)
      {
        v145 = 1;
        v126 = v129;
        v144 = v276;
        v143 = v270;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF407A8);
        v279 = v126;
        sub_1E412316C(&qword_1ECF407B0);
        sub_1E4205DE4();
        sub_1E4206724();
        if (v126 == v280)
        {
          v127 = sub_1E42066D4();
        }

        v131 = __OFSUB__(v127--, 1);
        v132 = v276;
        if (v131)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v126 = v281;
        v133 = v275;
        *v275 = v281;
        v133[1] = v127;
        if (v126 < v129 || v126 >= v63[2])
        {
          goto LABEL_86;
        }

        v135 = *(v132 + 48);
        v281 = v126;
        v136 = v130;
        sub_1E42066B4();
        OUTLINED_FUNCTION_22_103();
        if (v137 != v131)
        {
          goto LABEL_87;
        }

        sub_1E4206724();
        OUTLINED_FUNCTION_22_103();
        if (v137 == v131)
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_26_120();
        v138 = sub_1E4206764();
        OUTLINED_FUNCTION_36_5();
        v139 = v268;
        v140 = v277;
        v141(v268 + v135);
        v142 = OUTLINED_FUNCTION_4_273();
        v138(v142);
        v143 = v270;
        *v270 = v127;
        v144 = v276;
        (*v128)(v143 + *(v276 + 48), v139 + v135, v140);
        v145 = 0;
        v130 = v136;
      }

      v146 = v269;
      __swift_storeEnumTagSinglePayload(v143, v145, 1, v144);
      sub_1E329E454(v143, v146, &qword_1ECF40788);
      if (__swift_getEnumTagSinglePayload(v146, 1, v144) == 1)
      {
        v73 = &qword_1ECF40798;
        v74 = v63;
        goto LABEL_82;
      }

      v147 = v146 + *(v144 + 48);
      v148 = v267;
      v149 = v277;
      (*v128)(v267, v147, v277);
      v150 = sub_1E4201504();
      OUTLINED_FUNCTION_16_163(v150, v151, v152, v153);
      sub_1E4200EF4();
      v155 = v154;
      sub_1E4203F04();
      OUTLINED_FUNCTION_15_174();
      LOBYTE(v279) = 0;
      LOBYTE(v281) = 0;
      sub_1E4200F04();
      v156 = OUTLINED_FUNCTION_16();
      v160 = sub_1E3952BE0(v156, v157, v158, v159);
      OUTLINED_FUNCTION_36_5();
      v161(v148, v149);
      v123 = v123 - (v155 + v160);
    }
  }

  v86 = *(v263 + 32);
  v87 = sub_1E3CCE274(v86, 2u);
  v270 = v42;
  v261 = v39;
  if (v87 & 1) != 0 || (sub_1E3CCE274(v86, 7u))
  {
    v88 = sub_1E42066D4();
    v89 = MEMORY[0x1E69E7CC0];
    v90 = v275;
    if (v88)
    {
      v91 = v88;
      v281 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_238(v88);
      v89 = v281;
      sub_1E42066B4();
      if (v91 < 0)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v92 = (v250 + 16);
      v93 = (v250 + 8);
      do
      {
        v94 = sub_1E4206764();
        v95 = v264;
        v96 = v277;
        (*v92)(v264);
        v97 = OUTLINED_FUNCTION_4_273();
        v94(v97);
        v98 = sub_1E4201504();
        OUTLINED_FUNCTION_0_351(v98, v99, v100, v101);
        sub_1E4200EF4();
        v103 = v102;
        v104 = sub_1E4201514();
        OUTLINED_FUNCTION_0_351(v104, v105, v106, v107);
        sub_1E4200EF4();
        v109 = v108;
        (*v93)(v95, v96);
        v281 = v89;
        v111 = *(v89 + 16);
        v110 = *(v89 + 24);
        if (v111 >= v110 >> 1)
        {
          v113 = OUTLINED_FUNCTION_7_246(v110);
          sub_1E3A79F84(v113, v111 + 1, 1);
          v89 = v281;
        }

        *(v89 + 16) = v111 + 1;
        v112 = v89 + 16 * v111;
        *(v112 + 32) = v103;
        *(v112 + 40) = v109;
        sub_1E4206734();
        --v91;
      }

      while (v91);
LABEL_56:
      v90 = v275;
      v39 = v261;
    }

LABEL_57:
    v187 = v76;
    v188 = *(v89 + 16);
    v189 = MEMORY[0x1E69E7CC0];
    v190 = v277;
    if (v188)
    {
      v279 = MEMORY[0x1E69E7CC0];

      sub_1E3887DC4(0, v188, 0);
      v189 = v279;
      v191 = *(v279 + 16);
      v192 = 40;
      do
      {
        v193 = *(v89 + v192);
        v279 = v189;
        v194 = *(v189 + 24);
        if (v191 >= v194 >> 1)
        {
          sub_1E3887DC4((v194 > 1), v191 + 1, 1);
          v189 = v279;
        }

        *(v189 + 16) = v191 + 1;
        *(v189 + 8 * v191 + 32) = v193;
        v192 += 16;
        ++v191;
        --v188;
      }

      while (v188);

      v90 = v275;
    }

    v195 = sub_1E39AB6F8(v189);
    v197 = v196;

    v198 = v249;
    v199 = v239;
    (*(v249 + 16))(v239, v244, v187);
    v200 = v242;
    *(v199 + *(v242 + 52)) = v89;
    v201 = v241;
    sub_1E329E454(v199, v241, &qword_1ECF40770);
    (*(v198 + 32))(v243, v201, v187);
    sub_1E412316C(&qword_1EE289D90);
    v202 = v265;
    sub_1E4206194();
    v203 = *(v201 + *(v200 + 52));
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF407A0);
    v259 = 0;
    *&v276 = 0;
    v205 = (v202 + *(v204 + 52));
    *v205 = v203;
    *(v205 + 1) = 0;
    v258 = v205;
    v269 = *(v204 + 56);
    *(v202 + v269) = 0;
    v256 = *(v240 + 36);
    *(v202 + v256) = 0;
    v264 = v250 + 16;
    v267 = v203;
    *&v257 = v203 + 32;
    v206 = (v250 + 32);
    v207 = (v250 + 8);
    if (v197)
    {
      v208 = 0;
    }

    else
    {
      v208 = v195;
    }

    v268 = v208;
    OUTLINED_FUNCTION_27_103();
    v260 = v207;
LABEL_67:
    v209 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58) + 36);
    v210 = v265;
    sub_1E4206724();
    if (*(v210 + v209) == v279)
    {
LABEL_70:
      *(v210 + v269) = 1;
      goto LABEL_71;
    }

    v195 = v190;
    v197 = v274;
    v211 = sub_1E4206764();
    OUTLINED_FUNCTION_36_5();
    v212 = v270;
    v213(v270);
    v214 = OUTLINED_FUNCTION_4_273();
    v211(v214);
    sub_1E4206734();
    v215 = *(v267 + 16);
    if (v276 == v215)
    {
      OUTLINED_FUNCTION_36_5();
      v216 = v212;
      v207 = v217;
      v218(v216, v190);
      OUTLINED_FUNCTION_27_103();
      v210 = v265;
      v39 = v261;
      goto LABEL_70;
    }

    v197 = v262;
    if (v276 < v215)
    {
      v228 = v276;
      v229 = v276 + 1;
      v276 = *(*&v257 + 16 * v276);
      *(v258 + 1) = v228 + 1;
      v230 = *(v273 + 48);
      v231 = v252;
      v190 = v277;
      (*v206)(v252, v270, v277);
      *(v231 + v230) = v276;
      v232 = v231;
      v233 = v251;
      sub_1E329E454(v232, v251, &qword_1ECF40760);
      v234 = *(v197 + 48);
      v235 = v253;
      v236 = v259;
      *v253 = v259;
      sub_1E329E454(v233, v235 + v234, &qword_1ECF40760);
      v131 = __OFADD__(v236, 1);
      v237 = (v236 + 1);
      if (!v131)
      {
        v259 = v237;
        *(v265 + v256) = v237;
        v90 = v275;
        sub_1E329E454(v235, v275, &qword_1ECF40758);
        __swift_storeEnumTagSinglePayload(v90, 0, 1, v197);
        v219 = 0;
        *&v276 = v229;
        v195 = v263;
        v39 = v261;
        v207 = v260;
        while (1)
        {
          v220 = i;
          sub_1E329E454(v90, i, &qword_1ECF40768);
          if (__swift_getEnumTagSinglePayload(v220, 1, v197) == 1)
          {
            break;
          }

          v221 = *v220;
          v222 = (v220 + *(v197 + 48) + *(v273 + 48));
          v223 = *v222;
          v224 = v222[1];
          v225 = *v206;
          v226 = v271;
          (*v206)(v271);
          v225(v39, v226, v190);
          sub_1E4203F04();
          OUTLINED_FUNCTION_15_174();
          if (v221)
          {
            LOBYTE(v279) = 0;
            LOBYTE(v281) = 0;
            OUTLINED_FUNCTION_20_131();
            sub_1E4200F04();
            v223 = v224;
          }

          else
          {
            LOBYTE(v279) = 1;
            LOBYTE(v281) = 0;
            OUTLINED_FUNCTION_20_131();
            sub_1E4200F04();
          }

          v227 = sub_1E3952BE0(*v195, v195[1], v195[2], v195[3]);
          (*v207)(v39, v190);
          v11 = v11 + v223 + v227;
          v90 = v275;
          if ((v219 & 1) == 0)
          {
            goto LABEL_67;
          }

LABEL_71:
          v219 = 1;
          __swift_storeEnumTagSinglePayload(v90, 1, 1, v197);
        }

        v73 = &qword_1ECF40780;
        v74 = v265;
        goto LABEL_82;
      }

      goto LABEL_93;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v162 = v260;
  (*(v249 + 16))(v260, v244, v23);
  v163 = sub_1E42066D4();
  v90 = v275;
  if (!v163)
  {
    sub_1E325F6F0(v162, &qword_1ECF30E50);
    v89 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v164 = v163;
  v281 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_238(v163);
  v89 = v281;
  sub_1E42066B4();
  if ((v164 & 0x8000000000000000) == 0)
  {
    v165 = 0;
    v166 = v279;
    v269 = v250 + 16;
    v167 = (v250 + 32);
    v168 = v276;
    while (1)
    {
      v169 = *(v168 + 48);
      v280 = v166;
      sub_1E42066B4();
      OUTLINED_FUNCTION_22_103();
      if (v137 != v131)
      {
        goto LABEL_89;
      }

      sub_1E4206724();
      OUTLINED_FUNCTION_22_103();
      if (v137 == v131)
      {
        break;
      }

      v170 = sub_1E4206764();
      OUTLINED_FUNCTION_36_5();
      v171 = v258;
      v172 = v277;
      v173(&v258[v169]);
      v174 = OUTLINED_FUNCTION_4_273();
      v170(v174);
      v175 = v259;
      *v259 = v165;
      (*v167)(v175 + *(v276 + 48), &v171[v169], v172);
      if (v165)
      {
        v176 = v256;
        v177 = v254;
      }

      else
      {
        sub_1E4201504();
      }

      LOBYTE(v279) = v176 & 1;
      LOBYTE(v280) = v177 & 1;
      sub_1E4200EF4();
      v179 = v178;
      v181 = v180;
      sub_1E325F6F0(v175, &qword_1ECF30E40);
      v281 = v89;
      v183 = *(v89 + 16);
      v182 = *(v89 + 24);
      v184 = v260;
      if (v183 >= v182 >> 1)
      {
        v186 = OUTLINED_FUNCTION_7_246(v182);
        sub_1E3A79F84(v186, v183 + 1, 1);
        v89 = v281;
      }

      *(v89 + 16) = v183 + 1;
      v185 = v89 + 16 * v183;
      *(v185 + 32) = v179;
      *(v185 + 40) = v181;
      v280 = v166;
      sub_1E42066E4();
      if (v165 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_91;
      }

      ++v165;
      v166 = v279;
      v168 = v276;
      if (v164 == v165)
      {
        sub_1E325F6F0(v184, &qword_1ECF30E50);
        v76 = v278;
        goto LABEL_56;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_1E4122F60@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    sub_1E4201044();
    sub_1E412316C(&qword_1EE289D88);
    sub_1E42066B4();
    sub_1E4206724();
    v5 = sub_1E4123498(v10, 0, v3);
    if (v7)
    {
      sub_1E4206724();
      v8 = 0;
      v9 = v10;
    }

    else
    {
      v9 = v5;
      v8 = v6;
    }

    result = sub_1E4206724();
    if (v10 >= v9)
    {
      sub_1E4123388(v9, v8, v10, 0, a2);
      return sub_1E325F6F0(v2, &qword_1ECF30E50);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4123084@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  return result;
}

void (*sub_1E41230F8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E412316C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E4201044();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E41231B4()
{
  result = qword_1EE2400C0;
  if (!qword_1EE2400C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2400C0);
  }

  return result;
}

uint64_t sub_1E4123208(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 33))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 0xA)
      {
        v4 = 10;
      }

      else
      {
        v4 = *(a1 + 32);
      }

      v5 = v4 - 11;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4123254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 10;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingStackedButtonLayout.Cache(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E4123388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1E4201044();
  sub_1E412316C(&qword_1EE289D88);
  sub_1E42066B4();
  result = sub_1E4206724();
  if (v13 > a1)
  {
    __break(1u);
  }

  else if (v13 >= a3)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF407A8);
    result = sub_1E3294EE4(v5, a5 + *(v12 + 40), &qword_1ECF30E50);
    *a5 = a1;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4123498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E4201044();
  sub_1E412316C(&qword_1EE289D88);
  result = sub_1E42066F4();
  v7 = 0;
  if (v9)
  {
    return v7;
  }

  v7 = v8;
  if (a3 < 0)
  {
    result = sub_1E4206724();
    if (v8 == a1)
    {
      result = sub_1E42066D4();
      a2 = result;
    }
  }

  if (!__OFADD__(a2, a3))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4123590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  if ([v4 mediaItemMetadataForProperty_])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v7 ^ 1u, 1, a2);
}

uint64_t sub_1E4123650(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E376948C();
  sub_1E4123590(a1, v4, &v7);
  v5 = v7;
  if (v7)
  {
    a2 = [v7 BOOLValue];
  }

  return a2 & 1;
}

uint64_t sub_1E41236C0(uint64_t a1)
{
  v2 = sub_1E376948C();
  sub_1E4123590(a1, v2, &v7);
  v3 = v7;
  if (!v7)
  {
    return 0;
  }

  [v7 doubleValue];
  v5 = v4;

  return v5;
}

VideosUI::DocumentType_optional __swiftcall DocumentType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1E4207784();

  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t DocumentType.rawValue.getter(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6163696E6F6E6163;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0x6B63616279616C70;
      break;
    case 4:
      result = 0x726579616C70;
      break;
    case 5:
      result = 0x79616C5074736F70;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x74736F506576696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4123898(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v5 = 0x6163696E6F6E6163;
      v3 = 0xE90000000000006CLL;
      break;
    case 2:
      v5 = 0x4D747865746E6F63;
      v3 = 0xEB00000000756E65;
      break;
    case 3:
      v5 = 0x6B63616279616C70;
      v3 = 0xEE007478654E7055;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x726579616C70;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x79616C5074736F70;
      break;
    case 6:
      v5 = 0xD000000000000011;
      v3 = 0x80000001E4292960;
      break;
    case 7:
      v5 = 0x74736F506576696CLL;
      v3 = 0xEC00000079616C50;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6163696E6F6E6163;
      v6 = 0xE90000000000006CLL;
      break;
    case 2:
      v2 = 0x4D747865746E6F63;
      v6 = 0xEB00000000756E65;
      break;
    case 3:
      v2 = 0x6B63616279616C70;
      v6 = 0xEE007478654E7055;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x726579616C70;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x79616C5074736F70;
      break;
    case 6:
      v2 = 0xD000000000000011;
      v6 = 0x80000001E4292960;
      break;
    case 7:
      v2 = 0x74736F506576696CLL;
      v6 = 0xEC00000079616C50;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4123B0C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1E4207B44();
  a2(a1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E4123B6C(uint64_t a1, char a2)
{
  sub_1E4123DE4(a2);
  sub_1E4206014();
}

uint64_t sub_1E4123BC0()
{
  sub_1E4206014();
}

uint64_t sub_1E4123D28(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

VideosUI::DocumentType_optional sub_1E4123D7C@<W0>(Swift::String *a1@<X0>, VideosUI::DocumentType_optional *a2@<X8>)
{
  result.value = DocumentType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_1E4123DAC@<X0>(unint64_t *a1@<X8>)
{
  result = DocumentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4123DE4(char a1)
{
  result = 0x6D65547472656C61;
  switch(a1)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
    case 17:
    case 18:
      OUTLINED_FUNCTION_1_50();
      return v10 - 2;
    case 3:
      return 0xD000000000000013;
    case 4:
      OUTLINED_FUNCTION_1_50();
      return v4 + 11;
    case 5:
    case 22:
      OUTLINED_FUNCTION_1_50();
      return v12 + 7;
    case 6:
    case 13:
    case 14:
    case 28:
    case 29:
      OUTLINED_FUNCTION_1_50();
      return v13 | 4;
    case 7:
      return 0xD000000000000013;
    case 8:
      return 0xD000000000000013;
    case 9:
      return 0xD000000000000013;
    case 10:
      v6 = 0x54726F727265;
      goto LABEL_17;
    case 11:
      OUTLINED_FUNCTION_1_50();
      return v3 + 3;
    case 12:
      OUTLINED_FUNCTION_1_50();
      return v5 - 1;
    case 15:
    case 27:
      OUTLINED_FUNCTION_1_50();
      return v8 + 2;
    case 16:
      return 0x6554686372616573;
    case 19:
    case 26:
      OUTLINED_FUNCTION_1_50();
      return v14 - 3;
    case 20:
      OUTLINED_FUNCTION_1_50();
      return v9 + 1;
    case 21:
      return 0xD000000000000013;
    case 23:
      v7 = 1852399981;
      goto LABEL_23;
    case 24:
      v7 = 1953720684;
LABEL_23:
      result = v7 | 0x706D655400000000;
      break;
    case 25:
      v6 = 0x547075656E6FLL;
LABEL_17:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6D65000000000000;
      break;
    case 30:
      OUTLINED_FUNCTION_1_50();
      result = v11 + 6;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E41240F4()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E412414C()
{
  result = qword_1ECF407B8;
  if (!qword_1ECF407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407B8);
  }

  return result;
}

uint64_t sub_1E4124218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E41240F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E4124248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4123DE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DocumentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemplateModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemplateModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E41244C4(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_1E4202764();
      break;
    case 2:
      result = sub_1E4202754();
      break;
    case 3:
      result = sub_1E4202784();
      break;
    default:
      result = sub_1E4202744();
      break;
  }

  return result;
}

uint64_t sub_1E41244F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4124534(char a1)
{
  result = 7368564;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_1_311();
      break;
    case 2:
      result = OUTLINED_FUNCTION_15_175();
      break;
    case 3:
      result = 0x7468676972;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4124590(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C6261736964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656C6261736964;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953393012;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x746E6172626976;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953393012;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x746E6172626976;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E41246BC(unsigned __int8 a1, char a2)
{
  v2 = 0x7972616D697270;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7972616D697270;
  switch(v4)
  {
    case 1:
      v5 = 0x7261646E6F636573;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x7972616974726574;
      break;
    case 3:
      v5 = 0x616E726574617571;
      v3 = 0xEA00000000007972;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7261646E6F636573;
      v6 = 0xE900000000000079;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x7972616974726574;
      break;
    case 3:
      v2 = 0x616E726574617571;
      v6 = 0xEA00000000007972;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124818(unsigned __int8 a1, char a2)
{
  v2 = 0x72616C75676572;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x72616C75676572;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1852401780;
      break;
    case 2:
      v5 = 0x6968546172746C75;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x6B63696874;
      break;
    case 4:
      v5 = 0x6968546172746C75;
      v3 = 0xEA00000000006B63;
      break;
    case 5:
      v5 = 0x72657474616C70;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 7496034;
      break;
    case 7:
      v5 = 0x756964654D767461;
      v3 = 0xE90000000000006DLL;
      break;
    case 8:
      v5 = 0xD000000000000010;
      v3 = 0x80000001E4292E60;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x7373616C67;
      break;
    case 10:
      v5 = 0x616C507373616C67;
      v3 = 0xEB00000000726579;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1852401780;
      break;
    case 2:
      v2 = 0x6968546172746C75;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x6B63696874;
      break;
    case 4:
      v2 = 0x6968546172746C75;
      v6 = 0xEA00000000006B63;
      break;
    case 5:
      v2 = 0x72657474616C70;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 7496034;
      break;
    case 7:
      v2 = 0x756964654D767461;
      v6 = 0xE90000000000006DLL;
      break;
    case 8:
      v2 = 0xD000000000000010;
      v6 = 0x80000001E4292E60;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v2 = 0x7373616C67;
      break;
    case 10:
      v2 = 0x616C507373616C67;
      v6 = 0xEB00000000726579;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124AAC(unsigned __int8 a1, char a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7368564;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6D6F74746F62;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124B8C(unsigned __int8 a1, char a2)
{
  v2 = 7368564;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7368564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6D6F74746F62;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x7468676972;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1952867692;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6D6F74746F62;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x7468676972;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E4124CF0()
{
  OUTLINED_FUNCTION_71_1();
  v0(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E4124D30()
{
  OUTLINED_FUNCTION_71_1();
  v0(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E4124D80()
{
  sub_1E4206014();
}

uint64_t sub_1E4124E70()
{
  sub_1E4125678();
  sub_1E4206014();
}

uint64_t sub_1E4124EC4()
{
  sub_1E4206014();
}

uint64_t sub_1E4124F6C()
{
  sub_1E4206014();
}

uint64_t sub_1E412502C()
{
  sub_1E4206014();
}

uint64_t sub_1E412518C()
{
  sub_1E4206014();
}

uint64_t sub_1E4125238()
{
  sub_1E4206014();
}

uint64_t sub_1E4125310()
{
  sub_1E4206014();
}

uint64_t sub_1E4125388()
{
  sub_1E4206014();
}

uint64_t sub_1E4125458()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E41254E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1E4207B44();
  a3(v6, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E4125530(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E4125584(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E41244F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E41255AC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4124534(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E41255DC(char a1)
{
  if ((a1 - 1) > 0x10u)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_19_155((a1 - 1));
  }
}

uint64_t sub_1E4125630()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125678()
{
  result = OUTLINED_FUNCTION_16_164();
  switch(v1)
  {
    case 1:
      v2 = 1953391971;
      goto LABEL_18;
    case 2:
      return OUTLINED_FUNCTION_2_271();
    case 3:
      return OUTLINED_FUNCTION_15_175();
    case 4:
      return OUTLINED_FUNCTION_1_311();
    case 5:
      return OUTLINED_FUNCTION_13_192();
    case 6:
      return 0x7466654C706F74;
    case 7:
      return 0x7468676952706F74;
    case 8:
      return 0x654C6D6F74746F62;
    case 9:
      return 0x69526D6F74746F62;
    case 10:
      v2 = 1684104552;
      goto LABEL_18;
    case 11:
      v2 = 1953460070;
LABEL_18:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 12:
      result = OUTLINED_FUNCTION_11_190();
      break;
    case 13:
      result = OUTLINED_FUNCTION_8_206();
      break;
    case 14:
      result = 0x696461654C706F74;
      break;
    case 15:
      result = 0x6C69617254706F74;
      break;
    case 16:
      result = 0x654C6D6F74746F62;
      break;
    case 17:
      result = 0x72546D6F74746F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4125860(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125630();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125888()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E4125678();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E41258B8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E41258F8()
{
  result = OUTLINED_FUNCTION_16_164();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_14_186();
      break;
    case 2:
      result = OUTLINED_FUNCTION_1_311();
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_192();
      break;
    case 4:
      result = OUTLINED_FUNCTION_11_190();
      break;
    case 5:
      result = OUTLINED_FUNCTION_8_206();
      break;
    case 6:
      result = 0x656966697473756ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E41259C8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E41258B8();
  *v1 = result;
  return result;
}

uint64_t sub_1E41259F0()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E41258F8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E4125A20()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125A5C()
{
  result = OUTLINED_FUNCTION_16_164();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_14_186();
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_271();
      break;
    case 3:
      result = 0x6D6F74746F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4125B20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125A20();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125B48()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E4125A5C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E4125B78(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      v2 = sub_1E42079A4();

      v1 = v2 ^ 1;
      break;
    default:

      v1 = 0;
      break;
  }

  return v1 & 1;
}

uint64_t sub_1E4125C3C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125C78(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = 1701736302;
      break;
    case 2:
      result = 1953393012;
      break;
    case 3:
      result = 0x746E6172626976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4125D60(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125C3C();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125D88()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4125C78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E4125DB8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4125DF8(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_2_271();
  }

  if (a1 == 1)
  {
    return 0x6D6F74746F62;
  }

  return 1701736302;
}

uint64_t sub_1E4125E54(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4125DB8();
  *v1 = result;
  return result;
}

uint64_t sub_1E4125E7C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4125DF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E4125EAC(char a1, char a2)
{
  v2 = 1;
  switch(a2)
  {
    case 1:
    case 4:
      v2 = a1;
      break;
    case 2:
      v2 = a1 ^ 1;
      break;
    default:
      return v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1E4125EE8(char a1)
{
  switch(a1)
  {
    case 3:
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_21_124();
      break;
    default:
      break;
  }

  v2 = sub_1E42079A4();

  if ((v2 & 1) == 0)
  {
    if (sub_1E4126068(a1) != 0xD000000000000019 || 0x80000001E4292DF0 != v3)
    {
      v5 = OUTLINED_FUNCTION_23_111();

      return v5 & 1;
    }

LABEL_9:
  }

  return 1;
}

uint64_t sub_1E4126028()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4126068(char a1)
{
  result = 0x737961776C61;
  switch(a1)
  {
    case 1:
      v3 = 2003789939;
      goto LABEL_5;
    case 2:
      v3 = 1701079400;
LABEL_5:
      result = v3 | 0x69486E4F00000000;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4126180(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E4126028();
  *v1 = result;
  return result;
}

uint64_t sub_1E41261A8()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4126068(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E41261D8(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_1E4202184();
      break;
    case 2:
      result = MEMORY[0x1EEDE18E8]();
      break;
    case 3:
      result = MEMORY[0x1EEDE18B0]();
      break;
    default:
      result = sub_1E4202164();
      break;
  }

  return result;
}

uint64_t sub_1E412620C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E4126248(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x7972616974726574;
      break;
    case 3:
      result = 0x616E726574617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E4126348(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E412620C();
  *v1 = result;
  return result;
}

uint64_t sub_1E4126370()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E4126248(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E41263A0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1E4203D34();
  result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  switch(a1)
  {
    case 1:
      sub_1E4203CE4();
      goto LABEL_8;
    case 2:
    case 8:
      sub_1E4203D24();
      goto LABEL_8;
    case 3:
      sub_1E4203CF4();
      goto LABEL_8;
    case 4:
      sub_1E4203C74();
      goto LABEL_8;
    case 6:
      sub_1E4203CD4();
      goto LABEL_8;
    case 7:
    case 9:
    case 10:
      return result;
    default:
      sub_1E4203D14();
LABEL_8:
      sub_1E41264CC(a2);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      return sub_1E4126534(v6, a2);
  }
}

uint64_t sub_1E41264CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4126534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E41265A4(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() effectWithStyle_];
  }
}

uint64_t sub_1E412660C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E412664C(char a1)
{
  result = 0x72616C75676572;
  switch(a1)
  {
    case 1:
      result = 1852401780;
      break;
    case 2:
      result = 0x6968546172746C75;
      break;
    case 3:
      result = 0x6B63696874;
      break;
    case 4:
      result = 0x6968546172746C75;
      break;
    case 5:
      result = 0x72657474616C70;
      break;
    case 6:
      result = 7496034;
      break;
    case 7:
      result = 0x756964654D767461;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7373616C67;
      break;
    case 10:
      result = 0x616C507373616C67;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E412677C()
{
  result = qword_1ECF407C0;
  if (!qword_1ECF407C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407C0);
  }

  return result;
}

unint64_t sub_1E41267DC()
{
  result = qword_1ECF407C8;
  if (!qword_1ECF407C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407C8);
  }

  return result;
}

unint64_t sub_1E4126834()
{
  result = qword_1ECF407D0;
  if (!qword_1ECF407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407D0);
  }

  return result;
}

unint64_t sub_1E412688C()
{
  result = qword_1ECF407D8;
  if (!qword_1ECF407D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407D8);
  }

  return result;
}

unint64_t sub_1E41268E8()
{
  result = qword_1ECF407E0;
  if (!qword_1ECF407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407E0);
  }

  return result;
}

uint64_t sub_1E41269B4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E412660C();
  *v1 = result;
  return result;
}

unint64_t sub_1E41269DC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E412664C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E4126A1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 18);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 18);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 18);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E4126AA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 17);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126B68(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126C48(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126D10(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E4126DD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}