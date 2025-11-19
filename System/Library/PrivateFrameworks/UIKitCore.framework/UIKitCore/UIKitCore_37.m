char *sub_188EE299C(double a1)
{
  v2 = v1;
  if (a1 <= 0.0)
  {
    v11 = *(v1 + 21);

    return v11;
  }

  v3 = *(v1 + 19);
  v4 = *(v1 + 139);
  if (v4)
  {

    *(v1 + 22) = v3;

    *(v1 + 23) = 0;
  }

  v5 = *(v1 + 10);
  v6 = *(v1 + 11);
  v7 = *(v1 + 12);
  v8 = *(v1 + 104);
  v9 = *(v2 + 137);
  v10 = *(v2 + 138);
  if ((v9 & 1) == 0)
  {
    v12 = *(v2 + 6);
    v13 = *(v2 + 7);
    v14 = *(v2 + 8);
    if (*v2 == v12 && *(v2 + 1) == 0.0)
    {
      if ((*(v2 + 138) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v504 = *(v2 + 11);
      v16 = sub_188ABBBFC(*(v2 + 72), *v2, v12);
      v17 = *(v2 + 1);
      v18 = sqrt(v13);
      v19 = v14 * 0.5;
      v520 = v5;
      if (v14 * 0.5 >= v18)
      {
        if (v18 >= v19)
        {
          v35 = v19 * v16 + v17;
          v36 = v16 + v35 * a1;
          v24 = exp(-(v19 * a1));
          v25 = v24 * v36;
          v28 = v24 * v35;
          v29 = v36 * v19;
        }

        else
        {
          v30 = sqrt(v19 * v19 - v18 * v18);
          v31 = cosh(v30 * a1);
          v484 = v7;
          v32 = 1.0 / v30 * (v19 * v16 + v17);
          v33 = sinh(v30 * a1);
          v34 = v16 * v31 + v32 * v33;
          v24 = exp(-(v19 * a1));
          v25 = v24 * v34;
          v28 = v24 * (v30 * (v32 * v31) + v30 * (v16 * v33));
          v29 = v34 * v19;
          v7 = v484;
        }
      }

      else
      {
        v483 = v7;
        v20 = sqrt(v18 * v18 - v19 * v19);
        v21 = __sincos_stret(v20 * a1);
        v22 = 1.0 / v20 * (v19 * v16 + v17);
        v23 = v21.__cosval * v16 + v21.__sinval * v22;
        v24 = exp(-(v19 * a1));
        v25 = v24 * v23;
        v26 = v20 * (v16 * v21.__sinval);
        v27 = v20 * (v21.__cosval * v22);
        v7 = v483;
        v28 = v24 * (v27 - v26);
        v29 = v23 * v19;
      }

      *v2 = v12 + v25;
      *(v2 + 1) = v28 - v24 * v29;
      v5 = v520;
      v6 = v504;
      if ((v10 & 1) == 0)
      {
LABEL_19:
        v15 = *(v2 + 2);
        if (v15 != v5 || *(v2 + 3) != 0.0)
        {
          v37 = sub_188ABBBFC(v8, v15, v5);
          v38 = *(v2 + 3);
          v39 = sqrt(v6);
          v40 = v7 * 0.5;
          if (v7 * 0.5 >= v39)
          {
            if (v39 >= v40)
            {
              v54 = v40 * v37 + v38;
              v55 = v37 + v54 * a1;
              v45 = exp(-(v40 * a1));
              v46 = v45 * v55;
              v47 = v45 * v54;
              v48 = v55 * v40;
            }

            else
            {
              v49 = sqrt(v40 * v40 - v39 * v39);
              v50 = cosh(v49 * a1);
              v51 = 1.0 / v49 * (v40 * v37 + v38);
              v52 = sinh(v49 * a1);
              v53 = v37 * v50 + v51 * v52;
              v45 = exp(-(v40 * a1));
              v46 = v45 * v53;
              v47 = v45 * (v49 * (v51 * v50) + v49 * (v37 * v52));
              v48 = v53 * v40;
            }
          }

          else
          {
            v41 = sqrt(v39 * v39 - v40 * v40);
            v42 = __sincos_stret(v41 * a1);
            v43 = 1.0 / v41 * (v40 * v37 + v38);
            v44 = v42.__cosval * v37 + v42.__sinval * v43;
            v45 = exp(-(v40 * a1));
            v46 = v45 * v44;
            v47 = v45 * (v41 * (v42.__cosval * v43) - v41 * (v37 * v42.__sinval));
            v48 = v44 * v40;
          }

          v56 = v47 - v45 * v48;
          v15 = v5 + v46;
          *(v2 + 2) = v5 + v46;
          *(v2 + 3) = v56;
        }

LABEL_27:
        v57 = 6.28318531 / v15 * (6.28318531 / v15);
        v58 = sqrt(v57);
        v59 = *v2 * (v58 + v58);
        *(v2 + 4) = v57;
        *(v2 + 5) = v59;
        goto LABEL_28;
      }
    }

    if (v9)
    {
      goto LABEL_28;
    }

    v15 = *(v2 + 2);
    goto LABEL_27;
  }

  if ((*(v2 + 138) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_28:

  *(v2 + 14) = v3;
  v60 = *(v2 + 22);
  v61 = *(v2 + 23);
  v62 = *(v2 + 20);
  v63 = *(v2 + 21);
  v65 = *(v2 + 4);
  v64 = *(v2 + 5);
  v541 = v60;
  v542 = v61;
  v543 = v63;
  v544 = v62;
  v66 = v2[1];
  v545 = *v2;
  v546 = v66;
  v547 = v65;
  v548 = v64;
  v414 = v62;
  if (v4)
  {

    v67 = v60;
    if (v63)
    {
LABEL_30:
      if (!v67)
      {
        goto LABEL_38;
      }

      v68 = sub_1890154CC(v63, v67);

      if ((v68 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v70 = *(v2 + 15);
    v69 = *(v2 + 16);

    sub_188EE99B8(v3, v70, v69, a1);
    v67 = v541;
    if (v63)
    {
      goto LABEL_30;
    }
  }

  if (v67)
  {

    goto LABEL_38;
  }

LABEL_36:
  if (!v414)
  {

    v71 = v67;
    v72 = 0;
    v11 = v63;
LABEL_537:

    *(v2 + 20) = v72;
    *(v2 + 21) = v11;
    v412 = v542;
    *(v2 + 22) = v71;
    *(v2 + 23) = v412;
    return v11;
  }

LABEL_38:
  v73 = sub_188CD18C0(v63, v67);
  v74 = sqrt(v65);
  v75 = v64 * 0.5;
  v413 = v67;
  v426 = v73;
  v521 = v64 * 0.5;
  if (v64 * 0.5 < v74)
  {
    v465 = sqrt(v74 * v74 - v75 * v75);
    v76 = v465 * a1;
    v505 = cos(v465 * a1);
    if (v426)
    {
      v77 = *(v426 + 16);
      v78 = MEMORY[0x1E69E7CC0];
      if (v77)
      {
        v540 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v77);
        v78 = v540;
        v79 = (v426 + 48);
        do
        {
          v485 = v79[-1];
          v447 = *v79;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v78 + 16) + 1, 1);
            v78 = v540;
          }

          v81 = *(v78 + 16);
          v80 = *(v78 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_188CCF904((v80 > 1), v81 + 1, 1);
            v78 = v540;
          }

          *(v78 + 16) = v81 + 1;
          v82 = (v78 + 32 * v81);
          v82[2] = vmulq_n_f64(v485, v505);
          v82[3] = vmulq_n_f64(v447, v505);
          v79 += 2;
          --v77;
        }

        while (v77);
        v98 = *(v426 + 16);
        v99 = MEMORY[0x1E69E7CC0];
        if (v98)
        {
          v540 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v98);
          v99 = v540;
          v100 = (v426 + 48);
          do
          {
            v488 = v100[-1];
            v449 = *v100;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v99 + 16) + 1, 1);
              v99 = v540;
            }

            v101 = v64 * 0.5;
            v103 = *(v99 + 16);
            v102 = *(v99 + 24);
            if (v103 >= v102 >> 1)
            {
              sub_188CCF904((v102 > 1), v103 + 1, 1);
              v101 = v64 * 0.5;
              v99 = v540;
            }

            *(v99 + 16) = v103 + 1;
            v104 = (v99 + 32 * v103);
            v104[2] = vmulq_n_f64(v488, v101);
            v104[3] = vmulq_n_f64(v449, v101);
            v100 += 2;
            --v98;
          }

          while (v98);
        }
      }

      else
      {
        v99 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v99 = 0;
      v78 = 0;
    }

    v105 = sub_18914A510(v99, v414);

    v489 = 1.0 / v465;
    if (!v105)
    {
      v113 = 0;
      goto LABEL_96;
    }

    v106 = *(v105 + 16);
    if (v106)
    {
      v540 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v106);
      v107 = v540;
      v108 = (v105 + 48);
      do
      {
        v427 = *v108;
        v450 = v108[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v107 + 16) + 1, 1);
          v107 = v540;
        }

        v110 = *(v107 + 16);
        v109 = *(v107 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_188CCF904((v109 > 1), v110 + 1, 1);
          v107 = v540;
        }

        *(v107 + 16) = v110 + 1;
        v111 = (v107 + 32 * v110);
        v111[2] = vmulq_n_f64(v450, v489);
        v111[3] = vmulq_n_f64(v427, v489);
        v108 += 2;
        --v106;
      }

      while (v106);

      v112 = *(v107 + 16);
      if (v112)
      {
        goto LABEL_86;
      }
    }

    else
    {

      v107 = MEMORY[0x1E69E7CC0];
      v112 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v112)
      {
LABEL_86:
        v416 = sin(v76);
        v540 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v112);
        v113 = v540;
        v114 = (v107 + 48);
        do
        {
          v428 = *v114;
          v451 = v114[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v113 + 16) + 1, 1);
            v113 = v540;
          }

          v116 = *(v113 + 16);
          v115 = *(v113 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_188CCF904((v115 > 1), v116 + 1, 1);
            v113 = v540;
          }

          *(v113 + 16) = v116 + 1;
          v117 = (v113 + 32 * v116);
          v117[2] = vmulq_n_f64(v451, v416);
          v117[3] = vmulq_n_f64(v428, v416);
          v114 += 2;
          --v112;
        }

        while (v112);

LABEL_96:
        v118 = sub_18914A510(v78, v113);

        v480 = exp(-(v521 * a1));
        if (v118)
        {
          v119 = *(v118 + 16);
          if (v119)
          {
            v540 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v119);
            v120 = v540;
            v121 = (v118 + 48);
            do
            {
              v429 = *v121;
              v452 = v121[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v120 + 16) + 1, 1);
                v120 = v540;
              }

              v123 = *(v120 + 16);
              v122 = *(v120 + 24);
              if (v123 >= v122 >> 1)
              {
                sub_188CCF904((v122 > 1), v123 + 1, 1);
                v120 = v540;
              }

              *(v120 + 16) = v123 + 1;
              v124 = (v120 + 32 * v123);
              v124[2] = vmulq_n_f64(v452, v480);
              v124[3] = vmulq_n_f64(v429, v480);
              v121 += 2;
              --v119;
            }

            while (v119);
          }

          else
          {

            v120 = MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v120 = 0;
        }

        v125 = sin(v76);
        v417 = v125;
        if (v426)
        {
          v126 = *(v426 + 16);
          v127 = MEMORY[0x1E69E7CC0];
          if (v126)
          {
            v415 = -v125;
            v540 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v126);
            v128 = v540;
            v129 = (v426 + 48);
            do
            {
              v430 = *v129;
              v453 = v129[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v128 + 16) + 1, 1);
                v128 = v540;
              }

              v131 = *(v128 + 16);
              v130 = *(v128 + 24);
              if (v131 >= v130 >> 1)
              {
                sub_188CCF904((v130 > 1), v131 + 1, 1);
                v128 = v540;
              }

              *(v128 + 16) = v131 + 1;
              v132 = (v128 + 32 * v131);
              v132[2] = vmulq_n_f64(v453, v415);
              v132[3] = vmulq_n_f64(v430, v415);
              v129 += 2;
              --v126;
            }

            while (v126);
          }

          else
          {
            v128 = MEMORY[0x1E69E7CC0];
          }

          v135 = sub_188D7F314(v128);
          if (v135)
          {
            v136 = v135;
            v540 = v127;
            result = sub_18914A444(v135);
            if (v136 < 0)
            {
              __break(1u);
              goto LABEL_540;
            }

            v134 = v540;
            v138 = (v128 + 48);
            do
            {
              v431 = *v138;
              v454 = v138[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v134 + 16) + 1, 1);
                v134 = v540;
              }

              v140 = *(v134 + 16);
              v139 = *(v134 + 24);
              if (v140 >= v139 >> 1)
              {
                sub_188CCF904((v139 > 1), v140 + 1, 1);
                v134 = v540;
              }

              *(v134 + 16) = v140 + 1;
              v141 = (v134 + 32 * v140);
              v141[2] = vmulq_n_f64(v454, v465);
              v141[3] = vmulq_n_f64(v431, v465);
              v138 += 2;
              --v136;
            }

            while (v136);
          }

          else
          {
            v134 = sub_18914A4BC(0);
          }

          v142 = sub_188D7F314(v426);
          if (v142)
          {
            v143 = v142;
            v540 = v127;
            result = sub_18914A444(v142);
            if ((v143 & 0x8000000000000000) == 0)
            {
              v133 = v540;
              v144 = (v426 + 48);
              do
              {
                v432 = *v144;
                v455 = v144[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v133 + 16) + 1, 1);
                  v133 = v540;
                }

                v145 = v64 * 0.5;
                v147 = *(v133 + 16);
                v146 = *(v133 + 24);
                if (v147 >= v146 >> 1)
                {
                  sub_188CCF904((v146 > 1), v147 + 1, 1);
                  v145 = v64 * 0.5;
                  v133 = v540;
                }

                *(v133 + 16) = v147 + 1;
                v148 = (v133 + 32 * v147);
                v148[2] = vmulq_n_f64(v455, v145);
                v148[3] = vmulq_n_f64(v432, v145);
                v144 += 2;
                --v143;
              }

              while (v143);
              goto LABEL_138;
            }

LABEL_540:
            __break(1u);
            goto LABEL_541;
          }

          v133 = sub_18914A4BC(0);
        }

        else
        {
          v133 = 0;
          v134 = 0;
        }

LABEL_138:
        v149 = sub_18914A510(v133, v414);

        if (!v149)
        {
          v157 = 0;
LABEL_171:
          v171 = sub_18914A510(v134, v157);

          if (!v171)
          {
            v174 = 0;
LABEL_184:
            v540 = v174;
            if (!v426)
            {
              v186 = 0;
              v181 = 0;
              goto LABEL_206;
            }

            v179 = sub_188D7F314(v426);
            if (!v179)
            {
              v181 = sub_18914A4BC(0);
LABEL_196:
              v187 = sub_188D7F314(v426);
              if (v187)
              {
                v188 = v187;
                v529 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v187);
                if ((v188 & 0x8000000000000000) == 0)
                {
                  v186 = v529;
                  v189 = (v426 + 48);
                  do
                  {
                    v508 = v189[-1];
                    v469 = *v189;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_188CCF904(0, *(v186 + 16) + 1, 1);
                      v186 = v529;
                    }

                    v190 = v64 * 0.5;
                    v192 = *(v186 + 16);
                    v191 = *(v186 + 24);
                    if (v192 >= v191 >> 1)
                    {
                      sub_188CCF904((v191 > 1), v192 + 1, 1);
                      v190 = v64 * 0.5;
                      v186 = v529;
                    }

                    *(v186 + 16) = v192 + 1;
                    v193 = (v186 + 32 * v192);
                    v193[2] = vmulq_n_f64(v508, v190);
                    v193[3] = vmulq_n_f64(v469, v190);
                    v189 += 2;
                    --v188;
                  }

                  while (v188);
                  goto LABEL_206;
                }

LABEL_546:
                __break(1u);
                goto LABEL_547;
              }

              v186 = sub_18914A4BC(0);
LABEL_206:
              v194 = v413;
              v195 = sub_18914A510(v186, v414);

              if (!v195)
              {
                v203 = 0;
                goto LABEL_229;
              }

              v196 = sub_188D7F314(v195);
              if (!v196)
              {
                v198 = sub_18914A4BC(0);
LABEL_218:

                v204 = sub_188D7F314(v198);
                if (!v204)
                {
                  v203 = sub_18914A4BC(0);
LABEL_228:

                  v194 = v413;
LABEL_229:
                  v210 = sub_18914A510(v181, v203);

                  if (v210)
                  {
                    v211 = sub_188D7F314(v210);
                    if (!v211)
                    {
                      v213 = sub_18914A4BC(0);
                      goto LABEL_240;
                    }

                    v212 = v211;
                    v532 = MEMORY[0x1E69E7CC0];
                    result = sub_18914A444(v211);
                    if ((v212 & 0x8000000000000000) == 0)
                    {
                      v491 = -v521;
                      v213 = v532;
                      v214 = (v210 + 48);
                      do
                      {
                        v511 = *v214;
                        v522 = v214[-1];
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_188CCF904(0, *(v213 + 16) + 1, 1);
                          v213 = v532;
                        }

                        v216 = *(v213 + 16);
                        v215 = *(v213 + 24);
                        if (v216 >= v215 >> 1)
                        {
                          sub_188CCF904((v215 > 1), v216 + 1, 1);
                          v213 = v532;
                        }

                        *(v213 + 16) = v216 + 1;
                        v217 = (v213 + 32 * v216);
                        v217[2] = vmulq_n_f64(v522, v491);
                        v217[3] = vmulq_n_f64(v511, v491);
                        v214 += 2;
                        --v212;
                      }

                      while (v212);
LABEL_240:

                      v218 = sub_188D7F314(v213);
                      if (v218)
                      {
                        v219 = v218;
                        v533 = MEMORY[0x1E69E7CC0];
                        result = sub_18914A444(v218);
                        if ((v219 & 0x8000000000000000) == 0)
                        {
                          v220 = v533;
                          v221 = (v213 + 48);
                          do
                          {
                            v512 = *v221;
                            v523 = v221[-1];
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              sub_188CCF904(0, *(v220 + 16) + 1, 1);
                              v220 = v533;
                            }

                            v223 = *(v220 + 16);
                            v222 = *(v220 + 24);
                            if (v223 >= v222 >> 1)
                            {
                              sub_188CCF904((v222 > 1), v223 + 1, 1);
                              v220 = v533;
                            }

                            *(v220 + 16) = v223 + 1;
                            v224 = (v220 + 32 * v223);
                            v224[2] = vmulq_n_f64(v523, v480);
                            v224[3] = vmulq_n_f64(v512, v480);
                            v221 += 2;
                            --v219;
                          }

                          while (v219);
                          goto LABEL_534;
                        }

                        goto LABEL_550;
                      }

LABEL_533:
                      v220 = sub_18914A4BC(v218);
LABEL_534:

                      v194 = v413;
                      goto LABEL_535;
                    }

LABEL_549:
                    __break(1u);
LABEL_550:
                    __break(1u);
                    goto LABEL_551;
                  }

LABEL_522:
                  v220 = 0;
LABEL_535:
                  sub_188ECCDF0(&v540, v220);

                  goto LABEL_536;
                }

                v205 = v204;
                v531 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v204);
                if ((v205 & 0x8000000000000000) == 0)
                {
                  v203 = v531;
                  v206 = (v198 + 48);
                  do
                  {
                    v490 = *v206;
                    v510 = v206[-1];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_188CCF904(0, *(v203 + 16) + 1, 1);
                      v203 = v531;
                    }

                    v208 = *(v203 + 16);
                    v207 = *(v203 + 24);
                    if (v208 >= v207 >> 1)
                    {
                      sub_188CCF904((v207 > 1), v208 + 1, 1);
                      v203 = v531;
                    }

                    *(v203 + 16) = v208 + 1;
                    v209 = (v203 + 32 * v208);
                    v209[2] = vmulq_n_f64(v510, v417);
                    v209[3] = vmulq_n_f64(v490, v417);
                    v206 += 2;
                    --v205;
                  }

                  while (v205);
                  goto LABEL_228;
                }

LABEL_548:
                __break(1u);
                goto LABEL_549;
              }

              v197 = v196;
              v530 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v196);
              if ((v197 & 0x8000000000000000) == 0)
              {
                v198 = v530;
                v199 = (v195 + 48);
                do
                {
                  v509 = v199[-1];
                  v470 = *v199;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v198 + 16) + 1, 1);
                    v198 = v530;
                  }

                  v201 = *(v198 + 16);
                  v200 = *(v198 + 24);
                  if (v201 >= v200 >> 1)
                  {
                    sub_188CCF904((v200 > 1), v201 + 1, 1);
                    v198 = v530;
                  }

                  *(v198 + 16) = v201 + 1;
                  v202 = (v198 + 32 * v201);
                  v202[2] = vmulq_n_f64(v509, v489);
                  v202[3] = vmulq_n_f64(v470, v489);
                  v199 += 2;
                  --v197;
                }

                while (v197);
                goto LABEL_218;
              }

LABEL_547:
              __break(1u);
              goto LABEL_548;
            }

            v180 = v179;
            v528 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v179);
            if ((v180 & 0x8000000000000000) == 0)
            {
              v181 = v528;
              v182 = (v426 + 48);
              do
              {
                v460 = *v182;
                v468 = v182[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v181 + 16) + 1, 1);
                  v181 = v528;
                }

                v184 = *(v181 + 16);
                v183 = *(v181 + 24);
                if (v184 >= v183 >> 1)
                {
                  sub_188CCF904((v183 > 1), v184 + 1, 1);
                  v181 = v528;
                }

                *(v181 + 16) = v184 + 1;
                v185 = (v181 + 32 * v184);
                v185[2] = vmulq_n_f64(v468, v505);
                v185[3] = vmulq_n_f64(v460, v505);
                v182 += 2;
                --v180;
              }

              while (v180);
              goto LABEL_196;
            }

LABEL_545:
            __break(1u);
            goto LABEL_546;
          }

          v172 = sub_188D7F314(v171);
          if (!v172)
          {
            v174 = sub_18914A4BC(0);
LABEL_183:

            goto LABEL_184;
          }

          v173 = v172;
          v540 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v172);
          if ((v173 & 0x8000000000000000) == 0)
          {
            v174 = v540;
            v175 = (v171 + 48);
            do
            {
              v459 = *v175;
              v467 = v175[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v174 + 16) + 1, 1);
                v174 = v540;
              }

              v177 = *(v174 + 16);
              v176 = *(v174 + 24);
              if (v177 >= v176 >> 1)
              {
                sub_188CCF904((v176 > 1), v177 + 1, 1);
                v174 = v540;
              }

              *(v174 + 16) = v177 + 1;
              v178 = (v174 + 32 * v177);
              v178[2] = vmulq_n_f64(v467, v480);
              v178[3] = vmulq_n_f64(v459, v480);
              v175 += 2;
              --v173;
            }

            while (v173);
            goto LABEL_183;
          }

          goto LABEL_543;
        }

        v150 = sub_188D7F314(v149);
        if (!v150)
        {
          v152 = sub_18914A4BC(0);
LABEL_150:

          v158 = sub_188D7F314(v152);
          if (!v158)
          {
            v160 = sub_18914A4BC(0);
LABEL_160:

            v165 = sub_188D7F314(v160);
            if (v165)
            {
              v166 = v165;
              v540 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v165);
              if (v166 < 0)
              {
LABEL_544:
                __break(1u);
                goto LABEL_545;
              }

              v157 = v540;
              v167 = (v160 + 48);
              do
              {
                v435 = *v167;
                v458 = v167[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v157 + 16) + 1, 1);
                  v157 = v540;
                }

                v169 = *(v157 + 16);
                v168 = *(v157 + 24);
                if (v169 >= v168 >> 1)
                {
                  sub_188CCF904((v168 > 1), v169 + 1, 1);
                  v157 = v540;
                }

                *(v157 + 16) = v169 + 1;
                v170 = (v157 + 32 * v169);
                v170[2] = vmulq_n_f64(v458, v465);
                v170[3] = vmulq_n_f64(v435, v465);
                v167 += 2;
                --v166;
              }

              while (v166);
            }

            else
            {
              v157 = sub_18914A4BC(0);
            }

            goto LABEL_171;
          }

          v159 = v158;
          v540 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v158);
          if ((v159 & 0x8000000000000000) == 0)
          {
            v160 = v540;
            v161 = (v152 + 48);
            do
            {
              v434 = *v161;
              v457 = v161[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v160 + 16) + 1, 1);
                v160 = v540;
              }

              v163 = *(v160 + 16);
              v162 = *(v160 + 24);
              if (v163 >= v162 >> 1)
              {
                sub_188CCF904((v162 > 1), v163 + 1, 1);
                v160 = v540;
              }

              *(v160 + 16) = v163 + 1;
              v164 = (v160 + 32 * v163);
              v164[2] = vmulq_n_f64(v457, v505);
              v164[3] = vmulq_n_f64(v434, v505);
              v161 += 2;
              --v159;
            }

            while (v159);
            goto LABEL_160;
          }

LABEL_542:
          __break(1u);
LABEL_543:
          __break(1u);
          goto LABEL_544;
        }

        v151 = v150;
        v540 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v150);
        if ((v151 & 0x8000000000000000) == 0)
        {
          v152 = v540;
          v153 = (v149 + 48);
          do
          {
            v433 = *v153;
            v456 = v153[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v152 + 16) + 1, 1);
              v152 = v540;
            }

            v155 = *(v152 + 16);
            v154 = *(v152 + 24);
            if (v155 >= v154 >> 1)
            {
              sub_188CCF904((v154 > 1), v155 + 1, 1);
              v152 = v540;
            }

            *(v152 + 16) = v155 + 1;
            v156 = (v152 + 32 * v155);
            v156[2] = vmulq_n_f64(v456, v489);
            v156[3] = vmulq_n_f64(v433, v489);
            v153 += 2;
            --v151;
          }

          while (v151);
          goto LABEL_150;
        }

LABEL_541:
        __break(1u);
        goto LABEL_542;
      }
    }

    v113 = MEMORY[0x1E69E7CC0];
    goto LABEL_96;
  }

  if (v74 >= v75)
  {
    if (v73)
    {
      v90 = *(v73 + 16);
      v91 = MEMORY[0x1E69E7CC0];
      if (v90)
      {
        v92 = v73;
        v540 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v90);
        v91 = v540;
        v93 = (v92 + 48);
        do
        {
          v487 = *v93;
          v507 = v93[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v91 + 16) + 1, 1);
            v91 = v540;
          }

          v94 = v64 * 0.5;
          v96 = *(v91 + 16);
          v95 = *(v91 + 24);
          if (v96 >= v95 >> 1)
          {
            sub_188CCF904((v95 > 1), v96 + 1, 1);
            v94 = v64 * 0.5;
            v91 = v540;
          }

          *(v91 + 16) = v96 + 1;
          v97 = (v91 + 32 * v96);
          v97[2] = vmulq_n_f64(v507, v94);
          v97[3] = vmulq_n_f64(v487, v94);
          v93 += 2;
          --v90;
        }

        while (v90);
      }
    }

    else
    {
      v91 = 0;
    }

    v232 = sub_18914A510(v91, v414);

    if (v232)
    {
      v233 = *(v232 + 16);
      if (v233)
      {
        v540 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v233);
        v234 = v540;
        v235 = (v232 + 48);
        do
        {
          v493 = *v235;
          v513 = v235[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v234 + 16) + 1, 1);
            v234 = v540;
          }

          v237 = *(v234 + 16);
          v236 = *(v234 + 24);
          if (v237 >= v236 >> 1)
          {
            sub_188CCF904((v236 > 1), v237 + 1, 1);
            v234 = v540;
          }

          *(v234 + 16) = v237 + 1;
          v238 = (v234 + 32 * v237);
          v238[2] = vmulq_n_f64(v513, a1);
          v238[3] = vmulq_n_f64(v493, a1);
          v235 += 2;
          --v233;
        }

        while (v233);
      }

      else
      {

        v234 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v234 = 0;
    }

    v247 = sub_18914A510(v426, v234);

    v514 = exp(-(v521 * a1));
    if (v247)
    {
      v248 = *(v247 + 16);
      if (v248)
      {
        v540 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v248);
        v120 = v540;
        v249 = (v247 + 48);
        do
        {
          v495 = v249[-1];
          v474 = *v249;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v120 + 16) + 1, 1);
            v120 = v540;
          }

          v251 = *(v120 + 16);
          v250 = *(v120 + 24);
          if (v251 >= v250 >> 1)
          {
            sub_188CCF904((v250 > 1), v251 + 1, 1);
            v120 = v540;
          }

          *(v120 + 16) = v251 + 1;
          v252 = (v120 + 32 * v251);
          v252[2] = vmulq_n_f64(v495, v514);
          v252[3] = vmulq_n_f64(v474, v514);
          v249 += 2;
          --v248;
        }

        while (v248);

        v253 = v426;
        if (!v426)
        {
          goto LABEL_312;
        }

LABEL_292:
        v254 = sub_188D7F314(v253);
        if (v254)
        {
          v255 = v254;
          v540 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v254);
          if (v255 < 0)
          {
LABEL_551:
            __break(1u);
            goto LABEL_552;
          }

          v256 = v540;
          v257 = (v426 + 48);
          do
          {
            v496 = v257[-1];
            v475 = *v257;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v256 + 16) + 1, 1);
              v256 = v540;
            }

            v258 = v64 * 0.5;
            v260 = *(v256 + 16);
            v259 = *(v256 + 24);
            if (v260 >= v259 >> 1)
            {
              sub_188CCF904((v259 > 1), v260 + 1, 1);
              v258 = v64 * 0.5;
              v256 = v540;
            }

            *(v256 + 16) = v260 + 1;
            v261 = (v256 + 32 * v260);
            v261[2] = vmulq_n_f64(v496, v258);
            v261[3] = vmulq_n_f64(v475, v258);
            v257 += 2;
            --v255;
          }

          while (v255);
        }

        else
        {
          v256 = sub_18914A4BC(0);
        }

