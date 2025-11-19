uint64_t CMMsl::KappaCrashResult::readFrom(CMMsl::KappaCrashResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (this + 292);
    while (1)
    {
      v8 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_333;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        goto LABEL_333;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) <= 100000)
      {
        switch(v23)
        {
          case 1:
            *v7 |= 1uLL;
            v25 = *(a2 + 1);
            v24 = *(a2 + 2);
            v26 = *a2;
            if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              do
              {
                *(a2 + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  goto LABEL_328;
                }

                v27 += 7;
                ++v31;
                v15 = v28++ > 8;
              }

              while (!v15);
LABEL_289:
              v29 = 0;
              goto LABEL_328;
            }

            v169 = 0;
            v170 = 0;
            v29 = 0;
            v18 = v24 >= v25;
            v171 = v24 - v25;
            if (!v18)
            {
              v171 = 0;
            }

            v172 = (v26 + v25);
            v173 = v25 + 1;
            while (2)
            {
              if (v171)
              {
                v174 = *v172;
                *(a2 + 1) = v173;
                v29 |= (v174 & 0x7F) << v169;
                if (v174 < 0)
                {
                  v169 += 7;
                  --v171;
                  ++v172;
                  ++v173;
                  v15 = v170++ > 8;
                  if (v15)
                  {
                    goto LABEL_289;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  v29 = 0;
                }
              }

              else
              {
                v29 = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_328:
            *(this + 1) = v29;
            goto LABEL_317;
          case 2:
            *v7 |= 0x10000000000000uLL;
            v96 = *(a2 + 1);
            if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 55) = *(*a2 + v96);
            goto LABEL_316;
          case 3:
            *(this + 150) |= 0x800u;
            v77 = *(a2 + 1);
            if (v77 >= *(a2 + 2))
            {
              v80 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v78 = v77 + 1;
              v79 = *(*a2 + v77);
              *(a2 + 1) = v78;
              v80 = v79 != 0;
            }

            *(this + 288) = v80;
            goto LABEL_317;
          case 4:
            *(this + 150) |= 0x400u;
            v83 = *(a2 + 1);
            if (v83 >= *(a2 + 2))
            {
              v86 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v84 = v83 + 1;
              v85 = *(*a2 + v83);
              *(a2 + 1) = v84;
              v86 = v85 != 0;
            }

            *(this + 287) = v86;
            goto LABEL_317;
          case 5:
            *(this + 150) |= 0x100u;
            v63 = *(a2 + 1);
            if (v63 >= *(a2 + 2))
            {
              v66 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v64 = v63 + 1;
              v65 = *(*a2 + v63);
              *(a2 + 1) = v64;
              v66 = v65 != 0;
            }

            *(this + 285) = v66;
            goto LABEL_317;
          case 6:
            *(this + 150) |= 0x20u;
            v105 = *(a2 + 1);
            if (v105 >= *(a2 + 2))
            {
              v108 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v106 = v105 + 1;
              v107 = *(*a2 + v105);
              *(a2 + 1) = v106;
              v108 = v107 != 0;
            }

            *(this + 282) = v108;
            goto LABEL_317;
          case 7:
            *(this + 150) |= 0x10u;
            v113 = *(a2 + 1);
            if (v113 >= *(a2 + 2))
            {
              v116 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v114 = v113 + 1;
              v115 = *(*a2 + v113);
              *(a2 + 1) = v114;
              v116 = v115 != 0;
            }

            *(this + 281) = v116;
            goto LABEL_317;
          case 8:
            *v7 |= 0x200000uLL;
            v88 = *(a2 + 1);
            v87 = *(a2 + 2);
            v89 = *a2;
            if (v88 <= 0xFFFFFFFFFFFFFFF5 && v88 + 10 <= v87)
            {
              v90 = 0;
              v91 = 0;
              v92 = 0;
              v93 = (v89 + v88);
              v94 = v88 + 1;
              do
              {
                *(a2 + 1) = v94;
                v95 = *v93++;
                v92 |= (v95 & 0x7F) << v90;
                if ((v95 & 0x80) == 0)
                {
                  goto LABEL_325;
                }

                v90 += 7;
                ++v94;
                v15 = v91++ > 8;
              }

              while (!v15);
LABEL_281:
              LODWORD(v92) = 0;
              goto LABEL_325;
            }

            v163 = 0;
            v164 = 0;
            v92 = 0;
            v18 = v87 >= v88;
            v165 = v87 - v88;
            if (!v18)
            {
              v165 = 0;
            }

            v166 = (v89 + v88);
            v167 = v88 + 1;
            while (2)
            {
              if (v165)
              {
                v168 = *v166;
                *(a2 + 1) = v167;
                v92 |= (v168 & 0x7F) << v163;
                if (v168 < 0)
                {
                  v163 += 7;
                  --v165;
                  ++v166;
                  ++v167;
                  v15 = v164++ > 8;
                  if (v15)
                  {
                    goto LABEL_281;
                  }

                  continue;
                }

                if (*(a2 + 24))
                {
                  LODWORD(v92) = 0;
                }
              }

              else
              {
                LODWORD(v92) = 0;
                *(a2 + 24) = 1;
              }

              break;
            }

LABEL_325:
            *(this + 24) = v92;
            goto LABEL_317;
          case 9:
            *(this + 150) |= 8u;
            v119 = *(a2 + 1);
            if (v119 >= *(a2 + 2))
            {
              v122 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v120 = v119 + 1;
              v121 = *(*a2 + v119);
              *(a2 + 1) = v120;
              v122 = v121 != 0;
            }

            *(this + 280) = v122;
            goto LABEL_317;
          case 10:
            *(this + 150) |= 0x80u;
            v71 = *(a2 + 1);
            if (v71 >= *(a2 + 2))
            {
              v74 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v72 = v71 + 1;
              v73 = *(*a2 + v71);
              *(a2 + 1) = v72;
              v74 = v73 != 0;
            }

            *(this + 284) = v74;
            goto LABEL_317;
          case 11:
            *v7 |= 0x20000uLL;
            v118 = *(a2 + 1);
            if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 20) = *(*a2 + v118);
            goto LABEL_316;
          case 12:
            *v7 |= 0x10000uLL;
            v61 = *(a2 + 1);
            if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 19) = *(*a2 + v61);
            goto LABEL_316;
          case 13:
            *v7 |= 0x2000000uLL;
            v70 = *(a2 + 1);
            if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 28) = *(*a2 + v70);
            goto LABEL_316;
          case 14:
            *v7 |= 0x40000000uLL;
            v112 = *(a2 + 1);
            if (v112 > 0xFFFFFFFFFFFFFFFBLL || v112 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 33) = *(*a2 + v112);
            goto LABEL_316;
          case 15:
            *v7 |= 0x800000000uLL;
            v57 = *(a2 + 1);
            if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 38) = *(*a2 + v57);
            goto LABEL_316;
          case 16:
            *v7 |= 0x20000000000000uLL;
            v81 = *(a2 + 1);
            if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 56) = *(*a2 + v81);
            goto LABEL_316;
          case 17:
            *v7 |= 0x4000000uLL;
            v53 = *(a2 + 1);
            if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 29) = *(*a2 + v53);
            goto LABEL_316;
          case 18:
            *v7 |= 0x80000000uLL;
            v101 = *(a2 + 1);
            if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 34) = *(*a2 + v101);
            goto LABEL_316;
          case 19:
            *v7 |= 0x1000000000uLL;
            v117 = *(a2 + 1);
            if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 39) = *(*a2 + v117);
            goto LABEL_316;
          case 20:
            *v7 |= 0x40000000000000uLL;
            v131 = *(a2 + 1);
            if (v131 > 0xFFFFFFFFFFFFFFFBLL || v131 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 57) = *(*a2 + v131);
            goto LABEL_316;
          case 21:
            *v7 |= 0x8000000uLL;
            v103 = *(a2 + 1);
            if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 30) = *(*a2 + v103);
            goto LABEL_316;
          case 22:
            *v7 |= &_mh_execute_header;
            v111 = *(a2 + 1);
            if (v111 > 0xFFFFFFFFFFFFFFFBLL || v111 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 35) = *(*a2 + v111);
            goto LABEL_316;
          case 23:
            *v7 |= 0x2000000000uLL;
            v129 = *(a2 + 1);
            if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 40) = *(*a2 + v129);
            goto LABEL_316;
          case 24:
            *v7 |= 0x80000000000000uLL;
            v135 = *(a2 + 1);
            if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 58) = *(*a2 + v135);
            goto LABEL_316;
          case 25:
            *v7 |= 0x800000000000000uLL;
            v76 = *(a2 + 1);
            if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 62) = *(*a2 + v76);
            goto LABEL_316;
          case 26:
            *v7 |= 0x400000000000000uLL;
            v75 = *(a2 + 1);
            if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 61) = *(*a2 + v75);
            goto LABEL_316;
          case 27:
            *v7 |= 0x1000000000000000uLL;
            v139 = *(a2 + 1);
            if (v139 > 0xFFFFFFFFFFFFFFFBLL || v139 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 63) = *(*a2 + v139);
            goto LABEL_316;
          case 28:
            *v7 |= 0x40uLL;
            v50 = *(a2 + 1);
            if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 9) = *(*a2 + v50);
            goto LABEL_316;
          case 29:
            *v7 |= 2uLL;
            v136 = *(a2 + 1);
            if (v136 > 0xFFFFFFFFFFFFFFFBLL || v136 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 4) = *(*a2 + v136);
            goto LABEL_316;
          case 30:
            *v7 |= 0x8000uLL;
            v137 = *(a2 + 1);
            if (v137 > 0xFFFFFFFFFFFFFFFBLL || v137 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 18) = *(*a2 + v137);
            goto LABEL_316;
          case 31:
            *(this + 150) |= 0x4000u;
            v123 = *(a2 + 1);
            if (v123 >= *(a2 + 2))
            {
              v126 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v124 = v123 + 1;
              v125 = *(*a2 + v123);
              *(a2 + 1) = v124;
              v126 = v125 != 0;
            }

            *(this + 291) = v126;
            goto LABEL_317;
          case 32:
            *(this + 150) |= 0x40u;
            v97 = *(a2 + 1);
            if (v97 >= *(a2 + 2))
            {
              v100 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v98 = v97 + 1;
              v99 = *(*a2 + v97);
              *(a2 + 1) = v98;
              v100 = v99 != 0;
            }

            *(this + 283) = v100;
            goto LABEL_317;
          case 33:
            *v7 |= 0x80uLL;
            v127 = *(a2 + 1);
            if (v127 > 0xFFFFFFFFFFFFFFFBLL || v127 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 10) = *(*a2 + v127);
            goto LABEL_316;
          case 34:
            *v7 |= 0x400uLL;
            v58 = *(a2 + 1);
            if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 13) = *(*a2 + v58);
            goto LABEL_316;
          case 35:
            *v7 |= 0x200uLL;
            v51 = *(a2 + 1);
            if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 12) = *(*a2 + v51);
            goto LABEL_316;
          case 36:
            *v7 |= 0x100uLL;
            v44 = *(a2 + 1);
            if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 11) = *(*a2 + v44);
            goto LABEL_316;
          case 37:
            *v7 |= 4uLL;
            v45 = *(a2 + 1);
            if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 5) = *(*a2 + v45);
            goto LABEL_316;
          case 38:
            *v7 |= 0x20uLL;
            v39 = *(a2 + 1);
            if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 8) = *(*a2 + v39);
            goto LABEL_316;
          case 39:
            *v7 |= 0x10uLL;
            v138 = *(a2 + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 7) = *(*a2 + v138);
            goto LABEL_316;
          case 40:
            *v7 |= 8uLL;
            v130 = *(a2 + 1);
            if (v130 > 0xFFFFFFFFFFFFFFFBLL || v130 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 6) = *(*a2 + v130);
            goto LABEL_316;
          case 41:
            *v7 |= 0x800uLL;
            v67 = *(a2 + 1);
            if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 14) = *(*a2 + v67);
            goto LABEL_316;
          case 42:
            *v7 |= 0x4000uLL;
            v102 = *(a2 + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 17) = *(*a2 + v102);
            goto LABEL_316;
          case 43:
            *v7 |= 0x2000uLL;
            v133 = *(a2 + 1);
            if (v133 > 0xFFFFFFFFFFFFFFFBLL || v133 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 16) = *(*a2 + v133);
            goto LABEL_316;
          case 44:
            *v7 |= 0x1000uLL;
            v36 = *(a2 + 1);
            if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 15) = *(*a2 + v36);
            goto LABEL_316;
          case 45:
            *v7 |= 0x10000000uLL;
            v56 = *(a2 + 1);
            if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 31) = *(*a2 + v56);
            goto LABEL_316;
          case 46:
            *v7 |= 0x200000000uLL;
            v128 = *(a2 + 1);
            if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 36) = *(*a2 + v128);
            goto LABEL_316;
          case 47:
            *v7 |= 0x4000000000uLL;
            v150 = *(a2 + 1);
            if (v150 > 0xFFFFFFFFFFFFFFFBLL || v150 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 41) = *(*a2 + v150);
            goto LABEL_316;
          case 48:
            *v7 |= 0x100000000000000uLL;
            v41 = *(a2 + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 59) = *(*a2 + v41);
            goto LABEL_316;
          case 49:
            *v7 |= 0x20000000uLL;
            v59 = *(a2 + 1);
            if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 32) = *(*a2 + v59);
            goto LABEL_316;
          case 50:
            *v7 |= 0x400000000uLL;
            v62 = *(a2 + 1);
            if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 37) = *(*a2 + v62);
            goto LABEL_316;
          case 51:
            *v7 |= 0x8000000000uLL;
            v35 = *(a2 + 1);
            if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 42) = *(*a2 + v35);
            goto LABEL_316;
          case 52:
            *v7 |= 0x200000000000000uLL;
            v153 = *(a2 + 1);
            if (v153 > 0xFFFFFFFFFFFFFFFBLL || v153 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 60) = *(*a2 + v153);
            goto LABEL_316;
          case 53:
            *(this + 150) |= 0x200u;
            v146 = *(a2 + 1);
            if (v146 >= *(a2 + 2))
            {
              v149 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v147 = v146 + 1;
              v148 = *(*a2 + v146);
              *(a2 + 1) = v147;
              v149 = v148 != 0;
            }

            *(this + 286) = v149;
            goto LABEL_317;
          case 54:
            *v7 |= 0x8000000000000000;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 66) = *(*a2 + v40);
            goto LABEL_316;
          case 55:
            *v7 |= 0x2000000000000000uLL;
            v140 = *(a2 + 1);
            if (v140 > 0xFFFFFFFFFFFFFFFBLL || v140 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 64) = *(*a2 + v140);
            goto LABEL_316;
          case 56:
            *(this + 150) |= 0x1000u;
            v142 = *(a2 + 1);
            if (v142 >= *(a2 + 2))
            {
              v145 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v143 = v142 + 1;
              v144 = *(*a2 + v142);
              *(a2 + 1) = v143;
              v145 = v144 != 0;
            }

            *(this + 289) = v145;
            goto LABEL_317;
          case 57:
            *v7 |= 0x10000000000uLL;
            v42 = *(a2 + 1);
            if (v42 > 0xFFFFFFFFFFFFFFFBLL || v42 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 43) = *(*a2 + v42);
            goto LABEL_316;
          case 58:
            *v7 |= 0x20000000000uLL;
            v132 = *(a2 + 1);
            if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 44) = *(*a2 + v132);
            goto LABEL_316;
          case 59:
            *v7 |= 0x40000000000uLL;
            v60 = *(a2 + 1);
            if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 45) = *(*a2 + v60);
            goto LABEL_316;
          case 60:
            *v7 |= 0x100000000000uLL;
            v134 = *(a2 + 1);
            if (v134 > 0xFFFFFFFFFFFFFFFBLL || v134 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 47) = *(*a2 + v134);
            goto LABEL_316;
          case 61:
            *v7 |= 0x80000000000uLL;
            v68 = *(a2 + 1);
            if (v68 > 0xFFFFFFFFFFFFFFFBLL || v68 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 46) = *(*a2 + v68);
            goto LABEL_316;
          case 62:
            *v7 |= 0x200000000000uLL;
            v104 = *(a2 + 1);
            if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 48) = *(*a2 + v104);
            goto LABEL_316;
          case 63:
            *v7 |= 0x400000000000uLL;
            v110 = *(a2 + 1);
            if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 49) = *(*a2 + v110);
            goto LABEL_316;
          case 64:
            *v7 |= 0x800000000000uLL;
            v82 = *(a2 + 1);
            if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 50) = *(*a2 + v82);
            goto LABEL_316;
          case 65:
            *v7 |= 0x1000000000000uLL;
            v69 = *(a2 + 1);
            if (v69 > 0xFFFFFFFFFFFFFFFBLL || v69 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 51) = *(*a2 + v69);
            goto LABEL_316;
          case 66:
            *v7 |= 0x4000000000000uLL;
            v109 = *(a2 + 1);
            if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 53) = *(*a2 + v109);
            goto LABEL_316;
          case 67:
            *v7 |= 0x2000000000000uLL;
            v37 = *(a2 + 1);
            if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 52) = *(*a2 + v37);
            goto LABEL_316;
          case 68:
            *v7 |= 0x8000000000000uLL;
            v55 = *(a2 + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 54) = *(*a2 + v55);
            goto LABEL_316;
          case 69:
            *v7 |= 0x4000000000000000uLL;
            v155 = *(a2 + 1);
            v154 = *(a2 + 2);
            v156 = *a2;
            if (v155 <= 0xFFFFFFFFFFFFFFF5 && v155 + 10 <= v154)
            {
              v157 = 0;
              v158 = 0;
              v159 = 0;
              v160 = (v156 + v155);
              v161 = v155 + 1;
              do
              {
                *(a2 + 1) = v161;
                v162 = *v160++;
                v159 |= (v162 & 0x7F) << v157;
                if ((v162 & 0x80) == 0)
                {
                  goto LABEL_331;
                }

                v157 += 7;
                ++v161;
                v15 = v158++ > 8;
              }

              while (!v15);
LABEL_313:
              LODWORD(v159) = 0;
              goto LABEL_331;
            }

            v175 = 0;
            v176 = 0;
            v159 = 0;
            v18 = v154 >= v155;
            v177 = v154 - v155;
            if (!v18)
            {
              v177 = 0;
            }

            v178 = (v156 + v155);
            v179 = v155 + 1;
            break;
          case 70:
            *(this + 150) |= 0x2000u;
            v46 = *(a2 + 1);
            if (v46 >= *(a2 + 2))
            {
              v49 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v47 = v46 + 1;
              v48 = *(*a2 + v46);
              *(a2 + 1) = v47;
              v49 = v48 != 0;
            }

            *(this + 290) = v49;
            goto LABEL_317;
          case 71:
            *(this + 150) |= 2u;
            v34 = *(a2 + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 68) = *(*a2 + v34);
            goto LABEL_316;
          case 72:
            *(this + 150) |= 4u;
            v38 = *(a2 + 1);
            if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 69) = *(*a2 + v38);
            goto LABEL_316;
          case 73:
            *(this + 150) |= 1u;
            v141 = *(a2 + 1);
            if (v141 > 0xFFFFFFFFFFFFFFFBLL || v141 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 67) = *(*a2 + v141);
            goto LABEL_316;
          case 74:
            *v7 |= 0x40000uLL;
            v151 = *(a2 + 1);
            if (v151 > 0xFFFFFFFFFFFFFFFBLL || v151 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 21) = *(*a2 + v151);
            goto LABEL_316;
          case 75:
            *v7 |= 0x80000uLL;
            v152 = *(a2 + 1);
            if (v152 > 0xFFFFFFFFFFFFFFFBLL || v152 + 4 > *(a2 + 2))
            {
              goto LABEL_258;
            }

            *(this + 22) = *(*a2 + v152);
            goto LABEL_316;
          case 76:
            *v7 |= 0x100000uLL;
            v43 = *(a2 + 1);
            if (v43 <= 0xFFFFFFFFFFFFFFFBLL && v43 + 4 <= *(a2 + 2))
            {
              *(this + 23) = *(*a2 + v43);
              goto LABEL_316;
            }

