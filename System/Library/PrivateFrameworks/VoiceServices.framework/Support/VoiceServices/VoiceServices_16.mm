uint64_t sub_1000AC054(unint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, int a5, void *a6)
{
  v10 = sub_1000CB75C(a1);
  v11 = v10;
  v145 = a1;
  v12 = a1 - 2;
  v13 = v10;
  if (v10 >= 1)
  {
    v13 = v10;
    while (*(v12 + 2 * v13) == 32)
    {
      v72 = v13-- != 0;
      if (v13 == 0 || !v72)
      {
        v13 = 0;
        break;
      }
    }
  }

  v14 = 0;
  v143 = 0;
  v15 = a4 - 4;
  v16 = " - ep";
  do
  {
    v17 = sub_1000C7854(v16);
    if (v17 < 1)
    {
      v25 = v13;
      if (!v17)
      {
LABEL_29:
        if (v25 >= 1)
        {
          if (a2 >= 1 && *(v15 + 4 * a2) > v25)
          {
            if (a2 == 1)
            {
              a2 = 0;
            }

            else
            {
              v32 = a2 + 1;
              while (1)
              {
                a2 = v32 - 2;
                if (*(v15 + 4 * (v32 - 2)) <= v25)
                {
                  break;
                }

                if (--v32 <= 2)
                {
                  v143 = 1;
                  a2 = 0;
                  goto LABEL_9;
                }
              }
            }

            v143 = 1;
          }

LABEL_9:
          v11 = v25;
        }
      }
    }

    else
    {
      v25 = v13;
      while (1)
      {
        v26 = v25;
        v27 = __OFSUB__(v25, 1);
        if (--v25 < 0 != v27)
        {
          break;
        }

        v28 = v16[v17 - 1];
        v29 = (v28 - 97) >= 0x1A ? v16[v17 - 1] : v28 ^ 0x20;
        v30 = *(v12 + 2 * v26);
        if (v30 != v28 && v30 != v29)
        {
          break;
        }

        if (v28 == 32 && v26 != 1)
        {
          do
          {
            if (*(v12 + 2 * --v26) != 32)
            {
              v25 = v26;
              goto LABEL_14;
            }
          }

          while (v26 > 1);
          v25 = 0;
        }

LABEL_14:
        v59 = v17-- <= 1;
        if (v59)
        {
          goto LABEL_29;
        }
      }
    }

    v16 = off_1000FDEE8[++v14];
  }

  while (v14 != 8);
  if (a2 >= 1)
  {
    v33 = a2;
    v149 = sub_1000C9FC0(4 * a2, v18, v19, v20, v21, v22, v23, v24);
    v48 = sub_1000C9FC0(4 * a2, v34, v35, v36, v37, v38, v39, v40);
    if (a5 >= 1)
    {
      memset(a6, 255, 4 * a5);
    }

    v139 = 4 * a2;
    v140 = a5;
    v138 = (v11 - 1);
    if (v11 >= 1)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v142 = 0;
      v41 = v11;
      v54 = 0xFFFFFFFFLL;
      v55 = a4;
      v56 = v149;
      v57 = v145;
      v144 = v11;
      while (1)
      {
        if (v50 < a2)
        {
          v59 = v52 > 29 || v54 < 0;
          v60 = v50;
          if (v59)
          {
            v61 = (v55 + 4 * v50);
            v62 = v56 + v50;
            v63 = v48 + v50;
            v64 = a2 - v50;
            while (1)
            {
              v65 = *v61++;
              if (v49 < v65)
              {
                break;
              }

              *v62++ = v51;
              *v63++ = -1;
              ++v50;
              if (!--v64)
              {
LABEL_62:
                v50 = a2;
                break;
              }
            }
          }

          else
          {
            while (v49 >= *(v55 + 4 * v60))
            {
              *(v56 + v60) = v51;
              *(v48 + v60++) = v52;
              if (a2 == v60)
              {
                goto LABEL_62;
              }
            }

            v50 = v60;
          }
        }

        if ((v54 & 0x80000000) == 0)
        {
          if (v50 <= v53)
          {
            v58 = v52;
          }

          else
          {
            v58 = v52 + 1;
          }

          if (asc_1000F49A4[v54] == *(v57 + 2 * v49))
          {
            v54 = 0xFFFFFFFFLL;
            v52 = v58;
          }

          goto LABEL_49;
        }

        v146 = v54;
        v147 = v53;
        v66 = (v57 + 2 * v49);
        v67 = sub_1000CBA28("(", *v66);
        v68 = *v66;
        if (!v67)
        {
          break;
        }

        v54 = ((sub_1000CBA28("(", v68) - "(") >> 1);
        v53 = v50;
        v55 = a4;
        v56 = v149;
        v41 = v144;
        v57 = v145;
LABEL_49:
        if (++v49 == v41)
        {
          goto LABEL_80;
        }
      }

      if (sub_1000CBA28(L"/\\?:", v68))
      {
        goto LABEL_66;
      }

      v56 = v149;
      if (v49)
      {
        if (*v66 != 45 || v49 >= v138)
        {
          v55 = a4;
          v57 = v145;
          v53 = v147;
          goto LABEL_77;
        }

        if (sub_1000CBA28(asc_1000F2960, v66[1]) && sub_1000CBA28(asc_1000F2960, *(v66 - 1)))
        {
LABEL_66:
          v55 = a4;
          v56 = v149;
          v57 = v145;
          v54 = v146;
          v53 = v147;
          v41 = v144;
          if (v50 > v142)
          {
            ++v51;
            v142 = v50;
          }

          goto LABEL_49;
        }

        v56 = v149;
      }

      v55 = a4;
      v57 = v145;
      v53 = v147;
LABEL_77:
      v54 = v146;
      v41 = v144;
      goto LABEL_49;
    }

    v142 = 0;
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
    LODWORD(v54) = -1;
    v56 = v149;
LABEL_80:
    if (v50 >= a2)
    {
      v74 = a6;
    }

    else
    {
      v70 = v50;
      v71 = a2 - v50;
      v72 = v71 >= 8 && (v48 - v56) >= 0x20;
      v73 = !v72;
      if ((v54 & 0x80000000) != 0 || v52 > 29)
      {
        v74 = a6;
        if (v73)
        {
          goto LABEL_101;
        }

        v85 = vdupq_n_s32(v51);
        v86 = 4 * v50 + 16;
        v87 = (v56 + v86);
        v88 = (v48 + v86);
        *&v89 = -1;
        *(&v89 + 1) = -1;
        v90 = v71 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v87[-1] = v85;
          *v87 = v85;
          v87 += 2;
          *(v88 - 1) = v89;
          *v88 = v89;
          v88 += 2;
          v90 -= 8;
        }

        while (v90);
        v70 = (v71 & 0xFFFFFFFFFFFFFFF8) + v50;
        if (v71 != (v71 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_101:
          v91 = v56 + v70;
          v92 = v48 + v70;
          v93 = a2 - v70;
          do
          {
            *v91++ = v51;
            *v92++ = -1;
            --v93;
          }

          while (v93);
        }
      }

      else
      {
        v74 = a6;
        if (v73)
        {
          goto LABEL_93;
        }

        v75 = vdupq_n_s32(v51);
        v76 = vdupq_n_s32(v52);
        v77 = 4 * v50 + 16;
        v78 = (v56 + v77);
        v79 = (v48 + v77);
        v80 = v71 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v78[-1] = v75;
          *v78 = v75;
          v78 += 2;
          v79[-1] = v76;
          *v79 = v76;
          v79 += 2;
          v80 -= 8;
        }

        while (v80);
        v70 = (v71 & 0xFFFFFFFFFFFFFFF8) + v50;
        if (v71 != (v71 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_93:
          v81 = v56 + v70;
          v82 = v48 + v70;
          v83 = a2 - v70;
          v84 = v142;
          do
          {
            *v81++ = v51;
            *v82++ = v52;
            --v83;
          }

          while (v83);
          v50 = a2;
LABEL_105:
          if (v54 < 0 || v50 <= v53)
          {
            v95 = v52;
          }

          else
          {
            v95 = v52 + 1;
          }

          if (v50 <= v84)
          {
            v96 = v51;
          }

          else
          {
            v96 = v51 + 1;
          }

          if (v95 >= 30)
          {
            v97 = 30;
          }

          else
          {
            v97 = v95;
          }

          v98 = 4 * v96;
          v99 = sub_1000C9FC0(v98 + 4, v41, v42, v43, v44, v45, v46, v47);
          v107 = sub_1000C9FC0(v98 + 4, v100, v101, v102, v103, v104, v105, v106);
          v108 = 0;
          v109 = 0;
          *v99 = 0;
          *v107 = 0;
          v110 = -1;
          do
          {
            v113 = *(v149 + v108);
            if (v113 > v109)
            {
              *(v99 + v113) = v110 + 1;
              *(v107 + v113) = v108;
              v109 = v113;
            }

            v111 = *(v48 + v108);
            if (v111 <= v110)
            {
              v112 = v110;
            }

            else
            {
              v112 = *(v48 + v108);
            }

            if (v111 >= 0)
            {
              v110 = v112;
            }

            ++v108;
          }

          while (v33 != v108);
          *(v99 + v96) = v97;
          *(v107 + v96) = v33;
          v114 = v143 == 0;
          if (1 << v97 <= v114)
          {
            v69 = 0;
            v125 = v74;
LABEL_147:
            if (v96 < 2)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v69 = 0;
            v115 = v74;
            while (v140 - v33 >= v115 - v74)
            {
              v116 = 0;
              v117 = v33;
              v118 = v48;
              v119 = v149;
              v120 = a3;
              v121 = v115;
              do
              {
                v123 = *v118++;
                v122 = v123;
                if (v123 < 0 || ((v114 >> (v97 + ~v122)) & 1) == 0)
                {
                  *v121++ = *v120;
                  if (*v119 != v109)
                  {
                    ++v116;
                  }

                  v109 = *v119;
                }

                ++v120;
                ++v119;
                --v117;
              }

              while (v117);
              if (v116 >= 2 || v96 <= 1)
              {
                v125 = v121;
              }

              else
              {
                v125 = v115;
              }

              if (v125 > v115)
              {
                *v125++ = -1;
                v69 = (v69 + 1);
              }

              ++v114;
              v115 = v125;
              if (v114 == 1 << v97)
              {
                goto LABEL_147;
              }
            }

            v125 = v115;
            if (v96 < 2)
            {
LABEL_165:
              v127 = v139;
LABEL_166:
              sub_1000CA03C(v107, v98 + 4);
              sub_1000CA03C(v99, v98 + 4);
              sub_1000CA03C(v48, v127);
              sub_1000CA03C(v149, v127);
              return v69;
            }
          }

          v126 = 0;
          v127 = v139;
          do
          {
            v128 = v126;
            v129 = *(v99 + v126++);
            v130 = *(v99 + v126);
            v131 = v130 - v129;
            if (v130 - v129 != 31)
            {
              v132 = 0;
              v133 = 1 << v131;
              do
              {
                if (v140 - v33 < v125 - v74)
                {
                  break;
                }

                v134 = *(v107 + v128);
                if (v134 < *(v107 + v126))
                {
                  v135 = v125;
                  do
                  {
                    v136 = *(v48 + v134);
                    if (v136 < 0 || ((v132 >> (v130 + ~v136)) & 1) == 0)
                    {
                      *v135++ = a3[v134];
                    }

                    ++v134;
                  }

                  while (v134 < *(v107 + v126));
                  if (v135 > v125)
                  {
                    *v135++ = -1;
                    v69 = (v69 + 1);
                  }

                  v125 = v135;
                }

                ++v132;
              }

              while (v132 != v133);
            }
          }

          while (v126 != v96);
          goto LABEL_166;
        }
      }

      v50 = a2;
    }

    v84 = v142;
    goto LABEL_105;
  }

  return 0;
}

uint64_t sub_1000AC850(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_1000922A4(v2);
    v4 = sub_1000BD6C8(v3, 4, 0xFFFFFFFF);
    v5 = *(a1 + 16);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0xFFFFFFFFLL;
  v5 = *(a1 + 16);
  if (v5)
  {
LABEL_3:
    v6 = sub_1000CB75C(v5);
    v4 = sub_1000BD7F4(v5, 2, v6 + 1, v4);
  }

LABEL_4:
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = sub_1000CB75C(*(a1 + 32));
    v4 = sub_1000BD7F4(v7, 2, v8 + 1, v4);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = sub_1000CB75C(*(a1 + 48));
    v4 = sub_1000BD7F4(v9, 2, v10 + 1, v4);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = sub_1000CB75C(*(a1 + 64));
    v4 = sub_1000BD7F4(v11, 2, v12 + 1, v4);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = sub_1000CB75C(*(a1 + 80));
    LODWORD(v4) = sub_1000BD7F4(v13, 2, v14 + 1, v4);
  }

  v15 = sub_1000BD6C8(*(a1 + 96), 4, v4);
  if (*(a1 + 96) >= 1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(*(a1 + 104) + v16);
      v19 = sub_1000CB75C(v18);
      v15 = sub_1000BD7F4(v18, 2, v19 + 1, v15);
      ++v17;
      v16 += 16;
    }

    while (v17 < *(a1 + 96));
  }

  v20 = sub_1000BD6C8(*(a1 + 120), 4, v15);
  if (*(a1 + 120) >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(*(a1 + 128) + v21);
      v24 = sub_1000CB75C(v23);
      v25 = sub_1000BD7F4(v23, 2, v24 + 1, v20);
      v26 = *(*(a1 + 128) + v21 + 16);
      v27 = sub_1000CB75C(v26);
      v20 = sub_1000BD7F4(v26, 2, v27 + 1, v25);
      ++v22;
      v21 += 32;
    }

    while (v22 < *(a1 + 120));
  }

  v28 = sub_1000BD6C8(*(a1 + 144), 4, v20);
  if (*(a1 + 144) >= 1)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(a1 + 152) + v29);
      v32 = sub_1000CB75C(v31);
      v33 = sub_1000BD7F4(v31, 2, v32 + 1, v28);
      v34 = *(*(a1 + 152) + v29 + 16);
      v35 = sub_1000CB75C(v34);
      v28 = sub_1000BD7F4(v34, 2, v35 + 1, v33);
      ++v30;
      v29 += 32;
    }

    while (v30 < *(a1 + 144));
  }

  v36 = sub_1000BD6C8(*(a1 + 168), 4, v28);
  if (*(a1 + 168) >= 1)
  {
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = *(*(a1 + 176) + v37);
      v40 = sub_1000CB75C(v39);
      v41 = sub_1000BD7F4(v39, 2, v40 + 1, v36);
      v42 = *(*(a1 + 176) + v37 + 16);
      v43 = sub_1000CB75C(v42);
      v36 = sub_1000BD7F4(v42, 2, v43 + 1, v41);
      ++v38;
      v37 += 32;
    }

    while (v38 < *(a1 + 168));
  }

  v44 = sub_1000BD6C8(*(a1 + 192), 4, v36);
  if (*(a1 + 192) >= 1)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = *(*(a1 + 200) + v45);
      v48 = sub_1000CB75C(v47);
      v49 = sub_1000BD7F4(v47, 2, v48 + 1, v44);
      v50 = *(*(a1 + 200) + v45 + 16);
      v51 = sub_1000CB75C(v50);
      v44 = sub_1000BD7F4(v50, 2, v51 + 1, v49);
      ++v46;
      v45 += 32;
    }

    while (v46 < *(a1 + 192));
  }

  return v44;
}