LABEL_314:
        v268 = sub_18914A510(v256, v414);

        if (v268)
        {
          v269 = sub_188D7F314(v268);
          if (v269)
          {
            v270 = v269;
            v540 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v269);
            if (v270 < 0)
            {
LABEL_553:
              __break(1u);
              goto LABEL_554;
            }

            v271 = v540;
            v272 = (v268 + 48);
            do
            {
              v497 = v272[-1];
              v476 = *v272;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v271 + 16) + 1, 1);
                v271 = v540;
              }

              v274 = *(v271 + 16);
              v273 = *(v271 + 24);
              if (v274 >= v273 >> 1)
              {
                sub_188CCF904((v273 > 1), v274 + 1, 1);
                v271 = v540;
              }

              *(v271 + 16) = v274 + 1;
              v275 = (v271 + 32 * v274);
              v275[2] = vmulq_n_f64(v497, v514);
              v275[3] = vmulq_n_f64(v476, v514);
              v272 += 2;
              --v270;
            }

            while (v270);
          }

          else
          {
            v271 = sub_18914A4BC(0);
          }

          v276 = v426;
          if (v426)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v271 = 0;
          v276 = v426;
          if (v426)
          {
LABEL_342:
            v288 = sub_188D7F314(v276);
            if (v288)
            {
              v289 = v288;
              v540 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v288);
              if (v289 < 0)
              {
LABEL_555:
                __break(1u);
                goto LABEL_556;
              }

              v277 = v540;
              v290 = (v426 + 48);
              do
              {
                v498 = v290[-1];
                v477 = *v290;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v277 + 16) + 1, 1);
                  v277 = v540;
                }

                v291 = v64 * 0.5;
                v293 = *(v277 + 16);
                v292 = *(v277 + 24);
                if (v293 >= v292 >> 1)
                {
                  sub_188CCF904((v292 > 1), v293 + 1, 1);
                  v291 = v64 * 0.5;
                  v277 = v540;
                }

                *(v277 + 16) = v293 + 1;
                v294 = (v277 + 32 * v293);
                v294[2] = vmulq_n_f64(v498, v291);
                v294[3] = vmulq_n_f64(v477, v291);
                v290 += 2;
                --v289;
              }

              while (v289);
            }

            else
            {
              v277 = sub_18914A4BC(0);
            }

LABEL_363:
            v302 = sub_18914A510(v277, v414);

            if (v302)
            {
              v303 = sub_188D7F314(v302);
              if (v303)
              {
                v304 = v303;
                v540 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v303);
                if (v304 < 0)
                {
LABEL_557:
                  __break(1u);
                  goto LABEL_558;
                }

                v305 = v540;
                v306 = (v302 + 48);
                do
                {
                  v499 = v306[-1];
                  v478 = *v306;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v305 + 16) + 1, 1);
                    v305 = v540;
                  }

                  v308 = *(v305 + 16);
                  v307 = *(v305 + 24);
                  if (v308 >= v307 >> 1)
                  {
                    sub_188CCF904((v307 > 1), v308 + 1, 1);
                    v305 = v540;
                  }

                  *(v305 + 16) = v308 + 1;
                  v309 = (v305 + 32 * v308);
                  v309[2] = vmulq_n_f64(v499, a1);
                  v309[3] = vmulq_n_f64(v478, a1);
                  v306 += 2;
                  --v304;
                }

                while (v304);
              }

              else
              {
                v305 = sub_18914A4BC(0);
              }
            }

            else
            {
              v305 = 0;
            }

            v316 = sub_18914A510(v426, v305);

            if (v316)
            {
              v317 = sub_188D7F314(v316);
              if (v317)
              {
                v318 = v317;
                v540 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v317);
                if (v318 < 0)
                {
LABEL_559:
                  __break(1u);
                  goto LABEL_560;
                }

                v482 = -v521;
                v319 = v540;
                v320 = (v316 + 48);
                do
                {
                  v524 = v320[-1];
                  v500 = *v320;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v319 + 16) + 1, 1);
                    v319 = v540;
                  }

                  v322 = *(v319 + 16);
                  v321 = *(v319 + 24);
                  if (v322 >= v321 >> 1)
                  {
                    sub_188CCF904((v321 > 1), v322 + 1, 1);
                    v319 = v540;
                  }

                  *(v319 + 16) = v322 + 1;
                  v323 = (v319 + 32 * v322);
                  v323[2] = vmulq_n_f64(v524, v482);
                  v323[3] = vmulq_n_f64(v500, v482);
                  v320 += 2;
                  --v318;
                }

                while (v318);
              }

              else
              {
                v319 = sub_18914A4BC(0);
              }

              v332 = sub_188D7F314(v319);
              if (v332)
              {
                v333 = v332;
                v540 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v332);
                if (v333 < 0)
                {
LABEL_562:
                  __break(1u);
                  goto LABEL_563;
                }

                v324 = v540;
                v334 = (v319 + 48);
                do
                {
                  v525 = v334[-1];
                  v501 = *v334;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v324 + 16) + 1, 1);
                    v324 = v540;
                  }

                  v336 = *(v324 + 16);
                  v335 = *(v324 + 24);
                  if (v336 >= v335 >> 1)
                  {
                    sub_188CCF904((v335 > 1), v336 + 1, 1);
                    v324 = v540;
                  }

                  *(v324 + 16) = v336 + 1;
                  v337 = (v324 + 32 * v336);
                  v337[2] = vmulq_n_f64(v525, v514);
                  v337[3] = vmulq_n_f64(v501, v514);
                  v334 += 2;
                  --v333;
                }

                while (v333);
              }

              else
              {
                v324 = sub_18914A4BC(0);
              }
            }

            else
            {
              v324 = 0;
            }

            v354 = sub_18914A510(v271, v324);

            v540 = v354;
            v194 = v413;
LABEL_536:
            v11 = sub_18914A510(v120, v194);

            v71 = v194;
            v72 = v540;
            goto LABEL_537;
          }
        }

        v277 = 0;
        goto LABEL_363;
      }

      v120 = MEMORY[0x1E69E7CC0];
      v253 = v426;
      if (v426)
      {
        goto LABEL_292;
      }
    }

    else
    {
      v120 = 0;
      v253 = v426;
      if (v426)
      {
        goto LABEL_292;
      }
    }

LABEL_312:
    v256 = 0;
    goto LABEL_314;
  }

  v448 = sqrt(v75 * v75 - v74 * v74);
  v83 = v448 * a1;
  v506 = cosh(v448 * a1);
  if (v426)
  {
    v84 = *(v426 + 16);
    v85 = MEMORY[0x1E69E7CC0];
    if (v84)
    {
      v540 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v84);
      v85 = v540;
      v86 = (v426 + 48);
      do
      {
        v486 = v86[-1];
        v466 = *v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v85 + 16) + 1, 1);
          v85 = v540;
        }

        v88 = *(v85 + 16);
        v87 = *(v85 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_188CCF904((v87 > 1), v88 + 1, 1);
          v85 = v540;
        }

        *(v85 + 16) = v88 + 1;
        v89 = (v85 + 32 * v88);
        v89[2] = vmulq_n_f64(v486, v506);
        v89[3] = vmulq_n_f64(v466, v506);
        v86 += 2;
        --v84;
      }

      while (v84);
      v225 = *(v426 + 16);
      v226 = MEMORY[0x1E69E7CC0];
      if (v225)
      {
        v540 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v225);
        v226 = v540;
        v227 = (v426 + 48);
        do
        {
          v492 = v227[-1];
          v471 = *v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v226 + 16) + 1, 1);
            v226 = v540;
          }

          v228 = v64 * 0.5;
          v230 = *(v226 + 16);
          v229 = *(v226 + 24);
          if (v230 >= v229 >> 1)
          {
            sub_188CCF904((v229 > 1), v230 + 1, 1);
            v228 = v64 * 0.5;
            v226 = v540;
          }

          *(v226 + 16) = v230 + 1;
          v231 = (v226 + 32 * v230);
          v231[2] = vmulq_n_f64(v492, v228);
          v231[3] = vmulq_n_f64(v471, v228);
          v227 += 2;
          --v225;
        }

        while (v225);
      }
    }

    else
    {
      v226 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v226 = 0;
    v85 = 0;
  }

  v239 = sub_18914A510(v226, v414);

  v494 = 1.0 / v448;
  if (v239)
  {
    v240 = *(v239 + 16);
    if (v240)
    {
      v540 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v240);
      v241 = v540;
      v242 = (v239 + 48);
      do
      {
        v472 = v242[-1];
        v436 = *v242;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v241 + 16) + 1, 1);
          v241 = v540;
        }

        v244 = *(v241 + 16);
        v243 = *(v241 + 24);
        if (v244 >= v243 >> 1)
        {
          sub_188CCF904((v243 > 1), v244 + 1, 1);
          v241 = v540;
        }

        *(v241 + 16) = v244 + 1;
        v245 = (v241 + 32 * v244);
        v245[2] = vmulq_n_f64(v472, v494);
        v245[3] = vmulq_n_f64(v436, v494);
        v242 += 2;
        --v240;
      }

      while (v240);
    }

    else
    {

      v241 = MEMORY[0x1E69E7CC0];
    }

    v473 = sinh(v83);
    v262 = sub_188D7F314(v241);
    if (v262)
    {
      v263 = v262;
      v540 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v262);
      if (v263 < 0)
      {
LABEL_552:
        __break(1u);
        goto LABEL_553;
      }

      v246 = v540;
      v264 = (v241 + 48);
      do
      {
        v437 = v264[-1];
        v418 = *v264;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v246 + 16) + 1, 1);
          v246 = v540;
        }

        v266 = *(v246 + 16);
        v265 = *(v246 + 24);
        if (v266 >= v265 >> 1)
        {
          sub_188CCF904((v265 > 1), v266 + 1, 1);
          v246 = v540;
        }

        *(v246 + 16) = v266 + 1;
        v267 = (v246 + 32 * v266);
        v267[2] = vmulq_n_f64(v437, v473);
        v267[3] = vmulq_n_f64(v418, v473);
        v264 += 2;
        --v263;
      }

      while (v263);
    }

    else
    {
      v246 = sub_18914A4BC(0);
    }
  }

  else
  {
    v473 = sinh(v83);
    v246 = 0;
  }

  v278 = sub_18914A510(v85, v246);

  v481 = exp(-(v521 * a1));
  if (v278)
  {
    v279 = sub_188D7F314(v278);
    if (v279)
    {
      v280 = v279;
      v540 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v279);
      if (v280 < 0)
      {
LABEL_554:
        __break(1u);
        goto LABEL_555;
      }

      v120 = v540;
      v281 = (v278 + 48);
      do
      {
        v438 = v281[-1];
        v419 = *v281;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v120 + 16) + 1, 1);
          v120 = v540;
        }

        v283 = *(v120 + 16);
        v282 = *(v120 + 24);
        if (v283 >= v282 >> 1)
        {
          sub_188CCF904((v282 > 1), v283 + 1, 1);
          v120 = v540;
        }

        *(v120 + 16) = v283 + 1;
        v284 = (v120 + 32 * v283);
        v284[2] = vmulq_n_f64(v438, v481);
        v284[3] = vmulq_n_f64(v419, v481);
        v281 += 2;
        --v280;
      }

      while (v280);
    }

    else
    {
      v120 = sub_18914A4BC(0);
    }

    v285 = v426;
    if (v426)
    {
      goto LABEL_353;
    }

LABEL_339:
    v286 = 0;
    v287 = 0;
    goto LABEL_418;
  }

  v120 = 0;
  v285 = v426;
  if (!v426)
  {
    goto LABEL_339;
  }

LABEL_353:
  v295 = sub_188D7F314(v285);
  if (v295)
  {
    v296 = v295;
    v540 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v295);
    if (v296 < 0)
    {
LABEL_556:
      __break(1u);
      goto LABEL_557;
    }

    v297 = v540;
    v298 = (v426 + 48);
    do
    {
      v439 = v298[-1];
      v420 = *v298;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v297 + 16) + 1, 1);
        v297 = v540;
      }

      v300 = *(v297 + 16);
      v299 = *(v297 + 24);
      if (v300 >= v299 >> 1)
      {
        sub_188CCF904((v299 > 1), v300 + 1, 1);
        v297 = v540;
      }

      *(v297 + 16) = v300 + 1;
      v301 = (v297 + 32 * v300);
      v301[2] = vmulq_n_f64(v439, v473);
      v301[3] = vmulq_n_f64(v420, v473);
      v298 += 2;
      --v296;
    }

    while (v296);
  }

  else
  {
    v297 = sub_18914A4BC(0);
  }

  v310 = sub_188D7F314(v297);
  if (v310)
  {
    v311 = v310;
    v540 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v310);
    if (v311 < 0)
    {
LABEL_558:
      __break(1u);
      goto LABEL_559;
    }

    v287 = v540;
    v312 = (v297 + 48);
    do
    {
      v440 = v312[-1];
      v421 = *v312;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v287 + 16) + 1, 1);
        v287 = v540;
      }

      v314 = *(v287 + 16);
      v313 = *(v287 + 24);
      if (v314 >= v313 >> 1)
      {
        sub_188CCF904((v313 > 1), v314 + 1, 1);
        v287 = v540;
      }

      *(v287 + 16) = v314 + 1;
      v315 = (v287 + 32 * v314);
      v315[2] = vmulq_n_f64(v440, v448);
      v315[3] = vmulq_n_f64(v421, v448);
      v312 += 2;
      --v311;
    }

    while (v311);
  }

  else
  {
    v287 = sub_18914A4BC(0);
  }

  v325 = sub_188D7F314(v426);
  if (v325)
  {
    v326 = v325;
    v540 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v325);
    if (v326 < 0)
    {
LABEL_561:
      __break(1u);
      goto LABEL_562;
    }

    v286 = v540;
    v327 = (v426 + 48);
    do
    {
      v441 = v327[-1];
      v422 = *v327;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v286 + 16) + 1, 1);
        v286 = v540;
      }

      v328 = v64 * 0.5;
      v330 = *(v286 + 16);
      v329 = *(v286 + 24);
      if (v330 >= v329 >> 1)
      {
        sub_188CCF904((v329 > 1), v330 + 1, 1);
        v328 = v64 * 0.5;
        v286 = v540;
      }

      *(v286 + 16) = v330 + 1;
      v331 = (v286 + 32 * v330);
      v331[2] = vmulq_n_f64(v441, v328);
      v331[3] = vmulq_n_f64(v422, v328);
      v327 += 2;
      --v326;
    }

    while (v326);
  }

  else
  {
    v286 = sub_18914A4BC(0);
  }

LABEL_418:
  v338 = sub_18914A510(v286, v414);

  if (v338)
  {
    v339 = sub_188D7F314(v338);
    if (v339)
    {
      v340 = v339;
      v540 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v339);
      if (v340 < 0)
      {
LABEL_560:
        __break(1u);
        goto LABEL_561;
      }

      v341 = v540;
      v342 = (v338 + 48);
      do
      {
        v442 = v342[-1];
        v423 = *v342;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v341 + 16) + 1, 1);
          v341 = v540;
        }

        v344 = *(v341 + 16);
        v343 = *(v341 + 24);
        if (v344 >= v343 >> 1)
        {
          sub_188CCF904((v343 > 1), v344 + 1, 1);
          v341 = v540;
        }

        *(v341 + 16) = v344 + 1;
        v345 = (v341 + 32 * v344);
        v345[2] = vmulq_n_f64(v442, v494);
        v345[3] = vmulq_n_f64(v423, v494);
        v342 += 2;
        --v340;
      }

      while (v340);
    }

    else
    {
      v341 = sub_18914A4BC(0);
    }

    v347 = sub_188D7F314(v341);
    if (v347)
    {
      v348 = v347;
      v540 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v347);
      if (v348 < 0)
      {
LABEL_563:
        __break(1u);
        goto LABEL_564;
      }

      v349 = v540;
      v350 = (v341 + 48);
      do
      {
        v443 = v350[-1];
        v424 = *v350;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v349 + 16) + 1, 1);
          v349 = v540;
        }

        v352 = *(v349 + 16);
        v351 = *(v349 + 24);
        if (v352 >= v351 >> 1)
        {
          sub_188CCF904((v351 > 1), v352 + 1, 1);
          v349 = v540;
        }

        *(v349 + 16) = v352 + 1;
        v353 = (v349 + 32 * v352);
        v353[2] = vmulq_n_f64(v443, v506);
        v353[3] = vmulq_n_f64(v424, v506);
        v350 += 2;
        --v348;
      }

      while (v348);
    }

    else
    {
      v349 = sub_18914A4BC(0);
    }

    v355 = sub_188D7F314(v349);
    if (v355)
    {
      v356 = v355;
      v540 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v355);
      if (v356 < 0)
      {
LABEL_565:
        __break(1u);
        goto LABEL_566;
      }

      v346 = v540;
      v357 = (v349 + 48);
      do
      {
        v444 = v357[-1];
        v425 = *v357;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v346 + 16) + 1, 1);
          v346 = v540;
        }

        v359 = *(v346 + 16);
        v358 = *(v346 + 24);
        if (v359 >= v358 >> 1)
        {
          sub_188CCF904((v358 > 1), v359 + 1, 1);
          v346 = v540;
        }

        *(v346 + 16) = v359 + 1;
        v360 = (v346 + 32 * v359);
        v360[2] = vmulq_n_f64(v444, v448);
        v360[3] = vmulq_n_f64(v425, v448);
        v357 += 2;
        --v356;
      }

      while (v356);
    }

    else
    {
      v346 = sub_18914A4BC(0);
    }
  }

  else
  {
    v346 = 0;
  }

  v361 = sub_18914A510(v287, v346);

  if (v361)
  {
    v362 = sub_188D7F314(v361);
    if (v362)
    {
      v363 = v362;
      v540 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v362);
      if (v363 < 0)
      {
LABEL_564:
        __break(1u);
        goto LABEL_565;
      }

      v364 = v540;
      v365 = (v361 + 48);
      do
      {
        v445 = *v365;
        v461 = v365[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v364 + 16) + 1, 1);
          v364 = v540;
        }

        v367 = *(v364 + 16);
        v366 = *(v364 + 24);
        if (v367 >= v366 >> 1)
        {
          sub_188CCF904((v366 > 1), v367 + 1, 1);
          v364 = v540;
        }

        *(v364 + 16) = v367 + 1;
        v368 = (v364 + 32 * v367);
        v368[2] = vmulq_n_f64(v461, v481);
        v368[3] = vmulq_n_f64(v445, v481);
        v365 += 2;
        --v363;
      }

      while (v363);
    }

    else
    {
      v364 = sub_18914A4BC(0);
    }
  }

  else
  {
    v364 = 0;
  }

  v540 = v364;
  if (v426)
  {
    v369 = sub_188D7F314(v426);
    if (v369)
    {
      v370 = v369;
      v534 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v369);
      if (v370 < 0)
      {
LABEL_566:
        __break(1u);
        goto LABEL_567;
      }

      v371 = v534;
      v372 = (v426 + 48);
      do
      {
        v446 = *v372;
        v462 = v372[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v371 + 16) + 1, 1);
          v371 = v534;
        }

        v374 = *(v371 + 16);
        v373 = *(v371 + 24);
        if (v374 >= v373 >> 1)
        {
          sub_188CCF904((v373 > 1), v374 + 1, 1);
          v371 = v534;
        }

        *(v371 + 16) = v374 + 1;
        v375 = (v371 + 32 * v374);
        v375[2] = vmulq_n_f64(v462, v506);
        v375[3] = vmulq_n_f64(v446, v506);
        v372 += 2;
        --v370;
      }

      while (v370);
    }

    else
    {
      v371 = sub_18914A4BC(0);
    }

    v377 = sub_188D7F314(v426);
    if (v377)
    {
      v378 = v377;
      v535 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v377);
      if (v378 < 0)
      {
LABEL_567:
        __break(1u);
        goto LABEL_568;
      }

      v376 = v535;
      v379 = (v426 + 48);
      do
      {
        v515 = v379[-1];
        v463 = *v379;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v376 + 16) + 1, 1);
          v376 = v535;
        }

        v380 = v64 * 0.5;
        v382 = *(v376 + 16);
        v381 = *(v376 + 24);
        if (v382 >= v381 >> 1)
        {
          sub_188CCF904((v381 > 1), v382 + 1, 1);
          v380 = v64 * 0.5;
          v376 = v535;
        }

        *(v376 + 16) = v382 + 1;
        v383 = (v376 + 32 * v382);
        v383[2] = vmulq_n_f64(v515, v380);
        v383[3] = vmulq_n_f64(v463, v380);
        v379 += 2;
        --v378;
      }

      while (v378);
    }

    else
    {
      v376 = sub_18914A4BC(0);
    }
  }

  else
  {
    v376 = 0;
    v371 = 0;
  }

  v194 = v413;
  v384 = sub_18914A510(v376, v414);

  if (v384)
  {
    v385 = sub_188D7F314(v384);
    if (v385)
    {
      v386 = v385;
      v536 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v385);
      if (v386 < 0)
      {
LABEL_568:
        __break(1u);
        goto LABEL_569;
      }

      v387 = v536;
      v388 = (v384 + 48);
      do
      {
        v516 = v388[-1];
        v464 = *v388;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v387 + 16) + 1, 1);
          v387 = v536;
        }

        v390 = *(v387 + 16);
        v389 = *(v387 + 24);
        if (v390 >= v389 >> 1)
        {
          sub_188CCF904((v389 > 1), v390 + 1, 1);
          v387 = v536;
        }

        *(v387 + 16) = v390 + 1;
        v391 = (v387 + 32 * v390);
        v391[2] = vmulq_n_f64(v516, v494);
        v391[3] = vmulq_n_f64(v464, v494);
        v388 += 2;
        --v386;
      }

      while (v386);
    }

    else
    {
      v387 = sub_18914A4BC(0);
    }

    v393 = sub_188D7F314(v387);
    if (v393)
    {
      v394 = v393;
      v537 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v393);
      if (v394 < 0)
      {
LABEL_569:
        __break(1u);
        goto LABEL_570;
      }

      v392 = v537;
      v395 = (v387 + 48);
      do
      {
        v502 = *v395;
        v517 = v395[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v392 + 16) + 1, 1);
          v392 = v537;
        }

        v397 = *(v392 + 16);
        v396 = *(v392 + 24);
        if (v397 >= v396 >> 1)
        {
          sub_188CCF904((v396 > 1), v397 + 1, 1);
          v392 = v537;
        }

        *(v392 + 16) = v397 + 1;
        v398 = (v392 + 32 * v397);
        v398[2] = vmulq_n_f64(v517, v473);
        v398[3] = vmulq_n_f64(v502, v473);
        v395 += 2;
        --v394;
      }

      while (v394);
    }

    else
    {
      v392 = sub_18914A4BC(0);
    }

    v194 = v413;
  }

  else
  {
    v392 = 0;
  }

  v399 = sub_18914A510(v371, v392);

  if (!v399)
  {
    goto LABEL_522;
  }

  v400 = sub_188D7F314(v399);
  if (v400)
  {
    v401 = v400;
    v538 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v400);
    if (v401 < 0)
    {
LABEL_570:
      __break(1u);
      goto LABEL_571;
    }

    v503 = -v521;
    v402 = v538;
    v403 = (v399 + 48);
    do
    {
      v518 = *v403;
      v526 = v403[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v402 + 16) + 1, 1);
        v402 = v538;
      }

      v405 = *(v402 + 16);
      v404 = *(v402 + 24);
      if (v405 >= v404 >> 1)
      {
        sub_188CCF904((v404 > 1), v405 + 1, 1);
        v402 = v538;
      }

      *(v402 + 16) = v405 + 1;
      v406 = (v402 + 32 * v405);
      v406[2] = vmulq_n_f64(v526, v503);
      v406[3] = vmulq_n_f64(v518, v503);
      v403 += 2;
      --v401;
    }

    while (v401);
  }

  else
  {
    v402 = sub_18914A4BC(0);
  }

  v218 = sub_188D7F314(v402);
  if (!v218)
  {
    goto LABEL_533;
  }

  v407 = v218;
  v539 = MEMORY[0x1E69E7CC0];
  result = sub_18914A444(v218);
  if ((v407 & 0x8000000000000000) == 0)
  {
    v220 = v539;
    v408 = (v402 + 48);
    do
    {
      v519 = *v408;
      v527 = v408[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v220 + 16) + 1, 1);
        v220 = v539;
      }

      v410 = *(v220 + 16);
      v409 = *(v220 + 24);
      if (v410 >= v409 >> 1)
      {
        sub_188CCF904((v409 > 1), v410 + 1, 1);
        v220 = v539;
      }

      *(v220 + 16) = v410 + 1;
      v411 = (v220 + 32 * v410);
      v411[2] = vmulq_n_f64(v527, v481);
      v411[3] = vmulq_n_f64(v519, v481);
      v408 += 2;
      --v407;
    }

    while (v407);
    goto LABEL_534;
  }

LABEL_571:
  __break(1u);
  return result;
}