LABEL_258:
            *(a2 + 24) = 1;
            goto LABEL_317;
          default:
            goto LABEL_46;
        }

        while (1)
        {
          if (!v177)
          {
            LODWORD(v159) = 0;
            *(a2 + 24) = 1;
            goto LABEL_331;
          }

          v180 = *v178;
          *(a2 + 1) = v179;
          v159 |= (v180 & 0x7F) << v175;
          if ((v180 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          --v177;
          ++v178;
          ++v179;
          v15 = v176++ > 8;
          if (v15)
          {
            goto LABEL_313;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v159) = 0;
        }

LABEL_331:
        *(this + 65) = v159;
        goto LABEL_317;
      }

      if (v23 == 100001)
      {
        *v7 |= 0x400000uLL;
        v52 = *(a2 + 1);
        if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
        {
LABEL_91:
          *(a2 + 24) = 1;
          goto LABEL_317;
        }

        *(this + 25) = *(*a2 + v52);
        goto LABEL_316;
      }

      if (v23 == 100002)
      {
        break;
      }

      if (v23 == 100003)
      {
        *v7 |= 0x1000000uLL;
        v33 = *(a2 + 1);
        if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
        {
          goto LABEL_91;
        }

        *(this + 27) = *(*a2 + v33);
LABEL_316:
        *(a2 + 1) += 4;
        goto LABEL_317;
      }

LABEL_46:
      if (!PB::Reader::skip(a2, v23, v11 & 7, 0))
      {
        v182 = 0;
        return v182 & 1;
      }

LABEL_317:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_333;
      }
    }

    *v7 |= 0x800000uLL;
    v54 = *(a2 + 1);
    if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(a2 + 2))
    {
      goto LABEL_91;
    }

    *(this + 26) = *(*a2 + v54);
    goto LABEL_316;
  }

LABEL_333:
  v182 = v4 ^ 1;
  return v182 & 1;
}

uint64_t CMMsl::KappaCrashResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = (this + 292);
  v5 = *(this + 292);
  if (v5)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v5 = *v4;
  }

  if ((v5 & 0x10000000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 220), 2u);
  }

  v6 = *(v3 + 300);
  if ((v6 & 0x800) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 288), 3u);
    v6 = *(v3 + 300);
    if ((v6 & 0x400) == 0)
    {
LABEL_7:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_99;
    }
  }

  else if ((*(v3 + 300) & 0x400) == 0)
  {
    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(v3 + 287), 4u);
  v6 = *(v3 + 300);
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_100;
  }

LABEL_99:
  this = PB::Writer::write(a2, *(v3 + 285), 5u);
  v6 = *(v3 + 300);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_100:
  this = PB::Writer::write(a2, *(v3 + 282), 6u);
  if ((*(v3 + 300) & 0x10) != 0)
  {
LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 281), 7u);
  }

