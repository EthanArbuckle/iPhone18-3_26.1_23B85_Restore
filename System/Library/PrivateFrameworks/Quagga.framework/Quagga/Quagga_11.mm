void sub_261548F3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *sub_261548F54(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].i64[1];
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v147 = a2[-1].i32[2];
      v148 = v147 == v9->i32[0];
      v149 = v147 < v9->i32[0];
      if (v148)
      {
        v149 = a2[-1].i32[3] < v9->i32[1];
      }

      if (v149)
      {
        v150 = v9->i64[0];
        goto LABEL_192;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v157 = &v9->u64[1];
      v159 = v9 == a2 || v157 == a2;
      if (a4)
      {
        if (!v159)
        {
          v160 = 0;
          v161 = v9;
          do
          {
            v162 = v161->i32[2];
            v163 = v161->i32[3];
            v164 = v161->i32[0];
            v165 = v161->i32[1];
            v161 = v157;
            v166 = v163 < v165;
            v148 = v162 == v164;
            v167 = v162 < v164;
            if (!v148)
            {
              v166 = v167;
            }

            if (v166)
            {
              v168 = v161->i64[0];
              v169 = HIDWORD(v161->i64[0]);
              v170 = v160;
              while (1)
              {
                v171 = &v9->i8[v170];
                *(&v9->i64[1] + v170) = *(v9->i64 + v170);
                if (!v170)
                {
                  break;
                }

                v172 = *(v171 - 2);
                v173 = *(v171 - 1) > v169;
                v148 = v172 == v168;
                v174 = v172 > v168;
                if (!v148)
                {
                  v173 = v174;
                }

                v170 -= 8;
                if (!v173)
                {
                  v175 = (&v9->i64[1] + v170);
                  goto LABEL_216;
                }
              }

              v175 = v9;
LABEL_216:
              *v175 = v168;
            }

            v157 = &v161->u64[1];
            v160 += 8;
          }

          while (&v161->u64[1] != a2);
        }
      }

      else if (!v159)
      {
        do
        {
          v220 = v7->i32[2];
          v221 = v7->i32[3];
          v222 = v7->i32[0];
          v223 = v7->i32[1];
          v7 = v157;
          v224 = v221 < v223;
          v148 = v220 == v222;
          v225 = v220 < v222;
          if (v148)
          {
            v225 = v224;
          }

          if (v225)
          {
            v226 = v157->i64[0];
            v227 = HIDWORD(v157->i64[0]);
            do
            {
              v228 = v157;
              v229 = v157[-1].i64[1];
              v157 = (v157 - 8);
              *v228 = v229;
              v230 = *(v228 - 4);
              v231 = *(v228 - 3) > v227;
              v148 = v230 == v226;
              v232 = v230 > v226;
              if (!v148)
              {
                v231 = v232;
              }
            }

            while (v231);
            v157->i64[0] = v226;
          }

          v157 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v176 = (v10 - 2) >> 1;
        v177 = v176;
        do
        {
          v178 = v177;
          if (v176 >= v177)
          {
            v179 = (2 * v177) | 1;
            v180 = v9 + v179;
            if (2 * v178 + 2 >= v10)
            {
              v183 = v180->i32[0];
            }

            else
            {
              v181 = v180[1];
              v182 = vcgt_s32(v181, *v180);
              v183 = *v180;
              v184 = v182.i8[4];
              result = v182.u32[0];
              if (v183 != v181.i32[0])
              {
                v184 = v182.i8[0];
              }

              if (v184)
              {
                v183 = v180[1];
                ++v180;
                v179 = 2 * v178 + 2;
              }
            }

            v185 = v9 + v178;
            v148 = v183 == v185->i32[0];
            v186 = v183 < v185->i32[0];
            if (v148)
            {
              v186 = v180->i32[1] < v185->i32[1];
            }

            if (!v186)
            {
              v187 = *v185;
              v188 = HIDWORD(*v185);
              do
              {
                v189 = v185;
                v185 = v180;
                *v189 = *v180;
                if (v176 < v179)
                {
                  break;
                }

                v190 = (2 * v179) | 1;
                v180 = v9 + v190;
                v179 = 2 * v179 + 2;
                if (v179 >= v10)
                {
                  v193 = v180->i32[0];
                  v179 = v190;
                }

                else
                {
                  result = &v180[1];
                  v191 = v180[1];
                  v192 = vcgt_s32(v191, *v180);
                  v193 = *v180;
                  v194 = v192.i8[4];
                  if (v193 != v191.i32[0])
                  {
                    v194 = v192.i8[0];
                  }

                  if (v194)
                  {
                    v193 = v180[1];
                    ++v180;
                  }

                  else
                  {
                    v179 = v190;
                  }
                }

                v195 = v180->i32[1] < v188;
                v148 = v193 == v187.i32[0];
                v196 = v193 < v187.i32[0];
                if (!v148)
                {
                  v195 = v196;
                }
              }

              while (!v195);
              *v185 = v187;
            }
          }

          v177 = v178 - 1;
        }

        while (v178);
        do
        {
          v197 = 0;
          v198 = *v9->i8;
          i64 = v9->i64;
          do
          {
            v200 = &i64[v197];
            v201 = v200 + 1;
            v202 = (2 * v197) | 1;
            v197 = 2 * v197 + 2;
            if (v197 >= v10)
            {
              v197 = v202;
            }

            else
            {
              v204 = v200[2].i32[0];
              v203 = v200 + 2;
              v205 = v203[-1].i32[0];
              result = (v203[-1].i32[1] < v203->i32[1]);
              v206 = v205 < v204;
              if (v205 == v204)
              {
                v206 = v203[-1].i32[1] < v203->i32[1];
              }

              if (v206)
              {
                v201 = v203;
              }

              else
              {
                v197 = v202;
              }
            }

            *i64 = *v201;
            i64 = v201;
          }

          while (v197 <= ((v10 - 2) >> 1));
          a2 = (a2 - 8);
          if (v201 == a2)
          {
            *v201 = v198;
          }

          else
          {
            *v201 = *a2->i8;
            *a2->i8 = v198;
            v207 = (v201 - v9 + 8) >> 3;
            v208 = v207 < 2;
            v209 = v207 - 2;
            if (!v208)
            {
              v210 = v209 >> 1;
              v211 = v9 + v210;
              v212 = *v201;
              v213 = vcgt_s32(*v201, *v211);
              v214 = (vceq_s32(*v211, *v201).u8[0] & 1) != 0 ? v213.i8[4] : v213.i8[0];
              if (v214)
              {
                do
                {
                  v215 = v201;
                  v201 = v211;
                  *v215 = *v211;
                  if (!v210)
                  {
                    break;
                  }

                  v210 = (v210 - 1) >> 1;
                  v211 = v9 + v210;
                  v216 = vcgt_s32(v212, *v211);
                  v217 = (vceq_s32(*v211, v212).u8[0] & 1) != 0 ? v216.i8[4] : v216.i8[0];
                }

                while ((v217 & 1) != 0);
                *v201 = v212;
              }
            }
          }

          v208 = v10-- <= 2;
        }

        while (!v208);
      }

      return result;
    }

    v11 = &v9->i32[2 * (v10 >> 1)];
    v12 = a2[-1].i32[2];
    v13 = a2[-1].i32[3];
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = v11[1];
      v16 = *v11 < v9->i32[0];
      if (*v11 == v9->i32[0])
      {
        v16 = v15 < v9->i32[1];
      }

      v17 = v13 < v15;
      v148 = v12 == v14;
      v18 = v12 < v14;
      if (v148)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (v16)
      {
        v20 = v9->i64[0];
        if (v19)
        {
          v9->i64[0] = *v8;
          goto LABEL_43;
        }

        v9->i64[0] = *v11;
        *v11 = v20;
        v34 = a2[-1].i32[2];
        v148 = v34 == v20;
        v35 = v34 < v20;
        if (v148)
        {
          v35 = a2[-1].i32[3] < SHIDWORD(v20);
        }

        if (v35)
        {
          *v11 = *v8;
LABEL_43:
          *v8 = v20;
        }
      }

      else if (v19)
      {
        v28 = *v11;
        *v11 = *v8;
        *v8 = v28;
        v29 = *v11 < v9->i32[0];
        if (*v11 == v9->i32[0])
        {
          v29 = v11[1] < v9->i32[1];
        }

        if (v29)
        {
          v30 = v9->i64[0];
          v9->i64[0] = *v11;
          *v11 = v30;
        }
      }

      v37 = *(v11 - 2);
      v38 = *(v11 - 1);
      v36 = (v11 - 2);
      v39 = v9->i32[2];
      v148 = v37 == v39;
      v40 = v37 < v39;
      if (v148)
      {
        v40 = v38 < v9->i32[3];
      }

      v41 = a2[-1].i32[0];
      v42 = a2[-1].i32[1] < v38;
      v148 = v41 == v37;
      v43 = v41 < v37;
      if (!v148)
      {
        v42 = v43;
      }

      if (v40)
      {
        v44 = v9->i64[1];
        if (v42)
        {
          v9->i64[1] = a2[-1].i64[0];
          goto LABEL_65;
        }

        v9->i64[1] = *v36;
        *v36 = v44;
        v51 = a2[-1].i32[0];
        v148 = v51 == v44;
        v52 = v51 < v44;
        if (v148)
        {
          v52 = a2[-1].i32[1] < SHIDWORD(v44);
        }

        if (v52)
        {
          *v36 = a2[-1].i64[0];
LABEL_65:
          a2[-1].i64[0] = v44;
        }
      }

      else if (v42)
      {
        v45 = *v36;
        *v36 = a2[-1].i64[0];
        a2[-1].i64[0] = v45;
        v46 = v9->i32[2];
        v47 = *v36 < v46;
        if (*v36 == v46)
        {
          v47 = *(v11 - 1) < v9->i32[3];
        }

        if (v47)
        {
          v48 = v9->i64[1];
          v9->i64[1] = *v36;
          *v36 = v48;
        }
      }

      v54 = v11[2];
      v55 = v11[3];
      v53 = (v11 + 2);
      v56 = v9[1].i32[0];
      v148 = v54 == v56;
      v57 = v54 < v56;
      if (v148)
      {
        v57 = v55 < v9[1].i32[1];
      }

      v58 = a2[-2].i32[2];
      v59 = a2[-2].i32[3] < v55;
      v148 = v58 == v54;
      v60 = v58 < v54;
      if (!v148)
      {
        v59 = v60;
      }

      if (v57)
      {
        v61 = v9[1].i64[0];
        if (v59)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          goto LABEL_82;
        }

        v9[1].i64[0] = *v53;
        *v53 = v61;
        v66 = a2[-2].i32[2];
        v148 = v66 == v61;
        v67 = v66 < v61;
        if (v148)
        {
          v67 = a2[-2].i32[3] < SHIDWORD(v61);
        }

        if (v67)
        {
          *v53 = a2[-2].i64[1];
LABEL_82:
          a2[-2].i64[1] = v61;
        }
      }

      else if (v59)
      {
        v62 = *v53;
        *v53 = a2[-2].i64[1];
        a2[-2].i64[1] = v62;
        v63 = v9[1].i32[0];
        v64 = *v53 < v63;
        if (*v53 == v63)
        {
          v64 = v11[3] < v9[1].i32[1];
        }

        if (v64)
        {
          v65 = v9[1].i64[0];
          v9[1].i64[0] = *v53;
          *v53 = v65;
        }
      }

      v68 = *v11;
      v69 = v11[1];
      v70 = *v36;
      v71 = *(v11 - 1);
      if (*v11 == *v36)
      {
        v72 = v69 < v71;
      }

      else
      {
        v72 = *v11 < *v36;
      }

      v73 = *v53;
      v74 = v11[3];
      v75 = v74 < v69;
      v148 = *v53 == v68;
      v76 = *v53 < v68;
      if (!v148)
      {
        v75 = v76;
      }

      if (v72)
      {
        v77 = *v36;
        if (v75)
        {
          *v36 = *v53;
          *v53 = v77;
          v77 = *v11;
        }

        else
        {
          *v36 = *v11;
          *v11 = v77;
          v80 = v74 < SHIDWORD(v77);
          if (v73 != v77)
          {
            v80 = v73 < v77;
          }

          if (v80)
          {
            v81 = *v53;
            *v11 = *v53;
            *v53 = v77;
            v77 = v81;
          }
        }
      }

      else
      {
        v77 = *v11;
        if (v75)
        {
          v78 = *v53;
          *v11 = *v53;
          *v53 = v77;
          v79 = v71 > SHIDWORD(v78);
          if (v70 != v78)
          {
            v79 = v70 > v78;
          }

          if (v79)
          {
            v77 = *v36;
            *v36 = v78;
            *v11 = v77;
          }

          else
          {
            v77 = v78;
          }
        }
      }

      v82 = v9->i64[0];
      v9->i64[0] = v77;
      *v11 = v82;
      goto LABEL_102;
    }

    v21 = v9->i32[0];
    v22 = v9->i32[1];
    v23 = v9->i32[0] < *v11;
    if (v9->i32[0] == *v11)
    {
      v23 = v22 < v11[1];
    }

    v24 = v13 < v22;
    v148 = v12 == v21;
    v25 = v12 < v21;
    if (v148)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    if (!v23)
    {
      if (v26)
      {
        v31 = v9->i64[0];
        v9->i64[0] = *v8;
        *v8 = v31;
        v32 = v9->i32[0] < *v11;
        if (v9->i32[0] == *v11)
        {
          v32 = v9->i32[1] < v11[1];
        }

        if (v32)
        {
          v33 = *v11;
          *v11 = v9->i64[0];
          v9->i64[0] = v33;
        }
      }

      goto LABEL_102;
    }

    v27 = *v11;
    if (v26)
    {
      *v11 = *v8;
    }

    else
    {
      *v11 = v9->i64[0];
      v9->i64[0] = v27;
      v49 = a2[-1].i32[2];
      v148 = v49 == v27;
      v50 = v49 < v27;
      if (v148)
      {
        v50 = a2[-1].i32[3] < SHIDWORD(v27);
      }

      if (!v50)
      {
        goto LABEL_102;
      }

      v9->i64[0] = *v8;
    }

    *v8 = v27;
LABEL_102:
    --a3;
    if (a4)
    {
      v83 = v9->i64[0];
LABEL_108:
      v86 = v9;
      do
      {
        v87 = v86;
        v88 = v86->i32[2];
        v86 = (v86 + 8);
        v89 = v88 < v83;
        if (v88 == v83)
        {
          v89 = *(v87 + 12) < SHIDWORD(v83);
        }
      }

      while (v89);
      v90 = a2;
      if (v87 == v9)
      {
        v90 = a2;
        do
        {
          if (v86 >= v90)
          {
            break;
          }

          v95 = v90[-1].i32[2];
          v96 = v90[-1].i32[3];
          v90 = (v90 - 8);
          v97 = v96 < SHIDWORD(v83);
          v148 = v95 == v83;
          v98 = v95 < v83;
          if (v148)
          {
            v98 = v97;
          }
        }

        while (!v98);
      }

      else
      {
        do
        {
          v91 = v90[-1].i32[2];
          v92 = v90[-1].i32[3];
          v90 = (v90 - 8);
          v93 = v92 < SHIDWORD(v83);
          v148 = v91 == v83;
          v94 = v91 < v83;
          if (v148)
          {
            v94 = v93;
          }
        }

        while (!v94);
      }

      if (v86 < v90)
      {
        v99 = v86;
        v100 = v90;
        do
        {
          v101 = *v99;
          *v99 = *v100;
          *v100 = v101;
          do
          {
            v87 = v99;
            v102 = *(v99 + 8);
            v99 += 8;
            v103 = v102 < v83;
            if (v102 == v83)
            {
              v103 = *(v87 + 12) < SHIDWORD(v83);
            }
          }

          while (v103);
          do
          {
            v104 = *(v100 - 2);
            v105 = *(v100-- - 1);
            v106 = v105 < SHIDWORD(v83);
            v148 = v104 == v83;
            v107 = v104 < v83;
            if (v148)
            {
              v107 = v106;
            }
          }

          while (!v107);
        }

        while (v99 < v100);
      }

      if (v87 != v9)
      {
        v9->i64[0] = *v87;
      }

      *v87 = v83;
      if (v86 < v90)
      {
        goto LABEL_137;
      }

      v108 = sub_261549E1C(v9, v87);
      v9 = (v87 + 8);
      result = sub_261549E1C((v87 + 8), a2);
      if (result)
      {
        a2 = v87;
        if (!v108)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v108)
      {
LABEL_137:
        result = sub_261548F54(v7, v87, a3, a4 & 1);
        a4 = 0;
        v9 = (v87 + 8);
      }
    }

    else
    {
      v84 = v9[-1].i32[2];
      if (v84 == v9->i32[0])
      {
        v85 = v9[-1].i32[3] < v9->i32[1];
      }

      else
      {
        v85 = v84 < v9->i32[0];
      }

      v83 = v9->i64[0];
      if (v85)
      {
        goto LABEL_108;
      }

      v109 = a2[-1].i32[2];
      v148 = v109 == v83;
      v110 = v109 > v83;
      if (v148)
      {
        v110 = a2[-1].i32[3] > SHIDWORD(v83);
      }

      if (v110)
      {
        do
        {
          v111 = v9->i32[2];
          v112 = v9->i32[3];
          v9 = (v9 + 8);
          v113 = v112 > SHIDWORD(v83);
          v148 = v111 == v83;
          v114 = v111 > v83;
          if (v148)
          {
            v114 = v113;
          }
        }

        while (!v114);
      }

      else
      {
        v115 = &v9->u64[1];
        do
        {
          v9 = v115;
          if (v115 >= a2)
          {
            break;
          }

          v116 = v115->i32[0];
          v117 = v9->i32[1] > SHIDWORD(v83);
          v148 = v116 == v83;
          v118 = v116 > v83;
          if (!v148)
          {
            v117 = v118;
          }

          v115 = &v9->u64[1];
        }

        while (!v117);
      }

      v119 = a2;
      if (v9 < a2)
      {
        v119 = a2;
        do
        {
          v120 = v119[-1].i32[2];
          v121 = v119[-1].i32[3];
          v119 = (v119 - 8);
          v122 = v121 > SHIDWORD(v83);
          v148 = v120 == v83;
          v123 = v120 > v83;
          if (v148)
          {
            v123 = v122;
          }
        }

        while (v123);
      }

      while (v9 < v119)
      {
        v124 = v9->i64[0];
        v9->i64[0] = v119->i64[0];
        v119->i64[0] = v124;
        do
        {
          v125 = v9->i32[2];
          v126 = v9->i32[3];
          v9 = (v9 + 8);
          v127 = v126 > SHIDWORD(v83);
          v148 = v125 == v83;
          v128 = v125 > v83;
          if (v148)
          {
            v128 = v127;
          }
        }

        while (!v128);
        do
        {
          v129 = v119[-1].i32[2];
          v130 = v119[-1].i32[3];
          v119 = (v119 - 8);
          v131 = v130 > SHIDWORD(v83);
          v148 = v129 == v83;
          v132 = v129 > v83;
          if (v148)
          {
            v132 = v131;
          }
        }

        while (v132);
      }

      v133 = &v9[-1].i64[1];
      if (&v9[-1].u64[1] != v7)
      {
        v7->i64[0] = *v133;
      }

      a4 = 0;
      *v133 = v83;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return sub_261549C90(v9->i32, &v9->i32[2], v9[1].i32, &a2[-1].i32[2]);
    }

    if (v10 == 5)
    {
      result = sub_261549C90(v9->i32, &v9->i32[2], v9[1].i32, &v9[1].i32[2]);
      v134 = a2[-1].i32[2];
      v135 = v9[1].i32[2];
      v148 = v134 == v135;
      v136 = v134 < v135;
      if (v148)
      {
        v136 = a2[-1].i32[3] < v9[1].i32[3];
      }

      if (v136)
      {
        v137 = v9[1].i64[1];
        v9[1].i64[1] = *v8;
        *v8 = v137;
        LODWORD(v137) = v9[1].i32[2];
        v138 = v9[1].i32[0];
        v148 = v137 == v138;
        v139 = v137 < v138;
        if (v148)
        {
          v139 = v9[1].i32[3] < v9[1].i32[1];
        }

        if (v139)
        {
          v141 = v9[1].i64[0];
          v140 = v9[1].i64[1];
          v9[1].i64[0] = v140;
          v9[1].i64[1] = v141;
          v142 = v9->i32[2];
          v148 = v142 == v140;
          v143 = v142 > v140;
          if (v148)
          {
            v143 = v9->i32[3] > SHIDWORD(v140);
          }

          if (v143)
          {
            v144 = v9->i64[1];
            v9->i64[1] = v140;
            v9[1].i64[0] = v144;
            v145 = v9->i32[1] > SHIDWORD(v140);
            if (v9->i32[0] != v140)
            {
              v145 = v9->i32[0] > v140;
            }

            if (v145)
            {
              v146 = v9->i64[0];
              v9->i64[0] = v140;
              v9->i64[1] = v146;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v151 = v9->i32[2];
  v152 = v9->i32[3];
  v153 = v151 < v9->i32[0];
  if (v151 == v9->i32[0])
  {
    v153 = v152 < v9->i32[1];
  }

  v154 = a2[-1].i32[2];
  v155 = a2[-1].i32[3] < v152;
  v148 = v154 == v151;
  v156 = v154 < v151;
  if (!v148)
  {
    v155 = v156;
  }

  if (v153)
  {
    v150 = v9->i64[0];
    if (v155)
    {
LABEL_192:
      v9->i64[0] = *v8;
    }

    else
    {
      v9->i64[0] = v9->i64[1];
      v9->i64[1] = v150;
      v233 = a2[-1].i32[2];
      v148 = v233 == v150;
      v234 = v233 < v150;
      if (v148)
      {
        v234 = a2[-1].i32[3] < SHIDWORD(v150);
      }

      if (!v234)
      {
        return result;
      }

      v9->i64[1] = *v8;
    }

    *v8 = v150;
    return result;
  }

  if (v155)
  {
    v218 = v9->i64[1];
    v9->i64[1] = *v8;
    *v8 = v218;
    LODWORD(v218) = v9->i32[2];
    v148 = v218 == v9->i32[0];
    v219 = v218 < v9->i32[0];
    if (v148)
    {
      v219 = v9->i32[3] < v9->i32[1];
    }

    if (v219)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

int *sub_261549C90(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 < result[1];
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = a3[1];
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (!v9)
  {
    v8 = v10;
  }

  if (v6)
  {
    v11 = *result;
    if (v8)
    {
      *result = *a3;
      *a3 = v11;
      v7 = HIDWORD(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      LODWORD(v7) = a3[1];
      v14 = *a3 < v11;
      if (*a3 == v11)
      {
        v14 = v7 < SHIDWORD(v11);
      }

      if (v14)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = HIDWORD(v11);
      }
    }
  }

  else if (v8)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = a2[1] < result[1];
    }

    if (v13)
    {
      v7 = *result;
      *result = *a2;
      *a2 = v7;
      LODWORD(v7) = a3[1];
    }

    else
    {
      v7 = HIDWORD(v12);
    }
  }

  v15 = a4[1] < v7;
  if (*a4 != *a3)
  {
    v15 = *a4 < *a3;
  }

  if (v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = a3[1] < a2[1];
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a2 < *result;
      if (*a2 == *result)
      {
        v19 = a2[1] < result[1];
      }

      if (v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL sub_261549E1C(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = a1->i32[2];
        v23 = a1->i32[3];
        v24 = v22 < a1->i32[0];
        if (v22 == a1->i32[0])
        {
          v24 = v23 < a1->i32[1];
        }

        v25 = a2[-1].i32[2];
        v26 = a2[-1].i32[3] < v23;
        v6 = v25 == v22;
        v27 = v25 < v22;
        if (!v6)
        {
          v26 = v27;
        }

        if (!v24)
        {
          if (v26)
          {
            v39 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v39;
            LODWORD(v39) = a1->i32[2];
            v6 = v39 == a1->i32[0];
            v40 = v39 < a1->i32[0];
            if (v6)
            {
              v40 = a1->i32[3] < a1->i32[1];
            }

            if (v40)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v8 = a1->i64[0];
        if (!v26)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v8;
          v46 = a2[-1].i32[2];
          v6 = v46 == v8;
          v47 = v46 < v8;
          if (v6)
          {
            v47 = a2[-1].i32[3] < SHIDWORD(v8);
          }

          if (!v47)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_31;
        }

LABEL_30:
        a1->i64[0] = a2[-1].i64[1];
LABEL_31:
        a2[-1].i64[1] = v8;
        return 1;
      case 4:
        sub_261549C90(a1->i32, &a1->i32[2], a1[1].i32, &a2[-1].i32[2]);
        return 1;
      case 5:
        sub_261549C90(a1->i32, &a1->i32[2], a1[1].i32, &a1[1].i32[2]);
        v9 = a2[-1].i32[2];
        v10 = a1[1].i32[2];
        v6 = v9 == v10;
        v11 = v9 < v10;
        if (v6)
        {
          v11 = a2[-1].i32[3] < a1[1].i32[3];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          LODWORD(v12) = a1[1].i32[2];
          v13 = a1[1].i32[0];
          v6 = v12 == v13;
          v14 = v12 < v13;
          if (v6)
          {
            v14 = a1[1].i32[3] < a1[1].i32[1];
          }

          if (v14)
          {
            v16 = a1[1].i64[0];
            v15 = a1[1].i64[1];
            a1[1].i64[0] = v15;
            a1[1].i64[1] = v16;
            v17 = a1->i32[2];
            v6 = v17 == v15;
            v18 = v17 > v15;
            if (v6)
            {
              v18 = a1->i32[3] > SHIDWORD(v15);
            }

            if (v18)
            {
              v19 = a1->i64[1];
              a1->i64[1] = v15;
              a1[1].i64[0] = v19;
              v20 = a1->i32[1] > SHIDWORD(v15);
              if (a1->i32[0] != v15)
              {
                v20 = a1->i32[0] > v15;
              }

              if (v20)
              {
                v21 = a1->i64[0];
                a1->i64[0] = v15;
                a1->i64[1] = v21;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].i32[2];
      v6 = v5 == a1->i32[0];
      v7 = v5 < a1->i32[0];
      if (v6)
      {
        v7 = a2[-1].i32[3] < a1->i32[1];
      }

      if (!v7)
      {
        return 1;
      }

      v8 = a1->i64[0];
      goto LABEL_30;
    }
  }

  v28 = a1 + 1;
  v29 = a1[1].i32[0];
  v30 = a1->i32[2];
  v31 = a1->i32[3];
  v32 = a1->i32[0];
  v33 = a1->i32[1];
  v34 = v30 < a1->i32[0];
  if (v30 == a1->i32[0])
  {
    v34 = v31 < v33;
  }

  v35 = a1[1].i32[1];
  v36 = v35 < v31;
  v6 = v29 == v30;
  v37 = v29 < v30;
  if (v6)
  {
    v37 = v36;
  }

  if (v34)
  {
    v38 = a1->i64[0];
    if (v37)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_58:
      a1[1].i64[0] = v38;
      goto LABEL_59;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v38;
    v6 = v29 == v38;
    v48 = v29 < v38;
    if (v6)
    {
      v48 = v35 < SHIDWORD(v38);
    }

    if (v48)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_58;
    }
  }

  else if (v37)
  {
    v42 = a1->i64[1];
    v41 = a1[1].i64[0];
    a1->i64[1] = v41;
    a1[1].i64[0] = v42;
    v43 = v33 > SHIDWORD(v41);
    v6 = v32 == v41;
    v44 = v32 > v41;
    if (v6)
    {
      v44 = v43;
    }

    if (v44)
    {
      v45 = a1->i64[0];
      a1->i64[0] = v41;
      a1->i64[1] = v45;
    }
  }

LABEL_59:
  v49 = &a1[1].i32[2];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v28->i32[0];
    v53 = v49[1] < v28->i32[1];
    if (*v49 != v52)
    {
      v53 = *v49 < v52;
    }

    if (v53)
    {
      v54 = *v49;
      v55 = HIDWORD(*v49);
      v56 = v50;
      while (1)
      {
        v57 = &a1->i8[v56];
        *(&a1[1].i64[1] + v56) = *(a1[1].i64 + v56);
        if (v56 == -16)
        {
          break;
        }

        v58 = *(v57 + 2);
        v59 = *(v57 + 3) > v55;
        v6 = v58 == v54;
        v60 = v58 > v54;
        if (!v6)
        {
          v59 = v60;
        }

        v56 -= 8;
        if (!v59)
        {
          v61 = (&a1[1].i64[1] + v56);
          goto LABEL_71;
        }
      }

      v61 = a1;
LABEL_71:
      *v61 = v54;
      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v28 = v49;
    v50 += 8;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

void sub_26154A1D8(uint64_t a1, unsigned int a2, char **a3)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 32) <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_26149AA60(exception, "Requested row is outside the image");
    __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
  }

  v6 = *(a1 + 36);
  v7 = *a3;
  v8 = a3[1];
  v9 = (v8 - *a3);
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      v8 = &v7[v6];
      a3[1] = &v7[v6];
    }
  }

  else
  {
    sub_261548568(a3, v6 - v9);
    v7 = *a3;
    v8 = a3[1];
  }

  if (v8 != v7)
  {
    v10 = 0;
    do
    {
      v7[v10] = *(**(a1 + 8) + *(a1 + 40) * (v10 + *(a1 + 28)) + *(a1 + 24) + a2);
      ++v10;
      v7 = *a3;
    }

    while (a3[1] - *a3 > v10);
  }
}

char *sub_26154A2DC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 < 0 || *(a1 + 36) <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_26149AA60(exception, "Requested row is outside the image");
    __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
  }

  v5 = (**(a1 + 8) + (*(a1 + 28) + a2) * *(a1 + 40) + *(a1 + 24));
  if (a4)
  {
    v7 = *(a1 + 32);
    v8 = *a3;
    v9 = *(a3 + 8) - *a3;
    if (v7 <= v9)
    {
      if (v7 < v9)
      {
        *(a3 + 8) = &v8[v7];
      }
    }

    else
    {
      sub_261548568(a3, v7 - v9);
      v7 = *(a1 + 32);
      v8 = *a3;
    }

    if (v7)
    {
      memmove(v8, v5, v7);
      return *a3;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

void sub_26154A3EC(void *a1)
{
  *a1 = &unk_2873D1D70;
  v1 = a1[2];
  if (v1)
  {
    sub_26149E780(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_26154A458(void *a1)
{
  *a1 = &unk_2873D1D70;
  v2 = a1[2];
  if (v2)
  {
    sub_26149E780(v2);
  }

  return a1;
}

void *sub_26154A4A4(int *a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a2 / 2;
  v9 = a2 - a2 / 2;
  if (*a3 < v9)
  {
    v10 = *(a3 + 8);
    if (v10)
    {
      free(v10);
    }

    *(a3 + 8) = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  }

  result = *(a4 + 8);
  if (*a4 < v8)
  {
    if (result)
    {
      free(result);
    }

    result = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    *(a4 + 8) = result;
  }

  *a3 = v9;
  *a4 = v8;
  if (a2 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a3 + 8);
    v15 = 1;
    v16 = a2;
    do
    {
      v17 = *a1++;
      v18 = v17;
      if (v15)
      {
        v19 = v13;
      }

      else
      {
        v19 = v12;
      }

      if (v15)
      {
        v20 = v14;
      }

      else
      {
        v20 = result;
      }

      if (v15)
      {
        ++v13;
      }

      else
      {
        ++v12;
      }

      v20[v19] = v18;
      v15 ^= 1u;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_26154A5A0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 12);
  if (v3 <= v4)
  {
    return 15;
  }

  v5 = v3 - v4 + 1;
  if (v5 < 41)
  {
    return 16;
  }

  v10 = (*a1 + 4 * v4);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = sub_261511370(&v29, v10, v5, 0.5);
  v12 = *(a2 + 64);
  v13 = *v12;
  v14 = *v12 != a3;
  *v12 = a3;
  v6 = sub_26154A77C(v30, v11, a2, v14, v10, v5);
  if (v6 >= 2)
  {
    v23 = *(*(a2 + 64) + 24);
    if (v23 <= 0.5)
    {
      v23 = 0.5;
      if ((v5 / 104.5) > 0.5)
      {
        v23 = v5 / 104.5;
      }
    }

    v24 = 2 * v11;
    v25 = 3;
    do
    {
      *&v15 = v23;
      v26 = sub_26151162C(&v29, v15);
      if (v26 < 1 || v26 > v24)
      {
        break;
      }

      v6 = sub_26154A77C(v30, v26, a2, v13 != a3, v10, v5);
      if (v6 <= 1)
      {
        goto LABEL_6;
      }

      --v25;
    }

    while (v25);
    sub_261511878(&v29);
  }

  else
  {
LABEL_6:
    sub_261511878(&v29);
    v16 = *(a2 + 72);
    v17 = *(a2 + 76);
    if (v16 <= v17)
    {
      v18 = *(a2 + 76);
    }

    else
    {
      v18 = *(a2 + 72);
    }

    v19 = v17 <= 0.0 || v16 <= 0.0;
    v20 = (v16 + v17) * 0.5;
    if (v19)
    {
      v20 = v18;
    }

    v21 = *(a2 + 64);
    *(v21 + 24) = v20;
    sub_261544B04(v21, *(a1 + 80));
    *v22.i32 = *(a1 + 12);
    *(a1 + 20) = vadd_f32(*(*(a2 + 64) + 48), vdup_lane_s32(v22, 0));
  }

  return v6;
}

uint64_t sub_26154A77C(int *a1, int a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  if (a2 < 2 * *(*(a3 + 64) + 20))
  {
    return 16;
  }

  v7 = a1;
  v8 = (*a1 + -0.5);
  if ((v8 & 0x80000000) != 0)
  {
    return 15;
  }

  v6 = 15;
  if ((v8 + 1) < a6)
  {
    v11 = a2 - 1;
    v12 = (*&a1[a2 - 1] + -0.5);
    if ((v12 & 0x80000000) == 0 && v12 + 1 < a6)
    {
      v16 = *(a5 + 4 * v12);
      v17 = *(a5 + 4 * (v12 + 1));
      v18 = *(a5 + 4 * v8) < *(a5 + 4 * (v8 + 1));
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      sub_26154A4A4(a1, a2, &v30, &v28);
      v19 = v31;
      v20 = v29;
      v6 = sub_26154A988(v30, v31, v28, v29, a3, a5, a6, v18);
      if (v6 > 1)
      {
        if (a4)
        {
          v21 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
          v22 = v21;
          if (a2 >= 1)
          {
            v23 = a2;
            v24 = &v21[v11];
            do
            {
              v25 = *v7++;
              *v24-- = -v25;
              --v23;
            }

            while (v23);
          }

          sub_26154A4A4(v21, a2, &v30, &v28);
          free(v22);
          v19 = v31;
          v20 = v29;
          v6 = sub_26154A988(v30, v31, v28, v29, a3, a5, a6, v16 > v17);
          if (v6 < 2)
          {
            v26 = *(a3 + 64);
            v26[3].i8[4] = 1;
            v26[6] = vneg_f32(v26[6]);
          }
        }
      }

      else
      {
        *(*(a3 + 64) + 28) = 0;
      }

      if (v19)
      {
        free(v19);
      }

      if (v20)
      {
        free(v20);
      }
    }
  }

  return v6;
}

uint64_t sub_26154A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v8 = a3;
  v9 = *(*(a5 + 64) + 20);
  if (v9 > a3)
  {
    return 16;
  }

  v11 = a8;
  v15 = a4;
  v16 = a2;
  v17 = a1;
  result = sub_261545510(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    if (result == 1)
    {
      return result;
    }

    v18 = *(a5 + 64);
  }

  else
  {
    v18 = *(a5 + 64);
    v19 = *(v18 + 11);
    if (v19 < 3 || (v16[v17 - v19 + 2] - v18[13]) >= (*(a5 + 76) * 10.0))
    {
      return 0;
    }
  }

  v20 = *v18;
  *v18 &= 0xFFFE9FFF;
  if ((LODWORD(v20) & 0xFFFE9FFF) != 0)
  {
    v29 = v20;
    v33 = a7;
    v31 = v16 - 2;
    v32 = a6;
    v30 = v15 - 12;
    if (*(v18 + 30))
    {
      v21 = 5;
    }

    else
    {
      v21 = 65;
    }

    v22 = 1;
    v23 = v17;
    while (v17 > v9)
    {
      v24 = v16;
      v25 = v8;
      v16 = v15;
      v15 = (v24 + 1);
      v11 ^= 1u;
      v8 = v23 & 0xFFFFFFFF00000000 | (v17 - 1);
      LODWORD(v17) = v25;
      if (v22 < 5)
      {
        goto LABEL_29;
      }

      v26 = v31;
      if ((v22 & 1) == 0)
      {
        v26 = v30;
      }

      if ((*v16 - *(v26 + 4 * (v22 >> 1))) >= (((*(v15 + 4 * v9 - 4) - *v16) / (3 * v9)) * 10.0))
      {
LABEL_29:
        result = sub_261545510(v25, v16, v8, v15, a5, v32, v33, v11 & 1);
        if (!result)
        {
          v27 = *(a5 + 64);
          v28 = *(v27 + 44);
          if (v28 < 3)
          {
            result = 0;
            break;
          }

          result = 0;
          if ((v16[v25 - v28 + 2] - *(v27 + 52)) >= (*(a5 + 76) * 10.0))
          {
            break;
          }
        }
      }

      ++v22;
      v23 = v25;
      if (v21 == v22)
      {
        break;
      }
    }

    v18 = *(a5 + 64);
    v20 = v29;
  }

  *v18 = v20;
  return result;
}

float sub_26154ABB0(float *a1, int a2, float *a3, float *a4, int a5, int a6)
{
  v6 = 3.0;
  if (!a6)
  {
    v6 = 2.0;
  }

  if (a2 < 1)
  {
    result = 3.4028e38;
    v15 = 0.0;
    v14 = 0.0;
    if ((v6 * 3.4028e38) < 1.1755e-38)
    {
      return result;
    }
  }

  else
  {
    v7 = 3.4028e38;
    v8 = 1.1755e-38;
    v9 = a1;
    v10 = a2;
    do
    {
      v11 = *v9++;
      v12 = v11;
      if (v7 >= v11)
      {
        v7 = v12;
      }

      if (v8 <= v12)
      {
        v8 = v12;
      }

      --v10;
    }

    while (v10);
    if (v8 > (v6 * v7))
    {
      return 3.4028e38;
    }

    v13 = 0;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = a1[v13];
      v15 = v15 + v16;
      if (v13)
      {
        v16 = -v16;
      }

      v14 = v14 + v16;
      ++v13;
    }

    while (a2 != v13);
  }

  v18 = v15 / a2;
  v19 = -(v14 - (a2 * v15)) / (a2 * a2 - 1);
  v20 = v14 - v19;
  if (a2)
  {
    v21 = v19;
  }

  else
  {
    v20 = v14;
    v21 = v18;
  }

  v22 = v20 / (2 * a2);
  *a3 = v21;
  v23 = -v22;
  if (a5)
  {
    v23 = v22;
  }

  *a4 = v23;
  v24 = *a3;
  if (fabsf(v22) > (*a3 * 0.2))
  {
    return 3.4028e38;
  }

  v25 = (v24 * 0.4) + 0.5;
  if (!a6)
  {
    v25 = v24 * 0.4;
  }

  result = 0.0;
  if (a2 >= 1)
  {
    v26 = a2;
    v27 = a2;
    for (i = a1; vabds_f32(*i, v24) <= v25; ++i)
    {
      if (!--v27)
      {
        return result;
      }
    }

    v29 = 0.0;
    do
    {
      v30 = *a1++;
      v31 = v30;
      if (a5)
      {
        v32 = -v23;
      }

      else
      {
        v32 = v23;
      }

      v29 = v29 + ((((v31 + (v32 * 2.0)) / v24) + -1.0) * (((v31 + (v32 * 2.0)) / v24) + -1.0));
      LOBYTE(a5) = a5 ^ 1;
      --v26;
    }

    while (v26);
    return v29 / a2;
  }

  return result;
}

BOOL sub_26154AD6C(uint64_t a1, float *a2, uint64_t a3, float *a4, int a5)
{
  v8 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v9 = 95.0;
  v10 = 116;
  v11 = 21;
  v12 = 67.0;
  v13 = 84;
  if (a5 != 1)
  {
    v13 = 64;
    v12 = 51.0;
    v11 = 16;
  }

  if (a5)
  {
    v10 = v13;
    v9 = v12;
    v14 = v11;
  }

  else
  {
    v14 = 29;
  }

  v15 = *(a4 + v10) - *a2;
  v16 = a4;
  v17 = a2;
  do
  {
    v18 = v16;
    v49[v8++] = *v16 - *v17;
    v16 = v17 + 1;
    v17 = v18;
  }

  while (v8 != 4);
  v19 = v15 / v9;
  v20 = v50[0];
  v48 = 0;
  if (sub_26154ABB0(v49, 3, &v48 + 1, &v48, 1, (v15 / v9) < 5.0) > 0.01)
  {
    return 0;
  }

  v21 = v19 * 0.5;
  if (vabds_f32(*(&v48 + 1), v19) > (v19 * 0.5))
  {
    return 0;
  }

  v22 = *&v48;
  v23 = v20 + (*&v48 * 2.0);
  v24 = (*(&v48 + 1) * 0.5) + 0.5;
  if (v19 >= 5.0)
  {
    v24 = *(&v48 + 1) * 0.5;
  }

  if (v23 < (*(&v48 + 1) - v24))
  {
    return 0;
  }

  v25 = a5 == 2 ? 4 : 3;
  if (v23 > (v24 + (v25 * *(&v48 + 1))))
  {
    return 0;
  }

  if (a5 == 2)
  {
    v26 = 6;
    v27 = 3;
  }

  else
  {
    v41 = 13;
    if (a5)
    {
      v41 = 9;
    }

    v42 = &a4[v41];
    v43 = &a2[v41];
    for (i = 3; i != 8; ++i)
    {
      v45 = v43 + 1;
      v49[i] = v43[1] - *v42;
      v43 = v42;
      v42 = v45;
    }

    v47 = 0;
    if (sub_26154ABB0(v50, 5, &v47 + 1, &v47, 0, v19 < 5.0) > 0.01 || vabds_f32(*(&v47 + 1), v19) > v21 || vabds_f32(*&v47, v22) > (v19 * 0.3))
    {
      return 0;
    }

    v26 = 3;
    v27 = 8;
  }

  v28 = &a4[v14];
  v29 = &a2[v14];
  v30 = v27;
  v31 = &v49[v27];
  v32 = v26 + 1;
  v33 = v26 + v27;
  do
  {
    v34 = v29;
    *v31++ = *v28 - *v29;
    v29 = v28 - 1;
    v28 = v34;
    --v32;
  }

  while (v32);
  v35 = v49[v33];
  v47 = 0;
  if (sub_26154ABB0(&v49[v30], v33 - v30, &v47 + 1, &v47, 1, v19 < 5.0) > 0.01)
  {
    return 0;
  }

  if (vabds_f32(*(&v47 + 1), v19) > v21)
  {
    return 0;
  }

  v36 = *&v47;
  if (vabds_f32(*&v47, v22) > (v19 * 0.3))
  {
    return 0;
  }

  if ((v26 & 1) == 0)
  {
    v36 = -*&v47;
  }

  v37 = v35 + (v36 * 2.0);
  v38 = (*(&v47 + 1) * 0.5) + 0.5;
  if (v19 >= 5.0)
  {
    v38 = *(&v47 + 1) * 0.5;
  }

  return v37 <= (v38 + (*(&v47 + 1) * 4.0)) && v37 >= (*(&v47 + 1) - v38);
}

void sub_26154B0E0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, int32x4_t a7, int32x4_t a8, int32x4_t a9)
{
  v9 = a6;
  v137 = *MEMORY[0x277D85DE8];
  v12 = *(a3 + 4);
  v13 = *(a4 + 4);
  *&v14 = v12 - *a4;
  *v131.i32 = *a4 - *a3;
  v131.i32[1] = v14;
  v15 = a2[1];
  v16 = *a2;
  v17 = a2[2];
  *&v131.i32[2] = v13 - v12;
  v18 = 0.0;
  v19 = 1;
  v20 = 4;
  v21 = &v131;
  do
  {
    v22 = *v21;
    v23 = v20;
    do
    {
      v24 = *(v131.i32 + v23);
      v119 = v22 <= v24;
      v25 = v24 / v22;
      v26 = v22 / v24;
      if (v119)
      {
        v26 = v25;
      }

      if (v18 <= v26)
      {
        v18 = v26;
      }

      v23 += 4;
    }

    while (v23 != 12);
    ++v19;
    v20 += 4;
    v21 = &v131.i32[1];
  }

  while (v19 != 3);
  if (v18 >= 1.0)
  {
    v27 = v18;
  }

  else
  {
    v27 = 100.0;
  }

  if (v17 < 1)
  {
    v69 = 0;
    v70.i64[0] = *(a4 + 52);
    v71.i64[0] = *(a3 + 56);
    v70.i64[1] = v71.i64[0];
    v71.i32[2] = vdup_lane_s32(*v70.f32, 1).u32[0];
    v72 = *(a4 + 60);
    v73 = *(a4 + 64);
    v71.f32[3] = v72;
    v74 = vsubq_f32(v71, v70);
    v131 = vuzp1q_s32(v74, vrev64q_s32(v74));
    v74.i32[0] = *(a3 + 64);
    v132 = *v74.i32 - v72;
    v133 = v73 - *v74.i32;
    v75 = 0.0;
    v76 = 4;
    do
    {
      v77 = *&v131.i32[v69];
      v78 = v76;
      do
      {
        v79 = *(v131.i32 + v78);
        v119 = v77 <= v79;
        v80 = v79 / v77;
        v81 = v77 / v79;
        if (v119)
        {
          v81 = v80;
        }

        if (v75 <= v81)
        {
          v75 = v81;
        }

        v78 += 4;
      }

      while (v78 != 24);
      ++v69;
      v76 += 4;
    }

    while (v69 != 5);
    if (v75 < 1.0)
    {
      v75 = 100.0;
    }

    if (v27 <= v75)
    {
      v82 = 0;
      v61 = 0.0;
      v83 = 4;
      do
      {
        v84 = *&v131.i32[v82];
        v85 = v83;
        do
        {
          v86 = *(v131.i32 + v85);
          v119 = v84 <= v86;
          v87 = v86 / v84;
          v88 = v84 / v86;
          if (v119)
          {
            v88 = v87;
          }

          if (v61 <= v88)
          {
            v61 = v88;
          }

          v85 += 4;
        }

        while (v85 != 24);
        ++v82;
        v83 += 4;
      }

      while (v82 != 5);
      goto LABEL_74;
    }
  }

  else
  {
    v28 = 0;
    v29 = 4 * (2 * v15 + 2);
    a7.i64[0] = *(a3 + v29);
    a8.i64[0] = *(a4 + v29);
    a9.i32[0] = *(a4 + 4 * ((2 * v15) | 1));
    v30 = vzip1q_s32(vzip1q_s32(a9, a8), a7);
    a7.i64[1] = a8.i64[0];
    v131 = vsubq_f32(vuzp1q_s32(a7, vrev64q_s32(a7)), v30);
    v132 = *(a3 + 4 * (2 * v15 + 4)) - *&a8.i32[1];
    v31 = 0.0;
    v32 = 4;
    do
    {
      v33 = *&v131.i32[v28];
      v34 = v32;
      do
      {
        v35 = *(v131.i32 + v34);
        v119 = v33 <= v35;
        v36 = v35 / v33;
        v37 = v33 / v35;
        if (v119)
        {
          v37 = v36;
        }

        if (v31 <= v37)
        {
          v31 = v37;
        }

        v34 += 4;
      }

      while (v34 != 20);
      ++v28;
      v32 += 4;
    }

    while (v28 != 4);
    v38 = 2 * (v15 + 2 + v17);
    if (v31 < 1.0)
    {
      v31 = 100.0;
    }

    if (v27 <= v31)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0.0;
      do
      {
        v42 = *&v131.i32[v40];
        v43 = v39;
        do
        {
          v44 = *(&v131.i32[1] + v43);
          v119 = v42 <= v44;
          v45 = v44 / v42;
          v46 = v42 / v44;
          if (v119)
          {
            v46 = v45;
          }

          if (v41 <= v46)
          {
            v41 = v46;
          }

          v43 += 4;
        }

        while (v43 != 16);
        ++v40;
        v39 += 4;
      }

      while (v40 != 4);
      if (v41 >= 1.0)
      {
        v27 = v41;
      }

      else
      {
        v27 = 100.0;
      }
    }

    v47 = *(a4 + 4 * v38);
    v48 = v47 - *(a3 + 4 * v38);
    v49 = (8 * (v15 + 2 + v17)) | 4;
    v50 = *(a3 + v49);
    *v131.i32 = v48;
    *&v131.i32[1] = v50 - v47;
    *&v131.i32[2] = *(a4 + v49) - v50;
    v51 = 0.0;
    v52 = 1;
    v53 = 4;
    v54 = &v131;
    do
    {
      v55 = *v54;
      v56 = v53;
      do
      {
        v57 = *(v131.i32 + v56);
        v119 = v55 <= v57;
        v58 = v57 / v55;
        v59 = v55 / v57;
        if (v119)
        {
          v59 = v58;
        }

        if (v51 <= v59)
        {
          v51 = v59;
        }

        v56 += 4;
      }

      while (v56 != 12);
      ++v52;
      v53 += 4;
      v54 = &v131.i32[1];
    }

    while (v52 != 3);
    if (v51 < 1.0)
    {
      v51 = 100.0;
    }

    if (v27 <= v51)
    {
      v60 = 0;
      v61 = 0.0;
      v62 = &v131;
      for (i = 1; i != 3; ++i)
      {
        v64 = *v62;
        v65 = v60;
        do
        {
          v66 = *(&v131.i32[1] + v65);
          v119 = v64 <= v66;
          v67 = v66 / v64;
          v68 = v64 / v66;
          if (v119)
          {
            v68 = v67;
          }

          if (v61 <= v68)
          {
            v61 = v68;
          }

          v65 += 4;
        }

        while (v65 != 8);
        v60 += 4;
        v62 = &v131.i32[1];
      }

LABEL_74:
      if (v61 >= 1.0)
      {
        v27 = v61;
      }

      else
      {
        v27 = 100.0;
      }
    }
  }

  v128 = 0;
  v89 = v15 + v16;
  if (v15 < 1)
  {
    v90 = 0;
    v94 = 0.0;
    v107 = 2;
    v97 = INFINITY;
    v95 = INFINITY;
  }

  else
  {
    v124 = v17;
    v126 = a3;
    v90 = 0;
    v123 = v15 + v16;
    v91 = v89;
    v92 = (a3 + 12);
    v125 = a4;
    v93 = (a4 + 12);
    v94 = 0.0;
    v95 = INFINITY;
    v96 = 2;
    v97 = INFINITY;
    do
    {
      v98 = *(v93 - 1);
      v99 = 1.0 / (*v93 - *(v93 - 2));
      v101 = *(v92 - 1);
      v100 = *v92;
      v102 = v99 * (*v93 - v98);
      v134 = v99 * ((*v93 + v98) - (*v92 + v101));
      v135 = v102;
      v136 = v99 * (v100 - v101);
      sub_26154D720(20, 3u, 6u, v130, v129, &v134, flt_26157ABF8, &v128 + 1, &v128);
      v103 = *&v128;
      if (*&v128 <= v95)
      {
        v104 = *&v128;
      }

      else
      {
        v104 = v95;
      }

      if (*&v128 > v97)
      {
        v95 = v104;
      }

      else
      {
        v95 = v97;
      }

      if (*&v128 <= v97)
      {
        v97 = *&v128;
      }

      v105 = BYTE4(v128);
      v106 = SHIDWORD(v128) > 9;
      if (SHIDWORD(v128) > 9)
      {
        v105 = BYTE4(v128) - 10;
      }

      *(a1 + v16) = v105;
      *(a5 + v16) = v106;
      v96 += 2;
      ++v16;
      v94 = v94 + v103;
      v92 += 2;
      v93 += 2;
      ++v90;
    }

    while (v16 < v91);
    v107 = v96 & 0xFFFFFFFE;
    a3 = v126;
    v9 = a6;
    a4 = v125;
    v17 = v124;
    v89 = v123;
  }

  if (v17 < 1)
  {
    v117 = v97;
  }

  else
  {
    v108 = v89;
    v109 = v89 + v17;
    v110 = (a4 + 4 * v107 + 12);
    v111 = (a3 + 4 * v107 + 16);
    do
    {
      v112 = *(v111 - 1);
      v113 = *(v111 - 2);
      v114 = 1.0 / (*v111 - v113);
      v115 = *(v110 - 1);
      v116 = *v110;
      v134 = v114 * ((v115 + *v110) - (v113 + v112));
      v135 = v114 * (v112 - v113);
      v136 = v114 * (v116 - v115);
      sub_26154D720(10, 3u, 5u, v130, v129, &v134, flt_26157AE88, &v128 + 1, &v128);
      v117 = *&v128;
      v94 = v94 + *&v128;
      if (*&v128 <= v95)
      {
        v118 = *&v128;
      }

      else
      {
        v118 = v95;
      }

      v119 = *&v128 > v97;
      if (*&v128 > v97)
      {
        v117 = v97;
      }

      *(a1 + v108) = BYTE4(v128);
      *(a5 + v108++) = 0;
      v110 += 2;
      if (v119)
      {
        v95 = v118;
      }

      else
      {
        v95 = v97;
      }

      v111 += 2;
      ++v90;
      v97 = v117;
    }

    while (v108 < v109);
  }

  v120 = ((v95 * 0.3) + (v117 * 0.55)) + ((v94 / v90) * 0.15);
  v121 = 0.0;
  if (v27 >= 2.0)
  {
    v121 = (2.0 - v27) * 0.1;
  }

  v122 = v121 + v120;
  if (v122 > 1.0)
  {
    v122 = 1.0;
  }

  *v9 = v122;
}

uint64_t sub_26154B7C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, float *a4, int32x4_t a5, int32x4_t a6, int32x4_t a7)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_26154B0E0(a3, dword_26157A8B8, a1, a2, v13, a4, a5, a6, a7);
  if (*a4 < 0.1)
  {
    return 2;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v11 |= v13[v10 + 1] << v10;
    ++v10;
  }

  while (v10 != 6);
  result = 4;
  if (v11 > 0x25u)
  {
    if (v11 <= 0x2Bu)
    {
      if (v11 == 38)
      {
        LOBYTE(v11) = 5;
      }

      else
      {
        if (v11 != 42)
        {
          return result;
        }

        LOBYTE(v11) = 7;
      }
    }

    else
    {
      switch(v11)
      {
        case ',':
          LOBYTE(v11) = 2;
          break;
        case '2':
          LOBYTE(v11) = 4;
          break;
        case '4':
          LOBYTE(v11) = 1;
          break;
        default:
          return result;
      }
    }
  }

  else if (v11 <= 0x15u)
  {
    if (v11)
    {
      if (v11 != 14)
      {
        return result;
      }

      LOBYTE(v11) = 6;
    }
  }

  else
  {
    switch(v11)
    {
      case 0x16u:
        LOBYTE(v11) = 9;
        break;
      case 0x1Au:
        LOBYTE(v11) = 8;
        break;
      case 0x1Cu:
        LOBYTE(v11) = 3;
        break;
      default:
        return result;
    }
  }

  *a3 = v11;
  v12 = a3[12];
  if (v12 == sub_26154B954(a3))
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_26154B954(unsigned __int8 *a1)
{
  v1 = (a1[2] + *a1 + a1[4] + a1[6] + a1[8] + a1[10] + 3 * (a1[3] + a1[1] + a1[5] + a1[7] + a1[9] + a1[11])) % 0xAu;
  if (v1)
  {
    return (10 - v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26154B9E0(uint64_t a1, float *a2, uint64_t a3, float *a4, uint64_t a5, uint64_t a6, int a7)
{
  *&v225[860] = *MEMORY[0x277D85DE8];
  if (a3 < 30)
  {
    return 16;
  }

  v12 = a4;
  v13 = a2;
  v205 = a3 - 30;
  if (!sub_26154AD6C(a1, a2, a3, a4, 0))
  {
    return 23;
  }

  v14 = 13;
  *(a5 + 8) = 13;
  *(a5 + 80) = 0xD00000001;
  if (*(a5 + 16))
  {
    free(*(a5 + 16));
    v14 = *(a5 + 8);
  }

  *(a5 + 16) = 0;
  v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
  *(a5 + 16) = v15;
  v201 = (a5 + 24);
  if (!sub_26154B7C4(v13, v12, v15, (a5 + 24), v16, v17, v18))
  {
LABEL_190:
    v8 = 0;
    *(a5 + 72) = (v12[1] - *v13) / 3.0;
    *(a5 + 76) = (v12[29] - v13[28]) / 3.0;
    v195 = *(a5 + 64);
    v195[10] = 0;
    v195[11] = v205;
    v195[12] = *v13;
    v195[13] = *(v12 + 29);
    v195[5] = 30;
    return v8;
  }

  v223 = 0;
  v222 = 0.0;
  v19 = *(v12 + (((a3 << 32) - 0x100000000) >> 30));
  v202 = a5;
  v20 = *(a5 + 16);
  v21 = v19 - *v12;
  if (v21 < 300.0)
  {
    sub_261524154(a6, *v13, v19, &v223 + 1, &v223, &v222);
  }

  v204 = v13;
  v22 = v12 + 3;
  v23 = v224;
  v24 = 1;
  for (i = 3; i != 15; i += 2)
  {
    if (v21 >= 300.0)
    {
      sub_261524154(a6, *(v22 - 2), *v22, &v223 + 1, &v223, &v222);
      v26 = i;
    }

    else
    {
      v26 = (2 * v24) | 1;
    }

    v27 = v223;
    v28 = v222;
    sub_26154C850(a6, a7, 0, v23, *(v22 - 2), v12[v26], *(&v223 + 1), *&v223, v222);
    ++v24;
    v23 += 72;
    v22 += 2;
  }

  v29 = v204 + 18;
  for (j = 432; j != 864; j += 72)
  {
    v31 = *(v29 - 2);
    v32 = *v29;
    v29 += 2;
    sub_26154C850(a6, a7, 1, &v224[j], v31, v32, *(&v27 + 1), *&v27, v28);
  }

  v33 = v225;
  v34 = 100.0;
  v35 = 1;
  v13 = v204;
  a5 = v202;
  while (1)
  {
    v36 = -1;
    v37 = -1.0;
    v38 = v33;
    v39 = 8;
    do
    {
      if (*v38 > v37)
      {
        v36 = *(v38 - 4);
        v37 = *v38;
      }

      v38 += 2;
      --v39;
    }

    while (v39);
    if (v36 == -1)
    {
      break;
    }

    if (v35 > 6)
    {
      v36 -= 20;
    }

    else
    {
      v221[v35] = v36 > 9;
      if (v36 > 9)
      {
        v36 -= 10;
      }
    }

    v20[v35] = v36;
    if (v34 > *&v224[72 * v35 - 36])
    {
      v34 = *&v224[72 * v35 - 36];
    }

    ++v35;
    v33 += 18;
    if (v35 == 13)
    {
      if (v34 > -0.15)
      {
        *v201 = v34 + 0.5;
      }

      v40 = 0;
      for (k = 1; k != 7; ++k)
      {
        v40 |= v221[k] << (k - 1);
      }

      if (v40 > 0x25u)
      {
        if (v40 <= 0x2Bu)
        {
          if (v40 == 38)
          {
            LOBYTE(v40) = 5;
          }

          else
          {
            if (v40 != 42)
            {
              break;
            }

            LOBYTE(v40) = 7;
          }
        }

        else
        {
          switch(v40)
          {
            case ',':
              LOBYTE(v40) = 2;
              break;
            case '2':
              LOBYTE(v40) = 4;
              break;
            case '4':
              LOBYTE(v40) = 1;
              break;
            default:
              goto LABEL_58;
          }
        }
      }

      else if (v40 <= 0x15u)
      {
        if (v40)
        {
          if (v40 != 14)
          {
            break;
          }

          LOBYTE(v40) = 6;
        }
      }

      else
      {
        switch(v40)
        {
          case 0x16u:
            LOBYTE(v40) = 9;
            break;
          case 0x1Au:
            LOBYTE(v40) = 8;
            break;
          case 0x1Cu:
            LOBYTE(v40) = 3;
            break;
          default:
            goto LABEL_58;
        }
      }

      *v20 = v40;
      v42 = v20[12];
      if (v42 == sub_26154B954(v20))
      {
        goto LABEL_190;
      }

      break;
    }
  }

LABEL_58:
  v197 = *(v202 + 16);
  v43 = malloc_type_malloc(0x300uLL, 0x100004052888210uLL);
  v44 = v43;
  v45 = 0;
  v46 = (v43 + 240);
  v47 = v43 + 744;
  v48 = v12;
  do
  {
    v49 = *v13++;
    v50 = &v43[v45];
    *v50 = v49;
    v51 = *v48++;
    *(v50 + 1) = v51;
    v45 += 8;
  }

  while (v45 != 240);
  v52 = 0;
  v53 = *(v43 + 59) - *v43;
  *(v43 + 90) = 0;
  v54 = v53 / 95.0;
  *(v43 + 182) = v54;
  *(v43 + 732) = 0;
  *(v43 + 185) = v54;
  *(v43 + 27) = xmmword_26157A984;
  *(v43 + 28) = unk_26157A994;
  *(v43 + 29) = xmmword_26157A9A4;
  *(v43 + 23) = xmmword_26157A944;
  *(v43 + 24) = unk_26157A954;
  v211 = v43 + 720;
  v55 = (v43 + 756);
  *(v43 + 25) = xmmword_26157A964;
  *(v43 + 26) = unk_26157A974;
  *(v43 + 19) = xmmword_26157A904;
  *(v43 + 20) = unk_26157A914;
  *(v43 + 21) = xmmword_26157A924;
  *(v43 + 22) = unk_26157A934;
  *v46 = xmmword_26157A8C4;
  *(v43 + 16) = unk_26157A8D4;
  *(v43 + 17) = xmmword_26157A8E4;
  *(v43 + 18) = unk_26157A8F4;
  do
  {
    v56 = dword_26157A9B4[v52];
    v57 = &v43[v52 * 4];
    *(v57 + 186) = *&v43[4 * v56];
    *(v57 + 189) = v46[v56];
    ++v52;
  }

  while (v52 != 3);
  v58 = 0;
  v59 = 0;
  do
  {
    v60 = v59 + 1;
    v61 = dword_26157A9B4[v59 + 1];
    if (v58 < v61)
    {
      v62 = v61 - v58;
      v63 = &v43[4 * v58];
      do
      {
        *v63 = *v63 - *&v47[4 * v59];
        ++v63;
        --v62;
      }

      while (v62);
    }

    v58 = v61;
    v59 = 1;
  }

  while (v60 != 2);
  v199 = (v43 + 480);
  v200 = malloc_type_malloc(0xECuLL, 0x100004052888210uLL);
  v198 = 0;
  v203 = v44 + 61;
  v209 = v44;
  v210 = v12;
  v207 = v44 + 189;
  v208 = v46;
  v206 = v47;
LABEL_68:
  v67 = 0;
  v68 = v211;
  do
  {
    if (v67 == 2)
    {
      v174 = 0;
      v175 = 0;
      v176 = 1;
      v177 = v46;
      do
      {
        v178 = *v177;
        v179 = v175 + 1;
        v180 = dword_26157A9B4[v175 + 1];
        v181 = &v44[v174];
        *v181 = 0.0;
        v66.i32[0] = *&v47[4 * v175];
        v44[v180] = *&v47[4 * v175 + 4] - *v66.i32;
        if (v180 - v174 >= 0)
        {
          v182 = 0;
          v183 = &v211[12 * v175];
          v184 = *v183;
          v66.i32[0] = *(v183 + 1);
          v185 = *(v183 + 2);
          v186 = (v180 - v174 + 1);
          do
          {
            if (v182)
            {
              v187 = -1.0;
            }

            else
            {
              v187 = 1.0;
            }

            v181[60] = (*v181 / (v185 + (*v66.i32 * *v181))) + (v184 * v187);
            ++v182;
            ++v181;
            --v186;
          }

          while (v186);
        }

        v188 = &v46[v174];
        *v65.i32 = fabsf(*v188);
        if (*v65.i32 > 1.0)
        {
LABEL_186:
          v8 = 13;
          goto LABEL_187;
        }

        if ((v176 & 1) == 0)
        {
          if (v180 >= v174)
          {
            v189 = v180 - v174 + 1;
            v190 = v188;
            do
            {
              v66.i32[0] = *v190;
              *v190 = v44[190] + *v190;
              ++v190;
              --v189;
            }

            while (v189);
          }

          if (v178 > v188[1])
          {
            goto LABEL_186;
          }

          v65.i32[0] = 0.5;
          *v188 = (v178 + *v188) * 0.5;
        }

        v176 = 0;
        v177 = &v46[v180];
        v174 = v180;
        v175 = 1;
      }

      while (v179 != 2);
      v191 = v199;
      v192 = v203;
      v193 = 30;
      do
      {
        *v191 = *(v192 - 1);
        v194 = *v192;
        v192 += 2;
        v64.i32[0] = v194;
        v191[30] = v194;
        ++v191;
        --v193;
      }

      while (v193);
      v8 = sub_26154B7C4(v199, (v44 + 150), v197, v201, v64, v65, v66);
      if (!v8)
      {
        break;
      }

      if (!sub_26154CD08(v46, v200))
      {
        break;
      }

      if (++v198 == 4)
      {
        break;
      }

      goto LABEL_68;
    }

    v69 = dword_26157A9B4[v67];
    v70 = dword_26157A9B4[v67 + 1];
    v217 = &v44[v69];
    *v217 = 0.0;
    v44[v70] = *&v47[4 * v67 + 4] - *&v47[4 * v67];
    v71 = &v46[v69];
    *v71 = 0.0;
    v72 = v70 - v69;
    if (v70 > v69)
    {
      v73 = v70 - v69;
      v74 = &v203[v69];
      do
      {
        *v74 = *v74 - v55[v67];
        ++v74;
        --v73;
      }

      while (v73);
    }

    v75 = (v72 + 1);
    if (v75 < 3 || (v76 = (3 * v75), (v77 = malloc_type_malloc(4 * (5 * v75 + 30), 0x100004052888210uLL)) == 0))
    {
      v8 = 15;
      break;
    }

    v212 = v67 + 1;
    v79 = &v211[12 * v67];
    v220 = v77;
    v80 = &v77[4 * v75];
    v81 = &v80[v75];
    v82 = &v81[v76 + 3];
    v83 = (v82 + 36);
    v218 = v82;
    v213 = v82 + 60;
    v216 = (v81 + 3);
    sub_261473680(v79, (v81 + 3), v78, 3, v75, v71);
    v84 = 0;
    v85 = v79[2];
    v214 = v79;
    v86 = -*v79;
    v87 = -v79[1];
    do
    {
      if (v84)
      {
        v88 = -1.0;
      }

      else
      {
        v88 = 1.0;
      }

      v89 = v71[v84] + (v86 * v88);
      v80[v84++] = (v85 * v89) / ((v87 * v89) + 1.0);
    }

    while (v75 != v84);
    v90 = 0;
    v91 = 0.0;
    v92 = v220;
    v93 = v220 + 4 * v75;
    v94 = v217;
    do
    {
      v95 = v217[v90] - *&v93[v90 * 4];
      *&v92[v90 * 4] = v95;
      v91 = v91 + (v95 * v95);
      ++v90;
    }

    while (v75 != v90);
    if ((LODWORD(v91) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      free(v92);
      v8 = 15;
      v12 = v210;
      break;
    }

    v96 = v218 + 72;
    v219 = v218 + 84;
    sub_2614704E8(v216, v92, v218, &v80[v75], v75);
    v97 = &v81[v76 + 3];
    v98 = v220;
    v99 = 0;
    v100 = *(v216 + 4 * v76);
    if (*(v218 + 16) > v100)
    {
      v100 = *(v218 + 16);
    }

    if (*(v218 + 32) > v100)
    {
      v100 = *(v218 + 32);
    }

    v101 = v100 * 0.001;
    v102 = v220 + 8 * v75 + 4 * v76;
    v103 = 4 * v76 + 48;
    v104 = 2;
    while (2)
    {
      if (v91 <= 0.000001)
      {
        v172 = 3;
        break;
      }

      v105 = 0;
      v106 = 0.0;
      v107 = 0.0;
      do
      {
        v108 = v81[v105];
        if (v108 < 0.0)
        {
          v108 = -v108;
        }

        if (v106 < v108)
        {
          v106 = v108;
        }

        *&v102[v105 * 4 + 60] = *&v102[1 * v105 + 12];
        v107 = v107 + (*&v68[v105 * 4] * *&v68[v105 * 4]);
        ++v105;
      }

      while (v105 != 3);
      v109 = v219;
      if (v106 <= 0.000001)
      {
        v172 = 1;
        break;
      }

      for (m = 12; m != 60; m += 16)
      {
        *&v102[m] = v101 + *&v102[m];
      }

      v111 = 0;
      v112 = 1;
      v113 = v109;
      v114 = v97;
      do
      {
        v115 = *v114;
        *v113 = *v114;
        v116 = &v113[v111];
        if (v111)
        {
          v117 = -v111;
          do
          {
            v115 = v115 - (v113[v117] * v113[v117]);
            *v113 = v115;
            v118 = __CFADD__(v117++, 1);
          }

          while (!v118);
          *v113 = sqrtf(v115);
          v119 = v111 + 1;
          if (v111 != 1)
          {
            goto LABEL_112;
          }
        }

        else
        {
          *v113 = sqrtf(v115);
          v119 = 1;
        }

        v120 = v116 + 1;
        v121 = v112;
        do
        {
          v122 = v114[1];
          ++v114;
          v123 = v122;
          *v120 = v122;
          if (v111)
          {
            v124 = &v120[-v111];
            v125 = -v111;
            do
            {
              v126 = *v124++;
              v123 = v123 - (v126 * v113[v125]);
              *v120 = v123;
              v118 = __CFADD__(v125++, 1);
            }

            while (!v118);
          }

          *v120 = v123 / *v113;
          v120 += ++v121;
        }

        while (v121 != 3);
LABEL_112:
        v113 = v116 + 2;
        v114 += v119 + 1;
        ++v112;
        v111 = v119;
      }

      while (v119 != 3);
      v127 = 0;
      v128 = v109;
      do
      {
        v129 = v81[v127];
        *(v96 + 4 * v127) = v129;
        if (v127)
        {
          v130 = (v218 + 72);
          v131 = v127;
          v132 = v128;
          do
          {
            v133 = *v132++;
            v134 = v133;
            v135 = *v130++;
            v129 = v129 - (v134 * v135);
            *(v96 + 4 * v127) = v129;
            --v131;
          }

          while (v131);
        }

        else
        {
          v132 = v128;
        }

        v128 = v132 + 1;
        *(v96 + 4 * v127++) = v129 / *v132;
      }

      while (v127 != 3);
      v136 = 15;
      v137 = 3;
      do
      {
        v138 = v137 - 1;
        v139 = *(v96 + 4 * (v137 - 1));
        v83[v137 - 1] = v139;
        if (v137 <= 2)
        {
          v140 = &v132[v137];
          v141 = v136;
          do
          {
            v139 = v139 - (*v140 * *&v102[4 * v141]);
            v83[v138] = v139;
            v140 = &v140[v141++ - 11];
          }

          while (v141 != 15);
        }

        v83[v138] = v139 / *v132;
        v132 -= v137;
        --v136;
      }

      while (v137-- > 1);
      v143 = 0;
      v144 = 0.0;
      v145 = v83;
      do
      {
        v146 = *v145;
        v145[6] = *&v68[4 * v143] + *v145;
        v144 = v144 + (v146 * v146);
        ++v143;
        ++v145;
      }

      while (v143 != 3);
      if (v144 <= (v107 * 1.0e-12))
      {
        v172 = 2;
      }

      else if ((v144 * 1.0e-12) >= (v107 + 0.000001))
      {
        v172 = 7;
      }

      else
      {
        v147 = 0;
        v148 = *(v97 + 68);
        v149 = -*(v97 + 60);
        v150 = -*(v97 + 64);
        do
        {
          if (v147)
          {
            v151 = -1.0;
          }

          else
          {
            v151 = 1.0;
          }

          v152 = v71[v147] + (v149 * v151);
          v80[v147++] = (v148 * v152) / ((v150 * v152) + 1.0);
        }

        while (v75 != v147);
        v153 = 0.0;
        v154 = v94;
        v155 = v80;
        v156 = v75;
        do
        {
          v157 = *v154++;
          v158 = v157 - *v155;
          *v155++ = v158;
          v153 = v153 + (v158 * v158);
          --v156;
        }

        while (v156);
        if ((LODWORD(v153) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          v172 = 8;
        }

        else if (v153 >= v91)
        {
          v172 = 4;
        }

        else
        {
          v159 = 0.0;
          v160 = &v80[v75];
          v161 = 3;
          do
          {
            v162 = *(v160 + v103);
            v163 = *v160++;
            v159 = v159 + (v162 * (v163 + (v101 * v162)));
            --v161;
          }

          while (v161);
          if (v159 > 0.0 && (v91 - v153) > 0.0)
          {
            v164 = 0;
            v165 = (((v91 - v153) + (v91 - v153)) / v159) + -1.0;
            v166 = (-(v165 * v165) * v165) + 1.0;
            do
            {
              *&v68[v164] = *(v213 + v164);
              v164 += 4;
            }

            while (v164 != 12);
            v215 = v99;
            v167 = v98;
            v168 = v75;
            do
            {
              *v167 = v167[v75];
              ++v167;
              --v168;
            }

            while (v168);
            v169 = fmaxf(v166, 0.3333);
            sub_261473680(v214, v216, v166, 3, v75, v71);
            sub_2614704E8(v216, v220, v218, &v80[v75], v75);
            v97 = v218;
            v98 = v220;
            v104 = 2;
            v91 = v153;
            v94 = v217;
            v99 = v215;
LABEL_149:
            v101 = v101 * v169;
            if (++v99 == 50)
            {
              v171 = 50;
              v44 = v209;
              v12 = v210;
              v55 = v207;
              v46 = v208;
              goto LABEL_159;
            }

            continue;
          }

          if (2 * v104 > v104)
          {
            v169 = v104;
            v170 = *(v97 + 52);
            *v97 = *(v97 + 48);
            *(v97 + 16) = v170;
            *(v97 + 32) = *(v97 + 56);
            v104 *= 2;
            goto LABEL_149;
          }

          v172 = 6;
        }
      }

      break;
    }

    v171 = v99;
    v44 = v209;
    v12 = v210;
    v55 = v207;
    v46 = v208;
    if (v99 >= 0x32)
    {
LABEL_159:
      v172 = 5;
    }

    v173 = *(v97 + 52);
    *v97 = *(v97 + 48);
    *(v97 + 16) = v173;
    *(v97 + 32) = *(v97 + 56);
    free(v98);
    v8 = 15;
    if (v172 > 5)
    {
      break;
    }

    v68 += 12;
    v67 = v212;
    v47 = v206;
  }

  while ((v171 & 0x80000000) == 0);
LABEL_187:
  if (v200)
  {
    free(v200);
  }

  free(v44);
  v13 = v204;
  a5 = v202;
  if (!v8)
  {
    goto LABEL_190;
  }

  return v8;
}

uint64_t sub_26154C850(uint64_t result, int a2, int a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9)
{
  v99 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v9 = xmmword_261560F00;
  v10 = (a4 + 12);
  v11 = 10;
  v12 = vdupq_n_s64(9uLL);
  v13 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v12, v9)).u8[0])
    {
      *(v10 - 2) = -1082130432;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v9)).i32[1])
    {
      *v10 = -1082130432;
    }

    v9 = vaddq_s64(v9, v13);
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (a5 >= 0.0)
  {
    v14 = a2 < a6 || (a2 - 1) < a5;
    if (!v14 && a6 >= 0.0)
    {
      v15 = (a6 - a5) / 7.0;
      v16 = 20;
      if (a3)
      {
        v17 = 20;
      }

      else
      {
        v17 = 0;
      }

      if (a3)
      {
        v16 = 30;
      }

      v18 = 1.0 / (a7 + a7);
      v19 = a3;
      v20 = (&unk_26157AA18 + 16 * v17);
      do
      {
        *v98 = a5;
        v21 = v20;
        v22 = a5;
        for (i = 1; i != 5; ++i)
        {
          v24 = *v21++;
          v22 = v22 + (v24 * v15);
          *&v98[i] = v22;
        }

        if (result)
        {
          v25 = 0;
          v26 = 0.0;
          v27 = a5;
          do
          {
            v28 = v27;
            v29 = vcvtms_s32_f32(v27);
            v30 = v25 + 1;
            v27 = *&v98[v25 + 1];
            v31 = vcvtps_s32_f32(v27);
            if (v29 == v31)
            {
              v32 = v25 + v19;
              v33 = *(result + 4 * v29);
              v34 = fmaxf(v33 - a9, 0.0);
              v35 = v33 - a8;
              if (v35 > 0.0)
              {
                v35 = 0.0;
              }

              if ((v32 & 1) == 0)
              {
                v35 = v34;
              }

              v26 = v26 + ((v27 - v28) * (v18 * (v35 * v35)));
            }

            else if (v29 < v31)
            {
              v36 = (v29 + 1) - v28;
              v37 = (v27 - ceilf(v27)) + 1.0;
              v38 = v25 + v19;
              v39 = v29;
              do
              {
                v40 = *(result + 4 * v39);
                if (v38)
                {
                  v41 = fmaxf(v40 - a9, 0.0);
                }

                else
                {
                  v41 = v40 - a8;
                  if (v41 > 0.0)
                  {
                    v41 = 0.0;
                  }
                }

                v42 = v18 * (v41 * v41);
                v43 = v37 * v42;
                if (v39 + 1 != v31)
                {
                  v43 = v42;
                }

                v44 = v36 * v42;
                v45 = v39 == v29;
                if (v39 == v29)
                {
                  v39 = v29 + 1;
                }

                else
                {
                  ++v39;
                }

                if (!v45)
                {
                  v44 = v43;
                }

                v26 = v26 + v44;
              }

              while (v39 != v31);
            }

            v25 = v30;
          }

          while (v30 != 4);
          v46 = -v26 / (a6 - a5);
        }

        else
        {
          v46 = -100.0;
        }

        v47 = *(a4 + 36);
        if (v47 == 0.0 || v47 < v46)
        {
          *(a4 + 36) = v46;
          *(a4 + 32) = v17;
        }

        v49 = 0;
        v50 = -(v46 * (*&v98[4] - a5));
        do
        {
          v51 = 0;
          v52 = (&unk_26157A9D8 + 8 * v49);
          v53 = (((a6 + (v15 * v52[1])) - a5) + (-v15 * *v52)) / 7.0;
          v54 = a5 + (v15 * *v52);
          *v97 = v54;
          v55 = v54;
          do
          {
            v55 = v55 + (v20[v51] * v53);
            *&v97[++v51] = v55;
          }

          while (v51 != 4);
          if (result)
          {
            v56 = 0;
            v57 = v50;
            do
            {
              v58 = *&v98[v56];
              v59 = *&v97[v56];
              if (vabds_f32(v58, v59) >= 0.1)
              {
                if (v58 <= v59)
                {
                  v60 = *&v98[v56];
                }

                else
                {
                  v60 = *&v97[v56];
                }

                if (v58 <= v59)
                {
                  v61 = *&v97[v56];
                }

                else
                {
                  v61 = *&v98[v56];
                }

                v62 = v56 & 0x7FFFFFFFFFFFFFFBLL;
                v63 = v60;
                v64 = v61;
                if (SLODWORD(v60) == SLODWORD(v61))
                {
                  v65 = v61 - v60;
                  v66 = *(result + 4 * v63);
                  v67 = fmaxf(v66 - a9, 0.0);
                  v68 = v66 - a8;
                  if (v68 > 0.0)
                  {
                    v68 = 0.0;
                  }

                  v69 = v65 * (v18 * (v67 * v67));
                  v70 = v65 * (v18 * (v68 * v68));
                  v71 = v69 - v70;
                  v72 = v62 == 0;
                  if (!v62)
                  {
                    v71 = v69;
                  }

                  v73 = v70 - v69;
                }

                else
                {
                  v74 = 0.0;
                  v70 = 0.0;
                  if (v63 <= v64)
                  {
                    v75 = 0;
                    v76 = v64;
                    v77 = v61 - v64;
                    v78 = (v63 + 1) - v60;
                    v79 = v64 - v63 + 1;
                    v80 = v76 - v63;
                    v81 = result + 4 * v63;
                    v70 = 0.0;
                    do
                    {
                      v82 = *(v81 + 4 * v75);
                      v83 = v82 - a8;
                      if ((v82 - a8) > 0.0)
                      {
                        v83 = 0.0;
                      }

                      v84 = fmaxf(v82 - a9, 0.0);
                      v85 = v18 * (v84 * v84);
                      v86 = v18 * (v83 * v83);
                      v87 = v77 * v85;
                      v88 = v77 * v86;
                      if (v80 != v75)
                      {
                        v88 = v86;
                        v87 = v85;
                      }

                      v89 = v78 * v85;
                      v90 = v78 * v86;
                      if (v75)
                      {
                        v90 = v88;
                        v89 = v87;
                      }

                      v70 = v70 + v90;
                      v74 = v74 + v89;
                      ++v75;
                    }

                    while (v79 != v75);
                  }

                  v71 = v74 - v70;
                  v72 = v62 == 0;
                  if (!v62)
                  {
                    v71 = v74;
                  }

                  v73 = v70 - v74;
                }

                if (!v72)
                {
                  v70 = v73;
                }

                if (v56)
                {
                  v70 = v71;
                }

                if (v58 <= v59)
                {
                  v91 = -v70;
                }

                else
                {
                  v91 = v70;
                }

                v57 = v57 + v91;
              }

              ++v56;
            }

            while (v56 != 5);
            v92 = -v57 / (*&v97[4] - v54);
          }

          else
          {
            v92 = -100.0;
          }

          if (v49 <= 3)
          {
            v93 = v49;
          }

          else
          {
            v93 = v49 + 1;
          }

          v94 = a4 + 8 * v93;
          v95 = *(v94 + 4);
          if (v95 == 0.0 || v95 < v92)
          {
            *(v94 + 4) = v92;
            *v94 = v17;
          }

          ++v49;
        }

        while (v49 != 8);
        ++v17;
        v20 += 4;
      }

      while (v17 < v16);
    }
  }

  return result;
}

uint64_t sub_26154CD08(float *a1, uint64_t a2)
{
  result = 0;
  v32 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v5 = *a1;
    v6 = 0.0;
    v7 = 1;
    v8 = a2;
    do
    {
      v9 = a1[v7];
      *v8++ = 1;
      v6 = v6 + fabsf((v9 - v5) + -1.0);
      ++v7;
      v5 = v9;
    }

    while (v7 != 4);
    if (v6 < 2.1)
    {
      v10 = 0;
      v11 = (a2 + 12);
      while (1)
      {
        v12 = &a1[v10 + 3];
        v13 = vld1q_dup_f32(v12);
        v31 = vsubq_f32(*&a1[v10 + 4], vextq_s8(v13, *&a1[v10 + 4], 0xCuLL));
        if (sub_26147DB24(&v31, v11) >= 4.9)
        {
          break;
        }

        ++v11;
        v10 += 4;
        if ((v10 * 4) == 96)
        {
          v14 = a1[27];
          v15 = (a2 + 108);
          v16 = 0.0;
          for (i = 28; i != 33; ++i)
          {
            v18 = a1[i];
            *v15++ = 1;
            v16 = v16 + fabsf((v18 - v14) + -1.0);
            v14 = v18;
          }

          if (v16 < 3.5)
          {
            v19 = 0;
            for (j = (a2 + 128); ; ++j)
            {
              v21 = &a1[v19 + 32];
              v22 = vld1q_dup_f32(v21);
              v31 = vsubq_f32(*&a1[v19 + 33], vextq_s8(v22, *&a1[v19 + 33], 0xCuLL));
              if (sub_26147DB24(&v31, j) >= 4.9)
              {
                break;
              }

              v19 += 4;
              if ((v19 * 4) == 96)
              {
                v23 = a1[56];
                v24 = (a2 + 224);
                v25 = 0.0;
                for (k = 57; k != 60; ++k)
                {
                  v27 = a1[k];
                  *v24++ = 1;
                  v25 = v25 + fabsf((v27 - v23) + -1.0);
                  v23 = v27;
                }

                if (v25 < 2.1)
                {
                  v28 = 0;
                  *a1 = 0.0;
                  v29 = a1 + 1;
                  v30 = 0.0;
                  result = 1;
                  do
                  {
                    v30 = v30 + *(a2 + v28 * 4);
                    v29[v28++] = v30;
                  }

                  while (v28 != 59);
                  return result;
                }

                return 0;
              }
            }
          }

          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_26154CF2C(uint64_t a1, float *a2, uint64_t a3, float *a4, uint64_t a5)
{
  v5 = a3;
  v20 = *MEMORY[0x277D85DE8];
  if ((a3 - 25) < 0xFFFFFFFD)
  {
    return 16;
  }

  if (!sub_26154AD6C(a1, a2, a3, a4, 1))
  {
    return 23;
  }

  *(a5 + 8) = 13;
  v10.n128_u64[0] = 0x800000001;
  *(a5 + 80) = 0x800000001;
  MEMORY[0x28223BE20](v10);
  v11 = malloc_type_malloc(*(a5 + 8), 0x100004077774924uLL);
  v15 = *(a5 + 16);
  if (v15)
  {
    free(v15);
  }

  *(a5 + 16) = v11;
  v19 = 0.0;
  sub_26154B0E0(v11, dword_26157A9C0, a2, a4, &v18, &v19, v12, v13, v14);
  if (v19 < 0.65)
  {
    return 2;
  }

  *(a5 + 24) = v19;
  v11[4] = 0;
  *v11 = 0;
  v16 = v11[12];
  if (v16 != sub_26154B954(v11))
  {
    return 5;
  }

  result = 0;
  *(a5 + 72) = (a4[1] - *a2) / 3.0;
  *(a5 + 76) = (a4[21] - a2[20]) / 3.0;
  v17 = *(a5 + 64);
  v17[10] = 0;
  v17[11] = v5 - 22;
  v17[12] = *a2;
  v17[13] = *(a4 + 21);
  v17[5] = 22;
  *v11 = *(v11 + 5);
  *(v11 + 2) = 0;
  v11[12] = 0;
  return result;
}

uint64_t sub_26154D100(uint64_t a1, float *a2, uint64_t a3, float *a4, uint64_t a5)
{
  v5 = a3;
  v35 = *MEMORY[0x277D85DE8];
  if ((a3 - 20) < 0xFFFFFFFD)
  {
    return 16;
  }

  if (!sub_26154AD6C(a1, a2, a3, a4, 2))
  {
    return 23;
  }

  *(a5 + 8) = 13;
  v10.n128_u64[0] = 0x700000001;
  *(a5 + 80) = 0x700000001;
  MEMORY[0x28223BE20](v10);
  v11 = malloc_type_malloc(*(a5 + 8), 0x100004077774924uLL);
  v15 = *(a5 + 16);
  if (v15)
  {
    free(v15);
  }

  *(a5 + 16) = v11;
  v34 = 0.0;
  sub_26154B0E0(v11, dword_26157A9CC, a2, a4, v31, &v34, v12, v13, v14);
  if (v34 < 0.65)
  {
    return 2;
  }

  v16 = 0;
  v17 = 0;
  *(a5 + 24) = v34;
  do
  {
    v17 |= v31[v16 + 1] << v16;
    ++v16;
  }

  while (v16 != 6);
  v18 = v17 - 7;
  if (v18 >= 0x32u || ((0x22C2CD02CD0D1uLL >> v18) & 1) == 0)
  {
    return 4;
  }

  v19 = byte_26157AFC8[v18];
  v20 = byte_26157AFFA[v18];
  v21 = v11[5];
  v22 = *(v11 + 1);
  v23 = v11[6];
  v32 = v21;
  v33 = v20;
  if (v23 <= 4)
  {
    if (v23 <= 1)
    {
      if (!v23)
      {
        *v11 = 0;
        v25 = HIBYTE(v22);
        v11[1] = v20;
        v26 = HIWORD(v22);
        *(v11 + 1) = v22;
        *(v11 + 1) = 0;
        v11[8] = 0;
LABEL_32:
        v11[9] = v26;
        v11[10] = v25;
LABEL_35:
        v11[11] = v21;
LABEL_38:
        v28 = v19;
        v29 = v19;
        v11[12] = v19;
        goto LABEL_39;
      }

      *v11 = 0;
      v25 = HIBYTE(v22);
      v11[1] = v20;
      v26 = HIWORD(v22);
      *(v11 + 1) = v22;
      v27 = 1;
    }

    else
    {
      if (v23 != 2)
      {
        *v11 = 0;
        v11[1] = v20;
        if (v23 == 3)
        {
          *(v11 + 1) = v22;
          v11[4] = BYTE2(v22);
          *(v11 + 5) = 0;
          v11[9] = 0;
          v11[10] = HIBYTE(v22);
        }

        else
        {
          *(v11 + 2) = v22;
          *(v11 + 6) = 0;
          v11[10] = 0;
        }

        goto LABEL_35;
      }

      *v11 = 0;
      v25 = HIBYTE(v22);
      v11[1] = v20;
      v26 = HIWORD(v22);
      *(v11 + 1) = v22;
      v27 = 2;
    }

    v11[4] = v27;
    *(v11 + 5) = 0;
    goto LABEL_32;
  }

  if (v23 <= 6)
  {
    *v11 = 0;
    v11[1] = v20;
    *(v11 + 2) = v22;
    v11[6] = v21;
    *(v11 + 7) = 0;
    if (v23 == 5)
    {
      v24 = 5;
    }

    else
    {
      v24 = 6;
    }

    goto LABEL_37;
  }

  switch(v23)
  {
    case 7:
      *v11 = 0;
      v11[1] = v20;
      *(v11 + 2) = v22;
      v11[6] = v21;
      *(v11 + 7) = 0;
      v24 = 7;
      goto LABEL_37;
    case 8:
      *v11 = 0;
      v11[1] = v20;
      *(v11 + 2) = v22;
      v11[6] = v21;
      *(v11 + 7) = 0;
      v24 = 8;
      goto LABEL_37;
    case 9:
      *v11 = 0;
      v11[1] = v20;
      *(v11 + 2) = v22;
      v11[6] = v21;
      *(v11 + 7) = 0;
      v24 = 9;
LABEL_37:
      v11[11] = v24;
      goto LABEL_38;
  }

  v29 = v19;
  v28 = v11[12];
LABEL_39:
  if (v28 != sub_26154B954(v11))
  {
    return 5;
  }

  result = 0;
  *(a5 + 72) = (a4[1] - *a2) / 3.0;
  *(a5 + 76) = (a4[16] - a2[14]) / 5.0;
  v30 = *(a5 + 64);
  v30[10] = 0;
  v30[11] = v5 - 17;
  v30[12] = *a2;
  v30[13] = *(a4 + 16);
  v30[5] = 17;
  LOBYTE(v30) = v32;
  *v11 = v33;
  *(v11 + 1) = v22;
  v11[5] = v30;
  v11[6] = v23;
  v11[7] = v29;
  *(v11 + 2) = 0;
  v11[12] = 0;
  return result;
}

uint64_t sub_26154D5D0(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3 - 1)
  {
    v3 = a3 - 1;
  }

  v4 = 13;
  if (v3 < 0xD)
  {
    v4 = v3;
  }

  if (v3)
  {
    v5 = *(result + 16);
    v6 = a2;
    v7 = v4;
    do
    {
      v8 = *v5++;
      *v6++ = (v8 - 10 * ((205 * v8) >> 11)) | 0x30;
      --v7;
    }

    while (v7);
  }

  a2[v4] = 0;
  return result;
}

uint64_t sub_26154D62C(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3 - 1)
  {
    v3 = a3 - 1;
  }

  v4 = 8;
  if (v3 < 8)
  {
    v4 = v3;
  }

  if (v3)
  {
    v5 = *(result + 16);
    v6 = a2;
    v7 = v4;
    do
    {
      v8 = *v5++;
      *v6++ = (v8 - 10 * ((205 * v8) >> 11)) | 0x30;
      --v7;
    }

    while (v7);
  }

  a2[v4] = 0;
  return result;
}

uint64_t sub_26154D688(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3 - 1)
  {
    v3 = a3 - 1;
  }

  v4 = 8;
  if (v3 < 8)
  {
    v4 = v3;
  }

  if (v3)
  {
    v5 = *(result + 16);
    v6 = a2;
    v7 = v4;
    do
    {
      v8 = *v5++;
      *v6++ = (v8 - 10 * ((205 * v8) >> 11)) | 0x30;
      --v7;
    }

    while (v7);
  }

  a2[v4] = 0;
  return result;
}

void sub_26154D720(int a1, unsigned int a2, unsigned int a3, float *a4, float *a5, float *a6, float *a7, _DWORD *a8, float *a9)
{
  v9 = a7;
  v14 = 0;
  v15 = &a7[a3 * a2];
  v16 = a3;
  v46 = a3 * a1;
  v17 = a2;
  v18 = 4 * a2;
  do
  {
    v19 = 0.0;
    v20 = v9;
    v21 = a6;
    v22 = v17;
    do
    {
      v23 = *v20++;
      v24 = v23;
      v25 = *v21++;
      v19 = v19 + (v24 * v25);
      --v22;
    }

    while (v22);
    a4[v14] = 1.0 / (expf(-(v19 + v15[v14])) + 1.0);
    ++v14;
    v9 = (v9 + v18);
  }

  while (v14 != v16);
  v26 = 0;
  v27 = &v15[v16];
  v28 = &v27[v46];
  do
  {
    v29 = 0.0;
    v30 = v27;
    v31 = a4;
    v32 = v16;
    do
    {
      v33 = *v30++;
      v34 = v33;
      v35 = *v31++;
      v29 = v29 + (v34 * v35);
      --v32;
    }

    while (v32);
    a5[v26] = v29 + v28[v26];
    ++v26;
    v27 += v16;
  }

  while (v26 != a1);
  v36 = *a5;
  v37 = 1;
  v38 = *a5;
  do
  {
    if (a5[v37] > v38)
    {
      v38 = a5[v37];
    }

    ++v37;
  }

  while (a1 != v37);
  v39 = 0;
  v40 = 0.0;
  do
  {
    v40 = v40 + expf(a5[v39++] - v38);
  }

  while (a1 != v39);
  v41 = v38 + logf(v40);
  v42 = expf(v36 - v41);
  v43 = 0;
  *a5 = v42;
  v44 = 1;
  do
  {
    v45 = expf(a5[v44] - v41);
    a5[v44] = v45;
    if (v45 > v42)
    {
      v42 = v45;
      v43 = v44;
    }

    ++v44;
  }

  while (a1 != v44);
  *a8 = v43;
  *a9 = v42;
}

uint64_t sub_26154D8FC(int *a1, size_t count, uint64_t a3)
{
  if (count < 4)
  {
    return 6;
  }

  v5 = *a1;
  if ((*a1 - 106) < 0xFFFFFFFD || a1[count - 1] != 106)
  {
    return 6;
  }

  v7 = count - 2;
  v8 = count - 3;
  v9 = 1;
  v10 = count;
  do
  {
    v11 = a1[v9];
    if (v11 > 102)
    {
      return 5;
    }

    v5 += v11 * v9++;
    --v8;
  }

  while (v8);
  if (v5 % 103 != a1[v7])
  {
    return 5;
  }

  *(a3 + 8) = count;
  *(a3 + 80) = 1;
  *(a3 + 84) = v7;
  v12 = *(a3 + 16);
  if (v12)
  {
    free(v12);
  }

  *(a3 + 16) = 0;
  v13 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  v14 = 0;
  *(a3 + 16) = v13;
  do
  {
    result = 0;
    *(*(a3 + 16) + v14) = a1[v14];
    ++v14;
  }

  while (v10 != v14);
  return result;
}

uint64_t sub_26154DA20(double a1, double a2, double a3, uint64_t a4, uint64_t *a5, int a6, float32x2_t *a7, uint64_t a8)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a6 < 13)
  {
    return 16;
  }

  *(a8 + 24) = 0;
  *(a8 + 8) = 0;
  v46 = 0;
  v13 = *a7;
  v14 = *a5;
  v15 = *(a5 + 2);
  v16 = a7[1].f32[0];
  *v17.f32 = *a7;
  v17.f32[2] = v16;
  v17.i32[3] = HIDWORD(*a5);
  *&a3 = 1.0 / (*(a5 + 3) - COERCE_FLOAT(*a5));
  v18.i64[0] = *a5;
  v18.i32[2] = v15;
  v18.i32[3] = *a5;
  v50 = vmulq_n_f32(vsubq_f32(v17, v18), *&a3);
  v18.i32[0] = v13.i32[1];
  v19.i32[0] = vdup_lane_s32(v13, 1).u32[0];
  v19.i32[1] = v15;
  v13.i32[1] = HIDWORD(v14);
  v51 = vmul_f32(*&vdupq_lane_s32(*&a3, 0), vsub_f32(v19, v13));
  v52 = *&a3 * (v16 - v18.f32[0]);
  sub_26154D720(107, 7u, 0xFu, v49, v48, v50.f32, flt_26157B02C, &v46 + 1, &v46);
  result = 6;
  if ((HIDWORD(v46) - 106) >= 0xFFFFFFFD)
  {
    v20 = *&v46;
    if (*&v46 >= 0.4)
    {
      v44 = a8;
      v45 = a6;
      v47[0] = HIDWORD(v46);
      v21 = a6 & 0x7FFFFFFF;
      v22 = 1;
      v23 = 3;
      v24 = *&v46;
      v25 = -1;
      v26 = -1;
      while (1)
      {
        if (v23 + 3 >= v21 || v22 > 0x7F)
        {
          v40 = v45;
          v41 = v45;
          v39 = v22;
          goto LABEL_27;
        }

        v27 = a5 + 4 * v23;
        v28 = *(a7 + 4 * v23);
        v29 = 4 * v23 + 8;
        v30 = *(a7->f32 + v29);
        v31.i64[0] = v28;
        v31.f32[2] = v30;
        v32 = *v27;
        v31.i32[3] = HIDWORD(*v27);
        v33.i64[0] = *v27;
        v33.i32[2] = *(a5 + v29);
        v33.i32[3] = *v27;
        v34 = vsubq_f32(v31, v33);
        v33.f32[0] = 1.0 / (*(v27 + 12) - v33.f32[3]);
        v50 = vmulq_n_f32(v34, v33.f32[0]);
        v51.f32[0] = v33.f32[0] * (*(&v28 + 1) - *&v28);
        v51.f32[1] = v33.f32[0] * (v33.f32[2] - *(&v32 + 1));
        v52 = v33.f32[0] * (v30 - *(&v28 + 1));
        sub_26154D720(107, 7u, 0xFu, v49, v48, v50.f32, flt_26157B02C, &v46 + 1, &v46);
        v35 = *&v46;
        if (*&v46 >= 0.4)
        {
          v37 = HIDWORD(v46);
        }

        else
        {
          if (v26 != -1)
          {
            return 13;
          }

          v25 = 0;
          v36 = v48[0];
          v37 = HIDWORD(v46);
          for (i = 1; i != 107; ++i)
          {
            if (HIDWORD(v46) != i && v48[i] > v36)
            {
              v25 = i;
              v36 = v48[i];
            }
          }

          v26 = (*&v46 - v36) > 0.1 ? -1 : v22;
        }

        v39 = v22 + 1;
        v47[v22] = v37;
        v20 = v20 + v35;
        if (v35 < v24)
        {
          v24 = v35;
        }

        if (v37 == 106)
        {
          break;
        }

        v23 += 3;
        ++v22;
        if (v37 > 102)
        {
          return 6;
        }
      }

      v41 = v23 + 4;
      v40 = v45;
LABEL_27:
      result = sub_26154D8FC(v47, v39, v44);
      if (result && v26 != -1)
      {
        v47[v26] = v25;
        result = sub_26154D8FC(v47, v39, v44);
      }

      if (!result)
      {
        if ((*(v47 + (((v39 << 32) - 0x300000000) >> 30)) - 98) <= 3)
        {
          *(v44 + 4) = 4;
        }

        result = 0;
        *(v44 + 24) = ((v20 / v39) * 0.3) + (v24 * 0.7);
        *(v44 + 72) = (*(a5 + 6) - *a5) / 22.0;
        v42 = 4 * v41 - 4;
        *(v44 + 76) = (*(a5 + v42) - *(a5 + v41 - 7)) / 22.0;
        v43 = *(v44 + 64);
        v43[10] = 0;
        v43[11] = v40 - v41;
        v43[12] = *a5;
        v43[13] = *(a7->i32 + v42);
        v43[5] = v41;
      }
    }
  }

  return result;
}

void sub_26154DE24(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, const char *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  if (v5 < 4)
  {
    return;
  }

  v6 = *(a1 + 16);
  if (*v6 - 103 > 2 || v6[(*(a1 + 8) & 0x7FFFFFFFLL) - 1] != 106)
  {
    return;
  }

  v11 = (*v6 - 103);
  v12 = malloc_type_calloc(2 * (*(a1 + 8) & 0x7FFFFFFFLL), 1uLL, 0x100004077774924uLL);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = -1;
  v19 = -1;
  v20 = -1;
  while (1)
  {
    v21 = v13 + 1;
    v22 = v6[v13 + 1];
    if (!v11 && (v16 & 1) == 0 || v11 == 1 && ((v16 ^ 1) & 1) == 0)
    {
      if (v6[v13 + 1] > 0x3Fu)
      {
        if ((v22 & 0xE0) != 0x40)
        {
          v29 = v6[v13 + 1];
          if (v29 <= 0x63)
          {
            goto LABEL_36;
          }

          if (v29 == 100)
          {
            v23 = 0;
            v16 = 0;
            v11 = 1;
            goto LABEL_15;
          }

          if (v29 == 101)
          {
            if (v6[v13] != 101)
            {
              goto LABEL_57;
            }

            goto LABEL_33;
          }

LABEL_47:
          if (v29 != 102)
          {
            goto LABEL_50;
          }

          if (v21 < 3)
          {
            goto LABEL_49;
          }

          v23 = 0;
          v16 = 0;
          v12[v17] = 29;
LABEL_14:
          ++v17;
          goto LABEL_15;
        }

        v23 = 0;
        v16 = 0;
        v24 = v22 - 64;
LABEL_13:
        v12[v17] = v24;
        goto LABEL_14;
      }

LABEL_10:
      v23 = 0;
      v16 = 0;
      v24 = v22 + 32;
      goto LABEL_13;
    }

    if (!((v11 != 1) | v16 & 1) || !((v11 != 0) | (v16 ^ 1) & 1))
    {
      break;
    }

    if (v11 != 2)
    {
      goto LABEL_60;
    }

    v26 = v6[v13 + 1];
    if (v26 <= 0x63)
    {
      v27 = v6[v13 + 1] / 0xAu;
      v28 = &v12[v17];
      *v28 = v27 | 0x30;
      v17 += 2;
      v28[1] = (v22 - 10 * v27) | 0x30;
LABEL_28:
      v11 = 2;
      goto LABEL_21;
    }

    if (v26 == 100)
    {
      v11 = 1;
      goto LABEL_21;
    }

    if (v26 == 102)
    {
      if (v21 >= 3)
      {
        v12[v17] = 29;
        v11 = 2;
        ++v17;
        goto LABEL_21;
      }

      goto LABEL_28;
    }

    if (v26 != 101)
    {
      goto LABEL_60;
    }

    v11 = 0;
LABEL_21:
    if ((v5 - 2) - 1 == ++v13)
    {
      if (v14)
      {
        if (a5)
        {
          v30 = a5;
        }

        else
        {
          v30 = "ISO-8859-1";
        }

        v31 = MEMORY[0x266704AD0]("UTF-8", v30);
        if (v31 == -1)
        {
          if (qword_27FEB4220 != -1)
          {
            dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
          }

          v39 = qword_27FEB4218;
          if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
          {
            v40 = *__error();
            *buf = 136446722;
            *&buf[4] = "UTF-8";
            v49 = 2082;
            v50 = v30;
            v51 = 1026;
            v52 = v40;
            _os_log_error_impl(&dword_26146F000, v39, OS_LOG_TYPE_ERROR, "[Code128] iconv_open(%{public}s, %{public}s) failed: %{public, errno}d", buf, 0x1Cu);
          }
        }

        else
        {
          v32 = v31;
          *buf = v17;
          v44 = a2;
          v45 = a3;
          v43 = v12;
          if (MEMORY[0x266704AB0](v31, &v43, buf, &v44, &v45) == -1)
          {
            if (qword_27FEB4220 != -1)
            {
              dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
            }

            v41 = qword_27FEB4218;
            if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
            {
              v42 = *__error();
              *v46 = 67240192;
              v47 = v42;
              _os_log_error_impl(&dword_26146F000, v41, OS_LOG_TYPE_ERROR, "[Code128] iconv failed: %{public, errno}d", v46, 8u);
            }

            MEMORY[0x266704AC0](v32);
          }

          else
          {
            MEMORY[0x266704AC0](v32);
            if (v45)
            {
              v33 = a3 - v45;
              *a4 = a3 - v45;
              a2[v33] = 0;
            }
          }
        }
      }

      else
      {
        v34 = v17;
        if (a3 - 1 < v17)
        {
          v34 = a3 - 1;
        }

        if (v34 >= 1)
        {
          v35 = v34 & 0x7FFFFFFF;
          v36 = v12;
          v37 = a2;
          do
          {
            v38 = *v36++;
            *v37++ = v38;
            --v35;
          }

          while (v35);
        }

        a2[v34] = 0;
        *a4 = v34;
      }

      goto LABEL_85;
    }
  }

  v29 = v6[v13 + 1];
  if (v29 <= 0x5F)
  {
    goto LABEL_10;
  }

  if (v6[v13 + 1] <= 0x63u)
  {
LABEL_36:
    if (v29 - 96 >= 2)
    {
      if (v29 == 98)
      {
        v23 = 0;
        v16 = 1;
        goto LABEL_15;
      }

      if (v29 == 99)
      {
        v23 = 0;
        v16 = 0;
        v11 = 2;
        goto LABEL_15;
      }

LABEL_50:
      v16 = 0;
      v23 = 7;
      goto LABEL_15;
    }

LABEL_49:
    v23 = 0;
    v16 = 0;
    goto LABEL_15;
  }

  if (v29 != 100)
  {
    if (v29 == 101)
    {
      v23 = 0;
      v16 = 0;
      v11 = 0;
      goto LABEL_15;
    }

    goto LABEL_47;
  }

  if (v6[v13] != 100)
  {
LABEL_57:
    v23 = 0;
    v16 = 0;
    v20 = v17;
    goto LABEL_15;
  }

LABEL_33:
  v23 = 0;
  v16 = 0;
  v15 ^= 1u;
  v18 = v17 - 1;
  v19 = v17;
LABEL_15:
  v25 = v17 - 1;
  if (v20 == v17 - 1 && v19 < v25)
  {
    v12[v20] ^= 0x80u;
    v14 = 1;
    v19 = v20;
  }

  if ((v15 & (v18 < v25)) != 0)
  {
    v12[v25] ^= 0x80u;
    v15 = 1;
    v18 = v17 - 1;
    v14 = 1;
  }

  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_60:
  if (a3)
  {
    *a2 = 0;
  }

LABEL_85:

  free(v12);
}

float sub_26154E41C(uint64_t a1, uint64_t a2, int a3, float *a4)
{
  v4 = 4 * a3;
  v5 = v4 + 16;
  v6 = *(a1 + v4);
  v7 = 1.0 / (*(a2 + v4 + 16) - v6);
  *a4 = v7 * (*(a2 + v4) - v6);
  v8 = v4 + 4;
  a4[1] = v7 * (*(a2 + v4 + 4) - *(a1 + v4 + 4));
  v9 = v4 + 8;
  a4[2] = v7 * (*(a2 + v4 + 8) - *(a1 + v4 + 8));
  v4 += 12;
  a4[3] = v7 * (*(a2 + v4) - *(a1 + v4));
  a4[4] = v7 * (*(a2 + v5) - *(a1 + v5));
  a4[5] = v7 * (*(a1 + v8) - *(a1 + 4 * a3));
  a4[6] = v7 * (*(a2 + v8) - *(a2 + 4 * a3));
  a4[7] = v7 * (*(a1 + v9) - *(a1 + v8));
  a4[8] = v7 * (*(a2 + v9) - *(a2 + v8));
  a4[9] = v7 * (*(a1 + v4) - *(a1 + v9));
  a4[10] = v7 * (*(a2 + v4) - *(a2 + v9));
  a4[11] = v7 * (*(a1 + v5) - *(a1 + v4));
  result = v7 * (*(a2 + v5) - *(a2 + v4));
  a4[12] = result;
  return result;
}

uint64_t sub_26154E548(uint64_t a1, float *a2, int a3, float *a4, uint64_t a5, int a6, int a7)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3 < 20)
  {
    v8 = a7;
  }

  else
  {
    v8 = 0;
  }

  v9 = 16;
  if (a3 < 15 || (v8 & 1) != 0)
  {
    return v9;
  }

  v10 = a3 / 5u;
  if (a3 % 5u)
  {
    return 2;
  }

  v13 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v50 = 0.0;
  sub_26154E41C(a2, a4, 5 * (v10 - 1), v53);
  v48 = v10 - 1;
  v14 = &v13[v10 - 1];
  sub_26154D720(44, 0xDu, 0x14u, v52, v51, v53, flt_26157CCCC, v14, &v50);
  if (*v14 != 43)
  {
    goto LABEL_91;
  }

  v15 = 0;
  v16 = 0;
  v17 = INFINITY;
  if (v50 < INFINITY)
  {
    v17 = v50;
  }

  if (v50 <= INFINITY)
  {
    v18 = v17;
  }

  else
  {
    v18 = v50;
  }

  v19 = v50 + 0.0;
  v20 = v10 - 1;
  do
  {
    sub_26154E41C(a2, a4, v15, v53);
    sub_26154D720(44, 0xDu, 0x14u, v52, v51, v53, flt_26157CCCC, &v13[v16], &v50);
    if (!(v16 * 4) && *v13 != 43)
    {
      goto LABEL_91;
    }

    v19 = v19 + v50;
    if (v50 < v18)
    {
      v18 = v50;
    }

    ++v16;
    v15 += 5;
    --v20;
  }

  while (v20);
  v21 = ((v19 / v10) * 0.2) + (v18 * 0.8);
  *(a5 + 24) = v21;
  v22 = v21 > 0.65 && a3 > 0x1D;
  if (!v22 && v21 <= 0.85 || *v13 != 43 || v13[v48] != 43)
  {
LABEL_91:
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    v9 = 6;
    goto LABEL_92;
  }

  v23 = malloc_type_malloc(v10, 0x100004077774924uLL);
  v24 = v10 - 2;
  if (a7)
  {
    v25 = v24;
  }

  else
  {
    v25 = v48;
  }

  if (v25 < 2)
  {
    v27 = 0;
    v34 = 0;
    v35 = 0;
    v30 = a5;
    if (a7)
    {
      goto LABEL_89;
    }

    goto LABEL_95;
  }

  v26 = 0;
  v27 = 0;
  v28 = v25 - 1;
  v29 = v13 + 1;
  v30 = a5;
  do
  {
    v32 = *v29++;
    v31 = v32;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v31 - 10 > 0x19)
        {
          goto LABEL_90;
        }

        v26 = 0;
        v33 = v31 + 23;
      }

      else if (v26 == 3)
      {
        if (v31 - 10 > 0x19)
        {
          goto LABEL_90;
        }

        v26 = 0;
        v33 = v31 + 87;
      }

      else if (v31 - 10 > 4)
      {
        if (v31 - 15 > 4)
        {
          if (v31 - 20 > 4)
          {
            if (v31 - 25 > 4)
            {
              switch(v31)
              {
                case 0x20u:
                  v26 = 0;
                  v23[v27] = 96;
                  break;
                case 0x1Fu:
                  v26 = 0;
                  v23[v27] = 64;
                  break;
                case 0x1Eu:
                  v26 = 0;
                  v23[v27] = 0;
                  break;
                default:
                  if (v31 - 33 > 2)
                  {
                    goto LABEL_90;
                  }

                  v26 = 0;
                  v23[v27] = 127;
                  break;
              }

              goto LABEL_61;
            }

            v26 = 0;
            v33 = v31 + 98;
          }

          else
          {
            v26 = 0;
            v33 = v31 + 71;
          }
        }

        else
        {
          v26 = 0;
          v33 = v31 + 44;
        }
      }

      else
      {
        v26 = 0;
        v33 = v31 + 17;
      }

      goto LABEL_60;
    }

    if (v26)
    {
      if (v31 - 10 > 0x19)
      {
        goto LABEL_90;
      }

      v26 = 0;
      v33 = v31 - 9;
      goto LABEL_60;
    }

    if (v31 - 39 > 3)
    {
      if (v31 > 9)
      {
        if (v31 - 10 > 0x19)
        {
          switch(v31)
          {
            case '&':
              v26 = 0;
              v23[v27] = 32;
              break;
            case '%':
              v26 = 0;
              v23[v27] = 46;
              break;
            case '$':
              v26 = 0;
              v23[v27] = 45;
              break;
            default:
              goto LABEL_90;
          }

          goto LABEL_61;
        }

        v26 = 0;
        v33 = v31 + 55;
      }

      else
      {
        v26 = 0;
        v33 = v31 | 0x30;
      }

LABEL_60:
      v23[v27] = v33;
LABEL_61:
      ++v27;
      goto LABEL_62;
    }

    if (a6)
    {
      v26 = v31 - 38;
    }

    else
    {
      if (v31 == 41)
      {
        v26 = 0;
        v23[v27] = 43;
      }

      else if (v31 == 40)
      {
        v26 = 0;
        v23[v27] = 47;
      }

      else
      {
        v26 = 0;
        if (v31 == 39)
        {
          v23[v27] = 36;
        }

        else
        {
          v23[v27] = 37;
        }
      }

      ++v27;
    }

LABEL_62:
    --v28;
  }

  while (v28);
  if (a7)
  {
    v36 = 0;
    v37 = v24 - 1;
    v38 = (v13 + 1);
    do
    {
      v39 = *v38++;
      v36 += v39;
      --v37;
    }

    while (v37);
    v34 = v36 % 43;
LABEL_89:
    v35 = v27;
    if (v34 != v13[v25])
    {
LABEL_90:
      *(v30 + 24) = 0;
      *(v30 + 8) = 0;
      free(v23);
      goto LABEL_91;
    }
  }

  else
  {
    v35 = v27;
  }

LABEL_95:
  v41 = v35;
  *(v30 + 8) = v35;
  *(v30 + 80) = 1;
  *(v30 + 84) = v35;
  v42 = *(v30 + 16);
  if (v42)
  {
    free(v42);
  }

  *(v30 + 16) = 0;
  v43 = malloc_type_malloc(v41 + 1, 0x100004077774924uLL);
  *(v30 + 16) = v43;
  if (v41 >= 1)
  {
    for (i = 0; i != v41; ++i)
    {
      *(*(v30 + 16) + i) = v23[i];
    }

    v43 = *(v30 + 16);
  }

  v43[v41] = 0;
  free(v23);
  v9 = 0;
  *(v30 + 72) = ((((*a4 - *a2) + (a2[2] - a2[1])) + (a2[3] - a4[2])) + (a4[4] - a4[3])) / 6.0;
  *(v30 + 76) = ((((a4[a3 - 5] - a2[a3 - 5]) + (a2[a3 - 3] - a2[a3 - 4])) + (a2[a3 - 2] - a4[a3 - 3])) + (a4[a3 - 1] - a4[a3 - 2])) / 6.0;
  v45 = *(v30 + 64);
  *(v45 + 40) = 0;
  *(v45 + 48) = *a2;
  *(v45 + 52) = a4[a3 - 1];
  *(v45 + 20) = a3;
LABEL_92:
  free(v13);
  return v9;
}

uint64_t sub_26154EBFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = a3 == 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    do
    {
      *(a2 + v6) = *(*(result + 16) + v6);
      ++v6;
      v4 = *(result + 8);
    }

    while (v4 > v6 && v3 > v6);
  }

  if (v4 < v3)
  {
    v3 = v4;
  }

  *(a2 + v3) = 0;
  return result;
}

float sub_26154EC94(uint64_t a1, uint64_t a2, int a3, float *a4)
{
  v4 = 4 * a3;
  v5 = (a1 + v4);
  v6 = 1.0 / (v5[3] - *v5);
  *a4 = v6 * (*(a2 + v4) - *(a1 + v4));
  v7 = v4 + 4;
  a4[1] = v6 * (*(a2 + v4 + 4) - *(a1 + v4 + 4));
  v4 += 8;
  a4[2] = v6 * (*(a2 + v4) - *(a1 + v4));
  a4[3] = v6 * (*(a1 + v7) - *v5);
  a4[4] = v6 * (*(a2 + v7) - *(a2 + 4 * a3));
  a4[5] = v6 * (*(a1 + v4) - *(a1 + v7));
  result = v6 * (*(a2 + v4) - *(a2 + v7));
  a4[6] = result;
  return result;
}

uint64_t sub_26154ED44(uint64_t a1, float *a2, int a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a3 < 16)
  {
    return 16;
  }

  if ((-1431655765 * a3 + 1431655765) > 0x55555554)
  {
    return 2;
  }

  v43 = a3 - 1;
  v10 = (a3 - 1) / 3uLL;
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v45 = 0.0;
  size = v10;
  v12 = (v10 - 1);
  sub_26154EC94(a2, a4, 3 * v12, v48);
  sub_26154D720(48, 7u, 0xFu, v47, v46, v48, flt_26157DF9C, &v11[v12], &v45);
  if (v11[v12] != 47)
  {
LABEL_72:
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    v6 = 6;
    goto LABEL_88;
  }

  v13 = 0;
  v14 = 0;
  v15 = INFINITY;
  if (v45 < INFINITY)
  {
    v15 = v45;
  }

  if (v45 <= INFINITY)
  {
    v16 = v15;
  }

  else
  {
    v16 = v45;
  }

  v17 = v45 + 0.0;
  do
  {
    sub_26154EC94(a2, a4, v13, v48);
    sub_26154D720(48, 7u, 0xFu, v47, v46, v48, flt_26157DF9C, &v11[v14], &v45);
    if (!(v14 * 4) && *v11 != 47)
    {
      goto LABEL_72;
    }

    v17 = v17 + v45;
    if (v45 < v16)
    {
      v16 = v45;
    }

    ++v14;
    v13 += 3;
    --v12;
  }

  while (v12);
  v18 = ((v17 / size) * 0.3) + (v16 * 0.7);
  *(a5 + 24) = v18;
  if (*v11 != 47 || (v19 = &v11[size], *(v19 - 1) != 47))
  {
    v6 = 6;
LABEL_87:
    *(a5 + 24) = v18 / 100.0;
    goto LABEL_88;
  }

  v20 = malloc_type_malloc(size, 0x100004077774924uLL);
  v21 = 0;
  v22 = 0;
  v23 = (size - 3);
  v24 = v23 - 1;
  v25 = v11 + 1;
  do
  {
    v27 = *v25++;
    v26 = v27;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if ((v26 - 10) > 4)
        {
          if ((v26 - 15) > 4)
          {
            if ((v26 - 20) > 4)
            {
              if ((v26 - 25) > 4)
              {
                switch(v26)
                {
                  case 32:
                    v21 = 0;
                    v20[v22] = 96;
                    break;
                  case 31:
                    v21 = 0;
                    v20[v22] = 64;
                    break;
                  case 30:
                    v21 = 0;
                    v20[v22] = 0;
                    break;
                  default:
                    if ((v26 - 33) > 2)
                    {
LABEL_85:
                      v6 = 7;
                      goto LABEL_86;
                    }

                    v21 = 0;
                    v20[v22] = 127;
                    break;
                }

                goto LABEL_44;
              }

              v21 = 0;
              v28 = v26 + 98;
            }

            else
            {
              v21 = 0;
              v28 = v26 + 71;
            }
          }

          else
          {
            v21 = 0;
            v28 = v26 + 44;
          }
        }

        else
        {
          v21 = 0;
          v28 = v26 + 17;
        }
      }

      else if (v21 == 3)
      {
        if ((v26 - 10) > 0x19)
        {
          goto LABEL_85;
        }

        v21 = 0;
        v28 = v26 + 23;
      }

      else
      {
        if ((v26 - 10) > 0x19)
        {
          goto LABEL_85;
        }

        v21 = 0;
        v28 = v26 + 87;
      }

LABEL_43:
      v20[v22] = v28;
LABEL_44:
      ++v22;
      goto LABEL_45;
    }

    if (v21)
    {
      if ((v26 - 10) > 0x19)
      {
        goto LABEL_85;
      }

      v21 = 0;
      v28 = v26 - 9;
      goto LABEL_43;
    }

    if ((v26 - 43) <= 3)
    {
      v21 = v26 - 42;
      goto LABEL_45;
    }

    if (v26 <= 9)
    {
      v21 = 0;
      v28 = v26 | 0x30;
      goto LABEL_43;
    }

    if ((v26 - 10) <= 0x19)
    {
      v21 = 0;
      v28 = v26 + 55;
      goto LABEL_43;
    }

    v29 = v19;
    v6 = 7;
    if (v26 <= 38)
    {
      switch(v26)
      {
        case '$':
          v21 = 0;
          v20[v22] = 45;
          break;
        case '%':
          v21 = 0;
          v20[v22] = 46;
          break;
        case '&':
          v21 = 0;
          v20[v22] = 32;
          break;
        default:
          goto LABEL_86;
      }
    }

    else if (v26 > 40)
    {
      if (v26 == 41)
      {
        v21 = 0;
        v20[v22] = 43;
      }

      else
      {
        if (v26 != 42)
        {
          goto LABEL_86;
        }

        v21 = 0;
        v20[v22] = 37;
      }
    }

    else
    {
      v21 = 0;
      if (v26 == 39)
      {
        v20[v22] = 36;
      }

      else
      {
        v20[v22] = 47;
      }
    }

    ++v22;
    v19 = v29;
LABEL_45:
    --v24;
  }

  while (v24);
  v30 = (size - 4);
  v31 = v30 + 1;
  v32 = &v11[v30];
  v33 = 0x100000000;
  v34 = 0;
  do
  {
    v35 = vadd_s32(v33, 0x100000001);
    v36 = vcgt_s32(v33, 0xE00000013);
    v37 = *v32--;
    v33 = vsub_s32(vbic_s8(v35, v36), v36);
    v34 = vmla_s32(v34, vdup_n_s32(v37), v33);
    --v31;
  }

  while (v31 > 1);
  if (v34.i32[0] % 47 != v11[v23] || (v34.i32[1] + v34.i32[0] % 47) % 47 != *(v19 - 2))
  {
    v6 = 5;
LABEL_86:
    *(a5 + 8) = 0;
    free(v20);
    v18 = *(a5 + 24);
    goto LABEL_87;
  }

  *(a5 + 8) = v22;
  v38 = *(a5 + 16);
  if (v38)
  {
    free(v38);
  }

  *(a5 + 16) = 0;
  v39 = malloc_type_malloc(v22 + 1, 0x100004077774924uLL);
  *(a5 + 16) = v39;
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      *(*(a5 + 16) + i) = v20[i];
    }

    v39 = *(a5 + 16);
  }

  v39[v22] = 0;
  *(a5 + 80) = 1;
  *(a5 + 84) = size;
  free(v20);
  v6 = 0;
  *(a5 + 72) = (a2[6] - *a2) / 18.0;
  *(a5 + 76) = (a2[v43] - a2[a3 - 7]) / 18.0;
  v41 = *(a5 + 64);
  *(v41 + 40) = 0;
  *(v41 + 48) = *a2;
  *(v41 + 52) = *(a4 + 4 * v43);
  *(v41 + 20) = a3;
LABEL_88:
  free(v11);
  return v6;
}

uint64_t sub_26154F3B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(result + 8);
  if (v4 >= a3 - 1)
  {
    v4 = a3 - 1;
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      *(a2 + v5) = *(*(result + 16) + v5);
      ++v5;
      v6 = *(result + 8);
      if (v6 >= a3 - 1)
      {
        v6 = a3 - 1;
      }
    }

    while (v6 > v5);
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  *(a2 + v6) = 0;
  return result;
}

void sub_26154F4F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2873D0928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_26154F56C(void **a1)
{
  (*(*a1[1] + 80))(&v2);
  v3 = v2;
  v2 = 0uLL;
  ((*a1)[12])(a1, &v3);
  if (*(&v3 + 1))
  {
    sub_26149E780(*(&v3 + 1));
  }

  if (*(&v2 + 1))
  {
    sub_26149E780(*(&v2 + 1));
  }
}

void sub_26154F618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_26149E780(a12);
  }

  if (a10)
  {
    sub_26149E780(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_26154F664(void **a1)
{
  (*(*a1[1] + 64))(&v2);
  v3 = v2;
  v2 = 0uLL;
  ((*a1)[12])(a1, &v3);
  if (*(&v3 + 1))
  {
    sub_26149E780(*(&v3 + 1));
  }

  if (*(&v2 + 1))
  {
    sub_26149E780(*(&v2 + 1));
  }
}

void sub_26154F710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_26149E780(a12);
  }

  if (a10)
  {
    sub_26149E780(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_26154F75C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v6 < 3)
  {
    return 0;
  }

  v8 = v6;
  a3[1] = *a3;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), a2, &v28, 0);
  v10 = v9;
  v11 = 0;
  v12 = v8;
  memset(v27, 0, sizeof(v27));
  do
  {
    v13 = (*(v9 + v11) >> 1) & 0x7C;
    ++*(v27 + v13);
    ++v11;
  }

  while (v8 != v11);
  v14 = sub_26154F9BC(v27);
  v7 = v14 > 0;
  if (v14 > 0)
  {
    v15 = v14;
    v16 = *v10;
    v17 = v14 > v16;
    if (v14 > v16)
    {
      v31[0] = 0;
      sub_26154FAA8(a3, v31);
    }

    v18 = &v10[v12 - 1];
    v19 = v10 + 1;
    v20 = v10 + 1;
    v21 = v10 + 1;
    do
    {
      v22 = *++v21;
      v23 = 4 * *v20 - (v22 + *(v20 - 1));
      v24 = v15 > (v23 + ((v23 & 0x8000) >> 15)) >> 1;
      if (v24 != v17)
      {
        v31[0] = v19 - v10;
        sub_26154FAA8(a3, v31);
        v17 = v24;
        LOWORD(v10) = v20;
      }

      ++v19;
      v20 = v21;
    }

    while (v21 < v18);
    v25 = *v18;
    if (v15 > v25 != v17)
    {
      v31[0] = v18 - v10;
      sub_26154FAA8(a3, v31);
      LOWORD(v10) = v18;
    }

    v31[0] = v18 - v10 + 1;
    sub_26154FAA8(a3, v31);
    if (v15 > v25)
    {
      v31[0] = 0;
      sub_26154FAA8(a3, v31);
    }
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v7;
}

void sub_26154F98C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26154F9BC(char *a1)
{
  v2 = a1 + 4;
  v1 = *a1;
  v3 = 124;
  v4 = a1;
  v5 = a1 + 4;
  do
  {
    v7 = *v5;
    v5 += 4;
    v6 = v7;
    v8 = v1 < v7;
    if (v1 <= v7)
    {
      v1 = v6;
    }

    if (v8)
    {
      v4 = v2;
    }

    v2 = v5;
    v3 -= 4;
  }

  while (v3);
  v9 = 0;
  v10 = 0;
  v11 = (v4 - a1) >> 2;
  v12 = *v4;
  do
  {
    if ((v9 - v11) * (v9 - v11) * *&a1[4 * v9] > v10)
    {
      LODWORD(v3) = v9;
      v10 = (v9 - v11) * (v9 - v11) * *&a1[4 * v9];
    }

    ++v9;
  }

  while (v9 != 32);
  if (v3 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v3;
  }

  if (v3 <= v11)
  {
    LODWORD(v3) = v11;
  }

  if (v3 - v13 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v3 - 1;
  if (v15 > v13)
  {
    v16 = v15;
    v17 = v13;
    v18 = -v13;
    v19 = -1;
    v20 = 1;
    do
    {
      if ((v18 + v16) * (v18 + v16) * v20 * (v12 - *&a1[4 * v16]) > v19)
      {
        v15 = v16;
        v19 = (v18 + v16) * (v18 + v16) * v20 * (v12 - *&a1[4 * v16]);
      }

      --v16;
      ++v20;
    }

    while (v16 > v17);
  }

  return (8 * v15);
}

void sub_26154FAA8(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_2614709BC();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_26153BD9C(v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

BOOL sub_26154FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8), a4, a2);
  if (*(a4 + 8) - *a4 < 3)
  {
    return 0;
  }

  return sub_26154FC0C(a4, a3);
}

BOOL sub_26154FC0C(unsigned __int8 **a1, uint64_t a2)
{
  v4 = a1[1] - *a1;
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  if (v6 == v4)
  {
    if (v6 >= 1)
    {
      bzero(v5, v6);
    }
  }

  else
  {
    v26 = 0;
    sub_261483200(&v18, v4);
    v7 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v7;
      operator delete(v7);
    }

    *a2 = v18;
    *(a2 + 16) = v19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = *a1;
  if (v4 >= 1)
  {
    v9 = v4 & 0x7FFFFFFF;
    v10 = v8;
    do
    {
      v11 = *v10++;
      ++*(&v18 + ((v11 >> 1) & 0x7C));
      --v9;
    }

    while (v9);
  }

  v12 = sub_26154F9BC(&v18);
  if (v12 > 0)
  {
    if (v12 > *v8)
    {
      if (*(a2 + 8) == *a2)
      {
        goto LABEL_24;
      }

      **a2 = 1;
    }

    if (v4 >= 3)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = 4 * v8[v13 + 1] - (v8[v13 + 2] + v8[v13]);
        if (v12 > (v15 + ((v15 & 0x8000) >> 15)) >> 1)
        {
          if (*(a2 + 8) - *a2 <= v14)
          {
            goto LABEL_24;
          }

          *(*a2 + v13 + 1) = 1;
        }

        ++v13;
      }

      while (&v8[v14 + 1] < &v8[v4 - 1]);
    }

    v16 = ((v4 << 32) - 0x100000000) >> 32;
    if (v12 > v8[v16])
    {
      if (*(a2 + 8) - *a2 > v16)
      {
        *(*a2 + v16) = 1;
        return v12 > 0;
      }

LABEL_24:
      sub_2614C3568();
    }
  }

  return v12 > 0;
}

BOOL sub_26154FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v10 < 3)
  {
    return 0;
  }

  LODWORD(v12) = v10;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  (*(**(a1 + 8) + 40))(*(a1 + 8), a2, &v26);
  v13 = v26;
  if (a5)
  {
    if (a2 < 1)
    {
      v15 = 0;
      v14 = 1;
    }

    else
    {
      (*(**(a1 + 8) + 40))(*(a1 + 8), (a2 - 1), &v23);
      v14 = 2;
      v15 = v23;
    }

    if (a2 + 1 < (*(**(a1 + 8) + 16))(*(a1 + 8)))
    {
      (*(**(a1 + 8) + 40))(*(a1 + 8));
      ++v14;
    }
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  v12 = v12;
  v16 = *a4;
  v17 = *(a4 + 8) - *a4;
  if (v12 <= v17)
  {
    if (v12 < v17)
    {
      *(a4 + 8) = &v16[v12];
    }
  }

  else
  {
    sub_261548568(a4, v12 - v17);
    v16 = *a4;
  }

  v18 = v15;
  v19 = 0;
  do
  {
    v21 = *v13++;
    v20 = v21;
    if (v15)
    {
      v20 += *v18;
    }

    *v16++ = v20 / v14;
    ++v19;
    ++v18;
    --v12;
  }

  while (v12);
  v11 = sub_26154FC0C(a4, a3);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  return v11;
}

void sub_261550024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_261550068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v10 < 3)
  {
    return 0;
  }

  LODWORD(v12) = v10;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v13 = (*(**(a1 + 8) + 32))(*(a1 + 8), a2, &v27, 0);
  if (a5)
  {
    if (a2 < 1)
    {
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v14 = (*(**(a1 + 8) + 32))(*(a1 + 8), (a2 - 1), &v24, 0);
      v15 = 2;
    }

    if (a2 + 1 >= (*(**(a1 + 8) + 24))(*(a1 + 8)))
    {
      v16 = 0;
    }

    else
    {
      v16 = (*(**(a1 + 8) + 32))(*(a1 + 8));
      ++v15;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v15 = 1;
  }

  v12 = v12;
  v17 = *a4;
  v18 = *(a4 + 8) - *a4;
  if (v12 <= v18)
  {
    if (v12 < v18)
    {
      *(a4 + 8) = &v17[v12];
    }
  }

  else
  {
    sub_261548568(a4, v12 - v18);
    v17 = *a4;
  }

  v19 = v14;
  v20 = v16;
  do
  {
    v22 = *v13++;
    v21 = v22;
    if (v14)
    {
      v21 += *v19;
    }

    if (v16)
    {
      v21 += *v20;
    }

    *v17++ = v21 / v15;
    ++v20;
    ++v19;
    --v12;
  }

  while (v12);
  v11 = sub_26154FC0C(a4, a3);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v11;
}

void sub_2615502C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_26155035C(void *a1)
{
  *a1 = &unk_2873D1CF8;
  v1 = a1[2];
  if (v1)
  {
    sub_26149E780(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2615503C8(void *a1)
{
  *a1 = &unk_2873D1CF8;
  v2 = a1[2];
  if (v2)
  {
    sub_26149E780(v2);
  }

  return a1;
}

uint64_t sub_261550414(int a1, int a2)
{
  if (a1 <= 1)
  {
    v2 = 0x252B2F24202E2DuLL >> (8 * (a2 - 36));
    if ((a2 - 36) >= 7)
    {
      LOBYTE(v2) = 0;
    }

    if (a2 <= 0x23)
    {
      LOBYTE(v2) = a2 + 55;
    }

    if (a2 <= 9)
    {
      LOBYTE(v2) = a2 + 48;
    }

    if (a1 == 1)
    {
      v3 = a2 - 9;
    }

    else
    {
      v3 = 0;
    }

    v4 = a1 == 0;
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    LOBYTE(v2) = a2 + 23;
    v3 = a2 + 87;
    if (a1 != 4)
    {
      v3 = 0;
    }

    v4 = a1 == 3;
LABEL_16:
    if (!v4)
    {
      LOBYTE(v2) = v3;
    }

    return v2;
  }

  v6 = 0x604000u >> (8 * (a2 - 30));
  if ((a2 - 30) >= 3)
  {
    LOBYTE(v6) = 127;
  }

  if ((a2 - 25) <= 4)
  {
    v7 = a2 + 98;
  }

  else
  {
    v7 = v6;
  }

  if ((a2 - 20) <= 4)
  {
    v8 = a2 + 71;
  }

  else
  {
    v8 = v7;
  }

  if ((a2 - 15) <= 4)
  {
    v9 = a2 + 44;
  }

  else
  {
    v9 = v8;
  }

  if ((a2 - 10) <= 4)
  {
    LOBYTE(v2) = a2 + 17;
  }

  else
  {
    LOBYTE(v2) = v9;
  }

  return v2;
}

BOOL sub_2615504F4(uint64_t a1, int a2, int a3, int *a4, char *__s1)
{
  v37 = *MEMORY[0x277D85DE8];
  result = 1;
  if (__s1 && *a4 != a3)
  {
    if (!strcmp(__s1, "UTF-8"))
    {
      return 1;
    }

    v11 = MEMORY[0x266704AD0]("UTF-8", __s1);
    if (v11 == -1)
    {
      if (qword_27FEB4220 != -1)
      {
        dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
      }

      v23 = qword_27FEB4218;
      result = os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v24 = *__error();
        *buf = 136446722;
        *&buf[4] = "UTF-8";
        v33 = 2082;
        v34 = __s1;
        v35 = 1026;
        v36 = v24;
        _os_log_error_impl(&dword_26146F000, v23, OS_LOG_TYPE_ERROR, "[Code93i] iconv_open(%{public}s, %{public}s) failed: %{public, errno}d", buf, 0x1Cu);
        return 0;
      }
    }

    else
    {
      v12 = v11;
      v13 = *a4;
      *buf = v13 - a3;
      v14 = 8 * *buf + 8;
      v29 = 8 * *buf + 8;
      v15 = malloc_type_malloc(v29, 0x100004077774924uLL);
      v27 = a1 + a3;
      v28 = v15;
      if (MEMORY[0x266704AB0](v12, &v27, buf, &v28, &v29) == -1)
      {
        v16 = 8 * v13 - 8 * a3 + 136;
        while (*__error() == 7)
        {
          v29 += 128;
          v17 = v28 - v15;
          v15 = malloc_type_realloc(v15, v16, 0x2DAC37E4uLL);
          v28 = &v15[v17];
          v16 += 128;
          if (MEMORY[0x266704AB0](v12, &v27, buf, &v28, &v29) != -1)
          {
            v14 = v16 - 128;
            goto LABEL_10;
          }
        }

        if (qword_27FEB4220 != -1)
        {
          dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
        }

        v25 = qword_27FEB4218;
        if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
        {
          v26 = *__error();
          *v30 = 67240192;
          v31 = v26;
          _os_log_error_impl(&dword_26146F000, v25, OS_LOG_TYPE_ERROR, "[Code93i] iconv failed: %{public, errno}d", v30, 8u);
        }

        free(v15);
        MEMORY[0x266704AC0](v12);
        return 0;
      }

LABEL_10:
      MEMORY[0x266704AC0](v12);
      v18 = v14 - v29;
      *a4 = a3;
      if (v18 >= 1)
      {
        v19 = v18 & 0x7FFFFFFF;
        v20 = v15;
        do
        {
          v21 = *a4;
          if (v21 < a2)
          {
            v22 = *v20;
            *a4 = v21 + 1;
            *(a1 + v21) = v22;
          }

          ++v20;
          --v19;
        }

        while (v19);
      }

      free(v15);
      return *a4 <= a2;
    }
  }

  return result;
}

uint64_t sub_261550824(uint64_t a1, int a2, int *a3, int *a4, void *a5)
{
  v5 = *a3;
  if (v5 > a2 - 2)
  {
    return 0;
  }

  v6 = (a1 + v5);
  if (*(a1 + v5) != 47)
  {
    return 0;
  }

  v7 = v6[1];
  if (v7 < 44)
  {
    v8 = 1;
    goto LABEL_5;
  }

  if (v5 > a2 - 3)
  {
    return 0;
  }

  v13 = v6[2];
  if (v7 == 44)
  {
    v7 = v13 + 44;
    v8 = 2;
  }

  else
  {
    if (v5 > a2 - 4)
    {
      return 0;
    }

    v14 = v6[3];
    if (v7 == 45)
    {
      v7 = v14 + 52 * v13 + 96;
      v8 = 3;
    }

    else
    {
      if (v5 > a2 - 5)
      {
        return 0;
      }

      v7 = v6[4] + 52 * (v14 + 52 * (v13 + 52 * v7 - 2392)) + 2800;
      v8 = 4;
    }
  }

LABEL_5:
  *a4 = v7;
  *a3 += v8;
  v9 = &dword_279AD97D8;
  v10 = 32;
  while (*v9 != *a4)
  {
    v9 += 4;
    if (!--v10)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  v11 = *(v9 + 1);
LABEL_12:
  *a5 = v11;
  return 1;
}

uint64_t sub_26155092C(uint64_t a1, int a2, int *a3, unsigned int *a4, int *a5, int *a6, int *a7)
{
  v7 = *a3;
  if (v7 > a2 - 3)
  {
    return 0;
  }

  v8 = (a1 + v7);
  if (*(a1 + v7) != 52)
  {
    return 0;
  }

  v9 = v8[1];
  v10 = v8[2];
  if (v9 > 44)
  {
    v12 = v8[3];
    if (v12 <= 50)
    {
      v13 = v10 + 52 * v9 - 2340;
      if (v13 <= 360)
      {
        v15 = 10;
        while (v13 > dword_26157EE2C[v15])
        {
          result = 0;
          if (++v15 == 29)
          {
            return result;
          }
        }

        *a4 = v13 - *(dword_26157EE2C + (((v15 << 32) - 0x100000000) >> 30));
        *a5 = v15;
        *a6 = v12;
        v17 = 3;
        v18 = 4;
        goto LABEL_26;
      }
    }

    return 0;
  }

  if (v10 > 50)
  {
    return 0;
  }

  *a6 = v10;
  if (!v9)
  {
    v9 = 1;
    v11 = 1;
    goto LABEL_25;
  }

  if (v9 >= 3)
  {
    v16 = v9 - 5;
    if (v9 <= 5)
    {
      v9 -= 2;
      v11 = 3;
      goto LABEL_25;
    }

    v19 = v9 - 9;
    if (v9 <= 9)
    {
      v11 = 4;
LABEL_21:
      v9 = v16;
      goto LABEL_25;
    }

    v16 = v9 - 14;
    if (v9 > 0xE)
    {
      v19 = v9 - 20;
      if (v9 <= 0x14)
      {
        v11 = 6;
        goto LABEL_21;
      }

      if (v9 > 0x1B)
      {
        v20 = v9 > 0x23;
        if (v9 <= 0x23)
        {
          v9 -= 27;
        }

        else
        {
          v9 -= 35;
        }

        if (v20)
        {
          v11 = 9;
        }

        else
        {
          v11 = 8;
        }

        goto LABEL_25;
      }

      v11 = 7;
    }

    else
    {
      v11 = 5;
    }

    v9 = v19;
    goto LABEL_25;
  }

  v11 = 2;
LABEL_25:
  *a4 = v9;
  *a5 = v11;
  v17 = 2;
  v18 = 3;
LABEL_26:
  *a7 = v18;
  *a3 += v17;
  return 1;
}

uint64_t sub_261550AA4(unsigned int a1, uint64_t a2, int a3, int *a4)
{
  if (a1 > 127)
  {
    if (a1 > 0x7FF)
    {
      if ((a1 & 0x7FFFF800) == 0xD800)
      {
        return 7;
      }

      v6 = *a4;
      if (v6 >= a3 - 2)
      {
        return 7;
      }

      *a4 = v6 + 1;
      *(a2 + v6) = (a1 >> 12) | 0xE0;
      v7 = *a4;
      *a4 = v7 + 1;
      *(a2 + v7) = (a1 >> 6) & 0x3F | 0x80;
    }

    else
    {
      v5 = *a4;
      if (v5 >= a3 - 1)
      {
        return 7;
      }

      *a4 = v5 + 1;
      *(a2 + v5) = (a1 >> 6) | 0xC0;
    }

    v4 = *a4;
    LOBYTE(a1) = a1 & 0x3F | 0x80;
  }

  else
  {
    v4 = *a4;
    if (*a4 >= a3)
    {
      return 7;
    }
  }

  v8 = 0;
  *a4 = v4 + 1;
  *(a2 + v4) = a1;
  return v8;
}

uint64_t sub_261550B90(uint64_t a1, float *a2, int a3, uint64_t a4, uint64_t a5)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a3 < 16)
  {
    return 16;
  }

  if ((-1431655765 * a3 + 1431655765) > 0x55555554)
  {
    return 2;
  }

  v9 = a3 - 1;
  v10 = (a3 - 1) / 3uLL;
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v69 = 0.0;
  v12 = (v10 - 1);
  sub_26154EC94(a2, a4, 3 * v12, v73);
  sub_26154D720(55, 7u, 0xFu, v72, v71, v73, flt_26157EEA0, &v11[v12], &v69);
  v13 = v11[v12];
  if ((v13 - 53) > 1)
  {
    v16 = 0;
LABEL_35:
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    v6 = 6;
    goto LABEL_36;
  }

  v63 = a3;
  v64 = &v11[v12];
  v61 = v10;
  v62 = v9;
  v65 = a5;
  count = v10;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = INFINITY;
  if (v69 < INFINITY)
  {
    v17 = v69;
  }

  if (v69 <= INFINITY)
  {
    v18 = v17;
  }

  else
  {
    v18 = v69;
  }

  v19 = v69 + 0.0;
  v20 = v11;
  v21 = v13 == 53;
  v67 = v20;
  do
  {
    sub_26154EC94(a2, a4, v14, v73);
    sub_26154D720(55, 7u, 0xFu, v72, v71, v73, flt_26157EEA0, v20, &v69);
    if (v15)
    {
      if (v15 >= 4 && v21 && v15 <= (v10 - 5))
      {
        v16[v15] = v69;
LABEL_18:
        v21 = 1;
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if ((*v67 - 53) > 1)
    {
      a5 = v65;
      v11 = v67;
      goto LABEL_35;
    }

    if (*v67 == 54 && v21)
    {
      v16 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
      goto LABEL_18;
    }

    v21 = 0;
LABEL_20:
    v19 = v19 + v69;
    if (v69 < v18)
    {
      v18 = v69;
    }

    ++v15;
    ++v20;
    v14 += 3;
  }

  while (v12 != v15);
  v22 = v65;
  v23 = v10;
  *(v65 + 24) = ((v19 / v10) * 0.3) + (v18 * 0.7);
  v11 = v67;
  if ((*v67 - 53) > 1 || (*v64 - 53) > 1)
  {
    v6 = 6;
LABEL_33:
    *(v22 + 24) = *(v22 + 24) / 100.0;
    goto LABEL_36;
  }

  pthread_once(&stru_27FEB40C0, sub_261550B68);
  if (*v67 == 53)
  {
    if (*v64 == 54)
    {
      if ((v10 - 11) > 0x2B)
      {
        v6 = 7;
      }

      else
      {
        v27 = (v10 - 8);
        v28 = malloc_type_malloc(2 * v27, 0x1000040BDFB0063uLL);
        if (v16)
        {
          v29 = malloc_type_calloc(v27, 4uLL, 0x100004052888210uLL);
        }

        else
        {
          v29 = 0;
        }

        v70 = 0;
        v42 = malloc_type_calloc(v27, 2uLL, 0x1000040BDFB0063uLL);
        v75 = 0;
        v74 = 0;
        v43 = v67 + 4;
        v44 = count - 9;
        v45 = v67 + 4;
        v46 = count - 9;
        v47 = (count - 8);
        do
        {
          v48 = *v45++;
          *&v28[2 * v46--] = v48;
          --v47;
        }

        while (v47);
        v49 = v67;
        v50 = 10;
        v51 = v67;
        do
        {
          v52 = v51[1];
          ++v51;
          v53 = &v76[v50];
          *v53 = v52;
          *(v53 - 3) = v49[v61 - 4];
          v50 -= 2;
          v49 = v51;
        }

        while (v50 != 4);
        if (sub_26153652C(qword_27FEB43D0, v28, v27, v76, 6u, v29, 0, &v70, v42, &v74))
        {
          v54 = 1;
        }

        else
        {
          v54 = (2 * v70) > 4;
        }

        if (v54)
        {
          v55 = v29;
          v56 = v28;
          v57 = 0;
          v6 = 7;
          v22 = v65;
          v23 = count;
          v11 = v67;
        }

        else
        {
          do
          {
            *v43++ = v42[2 * v44--];
            --v27;
          }

          while (v27);
          v56 = v28;
          v58 = 0;
          v59 = &v75 + 2;
          v11 = v67;
          do
          {
            v67[v58 + 1] = *v59;
            v67[v61 - 4 + v58++] = *(v59 - 6);
            v59 -= 2;
          }

          while (v58 != 3);
          v55 = v29;
          v60 = &v67[v12 >> 1];
          v22 = v65;
          v23 = count;
          if (*v60 == 52 && v60[1] == count - 10)
          {
            v6 = 0;
            v57 = 1;
          }

          else
          {
            v57 = 0;
            v6 = 7;
          }
        }

        free(v56);
        free(v42);
        if (v55)
        {
          free(v55);
        }

        if (v57)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_55;
    }

    v24 = *v64 == 53;
LABEL_45:
    v25 = 53;
    goto LABEL_46;
  }

  if (*v67 != 54)
  {
    v24 = 0;
    goto LABEL_45;
  }

  v24 = 0;
  if (*v64 == 54)
  {
    v25 = 47;
  }

  else
  {
    v25 = 53;
  }

LABEL_46:
  v30 = (v10 - 4);
  v31 = v30 + 1;
  v32 = &v67[v30];
  v33 = 0;
  v34 = 1;
  do
  {
    v35 = vadd_s32(v34, 0x100000001);
    v36 = vcgt_s32(v34, 0x130000000ELL);
    v37 = *v32--;
    v34 = vsub_s32(vbic_s8(v35, v36), v36);
    v33 = vmla_s32(v33, vdup_n_s32(v37), v34);
    --v31;
  }

  while (v31 > 1);
  if (__PAIR64__((v33.i32[0] + v24 + v33.i32[1] % v25) % v25, v33.i32[1] % v25) != *&v67[v10 - 3])
  {
    v6 = 5;
LABEL_55:
    *(v22 + 8) = 0;
    goto LABEL_33;
  }

LABEL_49:
  *(v22 + 8) = v23;
  v38 = *(v22 + 16);
  if (v38)
  {
    free(v38);
  }

  *(v22 + 16) = 0;
  v39 = malloc_type_malloc(v23, 0x100004077774924uLL);
  v40 = 0;
  *(v22 + 16) = v39;
  do
  {
    *(*(v22 + 16) + v40) = v11[v40];
    ++v40;
  }

  while (v23 != v40);
  v6 = 0;
  *(v22 + 80) = 1;
  *(v22 + 84) = v23;
  *(v22 + 72) = (a2[6] - *a2) / 18.0;
  *(v22 + 76) = (a2[v62] - a2[v63 - 7]) / 18.0;
  v41 = *(v22 + 64);
  *(v41 + 40) = 0;
  *(v41 + 48) = *a2;
  *(v41 + 52) = *(a4 + 4 * v62);
  *(v41 + 20) = v63;
LABEL_36:
  free(v11);
  if (v16)
  {
    free(v16);
  }

  return v6;
}

void sub_261551268(uint64_t a1, _BYTE *a2, int a3, unint64_t *a4, char *a5)
{
  v5 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = v7 <= 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    v9 = *v6;
    if ((v9 - 53) <= 1)
    {
      v10 = v6[(*(a1 + 8) & 0x7FFFFFFFLL) - 1];
      if ((v10 - 53) <= 1)
      {
        v14 = (v7 - 4);
        v164 = v10 == 54;
        v168 = *v6;
        if (v9 == 54)
        {
          v161 = &v6[*(a1 + 8) & 0x7FFFFFFFLL];
          if (v10 == 54)
          {
            v17 = 47;
          }

          else
          {
            v17 = 53;
          }

          v159 = v17;
          v16 = 1;
          v15 = v7 - 4;
        }

        else
        {
          if (v10 != 54)
          {
            return;
          }

          v161 = &v6[*(a1 + 8) & 0x7FFFFFFFLL];
          v164 = 0;
          v15 = v7 - 5;
          v159 = 53;
          v16 = 4;
        }

        v160 = 2 * v7;
        v18 = malloc_type_malloc((2 * v7), 0x72B47603uLL);
        v175 = v16;
        v176[0] = 0;
        v174 = 0;
        v172 = -1;
        v173 = 0;
        v171 = -1;
        v170 = a5;
        v19 = v16 + (v15 - v16) / 2;
        v166 = v18;
        if (v15 < v16)
        {
          v20 = 0;
          v163 = 0;
          v21 = 0;
          v167 = 0;
          v169 = 0;
          v22 = 1;
          v23 = v168;
LABEL_330:
          v130 = v16 - 2;
          if (v23 != 54)
          {
            if (v16 == v19 + 2)
            {
              v130 = v19 - 2;
              v16 = v19;
            }

            else if (v16 == v19 + 3)
            {
              v130 = v16 - 4;
            }
          }

          LODWORD(v131) = v6[v16 - 1];
          v132 = v6[v130];
          if (v21 == 1 && v169 >= 1)
          {
            if (v169 == 1)
            {
              if (v131 > 9)
              {
                goto LABEL_416;
              }

              v133 = 0;
            }

            else
            {
              LODWORD(v131) = v131 + 48 * v132;
              if (v131 > 0x3E7)
              {
                goto LABEL_416;
              }

              v133 = 0;
              v135 = v176[0]++;
              v18[v135] = (v131 / 0x64u) | 0x30;
              v136 = v176[0]++;
              v18[v136] = ((v131 / 0xAu) % 0xAu) | 0x30;
              LOBYTE(v131) = v131 % 0xAu;
            }

            v137 = v131 | 0x30;
            goto LABEL_356;
          }

          if (v21 == 3 && v167 >= 1)
          {
            if (v167 == 1)
            {
              if (!v22)
              {
                goto LABEL_416;
              }

              if (v131 > 9)
              {
                if (v131 > 0x23)
                {
                  if ((v131 - 36) > 6)
                  {
                    LOBYTE(v131) = 0;
                  }

                  else
                  {
                    v131 = 0x252B2F24202E2DuLL >> (8 * (v131 - 36));
                  }
                }

                else
                {
                  LOBYTE(v131) = v131 + 55;
                }
              }

              else
              {
                LOBYTE(v131) = v131 + 48;
              }

              v133 = 0;
              v137 = v131 ^ 0x80;
LABEL_356:
              v138 = v176[0]++;
              v18[v138] = v137;
              goto LABEL_401;
            }

            if (!v22)
            {
              goto LABEL_416;
            }

            if (v132 > 9)
            {
              if (v132 > 0x23)
              {
                if ((v132 - 36) > 6)
                {
                  LOBYTE(v139) = 0;
                }

                else
                {
                  v139 = 0x252B2F24202E2DuLL >> (8 * (v132 - 36));
                }
              }

              else
              {
                LOBYTE(v139) = v132 + 55;
              }
            }

            else
            {
              LOBYTE(v139) = v132 + 48;
            }

            v142 = v176[0]++;
            v18[v142] = v139;
            if (v131 > 9)
            {
              if (v131 > 0x23)
              {
                if ((v131 - 36) > 6)
                {
                  LOBYTE(v131) = 0;
                }

                else
                {
                  v131 = 0x252B2F24202E2DuLL >> (8 * (v131 - 36));
                }
              }

              else
              {
                LOBYTE(v131) = v131 + 55;
              }
            }

            else
            {
              LOBYTE(v131) = v131 + 48;
            }

            v133 = 0;
            v143 = v176[0]++;
            v18[v143] = v131;
LABEL_401:
            if (v23 != 54 || v133)
            {
              if (!v133)
              {
LABEL_408:
                v150 = v176[0];
                if (v176[0] >= a3 - 1)
                {
                  v150 = a3 - 1;
                }

                *a4 = v150;
                if (v150)
                {
                  v151 = 0;
                  do
                  {
                    v5[v151] = v18[v151];
                    ++v151;
                    v152 = *a4;
                  }

                  while (*a4 > v151);
                }

                else
                {
                  v152 = 0;
                }

                v5 += v152;
              }
            }

            else
            {
              v146 = 0;
              v147 = 1;
              do
              {
                v148 = vadd_s32(v147, 0x100000001);
                v149 = vcgt_s32(v147, 0x130000000ELL);
                v147 = vsub_s32(vbic_s8(v148, v149), v149);
                v146 = vmla_s32(v146, v147, vdup_n_s32(v6[v14]));
                v8 = v14-- > 1;
              }

              while (v8);
              if (__PAIR64__((v146.i32[1] % v159 + v146.i32[0]) % v159, v146.i32[1] % v159) == __PAIR64__(*(v161 - 2), *(v161 - 3)))
              {
                goto LABEL_408;
              }
            }

LABEL_416:
            *v5 = 0;
            free(v18);
            return;
          }

          if (v21 != 2)
          {
            v133 = 0;
            goto LABEL_401;
          }

          if (v163 < 1)
          {
            v140 = 0;
          }

          else
          {
            if (v163 == 1)
            {
              if (v22)
              {
                if (v131 > 9)
                {
                  if (v131 > 0x23)
                  {
                    if ((v131 - 36) > 6)
                    {
                      LOBYTE(v134) = 0;
                    }

                    else
                    {
                      v134 = 0x252B2F24202E2DuLL >> (8 * (v131 - 36));
                    }
                  }

                  else
                  {
                    LOBYTE(v134) = v131 + 55;
                  }
                }

                else
                {
                  LOBYTE(v134) = v131 + 48;
                }

                LOBYTE(v134) = v134 ^ 0x80;
                goto LABEL_396;
              }

              goto LABEL_367;
            }

            if (!v22)
            {
LABEL_367:
              v140 = 7;
              goto LABEL_397;
            }

            v140 = 7;
            if (v132 <= 9 && v131 <= 42)
            {
              v141 = v176[0]++;
              v18[v141] = v132 + 48;
              if (v131 > 9)
              {
                if (v131 > 0x23)
                {
                  v134 = 0x252B2F24202E2DuLL >> (8 * v131 - 32);
                }

                else
                {
                  LOBYTE(v134) = v131 + 55;
                }
              }

              else
              {
                LOBYTE(v134) = v131 + 48;
              }

LABEL_396:
              v140 = 0;
              v144 = v176[0]++;
              v18[v144] = v134;
            }
          }

LABEL_397:
          v145 = sub_2615504F4(v18, v160, v20, v176, v170);
          v18 = v166;
          if (v145)
          {
            v133 = v140;
          }

          else
          {
            v133 = 7;
          }

          v23 = v168;
          goto LABEL_401;
        }

        v24 = v15;
        v157 = v15 - v16;
        v155 = a3;
        v156 = a4;
        v158 = v5;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v169 = 0;
        v167 = 0;
        v21 = 0;
        v162 = 0;
        v163 = 0;
        v28 = v19 + 1;
        v29 = v19 + 2;
        v30 = v19 + 3;
        v153 = v16 | 2;
        v154 = v16;
        v31 = v19 - 2;
        v32 = v6 - 1;
        v33 = v16;
        v23 = v168;
        v165 = v15;
        while (1)
        {
          v34 = v25;
          if (v27 <= 0)
          {
            v35 = 0;
          }

          else
          {
            v35 = v26;
          }

          v36 = v33 - 2;
          v38 = v33 == v19 || v33 == v28;
          if (v27 > 0)
          {
            v39 = 1;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            v40 = v26;
          }

          else
          {
            v40 = 0;
          }

          v41 = (v27 > 0) & ~v38;
          if (v33 == v30)
          {
            v42 = -4;
          }

          else
          {
            v42 = -2;
          }

          v43 = v42 + v33;
          if (v33 == v29)
          {
            v44 = v19;
          }

          else
          {
            v44 = v33;
          }

          if (v33 == v29)
          {
            v43 = v31;
          }

          if (v23 == 54)
          {
            v26 = v35;
          }

          else
          {
            v26 = v40;
          }

          if (v23 == 54)
          {
            v45 = v27 > 0;
          }

          else
          {
            v45 = v41;
          }

          if (v23 == 54)
          {
            v46 = v33;
          }

          else
          {
            v46 = v44;
          }

          if (v23 != 54)
          {
            v36 = v43;
          }

          v47 = v36 < 1 ? 0 : v6[v36];
          v27 -= v45;
          v48 = &v6[v33];
          v49 = *v48;
          v50 = *v48;
          v51 = v32[v46];
          if (v21 > 1)
          {
            break;
          }

          if (v21)
          {
            if (v50 <= 0x2F)
            {
              if (v169 < 2)
              {
                ++v169;
              }

              else
              {
                v53 = v49 + 48 * (v51 + 48 * v47);
                if (v53 >> 5 <= 0xC34)
                {
                  v169 = 0;
                  v54 = v176[0]++;
                  v18[v54] = (v53 / 0x2710) | 0x30;
                  v55 = v176[0]++;
                  v18[v55] = ((v53 / 0x3E8) % 0xAu) | 0x30;
                  v56 = v176[0]++;
                  v18[v56] = ((v53 / 0x64) % 0xAu) | 0x30;
                  v57 = v176[0]++;
                  v18[v57] = ((v53 / 0xA) % 0xAu) | 0x30;
                  v58 = v176[0]++;
                  v18[v58] = (v53 % 0xA) | 0x30;
                  v59 = v27 - 2;
                  v60 = v27 <= 1;
                  goto LABEL_75;
                }

                v84 = v53 - 100000;
                if (v84 >> 4 > 0x270)
                {
                  goto LABEL_333;
                }

                v169 = 0;
                v85 = v176[0]++;
                v18[v85] = (v84 / 0x3E8u) | 0x30;
                v86 = v176[0]++;
                v18[v86] = ((v84 / 0x64u) % 0xAu) | 0x30;
                v87 = v176[0]++;
                v18[v87] = (v84 / 0xAu - 10 * ((6554 * (v84 / 0xAu)) >> 16)) | 0x30;
                v88 = v176[0]++;
                v18[v88] = (v84 % 0xAu) | 0x30;
                v27 -= v27 > 0;
              }

LABEL_137:
              v21 = 1;
              goto LABEL_138;
            }

            v67 = 0;
            if (v169 >= 1 && (v50 - 48) <= 2u)
            {
              if (v169 == 1)
              {
                if (v51 > 9)
                {
                  goto LABEL_151;
                }

                v169 = 0;
                v67 = 0;
                v89 = v51 | 0x30;
                v90 = v176[0]++;
                v18[v90] = v89;
              }

              else
              {
                v68 = v51 + 48 * v47;
                if (v68 <= 0x3E7)
                {
                  v169 = 0;
                  v67 = 0;
                  v69 = v176[0]++;
                  v18[v69] = (v68 / 0x64u) | 0x30;
                  v70 = v176[0]++;
                  v18[v70] = ((v68 / 0xAu) % 0xAu) | 0x30;
                  v71 = v176[0]++;
                  v18[v71] = (v68 % 0xAu) | 0x30;
                  v27 -= v27 > 0;
                  goto LABEL_152;
                }

LABEL_151:
                v169 = 0;
                v67 = 7;
              }
            }

LABEL_152:
            if (v50 > 49)
            {
              if (v50 != 50)
              {
                if (v50 == 51)
                {
                  if (v33 < v24)
                  {
                    v92 = v176[0]++;
                    v18[v92] = 29;
                  }
                }

                else
                {
                  if (v50 != 52)
                  {
                    goto LABEL_333;
                  }

                  if (v23 == 54)
                  {
                    goto LABEL_333;
                  }

                  if (v33 != v19)
                  {
                    goto LABEL_333;
                  }

                  v91 = v48[1] + 1;
                  v175 = v28;
                  if (v91 != v157)
                  {
                    goto LABEL_333;
                  }
                }

                goto LABEL_319;
              }

LABEL_317:
              v21 = 3;
              goto LABEL_327;
            }

            if (v50 == 48)
            {
              v21 = 0;
              goto LABEL_327;
            }

LABEL_280:
            v21 = 2;
            v162 = v176[0];
            goto LABEL_327;
          }

          if (v49 <= 9)
          {
            if (v34)
            {
              if (v164)
              {
                goto LABEL_333;
              }

              v25 = 0;
              v21 = 0;
              v27 = v49 + 3;
              v26 = v34;
            }

            else
            {
              v25 = 0;
              v21 = 0;
              v77 = v176[0]++;
              v18[v77] = v50 | 0x30;
            }

            goto LABEL_328;
          }

          if (v50 - 10 <= 0x19)
          {
            if (v34 == v26)
            {
              v63 = 0;
            }

            else
            {
              v63 = v34;
            }

            if (v34)
            {
              v64 = v63;
            }

            else
            {
              v64 = v26;
            }

            v65 = sub_261550414(v64, *v48);
            v32 = v6 - 1;
            v31 = v19 - 2;
            v30 = v19 + 3;
            v29 = v19 + 2;
            v28 = v19 + 1;
            v24 = v165;
            v18 = v166;
            v25 = 0;
            v21 = 0;
            v66 = v176[0]++;
            *(v166 + v66) = v65;
            goto LABEL_91;
          }

          if (v50 - 36 > 0xA)
          {
            if (v164)
            {
              goto LABEL_333;
            }

            v23 = v168;
            if (*v48 <= 0x31u)
            {
              if (v50 != 47)
              {
                if (v50 != 48)
                {
                  if (v50 != 49)
                  {
                    goto LABEL_333;
                  }

                  v21 = 2;
                  v162 = v176[0];
                  goto LABEL_138;
                }

                v59 = v27 + 2;
                v60 = v27 <= 0;
LABEL_75:
                if (!v60)
                {
                  v27 = v59;
                }

                goto LABEL_137;
              }

              if (v26)
              {
                goto LABEL_333;
              }

              if ((sub_261550824(v6, v7, &v175, &v171, &v170) & 1) == 0)
              {
LABEL_378:
                v5 = v158;
                v18 = v166;
                goto LABEL_416;
              }

              v26 = 0;
              goto LABEL_232;
            }

            if (v50 == 50)
            {
              v21 = 3;
              goto LABEL_138;
            }

            if (v50 != 51)
            {
              if (v50 != 52)
              {
                goto LABEL_333;
              }

              if (v168 != 54 && v33 == v19)
              {
                v93 = v48[1] + 1;
                v175 = v28;
                if (v93 != v157)
                {
                  goto LABEL_333;
                }

LABEL_226:
                v21 = 0;
                goto LABEL_138;
              }

              if (v33 != v154)
              {
                goto LABEL_378;
              }

              if (v24 >= v153 && v48[1] == 51 && v48[2] == 50)
              {
                v21 = 0;
                v25 = v34;
                v18 = v166;
                goto LABEL_134;
              }

              if ((sub_26155092C(v6, v7, &v175, &v174, &v173, &v172, &v174 + 1) & 1) == 0)
              {
                goto LABEL_378;
              }

LABEL_232:
              v21 = 0;
              v25 = v34;
              v18 = v166;
LABEL_133:
              v23 = v168;
              v28 = v19 + 1;
              v24 = v165;
LABEL_134:
              v30 = v19 + 3;
              v29 = v19 + 2;
              v31 = v19 - 2;
              v32 = v6 - 1;
              goto LABEL_328;
            }

            v108 = HIDWORD(v174) + v154;
            if (v33 >= HIDWORD(v174) + v154 + 3)
            {
              if (v33 >= v24)
              {
                goto LABEL_226;
              }

              v21 = 0;
              v115 = v176[0]++;
              v18[v115] = 29;
LABEL_138:
              v25 = v34;
              goto LABEL_328;
            }

            if (v33 == v108)
            {
LABEL_203:
              v67 = 0;
              goto LABEL_296;
            }

            if (v33 == v108 + 1)
            {
              if (v176[0] >= 1)
              {
                v67 = 0;
                v117 = *v18;
                if ((v117 - 65) < 0x1A || (v117 - 48) < 0xA)
                {
                  goto LABEL_296;
                }
              }

LABEL_295:
              v67 = 7;
              goto LABEL_296;
            }

            if (v176[0] != 1)
            {
              if (v176[0] >= 2 && *v18 - 48 <= 9 && v18[1] - 48 < 0xA)
              {
                goto LABEL_203;
              }

              goto LABEL_295;
            }

            v67 = 0;
            v119 = *v18;
            if ((v119 - 65) >= 0x1A && (v119 - 48) >= 0xA)
            {
              if ((v119 - 97) >= 0x1A)
              {
                v67 = 7;
              }

              else
              {
                v67 = 0;
              }
            }

LABEL_296:
            v21 = 0;
            v176[0] = 0;
LABEL_327:
            v25 = v34;
            if (v67)
            {
              goto LABEL_333;
            }

            goto LABEL_328;
          }

          if (v34)
          {
            v25 = 0;
            v21 = 0;
            v27 = v49 - 23;
            v26 = v34;
LABEL_91:
            v23 = v168;
            goto LABEL_328;
          }

          v23 = v168;
          if (*v48 <= 0x26u)
          {
            switch(v50)
            {
              case '$':
                v25 = 0;
                v21 = 0;
                v72 = v176[0]++;
                v73 = 45;
                goto LABEL_218;
              case '%':
                v25 = 0;
                v21 = 0;
                v72 = v176[0]++;
                v73 = 46;
                goto LABEL_218;
              case '&':
                v25 = 0;
                v21 = 0;
                v72 = v176[0]++;
                v73 = 32;
LABEL_218:
                v18[v72] = v73;
                goto LABEL_328;
            }
          }

          else
          {
            if (*v48 <= 0x28u)
            {
              v25 = 0;
              v21 = 0;
              if (v50 == 39)
              {
                v72 = v176[0]++;
                v73 = 36;
              }

              else
              {
                v72 = v176[0]++;
                v73 = 47;
              }

              goto LABEL_218;
            }

            if (v50 == 41)
            {
              v25 = 0;
              v21 = 0;
              v72 = v176[0]++;
              v73 = 43;
              goto LABEL_218;
            }

            if (v50 == 42)
            {
              v25 = 0;
              v21 = 0;
              v72 = v176[0]++;
              v73 = 37;
              goto LABEL_218;
            }
          }

          v21 = 0;
          v25 = v49 - 42;
LABEL_328:
          v129 = v175;
          v33 = ++v175;
          if (v129 >= v24)
          {
            v22 = v25 == 0;
            v16 = v33;
            v5 = v158;
            a3 = v155;
            a4 = v156;
            v20 = v162;
            goto LABEL_330;
          }
        }

        if (v21 == 2)
        {
          if (v26)
          {
            goto LABEL_333;
          }

          if (v50 <= 0x2A)
          {
            if (!v34)
            {
              if (v163 < 2)
              {
                v25 = 0;
                v26 = 0;
                ++v163;
              }

              else
              {
                v78 = v49 + 43 * (v51 + 43 * v47);
                if (v78 >= 0x10000)
                {
                  if (v78 >= 0x12710)
                  {
                    if (v78 >= 0x12AF8)
                    {
                      if (v78 >= 0x12B5C)
                      {
                        return;
                      }

                      v25 = 0;
                      v26 = 0;
                      v163 = 0;
                      v110 = v78 + 8;
                      v111 = v176[0]++;
                      v18[v111] = (v110 / 0xAu) | 0x30;
                      v112 = v176[0]++;
                      v18[v112] = (v110 % 0xAu) | 0x30;
                      v21 = 2;
                      goto LABEL_328;
                    }

                    v25 = 0;
                    v26 = 0;
                    v163 = 0;
                    v103 = v78 - 10000;
                    v104 = v176[0]++;
                    v18[v104] = (v103 / 0x64u) | 0x30;
                    v105 = v176[0]++;
                    v18[v105] = ((v103 / 0xAu) % 0xAu) | 0x30;
                    v98 = v103 % 0xAu;
                  }

                  else
                  {
                    v25 = 0;
                    v26 = 0;
                    v163 = 0;
                    v95 = v176[0]++;
                    v18[v95] = (v78 / 0x3E8u) | 0x30;
                    v96 = v176[0]++;
                    v18[v96] = ((v78 / 0x64u) % 0xAu) | 0x30;
                    v97 = v176[0]++;
                    v18[v97] = (v78 / 0xAu - 10 * ((6554 * (v78 / 0xAu)) >> 16)) | 0x30;
                    v98 = v78 % 0xAu;
                  }

                  v81 = v176[0]++;
                  LOBYTE(v78) = v98 | 0x30;
                }

                else
                {
                  v25 = 0;
                  v26 = 0;
                  v163 = 0;
                  v79 = v176[0]++;
                  v80 = v78 + 255;
                  if (v78 >= 0)
                  {
                    HIBYTE(v80) = BYTE1(v78);
                  }

                  v18[v79] = HIBYTE(v80);
                  v81 = v176[0]++;
                }

                v18[v81] = v78;
              }

              goto LABEL_193;
            }

            if (v50 - 10 > 0x19)
            {
              if (v34 != 1 || v50 > 9)
              {
                goto LABEL_333;
              }

              v26 = 0;
              v52 = v176[0]++;
              v18[v52] = v49 | 0x30;
              v21 = 2;
LABEL_132:
              v25 = 1;
              goto LABEL_133;
            }

            goto LABEL_82;
          }

          if ((v50 - 43) <= 3u)
          {
            v26 = 0;
            v25 = v49 - 42;
LABEL_193:
            v21 = 2;
            goto LABEL_328;
          }

          if (v49 - 48 > 2)
          {
            v67 = 0;
            goto LABEL_304;
          }

          if (v163 < 1)
          {
            v94 = 0;
          }

          else
          {
            if (v163 == 1)
            {
              if (!v34)
              {
                if (v51 > 9)
                {
                  if (v51 > 0x23)
                  {
                    if ((v51 - 36) > 6)
                    {
                      LOBYTE(v116) = 0;
                    }

                    else
                    {
                      v116 = 0x252B2F24202E2DuLL >> (8 * (v51 - 36));
                    }
                  }

                  else
                  {
                    LOBYTE(v116) = v51 + 55;
                  }
                }

                else
                {
                  LOBYTE(v116) = v51 + 48;
                }

                LOBYTE(v116) = v116 ^ 0x80;
                goto LABEL_299;
              }
            }

            else if (!v34)
            {
              if (v47 > 9)
              {
                if (v47 > 0x23)
                {
                  if ((v47 - 36) > 6)
                  {
                    LOBYTE(v74) = 0;
                  }

                  else
                  {
                    v74 = 0x252B2F24202E2DuLL >> (8 * (v47 - 36));
                  }
                }

                else
                {
                  LOBYTE(v74) = v47 + 55;
                }
              }

              else
              {
                LOBYTE(v74) = v47 + 48;
              }

              v120 = v176[0]++;
              v18[v120] = v74;
              if (v51 > 9)
              {
                if (v51 > 0x23)
                {
                  if ((v51 - 36) > 6)
                  {
                    LOBYTE(v116) = 0;
                  }

                  else
                  {
                    v116 = 0x252B2F24202E2DuLL >> (8 * (v51 - 36));
                  }
                }

                else
                {
                  LOBYTE(v116) = v51 + 55;
                }
              }

              else
              {
                LOBYTE(v116) = v51 + 48;
              }

LABEL_299:
              v163 = 0;
              v94 = 0;
              v125 = v176[0]++;
              v18[v125] = v116;
              goto LABEL_300;
            }

            v163 = 0;
            v94 = 7;
          }

LABEL_300:
          v126 = sub_2615504F4(v18, v160, v162, v176, v170);
          v18 = v166;
          v162 = v176[0];
          if (v126)
          {
            v67 = v94;
          }

          else
          {
            v67 = 7;
          }

          v23 = v168;
          v28 = v19 + 1;
          v24 = v165;
          v30 = v19 + 3;
          v29 = v19 + 2;
          v31 = v19 - 2;
          v32 = v6 - 1;
LABEL_304:
          if (v49 <= 0x31u)
          {
            if (v49 != 47)
            {
              if (v49 != 48)
              {
                if (v49 != 49)
                {
                  goto LABEL_333;
                }

                goto LABEL_308;
              }

LABEL_318:
              v26 = 0;
LABEL_319:
              v21 = 1;
              goto LABEL_327;
            }

            v123 = v67;
            if ((sub_261550824(v6, v7, &v175, &v171, &v170) & 1) == 0)
            {
              goto LABEL_378;
            }

            v26 = 0;
            v21 = 2;
            goto LABEL_322;
          }

          if (v49 != 50)
          {
            if (v49 == 51)
            {
              if (v33 < v24)
              {
                v26 = 0;
                v128 = v176[0]++;
                v18[v128] = 29;
LABEL_326:
                v21 = 2;
                goto LABEL_327;
              }
            }

            else
            {
              if (v49 != 52)
              {
                goto LABEL_333;
              }

              if (v23 == 54)
              {
                goto LABEL_333;
              }

              if (v33 != v19)
              {
                goto LABEL_333;
              }

              v127 = v48[1] + 1;
              v175 = v28;
              if (v127 != v157)
              {
                goto LABEL_333;
              }
            }

            v26 = 0;
            goto LABEL_326;
          }

LABEL_316:
          v26 = 0;
          goto LABEL_317;
        }

        if (v26)
        {
          goto LABEL_333;
        }

        if (v50 <= 0x2A)
        {
          if (v34)
          {
            if (v50 - 10 > 0x19)
            {
              if (v34 != 1 || v50 > 9)
              {
                goto LABEL_333;
              }

              v26 = 0;
              v83 = v176[0]++;
              v18[v83] = v49 | 0x30;
              v21 = 3;
              goto LABEL_132;
            }

LABEL_82:
            v61 = sub_261550414(v34, *v48);
            v18 = v166;
            v25 = 0;
            v26 = 0;
            v21 = 0;
            v62 = v176[0]++;
            *(v166 + v62) = v61 ^ 0x80;
            goto LABEL_133;
          }

          if (v167 < 2)
          {
            v25 = 0;
            v26 = 0;
            ++v167;
            goto LABEL_148;
          }

          v82 = v49 + 43 * (v51 + 43 * v47);
          if (v82 >= 0x10000)
          {
            if (v82 >= 0x12710)
            {
              if (v82 >= 0x12AF8)
              {
                if (v82 >= 0x12B5C)
                {
                  return;
                }

                v25 = 0;
                v26 = 0;
                v167 = 0;
                v113 = v176[0]++;
                v18[v113] = ((v82 + 8) / 0xAu) | 0x30;
                LOBYTE(v102) = (v82 + 8) % 0xAu;
              }

              else
              {
                v25 = 0;
                v26 = 0;
                v167 = 0;
                v106 = v176[0]++;
                v18[v106] = ((v82 - 10000) / 0x64u) | 0x30;
                v107 = v176[0]++;
                v18[v107] = (((v82 - 10000) / 0xAu) % 0xAu) | 0x30;
                v102 = v82 - 10000 + 246 * ((v82 - 10000) / 0xAu);
              }
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v167 = 0;
              v99 = v176[0]++;
              v18[v99] = (v82 / 0x3E8u) | 0x30;
              v100 = v176[0]++;
              v18[v100] = ((v82 / 0x64u) % 0xAu) | 0x30;
              v101 = v176[0]++;
              v18[v101] = (v82 / 0xAu - 10 * ((6554 * (v82 / 0xAu)) >> 16)) | 0x30;
              LOBYTE(v102) = v82 % 0xAu;
            }

            v114 = v176[0]++;
            v18[v114] = v102 | 0x30;
            v21 = 3;
            goto LABEL_328;
          }

          v67 = sub_261550AA4(v82, v166, v160, v176);
          v32 = v6 - 1;
          v31 = v19 - 2;
          v30 = v19 + 3;
          v29 = v19 + 2;
          v28 = v19 + 1;
          v24 = v165;
          v23 = v168;
          v18 = v166;
          v167 = 0;
          v26 = 0;
          v34 = 0;
          v21 = 3;
          goto LABEL_327;
        }

        if ((v50 - 43) <= 3u)
        {
          v26 = 0;
          v25 = v49 - 42;
LABEL_148:
          v21 = 3;
          goto LABEL_328;
        }

        v67 = 0;
        v75 = v167;
        if (v167 >= 1 && (v49 - 48) <= 2u)
        {
          if (v167 == 1)
          {
            if (!v34)
            {
              if (v51 > 9)
              {
                if (v51 > 0x23)
                {
                  if ((v51 - 36) > 6)
                  {
                    LOBYTE(v109) = 0;
                  }

                  else
                  {
                    v109 = 0x252B2F24202E2DuLL >> (8 * (v51 - 36));
                  }
                }

                else
                {
                  LOBYTE(v109) = v51 + 55;
                }
              }

              else
              {
                LOBYTE(v109) = v51 + 48;
              }

              LOBYTE(v109) = v109 ^ 0x80;
              goto LABEL_274;
            }
          }

          else if (!v34)
          {
            if (v47 > 9)
            {
              if (v47 > 0x23)
              {
                if ((v47 - 36) > 6)
                {
                  LOBYTE(v76) = 0;
                }

                else
                {
                  v76 = 0x252B2F24202E2DuLL >> (8 * (v47 - 36));
                }
              }

              else
              {
                LOBYTE(v76) = v47 + 55;
              }
            }

            else
            {
              LOBYTE(v76) = v47 + 48;
            }

            v118 = v176[0]++;
            v18[v118] = v76;
            if (v51 > 9)
            {
              if (v51 > 0x23)
              {
                if ((v51 - 36) > 6)
                {
                  LOBYTE(v109) = 0;
                }

                else
                {
                  v109 = 0x252B2F24202E2DuLL >> (8 * (v51 - 36));
                }
              }

              else
              {
                LOBYTE(v109) = v51 + 55;
              }
            }

            else
            {
              LOBYTE(v109) = v51 + 48;
            }

LABEL_274:
            v67 = 0;
            v121 = v176[0]++;
            v75 = 0;
            v18[v121] = v109;
            goto LABEL_275;
          }

          v75 = 0;
          v67 = 7;
        }

LABEL_275:
        v167 = v75;
        if (v49 <= 0x31u)
        {
          if (v49 != 47)
          {
            if (v49 != 48)
            {
              if (v49 != 49)
              {
                goto LABEL_333;
              }

              v26 = 0;
              goto LABEL_280;
            }

            goto LABEL_318;
          }

          v123 = v67;
          if ((sub_261550824(v6, v7, &v175, &v171, &v170) & 1) == 0)
          {
            goto LABEL_378;
          }

          v26 = 0;
          v21 = 3;
LABEL_322:
          v18 = v166;
          v23 = v168;
          v28 = v19 + 1;
          v24 = v165;
          v30 = v19 + 3;
          v29 = v19 + 2;
          v31 = v19 - 2;
          v32 = v6 - 1;
          v67 = v123;
          goto LABEL_327;
        }

        if (v49 == 50)
        {
LABEL_308:
          v21 = 0;
          v26 = 0;
          goto LABEL_327;
        }

        if (v49 == 51)
        {
          if (v33 < v24)
          {
            v26 = 0;
            v124 = v176[0]++;
            v18[v124] = 29;
            goto LABEL_317;
          }
        }

        else if (v49 != 52 || v23 == 54 || v33 != v19 || (v122 = v48[1] + 1, v175 = v28, v122 != v157))
        {
LABEL_333:
          v5 = v158;
          goto LABEL_416;
        }

        goto LABEL_316;
      }
    }
  }
}

void *sub_261552B90(void *__dst)
{
  if (__dst)
  {
    v1 = __dst;
    v2 = __dst[88];
    if (v2)
    {
      free(v2);
    }

    v3 = v1[87];
    if (v3)
    {
      free(v3);
    }

    return memcpy(v1, &unk_26157FE40, 0x2C8uLL);
  }

  return __dst;
}

float sub_261552BF0(uint64_t a1, uint64_t a2, int a3, int *a4, _DWORD *a5, float *a6, float *a7, float result, float a9, float a10)
{
  v10 = *a1;
  v11 = *a1 >= 5 && v10 == *a2;
  if (v11 && v10 - 4 > a3)
  {
    v12 = *(a1 + 8);
    v13 = fabsf(*(v12 + 4 * a3) - result);
    v14 = a3 - 1;
    v15 = (v12 + 4 * a3 + 4);
    v16 = v10 - a3 - 5;
    while (1)
    {
      v17 = v13;
      if (!v16)
      {
        break;
      }

      v18 = *v15++;
      v13 = vabds_f32(v18, result);
      ++v14;
      --v16;
      if (v13 > v17)
      {
        v19 = v14;
        goto LABEL_12;
      }
    }

    v19 = *a1 - 5;
LABEL_12:
    if (v17 <= a10)
    {
      v20 = v19 + 4;
      result = *(v12 + 4 * v20);
      if (vabds_f32(result, a9) <= a10)
      {
        v21 = *(a2 + 8);
        v22 = *(v12 + 4 * v19);
        result = result - v22;
        v23 = 4 * v19 + 4;
        *a7 = (1.0 / result) * (*(v12 + v23) - v22);
        a7[1] = (1.0 / result) * (*(v21 + v23) - *(v21 + 4 * v19));
        v24 = 4 * v19 + 8;
        a7[2] = (1.0 / result) * (*(v12 + v24) - *(v12 + v23));
        a7[3] = (1.0 / result) * (*(v21 + v24) - *(v21 + v23));
        v25 = 4 * v19 + 12;
        a7[4] = (1.0 / result) * (*(v12 + v25) - *(v12 + v24));
        a7[5] = (1.0 / result) * (*(v21 + v25) - *(v21 + v24));
        *a6 = result;
        *a4 = v19;
        *a5 = v20;
      }
    }
  }

  return result;
}

uint64_t sub_261552D50(uint64_t result, uint64_t a2, unsigned int a3, float *a4, int a5)
{
  if ((a3 & 0x80000000) == 0 && *result == *a2)
  {
    v5 = a3 + 4;
    if (v5 < *result)
    {
      v6 = *(result + 8);
      v7 = *(a2 + 8);
      v8 = *(v6 + 4 * a3);
      v9 = *(v6 + 4 * v5) - v8;
      v10 = 1.0;
      if (v9 > 0.0)
      {
        v10 = 1.0 / v9;
      }

      *a4 = (*(v6 + 4 * (a3 + 1)) - v8) * v10;
      a4[1] = v10 * (*(v7 + 4 * (a3 + 1)) - *(v7 + 4 * a3));
      a4[2] = v10 * (*(v6 + 4 * (a3 + 2)) - *(v6 + 4 * (a3 + 1)));
      a4[3] = v10 * (*(v7 + 4 * (a3 + 2)) - *(v7 + 4 * (a3 + 1)));
      v11 = a3 + 3;
      a4[4] = v10 * (*(v6 + 4 * v11) - *(v6 + 4 * (a3 + 2)));
      a4[5] = v10 * (*(v7 + 4 * v11) - *(v7 + 4 * (a3 + 2)));
      if (a5)
      {
        a4[6] = v10 * (*(v6 + 4 * v5) - *(v6 + 4 * v11));
      }
    }
  }

  return result;
}

float sub_261552E34(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = *(a1 + v2);
    if (v4 < 0.088235 || v4 >= 0.14706)
    {
      if (v4 < 0.14706 || v4 >= 0.20588)
      {
        if (v4 < 0.20588 || v4 >= 0.26471)
        {
          if (v4 < 0.26471 || v4 >= 0.32353)
          {
            if (v4 < 0.32353 || v4 >= 0.38235)
            {
              if (v4 < 0.38235 || v4 >= 0.44118)
              {
                if (v4 >= 0.44118 && v4 < 0.5)
                {
                  v5 = v4 + -0.47059;
                  v6 = 8;
                }

                else
                {
                  v8 = v4 >= 0.5;
                  v9 = v4 < 0.55882;
                  v5 = v4 + -0.52941;
                  v10 = !v8 || !v9;
                  if (v8 && v9)
                  {
                    v6 = 9;
                  }

                  else
                  {
                    v6 = -1;
                  }

                  if (v10)
                  {
                    v5 = 1000000.0;
                  }
                }
              }

              else
              {
                v5 = v4 + -0.41176;
                v6 = 7;
              }
            }

            else
            {
              v5 = v4 + -0.35294;
              v6 = 6;
            }
          }

          else
          {
            v5 = v4 + -0.29412;
            v6 = 5;
          }
        }

        else
        {
          v5 = v4 + -0.23529;
          v6 = 4;
        }
      }

      else
      {
        v5 = v4 + -0.17647;
        v6 = 3;
      }
    }

    else
    {
      v5 = v4 + -0.11765;
      v6 = 2;
    }

    *(a2 + v2) = v6;
    v3 = v3 + (v5 * v5);
    v2 += 4;
  }

  while (v2 != 24);
  return expf(v3 * -20.0);
}

uint64_t sub_261552FD0(int a1, int32x4_t *a2, float *a3)
{
  v3 = 0;
  v4 = vaddvq_s32(vmulq_s32(*a2, xmmword_2615610B0)) + 10 * a2[1].i32[0] + a2[1].i32[1];
  v5 = *(&off_279AD9788 + a1 / 3);
  v6 = *(&off_279AD97A0 + a1 / 3);
  v7 = 928;
  v8 = 464;
  while (1)
  {
    v9 = v8;
    v10 = *(v5 + 4 * v8);
    v11 = v10 >= v4;
    if (v10 == v4)
    {
      break;
    }

    if (v10 <= v4)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (v11)
    {
      v7 = v12;
    }

    if (!v11)
    {
      v3 = v9 + 1;
    }

    v8 = (v7 + v3) / 2;
    if (v7 <= v3)
    {
      if (*(v5 + 4 * v8) == v4)
      {
        v9 = v8;
      }

      else
      {
        v13 = *(v5 + 4 * v3) - v4;
        if (v13 < 0)
        {
          v13 = v4 - *(v5 + 4 * v3);
        }

        v14 = *(v5 + 4 * v7) - v4;
        if (v14 < 0)
        {
          v14 = -v14;
        }

        *a3 = *a3 * 0.5;
        if (v13 >= v14)
        {
          v3 = v7;
        }

        v9 = v3;
      }

      return *(v6 + 4 * v9);
    }
  }

  return *(v6 + 4 * v9);
}

uint64_t sub_2615530B4(unsigned int a1, int a2, int a3, int a4, signed int a5, uint64_t a6)
{
  v7 = 3 * (a1 / 0x1E) + a2 / 3;
  result = (v7 + 1);
  if (result < a4 || v7 >= a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a6)
  {
    v10 = a1 - 30 * (v7 / 3);
    if (a3)
    {
      if (a2 != 6)
      {
        if (a2 != 3)
        {
          if (a2 || v10 > 0x1D)
          {
            goto LABEL_64;
          }

          v11 = 0;
          v12 = 0;
          ++*(a6 + 104 + 2 * v10);
          v13 = *(a6 + 104);
          do
          {
            v14 = *(a6 + 106 + 2 * v11++);
            if (v14 > v13)
            {
              v12 = v11;
              v13 = v14;
            }
          }

          while (v11 != 29);
LABEL_43:
          *(a6 + 228) = v13;
          *(a6 + 16) = v12;
          goto LABEL_64;
        }

        if (v10 + 2 >= 0x1D)
        {
          v21 = *(a6 + 12);
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = ((((86 * v10) & 0x8000) != 0) + ((86 * v10) >> 8));
          ++*(a6 + 86 + 2 * v22);
          v23 = *(a6 + 86);
          do
          {
            v24 = *(a6 + 88 + 2 * v20++);
            if (v24 > v23)
            {
              v21 = v20;
              v23 = v24;
            }
          }

          while (v20 != 8);
          *(a6 + 224) = v23;
          *(a6 + 12) = v21;
        }

        v35 = -3 * v21 + v10;
        if (v35 > 2)
        {
          goto LABEL_64;
        }

        v36 = 0;
        v37 = 0;
        ++*(a6 + 164 + 2 * v35);
        v38 = *(a6 + 164);
        do
        {
          v39 = *(a6 + 166 + 2 * v36++);
          if (v39 > v38)
          {
            v37 = v36;
            v38 = v39;
          }
        }

        while (v36 != 2);
LABEL_63:
        *(a6 + 230) = v38;
        *(a6 + 20) = v37;
LABEL_64:
        v43 = *(a6 + 16);
        if ((v43 & 0x80000000) == 0)
        {
          v44 = *(a6 + 20);
          if ((v44 & 0x80000000) == 0)
          {
            *(a6 + 4) = 3 * v43 + v44 + 1;
          }
        }

        if (*(a6 + 226) < 3u || *(a6 + 224) < 3u || *(a6 + 228) < 3u || *(a6 + 230) < 3u || (v45 = *(a6 + 4), (v45 - 3) > 0x57))
        {
          v47 = 0;
        }

        else
        {
          v46 = *(a6 + 12);
          v47 = 1;
          if (1 << (v46 + 1) >= *(a6 + 8) * v45)
          {
            v47 = 0;
            *(a6 + 2 * v46 + 86) = 0;
            *(a6 + 224) = 0;
          }
        }

        *a6 = v47;
        return result;
      }

      if (v10 > 0x1D)
      {
        goto LABEL_64;
      }

      v25 = 0;
      v16 = 0;
      v26 = v10 + 1;
      v18 = *(a6 + 24);
      ++*(a6 + 24 + 2 * v26);
      do
      {
        v27 = *(a6 + 26 + 2 * v25++);
        if (v27 > v18)
        {
          v16 = v25;
          v18 = v27;
        }
      }

      while (v25 != 30);
    }

    else
    {
      if (a2 == 6)
      {
        if (v10 + 2 >= 0x1D)
        {
          v31 = *(a6 + 12);
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = ((((86 * v10) & 0x8000) != 0) + ((86 * v10) >> 8));
          ++*(a6 + 86 + 2 * v32);
          v33 = *(a6 + 86);
          do
          {
            v34 = *(a6 + 88 + 2 * v30++);
            if (v34 > v33)
            {
              v31 = v30;
              v33 = v34;
            }
          }

          while (v30 != 8);
          *(a6 + 224) = v33;
          *(a6 + 12) = v31;
        }

        v40 = -3 * v31 + v10;
        if (v40 > 2)
        {
          goto LABEL_64;
        }

        v41 = 0;
        v37 = 0;
        ++*(a6 + 164 + 2 * v40);
        v38 = *(a6 + 164);
        do
        {
          v42 = *(a6 + 166 + 2 * v41++);
          if (v42 > v38)
          {
            v37 = v41;
            v38 = v42;
          }
        }

        while (v41 != 2);
        goto LABEL_63;
      }

      if (a2 == 3)
      {
        if (v10 > 0x1D)
        {
          goto LABEL_64;
        }

        v28 = 0;
        v12 = 0;
        ++*(a6 + 104 + 2 * v10);
        v13 = *(a6 + 104);
        do
        {
          v29 = *(a6 + 106 + 2 * v28++);
          if (v29 > v13)
          {
            v12 = v28;
            v13 = v29;
          }
        }

        while (v28 != 29);
        goto LABEL_43;
      }

      if (a2 || v10 > 0x1D)
      {
        goto LABEL_64;
      }

      v15 = 0;
      v16 = 0;
      v17 = v10 + 1;
      v18 = *(a6 + 24);
      ++*(a6 + 24 + 2 * v17);
      do
      {
        v19 = *(a6 + 26 + 2 * v15++);
        if (v19 > v18)
        {
          v16 = v15;
          v18 = v19;
        }
      }

      while (v15 != 30);
    }

    *(a6 + 226) = v18;
    *(a6 + 8) = v16;
    goto LABEL_64;
  }

  return result;
}

uint64_t sub_2615534D0(float *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v55 = *MEMORY[0x277D85DE8];
  v51 = a1;
  v52 = a2;
  *&v50 = a3;
  *(&v50 + 1) = a4;
  sub_26155AEFC(&v51, &v50, a6, a7);
  v9 = v50;
  v10 = v50 - 12;
  if (v50 < 12)
  {
    return 16;
  }

  v12 = v50 - 1;
  v13 = *(a5 + 64);
  if (*(v13 + 30))
  {
    v14 = 4;
  }

  else
  {
    v14 = v50;
  }

  __asm { FMOV            V0.2S, #-1.0 }

  *(a5 + 72) = _D0;
  *(v13 + 40) = 0;
  v20 = v52;
  *(v13 + 48) = *v52;
  v21 = *(&v50 + 1);
  *(v13 + 52) = *(*(&v50 + 1) + 4 * v12);
  *(v13 + 32) = _D0;
  if (v14 - 1 >= v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = v14 - 1;
  }

  v23 = -1.0;
  v24 = 0;
  if (v22)
  {
    while (1)
    {
      sub_261552D50(&v51, &v50, v24, v54, 0);
      v26 = v25;
      v27 = 0.0;
      if (v25 > 0.0)
      {
        v28 = fmaxf(fabsf(9.0 - (v54[0] * 17.0)) / 17.0, 0.0);
        v29 = fabsf(2.0 - (v54[1] * 17.0)) / 17.0;
        if (v29 > v28)
        {
          v28 = v29;
        }

        v30 = fabsf(2.0 - (v54[2] * 17.0)) / 17.0;
        if (v30 > v28)
        {
          v28 = v30;
        }

        v31 = fabsf(2.0 - (v54[3] * 17.0)) / 17.0;
        if (v31 > v28)
        {
          v28 = v31;
        }

        v32 = fabsf(2.0 - (v54[4] * 17.0)) / 17.0;
        if (v32 > v28)
        {
          v28 = v32;
        }

        v33 = fabsf(2.0 - (v54[5] * 17.0)) / 17.0;
        if (v33 > v28)
        {
          v28 = v33;
        }

        v27 = fmaxf(1.0 - v28, 0.0);
        if (v27 > 0.93)
        {
          break;
        }
      }

      if (v22 == ++v24)
      {
        v24 = v22;
        v23 = -1.0;
        if (!a6)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }
    }

    v23 = v26 / 17.0;
    *(a5 + 72) = v26 / 17.0;
    *(v13 + 32) = v26;
    *(v13 + 40) = v24;
    *(v13 + 48) = *(v20 + 4 * v24);
    if (a6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = 0.0;
    v26 = 0.0;
    if (a6)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  if (v23 <= 0.0)
  {
    return 6;
  }

LABEL_29:
  v34 = v24 + 12;
  if (v23 <= 0.0)
  {
    v34 = 4;
  }

  if (v9 - v14 <= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v9 - v14;
  }

  v36 = -1.0;
  if (v9 <= v35)
  {
    v38 = 0.0;
    v39 = 0.0;
    if (a6)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v48 = v23;
    while (1)
    {
      v37 = v9 - 1;
      sub_261552D50(&v51, &v50, v9 - 5, v53, 1);
      v39 = 0.0;
      if (v38 > 0.0)
      {
        v40 = fmaxf(fabsf(8.0 - (v53[0] * 17.0)) / 17.0, 0.0);
        v41 = fabsf(2.0 - (v53[1] * 17.0)) / 17.0;
        if (v41 > v40)
        {
          v40 = v41;
        }

        v42 = fabsf(4.0 - (v53[2] * 17.0)) / 17.0;
        if (v42 > v40)
        {
          v40 = v42;
        }

        v43 = fabsf(4.0 - (v53[3] * 17.0)) / 17.0;
        if (v43 > v40)
        {
          v40 = v43;
        }

        v44 = fabsf(2.0 - (v53[4] * 17.0)) / 17.0;
        if (v44 > v40)
        {
          v40 = v44;
        }

        v45 = fabsf(2.0 - (v53[5] * 17.0)) / 17.0;
        if (v45 > v40)
        {
          v40 = v45;
        }

        v46 = fabsf(3.0 - (v53[6] * 17.0)) / 17.0;
        if (v46 > v40)
        {
          v40 = v46;
        }

        v39 = fmaxf(1.0 - v40, 0.0);
        if (v39 > 0.93)
        {
          break;
        }
      }

      --v9;
      if (v37 <= v35)
      {
        v12 = v37 - 1;
        v23 = v48;
        v36 = -1.0;
        if (!a6)
        {
          goto LABEL_56;
        }

        goto LABEL_59;
      }
    }

    v36 = v38 / 17.0;
    *(a5 + 76) = v38 / 17.0;
    *(v13 + 36) = v38;
    *(v13 + 44) = v12 - v37;
    *(v13 + 52) = *(v21 + 4 * v37);
    v12 = v9 - 1;
    v23 = v48;
    if (a6)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v36 <= 0.0)
  {
    return 6;
  }

LABEL_59:
  if ((v27 * v39) > 0.93)
  {
    *(a5 + 24) = v27 * v39;
LABEL_75:
    *(v13 + 20) = 12;
    return 1;
  }

  if (v27 <= 0.93 || v23 <= 0.0)
  {
    if (v39 <= 0.93 || v36 <= 0.0)
    {
      *(a5 + 24) = 0;
      return 6;
    }

    v49 = 0.0;
    if (sub_26155397C(v51, v20, v50, v21, v12 - 8, &v49, v38) >= 1)
    {
      v47 = v49;
      if (v39 < v49)
      {
        v47 = v39;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v49 = 0.0;
    if (sub_26155397C(v51, v20, v50, v21, v24 + 4, &v49, v26) >= 1)
    {
      v47 = v49;
      if (v27 < v49)
      {
        v47 = v27;
      }

LABEL_72:
      *(a5 + 24) = v47;
      result = 1;
      goto LABEL_74;
    }
  }

  result = 14;
LABEL_74:
  if (result == 1)
  {
    goto LABEL_75;
  }

  return result;
}

uint64_t sub_26155397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, float *a6, float a7)
{
  v22 = *MEMORY[0x277D85DE8];
  v17[0] = a1;
  v17[1] = a2;
  v16[0] = a3;
  v16[1] = a4;
  sub_261552D50(v17, v16, a5, v21, 0);
  if ((vabds_f32(a7, v9) / a7) >= 0.2)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = sub_261552E34(v21, &v18);
  if (v15 <= 0.9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (v18.i32[0] + v19 - (v18.i32[1] + v20) + 9) % 9;
  if (v10 > 6 || ((1 << v10) & 0x49) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = sub_261552FD0(v10, &v18, &v15);
  if (v12 > 0x3A0)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 3 * (v12 / 0x1Eu) + v10 / 3u;
  if (v13 - 90 <= 0xFFFFFFA5)
  {
    return 0xFFFFFFFFLL;
  }

  result = v13 + 1;
  *a6 = v15;
  return result;
}

uint64_t sub_261553AE8(unint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7, int *a8, float a9, float a10, float a11, float a12, void *a13, float *a14)
{
  v14 = a8;
  v15 = a7;
  v18 = a4;
  v184 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 29) & 1) == 0 && *(a4 + 4) >= 1 && *(a4 + 12) >= 1)
  {
    v20 = *(a4 + 16);
    if (v20 > 0.0)
    {
      ++*a13;
      *a8 = -1;
      *a7 = -1;
      if (dword_280CB3638 < 1)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = dword_280CB3640;
        do
        {
          v25 = *v24;
          v24 += 16;
          if (v25 == 13)
          {
            v26 = 1 << v22;
          }

          else
          {
            v26 = 0;
          }

          v23 |= v26;
          ++v22;
        }

        while (dword_280CB3638 != v22);
      }

      v87 = *(a5 + 80);
      v88 = sub_26155B388(a1, a2, v23, *(a4 + 4), *(a4 + 12), a5, (v87 + 56), (v87 + 72), a9, a10, a11, a12, 1.0, v20, a14);
      if (v88)
      {
        v28 = v88;
LABEL_145:
        v89 = -2;
        v90 = -2;
LABEL_180:
        *v15 = v90;
        *v14 = v89;
        return v28;
      }

      if (a2)
      {
        v91 = *(v18 + 40);
        v92 = (v18 + 48);
        v93 = (v18 + 52);
      }

      else
      {
        v92 = *(v87 + 64);
        v93 = (*(v87 + 80) + 4 * *(v87 + 72) - 4);
        v91 = 0;
      }

      if (a3)
      {
        v183 = 0;
        v181 = 0u;
        v182 = 0u;
        memset(v180, 0, sizeof(v180));
        v179 = 0u;
        v94 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
        *&v181 = v94;
        *(v94 + 8) = 0;
        *(v94 + 18) = 0;
        *(v94 + 10) = 0;
        *v94 = 0u;
        *(v94 + 1) = 0u;
        *(v94 + 2) = 0u;
        *(v94 + 44) = 0u;
        v95 = sub_2615534D0(*(v87 + 56), *(v87 + 64), *(v87 + 72), *(v87 + 80), &v179, 0, 0);
        if (v95 != 1)
        {
          v28 = v95;
          sub_261544BD8(&v179);
          goto LABEL_145;
        }

        v96 = v15;
        v166 = *(v181 + 40);
        v97 = *(v181 + 48);
        v98 = *(v181 + 52);
        sub_261544BD8(&v179);
        v91 = v166;
      }

      else
      {
        v96 = v15;
        v97 = *v92;
        v98 = *v93;
      }

      v99 = *(a5 + 80);
      *(v99 + 48) = v97;
      *(v99 + 52) = v98;
      *(v99 + 40) = v91;
      v179 = xmmword_261580108;
      v180[0] = 0x3F8000003F800000;
      v175.i64[1] = -1;
      *&v176 = -1;
      v175.i64[0] = -1;
      v100 = *(v87 + 56);
      v101 = v91;
      v102 = HIDWORD(v91);
      if (v100 - (HIDWORD(v91) + v91) < 17 || *(v87 + 72) != v100)
      {
        v105 = v14;
        v109 = -1;
        v110 = -1;
        v107 = -1;
        v15 = v96;
        goto LABEL_159;
      }

      sub_261552D50(v87 + 56, v87 + 72, v91 + 4, &v179, 0);
      if (a14 || (vabds_f32(*(v18 + 32), v103) / *(v18 + 32)) < 0.3)
      {
        v171.i32[0] = sub_261552E34(&v179, &v175);
        if (*v171.i32 <= 0.9)
        {
          v110 = -1;
          v107 = -1;
        }

        else
        {
          v110 = (v175.i32[0] + v176 - (v175.i32[1] + DWORD1(v176)) + 9) % 9;
          v107 = -1;
          if (v110 <= 6 && ((1 << v110) & 0x49) != 0)
          {
            v121 = sub_261552FD0(v110, &v175, v171.i32);
            if (v121 <= 0x3A0)
            {
              v107 = sub_2615530B4(v121, v110, 1, 1, 90, a6);
              v100 = *(v87 + 56);
            }
          }

          else
          {
            v110 = -1;
          }
        }

        sub_261552D50(v87 + 56, v87 + 72, v100 - v102 - 9, &v179, 0);
        if (a14)
        {
          v105 = v14;
          v15 = v96;
LABEL_220:
          v171.i32[0] = sub_261552E34(&v179, &v175);
          if (*v171.i32 <= 0.9)
          {
            v109 = -1;
          }

          else
          {
            v114 = (v175.i32[0] + v176 - (v175.i32[1] + DWORD1(v176)) + 9) % 9;
            v109 = -1;
            if (v114 <= 6 && ((1 << v114) & 0x49) != 0)
            {
              v142 = sub_261552FD0(v114, &v175, v171.i32);
              if (v142 < 0x3A1)
              {
                v113 = sub_2615530B4(v142, v114, 0, 1, 90, a6);
                v167 = a6[2];
                v112 = v107 > 0;
                v111 = v113 > 0;
                if (v113 >= 1 && v107 >= 1)
                {
                  v115 = 0;
                  v116 = v107;
                  if (v107 == v113)
                  {
LABEL_171:
                    if ((v115 & 1) != 0 || !*a6)
                    {
                      goto LABEL_178;
                    }

                    v118 = v107 <= v116 ? v116 : v107;
                    v119 = (v118 - 1);
                    if (v118 < 1 || v118 > a6[1])
                    {
                      goto LABEL_178;
                    }

                    v122 = *(*(v87 + 64) + 4 * v101);
                    v123 = *(*(v87 + 80) + 4 * (*(v87 + 72) - v102 - 5));
                    v169 = 0.0;
                    v124 = v167;
                    if (v167 <= 0)
                    {
                      v131 = 0.0;
                      v14 = v105;
LABEL_230:
                      *&a6[v119 + 83] = v131 / v124;
                      goto LABEL_179;
                    }

                    v145 = v15;
                    v148 = v105;
                    v125 = (v123 - v122) / ((((v167 + 2) * 17.0) + 17.0) + 7.0);
                    v126 = v125 * 17.0;
                    v127 = a6;
                    v128 = (30 * v119);
                    v129 = v101 + 8;
                    v160 = v127;
                    v162 = v127 + 60;
                    v164 = (v118 - 1);
                    v130 = v167;
                    v131 = 0.0;
                    v132 = 2;
                    while (1)
                    {
                      sub_261552D50(v87 + 56, v87 + 72, v129, &v179, 0);
                      if ((vabds_f32(v126, v133) / v126) < 0.03)
                      {
                        break;
                      }

                      sub_261552BF0(v87 + 56, v87 + 72, v101, &v170, &v169, v174, &v179, v122 + (v132 * v126), v126 + (v122 + (v132 * v126)), v125);
                      if (!v134)
                      {
                        v129 = LODWORD(v169);
                        v101 = LODWORD(v169);
                        goto LABEL_196;
                      }

LABEL_214:
                      ++v132;
                      ++v128;
                      if (!--v130)
                      {
                        v14 = v148;
                        v15 = v145;
                        a6 = v160;
                        v124 = v167;
                        v119 = v164;
                        goto LABEL_230;
                      }
                    }

                    v129 += 4;
LABEL_196:
                    v171.i32[0] = sub_261552E34(&v179, &v175);
                    v135 = (v175.i32[0] + v176 - (v175.i32[1] + DWORD1(v176)) + 9) % 9;
                    if (v135 <= 6 && ((1 << v135) & 0x49) != 0 && (v135 == v110 || v135 == v114))
                    {
                      v138 = sub_261552FD0(v135, &v175, v171.i32);
                      if (v138 <= 0x3A0)
                      {
                        if ((*(v162 + v164) & 1) == 0)
                        {
                          *(v162 + v164) = 1;
                          ++v160[58];
                        }

                        v139 = *(v160 + 87);
                        v140 = *(v139 + 4 * v128);
                        v141 = *v171.i32;
                        if (v140 <= 0.9 && *v171.i32 > 0.9)
                        {
                          ++v160[59];
                        }

                        if (v141 > v140)
                        {
                          *(*(v160 + 88) + 2 * v128) = v138;
                          *(v139 + 4 * v128) = v141;
                          v140 = v141;
                        }

                        v131 = v131 + v140;
                      }
                    }

                    goto LABEL_214;
                  }
                }

LABEL_160:
                if (!a14)
                {
                  v116 = v113;
LABEL_178:
                  v14 = v105;
LABEL_179:
                  v28 = 0;
                  v90 = v107 - 1;
                  v89 = v116 - 1;
                  goto LABEL_180;
                }

                if (v113 != -1)
                {
                  v112 = 0;
                }

                if (v112)
                {
                  v115 = 0;
                  v116 = -1;
                }

                else
                {
                  v117 = !v111;
                  if (v107 == -1)
                  {
                    v115 = v117;
                  }

                  else
                  {
                    v115 = 1;
                  }

                  v116 = v113;
                }

                goto LABEL_171;
              }

              v109 = v114;
            }
          }

LABEL_159:
          v111 = 0;
          v167 = a6[2];
          v112 = v107 > 0;
          v113 = -1;
          v114 = v109;
          goto LABEL_160;
        }

        v108 = v110;
        v104 = v18;
        v105 = v14;
      }

      else
      {
        v104 = v18;
        v105 = v14;
        sub_261552D50(v87 + 56, v87 + 72, v100 - v102 - 9, &v179, 0);
        v107 = -1;
        v108 = -1;
      }

      v15 = v96;
      if ((vabds_f32(*(v104 + 36), v106) / *(v104 + 36)) >= 0.3)
      {
        v109 = -1;
        v110 = v108;
        goto LABEL_159;
      }

      v110 = v108;
      goto LABEL_220;
    }
  }

  ++*a13;
  *a8 = -1;
  *a7 = -1;
  v27 = *(a5 + 80);
  v28 = sub_26155AE84(a1, a14, a5, a9, a10, a11, a12);
  if (v28)
  {
    return v28;
  }

  v29 = *a6;
  if (!a14)
  {
    if (v29)
    {
      v30 = a6[2];
LABEL_19:
      v31 = 1000;
      goto LABEL_20;
    }

LABEL_18:
    v30 = llroundf(((vabds_f32(*(v18 + 52), *(v18 + 48)) / *(v18 + 24)) + -69.0) / 17.0);
    goto LABEL_19;
  }

  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = a6[2];
  v31 = ((8 * v30 + 34) * 1.5);
LABEL_20:
  v32 = 7.0;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v33 = sub_261511370(&v175, *a5, *(a5 + 8), (7.0 / (34 * v30 + 138)) + 0.5);
  v158 = v31;
  if (v33)
  {
    v35 = v33 <= v31;
  }

  else
  {
    v35 = 0;
  }

  if (!v35)
  {
    sub_261511878(&v175);
    return 2;
  }

  v159 = a6;
  v161 = a5;
  v156 = a2;
  v169 = 0.0;
  v152 = (v18 + 52);
  v153 = (v18 + 48);
  v151 = a6 + 60;
  v146 = a6 + 83;
  v147 = v14;
  v36 = -1;
  v28 = 14;
  v37 = 17.0;
  v38 = 0xFFFFFFFFLL;
  v39 = 1;
  v165 = -1;
  v40 = 0xFFFFFFFFLL;
  v41 = v158;
  v157 = v18;
  while (1)
  {
    if (v33 < 24)
    {
      goto LABEL_87;
    }

    v42 = (*v161 + 4 * (*v176 + -0.5));
    LODWORD(v42) = *v42 <= v42[1];
    sub_26154A4A4((v176 + 4 * v42), (v33 - v42) & 0xFFFFFFFE, v27 + 56, v27 + 72);
    if (v156)
    {
      v43 = *(v18 + 40);
      v44 = v152;
      v45 = v153;
    }

    else
    {
      v45 = *(v27 + 64);
      v44 = (*(v27 + 80) + 4 * *(v27 + 72) - 4);
      v43 = 0;
    }

    v46 = v40;
    if (a3)
    {
      v183 = 0;
      v181 = 0u;
      v182 = 0u;
      memset(v180, 0, sizeof(v180));
      v179 = 0u;
      v47 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      *&v181 = v47;
      *(&v180[1] + 4) = 0u;
      *(&v180[3] + 4) = 0u;
      *(v47 + 8) = 0;
      *(v47 + 18) = 0;
      *(v47 + 10) = 0;
      *v47 = 0u;
      *(v47 + 1) = 0u;
      *(v47 + 2) = 0u;
      *(v47 + 44) = 0u;
      if (sub_2615534D0(*(v27 + 56), *(v27 + 64), *(v27 + 72), *(v27 + 80), &v179, 0, 0) != 1)
      {
        sub_261544BD8(&v179);
LABEL_86:
        v18 = v157;
        goto LABEL_87;
      }

      v154 = *(v181 + 40);
      v149 = *(v181 + 48);
      sub_261544BD8(&v179);
      v48 = v149;
      v43 = v154;
      v46 = v40;
    }

    else
    {
      v48.i32[0] = *v45;
      v48.i32[1] = *v44;
    }

    v49 = v161[10];
    v34 = COERCE_DOUBLE(vcvt_f32_s32(vcvt_s32_f32(v48)));
    *(v49 + 40) = v43;
    *(v49 + 48) = v34;
    v50 = *(v27 + 56);
    v51 = v43;
    v52 = HIDWORD(v43);
    v53 = v38;
    if (v50 - v43 - HIDWORD(v43) < 12 || *(v27 + 72) != v50)
    {
      v57 = v165;
      goto LABEL_50;
    }

    if (v36 <= 0)
    {
      sub_261552D50(v27 + 56, v27 + 72, v43 + 4, v174, 0);
      if (a14 || (vabds_f32(*(v157 + 32), *&v34) / *(v157 + 32)) < 0.3)
      {
        v169 = sub_261552E34(v174, &v171);
        if (v169 <= 0.9 || ((v46 = ((v171.i32[0] + v172 - (v171.i32[1] + v173) + 9) % 9), v46 <= 6) ? (v54 = ((1 << v46) & 0x49) == 0) : (v54 = 1), v54))
        {
          v46 = 0xFFFFFFFFLL;
          goto LABEL_124;
        }

        v55 = sub_261552FD0(v46, &v171, &v169);
        if (v55 > 0x3A0)
        {
          goto LABEL_124;
        }

        v40 = v46;
        v56 = sub_2615530B4(v55, v46, 1, 1, 90, v159);
        if (*v159)
        {
          if (v56 > *(v159 + 4))
          {
            v36 = -1;
          }

          else
          {
            v36 = v56;
          }
        }

        else
        {
          v36 = v56;
        }

        v53 = v38;
      }

      v46 = v40;
    }

LABEL_124:
    v57 = v165;
    if (v53 <= 0)
    {
      sub_261552D50(v27 + 56, v27 + 72, *(v27 + 56) - v52 - 9, v174, 0);
      if (!a14 && (vabds_f32(*(v157 + 36), *&v34) / *(v157 + 36)) >= 0.3)
      {
        v60 = 0;
        goto LABEL_71;
      }

      v169 = sub_261552E34(v174, &v171);
      if (v169 <= 0.9 || ((v57 = (v171.i32[0] + v172 - (v171.i32[1] + v173) + 9) % 9, v57 <= 6) ? (v84 = ((1 << v57) & 0x49) == 0) : (v84 = 1), v84))
      {
        v57 = -1;
      }

      else
      {
        v85 = sub_261552FD0(v57, &v171, &v169);
        if (v85 <= 0x3A0)
        {
          v86 = sub_2615530B4(v85, v57, 0, 1, 90, v159);
          if (*v159)
          {
            if (v86 > *(v159 + 4))
            {
              v53 = 0xFFFFFFFFLL;
            }

            else
            {
              v53 = v86;
            }
          }

          else
          {
            v53 = v86;
          }
        }
      }
    }

LABEL_50:
    v60 = v36 > 0 && v53 > 0 && v36 == v53;
    v165 = v57;
    if (a14 && !v60)
    {
      if (v53 == -1 && v36 > 0)
      {
        v60 = 1;
        v53 = 0xFFFFFFFFLL;
      }

      else
      {
        v60 = v53 > 0 && v36 == -1;
      }
    }

LABEL_71:
    v38 = v53;
    if (a3)
    {
      break;
    }

    if (!*v159 && v60)
    {
      break;
    }

    v28 = 0;
    if (!*v159 || !v60)
    {
      v40 = v46;
      goto LABEL_85;
    }

    if (v36 <= v38)
    {
      v63 = v38;
    }

    else
    {
      v63 = v36;
    }

    v64 = (v63 - 1);
    if (v63 < 1 || v63 > *(v159 + 4))
    {
      v40 = v46;
      v28 = 0;
LABEL_85:
      v41 = v158;
      goto LABEL_86;
    }

    v40 = v46;
    v65 = *(*(v27 + 64) + 4 * v51);
    v66 = *(*(v27 + 80) + 4 * (*(v27 + 72) - v52 - 5));
    v67 = *(v159 + 8);
    v168 = 0;
    if (v67 > 0)
    {
      v143 = v67;
      v144 = v15;
      v155 = 0;
      v68 = (v66 - v65) / ((v37 + ((v67 + 2) * v37)) + v32);
      v69 = v68 * v37;
      v150 = (v63 - 1);
      v70 = (30 * v64);
      v71 = v51 + 8;
      v72 = 0.0;
      v73 = 2;
      while (1)
      {
        sub_261552D50(v27 + 56, v27 + 72, v71, v174, 0);
        if ((vabds_f32(v69, v74) / v69) < 0.03)
        {
          break;
        }

        sub_261552BF0(v27 + 56, v27 + 72, v51, &v179, &v168, &v170, v174, v65 + (v73 * v69), v69 + (v65 + (v73 * v69)), v68);
        if (!v75)
        {
          v71 = v168;
          v51 = v168;
          goto LABEL_96;
        }

LABEL_114:
        ++v70;
        ++v73;
        if (!--v67)
        {
          LODWORD(v67) = v143;
          v15 = v144;
          v32 = 7.0;
          v64 = v150;
          v83 = v155;
          goto LABEL_117;
        }
      }

      v71 += 4;
LABEL_96:
      v169 = sub_261552E34(v174, &v171);
      v76 = (v171.i32[0] + v172 - (v171.i32[1] + v173) + 9) % 9;
      if (v76 <= 6 && ((1 << v76) & 0x49) != 0 && (v76 == v40 || v76 == v165))
      {
        v79 = sub_261552FD0(v76, &v171, &v169);
        if (v79 <= 0x3A0)
        {
          if ((*(v151 + v150) & 1) == 0)
          {
            *(v151 + v150) = 1;
            ++*(v159 + 232);
          }

          v80 = *(v159 + 696);
          v81 = *(v80 + 4 * v70);
          v82 = v169;
          if (v81 <= 0.9 && v169 > 0.9)
          {
            ++*(v159 + 236);
          }

          if (v82 > v81)
          {
            *(*(v159 + 704) + 2 * v70) = v79;
            *(v80 + 4 * v70) = v82;
            v81 = v82;
          }

          ++v155;
          v72 = v72 + v81;
        }
      }

      goto LABEL_114;
    }

    v83 = 0;
    v72 = 0.0;
LABEL_117:
    v28 = 0;
    *&v146[v64] = v72 / v67;
    v54 = v83 == v67;
    v41 = v158;
    v37 = 17.0;
    v18 = v157;
    if (v54)
    {
      goto LABEL_141;
    }

LABEL_87:
    if (v39 != 3)
    {
      LODWORD(v34) = *(v18 + 24);
      v33 = sub_26151162C(&v175, v34);
      ++v39;
      if (v33 <= v41)
      {
        continue;
      }
    }

    goto LABEL_141;
  }

  v28 = 0;
LABEL_141:
  sub_261511878(&v175);
  *v15 = v36 - 1;
  *v147 = v38 - 1;
  return v28;
}

void sub_261554B94(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, int a7)
{
  v65 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v14 = sub_26155DFDC(*(a1 + 32), *a1, *(a1 + 8), *(a1 + 16), &v61, &v57, roundf(*a2), roundf(a2[1]), roundf(*a3), roundf(a3[1]), 5.0);
  if (v14 < 9)
  {
    *a5 = *a2;
    *a6 = *a3;
    v16 = v61;
    if (!v61)
    {
      return;
    }

    goto LABEL_25;
  }

  v15 = v14;
  v55 = a5;
  v56 = a6;
  v16 = v61;
  sub_26155E1A4(v61, v14);
  v17 = *(&v57 + 1);
  v18 = *(&v58 + 3);
  v19 = *a4;
  v20 = -(*(&v57 + 2) * (*&v59 - a4[1]));
  v21 = *(&v58 + 1);
  v22 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  v23 = v22;
  v24 = *v16;
  *v22 = *v16;
  for (i = 1; i != v15; ++i)
  {
    v24 = v24 + v16[i];
    v22[i] = v24;
  }

  v26 = v15 >> 2;
  if (v15 >> 2 >= a7)
  {
    v26 = a7;
  }

  if (a7 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 2;
  }

  v28 = v21 + (v20 + (v17 * (v19 - v18)));
  v29 = 1.0 / v27;
  v30 = v15 - 1 - v27;
  if (v27 + 1 > v28)
  {
    v31 = (v27 + 1);
  }

  else
  {
    v31 = v28;
  }

  if (v30 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v15 - 1 - v27;
  }

  v54 = v32;
  v33 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  bzero(v33, 4 * v15);
  if (v30 < v31)
  {
    v31 = v30;
  }

  v34 = &v23[v27];
  v35 = v31;
  v36 = v31;
  while (v36 > v27)
  {
    v37 = v36--;
    v38 = v29 * ((v23[v35 - 1] - v23[v37 - 1 - v27]) - (v34[v37] - v23[v35]));
    *&v33[v35 * 4] = v38;
    v39 = *&v33[v35 * 4 + 4];
    --v35;
    if (v39 > 0.4 && v39 > v38)
    {
      v41 = (v37 + 1);
      goto LABEL_29;
    }
  }

  v41 = 0.0;
LABEL_29:
  v64[0] = v41;
  bzero(v33, 4 * v15);
  v42 = v15 - v27;
  if (v54 >= (v15 - v27))
  {
    v46 = v55;
LABEL_39:
    v50 = v15 - 1;
  }

  else
  {
    v43 = &v23[v31];
    v44 = &v23[-v27 - 1];
    v45 = &v33[4 * v31];
    v46 = v55;
    while (1)
    {
      v47 = v29 * ((v34[v31] - *v43) - (*(v43 - 1) - *(v44 + 4 * v31)));
      *v45 = v47;
      v48 = *(v45 - 1);
      if (v48 > 0.4 && v48 > v47)
      {
        break;
      }

      ++v31;
      ++v43;
      ++v45;
      if (v31 >= v42)
      {
        goto LABEL_39;
      }
    }

    v50 = v31 - 1;
  }

  v64[1] = v50;
  sub_26155DA58(*a1, *(a1 + 8), &v57, 2u, v64, v63, v62);
  v51 = v63[1];
  v52 = v62[0];
  v53 = v62[1];
  *v46 = v63[0];
  v46[1] = v52;
  *v56 = v51;
  v56[1] = v53;
  free(v33);
  free(v23);
  if (v16)
  {
LABEL_25:

    free(v16);
  }
}

uint64_t sub_261554F64(float32x2_t *a1, uint64_t a2, int32x2_t *a3, int32x4_t *a4)
{
  v337 = *MEMORY[0x277D85DE8];
  pthread_once(&stru_27FEB40D0, sub_2615577E0);
  v9 = *(a2 + 64);
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v10.i32[0] = a3[5].i32[0];
  if (*v10.i32 < 0.0)
  {
    *v10.i32 = *v10.i32 + 6.2832;
  }

  if (*(v9 + 28) == 1)
  {
    *v10.i32 = fmodf(*v10.i32 + 3.1416, 6.2832);
  }

  if (*(v9 + 30) == 1)
  {
    v11 = a3[4];
    v8.i32[0] = a3[5].i32[1];
  }

  else
  {
    v8 = a1[7];
    v11 = vcvt_s32_f32(v8);
    v8.f32[0] = (a1[2].i32[0] - a1[1].i32[1]);
  }

  v271 = v8;
  v279 = *v10.i32;
  if ((*(v9 + 29) & 1) == 0 && *(v9 + 4) >= 1 && *(v9 + 12) >= 1 && *(v9 + 16) > 0.0)
  {
    v11 = a3[4];
    v10.i32[0] = a3[5].i32[1];
    v271 = v10;
  }

  v292 = 0;
  memset(v291, 0, sizeof(v291));
  v290 = 0u;
  sub_261544B04(v9, &v290);
  BYTE12(v291[0]) = 0;
  v289 = -1;
  v288 = -1;
  v287 = 1;
  memcpy(__dst, &unk_26157FE40, sizeof(__dst));
  v328 = malloc_type_calloc(0xA8CuLL, 2uLL, 0x1000040BDFB0063uLL);
  v327 = malloc_type_malloc(0x2A30uLL, 0x100004052888210uLL);
  bzero(v327, 0x2A30uLL);
  v285 = 0;
  v286 = 0;
  v283 = 0;
  v284 = 0;
  v276 = vcvt_f32_s32(v11);
  v12 = *(a2 + 28);
  v13 = *(a2 + 44);
  v14 = v276.f32[1];
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v312 = 0u;
  v15 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v317[0] = v15;
  *(v15 + 8) = 0;
  *(v15 + 18) = 0;
  *(v15 + 10) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 44) = 0u;
  v306 = -1;
  v305 = -1;
  v16 = __sincosf_stret(v279);
  v17 = v16.__cosval * (*v271.i32 * 0.5);
  v18 = v16.__sinval * (*v271.i32 * 0.5);
  v269 = a4;
  v270 = v9;
  if (sub_261553AE8(a4, 1, 1, &v290, &v312, __dst, &v306, &v305, v276.f32[0] - v17, v14 - v18, v17 + v276.f32[0], v18 + v14, &v287, 0) >= 2)
  {
    sub_261544D00(&v312);
    LOBYTE(v34) = 0;
    v35 = v279;
  }

  else
  {
    v265 = v12;
    v272 = v13;
    v253 = a2;
    v19 = v311;
    v20 = &v308 + 3;
    v21 = *(v317[0] + 64);
    v22 = (v21 + 4 * *(v317[0] + 40));
    v261 = (vabds_f32(v22[4], *v22) + vabds_f32(*(*(v317[0] + 80) + 4 * (*(v317[0] + 72) + ~*(v317[0] + 44))), *(v21 + 4 * (*(v317[0] + 72) - *(v317[0] + 44) - 5)))) / 35.0;
    memset(v310, 0, sizeof(v310));
    v308 = 0u;
    v309 = 0u;
    __src = 0u;
    v23 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
    v311[0] = v23;
    *(v23 + 8) = 0;
    *(v23 + 18) = 0;
    *(v23 + 10) = 0;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    *(v23 + 2) = 0u;
    v24 = fmaxf((v261 * 3.0) * 3.0, 2.0) * 0.5;
    *(v23 + 44) = 0u;
    v25 = vcvtps_s32_f32(log2f(v24) + 0.5);
    v26 = v279 + -1.57079633;
    v27 = __sincosf_stret(v26);
    v28 = v279 + 1.57079633;
    v29 = __sincosf_stret(v28);
    if (v25 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v25;
    }

    while (1)
    {
      if (sub_261553AE8(a4, 1, 1, &v290, &__src, __dst, &v306, &v305, ((v27.__cosval * v24) + v276.f32[0]) - v17, ((v27.__sinval * v24) + v276.f32[1]) - v18, v17 + ((v27.__cosval * v24) + v276.f32[0]), v18 + ((v27.__sinval * v24) + v276.f32[1]), &v287, 0) < 2)
      {
        v36 = &v313 + 3;
        v37 = v317;
        goto LABEL_24;
      }

      sub_261544D00(&__src);
      memset(v310, 0, sizeof(v310));
      v308 = 0u;
      v309 = 0u;
      __src = 0u;
      v31 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v311[0] = v31;
      *(v31 + 8) = 0;
      *(v31 + 18) = 0;
      *(v31 + 10) = 0;
      *v31 = 0u;
      *(v31 + 1) = 0u;
      *(v31 + 2) = 0u;
      *(v31 + 44) = 0u;
      if (sub_261553AE8(a4, 1, 1, &v290, &__src, __dst, &v306, &v305, ((v29.__cosval * v24) + v276.f32[0]) - v17, ((v29.__sinval * v24) + v276.f32[1]) - v18, v17 + ((v29.__cosval * v24) + v276.f32[0]), v18 + ((v29.__sinval * v24) + v276.f32[1]), &v287, 0) < 2)
      {
        break;
      }

      sub_261544D00(&__src);
      memset(v310, 0, sizeof(v310));
      v308 = 0u;
      v309 = 0u;
      __src = 0u;
      v32 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
      v311[0] = v32;
      *(v32 + 8) = 0;
      *(v32 + 18) = 0;
      *(v32 + 10) = 0;
      v33.i64[1] = 0;
      *v32 = 0u;
      *(v32 + 1) = 0u;
      *(v32 + 2) = 0u;
      v24 = v24 * 0.5;
      *(v32 + 44) = 0u;
      if (!--v30)
      {
        v34 = 0;
        v248 = 0;
        v258 = 0.0;
        v250 = 0.0;
        v33.i64[0] = 0;
        v266 = v33;
        v252 = 0.0;
        v262 = 0.0;
        v251 = 0.0;
        v273 = 0.0;
        v255 = 0.0;
        v246 = 0;
        v247 = 0;
        v249 = 0;
        v9 = v270;
        v35 = v279;
        v14 = v276.f32[1];
        goto LABEL_35;
      }
    }

    v36 = &v308 + 3;
    v37 = v311;
    v20 = &v313 + 3;
    v19 = v317;
LABEL_24:
    v38 = *v19;
    v39 = *(*v19 + 44);
    v40 = *(*v19 + 40);
    v41 = *(*v19 + 64);
    v42 = *(*v19 + 80);
    v43 = *(v42 + 4 * v40);
    LODWORD(v334) = *(v41 + 4 * v40);
    HIDWORD(v334) = v43;
    LODWORD(v38) = *(v38 + 56) - v39 - 5;
    v44 = *(v42 + 4 * v38);
    v335 = *(v41 + 4 * v38);
    v336 = v44;
    v45 = a4->i64[0];
    v46 = a4->u64[1];
    sub_26155DA58(a4->i64[0], v46, v20, 4u, &v334, &v322, &v318);
    v47 = (*&v322 + *(&v322 + 1)) * 0.5;
    v48 = (*&v318 + *(&v318 + 1)) * 0.5;
    v49 = (*(&v322 + 2) + *(&v322 + 3)) * 0.5;
    v50 = *v37;
    v51 = *(*v37 + 44);
    v52 = *(*v37 + 40);
    v53 = *(*v37 + 64);
    v55 = *(v50 + 80);
    v56 = *(v55 + 4 * v52);
    v57 = (*(&v318 + 2) + *(&v318 + 3)) * 0.5;
    LODWORD(v331) = *(v53 + 4 * v52);
    v54 = *&v331;
    *(&v331 + 1) = v56;
    v244 = v56;
    LODWORD(v52) = *(v50 + 56) - v51 - 5;
    v58 = *(v55 + 4 * v52);
    v332 = *(v53 + 4 * v52);
    v333 = v58;
    sub_26155DA58(v45, v46, v36, 4u, &v331, &v322, &v318);
    v59 = (*(&v322 + 2) + *(&v322 + 3)) * 0.5;
    v60 = (*(&v318 + 2) + *(&v318 + 3)) * 0.5;
    v61 = *(*v19 + 72) + ~v39;
    v62 = *(*v19 + 80);
    v63 = *(v62 + 4 * v61);
    v64 = *(v50 + 72) + ~v51;
    v65 = *(*v19 + 64);
    v66 = *(v65 + 4 * v40);
    v67 = *(v55 + 4 * v64);
    a4 = v269;
    v68 = *(v62 + 4 * v40);
    v69 = *(v65 + 4 * v61 - 16);
    v70 = *(v53 + 4 * v64 - 16);
    v304 = 0;
    v303 = 0;
    v302 = 0;
    v301 = 0;
    v71 = vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(*v269, vdupq_n_s64(0xFFFFFFFFFFFFFFFELL))));
    __asm { FMOV            V4.2S, #1.0 }

    v245 = v54;
    v242 = v66;
    v243 = v63;
    v240 = v68;
    v241 = v67;
    v238 = v70;
    v239 = v69;
    if (BYTE14(v291[0]) == 1)
    {
      v75 = vcgt_s32(v272, v265);
      a2 = v253;
      if (v75.i8[0])
      {
        v76 = v49;
        if (v75.i8[4])
        {
          _D4 = vcvt_f32_u32(vmax_s32(v265, 0x100000001));
          v77 = vcvt_f32_s32(v272);
          v71 = vbsl_s8(vcgt_f32(v77, v71), v71, v77);
        }
      }

      else
      {
        v76 = v49;
      }
    }

    else
    {
      v76 = v49;
      a2 = v253;
    }

    v256 = _D4.f32[0];
    v259 = v71.f32[0];
    v78 = _D4.f32[1];
    v79 = v71.f32[1];
    v267 = (*&v322 + *(&v322 + 1)) * 0.5;
    v274 = (*&v318 + *(&v318 + 1)) * 0.5;
    sub_26155D75C(&v304 + 1, &v304, &v303 + 1, &v303, v47, v48, v267, v274, _D4.f32[0], v71.f32[0], _D4.f32[1], v71.f32[1]);
    sub_26155D75C(&v302 + 1, &v302, &v301 + 1, &v301, v76, v57, v59, v60, v256, v259, v78, v79);
    v330 = __PAIR64__(v304, HIDWORD(v304));
    v329 = __PAIR64__(v303, HIDWORD(v303));
    *v300 = (v47 + v267) * 0.5;
    *&v300[1] = (v48 + v274) * 0.5;
    v80 = vcvtps_s32_f32(v261 + v261);
    sub_261554B94(v269, &v330, &v329, v300, &v286, &v285, v80);
    v299[0] = HIDWORD(v302);
    v299[1] = v302;
    v298[0] = *(&v301 + 1);
    LODWORD(v298[1]) = v301;
    v297[0] = (v76 + v59) * 0.5;
    v297[1] = (v57 + v60) * 0.5;
    sub_261554B94(v269, v299, v298, v297, &v283, &v284, v80);
    v249 = v286;
    v247 = v285;
    v246 = v284;
    v81.i32[0] = v283;
    v248 = v283;
    v273 = *&v286;
    v258 = *(&v283 + 1);
    v262 = *(&v286 + 1);
    v266 = v81;
    v251 = *(&v285 + 1);
    LODWORD(v255) = v285;
    v250 = *(&v284 + 1);
    LODWORD(v252) = v284;
    if (sub_26155D41C(&v296, &v295, &v294, &v293, *&v286, *(&v286 + 1), *&v283, *(&v283 + 1), *&v285, *(&v285 + 1), *&v284, *(&v284 + 1)) == 2)
    {
      v34 = 0;
      v9 = v270;
      v14 = v276.f32[1];
      v35 = v279;
    }

    else
    {
      v82 = v266;
      v83 = *v266.i32 - v273;
      v84 = v258 - v262;
      v85 = v252 - v255;
      v86 = v250 - v251;
      v87 = sqrtf((v84 * v84) + (v83 * v83));
      v9 = v270;
      v14 = v276.f32[1];
      v35 = v279;
      if ((vabds_f32(v87, sqrtf((v86 * v86) + (v85 * v85))) / v87) < 0.5 && (v88 = sqrtf(((v251 - v262) * (v251 - v262)) + ((v255 - v273) * (v255 - v273))), (vabds_f32(v88, sqrtf(((v250 - v258) * (v250 - v258)) + ((v252 - *v266.i32) * (v252 - *v266.i32)))) / v88) < 0.5))
      {
        v89 = (((v243 - v239) / (v243 - v242)) + ((v241 - v238) / (v241 - v245))) * 0.55;
        v90 = (((v240 - v242) / (v243 - v242)) + ((v244 - v245) / (v241 - v245))) * -0.55;
        v273 = v273 + (v90 * v83);
        *&v91 = v273;
        v262 = *(&v249 + 1) + (v90 * v84);
        *(&v91 + 1) = v262;
        v255 = v255 + (v90 * v85);
        *v82.i32 = *v266.i32 + (v89 * v83);
        v266 = v82;
        v258 = *(&v248 + 1) + (v89 * v84);
        v251 = *(&v247 + 1) + (v90 * v86);
        v252 = v252 + (v89 * v85);
        v249 = v91;
        v250 = *(&v246 + 1) + (v89 * v86);
        v285 = __PAIR64__(LODWORD(v251), LODWORD(v255));
        v286 = v91;
        v246 = __PAIR64__(LODWORD(v250), LODWORD(v252));
        v247 = __PAIR64__(LODWORD(v251), LODWORD(v255));
        v283 = __PAIR64__(LODWORD(v258), v82.u32[0]);
        v284 = __PAIR64__(LODWORD(v250), LODWORD(v252));
        v248 = __PAIR64__(LODWORD(v258), v82.u32[0]);
        v34 = 1;
      }

      else
      {
        v34 = 0;
      }
    }

LABEL_35:
    sub_261544D00(&__src);
    sub_261544D00(&v312);
    if (v34)
    {
      v92 = v248;
      v93 = v249;
      v94.i64[0] = v249;
      v96 = v246;
      v95 = v247;
      v94.i64[1] = v247;
      *(a2 + 28) = vcvtq_s32_f32(vrndaq_f32(v94));
      v94.i64[0] = v246;
      v94.i64[1] = v248;
      *(a2 + 44) = vcvtq_s32_f32(vrndaq_f32(v94));
      v97 = v273;
      v98 = v255;
      v99 = v255 - v273;
      v101 = v258;
      v100 = v262;
      v103 = v251;
      v102 = v252;
      v104 = v251 - v262;
      v105 = v266;
      v106 = v252 - *v266.i32;
      v107 = v250;
      v108 = v250 - v258;
      if (LODWORD(__dst[0]))
      {
        v109 = 1;
      }

      else if (v287 > 0x13)
      {
        v109 = 0;
      }

      else
      {
        do
        {
          v110 = vcvts_n_f32_s32(rand(), 0x1FuLL);
          v111 = v273 + (v110 * v99);
          v112 = v262 + (v110 * v104);
          v113 = *v266.i32 + (v110 * v106);
          v315 = 0u;
          v316 = 0u;
          v114 = v258 + (v110 * v108);
          v313 = 0u;
          v314 = 0u;
          v312 = 0u;
          v115 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          v317[0] = v115;
          *(v115 + 8) = 0;
          *(v115 + 18) = 0;
          *(v115 + 10) = 0;
          *v115 = 0u;
          *(v115 + 1) = 0u;
          *(v115 + 2) = 0u;
          *(v115 + 44) = 0u;
          sub_261553AE8(a4, 0, 0, &v290, &v312, __dst, &v289, &v288, v111, v112, v113, v114, &v287, 0);
          sub_261544D00(&v312);
        }

        while (!LODWORD(__dst[0]) && v287 < 0x14);
        v109 = LODWORD(__dst[0]) != 0;
        v14 = v276.f32[1];
        v92 = v248;
        v93 = v249;
        v96 = v246;
        v95 = v247;
        v97 = v273;
        v98 = v255;
        v103 = v251;
        v102 = v252;
        v105 = v266;
        v101 = v258;
        v100 = v262;
        v107 = v250;
      }

      if (v109 && (HIDWORD(__dst[0]) - 3) <= 0x57 && (LODWORD(__dst[1]) - 1) <= 0x1D)
      {
        v116 = ((v101 - v100) * (v101 - v100)) + ((*v105.i32 - v97) * (*v105.i32 - v97));
        v117 = ((v107 - v103) * (v107 - v103)) + ((v102 - v98) * (v102 - v98));
        v118 = (v104 * v104) + (v99 * v99);
        if (v116 <= v117)
        {
          v116 = v117;
        }

        v119 = sqrtf(v116);
        if (v118 <= ((v108 * v108) + (v106 * v106)))
        {
          v118 = (v108 * v108) + (v106 * v106);
        }

        v120 = v119 / ((((LODWORD(__dst[1]) + 2) * 17.0) + 17.0) + 18.0);
        v105.i32[0] = 1.0;
        if (v120 > 0.0)
        {
          v121 = 3.0 / v120;
          v122 = 4.0;
          if (v121 <= 4.0)
          {
            v122 = v121;
          }

          if (v121 >= 0.5)
          {
            *v105.i32 = v122;
          }

          else
          {
            *v105.i32 = 0.5;
          }
        }

        v123 = 2 * HIDWORD(__dst[0]);
        v124 = sqrtf(v118);
        *(v291 + 2) = *v105.i32 * *(v291 + 2);
        if (SDWORD1(v290) >= 1 && SHIDWORD(v290) >= 1 && *v291 > 0.0)
        {
          HIDWORD(v290) = vcvtps_s32_f32(*v105.i32 * HIDWORD(v290));
        }

        v125 = (ceilf(v119 * *v105.i32) + 1.0);
        v126 = (ceilf(v124 * *v105.i32) + 1.0);
        v309 = 0u;
        memset(v310, 0, 28);
        __src = 0u;
        v308 = 0u;
        v105.i32[0] = HIDWORD(v93);
        sub_26155B8F8(v125, v126, &__src, v93, v105, v95, *&v95.i32[1], *&v96, *(&v96 + 1), *&v92, *(&v92 + 1));
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v130 = (v126 - 1);
        do
        {
          v315 = 0u;
          v316 = 0u;
          v313 = 0u;
          v314 = 0u;
          v131 = (v127 / (v123 - 1)) * v130;
          v312 = 0u;
          v132 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
          v317[0] = v132;
          *(v132 + 8) = 0;
          *(v132 + 18) = 0;
          *(v132 + 10) = 0;
          *v132 = 0u;
          *(v132 + 1) = 0u;
          *(v132 + 2) = 0u;
          *(v132 + 44) = 0u;
          sub_261553AE8(a4, 0, 0, &v290, &v312, __dst, &v289, &v288, 0.0, v131, (v125 - 1), v131, &v287, &__src);
          if ((v289 & 0x80000000) == 0)
          {
            v133 = -1;
          }

          else
          {
            v133 = v288;
          }

          if (v288 < 0 || v289 == v288)
          {
            v135 = v289;
          }

          else
          {
            v135 = v133;
          }

          if ((v135 & 0x80000000) != 0 || SHIDWORD(__dst[0]) <= v135)
          {
            v135 = v129;
          }

          else if (v135 >= v129)
          {
            v128 -= v135 > v129;
          }

          else
          {
            ++v128;
          }

          sub_261544D00(&v312);
          ++v127;
          v129 = v135;
        }

        while (v123 != v127);
        v189 = v128 <= 0;
        a2 = v253;
        if (!v189)
        {
          *(v253 + 28) = vextq_s8(*(v253 + 28), *(v253 + 28), 8uLL);
          *(v253 + 44) = vextq_s8(*(v253 + 44), *(v253 + 44), 8uLL);
        }

        v9 = v270;
      }

      if (sub_2615569C8(__dst, a2))
      {
        LOBYTE(v34) = 0;
        v35 = v279;
      }

      else
      {
        v35 = v279;
        if (v328[1] == 920)
        {
          *(a2 + 4) = 3;
        }

        sub_261544B04(&v290, v9);
        LOBYTE(v34) = 1;
      }
    }
  }

  sub_261552B90(__dst);
  sub_261544AB4(&v290);
  if (v34)
  {
    return 0;
  }

  if (*(v9 + 29) != 1)
  {
    return 21;
  }

  memcpy(__dst, &unk_26157FE40, sizeof(__dst));
  v328 = malloc_type_calloc(0xA8CuLL, 2uLL, 0x1000040BDFB0063uLL);
  v327 = malloc_type_malloc(0x2A30uLL, 0x100004052888210uLL);
  bzero(v327, 0x2A30uLL);
  memset(v291, 0, sizeof(v291));
  v290 = 0u;
  v137 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v292 = v137;
  *(v137 + 8) = 0;
  *(v137 + 18) = 0;
  *(v137 + 10) = 0;
  *v137 = 0u;
  *(v137 + 1) = 0u;
  *(v137 + 2) = 0u;
  *(v137 + 44) = 0u;
  *(v9 + 40) = vadd_s32(*(v9 + 40), 0x800000004);
  if (*(v9 + 28) == 1)
  {
    *(v9 + 48) = vsub_f32(vdup_lane_s32(v271, 0), *(v9 + 48));
  }

  v138 = *(v9 + 32);
  if (v138 <= 0.0)
  {
    v139 = NAN;
  }

  else
  {
    v139 = v138 + *(v9 + 48);
  }

  *(v9 + 48) = v139;
  v140 = *(v9 + 36);
  if (v140 <= 0.0)
  {
    v141 = NAN;
  }

  else
  {
    v141 = *(v9 + 52) + (v140 * -2.0);
  }

  *(v9 + 52) = v141;
  v300[0] = -1;
  v136 = sub_261556C7C(a4, 1, 90, v9, &v290, __dst, v300, 0, v276.f32[0], v14, v35, *v271.i32);
  sub_261544D00(&v290);
  if (v136 || v300[0] < 1)
  {
    goto LABEL_229;
  }

  v264 = v14;
  v254 = a2;
  v143 = 0;
  v144 = 0;
  v263 = 0;
  v145 = 0;
  v268 = 0;
  v146.i32[0] = *(v9 + 24);
  v146.f32[1] = -v146.f32[0];
  v147 = vmul_f32(v16, v146);
  v325 = 0;
  v323 = 0u;
  v324 = 0u;
  v322 = 0u;
  v321 = 0;
  v319 = 0u;
  v320 = 0u;
  v318 = 0u;
  v257 = -2147500000.0;
  v148 = 2147500000.0;
  v275 = 4;
  v260 = 1;
  v149 = 1;
  while (1)
  {
    v150 = v300[0];
    v299[0] = v300[0];
    *(v9 + 48) = v139;
    *(v9 + 52) = v141;
    if (v145 == 2)
    {
      break;
    }

    if (v145 == 3 && SLODWORD(__dst[1]) >= 1)
    {
      memcpy(&v312, &__src, 4 * LODWORD(__dst[1]));
    }

LABEL_162:
    if ((v275 & 0x80000000) == 0)
    {
      v192 = 0;
      v193 = 1;
      *&v142 = v276;
      while (v145 > 1 || !LODWORD(__dst[0]))
      {
        *&v142 = vadd_f32(v147, *&v142);
        if (*&v142 < 1.0)
        {
          break;
        }

        v194 = *(&v142 + 1);
        _NF = *&v142 > (a4->i64[0] - 2) || *(&v142 + 1) < 1.0;
        if (_NF || *(&v142 + 1) > (a4->i64[1] - 2))
        {
          break;
        }

        v196 = a4;
        v197 = v299[0];
        memset(&v291[2], 0, 32);
        if ((v149 ^ v143))
        {
          v198 = v299[0] - v193;
        }

        else
        {
          v198 = v299[0];
        }

        if ((v149 ^ v143))
        {
          v199 = v299[0];
        }

        else
        {
          v199 = v299[0] + v193;
        }

        memset(v291, 0, 32);
        if (v144)
        {
          v200 = v198;
        }

        else
        {
          v200 = v299[0] - v193;
        }

        v201 = v144;
        if (v144)
        {
          v202 = v199;
        }

        else
        {
          v202 = v299[0] + v193;
        }

        v290 = 0uLL;
        v280 = v142;
        v203 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
        v292 = v203;
        *(v203 + 8) = 0;
        *(v203 + 18) = 0;
        *(v203 + 10) = 0;
        *v203 = 0u;
        *(v203 + 1) = 0u;
        *(v203 + 2) = 0u;
        *(v203 + 44) = 0u;
        v204 = v200;
        v9 = v270;
        if (sub_261556C7C(v196, v204, v202, v270, &v290, __dst, v299, v268, *&v280, v194, v35, *v271.i32))
        {
          if (++v192 / v260 < 2)
          {
            v193 = v192 / v260 + 1;
          }

          else
          {
            v193 = 3;
          }

          v205 = v148;
          a4 = v269;
          v144 = v201;
        }

        else
        {
          v206 = v263;
          if ((v149 ^ (v299[0] >= v197)))
          {
            v207 = v263 - 1;
          }

          else
          {
            v207 = v263 + 1;
          }

          v208 = v207 == 2;
          if (v207 == 2)
          {
            v209 = 1;
          }

          else
          {
            v209 = v143;
          }

          if (v207 == -2)
          {
            v208 = 1;
            v209 = 0;
          }

          if (v299[0] == v197)
          {
            v207 = v263;
            v208 = 0;
            v209 = v143;
          }

          if ((v201 & 1) == 0)
          {
            v206 = v207;
          }

          v263 = v206;
          v144 = (v201 & 1) != 0 || v208;
          if ((v201 & 1) == 0)
          {
            v143 = v209;
          }

          v205 = v299[0];
          if (v148 >= v299[0])
          {
            v192 = 0;
            v334 = *(v270 + 48);
            v322 = *(v291 + 12);
            v323 = *(&v291[1] + 12);
            v324 = *(&v291[2] + 12);
            v325 = HIDWORD(v291[3]);
            a4 = v269;
          }

          else
          {
            a4 = v269;
            v192 = 0;
            if (v257 <= v205)
            {
              v331 = *(v270 + 48);
              v318 = *(v291 + 12);
              v319 = *(&v291[1] + 12);
              v320 = *(&v291[2] + 12);
              v321 = HIDWORD(v291[3]);
              v257 = v299[0];
            }

            v205 = v148;
          }
        }

        sub_261544D00(&v290);
        v148 = v205;
        v142 = v280;
        if (v192 > v275)
        {
          goto LABEL_214;
        }
      }
    }

    v205 = v148;
LABEL_214:
    ++v145;
    v147 = vneg_f32(v147);
    v149 ^= 1u;
    v148 = v205;
    if (v145 == 4)
    {
      goto LABEL_219;
    }
  }

  if (!LODWORD(__dst[0]))
  {
    v205 = v148;
    goto LABEL_219;
  }

  v151 = v144;
  v152 = __dst[1];
  v153 = (LODWORD(__dst[1]) + 3);
  if (SLODWORD(__dst[1]) >= -2)
  {
    if (v153 <= 1)
    {
      v154 = 1;
    }

    else
    {
      v154 = LODWORD(__dst[1]) + 3;
    }

    memset_pattern16(&__src, &unk_261561160, 4 * v154);
  }

  memset(v291, 0, sizeof(v291));
  v290 = 0u;
  v155 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v292 = v155;
  *(v155 + 8) = 0;
  *(v155 + 18) = 0;
  *(v155 + 10) = 0;
  *v155 = 0u;
  *(v155 + 1) = 0u;
  *(v155 + 2) = 0u;
  *(v155 + 44) = 0u;
  v156 = sub_261556C7C(a4, v150 - 1, v150 + 1, v270, &v290, __dst, v299, &__src, v276.f32[0], v264, v35, *v271.i32);
  sub_261544D00(&v290);
  if (!v156)
  {
    if (*&__src <= 0.0)
    {
      v159 = 0;
      a4 = v269;
      while (v153 != v159)
      {
        v158 = v159 + 1;
        v160 = *(&__src + ++v159);
        if (v160 > 0.0)
        {
          goto LABEL_118;
        }
      }

      v158 = v153;
      if (v153)
      {
LABEL_118:
        v161 = v158;
        v162 = &__src + v158;
        v163 = *v162;
        v164 = v162[1] - *v162;
        do
        {
          v163 = v163 - v164;
          *(&v306 + v161--) = v163;
        }

        while (v161);
        goto LABEL_120;
      }

      LODWORD(v165) = 0;
      v167 = 0;
      if (*(&v306 + v153) > 0.0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v158 = 0;
      a4 = v269;
LABEL_120:
      if (*(&v306 + v153) > 0.0)
      {
        goto LABEL_132;
      }

      if (v153)
      {
        v165 = v153;
        do
        {
          v166 = *(&v306 + v165) > 0.0 || v165 == 1;
          --v165;
        }

        while (!v166);
      }

      else
      {
        LODWORD(v165) = 0;
      }
    }

    if (v165 != v153)
    {
      v168 = &__src + v165;
      v169 = *v168;
      v170 = *v168 - *(v168 - 1);
      v171 = v152 - v165 + 3;
      v172 = &__src + v165 + 1;
      do
      {
        v169 = v170 + v169;
        *v172++ = v169;
        --v171;
      }

      while (v171);
      v167 = v158;
      goto LABEL_136;
    }

LABEL_132:
    v167 = v158;
    LODWORD(v165) = v153;
LABEL_136:
    if (v167 + 1 < v165)
    {
LABEL_137:
      v173 = v167;
      v174 = -v167;
      while (v165 != v173)
      {
        v175 = v173;
        v176 = v174;
        ++v173;
        --v174;
        if (*(&__src + v175 + 1) <= 0.0)
        {
          if (v165 != v173)
          {
            v177 = v173;
            while (v165 != v177)
            {
              v178 = v177 + 1;
              v179 = *(&__src + ++v177);
              if (v179 > 0.0)
              {
                v180 = v178;
                v167 = v178;
                goto LABEL_146;
              }
            }

            v180 = v165;
            v167 = v165;
LABEL_146:
            v181 = v173 - 1;
            v182 = v167 - (v173 - 1);
            if (v167 != v181)
            {
              v183 = *(&__src + v181);
              v184 = (*(&__src + v180) - v183) / v182;
              v185 = v167 + v176;
              v186 = &__src + v175 + 1;
              do
              {
                v183 = v184 + v183;
                *v186++ = v183;
                --v185;
              }

              while (v185);
            }

            if (v167 != v165)
            {
              goto LABEL_137;
            }
          }

          break;
        }
      }
    }

    if (v152 >= -2)
    {
      if (v153 <= 1)
      {
        v187 = 1;
      }

      else
      {
        v187 = v153;
      }

      memcpy(&v312, &__src, 4 * v187);
    }

    v9 = v270;
    v188 = *(v270 + 24);
    v189 = v188 <= 5.0;
    if (v188 <= 5.0)
    {
      v190 = 2;
    }

    else
    {
      v190 = 4;
    }

    v260 = v190;
    *v157.i32 = v190;
    v147 = vdiv_f32(v147, vdup_lane_s32(v157, 0));
    if (v189)
    {
      v191 = 1;
    }

    else
    {
      v191 = 2;
    }

    v275 <<= v191;
    v268 = &v312;
    v144 = v151;
    goto LABEL_162;
  }

  v205 = v148;
  a4 = v269;
  v9 = v270;
LABEL_219:
  v136 = sub_2615569C8(__dst, v254);
  if (!v136)
  {
    if (v328[1] == 920)
    {
      *(v254 + 4) = 3;
    }

    v210 = *(v9 + 32);
    v211 = *(v9 + 36);
    v212 = __dst[1];
    if (v210 <= 0.0)
    {
      v213 = v211 * ~LODWORD(__dst[1]);
      *&v334 = *(&v334 + 1) + v213;
      *&v331 = v213 + *(&v331 + 1);
    }

    if (v211 <= 0.0)
    {
      v214 = v210 * (LODWORD(__dst[1]) + 1);
      *(&v334 + 1) = *&v334 + v214;
      *(&v331 + 1) = *&v331 + v214;
    }

    v215 = a4->i64[0];
    v216 = a4->u64[1];
    sub_26155DA58(a4->i64[0], v216, &v322, 2u, &v334, &v330, &v329);
    v277 = v330;
    v281 = v329;
    sub_26155DA58(v215, v216, &v318, 2u, &v331, &v330, &v329);
    *v217.f32 = v330;
    *v218.i32 = (17 * v212 + 17);
    *v219.i32 = ((v257 - v205) + 1.0);
    v220.f32[0] = -(v205 + -1.0);
    *v221.f32 = v277;
    v222.i32[0] = vdup_lane_s32(v277, 1).u32[0];
    v222.i32[1] = v281.i32[1];
    *v223.i8 = vsub_f32(v222, vzip1_s32(v277, v281));
    v224 = vzip1q_s32(v223, v223);
    v225 = vdivq_f32(xmmword_2615610C0, vdupq_lane_s32(v218, 0));
    *&v221.u32[2] = v281;
    v226.i32[0] = vdup_lane_s32(v330, 1).u32[0];
    v227 = vmlaq_f32(v221, v224, v225);
    v226.i32[1] = v329.i32[1];
    *v224.i8 = vsub_f32(v226, vzip1_s32(v330, v329));
    *&v217.u32[2] = v329;
    v220.f32[1] = (SHIDWORD(__dst[0]) - v257);
    v228 = vmlaq_f32(v217, vzip1q_s32(v224, v224), v225);
    *v229.i8 = vdiv_f32(v220, vdup_lane_s32(v219, 0));
    v230 = vzip1q_s32(v229, v229);
    v231 = vrev64q_s32(v229);
    v232 = vsubq_f32(v228, v227);
    v278 = vmlaq_f32(vuzp2q_s32(v228, v227), vuzp2q_s32(v232, v232), vzip1q_s32(v231, v231));
    v282 = vmlaq_f32(vuzp1q_s32(v227, v228), vuzp1q_s32(v232, v232), v230);
    if (sub_26155D41C(v298, v297, &v287, &v286, v282.f32[0], v282.f32[1], v278.f32[2], v278.f32[3], v282.f32[2], v282.f32[3], v278.f32[0], v278.f32[1]) == 2)
    {
      v136 = 22;
    }

    else
    {
      v136 = 0;
      v233 = vcvtq_s32_f32(vrndaq_f32(v282));
      v234 = vcvtq_s32_f32(vrndaq_f32(v278));
      v235.i64[0] = -1;
      v235.i64[1] = -1;
      v236 = vaddq_s32(vuzp1q_s32(*a4, *a4), v235);
      *(v254 + 44) = vandq_s8(vcgezq_s32(v234), vminq_s32(v234, v236));
      *(v254 + 28) = vandq_s8(vcgezq_s32(v233), vminq_s32(v233, v236));
    }
  }

LABEL_229:
  sub_261552B90(__dst);
  return v136;
}

uint64_t sub_2615569C8(uint64_t a1, uint64_t a2)
{
  if (!*a1 || ((v4 = *(a1 + 4), v5 = *(a1 + 8), (v4 - 3) <= 0x57) ? (v6 = (v5 - 1) > 0x1D) : (v6 = 1), v6 || (v7 = *(a1 + 12), v7 > 8) || (v8 = (v5 * v4), v9 = *(a1 + 236), v10 = __OFSUB__(v8, v9), v11 = v8 - v9, (v11 < 0) ^ v10)))
  {
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return 6;
  }

  *(a2 + 24) = 0;
  v14 = 2 << v7;
  v15 = v8 - (2 << v7);
  v16 = (2 << v7) - 2;
  if (v11 > v16 || v15 < 1)
  {
    return 6;
  }

  *(a2 + 8) = (2 * v8);
  v18 = *(a2 + 16);
  if (v18)
  {
    free(v18);
    *(a2 + 16) = 0;
  }

  v19 = malloc_type_calloc(v8, 2uLL, 0x1000040BDFB0063uLL);
  v20 = malloc_type_calloc(v8, 2uLL, 0x1000040BDFB0063uLL);
  v21 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
  v22 = v21;
  if (v19)
  {
    v23 = v20 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 || v21 == 0)
  {
    if (v20)
    {
      free(v20);
    }

    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v12 = 15;
    if (!v19)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v25 = *(a1 + 4);
  if (v25 < 1)
  {
    v28 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = *(a1 + 8);
    v30 = v19;
    do
    {
      if (v29 >= 1)
      {
        v31 = 0;
        v32 = (*(a1 + 696) + 4 * v26);
        v33 = (*(a1 + 704) + 2 * v26);
        do
        {
          v34 = *v33++;
          *v30 = v34;
          v30 += 2;
          if (*v32 < 0.9)
          {
            v21[v28++] = v31 + v27 * v29;
            v29 = *(a1 + 8);
          }

          ++v31;
          ++v32;
        }

        while (v31 < v29);
        v25 = *(a1 + 4);
      }

      ++v27;
      v26 += 30;
    }

    while (v27 < v25);
  }

  v36 = 0;
  if (sub_26153652C(qword_27FEB43D8, v19, v15, &v19[2 * v15], v14, v21, v28, &v36, v20, &v20[2 * v15]))
  {
LABEL_42:
    free(v20);
    *(a2 + 8) = 0;
    v12 = 5;
    if (!v19)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v35 = v36 - v28;
  if (v36 - v28 > 3 || *(a1 + 12) < 1)
  {
    if (v28 + 2 * v35 > v16)
    {
      goto LABEL_42;
    }
  }

  else if (v28 + 2 * v35 > (v14 - 3))
  {
    goto LABEL_42;
  }

  v12 = 0;
  *(a2 + 24) = 1065353216;
  *(a2 + 16) = v20;
  *(a2 + 80) = *(a1 + 4);
  if (v19)
  {
LABEL_43:
    free(v19);
  }

LABEL_44:
  if (v22)
  {
    free(v22);
  }

  return v12;
}

uint64_t sub_261556C7C(unint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7, _DWORD *a8, float a9, float a10, float a11, float a12)
{
  v142 = *MEMORY[0x277D85DE8];
  v22 = a12 * 0.5;
  v23 = __sincosf_stret(a11);
  v24 = *(a5 + 80);
  result = sub_26155AE84(a1, 0, a5, a9 - (v23.__cosval * v22), a10 - (v23.__sinval * v22), (v23.__cosval * v22) + a9, (v23.__sinval * v22) + a10);
  if (result)
  {
    return result;
  }

  v129 = a8;
  if (*a6)
  {
    v26 = (*(a4 + 40) + ((8 * a6[2] + 34) * 1.5)) + *(a4 + 44);
  }

  else if (*(a4 + 30))
  {
    v26 = 288.0;
  }

  else
  {
    v26 = 1000.0;
  }

  v27 = a8;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v28 = sub_261511370(&v134, *a5, *(a5 + 8), 0.5);
  if (!v28 || (v30 = v26, v28 > v26))
  {
    sub_261511878(&v134);
    return 2;
  }

  v31 = *(a4 + 32);
  v127 = *(a4 + 40);
  if (a2 >= 0x5A)
  {
    v32 = 90;
  }

  else
  {
    v32 = a2;
  }

  if (a2 < 1)
  {
    v32 = 1;
  }

  v122 = v32;
  if (a3 >= 0x5A)
  {
    v33 = 90;
  }

  else
  {
    v33 = a3;
  }

  if (a3 < 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (*a6 && v34 >= a6[1])
  {
    v34 = a6[1];
  }

  v35 = 0;
  v36 = *(a4 + 36);
  v37 = *(a4 + 48);
  v38 = *(a4 + 52);
  v126 = *(a4 + 44);
  v109 = v34;
  if (v34 - v122 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  v40 = *(a4 + 24) * v39;
  v130 = a8 + 1;
  if (v31 <= 0.0)
  {
    v41 = -4;
  }

  else
  {
    v41 = 4;
  }

  v108 = v41;
  v128 = -1.0;
  v42 = 0xFFFFFFFFLL;
  v131 = -1;
  v43 = -1;
  v44 = -1.0;
  v123 = -1;
  v124 = -1;
  while (1)
  {
    if (v28 < 16)
    {
      goto LABEL_97;
    }

    v45 = (*a5 + 4 * (*v135 + -0.5));
    LODWORD(v45) = *v45 <= v45[1];
    sub_26154A4A4((v135 + 4 * v45), (v28 - v45) & 0xFFFFFFFE, v24 + 56, v24 + 72);
    v46 = *(v24 + 56);
    v47 = v31 > 0.0 && v42 <= 0;
    v132 = *(v24 + 56);
    if (!v47)
    {
      goto LABEL_57;
    }

    v48 = v42;
    if ((v127 & 0x80000000) != 0 || v127 >= v46)
    {
      v49 = *(v24 + 64);
    }

    else
    {
      v49 = *(v24 + 64);
      v50 = v127;
      if (vabds_f32(v49[v127], v37) <= v40)
      {
        goto LABEL_42;
      }
    }

    v50 = sub_261557720(*(v24 + 56), v49, v37);
LABEL_42:
    sub_261552D50(v24 + 56, v24 + 72, v50, v141, 0);
    v128 = *&v29;
    if ((vabds_f32(*(a4 + 32), *&v29) / *(a4 + 32)) >= 0.2)
    {
      goto LABEL_55;
    }

    v133 = sub_261552E34(v141, &v138);
    if (v133 <= 0.9 || ((v51 = (v138.i32[0] + v139 - (v138.i32[1] + v140) + 9) % 9, v51 <= 6) ? (v52 = ((1 << v51) & 0x49) == 0) : (v52 = 1), v52))
    {
      v124 = -1;
LABEL_55:
      v42 = v48;
LABEL_56:
      v46 = v132;
      goto LABEL_57;
    }

    v124 = (v138.i32[0] + v139 - (v138.i32[1] + v140) + 9) % 9;
    v53 = sub_261552FD0(v51, &v138, &v133);
    if (v53 > 0x3A0 || v133 <= 0.9)
    {
      goto LABEL_55;
    }

    v54 = sub_2615530B4(v53, v124, 1, v122, v109, a6);
    if (v54 < 1)
    {
      v42 = v54;
      goto LABEL_56;
    }

    *(a4 + 40) = v50;
    v55 = (*(v24 + 64) + 4 * v50);
    v56 = *v55;
    *(a4 + 48) = *v55;
    v46 = v132;
    if (v27)
    {
      v42 = v54;
      if (*a6)
      {
        *v27 = v56;
        v27[1] = v55[4];
      }
    }

    else
    {
      v42 = v54;
    }

LABEL_57:
    if (v36 <= 0.0 || v131 > 0)
    {
      goto LABEL_83;
    }

    v57 = v42;
    v58 = v46 - 1;
    v59 = v46 - 1 - v126;
    if (v59 < 0 || v59 >= v46)
    {
      v60 = *(v24 + 64);
    }

    else
    {
      v60 = *(v24 + 64);
      if (vabds_f32(v60[v59], v38) <= v40)
      {
        goto LABEL_65;
      }
    }

    v59 = sub_261557720(*(v24 + 56), v60, v38);
LABEL_65:
    sub_261552D50(v24 + 56, v24 + 72, v59, v141, 0);
    v44 = *&v29;
    if ((vabds_f32(*(a4 + 36), *&v29) / *(a4 + 36)) >= 0.2)
    {
      goto LABEL_78;
    }

    v133 = sub_261552E34(v141, &v138);
    if (v133 <= 0.9 || ((v61 = (v138.i32[0] + v139 - (v138.i32[1] + v140) + 9) % 9, v61 <= 6) ? (v62 = ((1 << v61) & 0x49) == 0) : (v62 = 1), v62))
    {
      v123 = -1;
LABEL_78:
      v46 = v132;
      v42 = v57;
      v27 = v129;
      if (v57 <= 0)
      {
        goto LABEL_96;
      }

LABEL_88:
      v43 = v42 - 1;
      goto LABEL_89;
    }

    v123 = (v138.i32[0] + v139 - (v138.i32[1] + v140) + 9) % 9;
    v63 = sub_261552FD0(v61, &v138, &v133);
    if (v63 > 0x3A0)
    {
      goto LABEL_78;
    }

    if (v133 <= 0.9)
    {
      goto LABEL_78;
    }

    v131 = sub_2615530B4(v63, v123, 0, v122, v109, a6);
    if (v131 < 1)
    {
      goto LABEL_78;
    }

    *(a4 + 44) = v58 - v59;
    v64 = (*(v24 + 64) + 4 * v59);
    v65 = *v64;
    *(a4 + 52) = *v64;
    v27 = v129;
    v46 = v132;
    if (v129)
    {
      v42 = v57;
      if (*a6)
      {
        v66 = &v129[a6[2]];
        v66[1] = v65;
        v66[2] = v64[4];
      }
    }

    else
    {
      v42 = v57;
    }

LABEL_83:
    v43 = v42 - 1;
    if (v42 < 1 || v131 < 1)
    {
      if (v42 >= 1)
      {
        goto LABEL_88;
      }

      v43 = v131 <= 0 ? -1 : v131 - 1;
    }

    else if (v42 == v131)
    {
      v131 = v42;
    }

    else
    {
      v68 = *a7;
      if (*a7 < 1)
      {
        v43 = -1;
        v131 = -1;
        v42 = 0xFFFFFFFFLL;
        goto LABEL_97;
      }

      v69 = v42 - v68;
      if (v42 - v68 < 0)
      {
        v69 = v68 - v42;
      }

      v70 = v131 - v68;
      if (v70 < 0)
      {
        v70 = -v70;
      }

      v71 = v69 >= v70 ? v131 : v42;
      v43 = v71 - 1;
    }

LABEL_89:
    if (!*a6)
    {
      break;
    }

    if (v43 < 0 || v43 >= a6[1])
    {
      goto LABEL_96;
    }

    v125 = v42;
    if (v31 <= 0.0)
    {
      v67 = (v46 + ~*(a4 + 44) - 4);
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v67 = (*(a4 + 40) + 4);
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }
    }

    if (v67 + 4 >= v46)
    {
LABEL_187:
      v42 = v125;
      goto LABEL_97;
    }

    v112 = v40;
    v113 = v38;
    v114 = v37;
    v115 = v36;
    v116 = v30;
    v118 = a5;
    v119 = a7;
    v72 = v124;
    if (v43 + 1 != v125)
    {
      v72 = v123;
    }

    if (v72)
    {
      v73 = v72 - 3;
    }

    else
    {
      v73 = 6;
    }

    if (v72 == 6)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72 + 3;
    }

    v107 = v74;
    if (v31 <= 0.0)
    {
      v75 = v44;
    }

    else
    {
      v75 = v128;
    }

    v120 = a6;
    v110 = v73;
    v111 = a6[2];
    v76 = v111 - 1;
    v117 = a4;
    if (v111 >= 1)
    {
      v77 = 0;
      v78 = 0;
      v121 = 0;
      v79 = *(a4 + 24) * 1.5;
      while (1)
      {
        v80 = v78;
        if (v31 <= 0.0)
        {
          v81 = v76;
        }

        else
        {
          v81 = v77;
        }

        v78 = 14;
        if (!v80 && (v67 & 0x80000000) == 0 && v67 + 4 < v46)
        {
          v82 = *(v24 + 64);
          v83 = *(v82 + 4 * v67);
          v84 = *(v82 + 4 * (v67 + 4));
          if (v27)
          {
            v85 = &v130[v81];
            v86 = vabds_f32(v83, *v85);
            v87 = *v85 <= 0.0 || v86 <= v79;
            if (!v87 || ((v88 = v85[1], v47 = v88 <= 0.0, v89 = vabds_f32(v84, v88), !v47) ? (v90 = v89 <= v79) : (v90 = 1), !v90))
            {
              v78 = 7;
              goto LABEL_145;
            }
          }

          if ((vabds_f32(v75, v84 - v83) / v75) < 0.2)
          {
            v78 = 1;
          }

          else
          {
            v78 = 14;
          }
        }

        if (!v27)
        {
          goto LABEL_156;
        }

LABEL_145:
        if (v78 == 1)
        {
LABEL_156:
          v96 = v67;
          if (v78 != 1)
          {
            goto LABEL_153;
          }

          goto LABEL_157;
        }

        v91 = &v130[v81];
        v92 = *v91;
        if (*v91 <= 0.0)
        {
          goto LABEL_153;
        }

        v93 = v91[1];
        if (v93 <= 0.0)
        {
          goto LABEL_153;
        }

        v94 = *(v24 + 64);
        v95 = sub_261557720(*(v24 + 56), v94, *v91);
        if (v95 == v67)
        {
          v96 = v67;
LABEL_171:
          v27 = v129;
LABEL_172:
          v46 = v132;
          goto LABEL_173;
        }

        v96 = v95;
        v46 = v132;
        if ((v95 & 0x80000000) != 0 || v95 + 4 >= v132 || vabds_f32(v94[v95], v92) >= v79)
        {
          v96 = v67;
LABEL_168:
          v27 = v129;
          goto LABEL_173;
        }

        v97 = vabds_f32(v94[(v95 + 4)], v93);
        v27 = v129;
        if (v97 >= v79)
        {
LABEL_153:
          v96 = v67;
          goto LABEL_173;
        }

LABEL_157:
        sub_261552D50(v24 + 56, v24 + 72, v96, v141, 0);
        v133 = sub_261552E34(v141, &v138);
        if (v133 <= 0.9)
        {
          v78 = 1;
          goto LABEL_172;
        }

        v98 = (v138.i32[0] + v139 - (v138.i32[1] + v140) + 9) % 9;
        if (v98 > 6 || ((1 << v98) & 0x49) == 0)
        {
          v78 = 1;
          goto LABEL_171;
        }

        v100 = sub_261552FD0(v98, &v138, &v133);
        v78 = 1;
        if (v100 > 0x3A0)
        {
          goto LABEL_171;
        }

        v101 = v133;
        v46 = v132;
        if (v133 <= 0.9)
        {
          goto LABEL_168;
        }

        v102 = v81 + 30 * v43;
        if (v98 == v110)
        {
          v27 = v129;
          if (v43)
          {
            v102 -= 30;
            goto LABEL_179;
          }
        }

        else
        {
          v52 = v98 == v107;
          v27 = v129;
          if (!v52)
          {
            goto LABEL_179;
          }

          if (v43 <= 0x58)
          {
            v102 += 30;
LABEL_179:
            if ((v102 & 0x80000000) == 0)
            {
              v103 = *(v120 + 87);
              v104 = *(v103 + 4 * v102);
              if (v104 <= 0.9)
              {
                ++v120[59];
              }

              if (v101 > v104)
              {
                *(*(v120 + 88) + 2 * v102) = v100;
                *(v103 + 4 * v102) = v101;
              }

              if (v27)
              {
                v105 = (*(v24 + 64) + 4 * v96);
                v106 = &v130[v81];
                *v106 = *v105;
                v106[1] = v105[4];
              }

              v78 = 0;
              ++v121;
              v96 = (v96 + v108);
            }
          }
        }

LABEL_173:
        ++v77;
        --v76;
        v67 = v96;
        if (v76 == -1)
        {
          goto LABEL_193;
        }
      }
    }

    v121 = 0;
LABEL_193:
    a7 = v119;
    a6 = v120;
    a4 = v117;
    a5 = v118;
    v30 = v116;
    v37 = v114;
    v36 = v115;
    v40 = v112;
    v38 = v113;
    v42 = v125;
    if (v121 == v111)
    {
LABEL_194:
      sub_261511878(&v134);
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_195;
      }

      return 13;
    }

LABEL_97:
    if ((v35 & 1) == 0)
    {
      LODWORD(v29) = *(a4 + 24);
      v28 = sub_26151162C(&v134, v29);
      v35 = 1;
      if (v28 <= v30)
      {
        continue;
      }
    }

    goto LABEL_194;
  }

  if (v43 < 0)
  {
LABEL_96:
    v43 = -1;
    goto LABEL_97;
  }

  sub_261511878(&v134);
LABEL_195:
  result = 0;
  *a7 = v43 + 1;
  return result;
}

uint64_t sub_261557720(int a1, float *a2, float a3)
{
  result = (a1 - 1);
  if (((*a2 + a2[result]) * 0.5) <= a3)
  {
    if (a1 < 1)
    {
      return 0;
    }

    v5 = result;
    while (1)
    {
      v8 = a2[v5];
      if (v8 < a3)
      {
        break;
      }

      if (v5-- <= 0)
      {
        return 0;
      }
    }

    result = (v5 + 1);
    if (result >= a1)
    {
      return v5;
    }

    v10 = a2[result] - a3;
    v11 = a3 - v8;
  }

  else
  {
    if (a1 < 1)
    {
      return result;
    }

    v5 = 0;
    v6 = a1 & 0x7FFFFFFF;
    while (1)
    {
      v7 = a2[v5];
      if (v7 > a3)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return result;
      }
    }

    if (!v5)
    {
      return v5;
    }

    result = (v5 - 1);
    v10 = a3 - a2[result];
    v11 = v7 - a3;
  }

  if (v10 >= v11)
  {
    return v5;
  }

  return result;
}

uint64_t sub_261557808(uint64_t result, char *a2, std::string::size_type a3, size_t *a4, const char *a5)
{
  v5 = *(result + 8);
  if (v5 >= 4)
  {
    v9 = *(result + 16);
    v10 = v5 >> 1;
    if (v10 >= *v9)
    {
      v11 = *v9;
    }

    else
    {
      v11 = v10;
    }

    result = sub_26155BF54(v9, 1uLL, v11, a2, a3, a4, a5);
    if (result)
    {
      v12 = a3 - 1;
      if (a3 - 1 >= *a4)
      {
        v12 = *a4;
      }

      a2[v12] = 0;
    }

    else
    {
      *a2 = 0;
      *a4 = 0;
    }
  }

  return result;
}

BOOL sub_2615578A8(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v47 = sub_2614BF584();
    sub_2614830DC(&v45, *a1 + 24);
    v4 = v46;
    v6 = *(v46 + 16);
    v5 = *(v46 + 24);
    v7 = v5 - v6 - 1;
    v8 = v7 < 0xB8C;
    if (v7 >= 0xB8C)
    {
      v45 = &unk_2873D12B8;
LABEL_53:
      sub_2614705CC(v4);
LABEL_54:
      sub_261477724(&v47);
      return v8;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v5 - v6);
    v10 = Mutable;
    if (Mutable)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      CFDataSetLength(v10, v5 - v6);
      if (v5 != v6)
      {
        v12 = 0;
        do
        {
          MutableBytePtr[v12] = *(*(v46 + 16) + v12);
          ++v12;
        }

        while (v5 - v6 != v12);
      }

      v42 = v10;
      v13 = atomic_exchange((atomic_load_explicit(&v47, memory_order_acquire) + 24), atomic_exchange(&v42, 0));
      if (v13)
      {
        CFRelease(v13);
      }

      sub_2614BF7E0(&v42);
    }

    v14 = *a1;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    sub_261470BE0(&v42, *(v14 + 48), *(v14 + 56), (*(v14 + 56) - *(v14 + 48)) >> 3);
    explicit = atomic_load_explicit(&v47, memory_order_acquire);
    if (*(explicit + 64) == 1)
    {
      v16 = *(explicit + 40);
      if (v16)
      {
        *(explicit + 48) = v16;
        operator delete(v16);
      }
    }

    *(explicit + 40) = 0;
    *(explicit + 48) = 0;
    *(explicit + 56) = 0;
    *(explicit + 64) = 1;
    if (((v43 - v42) >> 3) >= 1)
    {
      v17 = 0;
      do
      {
        v18 = atomic_load_explicit(&v47, memory_order_acquire);
        v19 = (*(**(v42 + v17) + 16))(*(v42 + v17));
        v20 = (*(**(v42 + v17) + 24))(*(v42 + v17));
        *&v41 = v19;
        *(&v41 + 1) = v20;
        sub_261533674(v18 + 40, &v41);
        ++v17;
        v21 = (v43 - v42) >> 3;
        if (v21 >= 4)
        {
          LODWORD(v21) = 4;
        }
      }

      while (v17 < v21);
    }

    v22 = atomic_load_explicit(&v47, memory_order_acquire);
    if (*(v22 + 96) == 1)
    {
      v23 = *(v22 + 72);
      if (v23)
      {
        *(v22 + 80) = v23;
        operator delete(v23);
      }
    }

    *(v22 + 72) = 0;
    *(v22 + 80) = 0;
    *(v22 + 88) = 0;
    *(v22 + 96) = 1;
    if (((v43 - v42) >> 3) >= 5)
    {
      v24 = 4;
      do
      {
        v25 = atomic_load_explicit(&v47, memory_order_acquire);
        v26 = (*(**(v42 + v24) + 16))(*(v42 + v24));
        v27 = (*(**(v42 + v24) + 24))(*(v42 + v24));
        *&v41 = v26;
        *(&v41 + 1) = v27;
        sub_261533674(v25 + 72, &v41);
        ++v24;
        v28 = (v43 - v42) >> 3;
        if (v28 >= 7)
        {
          LODWORD(v28) = 7;
        }
      }

      while (v24 < v28);
    }

    sub_261544298(atomic_load_explicit(&v47, memory_order_acquire) + 112, (*a1 + 80));
    v29 = *sub_2615444F0(*(*a1 + 88)) == 0;
    v30 = atomic_load_explicit(&v47, memory_order_acquire);
    if (v29)
    {
      v31 = 256;
    }

    else
    {
      v31 = 257;
    }

    *(v30 + 104) = v31;
    v32 = *(*a1 + 72);
    if (v32 <= 9)
    {
      if (v32 == 1)
      {
        *&v41 = CFRetain(@"QR");
        v33 = atomic_exchange((atomic_load_explicit(&v47, memory_order_acquire) + 16), atomic_exchange(&v41, 0));
        if (v33)
        {
          CFRelease(v33);
        }

        sub_26148E848(&v41);
        if ((**(v46 + 16) & 0xF0) != 0x50)
        {
          goto LABEL_49;
        }
      }

      else
      {
        *&v41 = CFRetain(@"DataMatrix");
        v35 = atomic_exchange((atomic_load_explicit(&v47, memory_order_acquire) + 16), atomic_exchange(&v41, 0));
        if (v35)
        {
          CFRelease(v35);
        }

        sub_26148E848(&v41);
        if (**(v46 + 16) != 232)
        {
LABEL_49:
          v37 = atomic_load_explicit(&v47, memory_order_acquire);
          *(v37 + 32) = 1065353216;
          *(v37 + 36) = 1;
          v38 = *(a2 + 8);
          if (v38 >= *(a2 + 16))
          {
            v39 = sub_2614BF6E4(a2, &v47);
          }

          else
          {
            *v38 = atomic_exchange(&v47, 0);
            v39 = (v38 + 1);
          }

          *(a2 + 8) = v39;
          *&v41 = &v42;
          sub_261470CC4(&v41);
          v4 = v46;
          v45 = &unk_2873D12B8;
          if (!v46)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      v36 = atomic_load_explicit(&v47, memory_order_acquire);
      if (*(v36 + 208) == 1)
      {
        sub_2614BF7E0((v36 + 200));
      }

      *(v36 + 200) = 0;
      *(v36 + 184) = 0u;
      *(v36 + 168) = 0u;
      *(v36 + 208) = 1;
      *(atomic_load_explicit(&v47, memory_order_acquire) + 168) = 1;
      goto LABEL_49;
    }

    if (v32 == 10)
    {
      *&v41 = CFRetain(@"Aztec");
      v34 = atomic_exchange((atomic_load_explicit(&v47, memory_order_acquire) + 16), atomic_exchange(&v41, 0));
      if (v34)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *&v41 = CFRetain(@"MicroQR");
      v34 = atomic_exchange((atomic_load_explicit(&v47, memory_order_acquire) + 16), atomic_exchange(&v41, 0));
      if (v34)
      {
LABEL_47:
        CFRelease(v34);
      }
    }

    sub_26148E848(&v41);
    goto LABEL_49;
  }

  return 0;
}

void sub_261557E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void *);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, atomic_uint *);
  sub_26148E848(va);
  va_copy(v3, va1);
  sub_261470CC4(va);
  v10 = &unk_2873D12B8;
  if (v12)
  {
    sub_2614705CC(v12);
  }

  sub_261477724(va2);
  _Unwind_Resume(a1);
}

void sub_261557EBC(uint64_t a1, float a2, float a3)
{
  v3.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v3.i64[1] = 0x4176666640ACCCCCLL;
  v4.i64[0] = 0x4259999A41B33333;
  v4.i64[1] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  if ((vmaxv_u16(vmovn_s32(vcgeq_f32(v3, v4))) & 1) == 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1.0;
    do
    {
      v9 = (vabds_f32(*&asc_261585B2C[4 * v7], a2) + vabds_f32(dword_261585B44[v7], a3)) / (dword_261585B44[v7] + *&asc_261585B2C[4 * v7]);
      if (v9 < v8)
      {
        v6 = v7;
        v8 = v9;
      }

      ++v7;
    }

    while (v7 != 6);
    if (v8 <= 0.1)
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v10 >= v11)
      {
        v13 = *a1;
        v14 = v10 - *a1;
        v15 = v14 >> 3;
        v16 = (v14 >> 3) + 1;
        if (v16 >> 61)
        {
          sub_2614709BC();
        }

        v17 = v11 - v13;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_261470B0C(v18);
        }

        v19 = (8 * v15);
        *v19 = *&asc_261585B2C[4 * v6];
        v19[1] = dword_261585B44[v6];
        v12 = 8 * v15 + 8;
        memcpy(0, v13, v14);
        v20 = *a1;
        *a1 = 0;
        *(a1 + 8) = v12;
        *(a1 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v10 = *&asc_261585B2C[4 * v6];
        v10[1] = dword_261585B44[v6];
        v12 = (v10 + 2);
      }

      *(a1 + 8) = v12;
    }
  }
}

void sub_26155805C(uint64_t a1, int a2, float a3, float a4)
{
  if (a2 == 1)
  {
    v5 = &dword_261585B5C;
    v6 = 4;
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v5 = &dword_261585B6C;
    v6 = 24;
  }

  v7 = *v5;
  if (a4 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  if (v8 > (v7 - (v7 * 0.4)))
  {
    v9 = &v5[v6];
    v10 = v5[v6 - 1];
    v11 = v10 * 0.4;
    v12 = a3 >= a4 ? a3 : a4;
    if (v12 < (v11 + v10))
    {
      v13 = (a3 + a4) * 0.5;
      v14 = v5 + 1;
      v15 = v6 * 4 - 4;
      v16 = v5;
      v17 = v5 + 1;
      do
      {
        v19 = *v17++;
        v18 = v19;
        if (vabds_f32(v19, v13) < vabds_f32(v7, v13))
        {
          v7 = v18;
          v16 = v14;
        }

        v14 = v17;
        v15 -= 4;
      }

      while (v15);
      v20 = *v16;
      if (vabds_f32(*v16, v13) <= v11)
      {
        v22 = *(a1 + 8);
        v21 = *(a1 + 16);
        if (v22 >= v21)
        {
          v24 = *a1;
          v25 = v22 - *a1;
          v26 = (v25 >> 3) + 1;
          if (v26 >> 61)
          {
            goto LABEL_62;
          }

          v27 = v21 - v24;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            sub_261470B0C(v28);
          }

          v29 = (8 * (v25 >> 3));
          *v29 = vdup_n_s32(v20);
          v23 = v29 + 1;
          memcpy(0, v24, v25);
          v30 = *a1;
          *a1 = 0;
          *(a1 + 8) = v23;
          *(a1 + 16) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v22 = v20;
          v22[1] = v20;
          v23 = (v22 + 2);
        }

        *(a1 + 8) = v23;
        if (v5 < v16)
        {
          v31 = *(v16 - 1);
          v32 = *(a1 + 16);
          if (v23 >= v32)
          {
            v33 = *a1;
            v34 = v23 - *a1;
            v35 = v34 >> 3;
            v36 = (v34 >> 3) + 1;
            if (v36 >> 61)
            {
              goto LABEL_62;
            }

            v37 = v32 - v33;
            if (v37 >> 2 > v36)
            {
              v36 = v37 >> 2;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            if (v38)
            {
              sub_261470B0C(v38);
            }

            *(8 * v35) = vdup_n_s32(v31);
            v23 = (8 * v35 + 8);
            memcpy(0, v33, v34);
            v39 = *a1;
            *a1 = 0;
            *(a1 + 8) = v23;
            *(a1 + 16) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            v23->i32[0] = v31;
            v23->i32[1] = v31;
            ++v23;
          }

          *(a1 + 8) = v23;
        }

        if (v9 <= (v16 + 1))
        {
          goto LABEL_58;
        }

        v40 = v16[1];
        v41 = *(a1 + 16);
        if (v23 < v41)
        {
          v23->i32[0] = v40;
          v23->i32[1] = v40;
          ++v23;
LABEL_57:
          *(a1 + 8) = v23;
LABEL_58:
          v49 = *a1;
          if ((v23 - *a1) == 24)
          {
            v50 = v49[4];
            v51 = v49[2];
            if (vabds_f32(v50, v13) < vabds_f32(v51, v13))
            {
              v52 = v49[3];
              v53 = v49[5];
              v49[2] = v50;
              v49[3] = v53;
              v49[4] = v51;
              v49[5] = v52;
            }
          }

          return;
        }

        v42 = *a1;
        v43 = v23 - *a1;
        v44 = v43 >> 3;
        v45 = (v43 >> 3) + 1;
        if (!(v45 >> 61))
        {
          v46 = v41 - v42;
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_261470B0C(v47);
          }

          *(8 * v44) = vdup_n_s32(v40);
          v23 = (8 * v44 + 8);
          memcpy(0, v42, v43);
          v48 = *a1;
          *a1 = 0;
          *(a1 + 8) = v23;
          *(a1 + 16) = 0;
          if (v48)
          {
            operator delete(v48);
          }

          goto LABEL_57;
        }

LABEL_62:
        sub_2614709BC();
      }
    }
  }
}

uint64_t sub_2615583CC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder24decodeUsingZXing_V4_IIE_ERKNS0_4PassEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261558408(void *a1, uint64_t *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1 || *(a3 + 96) == 1)
  {
    sub_261477470(*(a1[1] + 40), a3);
    if (qword_280CB3EB0 != -1)
    {
      dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
    }

    v4 = qword_280CB3EA8;
    if (!os_log_type_enabled(qword_280CB3EA8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v24 = *(a1[1] + 40);
    if (*(v24 + 96) == 1)
    {
      sub_2615010E4(buf, v24);
    }

    else
    {
      v54 = 0u;
      *buf = -1;
      memset(&buf[8], 0, 24);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
    }

    sub_261501518(&v61, buf);
    *v45 = 138543362;
    *&v45[4] = atomic_load_explicit(&v61, memory_order_acquire);
    v25 = "Cannot retrieve or instantiate IIE model: %{public}@";
LABEL_47:
    _os_log_error_impl(&dword_26146F000, v4, OS_LOG_TYPE_ERROR, v25, v45, 0xCu);
    sub_261476C54(&v61);
    sub_261501098(buf);
    return;
  }

  v5 = *a2;
  v6 = a1[1];
  v7 = *(v6 + 8);
  v8 = a1[3];
  v9 = v8[1];
  *&v40.data = *v8;
  v41 = v9;
  v10 = *(v6 + 40);
  if (qword_280CB3EB0 != -1)
  {
    dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
  }

  v4 = qword_280CB3EA8;
  v40.isa = os_signpost_id_generate(qword_280CB3EA8);
  LOBYTE(v40.info) = 1;
  if (*(v5 + 200) == 1 && *(v5 + 392) == 1 && *(v5 + 344) == 1 && atomic_load_explicit((v5 + 400), memory_order_acquire))
  {
    v59[0] = &unk_2873CFB68;
    v60 = v59;
    v58[0] = &unk_2873CFB10;
    v58[3] = v58;
    v61 = &v40;
    sub_261489C64(v62, v58);
    if (*(v61 + 8) == 1 && v60)
    {
      sub_261489CFC(v60, *v61);
    }

    sub_261489D4C(v58);
    v11 = sub_261489D4C(v59);
    v13 = *(v5 + 200) == 1 && *(v5 + 392) == 1 && *(v5 + 344) == 1 && (v12 = *v7, atomic_load_explicit((v5 + 400), memory_order_acquire)) && sub_261503A9C(v11, v12);
    v26 = *v7;
    if (qword_280CB3200 != -1)
    {
      v39 = v13;
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
      v13 = v39;
    }

    v27 = qword_280CB31F8;
    if (v13)
    {
      if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_DEBUG))
      {
        explicit = atomic_load_explicit(v26, memory_order_acquire);
        *buf = 138543362;
        *&buf[4] = explicit;
        _os_log_debug_impl(&dword_26146F000, v27, OS_LOG_TYPE_DEBUG, "Found best pixel buffer: %{public}@", buf, 0xCu);
      }

      v28 = v41;
      *(v5 + 352) = *&v40.data;
      *(v5 + 368) = v28;
      *(v5 + 384) = 1;
      if (sub_2615022C4(v5 + 280, v26, v10, &v40))
      {
        if (*(v5 + 344))
        {
          v29 = (v5 + 312);
        }

        else
        {
          v29 = 0;
        }

        sub_2614FFE50(&v44, *(*(v5 + 208) + 8) + 16, v29, (v5 + 400), v10, &v40);
        if (atomic_load_explicit(&v44, memory_order_acquire))
        {
          v30 = *(v5 + 208);
          IOSurface = CVPixelBufferGetIOSurface(atomic_load_explicit(&v44, memory_order_acquire));
          if (IOSurface)
          {
            IOSurface = CFRetain(IOSurface);
          }

          *buf = IOSurface;
          v32 = sub_261485064(v30, buf, v10);
          sub_261483CA4(buf);
          if (v32)
          {
            if (sub_261489430(v5 + 72, (v5 + 24), v10, &v40))
            {
              v33 = *(v5 + 248);
              v34 = *(v5 + 232);
              v42[0] = *(v5 + 216);
              v42[1] = v34;
              v43 = v33;
              sub_261503BC8(buf, v42, v5 + 280, v10, &v40);
              if (BYTE8(v56))
              {
                if (sub_26148A1CC(*(v5 + 104), v10))
                {
                  if (sub_2614854B0(*(v5 + 208), v10))
                  {
                    v15 = 0;
                    v45[0] = 0;
                    v52 = 0;
                    if (BYTE8(v56) == 1)
                    {
                      *v45 = *buf;
                      *&v45[8] = *&buf[8];
                      v46 = *&buf[24];
                      v47 = v54;
                      v48 = v55;
                      *buf = 0;
                      v54 = 0uLL;
                      *&v55 = 0;
                      v49 = BYTE8(v55);
                      v50 = HIDWORD(v55);
                      v51 = v56;
                      v15 = 1;
                      v52 = 1;
                    }

                    goto LABEL_97;
                  }

                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *v45 = 0;
                    v38 = "Failed to unbind input surface.";
                    goto LABEL_95;
                  }

LABEL_96:
                  v15 = 0;
                  v45[0] = 0;
                  v52 = 0;
LABEL_97:
                  if (BYTE8(v56) == 1)
                  {
                    sub_261503B88(buf);
                  }

                  goto LABEL_84;
                }

                if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_96;
                }

                *v45 = 0;
                v38 = "Failed to reset network.";
              }

              else
              {
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_96;
                }

                *v45 = 0;
                v38 = "Failed to run postprocessor.";
              }

LABEL_95:
              _os_log_impl(&dword_26146F000, v27, OS_LOG_TYPE_INFO, v38, v45, 2u);
              goto LABEL_96;
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v36 = "Failed to execute.";
              goto LABEL_82;
            }

LABEL_83:
            v15 = 0;
            v45[0] = 0;
            v52 = 0;
LABEL_84:
            sub_2614776F0(&v44);
LABEL_85:
            if (*(v61 + 8) == 1 && v63)
            {
              sub_261489CFC(v63, *v61);
            }

            sub_261489D4C(v62);
            goto LABEL_26;
          }

          if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            goto LABEL_83;
          }

          *buf = 0;
          v36 = "Failed to bind input surface.";
        }

        else
        {
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            goto LABEL_83;
          }

          *buf = 0;
          v36 = "Failed to create input pixel buffer.";
        }

LABEL_82:
        _os_log_impl(&dword_26146F000, v27, OS_LOG_TYPE_INFO, v36, buf, 2u);
        goto LABEL_83;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26146F000, v27, OS_LOG_TYPE_INFO, "Failed to run image preprocessor.", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v7 - 2;
        _os_log_error_impl(&dword_26146F000, v27, OS_LOG_TYPE_ERROR, "Unable to find any supported pixel buffer from MRCSample: %{public}@", buf, 0xCu);
      }

      *buf = -6007;
      *v45 = @"Unable to find any supported pixel buffer from MRCSample.";
      sub_261476754(v10, buf, v45);
    }

    v15 = 0;
    v45[0] = 0;
    v52 = 0;
    goto LABEL_85;
  }

  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  v14 = qword_280CB31F8;
  if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "IIEModel is not ready.", buf, 2u);
  }

  *buf = -6005;
  *v45 = @"IIEModel is not ready.";
  sub_261476754(v10, buf, v45);
  v15 = 0;
  v45[0] = 0;
  v52 = 0;
LABEL_26:
  v16 = a1[2];
  if (*(v16 + 72) == v15)
  {
    if (*(v16 + 72))
    {
      v17 = sub_261503B88(v16);
      v18 = *v45;
      *v45 = 0;
      *v17 = v18;
      *(v17 + 8) = *&v45[8];
      *(v17 + 24) = v46;
      *(v17 + 32) = v47;
      *(v17 + 48) = v48;
      v47 = 0uLL;
      v48 = 0;
      *(v17 + 56) = v49;
      *(v17 + 60) = v50;
      *(v17 + 64) = v51;
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (!*(v16 + 72))
    {
      v21 = *v45;
      *v45 = 0;
      *v16 = v21;
      *(v16 + 8) = *&v45[8];
      *(v16 + 24) = v46;
      *(v16 + 32) = v47;
      *(v16 + 48) = v48;
      v47 = 0uLL;
      v48 = 0;
      *(v16 + 56) = v49;
      *(v16 + 60) = v50;
      *(v16 + 64) = v51;
      *(v16 + 72) = 1;
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    *(sub_261503B88(v16) + 72) = 0;
  }

  if (v15)
  {
LABEL_33:
    sub_261503B88(v45);
  }

LABEL_34:
  v19 = a1[2];
  if (*(v19 + 72) != 1 || *(*(a1[1] + 40) + 96) == 1)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v20 = *(a1[1] + 40);
    if (*(v20 + 96) == 1)
    {
      sub_2615010E4(buf, v20);
    }

    else
    {
      v54 = 0u;
      *buf = -1;
      memset(&buf[8], 0, 24);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
    }

    sub_261501518(&v61, buf);
    v35 = atomic_load_explicit(&v61, memory_order_acquire);
    *v45 = 138543362;
    *&v45[4] = v35;
    v25 = "Cannot run IIE inference: %{public}@";
    goto LABEL_47;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v22 = (*(v19 + 40) - *(v19 + 32)) >> 3;
    v23 = *(v19 + 60);
    *buf = 134349312;
    *&buf[4] = v22;
    *&buf[12] = 2050;
    *&buf[14] = v23;
    _os_log_impl(&dword_26146F000, v4, OS_LOG_TYPE_INFO, "IIE inference yields %{public}zu key point(s), module size is %{public}f.", buf, 0x16u);
  }
}

void sub_261558D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_ullong a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a40 == 1)
  {
    sub_261503B88(&a31);
  }

  sub_2614776F0(&a20);
  sub_261489DCC((v40 - 144));
  _Unwind_Resume(a1);
}

__n128 sub_261558E50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D7140;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_261558EFC(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!sub_2614EABCC(*(a1 + 8)) || *(a2 + 32) != 1)
  {
    goto LABEL_12;
  }

  if (qword_280CB3EB0 != -1)
  {
    dispatch_once(&qword_280CB3EB0, &unk_2873D07A0);
  }

  v4 = qword_280CB3EA8;
  if (os_log_type_enabled(qword_280CB3EA8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0].a) = 0;
    _os_log_impl(&dword_26146F000, v4, OS_LOG_TYPE_INFO, "All prerequisites are met, will run IIE inference.", buf, 2u);
  }

  v5 = *(a2 + 8);
  result = CGRectIsEmpty(*(v5 + 16));
  if ((result & 1) == 0)
  {
    result = CGRectIsInfinite(*(v5 + 16));
    if ((result & 1) == 0)
    {
      result = CGRectIsNull(*(v5 + 16));
      if (!result)
      {
        v9 = *(a2 + 24);
        v22.origin.x = sub_261495974(v9, 0.1);
        v10 = v9[5];
        *&buf[0].a = v9[4];
        *&buf[0].c = v10;
        *&buf[0].tx = v9[6];
        v28 = CGRectApplyAffineTransform(v22, buf);
        v23 = CGRectIntersection(*(v5 + 16), v28);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
        v15 = **(a2 + 8);
        sub_2614F59E4(v15);
        CGRectGetWidth(*(v15 + 8));
        CGRectGetHeight(*(v15 + 8));
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        CGRectGetMinX(v24);
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        CGRectGetMinY(v25);
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        CGRectGetMaxX(v26);
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        CGRectGetMaxY(v27);
        explicit = atomic_load_explicit(a1, memory_order_acquire);
        if (explicit)
        {
          v17 = CFGetTypeID(explicit);
          if (qword_280CB34E0 != -1)
          {
            dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
          }

          if (v17 != qword_280CB35D8)
          {
            _os_assumes_log();
          }
        }

        v19 = 0;
        operator new();
      }
    }
  }

  **(a2 + 64) = 256;
  v7 = *(a2 + 64);
  if (v7[1] != 1 || (*v7 & 1) == 0)
  {
LABEL_12:
    v8 = *(a1 + 8);
    if (!sub_2614EABCC(v8) || (LOBYTE(buf[0].a) = 0, BYTE4(buf[0].a) = 0, result = sub_2614E9390(v8, @"QR", buf), (result & 1) != 0) || (*(a2 + 32) & 1) == 0)
    {

      return sub_26155B800(a1, a2);
    }
  }

  return result;
}

void sub_261559AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_2614705CC(v57);
  sub_2614705CC(v57);
  a56 = &a53;
  sub_261470CC4(&a56);
  sub_2614705CC(v58);
  sub_2614705CC(v56);
  if (__p)
  {
    operator delete(__p);
  }

  if (STACK[0x2A0])
  {
    sub_2614705CC(STACK[0x2A0]);
  }

  if (a45 == 1)
  {
    sub_261503B88(&a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_261559C54(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = 0;
    while (i == v3 || *(a1 + 4 * v3) <= *(a1 + 4 * i))
    {
      if (++v3 == 5)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  for (j = 0; j != 4; ++j)
  {
    if (j != i)
    {
      v5 = 0;
      while (i == v5 || j == v5 || *(a1 + 4 * v5) <= *(a1 + 4 * j))
      {
        if (++v5 == 5)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_17:
  v6 = 0;
  v7 = *(a1 + 4 * i);
  if (v7 >= *(a1 + 4 * j))
  {
    v7 = *(a1 + 4 * j);
  }

  *a2 = v7;
  v8 = *(a1 + 4 * i);
  if (v8 <= *(a1 + 4 * j))
  {
    v8 = *(a1 + 4 * j);
  }

  *(a2 + 4) = v8;
  *(a2 + 8) = *(a1 + 4 * i) + *(a1 + 4 * j);
  *(a2 + 12) = 2;
  v9 = v8 + 1.0;
  *(a2 + 16) = v9;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 3;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    if (4 * i != v6 && 4 * j != v6)
    {
      if (v9 >= *(a1 + v6))
      {
        v9 = *(a1 + v6);
      }

      *(a2 + 16) = v9;
      if (v11 <= *(a1 + v6))
      {
        v11 = *(a1 + v6);
      }

      *(a2 + 20) = v11;
      v10 = *(a1 + v6) + v10;
      *(a2 + 24) = v10;
    }

    v6 += 4;
  }

  while (v6 != 20);
  if (i >= j)
  {
    v12 = j;
  }

  else
  {
    v12 = i;
  }

  if (v12 <= 1)
  {
    if (!v12)
    {
      if (i <= j)
      {
        LODWORD(i) = j;
      }

      v13 = i >= 5;
      v14 = 8 * i;
      v15 = 0x1080503FFLL;
      goto LABEL_46;
    }

    if (v12 == 1)
    {
      if (i <= j)
      {
        LODWORD(i) = j;
      }

      v13 = i >= 5;
      v14 = 8 * i;
      v15 = 0x20906FFFFLL;
LABEL_46:
      v16 = v15 >> v14;
      if (v13)
      {
        LOBYTE(v16) = -1;
      }

      return v16;
    }

LABEL_42:
    LOBYTE(v16) = -1;
    return v16;
  }

  if (v12 != 2)
  {
    if (v12 == 3)
    {
      LOBYTE(v16) = 7;
      return v16;
    }

    goto LABEL_42;
  }

  if (i <= j)
  {
    LODWORD(i) = j;
  }

  if (i == 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = -1;
  }

  if (i == 3)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    LOBYTE(v16) = v17;
  }

  return v16;
}

float sub_261559E40(uint64_t a1)
{
  v1 = *(a1 + 8) / *(a1 + 12);
  v2 = (*(a1 + 4) - *a1) / v1;
  v3 = (*(a1 + 20) - *(a1 + 16)) / v1;
  v4 = 1.0;
  v5 = 1.0;
  if (v2 >= 0.2)
  {
    v5 = 0.0;
    if (v2 < 0.4)
    {
      v5 = (0.4 - v2) / 0.2;
    }
  }

  if (v3 >= 0.3)
  {
    v4 = 0.0;
    if (v3 < 0.4)
    {
      v4 = (0.4 - v3) / 0.1;
    }
  }

  v6 = v1 / (*(a1 + 24) / *(a1 + 28));
  v8 = v6 <= 3.5 && v6 >= 1.5;
  result = v8;
  if (v4 < v8)
  {
    result = v4;
  }

  if (v5 < result)
  {
    return v5;
  }

  return result;
}

uint64_t sub_261559F08(int a1, float *a2, int a3, float *a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v194 = *MEMORY[0x277D85DE8];
  v8 = a3 % 5;
  v9 = a3 % 5 == 1;
  v10 = 6;
  if (a1 >= 3 && a3 >= 2)
  {
    v13 = a2[2];
    v14 = (v13 - *a2) * 0.25;
    v15 = v14 * 0.4;
    if (v14 < 5.0)
    {
      v15 = (v14 * 0.4) + 0.5;
    }

    if (vabds_f32(*a4 - *a2, v14) <= v15)
    {
      v16 = a2[1];
      if (vabds_f32(v16 - *a4, v14) <= v15)
      {
        v17 = a4[1];
        if (vabds_f32(v17 - v16, v14) <= v15 && vabds_f32(v13 - v17, v14) <= v15)
        {
          v18 = a3 - v9;
          v19 = (a3 - v9 - 4) / 5;
          v20 = 5 * v19 + 2;
          v21 = a4[v20];
          v22 = 20 * v19 + 12;
          v23 = *(a2 + v22);
          v24 = v23 - v21;
          v25 = *(a4 + v22) - v23;
          v26 = (v24 + v25) * 0.5;
          v27 = (v25 - v24) * 0.5;
          if (v27 <= (v26 * 0.4))
          {
            v167 = (v18 - 4) / 5;
            v29 = (v21 - a2[v20]) - v27;
            v30 = v29 / v26;
            if ((v29 / v26) >= 1.6 && v30 <= 3.4)
            {
              v31 = 0.0;
              if (v26 < 5.0)
              {
                v31 = 0.5;
              }

              v32 = v31 + (v26 * 0.4);
              if (fabsf(v29 - (v26 * v30)) <= v32 && vabds_f32(v24 + v27, v26) <= v32 && vabds_f32(v25 - v27, v26) <= v32)
              {
                v37 = 2 * v167;
                v175 = malloc_type_calloc(v37, 1uLL, 0x100004077774924uLL);
                v168 = malloc_type_calloc(v37, 4uLL, 0x100004052888210uLL);
                v162 = v37;
                v166 = malloc_type_calloc(v37, 4uLL, 0x100004052888210uLL);
                v185 = 0;
                v183 = 0u;
                v184 = 0u;
                v181 = 0u;
                v182 = 0u;
                if (v18 >= 9)
                {
                  v161 = v26;
                  v38 = 0;
                  if (v8 == 1)
                  {
                    v39 = 3;
                  }

                  else
                  {
                    v39 = 2;
                  }

                  if (v167 <= 1)
                  {
                    v40 = 1;
                  }

                  else
                  {
                    v40 = v167;
                  }

                  v163 = v40;
                  v41 = &a2[v39];
                  v173 = 0.0;
                  v164 = v39;
                  v42 = &a4[v39];
                  v43 = 0.0;
                  v44 = 0.0;
                  v45 = 1.0;
                  v46 = 1.0;
                  v165 = a6;
                  while (1)
                  {
                    v170 = v45;
                    v171 = v44;
                    v172 = v46;
                    v47 = 0;
                    v178 = v38;
                    v48 = v164 + 5 * v38;
                    do
                    {
                      *&v191[v47 * 4] = v42[v47] - v41[v47];
                      ++v47;
                    }

                    while (v47 != 5);
                    v176 = v42;
                    v177 = v41;
                    v174 = 2 * v38;
                    v175[2 * v38] = sub_261559C54(v191, &v183);
                    v49 = *(&v184 + 2);
                    v50 = sub_261559E40(&v183);
                    v51 = 0;
                    v168[v178] = *(&v183 + 2);
                    v168[v178 + v167] = v49;
                    do
                    {
                      *&v190[v51 * 4] = v177[v51 + 1] - v176[v51];
                      ++v51;
                    }

                    while (v51 != 5);
                    v52 = v43 + v49;
                    v53 = v173;
                    v54 = v173 + v49;
                    v169 = v174 | 1;
                    v175[v174 | 1] = sub_261559C54(v190, &v181);
                    v55 = *(&v182 + 2);
                    v166[v178] = *(&v181 + 2);
                    v166[v178 + v167] = v55;
                    if (!v178)
                    {
                      v43 = v52 + v55;
                    }

                    if (v178 == v167 - 1)
                    {
                      v53 = v54 + v55;
                    }

                    v173 = v53;
                    v56 = sub_261559E40(&v181);
                    v57 = v56;
                    if (v50 < v56)
                    {
                      v56 = v50;
                    }

                    if (v56 < 0.1)
                    {
                      if (v57 <= 0.3)
                      {
                        if (v50 <= 0.3)
                        {
                          sub_26155AB94(v191, v189, &v185 + 1);
                          sub_26155AB94(v190, v188, &v185);
                        }

                        else
                        {
                          sub_26155AB94(v190, v188, &v185);
                          v189[0] = v175[v174];
                          HIBYTE(v185) = 1;
                        }
                      }

                      else
                      {
                        sub_26155AB94(v191, v189, &v185 + 1);
                        v188[0] = v175[v169];
                        LOBYTE(v185) = 1;
                      }

                      v58 = &a2[v48];
                      v59 = (*v58 + 0.5);
                      v60 = (v58[5] + 0.5);
                      v179 = v185;
                      v180 = SHIBYTE(v185);
                      v187 = 0.0;
                      v186 = 0;
                      v61 = sub_261524154(a7, v59, v60, &v187, &v186 + 1, &v186);
                      if (v180 >= 1)
                      {
                        if (v61)
                        {
                          break;
                        }
                      }
                    }

LABEL_130:
                    a6 = v165;
                    v141 = v170;
                    if (v50 < v170)
                    {
                      v141 = v50;
                    }

                    if (v50 >= v172)
                    {
                      v142 = v172;
                    }

                    else
                    {
                      v142 = v50;
                    }

                    if (v50 < v172)
                    {
                      v141 = v172;
                    }

                    v44 = (v171 + v50) + v57;
                    if (v57 < v141)
                    {
                      v143 = v57;
                    }

                    else
                    {
                      v143 = v141;
                    }

                    if (v57 >= v142)
                    {
                      v46 = v142;
                    }

                    else
                    {
                      v46 = v57;
                    }

                    if (v57 >= v142)
                    {
                      v45 = v143;
                    }

                    else
                    {
                      v45 = v142;
                    }

                    v38 = v178 + 1;
                    v41 = v177 + 5;
                    v42 = v176 + 5;
                    if (v178 + 1 == v163)
                    {
                      v144 = v45 * 0.3;
                      v9 = v8 == 1;
                      v26 = v161;
                      v145 = (v18 - 4) / 5;
                      goto LABEL_149;
                    }
                  }

                  v62 = 0;
                  v63 = vcvtd_n_f64_s32(v60 - v59, 4uLL);
                  v64 = *(&v186 + 1);
                  v65 = *&v186;
                  v66 = 1.0 / (v187 + v187);
                  v67 = (v60 - v59);
                  v68 = 127;
                  v69 = -100.0;
                  v70 = 127;
LABEL_45:
                  if (v179 < 1)
                  {
                    goto LABEL_127;
                  }

                  v71 = 0;
                  v72 = v189[v62];
                  v73 = &flt_261585D70[5 * v72];
LABEL_47:
                  v74 = 0;
                  v75 = v188[v71];
                  v76 = v188[v71];
                  v193[0] = 0;
                  v77 = 0.0;
                  do
                  {
                    v78 = v73[v74];
                    v79 = &v193[2 * v74];
                    v80 = flt_261585D70[5 * v75 + v74++];
                    v81.f32[0] = v77 + v78;
                    v77 = v81.f32[0] + v80;
                    v81.f32[1] = v81.f32[0] + v80;
                    v82 = vcvtq_f64_f32(vmul_n_f32(v81, v63));
                    __asm { FMOV            V6.2D, #0.5 }

                    *(v79 + 1) = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v82, _Q6)));
                  }

                  while (v74 != 5);
                  if (a7)
                  {
                    v87 = 0;
                    v88 = 0.0;
                    v89 = v193[0];
                    do
                    {
                      v90 = v87 + 1;
                      v91 = v193[v87 + 1];
                      if (v89 < v91)
                      {
                        v92 = v89 + v59;
                        do
                        {
                          v93 = *(a7 + 4 * v92);
                          if (v87)
                          {
                            v94 = v93 - v64;
                            if (v94 > 0.0)
                            {
                              v94 = 0.0;
                            }
                          }

                          else
                          {
                            v94 = fmaxf(v93 - v65, 0.0);
                          }

                          v88 = v88 + (v66 * (v94 * v94));
                          ++v92;
                        }

                        while (v92 < v91 + v59);
                      }

                      v89 = v193[++v87];
                    }

                    while (v90 != 10);
                    v95 = -v88 / v67;
                  }

                  else
                  {
                    v95 = -100.0;
                  }

                  if (v95 > -0.12 && v95 > v69)
                  {
                    v70 = v72;
                    v68 = v76;
                    v69 = v95;
                  }

                  if (v63 <= 1.5)
                  {
                    goto LABEL_126;
                  }

                  v96 = 0;
                  v97 = v95 * v67;
                  v98 = v193[10];
                  v99 = &flt_261585D70[5 * v75];
LABEL_66:
                  v100 = (&unk_261585E38 + 8 * v96);
                  v101 = *v100;
                  v102 = (*v100 + v59);
                  if (*v100 + v59 < 0)
                  {
                    goto LABEL_125;
                  }

                  v103 = v100[1] + v60;
                  if (v103 >= a8)
                  {
                    goto LABEL_125;
                  }

                  v104 = 0;
                  v105 = v103 - v102;
                  v106 = vcvtd_n_f64_s32(v105, 4uLL);
                  v107 = 0.0;
                  do
                  {
                    v108.f32[0] = v107 + v73[v104];
                    v107 = v108.f32[0] + v99[v104];
                    v108.f32[1] = v107;
                    *&v191[8 * v104++ + 24] = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(v108, v106)), _Q6)));
                  }

                  while (v104 != 5);
                  if (!a7)
                  {
                    v139 = -100.0;
                    goto LABEL_120;
                  }

                  v109 = v97;
                  if (v101)
                  {
                    v110 = v101 <= 0 ? v102 : v59;
                    v111 = v101 <= 0 ? v59 : v102;
                    v109 = v97;
                    if (v110 < v111)
                    {
                      v112 = v111 - v110;
                      v109 = v97;
                      v113 = (a7 + 4 * v110);
                      do
                      {
                        v114 = *v113++;
                        v115 = fmaxf(v114 - v65, 0.0);
                        v116 = v66 * (v115 * v115);
                        v117 = -v116;
                        if (v101 <= 0)
                        {
                          v117 = v116;
                        }

                        v109 = v109 + v117;
                        --v112;
                      }

                      while (v112);
                    }
                  }

                  v118 = v98 - v101;
                  if (v118 != v192)
                  {
                    v119 = v118 >= v192 ? v192 : v118;
                    v120 = v118 < v192 ? v192 : v118;
                    if (v119 < v120)
                    {
                      v121 = v119 + v102;
                      v122 = v120 + v102;
                      do
                      {
                        v123 = *(a7 + 4 * v121) - v64;
                        if (v123 > 0.0)
                        {
                          v123 = 0.0;
                        }

                        v124 = v66 * (v123 * v123);
                        v125 = -v124;
                        if (v118 < v192)
                        {
                          v125 = v124;
                        }

                        v109 = v109 + v125;
                        ++v121;
                      }

                      while (v121 < v122);
                    }
                  }

                  v126 = 1;
                  while (1)
                  {
                    v127 = *&v191[4 * v126 + 20];
                    v128 = v127 + v102;
                    v129 = v193[v126] + v59;
                    if (v127 + v102 != v129)
                    {
                      v130 = v129 >= v128 ? v127 + v102 : v193[v126] + v59;
                      v131 = v128 <= v129 ? v193[v126] + v59 : v127 + v102;
                      _VF = __OFSUB__(v131, v130);
                      v132 = v131 - v130;
                      if (!((v132 < 0) ^ _VF | (v132 == 0)))
                      {
                        break;
                      }
                    }

LABEL_117:
                    if (++v126 == 10)
                    {
                      v139 = v109 / v105;
LABEL_120:
                      if (v139 > -0.12 && v139 > v69)
                      {
                        v70 = v72;
                        v68 = v76;
                        v69 = v139;
                      }

LABEL_125:
                      if (++v96 == 8)
                      {
LABEL_126:
                        if (++v71 == v179)
                        {
LABEL_127:
                          if (++v62 == v180)
                          {
                            if (v69 > -0.12)
                            {
                              v189[0] = v70;
                              v188[0] = v68;
                              v175[v174] = v70;
                              v175[v169] = v68;
                              v50 = 0.3;
                              v57 = 0.3;
                            }

                            goto LABEL_130;
                          }

                          goto LABEL_45;
                        }

                        goto LABEL_47;
                      }

                      goto LABEL_66;
                    }
                  }

                  v133 = v102 + v127;
                  if (v133 >= v129)
                  {
                    v133 = v129;
                  }

                  v134 = (a7 + 4 * v133);
                  while (1)
                  {
                    v135 = *v134 - v64;
                    if (v135 > 0.0)
                    {
                      v135 = 0.0;
                    }

                    v136 = fmaxf(*v134 - v65, 0.0);
                    v137 = v66 * (v135 * v135);
                    v138 = v66 * (v136 * v136);
                    if (v126)
                    {
                      if (v129 < v128)
                      {
                        goto LABEL_115;
                      }
                    }

                    else if (v128 < v129)
                    {
LABEL_115:
                      v109 = (v109 + v137) - v138;
                      goto LABEL_116;
                    }

                    v109 = v138 + (v109 - v137);
LABEL_116:
                    ++v134;
                    if (!--v132)
                    {
                      goto LABEL_117;
                    }
                  }
                }

                v46 = 1.0;
                v144 = 0.3;
                v44 = 0.0;
                v43 = 0.0;
                v53 = 0.0;
                v145 = (v18 - 4) / 5;
LABEL_149:
                v146 = (v144 + (v46 * 0.2)) + ((v44 / v162) * 0.5);
                if (v46 < 0.1)
                {
                  v146 = 0.0;
                }

                *(a5 + 24) = v146;
                *(a5 + 8) = v162;
                *(a5 + 80) = 1;
                *(a5 + 84) = v145;
                v147 = *(a5 + 16);
                if (v147)
                {
                  free(v147);
                }

                *(a5 + 16) = v175;
                if (!a6)
                {
                  goto LABEL_162;
                }

                if (v18 < 9)
                {
                  v152 = 0;
LABEL_170:
                  if (*(a5 + 24) < 0.1 && v152 == 0)
                  {
                    v10 = 7;
                  }

                  else
                  {
                    v10 = v152;
                  }

                  if (!v10)
                  {
                    if (vabds_f32(v14, v43 / 6.0) <= ((v43 / 6.0) * 0.3) && vabds_f32(v26, v53 / 6.0) <= ((v53 / 6.0) * 0.3))
                    {
                      v10 = 0;
                      v156 = &a2[v9];
                      v157 = v43 + v156[2];
                      v158 = *v156;
                      v159 = &a4[v18];
                      *(a5 + 72) = (v157 - v158) * 0.1;
                      *(a5 + 76) = ((v53 + *(v159 - 1)) - *(v159 - 2)) * 0.125;
                      v160 = *(a5 + 64);
                      v160[10] = 0;
                      v160[11] = v9;
                      v160[12] = *a2;
                      v160[13] = *(v159 - 1);
                      v160[5] = v18;
                    }

                    else
                    {
                      v10 = 6;
                    }
                  }

                  free(v168);
                  free(v166);
                  return v10;
                }

                v148 = 0;
                v149 = v145 <= 1 ? 1 : v145;
                v150 = v175 + 1;
                do
                {
                  v148 += *v150 + 3 * *(v150 - 1);
                  v150 += 2;
                  --v149;
                }

                while (v149);
                HIDWORD(v151) = -858993459 * v148 + 429496728;
                LODWORD(v151) = HIDWORD(v151);
                if ((v151 >> 1) >= 0x19999999)
                {
                  *(a5 + 24) = 0;
                  v152 = 5;
                }

                else
                {
LABEL_162:
                  v152 = 0;
                }

                if ((v18 - 14) <= 4)
                {
                  v153 = fmaxf(v168[2], v168[3]) * 1.2;
                  if (v153 >= *v168 || v153 >= v168[1] || (v154 = fmaxf(v166[2], v166[3]) * 1.2, v154 >= *v166) || v154 >= v166[1])
                  {
                    v152 = 2;
                  }
                }

                goto LABEL_170;
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_26155AB94(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = 0;
  v4 = 0;
  for (i = 1; i != 5; ++i)
  {
    v6 = *(result + 4 * i);
    if (v6 > *(result + 4 * v4))
    {
      v4 = i;
    }

    if (v6 < *(result + 4 * v3))
    {
      v3 = i;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = (&unk_261585D70 + 4 * v4);
  v10 = (&unk_261585D70 + 4 * v3);
  do
  {
    if (*v10 < 1.1 && *v9 > 2.0)
    {
      *(a2 + v8++) = v7;
    }

    ++v7;
    v9 += 5;
    v10 += 5;
  }

  while (v7 != 10);
  *a3 = v8;
  return result;
}

uint64_t sub_26155AC2C(int a1, float *a2, int a3, float *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a3 < 9)
  {
    return 16;
  }

  if ((-858993459 * a3 - 858993460) > 0x33333332)
  {
    return 2;
  }

  return sub_261559F08(a1, a2, a3, a4, a5, 0, a6, a7);
}

uint64_t sub_26155AC74(int a1, float *a2, int a3, float *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a3 < 9)
  {
    return 16;
  }

  if ((-858993459 * a3 - 858993460) > 0x33333332)
  {
    return 2;
  }

  return sub_261559F08(a1, a2, a3, a4, a5, 1, a6, a7);
}

uint64_t sub_26155ACBC(int a1, float *a2, int a3, float *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a3 >= 39)
  {
    return sub_261559F08(a1, a2, a3, a4, a5, 0, a6, a7);
  }

  else
  {
    return 16;
  }
}

uint64_t sub_26155ACDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3 - 1)
  {
    LODWORD(v3) = a3 - 1;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      *(a2 + v4) = *(*(result + 16) + v4) + 48;
      ++v4;
    }

    while ((v3 & 0x7FFFFFFF) != v4);
  }

  *(a2 + v3) = 0;
  return result;
}

uint64_t sub_26155AD64(uint64_t a1, int a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  memset(v23, 0, sizeof(v23));
  v14 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v24 = v14;
  *(v14 + 8) = 0;
  *(v14 + 18) = 0;
  *(v14 + 10) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 44) = 0u;
  if (a2)
  {
    v15 = a4;
  }

  else
  {
    v15 = a6;
  }

  if (a2)
  {
    v16 = a5;
  }

  else
  {
    v16 = a7;
  }

  if (a2)
  {
    v17 = a7;
  }

  else
  {
    v17 = a5;
  }

  if (a2)
  {
    v18 = a6;
  }

  else
  {
    v18 = a4;
  }

  v19 = sub_26155DFDC(*(a1 + 32), *a1, *(a1 + 8), *(a1 + 16), v23, &v23[1] + 3, v18, v17, v15, v16, 3.0);
  if (v19 >= 22)
  {
    *(&v23[0] + 1) = v19;
    LODWORD(v23[1]) = v19 - 1;
    v21 = 1 << *a3;
    **(a3 + 64) = v21;
    v20 = sub_26154A5A0(v23, a3, v21);
  }

  else
  {
    v20 = 16;
  }

  sub_261544D00(v23);
  return v20;
}

uint64_t sub_26155AE84(unint64_t *a1, float *a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  if (a2)
  {
    v8 = sub_26155BCF4(a1, a2, a3, a4, a5, a6, a7, 1.0);
  }

  else
  {
    v8 = sub_26155DFDC(a1[4], *a1, a1[1], a1[2], a3, (a3 + 28), a4, a5, a6, a7, 1.0);
  }

  if (v8 < 41)
  {
    return 16;
  }

  v9 = 0;
  *(a3 + 8) = v8;
  *(a3 + 12) = 0;
  *(a3 + 16) = v8 - 1;
  return v9;
}

float **sub_26155AEFC(float **result, __int128 *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    if (*result >= 1)
    {
      v4 = *a2;
      if (*a2 >= 1)
      {
        v5 = *result[1];
        v6 = (fabsf(v5) + -0.5);
        if (v6 + 1 >= a4)
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 + 1;
        }

        if (v5 <= 0.0 == *(a3 + 4 * (v6 - (v6 + 1 >= a4))) > *(a3 + 4 * v7))
        {
          v8 = *result;
          *result = *a2;
          *a2 = v8;
          v5 = *result[1];
          v4 = *a2;
        }

        v9 = *(a2 + 1);
        if (v5 > *v9)
        {
          *(a2 + 1) = v9 + 1;
          *a2 = --v4;
        }

        if (*result != v4)
        {
          if (*result <= v4)
          {
            v10 = a2;
          }

          else
          {
            v10 = result;
          }

          --*v10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26155AFC8(double *a1, double a2, double a3, double a4, double a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = a6 * 3.14159265 / 180.0;
  v22 = a10 - a7;
  v23 = __sincosf_stret(v21);
  v24 = a11 - a8;
  if (((v23.__sinval * v24) + (v22 * v23.__cosval)) >= 0.0)
  {
    v26 = v21;
  }

  else
  {
    v25 = v21 + 3.14159265;
    v26 = v25;
  }

  if (a4 <= a5)
  {
    v27 = a5;
  }

  else
  {
    v27 = a4;
  }

  v28 = v27 + v27;
  v29 = __sincosf_stret(v26);
  v30 = (v29.__sinval * v28);
  v31 = a7 + v30;
  v32 = a7 - v30;
  v60 = v32;
  v61 = v31;
  v33 = (v29.__cosval * v28);
  v34 = a8 - v33;
  v35 = a8 + v33;
  v58 = v35;
  v59 = v34;
  v36 = a10 - v30;
  v50 = v36;
  v37 = a10 + v30;
  v56 = v37;
  v57 = v36;
  v38 = a11 + v33;
  v39 = a11 - v33;
  v54 = v39;
  v55 = v38;
  v40 = a2;
  v41 = a3;
  v42 = a2 + a4;
  v43 = a3 + a5;
  result = sub_26155D4B4(&v61, &v59, &v60, &v58, v31, v34, v32, v35, v40, v42, v41, v43);
  if (result && (result = sub_26155D4B4(&v57, &v55, &v56, &v54, v50, v38, v37, v39, v40, v42, v41, v43), result))
  {
    v45 = v59;
    *a1 = v61;
    a1[1] = v45;
    v46 = v58;
    a1[2] = v60;
    a1[3] = v46;
    v47 = v55;
    a1[4] = v57;
    a1[5] = v47;
    a1[6] = v56;
    v48 = v54;
    v49 = 7;
  }

  else
  {
    a1[6] = v42;
    a1[7] = v41;
    *a1 = v40;
    a1[1] = v41;
    a1[2] = v40;
    v48 = v43;
    v49 = 3;
    a1[4] = v42;
    a1[5] = v43;
  }

  a1[v49] = v48;
  return result;
}

uint64_t sub_26155B1F8(unint64_t *a1, int a2, int a3, int a4, unsigned int *a5, float a6, float a7, float a8, float a9, float a10)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  memset(v28, 0, sizeof(v28));
  v20 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v29 = v20;
  *(v20 + 8) = 0;
  *(v20 + 18) = 0;
  *(v20 + 10) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 44) = 0u;
  if (a2)
  {
    v21 = a8;
  }

  else
  {
    v21 = a6;
  }

  if (a2)
  {
    v22 = a9;
  }

  else
  {
    v22 = a7;
  }

  if (a2)
  {
    v23 = a6;
  }

  else
  {
    v23 = a8;
  }

  if (a2)
  {
    v24 = a7;
  }

  else
  {
    v24 = a9;
  }

  v25 = sub_26155B388(a1, 1, 1 << *a5, a3, a4, v28, &v32, &v30, v21, v22, v23, v24, 3.0, a10, 0);
  if (!v25)
  {
    sub_261544B04(v29, *(a5 + 8));
    v26 = *a5;
    if ((**(a5 + 8) >> v26))
    {
      v25 = (*&dword_280CB3640[16 * v26 + 10])(v32, v33, v30, v31, a5, *&v28[0], DWORD2(v28[0]));
    }

    else
    {
      v25 = 2;
    }
  }

  if (v33)
  {
    free(v33);
  }

  if (v31)
  {
    free(v31);
  }

  sub_261544D00(v28);
  return v25;
}

uint64_t sub_26155B388(unint64_t *a1, int a2, int a3, int a4, int a5, uint64_t a6, unsigned int *a7, unsigned int *a8, float a9, float a10, float a11, float a12, float a13, float a14, float *a15)
{
  if (a15)
  {
    v23 = sub_26155BCF4(a1, a15, a6, a9, a10, a11, a12, a13);
  }

  else
  {
    v23 = sub_26155DFDC(a1[4], *a1, a1[1], a1[2], a6, (a6 + 28), a9, a10, a11, a12, a13);
  }

  *(a6 + 8) = v23;
  if (v23 <= 21)
  {
    if (*a6)
    {
      free(*a6);
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    return 16;
  }

  sub_26155E77C(*a6, v23, &v72, &v71);
  if (v24 == 0.0)
  {
    return 18;
  }

  *(*(a6 + 80) + 4) = a4;
  v25 = *a6;
  v26 = *(a6 + 8);
  if (a2)
  {
    LODWORD(v65) = 0;
    v69 = 0;
    v67 = 0;
    sub_26155E3B0(v25, v26, a4, &v65, &v69, &v67);
    v27 = v67;
    if (v65 < 1)
    {
      v32 = 0;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v30 = -v26;
      do
      {
        v31 = *(v67 + v28) - *(v69 + v28);
        if (v30 < v31)
        {
          v29 = v28;
        }

        if (v30 <= v31)
        {
          v30 = *(v67 + v28) - *(v69 + v28);
        }

        ++v28;
      }

      while (v65 != v28);
      v32 = v29;
    }

    v34 = *(v69 + v32);
    v35 = *(v67 + v32);
    free(v69);
    free(v27);
    if (v34 < 0 || (v34 < v26 ? (v36 = v34 < v35) : (v36 = 0), !v36 || v35 < 0 || v35 >= v26))
    {
      v34 = 0;
      *(a6 + 12) = 0;
      v35 = v26 - 1;
    }

    else
    {
      *(a6 + 12) = v34;
    }
  }

  else
  {
    v34 = 0;
    v35 = v26 - 1;
    *(a6 + 12) = 0;
  }

  *(a6 + 16) = v35;
  sub_26155E81C(v25, v26, v34, v35);
  v38 = *(a6 + 12);
  v37 = *(a6 + 16);
  v39 = (v37 - v38 + 1);
  *(*(a6 + 80) + 8) = v39;
  if (v38 >= v37)
  {
    return 15;
  }

  if (v39 < 41)
  {
    return 16;
  }

  v69 = 0;
  v67 = 0;
  v65 = 0;
  v63 = 0;
  v40 = malloc_type_calloc(4uLL, (v37 - v38 + 1), 0x100004052888210uLL);
  v70 = v40;
  v41 = malloc_type_calloc(4uLL, v39, 0x100004052888210uLL);
  v68 = v41;
  v66 = malloc_type_calloc(4uLL, v39, 0x100004052888210uLL);
  v64 = malloc_type_calloc(4uLL, v39, 0x100004052888210uLL);
  v42 = sub_2614F106C(a6, &v65, &v63);
  if (!v42)
  {
    v42 = sub_2614F1134(a6, &v65, &v63, v39, 0.8, 0.0);
    if (!v42)
    {
      v44 = v63;
      LODWORD(v67) = v63;
      if (v63 >= 1)
      {
        v45 = v64;
        do
        {
          v46 = *v45++;
          *v41++ = v46;
          --v44;
        }

        while (v44);
      }

      v47 = v65;
      LODWORD(v69) = v65;
      if (v65 >= 1)
      {
        v48 = v66;
        do
        {
          v49 = *v48++;
          *v40++ = v49;
          --v47;
        }

        while (v47);
      }

      v50 = sub_2614F1134(a6, &v69, &v67, a5, a14, 0.02);
      if (v50)
      {
        v33 = v50;
        v40 = v70;
        goto LABEL_37;
      }

      v51 = v69;
      v40 = v70;
      v52 = v68;
      sub_2615456E4(v69, v70, v67, v68, *(a6 + 80), a3);
      if (!**(a6 + 80))
      {
        v33 = 2;
        goto LABEL_37;
      }

      if (a7)
      {
        v53 = *(a7 + 1);
        if (v53)
        {
          free(v53);
        }

        *(a7 + 1) = 0;
        *a7 = 0;
      }

      if (a8)
      {
        v54 = *(a8 + 1);
        if (v54)
        {
          free(v54);
        }

        *(a8 + 1) = 0;
        *a8 = 0;
      }

      *(a7 + 1) = malloc_type_calloc(4uLL, *(a6 + 8), 0x100004052888210uLL);
      *(a8 + 1) = malloc_type_calloc(4uLL, *(a6 + 8), 0x100004052888210uLL);
      v42 = sub_2614F1878(*a6, v51, v40, v52, a7, a8);
      if (!v42)
      {
        v55 = *a8;
        if (v55 < 1 || (v56 = *a7, v56 < 1))
        {
          v33 = 10;
        }

        else
        {
          v33 = 0;
          v57 = *(a7 + 1);
          v58 = *v57;
          v59 = &v57[v56];
          v60 = *(a8 + 1);
          if (v58 >= *v60)
          {
            v58 = *v60;
          }

          *(a6 + 20) = v58;
          v61 = *(v59 - 1);
          v62 = &v60[v55];
          if (v61 <= *(v62 - 1))
          {
            v61 = *(v62 - 1);
          }

          *(a6 + 24) = v61;
        }

        goto LABEL_37;
      }
    }
  }

  v33 = v42;
LABEL_37:
  if (v40)
  {
    free(v40);
  }

  if (v68)
  {
    free(v68);
  }

  if (v66)
  {
    free(v66);
  }

  if (v64)
  {
    free(v64);
  }

  return v33;
}

uint64_t sub_26155B800(uint64_t a1, uint64_t a2)
{
  v11 = 1;
  v12 = 1;
  v3 = *(a1 + 8);
  if (sub_2614E9390(v3, @"QR", &v11) & 1) != 0 || (v9 = 1, v10 = 1, (sub_2614E9390(v3, @"MicroQR", &v9)) || (v7 = 1, v8 = 1, (sub_2614E9390(v3, @"Aztec", &v7)) || (v5 = 1, v6 = 1, result = sub_2614E9390(v3, @"DataMatrix", &v5), (result))
  {
    sub_26154165C();
  }

  **(a2 + 64) = 256;
  return result;
}

uint64_t sub_26155B8F8(unsigned int a1, unsigned int a2, uint64_t a3, float32x4_t a4, int32x4_t a5, int32x2_t a6, float a7, float a8, float a9, float a10, float a11)
{
  v96[4] = *MEMORY[0x277D85DE8];
  v20 = a6;
  v78 = a6.i32[0];
  v79 = a4.i32[0];
  v21 = a4;
  v77 = a5.i32[0];
  *v12.i32 = (((a4.f32[0] + *a6.i32) + a8) + a10) * 0.25;
  *v11.i32 = (((*a5.i32 + a7) + a9) + a11) * 0.25;
  *v24.f32 = vcvt_f32_s32(vadd_s32(__PAIR64__(a2, a1), -1));
  v25.i64[0] = 0;
  v25.i64[1] = v24.i64[0];
  v24.i64[1] = v24.i64[0];
  v26.i64[0] = 0x3F0000003F000000;
  v26.i64[1] = 0x3F0000003F000000;
  v75 = vmulq_f32(v24, v26);
  _Q1 = vsubq_f32(v25, v75);
  v28 = vextq_s8(_Q1, _Q1, 8uLL);
  v28.i32[2] = _Q1.i32[2];
  _Q2 = vmulq_f32(_Q1, _Q1);
  v30 = vmla_n_f32(vzip2_s32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL)), vdup_lane_s32(*_Q1.f32, 0), _Q1.f32[0]);
  _S5 = _Q1.i32[2];
  __asm
  {
    FMLA            S2, S5, V1.S[2]
    FMLA            S4, S5, V1.S[2]
  }

  _Q1.i32[2] = _Q1.i32[0];
  *_Q2.i32 = *_Q2.i32 + vaddv_f32(v30);
  v37 = v21;
  v37.i32[1] = v20.i32[0];
  *_Q2.i32 = _S4 + *_Q2.i32;
  v38 = a5;
  *&v38.i32[1] = a7;
  *v37.i8 = vsub_f32(*v37.i8, vdup_lane_s32(v12, 0));
  *v38.i8 = vsub_f32(*v38.i8, vdup_lane_s32(v11, 0));
  v39 = vmla_f32(vmul_f32(*v38.i8, *v38.i8), *v37.i8, *v37.i8);
  v73 = *v12.i32;
  v74 = *v11.i32;
  v21.f32[0] = a8 - *v12.i32;
  v21.f32[1] = a9 - *v11.i32;
  v21.f32[2] = a10 - *v12.i32;
  v21.f32[3] = a11 - *v11.i32;
  *v20.i32 = sqrt(*_Q2.i32 * 0.125);
  v39.f32[0] = sqrt(((((a11 - *v11.i32) * (a11 - *v11.i32)) + ((a10 - *v12.i32) * (a10 - *v12.i32))) + (((v21.f32[1] * v21.f32[1]) + (v21.f32[0] * v21.f32[0])) + vaddv_f32(v39))) * 0.125);
  v71 = *v20.i32;
  v72 = v39.f32[0];
  v40 = vdupq_lane_s32(v20, 0);
  v41 = vdupq_lane_s32(v39, 0);
  v42 = vdivq_f32(v28, v40);
  v43 = vdivq_f32(_Q1, v40);
  v44 = vdivq_f32(vzip1q_s32(v37, v38), v41);
  v45 = vdivq_f32(v21, v41);
  v98.val[1] = vuzp1q_s32(v43, v42);
  v100.val[1] = vuzp2q_s32(v43, v42);
  v46 = vnegq_f32(v98.val[1]);
  v100.val[0] = 0uLL;
  v47 = vuzp1q_s32(v44, v45);
  v97.val[0] = vuzp2q_s32(v44, v45);
  v97.val[1] = vnegq_f32(v47);
  v99.val[0] = vmulq_f32(v98.val[1], v97.val[0]);
  v98.val[0] = 0u;
  v48 = &v89;
  vst2q_f32(v48, v98);
  v48 += 8;
  vst2q_f32(v48, v100);
  v49 = &v92;
  vst2q_f32(v49, v100);
  v50 = vnegq_f32(v100.val[1]);
  v98.val[0] = 0u;
  v51 = v93;
  vst2q_f32(v51, v98);
  v99.val[1] = vmulq_f32(v47, v46);
  v52 = &v94;
  vst2q_f32(v52, v99);
  v98.val[1] = vmulq_f32(v100.val[1], v97.val[0]);
  v99.val[0] = vmulq_f32(v47, v50);
  v53 = &v95;
  vst2q_f32(v53, *(&v98 + 16));
  v54 = v96;
  vst2q_f32(v54, v97);
  v90 = xmmword_261561100;
  v91 = xmmword_261561100;
  v93[2] = xmmword_261561110;
  v93[3] = xmmword_261561110;
  result = sgesvd_NEWLAPACK();
  v56 = -(1.0 / v71);
  v57 = v56 * v75.f32[0];
  v58 = vmuls_lane_f32(v56, *v75.f32, 1);
  v59 = (v73 * v86) + (v72 * v80);
  v60.f32[0] = (1.0 / v71) * v59;
  v61 = (v73 * v87) + (v72 * v81);
  v62 = (1.0 / v71) * v61;
  *&v63 = (((v73 * v88) + (v72 * v82)) + (v59 * v57)) + (v61 * v58);
  v64 = (v74 * v86) + (v72 * v83);
  *&v65 = (1.0 / v71) * v64;
  v66 = (v74 * v87) + (v72 * v84);
  v67.f32[0] = (1.0 / v71) * v66;
  v68 = (((v74 * v88) + (v72 * v85)) + (v64 * v57)) + (v66 * v58);
  v69 = (v88 + (v86 * v57)) + (v87 * v58);
  v60.f32[1] = v62;
  v70 = 1.0 / sqrtf(((((((((v62 * v62) + (v60.f32[0] * v60.f32[0])) + (*&v63 * *&v63)) + (*&v65 * *&v65)) + (v67.f32[0] * v67.f32[0])) + (v68 * v68)) + (((1.0 / v71) * v86) * ((1.0 / v71) * v86))) + (((1.0 / v71) * v87) * ((1.0 / v71) * v87))) + (v69 * v69));
  v60.i64[1] = __PAIR64__(v65, v63);
  v67.f32[1] = v68;
  v67.f32[2] = (1.0 / v71) * v86;
  v67.f32[3] = (1.0 / v71) * v87;
  *(a3 + 40) = vmulq_n_f32(v60, v70);
  *(a3 + 56) = vmulq_n_f32(v67, v70);
  *(a3 + 72) = v69 * v70;
  *(a3 + 8) = v78;
  *(a3 + 12) = a7;
  *(a3 + 16) = a8;
  *(a3 + 20) = a9;
  *a3 = v79;
  *(a3 + 4) = v77;
  *(a3 + 24) = a10;
  *(a3 + 28) = a11;
  *(a3 + 32) = a1;
  *(a3 + 36) = a2;
  return result;
}

uint64_t sub_26155BCF4(void *a1, float *a2, void *a3, float a4, float a5, float a6, float a7, float a8)
{
  v14 = a6 - a4;
  v15 = a7 - a5;
  v16 = atan2f(a7 - a5, a6 - a4);
  v17 = cosf(v16 + -1.5708);
  v18 = vcvtps_s32_f32(sqrtf((v15 * v15) + (v14 * v14)));
  v19 = v18 + 1;
  v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  if (!v20)
  {
    return 0;
  }

  if ((v18 & 0x80000000) == 0)
  {
    v21 = 0;
    v22 = vcvtps_s32_f32(fmaxf(a8, 1.0));
    v23 = v22 / 2;
    if (v22 / 2 <= v22 / -2)
    {
      v23 = v22 / -2;
    }

    v24 = v23 + 1;
    do
    {
      v20[v21] = 0;
      if (v22 >= -1)
      {
        v25 = 0;
        v26 = v21 / v18;
        v27 = a4 + (v26 * v14);
        v28 = a5 + (v26 * v15);
        v29 = 0.0;
        v30 = v22 / -2;
        do
        {
          v31 = v27 + (v30 * v17);
          v32 = v28 + (v30 * v17);
          v33 = a2[18] + ((v32 * a2[17]) + (a2[16] * v31));
          v34 = (a2[12] + ((v32 * a2[11]) + (a2[10] * v31))) / v33;
          v35 = vcvtmd_s64_f64(v34);
          if ((v35 & 0x80000000) == 0)
          {
            v36 = *a1 - 1;
            if (v36 >= v35)
            {
              v37 = vcvtpd_s64_f64(v34);
              if ((v37 & 0x80000000) == 0 && v36 >= v37)
              {
                v38 = a2[13];
                v39 = a2[14];
                v40 = (a2[15] + ((v32 * v39) + (v38 * v31))) / v33;
                LODWORD(v36) = vcvtmd_s64_f64(v40);
                if ((v36 & 0x80000000) == 0)
                {
                  v41 = a1[1];
                  v42 = v41 - 1;
                  if (v41 - 1 >= v36)
                  {
                    LODWORD(v41) = vcvtpd_s64_f64(v40);
                    if ((v41 & 0x80000000) == 0 && v42 >= v41)
                    {
                      *&v43 = v35;
                      *&v44 = v36;
                      v45 = a1[4];
                      v46 = a1[2];
                      v47 = v45 + v46 * v36;
                      LOBYTE(v43) = *(v47 + v35);
                      v48 = v40 - *&v44;
                      LOBYTE(v44) = *(v47 + v37);
                      v49 = v45 + v46 * v41;
                      LOBYTE(v38) = *(v49 + v35);
                      LOBYTE(v39) = *(v49 + v37);
                      v29 = v29 + ((v48 * (((v34 - v35) * LODWORD(v39)) + ((1.0 - (v34 - v35)) * LODWORD(v38)))) + ((1.0 - v48) * (((v34 - v35) * v44) + ((1.0 - (v34 - v35)) * v43))));
                      *&v20[v21] = v29;
                      ++v25;
                    }
                  }
                }
              }
            }
          }

          ++v30;
        }

        while (v24 != v30);
        if (v25 > 1)
        {
          *&v20[v21] = v29 / v25;
        }
      }

      ++v21;
    }

    while (v21 != v19);
  }

  *a3 = v20;
  return v19;
}

uint64_t sub_26155BF54(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, std::string::size_type a5, size_t *a6, const char *a7)
{
  v7 = 0;
  v204 = *MEMORY[0x277D85DE8];
  if (a3 > 0xA8C)
  {
    return v7;
  }

  v9 = a2;
  if (a2 >= a3)
  {
    return v7;
  }

  v13 = a2;
  do
  {
    if (*(a1 + 2 * v13) > 0x3A0u)
    {
      return 0;
    }

    ++v13;
  }

  while (a3 != v13);
  pthread_once(&stru_27FEB40E0, sub_26155D2F8);
  if (a7)
  {
    v14 = a7;
  }

  else
  {
    v14 = "ISO-8859-1";
  }

  v15 = MEMORY[0x266704AD0]("UTF-8", v14);
  if (v15 == -1)
  {
    if (qword_27FEB4220 != -1)
    {
      dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
    }

    v16 = qword_27FEB4218;
    if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
    {
      v168 = *__error();
      *buf = 136446722;
      *&buf[4] = "UTF-8";
      v194 = 2082;
      v195 = v14;
      v196 = 1026;
      v197 = v168;
      _os_log_error_impl(&dword_26146F000, v16, OS_LOG_TYPE_ERROR, "[PDF417] iconv_open(%{public}s, %{public}s) failed: %{public, errno}d", buf, 0x1Cu);
    }

    v15 = -1;
  }

  v177 = a6;
  v17 = 0;
  v181 = 0;
  __n = 0;
  i = 0;
  v179 = 0;
  v19 = 0;
  __src[87] = 0;
  v20 = a5 - 1;
  v21 = 3;
  v22 = 3;
  while (2)
  {
    if (a3 <= v9 || (v23 = v20 - v17, v20 <= v17))
    {
      if (i)
      {
        v160 = v17 >> 1;
        v161 = v17;
        v82 = v17 >= 2;
        v158 = a4;
        v162 = v177;
        if (v82)
        {
          v163 = a4;
          v164 = v160;
          do
          {
            *v163 = bswap32(*v163) >> 16;
            v163 += 2;
            --v164;
          }

          while (v164);
        }

        v165 = v15;
        if (v161)
        {
          *&a4[2 * v160] = a4[v161 - 1] << 8;
        }

        v159 = sub_2614E14AC(a4, 8 * v161, a4, a5);
        v15 = v165;
      }

      else
      {
        v159 = v17;
        v158 = a4;
LABEL_362:
        v162 = v177;
      }

      if (v159 >= v20)
      {
        v166 = v20;
      }

      else
      {
        v166 = v159;
      }

      if (v162)
      {
        *v162 = v166;
      }

      v158[v166] = 0;
      v7 = 1;
      goto LABEL_369;
    }

    v24 = (a1 + 2 * v9);
    v25 = *v24;
    switch(*v24)
    {
      case 0x384u:
        LODWORD(v181) = 0;
        v179 = 0;
        v19 = 0;
        goto LABEL_19;
      case 0x385u:
        v19 = 1;
        goto LABEL_19;
      case 0x386u:
        v19 = 3;
        goto LABEL_19;
      case 0x387u:
      case 0x388u:
      case 0x389u:
      case 0x38Au:
      case 0x38Bu:
      case 0x38Cu:
      case 0x38Du:
      case 0x38Eu:
      case 0x38Fu:
      case 0x390u:
      case 0x392u:
      case 0x393u:
      case 0x394u:
      case 0x395u:
      case 0x396u:
      case 0x397u:
      case 0x39Bu:
        goto LABEL_19;
      case 0x391u:
        if (v19)
        {
          goto LABEL_352;
        }

        v50 = 4;
        goto LABEL_67;
      case 0x398u:
        i = 1;
        goto LABEL_19;
      case 0x399u:
        if (v9 != 1)
        {
          goto LABEL_352;
        }

        goto LABEL_19;
      case 0x39Au:
        BYTE4(v181) = 0;
        goto LABEL_19;
      case 0x39Cu:
        goto LABEL_169;
      case 0x39Du:
        if (++v9 >= a3)
        {
          goto LABEL_352;
        }

        v49 = *(a1 + 2 * v9);
        if (v49 > 0x383)
        {
          goto LABEL_352;
        }

        v21 = v49 + 810900;
        goto LABEL_19;
      case 0x39Eu:
        v9 += 2;
        if (v9 >= a3)
        {
          goto LABEL_352;
        }

        v62 = v24[1];
        if (v62 > 0x383)
        {
          goto LABEL_352;
        }

        v63 = *(a1 + 2 * v9);
        if (v63 >= 0x384)
        {
          goto LABEL_352;
        }

        v21 = v63 + 900 * v62 + 900;
        goto LABEL_19;
      case 0x39Fu:
        if (++v9 >= a3)
        {
          goto LABEL_352;
        }

        v21 = *(a1 + 2 * v9);
        if (v21 > 0x383)
        {
          goto LABEL_352;
        }

        goto LABEL_19;
      case 0x3A0u:
        v9 += 2;
        BYTE4(v181) = 1;
        goto LABEL_19;
      default:
        if (!v19)
        {
          if (v181 == 4)
          {
            if (v25 <= 255)
            {
              v19 = 0;
              __src[__n++] = v25;
              v50 = v179;
LABEL_67:
              LODWORD(v181) = v50;
              goto LABEL_19;
            }

            goto LABEL_352;
          }

          LODWORD(v88) = (((34953 * v25) >> 16) >> 4) + (((v25 + ((-30583 * v25) >> 16)) & 0x8000) >> 15);
          v89 = v25 - 30 * v88;
          LOBYTE(v19) = 1;
          while (1)
          {
            v90 = v19;
            if (v181 <= 1)
            {
              if (v181)
              {
                if (v88 > 26)
                {
                  LODWORD(v88) = v88;
                  v99 = v88 != 27;
                  if (v88 == 28)
                  {
                    v99 = 2;
                  }

                  v100 = v179;
                  if (v88 == 28)
                  {
                    v101 = 2;
                  }

                  else
                  {
                    v101 = v179;
                  }

                  goto LABEL_216;
                }

                v88 = v88;
                v91 = "abcdefghijklmnopqrstuvwxyz ";
              }

              else
              {
                if (v88 > 26)
                {
                  LODWORD(v88) = v88;
                  v99 = v88 == 27;
                  v100 = v179;
                  if (v88 == 27)
                  {
                    v101 = 1;
                  }

                  else
                  {
                    v101 = v179;
                  }

                  if (v88 == 28)
                  {
                    v99 = 2;
                    v101 = 2;
                  }

LABEL_216:
                  v102 = v88 == 29;
                  if (v88 == 29)
                  {
                    v103 = 3;
                  }

                  else
                  {
                    v103 = v99;
                  }

                  LODWORD(v181) = v103;
                  if (!v102)
                  {
                    v100 = v101;
                  }

                  v179 = v100;
                  goto LABEL_224;
                }

                v88 = v88;
                v91 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
              }

              goto LABEL_223;
            }

            if (v181 == 2)
            {
              break;
            }

            if (v88 != 29)
            {
              v88 = v88;
LABEL_223:
              __src[__n++] = v91[v88];
              LODWORD(v181) = v179;
              goto LABEL_224;
            }

            LODWORD(v181) = 0;
            v179 = 0;
LABEL_224:
            v19 = 0;
            LOWORD(v88) = v89;
            if ((v90 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          if (v88 >= 27 || v88 == 25)
          {
            if (v88 == 29)
            {
              v92 = 3;
            }

            else
            {
              v92 = 2;
            }

            if (v88 == 28)
            {
              v92 = 0;
            }

            v93 = v179;
            if (v88 == 28)
            {
              v94 = 0;
            }

            else
            {
              v94 = v179;
            }

            if (v88 == 27)
            {
              v95 = 1;
            }

            else
            {
              v95 = 2;
            }

            if (v88 == 27)
            {
              v93 = 1;
            }

            if (v88 == 25)
            {
              v95 = 3;
              v93 = 3;
            }

            v96 = v88 <= 0x1Bu;
            if (v88 <= 0x1Bu)
            {
              v97 = v95;
            }

            else
            {
              v97 = v92;
            }

            LODWORD(v181) = v97;
            if (v96)
            {
              v98 = v93;
            }

            else
            {
              v98 = v94;
            }

            v179 = v98;
            goto LABEL_224;
          }

          v88 = v88;
          v91 = "0123456789&\r\t,:#-.$/+%*=^";
          goto LABEL_223;
        }

        if ((v19 - 1) > 1)
        {
          if (v19 != 3)
          {
LABEL_169:
            v19 = 2;
            goto LABEL_19;
          }

          v187 = 0x800000000;
          __dst = buf;
          *v201 = 0x800000000;
          v202 = v198;
          v185 = 0x800000000;
          v186 = &v199;
          v183 = 0x800000000;
          v184 = &v200;
          v176 = v17;
          if (v25)
          {
            LODWORD(v187) = 1;
          }

          v171 = v22;
          v172 = i;
          *buf = v25;
          v66 = v9 + 1;
          v174 = v15;
          if (v9 + 1 >= a3)
          {
            v105 = v15;
            v106 = v198;
            v67 = 1;
            v17 = v176;
            goto LABEL_242;
          }

          v67 = 1;
          while (1)
          {
            if (v67 > 0xE || *(a1 + 2 * v66) > 0x383u)
            {
              goto LABEL_241;
            }

            v68 = v187;
            if (!v187)
            {
              goto LABEL_166;
            }

            v69 = __dst;
            v70 = v187 >= 0 ? v187 : -v187;
            while (!*v69)
            {
              ++v69;
              if (!--v70)
              {
                goto LABEL_166;
              }
            }

            if (v187 < 0)
            {
              v68 = -v187;
            }

            v173 = v68;
            v71 = 4 * (v68 + 1);
            v72 = off_27FEB4370(qword_27FEB4378, 0, v71);
            if (!v72)
            {
              goto LABEL_166;
            }

            v73 = v72;
            bzero(v72, v71);
            v74 = __dst;
            v75 = v187;
            if (v187)
            {
              v76 = 0;
              if (((v187 & 0x40000000) != 0) ^ __OFSUB__(v187, -v187) | (v187 == -v187))
              {
                v75 = -v187;
              }

              v77 = v73;
              v78 = __dst;
              do
              {
                v79 = *v78++;
                v80 = 900 * v79;
                v81 = HIDWORD(v80);
                v82 = __CFADD__(*v77, v80);
                v83 = *v77 + v80;
                v84 = v82;
                v82 = __CFADD__(v83, v76);
                v85 = v83 + v76;
                v76 = v81 + v82 + v84;
                *v77++ = v85;
                --v75;
              }

              while (v75);
              v73[v173] = v76;
              if (v76)
              {
                if ((v187 & 0x80000000) != 0)
                {
                  v86 = v187 - 1;
                }

                else
                {
                  v86 = v187 + 1;
                }

                goto LABEL_160;
              }
            }

            else
            {
              v73[v173] = 0;
            }

            v86 = v187;
LABEL_160:
            if (v73 != v74)
            {
              if (v86 >= 0)
              {
                v87 = v86;
              }

              else
              {
                v87 = -v86;
              }

              memcpy(v74, v73, 4 * v87);
              LODWORD(v187) = v86;
            }

            off_27FEB4368(qword_27FEB4378);
LABEL_166:
            sub_26152E6AC(*(a1 + 2 * v66), &v187);
            v66 = ++v67 + v9;
            v15 = v174;
            if (v67 == a3 - v9)
            {
              v67 = a3 - v9;
LABEL_241:
              v105 = v15;
              v106 = v202;
              v17 = v176;
              v20 = a5 - 1;
LABEL_242:
              v9 = v9 + v67 - 1;
              *v106 = 10;
              *v201 = 1;
              sub_26152F504(v201, &v185);
              v117 = 0;
              v118 = __n;
              v15 = v105;
              while (2)
              {
                v119 = v187;
                if (!v187)
                {
                  goto LABEL_352;
                }

                v120 = 0;
                i = __dst;
                if (((v187 & 0x4000000000000000) != 0) ^ __OFSUB__(v187, -v187) | (v187 == -v187))
                {
                  v121 = -v187;
                }

                else
                {
                  LODWORD(v121) = v187;
                }

                while (!*(__dst + v120))
                {
                  if (v121 == ++v120)
                  {
                    if (v187 != 1 || *__dst != 1)
                    {
                      goto LABEL_352;
                    }

LABEL_343:
                    if (v118 <= __n)
                    {
                      v19 = 3;
                      __n = v118;
                      i = v172;
                    }

                    else
                    {
                      v156 = v118 - 1;
                      for (i = v172; v156 > __n; ++__n)
                      {
                        v157 = __src[v156];
                        __src[v156] = __src[__n];
                        __src[__n] = v157;
                        --v156;
                      }

                      v19 = 3;
                      __n = v118;
                    }

                    v22 = v171;
                    goto LABEL_19;
                  }
                }

                if (v187 == 1 && *__dst == 1)
                {
                  goto LABEL_343;
                }

                if (__dst != v184)
                {
                  if (v187 < 0)
                  {
                    v119 = -v187;
                  }

                  memcpy(v184, __dst, 4 * v119);
                  v117 = v187;
                  LODWORD(v183) = v187;
                }

                v122 = v117;
                v123 = sub_26152E580(v185, v186);
                v124 = *v201;
                if (*v201 < 0)
                {
                  v124 = -*v201;
                }

                v170 = v122;
                if (v122 >= 0)
                {
                  v125 = v122;
                }

                else
                {
                  v125 = -v122;
                }

                v126 = v125 + 4 * v124;
                v191 = 0;
                v192 = 0;
                if (v126)
                {
                  v192 = off_27FEB4370(qword_27FEB4378, 0, 4 * (v125 + 4 * v124));
                  if (v192)
                  {
                    HIDWORD(v191) = v126;
                    v127 = off_27FEB4370(qword_27FEB4378, 0, 4 * v126);
                    if (!v127)
                    {
                      v128 = 0;
                      goto LABEL_280;
                    }

LABEL_266:
                    v169 = v127;
                    LODWORD(v183) = v125;
                    do
                    {
                      if (v184 != v192)
                      {
                        v129 = v183;
                        if (v183 >= 0)
                        {
                          v130 = v183;
                        }

                        else
                        {
                          v130 = -v183;
                        }

                        memcpy(v192, v184, 4 * v130);
                        LODWORD(v191) = v129;
                      }

                      if (v123 == 1)
                      {
                        v131 = 1;
                        sub_26152ED28(1u, &v191);
                      }

                      else
                      {
                        sub_26152EE90((v123 - 2), &v191);
                        v131 = v123;
                      }

                      sub_26152EF90(&v185, &v191);
                      sub_26152EE90(v131, &v191);
                      sub_26152EF90(v201, &v191);
                      sub_26152EBD4(&v191, &v183);
                      v132 = *v201;
                      v133 = v202;
                      if ((sub_26152E5EC(&v183, *v201, v202) & 0x80000000) == 0)
                      {
                        sub_26152EBD4(v201, &v183);
                        v132 = *v201;
                        v133 = v202;
                      }
                    }

                    while ((sub_26152E5EC(&v183, v132, v133) & 0x80000000) == 0);
                    if (v170 < 0)
                    {
                      v128 = v169;
                      if (v183)
                      {
                        v149 = v184;
                        if (v183 >= 0)
                        {
                          v150 = v183;
                        }

                        else
                        {
                          v150 = -v183;
                        }

                        while (!*v149)
                        {
                          ++v149;
                          if (!--v150)
                          {
                            goto LABEL_280;
                          }
                        }

                        LODWORD(v183) = -v183;
                        sub_26152E758(v201, &v183);
                      }
                    }

                    else
                    {
                      v128 = v169;
                    }

LABEL_280:
                    if (v192)
                    {
                      off_27FEB4368(qword_27FEB4378);
                    }

                    v191 = 0;
                    v192 = 0;
                    if (v128)
                    {
                      off_27FEB4368(qword_27FEB4378);
                    }
                  }

                  v134 = sub_26152E580(v185, v186);
                  v135 = v187;
                  if (v187)
                  {
                    v136 = __dst;
                    if (v187 >= 0)
                    {
                      v137 = v187;
                    }

                    else
                    {
                      v137 = -v187;
                    }

                    while (!*v136)
                    {
                      ++v136;
                      if (!--v137)
                      {
                        goto LABEL_290;
                      }
                    }

                    if (v187 < 1)
                    {
                      v138 = -1;
                    }

                    else
                    {
                      v138 = 1;
                    }
                  }

                  else
                  {
LABEL_290:
                    v138 = 0;
                  }

                  v139 = *v201;
                  if (*v201 < 0)
                  {
                    v139 = -*v201;
                  }

                  if (v187 < 0)
                  {
                    v135 = -v187;
                  }

                  v140 = v135 + 4 * v139;
                  v189 = 0;
                  v190 = 0;
                  v191 = 0;
                  v192 = 0;
                  v192 = off_27FEB4370(qword_27FEB4378, 0, 4 * v140);
                  if (v192)
                  {
                    HIDWORD(v191) = v140;
                    v141 = off_27FEB4370(qword_27FEB4378, 0, 4 * v140);
                    v190 = v141;
                    if (v141)
                    {
                      v142 = (2 * v134 - 2);
                      HIDWORD(v189) = v140;
                      v143 = v187;
                      if (v187 < 0)
                      {
                        v143 = -v187;
                      }

                      LODWORD(v187) = v143;
                      *v141 = 0;
                      do
                      {
                        sub_26152F164(&v187, &v185, &v191);
                        sub_26152EE90(v142, &v191);
                        sub_26152E758(&v191, &v189);
                        sub_26152EF90(v201, &v191);
                        sub_26152EBD4(&v191, &v187);
                        v144 = *v201;
                        v145 = v202;
                        if ((sub_26152E5EC(&v187, *v201, v202) & 0x80000000) == 0)
                        {
                          sub_26152EBD4(v201, &v187);
                          sub_26152E6AC(1, &v189);
                          v144 = *v201;
                          v145 = v202;
                        }
                      }

                      while ((sub_26152E5EC(&v187, v144, v145) & 0x80000000) == 0);
                      v146 = v190;
                      if (v190 == __dst)
                      {
                        v147 = v187;
                      }

                      else
                      {
                        v147 = v189;
                        if (v189 >= 0)
                        {
                          v148 = v189;
                        }

                        else
                        {
                          v148 = -v189;
                        }

                        memcpy(__dst, v190, 4 * v148);
                      }

                      LODWORD(v187) = v147 * v138;
                    }

                    else
                    {
                      v146 = 0;
                    }

                    i = v192;
                    if (v192)
                    {
                      off_27FEB4368(qword_27FEB4378);
                    }

                    v191 = 0;
                    v192 = 0;
                    if (v146)
                    {
                      off_27FEB4368(qword_27FEB4378);
                    }
                  }

                  v117 = v183;
                  if (v183)
                  {
                    v151 = 0;
                    v152 = v183;
                    v153 = v184;
                    if (v183 <= -v183)
                    {
                      v152 = -v183;
                    }

                    v15 = v174;
                    while (!*(v184 + v151))
                    {
                      if (v152 == ++v151)
                      {
                        goto LABEL_336;
                      }
                    }

                    if ((v183 & 0x80000000) != 0)
                    {
LABEL_336:
                      LOBYTE(v154) = 48;
                    }

                    else
                    {
                      v155 = v183;
                      if (sub_26152E580(v183, v184) <= 0x20)
                      {
                        v154 = (v153[v155 - (v155 - 1) - 1] % 0xAu) | 0x30;
                      }

                      else
                      {
                        LOBYTE(v154) = 48;
                      }

                      v15 = v174;
                      v117 = v155;
                    }
                  }

                  else
                  {
                    LOBYTE(v154) = 48;
                    v15 = v174;
                  }

                  __src[v118++] = v154;
                  v17 = v176;
                  v20 = a5 - 1;
                  continue;
                }

                break;
              }

              v127 = 0;
              goto LABEL_266;
            }
          }
        }

        v51 = 0;
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          v52 = v24[v51];
          if (v52 > 0x383)
          {
            v54 = 1;
            v53 = v51;
LABEL_123:
            v64 = v53 % 5;
            if (v19 != 2 || !v64)
            {
              if (v19 != 1)
              {
                v54 = 0;
              }

              if (!v64 && !v54)
              {
                v65 = v53;
                goto LABEL_234;
              }

              if (v53)
              {
                goto LABEL_235;
              }

              goto LABEL_237;
            }

            goto LABEL_352;
          }

          *&buf[2 * v51] = v52;
          v53 = v51 + 1;
          v54 = v51 < 4;
          if (v51 > 3)
          {
            break;
          }

          v55 = v9 + 1 + v51++;
        }

        while (v55 < a3);
        if (v19 != 1 || v53 != 5)
        {
          goto LABEL_123;
        }

        v56 = v9 + 5;
        if (v9 + 5 >= a3)
        {
          v60 = 0;
          goto LABEL_232;
        }

        v57 = 5;
        while (2)
        {
          v58 = *(a1 + 2 * v56);
          if (v58 >= 900)
          {
            v59 = *(a1 + 2 * v56);
            if (v58 - 903 >= 0xA)
            {
              v60 = 1;
              if (v59 <= 918)
              {
                if (v59 <= 917 && (v59 - 914) >= 4)
                {
                  if ((v59 - 900) < 3 || v59 == 913)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_101;
                }
              }

              else
              {
                if (v59 > 924)
                {
                  if (v59 > 926)
                  {
                    if (v59 == 927)
                    {
                      v57 += 2;
                    }

                    else if (v59 == 928)
                    {
                      goto LABEL_231;
                    }
                  }

                  else
                  {
                    v61 = v57 + 2;
                    if (v59 == 926)
                    {
                      v57 += 3;
                    }

                    if (v59 == 925)
                    {
                      v57 = v61;
                    }
                  }

                  goto LABEL_101;
                }

                if (v59 > 920)
                {
                  if ((v59 - 922) < 3)
                  {
                    goto LABEL_231;
                  }

                  if (v59 == 921)
                  {
                    goto LABEL_352;
                  }

                  goto LABEL_101;
                }
              }
            }

            ++v57;
LABEL_101:
            v56 = v57 + v9;
            if (v57 + v9 >= a3)
            {
              break;
            }

            continue;
          }

          break;
        }

        v60 = 0;
LABEL_231:
        v56 = v57 + v9;
LABEL_232:
        v53 = 5;
        if (v56 < a3)
        {
          v65 = 5;
          if ((v60 & 1) == 0)
          {
LABEL_234:
            v107 = 656100000000 * *buf + 729000000 * *&buf[2] + 810000 * *&buf[4] + 900 * *&buf[6] + *&buf[8];
            v108 = &__src[__n];
            v109 = vdupq_n_s64(v107);
            v110 = vmovn_s64(vshlq_u64(v109, xmmword_261561130));
            v111 = vshlq_u64(v109, xmmword_261561120);
            *v111.i8 = vmovn_s64(v111);
            v111.i16[1] = v111.i16[2];
            v111.i16[2] = v110.i16[0];
            v111.i16[3] = v110.i16[2];
            *v108 = vmovn_s16(v111).u32[0];
            v108[4] = BYTE1(v107);
            __n += 6;
            v108[5] = v107;
            v53 = v65;
            goto LABEL_237;
          }
        }

LABEL_235:
        v112 = buf;
        v113 = v53;
        do
        {
          v114 = *v112;
          v112 += 2;
          __src[__n++] = v114;
          --v113;
        }

        while (v113);
LABEL_237:
        v82 = v53 != 0;
        v115 = v53 - 1;
        if (!v82)
        {
          v115 = 0;
        }

        v9 += v115;
LABEL_19:
        if (v21 != v22)
        {
          if (v15 != -1)
          {
            v26 = i;
            v27 = v19;
            MEMORY[0x266704AC0](v15);
            v19 = v27;
            i = v26;
          }

          v28 = &dword_279AD97D8;
          v29 = 32;
          while (*v28 != v21)
          {
            v28 += 4;
            if (!--v29)
            {
              __n = 0;
              v15 = -1;
              v22 = v21;
              goto LABEL_36;
            }
          }

          v30 = v17;
          v31 = *(v28 + 1);
          if (v31)
          {
            v32 = v19;
            v33 = i;
            v34 = MEMORY[0x266704AD0]("UTF-8", *(v28 + 1));
            if (v34 == -1)
            {
              if (qword_27FEB4220 != -1)
              {
                dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
              }

              v35 = qword_27FEB4218;
              if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
              {
                v104 = *__error();
                *buf = 136446722;
                *&buf[4] = "UTF-8";
                v194 = 2082;
                v195 = v31;
                v196 = 1026;
                v197 = v104;
                _os_log_error_impl(&dword_26146F000, v35, OS_LOG_TYPE_ERROR, "[PDF417] iconv_open(%{public}s, %{public}s) failed: %{public, errno}d", buf, 0x1Cu);
              }

              __n = 0;
              v15 = -1;
            }

            else
            {
              v15 = v34;
              __n = 0;
            }

            v17 = v30;
            v20 = a5 - 1;
            i = v33;
            v22 = v21;
            v19 = v32;
          }

          else
          {
            __n = 0;
            v15 = -1;
            v22 = v21;
            v17 = v30;
            v20 = a5 - 1;
          }
        }

LABEL_36:
        if ((v181 & 0x100000000) != 0)
        {
          __n = 0;
          goto LABEL_57;
        }

        if (i)
        {
          if (__n)
          {
            v43 = v22;
            v44 = v15;
            v45 = v20;
            v46 = v19;
            memcpy(&a4[v17], __src, __n);
            v22 = v43;
            v19 = v46;
            v20 = v45;
            v15 = v44;
            v36 = 0;
            v17 += __n;
            i = 1;
            __n = 0;
          }

          else
          {
            __n = 0;
            v36 = 0;
            i = 1;
          }

          goto LABEL_58;
        }

        if (v15 == -1)
        {
          __n = 0;
        }

        else
        {
          v37 = v22;
          v38 = v19;
          *buf = __src;
          v191 = __n;
          v39 = v17;
          v40 = &a4[v17];
          v189 = v40;
          v187 = v23;
          v41 = v15;
          v42 = MEMORY[0x266704AB0](v15, buf, &v191, &v189, &v187);
          v17 = v189 - v40 + v39;
          if (v42 != -1)
          {
            goto LABEL_43;
          }

          v47 = *__error();
          if (v47 == 7)
          {
            v36 = 31;
LABEL_118:
            i = 0;
            v15 = v41;
            v19 = v38;
            v22 = v37;
            goto LABEL_58;
          }

          if (v47 != 22)
          {
            v175 = v17;
            if (qword_27FEB4220 != -1)
            {
              dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
            }

            v48 = qword_27FEB4218;
            if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
            {
              v116 = *__error();
              *v201 = 67240192;
              *&v201[4] = v116;
              v36 = 8;
              _os_log_error_impl(&dword_26146F000, v48, OS_LOG_TYPE_ERROR, "[PDF417] iconv failed: %{public, errno}d", v201, 8u);
            }

            else
            {
              v36 = 8;
            }

            v17 = v175;
            v20 = a5 - 1;
            goto LABEL_118;
          }

LABEL_43:
          if (v191)
          {
            __memmove_chk();
            __n = v191;
          }

          else
          {
            __n = 0;
          }

          v15 = v41;
          v19 = v38;
          v22 = v37;
        }

        i = 0;
LABEL_57:
        v36 = 0;
LABEL_58:
        ++v9;
        if (!v36)
        {
          continue;
        }

        v158 = a4;
        if (v36 != 8)
        {
          v159 = v17;
          goto LABEL_362;
        }

LABEL_352:
        v7 = 0;
LABEL_369:
        if (v15 != -1)
        {
          MEMORY[0x266704AC0](v15, i);
        }

        return v7;
    }
  }
}

double sub_26155D2F8()
{
  zone = malloc_create_zone(0, 0);
  qword_27FEB43F0 = zone;
  if (!zone)
  {
    perror("malloc_create_zone");
    zone = qword_27FEB43F0;
  }

  result = *&xmmword_2873D0608;
  unk_27FEB4360 = xmmword_2873D0608;
  off_27FEB4370 = off_2873D0618;
  qword_27FEB4378 = zone;
  return result;
}

FFTSetup sub_26155D384(uint64_t a1, vDSP_Length __Log2n)
{
  v2 = __Log2n;
  *a1 = 1 << __Log2n;
  *(a1 + 4) = __Log2n;
  v4 = *(a1 + 8);
  if (v4)
  {
    vDSP_destroy_fftsetup(v4);
  }

  result = vDSP_create_fftsetup(v2, 0);
  *(a1 + 8) = result;
  return result;
}

FFTSetup sub_26155D3D0()
{
  v0 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  qword_27FEB43F8 = v0;
  v0[1] = 0;

  return sub_26155D384(v0, 0xDuLL);
}

uint64_t sub_26155D41C(float *a1, float *a2, float *a3, float *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v12 = a7 - a5;
  v13 = a8 - a6;
  v14 = a11 - a9;
  v15 = a12 - a10;
  v16 = (v12 * (a12 - a10)) - (v14 * v13);
  if (v16 == 0.0)
  {
    return 0;
  }

  v18 = a5 - a9;
  v19 = a6 - a10;
  v20 = ((v12 * v19) - (v13 * v18)) / v16;
  v21 = ((v14 * v19) - (v15 * v18)) / v16;
  v23 = v21 >= 0.0 && v20 >= 0.0;
  *a1 = a5 + (v21 * v12);
  *a2 = a6 + (v21 * v13);
  if (v21 <= 1.0 && v23 && v20 <= 1.0)
  {
    result = 2;
  }

  else
  {
    result = 1;
  }

  *a3 = v21;
  *a4 = v20;
  return result;
}

uint64_t sub_26155D4B4(float *a1, float *a2, float *a3, float *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  *a1 = a5;
  *a2 = a6;
  *a3 = a7;
  *a4 = a8;
  if (a5 >= a9 && a5 <= a10 && a8 >= a11 && a8 <= a12 && a7 >= a9 && a7 <= a10 && a6 >= a11 && a6 <= a12)
  {
    return 1;
  }

  v58[1] = v21;
  v58[2] = v20;
  v58[3] = v19;
  v58[4] = v18;
  v58[5] = v17;
  v58[6] = v16;
  v58[7] = v15;
  v58[8] = v14;
  v58[17] = v12;
  v58[18] = v13;
  v57 = 0;
  v58[0] = 0;
  v55 = 0;
  v56 = 0;
  v42 = sub_26155D41C(v58 + 1, v58, &v54, &v53, a9, a11, a9, a12, a5, a6, a7, a8);
  v43 = sub_26155D41C(&v57 + 1, &v57, &v52, &v51, a10, a11, a10, a12, a5, a6, a7, a8);
  v44 = sub_26155D41C(&v56 + 1, &v56, &v50, &v49, a9, a11, a10, a11, a5, a6, a7, a8);
  v45 = sub_26155D41C(&v55 + 1, &v55, &v48, &v47, a9, a12, a10, a12, a5, a6, a7, a8);
  v29 = 0;
  if (v42 == 2)
  {
    if (a7 < a9 || a5 >= a9)
    {
      *a3 = *(v58 + 1);
      *a4 = *v58;
    }

    else
    {
      *a1 = *(v58 + 1);
      *a2 = *v58;
    }

    v29 = 1;
  }

  if (v43 == 2)
  {
    if (a7 > a10 || a5 <= a10)
    {
      *a3 = *(&v57 + 1);
      *a4 = v57;
    }

    else
    {
      *a1 = *(&v57 + 1);
      *a2 = v57;
    }

    v29 = 1;
  }

  if (v44 == 2)
  {
    if (a8 < a11 || a6 >= a11)
    {
      *a3 = *(&v56 + 1);
      *a4 = v56;
    }

    else
    {
      *a1 = *(&v56 + 1);
      *a2 = v56;
    }

    v29 = 1;
  }

  if (v45 == 2)
  {
    if (a8 > a12 || a6 <= a12)
    {
      *a3 = *(&v55 + 1);
      *a4 = v55;
    }

    else
    {
      *a1 = *(&v55 + 1);
      *a2 = v55;
    }

    return 1;
  }

  return v29;
}

float sub_26155D75C(float *a1, float *a2, float *a3, float *a4, float result, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v13.f32[0] = a8 - a6;
  v14.f32[0] = a7 - result;
  if ((a7 - result) != 0.0 || v13.f32[0] != 0.0)
  {
    if (a6 < a11 || (v13.f32[0] == 0.0 ? (v15 = a6 > a12) : (v15 = 1), v15))
    {
      if (result < a9 || (v14.f32[0] == 0.0 ? (v18 = result > a10) : (v18 = 1), v18))
      {
        v20 = 0;
        v21 = &v43;
        v22 = &v45;
        v23 = v49;
        v47 = a9;
        v48 = a10;
        v49[0] = 0;
        v44 = 0;
        v45 = a11;
        v46 = a12;
        v42 = -1;
        v43 = -1;
        v24 = -1;
        v25 = &v47;
        v26 = &v44;
        v27 = &v42;
        v28 = 1;
        do
        {
          v29 = v28;
          if (*v27 == -1)
          {
            *v12.i32 = (a6 - ((v13.f32[0] / v14.f32[0]) * result)) + ((v13.f32[0] / v14.f32[0]) * *v25);
            *v26 = v12.i32[0];
            v30 = *v12.i32 >= a11;
            if (*v12.i32 > a12)
            {
              v30 = 0;
            }

            *v27 = v30;
            v12 = vceq_f32(vdup_lane_s32(v12, 0), __PAIR64__(LODWORD(a12), LODWORD(a11)));
            v24 = vbic_s8(v24, v12);
            v20 += v30;
          }

          v28 = 0;
          v27 = (&v42 + 4);
          v26 = (&v44 + 4);
          v25 = &v48;
        }

        while ((v29 & 1) != 0);
        v31 = 0;
        v43 = v24;
        result = result - ((v14.f32[0] / v13.f32[0]) * a6);
        do
        {
          v32 = v31;
          if (*v21 == -1)
          {
            v33 = result + ((v14.f32[0] / v13.f32[0]) * *v22);
            *v23 = v33;
            v34 = v33 >= a9;
            if (v33 > a10)
            {
              v34 = 0;
            }

            *v21 = v34;
            v20 += v34;
          }

          v31 = 1;
          v21 = (&v43 + 4);
          v22 = &v46;
          v23 = v49 + 1;
        }

        while ((v32 & 1) == 0);
        if (v20 == 2)
        {
          v35 = 0;
          while (!*(&v42 + v35))
          {
            if (++v35 == 4)
            {
              goto LABEL_45;
            }
          }

          *a1 = *(&v47 + v35);
          *a2 = *(&v44 + v35);
LABEL_45:
          v36 = v35;
          if (v35 <= 3)
          {
            v35 = 3;
          }

          else
          {
            v35 = v35;
          }

          while (v35 != v36)
          {
            v37 = v36 + 1;
            if (*(&v42 + ++v36))
            {
              *a3 = *(&v47 + v37);
              *a4 = *(&v44 + v37);
              break;
            }
          }

          result = *a3;
          v39 = *a1;
          v14.f32[1] = *a3 - *a1;
          v40 = vsub_s32(vcltz_f32(v14), vcgtz_f32(v14));
          if ((vceq_s32(vand_s8(v40, 0xFF000000FFLL), vand_s8(vdup_lane_s32(v40, 1), 0xFF000000FFLL)).u8[0] & 1) == 0 || (v13.f32[1] = *a4 - *a2, v41 = vsub_s32(vcltz_f32(v13), vcgtz_f32(v13)), (vceq_s32(vand_s8(v41, 0xFF000000FFLL), vand_s8(vdup_lane_s32(v41, 1), 0xFF000000FFLL)).u8[0] & 1) == 0))
          {
            *a1 = result;
            *a3 = v39;
            result = *a2;
            *a2 = *a4;
            *a4 = result;
          }
        }
      }

      else
      {
        *a1 = result;
        *a3 = a7;
        if (a6 >= a8)
        {
          result = a12;
        }

        else
        {
          result = a11;
        }

        if (a6 >= a8)
        {
          v19 = a11;
        }

        else
        {
          v19 = a12;
        }

        *a2 = result;
        *a4 = v19;
      }
    }

    else
    {
      *a2 = a6;
      *a4 = a8;
      v16 = result < a7;
      if (result >= a7)
      {
        result = a10;
      }

      else
      {
        result = a9;
      }

      if (v16)
      {
        v17 = a10;
      }

      else
      {
        v17 = a9;
      }

      *a1 = result;
      *a3 = v17;
    }
  }

  return result;
}

BOOL sub_26155DA58(_BOOL8 result, unint64_t a2, float *a3, unsigned int a4, float *a5, float *a6, float *a7)
{
  v7 = result;
  LODWORD(result) = 1;
  v8 = a4;
  do
  {
    v9 = result;
    v10 = *a5 - a3[5];
    v11 = ((a3[2] * 0.0) + (a3[1] * v10)) + a3[7];
    v12 = a3[8] - ((a3[4] * 0.0) + (a3[3] * v10));
    *a6 = v11;
    *a7 = v12;
    result = 0;
    if (v9 && v11 >= 0.0)
    {
      result = 0;
      if (v11 < v7 && v12 >= 0.0)
      {
        result = v12 < a2;
      }
    }

    ++a7;
    ++a6;
    ++a5;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t sub_26155DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float **a5, float *a6, float a7, float a8, float a9, float a10, float a11)
{
  v11 = a9 - a7;
  v12 = a10 - a8;
  v13 = (a9 - a7);
  v14 = (a10 - a8);
  if (!(v13 | v14))
  {
    return 0;
  }

  v26 = atan2f(a10 - a8, v11);
  v27 = vcvtms_s32_f32(sqrtf((v12 * v12) + (v11 * v11)));
  if ((v27 & 0x80000000) != 0)
  {
    return 0;
  }

  v90 = a3;
  v92 = a5;
  v93 = a9;
  v94 = a10;
  v28 = (a7 + a9) * 0.5;
  v95 = a8;
  v29 = (a8 + a10) * 0.5;
  v30 = v27 + 1;
  v91 = v26;
  v31 = __sincosf_stret(v26);
  v32 = -v31.__sinval;
  v33 = fmaxf(a11, 1.0);
  v34 = ceilf(v33);
  v35 = vcvtps_s32_f32(v33);
  v36 = malloc_type_calloc(v30, 4uLL, 0x100004052888210uLL);
  v37 = malloc_type_calloc(v30, 4uLL, 0x100004052888210uLL);
  v43 = v37;
  v44 = (v30 + -1.0) * 0.5;
  v45 = (v34 + -1.0) * 0.5;
  if (v13)
  {
    if (v14)
    {
      v46 = v94;
      if (v35 >= 1)
      {
        v47 = 0;
        v48 = a2 - 1;
        v49 = v90 - 1;
        do
        {
          v50 = 0;
          v51 = v45 - v47;
          v52 = v31.__sinval * v51;
          v53 = v31.__cosval * v51;
          do
          {
            v54 = v50 - v44;
            v55 = v28 + (v52 + (v31.__cosval * v54));
            v56 = vcvtmd_s64_f64(v55);
            if ((v56 & 0x80000000) == 0 && v48 >= v56)
            {
              v57 = vcvtpd_s64_f64(v55);
              if ((v57 & 0x80000000) == 0 && v48 >= v57)
              {
                v58 = v29 - (v53 + (v32 * v54));
                LODWORD(v38) = vcvtmd_s64_f64(v58);
                if ((v38 & 0x80000000) == 0 && v49 >= v38)
                {
                  LODWORD(v39) = vcvtpd_s64_f64(v58);
                  if ((v39 & 0x80000000) == 0 && v49 >= v39)
                  {
                    v59 = v55 - v56;
                    *&v60 = v38;
                    v61 = v58 - v38;
                    v62 = a1 + v38 * a4;
                    LOBYTE(v60) = *(v62 + v56);
                    LOBYTE(v40) = *(v62 + v57);
                    v38 = a1 + v39 * a4;
                    LOBYTE(v41) = *(v38 + v56);
                    v41 = LODWORD(v41);
                    LOBYTE(v42) = *(v38 + v57);
                    v42 = LODWORD(v42);
                    v63 = (v59 * LODWORD(v40)) + ((1.0 - v59) * v60);
                    v40 = 1.0 - v61;
                    v36[v50] = v36[v50] + ((v61 * ((v59 * v42) + ((1.0 - v59) * v41))) + ((1.0 - v61) * v63));
                    ++v37[v50];
                  }
                }
              }
            }

            ++v50;
          }

          while (v30 != v50);
          ++v47;
        }

        while (v47 != v35);
      }
    }

    else
    {
      v73 = (v95 - v35 / 2) & ~((v95 - v35 / 2) >> 31);
      if (v90 - 1 >= (v95 + v35 / 2))
      {
        v74 = v95 + v35 / 2;
      }

      else
      {
        v74 = v90 - 1;
      }

      v46 = v94;
      if (v74 >= v73)
      {
        v75 = a7;
        v76 = (a1 + a4 * v73 + a7);
        do
        {
          v77 = v76;
          v78 = v36;
          v79 = v37;
          v80 = v30;
          do
          {
            LOBYTE(v75) = *v77;
            v75 = *v78 + LODWORD(v75);
            *v78++ = v75;
            ++*v79++;
            v77 += (v11 > 0.0) - (v11 < 0.0);
            --v80;
          }

          while (v80);
          v76 += a4;
          v72 = v73++ == v74;
        }

        while (!v72);
      }
    }
  }

  else
  {
    v65 = (a7 - v35 / 2) & ~((a7 - v35 / 2) >> 31);
    if (a2 - 1 >= (a7 + v35 / 2))
    {
      v66 = a7 + v35 / 2;
    }

    else
    {
      v66 = a2 - 1;
    }

    v46 = v94;
    if (v66 >= v65)
    {
      v67 = v95;
      do
      {
        v68 = a1 + a4 * v95;
        v69 = v36;
        v70 = v37;
        v71 = v30;
        do
        {
          LOBYTE(v67) = *(v68 + v65);
          v67 = *v69 + LODWORD(v67);
          *v69++ = v67;
          ++*v70++;
          v68 += a4 * ((v12 > 0.0) - (v12 < 0.0));
          --v71;
        }

        while (v71);
        v72 = v65++ == v66;
      }

      while (!v72);
    }
  }

  v81 = 0;
  v82 = 0;
  do
  {
    v83 = v37[v81];
    if (v83 < 1)
    {
      ++v82;
    }

    else
    {
      v36[v81] = v36[v81] / v83;
    }

    ++v81;
  }

  while (v30 != v81);
  v64 = (v30 - v82);
  v84 = v45;
  if (v82 < 1 || v64 <= 0)
  {
    v86 = v36;
  }

  else
  {
    v85 = malloc_type_malloc(4 * (v30 - v82), 0x100004052888210uLL);
    v86 = v85;
    v87 = 0;
    v88 = 0;
    do
    {
      if (v43[v87] >= 1)
      {
        v85[v88++] = v36[v87];
      }

      ++v87;
    }

    while (v30 != v87);
    free(v36);
  }

  free(v43);
  if (!v64)
  {
    free(v86);
    v86 = 0;
  }

  *v92 = v86;
  *a6 = v91;
  a6[1] = v31.__cosval;
  a6[2] = v31.__sinval;
  a6[3] = v32;
  a6[4] = v31.__cosval;
  a6[5] = v44;
  a6[6] = v84;
  a6[7] = v28;
  a6[8] = v29;
  a6[9] = a7;
  a6[10] = v95;
  a6[11] = v93;
  a6[12] = v46;
  return v64;
}

uint64_t sub_26155DFDC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, float **a5, float *a6, float a7, float a8, float a9, float a10, float a11)
{
  result = 0;
  if (a2 >= 3 && a3 >= 3)
  {
    v19 = 0;
    v20 = 0;
    result = sub_26155D4B4(&v20 + 1, &v20, &v19 + 1, &v19, a7, a8, a9, a10, 1.0, (a2 - 2), 1.0, (a3 - 2));
    if (result)
    {
      return sub_26155DAEC(a1, a2, a3, a4, a5, a6, *(&v20 + 1), *&v20, *(&v19 + 1), *&v19, a11);
    }
  }

  return result;
}

uint64_t sub_26155E0A4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, float **a5, float *a6, float a7, float a8, float a9, float a10, float a11)
{
  result = 0;
  if (a2 >= 3 && a3 >= 3)
  {
    v21 = a9 * 0.5;
    v22 = __sincosf_stret(a10);
    v23 = 0;
    v24 = 0;
    result = sub_26155D4B4(&v24 + 1, &v24, &v23 + 1, &v23, a7 - (v21 * v22.__cosval), a8 - (v21 * v22.__sinval), (v21 * v22.__cosval) + a7, (v21 * v22.__sinval) + a8, 1.0, (a2 - 2), 1.0, (a3 - 2));
    if (result)
    {
      return sub_26155DAEC(a1, a2, a3, a4, a5, a6, *(&v24 + 1), *&v24, *(&v23 + 1), *&v23, a11);
    }
  }

  return result;
}

float *sub_26155E1A4(float *result, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = -INFINITY;
    v4 = INFINITY;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = *v5++;
      v8 = v7;
      if (v7 < v4)
      {
        v4 = v8;
      }

      if (v8 > v3)
      {
        v3 = v8;
      }

      --v6;
    }

    while (v6);
    v9 = v3 - v4;
    if (v9 == 0.0)
    {
      v10 = (a2 + 3) & 0xFFFFFFFC;
      v11 = vdupq_n_s64(a2 - 1);
      v12 = xmmword_261560F30;
      v13 = xmmword_261560F00;
      v14 = result + 2;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (vuzp1_s16(v16, *v11.i8).u8[0])
        {
          *(v14 - 2) = 1056964608;
        }

        if (vuzp1_s16(v16, *&v11).i8[2])
        {
          *(v14 - 1) = 1056964608;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
        {
          *v14 = 1056964608;
          v14[1] = 1056964608;
        }

        v12 = vaddq_s64(v12, v15);
        v13 = vaddq_s64(v13, v15);
        v14 += 4;
        v10 -= 4;
      }

      while (v10);
    }

    else
    {
      do
      {
        *result = ((*result - v4) / v9) + 0.0;
        ++result;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

float sub_26155E2BC(uint64_t a1, float *a2, unsigned int a3)
{
  v3 = *a2;
  v4 = 0.0;
  if (a3 >= 2)
  {
    for (i = 1; i != a3; v4 = v4 + (v6 * i++))
    {
      v6 = a2[i];
      v3 = v3 + v6;
    }
  }

  v7 = 1.0 / a3;
  if (a3)
  {
    v8 = 0;
    v9 = vcvts_n_f32_u32(a3 - 1, 1uLL);
    v10 = ((v7 * 0.16667) * ((a3 - 1) * a3 * (2 * a3 - 1))) - (v9 * v9);
    v11 = v3 * v7;
    v12 = v9;
    v13 = (v7 * v4 - v11 * v12) / v10;
    v14 = v11 - v13 * v12;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      v17 = v14 + v13 * v8;
      v18 = a2[v8] - v17;
      *(a1 + 4 * v8) = v18;
      v16 = v16 + v18;
      v15 = v15 + (v18 * v18);
      ++v8;
    }

    while (a3 != v8);
  }

  else
  {
    v16 = 0.0;
    v15 = 0.0;
  }

  return (v7 * v15) - (v16 * v16);
}

_DWORD *sub_26155E3B0(float *a1, signed int a2, int a3, int *a4, void **a5, void *a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v12 = 4 * a2;
  v13 = malloc_type_malloc(v12, 0x100004052888210uLL);
  v14 = malloc_type_malloc(v12, 0x100004052888210uLL);
  v15 = *a1;
  v16 = v15 * v15;
  *v13 = *a1;
  v17 = v15 * v15;
  *v14 = v17;
  if (a2 >= 2)
  {
    v18 = 2;
    v19 = 1;
    do
    {
      v20 = a1[v19];
      v15 = v15 + v20;
      v16 = v16 + v20 * v20;
      *&v20 = v15;
      v13[v19] = LODWORD(v20);
      *&v20 = v16;
      v14[v19] = *&v20;
      v19 = v18++;
    }

    while (v19 < a2);
  }

  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v21 = a2 - 2 * a3;
  if (((2 * a3) | 1) >= v21)
  {
    v47 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v21 - 1;
    v27 = *&v13[2 * a3];
    v28 = v14[2 * a3];
    v29 = -1;
    v30 = 1.0 / ((2 * a3) + 1.0);
    v31 = ~(2 * a3) + v26;
    v32 = 8 * a3 + 4;
    v33 = v14 + v32;
    v34 = (16 * a3) | 4;
    v35 = v14 + v34;
    v36 = v13 + v34;
    v37 = v13 + v32;
    do
    {
      v38 = *&v36[4 * v22] - v27;
      v27 = *&v37[4 * v22];
      v39 = v30 * (v27 - *&v13[v22]);
      v40 = *&v35[4 * v22] - v28;
      v28 = *&v33[4 * v22];
      v41 = v30 * v38;
      v42 = (v30 * v40) - (v41 * v41);
      v43 = ((v30 * (v28 - v14[v22])) - (v39 * v39));
      v44 = v42;
      if (v44 * 50.0 >= v43 || v39 * 1.2 >= v41)
      {
        v23 &= v24 ^ 1;
      }

      v45 = 2 * a3 + 1 + v22;
      if (v43 * 50.0 >= v44 || v41 * 1.2 >= v39)
      {
        v46 = v25;
        v25 = 0;
      }

      else
      {
        if ((v25 & 1) == 0)
        {
          v29 += (v23 & 1) == 0;
          if (v29 <= 9)
          {
            *(v54 + v29) = v45;
          }
        }

        v46 = v31 == v22;
        v25 = 1;
      }

      v23 |= v46;
      v24 = (v29 < 0) & v24;
      if (v44 * 50.0 < v43 && (v29 & 0x80000000) == 0)
      {
        if (v39 * 1.2 >= v41)
        {
          v24 = 0;
        }

        else
        {
          if (v29 <= 9 && (v23 & 1) != 0)
          {
            *(v52 + v29) = v45;
          }

          v23 = (v31 != v22) & v23;
          v24 = 1;
        }
      }

      ++v22;
    }

    while (~(4 * a3) + a2 != v22);
    v47 = v29 + ((v23 & 1) == 0);
  }

  free(v14);
  free(v13);
  if (v47 >= 10)
  {
    v48 = 10;
  }

  else
  {
    v48 = v47;
  }

  *a4 = v48;
  if (v47 <= 0)
  {
    *a4 = 1;
    *a5 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    result = malloc_type_calloc(*a4, 4uLL, 0x100004052888210uLL);
    *a6 = result;
    **a5 = 0;
    *result = a2 - 1;
  }

  else
  {
    *a5 = malloc_type_calloc(v48, 4uLL, 0x100004052888210uLL);
    result = malloc_type_calloc(*a4, 4uLL, 0x100004052888210uLL);
    *a6 = result;
    if (*a4 >= 1)
    {
      v50 = 0;
      v51 = *a5;
      do
      {
        v51[v50] = *(v54 + v50);
        result[v50] = *(v52 + v50);
        ++v50;
      }

      while (v50 < *a4);
    }
  }

  return result;
}

float *sub_26155E77C(float *a1, signed int a2, float *a3, float *a4)
{
  *a3 = sub_26155E2BC(a1, a1, a2);
  result = sub_26155E1A4(a1, a2);
  v8 = 0;
  LODWORD(v9) = a2 - 1;
  if (a2 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v9;
  }

  v10 = a1 + 1;
  v11 = v9;
  do
  {
    if (vabds_f32(*v10, *(v10 - 1)) > 0.2)
    {
      ++v8;
    }

    ++v10;
    --v11;
  }

  while (v11);
  *a4 = v8 / v9;
  return result;
}

float *sub_26155E81C(float *result, int a2, int a3, int a4)
{
  if (a4 <= a2 && (a3 & 0x80000000) == 0)
  {
    v4 = a4 - a3;
    if (a4 > a3)
    {
      v5 = &result[a3];
      sub_26155E2BC(v5, v5, v4 + 1);

      return sub_26155E1A4(v5, v4 + 1);
    }
  }

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[](void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}