__n128 sub_188EE58A4@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    v14 = v2 + 336;
    goto LABEL_74;
  }

  v4 = *(v2 + 195);
  if (v4)
  {
    v5 = *(v2 + 224);
    *(v2 + 400) = *(v2 + 208);
    *(v2 + 416) = v5;
    v6 = *(v2 + 256);
    *(v2 + 432) = *(v2 + 240);
    *(v2 + 448) = v6;
    *(v2 + 464) = 0u;
    *(v2 + 480) = 0u;
    *(v2 + 496) = 0u;
    *(v2 + 512) = 0u;
  }

  v7 = (v2 + 272);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v10 = *(v2 + 96);
  v11 = *(v2 + 104);
  v12 = *(v2 + 193);
  v13 = *(v2 + 194);
  if ((v12 & 1) == 0)
  {
    v16 = *(v2 + 48);
    v15 = *(v2 + 56);
    v17 = *(v2 + 64);
    v18 = *(v2 + 72);
    if (*v2 == v16 && *(v2 + 8) == 0.0)
    {
      if (*(v2 + 194))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v21 = *v2 - v16;
      v249 = *(v2 + 88);
      if ((v18 - 1) <= 2)
      {
        v22 = __sincos_stret(*v2 - v16);
        v23 = atan2(v22.__sinval, v22.__cosval);
        if (v23 > 0.0 && v18 == 2)
        {
          v23 = v23 + -6.28318531;
        }

        if (v23 < 0.0 && v18 == 3)
        {
          v21 = v23 + 6.28318531;
        }

        else
        {
          v21 = v23;
        }
      }

      v26 = *(v2 + 8);
      v27 = sqrt(v15);
      v28 = v17 * 0.5;
      if (v17 * 0.5 >= v27)
      {
        if (v27 >= v28)
        {
          v47 = v28 * v21 + v26;
          v48 = v21 + v47 * a2;
          v33 = exp(-(v28 * a2));
          v34 = v33 * v48;
          v37 = v33 * v47;
          v38 = v48 * v28;
        }

        else
        {
          v243 = v8;
          v39 = sqrt(v28 * v28 - v27 * v27);
          v40 = cosh(v39 * a2);
          v236 = v10;
          v41 = 1.0 / v39 * (v28 * v21 + v26);
          v42 = sinh(v39 * a2);
          v43 = v21 * v40 + v41 * v42;
          v33 = exp(-(v28 * a2));
          v34 = v33 * v43;
          v44 = v39 * (v21 * v42);
          v45 = v39 * (v41 * v40);
          v8 = v243;
          v37 = v33 * (v45 + v44);
          v38 = v43 * v28;
          v10 = v236;
        }
      }

      else
      {
        v235 = v10;
        v29 = sqrt(v27 * v27 - v28 * v28);
        v30 = __sincos_stret(v29 * a2);
        v31 = 1.0 / v29 * (v28 * v21 + v26);
        v242 = v8;
        v32 = v30.__cosval * v21 + v30.__sinval * v31;
        v33 = exp(-(v28 * a2));
        v34 = v33 * v32;
        v35 = v29 * (v21 * v30.__sinval);
        v36 = v29 * (v30.__cosval * v31);
        v10 = v235;
        v37 = v33 * (v36 - v35);
        v38 = v32 * v28;
        v8 = v242;
      }

      *v2 = v16 + v34;
      *(v2 + 8) = v37 - v33 * v38;
      v9 = v249;
      if (v13)
      {
LABEL_11:
        if (!v12)
        {
          v46 = *(v2 + 16);
LABEL_53:
          v19 = 6.28318531 / v46 * (6.28318531 / v46);
          v73 = sqrt(v19);
          v20 = *v2 * (v73 + v73);
          *(v2 + 32) = v19;
          *(v2 + 40) = v20;
          goto LABEL_54;
        }

        goto LABEL_12;
      }
    }

LABEL_32:
    v46 = *(v2 + 16);
    if (v46 == v8 && *(v2 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v49 = v46 - v8;
    if ((v11 - 1) <= 2)
    {
      v50 = __sincos_stret(v46 - v8);
      v51 = atan2(v50.__sinval, v50.__cosval);
      if (v51 > 0.0 && v11 == 2)
      {
        v51 = v51 + -6.28318531;
      }

      if (v51 < 0.0 && v11 == 3)
      {
        v49 = v51 + 6.28318531;
      }

      else
      {
        v49 = v51;
      }
    }

    v54 = *(v2 + 24);
    v55 = sqrt(v9);
    v56 = v10 * 0.5;
    if (v10 * 0.5 >= v55)
    {
      if (v55 >= v56)
      {
        v70 = v56 * v49 + v54;
        v71 = v49 + v70 * a2;
        v61 = exp(-(v56 * a2));
        v62 = v61 * v71;
        v68 = v61 * v70;
        v69 = v71 * v56;
        goto LABEL_52;
      }

      v64 = sqrt(v56 * v56 - v55 * v55);
      v65 = cosh(v64 * a2);
      v66 = 1.0 / v64 * (v56 * v49 + v54);
      v67 = sinh(v64 * a2);
      v60 = v49 * v65 + v66 * v67;
      v61 = exp(-(v56 * a2));
      v62 = v61 * v60;
      v63 = v64 * (v66 * v65) + v64 * (v49 * v67);
    }

    else
    {
      v57 = sqrt(v55 * v55 - v56 * v56);
      v58 = __sincos_stret(v57 * a2);
      v59 = 1.0 / v57 * (v56 * v49 + v54);
      v60 = v58.__cosval * v49 + v58.__sinval * v59;
      v61 = exp(-(v56 * a2));
      v62 = v61 * v60;
      v63 = v57 * (v58.__cosval * v59) - v57 * (v49 * v58.__sinval);
    }

    v68 = v61 * v63;
    v69 = v60 * v56;
LABEL_52:
    v72 = v68 - v61 * v69;
    v46 = v8 + v62;
    *(v2 + 16) = v8 + v62;
    *(v2 + 24) = v72;
    goto LABEL_53;
  }

  if ((*(v2 + 194) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
LABEL_54:
  v74 = *(v2 + 224);
  *(v2 + 112) = *(v2 + 208);
  *(v2 + 128) = v74;
  v75 = *(v2 + 256);
  *(v2 + 144) = *(v2 + 240);
  *(v2 + 160) = v75;
  v14 = v2 + 336;
  v213 = *v7;
  v214 = *(v2 + 288);
  v215 = *(v2 + 304);
  v216 = *(v2 + 320);
  v76 = *(v2 + 400);
  v77 = *(v2 + 448);
  v221 = *(v2 + 464);
  v78 = *(v2 + 416);
  v79 = *(v2 + 432);
  v229 = *(v2 + 512);
  v217 = *(v2 + 480);
  v225 = *(v2 + 496);
  v209 = *(v2 + 352);
  v211 = *(v2 + 336);
  v204 = *(v2 + 384);
  v208 = *(v2 + 368);
  if ((v4 & 1) == 0)
  {
    v81 = *(v2 + 176);
    v80 = *(v2 + 184);
    v244 = *(v2 + 448);
    v250 = *(v2 + 400);
    v233 = *(v2 + 432);
    v237 = *(v2 + 416);
    v196 = *(v2 + 144);
    v198 = *(v2 + 112);
    v200 = *(v2 + 160);
    v202 = *(v2 + 128);
    if (CACornerRadiiEqualToRadii() & 1) != 0 && (CACornerRadiiEqualToRadii())
    {
      v77 = v244;
      v76 = v250;
      v79 = v233;
      v78 = v237;
    }

    else
    {
      v82 = vsubq_f64(v250, v198);
      v83 = vsubq_f64(v237, v202);
      v84 = vsubq_f64(v233, v196);
      v85 = vsubq_f64(v244, v200);
      v86 = sqrt(v81);
      v87 = v80 * 0.5;
      if (v80 * 0.5 >= v86)
      {
        if (v86 >= v87)
        {
          v100 = vaddq_f64(v221, vmulq_n_f64(v82, v87));
          v224 = vaddq_f64(v217, vmulq_n_f64(v83, v87));
          v220 = vaddq_f64(v82, vmulq_n_f64(v100, a2));
          v190 = v100;
          v194 = vaddq_f64(v83, vmulq_n_f64(v224, a2));
          v228 = vaddq_f64(v225, vmulq_n_f64(v84, v87));
          v240 = vaddq_f64(v229, vmulq_n_f64(v85, v87));
          v232 = vaddq_f64(v84, vmulq_n_f64(v228, a2));
          v247 = vaddq_f64(v85, vmulq_n_f64(v240, a2));
          v253 = -v87;
          v101 = exp(-(v87 * a2));
          v91 = vmulq_n_f64(v194, v101);
          v92 = vmulq_n_f64(v220, v101);
          v93 = vmulq_n_f64(v247, v101);
          v94 = vmulq_n_f64(v232, v101);
          v102 = vmulq_n_f64(vmulq_n_f64(v220, v253), v101);
          v103 = vmulq_n_f64(vmulq_n_f64(v232, v253), v101);
          v217 = vaddq_f64(vmulq_n_f64(v224, v101), vmulq_n_f64(vmulq_n_f64(v194, v253), v101));
          v221 = vaddq_f64(vmulq_n_f64(v190, v101), v102);
          v229 = vaddq_f64(vmulq_n_f64(v240, v101), vmulq_n_f64(vmulq_n_f64(v247, v253), v101));
          v96 = vaddq_f64(vmulq_n_f64(v228, v101), v103);
        }

        else
        {
          v189 = sqrt(v87 * v87 - v86 * v86);
          v193 = v82;
          v246 = v85;
          v252 = v84;
          v239 = v83;
          v186 = cosh(v189 * a2);
          v179 = sinh(v189 * a2);
          v219 = vmulq_n_f64(vaddq_f64(v217, vmulq_n_f64(v239, v80 * 0.5)), 1.0 / v189);
          v223 = vmulq_n_f64(vaddq_f64(v221, vmulq_n_f64(v193, v80 * 0.5)), 1.0 / v189);
          v180 = vaddq_f64(vmulq_n_f64(v239, v186), vmulq_n_f64(v219, v179));
          v182 = vaddq_f64(vmulq_n_f64(v193, v186), vmulq_n_f64(v223, v179));
          v97 = vmulq_n_f64(vaddq_f64(v225, vmulq_n_f64(v252, v80 * 0.5)), 1.0 / v189);
          v227 = vmulq_n_f64(vaddq_f64(v229, vmulq_n_f64(v246, v80 * 0.5)), 1.0 / v189);
          v231 = v97;
          v177 = vaddq_f64(vmulq_n_f64(v246, v186), vmulq_n_f64(v227, v179));
          v185 = vaddq_f64(vmulq_n_f64(v252, v186), vmulq_n_f64(v97, v179));
          v98 = exp(-(v80 * 0.5 * a2));
          v91 = vmulq_n_f64(v180, v98);
          v92 = vmulq_n_f64(v182, v98);
          v93 = vmulq_n_f64(v177, v98);
          v94 = vmulq_n_f64(v185, v98);
          v99 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v231, v186), v189), vmulq_n_f64(vmulq_n_f64(v252, v179), v189)), v98);
          v217 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v219, v186), v189), vmulq_n_f64(vmulq_n_f64(v239, v179), v189)), v98), vmulq_n_f64(vmulq_n_f64(v180, -(v80 * 0.5)), v98));
          v221 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v223, v186), v189), vmulq_n_f64(vmulq_n_f64(v193, v179), v189)), v98), vmulq_n_f64(vmulq_n_f64(v182, -(v80 * 0.5)), v98));
          v229 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v227, v186), v189), vmulq_n_f64(vmulq_n_f64(v246, v179), v189)), v98), vmulq_n_f64(vmulq_n_f64(v177, -(v80 * 0.5)), v98));
          v96 = vaddq_f64(v99, vmulq_n_f64(vmulq_n_f64(v185, -(v80 * 0.5)), v98));
        }
      }

      else
      {
        v188 = sqrt(v86 * v86 - v87 * v87);
        v192 = v82;
        v245 = v85;
        v251 = v84;
        v238 = v83;
        v88 = __sincos_stret(v188 * a2);
        v218 = vmulq_n_f64(vaddq_f64(v217, vmulq_n_f64(v238, v80 * 0.5)), 1.0 / v188);
        v222 = vmulq_n_f64(vaddq_f64(v221, vmulq_n_f64(v192, v80 * 0.5)), 1.0 / v188);
        v181 = vaddq_f64(vmulq_n_f64(v238, v88.__cosval), vmulq_n_f64(v218, v88.__sinval));
        v184 = vaddq_f64(vmulq_n_f64(v192, v88.__cosval), vmulq_n_f64(v222, v88.__sinval));
        v89 = vmulq_n_f64(vaddq_f64(v225, vmulq_n_f64(v251, v80 * 0.5)), 1.0 / v188);
        v226 = vmulq_n_f64(vaddq_f64(v229, vmulq_n_f64(v245, v80 * 0.5)), 1.0 / v188);
        v230 = v89;
        v176 = vaddq_f64(vmulq_n_f64(v245, v88.__cosval), vmulq_n_f64(v226, v88.__sinval));
        v178 = vaddq_f64(vmulq_n_f64(v251, v88.__cosval), vmulq_n_f64(v89, v88.__sinval));
        v90 = exp(-(v80 * 0.5 * a2));
        v91 = vmulq_n_f64(v181, v90);
        v92 = vmulq_n_f64(v184, v90);
        v93 = vmulq_n_f64(v176, v90);
        v94 = vmulq_n_f64(v178, v90);
        v95 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v251, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v230, v88.__cosval), v188)), v90);
        v217 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v238, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v218, v88.__cosval), v188)), v90), vmulq_n_f64(vmulq_n_f64(v181, -(v80 * 0.5)), v90));
        v221 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v192, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v222, v88.__cosval), v188)), v90), vmulq_n_f64(vmulq_n_f64(v184, -(v80 * 0.5)), v90));
        v229 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v245, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v226, v88.__cosval), v188)), v90), vmulq_n_f64(vmulq_n_f64(v176, -(v80 * 0.5)), v90));
        v96 = vaddq_f64(v95, vmulq_n_f64(vmulq_n_f64(v178, -(v80 * 0.5)), v90));
      }

      v225 = v96;
      v76 = vaddq_f64(v198, v92);
      v78 = vaddq_f64(v202, v91);
      v79 = vaddq_f64(v196, v94);
      v77 = vaddq_f64(v200, v93);
    }
  }

  v248 = v77;
  v254 = v76;
  v234 = v79;
  v241 = v78;
  if (CACornerRadiiEqualToRadii() && CACornerRadiiEqualToRadii())
  {
    v105 = v215;
    v104 = v216;
    v106 = v213;
    v107 = v214;
    v109 = v209;
    v108 = v211;
    v110 = v248;
    v111 = v254;
    v112 = v204;
    v113 = v208;
    v115 = v234;
    v114 = v241;
  }

  else
  {
    v116 = vsubq_f64(v211, v254);
    v117 = vsubq_f64(v209, v241);
    v118 = vsubq_f64(v208, v234);
    v119 = vsubq_f64(v204, v248);
    v120 = sqrt(v19);
    v121 = v20 * 0.5;
    v210 = v119;
    v212 = v118;
    v201 = v117;
    v203 = v116;
    if (v20 * 0.5 >= v120)
    {
      if (v120 >= v121)
      {
        v191 = vmulq_n_f64(v116, v121);
        v195 = vmulq_n_f64(v117, v121);
        v207 = vmulq_n_f64(v119, v121);
        v197 = -v121;
        v199 = vmulq_n_f64(v118, v121);
        v160 = exp(-(v121 * a2));
        v161 = vaddq_f64(v213, v191);
        v162 = vaddq_f64(v214, v195);
        v163 = vaddq_f64(v203, vmulq_n_f64(v161, a2));
        v164 = vaddq_f64(v201, vmulq_n_f64(v162, a2));
        v128 = vmulq_n_f64(v164, v160);
        v129 = vmulq_n_f64(v163, v160);
        v165 = vmulq_n_f64(v161, v160);
        v166 = vmulq_n_f64(v162, v160);
        v167 = vaddq_f64(v215, v199);
        v168 = vaddq_f64(v216, v207);
        v169 = vaddq_f64(v212, vmulq_n_f64(v167, a2));
        v170 = vaddq_f64(v210, vmulq_n_f64(v168, a2));
        v139 = vmulq_n_f64(v170, v160);
        v140 = vmulq_n_f64(v169, v160);
        v171 = vmulq_n_f64(v167, v160);
        v172 = vmulq_n_f64(vmulq_n_f64(v169, v197), v160);
        v107 = vaddq_f64(v166, vmulq_n_f64(vmulq_n_f64(v164, v197), v160));
        v106 = vaddq_f64(v165, vmulq_n_f64(vmulq_n_f64(v163, v197), v160));
        v104 = vaddq_f64(vmulq_n_f64(v168, v160), vmulq_n_f64(vmulq_n_f64(v170, v197), v160));
        v105 = vaddq_f64(v171, v172);
      }

      else
      {
        v206 = sqrt(v121 * v121 - v120 * v120);
        v187 = cosh(v206 * a2);
        v183 = sinh(v206 * a2);
        v144 = exp(-(v20 * 0.5 * a2));
        v145 = vmulq_n_f64(vaddq_f64(v213, vmulq_n_f64(v203, v20 * 0.5)), 1.0 / v206);
        v146 = vmulq_n_f64(vaddq_f64(v214, vmulq_n_f64(v201, v20 * 0.5)), 1.0 / v206);
        v147 = vaddq_f64(vmulq_n_f64(v203, v187), vmulq_n_f64(v145, v183));
        v148 = vaddq_f64(vmulq_n_f64(v201, v187), vmulq_n_f64(v146, v183));
        v128 = vmulq_n_f64(v148, v144);
        v129 = vmulq_n_f64(v147, v144);
        v149 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v145, v187), v206), vmulq_n_f64(vmulq_n_f64(v203, v183), v206)), v144);
        v150 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v146, v187), v206), vmulq_n_f64(vmulq_n_f64(v201, v183), v206)), v144);
        v151 = vmulq_n_f64(v148, -(v20 * 0.5));
        v152 = vmulq_n_f64(vmulq_n_f64(v147, -(v20 * 0.5)), v144);
        v153 = vmulq_n_f64(v151, v144);
        v154 = vmulq_n_f64(vaddq_f64(v215, vmulq_n_f64(v212, v20 * 0.5)), 1.0 / v206);
        v155 = vmulq_n_f64(vaddq_f64(v216, vmulq_n_f64(v210, v20 * 0.5)), 1.0 / v206);
        v156 = vaddq_f64(vmulq_n_f64(v212, v187), vmulq_n_f64(v154, v183));
        v157 = vaddq_f64(vmulq_n_f64(v210, v187), vmulq_n_f64(v155, v183));
        v139 = vmulq_n_f64(v157, v144);
        v140 = vmulq_n_f64(v156, v144);
        v158 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v154, v187), v206), vmulq_n_f64(vmulq_n_f64(v212, v183), v206)), v144);
        v159 = vmulq_n_f64(vmulq_n_f64(v156, -(v20 * 0.5)), v144);
        v107 = vaddq_f64(v150, v153);
        v106 = vaddq_f64(v149, v152);
        v104 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v155, v187), v206), vmulq_n_f64(vmulq_n_f64(v210, v183), v206)), v144), vmulq_n_f64(vmulq_n_f64(v157, -(v20 * 0.5)), v144));
        v105 = vaddq_f64(v158, v159);
      }
    }

    else
    {
      v205 = sqrt(v120 * v120 - v121 * v121);
      v122 = __sincos_stret(v205 * a2);
      v123 = exp(-(v20 * 0.5 * a2));
      v124 = vmulq_n_f64(vaddq_f64(v213, vmulq_n_f64(v203, v20 * 0.5)), 1.0 / v205);
      v125 = vmulq_n_f64(vaddq_f64(v214, vmulq_n_f64(v201, v20 * 0.5)), 1.0 / v205);
      v126 = vaddq_f64(vmulq_n_f64(v203, v122.__cosval), vmulq_n_f64(v124, v122.__sinval));
      v127 = vaddq_f64(vmulq_n_f64(v201, v122.__cosval), vmulq_n_f64(v125, v122.__sinval));
      v128 = vmulq_n_f64(v127, v123);
      v129 = vmulq_n_f64(v126, v123);
      v130 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v203, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v124, v122.__cosval), v205)), v123);
      v131 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v201, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v125, v122.__cosval), v205)), v123);
      v132 = vmulq_n_f64(v127, -(v20 * 0.5));
      v133 = vmulq_n_f64(vmulq_n_f64(v126, -(v20 * 0.5)), v123);
      v134 = vmulq_n_f64(v132, v123);
      v135 = vmulq_n_f64(vaddq_f64(v215, vmulq_n_f64(v212, v20 * 0.5)), 1.0 / v205);
      v136 = vmulq_n_f64(vaddq_f64(v216, vmulq_n_f64(v210, v20 * 0.5)), 1.0 / v205);
      v137 = vaddq_f64(vmulq_n_f64(v212, v122.__cosval), vmulq_n_f64(v135, v122.__sinval));
      v138 = vaddq_f64(vmulq_n_f64(v210, v122.__cosval), vmulq_n_f64(v136, v122.__sinval));
      v139 = vmulq_n_f64(v138, v123);
      v140 = vmulq_n_f64(v137, v123);
      v141 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v212, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v135, v122.__cosval), v205)), v123);
      v142 = vmulq_n_f64(v138, -(v20 * 0.5));
      v143 = vmulq_n_f64(vmulq_n_f64(v137, -(v20 * 0.5)), v123);
      v107 = vaddq_f64(v131, v134);
      v106 = vaddq_f64(v130, v133);
      v104 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v210, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v136, v122.__cosval), v205)), v123), vmulq_n_f64(v142, v123));
      v105 = vaddq_f64(v141, v143);
    }

    v111 = v254;
    v108 = vaddq_f64(v254, v129);
    v115 = v234;
    v114 = v241;
    v109 = vaddq_f64(v241, v128);
    v113 = vaddq_f64(v234, v140);
    v110 = v248;
    v112 = vaddq_f64(v248, v139);
  }

  *(v2 + 336) = v108;
  *(v2 + 352) = v109;
  *(v2 + 368) = v113;
  *(v2 + 384) = v112;
  *v7 = v106;
  *(v2 + 288) = v107;
  *(v2 + 304) = v105;
  *(v2 + 320) = v104;
  *(v2 + 400) = v111;
  *(v2 + 416) = v114;
  *(v2 + 432) = v115;
  *(v2 + 448) = v110;
  *(v2 + 464) = v221;
  *(v2 + 480) = v217;
  *(v2 + 496) = v225;
  *(v2 + 512) = v229;
LABEL_74:
  v173 = *(v14 + 16);
  *a1 = *v14;
  *(a1 + 16) = v173;
  result = *(v14 + 32);
  v175 = *(v14 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v175;
  return result;
}

uint64_t sub_188EE6890@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = a1;
  if (a2 > 0.0)
  {
    v4 = a2;
    v364 = (v2 + 16);
    v385 = *(v2 + 24);
    v387 = *(v2 + 23);
    v381 = *(v2 + 26);
    v383 = *(v2 + 25);
    v379 = *(v2 + 54) | (*(v2 + 220) << 32);
    v389 = v2;
    v362 = *(v2 + 171);
    if (v362)
    {
      v5 = *(v2 + 38);
      sub_188F0B550(v387);
      v6 = v5;
      v2 = v389;
      sub_188F0B59C(v6);
      *(v389 + 38) = v387;
      *(v389 + 39) = v385;
      *(v389 + 40) = v383;
      *(v389 + 41) = v381;
      *(v364 + 84) = BYTE4(v379);
      v364[20] = v379;
      sub_188F0B59C(*(v389 + 43));
      *(v389 + 373) = 0;
      *(v389 + 344) = 0u;
      *(v389 + 360) = 0u;
    }

    v8 = *(v2 + 10);
    v7 = *(v2 + 11);
    v9 = *(v2 + 12);
    v10 = *(v2 + 104);
    v11 = *(v2 + 169);
    v12 = *(v2 + 170);
    if (v11)
    {
      if (*(v2 + 170))
      {
LABEL_53:
        v80 = *(v2 + 14);
        sub_188F0B550(v387);
        sub_188F0B59C(v80);
        *(v389 + 14) = v387;
        *(v389 + 15) = v385;
        v81 = v389;
        *(v389 + 16) = v383;
        *(v389 + 17) = v381;
        *(v2 + 148) = BYTE4(v379);
        *(v2 + 36) = v379;
        v82 = *(v389 + 39);
        v83 = *(v389 + 40);
        v84 = *(v389 + 41);
        v85 = *(v364 + 84);
        v86 = v364[20];
        v87 = *(v389 + 43);
        v88 = *(v389 + 44);
        v90 = *(v389 + 45);
        v89 = *(v389 + 46);
        v91 = *(v364 + 124);
        v92 = v364[30];
        v388 = *(v389 + 33);
        v384 = *(v389 + 34);
        v365 = *(v389 + 36);
        v366 = *(v389 + 35);
        v93 = *(v364 + 44);
        v94 = v364[10];
        v369 = v94 | (v93 << 32);
        v372 = *(v389 + 29);
        v95 = *(v389 + 31);
        v353 = *(v389 + 30);
        v96 = *(v364 + 4);
        v97 = *v364;
        v374 = *(v389 + 28);
        v377 = v97 | (v96 << 32);
        v99 = *(v389 + 4);
        v98 = *(v389 + 5);
        *&v398 = *(v389 + 38);
        *(&v398 + 1) = v82;
        v355 = v82;
        v356 = v398;
        *v399 = v83;
        *&v399[8] = v84;
        v399[20] = v85;
        *&v399[16] = v86;
        *&v400 = v87;
        *(&v400 + 1) = v88;
        *&v401 = v90;
        *(&v401 + 1) = v89;
        v403 = v91;
        v402 = v92;
        v404 = v388;
        v405 = v384;
        v406 = v366;
        v407 = v365;
        v409 = v93;
        v408 = v94;
        v410 = v374;
        v411 = v372;
        v412 = v353;
        v413 = v95;
        v415 = v96;
        v414 = v97;
        v100 = v389[1];
        v416 = *v389;
        v417 = v100;
        v418 = v99;
        v419 = v98;
        v101 = v389[8];
        v517[0] = v389[7];
        v517[1] = v101;
        v102 = v95;
        *v518 = v2[9];
        *&v518[9] = *(v389 + 153);
        v103 = v83;
        v104 = v84;
        v105 = v86 | (v85 << 32);
        sub_188F0B550(v398);
        v347 = v87;
        sub_188F0B550(v87);
        sub_188F0B550(v388);
        sub_188F0B550(v374);
        v106 = v105;
        v107 = v104;
        v108 = v103;
        v110 = v355;
        v109 = v398;
        if ((v362 & 1) == 0)
        {
          sub_188EEE874(v517, v4);
          v110 = *(&v398 + 1);
          v109 = v398;
          v107 = *&v399[8];
          v108 = *v399;
          v106 = *&v399[16] | (v399[20] << 32);
        }

        v450 = v398;
        *v451 = *v399;
        v452[0] = v374;
        v452[1] = v372;
        v452[2] = v353;
        v354 = v102;
        v452[3] = v102;
        v453 = v377;
        v454 = BYTE4(v377);
        *&v451[13] = *&v399[13];
        v346 = v518[24];
        v111 = v398;
        v112 = *v451;
        v113 = (*&v399[13] >> 24) | (v399[20] << 32);
        v396 = v398;
        *v397 = *v399;
        *&v397[13] = *&v399[13];
        if (v388)
        {
          if (!v398)
          {
            v114 = v388;

            v115 = v384;

            v106 = v369 & 0x1FFFFFFFFLL;
            v108 = v366;
            v107 = v116;
            goto LABEL_68;
          }

          if (sub_189090578(v388, v398))
          {
            sub_188F0D2E8(&v450, &v390);
            if (!v374)
            {
              v357 = 0;
              v350 = v353;
              v351 = v372;
              v349 = v354;
              v340 = v388;
              v343 = v377;
              v338 = v384;
              v16 = v366;
LABEL_138:
              v15 = v365;
              v17 = v369;
LABEL_240:
              v390 = v396;
              v391 = *v397;
              v392 = *&v397[16];
              v393 = v99;
              v394 = v98;
              v395 = v346;
              sub_188A3F5FC(&v390, &qword_1EA936630);
              v14 = v338;
              v13 = v340;
              sub_188F0B550(v340);
              sub_188F0B59C(v388);
              sub_188F0B59C(v374);
              sub_188F0B59C(v356);
              result = sub_188F0B59C(v347);
              v81[33] = v340;
              v81[34] = v338;
              v81[35] = v16;
              v81[36] = v15;
              *(v364 + 44) = BYTE4(v17);
              v364[10] = v17;
              v81[28] = v357;
              v81[29] = v351;
              v81[30] = v350;
              v81[31] = v349;
              *(v364 + 4) = BYTE4(v343);
              *v364 = v343;
              v330 = *v451;
              v389[19] = v450;
              v389[20] = v330;
              *(v389 + 333) = *&v451[13];
              v331 = v402;
              v332 = v403;
              *(v364 + 22) = v400;
              *(v364 + 26) = v401;
              *(v364 + 124) = v332;
              v364[30] = v331;
              v3 = a1;
              goto LABEL_241;
            }
          }

          else
          {
            sub_188F0D2E8(&v450, &v390);
          }

          v514[0] = v111;
          v514[1] = v112;
          v515 = v113;
          v516 = BYTE4(v113) & 1;
          *&v390 = v388;
          *(&v390 + 1) = v384;
          *&v391 = v366;
          *(&v391 + 1) = v365;
          LODWORD(v392) = v369;
          BYTE4(v392) = BYTE4(v369) & 1;

          sub_18908FE70(v514);
        }

        else
        {
          if (!v398)
          {
            v114 = v109;
            v115 = v110;
            if (!v374)
            {
              v357 = 0;
              v350 = v353;
              v351 = v372;
              v349 = v354;
              v340 = 0;
              v343 = v377;
              v338 = v384;
              v16 = v366;
              goto LABEL_138;
            }

LABEL_68:
            v481[0] = v114;
            v481[1] = v115;
            v481[2] = v108;
            v481[3] = v107;
            v482 = v106;
            v483 = BYTE4(v106);
            v118 = sqrt(v99);
            v119 = v98 * 0.5;
            v386 = v114;
            v363 = v115;
            v378 = v107;
            v380 = v108;
            v382 = v106;
            if (v98 * 0.5 < v118)
            {
              v120 = sqrt(v118 * v118 - v119 * v119);
              v121 = cos(v120 * v4);
              if (v114)
              {
                *&v390 = v114;
                *(&v390 + 1) = v115;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = BYTE4(v382) & 1;

                sub_18908FB80(v121);
                v122 = *(&v390 + 1);
                v358 = v390;
                v124 = *(&v391 + 1);
                v123 = v391;
                if (BYTE4(v392))
                {
                  v125 = 0x100000000;
                }

                else
                {
                  v125 = 0;
                }

                v126 = v125 | v392;
                *&v390 = v114;
                *(&v390 + 1) = v115;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = BYTE4(v382) & 1;

                sub_18908FB80(v98 * 0.5);
                v127 = v358;
                v129 = *(&v390 + 1);
                v128 = v390;
                v130 = *(&v391 + 1);
                v131 = v391;
                if (BYTE4(v392))
                {
                  v132 = 0x100000000;
                }

                else
                {
                  v132 = 0;
                }

                v133 = v132 | v392;
              }

              else
              {
                v128 = 0;
                v127 = 0;
                v129 = v115;
                v124 = v378;
                v123 = v380;
                v131 = v380;
                v130 = v378;
                v122 = v115;
                v126 = v382;
                v133 = v382;
              }

              v359 = v127;
              v496 = v127;
              v497 = v122;
              v498 = v123;
              v499 = v124;
              v500 = v126;
              v501 = BYTE4(v126);
              v508 = v128;
              v509 = v129;
              v510 = v131;
              v511 = v130;
              v512 = v133;
              v513 = BYTE4(v133);
              sub_189090750(&v508, v452, &v423);
              sub_188F0B59C(v128);
              v159 = *(&v423 + 1);
              v161 = *(&v424 + 1);
              v160 = v424;
              v162 = v425 | (v426 << 32);
              if (v423)
              {
                v390 = v423;
                v391 = v424;
                LODWORD(v392) = v425;
                BYTE4(v392) = BYTE4(v162) & 1;
                sub_18908FB80(1.0 / v120);
                v164 = *(&v391 + 1);
                v163 = v391;
                v165 = v392;
                v166 = BYTE4(v392);
                v167 = sin(v120 * v4);
                v391 = __PAIR128__(v164, v163);
                v114 = v386;
                LODWORD(v392) = v165;
                BYTE4(v392) = v166;
                sub_18908FB80(v167);
                v159 = *(&v390 + 1);
                v168 = v390;
                v161 = *(&v391 + 1);
                v160 = v391;
                v169 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v169 = 0;
                }

                v162 = v169 | v392;
              }

              else
              {
                v168 = 0;
              }

              v502 = v168;
              v503 = v159;
              v504 = v160;
              v505 = v161;
              v506 = v162;
              v507 = BYTE4(v162);
              sub_189090750(&v496, &v502, &v427);
              sub_188F0B59C(v168);
              sub_188F0B59C(v359);
              v170 = exp(-(v119 * v4));
              v171 = *(&v427 + 1);
              v173 = *(&v428 + 1);
              v172 = v428;
              v174 = v429 | (v430 << 32);
              v344 = v170;
              if (v427)
              {
                v390 = v427;
                v391 = v428;
                LODWORD(v392) = v429;
                BYTE4(v392) = BYTE4(v174) & 1;
                sub_18908FB80(v170);
                v171 = *(&v390 + 1);
                v333 = v390;
                v173 = *(&v391 + 1);
                v172 = v391;
                v175 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v175 = 0;
                }

                v174 = v175 | v392;
              }

              else
              {
                v333 = 0;
              }

              v334 = v174;
              v335 = v173;
              v336 = v172;
              v337 = v171;
              v176 = sin(v120 * v4);
              if (v114)
              {
                *&v390 = v114;
                *(&v390 + 1) = v363;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = BYTE4(v382) & 1;

                sub_18908FB80(-v176);
                sub_18908FB80(v120);
                v177 = v114;
                v178 = *(&v390 + 1);
                v352 = v390;
                v179 = *(&v391 + 1);
                v180 = v391;
                v181 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v181 = 0;
                }

                v182 = v181 | v392;
                *&v390 = v177;
                *(&v390 + 1) = v363;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = BYTE4(v382) & 1;

                sub_18908FB80(v98 * 0.5);
                v184 = *(&v390 + 1);
                v183 = v390;
                v185 = *(&v391 + 1);
                v186 = v391;
                v187 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v187 = 0;
                }

                v188 = v187 | v392;
              }

              else
              {
                v183 = 0;
                v352 = 0;
                v184 = v363;
                v179 = v378;
                v180 = v380;
                v186 = v380;
                v185 = v378;
                v178 = v363;
                v182 = v382;
                v188 = v382;
              }

              v475 = v352;
              v476 = v178;
              v477 = v180;
              v478 = v179;
              v479 = v182;
              v480 = BYTE4(v182);
              v490 = v183;
              v491 = v184;
              v492 = v186;
              v493 = v185;
              v494 = v188;
              v495 = BYTE4(v188);
              sub_189090750(&v490, v452, &v431);
              sub_188F0B59C(v183);
              v189 = *(&v431 + 1);
              v191 = *(&v432 + 1);
              v190 = v432;
              v192 = v433 | (v434 << 32);
              if (v431)
              {
                v390 = v431;
                v391 = v432;
                LODWORD(v392) = v433;
                BYTE4(v392) = BYTE4(v192) & 1;
                sub_18908FB80(1.0 / v120);
                sub_18908FB80(v121);
                sub_18908FB80(v120);
                v189 = *(&v390 + 1);
                v193 = v390;
                v191 = *(&v391 + 1);
                v190 = v391;
                v194 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v194 = 0;
                }

                v192 = v194 | v392;
              }

              else
              {
                v193 = 0;
              }

              v484 = v193;
              v485 = v189;
              v486 = v190;
              v487 = v191;
              v488 = v192;
              v489 = BYTE4(v192);
              sub_189090750(&v475, &v484, &v435);
              sub_188F0B59C(v193);
              sub_188F0B59C(v352);
              v195 = *(&v435 + 1);
              v196 = v437 | (v438 << 32);
              if (v435)
              {
                v390 = v435;
                v391 = v436;
                LODWORD(v392) = v437;
                BYTE4(v392) = BYTE4(v196) & 1;
                sub_18908FB80(v344);
                v195 = *(&v390 + 1);
                v357 = v390;
                v349 = *(&v391 + 1);
                v350 = v391;
                v197 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v197 = 0;
                }

                v196 = v197 | v392;
              }

              else
              {
                v349 = *(&v436 + 1);
                v350 = v436;
                v357 = 0;
              }

              v198 = v378;
              v199 = v380;
              v339 = v196;
              v351 = v195;
              if (v386)
              {
                *&v390 = v386;
                *(&v390 + 1) = v363;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = BYTE4(v382) & 1;

                sub_18908FB80(v121);
                v200 = *(&v390 + 1);
                v341 = v390;
                v198 = *(&v391 + 1);
                v199 = v391;
                v201 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v201 = 0;
                }

                v202 = v201 | v392;
                *&v390 = v386;
                *(&v390 + 1) = v363;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = BYTE4(v382) & 1;

                sub_18908FB80(v98 * 0.5);
                v203 = v200;
                v205 = *(&v390 + 1);
                v204 = v390;
                v206 = *(&v391 + 1);
                v207 = v391;
                v208 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v208 = 0;
                }

                v209 = v208 | v392;
              }

              else
              {
                v204 = 0;
                v341 = 0;
                v205 = v363;
                v207 = v380;
                v206 = v378;
                v209 = v382;
                v203 = v363;
                v202 = v382;
              }

              *&v459 = v341;
              *(&v459 + 1) = v203;
              *&v460 = v199;
              *(&v460 + 1) = v198;
              v461 = v202;
              v462 = BYTE4(v202);
              v469 = v204;
              v470 = v205;
              v471 = v207;
              v472 = v206;
              v473 = v209;
              v474 = BYTE4(v209);
              sub_189090750(&v469, v452, &v439);
              sub_188F0B59C(v204);
              v210 = *(&v439 + 1);
              v212 = *(&v440 + 1);
              v211 = v440;
              v213 = v441 | (v442 << 32);
              if (v439)
              {
                v390 = v439;
                v391 = v440;
                LODWORD(v392) = v441;
                BYTE4(v392) = BYTE4(v213) & 1;
                sub_18908FB80(1.0 / v120);
                sub_18908FB80(v176);
                v210 = *(&v390 + 1);
                v214 = v390;
                v212 = *(&v391 + 1);
                v211 = v391;
                v215 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v215 = 0;
                }

                v213 = v215 | v392;
              }

              else
              {
                v214 = 0;
              }

              v463 = v214;
              v464 = v210;
              v465 = v211;
              v466 = v212;
              v467 = v213;
              v468 = BYTE4(v213);
              sub_189090750(&v459, &v463, &v443);
              sub_188F0B59C(v214);
              sub_188F0B59C(v341);
              v216 = *(&v443 + 1);
              v217 = *(&v444 + 1);
              v218 = v444;
              v219 = v445 | (v446 << 32);
              if (v443)
              {
                v390 = v443;
                v391 = v444;
                LODWORD(v392) = v445;
                BYTE4(v392) = BYTE4(v219) & 1;
                sub_18908FB80(-v119);
                sub_18908FB80(v344);
                v221 = *(&v390 + 1);
                v220 = v390;
                v222 = *(&v391 + 1);
                v223 = v391;
                v224 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v224 = 0;
                }

                v225 = v224 | v392;
                if (v357)
                {
                  if (v390)
                  {
                    v455 = v390;
                    v456 = v391;
                    v457 = v392;
                    v458 = BYTE4(v224);
                    v226 = v357;
                    *&v390 = v357;
                    *(&v390 + 1) = v351;
                    *&v391 = v350;
                    *(&v391 + 1) = v349;
                    v227 = v339;
LABEL_231:
                    LODWORD(v392) = v227;
                    BYTE4(v392) = BYTE4(v227) & 1;
                    sub_188F0B550(v220);
                    sub_188F0B550(v226);
                    sub_18908FD40(&v455);
                    sub_188F0B59C(v220);
                    sub_188F0B59C(v226);

                    v357 = v390;
                    v350 = v391;
                    v351 = *(&v390 + 1);
                    v349 = *(&v391 + 1);
                    v329 = 0x100000000;
                    if (!BYTE4(v392))
                    {
                      v329 = 0;
                    }

                    v282 = v329 | v392;
                    goto LABEL_238;
                  }

                  goto LABEL_135;
                }