LABEL_11:
  if ((*(v4 + 2) & 0x20) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 96), 8u);
  }

  v7 = *(v3 + 300);
  if ((v7 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 280), 9u);
    v7 = *(v3 + 300);
  }

  if ((v7 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 284), 0xAu);
  }

  v8 = *v4;
  if ((*v4 & 0x20000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 80), 0xBu);
    v8 = *v4;
    if ((*v4 & 0x10000) == 0)
    {
LABEL_19:
      if ((v8 & 0x2000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_104;
    }
  }

  else if ((v8 & 0x10000) == 0)
  {
    goto LABEL_19;
  }

  this = PB::Writer::write(a2, *(v3 + 76), 0xCu);
  v8 = *v4;
  if ((*v4 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = PB::Writer::write(a2, *(v3 + 112), 0xDu);
  v8 = *v4;
  if ((*v4 & 0x40000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = PB::Writer::write(a2, *(v3 + 132), 0xEu);
  v8 = *v4;
  if ((*v4 & 0x800000000) == 0)
  {
LABEL_22:
    if ((v8 & 0x20000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = PB::Writer::write(a2, *(v3 + 152), 0xFu);
  v8 = *v4;
  if ((*v4 & 0x20000000000000) == 0)
  {
LABEL_23:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = PB::Writer::write(a2, *(v3 + 224), 0x10u);
  v8 = *v4;
  if ((*v4 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = PB::Writer::write(a2, *(v3 + 116), 0x11u);
  v8 = *v4;
  if ((*v4 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = PB::Writer::write(a2, *(v3 + 136), 0x12u);
  v8 = *v4;
  if ((*v4 & 0x1000000000) == 0)
  {
LABEL_26:
    if ((v8 & 0x40000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = PB::Writer::write(a2, *(v3 + 156), 0x13u);
  v8 = *v4;
  if ((*v4 & 0x40000000000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = PB::Writer::write(a2, *(v3 + 228), 0x14u);
  v8 = *v4;
  if ((*v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = PB::Writer::write(a2, *(v3 + 120), 0x15u);
  v8 = *v4;
  if ((*v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = PB::Writer::write(a2, *(v3 + 140), 0x16u);
  v8 = *v4;
  if ((*v4 & 0x2000000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x80000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = PB::Writer::write(a2, *(v3 + 160), 0x17u);
  v8 = *v4;
  if ((*v4 & 0x80000000000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = PB::Writer::write(a2, *(v3 + 232), 0x18u);
  v8 = *v4;
  if ((*v4 & 0x800000000000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = PB::Writer::write(a2, *(v3 + 248), 0x19u);
  v8 = *v4;
  if ((*v4 & 0x400000000000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = PB::Writer::write(a2, *(v3 + 244), 0x1Au);
  v8 = *v4;
  if ((*v4 & 0x1000000000000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = PB::Writer::write(a2, *(v3 + 252), 0x1Bu);
  v8 = *v4;
  if ((*v4 & 0x40) == 0)
  {
LABEL_35:
    if ((v8 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = PB::Writer::write(a2, *(v3 + 36), 0x1Cu);
  v8 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_36:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_120:
  this = PB::Writer::write(a2, *(v3 + 16), 0x1Du);
  if ((*v4 & 0x8000) != 0)
  {
LABEL_37:
    this = PB::Writer::write(a2, *(v3 + 72), 0x1Eu);
  }

LABEL_38:
  v9 = *(v3 + 300);
  if ((v9 & 0x4000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 291), 0x1Fu);
    v9 = *(v3 + 300);
  }

  if ((v9 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 283), 0x20u);
  }

  v10 = *v4;
  if ((*v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 40), 0x21u);
    v10 = *v4;
    if ((*v4 & 0x400) == 0)
    {
LABEL_44:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_124;
    }
  }

  else if ((v10 & 0x400) == 0)
  {
    goto LABEL_44;
  }

  this = PB::Writer::write(a2, *(v3 + 52), 0x22u);
  v10 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_45:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = PB::Writer::write(a2, *(v3 + 48), 0x23u);
  v10 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_46:
    if ((v10 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = PB::Writer::write(a2, *(v3 + 44), 0x24u);
  v10 = *v4;
  if ((*v4 & 4) == 0)
  {
LABEL_47:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = PB::Writer::write(a2, *(v3 + 20), 0x25u);
  v10 = *v4;
  if ((*v4 & 0x20) == 0)
  {
LABEL_48:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = PB::Writer::write(a2, *(v3 + 32), 0x26u);
  v10 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_49:
    if ((v10 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = PB::Writer::write(a2, *(v3 + 28), 0x27u);
  v10 = *v4;
  if ((*v4 & 8) == 0)
  {
LABEL_50:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = PB::Writer::write(a2, *(v3 + 24), 0x28u);
  v10 = *v4;
  if ((*v4 & 0x800) == 0)
  {
LABEL_51:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = PB::Writer::write(a2, *(v3 + 56), 0x29u);
  v10 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_52:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = PB::Writer::write(a2, *(v3 + 68), 0x2Au);
  v10 = *v4;
  if ((*v4 & 0x2000) == 0)
  {
LABEL_53:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = PB::Writer::write(a2, *(v3 + 64), 0x2Bu);
  v10 = *v4;
  if ((*v4 & 0x1000) == 0)
  {
LABEL_54:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = PB::Writer::write(a2, *(v3 + 60), 0x2Cu);
  v10 = *v4;
  if ((*v4 & 0x10000000) == 0)
  {
LABEL_55:
    if ((v10 & 0x200000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = PB::Writer::write(a2, *(v3 + 124), 0x2Du);
  v10 = *v4;
  if ((*v4 & 0x200000000) == 0)
  {
LABEL_56:
    if ((v10 & 0x4000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = PB::Writer::write(a2, *(v3 + 144), 0x2Eu);
  v10 = *v4;
  if ((*v4 & 0x4000000000) == 0)
  {
LABEL_57:
    if ((v10 & 0x100000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = PB::Writer::write(a2, *(v3 + 164), 0x2Fu);
  v10 = *v4;
  if ((*v4 & 0x100000000000000) == 0)
  {
LABEL_58:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = PB::Writer::write(a2, *(v3 + 236), 0x30u);
  v10 = *v4;
  if ((*v4 & 0x20000000) == 0)
  {
LABEL_59:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = PB::Writer::write(a2, *(v3 + 128), 0x31u);
  v10 = *v4;
  if ((*v4 & 0x400000000) == 0)
  {
LABEL_60:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = PB::Writer::write(a2, *(v3 + 148), 0x32u);
  v10 = *v4;
  if ((*v4 & 0x8000000000) == 0)
  {
LABEL_61:
    if ((v10 & 0x200000000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_140:
  this = PB::Writer::write(a2, *(v3 + 168), 0x33u);
  if ((*v4 & 0x200000000000000) != 0)
  {
LABEL_62:
    this = PB::Writer::write(a2, *(v3 + 240), 0x34u);
  }

LABEL_63:
  if ((*(v3 + 300) & 0x200) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 286), 0x35u);
  }

  if ((*v4 & 0x8000000000000000) == 0)
  {
    if ((*v4 & 0x2000000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  this = PB::Writer::write(a2, *(v3 + 264), 0x36u);
  if ((*v4 & 0x2000000000000000) != 0)
  {
LABEL_67:
    this = PB::Writer::write(a2, *(v3 + 256), 0x37u);
  }

LABEL_68:
  if ((*(v3 + 300) & 0x1000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 289), 0x38u);
  }

  v11 = *v4;
  if ((*v4 & 0x10000000000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 172), 0x39u);
    v11 = *v4;
    if ((*v4 & 0x20000000000) == 0)
    {
LABEL_72:
      if ((v11 & 0x40000000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_144;
    }
  }

  else if ((v11 & 0x20000000000) == 0)
  {
    goto LABEL_72;
  }

  this = PB::Writer::write(a2, *(v3 + 176), 0x3Au);
  v11 = *v4;
  if ((*v4 & 0x40000000000) == 0)
  {
LABEL_73:
    if ((v11 & 0x100000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_145;
  }

LABEL_144:
  this = PB::Writer::write(a2, *(v3 + 180), 0x3Bu);
  v11 = *v4;
  if ((*v4 & 0x100000000000) == 0)
  {
LABEL_74:
    if ((v11 & 0x80000000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_146;
  }

LABEL_145:
  this = PB::Writer::write(a2, *(v3 + 188), 0x3Cu);
  v11 = *v4;
  if ((*v4 & 0x80000000000) == 0)
  {
LABEL_75:
    if ((v11 & 0x200000000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_147;
  }

LABEL_146:
  this = PB::Writer::write(a2, *(v3 + 184), 0x3Du);
  v11 = *v4;
  if ((*v4 & 0x200000000000) == 0)
  {
LABEL_76:
    if ((v11 & 0x400000000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_148;
  }

LABEL_147:
  this = PB::Writer::write(a2, *(v3 + 192), 0x3Eu);
  v11 = *v4;
  if ((*v4 & 0x400000000000) == 0)
  {
LABEL_77:
    if ((v11 & 0x800000000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_149;
  }

LABEL_148:
  this = PB::Writer::write(a2, *(v3 + 196), 0x3Fu);
  v11 = *v4;
  if ((*v4 & 0x800000000000) == 0)
  {
LABEL_78:
    if ((v11 & 0x1000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = PB::Writer::write(a2, *(v3 + 200), 0x40u);
  v11 = *v4;
  if ((*v4 & 0x1000000000000) == 0)
  {
LABEL_79:
    if ((v11 & 0x4000000000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_151;
  }

LABEL_150:
  this = PB::Writer::write(a2, *(v3 + 204), 0x41u);
  v11 = *v4;
  if ((*v4 & 0x4000000000000) == 0)
  {
LABEL_80:
    if ((v11 & 0x2000000000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = PB::Writer::write(a2, *(v3 + 212), 0x42u);
  v11 = *v4;
  if ((*v4 & 0x2000000000000) == 0)
  {
LABEL_81:
    if ((v11 & 0x8000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_153;
  }

LABEL_152:
  this = PB::Writer::write(a2, *(v3 + 208), 0x43u);
  v11 = *v4;
  if ((*v4 & 0x8000000000000) == 0)
  {
LABEL_82:
    if ((v11 & 0x4000000000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_153:
  this = PB::Writer::write(a2, *(v3 + 216), 0x44u);
  if ((*v4 & 0x4000000000000000) != 0)
  {
LABEL_83:
    this = PB::Writer::writeVarInt(a2, *(v3 + 260), 0x45u);
  }

LABEL_84:
  v12 = *(v3 + 300);
  if ((v12 & 0x2000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 290), 0x46u);
    v12 = *(v3 + 300);
    if ((v12 & 2) == 0)
    {
LABEL_86:
      if ((v12 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_157;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_86;
  }

  this = PB::Writer::write(a2, *(v3 + 272), 0x47u);
  v12 = *(v3 + 300);
  if ((v12 & 4) == 0)
  {
LABEL_87:
    if ((v12 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_157:
  this = PB::Writer::write(a2, *(v3 + 276), 0x48u);
  if (*(v3 + 300))
  {
LABEL_88:
    this = PB::Writer::write(a2, *(v3 + 268), 0x49u);
  }

LABEL_89:
  v13 = *v4;
  if ((*v4 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 84), 0x4Au);
    v13 = *v4;
    if ((*v4 & 0x80000) == 0)
    {
LABEL_91:
      if ((v13 & 0x100000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((v13 & 0x80000) == 0)
  {
    goto LABEL_91;
  }

  this = PB::Writer::write(a2, *(v3 + 88), 0x4Bu);
  v13 = *v4;
  if ((*v4 & 0x100000) != 0)
  {
LABEL_92:
    this = PB::Writer::write(a2, *(v3 + 92), 0x4Cu);
    v13 = *v4;
  }

LABEL_93:
  if ((v13 & 0x400000) == 0)
  {
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_95;
    }

LABEL_163:
    this = PB::Writer::write(a2, *(v3 + 104), 0x186A2u);
    if ((*v4 & 0x1000000) == 0)
    {
      return this;
    }

    goto LABEL_164;
  }

  this = PB::Writer::write(a2, *(v3 + 100), 0x186A1u);
  v13 = *v4;
  if ((*v4 & 0x800000) != 0)
  {
    goto LABEL_163;
  }

LABEL_95:
  if ((v13 & 0x1000000) == 0)
  {
    return this;
  }

LABEL_164:
  v14 = *(v3 + 108);

  return PB::Writer::write(a2, v14, 0x186A3u);
}

uint64_t CMMsl::KappaCrashResult::hash_value(CMMsl::KappaCrashResult *this)
{
  v1 = *(this + 292);
  if (v1)
  {
    v2 = *(this + 1);
    if ((v1 & 0x10000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v188 = 0;
    goto LABEL_8;
  }

  v2 = 0;
  if ((v1 & 0x10000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(this + 55);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v188 = v4;
LABEL_8:
  v5 = *(this + 150);
  if ((v5 & 0x800) != 0)
  {
    v187 = *(this + 288);
    if ((*(this + 150) & 0x400) != 0)
    {
LABEL_10:
      v186 = *(this + 287);
      if ((*(this + 150) & 0x100) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_214;
    }
  }

  else
  {
    v187 = 0;
    if ((*(this + 150) & 0x400) != 0)
    {
      goto LABEL_10;
    }
  }

  v186 = 0;
  if ((*(this + 150) & 0x100) != 0)
  {
LABEL_11:
    v185 = *(this + 285);
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_215;
  }

LABEL_214:
  v185 = 0;
  if ((v5 & 0x20) != 0)
  {
LABEL_12:
    v184 = *(this + 282);
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_216;
  }

LABEL_215:
  v184 = 0;
  if ((v5 & 0x10) != 0)
  {
LABEL_13:
    v183 = *(this + 281);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_217;
  }

LABEL_216:
  v183 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_14:
    v182 = *(this + 24);
    if ((v5 & 8) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_218;
  }

LABEL_217:
  v182 = 0;
  if ((v5 & 8) != 0)
  {
LABEL_15:
    v181 = *(this + 280);
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_219;
  }

LABEL_218:
  v181 = 0;
  if ((v5 & 0x80) != 0)
  {
LABEL_16:
    v180 = *(this + 284);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_17;
    }

LABEL_220:
    v179 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_20;
    }

LABEL_221:
    v178 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_23;
    }

LABEL_222:
    v177 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_26;
    }

LABEL_223:
    v176 = 0;
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_224:
    v175 = 0;
    if ((v1 & 0x20000000000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_225:
    v174 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_35;
    }

LABEL_226:
    v173 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_227:
    v172 = 0;
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_228:
    v171 = 0;
    if ((v1 & 0x40000000000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_229:
    v170 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_230:
    v169 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_231:
    v168 = 0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_232:
    v167 = 0;
    if ((v1 & 0x80000000000000) != 0)
    {
      goto LABEL_56;
    }

LABEL_233:
    v166 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_59;
    }

LABEL_234:
    v165 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_62;
    }

LABEL_235:
    v164 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_236:
    v163 = 0;
    if ((v1 & 0x800000000000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_237:
    v162 = 0;
    if ((v1 & 0x400000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_238:
    v161 = 0;
    if ((v1 & 0x1000000000000000) != 0)
    {
      goto LABEL_74;
    }

LABEL_239:
    v160 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_77;
    }

LABEL_240:
    v159 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_80;
    }

LABEL_241:
    v158 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_83;
    }

LABEL_242:
    v157 = 0;
    if ((*(this + 150) & 0x4000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_243;
  }

LABEL_219:
  v180 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_220;
  }

LABEL_17:
  v6 = *(this + 20);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v179 = v7;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_221;
  }

LABEL_20:
  v8 = *(this + 19);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v178 = v9;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_222;
  }

LABEL_23:
  v10 = *(this + 28);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v177 = v11;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_223;
  }

LABEL_26:
  v12 = *(this + 33);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v176 = v13;
  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_224;
  }

LABEL_29:
  v14 = *(this + 38);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  v175 = v15;
  if ((v1 & 0x20000000000000) == 0)
  {
    goto LABEL_225;
  }

LABEL_32:
  v16 = *(this + 56);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  v174 = v17;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_226;
  }

LABEL_35:
  v18 = *(this + 29);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  v173 = v19;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_227;
  }

LABEL_38:
  v20 = *(this + 34);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  v172 = v21;
  if ((v1 & 0x1000000000) == 0)
  {
    goto LABEL_228;
  }

LABEL_41:
  v22 = *(this + 39);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  v171 = v23;
  if ((v1 & 0x40000000000000) == 0)
  {
    goto LABEL_229;
  }

LABEL_44:
  v24 = *(this + 57);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  v170 = v25;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_230;
  }

LABEL_47:
  v26 = *(this + 30);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  v169 = v27;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_231;
  }

LABEL_50:
  v28 = *(this + 35);
  v29 = LODWORD(v28);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  v168 = v29;
  if ((v1 & 0x2000000000) == 0)
  {
    goto LABEL_232;
  }

LABEL_53:
  v30 = *(this + 40);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  v167 = v31;
  if ((v1 & 0x80000000000000) == 0)
  {
    goto LABEL_233;
  }

LABEL_56:
  v32 = *(this + 58);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  v166 = v33;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_234;
  }

LABEL_59:
  v34 = *(this + 25);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  v165 = v35;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_235;
  }

LABEL_62:
  v36 = *(this + 26);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  v164 = v37;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_236;
  }

LABEL_65:
  v38 = *(this + 27);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  v163 = v39;
  if ((v1 & 0x800000000000000) == 0)
  {
    goto LABEL_237;
  }

LABEL_68:
  v40 = *(this + 62);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  v162 = v41;
  if ((v1 & 0x400000000000000) == 0)
  {
    goto LABEL_238;
  }

LABEL_71:
  v42 = *(this + 61);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  v161 = v43;
  if ((v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_239;
  }

LABEL_74:
  v44 = *(this + 63);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  v160 = v45;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_240;
  }

LABEL_77:
  v46 = *(this + 9);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  v159 = v47;
  if ((v1 & 2) == 0)
  {
    goto LABEL_241;
  }

LABEL_80:
  v48 = *(this + 4);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  v158 = v49;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_242;
  }

LABEL_83:
  v50 = *(this + 18);
  v51 = LODWORD(v50);
  if (v50 == 0.0)
  {
    v51 = 0;
  }

  v157 = v51;
  if ((*(this + 150) & 0x4000) != 0)
  {
LABEL_86:
    v156 = *(this + 291);
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_244;
  }

LABEL_243:
  v156 = 0;
  if ((v5 & 0x40) != 0)
  {
LABEL_87:
    v155 = *(this + 283);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_88;
    }

LABEL_245:
    v154 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_91;
    }

LABEL_246:
    v153 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_94;
    }

LABEL_247:
    v152 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_97;
    }

LABEL_248:
    v151 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_100;
    }

LABEL_249:
    v150 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_103;
    }

LABEL_250:
    v149 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_106;
    }

LABEL_251:
    v148 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_109;
    }

LABEL_252:
    v147 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_112;
    }

LABEL_253:
    v146 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_115;
    }

LABEL_254:
    v145 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_118;
    }

LABEL_255:
    v144 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_121;
    }

LABEL_256:
    v143 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_124;
    }

LABEL_257:
    v142 = 0;
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_127;
    }

LABEL_258:
    v141 = 0;
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_130;
    }

LABEL_259:
    v140 = 0;
    if ((v1 & 0x100000000000000) != 0)
    {
      goto LABEL_133;
    }

LABEL_260:
    v139 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_136;
    }

LABEL_261:
    v138 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_139;
    }

LABEL_262:
    v137 = 0;
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_142;
    }

LABEL_263:
    v89 = 0;
    if ((v1 & 0x200000000000000) != 0)
    {
      goto LABEL_145;
    }

LABEL_264:
    v91 = 0;
    if ((*(this + 150) & 0x200) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_265;
  }

LABEL_244:
  v155 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_245;
  }

LABEL_88:
  v52 = *(this + 10);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  v154 = v53;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_246;
  }

LABEL_91:
  v54 = *(this + 13);
  v55 = LODWORD(v54);
  if (v54 == 0.0)
  {
    v55 = 0;
  }

  v153 = v55;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_247;
  }

LABEL_94:
  v56 = *(this + 12);
  v57 = LODWORD(v56);
  if (v56 == 0.0)
  {
    v57 = 0;
  }

  v152 = v57;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_248;
  }

LABEL_97:
  v58 = *(this + 11);
  v59 = LODWORD(v58);
  if (v58 == 0.0)
  {
    v59 = 0;
  }

  v151 = v59;
  if ((v1 & 4) == 0)
  {
    goto LABEL_249;
  }

LABEL_100:
  v60 = *(this + 5);
  v61 = LODWORD(v60);
  if (v60 == 0.0)
  {
    v61 = 0;
  }

  v150 = v61;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_250;
  }

LABEL_103:
  v62 = *(this + 8);
  v63 = LODWORD(v62);
  if (v62 == 0.0)
  {
    v63 = 0;
  }

  v149 = v63;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_251;
  }

LABEL_106:
  v64 = *(this + 7);
  v65 = LODWORD(v64);
  if (v64 == 0.0)
  {
    v65 = 0;
  }

  v148 = v65;
  if ((v1 & 8) == 0)
  {
    goto LABEL_252;
  }

LABEL_109:
  v66 = *(this + 6);
  v67 = LODWORD(v66);
  if (v66 == 0.0)
  {
    v67 = 0;
  }

  v147 = v67;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_253;
  }

LABEL_112:
  v68 = *(this + 14);
  v69 = LODWORD(v68);
  if (v68 == 0.0)
  {
    v69 = 0;
  }

  v146 = v69;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_254;
  }

LABEL_115:
  v70 = *(this + 17);
  v71 = LODWORD(v70);
  if (v70 == 0.0)
  {
    v71 = 0;
  }

  v145 = v71;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_255;
  }

LABEL_118:
  v72 = *(this + 16);
  v73 = LODWORD(v72);
  if (v72 == 0.0)
  {
    v73 = 0;
  }

  v144 = v73;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_256;
  }

LABEL_121:
  v74 = *(this + 15);
  v75 = LODWORD(v74);
  if (v74 == 0.0)
  {
    v75 = 0;
  }

  v143 = v75;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_257;
  }

LABEL_124:
  v76 = *(this + 31);
  v77 = LODWORD(v76);
  if (v76 == 0.0)
  {
    v77 = 0;
  }

  v142 = v77;
  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_258;
  }

LABEL_127:
  v78 = *(this + 36);
  v79 = LODWORD(v78);
  if (v78 == 0.0)
  {
    v79 = 0;
  }

  v141 = v79;
  if ((v1 & 0x4000000000) == 0)
  {
    goto LABEL_259;
  }

LABEL_130:
  v80 = *(this + 41);
  v81 = LODWORD(v80);
  if (v80 == 0.0)
  {
    v81 = 0;
  }

  v140 = v81;
  if ((v1 & 0x100000000000000) == 0)
  {
    goto LABEL_260;
  }

LABEL_133:
  v82 = *(this + 59);
  v83 = LODWORD(v82);
  if (v82 == 0.0)
  {
    v83 = 0;
  }

  v139 = v83;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_261;
  }

LABEL_136:
  v84 = *(this + 32);
  v85 = LODWORD(v84);
  if (v84 == 0.0)
  {
    v85 = 0;
  }

  v138 = v85;
  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_262;
  }

LABEL_139:
  v86 = *(this + 37);
  v87 = LODWORD(v86);
  if (v86 == 0.0)
  {
    v87 = 0;
  }

  v137 = v87;
  if ((v1 & 0x8000000000) == 0)
  {
    goto LABEL_263;
  }

LABEL_142:
  v88 = *(this + 42);
  v89 = LODWORD(v88);
  if (v88 == 0.0)
  {
    v89 = 0;
  }

  if ((v1 & 0x200000000000000) == 0)
  {
    goto LABEL_264;
  }

LABEL_145:
  v90 = *(this + 60);
  v91 = LODWORD(v90);
  if (v90 == 0.0)
  {
    v91 = 0;
  }

  if ((*(this + 150) & 0x200) != 0)
  {
LABEL_148:
    v92 = *(this + 286);
    if (v1 < 0)
    {
      goto LABEL_149;
    }

LABEL_266:
    v94 = 0;
    if ((v1 & 0x2000000000000000) != 0)
    {
      goto LABEL_152;
    }

LABEL_267:
    v96 = 0;
    if ((*(this + 150) & 0x1000) != 0)
    {
      goto LABEL_155;
    }

    goto LABEL_268;
  }

LABEL_265:
  v92 = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_266;
  }

LABEL_149:
  v93 = *(this + 66);
  v94 = LODWORD(v93);
  if (v93 == 0.0)
  {
    v94 = 0;
  }

  if ((v1 & 0x2000000000000000) == 0)
  {
    goto LABEL_267;
  }

LABEL_152:
  v95 = *(this + 64);
  v96 = LODWORD(v95);
  if (v95 == 0.0)
  {
    v96 = 0;
  }

  if ((*(this + 150) & 0x1000) != 0)
  {
LABEL_155:
    v97 = *(this + 289);
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_156;
    }

LABEL_269:
    v99 = 0;
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_159;
    }

LABEL_270:
    v101 = 0;
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_162;
    }

LABEL_271:
    v103 = 0;
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_165;
    }

LABEL_272:
    v105 = 0;
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_168;
    }

LABEL_273:
    v107 = 0;
    if ((v1 & 0x200000000000) != 0)
    {
      goto LABEL_171;
    }

LABEL_274:
    v109 = 0;
    if ((v1 & 0x400000000000) != 0)
    {
      goto LABEL_174;
    }

LABEL_275:
    v111 = 0;
    if ((v1 & 0x800000000000) != 0)
    {
      goto LABEL_177;
    }

LABEL_276:
    v113 = 0;
    if ((v1 & 0x1000000000000) != 0)
    {
      goto LABEL_180;
    }

LABEL_277:
    v115 = 0;
    if ((v1 & 0x4000000000000) != 0)
    {
      goto LABEL_183;
    }

LABEL_278:
    v117 = 0;
    if ((v1 & 0x2000000000000) != 0)
    {
      goto LABEL_186;
    }

LABEL_279:
    v119 = 0;
    if ((v1 & 0x8000000000000) != 0)
    {
      goto LABEL_189;
    }

LABEL_280:
    v121 = 0;
    if ((v1 & 0x4000000000000000) != 0)
    {
      goto LABEL_192;
    }

    goto LABEL_281;
  }

LABEL_268:
  v97 = 0;
  if ((v1 & 0x10000000000) == 0)
  {
    goto LABEL_269;
  }

LABEL_156:
  v98 = *(this + 43);
  v99 = LODWORD(v98);
  if (v98 == 0.0)
  {
    v99 = 0;
  }

  if ((v1 & 0x20000000000) == 0)
  {
    goto LABEL_270;
  }

LABEL_159:
  v100 = *(this + 44);
  v101 = LODWORD(v100);
  if (v100 == 0.0)
  {
    v101 = 0;
  }

  if ((v1 & 0x40000000000) == 0)
  {
    goto LABEL_271;
  }

LABEL_162:
  v102 = *(this + 45);
  v103 = LODWORD(v102);
  if (v102 == 0.0)
  {
    v103 = 0;
  }

  if ((v1 & 0x100000000000) == 0)
  {
    goto LABEL_272;
  }

LABEL_165:
  v104 = *(this + 47);
  v105 = LODWORD(v104);
  if (v104 == 0.0)
  {
    v105 = 0;
  }

  if ((v1 & 0x80000000000) == 0)
  {
    goto LABEL_273;
  }

LABEL_168:
  v106 = *(this + 46);
  v107 = LODWORD(v106);
  if (v106 == 0.0)
  {
    v107 = 0;
  }

  if ((v1 & 0x200000000000) == 0)
  {
    goto LABEL_274;
  }

LABEL_171:
  v108 = *(this + 48);
  v109 = LODWORD(v108);
  if (v108 == 0.0)
  {
    v109 = 0;
  }

  if ((v1 & 0x400000000000) == 0)
  {
    goto LABEL_275;
  }

LABEL_174:
  v110 = *(this + 49);
  v111 = LODWORD(v110);
  if (v110 == 0.0)
  {
    v111 = 0;
  }

  if ((v1 & 0x800000000000) == 0)
  {
    goto LABEL_276;
  }

LABEL_177:
  v112 = *(this + 50);
  v113 = LODWORD(v112);
  if (v112 == 0.0)
  {
    v113 = 0;
  }

  if ((v1 & 0x1000000000000) == 0)
  {
    goto LABEL_277;
  }

LABEL_180:
  v114 = *(this + 51);
  v115 = LODWORD(v114);
  if (v114 == 0.0)
  {
    v115 = 0;
  }

  if ((v1 & 0x4000000000000) == 0)
  {
    goto LABEL_278;
  }

LABEL_183:
  v116 = *(this + 53);
  v117 = LODWORD(v116);
  if (v116 == 0.0)
  {
    v117 = 0;
  }

  if ((v1 & 0x2000000000000) == 0)
  {
    goto LABEL_279;
  }

LABEL_186:
  v118 = *(this + 52);
  v119 = LODWORD(v118);
  if (v118 == 0.0)
  {
    v119 = 0;
  }

  if ((v1 & 0x8000000000000) == 0)
  {
    goto LABEL_280;
  }

LABEL_189:
  v120 = *(this + 54);
  v121 = LODWORD(v120);
  if (v120 == 0.0)
  {
    v121 = 0;
  }

  if ((v1 & 0x4000000000000000) != 0)
  {
LABEL_192:
    v122 = *(this + 65);
    if ((*(this + 150) & 0x2000) != 0)
    {
      goto LABEL_193;
    }

    goto LABEL_282;
  }

LABEL_281:
  v122 = 0;
  if ((*(this + 150) & 0x2000) != 0)
  {
LABEL_193:
    v123 = *(this + 290);
    if ((v5 & 2) != 0)
    {
      goto LABEL_194;
    }

LABEL_283:
    v125 = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_197;
    }

LABEL_284:
    v127 = 0;
    if (v5)
    {
      goto LABEL_200;
    }

LABEL_285:
    v129 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_203;
    }

LABEL_286:
    v131 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_206;
    }

    goto LABEL_287;
  }

LABEL_282:
  v123 = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_283;
  }

LABEL_194:
  v124 = *(this + 68);
  v125 = LODWORD(v124);
  if (v124 == 0.0)
  {
    v125 = 0;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_284;
  }

LABEL_197:
  v126 = *(this + 69);
  v127 = LODWORD(v126);
  if (v126 == 0.0)
  {
    v127 = 0;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_285;
  }

LABEL_200:
  v128 = *(this + 67);
  v129 = LODWORD(v128);
  if (v128 == 0.0)
  {
    v129 = 0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_286;
  }

LABEL_203:
  v130 = *(this + 21);
  v131 = LODWORD(v130);
  if (v130 == 0.0)
  {
    v131 = 0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_206:
    v132 = *(this + 22);
    v133 = LODWORD(v132);
    if (v132 == 0.0)
    {
      v133 = 0;
    }

    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_209;
    }

LABEL_288:
    v135 = 0;
    return v188 ^ v2 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v89 ^ v91 ^ v92 ^ v94 ^ v96 ^ v97 ^ v99 ^ v101 ^ v103 ^ v105 ^ v107 ^ v109 ^ v111 ^ v113 ^ v115 ^ v117 ^ v119 ^ v121 ^ v122 ^ v123 ^ v125 ^ v127 ^ v129 ^ v131 ^ v133 ^ v135;
  }

LABEL_287:
  v133 = 0;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_288;
  }

LABEL_209:
  v134 = *(this + 23);
  v135 = LODWORD(v134);
  if (v134 == 0.0)
  {
    v135 = 0;
  }

  return v188 ^ v2 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v160 ^ v159 ^ v158 ^ v157 ^ v156 ^ v155 ^ v154 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v89 ^ v91 ^ v92 ^ v94 ^ v96 ^ v97 ^ v99 ^ v101 ^ v103 ^ v105 ^ v107 ^ v109 ^ v111 ^ v113 ^ v115 ^ v117 ^ v119 ^ v121 ^ v122 ^ v123 ^ v125 ^ v127 ^ v129 ^ v131 ^ v133 ^ v135;
}

void CMMsl::KappaDirectionOfTravel::~KappaDirectionOfTravel(CMMsl::KappaDirectionOfTravel *this)
{
  *this = off_10041F688;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::KappaDirectionOfTravel::~KappaDirectionOfTravel(this);

  operator delete();
}

CMMsl::KappaDirectionOfTravel *CMMsl::KappaDirectionOfTravel::KappaDirectionOfTravel(CMMsl::KappaDirectionOfTravel *this, const CMMsl::KappaDirectionOfTravel *a2)
{
  *this = off_10041F688;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 36) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = *(a2 + 36);
  if ((v5 & 8) != 0)
  {
    v7 = *(a2 + 10);
    v6 = 8;
    *(this + 36) = 8;
    *(this + 10) = v7;
    v5 = *(a2 + 36);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x20) != 0)
  {
LABEL_5:
    v8 = *(a2 + 23);
    v6 |= 0x20u;
    *(this + 36) = v6;
    *(this + 23) = v8;
    v5 = *(a2 + 36);
  }

LABEL_6:
  if ((v5 & 0x40) != 0)
  {
    v11 = *(a2 + 24);
    v6 |= 0x40u;
    *(this + 36) = v6;
    *(this + 24) = v11;
    v5 = *(a2 + 36);
    if ((v5 & 0x80) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(a2 + 25);
  v6 |= 0x80u;
  *(this + 36) = v6;
  *(this + 25) = v12;
  v5 = *(a2 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 22);
  v6 |= 0x10u;
  *(this + 36) = v6;
  *(this + 22) = v13;
  v5 = *(a2 + 36);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 28);
  v6 |= 0x400u;
  *(this + 36) = v6;
  *(this + 28) = v14;
  v5 = *(a2 + 36);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 29);
  v6 |= 0x800u;
  *(this + 36) = v6;
  *(this + 29) = v15;
  v5 = *(a2 + 36);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 30);
  v6 |= 0x1000u;
  *(this + 36) = v6;
  *(this + 30) = v16;
  v5 = *(a2 + 36);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 27);
  v6 |= 0x200u;
  *(this + 36) = v6;
  *(this + 27) = v17;
  v5 = *(a2 + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = *(a2 + 26);
  v6 |= 0x100u;
  *(this + 36) = v6;
  *(this + 26) = v18;
  v5 = *(a2 + 36);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = *(a2 + 32);
  v6 |= 0x4000u;
  *(this + 36) = v6;
  *(this + 32) = v19;
  v5 = *(a2 + 36);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = *(a2 + 33);
  v6 |= 0x8000u;
  *(this + 36) = v6;
  *(this + 33) = v20;
  v5 = *(a2 + 36);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = *(a2 + 34);
  v6 |= 0x10000u;
  *(this + 36) = v6;
  *(this + 34) = v21;
  v5 = *(a2 + 36);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = *(a2 + 31);
  v6 |= 0x2000u;
  *(this + 36) = v6;
  *(this + 31) = v22;
  v5 = *(a2 + 36);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v6 |= 0x20000u;
  *(this + 35) = *(a2 + 35);
  *(this + 36) = v6;
  v5 = *(a2 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v23 = *(a2 + 9);
  v6 |= 4u;
  *(this + 36) = v6;
  *(this + 9) = v23;
  v5 = *(a2 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_21:
    if ((v5 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_40:
  v24 = *(a2 + 7);
  v6 |= 1u;
  *(this + 36) = v6;
  *(this + 7) = v24;
  if ((*(a2 + 36) & 2) != 0)
  {
LABEL_22:
    v9 = *(a2 + 8);
    *(this + 36) = v6 | 2;
    *(this + 8) = v9;
  }

LABEL_23:
  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::KappaDirectionOfTravel::operator=(CMMsl *a1, const CMMsl::KappaDirectionOfTravel *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaDirectionOfTravel::KappaDirectionOfTravel(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaDirectionOfTravel::~KappaDirectionOfTravel(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaDirectionOfTravel *a2, CMMsl::KappaDirectionOfTravel *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v10 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v10;
  *(a2 + 7) = v8;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  v12 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v12;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  v14 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v14;
  v15 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v15;
  v16 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v16;
  v17 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v17;
  v18 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v18;
  v19 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v19;
  v20 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v20;
  v21 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v21;
  v22 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v22;
  result = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = result;
  *(a2 + 8) = v11;
  *(a2 + 6) = v9;
  v24 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v24;
  v25 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v25;
  v26 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v26;
  return result;
}

uint64_t CMMsl::KappaDirectionOfTravel::KappaDirectionOfTravel(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F688;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 8));
  return a1;
}

CMMsl *CMMsl::KappaDirectionOfTravel::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaDirectionOfTravel::KappaDirectionOfTravel(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaDirectionOfTravel::~KappaDirectionOfTravel(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaDirectionOfTravel::formatText(CMMsl::KappaDirectionOfTravel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "combinedUnc", *(this + 22));
    v5 = *(this + 36);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "combinedX", *(this + 23));
  v5 = *(this + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "combinedY", *(this + 24));
  if ((*(this + 36) & 0x80) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "combinedZ", *(this + 25));
  }

LABEL_6:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "inerAccelApproachMx", v8);
  }

  v9 = *(this + 36);
  if ((v9 & 0x100) != 0)
  {
    PB::TextFormatter::format(a2, "inerAccelCount", *(this + 26));
    v9 = *(this + 36);
    if ((v9 & 0x200) == 0)
    {
LABEL_10:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  PB::TextFormatter::format(a2, "inertialApproachUnc", *(this + 27));
  v9 = *(this + 36);
  if ((v9 & 0x400) == 0)
  {
LABEL_11:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "inertialApproachX", *(this + 28));
  v9 = *(this + 36);
  if ((v9 & 0x800) == 0)
  {
LABEL_12:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "inertialApproachY", *(this + 29));
  v9 = *(this + 36);
  if ((v9 & 0x1000) == 0)
  {
LABEL_13:
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "inertialApproachZ", *(this + 30));
  v9 = *(this + 36);
  if ((v9 & 1) == 0)
  {
LABEL_14:
    if ((v9 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "previousTimeAccel", *(this + 7));
  v9 = *(this + 36);
  if ((v9 & 2) == 0)
  {
LABEL_15:
    if ((v9 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "previousTimeSag", *(this + 8));
  if ((*(this + 36) & 4) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "previousTimestamp", *(this + 9));
  }

LABEL_17:
  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "sagittalApproachMx", v12);
  }

  v13 = *(this + 36);
  if ((v13 & 0x2000) != 0)
  {
    PB::TextFormatter::format(a2, "sagittalApproachUnc", *(this + 31));
    v13 = *(this + 36);
    if ((v13 & 0x4000) == 0)
    {
LABEL_21:
      if ((v13 & 0x8000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }
  }

  else if ((v13 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

  PB::TextFormatter::format(a2, "sagittalApproachX", *(this + 32));
  v13 = *(this + 36);
  if ((v13 & 0x8000) == 0)
  {
LABEL_22:
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "sagittalApproachY", *(this + 33));
  v13 = *(this + 36);
  if ((v13 & 0x10000) == 0)
  {
LABEL_23:
    if ((v13 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "sagittalApproachZ", *(this + 34));
  v13 = *(this + 36);
  if ((v13 & 0x20000) == 0)
  {
LABEL_24:
    if ((v13 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "sagittalCount", *(this + 35));
  if ((*(this + 36) & 8) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(a2, "timestamp", *(this + 10));
  }

LABEL_26:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaDirectionOfTravel::readFrom(CMMsl::KappaDirectionOfTravel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_252;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 36) |= 8u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_233;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_182:
            v28 = 0;
            goto LABEL_233;
          }

          v145 = 0;
          v146 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v147 = v23 - v24;
          if (!v17)
          {
            v147 = 0;
          }

          v148 = (v25 + v24);
          v149 = v24 + 1;
          while (2)
          {
            if (v147)
            {
              v150 = *v148;
              *(a2 + 1) = v149;
              v28 |= (v150 & 0x7F) << v145;
              if (v150 < 0)
              {
                v145 += 7;
                --v147;
                ++v148;
                ++v149;
                v14 = v146++ > 8;
                if (v14)
                {
                  goto LABEL_182;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_233:
          *(this + 10) = v28;
          goto LABEL_248;
        case 2u:
          *(this + 36) |= 0x20u;
          v74 = *(a2 + 1);
          if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 23) = *(*a2 + v74);
          goto LABEL_247;
        case 3u:
          *(this + 36) |= 0x40u;
          v62 = *(a2 + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 24) = *(*a2 + v62);
          goto LABEL_247;
        case 4u:
          *(this + 36) |= 0x80u;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 25) = *(*a2 + v72);
          goto LABEL_247;
        case 5u:
          *(this + 36) |= 0x10u;
          v51 = *(a2 + 1);
          if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 22) = *(*a2 + v51);
          goto LABEL_247;
        case 6u:
          *(this + 36) |= 0x400u;
          v84 = *(a2 + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 28) = *(*a2 + v84);
          goto LABEL_247;
        case 7u:
          *(this + 36) |= 0x800u;
          v86 = *(a2 + 1);
          if (v86 > 0xFFFFFFFFFFFFFFFBLL || v86 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 29) = *(*a2 + v86);
          goto LABEL_247;
        case 8u:
          *(this + 36) |= 0x1000u;
          v73 = *(a2 + 1);
          if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 30) = *(*a2 + v73);
          goto LABEL_247;
        case 9u:
          *(this + 36) |= 0x200u;
          v104 = *(a2 + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 27) = *(*a2 + v104);
          goto LABEL_247;
        case 0xAu:
          *(this + 36) |= 0x100u;
          v54 = *(a2 + 1);
          v53 = *(a2 + 2);
          v55 = *a2;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(a2 + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_227;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_166:
            LODWORD(v58) = 0;
            goto LABEL_227;
          }

          v133 = 0;
          v134 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v135 = v53 - v54;
          if (!v17)
          {
            v135 = 0;
          }

          v136 = (v55 + v54);
          v137 = v54 + 1;
          while (2)
          {
            if (v135)
            {
              v138 = *v136;
              *(a2 + 1) = v137;
              v58 |= (v138 & 0x7F) << v133;
              if (v138 < 0)
              {
                v133 += 7;
                --v135;
                ++v136;
                ++v137;
                v14 = v134++ > 8;
                if (v14)
                {
                  goto LABEL_166;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_227:
          *(this + 26) = v58;
          goto LABEL_248;
        case 0xBu:
          *(this + 36) |= 0x4000u;
          v103 = *(a2 + 1);
          if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 32) = *(*a2 + v103);
          goto LABEL_247;
        case 0xCu:
          *(this + 36) |= 0x8000u;
          v50 = *(a2 + 1);
          if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 33) = *(*a2 + v50);
          goto LABEL_247;
        case 0xDu:
          *(this + 36) |= 0x10000u;
          v52 = *(a2 + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 34) = *(*a2 + v52);
          goto LABEL_247;
        case 0xEu:
          *(this + 36) |= 0x2000u;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(this + 31) = *(*a2 + v85);
          goto LABEL_247;
        case 0xFu:
          *(this + 36) |= 0x20000u;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 <= 0xFFFFFFFFFFFFFFF5 && v42 + 10 <= v41)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            do
            {
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                goto LABEL_224;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
            }

            while (!v14);
LABEL_158:
            LODWORD(v46) = 0;
            goto LABEL_224;
          }

          v127 = 0;
          v128 = 0;
          v46 = 0;
          v17 = v41 >= v42;
          v129 = v41 - v42;
          if (!v17)
          {
            v129 = 0;
          }

          v130 = (v43 + v42);
          v131 = v42 + 1;
          while (2)
          {
            if (v129)
            {
              v132 = *v130;
              *(a2 + 1) = v131;
              v46 |= (v132 & 0x7F) << v127;
              if (v132 < 0)
              {
                v127 += 7;
                --v129;
                ++v130;
                ++v131;
                v14 = v128++ > 8;
                if (v14)
                {
                  goto LABEL_158;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v46) = 0;
              }
            }

            else
            {
              LODWORD(v46) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_224:
          *(this + 35) = v46;
          goto LABEL_248;
        case 0x10u:
          *(this + 36) |= 4u;
          v64 = *(a2 + 1);
          v63 = *(a2 + 2);
          v65 = *a2;
          if (v64 <= 0xFFFFFFFFFFFFFFF5 && v64 + 10 <= v63)
          {
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = (v65 + v64);
            v70 = v64 + 1;
            do
            {
              *(a2 + 1) = v70;
              v71 = *v69++;
              v68 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                goto LABEL_230;
              }

              v66 += 7;
              ++v70;
              v14 = v67++ > 8;
            }

            while (!v14);
LABEL_174:
            v68 = 0;
            goto LABEL_230;
          }

          v139 = 0;
          v140 = 0;
          v68 = 0;
          v17 = v63 >= v64;
          v141 = v63 - v64;
          if (!v17)
          {
            v141 = 0;
          }

          v142 = (v65 + v64);
          v143 = v64 + 1;
          while (2)
          {
            if (v141)
            {
              v144 = *v142;
              *(a2 + 1) = v143;
              v68 |= (v144 & 0x7F) << v139;
              if (v144 < 0)
              {
                v139 += 7;
                --v141;
                ++v142;
                ++v143;
                v14 = v140++ > 8;
                if (v14)
                {
                  goto LABEL_174;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v68 = 0;
              }
            }

            else
            {
              v68 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_230:
          *(this + 9) = v68;
          goto LABEL_248;
        case 0x11u:
          *(this + 36) |= 1u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_221;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_150:
            v37 = 0;
            goto LABEL_221;
          }

          v121 = 0;
          v122 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v123 = v32 - v33;
          if (!v17)
          {
            v123 = 0;
          }

          v124 = (v34 + v33);
          v125 = v33 + 1;
          while (2)
          {
            if (v123)
            {
              v126 = *v124;
              *(a2 + 1) = v125;
              v37 |= (v126 & 0x7F) << v121;
              if (v126 < 0)
              {
                v121 += 7;
                --v123;
                ++v124;
                ++v125;
                v14 = v122++ > 8;
                if (v14)
                {
                  goto LABEL_150;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v37 = 0;
              }
            }

            else
            {
              v37 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_221:
          *(this + 7) = v37;
          goto LABEL_248;
        case 0x12u:
          *(this + 36) |= 2u;
          v76 = *(a2 + 1);
          v75 = *(a2 + 2);
          v77 = *a2;
          if (v76 <= 0xFFFFFFFFFFFFFFF5 && v76 + 10 <= v75)
          {
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = (v77 + v76);
            v82 = v76 + 1;
            do
            {
              *(a2 + 1) = v82;
              v83 = *v81++;
              v80 |= (v83 & 0x7F) << v78;
              if ((v83 & 0x80) == 0)
              {
                goto LABEL_236;
              }

              v78 += 7;
              ++v82;
              v14 = v79++ > 8;
            }

            while (!v14);
LABEL_190:
            v80 = 0;
            goto LABEL_236;
          }

          v151 = 0;
          v152 = 0;
          v80 = 0;
          v17 = v75 >= v76;
          v153 = v75 - v76;
          if (!v17)
          {
            v153 = 0;
          }

          v154 = (v77 + v76);
          v155 = v76 + 1;
          while (2)
          {
            if (v153)
            {
              v156 = *v154;
              *(a2 + 1) = v155;
              v80 |= (v156 & 0x7F) << v151;
              if (v156 < 0)
              {
                v151 += 7;
                --v153;
                ++v154;
                ++v155;
                v14 = v152++ > 8;
                if (v14)
                {
                  goto LABEL_190;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v80 = 0;
              }
            }

            else
            {
              v80 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_236:
          *(this + 8) = v80;
          goto LABEL_248;
        case 0x13u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v87 = *(a2 + 1);
            v88 = *(a2 + 2);
            while (v87 < v88 && (*(a2 + 24) & 1) == 0)
            {
              v90 = *(this + 5);
              v89 = *(this + 6);
              if (v90 >= v89)
              {
                v92 = *(this + 4);
                v93 = v90 - v92;
                v94 = (v90 - v92) >> 2;
                v95 = v94 + 1;
                if ((v94 + 1) >> 62)
                {
                  goto LABEL_255;
                }

                v96 = v89 - v92;
                if (v96 >> 1 > v95)
                {
                  v95 = v96 >> 1;
                }

                if (v96 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v97 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v97 = v95;
                }

                if (v97)
                {
                  sub_10002290C(this + 32, v97);
                }

                v98 = (v90 - v92) >> 2;
                v99 = (4 * v94);
                v100 = (4 * v94 - 4 * v98);
                *v99 = 0;
                v91 = v99 + 1;
                memcpy(v100, v92, v93);
                v101 = *(this + 4);
                *(this + 4) = v100;
                *(this + 5) = v91;
                *(this + 6) = 0;
                if (v101)
                {
                  operator delete(v101);
                }
              }

              else
              {
                *v90 = 0;
                v91 = v90 + 4;
              }

              *(this + 5) = v91;
              v102 = *(a2 + 1);
              if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
              {
                goto LABEL_195;
              }

              *(v91 - 1) = *(*a2 + v102);
              v88 = *(a2 + 2);
              v87 = *(a2 + 1) + 4;
              *(a2 + 1) = v87;
            }

            goto LABEL_196;
          }

          v158 = *(this + 5);
          v157 = *(this + 6);
          if (v158 >= v157)
          {
            v162 = *(this + 4);
            v163 = v158 - v162;
            v164 = (v158 - v162) >> 2;
            v165 = v164 + 1;
            if ((v164 + 1) >> 62)
            {
              goto LABEL_255;
            }

            v166 = v157 - v162;
            if (v166 >> 1 > v165)
            {
              v165 = v166 >> 1;
            }

            if (v166 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v167 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v167 = v165;
            }

            if (v167)
            {
              sub_10002290C(this + 32, v167);
            }

            v174 = (v158 - v162) >> 2;
            v175 = (4 * v164);
            v176 = (4 * v164 - 4 * v174);
            *v175 = 0;
            v159 = v175 + 1;
            memcpy(v176, v162, v163);
            v177 = *(this + 4);
            *(this + 4) = v176;
            *(this + 5) = v159;
            *(this + 6) = 0;
            if (v177)
            {
              operator delete(v177);
            }
          }

          else
          {
            *v158 = 0;
            v159 = v158 + 4;
          }

          *(this + 5) = v159;
          goto LABEL_243;
        case 0x14u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_254:
              v183 = 0;
              return v183 & 1;
            }

            v105 = *(a2 + 1);
            v106 = *(a2 + 2);
            while (v105 < v106 && (*(a2 + 24) & 1) == 0)
            {
              v108 = *(this + 2);
              v107 = *(this + 3);
              if (v108 >= v107)
              {
                v110 = *(this + 1);
                v111 = v108 - v110;
                v112 = (v108 - v110) >> 2;
                v113 = v112 + 1;
                if ((v112 + 1) >> 62)
                {
                  goto LABEL_255;
                }

                v114 = v107 - v110;
                if (v114 >> 1 > v113)
                {
                  v113 = v114 >> 1;
                }

                if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v115 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v115 = v113;
                }

                if (v115)
                {
                  sub_10002290C(this + 8, v115);
                }

                v116 = (v108 - v110) >> 2;
                v117 = (4 * v112);
                v118 = (4 * v112 - 4 * v116);
                *v117 = 0;
                v109 = v117 + 1;
                memcpy(v118, v110, v111);
                v119 = *(this + 1);
                *(this + 1) = v118;
                *(this + 2) = v109;
                *(this + 3) = 0;
                if (v119)
                {
                  operator delete(v119);
                }
              }

              else
              {
                *v108 = 0;
                v109 = v108 + 4;
              }

              *(this + 2) = v109;
              v120 = *(a2 + 1);
              if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
              {
LABEL_195:
                *(a2 + 24) = 1;
                break;
              }

              *(v109 - 1) = *(*a2 + v120);
              v106 = *(a2 + 2);
              v105 = *(a2 + 1) + 4;
              *(a2 + 1) = v105;
            }

LABEL_196:
            PB::Reader::recallMark();
          }

          else
          {
            v161 = *(this + 2);
            v160 = *(this + 3);
            if (v161 >= v160)
            {
              v168 = *(this + 1);
              v169 = v161 - v168;
              v170 = (v161 - v168) >> 2;
              v171 = v170 + 1;
              if ((v170 + 1) >> 62)
              {
LABEL_255:
                sub_10000CD24();
              }

              v172 = v160 - v168;
              if (v172 >> 1 > v171)
              {
                v171 = v172 >> 1;
              }

              if (v172 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v173 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v173 = v171;
              }

              if (v173)
              {
                sub_10002290C(this + 8, v173);
              }

              v178 = (v161 - v168) >> 2;
              v179 = (4 * v170);
              v180 = (4 * v170 - 4 * v178);
              *v179 = 0;
              v159 = v179 + 1;
              memcpy(v180, v168, v169);
              v181 = *(this + 1);
              *(this + 1) = v180;
              *(this + 2) = v159;
              *(this + 3) = 0;
              if (v181)
              {
                operator delete(v181);
              }
            }

            else
            {
              *v161 = 0;
              v159 = v161 + 4;
            }

            *(this + 2) = v159;
LABEL_243:
            v182 = *(a2 + 1);
            if (v182 <= 0xFFFFFFFFFFFFFFFBLL && v182 + 4 <= *(a2 + 2))
            {
              *(v159 - 1) = *(*a2 + v182);
LABEL_247:
              *(a2 + 1) += 4;
            }

            else
            {
LABEL_245:
              *(a2 + 24) = 1;
            }
          }

LABEL_248:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_252;
          }

          break;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_254;
          }

          goto LABEL_248;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_252:
  v183 = v4 ^ 1;
  return v183 & 1;
}

uint64_t CMMsl::KappaDirectionOfTravel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 144);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 80), 1u);
    v4 = *(v3 + 144);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 92), 2u);
  v4 = *(v3 + 144);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 96), 3u);
  v4 = *(v3 + 144);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 100), 4u);
  v4 = *(v3 + 144);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 88), 5u);
  v4 = *(v3 + 144);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 112), 6u);
  v4 = *(v3 + 144);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 116), 7u);
  v4 = *(v3 + 144);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 120), 8u);
  v4 = *(v3 + 144);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 108), 9u);
  v4 = *(v3 + 144);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 0xAu);
  v4 = *(v3 + 144);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 128), 0xBu);
  v4 = *(v3 + 144);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 132), 0xCu);
  v4 = *(v3 + 144);
  if ((v4 & 0x10000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 136), 0xDu);
  v4 = *(v3 + 144);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 124), 0xEu);
  v4 = *(v3 + 144);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::writeVarInt(a2, *(v3 + 140), 0xFu);
  v4 = *(v3 + 144);
  if ((v4 & 4) == 0)
  {
LABEL_17:
    if ((v4 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_43:
    this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0x11u);
    if ((*(v3 + 144) & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_42:
  this = PB::Writer::writeVarInt(a2, *(v3 + 72), 0x10u);
  v4 = *(v3 + 144);
  if (v4)
  {
    goto LABEL_43;
  }

LABEL_18:
  if ((v4 & 2) != 0)
  {
LABEL_19:
    this = PB::Writer::writeVarInt(a2, *(v3 + 64), 0x12u);
  }

LABEL_20:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 0x13u);
  }

  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v9 != v8)
  {
    v10 = *v9++;
    this = PB::Writer::write(a2, v10, 0x14u);
  }

  return this;
}

uint64_t CMMsl::KappaDirectionOfTravel::hash_value(CMMsl::KappaDirectionOfTravel *this)
{
  v2 = *(this + 36);
  if ((v2 & 8) == 0)
  {
    v3 = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_45:
    v5 = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_46:
    v7 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_47:
    v9 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_48:
    v11 = 0;
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_49:
    v13 = 0;
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_18;
    }

LABEL_50:
    v15 = 0;
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    v17 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    v19 = 0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

  v3 = *(this + 10);
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_45;
  }

LABEL_3:
  v4 = *(this + 23);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_46;
  }

LABEL_6:
  v6 = *(this + 24);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_47;
  }

LABEL_9:
  v8 = *(this + 25);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_48;
  }

LABEL_12:
  v10 = *(this + 22);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((v2 & 0x400) == 0)
  {
    goto LABEL_49;
  }

LABEL_15:
  v12 = *(this + 28);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v2 & 0x800) == 0)
  {
    goto LABEL_50;
  }

LABEL_18:
  v14 = *(this + 29);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  v16 = *(this + 30);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  v18 = *(this + 27);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((v2 & 0x100) != 0)
  {
LABEL_27:
    v20 = *(this + 26);
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_28;
    }

LABEL_54:
    v22 = 0;
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_31;
    }

LABEL_55:
    v24 = 0;
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_34;
    }

LABEL_56:
    v26 = 0;
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_37;
    }

LABEL_57:
    v28 = 0;
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

LABEL_53:
  v20 = 0;
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_54;
  }

LABEL_28:
  v21 = *(this + 32);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_55;
  }

LABEL_31:
  v23 = *(this + 33);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v2 & 0x10000) == 0)
  {
    goto LABEL_56;
  }

LABEL_34:
  v25 = *(this + 34);
  v26 = LODWORD(v25);
  if (v25 == 0.0)
  {
    v26 = 0;
  }

  if ((v2 & 0x2000) == 0)
  {
    goto LABEL_57;
  }

LABEL_37:
  v27 = *(this + 31);
  v28 = LODWORD(v27);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  if ((v2 & 0x20000) != 0)
  {
LABEL_40:
    v29 = *(this + 35);
    if ((v2 & 4) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  v29 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_41:
    v30 = *(this + 9);
    if (v2)
    {
      goto LABEL_42;
    }

LABEL_60:
    v31 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_43;
    }

LABEL_61:
    v32 = 0;
    goto LABEL_62;
  }

LABEL_59:
  v30 = 0;
  if ((v2 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_42:
  v31 = *(this + 7);
  if ((v2 & 2) == 0)
  {
    goto LABEL_61;
  }

LABEL_43:
  v32 = *(this + 8);
LABEL_62:
  v33 = v5 ^ v3 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v20 ^ v22 ^ v24 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32;
  v34 = *(this + 4);
  v35 = *(this + 5);
  v36 = v33 ^ PBHashBytes();
  v37 = *(this + 1);
  v38 = *(this + 2);
  return v36 ^ PBHashBytes();
}

void CMMsl::KappaGpsResult::~KappaGpsResult(CMMsl::KappaGpsResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaGpsResult::KappaGpsResult(uint64_t this, const CMMsl::KappaGpsResult *a2)
{
  *this = off_10041F6C0;
  *(this + 132) = 0;
  v2 = *(a2 + 33);
  if ((v2 & 0x4000000) != 0)
  {
    v4 = *(a2 + 126);
    v3 = 0x4000000;
    *(this + 132) = 0x4000000;
    *(this + 126) = v4;
    v2 = *(a2 + 33);
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 127);
    v3 |= 0x8000000u;
    *(this + 132) = v3;
    *(this + 127) = v5;
    v2 = *(a2 + 33);
  }

LABEL_6:
  if ((v2 & 0x80000) != 0)
  {
    v6 = *(a2 + 26);
    v3 |= 0x80000u;
    *(this + 132) = v3;
    *(this + 104) = v6;
    v2 = *(a2 + 33);
    if ((v2 & 0x800000) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x800000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 30);
  v3 |= 0x800000u;
  *(this + 132) = v3;
  *(this + 120) = v7;
  v2 = *(a2 + 33);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = *(a2 + 27);
  v3 |= 0x100000u;
  *(this + 132) = v3;
  *(this + 108) = v8;
  v2 = *(a2 + 33);
  if ((v2 & 0x20000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(a2 + 24);
  v3 |= 0x20000u;
  *(this + 132) = v3;
  *(this + 96) = v9;
  v2 = *(a2 + 33);
  if ((v2 & 0x10000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = *(a2 + 23);
  v3 |= 0x10000u;
  *(this + 132) = v3;
  *(this + 92) = v10;
  v2 = *(a2 + 33);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 132) = v3;
  *(this + 60) = v11;
  v2 = *(a2 + 33);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 132) = v3;
  *(this + 56) = v12;
  v2 = *(a2 + 33);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 132) = v3;
  *(this + 52) = v13;
  v2 = *(a2 + 33);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 132) = v3;
  *(this + 48) = v14;
  v2 = *(a2 + 33);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 132) = v3;
  *(this + 72) = v15;
  v2 = *(a2 + 33);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = *(a2 + 21);
  v3 |= 0x4000u;
  *(this + 132) = v3;
  *(this + 84) = v16;
  v2 = *(a2 + 33);
  if ((v2 & 0x200000) == 0)
  {
LABEL_18:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = *(a2 + 28);
  v3 |= 0x200000u;
  *(this + 132) = v3;
  *(this + 112) = v17;
  v2 = *(a2 + 33);
  if ((v2 & 0x40000) == 0)
  {
LABEL_19:
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = *(a2 + 25);
  v3 |= 0x40000u;
  *(this + 132) = v3;
  *(this + 100) = v18;
  v2 = *(a2 + 33);
  if ((v2 & 8) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(a2 + 4);
  v3 |= 8u;
  *(this + 132) = v3;
  *(this + 32) = v19;
  v2 = *(a2 + 33);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = *(a2 + 124);
  v3 |= 0x1000000u;
  *(this + 132) = v3;
  *(this + 124) = v20;
  v2 = *(a2 + 33);
  if ((v2 & 0x8000) == 0)
  {
LABEL_22:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = *(a2 + 22);
  v3 |= 0x8000u;
  *(this + 132) = v3;
  *(this + 88) = v21;
  v2 = *(a2 + 33);
  if ((v2 & 0x10) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 132) = v3;
  *(this + 40) = v22;
  v2 = *(a2 + 33);
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = *(a2 + 29);
  v3 |= 0x400000u;
  *(this + 132) = v3;
  *(this + 116) = v23;
  v2 = *(a2 + 33);
  if ((v2 & 4) == 0)
  {
LABEL_25:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  v24 = *(a2 + 3);
  v3 |= 4u;
  *(this + 132) = v3;
  *(this + 24) = v24;
  v2 = *(a2 + 33);
  if ((v2 & 0x2000) == 0)
  {
LABEL_26:
    if ((v2 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = *(a2 + 20);
  v3 |= 0x2000u;
  *(this + 132) = v3;
  *(this + 80) = v25;
  v2 = *(a2 + 33);
  if ((v2 & 2) == 0)
  {
LABEL_27:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  v26 = *(a2 + 2);
  v3 |= 2u;
  *(this + 132) = v3;
  *(this + 16) = v26;
  v2 = *(a2 + 33);
  if ((v2 & 0x1000) == 0)
  {
LABEL_28:
    if ((v2 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 132) = v3;
  *(this + 76) = v27;
  v2 = *(a2 + 33);
  if ((v2 & 1) == 0)
  {
LABEL_29:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  v28 = *(a2 + 1);
  v3 |= 1u;
  *(this + 132) = v3;
  *(this + 8) = v28;
  v2 = *(a2 + 33);
  if ((v2 & 0x200) == 0)
  {
LABEL_30:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = *(a2 + 16);
  v3 |= 0x200u;
  *(this + 132) = v3;
  *(this + 64) = v29;
  v2 = *(a2 + 33);
  if ((v2 & 0x400) == 0)
  {
LABEL_31:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30 = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 132) = v3;
  *(this + 68) = v30;
  v2 = *(a2 + 33);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x2000000) == 0)
    {
      return this;
    }

LABEL_60:
    v32 = *(a2 + 125);
    *(this + 132) = v3 | 0x2000000;
    *(this + 125) = v32;
    return this;
  }

LABEL_59:
  v31 = *(a2 + 128);
  v3 |= 0x10000000u;
  *(this + 132) = v3;
  *(this + 128) = v31;
  if ((*(a2 + 33) & 0x2000000) != 0)
  {
    goto LABEL_60;
  }

  return this;
}

CMMsl *CMMsl::KappaGpsResult::operator=(CMMsl *a1, const CMMsl::KappaGpsResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaGpsResult::KappaGpsResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaGpsResult *a2, CMMsl::KappaGpsResult *a3)
{
  v3 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v3;
  LOBYTE(v3) = *(this + 126);
  *(this + 126) = *(a2 + 126);
  *(a2 + 126) = v3;
  LOBYTE(v3) = *(this + 127);
  *(this + 127) = *(a2 + 127);
  *(a2 + 127) = v3;
  v4 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  v5 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v5;
  v6 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v8;
  v9 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v9;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v11;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  v13 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v13;
  v14 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v14;
  v15 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v15;
  v16 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v16;
  v17 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v17;
  LOBYTE(v17) = *(this + 124);
  *(this + 124) = *(a2 + 124);
  *(a2 + 124) = v17;
  LODWORD(v17) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v17;
  v18 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v18;
  v19 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v19;
  v20 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v20;
  v21 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v21;
  v22 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v22;
  v23 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v23;
  v24 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v24;
  v25 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v25;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  LOBYTE(v24) = *(this + 128);
  *(this + 128) = *(a2 + 128);
  *(a2 + 128) = v24;
  LOBYTE(v24) = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v24;
  return result;
}

float CMMsl::KappaGpsResult::KappaGpsResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F6C0;
  *(a1 + 132) = *(a2 + 132);
  *(a2 + 132) = 0;
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 68);
  *(a1 + 68) = result;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 125) = *(a2 + 125);
  return result;
}

CMMsl *CMMsl::KappaGpsResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaGpsResult::KappaGpsResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaGpsResult::formatText(CMMsl::KappaGpsResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 33);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "configSuddenTransitionDurationThreshold", *(this + 12));
    v5 = *(this + 33);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "configTransitionEndSpeedThreshold", *(this + 13));
  v5 = *(this + 33);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "configTransitionStartSpeedThreshold", *(this + 14));
  v5 = *(this + 33);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "deltaTriggerTime", *(this + 15));
  v5 = *(this + 33);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "gpsSpeedMetersPerSecond", *(this + 16));
  v5 = *(this + 33);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "gpsSpeedMilesPerHour", *(this + 17));
  v5 = *(this + 33);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "gpsTimestamp", *(this + 1));
  v5 = *(this + 33);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "highSpeedMetersPerSecondThreshold", *(this + 18));
  v5 = *(this + 33);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "isGPSDetected", *(this + 124));
  v5 = *(this + 33);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "isGPSDetectedDebug", *(this + 125));
  v5 = *(this + 33);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "isSuddenTransitionDetected", *(this + 126));
  v5 = *(this + 33);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "isTransitionDetected", *(this + 127));
  v5 = *(this + 33);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "lastDetectedTransitionSpeedEnd", *(this + 19));
  v5 = *(this + 33);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "lastDetectedTransitionSpeedStart", *(this + 20));
  v5 = *(this + 33);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "lastDetectedTransitionTimeEnd", *(this + 2));
  v5 = *(this + 33);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "lastDetectedTransitionTimeStart", *(this + 3));
  v5 = *(this + 33);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "loggedAtEpoch", *(this + 128));
  v5 = *(this + 33);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "lowSpeedMetersPerSecondThresold", *(this + 21));
  v5 = *(this + 33);
  if ((v5 & 0x8000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "state", *(this + 22));
  v5 = *(this + 33);
  if ((v5 & 0x10000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "streamEndSpeed", *(this + 23));
  v5 = *(this + 33);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "streamStartSpeed", *(this + 24));
  v5 = *(this + 33);
  if ((v5 & 8) == 0)
  {
LABEL_23:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  v5 = *(this + 33);
  if ((v5 & 0x40000) == 0)
  {
LABEL_24:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "transitionBaseDuration", *(this + 25));
  v5 = *(this + 33);
  if ((v5 & 0x80000) == 0)
  {
LABEL_25:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "transitionDuration", *(this + 26));
  v5 = *(this + 33);
  if ((v5 & 0x100000) == 0)
  {
LABEL_26:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "transitionEndSpeed", *(this + 27));
  v5 = *(this + 33);
  if ((v5 & 0x200000) == 0)
  {
LABEL_27:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "transitionEpsilonDuration", *(this + 28));
  v5 = *(this + 33);
  if ((v5 & 0x400000) == 0)
  {
LABEL_28:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "transitionSpeedStart", *(this + 29));
  v5 = *(this + 33);
  if ((v5 & 0x800000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "transitionStartSpeed", *(this + 30));
  if ((*(this + 33) & 0x10) != 0)
  {
LABEL_30:
    PB::TextFormatter::format(a2, "transitionTimeStart", *(this + 5));
  }

LABEL_31:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaGpsResult::readFrom(CMMsl::KappaGpsResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_275;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 103)
      {
        if (v22 > 7)
        {
          if (v22 <= 10)
          {
            if (v22 == 8)
            {
              *(this + 33) |= 0x100u;
              v79 = *(a2 + 1);
              v2 = *(a2 + 2);
              v80 = *a2;
              if (v79 > 0xFFFFFFFFFFFFFFF5 || v79 + 10 > v2)
              {
                v103 = 0;
                v104 = 0;
                v83 = 0;
                if (v2 <= v79)
                {
                  v2 = *(a2 + 1);
                }

                v105 = v2 - v79;
                v106 = (v80 + v79);
                v107 = v79 + 1;
                while (1)
                {
                  if (!v105)
                  {
                    LODWORD(v83) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_257;
                  }

                  v108 = v107;
                  v109 = *v106;
                  *(a2 + 1) = v108;
                  v83 |= (v109 & 0x7F) << v103;
                  if ((v109 & 0x80) == 0)
                  {
                    break;
                  }

                  v103 += 7;
                  --v105;
                  ++v106;
                  v107 = v108 + 1;
                  v14 = v104++ > 8;
                  if (v14)
                  {
                    LODWORD(v83) = 0;
                    goto LABEL_256;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v83) = 0;
                }

LABEL_256:
                v2 = v108;
              }

              else
              {
                v81 = 0;
                v82 = 0;
                v83 = 0;
                v84 = (v80 + v79);
                v85 = v79 + 1;
                while (1)
                {
                  v2 = v85;
                  *(a2 + 1) = v85;
                  v86 = *v84++;
                  v83 |= (v86 & 0x7F) << v81;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  ++v85;
                  v14 = v82++ > 8;
                  if (v14)
                  {
                    LODWORD(v83) = 0;
                    break;
                  }
                }
              }

LABEL_257:
              *(this + 15) = v83;
              goto LABEL_236;
            }

            if (v22 == 9)
            {
              *(this + 33) |= 0x80u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 14) = *(*a2 + v2);
            }

            else
            {
              *(this + 33) |= 0x40u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 13) = *(*a2 + v2);
            }

            goto LABEL_235;
          }

          if (v22 > 101)
          {
            if (v22 == 102)
            {
              *(this + 33) |= 0x4000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 21) = *(*a2 + v2);
              goto LABEL_235;
            }

            if (v22 == 103)
            {
              *(this + 33) |= 0x200000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 28) = *(*a2 + v2);
              goto LABEL_235;
            }
          }

          else
          {
            if (v22 == 11)
            {
              *(this + 33) |= 0x20u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 12) = *(*a2 + v2);
              goto LABEL_235;
            }

            if (v22 == 101)
            {
              *(this + 33) |= 0x800u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 18) = *(*a2 + v2);
              goto LABEL_235;
            }
          }
        }

        else
        {
          if (v22 > 3)
          {
            if (v22 > 5)
            {
              if (v22 == 6)
              {
                *(this + 33) |= 0x20000u;
                v2 = *(a2 + 1);
                if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
                {
                  goto LABEL_163;
                }

                *(this + 24) = *(*a2 + v2);
              }

              else
              {
                *(this + 33) |= 0x10000u;
                v2 = *(a2 + 1);
                if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
                {
                  goto LABEL_163;
                }

                *(this + 23) = *(*a2 + v2);
              }
            }

            else if (v22 == 4)
            {
              *(this + 33) |= 0x800000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 30) = *(*a2 + v2);
            }

            else
            {
              *(this + 33) |= 0x100000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 27) = *(*a2 + v2);
            }

            goto LABEL_235;
          }

          switch(v22)
          {
            case 1:
              *(this + 33) |= 0x4000000u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v78 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v77 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v78 = v77 != 0;
              }

              *(this + 126) = v78;
              goto LABEL_236;
            case 2:
              *(this + 33) |= 0x8000000u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v68 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v67 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v68 = v67 != 0;
              }

              *(this + 127) = v68;
              goto LABEL_236;
            case 3:
              *(this + 33) |= 0x80000u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_163;
              }

              *(this + 26) = *(*a2 + v2);
              goto LABEL_235;
          }
        }
      }

      else if (v22 <= 206)
      {
        if (v22 > 202)
        {
          if (v22 <= 204)
          {
            if (v22 == 203)
            {
              *(this + 33) |= 0x8000u;
              v59 = *(a2 + 1);
              v2 = *(a2 + 2);
              v60 = *a2;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v2)
              {
                v89 = 0;
                v90 = 0;
                v63 = 0;
                if (v2 <= v59)
                {
                  v2 = *(a2 + 1);
                }

                v91 = v2 - v59;
                v92 = (v60 + v59);
                v93 = v59 + 1;
                while (1)
                {
                  if (!v91)
                  {
                    LODWORD(v63) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_249;
                  }

                  v94 = v93;
                  v95 = *v92;
                  *(a2 + 1) = v94;
                  v63 |= (v95 & 0x7F) << v89;
                  if ((v95 & 0x80) == 0)
                  {
                    break;
                  }

                  v89 += 7;
                  --v91;
                  ++v92;
                  v93 = v94 + 1;
                  v14 = v90++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    goto LABEL_248;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v63) = 0;
                }

LABEL_248:
                v2 = v94;
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  v2 = v65;
                  *(a2 + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    break;
                  }
                }
              }

LABEL_249:
              *(this + 22) = v63;
            }

            else
            {
              *(this + 33) |= 0x10u;
              v31 = *(a2 + 1);
              v2 = *(a2 + 2);
              v32 = *a2;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v110 = 0;
                v111 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(a2 + 1);
                }

                v112 = v2 - v31;
                v113 = (v32 + v31);
                v114 = v31 + 1;
                while (1)
                {
                  if (!v112)
                  {
                    v35 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_261;
                  }

                  v115 = v114;
                  v116 = *v113;
                  *(a2 + 1) = v115;
                  v35 |= (v116 & 0x7F) << v110;
                  if ((v116 & 0x80) == 0)
                  {
                    break;
                  }

                  v110 += 7;
                  --v112;
                  ++v113;
                  v114 = v115 + 1;
                  v14 = v111++ > 8;
                  if (v14)
                  {
                    v35 = 0;
                    goto LABEL_260;
                  }
                }

                if (*(a2 + 24))
                {
                  v35 = 0;
                }