uint64_t sub_1000ACC1C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000BBAE0(a1, "btn0", a2, a4, a5, a6, a7, a8);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = sub_1000C0034(232);
  v13 = v12;
  if (v12)
  {
    if (sub_1000BC10C(v11, (v12 + 24)))
    {
      *(v13 + 16) = *(v13 + 24);
      if (sub_1000BC10C(v11, (v13 + 40)))
      {
        *(v13 + 32) = *(v13 + 40);
        if (sub_1000BC10C(v11, (v13 + 56)))
        {
          *(v13 + 48) = *(v13 + 56);
          if (sub_1000BC10C(v11, (v13 + 72)))
          {
            *(v13 + 64) = *(v13 + 72);
            if (sub_1000BC10C(v11, (v13 + 88)))
            {
              *(v13 + 80) = *(v13 + 88);
              if (sub_1000BBD54(v11, (v13 + 96)) && sub_1000BBD54(v11, (v13 + 120)) && sub_1000BBD54(v11, (v13 + 144)) && sub_1000BBD54(v11, (v13 + 168)) && sub_1000BBD54(v11, (v13 + 192)))
              {
                v21 = *(v13 + 96);
                if (v21 >= 1)
                {
                  v22 = sub_1000BFBD8(16 * v21, v14, v15, v16, v17, v18, v19, v20);
                  *(v13 + 112) = v22;
                  if (*(v13 + 96) >= 1)
                  {
                    v23 = 0;
                    v24 = 0;
                    do
                    {
                      if (!sub_1000BC10C(v11, (*(v13 + 112) + v23 + 8)))
                      {
                        break;
                      }

                      *(*(v13 + 112) + v23) = *(*(v13 + 112) + v23 + 8);
                      ++v24;
                      v23 += 16;
                    }

                    while (v24 < *(v13 + 96));
                    v22 = *(v13 + 112);
                  }

                  *(v13 + 104) = v22;
                }

                v25 = *(v13 + 120);
                if (v25 >= 1)
                {
                  v26 = sub_1000BFBD8(32 * v25, v14, v15, v16, v17, v18, v19, v20);
                  *(v13 + 136) = v26;
                  if (*(v13 + 120) >= 1)
                  {
                    v27 = 0;
                    v28 = 0;
                    do
                    {
                      if (!sub_1000BC10C(v11, (*(v13 + 136) + v27 + 8)))
                      {
                        break;
                      }

                      *(*(v13 + 136) + v27) = *(*(v13 + 136) + v27 + 8);
                      if (!sub_1000BC10C(v11, (*(v13 + 136) + v27 + 24)))
                      {
                        break;
                      }

                      *(*(v13 + 136) + v27 + 16) = *(*(v13 + 136) + v27 + 24);
                      ++v28;
                      v27 += 32;
                    }

                    while (v28 < *(v13 + 120));
                    v26 = *(v13 + 136);
                  }

                  *(v13 + 128) = v26;
                }

                v29 = *(v13 + 144);
                if (v29 >= 1)
                {
                  v30 = sub_1000BFBD8(32 * v29, v14, v15, v16, v17, v18, v19, v20);
                  *(v13 + 160) = v30;
                  if (*(v13 + 144) >= 1)
                  {
                    v31 = 0;
                    v32 = 0;
                    do
                    {
                      if (!sub_1000BC10C(v11, (*(v13 + 160) + v31 + 8)))
                      {
                        break;
                      }

                      *(*(v13 + 160) + v31) = *(*(v13 + 160) + v31 + 8);
                      if (!sub_1000BC10C(v11, (*(v13 + 160) + v31 + 24)))
                      {
                        break;
                      }

                      *(*(v13 + 160) + v31 + 16) = *(*(v13 + 160) + v31 + 24);
                      ++v32;
                      v31 += 32;
                    }

                    while (v32 < *(v13 + 144));
                    v30 = *(v13 + 160);
                  }

                  *(v13 + 152) = v30;
                }

                v33 = *(v13 + 168);
                if (v33 >= 1)
                {
                  v34 = sub_1000BFBD8(32 * v33, v14, v15, v16, v17, v18, v19, v20);
                  *(v13 + 184) = v34;
                  if (*(v13 + 168) >= 1)
                  {
                    v35 = 0;
                    v36 = 0;
                    do
                    {
                      if (!sub_1000BC10C(v11, (*(v13 + 184) + v35 + 8)))
                      {
                        break;
                      }

                      *(*(v13 + 184) + v35) = *(*(v13 + 184) + v35 + 8);
                      if (!sub_1000BC10C(v11, (*(v13 + 184) + v35 + 24)))
                      {
                        break;
                      }

                      *(*(v13 + 184) + v35 + 16) = *(*(v13 + 184) + v35 + 24);
                      ++v36;
                      v35 += 32;
                    }

                    while (v36 < *(v13 + 168));
                    v34 = *(v13 + 184);
                  }

                  *(v13 + 176) = v34;
                }

                v37 = *(v13 + 192);
                if (v37 >= 1)
                {
                  v38 = sub_1000BFBD8(32 * v37, v14, v15, v16, v17, v18, v19, v20);
                  *(v13 + 208) = v38;
                  if (*(v13 + 192) >= 1)
                  {
                    v39 = 0;
                    v40 = 0;
                    do
                    {
                      if (!sub_1000BC10C(v11, (*(v13 + 208) + v39 + 8)))
                      {
                        break;
                      }

                      *(*(v13 + 208) + v39) = *(*(v13 + 208) + v39 + 8);
                      if (!sub_1000BC10C(v11, (*(v13 + 208) + v39 + 24)))
                      {
                        break;
                      }

                      *(*(v13 + 208) + v39 + 16) = *(*(v13 + 208) + v39 + 24);
                      ++v40;
                      v39 += 32;
                    }

                    while (v40 < *(v13 + 192));
                    v38 = *(v13 + 208);
                  }

                  *(v13 + 200) = v38;
                }

                v41 = sub_1000BFBD8(0x228uLL, v14, v15, v16, v17, v18, v19, v20);
                *(v13 + 224) = v41;
                if (sub_1000BC10C(v11, v41 + 1))
                {
                  *v41 = v41[1];
                  if (sub_1000BC10C(v11, v41 + 3))
                  {
                    v41[2] = v41[3];
                    if (sub_1000BC10C(v11, v41 + 5))
                    {
                      v41[4] = v41[5];
                      if (sub_1000BC10C(v11, v41 + 7))
                      {
                        v41[6] = v41[7];
                        if (sub_1000BC10C(v11, v41 + 9))
                        {
                          v41[8] = v41[9];
                          if (sub_1000BC10C(v11, v41 + 11))
                          {
                            v41[10] = v41[11];
                            if (sub_1000BC10C(v11, v41 + 13))
                            {
                              v41[12] = v41[13];
                              if (sub_1000BC10C(v11, v41 + 15))
                              {
                                v41[14] = v41[15];
                                if (sub_1000BC10C(v11, v41 + 17))
                                {
                                  v41[16] = v41[17];
                                  if (sub_1000BC10C(v11, v41 + 19))
                                  {
                                    v41[18] = v41[19];
                                    if (sub_1000BC10C(v11, v41 + 21))
                                    {
                                      v41[20] = v41[21];
                                      if (sub_1000BC10C(v11, v41 + 25))
                                      {
                                        v41[24] = v41[25];
                                        if (sub_1000BC10C(v11, v41 + 27))
                                        {
                                          v41[26] = v41[27];
                                          if (sub_1000BC10C(v11, v41 + 29))
                                          {
                                            v41[28] = v41[29];
                                            if (sub_1000BC10C(v11, v41 + 31))
                                            {
                                              v41[30] = v41[31];
                                              if (sub_1000BC10C(v11, v41 + 33))
                                              {
                                                v41[32] = v41[33];
                                                if (sub_1000BC10C(v11, v41 + 35))
                                                {
                                                  v41[34] = v41[35];
                                                  if (sub_1000BC10C(v11, v41 + 37))
                                                  {
                                                    v41[36] = v41[37];
                                                    if (sub_1000BC10C(v11, v41 + 39))
                                                    {
                                                      v41[38] = v41[39];
                                                      if (sub_1000BC10C(v11, v41 + 41))
                                                      {
                                                        v41[40] = v41[41];
                                                        if (sub_1000BC10C(v11, v41 + 43))
                                                        {
                                                          v41[42] = v41[43];
                                                          if (sub_1000BC10C(v11, v41 + 45))
                                                          {
                                                            v41[44] = v41[45];
                                                            if (sub_1000BC10C(v11, v41 + 47))
                                                            {
                                                              v41[46] = v41[47];
                                                              if (sub_1000BC10C(v11, v41 + 49))
                                                              {
                                                                v41[48] = v41[49];
                                                                if (sub_1000BC10C(v11, v41 + 51))
                                                                {
                                                                  v41[50] = v41[51];
                                                                  if (sub_1000BC10C(v11, v41 + 53))
                                                                  {
                                                                    v41[52] = v41[53];
                                                                    if (sub_1000BC10C(v11, v41 + 55))
                                                                    {
                                                                      v41[54] = v41[55];
                                                                      if (sub_1000BC10C(v11, v41 + 57))
                                                                      {
                                                                        v41[56] = v41[57];
                                                                        if (sub_1000BC10C(v11, v41 + 59))
                                                                        {
                                                                          v41[58] = v41[59];
                                                                          if (sub_1000BC10C(v11, v41 + 61))
                                                                          {
                                                                            v41[60] = v41[61];
                                                                            if (sub_1000BC10C(v11, v41 + 63))
                                                                            {
                                                                              v41[62] = v41[63];
                                                                              if (sub_1000BC10C(v11, v41 + 65))
                                                                              {
                                                                                v41[64] = v41[65];
                                                                                if (sub_1000BBD04(v11, v41 + 132) && sub_1000BBD04(v11, v41 + 133) && sub_1000BBD04(v11, v41 + 134) && sub_1000BBD04(v11, v41 + 135))
                                                                                {
                                                                                  sub_1000BBD04(v11, v41 + 136);
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    *(v13 + 216) = *(v13 + 224);
    sub_1000BBBC4(v11);
    v48 = sub_1000923EC(a1, a2, v42, v43, v44, v45, v46, v47);
    *v13 = v48;
    *(v13 + 8) = v48;
    return v13;
  }

  else
  {
    sub_1000BBBC4(v11);
    return 0;
  }
}

uint64_t sub_1000AD3CC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 136);
    if (v2)
    {
      if (*(v1 + 120) >= 1)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 128) + v3 + 8));
          sub_1000BFEC4(*(*(v1 + 128) + v3 + 24));
          ++v4;
          v3 += 32;
        }

        while (v4 < *(v1 + 120));
        v2 = *(v1 + 136);
      }

      sub_1000BFEC4(v2);
      *(v1 + 128) = 0;
    }

    v5 = *(v1 + 112);
    if (v5)
    {
      if (*(v1 + 96) >= 1)
      {
        v6 = 0;
        v7 = 8;
        do
        {
          sub_1000BFEC4(*(*(v1 + 112) + v7));
          ++v6;
          v7 += 16;
        }

        while (v6 < *(v1 + 96));
        v5 = *(v1 + 112);
      }

      sub_1000BFEC4(v5);
      *(v1 + 104) = 0;
      *(v1 + 112) = 0;
    }

    v8 = *(v1 + 160);
    if (v8)
    {
      if (*(v1 + 144) >= 1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 160) + v9 + 8));
          sub_1000BFEC4(*(*(v1 + 160) + v9 + 24));
          ++v10;
          v9 += 32;
        }

        while (v10 < *(v1 + 144));
        v8 = *(v1 + 160);
      }

      sub_1000BFEC4(v8);
      *(v1 + 152) = 0;
      *(v1 + 160) = 0;
    }

    v11 = *(v1 + 184);
    if (v11)
    {
      if (*(v1 + 168) >= 1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 184) + v12 + 8));
          sub_1000BFEC4(*(*(v1 + 184) + v12 + 24));
          ++v13;
          v12 += 32;
        }

        while (v13 < *(v1 + 168));
        v11 = *(v1 + 184);
      }

      sub_1000BFEC4(v11);
      *(v1 + 176) = 0;
      *(v1 + 184) = 0;
    }

    v14 = *(v1 + 208);
    if (v14)
    {
      if (*(v1 + 192) >= 1)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 208) + v15 + 8));
          sub_1000BFEC4(*(*(v1 + 208) + v15 + 24));
          ++v16;
          v15 += 32;
        }

        while (v16 < *(v1 + 192));
        v14 = *(v1 + 208);
      }

      sub_1000BFEC4(v14);
      *(v1 + 200) = 0;
    }

    sub_1000BFEC4(*(v1 + 24));
    sub_1000BFEC4(*(v1 + 40));
    sub_1000BFEC4(*(v1 + 56));
    sub_1000BFEC4(*(v1 + 88));
    sub_1000BFEC4(*(v1 + 72));
    v17 = *(v1 + 224);
    if (v17)
    {
      sub_1000BFEC4(v17[1]);
      sub_1000BFEC4(v17[3]);
      sub_1000BFEC4(v17[5]);
      sub_1000BFEC4(v17[7]);
      sub_1000BFEC4(v17[9]);
      sub_1000BFEC4(v17[11]);
      sub_1000BFEC4(v17[13]);
      sub_1000BFEC4(v17[15]);
      sub_1000BFEC4(v17[17]);
      sub_1000BFEC4(v17[19]);
      sub_1000BFEC4(v17[21]);
      sub_1000BFEC4(v17[23]);
      sub_1000BFEC4(v17[25]);
      sub_1000BFEC4(v17[27]);
      sub_1000BFEC4(v17[29]);
      sub_1000BFEC4(v17[31]);
      sub_1000BFEC4(v17[33]);
      sub_1000BFEC4(v17[35]);
      sub_1000BFEC4(v17[37]);
      sub_1000BFEC4(v17[39]);
      sub_1000BFEC4(v17[41]);
      sub_1000BFEC4(v17[43]);
      sub_1000BFEC4(v17[45]);
      sub_1000BFEC4(v17[47]);
      sub_1000BFEC4(v17[49]);
      sub_1000BFEC4(v17[51]);
      sub_1000BFEC4(v17[53]);
      sub_1000BFEC4(v17[55]);
      sub_1000BFEC4(v17[57]);
      sub_1000BFEC4(v17[59]);
      sub_1000BFEC4(v17[61]);
      sub_1000BFEC4(v17[63]);
      sub_1000BFEC4(v17[65]);
      sub_1000BFEC4(*(v1 + 224));
      *(v1 + 224) = 0;
    }

    sub_100092604(*(v1 + 8));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000AD714(int *a1, int a2, uint64_t a3, int *a4)
{
  v6 = *(a1 + 27);
  switch(a2)
  {
    case 1:
      if (*a4 == 2 && a4[2] == 1)
      {
        return *(a3 + 2 * a4[1]) == 48;
      }

      return 0;
    case 2:
      if (*a4 != 2 || a4[2] != 2)
      {
        return 0;
      }

      return *(a3 + 2 * a4[1]) == 48;
    case 3:
      if (*a4 != 2 || a4[2] != 1)
      {
        return 0;
      }

      v28 = *(a3 + 2 * a4[1]);
      return v28 == 49;
    case 4:
      if (*a4 != 2 || a4[2] != 3)
      {
        return 0;
      }

      v33 = (a3 + 2 * a4[1]);
      v34 = *v33;
      v30 = v34 > 0x39;
      v35 = (1 << v34) & 0x250000000000000;
      v36 = v30 || v35 == 0;
      if (v36 || v33[1] != 49)
      {
        return 0;
      }

      v28 = v33[2];
      return v28 == 49;
    case 5:
      if (*a4 != 2)
      {
        return 0;
      }

      v26 = a4[2];
      return v26 == 1;
    case 6:
      return *a4 == 2 && a4[2] == 2;
    case 7:
      return *a4 == 2 && a4[2] == 3;
    case 8:
      return *a4 == 2 && a4[2] < 4;
    case 9:
      if (*a4 != 2)
      {
        return 0;
      }

      v46 = a4[2];
      return v46 == 4;
    case 10:
      return *a4 == 2 && a4[2] < 7;
    case 11:
      return *a4 == 2 && a4[2] == 7;
    case 12:
      return *a4 == 2 && a4[2] > 6;
    case 13:
      return *a4 == 2 && a4[2] > 0;
    case 14:
      return *a4 == 4 || *a4 == 3 && *(a3 + 2 * a4[1]) - 48 >= 0xFFFFFFFD;
    case 15:
      if (*a4 != 3)
      {
        return 0;
      }

      v16 = *(a3 + 2 * a4[1]);
      v17 = v6[50];
      return v16 == *v17;
    case 16:
      if (*a4 == 3)
      {
        v29 = *(a3 + 2 * a4[1]);
        v30 = v29 > 0x2D;
        v31 = (1 << v29) & 0x280800000000;
        if (!v30 && v31 != 0)
        {
          return 1;
        }
      }

      return 0;
    case 17:
      if (*a4 != 3)
      {
        return 0;
      }

      v16 = *(a3 + 2 * a4[1]);
      v17 = v6[52];
      return v16 == *v17;
    case 18:
      return *a4 == 3 && *(a3 + 2 * a4[1]) == 40;
    case 19:
      return *a4 == 3 && *(a3 + 2 * a4[1]) == 41;
    case 20:
      if (*a4 != 3)
      {
        return 0;
      }

      v54 = *(a3 + 2 * a4[1]);
      result = 1;
      if (v54 != 36 && v54 != 164 && v54 != 8364)
      {
        return 0;
      }

      return result;
    case 21:
      if (*a4 != 1)
      {
        return 0;
      }

      v39 = a4[2];
      if (v39 > 3)
      {
        return 0;
      }

      if (v39 < 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = 0;
        do
        {
          v72[v40] = sub_1000CA5E4(*(a3 + 2 * (v40 + a4[1])));
          ++v40;
        }

        while (v40 < a4[2]);
      }

      v72[v40] = 0;
      if (!sub_1000CBE9C(v72, "u") || !sub_1000CBE9C(v72, "e"))
      {
        return 1;
      }

      v68 = "u";
      return !sub_1000CBE9C(v72, v68);
    case 22:
      if (*a4 != 1)
      {
        return 0;
      }

      v41 = a4[2];
      if (v41 > 31)
      {
        return 0;
      }

      v42 = a1;
      sub_1000CB778(v72, (a3 + 2 * a4[1]), v41 + 1);
      if (v42[24] < 1)
      {
        return 0;
      }

      v43 = v42;
      v44 = 0;
      v45 = 0;
      while (sub_1000CBEEC(*(*(v43 + 13) + v44), v72))
      {
        ++v45;
        v43 = v42;
        v44 += 16;
        if (v45 >= v42[24])
        {
          return 0;
        }
      }

      return 1;
    case 23:
      if (*a4 != 2)
      {
        return 0;
      }

      v49 = a4[2];
      if (v49 > 2)
      {
        return 0;
      }

      sub_1000CB778(v72, (a3 + 2 * a4[1]), v49 + 1);
      if (a4[2] < 1)
      {
        goto LABEL_169;
      }

      v50 = 0;
      while (1)
      {
        result = sub_1000CAA5C(v72[v50]);
        if (!result)
        {
          return result;
        }

        if (++v50 >= a4[2])
        {
LABEL_169:
          if (sub_1000C1630(v72) <= 12)
          {
            return sub_1000C1630(v72) >= 1;
          }

          return 0;
        }
      }

    case 24:
      if (*a4 != 2)
      {
        return 0;
      }

      v61 = a4[2];
      if (v61 > 2)
      {
        return 0;
      }

      sub_1000CB778(v72, (a3 + 2 * a4[1]), v61 + 1);
      if (a4[2] < 1)
      {
        goto LABEL_196;
      }

      v62 = 0;
      while (1)
      {
        result = sub_1000CAA5C(v72[v62]);
        if (!result)
        {
          break;
        }

        if (++v62 >= a4[2])
        {
LABEL_196:
          if (sub_1000C1630(v72) > 31)
          {
            return 0;
          }

          return sub_1000C1630(v72) >= 1;
        }
      }

      return result;
    case 25:
      if (*a4 != 2)
      {
        return 0;
      }

      return ((a4[2] - 2) & 0xFFFFFFFD) == 0;
    case 26:
      if (*a4 != 2 || a4[2] != 4)
      {
        return 0;
      }

      sub_1000CB778(v72, (a3 + 2 * a4[1]), 5);
      if (a4[2] < 1)
      {
        return sub_1000C1630(v72) <= 2010 && sub_1000C1630(v72) >= 1900;
      }

      v27 = 0;
      while (1)
      {
        result = sub_1000CAA5C(v72[v27]);
        if (!result)
        {
          break;
        }

        if (++v27 >= a4[2])
        {
          return sub_1000C1630(v72) <= 2010 && sub_1000C1630(v72) >= 1900;
        }
      }

      return result;
    case 27:
      if (*a4 != 1)
      {
        return 0;
      }

      v64 = a4[2];
      if (v64 > 31)
      {
        return 0;
      }

      v65 = a1;
      if (v64 < 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = 0;
        do
        {
          v72[v66] = sub_1000CA5E4(*(a3 + 2 * (v66 + a4[1])));
          ++v66;
        }

        while (v66 < a4[2]);
      }

      v72[v66] = 0;
      result = sub_1000CBDDC(*(v65 + 4), v72);
      if (!result)
      {
        return result;
      }

      if (v65[30] < 1)
      {
        return 0;
      }

      v69 = v65;
      v70 = 0;
      v71 = 0;
      while (sub_1000CBEEC(v72, *(*(v69 + 16) + v70)) && sub_1000CBEEC(v72, *(*(v65 + 16) + v70 + 16)))
      {
        ++v71;
        v69 = v65;
        v70 += 32;
        if (v71 >= v65[30])
        {
          return 0;
        }
      }

      return 1;
    case 28:
      return *a4 == 3 && (*(a3 + 2 * a4[1]) & 0xFFFD) == 0x2D;
    case 29:
      return *a4 == 3 && *(a3 + 2 * a4[1]) == 44;
    case 30:
      return *a4 == 3 && *(a3 + 2 * a4[1]) == 46;
    case 31:
      v46 = *a4;
      return v46 == 4;
    case 32:
      if (*a4 != 2)
      {
        return 0;
      }

      v37 = a4[2];
      if (v37 > 2)
      {
        return 0;
      }

      sub_1000CB778(v72, (a3 + 2 * a4[1]), v37 + 1);
      if (a4[2] < 1)
      {
        return sub_1000C1630(v72) < 25;
      }

      v38 = 0;
      while (1)
      {
        result = sub_1000CAA5C(v72[v38]);
        if (!result)
        {
          break;
        }

        if (++v38 >= a4[2])
        {
          return sub_1000C1630(v72) < 25;
        }
      }

      return result;
    case 33:
      if (*a4 != 2)
      {
        return 0;
      }

      v47 = a4[2];
      if (v47 > 2)
      {
        return 0;
      }

      sub_1000CB778(v72, (a3 + 2 * a4[1]), v47 + 1);
      if (a4[2] < 1)
      {
        return sub_1000C1630(v72) < 61;
      }

      v48 = 0;
      while (1)
      {
        result = sub_1000CAA5C(v72[v48]);
        if (!result)
        {
          break;
        }

        if (++v48 >= a4[2])
        {
          return sub_1000C1630(v72) < 61;
        }
      }

      return result;
    case 34:
      if (*a4 != 2)
      {
        return 0;
      }

      v23 = a4[2];
      if (v23 > 2)
      {
        return 0;
      }

      sub_1000CB778(v72, (a3 + 2 * a4[1]), v23 + 1);
      if (a4[2] < 1)
      {
        return sub_1000C1630(v72) < 61;
      }

      v24 = 0;
      break;
    case 35:
      if (a4[2] != 1)
      {
        return 0;
      }

      v14 = v6[22];
      if (!v14)
      {
        return 0;
      }

      v15 = *(a3 + 2 * a4[1]);
      return sub_1000CBA28(v14, v15) != 0;
    case 36:
      if (*a4 != 1)
      {
        return 0;
      }

      v12 = a4[2];
      if (v12 > 2)
      {
        return 0;
      }

      if (v12 < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v72[v13] = sub_1000CA5E4(*(a3 + 2 * (v13 + a4[1])));
          ++v13;
        }

        while (v13 < a4[2]);
      }

      v72[v13] = 0;
      if (!sub_1000CBE9C(v72, L"am"))
      {
        return 1;
      }

      v68 = "p";
      return !sub_1000CBE9C(v72, v68);
    case 37:
      return *a4 == 1 && a4[2] == 1 && (sub_1000CA5E4(*(a3 + 2 * a4[1])) == 97 || sub_1000CA5E4(*(a3 + 2 * a4[1])) == 112);
    case 38:
      return *a4 == 1 && a4[2] == 1 && sub_1000CA5E4(*(a3 + 2 * a4[1])) == 109;
    case 39:
      if (*a4 == 1)
      {
        v63 = v6[24];
        if (v63)
        {
          if (!sub_1000CC4A8((a3 + 2 * a4[1]), v63, a4[2]))
          {
            return 1;
          }
        }
      }

      return 0;
    case 40:
      if ((*a4 | 2) != 3)
      {
        return 0;
      }

      v51 = a4[2];
      if (v51 > 2)
      {
        return 0;
      }

      v52 = a1;
      if (v51 < 1)
      {
        v53 = 0;
      }

      else
      {
        v53 = 0;
        do
        {
          v72[v53] = sub_1000CA5E4(*(a3 + 2 * (v53 + a4[1])));
          ++v53;
        }

        while (v53 < a4[2]);
      }

      v72[v53] = 0;
      v67 = *(v52 + 2);
      return sub_1000CBDDC(v67, v72) != 0;
    case 41:
      v26 = *a4;
      return v26 == 1;
    case 42:
      if (*a4 != 3)
      {
        return 0;
      }

      v15 = *(a3 + 2 * a4[1]);
      v14 = L"$-_@&=;/#?:";
      return sub_1000CBA28(v14, v15) != 0;
    case 43:
      if (*a4 != 1)
      {
        return 0;
      }

      v56 = a4[2];
      if (v56 > 5)
      {
        return 0;
      }

      v72[0] = 95;
      if (v56 < 1)
      {
        LODWORD(v58) = 0;
      }

      else
      {
        v57 = a1;
        v58 = 0;
        do
        {
          v59 = v58;
          v60 = sub_1000CA5E4(*(a3 + 2 * (v58 + a4[1])));
          v58 = v59 + 1;
          v72[v59 + 1] = v60;
        }

        while (v59 + 1 < a4[2]);
        a1 = v57;
      }

      v72[(v58 + 1)] = 95;
      v72[(v58 + 2)] = 0;
      v67 = *(a1 + 8);
      return sub_1000CBDDC(v67, v72) != 0;
    case 44:
      if (*a4 != 1)
      {
        return 0;
      }

      v7 = a4[2];
      if (v7 > 5)
      {
        return 0;
      }

      v72[0] = 95;
      if (v7 < 1)
      {
        LODWORD(v9) = 0;
      }

      else
      {
        v8 = a1;
        v9 = 0;
        do
        {
          v10 = v9;
          v11 = sub_1000CA5E4(*(a3 + 2 * (v9 + a4[1])));
          v9 = v10 + 1;
          v72[v10 + 1] = v11;
        }

        while (v10 + 1 < a4[2]);
        a1 = v8;
      }

      v72[(v9 + 1)] = 95;
      v72[(v9 + 2)] = 0;
      v67 = *(a1 + 10);
      return sub_1000CBDDC(v67, v72) != 0;
    case 45:
      if (*a4 != 2 || a4[2] > 2)
      {
        return 0;
      }

      v18 = a1;
      v19 = sub_1000CB75C(a3 + 2 * a4[1]);
      v20 = a4[2] + 2;
      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      v72[0] = 95;
      if (v21 < 1)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        for (i = 0; i != v21; ++i)
        {
          v72[i + 1] = sub_1000CA5E4(*(a3 + 2 * (i + a4[1])));
        }
      }

      v72[(v21 + 1)] = 95;
      v72[(v21 + 2)] = 0;
      v67 = *(v18 + 6);
      return sub_1000CBDDC(v67, v72) != 0;
    default:
      return 0;
  }

  while (1)
  {
    result = sub_1000CAA5C(v72[v24]);
    if (!result)
    {
      break;
    }

    if (++v24 >= a4[2])
    {
      return sub_1000C1630(v72) < 61;
    }
  }

  return result;
}

uint64_t sub_1000AE3F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int a8, unint64_t a9, int a10)
{
  v16 = a1;
  v17 = a9;
  v36 = a1[7];
  v18 = sub_1000CB75C(a9);
  if (v18 < 1)
  {
    return 0;
  }

  v19 = v18;
  v37 = a6;
  v38 = a7;
  v40 = a8;
  v20 = 0;
  v22 = 1;
  while (1)
  {
    if (v19 == 2)
    {
      if (v20 && !v22 && *v17 == 48 && v17[1] == 48)
      {
        return v20;
      }

      if (sub_1000B259C(v16, v17, 1, 1, 0, 5, v43) >= 1)
      {
        sub_1000B7A58(a2, a3, a4, a5, 0, v37, v38, v40, v43[0], a10, 2, 0, 1);
        return (v20 + 1);
      }

      v19 = 1;
      if (*v17 != 48 || v22)
      {
        v41 = *v17;
        v42 = 0;
        sub_1000B259C(v16, &v41, 1, 1, 0, 5, v43);
        sub_1000B7A58(a2, a3, a4, a5, 0, v37, v38, v40, v43[0], a10, 1, 0, 1);
        v20 = (v20 + 1);
      }

      goto LABEL_4;
    }

    if (v19 != 3)
    {
      break;
    }

    v23 = *v17;
    if (v23 == 49)
    {
      if (*(*(v36 + 216) + 540))
      {
        v24 = v16;
        v25 = a2;
        v26 = a3;
        v27 = a4;
        v28 = a5;
        v29 = v37;
        v30 = v38;
      }

      else
      {
        v31 = L"1";
        v30 = v38;
LABEL_25:
        sub_1000B259C(v16, v31, 1, 1, 0, 5, v43);
        v32 = a2;
        v33 = a3;
        v34 = a4;
        v24 = v16;
        v25 = a2;
        v26 = a3;
        v27 = a4;
        v28 = a5;
        v29 = v37;
        sub_1000B7A58(v32, v33, v34, a5, 0, v37, v30, v40, v43[0], a10, 1, 0, 1);
        LODWORD(v20) = v20 + 1;
      }

      sub_1000B259C(v24, *(*(v36 + 216) + 48), 0, 1, 0, 5, v43);
      sub_1000B7A58(v25, v26, v27, v28, 0, v29, v30, v40, v43[0], a10 + 1, 0, 0, 0);
      v22 = 0;
      v20 = (v20 + 1);
      v19 = 2;
      a4 = v27;
      a3 = v26;
      a2 = v25;
      v16 = v24;
      goto LABEL_4;
    }

    if (v23 != 48)
    {
      v41 = *v17;
      v42 = 0;
      v31 = &v41;
      v30 = v38;
      goto LABEL_25;
    }

    if (v22)
    {
      v22 = 1;
      sub_1000B259C(v16, L"0", 1, 1, 0, 5, v43);
      sub_1000B7A58(a2, a3, a4, a5, 0, v37, v38, v40, v43[0], a10, 1, 0, 1);
      v20 = (v20 + 1);
    }

    v19 = 2;
LABEL_4:
    ++v17;
    ++a10;
  }

  if (v19 != 1)
  {
    return 0;
  }

  sub_1000B259C(v16, v17, 1, 1, 0, 5, v43);
  sub_1000B7A58(a2, a3, a4, a5, 0, v37, v38, v40, v43[0], a10, 1, 0, 1);
  return (v20 + 1);
}

_DWORD *sub_1000AE810(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1000C0034(33376);
  if (result)
  {
    if (!qword_1001065A8 || !*(qword_1001065A8 + 1164))
    {
      return 0;
    }

    v13 = result;
    memcpy(result, &off_1000FDF30, 0x208uLL);
    *(v13 + 47) = a3;
    *(v13 + 48) = a4;
    if (qword_1001065A8 && *(qword_1001065A8 + 3304))
    {
      a6 = (a6 << (*(qword_1001065A8 + 1780) != 0));
    }

    v13[108] = a6;
    v14 = sub_100035CC4(a3, a4, 0, 0, a6, 3);
    *(v13 + 66) = v14;
    if (!v14 || (v15 = sub_100035CC4(a3, a4, 0, 0, a6, 3), (*(v13 + 65) = v15) == 0))
    {
      result = v13;
      goto LABEL_15;
    }

    if (a1)
    {
      v16 = sub_1000C7854(a2) + 10;
      v24 = sub_1000C9FC0(v16, v17, v18, v19, v20, v21, v22, v23);
      *v24 = 0;
      sub_1000C7968(v24, a2, v16);
      sub_1000C7968(v24, "dual", v16);
      *(v13 + 67) = sub_10003B980(a1, v24, a3, a4, a5, 0, a6);
      sub_1000CA03C(v24, v16);
      v25 = v13;
      v26 = *(v13 + 67);
      if (v26)
      {
LABEL_11:
        sub_10003B534(v26, 0);
        v27 = sub_100001108(a4);
        if (qword_1001065A8)
        {
          v28 = sub_100056D58(v27, *(qword_1001065A8 + 4056));
          result = v13;
          *(v13 + 49) = v28;
          if (!v28)
          {
            goto LABEL_15;
          }

LABEL_21:
          result[100] = 1;
          return result;
        }

        v29 = sub_100056D58(v27, 0);
        result = v13;
        *(v13 + 49) = v29;
        if (v29)
        {
          goto LABEL_21;
        }

LABEL_15:
        sub_100035F1C(result, 0);
        return 0;
      }
    }

    else
    {
      v26 = sub_100035CC4(a3, a4, a5, 0, a6, 5);
      v25 = v13;
      *(v13 + 67) = v26;
      if (v26)
      {
        goto LABEL_11;
      }
    }

    result = v25;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1000AEA34(uint64_t a1, uint64_t a2)
{
  sub_100003974(*(a1 + 408));
  v4 = *(a1 + 528);
  if (v4)
  {
    sub_100035F1C(v4, a2);
  }

  v5 = *(a1 + 520);
  if (v5)
  {
    sub_100035F1C(v5, a2);
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    sub_100035F1C(v6, a2);
  }

  if (*(a1 + 8756) >= 1)
  {
    v7 = 0;
    do
    {
      sub_100022FBC(*(*(a1 + 8744) + 8 * v7++));
    }

    while (v7 < *(a1 + 8756));
  }

  *(a1 + 8756) = 0;
  sub_1000BFEC4(*(a1 + 8744));
  if (*(a1 + 400))
  {
    sub_100056E04(*(a1 + 392));
  }

  *(a1 + 392) = 0;

  return sub_1000BFEC4(a1);
}

BOOL sub_1000AEAF0(uint64_t *a1, uint64_t a2, char *a3)
{
  v5 = sub_1000C7854(a3) + 10;
  v13 = sub_1000C9F54(v5, v6, v7, v8, v9, v10, v11, v12);
  bzero(v13, v5);
  sub_1000C78DC(v13, a3, v5);
  sub_1000C7968(v13, "dtg/", v5);
  v14 = sub_1000360E4(a1[65]);
  sub_1000C78DC(v13, a3, v5);
  sub_1000C7968(v13, "dtl/", v5);
  v15 = sub_1000360E4(a1[66]);
  sub_1000C78DC(v13, a3, v5);
  sub_1000C7968(v13, "dtd/", v5);
  v16 = sub_1000360E4(a1[67]);
  sub_1000CA03C(v13, v5);
  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  return !v17 && v16 != 0;
}

uint64_t sub_1000AEC18(uint64_t *a1, uint64_t a2, char *a3)
{
  v5 = sub_1000C7854(a3) + 10;
  v13 = sub_1000C9F54(v5, v6, v7, v8, v9, v10, v11, v12);
  bzero(v13, v5);
  sub_1000C78DC(v13, a3, v5);
  sub_1000C7968(v13, "dtg/", v5);
  if (sub_1000360F8(a1[65]) && (sub_1000C78DC(v13, a3, v5), sub_1000C7968(v13, "dtl/", v5), sub_1000360F8(a1[66])))
  {
    sub_1000C78DC(v13, a3, v5);
    sub_1000C7968(v13, "dtd/", v5);
    v14 = sub_1000360F8(a1[67]);
  }

  else
  {
    v14 = 0;
  }

  sub_1000CA03C(v13, v5);
  return v14;
}

uint64_t sub_1000AED34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  v18 = a1 + 0x8000;
  if (*(a1 + 8756) >= 1)
  {
    v19 = 0;
    do
    {
      sub_100022FBC(*(*(a1 + 8744) + 8 * v19++));
    }

    while (v19 < *(a1 + 8756));
  }

  *(a1 + 8756) = 0;
  if (a6 != 3 && a6 != 10 || !a5)
  {
    goto LABEL_89;
  }

  if (a5 >= 1)
  {
    v20 = a5;
    v21 = a4;
    while (**v21 == 3 && *(*v21 + 32) == *(*a4 + 32))
    {
      ++v21;
      if (!--v20)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_89;
  }

LABEL_12:
  v22 = sub_100028A28(a4, a5);
  sub_10002F0C4(v22);
  v30 = sub_100039A34(a4, a5);
  *(v18 + 580) = a10;
  if (a3 < 1)
  {
    v31 = a9;
    *(v18 + 604) = 0;
    v32 = 1;
    *(v18 + 588) = 0;
    v118 = v30;
    if (v30)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v18 + 600) = *(a2 + 2 * a3 - 2);
    v31 = a9;
    *(v18 + 604) = 1;
    v32 = 1;
    *(v18 + 588) = 0;
    v118 = v30;
    if (v30)
    {
      goto LABEL_17;
    }
  }

  *(v18 + 588) = 1;
  v32 = sub_10003648C(*(a1 + 528), a3, a2, a5, a4, 3, a7, a8, __SPAIR64__(a10, v31));
  if (!v32)
  {
    sub_100036B4C(*(a1 + 528));
    return 0;
  }

LABEL_17:
  v116 = v31;
  v117 = a3;
  v33 = v32;
  if (a5 >= 1)
  {
    v34 = a5;
    v35 = a4;
    while (!sub_100027378(*v35, v23, v24, v25, v26, v27, v28, v29))
    {
      ++v35;
      if (!--v34)
      {
        goto LABEL_21;
      }
    }

    *(v18 + 584) = 0;
    v38 = v117;
    v36 = v118;
    if (v118 <= 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    v48 = (v18 + 592);
    *(v18 + 592) = 1;
    v49 = a5 - v36;
    v50 = v116;
    if (a5 == v36)
    {
LABEL_41:
      v51 = sub_10003648C(*(a1 + 536), v38, a2, a5, a4, 4, a7, a8, __SPAIR64__(a10, v50));
      if (!v51)
      {
        sub_100036A38(*(a1 + 520), 0);
        sub_1000B0F78(a1);
        sub_100036B4C(*(a1 + 536));
        result = 0;
        *v48 = 1;
        return result;
      }

LABEL_85:
      v33 = v51;
      goto LABEL_86;
    }

    goto LABEL_78;
  }

LABEL_21:
  v36 = v118;
  if (v118 < 1)
  {
    *(v18 + 584) = 0;
    goto LABEL_37;
  }

  if (!qword_1001065A8)
  {
    *(v18 + 584) = 0;
    v38 = v117;
    goto LABEL_40;
  }

  v37 = *(qword_1001065A8 + 5248);
  *(v18 + 584) = v37 != 0;
  v38 = v117;
  if (!v37)
  {
    goto LABEL_40;
  }

  v39 = *(a1 + 8744);
  if (*(a1 + 8752) < a5)
  {
    sub_1000BFEC4(v39);
    v39 = sub_1000C0034(8 * a5);
    if (!v39)
    {
      goto LABEL_89;
    }

    *(a1 + 8744) = v39;
    *(a1 + 8752) = a5;
  }

  v114 = v39;
  v40 = *(a1 + 376);
  v111 = a2;
  v113 = *(*a4 + 32);
  if (a5 >= 1)
  {
    v41 = a7;
    v42 = 0;
    v43 = a5;
    v44 = a4;
    while (1)
    {
      v45 = sub_100027438(*v44, 0, v24, v25, v26, v27, v28, v29);
      if (!v45)
      {
        goto LABEL_89;
      }

      if (v45 > v42)
      {
        v42 = v45;
      }

      ++v44;
      if (!--v43)
      {
        v46 = 2 * v42;
        v108 = a5;
        a7 = v41;
        goto LABEL_44;
      }
    }
  }

  v108 = 0;
  v46 = 0;
LABEL_44:
  v103 = sub_10002E83C(v113, "<s>");
  v102 = sub_10002E83C(v113, "<e>");
  v52 = sub_1000B2208(v40);
  v53 = sub_1000B2A30(v40, v52);
  v119 = v53;
  if (v53 == 0xFFFF)
  {
    v78 = sub_1000B2844(v40, v52);
    if (v78 == 0xFFFFFF)
    {
      if (v108 >= 2)
      {
        v79 = v108 - 1;
        do
        {
          v80 = *v114++;
          sub_100022FBC(v80);
          --v79;
        }

        while (v79);
      }

      goto LABEL_89;
    }

    v89 = sub_1000B8258(v40, v78);
    v119 = v89;
    if (v89 == 0xFFFF)
    {
      if (v108 >= 2)
      {
        v90 = v108 - 1;
        do
        {
          v91 = *v114++;
          sub_100022FBC(v91);
          --v90;
        }

        while (v90);
      }

      goto LABEL_89;
    }
  }

  v101 = v46;
  v109 = sub_1000C9F54(v46, v54, v55, v56, v57, v58, v59, v60);
  v61 = v114;
  if (a5 >= 1)
  {
    v62 = 0;
    v63 = -1;
    while (1)
    {
      v64 = sub_100023DC8("GC", v113, 2 * a5, 2 * a5, 0);
      if (!v64)
      {
        break;
      }

      v105 = v64;
      v61[v62] = v64;
      __sprintf_chk(v120, 0, 0x20uLL, "_Generic%d", v62);
      if (!sub_10002EBC8(v113, v120, 1, 1u, 0, 0, 0))
      {
        if (v62)
        {
          for (i = 0; i != v62; ++i)
          {
            sub_100022FBC(v114[i]);
          }
        }

        goto LABEL_89;
      }

      v104 = v63;
      v71 = sub_100027438(a4[v62], v109, v65, v66, v67, v68, v69, v70);
      if (!v71)
      {
        if (v62)
        {
          for (j = 0; j != v62; ++j)
          {
            sub_100022FBC(v114[j]);
          }
        }

        goto LABEL_89;
      }

      v72 = v71;
      v106 = v62;
      __sprintf_chk(v121, 0, 0x20uLL, "_Gate%d", v62);
      if (!sub_10002EBC8(v113, v121, v72, v72, 0, 0, 0))
      {
        if (v62)
        {
          for (k = 0; k != v62; ++k)
          {
            sub_100022FBC(v114[k]);
          }
        }

        goto LABEL_89;
      }

      if (!sub_10002F46C(v113, v120, &v119, 1, 0, -1))
      {
        if (v62)
        {
          for (m = 0; m != v62; ++m)
          {
            sub_100022FBC(v114[m]);
          }
        }

        goto LABEL_89;
      }

      if (v72 >= 1)
      {
        if (!sub_10002F46C(v113, v121, v109, 1, 0, -1))
        {
          goto LABEL_64;
        }

        if (v72 != 1)
        {
          v75 = v72 - 1;
          v76 = v109 + 1;
          while (*v76 == *(v76 - 1) || sub_10002F46C(v113, v121, v76, 1, 0, -1))
          {
            ++v76;
            if (!--v75)
            {
              goto LABEL_55;
            }
          }

LABEL_64:
          if (v62)
          {
            for (n = 0; n != v62; ++n)
            {
              sub_100022FBC(v114[n]);
            }
          }

LABEL_67:
          sub_1000CA03C(v109, v101);
          goto LABEL_89;
        }
      }

LABEL_55:
      v73 = sub_10002E83C(v113, v121);
      if (!sub_100024B18(v105, v103, v73, 0))
      {
        if (v62)
        {
          for (ii = 0; ii != v62; ++ii)
          {
            sub_100022FBC(v114[ii]);
          }
        }

        goto LABEL_67;
      }

      v74 = sub_10002E83C(v113, v120);
      if (!sub_100024B18(v105, v73, v74, 0))
      {
        if (v62)
        {
          for (jj = 0; jj != v62; ++jj)
          {
            sub_100022FBC(v114[jj]);
          }
        }

        goto LABEL_67;
      }

      if (!sub_100024B18(v105, v74, v102, 0))
      {
        if (v62)
        {
          for (kk = 0; kk != v62; ++kk)
          {
            sub_100022FBC(v114[kk]);
          }
        }

        goto LABEL_67;
      }

      ++v62;
      v63 = v104 + 1;
      v61 = v114;
      if (v106 + 1 == a5)
      {
        goto LABEL_73;
      }
    }

    if (v62 >= 2)
    {
      v92 = v63;
      do
      {
        v93 = *v114++;
        sub_100022FBC(v93);
        --v92;
      }

      while (v92);
    }

    goto LABEL_89;
  }

LABEL_73:
  sub_1000CA03C(v109, v101);
  *(a1 + 8756) = a5;
  *(a1 + 8744) = v61;
  v38 = v117;
  a2 = v111;
  v81 = sub_10003648C(*(a1 + 520), v117, v111, a5, v61, 3, a7, a8, __SPAIR64__(a10, v116));
  if (!v81)
  {
    sub_1000B0F78(a1);
    goto LABEL_90;
  }

  v36 = v118;
  if (!*(v18 + 584))
  {
    goto LABEL_40;
  }

  v33 = v81;
  if (!qword_1001065A8)
  {
LABEL_37:
    *(v18 + 592) = 0;
LABEL_86:
    *(a1 + 8736) = a5;
    j__memmove((a1 + 544), a4, 8 * a5);
    *(v18 + 572) = 0;
    *(a1 + 464) = 0;
    sub_100056E58(*(a1 + 392));
    return v33;
  }

  v82 = *(qword_1001065A8 + 5244);
  *(v18 + 592) = v82 != 0;
  if (!v82)
  {
    goto LABEL_86;
  }

  v48 = (v18 + 592);
  v49 = a5 - v118;
  v50 = v116;
  if (a5 == v118)
  {
    goto LABEL_41;
  }

LABEL_78:
  v110 = v49;
  v107 = v48;
  v112 = a2;
  v115 = a8;
  *(v18 + 588) = 1;
  if (a5 >= 1)
  {
    v83 = 0;
    v84 = 0;
    v85 = a4;
    v86 = a5;
    do
    {
      while (1)
      {
        v87 = sub_1000236B0(*v85);
        v88 = *v85;
        if (v87)
        {
          break;
        }

        *(a1 + 16952 + 8 * v83++) = v88;
        ++v85;
        if (!--v86)
        {
          goto LABEL_83;
        }
      }

      *(a1 + 8760 + 8 * v84++) = v88;
      ++v85;
      --v86;
    }

    while (v86);
  }

LABEL_83:
  if (!sub_10003648C(*(a1 + 536), v117, v112, v118, (a1 + 8760), 4, a7, v115, __SPAIR64__(a10, v116)))
  {
    sub_100036A38(*(a1 + 520), 0);
    sub_1000B0F78(a1);
    sub_100036B4C(*(a1 + 536));
    result = 0;
    *v107 = 1;
    return result;
  }

  v51 = sub_10003648C(*(a1 + 528), v117, v112, v110, (a1 + 16952), 3, a7, v115, __SPAIR64__(a10, v116));
  if (v51)
  {
    goto LABEL_85;
  }

  sub_100036A38(*(a1 + 520), 0);
  sub_100036A38(*(a1 + 536), 0);
  sub_1000B0F78(a1);
LABEL_89:
  sub_100036B4C(*(a1 + 528));
LABEL_90:
  result = 0;
  *(v18 + 588) = 1;
  return result;
}

uint64_t sub_1000AF748(void *a1, int a2, int a3)
{
  v6 = a1[65];
  v7 = a1[66];
  v8 = a1[67];
  result = sub_10003611C(a1, a2, a3);
  if (result)
  {
    v10 = a1 + 4096;
    if (!v10[146] || (result = sub_10003611C(v6, a2, a3), result))
    {
      if (!v10[147] || (result = sub_10003611C(v7, a2, a3), result))
      {
        if (v10[148])
        {

          return sub_10003611C(v8, a2, a3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000AF808(uint64_t result, const void *a2, _DWORD *a3)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 520);
  v7 = *(result + 528);
  v8 = *(result + 536);
  v9 = *(result + 8736);
  v59 = 0;
  v10 = *(result + 464);
  if (a2 || v10)
  {
    v11 = (result + 0x8000);
    if (*(result + 33356))
    {
      v12 = 1;
      v13 = *(result + 33352);
      v14 = qword_1001065A8;
      v57 = v7;
      if (!qword_1001065A8)
      {
LABEL_11:
        v15 = (result + 0x8000);
        v16 = a2;
        if (v12)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v12 = *(result + 33360) != 0;
      v13 = *(result + 33352);
      v14 = qword_1001065A8;
      v57 = v7;
      if (!qword_1001065A8)
      {
        goto LABEL_11;
      }
    }

    if (!*(v14 + 5232))
    {
      goto LABEL_11;
    }

    if (a2)
    {
      if (v13)
      {
        v15 = (result + 0x8000);
        v13 = 1;
        goto LABEL_21;
      }

      if (!v10)
      {
        v15 = (result + 0x8000);
        v13 = 0;
        v16 = a2;
        if (!v12)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (!v10)
      {
LABEL_102:
        *(v5 + 464) = v11[144] < v11[143];
        return result;
      }

      v12 = 1;
    }

    v15 = (result + 0x8000);
    result = sub_100056EDC(*(result + 392), *(result + 33344), &v59);
    v16 = result;
    v13 = 0;
    a3 = v59;
    if (!v12)
    {
LABEL_20:
      if (!v4)
      {
LABEL_22:
        v11 = v15;
        if (!v13)
        {
          goto LABEL_100;
        }

        sub_100036A4C(v6, v4, a3);
        result = sub_100063AD4(v6);
        if (!result)
        {
          goto LABEL_100;
        }

        v56 = v4;
        v24 = (v5 + 544);
        v25 = sub_1000C9FC0(v9, v17, v18, v19, v20, v21, v22, v23);
        sub_100063F1C(v6, v25);
        result = sub_100036A38(v6, 0);
        if (*(v5 + 8756) >= 1)
        {
          v26 = 0;
          do
          {
            result = sub_100022FBC(*(*(v5 + 8744) + 8 * v26++));
          }

          while (v26 < *(v5 + 8756));
        }

        *(v5 + 8756) = 0;
        v11[146] = 0;
        if (qword_1001065A8 && *(qword_1001065A8 + 5244))
        {
          if (v9 < 1)
          {
            v38 = 1;
            v4 = v56;
          }

          else
          {
            v27 = v8;
            v28 = 0;
            v29 = 0;
            do
            {
              v30 = *v25;
              v25 = (v25 + 1);
              if (v30)
              {
                result = sub_100027370(*v24);
                if (result)
                {
                  v29 = 1;
                }

                else
                {
                  v28 = 1;
                }
              }

              ++v24;
              --v9;
            }

            while (v9);
            v38 = v28 == 0;
            v4 = v56;
            v8 = v27;
            if (v29)
            {
              goto LABEL_74;
            }
          }

          if (v11[148])
          {
            result = sub_100036A38(v8, 0);
            v11[148] = 0;
            if (v11[147])
            {
              result = sub_100036AD0(v57);
              if (!v38)
              {
LABEL_100:
                if (v4)
                {
                  ++v11[143];
                }

                goto LABEL_102;
              }

LABEL_75:
              if (v11[147] && (!qword_1001065A8 || !*(qword_1001065A8 + 5256)))
              {
                result = sub_100036A38(v57, 0);
                v11[147] = 0;
                if (v11[148])
                {
                  result = sub_100036AD0(v8);
                }
              }

              goto LABEL_100;
            }
          }

LABEL_74:
          if (!v38)
          {
            goto LABEL_100;
          }

          goto LABEL_75;
        }

        v53 = v8;
        v54 = v11 + 147;
        v55 = v11;
        v58 = (v5 + 25144);
        if (v9 < 1)
        {
          v32 = 0;
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = v9;
          v34 = v25;
          v35 = (v5 + 544);
          do
          {
            if (*v34++)
            {
              v37 = *v35;
              v58[v32] = *v35;
              if (sub_100027370(v37))
              {
                v31 = 1;
              }

              v32 = (v32 + 1);
            }

            ++v35;
            --v33;
          }

          while (v33);
        }

        result = sub_1000CA03C(v25, v9);
        v11 = v55;
        v55[142] = v32;
        v55[146] = 0;
        v55[149] = v31;
        if (v31)
        {
          v39 = v57;
          v40 = v54;
          if (!qword_1001065A8)
          {
            v55[147] = 0;
            v44 = v55 + 148;
            v55[148] = v31;
            v4 = v56;
LABEL_85:
            LODWORD(v52) = 0;
            HIDWORD(v52) = v55[145];
            result = sub_10003648C(v53, v55[151], v5 + 33368, v32, v58, 4, 0, 1u, v52);
            if (result)
            {
LABEL_86:
              if ((v55[143] & 0x80000000) != 0)
              {
                goto LABEL_100;
              }

              v47 = -1;
              while (1)
              {
                v48 = sub_100056EDC(*(v5 + 392), v47 + 1, &v59);
                sub_1000B0FC8(v5, v48, v59);
                if (v55[146])
                {
                  v49 = 520;
                }

                else
                {
                  if (*v40)
                  {
                    result = sub_100036B28(*(v5 + 528));
                    if (*v40 && result)
                    {
                      return sub_100036B4C(v5);
                    }
                  }

                  else
                  {
                    result = 1;
                  }

                  if (!*v44)
                  {
                    goto LABEL_98;
                  }

                  v49 = 536;
                }

                result = sub_100036B28(*(v5 + v49));
LABEL_98:
                if (result)
                {
                  return sub_100036B4C(v5);
                }

                if (++v47 >= v55[143])
                {
                  goto LABEL_100;
                }
              }
            }

            if (*v40)
            {
              sub_100036A38(v39, 0);
            }

            return sub_100036B4C(v5);
          }

          v41 = *(qword_1001065A8 + 5256);
          v42 = v41 == 0;
          if (v41)
          {
            v32 = v9;
          }

          else
          {
            v32 = v32;
          }

          v43 = (v5 + 25144);
          if (!v42)
          {
            v43 = (v5 + 544);
          }

          v58 = v43;
          v55[147] = 0;
          v44 = v55 + 148;
          v55[148] = v31;
          goto LABEL_54;
        }

        v39 = v57;
        v40 = v54;
        if (!qword_1001065A8 || ((v45 = *(qword_1001065A8 + 5260)) != 0 ? (v32 = 0) : (v32 = v32), v45 ? (v46 = v9 < 1) : (v46 = 1), v46))
        {
          v44 = v55 + 148;
          *v54 = 1;
          v4 = v56;
        }

        else
        {
          v32 = 0;
          do
          {
            result = sub_100027370(*v24);
            if (!result)
            {
              v58[v32] = *v24;
              v32 = (v32 + 1);
            }

            ++v24;
            --v9;
          }

          while (v9);
          v50 = v55[149];
          v55[147] = v50 == 0;
          v44 = v55 + 148;
          v55[148] = v50;
          v4 = v56;
          if (v50)
          {
LABEL_54:
            if (qword_1001065A8)
            {
              v4 = v56;
              if (*(qword_1001065A8 + 5236))
              {
                result = sub_100035FA0(v39);
              }
            }

            else
            {
              v4 = v56;
            }

LABEL_84:
            if (!*v44)
            {
              if (qword_1001065A8 && *(qword_1001065A8 + 5236))
              {
                result = sub_100035FA0(v53);
              }

              goto LABEL_86;
            }

            goto LABEL_85;
          }
        }

        LODWORD(v51) = 0;
        HIDWORD(v51) = v55[145];
        result = sub_10003648C(v57, v55[151], v5 + 33368, v32, v58, 3, 0, 1u, v51);
        if (result)
        {
          goto LABEL_84;
        }

        return sub_100036B4C(v5);
      }

LABEL_21:
      result = sub_100056E68(*(v5 + 392), v4, a3);
      if (!result)
      {
        return sub_100036B4C(v5);
      }

      goto LABEL_22;
    }

LABEL_12:
    if (v4 && *(v5 + 464) && !sub_100056E68(*(v5 + 392), v4, a3))
    {
      return sub_100036B4C(v5);
    }

    result = sub_1000B0FC8(v5, v16, a3);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000AFE14(uint64_t a1)
{
  v1 = a1 + 0x8000;
  v2 = *(a1 + 528);
  v3 = *(a1 + 536);
  if (*(a1 + 33352))
  {
    v4 = *(a1 + 520);
    if (!qword_1001065A8 || !*(qword_1001065A8 + 5244))
    {
      goto LABEL_15;
    }
  }

  v5 = *(v1 + 588);
  v6 = *(v1 + 592);
  if (!v5)
  {
    v4 = v3;
    if (v6)
    {
LABEL_15:

      return sub_100036A44(v4);
    }

    return 3;
  }

  if (!v6)
  {
    v4 = v2;

    return sub_100036A44(v4);
  }

  v7 = sub_100036A44(v2);
  v8 = sub_100036A44(v3);
  if (v7 == 3 || v8 == 3)
  {
    return 3;
  }

  v10 = v8;
  result = 2;
  if (v7 != 2 && v10 != 2)
  {
    v12 = sub_100036218(v2);
    if (v12 >= sub_100036218(v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = v2;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1000AFF28(uint64_t a1)
{
  v1 = a1 + 0x8000;
  if (*(a1 + 33352))
  {
    return sub_100036AE0(*(a1 + 520));
  }

  v3 = *(a1 + 536);
  if (!*(a1 + 33356))
  {
    result = 2;
    if (!*(v1 + 592))
    {
      return result;
    }

    return sub_100036AE0(v3);
  }

  result = sub_100036AE0(*(a1 + 528));
  if (result != 2 && *(v1 + 592))
  {
    return sub_100036AE0(v3);
  }

  return result;
}

uint64_t sub_1000AFFBC(uint64_t *a1)
{
  sub_100036B4C(a1[65]);
  sub_100036B4C(a1[66]);
  v2 = a1[67];

  return sub_100036B4C(v2);
}

uint64_t sub_1000B0000(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14)
{
  v20 = (a1 + 0x8000);
  v21 = *(a1 + 520);
  v22 = *(a1 + 528);
  v23 = *(a1 + 536);
  v24 = *(a1 + 33352);
  v25 = v21;
  if (!v24)
  {
    if (v20[147])
    {
      v26 = sub_100036B28(v22);
      if (v20[147] && v26)
      {
        return 0;
      }
    }

    else
    {
      v26 = 1;
    }

    if (!v20[148])
    {
      goto LABEL_10;
    }

    v25 = *(a1 + 536);
  }

  v26 = sub_100036B28(v25);
LABEL_10:
  if (v26)
  {
    return 0;
  }

  if (v20[146] && (!qword_1001065A8 || !*(qword_1001065A8 + 5244)))
  {
    return sub_100036890(v21, a13, a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0);
  }

  if (!v20[147])
  {
    return sub_100036890(v23, a13, a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0);
  }

  if (!v20[148])
  {
    v23 = v22;
    return sub_100036890(v23, a13, a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, 0);
  }

  v118 = sub_1000CA0BC();
  v28 = sub_100036A44(v22);
  v29 = sub_100036A44(v23);
  if (v28 == 5)
  {
    v115 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v127 = 0;
    v125 = 0;
    v126 = 0;
    v117 = 0;
    v132 = 0;
    if (v29 != 5)
    {
      goto LABEL_19;
    }

LABEL_47:
    v133 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v65 = 0;
    v116 = 0;
    v98 = 0;
    if (v20[146])
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v134 = v29;
  v115 = sub_1000C9F54(4 * a2, v30, v31, v32, v33, v34, v35, v36);
  v131 = sub_1000C9F54(2 * a2, v67, v68, v69, v70, v71, v72, v73);
  v130 = sub_1000C9F54(4 * a5, v74, v75, v76, v77, v78, v79, v80);
  v129 = sub_1000C9F54(a5, v81, v82, v83, v84, v85, v86, v87);
  if (a11)
  {
    v128 = sub_1000C9F54(2 * a5, v88, v89, v90, v91, v92, v93, v94);
    v95 = 4 * a5;
    if (a8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v128 = 0;
    v95 = 4 * a5;
    if (a8)
    {
LABEL_30:
      v127 = sub_1000C9F54(v95, v88, v89, v90, v91, v92, v93, v94);
      if (a9)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }
  }

  v127 = 0;
  if (a9)
  {
LABEL_31:
    v126 = sub_1000C9F54(v95, v88, v89, v90, v91, v92, v93, v94);
    v96 = a5;
    if (a10)
    {
      goto LABEL_32;
    }

LABEL_44:
    v125 = 0;
    if (a12)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_43:
  v126 = 0;
  v96 = a5;
  if (!a10)
  {
    goto LABEL_44;
  }

LABEL_32:
  v125 = sub_1000C9F54(v96, v88, v89, v90, v91, v92, v93, v94);
  if (a12)
  {
LABEL_33:
    v97 = sub_1000C9F54(8 * a2, v88, v89, v90, v91, v92, v93, v94);
    goto LABEL_46;
  }

LABEL_45:
  v97 = 0;
LABEL_46:
  v117 = v97;
  v132 = sub_100036890(v22, a13, a14, a2, v115, v131, a5, v130, v129, v127, v126, v125, v128, v97, 0);
  if (v134 == 5)
  {
    goto LABEL_47;
  }

LABEL_19:
  v133 = sub_1000C9F54(4 * a2, v30, v31, v32, v33, v34, v35, v36);
  v124 = sub_1000C9F54(2 * a2, v37, v38, v39, v40, v41, v42, v43);
  v123 = sub_1000C9F54(4 * a5, v44, v45, v46, v47, v48, v49, v50);
  v122 = sub_1000C9F54(a5, v51, v52, v53, v54, v55, v56, v57);
  if (a11)
  {
    v121 = sub_1000C9F54(2 * a5, v58, v59, v60, v61, v62, v63, v64);
    if (a8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v121 = 0;
    if (a8)
    {
LABEL_21:
      v120 = sub_1000C9F54(4 * a5, v58, v59, v60, v61, v62, v63, v64);
      if (a9)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  v120 = 0;
  if (a9)
  {
LABEL_22:
    v119 = sub_1000C9F54(4 * a5, v58, v59, v60, v61, v62, v63, v64);
    if (a10)
    {
      goto LABEL_23;
    }

LABEL_37:
    v65 = 0;
    if (a12)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_36:
  v119 = 0;
  if (!a10)
  {
    goto LABEL_37;
  }

LABEL_23:
  v65 = sub_1000C9F54(a5, v58, v59, v60, v61, v62, v63, v64);
  if (a12)
  {
LABEL_24:
    v66 = sub_1000C9F54(8 * a2, v58, v59, v60, v61, v62, v63, v64);
    goto LABEL_39;
  }

LABEL_38:
  v66 = 0;
LABEL_39:
  v116 = v66;
  v98 = sub_100036890(v23, a13, a14, a2, v133, v124, a5, v123, v122, v120, v119, v65, v121, v66, 0);
  if (v20[146])
  {
LABEL_40:
    v99 = 520;
    goto LABEL_55;
  }

LABEL_48:
  if (v20[147])
  {
    v100 = sub_100036B28(*(a1 + 528));
    if (v20[147] && v100)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v100 = 1;
  }

  if (!v20[148])
  {
    goto LABEL_56;
  }

  v99 = 536;
LABEL_55:
  v100 = sub_100036B28(*(a1 + v99));
LABEL_56:
  if (v100)
  {
LABEL_57:
    sub_1000CA0A0(v118);
    return 0;
  }

  v139 = 0;
  v140[0] = 0;
  v137 = 0;
  v138 = 0;
  if (a2 >= 1)
  {
    v101 = v65;
    v102 = v137;
    v103 = HIDWORD(v137);
    v104 = v137 < v98;
    v105 = SHIDWORD(v137) < v132;
    if (SHIDWORD(v137) >= v132)
    {
      v107 = a4;
      v106 = a6;
      v108 = v115;
      if (v137 < v98)
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    v107 = a4;
    v106 = a6;
    v108 = v115;
    while (1)
    {
LABEL_64:
      if (v105)
      {
        v111 = *(v108 + 4 * v103);
        v113 = a12;
        v112 = a11;
        if (!v104)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v111 = 0x40000000;
        v113 = a12;
        v112 = a11;
        if (!v104)
        {
LABEL_66:
          if (v111 >= 0x40000000)
          {
            goto LABEL_67;
          }

          goto LABEL_70;
        }
      }

      if (v111 >= v133[v102])
      {
LABEL_67:
        v114 = sub_1000B111C(a5, a3, v107, v106, a7, a8, a9, a10, v112, v113, v140, &v138, v133, v124, v123, v122, v120, v119, v101, v121, v116, &v139, &v137);
        goto LABEL_71;
      }

LABEL_70:
      v114 = sub_1000B111C(a5, a3, v107, v106, a7, a8, a9, a10, v112, v113, v140, &v138, v108, v131, v130, v129, v127, v126, v125, v128, v117, &v139 + 1, &v137 + 1);
LABEL_71:
      v109 = v138;
      if (v114)
      {
        if (v138 < a2)
        {
          v102 = v137;
          v103 = HIDWORD(v137);
          v104 = v137 < v98;
          v105 = SHIDWORD(v137) < v132;
          if (SHIDWORD(v137) < v132 || v137 < v98)
          {
            continue;
          }
        }
      }

      goto LABEL_62;
    }
  }

LABEL_61:
  v109 = 0;
LABEL_62:
  v110 = v109;
  sub_1000CA0A0(v118);
  return v110;
}

uint64_t sub_1000B0604(uint64_t a1)
{
  v2 = a1 + 0x8000;
  if (*(a1 + 33352))
  {
    v3 = *(a1 + 520);
    goto LABEL_3;
  }

  v3 = *(a1 + 536);
  if (!*(v2 + 588))
  {
LABEL_3:

    return sub_100036A30(v3);
  }

  v6 = *(a1 + 528);
  if (*(v2 + 592))
  {
    v7 = v3;
    v8 = sub_100036218(*(a1 + 528));
    if (v8 >= sub_100036218(v7))
    {
      v3 = v7;
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    v3 = *(a1 + 528);
  }

  return sub_100036A30(v3);
}

uint64_t sub_1000B06E4(uint64_t *a1)
{
  sub_100036DC0(a1[65]);
  sub_100036DC0(a1[66]);
  v2 = a1[67];

  return sub_100036DC0(v2);
}

uint64_t sub_1000B0728(uint64_t a1)
{
  v2 = a1 + 0x8000;
  if (*(a1 + 33352))
  {
    v3 = *(a1 + 520);
    goto LABEL_3;
  }

  v3 = *(a1 + 536);
  if (!*(v2 + 588))
  {
LABEL_3:

    return sub_100036BF4(v3);
  }

  v6 = *(a1 + 528);
  if (*(v2 + 592))
  {
    v7 = v3;
    v8 = sub_100036218(*(a1 + 528));
    if (v8 >= sub_100036218(v7))
    {
      v3 = v7;
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    v3 = *(a1 + 528);
  }

  return sub_100036BF4(v3);
}

uint64_t sub_1000B07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = a1 + 0x8000;
  v16 = *(a1 + 528);
  v17 = *(a1 + 536);
  if (*(a1 + 33352))
  {
    v18 = 520;
LABEL_10:
    v26 = sub_100036B28(*(a1 + v18));
    goto LABEL_11;
  }

  if (!*(a1 + 33356))
  {
    v26 = 1;
    goto LABEL_8;
  }

  v25 = a1;
  v26 = sub_100036B28(v16);
  if (*(v15 + 588))
  {
    a1 = v25;
    v8 = a8;
    v9 = a7;
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    if (v26)
    {
      return 0;
    }

LABEL_8:
    if (!*(v15 + 592))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  a1 = v25;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  if (*(v15 + 592))
  {
LABEL_9:
    v18 = 536;
    goto LABEL_10;
  }

LABEL_11:
  if (v26)
  {
    return 0;
  }

  if (*(v15 + 588))
  {
    if (*(v15 + 592))
    {
      v28 = sub_100036218(v16);
      if (v28 < sub_100036218(v17))
      {
        v17 = v16;
      }
    }

    else
    {
      v17 = v16;
    }
  }

  return sub_100036BA8(v17, v14, v13, v12, v11, v10, v9, v8);
}

uint64_t sub_1000B0A0C(uint64_t a1)
{
  v1 = a1 + 0x8000;
  v2 = *(a1 + 528);
  v3 = *(a1 + 536);
  if (*(a1 + 33352))
  {
    v4 = *(a1 + 520);
    if (!qword_1001065A8 || !*(qword_1001065A8 + 5244))
    {
LABEL_16:

      return sub_100036C08(v4);
    }
  }

  if (!*(v1 + 588))
  {
    v4 = v3;
    goto LABEL_16;
  }

  if (!*(v1 + 592))
  {
    v4 = v2;
    goto LABEL_16;
  }

  v5 = sub_100036218(v2);
  v8 = sub_100036218(v3);
  if (v5 >= v8)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  result = sub_100036C08(v6);
  if (result == -1)
  {
    if (v5 >= v8)
    {
      v4 = v2;
    }

    else
    {
      v4 = v3;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1000B0B9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 0x8000);
  if (*(result + 33352))
  {
    result = sub_100036A38(*(result + 520), a2);
  }

  v10 = 0;
  if (*(v3 + 8756) >= 1)
  {
    v5 = 0;
    do
    {
      result = sub_100022FBC(*(*(v3 + 8744) + 8 * v5++));
    }

    while (v5 < *(v3 + 8756));
  }

  *(v3 + 8756) = 0;
  while (1)
  {
    v7 = v4[144];
    if (v7 >= v4[143])
    {
      break;
    }

    v8 = sub_100056EDC(*(v3 + 392), v7, &v10);
    sub_1000B0FC8(v3, v8, v10);
    if (v4[146])
    {
      v6 = 520;
      goto LABEL_8;
    }

    if (!v4[147])
    {
      result = 1;
      if (!v4[148])
      {
        goto LABEL_9;
      }

LABEL_18:
      v6 = 536;
LABEL_8:
      result = sub_100036B28(*(v3 + v6));
      goto LABEL_9;
    }

    result = sub_100036B28(*(v3 + 528));
    if (v4[147] && result)
    {
      goto LABEL_28;
    }

    if (v4[148])
    {
      goto LABEL_18;
    }

LABEL_9:
    if (result)
    {
      goto LABEL_28;
    }
  }

  if (v4[147])
  {
    sub_100036A38(*(v3 + 528), a2);
    result = sub_100036B28(*(v3 + 528));
    if (result)
    {
      v4[147] = 0;
      if (v4[148])
      {
        result = sub_100036AD0(*(v3 + 536));
        goto LABEL_23;
      }

LABEL_28:
      v9 = v3;
      return sub_100036B4C(v9);
    }
  }

LABEL_23:
  if (v4[148])
  {
    sub_100036A38(*(v3 + 536), a2);
    result = sub_100036B28(*(v3 + 536));
    if (result)
    {
      v4[148] = 0;
      if (!v4[147])
      {
        goto LABEL_28;
      }
    }
  }

  if (!v4[146])
  {
    return result;
  }

  sub_100036B4C(*(v3 + 520));
  sub_100036B4C(*(v3 + 528));
  v9 = *(v3 + 536);
  return sub_100036B4C(v9);
}

uint64_t sub_1000B0D34(uint64_t a1)
{
  v2 = *(a1 + 33360);
  if (*(a1 + 33356))
  {
    v3 = sub_100036620(*(a1 + 528));
    v4 = v3;
    if (!v2)
    {
      return v4;
    }

    if (v3 != -1)
    {
      v5 = sub_100036620(*(a1 + 536));
      if (v4 <= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v4;
      }

      if (v5 == -1)
      {
        LOWORD(v4) = -1;
      }

      else
      {
        LOWORD(v4) = v6;
      }

      return v4;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 536);

  return sub_100036620(v8);
}

uint64_t sub_1000B0DE8(uint64_t *a1)
{
  sub_100036250(a1[65]);
  sub_100036250(a1[66]);
  v2 = a1[67];

  return sub_100036250(v2);
}

uint64_t sub_1000B0E38(uint64_t a1)
{
  result = sub_100036C44(*(a1 + 528));
  if (result)
  {
    return sub_100036C44(*(a1 + 536)) != 0;
  }

  return result;
}

uint64_t sub_1000B0E7C(uint64_t *a1)
{
  result = sub_100036C58(a1[65]);
  if (result)
  {
    result = sub_100036C58(a1[66]);
    if (result)
    {
      return sub_100036C58(a1[67]) != 0;
    }
  }

  return result;
}

uint64_t sub_1000B0ED0(uint64_t *a1)
{
  result = sub_100036C6C(a1[65]);
  if (result)
  {
    result = sub_100036C6C(a1[66]);
    if (result)
    {
      return sub_100036C6C(a1[67]) != 0;
    }
  }

  return result;
}

uint64_t sub_1000B0F24(uint64_t *a1)
{
  result = sub_100036C80(a1[65]);
  if (result)
  {
    result = sub_100036C80(a1[66]);
    if (result)
    {
      return sub_100036C80(a1[67]) != 0;
    }
  }

  return result;
}

uint64_t sub_1000B0F78(uint64_t result)
{
  v1 = result;
  if (*(result + 8756) >= 1)
  {
    v2 = 0;
    do
    {
      result = sub_100022FBC(*(*(v1 + 8744) + 8 * v2++));
    }

    while (v2 < *(v1 + 8756));
  }

  *(v1 + 8756) = 0;
  return result;
}

uint64_t sub_1000B0FC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = (result + 0x8000);
  v6 = *(result + 536);
  v7 = *(result + 33360);
  if (!*(result + 33356))
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    v10 = *(result + 536);
LABEL_19:
    result = sub_100036A4C(v10, a2, a3);
    goto LABEL_20;
  }

  v8 = *(result + 528);
  if (!v7)
  {
    v10 = *(result + 528);
    goto LABEL_19;
  }

  if (*(result + 33344) < 1 || (sub_100036218(*(result + 528)), sub_100036240(v6), sub_100036218(v6), result = sub_100036240(v8), v5[147]))
  {
    sub_100036A4C(v8, a2, a3);
    result = sub_100036A44(v8);
    if (result == 5 || result == 3)
    {
      sub_100036A38(v8, 0);
      v5[147] = 0;
      result = sub_100036AD0(v6);
    }
  }

  if (v5[148])
  {
    sub_100036A4C(v6, a2, a3);
    result = sub_100036A44(v6);
    if (result == 5 || result == 3)
    {
      result = sub_100036A38(v6, 0);
      v5[148] = 0;
      if (v5[147])
      {
        result = sub_100036AD0(v8);
      }
    }
  }

LABEL_20:
  ++v5[144];
  return result;
}

uint64_t sub_1000B111C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int *a11, int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int *a22, int *a23)
{
  v24 = 0;
  LODWORD(v25) = 0;
  LODWORD(v26) = 0;
  v27 = *a11;
  v28 = *a22;
  v29 = *a12;
  v30 = (a15 + 4 * v28);
  v31 = *a23;
  do
  {
    v32 = *&v30[v24];
    v26 = (v26 + 2);
    v25 = (v25 + 1);
    v24 += 4;
  }

  while (v32 != -1);
  if (v27 + v25 > a1)
  {
    return 0;
  }

  v35 = a2;
  __len = v24;
  j__memmove((a4 + 4 * v27), v30, v24);
  *(v35 + 4 * v29) = *(a13 + 4 * v31);
  if (a3)
  {
    *(a3 + 2 * v29) = *(a14 + 2 * v31);
  }

  if (a10)
  {
    *(a10 + 8 * v29) = *(a21 + 8 * v31);
  }

  j__memmove((a5 + v27), (a16 + v28), v25);
  if (a9)
  {
    j__memmove((a9 + 2 * v27), (a20 + 2 * v28), v26);
  }

  if (a6)
  {
    j__memmove((a6 + 4 * v27), (a17 + 4 * v28), __len);
  }

  if (a7)
  {
    j__memmove((a7 + 4 * v27), (a18 + 4 * v28), __len);
  }

  if (a8)
  {
    j__memmove((a8 + v27), (a19 + v28), v25);
  }

  ++*a12;
  ++*a23;
  *a11 += v25;
  *a22 += v25;
  return 1;
}

void (**sub_1000B130C(void (**result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (*result)();

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000B1358(uint64_t a1, char *a2)
{
  v3 = 0;
  sub_1000BBC58(a1, "btt0", a2, &v3);
  return 0;
}

double sub_1000B1390(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = a3 / a2;
  if ((a3 / a2) <= 1)
  {
    v6 = 1;
  }

  *(a1 + 4) = v6;
  *(a1 + 8) = a4 / a2;
  *(a1 + 36) = a5;
  if (!(a4 / a2))
  {
    *(a1 + 8) = 1;
  }

  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  result = NAN;
  *(a1 + 24) = 0xFFFFFFFF00000000;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 44) = a6;
  return result;
}

double sub_1000B13D8(uint64_t a1)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  result = NAN;
  *(a1 + 24) = 0xFFFFFFFF00000000;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1000B13FC(unsigned int *a1, int a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 3:
      if (a2)
      {
        v5 = a1[3];
        v6 = a1[4] + 1;
        a1[4] = v6;
        v7 = a1[2];
        if (v5 >= a1[1])
        {
          if (v6 >= (a1[10] + v7))
          {
            *a1 = 2;
            a1[8] = a1[6] - v6;
            v9 = a1[6] + 1;
            a1[5] = 0;
            a1[6] = v9;
            return 2;
          }

          else
          {
            ++a1[6];
            return 3;
          }
        }

        else if (v6 >= v7)
        {
          *a1 = 1;
          ++a1[6];
          return 1;
        }

        else
        {
          ++a1[6];
          return 3;
        }
      }

      else
      {
        ++a1[3];
        a1[4] = 0;
        ++a1[6];
        return 3;
      }

    case 2:
      if (a2 || (v4 = a1[5] + 1, a1[5] = v4, v4 != a1[1]))
      {
        ++a1[6];
        return 2;
      }

      else
      {
        *a1 = 3;
        a1[4] = 0;
        ++a1[6];
        return 3;
      }

    case 1:
      if (a2)
      {
        v2 = 1;
        goto LABEL_6;
      }

      *a1 = 3;
      *(a1 + 3) = 1;
      v8 = a1[6];
      a1[6] = v8 + 1;
      a1[7] = v8;
      return 3;
    default:
LABEL_6:
      ++a1[6];
      return v2;
  }
}

uint64_t sub_1000B15BC(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1[7];
  }
}

uint64_t sub_1000B15D8(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 3)
  {
    return a1[8];
  }

  v1 = a1[4];
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  result = a1[8];
  if (result <= 0)
  {
    v4 = a1[6];
    v5 = v4 - v1;
    if (v4 <= 0)
    {
      return result;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_1000B162C(unsigned int *a1, int a2, int a3)
{
  result = *a1;
  if (result == 3)
  {
    v5 = a1[4];
    if (v5 > a1[9] && v5 + a2 >= (a1[10] + a1[2]) && a1[3] >= a1[1])
    {
      result = 2;
      if (a3)
      {
        a1[8] = a1[6] - v5;
        *a1 = 2;
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1000B1698(uint64_t result, int a2)
{
  if (*(result + 40) != a2)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t sub_1000B16AC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = sub_1000C0034(64);
  if (result)
  {
    *(result + 8) = a1;
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = a4;
    *(result + 44) = 0;
    *(result + 56) = 0;
    *(result + 60) = a4;
  }

  return result;
}

uint64_t sub_1000B1700(int *a1)
{
  result = sub_1000C0034(64);
  v3 = result;
  if (!result)
  {
    return result;
  }

  v4 = a1[10];
  *(result + 24) = v4;
  v5 = a1[8];
  *(result + 32) = v5;
  v6 = a1[10];
  *(result + 40) = v6;
  *result = 0;
  *(result + 28) = v6;
  v7 = v5 * v4;
  v8 = (a1[6] - a1[9]) * v5;
  if (v5 * v4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(result + 44) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    return result;
  }

  if (!qword_1001065A8)
  {
    *(result + 56) = 0;
    v10 = (result + 56);
    goto LABEL_13;
  }

  if (!*qword_1001065A8)
  {
    v32 = *(qword_1001065A8 + 4);
    *(result + 56) = v32 != 0;
    v10 = (result + 56);
    if (v32)
    {
      goto LABEL_46;
    }

LABEL_13:
    *(result + 60) = v5;
    *(result + 44) = 1;
    v11 = sub_1000C0034(v7);
    *(v3 + 8) = v11;
    if (!v11)
    {
LABEL_49:
      v35 = *(v3 + 48);
      goto LABEL_50;
    }

    goto LABEL_14;
  }

  *(result + 56) = 1;
  v10 = (result + 56);
LABEL_46:
  if (v5)
  {
    goto LABEL_51;
  }

  *(result + 60) = v5 >> 1;
  v33 = sub_1000C0034(v5);
  *(v3 + 48) = v33;
  if (!v33)
  {
    goto LABEL_51;
  }

  v34 = *(v3 + 24) * *(v3 + 60);
  *(v3 + 44) = 1;
  v11 = sub_1000C0034(v34);
  *(v3 + 8) = v11;
  if (!v11)
  {
    goto LABEL_49;
  }

LABEL_14:
  v12 = a1[9];
  if (*v10)
  {
    v13 = a1[10];
    *a1 = v12;
    a1[7] = v13;
    *(v3 + 40) = 0;
    *(v3 + 28) = 0;
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v17 = a1[7];
        if (v17)
        {
          break;
        }

        v20 = 0;
        v23 = *(v3 + 24);
        if (v14 != v23)
        {
          goto LABEL_33;
        }

LABEL_19:
        if (++v15 == v13)
        {
          goto LABEL_56;
        }
      }

      a1[7] = v17 - 1;
      v18 = *a1;
      v19 = a1[15];
      v20 = (*(a1 + 1) + v19 * *a1);
      if (a1[14])
      {
        v21 = *(a1 + 6);
        if (v19 < 1)
        {
          v20 = *(a1 + 6);
        }

        else
        {
          v22 = 0;
          do
          {
            *v21 = v20[v22] & 0xF;
            v21[1] = v20[v22] >> 4;
            v21 += 2;
            ++v22;
          }

          while (v22 < a1[15]);
          v20 = *(a1 + 6);
          v18 = *a1;
        }
      }

      if (v18 + 1 == a1[6])
      {
        v24 = 0;
      }

      else
      {
        v24 = v18 + 1;
      }

      *a1 = v24;
      v23 = *(v3 + 24);
      v14 = *(v3 + 28);
      if (v14 == v23)
      {
        goto LABEL_19;
      }

LABEL_33:
      v25 = *v3 + v14;
      if (v25 <= v23)
      {
        v23 = 0;
      }

      if (*(v3 + 56))
      {
        v26 = *(v3 + 48);
        v16 = *(v3 + 60);
        if (v16 < 1)
        {
          v20 = *(v3 + 48);
        }

        else
        {
          v27 = 0;
          v28 = v20 + 1;
          do
          {
            v29 = *(v28 - 1);
            if (v29 >= 0xF)
            {
              LOBYTE(v29) = 15;
            }

            v31 = *v28;
            v28 += 2;
            v30 = v31;
            if (v31 >= 0xF)
            {
              v30 = 15;
            }

            *(v26 + v27++) = v29 | (16 * v30);
          }

          while (v27 < *(v3 + 60));
          v20 = *(v3 + 48);
          v16 = *(v3 + 60);
        }
      }

      else
      {
        v16 = *(v3 + 60);
      }

      memcpy((*(v3 + 8) + v16 * (v25 - v23)), v20, v16);
      v14 = *(v3 + 28) + 1;
      *(v3 + 28) = v14;
      *(v3 + 40) = v14;
      goto LABEL_19;
    }
  }

  else
  {
    v36 = (*(a1 + 1) + v12 * a1[8]);
    v37 = v7 - v8;
    if (v7 <= v8)
    {
      v40 = v7;
    }

    else
    {
      v38 = v8;
      v39 = v11;
      memcpy(v11, v36, v38);
      v36 = *(a1 + 1);
      v40 = v37;
      v11 = &v39[v38];
    }

    memcpy(v11, v36, v40);
  }

LABEL_56:
  *(v3 + 44) = 1;
  if (*(a1 + 2))
  {
    v41 = a1[6];
    v42 = a1[9];
    v43 = a1[10];
    v44 = sub_1000C0034(4 * v43);
    *(v3 + 16) = v44;
    if (!v44)
    {
      if (!*(v3 + 44))
      {
        goto LABEL_51;
      }

      sub_1000BFEC4(*(v3 + 48));
      sub_1000BFEC4(*(v3 + 8));
      v35 = *(v3 + 16);
LABEL_50:
      sub_1000BFEC4(v35);
LABEL_51:
      sub_1000BFEC4(v3);
      return 0;
    }

    v45 = v41 - v42;
    v46 = (*(a1 + 2) + 4 * a1[9]);
    if (v43 <= v45)
    {
      v48 = 4 * v43;
    }

    else
    {
      v47 = v44;
      memcpy(v44, v46, 4 * v45);
      v46 = *(a1 + 2);
      v48 = 4 * (v43 - v45);
      v44 = &v47[4 * v45];
    }

    memcpy(v44, v46, v48);
    return v3;
  }

  else
  {
    *(v3 + 16) = 0;
    return v3;
  }
}

_DWORD *sub_1000B1AEC(_DWORD *result)
{
  v1 = result[10];
  *result = result[9];
  result[7] = v1;
  return result;
}

uint64_t sub_1000B1AFC(int *a1, void *a2)
{
  v2 = a1[7];
  if (!v2)
  {
    return 0;
  }

  a1[7] = v2 - 1;
  v3 = *a1;
  v4 = a1[15];
  v5 = *(a1 + 1) + v4 * *a1;
  if (a1[14])
  {
    v6 = *(a1 + 6);
    if (v4 < 1)
    {
      v5 = *(a1 + 6);
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v7 = 0;
    do
    {
      *v6 = *(v5 + v7) & 0xF;
      v6[1] = *(v5 + v7) >> 4;
      v6 += 2;
      ++v7;
    }

    while (v7 < a1[15]);
    v5 = *(a1 + 6);
    v3 = *a1;
  }

  if (a2)
  {
LABEL_8:
    *a2 = *(a1 + 2) + 4 * v3;
    v3 = *a1;
  }

LABEL_9:
  if (v3 + 1 == a1[6])
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 + 1;
  }

  *a1 = v8;
  return v5;
}

uint64_t sub_1000B1BAC(uint64_t result)
{
  if (result)
  {
    if (*(result + 44))
    {
      v2 = result;
      sub_1000BFEC4(*(result + 48));
      sub_1000BFEC4(*(v2 + 8));
      sub_1000BFEC4(*(v2 + 16));
      result = v2;
      v1 = vars8;
    }

    return sub_1000BFEC4(result);
  }

  return result;
}

_DWORD *sub_1000B1C0C(_DWORD *result, int a2, int a3)
{
  result[9] = a2;
  result[10] = a3;
  *result = a2;
  result[7] = a3;
  return result;
}

uint64_t sub_1000B1C1C(uint64_t a1, int a2, void *a3)
{
  if ((a2 & 0x80000000) == 0 && *(a1 + 40) > a2)
  {
    v3 = *(a1 + 36) + a2;
    v4 = *(a1 + 24);
    if (v3 < v4)
    {
      v4 = 0;
    }

    v5 = v3 - v4;
    v6 = *(a1 + 60);
    v7 = *(a1 + 8) + v5 * v6;
    if (*(a1 + 56))
    {
      v8 = *(a1 + 48);
      if (v6 < 1)
      {
        v7 = *(a1 + 48);
        if (!a3)
        {
          return v7;
        }

        goto LABEL_11;
      }

      v9 = 0;
      do
      {
        *v8 = *(v7 + v9) & 0xF;
        v8[1] = *(v7 + v9) >> 4;
        v8 += 2;
        ++v9;
      }

      while (v9 < *(a1 + 60));
      v7 = *(a1 + 48);
    }

    if (!a3)
    {
      return v7;
    }

LABEL_11:
    *a3 = *(a1 + 16) + 4 * v5;
    return v7;
  }

  return 0;
}

uint64_t sub_1000B1CC4(uint64_t result)
{
  if (result)
  {
    if (*(result + 44))
    {
      v2 = result;
      sub_1000BFEC4(*(result + 8));
      sub_1000BFEC4(*(v2 + 16));
      result = v2;
      v1 = vars8;
    }

    return sub_1000BFEC4(result);
  }

  return result;
}

uint64_t *sub_1000B1D1C(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*(v1 + 16) >= 1)
    {
      v3 = 0;
      v4 = (v2 + 8);
      do
      {
        sub_1000B1BAC(*(v4 - 1));
        v5 = *v4;
        v4 += 3;
        sub_1000BFEC4(v5);
        ++v3;
      }

      while (v3 < *(v1 + 16));
      v2 = *v1;
    }

    sub_1000BFEC4(v2);
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000B1DA8(uint64_t *a1)
{
  v1 = *(a1 + 3);
  if (v1 >= *(a1 + 4))
  {
    return 0;
  }

  v2 = *a1;
  *(a1 + 3) = v1 + 1;
  return v2 + 24 * v1;
}

uint64_t sub_1000B1DD8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000C02DC(*(result + 72));
    *(v1 + 72) = 0;
    sub_1000C02DC(*(v1 + 80));
    *(v1 + 80) = 0;
    sub_10004ECB8(*(v1 + 64));
    sub_1000AD3CC(*(v1 + 56));
    sub_100061360(*(v1 + 48));
    sub_1000728C0(*(v1 + 16));
    sub_10001B6B4(*(v1 + 8));
    sub_100020C40(*(v1 + 40));
    sub_100056EF4(*v1);
    sub_100098C20(*(v1 + 32));
    sub_1000728C0(*(v1 + 24));
    *(v1 + 64) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t *sub_1000B1E8C(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = sub_100081410(*result);
    result = sub_100081410(a2);
    if (v4 == result)
    {
      v5 = sub_1000811C4(a2);
      v6 = sub_100036A44(a2);
      v7 = sub_10008134C(a2);
      v8 = sub_10008135C(a2);
      v9 = sub_1000C0034(2 * v5);
      v10 = sub_1000C0034(2 * v6);
      v11 = sub_1000C0384(2, v8, v7);
      v12 = sub_1000C0034(4 * v8);
      v18 = 0;
      while (sub_1000813E4(a2) != 0xFFFFFF)
      {
        sub_1000811CC(a2);
        v13 = sub_1000811BC(*v3);
        v14 = sub_100081344(a2);
        v15 = sub_10008136C(a2);
        if (v13 == 0xFFFFFF)
        {
          sub_10008137C(*v3, v9, v10, v15, v11, v14 & 2, 0, &v18);
        }

        else if (v15 >= 1)
        {
          v16 = v15;
          v17 = v11;
          do
          {
            v17 += 8;
            sub_1000813DC(*v3);
            --v16;
          }

          while (v16);
        }
      }

      sub_1000BFEC4(v12);
      sub_1000C02DC(v11);
      sub_1000BFEC4(v10);
      return sub_1000BFEC4(v9);
    }
  }

  return result;
}

BOOL sub_1000B2084(uint64_t *a1, int a2, _BYTE *a3)
{
  v5 = sub_100056F78(*a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (sub_1000C7854(v5) >= a2)
  {
    return 0;
  }

  return sub_1000C78DC(a3, v6, a2);
}

uint64_t sub_1000B210C(uint64_t *a1)
{
  v2 = sub_1000C7854("<START_DOCUMENT>");
  LODWORD(result) = sub_1000811C4(*a1);
  if (result <= v2)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000B2174(uint64_t *a1, _WORD *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  do
  {
    v4 = *v3;
    if (!*v3)
    {
      return 0xFFFFFFFFLL;
    }

    ++v3;
  }

  while (sub_1000CAA80(v4));
  v5 = sub_1000811BC(*a1);
  if (v5 == 0xFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5 | 0xC0000000;
  }
}

uint64_t sub_1000B2208(uint64_t *a1)
{
  if (sub_1000CAA80(58) && sub_1000CAA80(71) && sub_1000CAA80(65) && sub_1000CAA80(82) && sub_1000CAA80(66) && sub_1000CAA80(65) && sub_1000CAA80(71) && sub_1000CAA80(69) && sub_1000CAA80(58))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = sub_1000811BC(*a1);
  if (v3 == 0xFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 | 0xC0000000;
  }
}

uint64_t sub_1000B22CC(uint64_t result, unsigned int a2, uint64_t a3, _WORD *a4)
{
  if (a2 > 0xFFFFFFFA)
  {
LABEL_2:
    if (a2 + 5 < 3)
    {
      if (!a3)
      {
        goto LABEL_39;
      }

      result = off_1000FE138[a2 + 5];
      if (!*result)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (a2 == -2)
    {
LABEL_12:
      if (!a3)
      {
        goto LABEL_39;
      }

      result = "<SILENCE>";
      goto LABEL_38;
    }

LABEL_36:
    if (!a3)
    {
      goto LABEL_39;
    }

    result = "<NOID>";
    goto LABEL_38;
  }

  v5 = a2 >> 30;
  if (a2 >> 30 > 1)
  {
    if (v5 == 2)
    {
      v9 = a3;
      v7 = result;
      v10 = a2;
      result = sub_10001CC98(*(result + 8), a2);
      a3 = v9;
      a2 = v10;
      if (!result)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if ((a2 & 0xFFFFFF) == 0xFFFFFF)
      {
        goto LABEL_24;
      }

      v11 = a2;
      v12 = a3;
      v7 = result;
      result = sub_1000813D4(*result);
      a3 = v12;
      a2 = v11;
      if (!result)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_2;
    }

    if ((~a2 & 0xFFFE) == 0)
    {
      goto LABEL_2;
    }

    v6 = a3;
    v7 = result;
    v8 = a2;
    result = sub_10001CCF8(*(result + 8), a2);
    a3 = v6;
    a2 = v8;
    if (!result)
    {
      goto LABEL_2;
    }
  }

  result = v7;
  if (v5 == 1)
  {
    if (a2 == 0xFFFF)
    {
      goto LABEL_36;
    }

    if (a2 == 65534)
    {
      goto LABEL_12;
    }

    v13 = a3;
    v14 = v7;
    result = sub_10001B934(*(v7 + 1), a2, 0);
    if (result == 0xFFFF)
    {
      if (!v13)
      {
LABEL_39:
        if (a4)
        {
          *a4 = 0;
        }

        return result;
      }

      result = "<NOID>";
      a3 = v13;
LABEL_38:
      result = sub_1000CD478(result, 0x7FFFFFFF, a3);
      goto LABEL_39;
    }

    if (result != 65534)
    {
      result = sub_10001B7EC(*(v7 + 1), result);
      if (result != 0xFFFFFF)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_34;
  }

  if (v5 == 2)
  {
    if (a2 == 65534)
    {
      goto LABEL_12;
    }

    v13 = a3;
    v14 = v7;
    result = sub_10001B7EC(*(v7 + 1), a2);
    if (result != 0xFFFFFF)
    {
LABEL_23:
      v15 = *v14;
      goto LABEL_26;
    }

LABEL_34:
    if (!v13)
    {
      goto LABEL_39;
    }

    result = "<SILENCE>";
    a3 = v13;
    goto LABEL_38;
  }

LABEL_24:
  if ((a2 & 0xFFFFFF) == 0xFFFFFF)
  {
    goto LABEL_36;
  }

  v15 = *result;
LABEL_26:

  return sub_1000811CC(v15);
}

uint64_t sub_1000B252C(uint64_t *a1, unsigned int a2)
{
  if (a2 > 0xFFFFFFFA)
  {
    return 1;
  }

  v2 = a2 >> 30;
  if (a2 >> 30 > 1)
  {
    if (v2 == 2)
    {
      return sub_10001CC98(a1[1], a2);
    }

    else
    {
      if ((a2 & 0xFFFFFF) == 0xFFFFFF)
      {
        return 1;
      }

      return sub_1000813D4(*a1);
    }
  }

  else
  {
    if (!v2)
    {
      return v2;
    }

    if ((~a2 & 0xFFFE) != 0)
    {
      return sub_10001CCF8(a1[1], a2);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B259C(uint64_t *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v10 = a2;
  while (1)
  {
    result = *v10;
    if (!*v10)
    {
      return result;
    }

    ++v10;
    if (!sub_1000CAA80(result))
    {
      if (a6 < 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = sub_1000C9F54(4 * a6, v12, v13, v14, v15, v16, v17, v18);
      }

      result = sub_10008132C(*a1);
      if (result >= a6)
      {
        v20 = a6;
      }

      else
      {
        v20 = result;
      }

      if (v20 < 1)
      {
        if (!v19)
        {
          return result;
        }
      }

      else
      {
        v21 = 0;
        if (v20 < 8)
        {
          goto LABEL_18;
        }

        if ((a7 - v19) < 0x20)
        {
          goto LABEL_18;
        }

        v21 = v20 & 0x7FFFFFF8;
        v22 = v19 + 2;
        v23 = (a7 + 16);
        v24 = v21;
        do
        {
          *&v25 = __PAIR64__(HIDWORD(*v22), *v22) | 0xC0000000C0000000;
          DWORD2(v25) = v22[1] | 0xC0000000;
          HIDWORD(v25) = HIDWORD(*v22) | 0xC0000000;
          *(v23 - 1) = *(v22 - 1) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *v23 = v25;
          v22 += 4;
          v23 += 2;
          v24 -= 8;
        }

        while (v24);
        if (v21 != v20)
        {
LABEL_18:
          v26 = (a7 + 4 * v21);
          v27 = v19 + v21;
          v28 = v20 - v21;
          do
          {
            v29 = *v27++;
            *v26++ = v29 | 0xC0000000;
            --v28;
          }

          while (v28);
        }
      }

      v30 = 4 * a6;
      v31 = result;
      sub_1000CA03C(v19, v30);
      return v31;
    }
  }
}

uint64_t sub_1000B26F0(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v14 = a2;
  while (1)
  {
    result = *v14;
    if (!*v14)
    {
      return result;
    }

    v14 += 2;
    if (!sub_1000CAA80(result))
    {
      if (a6 < 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = sub_1000C9F54(4 * a6, v16, v17, v18, v19, v20, v21, v22);
      }

      result = sub_1000811D4(*a1, a3, a5, a2, v23, a6, a4);
      if (result >= a6)
      {
        v24 = a6;
      }

      else
      {
        v24 = result;
      }

      if (v24 < 1)
      {
        if (!v23)
        {
          return result;
        }
      }

      else
      {
        v25 = 0;
        if (v24 < 8)
        {
          goto LABEL_18;
        }

        if ((a7 - v23) < 0x20)
        {
          goto LABEL_18;
        }

        v25 = v24 & 0x7FFFFFF8;
        v26 = v23 + 2;
        v27 = (a7 + 16);
        v28 = v25;
        do
        {
          *&v29 = __PAIR64__(HIDWORD(*v26), *v26) | 0xC0000000C0000000;
          DWORD2(v29) = v26[1] | 0xC0000000;
          HIDWORD(v29) = HIDWORD(*v26) | 0xC0000000;
          *(v27 - 1) = *(v26 - 1) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *v27 = v29;
          v26 += 4;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v25 != v24)
        {
LABEL_18:
          v30 = (a7 + 4 * v25);
          v31 = v23 + v25;
          v32 = v24 - v25;
          do
          {
            v33 = *v31++;
            *v30++ = v33 | 0xC0000000;
            --v32;
          }

          while (v32);
        }
      }

      v34 = 4 * a6;
      v35 = result;
      sub_1000CA03C(v23, v34);
      return v35;
    }
  }
}

uint64_t sub_1000B2844(uint64_t a1, unsigned int a2)
{
  v3 = a2 >> 30;
  if (a2 >> 30 <= 1)
  {
    if (!v3)
    {
      return 0xFFFFFFLL;
    }

    a2 = sub_10001B934(*(a1 + 8), a2, 0);
    v5 = *(a1 + 8);

    return sub_10001B7EC(v5, a2);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 8);
    a2 = a2;

    return sub_10001B7EC(v5, a2);
  }

  return a2 & 0xFFFFFF;
}

uint64_t sub_1000B28D0(uint64_t a1, int a2)
{
  if (a2 == 0xFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2 | 0xC0000000;
  }
}

uint64_t sub_1000B28E4(uint64_t a1, unsigned int a2, int16x8_t *a3, int a4)
{
  v4 = a2 >> 30;
  if (v4 == 1)
  {
    if (a4 >= 1)
    {
      a3->i16[0] = a2;
    }

    return 1;
  }

  if (a2 >= 0xFFFFFFFB)
  {
    if (a2 <= -4)
    {
      if (a2 == -5)
      {
        LOWORD(a2) = -5;
      }

      else
      {
        LOWORD(a2) = -4;
      }

      goto LABEL_25;
    }

    if (a2 != -1)
    {
      if (a2 == -2)
      {
        LOWORD(a2) = -2;
      }

      else
      {
        LOWORD(a2) = -3;
      }

      goto LABEL_25;
    }

    return 0;
  }

  if (a2 >> 30 > 1)
  {
    if (v4 == 2)
    {
      goto LABEL_19;
    }

    v10 = a2 & 0xFFFFFF;
    if (v10 == 0xFFFFFF)
    {
      return 0;
    }

    v6 = a1;
    v7 = a3;
    v8 = a4;
    v9 = sub_10001BA00(*(a1 + 8), v10);
  }

  else
  {
    if (!v4)
    {
      return v4;
    }

    if (a2 == 0xFFFF)
    {
      return 0;
    }

    v6 = a1;
    v7 = a3;
    v8 = a4;
    v9 = sub_10001B934(*(a1 + 8), a2, 0);
  }

  a4 = v8;
  a3 = v7;
  LOWORD(a2) = v9;
  a1 = v6;
LABEL_19:
  if (a2 == 0xFFFF)
  {
    return 0;
  }

LABEL_25:
  v11 = *(a1 + 8);

  return sub_10001C7F8(v11, a2, a3, a4);
}

uint64_t sub_1000B2A30(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xFFFFFFFB)
  {
    return a2;
  }

  v4 = a2 >> 30;
  if (a2 >> 30 > 1)
  {
    if (v4 == 2)
    {
      return a2;
    }

    v5 = a2 & 0xFFFFFF;
    if (v5 == 0xFFFFFF)
    {
      return 0xFFFFLL;
    }

    else
    {
      return sub_10001BA00(*(a1 + 8), v5);
    }
  }

  else if (v4)
  {
    v2 = -1;
    if (a2 == 0xFFFF)
    {
      return v2;
    }

    return sub_10001B934(*(a1 + 8), a2, 0);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t sub_1000B2AA8(uint64_t result, unsigned int a2, int a3)
{
  v3 = result;
  if (a2 < 0xFFFFFFFB)
  {
    v4 = a2 >> 30;
    if (a2 >> 30 > 1)
    {
      if (v4 == 2)
      {
        v5 = result;
        LOWORD(result) = a2;
        v7 = a2;
        if (a2 == 0xFFFF)
        {
          return result;
        }
      }

      else
      {
        v8 = a2 & 0xFFFFFF;
        if (v8 == 0xFFFFFF)
        {
          return 0xFFFFLL;
        }

        v5 = result;
        v9 = a3;
        LOWORD(result) = sub_10001BA00(*(result + 8), v8);
        a3 = v9;
        v7 = result;
        if (result == 0xFFFF)
        {
          return result;
        }
      }
    }

    else
    {
      LOWORD(result) = -1;
      if (!v4)
      {
        return result;
      }

      if (a2 == 0xFFFF)
      {
        return result;
      }

      v5 = v3;
      v6 = a3;
      LOWORD(result) = sub_10001B934(*(v3 + 8), a2, 0);
      a3 = v6;
      v7 = result;
      if (result == 0xFFFF)
      {
        return result;
      }
    }

    v10 = v7 == 65534;
    v3 = v5;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else if (a2 <= -4)
  {
    if (a2 == -5)
    {
      LOWORD(result) = -5;
    }

    else
    {
      LOWORD(result) = -4;
    }
  }

  else
  {
    if (a2 != -3)
    {
      if (a2 != -2)
      {
        LOWORD(result) = -1;
        return result;
      }

LABEL_24:
      if (a3)
      {
        LOWORD(result) = -1;
      }

      else
      {
        LOWORD(result) = -2;
      }

      return result;
    }

    LOWORD(result) = -3;
  }

  v11 = result;
  v12 = *(v3 + 8);

  return sub_10001CD6C(v12, v11, a3);
}

uint64_t sub_1000B2C18(uint64_t *a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2 >> 30;
  if (a2 >> 30 <= 1)
  {
    if (!v2)
    {
      return v2;
    }

    return a2 != 0xFFFF && sub_10001B934(a1[1], a2, 0) != 0xFFFF;
  }

  if (v2 == 2)
  {
    v4 = a1[1];

    return sub_10001CAD8(v4, a2);
  }

  else
  {
    v5 = *a1;

    return sub_100081364(v5);
  }
}

uint64_t sub_1000B2D30(uint64_t *a1, unint64_t a2, _WORD *a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int *a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v12 = a7;
  LODWORD(v13) = a6;
  v14 = a5;
  v15 = a3;
  if (qword_1001065A8)
  {
    v17 = *(qword_1001065A8 + 5508) == 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = 1;
    if (!a3)
    {
LABEL_11:
      v13 = sub_1000B3E80(a1, a2, a4, a5, a6, a7, a8, a9);
      bzero(v11, 4 * v13);
      bzero(a9, 4 * v13);
      return v13;
    }
  }

  if (!*a3)
  {
    goto LABEL_11;
  }

  v292 = v17;
  v18 = sub_1000CB75C(a2);
  v323 = sub_1000CB75C(v15);
  v19 = sub_1000C7854("<START_DOCUMENT>");
  v20 = sub_1000811C4(*a1);
  if (v20 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_100036A44(*a1);
  v295 = v13;
  if (qword_1001065A8)
  {
    v331 = *(qword_1001065A8 + 5508);
  }

  else
  {
    v331 = 0;
  }

  v312 = sub_1000C0384(4, v18 + 1, (v323 + 1));
  if (v312)
  {
    v302 = v11;
    v307 = v15;
    v300 = v12;
    __src = (2 * (v21 + 1));
    v31 = sub_1000C9F54(__src, v24, v25, v26, v27, v28, v29, v30);
    v288 = 2 * (v22 + 1);
    v329 = sub_1000C9F54(v288, v32, v33, v34, v35, v36, v37, v38);
    v46 = sub_1000C9F54(120, v39, v40, v41, v42, v43, v44, v45);
    v321 = v31;
    if ((v18 & 0x80000000) != 0)
    {
      v50 = 0;
      v110 = 0;
      v111 = 0;
      **v312 = 0;
      v51 = v13;
      if (v13 <= 0)
      {
        v112 = v13;
      }

      else
      {
        v112 = 0;
      }

      v113 = v18;
      v332 = 0;
      if (!v18)
      {
        goto LABEL_108;
      }

      goto LABEL_184;
    }

    v47 = v312;
    if ((v323 & 0x80000000) == 0)
    {
      v48 = 0;
      do
      {
        v49 = 0;
        do
        {
          v312[v48][v49++] = -1;
        }

        while (v323 + 1 != v49);
        ++v48;
      }

      while (v48 != v18 + 1);
    }

    v50 = 0;
    **v312 = 0;
    v51 = v13;
    if (!v18 || v323 < 1)
    {
      v110 = 0;
      v111 = 0;
      if (v13 <= 0)
      {
        v112 = v13;
      }

      else
      {
        v112 = 0;
      }

      v113 = v18;
      v332 = 0;
      if (!v18)
      {
        goto LABEL_108;
      }

      goto LABEL_184;
    }

    if (!a2)
    {
      v50 = 0;
      v110 = 0;
      v111 = 0;
      if (v13 <= 0)
      {
        v112 = v13;
      }

      else
      {
        v112 = 0;
      }

      v113 = v18;
      v332 = 0;
      goto LABEL_184;
    }

    v52 = 0;
    v310 = 0;
    v309 = 0;
    v53 = 30;
    v315 = v18;
    v297 = v18;
    v327 = v14;
LABEL_26:
    v54 = 0;
    v55 = (a2 + 2 * v52);
    v317 = v52;
    while (v47[v52][v54] == -1)
    {
LABEL_29:
      if (++v54 == v323)
      {
        if (++v52 != v297)
        {
          goto LABEL_26;
        }

        v114 = v309;
        if (v309 >= 1)
        {
          v111 = 0;
          v115 = v310;
          do
          {
            sub_1000B22CC(a1, v47[v114][v115], v31, v329);
            v116 = sub_1000CB75C(v31);
            v115 -= sub_1000CB75C(v329);
            ++v111;
            v117 = __OFSUB__(v114, v116);
            v114 -= v116;
          }

          while (!((v114 < 0) ^ v117 | (v114 == 0)));
          v51 = v295;
          v50 = v310;
          v110 = v309;
          if (v111 >= v295)
          {
            v112 = v295;
          }

          else
          {
            v112 = v111;
          }

          v113 = v315 - v309;
          v332 = v111;
          if (v315 != v309)
          {
            goto LABEL_184;
          }

LABEL_108:
          v325 = 0;
          v118 = v112 - 1;
          if (v112 < 1)
          {
LABEL_199:
            sub_1000CA03C(v46, 120);
            sub_1000CA03C(v329, v288);
            sub_1000CA03C(v321, __src);
            sub_1000C02DC(v312);
            v97 = (v325 + v332);
            v11 = v302;
            v12 = v300;
            v15 = v307;
            v13 = v295;
            v308 = v295 - v97;
            if (v295 == v97)
            {
              goto LABEL_200;
            }

            goto LABEL_79;
          }

LABEL_190:
          if (v332 > v295 && a4 == 0)
          {
            v205 = v332 - v295;
          }

          else
          {
            v205 = 0;
          }

          do
          {
            while (1)
            {
              v206 = v312[v110][v50];
              sub_1000B22CC(a1, v206, v321, v329);
              v207 = sub_1000CB75C(v321);
              v208 = sub_1000CB75C(v329);
              v110 -= v207;
              v50 -= v208;
              if (v205 >= 1)
              {
                break;
              }

              v302[v118] = v110;
              a9[v118] = v207;
              *(a10 + 4 * v118) = v50;
              *(a11 + 4 * v118) = v208;
              *(v300 + 4 * v118--) = v206;
              if ((v118 & 0x80000000) != 0)
              {
                goto LABEL_199;
              }
            }

            --v205;
          }

          while ((v118 & 0x80000000) == 0);
          goto LABEL_199;
        }

        v111 = 0;
        v51 = v295;
        v50 = v310;
        v110 = v309;
        if (v295 <= 0)
        {
          v112 = v295;
        }

        else
        {
          v112 = 0;
        }

        v113 = v315 - v309;
        v332 = 0;
        if (v315 == v309)
        {
          goto LABEL_108;
        }

LABEL_184:
        if (a4 || v111 < v51)
        {
          v112 = v51 - 1;
          if (v111 < v51)
          {
            v112 = v111;
          }

          v302[v112] = v110;
          a9[v112] = v113;
          *(a10 + 4 * v112) = v50;
          *(a11 + 4 * v112) = v323 - v50;
          *(v300 + 4 * v112) = -1;
        }

        v325 = 1;
        v118 = v112 - 1;
        if (v112 < 1)
        {
          goto LABEL_199;
        }

        goto LABEL_190;
      }
    }

LABEL_34:
    v63 = v55;
    do
    {
      v64 = *v63;
      if (!*v63)
      {
        if (v53 > 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        sub_1000CA03C(v46, 4 * v53);
        v53 *= 2;
        v46 = sub_1000C9F54(4 * v53, v56, v57, v58, v59, v60, v61, v62);
        goto LABEL_34;
      }

      v63 += 2;
    }

    while (sub_1000CAA80(v64));
    if (v53 < 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_1000C9F54(4 * v53, v65, v66, v67, v68, v69, v70, v71);
    }

    v73 = sub_1000811D4(*a1, v14, 1, v55, v72, v53, v331);
    v74 = v73;
    if (v73 >= v53)
    {
      v75 = v53;
    }

    else
    {
      v75 = v73;
    }

    if (v75 <= 0)
    {
      if (!v72)
      {
LABEL_54:
        if (v74 >= v53)
        {
          goto LABEL_33;
        }

        if (v74 >= 1)
        {
          v86 = 0;
          v87 = 4 * v74;
          do
          {
            sub_1000B22CC(a1, *(v46 + v86), v31, v329);
            v88 = sub_1000CB75C(v31);
            v89 = sub_1000CB75C(v329);
            if (v89)
            {
              v90 = v89 + v54;
              if (v89 + v54 <= v323 && !sub_1000CC444((v307 + 2 * v54), v329, v89))
              {
                v91 = v88 + v317;
                if ((v88 + v317 != v315 || v90 >= v323) && (v91 >= v315 || v90 != v323))
                {
                  v92 = v312[v91];
                  if (v92[v90] == -1)
                  {
                    v92[v90] = *(v46 + v86);
                    if (v90 <= v310)
                    {
                      v93 = v310;
                    }

                    else
                    {
                      v93 = v90;
                    }

                    v94 = v309;
                    v95 = v91 <= v309;
                    if (v91 != v309)
                    {
                      v93 = v310;
                    }

                    if (v91 > v309)
                    {
                      v94 = v88 + v317;
                    }

                    v309 = v94;
                    if (v95)
                    {
                      v96 = v93;
                    }

                    else
                    {
                      v96 = v90;
                    }

                    v310 = v96;
                  }
                }
              }

              v31 = v321;
            }

            v86 += 4;
          }

          while (v87 != v86);
          v14 = v327;
          v47 = v312;
        }

LABEL_28:
        v52 = v317;
        goto LABEL_29;
      }
    }

    else
    {
      v76 = 0;
      if (v75 < 8)
      {
        goto LABEL_49;
      }

      if ((v46 - v72) < 0x20)
      {
        goto LABEL_49;
      }

      v76 = v75 & 0x7FFFFFF8;
      v77 = v72 + 2;
      v78 = v46 + 2;
      v79 = v76;
      do
      {
        *&v80 = __PAIR64__(HIDWORD(*v77), *v77) | 0xC0000000C0000000;
        DWORD2(v80) = v77[1] | 0xC0000000;
        HIDWORD(v80) = HIDWORD(*v77) | 0xC0000000;
        *(v78 - 1) = *(v77 - 1) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
        *v78 = v80;
        v77 += 4;
        v78 += 2;
        v79 -= 8;
      }

      while (v79);
      if (v76 != v75)
      {
LABEL_49:
        v81 = v75 - v76;
        v82 = 4 * v76;
        v83 = v46 + v76;
        v84 = (v72 + v82);
        do
        {
          v85 = *v84++;
          *v83++ = v85 | 0xC0000000;
          --v81;
        }

        while (v81);
      }
    }

    sub_1000CA03C(v72, 4 * v53);
    goto LABEL_54;
  }

  v97 = 0;
  v13 = v13;
  v308 = v13;
  if (!v13)
  {
LABEL_200:
    if (!v292)
    {
      v209 = v13 - 1;
      if (*(v12 + 4 * (v13 - 1)) == -1)
      {
        v210 = v11;
        v211 = v12;
        v212 = 2 * sub_1000CB75C(a2);
        v220 = sub_1000C9F54(v212 + 2, v213, v214, v215, v216, v217, v218, v219);
        j__memmove(v220, (a2 + 2 * v210[v209]), 2 * a9[v209]);
        *(v220 + a9[v209]) = 0;
        v221 = 2 * sub_1000CB75C(v15);
        v229 = sub_1000C9F54(v221 + 2, v222, v223, v224, v225, v226, v227, v228);
        j__memmove(v229, (v15 + 2 * *(a10 + 4 * v209)), 2 * *(a11 + 4 * v209));
        *(v229 + *(a11 + 4 * v209)) = 0;
        v230 = v220;
        do
        {
          v231 = *v230;
          if (!*v230)
          {
            v233 = -1;
            goto LABEL_208;
          }

          ++v230;
        }

        while (sub_1000CAA80(v231));
        v232 = sub_1000811BC(*a1);
        v233 = v232 | 0xC0000000;
        if (v232 == 0xFFFFFF)
        {
          v233 = -1;
        }

LABEL_208:
        *(v211 + 4 * v209) = v233;
        sub_1000CA03C(v229, v221 + 2);
        sub_1000CA03C(v220, v212 + 2);
        return v295;
      }
    }

    return v13;
  }

LABEL_79:
  v98 = v15;
  v99 = v97 - 1;
  v100 = (v12 + 4 * (v97 - 1));
  v13 = v97;
  if (*v100 != -1)
  {
    return v13;
  }

  v101 = v99;
  v102 = v11;
  v103 = 4 * v99;
  v303 = v102;
  v301 = &v102[v103];
  v104 = *&v102[v103];
  v298 = (a10 + v103);
  v287 = *(a10 + v103);
  v105 = (v98 + 2 * v287);
  __srca = (a2 + 2 * v104);
  v306 = sub_1000CB75C(__srca);
  v311 = sub_1000CB75C(v105);
  v106 = sub_1000C7854("<START_DOCUMENT>");
  v107 = sub_1000811C4(*a1);
  if (v107 <= v106)
  {
    v108 = v106;
  }

  else
  {
    v108 = v107;
  }

  v109 = sub_100036A44(*a1);
  v293 = v101;
  if (qword_1001065A8)
  {
    v324 = *(qword_1001065A8 + 5508);
  }

  else
  {
    v324 = 0;
  }

  v119 = (v306 + 1);
  v289 = (v311 + 1);
  v330 = sub_1000C0384(4, v119, v289);
  if (!v330)
  {
    v199 = 0;
    v200 = v101;
    return (v200 + v199);
  }

  v285 = 2 * v119;
  v314 = sub_1000C9F54(v285, v120, v121, v122, v123, v124, v125, v126);
  j__memmove(v314, __srca, 2 * v119);
  v284 = 2 * (v108 + 1);
  v134 = sub_1000C9F54(v284, v127, v128, v129, v130, v131, v132, v133);
  v283 = 2 * (v109 + 1);
  v149 = sub_1000C9F54(v283, v135, v136, v137, v138, v139, v140, v141);
  if ((v306 & 0x80000000) == 0 && (v311 & 0x80000000) == 0)
  {
    v150 = 0;
    do
    {
      v151 = 0;
      do
      {
        *(*(v330 + 8 * v150) + v151) = -1;
        v151 += 4;
      }

      while (4 * v289 != v151);
      ++v150;
    }

    while (v150 != v119);
  }

  v152 = (v306 + 1);
  v304 = &a9[v103 / 4];
  v299 = (a11 + v103);
  v153 = v308 + 1;
  *(*(v330 + 8 * v306) + 4 * v311) = 0;
  v333 = sub_1000C9F54(120, v142, v143, v144, v145, v146, v147, v148);
  v286 = v104;
  v282 = v103;
  v296 = v100;
  if (v306 < 1)
  {
    v319 = 120;
    v235 = 0;
    v236 = 0;
    v201 = v306;
    v237 = v330;
    goto LABEL_227;
  }

  v154 = v306;
  if (!v314)
  {
    v237 = v330;
    if (v306 < 4)
    {
      goto LABEL_223;
    }

    if (v306 >= 0x10)
    {
      v234 = v306 & 0x7FFFFFF0;
      v238 = v234;
      do
      {
        v238 -= 16;
      }

      while (v238);
      if (v234 == v306)
      {
        goto LABEL_221;
      }

      if ((v306 & 0xCLL) == 0)
      {
        v154 = v306 & 0xFLL;
        goto LABEL_223;
      }
    }

    else
    {
      v234 = 0;
    }

    v239 = v234 - (v306 & 0x7FFFFFFCLL);
    do
    {
      v239 += 4;
    }

    while (v239);
    v154 = v306 & 3;
    if ((v306 & 0x7FFFFFFCLL) == v306)
    {
LABEL_221:
      v235 = 0;
      v236 = 0;
      v319 = 120;
LABEL_226:
      v201 = v306;
      goto LABEL_227;
    }

LABEL_223:
    v240 = v154 + 1;
    v241 = 2 * v154;
    v319 = 120;
    do
    {
      --v240;
      v241 -= 2;
    }

    while (v240 > 1);
    v235 = 0;
    v236 = 0;
    goto LABEL_226;
  }

  v155 = 30;
  v320 = v311;
  v322 = v306;
  do
  {
    *&v314[2 * v154] = 0;
    v156 = 1;
    v313 = v152;
    do
    {
      v316 = v156;
      v157 = &v314[2 * (v154 - v156)];
      while (1)
      {
        v158 = v157;
        do
        {
          v159 = *v158;
          if (!*v158)
          {
            v168 = 0;
            goto LABEL_146;
          }

          v158 += 2;
        }

        while (sub_1000CAA80(v159));
        v167 = v155 < 1 ? 0 : sub_1000C9F54(4 * v155, v160, v161, v162, v163, v164, v165, v166);
        v169 = sub_10008132C(*a1);
        v168 = v169;
        v170 = v169 >= v155 ? v155 : v169;
        if (v170 < 1)
        {
          if (!v167)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v171 = 0;
          if (v170 < 8)
          {
            goto LABEL_141;
          }

          if ((v333 - v167) < 0x20)
          {
            goto LABEL_141;
          }

          v171 = v170 & 0x7FFFFFF8;
          v172 = v167 + 2;
          v173 = v333 + 2;
          v174 = v171;
          do
          {
            *&v175 = __PAIR64__(HIDWORD(*v172), *v172) | 0xC0000000C0000000;
            DWORD2(v175) = v172[1] | 0xC0000000;
            HIDWORD(v175) = HIDWORD(*v172) | 0xC0000000;
            *(v173 - 1) = *(v172 - 1) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *v173 = v175;
            v172 += 4;
            v173 += 2;
            v174 -= 8;
          }

          while (v174);
          if (v171 != v170)
          {
LABEL_141:
            v176 = v170 - v171;
            v177 = 4 * v171;
            v178 = v333 + v171;
            v179 = (v167 + v177);
            do
            {
              v180 = *v179++;
              *v178++ = v180 | 0xC0000000;
              --v176;
            }

            while (v176);
          }
        }

        sub_1000CA03C(v167, 4 * v155);
LABEL_146:
        if (v168 < v155)
        {
          break;
        }

        sub_1000CA03C(v333, 4 * v155);
        v155 *= 2;
        v333 = sub_1000C9F54(4 * v155, v181, v182, v183, v184, v185, v186, v187);
      }

      if (v311 >= 1 && v168 >= 1)
      {
        v318 = v168;
        v188 = v311;
        do
        {
          if (*(*(v330 + 8 * v154) + 4 * v188) != -1)
          {
            v189 = v333;
            v190 = v318;
            do
            {
              sub_1000B22CC(a1, *v189, v134, v149);
              v191 = sub_1000CB75C(v149);
              if (v191)
              {
                v192 = v188 - v191;
                if (((v188 - v191) & 0x80000000) == 0 && !memcmp(&v105[2 * v192], v149, v191))
                {
                  v193 = v154 - sub_1000CB75C(v134);
                  if ((!v192 || v193) && (v192 || v193 <= 0))
                  {
                    v194 = *(v330 + 8 * v193);
                    if (*(v194 + 4 * v192) == -1)
                    {
                      *(v194 + 4 * v192) = *v189;
                      if (v192 >= v320)
                      {
                        v195 = v320;
                      }

                      else
                      {
                        v195 = v192;
                      }

                      v196 = v322;
                      v197 = v193 < v322;
                      if (v193 != v322)
                      {
                        v195 = v320;
                      }

                      if (v193 < v322)
                      {
                        v196 = v193;
                      }

                      v322 = v196;
                      if (v197)
                      {
                        v198 = v192;
                      }

                      else
                      {
                        v198 = v195;
                      }

                      v320 = v198;
                    }
                  }
                }
              }

              ++v189;
              --v190;
            }

            while (v190);
          }

          v95 = v188-- <= 1;
        }

        while (!v95);
      }

      v156 = v316 + 1;
    }

    while (v316 + 1 != v313);
    v152 = v313 - 1;
    v95 = v154-- <= 1;
  }

  while (!v95);
  v201 = v322;
  v319 = 4 * v155;
  if (v322 < v306)
  {
    v236 = 0;
    v202 = v322;
    v203 = v320;
    do
    {
      sub_1000B22CC(a1, *(*(v330 + 8 * v202) + 4 * v203), v134, v149);
      v202 += sub_1000CB75C(v134);
      v203 += sub_1000CB75C(v149);
      ++v236;
    }

    while (v202 < v306);
    v235 = 1;
    v311 = v320;
    v237 = v330;
    v201 = v322;
  }

  else
  {
    v235 = 0;
    v236 = 0;
    v311 = v320;
    v237 = v330;
  }

  v153 = v308 + 1;
LABEL_227:
  if (v201)
  {
    v242 = v236 + 1;
  }

  else
  {
    v242 = v236;
  }

  if (v242 <= v153 || a4 == 0)
  {
    v244 = 0;
  }

  else
  {
    v244 = v242 - v153;
  }

  v328 = v242;
  if (v201)
  {
    if (v244 < 1)
    {
      *v301 = 0;
      *v304 = v201;
      *v298 = 0;
      *v299 = v311;
      if (v324)
      {
        v326 = v235;
        v246 = v314;
        j__memmove(v314, __srca, 2 * v201);
        *&v314[2 * v201] = 0;
        v254 = sub_1000C9F54(2 * v289, v247, v248, v249, v250, v251, v252, v253);
        j__memmove(v254, v105, 2 * v311);
        *(v254 + v311) = 0;
        do
        {
          v255 = *v246;
          if (!*v246)
          {
            v257 = -1;
            goto LABEL_249;
          }

          ++v246;
        }

        while (sub_1000CAA80(v255));
        v256 = sub_1000811BC(*a1);
        if (v256 == 0xFFFFFF)
        {
          v257 = -1;
        }

        else
        {
          v257 = v256 | 0xC0000000;
        }

LABEL_249:
        sub_1000CA03C(v254, 2 * v289);
        v237 = v330;
        v235 = v326;
      }

      else
      {
        v257 = -1;
      }

      *v296 = v257;
      v245 = 1;
    }

    else
    {
      v245 = 0;
      --v244;
    }
  }

  else
  {
    v245 = 0;
  }

  v258 = v235 ^ 1;
  if (v245 > v308)
  {
    v258 = 1;
  }

  v259 = v311;
  if ((v258 & 1) == 0)
  {
    do
    {
      v260 = v201;
      v261 = *(*(v237 + 8 * v201) + 4 * v259);
      sub_1000B22CC(a1, v261, v134, v149);
      v262 = sub_1000CB75C(v134);
      v263 = sub_1000CB75C(v149);
      if (v244 < 1)
      {
        *&v301[4 * v245] = v260;
        v304[v245] = v262;
        v264 = v259;
        v298[v245] = v259;
        v299[v245] = v263;
        v296[v245++] = v261;
        v265 = v262 + v260;
        v237 = v330;
        if (v265 >= v306)
        {
          break;
        }
      }

      else
      {
        v264 = v259;
        --v244;
        v265 = v262 + v260;
        v237 = v330;
        if (v265 >= v306)
        {
          break;
        }
      }

      v201 = v265;
      v259 = v263 + v264;
    }

    while (v245 <= v308);
  }

  sub_1000CA03C(v333, v319);
  sub_1000CA03C(v149, v283);
  sub_1000CA03C(v134, v284);
  sub_1000CA03C(v314, v285);
  sub_1000C02DC(v237);
  v199 = v328;
  if (v328 < 1)
  {
    v200 = v293;
  }

  else
  {
    v200 = v293;
    if (v328 < 8)
    {
      v266 = 0;
      v268 = a10;
      v267 = v303;
      v269 = v287;
      goto LABEL_269;
    }

    v268 = a10;
    v267 = v303;
    v270 = 4 * (v293 + v328);
    v269 = v287;
    if (&v303[v282] < a10 + v270 && a10 + v282 < &v303[v270])
    {
      v266 = 0;
      goto LABEL_269;
    }

    v266 = v328 & 0x7FFFFFF8;
    v271 = vdupq_n_s32(v286);
    v272 = vdupq_n_s32(v287);
    v273 = (a10 + v282 + 16);
    v274 = &v303[v282 + 16];
    v275 = v266;
    do
    {
      v276 = vaddq_s32(*v274, v271);
      v274[-1] = vaddq_s32(v274[-1], v271);
      *v274 = v276;
      v277 = vaddq_s32(*v273, v272);
      v273[-1] = vaddq_s32(v273[-1], v272);
      *v273 = v277;
      v273 += 2;
      v274 += 2;
      v275 -= 8;
    }

    while (v275);
    if (v266 != v328)
    {
LABEL_269:
      v278 = 4 * (v266 + v293);
      v279 = &v267[v278];
      v280 = (v268 + v278);
      v281 = v328 - v266;
      do
      {
        *v279 += v286;
        v279 += 4;
        *v280++ += v269;
        --v281;
      }

      while (v281);
    }
  }

  return (v200 + v199);
}

uint64_t sub_1000B3E80(uint64_t *a1, unint64_t a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1001065A8)
  {
    v11 = *(qword_1001065A8 + 5508) == 0;
  }

  else
  {
    v11 = 1;
  }

  v192 = v11;
  v12 = sub_1000CB75C(a2);
  v13 = sub_1000C7854("<START_DOCUMENT>");
  v14 = sub_1000811C4(*a1);
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + 1;
  v24 = sub_100036A44(*a1) + 1;
  v210 = a6;
  if (qword_1001065A8)
  {
    v206 = *(qword_1001065A8 + 5508);
  }

  else
  {
    v206 = 0;
  }

  __dst = (2 * v16);
  v25 = sub_1000C9F54(__dst, v17, v18, v19, v20, v21, v22, v23);
  v196 = 2 * v24;
  v33 = sub_1000C9F54(v196, v26, v27, v28, v29, v30, v31, v32);
  v194 = 4 * v12;
  v41 = sub_1000C9F54(v194 + 4, v34, v35, v36, v37, v38, v39, v40);
  v42 = v41;
  v201 = a5;
  if (v12 <= 0)
  {
    v45 = 0;
    v60 = 0;
    *v41 = 0;
    if (a5 <= 0)
    {
      v64 = a5;
    }

    else
    {
      v64 = 0;
    }

    v65 = v12;
    if (v12)
    {
      goto LABEL_41;
    }

LABEL_35:
    v66 = 0;
    v67 = v64 - 1;
    if (v64 >= 1)
    {
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  memset(v41 + 1, 255, 4 * v12);
  *v42 = 0;
  if (!a2)
  {
    v45 = 0;
    v60 = 0;
    if (a5 <= 0)
    {
      v64 = a5;
    }

    else
    {
      v64 = 0;
    }

    v65 = v12;
    goto LABEL_41;
  }

  v43 = v12;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v190 = v43;
  v47 = v43;
  do
  {
    if (*(v42 + v44) != -1)
    {
      v48 = (a2 + 2 * v44);
      do
      {
        v49 = *v48;
        if (!*v48)
        {
          goto LABEL_13;
        }

        ++v48;
      }

      while (sub_1000CAA80(v49));
      v57 = sub_1000C9F54(4, v50, v51, v52, v53, v54, v55, v56);
      v58 = sub_1000811D4(*a1, a4, 1, (a2 + 2 * v44), v57, 1, v206);
      if (v58 < 1)
      {
        if (!v57)
        {
LABEL_22:
          if (v58)
          {
            sub_1000B22CC(a1, v46, v25, v33);
            v59 = sub_1000CB75C(v25) + v44;
            if (*(v42 + v59) == -1)
            {
              *(v42 + v59) = v46;
              if (v59 > v45)
              {
                v45 = v59;
              }
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
        v46 = *v57 | 0xC0000000;
      }

      sub_1000CA03C(v57, 4);
      goto LABEL_22;
    }

LABEL_13:
    ++v44;
  }

  while (v44 != v47);
  if (v45 < 1)
  {
    v60 = 0;
    a5 = v201;
    if (v201 <= 0)
    {
      v64 = v201;
    }

    else
    {
      v64 = 0;
    }

    v65 = v190 - v45;
    if (v190 != v45)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  v60 = 0;
  v61 = v45;
  a5 = v201;
  do
  {
    sub_1000B22CC(a1, *(v42 + v61), v25, v33);
    v62 = sub_1000CB75C(v25);
    ++v60;
    v63 = __OFSUB__(v61, v62);
    v61 -= v62;
  }

  while (!((v61 < 0) ^ v63 | (v61 == 0)));
  if (v60 >= v201)
  {
    v64 = v201;
  }

  else
  {
    v64 = v60;
  }

  v65 = v190 - v45;
  if (v190 == v45)
  {
    goto LABEL_35;
  }

LABEL_41:
  if (a3 || v60 < a5)
  {
    v64 = a5 - 1;
    if (v60 < a5)
    {
      v64 = v60;
    }

    *(a7 + 4 * v64) = v45;
    *(a8 + 4 * v64) = v65;
    *(v210 + 4 * v64) = -1;
  }

  v66 = 1;
  v67 = v64 - 1;
  if (v64 >= 1)
  {
LABEL_47:
    if (v60 > v201 && a3 == 0)
    {
      v69 = v60 - v201;
    }

    else
    {
      v69 = 0;
    }

    do
    {
      while (1)
      {
        v70 = *(v42 + v45);
        sub_1000B22CC(a1, v70, v25, v33);
        v71 = sub_1000CB75C(v25);
        v45 -= v71;
        if (v69 >= 1)
        {
          break;
        }

        *(a7 + 4 * v67) = v45;
        *(a8 + 4 * v67) = v71;
        *(v210 + 4 * v67--) = v70;
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      --v69;
    }

    while ((v67 & 0x80000000) == 0);
  }

LABEL_56:
  sub_1000CA03C(v42, v194 + 4);
  sub_1000CA03C(v33, v196);
  sub_1000CA03C(v25, __dst);
  v72 = v66 + v60;
  result = v201;
  v74 = v201 - (v66 + v60);
  if (v201 != v66 + v60)
  {
    v89 = v72 - 1;
    v90 = (v210 + 4 * (v72 - 1));
    result = (v66 + v60);
    if (*v90 != -1)
    {
      return result;
    }

    v91 = v89;
    v92 = 4 * v89;
    v195 = (a7 + v92);
    v93 = *(a7 + v92);
    v94 = (a2 + 2 * v93);
    v202 = sub_1000CB75C(v94);
    v95 = sub_1000C7854("<START_DOCUMENT>");
    v96 = sub_1000811C4(*a1);
    if (v96 <= v95)
    {
      v97 = v95;
    }

    else
    {
      v97 = v96;
    }

    v98 = v97 + 1;
    v106 = sub_100036A44(*a1) + 1;
    v191 = v93;
    v197 = v90;
    if (qword_1001065A8)
    {
      v211 = *(qword_1001065A8 + 5508);
    }

    else
    {
      v211 = 0;
    }

    v193 = (a8 + v92);
    v189 = v74;
    v184 = v74 + 1;
    v107 = v202 + 1;
    v188 = 2 * v107;
    __dsta = sub_1000C9F54(v188, v99, v100, v101, v102, v103, v104, v105);
    j__memmove(__dsta, v94, v107);
    v108 = 2 * v98;
    v109 = v202;
    v207 = sub_1000C9F54(v108, v110, v111, v112, v113, v114, v115, v116);
    v124 = sub_1000C9F54(2 * v106, v117, v118, v119, v120, v121, v122, v123);
    v132 = sub_1000C9F54(4 * v107, v125, v126, v127, v128, v129, v130, v131);
    v209 = v132;
    v186 = 2 * v106;
    v187 = v108;
    v185 = 4 * v107;
    if ((v202 & 0x80000000) != 0)
    {
      v151 = 0;
      LODWORD(v152) = 0;
      *(v132 + v202) = 0;
      v153 = v189;
      goto LABEL_137;
    }

    v133 = v132;
    memset(v132, 255, 4 * (v202 + 1));
    *(v133 + v202) = 0;
    if (!v202)
    {
      v151 = 0;
      LODWORD(v152) = 0;
      v153 = v189;
      goto LABEL_137;
    }

    v134 = v202;
    if (a2)
    {
      v205 = v91;
      v135 = 0;
      while (*(v209 + v134) == -1)
      {
LABEL_84:
        --v107;
        v136 = v134-- <= 1;
        if (v136)
        {
          if (v109 >= v202)
          {
            v151 = 0;
            LODWORD(v152) = 0;
            v91 = v205;
            v153 = v189;
          }

          else
          {
            LODWORD(v152) = 0;
            v154 = v109;
            v153 = v189;
            do
            {
              sub_1000B22CC(a1, *(v209 + v154), v207, v124);
              v154 += sub_1000CB75C(v207);
              LODWORD(v152) = v152 + 1;
            }

            while (v154 < v202);
            v151 = 1;
            v91 = v205;
          }

          goto LABEL_137;
        }
      }

      *&__dsta[2 * v134] = 0;
      v137 = 1;
      while (1)
      {
        v138 = v124;
        v139 = &v94[2 * (v134 - v137)];
        do
        {
          v140 = *v139;
          if (!*v139)
          {
            goto LABEL_87;
          }

          v139 += 2;
        }

        while (sub_1000CAA80(v140));
        v148 = sub_1000C9F54(4, v141, v142, v143, v144, v145, v146, v147);
        v149 = sub_10008132C(*a1);
        if (v149 >= 1)
        {
          break;
        }

        if (v148)
        {
          goto LABEL_95;
        }

LABEL_96:
        if (!v149)
        {
LABEL_87:
          v124 = v138;
          goto LABEL_88;
        }

        v124 = v138;
        sub_1000B22CC(a1, v135, v207, v138);
        v150 = v134 - sub_1000CB75C(v207);
        if (*(v209 + v150) == -1)
        {
          *(v209 + v150) = v135;
          if (v150 < v109)
          {
            v109 = v150;
          }
        }

LABEL_88:
        if (++v137 == v107)
        {
          goto LABEL_84;
        }
      }

      v135 = *v148 | 0xC0000000;
LABEL_95:
      sub_1000CA03C(v148, 4);
      goto LABEL_96;
    }

    if (v202 < 0x10)
    {
      v155 = v202;
      v153 = v189;
      do
      {
LABEL_183:
        if (*(v209 + v155) != -1)
        {
          *&__dsta[2 * v155] = 0;
        }

        v136 = v155-- <= 1;
      }

      while (!v136);
LABEL_136:
      v151 = 0;
      LODWORD(v152) = 0;
LABEL_137:
      if (v109)
      {
        v152 = (v152 + 1);
      }

      else
      {
        v152 = v152;
      }

      if (v152 <= v184 || a3 == 0)
      {
        v166 = 0;
      }

      else
      {
        v166 = v152 - v184;
      }

      if (v109)
      {
        if (v166 < 1)
        {
          *v195 = 0;
          *v193 = v109;
          if (v211)
          {
            j__memmove(__dsta, v94, 2 * v109);
            *&__dsta[2 * v109] = 0;
            v170 = __dsta;
            while (1)
            {
              v171 = *v170;
              if (!*v170)
              {
                break;
              }

              ++v170;
              if (!sub_1000CAA80(v171))
              {
                v172 = sub_1000811BC(*a1);
                v173 = v172 | 0xC0000000;
                if (v172 == 0xFFFFFF)
                {
                  v173 = -1;
                }

                goto LABEL_163;
              }
            }
          }

          v173 = -1;
LABEL_163:
          *v197 = v173;
          v167 = 1;
          v174 = v151 ^ 1;
          if (v153 < 1)
          {
            v174 = 1;
          }

          if ((v174 & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v167 = 0;
          --v166;
          v168 = v151 ^ 1;
          if (v153 < 0)
          {
            v168 = 1;
          }

          if ((v168 & 1) == 0)
          {
            goto LABEL_169;
          }
        }
      }

      else
      {
        v167 = 0;
        v169 = v151 ^ 1;
        if (v153 < 0)
        {
          v169 = 1;
        }

        if ((v169 & 1) == 0)
        {
          do
          {
LABEL_169:
            v175 = *(v209 + v109);
            sub_1000B22CC(a1, v175, v207, v124);
            v176 = sub_1000CB75C(v207);
            if (v166 < 1)
            {
              v195[v167] = v109;
              v193[v167] = v176;
              v197[v167++] = v175;
              v109 += v176;
              if (v109 >= v202)
              {
                break;
              }
            }

            else
            {
              --v166;
              v109 += v176;
              if (v109 >= v202)
              {
                break;
              }
            }
          }

          while (v167 <= v153);
        }
      }

      sub_1000CA03C(v209, v185);
      sub_1000CA03C(v124, v186);
      sub_1000CA03C(v207, v187);
      sub_1000CA03C(__dsta, v188);
      if (v152 < 1)
      {
        return (v91 + v152);
      }

      if (v152 >= 8)
      {
        v177 = v152 & 0x7FFFFFF8;
        v178 = vdupq_n_s32(v191);
        v179 = (a7 + 4 * v91 + 16);
        v180 = v177;
        do
        {
          v181 = vaddq_s32(*v179, v178);
          v179[-1] = vaddq_s32(v179[-1], v178);
          *v179 = v181;
          v179 += 2;
          v180 -= 8;
        }

        while (v180);
        if (v177 == v152)
        {
          return (v91 + v152);
        }
      }

      else
      {
        v177 = 0;
      }

      v182 = (a7 + 4 * v177 + 4 * v91);
      v183 = v152 - v177;
      do
      {
        *v182++ += v191;
        --v183;
      }

      while (v183);
      return (v91 + v152);
    }

    v153 = v189;
    if (__dsta + 2 < v209 + 4 * v202 + 4 && v209 + 4 < &__dsta[2 * v202 + 2])
    {
      v155 = v202;
      goto LABEL_183;
    }

    v155 = v202 & 7;
    v156 = v209 + 4 * v202 - 28;
    v157 = &__dsta[2 * v202 - 6];
    v158.i64[0] = -1;
    v158.i64[1] = -1;
    v159 = v202 & 0x7FFFFFF8;
    while (1)
    {
      v160 = *v156;
      v161 = vrev64q_s32(*(v156 + 16));
      v162 = vmovn_s32(vmvnq_s8(vceqq_s32(vextq_s8(v161, v161, 8uLL), v158)));
      if (vuzp1_s8(v162, *v158.i8).u8[0])
      {
        *(v157 + 3) = 0;
        if ((vuzp1_s8(v162, -1).i8[1] & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else if ((vuzp1_s8(v162, -1).i8[1] & 1) == 0)
      {
LABEL_119:
        if ((vuzp1_s8(v162, -1).i8[2] & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_120;
      }

      *(v157 + 2) = 0;
      if ((vuzp1_s8(v162, -1).i8[2] & 1) == 0)
      {
LABEL_124:
        if ((vuzp1_s8(v162, -1).i8[3] & 1) == 0)
        {
          goto LABEL_126;
        }

LABEL_125:
        *v157 = 0;
        goto LABEL_126;
      }

LABEL_120:
      *(v157 + 1) = 0;
      if (vuzp1_s8(v162, -1).i8[3])
      {
        goto LABEL_125;
      }

LABEL_126:
      v163 = vrev64q_s32(v160);
      v164 = vmovn_s32(vmvnq_s8(vceqq_s32(vextq_s8(v163, v163, 8uLL), v158)));
      if (vuzp1_s8(*&v158, v164).i32[1])
      {
        *(v157 - 1) = 0;
        if ((vuzp1_s8(-1, v164).i8[5] & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      else if ((vuzp1_s8(-1, v164).i8[5] & 1) == 0)
      {
LABEL_128:
        if (vuzp1_s8(-1, v164).i8[6])
        {
          goto LABEL_129;
        }

        goto LABEL_133;
      }

      *(v157 - 2) = 0;
      if (vuzp1_s8(-1, v164).i8[6])
      {
LABEL_129:
        *(v157 - 3) = 0;
        if (vuzp1_s8(-1, v164).i8[7])
        {
          goto LABEL_134;
        }

        goto LABEL_116;
      }

LABEL_133:
      if (vuzp1_s8(-1, v164).i8[7])
      {
LABEL_134:
        *(v157 - 4) = 0;
      }

LABEL_116:
      v156 -= 32;
      v157 -= 16;
      v159 -= 8;
      if (!v159)
      {
        if ((v202 & 0x7FFFFFF8) == v202)
        {
          goto LABEL_136;
        }

        goto LABEL_183;
      }
    }
  }

  if (!v192)
  {
    v75 = v201 - 1;
    if (*(v210 + 4 * (v201 - 1)) == -1)
    {
      v76 = 2 * sub_1000CB75C(a2);
      v84 = sub_1000C9F54(v76 + 2, v77, v78, v79, v80, v81, v82, v83);
      j__memmove(v84, (a2 + 2 * *(a7 + 4 * v75)), 2 * *(a8 + 4 * v75));
      *(v84 + *(a8 + 4 * v75)) = 0;
      v85 = v84;
      do
      {
        v86 = *v85;
        if (!*v85)
        {
          v88 = -1;
          goto LABEL_103;
        }

        ++v85;
      }

      while (sub_1000CAA80(v86));
      v87 = sub_1000811BC(*a1);
      v88 = v87 | 0xC0000000;
      if (v87 == 0xFFFFFF)
      {
        v88 = -1;
      }

LABEL_103:
      *(v210 + 4 * v75) = v88;
      sub_1000CA03C(v84, v76 + 2);
      return v201;
    }
  }

  return result;
}

uint64_t sub_1000B49C0(uint64_t *a1, int a2, unint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, char *a10, _BYTE *a11)
{
  if (a2 == 1)
  {
    v15 = a4;
    v16 = sub_1000811B4(*a1);
    a4 = v15;
    a2 = v16;
  }

  v17 = 0;
  v449 = a8;
  v465 = a6;
  v476 = a1;
  if (a2 > 7)
  {
    if (a2 <= 9)
    {
      if (a2 == 8)
      {
        v19 = a3;
        v20 = 0;
      }

      else
      {
        v19 = a3;
        v20 = 1;
      }

      return sub_1000B6D74(a1, v19, v20, a4, a5, a6, a7, a8, a9, a10, a11);
    }

    if (a2 != 11)
    {
      if (a2 != 10)
      {
        return v17;
      }

      v462 = a4;
      *a7 = -1;
      v21 = a6;
      if (a10)
      {
        bzero(a10, a6);
      }

      v22 = sub_1000CB75C(a3);
      v23 = sub_1000C7854("<START_DOCUMENT>");
      v24 = sub_1000811C4(*a1);
      if (v24 <= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      if (v25 > v22)
      {
        v22 = v25;
      }

      v26 = sub_100036A44(*a1);
      v440 = 2 * v22;
      v34 = sub_1000C9F54(v440 + 2, v27, v28, v29, v30, v31, v32, v33);
      v437 = 2 * v26;
      v42 = sub_1000C9F54(v437 + 2, v35, v36, v37, v38, v39, v40, v41);
      v50 = sub_1000C9F54(120, v43, v44, v45, v46, v47, v48, v49);
      v434 = 4 * v21;
      v453 = sub_1000C9F54(4 * v21, v51, v52, v53, v54, v55, v56, v57);
      v58 = 0;
      v17 = 0;
      v458 = -2 - a3;
      v443 = v50 - 4;
      v446 = v50;
      while (1)
      {
        v59 = (a3 - 2);
        v60 = v458 + a3;
        v61 = v59;
        do
        {
          v62 = *(v61 + 1);
          v61 += 2;
          v60 += 2;
          v59 += 2;
        }

        while (sub_1000CAA80(v62));
        if (!*v61)
        {
          v225 = v462;
          v227 = v453;
          v226 = a9;
          v228 = a10;
          if (v17 > v465)
          {
            goto LABEL_191;
          }

          goto LABEL_194;
        }

        v473 = sub_1000CA104(*v61, 0);
        v63 = *v61;
        v64 = v61;
        if (*v61)
        {
          v64 = v61;
          do
          {
            if (sub_1000CAA80(v63))
            {
              break;
            }

            v65 = *(v64 + 1);
            v64 += 2;
            v63 = v65;
          }

          while (v65);
        }

        v66 = 0;
        v67 = (v64 - v59) >> 1;
        v466 = v17;
        v470 = v58;
        do
        {
          v68 = *&v61[v66];
          if (!*&v61[v66])
          {
            goto LABEL_56;
          }

          v66 += 2;
        }

        while (sub_1000CAA80(v68));
        v76 = sub_1000C9F54(120, v69, v70, v71, v72, v73, v74, v75);
        v77 = sub_1000811D4(*v476, a5, v67, v61, v76, 30, 0);
        if (v77 < 1)
        {
          if (v76)
          {
            sub_1000CA03C(v76, 120);
LABEL_56:
            LOBYTE(v76) = 0;
          }

          v86 = 0;
          v87 = -1;
          goto LABEL_70;
        }

        v78 = v77;
        v79 = 0;
        if (v77 >= 0x1E)
        {
          v80 = 30;
        }

        else
        {
          v80 = v77;
        }

        if (v77 < 8)
        {
          v81 = v446;
        }

        else
        {
          v81 = v446;
          if (v446 - v76 >= 0x20)
          {
            v79 = v80 & 0x18;
            *&v82 = __PAIR64__(HIDWORD(*v76), *v76) | 0xC0000000C0000000;
            DWORD2(v82) = *(v76 + 8) | 0xC0000000;
            HIDWORD(v82) = HIDWORD(*v76) | 0xC0000000;
            v83 = *(v76 + 16) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *v446 = v82;
            *(v446 + 16) = v83;
            if (v79 != 8)
            {
              v84 = *(v76 + 48) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
              *(v446 + 32) = *(v76 + 32) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
              *(v446 + 48) = v84;
              if (v79 != 16)
              {
                v85 = *(v76 + 80) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
                *(v446 + 64) = *(v76 + 64) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
                *(v446 + 80) = v85;
              }
            }

            if (v79 == v80)
            {
              goto LABEL_61;
            }
          }
        }

        v88 = v80 - v79;
        v89 = 4 * v79;
        v90 = (v81 + 4 * v79);
        v91 = (v76 + v89);
        do
        {
          v92 = *v91++;
          *v90++ = v92 | 0xC0000000;
          --v88;
        }

        while (v88);
LABEL_61:
        sub_1000CA03C(v76, 120);
        if (v78 == 30)
        {
          v17 = 0;
          a8 = v449;
          v225 = v462;
          v58 = v470;
          v227 = v453;
          v226 = a9;
          v228 = a10;
          if (v465 < 0)
          {
LABEL_191:
            if (v225 && v58 < v465)
            {
              sub_1000B7C5C(v465, a7, a8, v226, v227, a11, v58);
            }
          }

LABEL_194:
          if (v228)
          {
            v239 = v17 >= v465 ? v465 : v17;
            if (v239 >= 2)
            {
              v240 = v239 - 1;
              v241 = v228 + 1;
              v242 = v227 + 1;
              do
              {
                if (*(v242 - 1) != *v242)
                {
                  *v241 |= 8u;
                }

                ++v242;
                ++v241;
                --v240;
              }

              while (v240);
            }
          }

          sub_1000CA03C(v227, v434);
          sub_1000CA03C(v446, 120);
          sub_1000CA03C(v42, v437 + 2);
          v238 = v440 + 2;
          v237 = v34;
          goto LABEL_417;
        }

        v86 = 0;
        LODWORD(v76) = 0;
        v93 = v78 + 1;
        v94 = (v443 + 4 * v78);
        v87 = -1;
        do
        {
          sub_1000B22CC(v476, *v94, v34, v42);
          if (sub_1000CB75C(v34) == v67)
          {
            v95 = sub_1000CC444(v61, v34, v67);
            if (v87 == -1 || !(v76 | v95))
            {
              LODWORD(v76) = v95 == 0;
              v87 = *v94;
              v86 = v473;
            }
          }

          --v93;
          --v94;
        }

        while (v93 > 1);
        a8 = v449;
LABEL_70:
        if (v470 < v465 || v462 == 0)
        {
          v97 = v470;
        }

        else
        {
          v97 = 0;
        }

        if (v97 < v465)
        {
          a7[v97] = v87;
          if (a8)
          {
            a8[v97] = v60 >> 1;
          }

          if (a9)
          {
            a9[v97] = v67;
          }

          if (v453)
          {
            *(v453 + 4 * v97) = v86;
          }

          if (a11)
          {
            a11[v97] = v76;
          }
        }

        v58 = v97 + 1;
        v17 = (v466 + 1);
        a3 = &v61[2 * v67];
      }
    }

    v463 = a4;
    *a7 = -1;
    if (a10)
    {
      bzero(a10, a6);
    }

    v98 = sub_1000CB75C(a3);
    v99 = sub_1000C7854("<START_DOCUMENT>");
    v100 = sub_1000811C4(*a1);
    if (v100 <= v99)
    {
      v101 = v99;
    }

    else
    {
      v101 = v100;
    }

    if (v101 <= v98)
    {
      v101 = v98;
    }

    v444 = v101 + 1;
    v109 = sub_100036A44(*a1);
    v110 = v98;
    if (v109 > v98)
    {
      v110 = sub_100036A44(*a1);
    }

    v111 = v110 + 1;
    v112 = sub_1000C9F54(2 * v444, v102, v103, v104, v105, v106, v107, v108);
    v435 = v111;
    v113 = 2 * v111;
    v474 = sub_1000C9F54(v113, v114, v115, v116, v117, v118, v119, v120);
    v427 = 2 * v444;
    v128 = sub_1000C9F54(v427, v121, v122, v123, v124, v125, v126, v127);
    v425 = v113;
    v129 = v113;
    v130 = v128;
    v471 = sub_1000C9F54(v129, v131, v132, v133, v134, v135, v136, v137);
    v423 = 2 * v98;
    v441 = sub_1000C9F54(v423 + 2, v138, v139, v140, v141, v142, v143, v144);
    v421 = 4 * a6;
    v431 = sub_1000C9F54(120, v145, v146, v147, v148, v149, v150, v151);
    v432 = sub_1000C9F54(v421, v152, v153, v154, v155, v156, v157, v158);
    v159 = 0;
    v17 = 0;
    v438 = -2 - a3;
    v459 = v130;
    while (1)
    {
      v160 = a3 - 2;
      v161 = v438 + a3;
      v162 = (a3 - 2);
      do
      {
        v163 = v162[1];
        ++v162;
        v161 += 2;
        v160 += 2;
      }

      while (sub_1000CAA80(v163));
      if (!*v162)
      {
        v183 = a11;
        v229 = v463;
        v230 = a9;
        v231 = a10;
        v232 = v432;
        if (v17 <= a6)
        {
          goto LABEL_177;
        }

        goto LABEL_174;
      }

      v454 = sub_1000CA104(*v162, 0);
      v164 = *v162;
      a3 = v162;
      if (*v162)
      {
        a3 = v162;
        do
        {
          if (sub_1000CAA80(v164))
          {
            break;
          }

          v165 = *(a3 + 2);
          a3 += 2;
          v164 = v165;
        }

        while (v165);
      }

      v166 = (a3 - v160) >> 1;
      sub_1000CB778(v441, v162, v166 + 1);
      v441[v166] = 0;
      if (!sub_1000D59A0(v441, v130, v444, v471, v435))
      {
        return 0;
      }

      v167 = sub_1000CB75C(v130);
      v467 = v17;
      v447 = v159;
      if (!v130)
      {
        break;
      }

      v168 = v130;
      do
      {
        v169 = *v168;
        if (!*v168)
        {
          goto LABEL_123;
        }

        v168 += 2;
      }

      while (sub_1000CAA80(v169));
      v177 = sub_1000C9F54(120, v170, v171, v172, v173, v174, v175, v176);
      v178 = sub_1000811D4(*v476, a5, v167, v130, v177, 30, 0);
      if (v178 >= 1)
      {
        v179 = v178;
        v180 = 0;
        if (v178 >= 0x1E)
        {
          v181 = 30;
        }

        else
        {
          v181 = v178;
        }

        if (v178 < 8)
        {
          v183 = a11;
          v182 = v431;
        }

        else
        {
          v182 = v431;
          v183 = a11;
          if (v431 - v177 >= 0x20)
          {
            v180 = v181 & 0x18;
            *&v184 = __PAIR64__(HIDWORD(*v177), *v177) | 0xC0000000C0000000;
            DWORD2(v184) = *(v177 + 8) | 0xC0000000;
            HIDWORD(v184) = HIDWORD(*v177) | 0xC0000000;
            v185 = *(v177 + 16) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *v431 = v184;
            *(v431 + 16) = v185;
            if (v180 != 8)
            {
              v186 = *(v177 + 48) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
              *(v431 + 32) = *(v177 + 32) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
              *(v431 + 48) = v186;
              if (v180 != 16)
              {
                v187 = *(v177 + 80) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
                *(v431 + 64) = *(v177 + 64) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
                *(v431 + 80) = v187;
              }
            }

            if (v180 == v181)
            {
LABEL_130:
              sub_1000CA03C(v177, 120);
              if (v179 == 30)
              {
                v17 = 0;
                a6 = v465;
                v229 = v463;
                v130 = v459;
                v159 = v447;
                v230 = a9;
                v231 = a10;
                v232 = v432;
                if (v465 >= 0)
                {
LABEL_177:
                  if (v231)
                  {
                    v233 = v17 >= a6 ? a6 : v17;
                    if (v233 >= 2)
                    {
                      v234 = v233 - 1;
                      v235 = v231 + 1;
                      v236 = v232 + 1;
                      do
                      {
                        if (*(v236 - 1) != *v236)
                        {
                          *v235 |= 8u;
                        }

                        ++v236;
                        ++v235;
                        --v234;
                      }

                      while (v234);
                    }
                  }

                  sub_1000CA03C(v232, v421);
                  sub_1000CA03C(v431, 120);
                  sub_1000CA03C(v441, v423 + 2);
                  sub_1000CA03C(v471, v425);
                  sub_1000CA03C(v130, v427);
                  sub_1000CA03C(v474, v425);
                  v237 = v112;
                  v238 = 2 * v444;
                  goto LABEL_417;
                }

LABEL_174:
                if (v229 && v159 < a6)
                {
                  sub_1000B7C5C(a6, a7, v449, v230, v232, v183, v159);
                }

                goto LABEL_177;
              }

              v188 = 0;
              LODWORD(v177) = 0;
              v196 = v179 + 1;
              v197 = (v431 - 4 + 4 * v179);
              v189 = -1;
              v130 = v459;
              do
              {
                sub_1000B22CC(v476, *v197, v112, v474);
                if (sub_1000CB75C(v112) == v167)
                {
                  v198 = sub_1000CBE9C(v130, v112);
                  v199 = !*v471 || sub_1000CBE9C(v471, v474) == 0;
                  v200 = v198 == 0 && v199;
                  v201 = v177 ? 0 : v200;
                  v130 = v459;
                  if (v189 == -1 || v201)
                  {
                    v189 = *v197;
                    LODWORD(v177) = v200;
                    v188 = v454;
                  }
                }

                --v196;
                --v197;
              }

              while (v196 > 1);
              a6 = v465;
              goto LABEL_145;
            }
          }
        }

        v191 = v181 - v180;
        v192 = 4 * v180;
        v193 = (v182 + 4 * v180);
        v194 = (v177 + v192);
        do
        {
          v195 = *v194++;
          *v193++ = v195 | 0xC0000000;
          --v191;
        }

        while (v191);
        goto LABEL_130;
      }

      if (v177)
      {
        sub_1000CA03C(v177, 120);
        LOBYTE(v177) = 0;
      }

      v188 = 0;
      v189 = -1;
      v190 = a11;
      v130 = v459;
LABEL_146:
      if (v447 < a6 || v463 == 0)
      {
        v203 = v447;
      }

      else
      {
        v203 = 0;
      }

      if (v203 < a6)
      {
        a7[v203] = v189;
        if (v449)
        {
          *(v449 + 4 * v203) = v161 >> 1;
        }

        if (a9)
        {
          a9[v203] = v167;
        }

        if (v432)
        {
          *(v432 + 4 * v203) = v188;
        }

        if (v190)
        {
          v190[v203] = v177;
        }
      }

      v159 = v203 + 1;
      v17 = (v467 + 1);
    }

LABEL_123:
    LOBYTE(v177) = 0;
    v188 = 0;
    v189 = -1;
LABEL_145:
    v190 = a11;
    goto LABEL_146;
  }

  if (a2 > 4)
  {
    if (a1[7])
    {

      return sub_1000A3578(a1, a3, a4, a6, a7, a8, a9, a10, a11);
    }

LABEL_19:

    return sub_1000B6644(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  if (a2 == 2)
  {
    goto LABEL_19;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return v17;
    }

    if (a1[7])
    {

      return sub_1000A91DC(a1, a3, a4, a6, a7, a8, a9, a10, a11);
    }

    goto LABEL_19;
  }

  v464 = a4;
  v478[0] = 0;
  v204 = sub_1000C7854("<START_DOCUMENT>");
  v205 = sub_1000811C4(*a1);
  if (v205 <= v204)
  {
    v206 = v204;
  }

  else
  {
    v206 = v205;
  }

  v207 = sub_100036A44(*a1);
  v208 = sub_1000CB75C(a3);
  v209 = sub_100056F78(*a1);
  if (!sub_1000C7A4C(v209, "dede"))
  {
    v451 = 0;
    v445 = L",";
    v460 = "K";
    v468 = L"Dezimalkomma";
    v223 = L"Internetpunkt";
    v222 = L"Punkt";
LABEL_212:
    v224 = v222;
    goto LABEL_213;
  }

  v217 = sub_100056F78(*a1);
  if (!sub_1000C7A4C(v217, "engb"))
  {
    v451 = 0;
    v445 = L".";
    v223 = "d";
    v222 = "f";
LABEL_205:
    v224 = "d";
    v468 = "p";
    v460 = "p";
    goto LABEL_213;
  }

  v218 = sub_100056F78(*a1);
  if (!sub_1000C7A4C(v218, "enus"))
  {
    v451 = 0;
    v445 = L".";
    v223 = "d";
    v222 = "p";
    goto LABEL_205;
  }

  v219 = sub_100056F78(*a1);
  if (!sub_1000C7A4C(v219, "eses"))
  {
    v451 = 0;
    v445 = L",";
    v460 = L"coma";
    v243 = "c";
LABEL_211:
    v468 = v243;
    v223 = L"punto-internet";
    v222 = L"punto";
    goto LABEL_212;
  }

  v220 = sub_100056F78(*a1);
  if (!sub_1000C7A4C(v220, "frfr"))
  {
    v451 = 0;
    v445 = L",";
    v460 = &unk_1000F1D4A;
    v468 = aVirguleD;
    v223 = "p";
    v222 = "p";
    goto LABEL_212;
  }

  v221 = sub_100056F78(*a1);
  if (!sub_1000C7A4C(v221, "itit"))
  {
    v451 = 0;
    v445 = L",";
    v460 = L"virgola";
    v243 = &unk_1000F1D5A;
    goto LABEL_211;
  }

  v222 = 0;
  v223 = 0;
  v224 = 0;
  v468 = 0;
  v460 = 0;
  v445 = 0;
  v451 = 1;
LABEL_213:
  v244 = v206 + 1;
  v245 = v207 + 1;
  v455 = v208;
  v246 = v208 + 1;
  *a7 = -1;
  if (v465 >= 1 && a10)
  {
    bzero(a10, v465);
  }

  v430 = sub_1000C9F54(2 * v246, v210, v211, v212, v213, v214, v215, v216);
  v428 = 2 * v244;
  v475 = sub_1000C9F54(v428, v247, v248, v249, v250, v251, v252, v253);
  v426 = 2 * v245;
  v472 = sub_1000C9F54(v426, v254, v255, v256, v257, v258, v259, v260);
  v436 = sub_1000C9F54(120, v261, v262, v263, v264, v265, v266, v267);
  v429 = 2 * v246;
  if (sub_1000CAA80(46))
  {
    v433 = -1;
    v275 = -1;
    v276 = -1;
    v277 = v445;
    goto LABEL_218;
  }

  v393 = sub_1000C9F54(120, v268, v269, v270, v271, v272, v273, v274);
  v394 = sub_10008132C(*v476);
  if (v394 >= 1)
  {
    v395 = v394;
    v396 = 0;
    if (v394 >= 0x1E)
    {
      v397 = 30;
    }

    else
    {
      v397 = v394;
    }

    if (v394 < 8)
    {
      v277 = v445;
      v398 = v436;
    }

    else
    {
      v398 = v436;
      v277 = v445;
      if (v436 - v393 >= 0x20)
      {
        v396 = v397 & 0x18;
        *&v399 = __PAIR64__(HIDWORD(*v393), *v393) | 0xC0000000C0000000;
        DWORD2(v399) = *(v393 + 8) | 0xC0000000;
        HIDWORD(v399) = HIDWORD(*v393) | 0xC0000000;
        v400 = *(v393 + 16) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
        *v436 = v399;
        *(v436 + 16) = v400;
        if (v396 != 8)
        {
          v401 = *(v393 + 48) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *(v436 + 32) = *(v393 + 32) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *(v436 + 48) = v401;
          if (v396 != 16)
          {
            v402 = *(v393 + 80) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *(v436 + 64) = *(v393 + 64) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *(v436 + 80) = v402;
          }
        }

        if (v396 == v397)
        {
          goto LABEL_424;
        }
      }
    }

    v403 = v397 - v396;
    v404 = 4 * v396;
    v405 = (v398 + 4 * v396);
    v406 = (v393 + v404);
    do
    {
      v407 = *v406++;
      *v405++ = v407 | 0xC0000000;
      --v403;
    }

    while (v403);
LABEL_424:
    sub_1000CA03C(v393, 120);
    v408 = v398 + 4 * v395;
    v409 = v395 + 1;
    v410 = (v408 - 4);
    v276 = -1;
    v275 = -1;
    v433 = -1;
    while (1)
    {
      while (1)
      {
        sub_1000B22CC(v476, *v410, v475, v472);
        if (sub_1000CBE9C(v472, v222))
        {
          break;
        }

        v433 = *v410;
        if (!sub_1000CBE9C(v472, v223))
        {
          goto LABEL_425;
        }

LABEL_431:
        if (sub_1000CBE9C(v472, v224))
        {
          goto LABEL_426;
        }

LABEL_432:
        v411 = *v410--;
        v276 = v411;
        if (--v409 <= 1)
        {
          goto LABEL_218;
        }
      }

      if (sub_1000CBE9C(v472, v223))
      {
        goto LABEL_431;
      }

LABEL_425:
      v275 = *v410;
      if (!sub_1000CBE9C(v472, v224))
      {
        goto LABEL_432;
      }

LABEL_426:
      --v409;
      --v410;
      if (v409 <= 1)
      {
        goto LABEL_218;
      }
    }
  }

  v277 = v445;
  if (v393)
  {
    sub_1000CA03C(v393, 120);
  }

  v433 = -1;
  v275 = -1;
  v276 = -1;
LABEL_218:
  v278 = v465;
  if (v451)
  {
LABEL_219:
    if (v275 == -1)
    {
      v279 = v276;
    }

    else
    {
      v279 = v275;
    }

    v280 = -1;
    goto LABEL_223;
  }

  v370 = v277;
  do
  {
    v371 = *v370;
    if (!*v370)
    {
      goto LABEL_219;
    }

    ++v370;
  }

  while (sub_1000CAA80(v371));
  v379 = sub_1000C9F54(120, v372, v373, v374, v375, v376, v377, v378);
  v380 = sub_10008132C(*v476);
  if (v380 < 1)
  {
    v278 = v465;
    if (v379)
    {
      sub_1000CA03C(v379, 120);
    }

    goto LABEL_219;
  }

  v381 = v380;
  v382 = 0;
  if (v380 >= 0x1E)
  {
    v383 = 30;
  }

  else
  {
    v383 = v380;
  }

  if (v380 < 8)
  {
    v384 = v436;
  }

  else
  {
    v384 = v436;
    if (v436 - v379 >= 0x20)
    {
      v382 = v383 & 0x18;
      *&v385 = __PAIR64__(HIDWORD(*v379), *v379) | 0xC0000000C0000000;
      DWORD2(v385) = *(v379 + 8) | 0xC0000000;
      HIDWORD(v385) = HIDWORD(*v379) | 0xC0000000;
      v386 = *(v379 + 16) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
      *v436 = v385;
      *(v436 + 16) = v386;
      if (v382 != 8)
      {
        v387 = *(v379 + 48) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
        *(v436 + 32) = *(v379 + 32) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
        *(v436 + 48) = v387;
        if (v382 != 16)
        {
          v388 = *(v379 + 80) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *(v436 + 64) = *(v379 + 64) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *(v436 + 80) = v388;
        }
      }

      if (v382 == v383)
      {
        goto LABEL_437;
      }
    }
  }

  v412 = v383 - v382;
  v413 = 4 * v382;
  v414 = (v384 + 4 * v382);
  v415 = (v379 + v413);
  do
  {
    v416 = *v415++;
    *v414++ = v416 | 0xC0000000;
    --v412;
  }

  while (v412);
LABEL_437:
  sub_1000CA03C(v379, 120);
  v417 = v381 + 1;
  v418 = (v384 + 4 * v381 - 4);
  v280 = -1;
  v419 = -1;
  do
  {
    while (1)
    {
      sub_1000B22CC(v476, *v418, v475, v472);
      if (sub_1000CBE9C(v472, v468))
      {
        break;
      }

      v419 = *v418;
      if (!sub_1000CBE9C(v472, v460))
      {
        goto LABEL_442;
      }

LABEL_439:
      --v417;
      --v418;
      if (v417 <= 1)
      {
        goto LABEL_443;
      }
    }

    if (sub_1000CBE9C(v472, v460))
    {
      goto LABEL_439;
    }

LABEL_442:
    v420 = *v418--;
    v280 = v420;
    --v417;
  }

  while (v417 > 1);
LABEL_443:
  if (v275 == -1)
  {
    v279 = v276;
  }

  else
  {
    v279 = v275;
  }

  v281 = v419;
  v278 = v465;
  if (v419 == -1)
  {
LABEL_223:
    v281 = v280;
  }

  if (v433 == -1 || v279 == -1 || v281 == -1)
  {
    sub_1000CA03C(v436, 120);
    sub_1000CA03C(v472, v426);
    sub_1000CA03C(v475, v428);
    sub_1000CA03C(v430, v429);
    if (v278 < 1)
    {
      return 1;
    }

    *a7 = -1;
    if (a8)
    {
      *a8 = 0;
    }

    if (a9)
    {
      *a9 = v455;
    }

    if (!a11)
    {
      return 1;
    }

    *a11 = 0;
    return 1;
  }

  v424 = v279;
  v422 = v281;
  v469 = 0;
  v439 = -2 - a3;
  v282 = a3;
  v283 = a11;
LABEL_230:
  v285 = 0;
  do
  {
    v286 = sub_1000CAA80(*(v282 + v285));
    v285 += 2;
  }

  while (v286);
  v287 = (v282 + v285 - 2);
  if (!*v287)
  {
    v389 = v464;
    v17 = v469;
    v390 = v465;
    v391 = a9;
    v392 = v472;
    if (v469 > v465)
    {
      goto LABEL_413;
    }

    goto LABEL_416;
  }

  v288 = 1;
  v289 = (v282 + v285 - 2);
  do
  {
    memset(v477, 0, sizeof(v477));
    sub_1000CB428(*v289, 0, 0, 0, &v477[8], 0, 0, &v477[4], v477, 0, 0);
    if (!*v477)
    {
      break;
    }

    v291 = v289[1];
    ++v289;
    v290 = v291;
    if (!*&v477[4])
    {
      v288 = 0;
    }
  }

  while (v290);
  v442 = (v282 + v285);
  v292 = v287 == v289;
  v456 = &v289[v287 == v289];
  if (!v288)
  {
    v292 = 1;
  }

  v452 = v292;
  if (!v292 && *v456 == *v277 && sub_1000CAA5C(v456[1]))
  {
    v293 = v456 + 2;
    v294 = 2;
    while (1)
    {
      v295 = *v293 == *v277 && sub_1000CAA5C(v293[1]);
      memset(v477, 0, sizeof(v477));
      sub_1000CB428(*v293, 0, 0, 0, v477, 0, 0, &v477[8], &v477[4], 0, 0);
      if (!*&v477[4])
      {
        break;
      }

      ++v293;
      v294 += 2;
      if (*&v477[8] == 0 || v295)
      {
        goto LABEL_251;
      }
    }

    if (!v295)
    {
      v335 = (&v456[v285 / 0xFFFFFFFFFFFFFFFELL + 1] - v282) >> 1;
      v336 = v430;
      sub_1000CB808(v430, v282 + v285 - 2, v335);
      *(v430 + v335) = 0;
      do
      {
        v337 = *v336;
        if (!*v336)
        {
          goto LABEL_339;
        }

        ++v336;
      }

      while (sub_1000CAA80(v337));
      v345 = sub_1000C9F54(120, v338, v339, v340, v341, v342, v343, v344);
      v346 = sub_10008132C(*v476);
      if (v346 < 1)
      {
        if (v345)
        {
          sub_1000CA03C(v345, 120);
        }

LABEL_339:
        v352 = v465;
        v357 = sub_1000B7AB4(v476, v282 + v285 - 2, (v439 + v282 + v285) >> 1, v335, v464, v465, a7, a8, a9, 0, a11, v478, 1) + v469;
        v358 = v478[0];
        if (v478[0] >= v465 && v464 != 0)
        {
          v358 = 0;
        }

        if (v358 >= v465)
        {
LABEL_373:
          v478[0] = v358 + 1;
          v369 = v357 + sub_1000B7AB4(v476, (v456 + 1), (v456 - a3 + 2) >> 1, v294 >> 1, v464, v352, a7, a8, a9, 0, a11, v478, 1);
          v283 = a11;
          v469 = v369 + 1;
          v282 = v293;
          goto LABEL_321;
        }

LABEL_367:
        a7[v358] = v422;
        if (a8)
        {
          a8[v358] = (v456 - a3) >> 1;
        }

        if (a9)
        {
          a9[v358] = 1;
        }

        if (a11)
        {
          a11[v358] = 1;
        }

        goto LABEL_373;
      }

      v347 = v345;
      v348 = 0;
      if (v346 >= 0x1E)
      {
        v349 = 30;
      }

      else
      {
        v349 = v346;
      }

      if (v346 < 8)
      {
        v352 = v465;
        v351 = a11;
        v350 = v347;
      }

      else
      {
        v350 = v345;
        v352 = v465;
        v351 = a11;
        if (v436 - v347 >= 0x20)
        {
          v348 = v349 & 0x18;
          *&v353 = __PAIR64__(HIDWORD(*v347), *v347) | 0xC0000000C0000000;
          DWORD2(v353) = v347[1] | 0xC0000000;
          HIDWORD(v353) = HIDWORD(*v347) | 0xC0000000;
          v354 = *(v347 + 1) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
          *v436 = v353;
          *(v436 + 16) = v354;
          if (v348 != 8)
          {
            v355 = *(v347 + 3) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *(v436 + 32) = *(v347 + 2) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
            *(v436 + 48) = v355;
            if (v348 != 16)
            {
              v356 = *(v347 + 5) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
              *(v436 + 64) = *(v347 + 4) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
              *(v436 + 80) = v356;
            }
          }

          if (v348 == v349)
          {
LABEL_349:
            sub_1000CA03C(v350, 120);
            v365 = v478[0];
            v366 = v464;
            if (v478[0] >= v352 && v464 != 0)
            {
              v365 = 0;
            }

            if (v365 < v352)
            {
              a7[v365] = *v436;
              if (a8)
              {
                a8[v365] = (v439 + v282 + v285) >> 1;
              }

              if (a9)
              {
                a9[v365] = v335;
              }

              v366 = v464;
              if (v351)
              {
                v351[v365] = 1;
              }
            }

            v358 = v365 + 1;
            v357 = v469 + 1;
            if (v358 >= v352 && v366 != 0)
            {
              v358 = 0;
            }

            if (v358 >= v352)
            {
              goto LABEL_373;
            }

            goto LABEL_367;
          }
        }
      }

      v360 = v349 - v348;
      v361 = 4 * v348;
      v362 = (v436 + 4 * v348);
      v363 = (v350 + v361);
      do
      {
        v364 = *v363++;
        *v362++ = v364 | 0xC0000000;
        --v360;
      }

      while (v360);
      goto LABEL_349;
    }
  }

LABEL_251:
  v296 = (&v456[v285 / 0xFFFFFFFFFFFFFFFELL + 1] - v282) >> 1;
  v297 = (v282 + v285 - 2);
  v298 = v476;
  v448 = v296;
  do
  {
    v299 = *v297;
    if (!*v297)
    {
      LOBYTE(v461) = 0;
      v283 = a11;
      goto LABEL_266;
    }

    ++v297;
  }

  while (sub_1000CAA80(v299));
  v307 = sub_1000C9F54(120, v300, v301, v302, v303, v304, v305, v306);
  v308 = sub_1000811D4(*v476, 0, v296, (v282 + v285 - 2), v307, 30, 0);
  if (v308 < 1)
  {
    v283 = a11;
    if (v307)
    {
      sub_1000CA03C(v307, 120);
    }

    LOBYTE(v461) = 0;
    goto LABEL_266;
  }

  v309 = v308;
  v310 = 0;
  if (v308 >= 0x1E)
  {
    v311 = 30;
  }

  else
  {
    v311 = v308;
  }

  if (v308 < 8)
  {
    v312 = v436;
LABEL_284:
    v321 = v311 - v310;
    v322 = 4 * v310;
    v323 = (v312 + 4 * v310);
    v324 = (v307 + v322);
    do
    {
      v325 = *v324++;
      *v323++ = v325 | 0xC0000000;
      --v321;
    }

    while (v321);
    goto LABEL_286;
  }

  v312 = v436;
  if (v436 - v307 < 0x20)
  {
    goto LABEL_284;
  }

  v310 = v311 & 0x18;
  *&v313 = __PAIR64__(HIDWORD(*v307), *v307) | 0xC0000000C0000000;
  DWORD2(v313) = *(v307 + 8) | 0xC0000000;
  HIDWORD(v313) = HIDWORD(*v307) | 0xC0000000;
  v314 = *(v307 + 16) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
  *v436 = v313;
  *(v436 + 16) = v314;
  if (v310 != 8)
  {
    v315 = *(v307 + 48) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
    *(v436 + 32) = *(v307 + 32) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
    *(v436 + 48) = v315;
    if (v310 != 16)
    {
      v316 = *(v307 + 80) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
      *(v436 + 64) = *(v307 + 64) | __PAIR128__(0xC0000000C0000000, 0xC0000000C0000000);
      *(v436 + 80) = v316;
    }
  }

  if (v310 != v311)
  {
    goto LABEL_284;
  }

LABEL_286:
  sub_1000CA03C(v307, 120);
  if (v309 != 30)
  {
    v461 = 0;
    v326 = v309 + 1;
    v327 = (v436 - 4 + 4 * v309);
    v328 = -1;
    while (1)
    {
      v329 = v296;
      sub_1000B22CC(v298, *v327, v475, v472);
      v330 = sub_1000CB75C(v475);
      if (v330 >= v296)
      {
        v296 = v330;
        memset(v477, 0, sizeof(v477));
        v331 = v282 + 2 * v330 + v285;
        sub_1000CB428(*(v331 - 4), 0, 0, 0, &v477[8], 0, 0, &v477[4], v477, 0, 0);
        if (*v477)
        {
          sub_1000CB428(*(v331 - 2), 0, 0, 0, &v477[8], 0, 0, &v477[4], v477, 0, 0);
          if (*v477)
          {
            v296 = v329;
            v298 = v476;
            goto LABEL_290;
          }
        }

        v332 = sub_1000CC444((v282 + v285 - 2), v475, v296);
        v298 = v476;
        if (v328 == -1 || v296 > v329)
        {
LABEL_299:
          v328 = *v327;
          v461 = v332 == 0;
          goto LABEL_290;
        }

        if (v296 == v329)
        {
          if (!v461 || !v332)
          {
            goto LABEL_299;
          }

          v461 = 1;
        }
      }

      v296 = v329;
LABEL_290:
      --v326;
      --v327;
      if (v326 <= 1)
      {
        a8 = v449;
        v283 = a11;
        if (v328 != -1)
        {
          if (v296 == 1 && *v287 == 46)
          {
            v328 = v433;
            if (*v442)
            {
              if (sub_1000CBA28(asc_1000F2960, *v442))
              {
                v328 = v433;
              }

              else
              {
                v328 = v424;
              }
            }
          }

          v333 = v478[0];
          if (v478[0] >= v465 && v464 != 0)
          {
            v333 = 0;
          }

          if (v333 < v465)
          {
            a7[v333] = v328;
            if (v449)
            {
              *(v449 + 4 * v333) = (v439 + v282 + v285) >> 1;
            }

            if (a9)
            {
              a9[v333] = v296;
            }

            if (a11)
            {
              a11[v333] = v461;
            }
          }

          v478[0] = v333 + 1;
          v282 = v282 + 2 * v296 + v285 - 2;
          ++v469;
LABEL_321:
          v277 = v445;
          goto LABEL_230;
        }

LABEL_266:
        v317 = (v439 + v282 + v285) >> 1;
        if (v452)
        {
          v318 = v478[0];
          if (v478[0] >= v465 && v464 != 0)
          {
            v318 = 0;
          }

          v320 = v469;
          if (v318 < v465)
          {
            a7[v318] = -1;
            if (a8)
            {
              a8[v318] = v317;
            }

            if (a9)
            {
              a9[v318] = v296;
            }

            if (v283)
            {
              v283[v318] = v461;
            }
          }

          v478[0] = v318 + 1;
          v284 = 1;
        }

        else
        {
          v284 = sub_1000B7AB4(v298, v282 + v285 - 2, v317, v448, v464, v465, a7, a8, a9, 0, v283, v478, 1);
          v320 = v469;
        }

        v469 = v284 + v320;
        v282 = v456;
        v277 = v445;
        goto LABEL_230;
      }
    }
  }

  v17 = 0;
  v390 = v465;
  v283 = a11;
  v389 = v464;
  v391 = a9;
  v392 = v472;
  if (v465 < 0)
  {
LABEL_413:
    if (v389 && v478[0] < v390)
    {
      sub_1000B7C5C(v390, a7, a8, v391, 0, v283, v478[0]);
    }
  }

LABEL_416:
  sub_1000CA03C(v436, 120);
  sub_1000CA03C(v392, v426);
  sub_1000CA03C(v475, v428);
  v238 = v429;
  v237 = v430;
LABEL_417:
  sub_1000CA03C(v237, v238);
  return v17;
}