LABEL_234:
                v343 = v225;
                v357 = v220;
                v350 = v223;
                v351 = v221;
                v349 = v222;
LABEL_239:
                v81 = v389;
                v447[0] = v333;
                v447[1] = v337;
                v447[2] = v336;
                v447[3] = v335;
                v448 = v334;
                v449 = BYTE4(v334);
                sub_189090750(v447, &v450, v420);
                v338 = v420[1];
                v340 = v420[0];
                v16 = v420[2];
                v15 = v420[3];
                v17 = v421 | (v422 << 32);
                sub_188F0B59C(v333);
                sub_188F0B59C(v386);
                sub_188F0B59C(v388);
                sub_188F0B59C(v374);
                goto LABEL_240;
              }

              if (v357)
              {
LABEL_135:
                v228 = v339;
LABEL_237:
                v282 = v228 & 0x1FFFFFFFFLL;
LABEL_238:
                v343 = v282;
                goto LABEL_239;
              }

LABEL_242:
              v343 = v219;
              v357 = 0;
              v350 = v218;
              v351 = v216;
              v349 = v217;
              goto LABEL_239;
            }

            if (v118 >= v119)
            {
              v152 = HIDWORD(v106) & 1;
              if (v114)
              {
                *&v390 = v114;
                *(&v390 + 1) = v115;
                *&v391 = v108;
                *(&v391 + 1) = v107;
                LODWORD(v392) = v106;
                BYTE4(v392) = BYTE4(v106) & 1;

                sub_18908FB80(v98 * 0.5);
                v154 = *(&v390 + 1);
                v153 = v390;
                v156 = *(&v391 + 1);
                v155 = v391;
                v157 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v157 = 0;
                }

                v158 = v157 | v392;
              }

              else
              {
                v153 = 0;
                v154 = v115;
                v155 = v108;
                v156 = v107;
                v158 = v106;
              }

              v508 = v153;
              v509 = v154;
              v510 = v155;
              v511 = v156;
              v512 = v158;
              v513 = BYTE4(v158);
              sub_189090750(&v508, v452, &v435);
              sub_188F0B59C(v153);
              v239 = *(&v435 + 1);
              v241 = *(&v436 + 1);
              v240 = v436;
              v242 = v437 | (v438 << 32);
              if (v435)
              {
                v390 = v435;
                v391 = v436;
                LODWORD(v392) = v437;
                BYTE4(v392) = BYTE4(v242) & 1;
                sub_18908FB80(v4);
                v239 = *(&v390 + 1);
                v243 = v390;
                v241 = *(&v391 + 1);
                v240 = v391;
                v244 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v244 = 0;
                }

                v242 = v244 | v392;
              }

              else
              {
                v243 = 0;
              }

              v502 = v243;
              v503 = v239;
              v504 = v240;
              v505 = v241;
              v506 = v242;
              v507 = BYTE4(v242);
              sub_189090750(v481, &v502, &v439);
              sub_188F0B59C(v243);
              v245 = exp(-(v119 * v4));
              v246 = v245;
              v247 = *(&v439 + 1);
              v249 = *(&v440 + 1);
              v248 = v440;
              v250 = v441 | (v442 << 32);
              if (v439)
              {
                v390 = v439;
                v391 = v440;
                LODWORD(v392) = v441;
                BYTE4(v392) = BYTE4(v250) & 1;
                sub_18908FB80(v245);
                v247 = *(&v390 + 1);
                v333 = v390;
                v249 = *(&v391 + 1);
                v248 = v391;
                v251 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v251 = 0;
                }

                v250 = v251 | v392;
              }

              else
              {
                v333 = 0;
              }

              v252 = v363;
              v254 = v378;
              v253 = v380;
              v255 = v382;
              v334 = v250;
              v335 = v249;
              v336 = v248;
              v337 = v247;
              if (v114)
              {
                *&v390 = v114;
                *(&v390 + 1) = v363;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = v152;

                sub_18908FB80(v98 * 0.5);
                v252 = *(&v390 + 1);
                v256 = v390;
                v254 = *(&v391 + 1);
                v253 = v391;
                v257 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v257 = 0;
                }

                v255 = v257 | v392;
              }

              else
              {
                v256 = 0;
              }

              v496 = v256;
              v497 = v252;
              v498 = v253;
              v499 = v254;
              v500 = v255;
              v501 = BYTE4(v255);
              sub_189090750(&v496, v452, &v443);
              sub_188F0B59C(v256);
              v258 = *(&v443 + 1);
              v260 = *(&v444 + 1);
              v259 = v444;
              v261 = v445 | (v446 << 32);
              if (v443)
              {
                v390 = v443;
                v391 = v444;
                LODWORD(v392) = v445;
                BYTE4(v392) = BYTE4(v261) & 1;
                sub_18908FB80(v246);
                v258 = *(&v390 + 1);
                v262 = v390;
                v260 = *(&v391 + 1);
                v259 = v391;
                v263 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v263 = 0;
                }

                v261 = v263 | v392;
              }

              else
              {
                v262 = 0;
              }

              v264 = v380;
              v265 = v382;
              v360 = v258;
              if (v114)
              {
                *&v390 = v114;
                *(&v390 + 1) = v363;
                *&v391 = v380;
                *(&v391 + 1) = v378;
                LODWORD(v392) = v382;
                BYTE4(v392) = v152;

                sub_18908FB80(v98 * 0.5);
                v267 = *(&v390 + 1);
                v266 = v390;
                v268 = *(&v391 + 1);
                v264 = v391;
                v269 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v269 = 0;
                }

                v265 = v269 | v392;
              }

              else
              {
                v266 = 0;
                v267 = v363;
                v268 = v378;
              }

              v490 = v266;
              v491 = v267;
              v492 = v264;
              v493 = v268;
              v494 = v265;
              v495 = BYTE4(v265);
              sub_189090750(&v490, v452, &v455);
              sub_188F0B59C(v266);
              v270 = *(&v455 + 1);
              v272 = *(&v456 + 1);
              v271 = v456;
              v273 = v457 | (v458 << 32);
              if (v455)
              {
                v390 = v455;
                v391 = v456;
                LODWORD(v392) = v457;
                BYTE4(v392) = BYTE4(v273) & 1;
                sub_18908FB80(v4);
                v270 = *(&v390 + 1);
                v274 = v390;
                v272 = *(&v391 + 1);
                v271 = v391;
                v275 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v275 = 0;
                }

                v273 = v275 | v392;
              }

              else
              {
                v274 = 0;
              }

              v484 = v274;
              v485 = v270;
              v486 = v271;
              v487 = v272;
              v488 = v273;
              v489 = BYTE4(v273);
              sub_189090750(v481, &v484, &v459);
              sub_188F0B59C(v274);
              v276 = *(&v459 + 1);
              v278 = *(&v460 + 1);
              v277 = v460;
              v279 = v461 | (v462 << 32);
              if (v459)
              {
                v390 = v459;
                v391 = v460;
                LODWORD(v392) = v461;
                BYTE4(v392) = BYTE4(v279) & 1;
                sub_18908FB80(-v119);
                sub_18908FB80(v246);
                v276 = *(&v390 + 1);
                v280 = v390;
                v278 = *(&v391 + 1);
                v277 = v391;
                v281 = 0x100000000;
                if (!BYTE4(v392))
                {
                  v281 = 0;
                }

                v279 = v281 | v392;
              }

              else
              {
                v280 = 0;
              }

              v469 = v262;
              v470 = v360;
              v471 = v259;
              v472 = v260;
              v473 = v261;
              v474 = BYTE4(v261);
              v475 = v280;
              v476 = v276;
              v477 = v277;
              v478 = v278;
              v479 = v279;
              v480 = BYTE4(v279);
              sub_189090750(&v469, &v475, &v463);
              sub_188F0B59C(v280);
              sub_188F0B59C(v262);
              v357 = v463;
              v350 = v465;
              v351 = v464;
              v349 = v466;
              v282 = v467 | (v468 << 32);
              goto LABEL_238;
            }

            v134 = sqrt(v119 * v119 - v118 * v118);
            v135 = v134 * v4;
            v136 = cosh(v134 * v4);
            if (v114)
            {
              *&v390 = v114;
              *(&v390 + 1) = v115;
              *&v391 = v380;
              *(&v391 + 1) = v378;
              LODWORD(v392) = v382;
              BYTE4(v392) = BYTE4(v382) & 1;

              sub_18908FB80(v136);
              v137 = v390;
              v139 = *(&v391 + 1);
              v138 = v391;
              v140 = 0x100000000;
              if (!BYTE4(v392))
              {
                v140 = 0;
              }

              v141 = v140 | v392;
              *&v390 = v386;
              *(&v390 + 1) = v115;
              *&v391 = v380;
              *(&v391 + 1) = v378;
              LODWORD(v392) = v382;
              BYTE4(v392) = BYTE4(v382) & 1;

              v142 = v137;

              sub_18908FB80(v98 * 0.5);
              v143 = v141;
              v144 = v138;
              v145 = *(&v137 + 1);
              v147 = *(&v390 + 1);
              v146 = v390;
              v149 = *(&v391 + 1);
              v148 = v391;
              v150 = 0x100000000;
              if (!BYTE4(v392))
              {
                v150 = 0;
              }

              v114 = v386;
              v151 = v150 | v392;
            }

            else
            {
              v146 = 0;
              v142 = 0;
              v147 = v115;
              v139 = v378;
              v148 = v380;
              v149 = v378;
              v151 = v382;
              v145 = v115;
              v144 = v380;
              v143 = v382;
            }

            v496 = v142;
            v497 = v145;
            v498 = v144;
            v499 = v139;
            v500 = v143;
            v501 = BYTE4(v143);
            v508 = v146;
            v509 = v147;
            v510 = v148;
            v511 = v149;
            v512 = v151;
            v513 = BYTE4(v151);
            sub_189090750(&v508, v452, &v423);
            sub_188F0B59C(v146);
            v229 = *(&v423 + 1);
            v231 = *(&v424 + 1);
            v230 = v424;
            v232 = v425 | (v426 << 32);
            if (v423)
            {
              v390 = v423;
              v391 = v424;
              LODWORD(v392) = v425;
              BYTE4(v392) = BYTE4(v232) & 1;
              sub_18908FB80(1.0 / v134);
              v229 = *(&v390 + 1);
              v233 = v390;
              v231 = *(&v391 + 1);
              v230 = v391;
              v234 = v392;
              if (BYTE4(v392))
              {
                v235 = 0x100000000;
              }

              else
              {
                v235 = 0;
              }

              v236 = sinh(v135);
              v237 = v236;
              if (v233)
              {
                *&v390 = v233;
                *(&v390 + 1) = v229;
                *&v391 = v230;
                *(&v391 + 1) = v231;
                LODWORD(v392) = v234;
                BYTE4(v392) = BYTE4(v235);
                sub_18908FB80(v236);
                v229 = *(&v390 + 1);
                v233 = v390;
                v231 = *(&v391 + 1);
                v230 = v391;
                if (BYTE4(v392))
                {
                  v238 = 0x100000000;
                }

                else
                {
                  v238 = 0;
                }

                v232 = v238 | v392;
              }

              else
              {
                v232 = v235 | v234;
              }

              v114 = v386;
            }

            else
            {
              v237 = sinh(v135);
              v233 = 0;
            }

            v502 = v233;
            v503 = v229;
            v504 = v230;
            v505 = v231;
            v506 = v232;
            v507 = BYTE4(v232);
            sub_189090750(&v496, &v502, &v427);
            sub_188F0B59C(v233);
            sub_188F0B59C(v142);
            v283 = exp(-(v119 * v4));
            v284 = v283;
            v285 = *(&v427 + 1);
            v287 = *(&v428 + 1);
            v286 = v428;
            v288 = v429 | (v430 << 32);
            if (v427)
            {
              v390 = v427;
              v391 = v428;
              LODWORD(v392) = v429;
              BYTE4(v392) = BYTE4(v288) & 1;
              sub_18908FB80(v283);
              v285 = *(&v390 + 1);
              v333 = v390;
              v287 = *(&v391 + 1);
              v286 = v391;
              v289 = 0x100000000;
              if (!BYTE4(v392))
              {
                v289 = 0;
              }

              v288 = v289 | v392;
            }

            else
            {
              v333 = 0;
            }

            v290 = v378;
            v291 = v382;
            v334 = v288;
            v335 = v287;
            v336 = v286;
            v337 = v285;
            if (v114)
            {
              *&v390 = v114;
              *(&v390 + 1) = v115;
              *&v391 = v380;
              *(&v391 + 1) = v378;
              LODWORD(v392) = v382;
              BYTE4(v392) = BYTE4(v382) & 1;

              sub_18908FB80(v237);
              sub_18908FB80(v134);
              v292 = *(&v390 + 1);
              v293 = v390;
              v290 = *(&v391 + 1);
              v361 = v391;
              if (BYTE4(v392))
              {
                v294 = 0x100000000;
              }

              else
              {
                v294 = 0;
              }

              v291 = v294 | v392;
              *&v390 = v114;
              *(&v390 + 1) = v115;
              *&v391 = v380;
              *(&v391 + 1) = v378;
              LODWORD(v392) = v382;
              BYTE4(v392) = BYTE4(v382) & 1;

              sub_18908FB80(v98 * 0.5);
              v296 = *(&v390 + 1);
              v295 = v390;
              v298 = *(&v391 + 1);
              v297 = v391;
              if (BYTE4(v392))
              {
                v299 = 0x100000000;
              }

              else
              {
                v299 = 0;
              }

              v114 = v293;
              v300 = v299 | v392;
            }

            else
            {
              v295 = 0;
              v296 = v115;
              v297 = v380;
              v298 = v378;
              v292 = v115;
              v300 = v382;
              v361 = v380;
            }

            v475 = v114;
            v476 = v292;
            v477 = v361;
            v478 = v290;
            v479 = v291;
            v480 = BYTE4(v291);
            v490 = v295;
            v491 = v296;
            v492 = v297;
            v493 = v298;
            v494 = v300;
            v495 = BYTE4(v300);
            sub_189090750(&v490, v452, &v431);
            sub_188F0B59C(v295);
            v301 = *(&v431 + 1);
            v303 = *(&v432 + 1);
            v302 = v432;
            v304 = v433 | (v434 << 32);
            if (v431)
            {
              v390 = v431;
              v391 = v432;
              LODWORD(v392) = v433;
              BYTE4(v392) = BYTE4(v304) & 1;
              sub_18908FB80(1.0 / v134);
              sub_18908FB80(v136);
              sub_18908FB80(v134);
              v301 = *(&v390 + 1);
              v305 = v390;
              v303 = *(&v391 + 1);
              v302 = v391;
              v306 = 0x100000000;
              if (!BYTE4(v392))
              {
                v306 = 0;
              }

              v304 = v306 | v392;
            }

            else
            {
              v305 = 0;
            }

            v484 = v305;
            v485 = v301;
            v486 = v302;
            v487 = v303;
            v488 = v304;
            v489 = BYTE4(v304);
            sub_189090750(&v475, &v484, &v435);
            sub_188F0B59C(v305);
            sub_188F0B59C(v114);
            v307 = *(&v435 + 1);
            v308 = v437 | (v438 << 32);
            if (v435)
            {
              v390 = v435;
              v391 = v436;
              LODWORD(v392) = v437;
              BYTE4(v392) = BYTE4(v308) & 1;
              sub_18908FB80(v284);
              v307 = *(&v390 + 1);
              v357 = v390;
              v349 = *(&v391 + 1);
              v350 = v391;
              v309 = 0x100000000;
              if (!BYTE4(v392))
              {
                v309 = 0;
              }

              v308 = v309 | v392;
            }

            else
            {
              v349 = *(&v436 + 1);
              v350 = v436;
              v357 = 0;
            }

            v310 = v378;
            v311 = v380;
            v342 = v308;
            v351 = v307;
            if (v386)
            {
              *&v390 = v386;
              *(&v390 + 1) = v363;
              *&v391 = v380;
              *(&v391 + 1) = v378;
              LODWORD(v392) = v382;
              BYTE4(v392) = BYTE4(v382) & 1;

              sub_18908FB80(v136);
              v312 = *(&v390 + 1);
              v345 = v390;
              v310 = *(&v391 + 1);
              v311 = v391;
              v313 = 0x100000000;
              if (!BYTE4(v392))
              {
                v313 = 0;
              }

              v314 = v313 | v392;
              *&v390 = v386;
              *(&v390 + 1) = v363;
              *&v391 = v380;
              *(&v391 + 1) = v378;
              LODWORD(v392) = v382;
              BYTE4(v392) = BYTE4(v382) & 1;

              sub_18908FB80(v98 * 0.5);
              v315 = v312;
              v317 = *(&v390 + 1);
              v316 = v390;
              v318 = *(&v391 + 1);
              v319 = v391;
              v320 = 0x100000000;
              if (!BYTE4(v392))
              {
                v320 = 0;
              }

              v321 = v320 | v392;
            }

            else
            {
              v316 = 0;
              v345 = 0;
              v317 = v363;
              v319 = v380;
              v318 = v378;
              v321 = v382;
              v315 = v363;
              v314 = v382;
            }

            *&v459 = v345;
            *(&v459 + 1) = v315;
            *&v460 = v311;
            *(&v460 + 1) = v310;
            v461 = v314;
            v462 = BYTE4(v314);
            v469 = v316;
            v470 = v317;
            v471 = v319;
            v472 = v318;
            v473 = v321;
            v474 = BYTE4(v321);
            sub_189090750(&v469, v452, &v439);
            sub_188F0B59C(v316);
            v322 = *(&v439 + 1);
            v324 = *(&v440 + 1);
            v323 = v440;
            v325 = v441 | (v442 << 32);
            if (v439)
            {
              v390 = v439;
              v391 = v440;
              LODWORD(v392) = v441;
              BYTE4(v392) = BYTE4(v325) & 1;
              sub_18908FB80(1.0 / v134);
              sub_18908FB80(v237);
              v322 = *(&v390 + 1);
              v326 = v390;
              v324 = *(&v391 + 1);
              v323 = v391;
              v327 = 0x100000000;
              if (!BYTE4(v392))
              {
                v327 = 0;
              }

              v325 = v327 | v392;
            }

            else
            {
              v326 = 0;
            }

            v463 = v326;
            v464 = v322;
            v465 = v323;
            v466 = v324;
            v467 = v325;
            v468 = BYTE4(v325);
            sub_189090750(&v459, &v463, &v443);
            sub_188F0B59C(v326);
            sub_188F0B59C(v345);
            v216 = *(&v443 + 1);
            v217 = *(&v444 + 1);
            v218 = v444;
            v219 = v445 | (v446 << 32);
            if (v443)
            {
              v390 = v443;
              v391 = v444;
              LODWORD(v392) = v445;
              BYTE4(v392) = BYTE4(v219) & 1;
              sub_18908FB80(-v119);
              sub_18908FB80(v284);
              v221 = *(&v390 + 1);
              v220 = v390;
              v222 = *(&v391 + 1);
              v223 = v391;
              v328 = 0x100000000;
              if (!BYTE4(v392))
              {
                v328 = 0;
              }

              v225 = v328 | v392;
              if (!v357)
              {
                goto LABEL_234;
              }

              if (v390)
              {
                v455 = v390;
                v456 = v391;
                v457 = v392;
                v458 = BYTE4(v328);
                v226 = v357;
                *&v390 = v357;
                *(&v390 + 1) = v351;
                *&v391 = v350;
                *(&v391 + 1) = v349;
                v227 = v342;
                goto LABEL_231;
              }
            }

            else if (!v357)
            {
              goto LABEL_242;
            }

            v228 = v342;
            goto LABEL_237;
          }

          v390 = v398;
          v391 = *v451;
          LODWORD(v392) = *&v399[13] >> 24;
          BYTE4(v392) = BYTE4(v113) & 1;

          sub_18908FB80(-1.0);
        }

        v115 = *(&v390 + 1);
        v114 = v390;
        v107 = *(&v391 + 1);
        v108 = v391;
        v117 = 0x100000000;
        if (!BYTE4(v392))
        {
          v117 = 0;
        }

        v106 = v117 | v392;
        goto LABEL_68;
      }

LABEL_31:
      v24 = *(v2 + 2);
      if (v24 == v8 && *(v2 + 3) == 0.0)
      {
        goto LABEL_52;
      }

      v50 = v24 - v8;
      if ((v10 - 1) <= 2)
      {
        v51 = __sincos_stret(v24 - v8);
        v52 = atan2(v51.__sinval, v51.__cosval);
        if (v52 > 0.0 && v10 == 2)
        {
          v52 = v52 + -6.28318531;
        }

        if (v52 < 0.0 && v10 == 3)
        {
          v50 = v52 + 6.28318531;
        }

        else
        {
          v50 = v52;
        }
      }

      v55 = *(v2 + 3);
      v56 = sqrt(v7);
      v57 = v9 * 0.5;
      if (v9 * 0.5 >= v56)
      {
        if (v56 >= v57)
        {
          v74 = v57 * v50 + v55;
          v75 = v50 + v74 * v4;
          v62 = exp(-(v57 * v4));
          v63 = v62 * v75;
          v72 = v62 * v74;
          v73 = v75 * v57;
          goto LABEL_51;
        }

        v65 = sqrt(v57 * v57 - v56 * v56);
        v66 = v65 * v4;
        v67 = v4;
        v68 = cosh(v65 * v4);
        v376 = v8;
        v69 = 1.0 / v65 * (v57 * v50 + v55);
        v70 = sinh(v66);
        v61 = v50 * v68 + v69 * v70;
        v62 = exp(-(v57 * v67));
        v63 = v62 * v61;
        v71 = v69 * v68;
        v4 = v67;
        v64 = v65 * v71 + v65 * (v50 * v70);
      }

      else
      {
        v58 = sqrt(v56 * v56 - v57 * v57);
        v59 = __sincos_stret(v58 * v4);
        v60 = 1.0 / v58 * (v57 * v50 + v55);
        v376 = v8;
        v61 = v59.__cosval * v50 + v59.__sinval * v60;
        v62 = exp(-(v57 * v4));
        v63 = v62 * v61;
        v64 = v58 * (v59.__cosval * v60) - v58 * (v50 * v59.__sinval);
      }

      v72 = v62 * v64;
      v73 = v61 * v57;
      v8 = v376;
LABEL_51:
      v76 = v72 - v62 * v73;
      v24 = v8 + v63;
      *(v2 + 2) = v8 + v63;
      *(v2 + 3) = v76;