LABEL_260:
                v2 = v115;
              }

              else
              {
                v33 = 0;
                v34 = 0;
                v35 = 0;
                v36 = (v32 + v31);
                v37 = v31 + 1;
                while (1)
                {
                  v2 = v37;
                  *(a2 + 1) = v37;
                  v38 = *v36++;
                  v35 |= (v38 & 0x7F) << v33;
                  if ((v38 & 0x80) == 0)
                  {
                    break;
                  }

                  v33 += 7;
                  ++v37;
                  v14 = v34++ > 8;
                  if (v14)
                  {
                    v35 = 0;
                    break;
                  }
                }
              }

LABEL_261:
              *(this + 5) = v35;
            }

            goto LABEL_236;
          }

          if (v22 != 205)
          {
            *(this + 33) |= 4u;
            v41 = *(a2 + 1);
            v2 = *(a2 + 2);
            v42 = *a2;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v117 = 0;
              v118 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(a2 + 1);
              }

              v119 = v2 - v41;
              v120 = (v42 + v41);
              v121 = v41 + 1;
              while (1)
              {
                if (!v119)
                {
                  v45 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_265;
                }

                v122 = v121;
                v123 = *v120;
                *(a2 + 1) = v122;
                v45 |= (v123 & 0x7F) << v117;
                if ((v123 & 0x80) == 0)
                {
                  break;
                }

                v117 += 7;
                --v119;
                ++v120;
                v121 = v122 + 1;
                v14 = v118++ > 8;
                if (v14)
                {
                  v45 = 0;
                  goto LABEL_264;
                }
              }

              if (*(a2 + 24))
              {
                v45 = 0;
              }

LABEL_264:
              v2 = v122;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = (v42 + v41);
              v47 = v41 + 1;
              while (1)
              {
                v2 = v47;
                *(a2 + 1) = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v14 = v44++ > 8;
                if (v14)
                {
                  v45 = 0;
                  break;
                }
              }
            }

LABEL_265:
            *(this + 3) = v45;
            goto LABEL_236;
          }

          *(this + 33) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_163;
          }

          *(this + 29) = *(*a2 + v2);
          goto LABEL_235;
        }

        switch(v22)
        {
          case 0x68:
            *(this + 33) |= 0x40000u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_163;
            }

            *(this + 25) = *(*a2 + v2);
            goto LABEL_235;
          case 0xC9:
            *(this + 33) |= 8u;
            v69 = *(a2 + 1);
            v2 = *(a2 + 2);
            v70 = *a2;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v2)
            {
              v96 = 0;
              v97 = 0;
              v73 = 0;
              if (v2 <= v69)
              {
                v2 = *(a2 + 1);
              }

              v98 = v2 - v69;
              v99 = (v70 + v69);
              v100 = v69 + 1;
              while (1)
              {
                if (!v98)
                {
                  v73 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_253;
                }

                v101 = v100;
                v102 = *v99;
                *(a2 + 1) = v101;
                v73 |= (v102 & 0x7F) << v96;
                if ((v102 & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                --v98;
                ++v99;
                v100 = v101 + 1;
                v14 = v97++ > 8;
                if (v14)
                {
                  v73 = 0;
                  goto LABEL_252;
                }
              }

              if (*(a2 + 24))
              {
                v73 = 0;
              }

LABEL_252:
              v2 = v101;
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                v2 = v75;
                *(a2 + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  v73 = 0;
                  break;
                }
              }
            }

LABEL_253:
            *(this + 4) = v73;
            goto LABEL_236;
          case 0xCA:
            *(this + 33) |= 0x1000000u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v40 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v39 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v40 = v39 != 0;
            }

            *(this + 124) = v40;
            goto LABEL_236;
        }
      }

      else if (v22 > 301)
      {
        if (v22 <= 303)
        {
          if (v22 == 302)
          {
            *(this + 33) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_163;
            }

            *(this + 16) = *(*a2 + v2);
          }

          else
          {
            *(this + 33) |= 0x400u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_163;
            }

            *(this + 17) = *(*a2 + v2);
          }

          goto LABEL_235;
        }

        if (v22 == 304)
        {
          *(this + 33) |= 0x10000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v88 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v87 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v88 = v87 != 0;
          }

          *(this + 128) = v88;
          goto LABEL_236;
        }

        if (v22 == 305)
        {
          *(this + 33) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v58 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v57 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v58 = v57 != 0;
          }

          *(this + 125) = v58;
          goto LABEL_236;
        }
      }

      else
      {
        if (v22 <= 208)
        {
          if (v22 != 207)
          {
            *(this + 33) |= 2u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v124 = 0;
              v125 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v126 = v2 - v23;
              v127 = (v24 + v23);
              v128 = v23 + 1;
              while (1)
              {
                if (!v126)
                {
                  v27 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_269;
                }

                v129 = v128;
                v130 = *v127;
                *(a2 + 1) = v129;
                v27 |= (v130 & 0x7F) << v124;
                if ((v130 & 0x80) == 0)
                {
                  break;
                }

                v124 += 7;
                --v126;
                ++v127;
                v128 = v129 + 1;
                v14 = v125++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_268;
                }
              }

              if (*(a2 + 24))
              {
                v27 = 0;
              }

LABEL_268:
              v2 = v129;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  v27 = 0;
                  break;
                }
              }
            }