LABEL_52:
      v77 = 6.28318531 / v24 * (6.28318531 / v24);
      v78 = sqrt(v77);
      v79 = *v2 * (v78 + v78);
      *(v2 + 4) = v77;
      *(v2 + 5) = v79;
      goto LABEL_53;
    }

    v19 = *(v2 + 6);
    v20 = *(v2 + 7);
    v21 = *(v2 + 8);
    v22 = *(v2 + 72);
    v23 = *v2;
    if (*v2 == v19 && *(v2 + 1) == 0.0)
    {
      if ((*(v2 + 170) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = v23 - v19;
      v373 = *(v2 + 6);
      if ((v22 - 1) <= 2)
      {
        v26 = __sincos_stret(v23 - v19);
        v27 = atan2(v26.__sinval, v26.__cosval);
        if (v27 > 0.0 && v22 == 2)
        {
          v27 = v27 + -6.28318531;
        }

        if (v27 < 0.0 && v22 == 3)
        {
          v25 = v27 + 6.28318531;
        }

        else
        {
          v25 = v27;
        }
      }

      v30 = *(v2 + 1);
      v31 = sqrt(v20);
      v32 = v21 * 0.5;
      if (v32 >= v31)
      {
        if (v31 >= v32)
        {
          v48 = v32 * v25 + v30;
          v49 = v25 + v48 * v4;
          v37 = exp(-(v32 * v4));
          v38 = v37 * v49;
          v39 = v37 * v48;
          v40 = v49 * v32;
        }

        else
        {
          v371 = v9;
          v41 = sqrt(v32 * v32 - v31 * v31);
          v42 = v41 * v4;
          v375 = v4;
          v43 = cosh(v41 * v4);
          v368 = v7;
          v44 = 1.0 / v41 * (v32 * v25 + v30);
          v45 = sinh(v42);
          v46 = v25 * v43 + v44 * v45;
          v37 = exp(-(v32 * v375));
          v38 = v37 * v46;
          v47 = v44 * v43;
          v4 = v375;
          v39 = v37 * (v41 * v47 + v41 * (v25 * v45));
          v40 = v46 * v32;
          v7 = v368;
          v9 = v371;
        }
      }

      else
      {
        v367 = v7;
        v33 = sqrt(v31 * v31 - v32 * v32);
        v34 = __sincos_stret(v33 * v4);
        v35 = 1.0 / v33 * (v32 * v25 + v30);
        v370 = v9;
        v36 = v34.__cosval * v25 + v34.__sinval * v35;
        v37 = exp(-(v32 * v4));
        v38 = v37 * v36;
        v39 = v37 * (v33 * (v34.__cosval * v35) - v33 * (v25 * v34.__sinval));
        v40 = v36 * v32;
        v7 = v367;
        v9 = v370;
      }

      *v2 = v373 + v38;
      *(v2 + 1) = v39 - v37 * v40;
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (v11)
    {
      goto LABEL_53;
    }

    v24 = *(v2 + 2);
    goto LABEL_52;
  }

  v13 = *(v2 + 33);
  v14 = *(v2 + 34);
  v16 = *(v2 + 35);
  v15 = *(v2 + 36);
  v17 = *(v2 + 74) | (*(v2 + 300) << 32);
  result = sub_188F0B550(v13);
LABEL_241:
  *v3 = v13;
  *(v3 + 8) = v14;
  *(v3 + 16) = v16;
  *(v3 + 24) = v15;
  *(v3 + 36) = BYTE4(v17);
  *(v3 + 32) = v17;
  return result;
}

BOOL sub_188EE8E28()
{
  v1 = sub_188CD18C0(*(v0 + 19), *(v0 + 21));
  if (v1)
  {
    v2 = sub_188EF6EEC(v1, v1);
  }

  else
  {
    v2 = 0;
  }

  v14 = *(v0 + 20);
  v15 = v14;
  v3 = v0[18];
  sub_188F0D774(&v15, v13);
  sub_188CD1B20(v3);
  v4 = v14;
  if (!v14)
  {
    if (!v2)
    {
      v10 = 0;
      goto LABEL_17;
    }

LABEL_15:

    v10 = v2;
    goto LABEL_17;
  }

  v6 = sub_188EF6EEC(v5, v4);
  swift_bridgeObjectRelease_n();
  if (!v2)
  {
    if (!v6)
    {
      v10 = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *(v2 + 16);
  v8 = *(v6 + 16);
  if (v7 != v8)
  {
    if (v8 < v7)
    {
      goto LABEL_15;
    }

LABEL_16:

    v10 = v6;
    goto LABEL_17;
  }

  v10 = sub_188EF6C40(v9, v6);

LABEL_17:
  v11 = sub_189149EF0(0, v10, 0.0001);

  return v11;
}

BOOL sub_188EE8FB0()
{
  v17 = *(v0 + 336);
  v18 = *(v0 + 352);
  v19 = *(v0 + 368);
  v20 = *(v0 + 384);
  if (sub_188EB9748())
  {
    return 1;
  }

  v13 = *(v0 + 272);
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v16 = *(v0 + 320);
  if (sub_188EB9748())
  {
    return 1;
  }

  v1 = *(v0 + 200);
  v2 = vsubq_f64(*(v0 + 208), v17);
  v3 = vmulq_n_f64(v13, *&v1);
  v4 = vaddq_f64(vmulq_f64(v2, v2), vmulq_f64(v3, v3));
  v5 = vsubq_f64(*(v0 + 224), v18);
  v6 = vmulq_n_f64(v14, *&v1);
  v21[4] = v4;
  v21[5] = vaddq_f64(vmulq_f64(v5, v5), vmulq_f64(v6, v6));
  v7 = vsubq_f64(*(v0 + 240), v19);
  v8 = vmulq_n_f64(v15, *&v1);
  v9 = vsubq_f64(*(v0 + 256), v20);
  v10 = vmulq_n_f64(v16, *&v1);
  v21[6] = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v21[7] = vaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v10, v10));
  if (sub_188EB9748())
  {
    return 1;
  }

  else
  {
    memset(v21, 0, 64);
    return sub_188EB97C0(v21, 0.000001);
  }
}

uint64_t sub_188EE90C0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  if (v1)
  {
    v5 = v1[1].i64[0];
    if (!v5 || !*(v2 + 16))
    {
      return 1;
    }

    v6 = v1 + 4;
    v7 = v5 + 1;
    v8 = vdupq_n_s64(0x7FF0000000000000uLL);
    v9 = 1;
    while (--v7)
    {
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v6[-2], v8), v8), vceqq_s64(vandq_s8(v6[-1], v8), v8)))) & 1) == 0)
      {
        v10 = v6->i64[0];
        v6 = (v6 + 40);
        if ((v10 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          continue;
        }
      }

      return v9;
    }
  }

  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  if (v12)
  {
    v17 = *(v12 + 16);
    if (!v17 || !*(v11 + 16))
    {
      return 1;
    }

    v18 = (v12 + 64);
    v19 = v17 + 1;
    v20 = vdupq_n_s64(0x7FF0000000000000uLL);
    v9 = 1;
    while (--v19)
    {
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v18[-2], v20), v20), vceqq_s64(vandq_s8(v18[-1], v20), v20)))) & 1) == 0)
      {
        v21 = v18->i64[0];
        v18 = (v18 + 40);
        if ((v21 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          continue;
        }
      }

      return v9;
    }
  }

  v22 = *(v0 + 296) | (*(v0 + 300) << 32);
  v23 = *(v0 + 184);
  v15 = *(v0 + 260);
  v16 = *(v0 + 256);
  v50 = v16 | (v15 << 32);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v52 = *(v0 + 248);
  if (!v23)
  {
    if (v1)
    {
      v13 = v0;
      v61 = *(v0 + 264);
      v62 = v2;
      v63 = v3;
      v64 = v4;
      v65 = v22;
      v66 = BYTE4(v22) & 1;

      sub_18908FB80(-1.0);
      v23 = v61;
      v25 = v2;
      v14 = v4;
      v11 = v65;
      goto LABEL_22;
    }

    if (v12)
    {
      v51 = 0;
      v23 = v16 | (v15 << 32);
      goto LABEL_37;
    }

    return 1;
  }

  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v14 = *(v0 + 208);
  v13 = v0;
  v11 = *(v0 + 216);
  v26 = v11 | (*(v0 + 220) << 32);
  if (v1)
  {
    v61 = *(v0 + 264);
    v62 = v2;
    v63 = v3;
    v64 = v4;
    v65 = v22;
    v66 = BYTE4(v22) & 1;
    v55 = v23;
    v56 = v25;
    v57 = v24;
    v58 = v14;
    v59 = v11;
    v60 = (v26 & 0x100000000) >> 32;

    sub_18908FE70(&v61);
    v11 = v11;
LABEL_22:
    v27 = v23;
    goto LABEL_24;
  }

  v27 = v23;
LABEL_24:
  v2 = *(v27 + 2);
  v28 = *(v23 + 16);
  if (v2 != v28)
  {
    v0 = v13;
    if (v28 < v2)
    {
      goto LABEL_35;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v27 = v23;
    goto LABEL_34;
  }

  v0 = v13;
  if (!v2)
  {
    goto LABEL_35;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_27:
  if (v2 > *(v23 + 16))
  {
    __break(1u);
    return result;
  }

  v30 = 0;
  v31 = *(v27 + 2);
  v32 = (v27 + 48);
  v33 = (v23 + 48);
  do
  {
    if (v30 >= v31)
    {
      goto LABEL_65;
    }

    ++v30;
    v34 = vmulq_f64(*v33, *v32);
    v32[-1] = vmulq_f64(v33[-1], v32[-1]);
    *v32 = v34;
    v32 = (v32 + 40);
    v33 = (v33 + 40);
  }

  while (v2 != v30);
LABEL_34:
  sub_188F0B59C(v23);
LABEL_35:
  v23 = v50;
  if (!v12)
  {

    v41 = 0;
    v42 = v27;
    v43 = *(v27 + 2);
    if (!v43)
    {
      goto LABEL_57;
    }

LABEL_51:
    if (!*(v25 + 16))
    {
      goto LABEL_57;
    }

    v44 = (v27 + 64);
    v45 = v43 + 1;
    v46 = vdupq_n_s64(0x7FF0000000000000uLL);
    v9 = 1;
    while (--v45)
    {
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v44[-2], v46), v46), vceqq_s64(vandq_s8(v44[-1], v46), v46)))) & 1) == 0)
      {
        v47 = v44->i64[0];
        v44 = (v44 + 40);
        if ((v47 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v48 = v41;
    v49 = v42;
    v9 = sub_189090ADC(v27, 1.0e-16);
    v42 = v49;
    v41 = v48;
    goto LABEL_59;
  }

  v2 = v25;
  v51 = v27;
  v13 = v53;
  v11 = v54;
  v14 = v52;
LABEL_37:
  v35 = *(v0 + 176);
  v55 = v12;
  v56 = v11;
  v57 = v13;
  v58 = v14;
  v59 = v23;
  v60 = BYTE4(v23) & 1;

  sub_18908FB80(v35);
  v25 = v12;
  v0 = *(v12 + 16);
  if (v0)
  {

    v27 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_66;
    }

    while (1)
    {
      if (v0 > *(v25 + 16))
      {
        __break(1u);
LABEL_68:
        result = sub_189212B38(v27);
        v27 = result;
        goto LABEL_27;
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v27 + 2);
      while (v37 < v38)
      {
        ++v37;
        v39 = &v27[v36];
        v40 = vmulq_f64(*(v25 + v36 + 48), *&v27[v36 + 48]);
        v39[2] = vmulq_f64(*(v25 + v36 + 32), *&v27[v36 + 32]);
        v39[3] = v40;
        v36 += 40;
        if (v0 == v37)
        {

          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v27 = sub_189212B38(v25);
    }
  }

  v27 = v55;
LABEL_47:
  if (!v51)
  {
    sub_188F0B550(v27);
    v42 = 0;
    v41 = v27;
    v25 = v11;
    v43 = *(v27 + 2);
    if (!v43)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v55 = v27;
  v56 = v11;
  v57 = v13;
  v58 = v14;
  v59 = v23;
  v60 = BYTE4(v23) & 1;
  sub_188F0B550(v27);
  sub_188F0B550(v51);
  sub_18908FD40(&v55);

  v42 = v51;
  v41 = v27;
  v27 = v51;
  v25 = v2;
  v43 = *(v51 + 16);
  if (v43)
  {
    goto LABEL_51;
  }

LABEL_57:
  v9 = 1;
LABEL_59:
  sub_188F0B59C(v42);
  sub_188F0B59C(v27);
  sub_188F0B59C(v41);
  return v9;
}

BOOL sub_188EE97A4()
{
  v1 = v0[12];
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  v4 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&v2.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v1, v3), v4));
  if ((LODWORD(v2.f64[0]) | HIDWORD(v2.f64[0])))
  {
    return 1;
  }

  v5 = v0[11];
  v6 = vmovn_s64(vcgeq_s64(vandq_s8(v5, v3), v4));
  if ((v6.i32[0] | v6.i32[1]))
  {
    return 1;
  }

  v7 = vsubq_f64(v0[10], v1);
  v8 = vmulq_n_f64(v5, v0[9].f64[1]);
  v9 = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *&v8.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v9, vnegq_f64(v8)), vdupq_n_s64(0x7FF0000000000000uLL)));
  if ((LODWORD(v8.f64[0]) | HIDWORD(v8.f64[0])))
  {
    return 1;
  }

  if (*v9.i64 <= 0.000001)
  {
    return *&v9.i64[1] <= 0.000001;
  }

  return 0;
}

BOOL sub_188EE986C()
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*(v0 + 240), v2), v3), vcgeq_s64(vandq_s8(*(v0 + 256), v2), v3)))))
  {
    return 1;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  if (sub_188AABCA0(v4, v5, v6, v7))
  {
    return 1;
  }

  v8 = *(v0 + 168);
  v9 = v4 * v8 * (v4 * v8);
  v10 = v5 * v8 * (v5 * v8);
  v11 = v6 * v8 * (v6 * v8);
  v12 = v7 * v8 * (v7 * v8);
  v13 = (*(v0 + 176) - *&v18) * (*(v0 + 176) - *&v18) + v9;
  v14 = (*(v0 + 184) - *(&v18 + 1)) * (*(v0 + 184) - *(&v18 + 1)) + v10;
  v15 = (*(v0 + 192) - *&v19) * (*(v0 + 192) - *&v19) + v11;
  v16 = (*(v0 + 200) - *(&v19 + 1)) * (*(v0 + 200) - *(&v19 + 1)) + v12;
  if (sub_188AABCA0(v13, v14, v15, v16))
  {
    return 1;
  }

  result = 0;
  if (fabs(v13) <= 0.000001 && fabs(v14) <= 0.000001 && fabs(v15) <= 0.000001)
  {
    return fabs(v16) <= 0.000001;
  }

  return result;
}

uint64_t sub_188EE99B8(uint64_t result, double a2, double a3, double a4)
{
  v7 = result;
  v8 = *v4;
  if (*v4)
  {
    if (!result)
    {
      goto LABEL_7;
    }

    result = sub_1890154CC(*v4, result);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (result)
  {
    goto LABEL_7;
  }

  if (!v4[1])
  {
    return result;
  }

LABEL_7:
  v348 = v7;
  v9 = sub_188CD18C0(v8, v7);
  v10 = v9;
  v350 = v4[1];
  v11 = sqrt(a2);
  v12 = a3 * 0.5;
  v448 = a3 * 0.5;
  v349 = v4;
  if (a3 * 0.5 < v11)
  {
    v395 = sqrt(v11 * v11 - v12 * v12);
    v13 = v395 * a4;
    v433 = cos(v395 * a4);
    if (v10)
    {
      v14 = *(v10 + 16);
      v15 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_188CCF904(0, v14, 0);
        v15 = v470;
        v16 = *(v470 + 16);
        v17 = 32 * v16;
        v18 = (v10 + 48);
        do
        {
          v19 = v18[-1];
          v20 = *v18;
          v470 = v15;
          v21 = *(v15 + 24);
          v22 = v16 + 1;
          if (v16 >= v21 >> 1)
          {
            v403 = v20;
            v415 = v19;
            sub_188CCF904((v21 > 1), v16 + 1, 1);
            v20 = v403;
            v19 = v415;
            v15 = v470;
          }

          *(v15 + 16) = v22;
          v23 = (v15 + v17);
          v23[2] = vmulq_n_f64(v19, v433);
          v23[3] = vmulq_n_f64(v20, v433);
          v17 += 32;
          v18 += 2;
          v16 = v22;
          --v14;
        }

        while (v14);
        v38 = *(v10 + 16);
        v39 = MEMORY[0x1E69E7CC0];
        if (v38)
        {
          v470 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v38);
          v39 = v470;
          v40 = (v10 + 48);
          do
          {
            v405 = *v40;
            v418 = v40[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v39 + 16) + 1, 1);
              v39 = v470;
            }

            v41 = v448;
            v43 = *(v39 + 16);
            v42 = *(v39 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_188CCF904((v42 > 1), v43 + 1, 1);
              v41 = v448;
              v39 = v470;
            }

            *(v39 + 16) = v43 + 1;
            v44 = (v39 + 32 * v43);
            v44[2] = vmulq_n_f64(v418, v41);
            v44[3] = vmulq_n_f64(v405, v41);
            v40 += 2;
            --v38;
          }

          while (v38);
        }
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v39 = 0;
      v15 = 0;
    }

    v45 = sub_18914A510(v39, v350);

    v419 = 1.0 / v395;
    if (!v45)
    {
      v53 = 0;
      goto LABEL_63;
    }

    v46 = *(v45 + 16);
    if (v46)
    {
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v46);
      v47 = v470;
      v48 = (v45 + 48);
      do
      {
        v406 = v48[-1];
        v381 = *v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v47 + 16) + 1, 1);
          v47 = v470;
        }

        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_188CCF904((v49 > 1), v50 + 1, 1);
          v47 = v470;
        }

        *(v47 + 16) = v50 + 1;
        v51 = (v47 + 32 * v50);
        v51[2] = vmulq_n_f64(v406, v419);
        v51[3] = vmulq_n_f64(v381, v419);
        v48 += 2;
        --v46;
      }

      while (v46);

      v52 = *(v47 + 16);
      if (v52)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
      v52 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v52)
      {
LABEL_53:
        v361 = sin(v13);
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v52);
        v53 = v470;
        v54 = (v47 + 48);
        do
        {
          v407 = v54[-1];
          v382 = *v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v53 + 16) + 1, 1);
            v53 = v470;
          }

          v56 = *(v53 + 16);
          v55 = *(v53 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_188CCF904((v55 > 1), v56 + 1, 1);
            v53 = v470;
          }

          *(v53 + 16) = v56 + 1;
          v57 = (v53 + 32 * v56);
          v57[2] = vmulq_n_f64(v407, v361);
          v57[3] = vmulq_n_f64(v382, v361);
          v54 += 2;
          --v52;
        }

        while (v52);

LABEL_63:
        v58 = sub_18914A510(v15, v53);

        v408 = exp(-(v448 * a4));
        if (v58)
        {
          v59 = *(v58 + 16);
          if (v59)
          {
            v470 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v59);
            v60 = v470;
            v61 = (v58 + 48);
            do
            {
              v364 = *v61;
              v383 = v61[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v60 + 16) + 1, 1);
                v60 = v470;
              }

              v63 = *(v60 + 16);
              v62 = *(v60 + 24);
              if (v63 >= v62 >> 1)
              {
                sub_188CCF904((v62 > 1), v63 + 1, 1);
                v60 = v470;
              }

              *(v60 + 16) = v63 + 1;
              v64 = (v60 + 32 * v63);
              v64[2] = vmulq_n_f64(v383, v408);
              v64[3] = vmulq_n_f64(v364, v408);
              v61 += 2;
              --v59;
            }

            while (v59);
          }

          else
          {

            v60 = MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v60 = 0;
        }

        v65 = sin(v13);
        v362 = v65;
        if (v10)
        {
          v66 = *(v10 + 16);
          v67 = MEMORY[0x1E69E7CC0];
          if (v66)
          {
            v351 = -v65;
            v470 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v66);
            v68 = v470;
            v69 = (v10 + 48);
            do
            {
              v365 = *v69;
              v384 = v69[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v68 + 16) + 1, 1);
                v68 = v470;
              }

              v71 = *(v68 + 16);
              v70 = *(v68 + 24);
              if (v71 >= v70 >> 1)
              {
                sub_188CCF904((v70 > 1), v71 + 1, 1);
                v68 = v470;
              }

              *(v68 + 16) = v71 + 1;
              v72 = (v68 + 32 * v71);
              v72[2] = vmulq_n_f64(v384, v351);
              v72[3] = vmulq_n_f64(v365, v351);
              v69 += 2;
              --v66;
            }

            while (v66);
          }

          else
          {
            v68 = MEMORY[0x1E69E7CC0];
          }

          v75 = sub_188D7F314(v68);
          if (v75)
          {
            v76 = v75;
            v470 = v67;
            result = sub_18914A444(v75);
            if (v76 < 0)
            {
              __break(1u);
              goto LABEL_499;
            }

            v74 = v470;
            v77 = (v68 + 48);
            do
            {
              v366 = *v77;
              v385 = v77[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v74 + 16) + 1, 1);
                v74 = v470;
              }

              v79 = *(v74 + 16);
              v78 = *(v74 + 24);
              if (v79 >= v78 >> 1)
              {
                sub_188CCF904((v78 > 1), v79 + 1, 1);
                v74 = v470;
              }

              *(v74 + 16) = v79 + 1;
              v80 = (v74 + 32 * v79);
              v80[2] = vmulq_n_f64(v385, v395);
              v80[3] = vmulq_n_f64(v366, v395);
              v77 += 2;
              --v76;
            }

            while (v76);
          }

          else
          {

            v74 = MEMORY[0x1E69E7CC0];
          }

          v81 = sub_188D7F314(v10);
          v73 = MEMORY[0x1E69E7CC0];
          if (v81)
          {
            v82 = v81;
            v470 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v81);
            if ((v82 & 0x8000000000000000) == 0)
            {
              v73 = v470;
              v83 = (v10 + 48);
              do
              {
                v367 = *v83;
                v386 = v83[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v73 + 16) + 1, 1);
                  v73 = v470;
                }

                v84 = v448;
                v86 = *(v73 + 16);
                v85 = *(v73 + 24);
                if (v86 >= v85 >> 1)
                {
                  sub_188CCF904((v85 > 1), v86 + 1, 1);
                  v84 = v448;
                  v73 = v470;
                }

                *(v73 + 16) = v86 + 1;
                v87 = (v73 + 32 * v86);
                v87[2] = vmulq_n_f64(v386, v84);
                v87[3] = vmulq_n_f64(v367, v84);
                v83 += 2;
                --v82;
              }

              while (v82);
              goto LABEL_103;
            }

LABEL_499:
            __break(1u);
            goto LABEL_500;
          }
        }

        else
        {
          v73 = 0;
          v74 = 0;
        }

LABEL_103:
        v88 = sub_18914A510(v73, v350);

        if (!v88)
        {
          v96 = 0;
LABEL_136:
          v110 = sub_18914A510(v74, v96);

          if (!v110)
          {
            v470 = 0;
            if (v10)
            {
LABEL_150:
              v120 = sub_188D7F314(v10);
              if (!v120)
              {
                v119 = sub_18914A4BC(0);
LABEL_160:
                v126 = sub_188D7F314(v10);
                if (v126)
                {
                  v127 = v126;
                  v459 = MEMORY[0x1E69E7CC0];
                  result = sub_18914A444(v126);
                  if ((v127 & 0x8000000000000000) == 0)
                  {
                    v118 = v459;
                    v128 = (v10 + 48);
                    do
                    {
                      v436 = v128[-1];
                      v398 = *v128;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_188CCF904(0, *(v118 + 16) + 1, 1);
                        v118 = v459;
                      }

                      v129 = v448;
                      v131 = *(v118 + 16);
                      v130 = *(v118 + 24);
                      if (v131 >= v130 >> 1)
                      {
                        sub_188CCF904((v130 > 1), v131 + 1, 1);
                        v129 = v448;
                        v118 = v459;
                      }

                      *(v118 + 16) = v131 + 1;
                      v132 = (v118 + 32 * v131);
                      v132[2] = vmulq_n_f64(v436, v129);
                      v132[3] = vmulq_n_f64(v398, v129);
                      v128 += 2;
                      --v127;
                    }

                    while (v127);
                    goto LABEL_170;
                  }

LABEL_505:
                  __break(1u);
                  goto LABEL_506;
                }

                v118 = sub_18914A4BC(0);
LABEL_170:
                v133 = sub_18914A510(v118, v350);

                if (!v133)
                {
                  v141 = 0;
                  goto LABEL_193;
                }

                v134 = sub_188D7F314(v133);
                if (!v134)
                {
                  v136 = sub_18914A4BC(0);
LABEL_182:

                  v142 = sub_188D7F314(v136);
                  if (!v142)
                  {
                    v141 = sub_18914A4BC(0);
LABEL_192:

LABEL_193:
                    v148 = sub_18914A510(v119, v141);

                    if (v148)
                    {
                      v149 = sub_188D7F314(v148);
                      if (!v149)
                      {
                        v151 = sub_18914A4BC(0);
                        goto LABEL_204;
                      }

                      v150 = v149;
                      v462 = MEMORY[0x1E69E7CC0];
                      result = sub_18914A444(v149);
                      if ((v150 & 0x8000000000000000) == 0)
                      {
                        v421 = -v448;
                        v151 = v462;
                        v152 = (v148 + 48);
                        do
                        {
                          v449 = v152[-1];
                          v439 = *v152;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_188CCF904(0, *(v151 + 16) + 1, 1);
                            v151 = v462;
                          }

                          v154 = *(v151 + 16);
                          v153 = *(v151 + 24);
                          if (v154 >= v153 >> 1)
                          {
                            sub_188CCF904((v153 > 1), v154 + 1, 1);
                            v151 = v462;
                          }

                          *(v151 + 16) = v154 + 1;
                          v155 = (v151 + 32 * v154);
                          v155[2] = vmulq_n_f64(v449, v421);
                          v155[3] = vmulq_n_f64(v439, v421);
                          v152 += 2;
                          --v150;
                        }

                        while (v150);
LABEL_204:

                        v156 = sub_188D7F314(v151);
                        if (v156)
                        {
                          v157 = v156;
                          v463 = MEMORY[0x1E69E7CC0];
                          result = sub_18914A444(v156);
                          if ((v157 & 0x8000000000000000) == 0)
                          {
                            v158 = v463;
                            v159 = (v151 + 48);
                            do
                            {
                              v450 = v159[-1];
                              v440 = *v159;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_188CCF904(0, *(v158 + 16) + 1, 1);
                                v158 = v463;
                              }

                              v161 = *(v158 + 16);
                              v160 = *(v158 + 24);
                              if (v161 >= v160 >> 1)
                              {
                                sub_188CCF904((v160 > 1), v161 + 1, 1);
                                v158 = v463;
                              }

                              *(v158 + 16) = v161 + 1;
                              v162 = (v158 + 32 * v161);
                              v162[2] = vmulq_n_f64(v450, v408);
                              v162[3] = vmulq_n_f64(v440, v408);
                              v159 += 2;
                              --v157;
                            }

                            while (v157);
                            goto LABEL_494;
                          }

                          goto LABEL_509;
                        }

LABEL_493:
                        v158 = sub_18914A4BC(v156);
LABEL_494:

                        goto LABEL_495;
                      }

LABEL_508:
                      __break(1u);
LABEL_509:
                      __break(1u);
                      goto LABEL_510;
                    }

LABEL_482:
                    v158 = 0;
LABEL_495:
                    sub_188ECCDF0(&v470, v158);

                    goto LABEL_496;
                  }

                  v143 = v142;
                  v461 = MEMORY[0x1E69E7CC0];
                  result = sub_18914A444(v142);
                  if ((v143 & 0x8000000000000000) == 0)
                  {
                    v141 = v461;
                    v144 = (v136 + 48);
                    do
                    {
                      v420 = *v144;
                      v438 = v144[-1];
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_188CCF904(0, *(v141 + 16) + 1, 1);
                        v141 = v461;
                      }

                      v146 = *(v141 + 16);
                      v145 = *(v141 + 24);
                      if (v146 >= v145 >> 1)
                      {
                        sub_188CCF904((v145 > 1), v146 + 1, 1);
                        v141 = v461;
                      }

                      *(v141 + 16) = v146 + 1;
                      v147 = (v141 + 32 * v146);
                      v147[2] = vmulq_n_f64(v438, v362);
                      v147[3] = vmulq_n_f64(v420, v362);
                      v144 += 2;
                      --v143;
                    }

                    while (v143);
                    goto LABEL_192;
                  }

LABEL_507:
                  __break(1u);
                  goto LABEL_508;
                }

                v135 = v134;
                v460 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v134);
                if ((v135 & 0x8000000000000000) == 0)
                {
                  v136 = v460;
                  v137 = (v133 + 48);
                  do
                  {
                    v437 = v137[-1];
                    v399 = *v137;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_188CCF904(0, *(v136 + 16) + 1, 1);
                      v136 = v460;
                    }

                    v139 = *(v136 + 16);
                    v138 = *(v136 + 24);
                    if (v139 >= v138 >> 1)
                    {
                      sub_188CCF904((v138 > 1), v139 + 1, 1);
                      v136 = v460;
                    }

                    *(v136 + 16) = v139 + 1;
                    v140 = (v136 + 32 * v139);
                    v140[2] = vmulq_n_f64(v437, v419);
                    v140[3] = vmulq_n_f64(v399, v419);
                    v137 += 2;
                    --v135;
                  }

                  while (v135);
                  goto LABEL_182;
                }

LABEL_506:
                __break(1u);
                goto LABEL_507;
              }

              v121 = v120;
              v458 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v120);
              if ((v121 & 0x8000000000000000) == 0)
              {
                v119 = v458;
                v122 = (v10 + 48);
                do
                {
                  v391 = *v122;
                  v397 = v122[-1];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v119 + 16) + 1, 1);
                    v119 = v458;
                  }

                  v124 = *(v119 + 16);
                  v123 = *(v119 + 24);
                  if (v124 >= v123 >> 1)
                  {
                    sub_188CCF904((v123 > 1), v124 + 1, 1);
                    v119 = v458;
                  }

                  *(v119 + 16) = v124 + 1;
                  v125 = (v119 + 32 * v124);
                  v125[2] = vmulq_n_f64(v397, v433);
                  v125[3] = vmulq_n_f64(v391, v433);
                  v122 += 2;
                  --v121;
                }

                while (v121);
                goto LABEL_160;
              }

LABEL_504:
              __break(1u);
              goto LABEL_505;
            }

LABEL_147:
            v118 = 0;
            v119 = 0;
            goto LABEL_170;
          }

          v111 = sub_188D7F314(v110);
          if (!v111)
          {
            v113 = sub_18914A4BC(0);
            goto LABEL_149;
          }

          v112 = v111;
          v470 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v111);
          if ((v112 & 0x8000000000000000) == 0)
          {
            v113 = v470;
            v114 = (v110 + 48);
            do
            {
              v390 = *v114;
              v396 = v114[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v113 + 16) + 1, 1);
                v113 = v470;
              }

              v116 = *(v113 + 16);
              v115 = *(v113 + 24);
              if (v116 >= v115 >> 1)
              {
                sub_188CCF904((v115 > 1), v116 + 1, 1);
                v113 = v470;
              }

              *(v113 + 16) = v116 + 1;
              v117 = (v113 + 32 * v116);
              v117[2] = vmulq_n_f64(v396, v408);
              v117[3] = vmulq_n_f64(v390, v408);
              v114 += 2;
              --v112;
            }

            while (v112);
LABEL_149:

            v470 = v113;
            if (v10)
            {
              goto LABEL_150;
            }

            goto LABEL_147;
          }

          goto LABEL_502;
        }

        v89 = sub_188D7F314(v88);
        if (!v89)
        {
          v91 = sub_18914A4BC(0);
LABEL_115:

          v97 = sub_188D7F314(v91);
          if (!v97)
          {
            v99 = sub_18914A4BC(0);
LABEL_125:

            v104 = sub_188D7F314(v99);
            if (v104)
            {
              v105 = v104;
              v470 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v104);
              if (v105 < 0)
              {
LABEL_503:
                __break(1u);
                goto LABEL_504;
              }

              v96 = v470;
              v106 = (v99 + 48);
              do
              {
                v370 = *v106;
                v389 = v106[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v96 + 16) + 1, 1);
                  v96 = v470;
                }

                v108 = *(v96 + 16);
                v107 = *(v96 + 24);
                if (v108 >= v107 >> 1)
                {
                  sub_188CCF904((v107 > 1), v108 + 1, 1);
                  v96 = v470;
                }

                *(v96 + 16) = v108 + 1;
                v109 = (v96 + 32 * v108);
                v109[2] = vmulq_n_f64(v389, v395);
                v109[3] = vmulq_n_f64(v370, v395);
                v106 += 2;
                --v105;
              }

              while (v105);
            }

            else
            {
              v96 = sub_18914A4BC(0);
            }

            goto LABEL_136;
          }

          v98 = v97;
          v470 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v97);
          if ((v98 & 0x8000000000000000) == 0)
          {
            v99 = v470;
            v100 = (v91 + 48);
            do
            {
              v369 = *v100;
              v388 = v100[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v99 + 16) + 1, 1);
                v99 = v470;
              }

              v102 = *(v99 + 16);
              v101 = *(v99 + 24);
              if (v102 >= v101 >> 1)
              {
                sub_188CCF904((v101 > 1), v102 + 1, 1);
                v99 = v470;
              }

              *(v99 + 16) = v102 + 1;
              v103 = (v99 + 32 * v102);
              v103[2] = vmulq_n_f64(v388, v433);
              v103[3] = vmulq_n_f64(v369, v433);
              v100 += 2;
              --v98;
            }

            while (v98);
            goto LABEL_125;
          }