LABEL_269:
            *(this + 2) = v27;
            goto LABEL_236;
          }

          *(this + 33) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_163:
            *(a2 + 24) = 1;
            goto LABEL_236;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_235;
        }

        if (v22 == 209)
        {
          *(this + 33) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_163;
          }

          *(this + 19) = *(*a2 + v2);
LABEL_235:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_236;
        }

        if (v22 == 301)
        {
          *(this + 33) |= 1u;
          v49 = *(a2 + 1);
          v2 = *(a2 + 2);
          v50 = *a2;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v131 = 0;
            v132 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(a2 + 1);
            }

            v133 = v2 - v49;
            v134 = (v50 + v49);
            v135 = v49 + 1;
            while (1)
            {
              if (!v133)
              {
                v53 = 0;
                *(a2 + 24) = 1;
                goto LABEL_273;
              }

              v136 = v135;
              v137 = *v134;
              *(a2 + 1) = v136;
              v53 |= (v137 & 0x7F) << v131;
              if ((v137 & 0x80) == 0)
              {
                break;
              }

              v131 += 7;
              --v133;
              ++v134;
              v135 = v136 + 1;
              v14 = v132++ > 8;
              if (v14)
              {
                v53 = 0;
                goto LABEL_272;
              }
            }

            if (*(a2 + 24))
            {
              v53 = 0;
            }

LABEL_272:
            v2 = v136;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(a2 + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                v53 = 0;
                break;
              }
            }
          }

LABEL_273:
          *(this + 1) = v53;
          goto LABEL_236;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v138 = 0;
        return v138 & 1;
      }

      v2 = *(a2 + 1);
LABEL_236:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_275:
  v138 = v4 ^ 1;
  return v138 & 1;
}

uint64_t CMMsl::KappaGpsResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 132);
  if ((v4 & 0x4000000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 126), 1u);
    v4 = *(v3 + 132);
    if ((v4 & 0x8000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 127), 2u);
  v4 = *(v3 + 132);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 104), 3u);
  v4 = *(v3 + 132);
  if ((v4 & 0x800000) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 120), 4u);
  v4 = *(v3 + 132);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 108), 5u);
  v4 = *(v3 + 132);
  if ((v4 & 0x20000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 96), 6u);
  v4 = *(v3 + 132);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 92), 7u);
  v4 = *(v3 + 132);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 8u);
  v4 = *(v3 + 132);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 56), 9u);
  v4 = *(v3 + 132);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 52), 0xAu);
  v4 = *(v3 + 132);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 48), 0xBu);
  v4 = *(v3 + 132);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 72), 0x65u);
  v4 = *(v3 + 132);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 84), 0x66u);
  v4 = *(v3 + 132);
  if ((v4 & 0x200000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 112), 0x67u);
  v4 = *(v3 + 132);
  if ((v4 & 0x40000) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 100), 0x68u);
  v4 = *(v3 + 132);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 0xC9u);
  v4 = *(v3 + 132);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 124), 0xCAu);
  v4 = *(v3 + 132);
  if ((v4 & 0x8000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::writeVarInt(a2, *(v3 + 88), 0xCBu);
  v4 = *(v3 + 132);
  if ((v4 & 0x10) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0xCCu);
  v4 = *(v3 + 132);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 116), 0xCDu);
  v4 = *(v3 + 132);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 0xCEu);
  v4 = *(v3 + 132);
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 80), 0xCFu);
  v4 = *(v3 + 132);
  if ((v4 & 2) == 0)
  {
LABEL_24:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 0xD0u);
  v4 = *(v3 + 132);
  if ((v4 & 0x1000) == 0)
  {
LABEL_25:
    if ((v4 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 76), 0xD1u);
  v4 = *(v3 + 132);
  if ((v4 & 1) == 0)
  {
LABEL_26:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0x12Du);
  v4 = *(v3 + 132);
  if ((v4 & 0x200) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 64), 0x12Eu);
  v4 = *(v3 + 132);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    this = PB::Writer::write(a2, *(v3 + 128), 0x130u);
    if ((*(v3 + 132) & 0x2000000) == 0)
    {
      return this;
    }

    goto LABEL_59;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 68), 0x12Fu);
  v4 = *(v3 + 132);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((v4 & 0x2000000) == 0)
  {
    return this;
  }

LABEL_59:
  v5 = *(v3 + 125);

  return PB::Writer::write(a2, v5, 0x131u);
}

uint64_t CMMsl::KappaGpsResult::hash_value(CMMsl::KappaGpsResult *this)
{
  v1 = *(this + 33);
  if ((v1 & 0x4000000) != 0)
  {
    v48 = *(this + 126);
    if ((v1 & 0x8000000) != 0)
    {
LABEL_3:
      v2 = *(this + 127);
      if ((v1 & 0x80000) != 0)
      {
        goto LABEL_4;
      }

LABEL_84:
      v4 = 0;
      if ((v1 & 0x800000) != 0)
      {
        goto LABEL_8;
      }

LABEL_85:
      v6 = 0;
      if ((v1 & 0x100000) != 0)
      {
        goto LABEL_12;
      }

LABEL_86:
      v8 = 0;
      if ((v1 & 0x20000) != 0)
      {
        goto LABEL_16;
      }

LABEL_87:
      v10 = 0;
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_20;
      }

LABEL_88:
      v12 = 0;
      if ((v1 & 0x100) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_89;
    }
  }

  else
  {
    v48 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_84;
  }

LABEL_4:
  v3 = *(this + 26);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = LODWORD(v3);
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_85;
  }

LABEL_8:
  v5 = *(this + 30);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = LODWORD(v5);
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_86;
  }

LABEL_12:
  v7 = *(this + 27);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = LODWORD(v7);
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

LABEL_16:
  v9 = *(this + 24);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = LODWORD(v9);
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_88;
  }

LABEL_20:
  v11 = *(this + 23);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = LODWORD(v11);
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_24:
    v13 = *(this + 15);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_90:
    v15 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_29;
    }

LABEL_91:
    v17 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_33;
    }

LABEL_92:
    v19 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_37;
    }

LABEL_93:
    v21 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

LABEL_94:
    v23 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_45;
    }

LABEL_95:
    v25 = 0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_49;
    }

LABEL_96:
    v27 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_97;
  }

LABEL_89:
  v13 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_90;
  }

LABEL_25:
  v14 = *(this + 14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = LODWORD(v14);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_91;
  }

LABEL_29:
  v16 = *(this + 13);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = LODWORD(v16);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_92;
  }

LABEL_33:
  v18 = *(this + 12);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_93;
  }

LABEL_37:
  v20 = *(this + 18);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = LODWORD(v20);
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_94;
  }

LABEL_41:
  v22 = *(this + 21);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_95;
  }