LABEL_501:
          __break(1u);
LABEL_502:
          __break(1u);
          goto LABEL_503;
        }

        v90 = v89;
        v470 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v89);
        if ((v90 & 0x8000000000000000) == 0)
        {
          v91 = v470;
          v92 = (v88 + 48);
          do
          {
            v368 = *v92;
            v387 = v92[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v91 + 16) + 1, 1);
              v91 = v470;
            }

            v94 = *(v91 + 16);
            v93 = *(v91 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_188CCF904((v93 > 1), v94 + 1, 1);
              v91 = v470;
            }

            *(v91 + 16) = v94 + 1;
            v95 = (v91 + 32 * v94);
            v95[2] = vmulq_n_f64(v387, v419);
            v95[3] = vmulq_n_f64(v368, v419);
            v92 += 2;
            --v90;
          }

          while (v90);
          goto LABEL_115;
        }

LABEL_500:
        __break(1u);
        goto LABEL_501;
      }
    }

    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  v360 = -v12;
  if (v11 < v12)
  {
    v380 = sqrt(v12 * v12 - v11 * v11);
    v24 = v380 * a4;
    v416 = cosh(v380 * a4);
    if (v10)
    {
      v25 = *(v10 + 16);
      v26 = MEMORY[0x1E69E7CC0];
      if (v25)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v25);
        v26 = v470;
        v27 = (v10 + 48);
        do
        {
          v434 = v27[-1];
          v404 = *v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v26 + 16) + 1, 1);
            v26 = v470;
          }

          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_188CCF904((v28 > 1), v29 + 1, 1);
            v26 = v470;
          }

          *(v26 + 16) = v29 + 1;
          v30 = (v26 + 32 * v29);
          v30[2] = vmulq_n_f64(v434, v416);
          v30[3] = vmulq_n_f64(v404, v416);
          v27 += 2;
          --v25;
        }

        while (v25);
        v163 = *(v10 + 16);
        v164 = MEMORY[0x1E69E7CC0];
        if (v163)
        {
          v470 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v163);
          v164 = v470;
          v165 = (v10 + 48);
          do
          {
            v441 = v165[-1];
            v409 = *v165;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v164 + 16) + 1, 1);
              v164 = v470;
            }

            v166 = v448;
            v168 = *(v164 + 16);
            v167 = *(v164 + 24);
            if (v168 >= v167 >> 1)
            {
              sub_188CCF904((v167 > 1), v168 + 1, 1);
              v166 = v448;
              v164 = v470;
            }

            *(v164 + 16) = v168 + 1;
            v169 = (v164 + 32 * v168);
            v169[2] = vmulq_n_f64(v441, v166);
            v169[3] = vmulq_n_f64(v409, v166);
            v165 += 2;
            --v163;
          }

          while (v163);
        }
      }

      else
      {
        v164 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v164 = 0;
      v26 = 0;
    }

    v177 = sub_18914A510(v164, v350);

    v410 = 1.0 / v380;
    if (v177)
    {
      v178 = *(v177 + 16);
      if (v178)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v178);
        v179 = v470;
        v180 = (v177 + 48);
        do
        {
          v443 = v180[-1];
          v400 = *v180;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v179 + 16) + 1, 1);
            v179 = v470;
          }

          v182 = *(v179 + 16);
          v181 = *(v179 + 24);
          if (v182 >= v181 >> 1)
          {
            sub_188CCF904((v181 > 1), v182 + 1, 1);
            v179 = v470;
          }

          *(v179 + 16) = v182 + 1;
          v183 = (v179 + 32 * v182);
          v183[2] = vmulq_n_f64(v443, v410);
          v183[3] = vmulq_n_f64(v400, v410);
          v180 += 2;
          --v178;
        }

        while (v178);
      }

      else
      {

        v179 = MEMORY[0x1E69E7CC0];
      }

      v444 = sinh(v24);
      v208 = *(v179 + 16);
      if (v208)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v208);
        v184 = v470;
        v209 = (v179 + 48);
        do
        {
          v401 = v209[-1];
          v352 = *v209;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v184 + 16) + 1, 1);
            v184 = v470;
          }

          v211 = *(v184 + 16);
          v210 = *(v184 + 24);
          if (v211 >= v210 >> 1)
          {
            sub_188CCF904((v210 > 1), v211 + 1, 1);
            v184 = v470;
          }

          *(v184 + 16) = v211 + 1;
          v212 = (v184 + 32 * v211);
          v212[2] = vmulq_n_f64(v401, v444);
          v212[3] = vmulq_n_f64(v352, v444);
          v209 += 2;
          --v208;
        }

        while (v208);
      }

      else
      {

        v184 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v444 = sinh(v24);
      v184 = 0;
    }

    v213 = sub_18914A510(v26, v184);

    v402 = exp(-(v448 * a4));
    if (v213)
    {
      v214 = sub_188D7F314(v213);
      if (v214)
      {
        v215 = v214;
        v470 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v214);
        if (v215 < 0)
        {
LABEL_511:
          __break(1u);
          goto LABEL_512;
        }

        v60 = v470;
        v216 = (v213 + 48);
        do
        {
          v371 = v216[-1];
          v353 = *v216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v60 + 16) + 1, 1);
            v60 = v470;
          }

          v218 = *(v60 + 16);
          v217 = *(v60 + 24);
          if (v218 >= v217 >> 1)
          {
            sub_188CCF904((v217 > 1), v218 + 1, 1);
            v60 = v470;
          }

          *(v60 + 16) = v218 + 1;
          v219 = (v60 + 32 * v218);
          v219[2] = vmulq_n_f64(v371, v402);
          v219[3] = vmulq_n_f64(v353, v402);
          v216 += 2;
          --v215;
        }

        while (v215);

        if (v10)
        {
          goto LABEL_299;
        }

LABEL_309:
        v227 = 0;
        v228 = 0;
        goto LABEL_379;
      }

      v60 = MEMORY[0x1E69E7CC0];
      if (!v10)
      {
        goto LABEL_309;
      }
    }

    else
    {
      v60 = 0;
      if (!v10)
      {
        goto LABEL_309;
      }
    }

LABEL_299:
    v220 = sub_188D7F314(v10);
    if (v220)
    {
      v221 = v220;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v220);
      if (v221 < 0)
      {
LABEL_513:
        __break(1u);
        goto LABEL_514;
      }

      v222 = v470;
      v223 = (v10 + 48);
      do
      {
        v372 = v223[-1];
        v354 = *v223;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v222 + 16) + 1, 1);
          v222 = v470;
        }

        v225 = *(v222 + 16);
        v224 = *(v222 + 24);
        if (v225 >= v224 >> 1)
        {
          sub_188CCF904((v224 > 1), v225 + 1, 1);
          v222 = v470;
        }

        *(v222 + 16) = v225 + 1;
        v226 = (v222 + 32 * v225);
        v226[2] = vmulq_n_f64(v372, v444);
        v226[3] = vmulq_n_f64(v354, v444);
        v223 += 2;
        --v221;
      }

      while (v221);
    }

    else
    {
      v222 = sub_18914A4BC(0);
    }

    v236 = sub_188D7F314(v222);
    if (v236)
    {
      v237 = v236;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v236);
      if (v237 < 0)
      {
LABEL_515:
        __break(1u);
        goto LABEL_516;
      }

      v228 = v470;
      v238 = (v222 + 48);
      do
      {
        v373 = v238[-1];
        v355 = *v238;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v228 + 16) + 1, 1);
          v228 = v470;
        }

        v240 = *(v228 + 16);
        v239 = *(v228 + 24);
        if (v240 >= v239 >> 1)
        {
          sub_188CCF904((v239 > 1), v240 + 1, 1);
          v228 = v470;
        }

        *(v228 + 16) = v240 + 1;
        v241 = (v228 + 32 * v240);
        v241[2] = vmulq_n_f64(v373, v380);
        v241[3] = vmulq_n_f64(v355, v380);
        v238 += 2;
        --v237;
      }

      while (v237);
    }

    else
    {
      v228 = sub_18914A4BC(0);
    }

    v250 = sub_188D7F314(v10);
    if (v250)
    {
      v251 = v250;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v250);
      if (v251 < 0)
      {
LABEL_519:
        __break(1u);
        goto LABEL_520;
      }

      v227 = v470;
      v252 = (v10 + 48);
      do
      {
        v374 = v252[-1];
        v356 = *v252;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v227 + 16) + 1, 1);
          v227 = v470;
        }

        v253 = v448;
        v255 = *(v227 + 16);
        v254 = *(v227 + 24);
        if (v255 >= v254 >> 1)
        {
          sub_188CCF904((v254 > 1), v255 + 1, 1);
          v253 = v448;
          v227 = v470;
        }

        *(v227 + 16) = v255 + 1;
        v256 = (v227 + 32 * v255);
        v256[2] = vmulq_n_f64(v374, v253);
        v256[3] = vmulq_n_f64(v356, v253);
        v252 += 2;
        --v251;
      }

      while (v251);
    }

    else
    {
      v227 = sub_18914A4BC(0);
    }

LABEL_379:
    v272 = sub_18914A510(v227, v350);

    if (v272)
    {
      v273 = sub_188D7F314(v272);
      if (v273)
      {
        v274 = v273;
        v470 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v273);
        if (v274 < 0)
        {
LABEL_517:
          __break(1u);
          goto LABEL_518;
        }

        v275 = v470;
        v276 = (v272 + 48);
        do
        {
          v375 = v276[-1];
          v357 = *v276;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v275 + 16) + 1, 1);
            v275 = v470;
          }

          v278 = *(v275 + 16);
          v277 = *(v275 + 24);
          if (v278 >= v277 >> 1)
          {
            sub_188CCF904((v277 > 1), v278 + 1, 1);
            v275 = v470;
          }

          *(v275 + 16) = v278 + 1;
          v279 = (v275 + 32 * v278);
          v279[2] = vmulq_n_f64(v375, v410);
          v279[3] = vmulq_n_f64(v357, v410);
          v276 += 2;
          --v274;
        }

        while (v274);
      }

      else
      {
        v275 = sub_18914A4BC(0);
      }

      v281 = sub_188D7F314(v275);
      if (v281)
      {
        v282 = v281;
        v470 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v281);
        if (v282 < 0)
        {
LABEL_520:
          __break(1u);
          goto LABEL_521;
        }

        v283 = v470;
        v284 = (v275 + 48);
        do
        {
          v376 = v284[-1];
          v358 = *v284;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v283 + 16) + 1, 1);
            v283 = v470;
          }

          v286 = *(v283 + 16);
          v285 = *(v283 + 24);
          if (v286 >= v285 >> 1)
          {
            sub_188CCF904((v285 > 1), v286 + 1, 1);
            v283 = v470;
          }

          *(v283 + 16) = v286 + 1;
          v287 = (v283 + 32 * v286);
          v287[2] = vmulq_n_f64(v376, v416);
          v287[3] = vmulq_n_f64(v358, v416);
          v284 += 2;
          --v282;
        }

        while (v282);
      }

      else
      {
        v283 = sub_18914A4BC(0);
      }

      v288 = sub_188D7F314(v283);
      if (v288)
      {
        v289 = v288;
        v470 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v288);
        if (v289 < 0)
        {
LABEL_523:
          __break(1u);
          goto LABEL_524;
        }

        v280 = v470;
        v290 = (v283 + 48);
        do
        {
          v377 = v290[-1];
          v359 = *v290;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v280 + 16) + 1, 1);
            v280 = v470;
          }

          v292 = *(v280 + 16);
          v291 = *(v280 + 24);
          if (v292 >= v291 >> 1)
          {
            sub_188CCF904((v291 > 1), v292 + 1, 1);
            v280 = v470;
          }

          *(v280 + 16) = v292 + 1;
          v293 = (v280 + 32 * v292);
          v293[2] = vmulq_n_f64(v377, v380);
          v293[3] = vmulq_n_f64(v359, v380);
          v290 += 2;
          --v289;
        }

        while (v289);
      }

      else
      {
        v280 = sub_18914A4BC(0);
      }
    }

    else
    {
      v280 = 0;
    }

    v295 = sub_18914A510(v228, v280);

    if (v295)
    {
      v296 = sub_188D7F314(v295);
      if (v296)
      {
        v297 = v296;
        v470 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v296);
        if (v297 < 0)
        {
LABEL_522:
          __break(1u);
          goto LABEL_523;
        }

        v298 = v470;
        v299 = (v295 + 48);
        do
        {
          v378 = *v299;
          v392 = v299[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v298 + 16) + 1, 1);
            v298 = v470;
          }

          v301 = *(v298 + 16);
          v300 = *(v298 + 24);
          if (v301 >= v300 >> 1)
          {
            sub_188CCF904((v300 > 1), v301 + 1, 1);
            v298 = v470;
          }

          *(v298 + 16) = v301 + 1;
          v302 = (v298 + 32 * v301);
          v302[2] = vmulq_n_f64(v392, v402);
          v302[3] = vmulq_n_f64(v378, v402);
          v299 += 2;
          --v297;
        }

        while (v297);
      }

      else
      {
        v298 = sub_18914A4BC(0);
      }

      v470 = v298;
      if (v10)
      {
        goto LABEL_429;
      }
    }

    else
    {
      v470 = 0;
      if (v10)
      {
LABEL_429:
        v305 = sub_188D7F314(v10);
        if (v305)
        {
          v306 = v305;
          v464 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v305);
          if (v306 < 0)
          {
LABEL_524:
            __break(1u);
            goto LABEL_525;
          }

          v304 = v464;
          v307 = (v10 + 48);
          do
          {
            v379 = *v307;
            v393 = v307[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v304 + 16) + 1, 1);
              v304 = v464;
            }

            v309 = *(v304 + 16);
            v308 = *(v304 + 24);
            if (v309 >= v308 >> 1)
            {
              sub_188CCF904((v308 > 1), v309 + 1, 1);
              v304 = v464;
            }

            *(v304 + 16) = v309 + 1;
            v310 = (v304 + 32 * v309);
            v310[2] = vmulq_n_f64(v393, v416);
            v310[3] = vmulq_n_f64(v379, v416);
            v307 += 2;
            --v306;
          }

          while (v306);
        }

        else
        {
          v304 = sub_18914A4BC(0);
        }

        v311 = sub_188D7F314(v10);
        if (v311)
        {
          v312 = v311;
          v465 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v311);
          if (v312 < 0)
          {
LABEL_525:
            __break(1u);
            goto LABEL_526;
          }

          v303 = v465;
          v313 = (v10 + 48);
          do
          {
            v430 = v313[-1];
            v394 = *v313;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v303 + 16) + 1, 1);
              v303 = v465;
            }

            v314 = v448;
            v316 = *(v303 + 16);
            v315 = *(v303 + 24);
            if (v316 >= v315 >> 1)
            {
              sub_188CCF904((v315 > 1), v316 + 1, 1);
              v314 = v448;
              v303 = v465;
            }

            *(v303 + 16) = v316 + 1;
            v317 = (v303 + 32 * v316);
            v317[2] = vmulq_n_f64(v430, v314);
            v317[3] = vmulq_n_f64(v394, v314);
            v313 += 2;
            --v312;
          }

          while (v312);
        }

        else
        {
          v303 = sub_18914A4BC(0);
        }

LABEL_449:
        v318 = sub_18914A510(v303, v350);

        if (v318)
        {
          v319 = sub_188D7F314(v318);
          if (v319)
          {
            v320 = v319;
            v466 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v319);
            if (v320 < 0)
            {
LABEL_526:
              __break(1u);
              goto LABEL_527;
            }

            v321 = v466;
            v322 = (v318 + 48);
            do
            {
              v454 = v322[-1];
              v431 = *v322;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v321 + 16) + 1, 1);
                v321 = v466;
              }

              v324 = *(v321 + 16);
              v323 = *(v321 + 24);
              if (v324 >= v323 >> 1)
              {
                sub_188CCF904((v323 > 1), v324 + 1, 1);
                v321 = v466;
              }

              *(v321 + 16) = v324 + 1;
              v325 = (v321 + 32 * v324);
              v325[2] = vmulq_n_f64(v454, v410);
              v325[3] = vmulq_n_f64(v431, v410);
              v322 += 2;
              --v320;
            }

            while (v320);
          }

          else
          {
            v321 = sub_18914A4BC(0);
          }

          v327 = sub_188D7F314(v321);
          if (v327)
          {
            v328 = v327;
            v467 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v327);
            if (v328 < 0)
            {
LABEL_527:
              __break(1u);
              goto LABEL_528;
            }

            v326 = v467;
            v329 = (v321 + 48);
            do
            {
              v455 = v329[-1];
              v432 = *v329;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v326 + 16) + 1, 1);
                v326 = v467;
              }

              v331 = *(v326 + 16);
              v330 = *(v326 + 24);
              if (v331 >= v330 >> 1)
              {
                sub_188CCF904((v330 > 1), v331 + 1, 1);
                v326 = v467;
              }

              *(v326 + 16) = v331 + 1;
              v332 = (v326 + 32 * v331);
              v332[2] = vmulq_n_f64(v455, v444);
              v332[3] = vmulq_n_f64(v432, v444);
              v329 += 2;
              --v328;
            }

            while (v328);
          }

          else
          {
            v326 = sub_18914A4BC(0);
          }
        }

        else
        {
          v326 = 0;
        }

        v333 = sub_18914A510(v304, v326);

        if (v333)
        {
          v334 = sub_188D7F314(v333);
          if (v334)
          {
            v335 = v334;
            v468 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v334);
            if (v335 < 0)
            {
LABEL_528:
              __break(1u);
              goto LABEL_529;
            }

            v336 = v468;
            v337 = (v333 + 48);
            do
            {
              v456 = v337[-1];
              v446 = *v337;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v336 + 16) + 1, 1);
                v336 = v468;
              }

              v339 = *(v336 + 16);
              v338 = *(v336 + 24);
              if (v339 >= v338 >> 1)
              {
                sub_188CCF904((v338 > 1), v339 + 1, 1);
                v336 = v468;
              }

              *(v336 + 16) = v339 + 1;
              v340 = (v336 + 32 * v339);
              v340[2] = vmulq_n_f64(v456, v360);
              v340[3] = vmulq_n_f64(v446, v360);
              v337 += 2;
              --v335;
            }

            while (v335);
          }

          else
          {
            v336 = sub_18914A4BC(0);
          }

          v156 = sub_188D7F314(v336);
          if (v156)
          {
            v341 = v156;
            v469 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v156);
            if ((v341 & 0x8000000000000000) == 0)
            {
              v158 = v469;
              v342 = (v336 + 48);
              do
              {
                v457 = v342[-1];
                v447 = *v342;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v158 + 16) + 1, 1);
                  v158 = v469;
                }

                v344 = *(v158 + 16);
                v343 = *(v158 + 24);
                if (v344 >= v343 >> 1)
                {
                  sub_188CCF904((v343 > 1), v344 + 1, 1);
                  v158 = v469;
                }

                *(v158 + 16) = v344 + 1;
                v345 = (v158 + 32 * v344);
                v345[2] = vmulq_n_f64(v457, v402);
                v345[3] = vmulq_n_f64(v447, v402);
                v342 += 2;
                --v341;
              }

              while (v341);
              goto LABEL_494;
            }

LABEL_529:
            __break(1u);
            return result;
          }

          goto LABEL_493;
        }

        goto LABEL_482;
      }
    }

    v303 = 0;
    v304 = 0;
    goto LABEL_449;
  }

  if (v9)
  {
    v31 = *(v9 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v31);
      v32 = v470;
      v33 = (v10 + 48);
      do
      {
        v417 = *v33;
        v435 = v33[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v32 + 16) + 1, 1);
          v32 = v470;
        }

        v34 = a3 * 0.5;
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_188CCF904((v35 > 1), v36 + 1, 1);
          v34 = a3 * 0.5;
          v32 = v470;
        }

        *(v32 + 16) = v36 + 1;
        v37 = (v32 + 32 * v36);
        v37[2] = vmulq_n_f64(v435, v34);
        v37[3] = vmulq_n_f64(v417, v34);
        v33 += 2;
        --v31;
      }

      while (v31);
    }
  }

  else
  {
    v32 = 0;
  }

  v170 = sub_18914A510(v32, v350);

  if (v170)
  {
    v171 = *(v170 + 16);
    if (v171)
    {
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v171);
      v172 = v470;
      v173 = (v170 + 48);
      do
      {
        v422 = *v173;
        v442 = v173[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v172 + 16) + 1, 1);
          v172 = v470;
        }

        v175 = *(v172 + 16);
        v174 = *(v172 + 24);
        if (v175 >= v174 >> 1)
        {
          sub_188CCF904((v174 > 1), v175 + 1, 1);
          v172 = v470;
        }

        *(v172 + 16) = v175 + 1;
        v176 = (v172 + 32 * v175);
        v176[2] = vmulq_n_f64(v442, a4);
        v176[3] = vmulq_n_f64(v422, a4);
        v173 += 2;
        --v171;
      }

      while (v171);
    }

    else
    {

      v172 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v172 = 0;
  }

  v185 = sub_18914A510(v10, v172);

  v445 = exp(-(v448 * a4));
  if (!v185)
  {
    v60 = 0;
    if (v10)
    {
      goto LABEL_254;
    }

    goto LABEL_264;
  }

  v186 = *(v185 + 16);
  if (!v186)
  {

    v60 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      goto LABEL_254;
    }

LABEL_264:
    v192 = 0;
    goto LABEL_265;
  }

  v470 = MEMORY[0x1E69E7CC0];
  sub_18914A444(v186);
  v60 = v470;
  v187 = (v185 + 48);
  do
  {
    v411 = *v187;
    v423 = v187[-1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_188CCF904(0, *(v60 + 16) + 1, 1);
      v60 = v470;
    }

    v189 = *(v60 + 16);
    v188 = *(v60 + 24);
    if (v189 >= v188 >> 1)
    {
      sub_188CCF904((v188 > 1), v189 + 1, 1);
      v60 = v470;
    }

    *(v60 + 16) = v189 + 1;
    v190 = (v60 + 32 * v189);
    v190[2] = vmulq_n_f64(v423, v445);
    v190[3] = vmulq_n_f64(v411, v445);
    v187 += 2;
    --v186;
  }

  while (v186);

  if (!v10)
  {
    goto LABEL_264;
  }

LABEL_254:
  v191 = sub_188D7F314(v10);
  v192 = MEMORY[0x1E69E7CC0];
  if (v191)
  {
    v193 = v191;
    v470 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v191);
    if (v193 < 0)
    {
LABEL_510:
      __break(1u);
      goto LABEL_511;
    }

    v192 = v470;
    v194 = (v10 + 48);
    do
    {
      v412 = *v194;
      v424 = v194[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v192 + 16) + 1, 1);
        v192 = v470;
      }

      v195 = a3 * 0.5;
      v197 = *(v192 + 16);
      v196 = *(v192 + 24);
      if (v197 >= v196 >> 1)
      {
        sub_188CCF904((v196 > 1), v197 + 1, 1);
        v195 = a3 * 0.5;
        v192 = v470;
      }

      *(v192 + 16) = v197 + 1;
      v198 = (v192 + 32 * v197);
      v198[2] = vmulq_n_f64(v424, v195);
      v198[3] = vmulq_n_f64(v412, v195);
      v194 += 2;
      --v193;
    }

    while (v193);
  }

LABEL_265:
  v199 = sub_18914A510(v192, v350);

  if (v199)
  {
    v200 = sub_188D7F314(v199);
    if (v200)
    {
      v201 = v200;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v200);
      if (v201 < 0)
      {
LABEL_512:
        __break(1u);
        goto LABEL_513;
      }

      v202 = v470;
      v203 = (v199 + 48);
      do
      {
        v413 = *v203;
        v425 = v203[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v202 + 16) + 1, 1);
          v202 = v470;
        }

        v205 = *(v202 + 16);
        v204 = *(v202 + 24);
        if (v205 >= v204 >> 1)
        {
          sub_188CCF904((v204 > 1), v205 + 1, 1);
          v202 = v470;
        }

        *(v202 + 16) = v205 + 1;
        v206 = (v202 + 32 * v205);
        v206[2] = vmulq_n_f64(v425, v445);
        v206[3] = vmulq_n_f64(v413, v445);
        v203 += 2;
        --v201;
      }

      while (v201);
    }

    else
    {
      v202 = sub_18914A4BC(0);
    }

    if (v10)
    {
      goto LABEL_314;
    }

LABEL_276:
    v207 = 0;
    goto LABEL_334;
  }

  v202 = 0;
  if (!v10)
  {
    goto LABEL_276;
  }

LABEL_314:
  v229 = sub_188D7F314(v10);
  if (v229)
  {
    v230 = v229;
    v470 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v229);
    if (v230 < 0)
    {
LABEL_514:
      __break(1u);
      goto LABEL_515;
    }

    v207 = v470;
    v231 = (v10 + 48);
    do
    {
      v414 = *v231;
      v426 = v231[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v207 + 16) + 1, 1);
        v207 = v470;
      }

      v232 = a3 * 0.5;
      v234 = *(v207 + 16);
      v233 = *(v207 + 24);
      if (v234 >= v233 >> 1)
      {
        sub_188CCF904((v233 > 1), v234 + 1, 1);
        v232 = a3 * 0.5;
        v207 = v470;
      }

      *(v207 + 16) = v234 + 1;
      v235 = (v207 + 32 * v234);
      v235[2] = vmulq_n_f64(v426, v232);
      v235[3] = vmulq_n_f64(v414, v232);
      v231 += 2;
      --v230;
    }

    while (v230);
  }

  else
  {
    v207 = sub_18914A4BC(0);
  }

LABEL_334:
  v242 = sub_18914A510(v207, v350);

  if (v242)
  {
    v243 = sub_188D7F314(v242);
    if (v243)
    {
      v244 = v243;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v243);
      if (v244 < 0)
      {
LABEL_516:
        __break(1u);
        goto LABEL_517;
      }

      v245 = v470;
      v246 = (v242 + 48);
      do
      {
        v451 = v246[-1];
        v427 = *v246;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v245 + 16) + 1, 1);
          v245 = v470;
        }

        v248 = *(v245 + 16);
        v247 = *(v245 + 24);
        if (v248 >= v247 >> 1)
        {
          sub_188CCF904((v247 > 1), v248 + 1, 1);
          v245 = v470;
        }

        *(v245 + 16) = v248 + 1;
        v249 = (v245 + 32 * v248);
        v249[2] = vmulq_n_f64(v451, a4);
        v249[3] = vmulq_n_f64(v427, a4);
        v246 += 2;
        --v244;
      }

      while (v244);
    }

    else
    {
      v245 = sub_18914A4BC(0);
    }
  }

  else
  {
    v245 = 0;
  }

  v257 = sub_18914A510(v10, v245);

  if (v257)
  {
    v258 = sub_188D7F314(v257);
    if (v258)
    {
      v259 = v258;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v258);
      if (v259 < 0)
      {
LABEL_518:
        __break(1u);
        goto LABEL_519;
      }

      v260 = v470;
      v261 = (v257 + 48);
      do
      {
        v452 = v261[-1];
        v428 = *v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v260 + 16) + 1, 1);
          v260 = v470;
        }

        v263 = *(v260 + 16);
        v262 = *(v260 + 24);
        if (v263 >= v262 >> 1)
        {
          sub_188CCF904((v262 > 1), v263 + 1, 1);
          v260 = v470;
        }

        *(v260 + 16) = v263 + 1;
        v264 = (v260 + 32 * v263);
        v264[2] = vmulq_n_f64(v452, v360);
        v264[3] = vmulq_n_f64(v428, v360);
        v261 += 2;
        --v259;
      }

      while (v259);
    }

    else
    {
      v260 = sub_18914A4BC(0);
    }

    v266 = sub_188D7F314(v260);
    if (v266)
    {
      v267 = v266;
      v470 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v266);
      if (v267 < 0)
      {
LABEL_521:
        __break(1u);
        goto LABEL_522;
      }

      v265 = v470;
      v268 = (v260 + 48);
      do
      {
        v453 = v268[-1];
        v429 = *v268;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v265 + 16) + 1, 1);
          v265 = v470;
        }

        v270 = *(v265 + 16);
        v269 = *(v265 + 24);
        if (v270 >= v269 >> 1)
        {
          sub_188CCF904((v269 > 1), v270 + 1, 1);
          v265 = v470;
        }

        *(v265 + 16) = v270 + 1;
        v271 = (v265 + 32 * v270);
        v271[2] = vmulq_n_f64(v453, v445);
        v271[3] = vmulq_n_f64(v429, v445);
        v268 += 2;
        --v267;
      }

      while (v267);
    }

    else
    {
      v265 = sub_18914A4BC(0);
    }
  }

  else
  {
    v265 = 0;
  }

  v294 = sub_18914A510(v202, v265);

  v470 = v294;
LABEL_496:
  v346 = sub_18914A510(v60, v348);

  v347 = v470;
  *v349 = v346;
  v349[1] = v347;
  return result;
}