LABEL_45:
  v24 = *(this + 28);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = LODWORD(v24);
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_96;
  }

LABEL_49:
  v26 = *(this + 25);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = LODWORD(v26);
  }

  if ((v1 & 8) != 0)
  {
LABEL_53:
    v28 = *(this + 4);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_98;
  }

LABEL_97:
  v28 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_54:
    v29 = *(this + 124);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_99;
  }

LABEL_98:
  v29 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_55:
    v30 = *(this + 22);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_100;
  }

LABEL_99:
  v30 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_56:
    v31 = *(this + 5);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_57;
    }

LABEL_101:
    v33 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_102;
  }

LABEL_100:
  v31 = 0;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_101;
  }

LABEL_57:
  v32 = *(this + 29);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  else
  {
    v33 = LODWORD(v32);
  }

  if ((v1 & 4) != 0)
  {
LABEL_61:
    v34 = *(this + 3);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_62;
    }

LABEL_103:
    v36 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_104;
  }

LABEL_102:
  v34 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_103;
  }

LABEL_62:
  v35 = *(this + 20);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  else
  {
    v36 = LODWORD(v35);
  }

  if ((v1 & 2) != 0)
  {
LABEL_66:
    v37 = *(this + 2);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_67;
    }

LABEL_105:
    v39 = 0;
    if (v1)
    {
      goto LABEL_71;
    }

    goto LABEL_106;
  }

LABEL_104:
  v37 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_105;
  }

LABEL_67:
  v38 = *(this + 19);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v39 = LODWORD(v38);
  }

  if (v1)
  {
LABEL_71:
    v40 = *(this + 1);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_72;
    }

LABEL_107:
    v42 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_76;
    }

LABEL_108:
    v44 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_109:
    v45 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_81;
    }

LABEL_110:
    v46 = 0;
    return v2 ^ v48 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33 ^ v34 ^ v36 ^ v37 ^ v39 ^ v40 ^ v42 ^ v44 ^ v45 ^ v46;
  }

LABEL_106:
  v40 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_107;
  }

LABEL_72:
  v41 = *(this + 16);
  if (v41 == 0.0)
  {
    v42 = 0;
  }

  else
  {
    v42 = LODWORD(v41);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_108;
  }

LABEL_76:
  v43 = *(this + 17);
  if (v43 == 0.0)
  {
    v44 = 0;
  }

  else
  {
    v44 = LODWORD(v43);
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_80:
  v45 = *(this + 128);
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_110;
  }

LABEL_81:
  v46 = *(this + 125);
  return v2 ^ v48 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v33 ^ v34 ^ v36 ^ v37 ^ v39 ^ v40 ^ v42 ^ v44 ^ v45 ^ v46;
}

void CMMsl::KappaGravityAutocorrelationResult::~KappaGravityAutocorrelationResult(CMMsl::KappaGravityAutocorrelationResult *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::KappaGravityAutocorrelationResult::KappaGravityAutocorrelationResult(uint64_t this, const CMMsl::KappaGravityAutocorrelationResult *a2)
{
  *this = off_10041F6F8;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 11);
    v3 = 64;
    *(this + 64) = 64;
    *(this + 44) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v3 |= 0x10u;
    *(this + 64) = v3;
    *(this + 36) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x20u;
    *(this + 64) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 8u;
  *(this + 64) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 3);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 24) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 61);
  v3 |= 0x800u;
  *(this + 64) = v3;
  *(this + 61) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 60);
  v3 |= 0x400u;
  *(this + 64) = v3;
  *(this + 60) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 2);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 14);
  v3 |= 0x200u;
  *(this + 64) = v3;
  *(this + 56) = v13;
  v2 = *(a2 + 32);
  if ((v2 & 0x100) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_26:
    v15 = *(a2 + 12);
    *(this + 64) = v3 | 0x80;
    *(this + 48) = v15;
    return this;
  }

LABEL_25:
  v14 = *(a2 + 13);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 52) = v14;
  if ((*(a2 + 32) & 0x80) != 0)
  {
    goto LABEL_26;
  }

  return this;
}

CMMsl *CMMsl::KappaGravityAutocorrelationResult::operator=(CMMsl *a1, const CMMsl::KappaGravityAutocorrelationResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaGravityAutocorrelationResult::KappaGravityAutocorrelationResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaGravityAutocorrelationResult *a2, CMMsl::KappaGravityAutocorrelationResult *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LOBYTE(v8) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v8;
  LOBYTE(v8) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  LODWORD(v10) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  result = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = result;
  LODWORD(v10) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  return result;
}

float CMMsl::KappaGravityAutocorrelationResult::KappaGravityAutocorrelationResult(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F6F8;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 52);
  *(a1 + 52) = result;
  *(a1 + 48) = *(a2 + 48);
  return result;
}

CMMsl *CMMsl::KappaGravityAutocorrelationResult::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaGravityAutocorrelationResult::KappaGravityAutocorrelationResult(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaGravityAutocorrelationResult::formatText(CMMsl::KappaGravityAutocorrelationResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "autocorrelationRangeValCriticalThreshold", *(this + 8));
    v5 = *(this + 32);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "autocorrelationRangeValThreshold", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "autocorrelationTimeVariationCriticalThreshold", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "autocorrelationTimeVariationThreshold", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "epochFirstTimestamp", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "epochLastTimestamp", *(this + 2));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "isCriticalFP", *(this + 60));
  v5 = *(this + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "isPeriodic", *(this + 61));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "numDmSamplesEpoch", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "rangeVal", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "timeVariation", *(this + 14));
  if ((*(this + 32) & 4) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  }

LABEL_14:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaGravityAutocorrelationResult::readFrom(CMMsl::KappaGravityAutocorrelationResult *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_202;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 202)
      {
        if (v22 > 302)
        {
          switch(v22)
          {
            case 0x12F:
              *(this + 32) |= 0x200u;
              v59 = *(a2 + 1);
              v2 = *(a2 + 2);
              v60 = *a2;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v2)
              {
                v111 = 0;
                v112 = 0;
                v63 = 0;
                if (v2 <= v59)
                {
                  v2 = *(a2 + 1);
                }

                v113 = v2 - v59;
                v114 = (v60 + v59);
                v115 = v59 + 1;
                while (1)
                {
                  if (!v113)
                  {
                    LODWORD(v63) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_189;
                  }

                  v116 = v115;
                  v117 = *v114;
                  *(a2 + 1) = v116;
                  v63 |= (v117 & 0x7F) << v111;
                  if ((v117 & 0x80) == 0)
                  {
                    break;
                  }

                  v111 += 7;
                  --v113;
                  ++v114;
                  v115 = v116 + 1;
                  v14 = v112++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    goto LABEL_188;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v63) = 0;
                }

LABEL_188:
                v2 = v116;
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  v2 = v65;
                  *(a2 + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    LODWORD(v63) = 0;
                    break;
                  }
                }
              }

LABEL_189:
              *(this + 14) = v63;
              goto LABEL_198;
            case 0x130:
              *(this + 32) |= 0x100u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
LABEL_98:
                *(a2 + 24) = 1;
                goto LABEL_198;
              }

              *(this + 13) = *(*a2 + v2);
              goto LABEL_162;
            case 0x131:
              *(this + 32) |= 0x80u;
              v41 = *(a2 + 1);
              v2 = *(a2 + 2);
              v42 = *a2;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v97 = 0;
                v98 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(a2 + 1);
                }

                v99 = v2 - v41;
                v100 = (v42 + v41);
                v101 = v41 + 1;
                while (1)
                {
                  if (!v99)
                  {
                    LODWORD(v45) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_181;
                  }

                  v102 = v101;
                  v103 = *v100;
                  *(a2 + 1) = v102;
                  v45 |= (v103 & 0x7F) << v97;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v97 += 7;
                  --v99;
                  ++v100;
                  v101 = v102 + 1;
                  v14 = v98++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_180;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_180:
                v2 = v102;
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  v2 = v47;
                  *(a2 + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    break;
                  }
                }
              }

LABEL_181:
              *(this + 12) = v45;
              goto LABEL_198;
          }
        }

        else
        {
          switch(v22)
          {
            case 0xCB:
              *(this + 32) |= 0x400u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v58 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v57 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v58 = v57 != 0;
              }

              *(this + 60) = v58;
              goto LABEL_198;
            case 0x12D:
              *(this + 32) |= 1u;
              v67 = *(a2 + 1);
              v2 = *(a2 + 2);
              v68 = *a2;
              if (v67 > 0xFFFFFFFFFFFFFFF5 || v67 + 10 > v2)
              {
                v118 = 0;
                v119 = 0;
                v71 = 0;
                if (v2 <= v67)
                {
                  v2 = *(a2 + 1);
                }

                v120 = v2 - v67;
                v121 = (v68 + v67);
                v122 = v67 + 1;
                while (1)
                {
                  if (!v120)
                  {
                    v71 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_193;
                  }

                  v123 = v122;
                  v124 = *v121;
                  *(a2 + 1) = v123;
                  v71 |= (v124 & 0x7F) << v118;
                  if ((v124 & 0x80) == 0)
                  {
                    break;
                  }

                  v118 += 7;
                  --v120;
                  ++v121;
                  v122 = v123 + 1;
                  v14 = v119++ > 8;
                  if (v14)
                  {
                    v71 = 0;
                    goto LABEL_192;
                  }
                }

                if (*(a2 + 24))
                {
                  v71 = 0;
                }

LABEL_192:
                v2 = v123;
              }

              else
              {
                v69 = 0;
                v70 = 0;
                v71 = 0;
                v72 = (v68 + v67);
                v73 = v67 + 1;
                while (1)
                {
                  v2 = v73;
                  *(a2 + 1) = v73;
                  v74 = *v72++;
                  v71 |= (v74 & 0x7F) << v69;
                  if ((v74 & 0x80) == 0)
                  {
                    break;
                  }

                  v69 += 7;
                  ++v73;
                  v14 = v70++ > 8;
                  if (v14)
                  {
                    v71 = 0;
                    break;
                  }
                }
              }

LABEL_193:
              *(this + 1) = v71;
              goto LABEL_198;
            case 0x12E:
              *(this + 32) |= 2u;
              v31 = *(a2 + 1);
              v2 = *(a2 + 2);
              v32 = *a2;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v90 = 0;
                v91 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(a2 + 1);
                }

                v92 = v2 - v31;
                v93 = (v32 + v31);
                v94 = v31 + 1;
                while (1)
                {
                  if (!v92)
                  {
                    v35 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_177;
                  }

                  v95 = v94;
                  v96 = *v93;
                  *(a2 + 1) = v95;
                  v35 |= (v96 & 0x7F) << v90;
                  if ((v96 & 0x80) == 0)
                  {
                    break;
                  }

                  v90 += 7;
                  --v92;
                  ++v93;
                  v94 = v95 + 1;
                  v14 = v91++ > 8;
                  if (v14)
                  {
                    v35 = 0;
                    goto LABEL_176;
                  }
                }

                if (*(a2 + 24))
                {
                  v35 = 0;
                }

LABEL_176:
                v2 = v95;
              }

              else
              {
                v33 = 0;
                v34 = 0;
                v35 = 0;
                v36 = (v32 + v31);
                v37 = v31 + 1;
                while (1)
                {
                  v2 = v37;
                  *(a2 + 1) = v37;
                  v38 = *v36++;
                  v35 |= (v38 & 0x7F) << v33;
                  if ((v38 & 0x80) == 0)
                  {
                    break;
                  }

                  v33 += 7;
                  ++v37;
                  v14 = v34++ > 8;
                  if (v14)
                  {
                    v35 = 0;
                    break;
                  }
                }
              }

LABEL_177:
              *(this + 2) = v35;
              goto LABEL_198;
          }
        }
      }

      else if (v22 > 103)
      {
        switch(v22)
        {
          case 0x68:
            *(this + 32) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_98;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_162;
          case 0xC9:
            *(this + 32) |= 4u;
            v75 = *(a2 + 1);
            v2 = *(a2 + 2);
            v76 = *a2;
            if (v75 > 0xFFFFFFFFFFFFFFF5 || v75 + 10 > v2)
            {
              v125 = 0;
              v126 = 0;
              v79 = 0;
              if (v2 <= v75)
              {
                v2 = *(a2 + 1);
              }

              v127 = v2 - v75;
              v128 = (v76 + v75);
              v129 = v75 + 1;
              while (1)
              {
                if (!v127)
                {
                  v79 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_197;
                }

                v130 = v129;
                v131 = *v128;
                *(a2 + 1) = v130;
                v79 |= (v131 & 0x7F) << v125;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v125 += 7;
                --v127;
                ++v128;
                v129 = v130 + 1;
                v14 = v126++ > 8;
                if (v14)
                {
                  v79 = 0;
                  goto LABEL_196;
                }
              }

              if (*(a2 + 24))
              {
                v79 = 0;
              }

LABEL_196:
              v2 = v130;
            }

            else
            {
              v77 = 0;
              v78 = 0;
              v79 = 0;
              v80 = (v76 + v75);
              v81 = v75 + 1;
              while (1)
              {
                v2 = v81;
                *(a2 + 1) = v81;
                v82 = *v80++;
                v79 |= (v82 & 0x7F) << v77;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                ++v81;
                v14 = v78++ > 8;
                if (v14)
                {
                  v79 = 0;
                  break;
                }
              }
            }

LABEL_197:
            *(this + 3) = v79;
            goto LABEL_198;
          case 0xCA:
            *(this + 32) |= 0x800u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v40 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v39 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v40 = v39 != 0;
            }

            *(this + 61) = v40;
            goto LABEL_198;
        }
      }

      else
      {
        switch(v22)
        {
          case 'e':
            *(this + 32) |= 0x40u;
            v49 = *(a2 + 1);
            v2 = *(a2 + 2);
            v50 = *a2;
            if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
            {
              v104 = 0;
              v105 = 0;
              v53 = 0;
              if (v2 <= v49)
              {
                v2 = *(a2 + 1);
              }

              v106 = v2 - v49;
              v107 = (v50 + v49);
              v108 = v49 + 1;
              while (1)
              {
                if (!v106)
                {
                  LODWORD(v53) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_185;
                }

                v109 = v108;
                v110 = *v107;
                *(a2 + 1) = v109;
                v53 |= (v110 & 0x7F) << v104;
                if ((v110 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                --v106;
                ++v107;
                v108 = v109 + 1;
                v14 = v105++ > 8;
                if (v14)
                {
                  LODWORD(v53) = 0;
                  goto LABEL_184;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v53) = 0;
              }

LABEL_184:
              v2 = v109;
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = (v50 + v49);
              v55 = v49 + 1;
              while (1)
              {
                v2 = v55;
                *(a2 + 1) = v55;
                v56 = *v54++;
                v53 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
                  LODWORD(v53) = 0;
                  break;
                }
              }
            }

LABEL_185:
            *(this + 11) = v53;
            goto LABEL_198;
          case 'f':
            *(this + 32) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_98;
            }

            *(this + 9) = *(*a2 + v2);
LABEL_162:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
            goto LABEL_198;
          case 'g':
            *(this + 32) |= 0x20u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v83 = 0;
              v84 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v85 = v2 - v23;
              v86 = (v24 + v23);
              v87 = v23 + 1;
              while (1)
              {
                if (!v85)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_173;
                }

                v88 = v87;
                v89 = *v86;
                *(a2 + 1) = v88;
                v27 |= (v89 & 0x7F) << v83;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                --v85;
                ++v86;
                v87 = v88 + 1;
                v14 = v84++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_172;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_172:
              v2 = v88;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_173:
            *(this + 10) = v27;
            goto LABEL_198;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v132 = 0;
        return v132 & 1;
      }

      v2 = *(a2 + 1);
LABEL_198:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_202:
  v132 = v4 ^ 1;
  return v132 & 1;
}