uint64_t sub_188EEC36C(uint64_t a1, double a2, long double a3, double a4)
{
  v10 = *v4;
  if (sub_188BD69E4(a1, *v4, 0.0))
  {
    result = sub_188BD69E4(MEMORY[0x1E69E7CC0], v4[1], 0.0);
    if (result)
    {
      return result;
    }
  }

  sub_188D7EBC0(v10, a1);
  v13 = v12;
  v14 = v4[1];
  v15 = sqrt(a2);
  v16 = a3 * 0.5;
  v355 = a3 * 0.5;
  if (a3 * 0.5 >= v15)
  {
    if (v15 >= v16)
    {
      v19 = *(v12 + 16);

      v21 = v13;
      if (!v19)
      {
        goto LABEL_149;
      }

      v21 = v13;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_19:
        if (v19 > *(v21 + 2))
        {
          __break(1u);
          goto LABEL_589;
        }

        if (v19 > 3)
        {
          v22 = v19 & 0x7FFFFFFFFFFFFFFCLL;
          v96 = (v21 + 48);
          v97 = v19 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v98 = vmulq_n_f64(*v96, v355);
            v96[-1] = vmulq_n_f64(v96[-1], v355);
            *v96 = v98;
            v96 += 2;
            v97 -= 4;
          }

          while (v97);
          if (v19 == v22)
          {
LABEL_149:
            sub_188D85564(v21, v14);
            v5 = v101;

            v19 = *(v5 + 2);
            if (!v19)
            {
              v94 = v5;
              goto LABEL_161;
            }

            v94 = v5;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_151:
              if (v19 > *(v94 + 16))
              {
                __break(1u);
LABEL_591:
                v94 = sub_188D75E50(v21);
LABEL_337:
                if (v19 <= *(v94 + 16))
                {
                  if (v19 > 3)
                  {
                    v222 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                    v223 = (v94 + 48);
                    v224 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v225 = vmulq_n_f64(*v223, v353);
                      v223[-1] = vmulq_n_f64(v223[-1], v353);
                      *v223 = v225;
                      v223 += 2;
                      v224 -= 4;
                    }

                    while (v224);
                    if (v19 == v222)
                    {
LABEL_346:

                      v19 = *(v94 + 16);
                      v350 = sinh(a3);
                      if (!v19)
                      {
                        v21 = v94;
                        goto LABEL_358;
                      }

                      v21 = v94;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_348:
                        if (v19 > *(v21 + 2))
                        {
                          __break(1u);
                          goto LABEL_632;
                        }

                        if (v19 > 3)
                        {
                          v228 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                          v229 = (v21 + 48);
                          v230 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v231 = vmulq_n_f64(*v229, v350);
                            v229[-1] = vmulq_n_f64(v229[-1], v350);
                            *v229 = v231;
                            v229 += 2;
                            v230 -= 4;
                          }

                          while (v230);
                          if (v19 == v228)
                          {
                            goto LABEL_357;
                          }
                        }

                        else
                        {
                          v228 = 0;
                        }

                        v232 = v19 - v228;
                        v233 = &v21[8 * v228 + 32];
                        do
                        {
                          *v233 = v350 * *v233;
                          ++v233;
                          --v232;
                        }

                        while (v232);
LABEL_357:

LABEL_358:
                        sub_188D85564(v5, v21);
                        v94 = v234;

                        a4 = exp(-(v355 * a4));
                        v19 = *(v94 + 16);
                        if (!v19)
                        {
                          v5 = v94;
                          goto LABEL_370;
                        }

                        v5 = v94;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_360;
                        }

                        goto LABEL_597;
                      }

LABEL_630:
                      v21 = sub_188D75E50(v94);
                      goto LABEL_348;
                    }
                  }

                  else
                  {
                    v222 = 0;
                  }

                  v226 = v19 - v222;
                  v227 = (v94 + 8 * v222 + 32);
                  do
                  {
                    *v227 = v353 * *v227;
                    ++v227;
                    --v226;
                  }

                  while (v226);
                  goto LABEL_346;
                }

                __break(1u);
                goto LABEL_593;
              }

              if (v19 > 3)
              {
                v102 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                v103 = (v94 + 48);
                v104 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v105 = vmulq_n_f64(*v103, a4);
                  v103[-1] = vmulq_n_f64(v103[-1], a4);
                  *v103 = v105;
                  v103 += 2;
                  v104 -= 4;
                }

                while (v104);
                if (v19 == v102)
                {
                  goto LABEL_160;
                }
              }

              else
              {
                v102 = 0;
              }

              v106 = v19 - v102;
              v107 = (v94 + 8 * v102 + 32);
              do
              {
                *v107 = *v107 * a4;
                ++v107;
                --v106;
              }

              while (v106);
LABEL_160:

LABEL_161:
              sub_188D85564(v13, v94);
              v21 = v108;

              v353 = exp(-(v355 * a4));
              v19 = *(v21 + 2);
              if (!v19)
              {
                v5 = v21;
                goto LABEL_173;
              }

              v5 = v21;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_163:
                if (v19 > *(v5 + 2))
                {
                  __break(1u);
                  goto LABEL_595;
                }

                if (v19 > 3)
                {
                  v109 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                  v110 = (v5 + 48);
                  v111 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v112 = vmulq_n_f64(*v110, v353);
                    v110[-1] = vmulq_n_f64(v110[-1], v353);
                    *v110 = v112;
                    v110 += 2;
                    v111 -= 4;
                  }

                  while (v111);
                  if (v19 == v109)
                  {
                    goto LABEL_172;
                  }
                }

                else
                {
                  v109 = 0;
                }

                v113 = v19 - v109;
                v114 = &v5[8 * v109 + 32];
                do
                {
                  *v114 = v353 * *v114;
                  ++v114;
                  --v113;
                }

                while (v113);
LABEL_172:

LABEL_173:
                v19 = *(v13 + 16);

                v115 = v13;
                if (!v19)
                {
                  goto LABEL_183;
                }

                v115 = v13;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_175:
                  if (v19 > *(v115 + 2))
                  {
                    __break(1u);
LABEL_597:
                    v5 = sub_188D75E50(v94);
LABEL_360:
                    if (v19 <= *(v5 + 2))
                    {
                      if (v19 > 3)
                      {
                        v235 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                        v236 = (v5 + 48);
                        v237 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v238 = vmulq_n_f64(*v236, a4);
                          v236[-1] = vmulq_n_f64(v236[-1], a4);
                          *v236 = v238;
                          v236 += 2;
                          v237 -= 4;
                        }

                        while (v237);
                        if (v19 == v235)
                        {
                          goto LABEL_369;
                        }
                      }

                      else
                      {
                        v235 = 0;
                      }

                      v239 = v19 - v235;
                      v240 = &v5[8 * v235 + 32];
                      do
                      {
                        *v240 = a4 * *v240;
                        ++v240;
                        --v239;
                      }

                      while (v239);
LABEL_369:

LABEL_370:
                      v19 = *(v13 + 16);

                      v10 = v13;
                      if (!v19)
                      {
                        goto LABEL_386;
                      }

                      v94 = v13;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        goto LABEL_372;
                      }

                      goto LABEL_601;
                    }

                    __break(1u);
                    goto LABEL_599;
                  }

                  if (v19 > 3)
                  {
                    v116 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                    v117 = (v115 + 48);
                    v118 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v119 = vmulq_n_f64(*v117, v355);
                      v117[-1] = vmulq_n_f64(v117[-1], v355);
                      *v117 = v119;
                      v117 += 2;
                      v118 -= 4;
                    }

                    while (v118);
                    if (v19 == v116)
                    {
LABEL_183:
                      sub_188D85564(v115, v14);
                      v94 = v122;

                      v19 = *(v94 + 16);
                      if (!v19)
                      {
                        v10 = v94;
                        goto LABEL_195;
                      }

                      v10 = v94;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_185:
                        if (v19 > *(v10 + 16))
                        {
                          __break(1u);
LABEL_601:
                          v94 = sub_188D75E50(v13);
LABEL_372:
                          if (v19 <= *(v94 + 16))
                          {
                            if (v19 > 3)
                            {
                              v241 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                              v242 = (v94 + 48);
                              v243 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                              do
                              {
                                v244 = vmulq_n_f64(*v242, v350);
                                v242[-1] = vmulq_n_f64(v242[-1], v350);
                                *v242 = v244;
                                v242 += 2;
                                v243 -= 4;
                              }

                              while (v243);
                              if (v19 == v241)
                              {
LABEL_380:
                                v19 = *(v94 + 16);
                                if (!v19)
                                {
                                  v10 = v94;
                                  v19 = *(v13 + 16);
                                  if (v19)
                                  {
                                    goto LABEL_393;
                                  }

                                  goto LABEL_386;
                                }

                                v10 = v94;
                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
LABEL_382:
                                  if (v19 > *(v10 + 16))
                                  {
                                    __break(1u);
LABEL_634:
                                    v248 = sub_188D75E50(v13);
LABEL_394:
                                    if (v19 > *(v248 + 2))
                                    {
                                      __break(1u);
                                      goto LABEL_636;
                                    }

                                    if (v19 > 3)
                                    {
                                      v254 = v19 & 0xFFFFFFFFFFFFFFFCLL;
                                      v255 = (v248 + 48);
                                      v256 = v19 & 0xFFFFFFFFFFFFFFFCLL;
                                      do
                                      {
                                        v257 = vmulq_n_f64(*v255, v355);
                                        v255[-1] = vmulq_n_f64(v255[-1], v355);
                                        *v255 = v257;
                                        v255 += 2;
                                        v256 -= 4;
                                      }

                                      while (v256);
                                      if (v19 == v254)
                                      {
LABEL_402:
                                        sub_188D85564(v248, v14);
                                        v94 = v260;

                                        v19 = *(v94 + 16);
                                        if (!v19)
                                        {
                                          goto LABEL_445;
                                        }

                                        v6 = v94;
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          goto LABEL_404;
                                        }

                                        goto LABEL_607;
                                      }
                                    }

                                    else
                                    {
                                      v254 = 0;
                                    }

                                    v258 = v19 - v254;
                                    v259 = 8 * v254 + 32;
                                    do
                                    {
                                      *&v248[v259] = v355 * *&v248[v259];
                                      v259 += 8;
                                      --v258;
                                    }

                                    while (v258);
                                    goto LABEL_402;
                                  }

                                  if (v19 > 3)
                                  {
                                    v247 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                    v249 = (v10 + 48);
                                    v250 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                    do
                                    {
                                      v251 = vmulq_n_f64(*v249, v351);
                                      v249[-1] = vmulq_n_f64(v249[-1], v351);
                                      *v249 = v251;
                                      v249 += 2;
                                      v250 -= 4;
                                    }

                                    while (v250);
                                    if (v19 == v247)
                                    {
LABEL_392:

                                      v19 = *(v13 + 16);
                                      if (v19)
                                      {
LABEL_393:

                                        v248 = v13;
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          goto LABEL_394;
                                        }

                                        goto LABEL_634;
                                      }

LABEL_386:

                                      v248 = v13;
                                      goto LABEL_402;
                                    }
                                  }

                                  else
                                  {
                                    v247 = 0;
                                  }

                                  v252 = v19 - v247;
                                  v253 = (v10 + 8 * v247 + 32);
                                  do
                                  {
                                    *v253 = v351 * *v253;
                                    ++v253;
                                    --v252;
                                  }

                                  while (v252);
                                  goto LABEL_392;
                                }

LABEL_632:
                                v10 = sub_188D75E50(v94);
                                goto LABEL_382;
                              }
                            }

                            else
                            {
                              v241 = 0;
                            }

                            v245 = v19 - v241;
                            v246 = (v94 + 8 * v241 + 32);
                            do
                            {
                              *v246 = v350 * *v246;
                              ++v246;
                              --v245;
                            }

                            while (v245);
                            goto LABEL_380;
                          }

                          __break(1u);
                          goto LABEL_603;
                        }

                        if (v19 > 3)
                        {
                          v123 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                          v124 = (v10 + 48);
                          v125 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v126 = vmulq_n_f64(*v124, v353);
                            v124[-1] = vmulq_n_f64(v124[-1], v353);
                            *v124 = v126;
                            v124 += 2;
                            v125 -= 4;
                          }

                          while (v125);
                          if (v19 == v123)
                          {
                            goto LABEL_194;
                          }
                        }

                        else
                        {
                          v123 = 0;
                        }

                        v127 = v19 - v123;
                        v128 = (v10 + 8 * v123 + 32);
                        do
                        {
                          *v128 = v353 * *v128;
                          ++v128;
                          --v127;
                        }

                        while (v127);
LABEL_194:

LABEL_195:
                        v19 = *(v13 + 16);

                        v129 = v13;
                        if (!v19)
                        {
                          goto LABEL_205;
                        }

                        v129 = v13;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
LABEL_197:
                          if (v19 > *(v129 + 2))
                          {
                            __break(1u);
                            goto LABEL_605;
                          }

                          if (v19 > 3)
                          {
                            v130 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                            v131 = (v129 + 48);
                            v132 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                            do
                            {
                              v133 = vmulq_n_f64(*v131, v355);
                              v131[-1] = vmulq_n_f64(v131[-1], v355);
                              *v131 = v133;
                              v131 += 2;
                              v132 -= 4;
                            }

                            while (v132);
                            if (v19 == v130)
                            {
LABEL_205:
                              sub_188D85564(v129, v14);
                              v94 = v136;

                              v19 = *(v94 + 16);
                              if (!v19)
                              {
                                v137 = v94;
                                goto LABEL_217;
                              }

                              v137 = v94;
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
LABEL_207:
                                if (v19 > *(v137 + 2))
                                {
                                  __break(1u);
LABEL_607:
                                  v6 = sub_188D75E50(v94);
LABEL_404:
                                  if (v19 <= *(v6 + 16))
                                  {
                                    if (v19 > 3)
                                    {
                                      v261 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                      v262 = (v6 + 48);
                                      v263 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                      do
                                      {
                                        v264 = vmulq_n_f64(*v262, v353);
                                        v262[-1] = vmulq_n_f64(v262[-1], v353);
                                        *v262 = v264;
                                        v262 += 2;
                                        v263 -= 4;
                                      }

                                      while (v263);
                                      if (v19 == v261)
                                      {
LABEL_412:

                                        v94 = *(v6 + 16);
                                        if (!v94)
                                        {
                                          v94 = v6;
                                          goto LABEL_445;
                                        }

                                        v145 = v6;
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          v267 = *(v6 + 16);
                                          if (v267)
                                          {
                                            goto LABEL_415;
                                          }

LABEL_637:
                                          __break(1u);
LABEL_638:
                                          v94 = sub_188D75E50(v145);
LABEL_229:
                                          if (v19 <= *(v94 + 16))
                                          {
                                            if (v19 > 3)
                                            {
                                              v153 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                              v269 = (v94 + 48);
                                              v270 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                              do
                                              {
                                                v271 = vmulq_n_f64(*v269, v353);
                                                v269[-1] = vmulq_n_f64(v269[-1], v353);
                                                *v269 = v271;
                                                v269 += 2;
                                                v270 -= 4;
                                              }

                                              while (v270);
                                              if (v19 == v153)
                                              {
                                                goto LABEL_536;
                                              }
                                            }

                                            else
                                            {
                                              v153 = 0;
                                            }

                                            v272 = v19 - v153;
                                            v273 = (v94 + 8 * v153 + 32);
                                            do
                                            {
                                              *v273 = v353 * *v273;
                                              ++v273;
                                              --v272;
                                            }

                                            while (v272);
                                            goto LABEL_536;
                                          }

                                          __break(1u);
                                          goto LABEL_640;
                                        }

LABEL_636:
                                        v145 = sub_188D75E50(v6);
                                        v267 = *(v145 + 2);
                                        if (v267)
                                        {
LABEL_415:
                                          if (v267 > v94 - 1)
                                          {
                                            if (swift_isUniquelyReferenced_nonNull_native())
                                            {
                                              goto LABEL_417;
                                            }

                                            goto LABEL_641;
                                          }

LABEL_640:
                                          __break(1u);
LABEL_641:
                                          v145 = sub_188D75E50(v145);
LABEL_417:
                                          if (v94 > 3)
                                          {
                                            v268 = v94 & 0x7FFFFFFFFFFFFFFCLL;
                                            v274 = (v145 + 48);
                                            v275 = v94 & 0x7FFFFFFFFFFFFFFCLL;
                                            do
                                            {
                                              v276 = vmulq_n_f64(*v274, v352);
                                              v274[-1] = vmulq_n_f64(v274[-1], v352);
                                              *v274 = v276;
                                              v274 += 2;
                                              v275 -= 4;
                                            }

                                            while (v275);
                                            if (v94 == v268)
                                            {
LABEL_431:

                                              v279 = *(v145 + 2);
                                              if (!v279)
                                              {
                                                v94 = v145;
                                                goto LABEL_445;
                                              }

                                              v94 = v145;
                                              if (swift_isUniquelyReferenced_nonNull_native())
                                              {
                                                v280 = *(v145 + 2);
                                                if (v280)
                                                {
                                                  goto LABEL_434;
                                                }
                                              }

                                              else
                                              {
                                                v94 = sub_188D75E50(v145);
                                                v280 = *(v94 + 16);
                                                if (v280)
                                                {
LABEL_434:
                                                  if (v280 > v279 - 1)
                                                  {
                                                    if (swift_isUniquelyReferenced_nonNull_native())
                                                    {
                                                      goto LABEL_436;
                                                    }

                                                    goto LABEL_658;
                                                  }

LABEL_657:
                                                  __break(1u);
LABEL_658:
                                                  v94 = sub_188D75E50(v94);
LABEL_436:
                                                  if (v279 > 3)
                                                  {
                                                    v281 = v279 & 0x7FFFFFFFFFFFFFFCLL;
                                                    v282 = (v94 + 48);
                                                    v283 = v279 & 0x7FFFFFFFFFFFFFFCLL;
                                                    do
                                                    {
                                                      v284 = vmulq_n_f64(*v282, v351);
                                                      v282[-1] = vmulq_n_f64(v282[-1], v351);
                                                      *v282 = v284;
                                                      v282 += 2;
                                                      v283 -= 4;
                                                    }

                                                    while (v283);
                                                    if (v279 == v281)
                                                    {
                                                      goto LABEL_444;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v281 = 0;
                                                  }

                                                  v285 = v279 - v281;
                                                  v286 = (v94 + 8 * v281 + 32);
                                                  do
                                                  {
                                                    *v286 = v351 * *v286;
                                                    ++v286;
                                                    --v285;
                                                  }

                                                  while (v285);
LABEL_444:

LABEL_445:
                                                  sub_188D85564(v10, v94);
                                                  v145 = v287;

                                                  v94 = *(v145 + 2);
                                                  if (!v94)
                                                  {
                                                    v10 = v145;
                                                    goto LABEL_459;
                                                  }

                                                  v10 = v145;
                                                  if (swift_isUniquelyReferenced_nonNull_native())
                                                  {
                                                    v288 = *(v145 + 2);
                                                    if (v288)
                                                    {
                                                      goto LABEL_448;
                                                    }

                                                    goto LABEL_612;
                                                  }

LABEL_611:
                                                  v10 = sub_188D75E50(v145);
                                                  v288 = *(v10 + 16);
                                                  if (v288)
                                                  {
LABEL_448:
                                                    if (v288 > v94 - 1)
                                                    {
                                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                      {
                                                        goto LABEL_616;
                                                      }

                                                      while (1)
                                                      {
                                                        if (v94 > 3)
                                                        {
                                                          v289 = v94 & 0x7FFFFFFFFFFFFFFCLL;
                                                          v290 = (v10 + 48);
                                                          v291 = v94 & 0x7FFFFFFFFFFFFFFCLL;
                                                          do
                                                          {
                                                            v292 = vmulq_n_f64(*v290, a4);
                                                            v290[-1] = vmulq_n_f64(v290[-1], a4);
                                                            *v290 = v292;
                                                            v290 += 2;
                                                            v291 -= 4;
                                                          }

                                                          while (v291);
                                                          if (v94 == v289)
                                                          {
                                                            goto LABEL_458;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v289 = 0;
                                                        }

                                                        v293 = v94 - v289;
                                                        v294 = (v10 + 8 * v289 + 32);
                                                        do
                                                        {
                                                          *v294 = a4 * *v294;
                                                          ++v294;
                                                          --v293;
                                                        }

                                                        while (v293);
LABEL_458:

LABEL_459:
                                                        v94 = *(v13 + 16);

                                                        v295 = v13;
                                                        if (!v94)
                                                        {
                                                          goto LABEL_479;
                                                        }

                                                        v295 = v13;
                                                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                        {
LABEL_614:
                                                          v295 = sub_188D75E50(v13);
                                                          v296 = *(v295 + 2);
                                                          if (!v296)
                                                          {
                                                            goto LABEL_615;
                                                          }

LABEL_462:
                                                          if (v296 <= v94 - 1)
                                                          {
                                                            __break(1u);
                                                          }

                                                          else if (swift_isUniquelyReferenced_nonNull_native())
                                                          {
                                                            goto LABEL_464;
                                                          }

                                                          v295 = sub_188D75E50(v295);
LABEL_464:
                                                          if (v94 <= 3)
                                                          {
                                                            v297 = 0;
                                                            goto LABEL_469;
                                                          }

                                                          v297 = v94 & 0x7FFFFFFFFFFFFFFCLL;
                                                          v298 = (v295 + 48);
                                                          v299 = v94 & 0x7FFFFFFFFFFFFFFCLL;
                                                          do
                                                          {
                                                            v300 = vmulq_n_f64(*v298, v352);
                                                            v298[-1] = vmulq_n_f64(v298[-1], v352);
                                                            *v298 = v300;
                                                            v298 += 2;
                                                            v299 -= 4;
                                                          }

                                                          while (v299);
                                                          if (v94 != v297)
                                                          {
LABEL_469:
                                                            v301 = v94 - v297;
                                                            v302 = &v295[8 * v297 + 32];
                                                            do
                                                            {
                                                              *v302 = v352 * *v302;
                                                              ++v302;
                                                              --v301;
                                                            }

                                                            while (v301);
                                                          }

                                                          v303 = *(v13 + 16);
                                                          if (!v303)
                                                          {
LABEL_479:

                                                            v304 = v13;
                                                            goto LABEL_485;
                                                          }

                                                          v304 = v13;
                                                          if (swift_isUniquelyReferenced_nonNull_native())
                                                          {
                                                            v305 = *(v13 + 16);
                                                            if (v305)
                                                            {
                                                              goto LABEL_474;
                                                            }

LABEL_643:
                                                            __break(1u);
                                                            goto LABEL_644;
                                                          }

                                                          v304 = sub_188D75E50(v13);
                                                          v305 = *(v304 + 2);
                                                          if (!v305)
                                                          {
                                                            goto LABEL_643;
                                                          }

LABEL_474:
                                                          if (v303 < 1)
                                                          {
LABEL_644:
                                                            __break(1u);
                                                          }

                                                          else if (v305 > v303 - 1)
                                                          {
                                                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                            {
                                                              goto LABEL_648;
                                                            }

                                                            while (v303 > 3)
                                                            {
                                                              v306 = v303 & 0x7FFFFFFFFFFFFFFCLL;
                                                              v307 = (v304 + 48);
                                                              v308 = v303 & 0x7FFFFFFFFFFFFFFCLL;
                                                              do
                                                              {
                                                                v309 = vmulq_n_f64(*v307, v355);
                                                                v307[-1] = vmulq_n_f64(v307[-1], v355);
                                                                *v307 = v309;
                                                                v307 += 2;
                                                                v308 -= 4;
                                                              }

                                                              while (v308);
                                                              if (v303 != v306)
                                                              {
                                                                goto LABEL_483;
                                                              }

LABEL_485:
                                                              sub_188D85564(v304, v14);
                                                              v303 = v312;

                                                              v313 = *(v303 + 16);
                                                              if (!v313)
                                                              {
                                                                goto LABEL_511;
                                                              }

                                                              v304 = v303;
                                                              if (swift_isUniquelyReferenced_nonNull_native())
                                                              {
                                                                v314 = *(v303 + 16);
                                                                if (!v314)
                                                                {
                                                                  goto LABEL_620;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v304 = sub_188D75E50(v303);
                                                                v314 = *(v304 + 2);
                                                                if (!v314)
                                                                {
LABEL_620:
                                                                  __break(1u);
                                                                  goto LABEL_621;
                                                                }
                                                              }

                                                              if (v314 > v313 - 1)
                                                              {
                                                                if (swift_isUniquelyReferenced_nonNull_native())
                                                                {
                                                                  goto LABEL_490;
                                                                }

                                                                goto LABEL_622;
                                                              }

LABEL_621:
                                                              __break(1u);
LABEL_622:
                                                              v304 = sub_188D75E50(v304);
LABEL_490:
                                                              if (v313 <= 3)
                                                              {
                                                                v315 = 0;
LABEL_495:
                                                                v319 = v313 - v315;
                                                                v320 = &v304[8 * v315 + 32];
                                                                do
                                                                {
                                                                  *v320 = v353 * *v320;
                                                                  ++v320;
                                                                  --v319;
                                                                }

                                                                while (v319);
                                                                goto LABEL_497;
                                                              }

                                                              v315 = v313 & 0x7FFFFFFFFFFFFFFCLL;
                                                              v316 = (v304 + 48);
                                                              v317 = v313 & 0x7FFFFFFFFFFFFFFCLL;
                                                              do
                                                              {
                                                                v318 = vmulq_n_f64(*v316, v353);
                                                                v316[-1] = vmulq_n_f64(v316[-1], v353);
                                                                *v316 = v318;
                                                                v316 += 2;
                                                                v317 -= 4;
                                                              }

                                                              while (v317);
                                                              if (v313 != v315)
                                                              {
                                                                goto LABEL_495;
                                                              }

LABEL_497:

                                                              v19 = *(v304 + 2);
                                                              if (!v19)
                                                              {
                                                                v303 = v304;
                                                                goto LABEL_511;
                                                              }

                                                              v303 = v304;
                                                              if (swift_isUniquelyReferenced_nonNull_native())
                                                              {
                                                                v321 = *(v304 + 2);
                                                                if (v321)
                                                                {
                                                                  goto LABEL_500;
                                                                }
                                                              }

                                                              else
                                                              {
LABEL_646:
                                                                v303 = sub_188D75E50(v304);
                                                                v321 = *(v303 + 16);
                                                                if (v321)
                                                                {
LABEL_500:
                                                                  if (v321 <= v19 - 1)
                                                                  {
                                                                    __break(1u);
                                                                  }

                                                                  else if (swift_isUniquelyReferenced_nonNull_native())
                                                                  {
                                                                    goto LABEL_502;
                                                                  }

                                                                  v303 = sub_188D75E50(v303);
LABEL_502:
                                                                  if (v19 <= 3)
                                                                  {
                                                                    v322 = 0;
                                                                    goto LABEL_508;
                                                                  }

                                                                  v322 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  v323 = (v303 + 48);
                                                                  v324 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  do
                                                                  {
                                                                    v325 = vmulq_n_f64(*v323, v350);
                                                                    v323[-1] = vmulq_n_f64(v323[-1], v350);
                                                                    *v323 = v325;
                                                                    v323 += 2;
                                                                    v324 -= 4;
                                                                  }

                                                                  while (v324);
                                                                  if (v19 != v322)
                                                                  {
LABEL_508:
                                                                    v326 = v19 - v322;
                                                                    v327 = (v303 + 8 * v322 + 32);
                                                                    do
                                                                    {
                                                                      *v327 = v350 * *v327;
                                                                      ++v327;
                                                                      --v326;
                                                                    }

                                                                    while (v326);
                                                                  }

LABEL_511:
                                                                  sub_188D85564(v295, v303);
                                                                  v94 = v328;

                                                                  v329 = *(v94 + 16);
                                                                  if (!v329)
                                                                  {
                                                                    goto LABEL_537;
                                                                  }

                                                                  v145 = v94;
                                                                  if (swift_isUniquelyReferenced_nonNull_native())
                                                                  {
                                                                    v330 = *(v94 + 16);
                                                                    if (v330)
                                                                    {
                                                                      goto LABEL_514;
                                                                    }

LABEL_624:
                                                                    __break(1u);
                                                                    goto LABEL_625;
                                                                  }

                                                                  v145 = sub_188D75E50(v94);
                                                                  v330 = *(v145 + 2);
                                                                  if (!v330)
                                                                  {
                                                                    goto LABEL_624;
                                                                  }

LABEL_514:
                                                                  if (v330 <= v329 - 1)
                                                                  {
LABEL_625:
                                                                    __break(1u);
                                                                  }

                                                                  else if (swift_isUniquelyReferenced_nonNull_native())
                                                                  {
                                                                    goto LABEL_516;
                                                                  }

                                                                  v145 = sub_188D75E50(v145);
LABEL_516:
                                                                  v331 = -v355;
                                                                  if (v329 <= 3)
                                                                  {
                                                                    v332 = 0;
                                                                    goto LABEL_521;
                                                                  }

                                                                  v332 = v329 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  v333 = (v145 + 48);
                                                                  v334 = v329 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  do
                                                                  {
                                                                    v335 = vmulq_n_f64(*v333, v331);
                                                                    v333[-1] = vmulq_n_f64(v333[-1], v331);
                                                                    *v333 = v335;
                                                                    v333 += 2;
                                                                    v334 -= 4;
                                                                  }

                                                                  while (v334);
                                                                  if (v329 != v332)
                                                                  {
LABEL_521:
                                                                    v336 = v329 - v332;
                                                                    v337 = &v145[8 * v332 + 32];
                                                                    do
                                                                    {
                                                                      *v337 = *v337 * v331;
                                                                      ++v337;
                                                                      --v336;
                                                                    }

                                                                    while (v336);
                                                                  }

                                                                  v338 = *(v145 + 2);
                                                                  if (v338)
                                                                  {

                                                                    v94 = v145;
                                                                    if (swift_isUniquelyReferenced_nonNull_native())
                                                                    {
                                                                      v339 = *(v145 + 2);
                                                                      if (v339)
                                                                      {
                                                                        goto LABEL_526;
                                                                      }

LABEL_652:
                                                                      __break(1u);
                                                                      goto LABEL_653;
                                                                    }

                                                                    v94 = sub_188D75E50(v145);
                                                                    v339 = *(v94 + 16);
                                                                    if (!v339)
                                                                    {
                                                                      goto LABEL_652;
                                                                    }

LABEL_526:
                                                                    if (v339 <= v338 - 1)
                                                                    {
LABEL_653:
                                                                      __break(1u);
                                                                    }

                                                                    else if (swift_isUniquelyReferenced_nonNull_native())
                                                                    {
                                                                      goto LABEL_528;
                                                                    }

                                                                    v94 = sub_188D75E50(v94);
LABEL_528:
                                                                    if (v338 > 3)
                                                                    {
                                                                      v340 = v338 & 0x7FFFFFFFFFFFFFFCLL;
                                                                      v341 = (v94 + 48);
                                                                      v342 = v338 & 0x7FFFFFFFFFFFFFFCLL;
                                                                      do
                                                                      {
                                                                        v343 = vmulq_n_f64(*v341, a4);
                                                                        v341[-1] = vmulq_n_f64(v341[-1], a4);
                                                                        *v341 = v343;
                                                                        v341 += 2;
                                                                        v342 -= 4;
                                                                      }

                                                                      while (v342);
                                                                      if (v338 == v340)
                                                                      {
                                                                        goto LABEL_536;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v340 = 0;
                                                                    }

                                                                    v344 = v338 - v340;
                                                                    v345 = (v94 + 8 * v340 + 32);
                                                                    do
                                                                    {
                                                                      *v345 = a4 * *v345;
                                                                      ++v345;
                                                                      --v344;
                                                                    }

                                                                    while (v344);
                                                                    goto LABEL_536;
                                                                  }

LABEL_530:
                                                                  v94 = v145;
                                                                  goto LABEL_537;
                                                                }
                                                              }

                                                              __break(1u);
LABEL_648:
                                                              v304 = sub_188D75E50(v304);
                                                            }

                                                            v306 = 0;
LABEL_483:
                                                            v310 = v303 - v306;
                                                            v311 = 8 * v306 + 32;
                                                            do
                                                            {
                                                              *&v304[v311] = v355 * *&v304[v311];
                                                              v311 += 8;
                                                              --v310;
                                                            }

                                                            while (v310);
                                                            goto LABEL_485;
                                                          }

                                                          __break(1u);
                                                          goto LABEL_646;
                                                        }

                                                        v296 = *(v13 + 16);
                                                        if (v296)
                                                        {
                                                          goto LABEL_462;
                                                        }

LABEL_615:
                                                        __break(1u);
LABEL_616:
                                                        v10 = sub_188D75E50(v10);
                                                      }
                                                    }

LABEL_613:
                                                    __break(1u);
                                                    goto LABEL_614;
                                                  }

LABEL_612:
                                                  __break(1u);
                                                  goto LABEL_613;
                                                }
                                              }

                                              __break(1u);
                                              goto LABEL_657;
                                            }
                                          }

                                          else
                                          {
                                            v268 = 0;
                                          }

                                          v277 = v94 - v268;
                                          v278 = &v145[8 * v268 + 32];
                                          do
                                          {
                                            *v278 = v352 * *v278;
                                            ++v278;
                                            --v277;
                                          }

                                          while (v277);
                                          goto LABEL_431;
                                        }

                                        goto LABEL_637;
                                      }
                                    }

                                    else
                                    {
                                      v261 = 0;
                                    }

                                    v265 = v19 - v261;
                                    v266 = (v6 + 8 * v261 + 32);
                                    do
                                    {
                                      *v266 = v353 * *v266;
                                      ++v266;
                                      --v265;
                                    }

                                    while (v265);
                                    goto LABEL_412;
                                  }

                                  __break(1u);
                                  goto LABEL_609;
                                }

                                if (v19 > 3)
                                {
                                  v138 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                  v139 = (v137 + 48);
                                  v140 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                  do
                                  {
                                    v141 = vmulq_n_f64(*v139, a4);
                                    v139[-1] = vmulq_n_f64(v139[-1], a4);
                                    *v139 = v141;
                                    v139 += 2;
                                    v140 -= 4;
                                  }

                                  while (v140);
                                  if (v19 == v138)
                                  {
                                    goto LABEL_216;
                                  }
                                }

                                else
                                {
                                  v138 = 0;
                                }

                                v142 = v19 - v138;
                                v143 = &v137[8 * v138 + 32];
                                do
                                {
                                  *v143 = *v143 * a4;
                                  ++v143;
                                  --v142;
                                }

                                while (v142);
LABEL_216:

LABEL_217:
                                sub_188D85564(v13, v137);
                                v94 = v144;

                                v19 = *(v94 + 16);
                                if (!v19)
                                {
                                  goto LABEL_537;
                                }

                                v145 = v94;
                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
LABEL_219:
                                  if (v19 > *(v145 + 2))
                                  {
                                    __break(1u);
                                    goto LABEL_611;
                                  }

                                  v146 = -v355;
                                  if (v19 > 3)
                                  {
                                    v147 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                    v148 = (v145 + 48);
                                    v149 = v19 & 0x7FFFFFFFFFFFFFFCLL;
                                    do
                                    {
                                      v150 = vmulq_n_f64(*v148, v146);
                                      v148[-1] = vmulq_n_f64(v148[-1], v146);
                                      *v148 = v150;
                                      v148 += 2;
                                      v149 -= 4;
                                    }

                                    while (v149);
                                    if (v19 == v147)
                                    {
LABEL_227:

                                      v19 = *(v145 + 2);
                                      if (!v19)
                                      {
                                        goto LABEL_530;
                                      }

                                      v94 = v145;
                                      if (swift_isUniquelyReferenced_nonNull_native())
                                      {
                                        goto LABEL_229;
                                      }

                                      goto LABEL_638;
                                    }
                                  }

                                  else
                                  {
                                    v147 = 0;
                                  }

                                  v151 = v19 - v147;
                                  v152 = &v145[8 * v147 + 32];
                                  do
                                  {
                                    *v152 = *v152 * v146;
                                    ++v152;
                                    --v151;
                                  }

                                  while (v151);
                                  goto LABEL_227;
                                }

LABEL_609:
                                v145 = sub_188D75E50(v94);
                                goto LABEL_219;
                              }

LABEL_605:
                              v137 = sub_188D75E50(v94);
                              goto LABEL_207;
                            }
                          }

                          else
                          {
                            v130 = 0;
                          }

                          v134 = v19 - v130;
                          v135 = 8 * v130 + 32;
                          do
                          {
                            *&v129[v135] = v355 * *&v129[v135];
                            v135 += 8;
                            --v134;
                          }

                          while (v134);
                          goto LABEL_205;
                        }

LABEL_603:
                        v129 = sub_188D75E50(v13);
                        goto LABEL_197;
                      }

LABEL_599:
                      v10 = sub_188D75E50(v94);
                      goto LABEL_185;
                    }
                  }

                  else
                  {
                    v116 = 0;
                  }

                  v120 = v19 - v116;
                  v121 = 8 * v116 + 32;
                  do
                  {
                    *&v115[v121] = v355 * *&v115[v121];
                    v121 += 8;
                    --v120;
                  }

                  while (v120);
                  goto LABEL_183;
                }

LABEL_595:
                v115 = sub_188D75E50(v13);
                goto LABEL_175;
              }

LABEL_593:
              v5 = sub_188D75E50(v21);
              goto LABEL_163;
            }

LABEL_589:
            v94 = sub_188D75E50(v5);
            goto LABEL_151;
          }
        }

        else
        {
          v22 = 0;
        }

        v99 = v19 - v22;
        v100 = 8 * v22 + 32;
        do
        {
          *&v21[v100] = v355 * *&v21[v100];
          v100 += 8;
          --v99;
        }

        while (v99);
        goto LABEL_149;
      }
    }

    else
    {
      v351 = sqrt(v16 * v16 - v15 * v15);
      a3 = v351 * a4;
      v352 = cosh(v351 * a4);
      v19 = *(v13 + 16);

      v5 = v13;
      if (!v19)
      {
        goto LABEL_143;
      }

      v5 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_188D75E50(v13);
      }

      if (v19 <= *(v5 + 2))
      {
        if (v19 > 3)
        {
          v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
          v89 = (v5 + 48);
          v90 = v19 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v91 = vmulq_n_f64(*v89, v352);
            v89[-1] = vmulq_n_f64(v89[-1], v352);
            *v89 = v91;
            v89 += 2;
            v90 -= 4;
          }

          while (v90);
          if (v19 == v20)
          {
LABEL_138:
            v19 = *(v13 + 16);
            if (v19)
            {

              v94 = v13;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_140;
              }

              goto LABEL_628;
            }

LABEL_143:

            v94 = v13;
            goto LABEL_335;
          }
        }

        else
        {
          v20 = 0;
        }

        v92 = v19 - v20;
        v93 = &v5[8 * v20 + 32];
        do
        {
          *v93 = v352 * *v93;
          ++v93;
          --v92;
        }

        while (v92);
        goto LABEL_138;
      }

      __break(1u);
    }

    v21 = sub_188D75E50(v13);
    goto LABEL_19;
  }

  v351 = sqrt(v15 * v15 - v16 * v16);
  a3 = v351 * a4;
  v352 = cos(v351 * a4);
  v17 = *(v13 + 16);

  v5 = v13;
  if (!v17)
  {
LABEL_33:

    v28 = v13;
    goto LABEL_39;
  }

  v5 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_188D75E50(v13);
  }

  if (v17 > *(v5 + 2))
  {
    __break(1u);
LABEL_540:
    v28 = sub_188D75E50(v10);
    goto LABEL_41;
  }

  if (v17 <= 3)
  {
    v18 = 0;
LABEL_25:
    v26 = v17 - v18;
    v27 = &v5[8 * v18 + 32];
    do
    {
      *v27 = v352 * *v27;
      ++v27;
      --v26;
    }

    while (v26);
    goto LABEL_27;
  }

  v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v23 = (v5 + 48);
  v24 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v25 = vmulq_n_f64(*v23, v352);
    v23[-1] = vmulq_n_f64(v23[-1], v352);
    *v23 = v25;
    v23 += 2;
    v24 -= 4;
  }

  while (v24);
  if (v17 != v18)
  {
    goto LABEL_25;
  }

LABEL_27:
  v17 = *(v13 + 16);
  if (!v17)
  {
    goto LABEL_33;
  }

  v28 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_188D75E50(v13);
  }

  if (v17 > *(v28 + 16))
  {
    __break(1u);
LABEL_565:
    v10 = sub_188D75E50(v28);
    goto LABEL_52;
  }

  if (v17 <= 3)
  {
    v29 = 0;
LABEL_37:
    v33 = v17 - v29;
    v34 = 8 * v29 + 32;
    do
    {
      *(v28 + v34) = v355 * *(v28 + v34);
      v34 += 8;
      --v33;
    }

    while (v33);
    goto LABEL_39;
  }

  v29 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = (v28 + 48);
  v31 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v32 = vmulq_n_f64(*v30, v355);
    v30[-1] = vmulq_n_f64(v30[-1], v355);
    *v30 = v32;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  if (v17 != v29)
  {
    goto LABEL_37;
  }

LABEL_39:
  sub_188D85564(v28, v14);
  v10 = v35;

  v17 = *(v10 + 16);
  v353 = 1.0 / v351;
  if (!v17)
  {
    v350 = sin(a3);
    goto LABEL_62;
  }

  v28 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_540;
  }

LABEL_41:
  if (v17 > *(v28 + 16))
  {
    __break(1u);
LABEL_542:
    v5 = sub_188D75E50(v28);
    goto LABEL_64;
  }

  if (v17 <= 3)
  {
    v36 = 0;
LABEL_48:
    v40 = v17 - v36;
    v41 = (v28 + 8 * v36 + 32);
    do
    {
      *v41 = v353 * *v41;
      ++v41;
      --v40;
    }

    while (v40);
    goto LABEL_50;
  }

  v36 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v37 = (v28 + 48);
  v38 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v39 = vmulq_n_f64(*v37, v353);
    v37[-1] = vmulq_n_f64(v37[-1], v353);
    *v37 = v39;
    v37 += 2;
    v38 -= 4;
  }

  while (v38);
  if (v17 != v36)
  {
    goto LABEL_48;
  }

LABEL_50:

  v17 = *(v28 + 16);
  v350 = sin(a3);
  if (!v17)
  {
    v10 = v28;
    goto LABEL_62;
  }

  v10 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_565;
  }

LABEL_52:
  if (v17 > *(v10 + 16))
  {
    __break(1u);
LABEL_567:
    v10 = sub_188D75E50(v28);
    goto LABEL_86;
  }

  if (v17 > 3)
  {
    v42 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    v43 = (v10 + 48);
    v44 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = vmulq_n_f64(*v43, v350);
      v43[-1] = vmulq_n_f64(v43[-1], v350);
      *v43 = v45;
      v43 += 2;
      v44 -= 4;
    }

    while (v44);
    if (v17 == v42)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v42 = 0;
  }

  v46 = v17 - v42;
  v47 = (v10 + 8 * v42 + 32);
  do
  {
    *v47 = v350 * *v47;
    ++v47;
    --v46;
  }

  while (v46);
LABEL_61:

LABEL_62:
  sub_188D85564(v5, v10);
  v28 = v48;

  a4 = exp(-(v355 * a4));
  v17 = *(v28 + 16);
  if (!v17)
  {
    v5 = v28;
    goto LABEL_74;
  }

  v5 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_542;
  }

LABEL_64:
  if (v17 > *(v5 + 2))
  {
    __break(1u);
LABEL_544:
    v28 = sub_188D75E50(v13);
    goto LABEL_76;
  }

  if (v17 > 3)
  {
    v49 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    v50 = (v5 + 48);
    v51 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v52 = vmulq_n_f64(*v50, a4);
      v50[-1] = vmulq_n_f64(v50[-1], a4);
      *v50 = v52;
      v50 += 2;
      v51 -= 4;
    }

    while (v51);
    if (v17 == v49)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v49 = 0;
  }

  v53 = v17 - v49;
  v54 = &v5[8 * v49 + 32];
  do
  {
    *v54 = a4 * *v54;
    ++v54;
    --v53;
  }

  while (v53);
LABEL_73:

LABEL_74:
  v17 = *(v13 + 16);

  v10 = v13;
  if (!v17)
  {
    goto LABEL_90;
  }

  v28 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_544;
  }

LABEL_76:
  if (v17 > *(v28 + 16))
  {
    __break(1u);
LABEL_546:
    v63 = sub_188D75E50(v28);
    goto LABEL_108;
  }

  v55 = -v350;
  if (v17 <= 3)
  {
    v56 = 0;
LABEL_82:
    v60 = v17 - v56;
    v61 = (v28 + 8 * v56 + 32);
    do
    {
      *v61 = *v61 * v55;
      ++v61;
      --v60;
    }

    while (v60);
    goto LABEL_84;
  }

  v56 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v57 = (v28 + 48);
  v58 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v59 = vmulq_n_f64(*v57, v55);
    v57[-1] = vmulq_n_f64(v57[-1], v55);
    *v57 = v59;
    v57 += 2;
    v58 -= 4;
  }

  while (v58);
  if (v17 != v56)
  {
    goto LABEL_82;
  }

LABEL_84:
  v17 = *(v28 + 16);
  if (!v17)
  {
    v10 = v28;
    v17 = *(v13 + 16);
    if (v17)
    {
      goto LABEL_97;
    }

    goto LABEL_90;
  }

  v10 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_567;
  }

LABEL_86:
  if (v17 <= *(v10 + 16))
  {
    if (v17 > 3)
    {
      v62 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v64 = (v10 + 48);
      v65 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v66 = vmulq_n_f64(*v64, v351);
        v64[-1] = vmulq_n_f64(v64[-1], v351);
        *v64 = v66;
        v64 += 2;
        v65 -= 4;
      }

      while (v65);
      if (v17 == v62)
      {
LABEL_96:

        v17 = *(v13 + 16);
        if (v17)
        {
LABEL_97:

          v63 = v13;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_98;
          }

          goto LABEL_569;
        }

LABEL_90:

        v63 = v13;
        goto LABEL_106;
      }
    }

    else
    {
      v62 = 0;
    }

    v67 = v17 - v62;
    v68 = (v10 + 8 * v62 + 32);
    do
    {
      *v68 = v351 * *v68;
      ++v68;
      --v67;
    }

    while (v67);
    goto LABEL_96;
  }

  __break(1u);
LABEL_569:
  v63 = sub_188D75E50(v13);
LABEL_98:
  if (v17 > *(v63 + 2))
  {
    __break(1u);
LABEL_571:
    v6 = sub_188D75E50(v63);
    goto LABEL_118;
  }

  if (v17 <= 3)
  {
    v69 = 0;
LABEL_104:
    v73 = v17 - v69;
    v74 = 8 * v69 + 32;
    do
    {
      *&v63[v74] = v355 * *&v63[v74];
      v74 += 8;
      --v73;
    }

    while (v73);
    goto LABEL_106;
  }

  v69 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v70 = (v63 + 48);
  v71 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v72 = vmulq_n_f64(*v70, v355);
    v70[-1] = vmulq_n_f64(v70[-1], v355);
    *v70 = v72;
    v70 += 2;
    v71 -= 4;
  }

  while (v71);
  if (v17 != v69)
  {
    goto LABEL_104;
  }

LABEL_106:
  sub_188D85564(v63, v14);
  v28 = v75;

  v17 = *(v28 + 16);
  if (!v17)
  {
    goto LABEL_239;
  }

  v63 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_546;
  }

LABEL_108:
  if (v17 > *(v63 + 2))
  {
    __break(1u);
    goto LABEL_548;
  }

  if (v17 <= 3)
  {
    v76 = 0;
LABEL_114:
    v80 = v17 - v76;
    v81 = &v63[8 * v76 + 32];
    do
    {
      *v81 = v353 * *v81;
      ++v81;
      --v80;
    }

    while (v80);
    goto LABEL_116;
  }

  v76 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v77 = (v63 + 48);
  v78 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v79 = vmulq_n_f64(*v77, v353);
    v77[-1] = vmulq_n_f64(v77[-1], v353);
    *v77 = v79;
    v77 += 2;
    v78 -= 4;
  }

  while (v78);
  if (v17 != v76)
  {
    goto LABEL_114;
  }

LABEL_116:

  v17 = *(v63 + 2);
  if (!v17)
  {
    v28 = v63;
    goto LABEL_239;
  }

  v6 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_571;
  }

LABEL_118:
  if (v17 > *(v6 + 16))
  {
    __break(1u);
    goto LABEL_573;
  }

  if (v17 <= 3)
  {
    v82 = 0;
LABEL_125:
    v86 = v17 - v82;
    v87 = (v6 + 8 * v82 + 32);
    do
    {
      *v87 = v352 * *v87;
      ++v87;
      --v86;
    }

    while (v86);
    goto LABEL_127;
  }

  v82 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v83 = (v6 + 48);
  v84 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v85 = vmulq_n_f64(*v83, v352);
    v83[-1] = vmulq_n_f64(v83[-1], v352);
    *v83 = v85;
    v83 += 2;
    v84 -= 4;
  }

  while (v84);
  if (v17 != v82)
  {
    goto LABEL_125;
  }

LABEL_127:

  v19 = *(v6 + 16);
  if (!v19)
  {
    v28 = v6;
    goto LABEL_239;
  }

  v28 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_188D75E50(v6);
  }

  if (v19 > *(v28 + 16))
  {
    __break(1u);
LABEL_628:
    v94 = sub_188D75E50(v13);
LABEL_140:
    if (v19 > *(v94 + 16))
    {
      __break(1u);
      goto LABEL_630;
    }

    if (v19 > 3)
    {
      v95 = v19 & 0xFFFFFFFFFFFFFFFCLL;
      v216 = (v94 + 48);
      v217 = v19 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v218 = vmulq_n_f64(*v216, v355);
        v216[-1] = vmulq_n_f64(v216[-1], v355);
        *v216 = v218;
        v216 += 2;
        v217 -= 4;
      }

      while (v217);
      if (v19 == v95)
      {
LABEL_335:
        sub_188D85564(v94, v14);
        v21 = v221;

        v19 = *(v21 + 2);
        v353 = 1.0 / v351;
        if (!v19)
        {
          v350 = sinh(a3);
          goto LABEL_358;
        }

        v94 = v21;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_337;
        }

        goto LABEL_591;
      }
    }

    else
    {
      v95 = 0;
    }

    v219 = v19 - v95;
    v220 = 8 * v95 + 32;
    do
    {
      *(v94 + v220) = v355 * *(v94 + v220);
      v220 += 8;
      --v219;
    }

    while (v219);
    goto LABEL_335;
  }

  if (v19 > 3)
  {
    v88 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    v154 = (v28 + 48);
    v155 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v156 = vmulq_n_f64(*v154, v351);
      v154[-1] = vmulq_n_f64(v154[-1], v351);
      *v154 = v156;
      v154 += 2;
      v155 -= 4;
    }

    while (v155);
    if (v19 == v88)
    {
      goto LABEL_238;
    }
  }

  else
  {
    v88 = 0;
  }

  v157 = v19 - v88;
  v158 = (v28 + 8 * v88 + 32);
  do
  {
    *v158 = v351 * *v158;
    ++v158;
    --v157;
  }

  while (v157);
LABEL_238:

LABEL_239:
  sub_188D85564(v10, v28);
  v63 = v159;

  v17 = *(v63 + 2);
  if (!v17)
  {
    v10 = v63;
    goto LABEL_253;
  }

  v10 = v63;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v160 = *(v63 + 2);
    if (v160)
    {
      goto LABEL_242;
    }

LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

LABEL_548:
  v10 = sub_188D75E50(v63);
  v160 = *(v10 + 16);
  if (!v160)
  {
    goto LABEL_549;
  }

LABEL_242:
  if (v160 <= v17 - 1)
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_553;
  }

  while (1)
  {
    if (v17 > 3)
    {
      v161 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v162 = (v10 + 48);
      v163 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v164 = vmulq_n_f64(*v162, a4);
        v162[-1] = vmulq_n_f64(v162[-1], a4);
        *v162 = v164;
        v162 += 2;
        v163 -= 4;
      }

      while (v163);
      if (v17 == v161)
      {
        goto LABEL_252;
      }
    }

    else
    {
      v161 = 0;
    }

    v165 = v17 - v161;
    v166 = (v10 + 8 * v161 + 32);
    do
    {
      *v166 = a4 * *v166;
      ++v166;
      --v165;
    }

    while (v165);
LABEL_252:

LABEL_253:
    v28 = *(v13 + 16);

    v63 = v13;
    if (!v28)
    {
      goto LABEL_273;
    }

    v63 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v167 = *(v13 + 16);
    if (v167)
    {
      goto LABEL_256;
    }

LABEL_552:
    __break(1u);
LABEL_553:
    v10 = sub_188D75E50(v10);
  }

LABEL_551:
  v63 = sub_188D75E50(v13);
  v167 = *(v63 + 2);
  if (!v167)
  {
    goto LABEL_552;
  }

LABEL_256:
  if (v167 <= v28 - 1)
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_258;
  }

  v63 = sub_188D75E50(v63);
LABEL_258:
  if (v28 <= 3)
  {
    v168 = 0;
    goto LABEL_263;
  }

  v168 = v28 & 0x7FFFFFFFFFFFFFFCLL;
  v169 = (v63 + 48);
  v170 = v28 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v171 = vmulq_n_f64(*v169, v352);
    v169[-1] = vmulq_n_f64(v169[-1], v352);
    *v169 = v171;
    v169 += 2;
    v170 -= 4;
  }

  while (v170);
  if (v28 != v168)
  {
LABEL_263:
    v172 = v28 - v168;
    v173 = &v63[8 * v168 + 32];
    do
    {
      *v173 = v352 * *v173;
      ++v173;
      --v172;
    }

    while (v172);
  }

  v6 = *(v13 + 16);
  if (!v6)
  {
LABEL_273:

    v174 = v13;
    goto LABEL_279;
  }

  v174 = v13;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v175 = *(v13 + 16);
    if (v175)
    {
      goto LABEL_268;
    }

LABEL_574:
    __break(1u);
    goto LABEL_575;
  }

LABEL_573:
  v174 = sub_188D75E50(v13);
  v175 = *(v174 + 2);
  if (!v175)
  {
    goto LABEL_574;
  }

LABEL_268:
  if (v6 < 1)
  {
LABEL_575:
    __break(1u);
    goto LABEL_576;
  }

  if (v175 <= v6 - 1)
  {
LABEL_576:
    __break(1u);
    goto LABEL_577;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_579;
  }

  while (1)
  {
    if (v6 <= 3)
    {
      v176 = 0;
LABEL_277:
      v180 = v6 - v176;
      v181 = 8 * v176 + 32;
      do
      {
        *&v174[v181] = v355 * *&v174[v181];
        v181 += 8;
        --v180;
      }

      while (v180);
      goto LABEL_279;
    }

    v176 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    v177 = (v174 + 48);
    v178 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v179 = vmulq_n_f64(*v177, v355);
      v177[-1] = vmulq_n_f64(v177[-1], v355);
      *v177 = v179;
      v177 += 2;
      v178 -= 4;
    }

    while (v178);
    if (v6 != v176)
    {
      goto LABEL_277;
    }

LABEL_279:
    sub_188D85564(v174, v14);
    v6 = v182;

    v183 = *(v6 + 16);
    if (!v183)
    {
      goto LABEL_305;
    }

    v174 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v184 = *(v6 + 16);
      if (!v184)
      {
        goto LABEL_557;
      }
    }

    else
    {
      v174 = sub_188D75E50(v6);
      v184 = *(v174 + 2);
      if (!v184)
      {
LABEL_557:
        __break(1u);
        goto LABEL_558;
      }
    }

    if (v184 > v183 - 1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_284;
      }

      goto LABEL_559;
    }

LABEL_558:
    __break(1u);
LABEL_559:
    v174 = sub_188D75E50(v174);
LABEL_284:
    if (v183 <= 3)
    {
      v185 = 0;
LABEL_289:
      v189 = v183 - v185;
      v190 = &v174[8 * v185 + 32];
      do
      {
        *v190 = v353 * *v190;
        ++v190;
        --v189;
      }

      while (v189);
      goto LABEL_291;
    }

    v185 = v183 & 0x7FFFFFFFFFFFFFFCLL;
    v186 = (v174 + 48);
    v187 = v183 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v188 = vmulq_n_f64(*v186, v353);
      v186[-1] = vmulq_n_f64(v186[-1], v353);
      *v186 = v188;
      v186 += 2;
      v187 -= 4;
    }

    while (v187);
    if (v183 != v185)
    {
      goto LABEL_289;
    }

LABEL_291:

    v17 = *(v174 + 2);
    if (!v17)
    {
      v6 = v174;
      goto LABEL_305;
    }

    v6 = v174;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v191 = *(v174 + 2);
    if (v191)
    {
      goto LABEL_294;
    }

LABEL_578:
    __break(1u);
LABEL_579:
    v174 = sub_188D75E50(v174);
  }

LABEL_577:
  v6 = sub_188D75E50(v174);
  v191 = *(v6 + 16);
  if (!v191)
  {
    goto LABEL_578;
  }

LABEL_294:
  if (v191 <= v17 - 1)
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_296;
  }

  v6 = sub_188D75E50(v6);
LABEL_296:
  if (v17 <= 3)
  {
    v192 = 0;
    goto LABEL_302;
  }

  v192 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v193 = (v6 + 48);
  v194 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v195 = vmulq_n_f64(*v193, v350);
    v193[-1] = vmulq_n_f64(v193[-1], v350);
    *v193 = v195;
    v193 += 2;
    v194 -= 4;
  }

  while (v194);
  if (v17 != v192)
  {
LABEL_302:
    v196 = v17 - v192;
    v197 = (v6 + 8 * v192 + 32);
    do
    {
      *v197 = v350 * *v197;
      ++v197;
      --v196;
    }

    while (v196);
  }

LABEL_305:
  sub_188D85564(v63, v6);
  v94 = v198;

  v199 = *(v94 + 16);
  if (!v199)
  {
    goto LABEL_537;
  }

  v145 = v94;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v200 = *(v94 + 16);
    if (v200)
    {
      goto LABEL_308;
    }

LABEL_561:
    __break(1u);
    goto LABEL_562;
  }

  v145 = sub_188D75E50(v94);
  v200 = *(v145 + 2);
  if (!v200)
  {
    goto LABEL_561;
  }

LABEL_308:
  if (v200 <= v199 - 1)
  {
LABEL_562:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_310;
  }

  v145 = sub_188D75E50(v145);
LABEL_310:
  v201 = -v355;
  if (v199 <= 3)
  {
    v202 = 0;
    goto LABEL_315;
  }

  v202 = v199 & 0x7FFFFFFFFFFFFFFCLL;
  v203 = (v145 + 48);
  v204 = v199 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v205 = vmulq_n_f64(*v203, v201);
    v203[-1] = vmulq_n_f64(v203[-1], v201);
    *v203 = v205;
    v203 += 2;
    v204 -= 4;
  }

  while (v204);
  if (v199 != v202)
  {
LABEL_315:
    v206 = v199 - v202;
    v207 = &v145[8 * v202 + 32];
    do
    {
      *v207 = *v207 * v201;
      ++v207;
      --v206;
    }

    while (v206);
  }

  v208 = *(v145 + 2);
  if (!v208)
  {
    goto LABEL_530;
  }

  v94 = v145;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v209 = *(v145 + 2);
    if (v209)
    {
      goto LABEL_320;
    }

LABEL_583:
    __break(1u);
    goto LABEL_584;
  }

  v94 = sub_188D75E50(v145);
  v209 = *(v94 + 16);
  if (!v209)
  {
    goto LABEL_583;
  }

LABEL_320:
  if (v209 <= v208 - 1)
  {
LABEL_584:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_322;
  }

  v94 = sub_188D75E50(v94);
LABEL_322:
  if (v208 <= 3)
  {
    v210 = 0;
    goto LABEL_327;
  }

  v210 = v208 & 0x7FFFFFFFFFFFFFFCLL;
  v211 = (v94 + 48);
  v212 = v208 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v213 = vmulq_n_f64(*v211, a4);
    v211[-1] = vmulq_n_f64(v211[-1], a4);
    *v211 = v213;
    v211 += 2;
    v212 -= 4;
  }

  while (v212);
  if (v208 != v210)
  {
LABEL_327:
    v214 = v208 - v210;
    v215 = (v94 + 8 * v210 + 32);
    do
    {
      *v215 = a4 * *v215;
      ++v215;
      --v214;
    }

    while (v214);
  }

LABEL_536:

LABEL_537:
  sub_188D85564(v10, v94);
  v347 = v346;

  sub_188D85564(v5, a1);
  v349 = v348;

  *v4 = v349;
  v4[1] = v347;
  return result;
}