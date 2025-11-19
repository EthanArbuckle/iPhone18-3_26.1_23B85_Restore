int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a11[3];
  v23 = *(a3 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v227, a4);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v226, a5);
  v31 = a12[2];
  v32 = a12[6];
  if (v31 > v32)
  {
    return result;
  }

  v34 = 4 * vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
  v35 = 4 * vmin_u32(vmls_s32(*(*(*(*(a6 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a6 + 8) + 48), a11[3]), *(*(a6 + 8) + 48)).u32[0];
  v36 = *(a13 + 60);
  v37 = 3 * a17;
  v38 = vld1q_dup_f32(&v227);
  v39 = vld1q_dup_f32(&v226);
  while (1)
  {
    v40 = *(a3 + 8);
    if (v40)
    {
      v41 = a11[3];
      v42 = (v41.i32[1] * v36) + 4 * v31;
      v43 = *(*(v40 + 40) + 8 * a11[7].u32[1]);
      if (*(v43 + 12) - 1 < v42)
      {
        v42 = *(v43 + 12) - 1;
      }

      if (*(v40 + 104) == 1)
      {
        v44 = (*(v43 + 8 * v41.u32[0] + 24) + 8 * v42);
      }

      else
      {
        v45 = (v42 * *(v40 + 108)) >> *(v40 + 112);
        if (v45 >= *(v43 + 20) - 1)
        {
          LODWORD(v45) = *(v43 + 20) - 1;
        }

        v44 = (*(v43 + 8 * v41.u32[0] + 24) + 8 * v45);
      }

      v46 = *v44;
      if (a2 <= v46)
      {
        v27 = 0;
        result = 0;
      }

      else
      {
        v47 = v46;
        if (a2 - v46 >= HIDWORD(v46))
        {
          v48 = HIDWORD(v46);
        }

        else
        {
          v48 = a2 - v46;
        }

        v27 = (v47 + a1);
        result = (v48 + v47 + a1);
      }
    }

    v49 = *(a6 + 8);
    if (v49)
    {
      v50 = a11[3];
      v51 = (v50.i32[1] * v36) + 4 * v31;
      v52 = *(*(v49 + 40) + 8 * a11[7].u32[1]);
      if (*(v52 + 12) - 1 < v51)
      {
        v51 = *(v52 + 12) - 1;
      }

      if (*(v49 + 104) == 1)
      {
        v53 = (*(v52 + 8 * v50.u32[0] + 24) + 8 * v51);
      }

      else
      {
        v54 = (v51 * *(v49 + 108)) >> *(v49 + 112);
        if (v54 >= *(v52 + 20) - 1)
        {
          LODWORD(v54) = *(v52 + 20) - 1;
        }

        v53 = (*(v52 + 8 * v50.u32[0] + 24) + 8 * v54);
      }

      v55 = *v53;
      if (a2 <= v55)
      {
        v29 = 0;
        v28 = 0;
        v60 = v37 + a14;
        goto LABEL_171;
      }

      v56 = v55;
      if (a2 - v55 >= HIDWORD(v55))
      {
        v57 = HIDWORD(v55);
      }

      else
      {
        v57 = a2 - v55;
      }

      v28 = (v56 + a1);
      v29 = v57 + v56 + a1;
    }

    v58 = a14 + a17;
    v59 = a14 + a17 + a17;
    v60 = v59 + a17;
    if (v27)
    {
      if (v28)
      {
        break;
      }
    }

LABEL_171:
    a14 = v60 + a17;
    v32 = a12[6];
    if (v31++ >= v32)
    {
      return result;
    }
  }

  if (!a16)
  {
    goto LABEL_44;
  }

  if (v31 == a12[2])
  {
    v61 = a12[3] + 1;
    v62 = v59 + a17;
    v63 = a14 + a17 + a17;
    v64 = a14 + a17;
    v65 = a14;
    do
    {
      a14 = v65;
      v58 = v64;
      v59 = v63;
      v60 = v62;
      v62 = v63;
      v63 = v64;
      v64 = v65;
      v65 = a16;
      --v61;
    }

    while (v61);
  }

  if (v31 != v32)
  {
    goto LABEL_44;
  }

  v66 = a12[7];
  if (v66 != 1)
  {
    if (v66 == 2)
    {
LABEL_41:
      v59 = a16;
      goto LABEL_42;
    }

    if (v66 == 3)
    {
      v58 = a16;
      goto LABEL_41;
    }

LABEL_44:
    v67 = v60;
    goto LABEL_45;
  }

LABEL_42:
  v67 = a16;
LABEL_45:
  v68 = *a12;
  v27 += v68;
  if ((v27 - 1) < result)
  {
    v28 += v68;
    if (&v28[-1].u64[1] + 7 < v29)
    {
      v69 = a12[1];
      if (v69)
      {
        if (v27 + 1 <= result)
        {
          v70 = *v27;
        }

        else
        {
          v70 = 0uLL;
        }

        v72 = 0uLL;
        v73 = 0uLL;
        v74 = 0uLL;
        v75 = (v27 + v34);
        if ((v27 + v34 + 16) <= result)
        {
          v72 = *v75;
        }

        v76 = (v75 + v34);
        if (&v76[1] <= result)
        {
          v73 = *v76;
        }

        v77 = (v76 + v34);
        if (&v77[1] <= result)
        {
          v74 = *v77;
        }

        if (&v28[1] <= v29)
        {
          v78 = *v28;
        }

        else
        {
          v78 = 0uLL;
        }

        v79 = 0uLL;
        v80 = 0uLL;
        v81 = 0uLL;
        v82 = (v28 + v35);
        if (v28[1].u64 + v35 <= v29)
        {
          v79 = *v82;
        }

        v83 = (v82 + v35);
        if (&v83[1] <= v29)
        {
          v80 = *v83;
        }

        v84 = (v83 + v35);
        if (&v84[1] <= v29)
        {
          v81 = *v84;
        }

        v30.i32[0] = 0;
        v85 = vuzp1q_s32(v38, v80);
        v86 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v73, v39)), vextq_s8(v38, v85, 0xCuLL));
        v87 = v39;
        v87.i32[0] = v73.i32[2];
        v88 = vtrn2q_s32(vrev64q_s32(v87), v85);
        v89 = v38;
        v89.i32[3] = v80.i32[1];
        v90 = vuzp2q_s32(v73, v39);
        v91 = vtrn2q_s32(vrev64q_s32(v90), v89);
        v92 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v90, v73)), vuzp2q_s32(v38, v80));
        v93 = vuzp1q_s32(v38, v81);
        v94 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v74, v39)), vextq_s8(v38, v93, 0xCuLL));
        v95 = v39;
        v95.i32[0] = v74.i32[2];
        v96 = vtrn2q_s32(vrev64q_s32(v95), v93);
        v97 = v38;
        v97.i32[3] = v81.i32[1];
        v98 = vuzp2q_s32(v74, v39);
        v99 = vtrn2q_s32(vrev64q_s32(v98), v97);
        v100 = vrev64q_s32(vtrn2q_s32(v98, v74));
        v101 = vtrn2q_s32(v100, vuzp2q_s32(v38, v81));
        if (a12[4] == v68)
        {
          v102 = 4 - a12[5];
        }

        else
        {
          v102 = 4;
        }

        v100.i32[0] = a12[1] & 2;
        v103 = vdupq_lane_s32(*&vceqq_s32(v100, v30), 0);
        v104 = vbslq_s8(v103, v99, v101);
        v105 = vbslq_s8(v103, v94, v96);
        v106 = vbslq_s8(v103, v91, v92);
        v107 = vbslq_s8(v103, v86, v88);
        v108 = v38;
        v108.i32[3] = v79.i32[1];
        v109 = vuzp2q_s32(v72, v39);
        v110 = vtrn2q_s32(vrev64q_s32(v109), v108);
        v111 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v109, v72)), vuzp2q_s32(v38, v79));
        v112 = vbslq_s8(v103, v110, v111);
        v113 = vuzp1q_s32(v38, v79);
        v114 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v72, v39)), vextq_s8(v38, v113, 0xCuLL));
        v115 = v39;
        v115.i32[0] = v72.i32[2];
        v116 = vtrn2q_s32(vrev64q_s32(v115), v113);
        v117 = vbslq_s8(v103, v114, v116);
        v118 = v38;
        v118.i32[3] = v78.i32[1];
        v119 = vuzp2q_s32(v70, v39);
        v120 = vtrn2q_s32(vrev64q_s32(v119), v118);
        v121 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v119, v70)), vuzp2q_s32(v38, v78));
        v122 = vbslq_s8(v103, v120, v121);
        v123 = vuzp1q_s32(v38, v78);
        v124 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v70, v39)), vextq_s8(v38, v123, 0xCuLL));
        v125 = v39;
        v125.i32[0] = v70.i32[2];
        v126 = vrev64q_s32(v125);
        v127 = vtrn2q_s32(v126, v123);
        if ((v69 & 2) != 0)
        {
          v102 -= 2;
        }

        v128 = v102 - (v69 & 1);
        v126.i32[0] = a12[1] & 1;
        v129 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v126, v30)), 0);
        v30 = vbslq_s8(v129, v122, vbslq_s8(v103, v124, v127));
        v130 = vbslq_s8(v129, v112, v117);
        v131 = vbslq_s8(v129, v106, v107);
        v132 = vbslq_s8(v129, v104, v105);
        if (v128 <= 1)
        {
          v138 = 0;
        }

        else
        {
          v133 = vbslq_s8(v103, v96, v94);
          v134 = vbslq_s8(v103, v88, v86);
          v135 = vbslq_s8(v103, v92, v91);
          v136 = vbslq_s8(v103, v116, v114);
          v137 = vbslq_s8(v103, v127, v124);
          *a14 = v30;
          *(a14 + 16) = vbslq_s8(v129, v137, v122);
          *v58 = v130;
          *(v58 + 16) = vbslq_s8(v129, v136, v112);
          *v59 = v131;
          *(v59 + 16) = vbslq_s8(v129, v134, v106);
          v128 -= 2;
          v30 = vbslq_s8(v129, vbslq_s8(v103, v121, v120), v137);
          *v67 = v132;
          *(v67 + 16) = vbslq_s8(v129, v133, v104);
          v130 = vbslq_s8(v129, vbslq_s8(v103, v111, v110), v136);
          v131 = vbslq_s8(v129, v135, v134);
          v132 = vbslq_s8(v129, vbslq_s8(v103, v101, v99), v133);
          v138 = 32;
        }

        if (v128 >= 1)
        {
          *(v138 + a14) = v30;
          *(v138 + v58) = v130;
          *(v138 + v59) = v131;
          *(v138 + v67) = v132;
          v138 |= 0x10uLL;
        }

        ++v27;
        ++v28;
        v71 = a12[4];
        if (v71 == v68)
        {
          goto LABEL_171;
        }

        a14 += v138;
        v58 += v138;
        v59 += v138;
        v67 += v138;
        ++v68;
      }

      else
      {
        v71 = a12[4];
      }

      v139 = a12[5];
      v140 = v139 != 0;
      if (v71 == 0 && v140 || (v141 = v71 - v140, v68 > v141))
      {
        v179 = v67;
        v178 = v59;
        v177 = v58;
        v176 = a14;
        if (v139)
        {
          goto LABEL_108;
        }

LABEL_106:
        v37 = 3 * a17;
        goto LABEL_171;
      }

      v142 = v141 - v68 + 1;
      while (1)
      {
        v143 = 0uLL;
        if (v27)
        {
          if (v27 + 1 <= result)
          {
            v144 = *v27;
          }

          else
          {
            v144 = 0uLL;
          }

          v145 = 0uLL;
          v146 = 0uLL;
          v147 = 0uLL;
          v151 = (v27 + v34);
          if ((v27 + v34 + 16) <= result)
          {
            v145 = *v151;
          }

          v152 = (v151 + v34);
          if (&v152[1] <= result)
          {
            v146 = *v152;
          }

          v153 = (v152 + v34);
          if (&v153[1] <= result)
          {
            v147 = *v153;
          }

          ++v27;
          if (v28)
          {
LABEL_95:
            if (&v28[1] <= v29)
            {
              v143 = *v28;
            }

            v148 = 0uLL;
            v149 = 0uLL;
            v150 = 0uLL;
            v154 = (v28 + v35);
            if (v28[1].u64 + v35 <= v29)
            {
              v148 = *v154;
            }

            v155 = (v154 + v35);
            if (&v155[1] <= v29)
            {
              v149 = *v155;
            }

            v156 = (v155 + v35);
            if (&v156[1] <= v29)
            {
              v150 = *v156;
            }

            ++v28;
            goto LABEL_104;
          }
        }

        else
        {
          v144 = 0uLL;
          v145 = 0uLL;
          v146 = 0uLL;
          v147 = 0uLL;
          if (v28)
          {
            goto LABEL_95;
          }
        }

        v148 = 0uLL;
        v149 = 0uLL;
        v150 = 0uLL;
LABEL_104:
        v157 = v38;
        v157.i32[3] = v150.i32[1];
        v158 = vuzp2q_s32(v147, v39);
        v30 = vuzp1q_s32(v38, v150);
        v159 = v39;
        v160 = v38;
        v160.i32[3] = v149.i32[1];
        v161 = vuzp2q_s32(v146, v39);
        v162 = v38;
        v162.i32[3] = v148.i32[1];
        v163 = vuzp2q_s32(v145, v39);
        v164 = vuzp2q_s32(v144, v39);
        v165 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v164, v144)), vuzp2q_s32(v38, v143));
        v166 = vuzp1q_s32(v38, v143);
        v167 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v144, v39)), vextq_s8(v38, v166, 0xCuLL));
        v168 = v38;
        v168.i32[3] = v143.i32[1];
        v169 = vuzp1q_s32(v38, v149);
        v170 = vtrn2q_s32(vrev64q_s32(v164), v168);
        v171 = v39;
        v171.i32[0] = v144.i32[2];
        v172 = v39;
        v172.i32[0] = v146.i32[2];
        v173 = vtrn2q_s32(vrev64q_s32(v171), v166);
        v174 = vuzp1q_s32(v38, v148);
        *a14 = v167;
        *(a14 + 16) = v170;
        v175 = v39;
        v175.i32[0] = v145.i32[2];
        *(a14 + 32) = v173;
        *(a14 + 48) = v165;
        v176 = (a14 + 64);
        v177 = (v58 + 64);
        *v58 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v145, v39)), vextq_s8(v38, v174, 0xCuLL));
        *(v58 + 16) = vtrn2q_s32(vrev64q_s32(v163), v162);
        *(v58 + 32) = vtrn2q_s32(vrev64q_s32(v175), v174);
        *(v58 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v163, v145)), vuzp2q_s32(v38, v148));
        v178 = (v59 + 64);
        *v59 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v146, v39)), vextq_s8(v38, v169, 0xCuLL));
        *(v59 + 16) = vtrn2q_s32(vrev64q_s32(v161), v160);
        *(v59 + 32) = vtrn2q_s32(vrev64q_s32(v172), v169);
        *(v59 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v161, v146)), vuzp2q_s32(v38, v149));
        v179 = (v67 + 64);
        v159.i32[0] = v147.i32[2];
        *(v67 + 32) = vtrn2q_s32(vrev64q_s32(v159), v30);
        *(v67 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v158, v147)), vuzp2q_s32(v38, v150));
        a14 += 64;
        *v67 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v147, v39)), vextq_s8(v38, v30, 0xCuLL));
        *(v67 + 16) = vtrn2q_s32(vrev64q_s32(v158), v157);
        v58 += 64;
        v59 += 64;
        v67 += 64;
        if (!--v142)
        {
          v139 = a12[5];
          if (!v139)
          {
            goto LABEL_106;
          }

LABEL_108:
          v180 = 4 - v139;
          if (v31 == a12[6])
          {
            v181 = 4 - a12[7];
          }

          else
          {
            v181 = 4;
          }

          if (v27)
          {
            if (v181 < 2)
            {
              v183 = 0;
              v182 = v27;
              v184 = v27;
            }

            else
            {
              v182 = (v27 + v34);
              if (v181 == 2)
              {
                v183 = 0;
                v184 = (v27 + v34);
              }

              else
              {
                v184 = (v27 + v34);
                v182 = (v182 + v34);
                if (v181 <= 3)
                {
                  v183 = 0;
                }

                else
                {
                  v183 = v34;
                }
              }
            }

            v193 = (v182 + v183);
            v186 = 0uLL;
            v187 = 0uLL;
            v188 = 0uLL;
            v185 = 0uLL;
            if ((4 - v139))
            {
              if ((v27 + 4 * v180) <= result)
              {
                v185.i32[0] = *(v27 + 3 - v139);
              }

              if ((v184 + 4 * v180) <= result)
              {
                v186.i32[0] = *(v184 + 3 - v139);
              }

              if ((v182 + 4 * v180) <= result)
              {
                v187.i32[0] = *(v182 + 3 - v139);
              }

              if ((v193 + 4 * v180) <= result)
              {
                v188.i32[0] = *(v193 + 3 - v139);
              }
            }

            if (((4 - v139) & 2) != 0)
            {
              v185 = vextq_s8(v185, v185, 8uLL);
              if ((v27 + 8) <= result)
              {
                v194.i64[0] = *v27;
                v194.i64[1] = vextq_s8(v185, v185, 8uLL).u64[0];
                v185 = v194;
              }

              v186 = vextq_s8(v186, v186, 8uLL);
              if (v184 + 1 <= result)
              {
                v195.i64[0] = *v184;
                v195.i64[1] = vextq_s8(v186, v186, 8uLL).u64[0];
                v186 = v195;
              }

              v187 = vextq_s8(v187, v187, 8uLL);
              if (v182 + 1 <= result)
              {
                v196.i64[0] = *v182;
                v196.i64[1] = vextq_s8(v187, v187, 8uLL).u64[0];
                v187 = v196;
              }

              v188 = vextq_s8(v188, v188, 8uLL);
              if (v193 + 1 <= result)
              {
                v197.i64[0] = *v193;
                v197.i64[1] = vextq_s8(v188, v188, 8uLL).u64[0];
                v188 = v197;
              }
            }

            v27 = (v27 + 4 * v180);
            if (v28)
            {
LABEL_140:
              if (v181 < 2)
              {
                v199 = 0;
                v198 = v28;
                v200 = v28;
              }

              else
              {
                v198 = (v28->i64 + v35);
                if (v181 == 2)
                {
                  v199 = 0;
                  v200 = (v28->i64 + v35);
                }

                else
                {
                  v200 = (v28->i64 + v35);
                  v198 = (v198 + v35);
                  if (v181 <= 3)
                  {
                    v199 = 0;
                  }

                  else
                  {
                    v199 = v35;
                  }
                }
              }

              v201 = (v198 + v199);
              v190 = 0uLL;
              v191 = 0uLL;
              v192 = 0uLL;
              v189 = 0uLL;
              if ((4 - v139))
              {
                if (v28 + 4 * v180 <= v29)
                {
                  v189.i32[0] = v28->i32[3 - v139];
                }

                if (v200 + 4 * v180 <= v29)
                {
                  v190.i32[0] = *(v200 + 3 - v139);
                }

                if (v198 + 4 * v180 <= v29)
                {
                  v191.i32[0] = *(v198 + 3 - v139);
                }

                if (v201 + 4 * v180 <= v29)
                {
                  v192.i32[0] = *(v201 + 3 - v139);
                }
              }

              if (((4 - v139) & 2) != 0)
              {
                v189 = vextq_s8(v189, v189, 8uLL);
                v37 = 3 * a17;
                if (&v28->u64[1] <= v29)
                {
                  v202.i64[0] = v28->i64[0];
                  v202.i64[1] = vextq_s8(v189, v189, 8uLL).u64[0];
                  v189 = v202;
                }

                v190 = vextq_s8(v190, v190, 8uLL);
                if ((v200 + 1) <= v29)
                {
                  v203.i64[0] = *v200;
                  v203.i64[1] = vextq_s8(v190, v190, 8uLL).u64[0];
                  v190 = v203;
                }

                v191 = vextq_s8(v191, v191, 8uLL);
                if ((v198 + 1) <= v29)
                {
                  v204.i64[0] = *v198;
                  v204.i64[1] = vextq_s8(v191, v191, 8uLL).u64[0];
                  v191 = v204;
                }

                v192 = vextq_s8(v192, v192, 8uLL);
                if ((v201 + 1) <= v29)
                {
                  v205.i64[0] = *v201;
                  v205.i64[1] = vextq_s8(v192, v192, 8uLL).u64[0];
                  v192 = v205;
                }
              }

              else
              {
                v37 = 3 * a17;
              }

              v28 = (v28 + 4 * v180);
LABEL_167:
              v206 = vuzp1q_s32(v38, v189);
              v207 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v185, v39)), vextq_s8(v38, v206, 0xCuLL));
              v30 = vuzp1q_s32(v38, v190);
              v208 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v186, v39)), vextq_s8(v38, v30, 0xCuLL));
              v209 = vuzp1q_s32(v38, v191);
              v210 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v187, v39)), vextq_s8(v38, v209, 0xCuLL));
              v211 = vuzp1q_s32(v38, v192);
              v212 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v188, v39)), vextq_s8(v38, v211, 0xCuLL));
              if ((v180 & 2) != 0)
              {
                v213 = v38;
                v213.i32[3] = v189.i32[1];
                v214 = v38;
                v214.i32[3] = v190.i32[1];
                v215 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v185, v39)), v213);
                v216 = v38;
                v216.i32[3] = v191.i32[1];
                v217 = v38;
                v217.i32[3] = v192.i32[1];
                *v176 = v207;
                v176[1] = v215;
                *v177 = v208;
                v177[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v186, v39)), v214);
                *v178 = v210;
                v178[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v187, v39)), v216);
                *v179 = v212;
                v179[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v188, v39)), v217);
                if (v180)
                {
                  v218 = v39;
                  v218.i32[0] = v185.i32[2];
                  v219 = vtrn2q_s32(vrev64q_s32(v218), v206);
                  v220 = v39;
                  v220.i32[0] = v186.i32[2];
                  v221 = vrev64q_s32(v220);
                  v222 = v39;
                  v222.i32[0] = v187.i32[2];
                  v223 = vtrn2q_s32(vrev64q_s32(v222), v209);
                  v224 = v39;
                  v224.i32[0] = v188.i32[2];
                  v176[2] = v219;
                  v177[2] = vtrn2q_s32(v221, v30);
                  v178[2] = v223;
                  v179[2] = vtrn2q_s32(vrev64q_s32(v224), v211);
                }
              }

              else
              {
                *v176 = v207;
                *v177 = v208;
                *v178 = v210;
                *v179 = v212;
              }

              goto LABEL_171;
            }
          }

          else
          {
            v185 = 0uLL;
            v186 = 0uLL;
            v187 = 0uLL;
            v188 = 0uLL;
            if (v28)
            {
              goto LABEL_140;
            }
          }

          v189 = 0uLL;
          v190 = 0uLL;
          v191 = 0uLL;
          v192 = 0uLL;
          v37 = 3 * a17;
          goto LABEL_167;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v173, a3);
  v171 = 0;
  v172 = 0;
  v20 = a5;
  v21 = a8;
  v22 = a2;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v170, v20);
  v24 = a12;
  v168 = 0;
  v169 = 0;
  v25 = a12[2];
  v26 = a12[6];
  if (v25 <= v26)
  {
    v28 = *(a13 + 60);
    v146 = a2;
    v147 = v28;
    v148 = v21;
    while (1)
    {
      v29 = *(a4 + 8);
      if (v29)
      {
        v30 = *(a11 + 24);
        v31 = *(*(v29 + 40) + 8 * *(a11 + 60));
        v32 = *(v31 + 12) - 1;
        if (v32 >= (HIDWORD(v30) * v28) + 4 * v25)
        {
          v32 = (HIDWORD(*(a11 + 24)) * v28) + 4 * v25;
        }

        v33 = v31 + 8 * v30;
        if (*(v29 + 104) == 1)
        {
          v34 = (*(v33 + 24) + 8 * v32);
        }

        else
        {
          v35 = (v32 * *(v29 + 108)) >> *(v29 + 112);
          v36 = *(v31 + 20) - 1;
          if (v35 >= v36)
          {
            LODWORD(v35) = v36;
          }

          v34 = (*(v33 + 24) + 8 * v35);
        }

        v37 = *v34;
        v38 = HIDWORD(v37);
        if (v22 >= v37)
        {
          v39 = (a1 + v37);
        }

        else
        {
          v39 = 0;
        }

        if (v22 - v37 < HIDWORD(v37))
        {
          v38 = v22 - v37;
        }

        v40 = v22 >= v37;
        v41 = a1 + v37 + v38;
        if (!v40)
        {
          v41 = 0;
        }

        v171 = v39;
        v172 = v41;
      }

      v42 = *(a6 + 8);
      if (v42)
      {
        v43 = *(a11 + 24);
        v44 = *(*(v42 + 40) + 8 * *(a11 + 60));
        v45 = *(v44 + 12) - 1;
        if (v45 >= (HIDWORD(v43) * v28) + 4 * v25)
        {
          v45 = (HIDWORD(*(a11 + 24)) * v28) + 4 * v25;
        }

        v46 = v44 + 8 * v43;
        if (*(v42 + 104) == 1)
        {
          v47 = (*(v46 + 24) + 8 * v45);
        }

        else
        {
          v49 = (v45 * *(v42 + 108)) >> *(v42 + 112);
          v50 = *(v44 + 20) - 1;
          if (v49 >= v50)
          {
            LODWORD(v49) = v50;
          }

          v47 = (*(v46 + 24) + 8 * v49);
        }

        v51 = *v47;
        v52 = HIDWORD(*v47);
        v53 = a1 + *v47;
        v54 = v22 - *v47;
        if (v22 >= *v47)
        {
          v48 = (a1 + v51);
        }

        else
        {
          v48 = 0;
        }

        if (v54 < HIDWORD(v51))
        {
          v52 = v22 - v51;
        }

        v40 = v22 >= v51;
        v55 = v53 + v52;
        if (!v40)
        {
          v55 = 0;
        }

        v168 = v48;
        v169 = v55;
      }

      else
      {
        v48 = v168;
      }

      v56 = (a14 + a17);
      v57 = (a14 + a17 + a17);
      v58 = (v57 + a17);
      if (!v171 || !v48)
      {
        goto LABEL_78;
      }

      v59 = a16;
      if (!a16)
      {
        break;
      }

      if (v25 == v24[2])
      {
        v60 = v24[3] + 1;
        v61 = a14;
        a14 = (a14 + a17);
        v56 = v57;
        v57 = (v57 + a17);
        do
        {
          v58 = v57;
          v57 = v56;
          v56 = a14;
          a14 = v61;
          v61 = a16;
          --v60;
        }

        while (v60);
      }

      if (v25 != v26)
      {
        break;
      }

      v62 = v24[7];
      if (v62 != 1)
      {
        if (v62 != 2)
        {
          if (v62 != 3)
          {
            break;
          }

          v56 = a16;
        }

        v57 = a16;
      }

LABEL_50:
      v63 = *v24;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v171, v63);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v168, v63);
      v24 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        v64 = v173[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v171, v21, v167);
        v65 = v170;
        v174.val[0] = vdupq_n_s16(v64);
        v174.val[1] = vdupq_n_s16(v170);
        v158 = v167[1];
        *v152 = vqtbl2q_s8(v174, xmmword_296B6EDD0);
        *&v152[16] = v167[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v168, a10, v166);
        v24 = a12;
        v67.i32[0] = 0;
        v68 = vqtbl2q_s8(*v152, xmmword_296B6EF00);
        v69 = *v152;
        v70 = v158;
        v71 = vqtbl2q_s8(*v69.i8, xmmword_296B6EF00);
        v72 = v166[0];
        v73 = v166[1];
        v74 = vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EF10);
        v75 = vqtbl2q_s8(*v152, xmmword_296B6EF20);
        v76 = vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EF30);
        v77 = vqtbl2q_s8(*v152, xmmword_296B6EEC0);
        v78 = vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EED0);
        v79 = vqtbl2q_s8(*v152, xmmword_296B6EEE0);
        v80 = vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EEF0);
        v81 = vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EF10);
        v82 = vqtbl2q_s8(*v69.i8, xmmword_296B6EF20);
        v83 = vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EF30);
        v84 = vqtbl2q_s8(*v69.i8, xmmword_296B6EEC0);
        v85 = vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EED0);
        v86 = vqtbl2q_s8(*v69.i8, xmmword_296B6EEE0);
        v87 = vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EEF0);
        if (a12[4] == v63)
        {
          v88 = 4 - a12[5];
        }

        else
        {
          v88 = 4;
        }

        v89 = a12[1];
        v66.i32[0] = v89 & 2;
        v90 = vdupq_lane_s32(*&vceqq_s32(v66, v67), 0);
        v69.i32[0] = v64;
        v69.i16[2] = v65;
        v69.i16[4] = v64;
        v69.i16[6] = v65;
        v91 = vqtbl2q_s8(*v69.i8, xmmword_296B6EF90);
        v182.val[0] = v69;
        v182.val[1] = v158;
        v92 = vbslq_s8(v90, v87, vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EED0));
        v93 = vqtbl2q_s8(v182, xmmword_296B6EFA0);
        v94 = vbslq_s8(v90, v85, vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EEF0));
        v95 = vqtbl2q_s8(v182, xmmword_296B6EFB0);
        v96 = vbslq_s8(v90, v83, vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EF10));
        v97 = vqtbl2q_s8(v182, xmmword_296B6EFC0);
        v98 = vbslq_s8(v90, v81, vqtbl2q_s8(*(&v73 - 1), xmmword_296B6EF30));
        v182.val[1] = *&v152[16];
        v99 = vqtbl2q_s8(v182, xmmword_296B6EF90);
        v100 = vbslq_s8(v90, v80, vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EED0));
        v101 = vqtbl2q_s8(v182, xmmword_296B6EFA0);
        v102 = vbslq_s8(v90, v78, vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EEF0));
        v103 = vqtbl2q_s8(v182, xmmword_296B6EFB0);
        v104 = vbslq_s8(v90, v76, vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EF10));
        v105 = vqtbl2q_s8(v182, xmmword_296B6EFC0);
        v106 = vbslq_s8(v90, v74, vqtbl2q_s8(*(&v72 - 1), xmmword_296B6EF30));
        if ((v89 & 2) != 0)
        {
          v88 -= 2;
        }

        if (v89)
        {
          v107 = vextq_s8(v104, v106, 8uLL).u64[0];
          v106 = vextq_s8(v106, v104, 8uLL);
          v108 = vextq_s8(v100, v102, 8uLL).u64[0];
          v102 = vextq_s8(v102, v100, 8uLL);
          v109 = vextq_s8(v96, v98, 8uLL).u64[0];
          v98 = vextq_s8(v98, v96, 8uLL);
          v110 = vextq_s8(v92, v94, 8uLL).u64[0];
          --v88;
          v94 = vextq_s8(v94, v92, 8uLL);
          v104.i64[0] = v107;
          v100.i64[0] = v108;
          v96.i64[0] = v109;
          v92.i64[0] = v110;
        }

        v21 = v148;
        v22 = v146;
        v28 = v147;
        if (v88 <= 1)
        {
          v111 = 0;
        }

        else
        {
          *a14 = v106;
          *v56 = v102;
          v88 -= 2;
          v106.i64[0] = v104.i64[0];
          v102.i64[0] = v100.i64[0];
          *v57 = v98;
          v98.i64[0] = v96.i64[0];
          *v59 = v94;
          v94.i64[0] = v92.i64[0];
          v111 = 16;
        }

        if (v88 >= 1)
        {
          *(a14->i64 + v111) = v106.i64[0];
          *(v56->i64 + v111) = v102.i64[0];
          *(v57->i64 + v111) = v98.i64[0];
          *(v59->i64 + v111) = v94.i64[0];
          v111 |= 8uLL;
        }

        v112 = a12[4];
        if (v112 == v63)
        {
          goto LABEL_78;
        }

        a14 = (a14 + v111);
        v56 = (v56 + v111);
        v57 = (v57 + v111);
        v59 = (v59 + v111);
        ++v63;
      }

      else
      {
        v112 = a12[4];
      }

      v113 = v24[5];
      v114 = v113 != 0;
      if (v112 != 0 || !v114)
      {
        v115 = v112 - v114;
        if (v63 <= v115)
        {
          v116 = v115 - v63 + 1;
          do
          {
            v118 = v59;
            v117 = v173;
            v119 = vld1q_dup_s16(v117);
            v156 = v119;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v171, v148, v165);
            v120 = &v170;
            v177.val[0] = v156;
            v177.val[1] = vld1q_dup_s16(v120);
            v159 = v165[0];
            v153.val[0] = vqtbl2q_s8(v177, xmmword_296B6EDD0);
            v153.val[1] = v165[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v168, a10, v164);
            v175.val[0] = vqtbl2q_s8(v153, xmmword_296B6EEC0);
            v181.val[0] = v153.val[0];
            v181.val[1] = v159;
            v178.val[0] = vqtbl2q_s8(v181, xmmword_296B6EEC0);
            v178.val[1] = v164[0];
            v175.val[1] = v164[1];
            v121 = vqtbl2q_s8(v178, xmmword_296B6EED0);
            v178.val[0] = vqtbl2q_s8(v181, xmmword_296B6EEE0);
            v122 = vqtbl2q_s8(v178, xmmword_296B6EEF0);
            v178.val[0] = vqtbl2q_s8(v181, xmmword_296B6EF00);
            v123 = vqtbl2q_s8(v178, xmmword_296B6EF10);
            v178.val[0] = vqtbl2q_s8(v181, xmmword_296B6EF20);
            v124 = vqtbl2q_s8(v175, xmmword_296B6EED0);
            v175.val[0] = vqtbl2q_s8(v153, xmmword_296B6EEE0);
            v125 = vqtbl2q_s8(v175, xmmword_296B6EEF0);
            v175.val[0] = vqtbl2q_s8(v153, xmmword_296B6EF00);
            v178.val[0] = vqtbl2q_s8(v178, xmmword_296B6EF30);
            v178.val[1] = vqtbl2q_s8(v175, xmmword_296B6EF10);
            *a14 = v123;
            a14[1] = v178.val[0];
            a14 += 2;
            v175.val[0] = vqtbl2q_s8(v153, xmmword_296B6EF20);
            *v56 = v121;
            v56[1] = v122;
            v56 += 2;
            *v57 = v178.val[1];
            v57[1] = vqtbl2q_s8(v175, xmmword_296B6EF30);
            v57 += 2;
            v59 += 2;
            *v118 = v124;
            v118[1] = v125;
            --v116;
          }

          while (v116);
          v24 = a12;
          v113 = a12[5];
          v22 = v146;
        }
      }

      if (v113)
      {
        v126 = vld1q_dup_s16(v173);
        v157 = v126;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v171, v148, v163);
        v176.val[0] = v157;
        v176.val[1] = vld1q_dup_s16(&v170);
        v160 = v163[0];
        v154 = vqtbl2q_s8(v176, xmmword_296B6EDD0);
        v155 = v163[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v168, a10, &v161);
        v127 = v154;
        v128 = v155;
        v129 = v154;
        v130 = v160;
        v24 = a12;
        v132 = v161;
        v131 = v162;
        v133 = vqtbl2q_s8(*v127.i8, xmmword_296B6EEC0);
        v134 = vqtbl2q_s8(*(&v131 - 1), xmmword_296B6EED0);
        v179.val[0] = vqtbl2q_s8(*v127.i8, xmmword_296B6EF00);
        v179.val[1] = v162;
        v135 = vqtbl2q_s8(v179, xmmword_296B6EF10);
        v136 = vqtbl2q_s8(*v129.i8, xmmword_296B6EEC0);
        v137 = vqtbl2q_s8(*(&v132 - 1), xmmword_296B6EED0);
        v180.val[0] = vqtbl2q_s8(*v129.i8, xmmword_296B6EF00);
        v180.val[1] = v161;
        v138 = vqtbl2q_s8(v180, xmmword_296B6EF10);
        v139 = 4 - a12[5];
        if ((v139 & 2) != 0)
        {
          *a14 = v138;
          *v56 = v137;
          *v57 = v135;
          *v59 = v134;
          v28 = v147;
          if (v139)
          {
            v140 = vqtbl2q_s8(*v127.i8, xmmword_296B6EEE0);
            v141 = vqtbl2q_s8(*(&v131 - 1), xmmword_296B6EEF0).u64[0];
            v142 = vqtbl2q_s8(*v127.i8, xmmword_296B6EF20);
            v143 = vqtbl2q_s8(*v129.i8, xmmword_296B6EEE0);
            v144 = vqtbl2q_s8(*(&v132 - 1), xmmword_296B6EEF0).u64[0];
            v145 = vqtbl2q_s8(*v129.i8, xmmword_296B6EF20);
            a14[1].i64[0] = vqtbl2q_s8(*(&v132 - 1), xmmword_296B6EF30).u64[0];
            v56[1].i64[0] = v144;
            v57[1].i64[0] = vqtbl2q_s8(*(&v131 - 1), xmmword_296B6EF30).u64[0];
            v59[1].i64[0] = v141;
          }

          goto LABEL_77;
        }

        a14->i64[0] = v138.i64[0];
        v56->i64[0] = v137.i64[0];
        v57->i64[0] = v135.i64[0];
        v59->i64[0] = v134.i64[0];
      }

      v28 = v147;
LABEL_77:
      v21 = v148;
LABEL_78:
      a14 = (v58 + a17);
      v26 = v24[6];
      v40 = v25++ >= v26;
      if (v40)
      {
        return result;
      }
    }

    v59 = v58;
    goto LABEL_50;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v197, a3);
  v22 = a11[3];
  v23 = *(a4 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v196, a5);
  v32 = a12[2];
  v33 = a12[6];
  if (v32 > v33)
  {
    return result;
  }

  v35 = 4 * vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
  v36 = 4 * vmin_u32(vmls_s32(*(*(*(*(a6 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a6 + 8) + 48), a11[3]), *(*(a6 + 8) + 48)).u32[0];
  v37 = *(a13 + 60);
  v38.i64[0] = __PAIR64__(v196, v197);
  v38.i64[1] = __PAIR64__(v196, v197);
  v39 = 3 * a17;
  v40 = vextq_s8(v38, v38, 8uLL);
  while (1)
  {
    v41 = *(a4 + 8);
    if (v41)
    {
      v42 = a11[3];
      v43 = (v42.i32[1] * v37) + 4 * v32;
      v44 = *(*(v41 + 40) + 8 * a11[7].u32[1]);
      if (*(v44 + 12) - 1 < v43)
      {
        v43 = *(v44 + 12) - 1;
      }

      if (*(v41 + 104) == 1)
      {
        v45 = (*(v44 + 8 * v42.u32[0] + 24) + 8 * v43);
      }

      else
      {
        v46 = (v43 * *(v41 + 108)) >> *(v41 + 112);
        if (v46 >= *(v44 + 20) - 1)
        {
          LODWORD(v46) = *(v44 + 20) - 1;
        }

        v45 = (*(v44 + 8 * v42.u32[0] + 24) + 8 * v46);
      }

      v47 = *v45;
      if (a2 <= v47)
      {
        v27 = 0;
        result = 0;
      }

      else
      {
        v48 = v47;
        if (a2 - v47 >= HIDWORD(v47))
        {
          v49 = HIDWORD(v47);
        }

        else
        {
          v49 = a2 - v47;
        }

        v27 = (v48 + a1);
        result = (v49 + v48 + a1);
      }
    }

    v50 = *(a6 + 8);
    if (v50)
    {
      v51 = a11[3];
      v52 = (v51.i32[1] * v37) + 4 * v32;
      v53 = *(*(v50 + 40) + 8 * a11[7].u32[1]);
      if (*(v53 + 12) - 1 < v52)
      {
        v52 = *(v53 + 12) - 1;
      }

      if (*(v50 + 104) == 1)
      {
        v54 = (*(v53 + 8 * v51.u32[0] + 24) + 8 * v52);
      }

      else
      {
        v55 = (v52 * *(v50 + 108)) >> *(v50 + 112);
        if (v55 >= *(v53 + 20) - 1)
        {
          LODWORD(v55) = *(v53 + 20) - 1;
        }

        v54 = (*(v53 + 8 * v51.u32[0] + 24) + 8 * v55);
      }

      v56 = *v54;
      if (a2 <= v56)
      {
        v29 = 0;
        v28 = 0;
        v61 = v39 + a14;
        goto LABEL_171;
      }

      v57 = v56;
      if (a2 - v56 >= HIDWORD(v56))
      {
        v58 = HIDWORD(v56);
      }

      else
      {
        v58 = a2 - v56;
      }

      v28 = (v57 + a1);
      v29 = v58 + v57 + a1;
    }

    v59 = a14 + a17;
    v60 = a14 + a17 + a17;
    v61 = v60 + a17;
    if (v27)
    {
      if (v28)
      {
        break;
      }
    }

LABEL_171:
    a14 = v61 + a17;
    v33 = a12[6];
    if (v32++ >= v33)
    {
      return result;
    }
  }

  if (!a16)
  {
    goto LABEL_44;
  }

  if (v32 == a12[2])
  {
    v62 = a12[3] + 1;
    v63 = v60 + a17;
    v64 = a14 + a17 + a17;
    v65 = a14 + a17;
    v66 = a14;
    do
    {
      a14 = v66;
      v59 = v65;
      v60 = v64;
      v61 = v63;
      v63 = v64;
      v64 = v65;
      v65 = v66;
      v66 = a16;
      --v62;
    }

    while (v62);
  }

  if (v32 != v33)
  {
    goto LABEL_44;
  }

  v67 = a12[7];
  if (v67 != 1)
  {
    if (v67 == 2)
    {
LABEL_41:
      v60 = a16;
      goto LABEL_42;
    }

    if (v67 == 3)
    {
      v59 = a16;
      goto LABEL_41;
    }

LABEL_44:
    v68 = v61;
    goto LABEL_45;
  }

LABEL_42:
  v68 = a16;
LABEL_45:
  v69 = *a12;
  v27 += v69;
  if ((v27 - 1) < result)
  {
    v28 += v69;
    if (v28 - 1 < v29)
    {
      v70 = a12[1];
      if (v70)
      {
        if (v27 + 1 <= result)
        {
          v71 = *v27;
        }

        else
        {
          v71 = 0uLL;
        }

        v73 = 0uLL;
        v74 = 0uLL;
        v75 = 0uLL;
        v76 = (v27 + v35);
        if ((v27 + v35 + 16) <= result)
        {
          v73 = *v76;
        }

        v77 = (v76 + v35);
        if (&v77[1] <= result)
        {
          v74 = *v77;
        }

        v78 = (v77 + v35);
        if (&v78[1] <= result)
        {
          v75 = *v78;
        }

        if ((v28 + 1) <= v29)
        {
          v79 = *v28;
        }

        else
        {
          v79 = 0uLL;
        }

        v80 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
        v83 = (v28 + v36);
        if (v28 + v36 + 16 <= v29)
        {
          v80 = *v83;
        }

        v84 = (v83 + v36);
        if ((v84 + 1) <= v29)
        {
          v81 = *v84;
        }

        v85 = (v84 + v36);
        if ((v85 + 1) <= v29)
        {
          v82 = *v85;
        }

        v30.i32[0] = 0;
        v86 = vzip1q_s32(v38, v71);
        v86.i32[3] = v79;
        v87 = vzip2q_s32(v40, v71);
        v87.i32[3] = DWORD2(v79);
        v88 = vzip2q_s32(v38, vuzp2q_s32(v38, v71));
        v88.i32[3] = DWORD1(v79);
        v89 = vextq_s8(vzip2q_s32(v71, v38), v38, 4uLL);
        v89.i32[3] = HIDWORD(v79);
        v90 = vzip1q_s32(v38, v73);
        v90.i32[3] = v80;
        v91 = vzip2q_s32(v40, v73);
        v91.i32[3] = DWORD2(v80);
        v92 = vzip2q_s32(v38, vuzp2q_s32(v38, v73));
        v92.i32[3] = DWORD1(v80);
        v93 = vextq_s8(vzip2q_s32(v73, v38), v38, 4uLL);
        v93.i32[3] = HIDWORD(v80);
        v94 = vzip1q_s32(v38, v74);
        v94.i32[3] = v81;
        v95 = vzip2q_s32(v40, v74);
        v95.i32[3] = DWORD2(v81);
        v96 = vzip2q_s32(v38, vuzp2q_s32(v38, v74));
        v96.i32[3] = DWORD1(v81);
        v97 = vextq_s8(vzip2q_s32(v74, v38), v38, 4uLL);
        v97.i32[3] = HIDWORD(v81);
        v98 = vzip1q_s32(v38, v75);
        v98.i32[3] = v82;
        v99 = vzip2q_s32(v40, v75);
        v99.i32[3] = DWORD2(v82);
        v100 = vzip2q_s32(v38, vuzp2q_s32(v38, v75));
        v100.i32[3] = DWORD1(v82);
        v101 = vzip2q_s32(v75, v38);
        v102 = vextq_s8(v101, v38, 4uLL);
        v102.i32[3] = HIDWORD(v82);
        if (a12[4] == v69)
        {
          v103 = 4 - a12[5];
        }

        else
        {
          v103 = 4;
        }

        v101.i32[0] = a12[1] & 2;
        v104 = vdupq_lane_s32(*&vceqq_s32(v101, v30), 0);
        v105 = vbslq_s8(v104, v100, v102);
        v106 = vbslq_s8(v104, v98, v99);
        v107 = vbslq_s8(v104, v96, v97);
        v108 = vbslq_s8(v104, v94, v95);
        v109 = vbslq_s8(v104, v92, v93);
        v110 = vbslq_s8(v104, v90, v91);
        v111 = vbslq_s8(v104, v88, v89);
        if ((v70 & 2) != 0)
        {
          v103 -= 2;
        }

        v112 = v103 - (v70 & 1);
        v31.i32[0] = a12[1] & 1;
        v113 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v31, v30)), 0);
        v31 = vbslq_s8(v113, v111, vbslq_s8(v104, v86, v87));
        v30 = vbslq_s8(v113, v109, v110);
        v114 = vbslq_s8(v113, v107, v108);
        v115 = vbslq_s8(v113, v105, v106);
        if (v112 <= 1)
        {
          v120 = 0;
        }

        else
        {
          v116 = vbslq_s8(v104, v99, v98);
          v117 = vbslq_s8(v104, v95, v94);
          v118 = vbslq_s8(v104, v91, v90);
          v119 = vbslq_s8(v104, v87, v86);
          *a14 = v31;
          *(a14 + 16) = vbslq_s8(v113, v119, v111);
          *v59 = v30;
          *(v59 + 16) = vbslq_s8(v113, v118, v109);
          *v60 = v114;
          *(v60 + 16) = vbslq_s8(v113, v117, v107);
          v112 -= 2;
          v31 = vbslq_s8(v113, vbslq_s8(v104, v89, v88), v119);
          *v68 = v115;
          *(v68 + 16) = vbslq_s8(v113, v116, v105);
          v30 = vbslq_s8(v113, vbslq_s8(v104, v93, v92), v118);
          v114 = vbslq_s8(v113, vbslq_s8(v104, v97, v96), v117);
          v115 = vbslq_s8(v113, vbslq_s8(v104, v102, v100), v116);
          v120 = 32;
        }

        if (v112 >= 1)
        {
          *(v120 + a14) = v31;
          *(v120 + v59) = v30;
          *(v120 + v60) = v114;
          *(v120 + v68) = v115;
          v120 |= 0x10uLL;
        }

        ++v27;
        ++v28;
        v72 = a12[4];
        if (v72 == v69)
        {
          goto LABEL_171;
        }

        a14 += v120;
        v59 += v120;
        v60 += v120;
        v68 += v120;
        ++v69;
      }

      else
      {
        v72 = a12[4];
      }

      v121 = a12[5];
      v122 = v121 != 0;
      if (v72 == 0 && v122 || (v123 = v72 - v122, v69 > v123))
      {
        v157 = v68;
        v156 = v60;
        v155 = v59;
        v154 = a14;
        if (v121)
        {
          goto LABEL_108;
        }

LABEL_106:
        v39 = 3 * a17;
        goto LABEL_171;
      }

      v124 = v123 - v69 + 1;
      while (1)
      {
        v125 = 0uLL;
        if (v27)
        {
          if (v27 + 1 <= result)
          {
            v126 = *v27;
          }

          else
          {
            v126 = 0uLL;
          }

          v127 = 0uLL;
          v128 = 0uLL;
          v129 = 0uLL;
          v133 = (v27 + v35);
          if ((v27 + v35 + 16) <= result)
          {
            v127 = *v133;
          }

          v134 = (v133 + v35);
          if (&v134[1] <= result)
          {
            v128 = *v134;
          }

          v135 = (v134 + v35);
          if (&v135[1] <= result)
          {
            v129 = *v135;
          }

          ++v27;
          if (v28)
          {
LABEL_95:
            if ((v28 + 1) <= v29)
            {
              v125 = *v28;
            }

            v130 = 0uLL;
            v131 = 0uLL;
            v132 = 0uLL;
            v136 = (v28 + v36);
            if (v28 + v36 + 16 <= v29)
            {
              v130 = *v136;
            }

            v137 = (v136 + v36);
            if ((v137 + 1) <= v29)
            {
              v131 = *v137;
            }

            v138 = (v137 + v36);
            if ((v138 + 1) <= v29)
            {
              v132 = *v138;
            }

            ++v28;
            goto LABEL_104;
          }
        }

        else
        {
          v126 = 0uLL;
          v127 = 0uLL;
          v128 = 0uLL;
          v129 = 0uLL;
          if (v28)
          {
            goto LABEL_95;
          }
        }

        v130 = 0uLL;
        v131 = 0uLL;
        v132 = 0uLL;
LABEL_104:
        v139 = vextq_s8(vzip2q_s32(v129, v38), v38, 4uLL);
        v139.i32[3] = HIDWORD(v132);
        v140 = vzip2q_s32(v40, v129);
        v140.i32[3] = DWORD2(v132);
        v141 = vzip2q_s32(v38, vuzp2q_s32(v38, v129));
        v141.i32[3] = DWORD1(v132);
        v142 = vzip1q_s32(v38, v129);
        v142.i32[3] = v132;
        v143 = vzip2q_s32(v40, v128);
        v143.i32[3] = DWORD2(v131);
        v30 = vzip2q_s32(v38, vuzp2q_s32(v38, v128));
        v30.i32[3] = DWORD1(v131);
        v144 = vzip2q_s32(v40, v127);
        v144.i32[3] = DWORD2(v130);
        v145 = vextq_s8(vzip2q_s32(v127, v38), v38, 4uLL);
        v145.i32[3] = HIDWORD(v130);
        v146 = vzip2q_s32(v38, vuzp2q_s32(v38, v127));
        v146.i32[3] = DWORD1(v130);
        v147 = vzip1q_s32(v38, v127);
        v147.i32[3] = v130;
        v148 = vzip2q_s32(v40, v126);
        v148.i32[3] = DWORD2(v125);
        v149 = vextq_s8(vzip2q_s32(v126, v38), v38, 4uLL);
        v149.i32[3] = HIDWORD(v125);
        v150 = vzip2q_s32(v38, vuzp2q_s32(v38, v126));
        v150.i32[3] = DWORD1(v125);
        v151 = vzip1q_s32(v38, v126);
        v151.i32[3] = v125;
        v152 = vzip1q_s32(v38, v128);
        *a14 = v151;
        *(a14 + 16) = v150;
        *(a14 + 32) = v148;
        *(a14 + 48) = v149;
        *v59 = v147;
        *(v59 + 16) = v146;
        *(v59 + 32) = v144;
        *(v59 + 48) = v145;
        v152.i32[3] = v131;
        *v60 = v152;
        *(v60 + 16) = v30;
        v153 = vextq_s8(vzip2q_s32(v128, v38), v38, 4uLL);
        v153.i32[3] = HIDWORD(v131);
        v154 = (a14 + 64);
        v155 = (v59 + 64);
        v156 = (v60 + 64);
        *(v60 + 32) = v143;
        *(v60 + 48) = v153;
        v157 = (v68 + 64);
        *v68 = v142;
        *(v68 + 16) = v141;
        a14 += 64;
        v59 += 64;
        v60 += 64;
        *(v68 + 32) = v140;
        *(v68 + 48) = v139;
        v68 += 64;
        if (!--v124)
        {
          v121 = a12[5];
          if (!v121)
          {
            goto LABEL_106;
          }

LABEL_108:
          v158 = 4 - v121;
          if (v32 == a12[6])
          {
            v159 = 4 - a12[7];
          }

          else
          {
            v159 = 4;
          }

          if (v27)
          {
            if (v159 < 2)
            {
              v161 = 0;
              v160 = v27;
              v162 = v27;
            }

            else
            {
              v160 = (v27 + v35);
              if (v159 == 2)
              {
                v161 = 0;
                v162 = (v27 + v35);
              }

              else
              {
                v162 = (v27 + v35);
                v160 = (v160 + v35);
                if (v159 <= 3)
                {
                  v161 = 0;
                }

                else
                {
                  v161 = v35;
                }
              }
            }

            v171 = (v160 + v161);
            v164 = 0uLL;
            v165 = 0uLL;
            v166 = 0uLL;
            v163 = 0uLL;
            if ((4 - v121))
            {
              if ((v27 + 4 * v158) <= result)
              {
                v163.i32[0] = *(v27 + 3 - v121);
              }

              if ((v162 + 4 * v158) <= result)
              {
                v164.i32[0] = *(v162 + 3 - v121);
              }

              if ((v160 + 4 * v158) <= result)
              {
                v165.i32[0] = *(v160 + 3 - v121);
              }

              if ((v171 + 4 * v158) <= result)
              {
                v166.i32[0] = *(v171 + 3 - v121);
              }
            }

            if (((4 - v121) & 2) != 0)
            {
              v163 = vextq_s8(v163, v163, 8uLL);
              if ((v27 + 8) <= result)
              {
                v172.i64[0] = *v27;
                v172.i64[1] = vextq_s8(v163, v163, 8uLL).u64[0];
                v163 = v172;
              }

              v164 = vextq_s8(v164, v164, 8uLL);
              if (v162 + 1 <= result)
              {
                v173.i64[0] = *v162;
                v173.i64[1] = vextq_s8(v164, v164, 8uLL).u64[0];
                v164 = v173;
              }

              v165 = vextq_s8(v165, v165, 8uLL);
              if (v160 + 1 <= result)
              {
                v174.i64[0] = *v160;
                v174.i64[1] = vextq_s8(v165, v165, 8uLL).u64[0];
                v165 = v174;
              }

              v166 = vextq_s8(v166, v166, 8uLL);
              if (v171 + 1 <= result)
              {
                v175.i64[0] = *v171;
                v175.i64[1] = vextq_s8(v166, v166, 8uLL).u64[0];
                v166 = v175;
              }
            }

            v27 = (v27 + 4 * v158);
            if (v28)
            {
LABEL_140:
              if (v159 < 2)
              {
                v177 = 0;
                v176 = v28;
                v178 = v28;
              }

              else
              {
                v176 = (v28 + v36);
                if (v159 == 2)
                {
                  v177 = 0;
                  v178 = (v28 + v36);
                }

                else
                {
                  v178 = (v28 + v36);
                  v176 = (v176 + v36);
                  if (v159 <= 3)
                  {
                    v177 = 0;
                  }

                  else
                  {
                    v177 = v36;
                  }
                }
              }

              v179 = (v176 + v177);
              v168 = 0uLL;
              v169 = 0uLL;
              v170 = 0uLL;
              v167 = 0uLL;
              if ((4 - v121))
              {
                if (v28 + 4 * v158 <= v29)
                {
                  v167.i32[0] = *(v28 + 3 - v121);
                }

                if (v178 + 4 * v158 <= v29)
                {
                  v168.i32[0] = *(v178 + 3 - v121);
                }

                if (v176 + 4 * v158 <= v29)
                {
                  v169.i32[0] = *(v176 + 3 - v121);
                }

                if (v179 + 4 * v158 <= v29)
                {
                  v170.i32[0] = *(v179 + 3 - v121);
                }
              }

              if (((4 - v121) & 2) != 0)
              {
                v167 = vextq_s8(v167, v167, 8uLL);
                v39 = 3 * a17;
                if (v28 + 8 <= v29)
                {
                  v180.i64[0] = *v28;
                  v180.i64[1] = vextq_s8(v167, v167, 8uLL).u64[0];
                  v167 = v180;
                }

                v168 = vextq_s8(v168, v168, 8uLL);
                if ((v178 + 1) <= v29)
                {
                  v181.i64[0] = *v178;
                  v181.i64[1] = vextq_s8(v168, v168, 8uLL).u64[0];
                  v168 = v181;
                }

                v169 = vextq_s8(v169, v169, 8uLL);
                if ((v176 + 1) <= v29)
                {
                  v182.i64[0] = *v176;
                  v182.i64[1] = vextq_s8(v169, v169, 8uLL).u64[0];
                  v169 = v182;
                }

                v170 = vextq_s8(v170, v170, 8uLL);
                if ((v179 + 1) <= v29)
                {
                  v183.i64[0] = *v179;
                  v183.i64[1] = vextq_s8(v170, v170, 8uLL).u64[0];
                  v170 = v183;
                }
              }

              else
              {
                v39 = 3 * a17;
              }

              v28 = (v28 + 4 * v158);
LABEL_167:
              v184 = vzip1q_s32(v38, v163);
              v184.i32[3] = v167.i32[0];
              v185 = vzip1q_s32(v38, v164);
              v185.i32[3] = v168.i32[0];
              v186 = vzip1q_s32(v38, v165);
              v186.i32[3] = v169.i32[0];
              v30 = vzip1q_s32(v38, v166);
              v30.i32[3] = v170.i32[0];
              if ((v158 & 2) != 0)
              {
                v187 = vzip2q_s32(v38, vuzp2q_s32(v38, v163));
                v187.i32[3] = v167.i32[1];
                v188 = vzip2q_s32(v38, vuzp2q_s32(v38, v164));
                v188.i32[3] = v168.i32[1];
                v189 = vzip2q_s32(v38, vuzp2q_s32(v38, v165));
                v189.i32[3] = v169.i32[1];
                v190 = vzip2q_s32(v38, vuzp2q_s32(v38, v166));
                v190.i32[3] = v170.i32[1];
                *v154 = v184;
                v154[1] = v187;
                *v155 = v185;
                v155[1] = v188;
                *v156 = v186;
                v156[1] = v189;
                *v157 = v30;
                v157[1] = v190;
                if (v158)
                {
                  v191 = vzip2q_s32(v40, v163);
                  v191.i32[3] = v167.i32[2];
                  v192 = vzip2q_s32(v40, v164);
                  v192.i32[3] = v168.i32[2];
                  v193 = vzip2q_s32(v40, v165);
                  v193.i32[3] = v169.i32[2];
                  v194 = vzip2q_s32(v40, v166);
                  v194.i32[3] = v170.i32[2];
                  v154[2] = v191;
                  v155[2] = v192;
                  v156[2] = v193;
                  v157[2] = v194;
                }
              }

              else
              {
                *v154 = v184;
                *v155 = v185;
                *v156 = v186;
                *v157 = v30;
              }

              goto LABEL_171;
            }
          }

          else
          {
            v163 = 0uLL;
            v164 = 0uLL;
            v165 = 0uLL;
            v166 = 0uLL;
            if (v28)
            {
              goto LABEL_140;
            }
          }

          v167.i64[0] = 0;
          v167.i32[2] = 0;
          v168.i64[0] = 0;
          v168.i32[2] = 0;
          v169.i64[0] = 0;
          v169.i32[2] = 0;
          v170.i64[0] = 0;
          v170.i32[2] = 0;
          v39 = 3 * a17;
          goto LABEL_167;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v158, a5);
  v156 = 0;
  v157 = 0;
  v21 = a12[2];
  v22 = a12[6];
  if (v21 <= v22)
  {
    v23 = a12;
    v130 = *(a13 + 60);
    v126 = a6;
    while (1)
    {
      v25 = *(a3 + 8);
      if (v25)
      {
        v26 = *(a11 + 24);
        v27 = (HIDWORD(v26) * v130) + 4 * v21;
        v28 = *(*(v25 + 40) + 8 * *(a11 + 60));
        if (*(v28 + 12) - 1 < v27)
        {
          v27 = *(v28 + 12) - 1;
        }

        if (*(v25 + 104) == 1)
        {
          v29 = (*(v28 + 8 * v26 + 24) + 8 * v27);
        }

        else
        {
          v30 = (v27 * *(v25 + 108)) >> *(v25 + 112);
          if (v30 >= *(v28 + 20) - 1)
          {
            LODWORD(v30) = *(v28 + 20) - 1;
          }

          v29 = (*(v28 + 8 * v26 + 24) + 8 * v30);
        }

        v31 = *v29;
        v32 = HIDWORD(v31);
        if (a2 >= v31)
        {
          v33 = (a1 + v31);
        }

        else
        {
          v33 = 0;
        }

        if (a2 - v31 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v34 = a2 >= v31;
        v35 = a1 + v31 + v32;
        if (!v34)
        {
          v35 = 0;
        }

        v161 = v33;
        v162 = v35;
      }

      v36 = *(a4 + 8);
      if (v36)
      {
        v37 = *(a11 + 24);
        v38 = (HIDWORD(v37) * v130) + 4 * v21;
        v39 = *(*(v36 + 40) + 8 * *(a11 + 60));
        if (*(v39 + 12) - 1 < v38)
        {
          v38 = *(v39 + 12) - 1;
        }

        if (*(v36 + 104) == 1)
        {
          v40 = (*(v39 + 8 * v37 + 24) + 8 * v38);
        }

        else
        {
          v41 = (v38 * *(v36 + 108)) >> *(v36 + 112);
          if (v41 >= *(v39 + 20) - 1)
          {
            LODWORD(v41) = *(v39 + 20) - 1;
          }

          v40 = (*(v39 + 8 * v37 + 24) + 8 * v41);
        }

        v42 = *v40;
        v43 = HIDWORD(v42);
        if (a2 >= v42)
        {
          v44 = (a1 + v42);
        }

        else
        {
          v44 = 0;
        }

        if (a2 - v42 < HIDWORD(v42))
        {
          v43 = a2 - v42;
        }

        v34 = a2 >= v42;
        v45 = a1 + v42 + v43;
        if (!v34)
        {
          v45 = 0;
        }

        v159 = v44;
        v160 = v45;
      }

      v46 = *(a6 + 8);
      if (v46)
      {
        v47 = *(a11 + 24);
        v48 = (HIDWORD(v47) * v130) + 4 * v21;
        v49 = *(*(v46 + 40) + 8 * *(a11 + 60));
        if (*(v49 + 12) - 1 < v48)
        {
          v48 = *(v49 + 12) - 1;
        }

        if (*(v46 + 104) == 1)
        {
          v50 = (*(v49 + 8 * v47 + 24) + 8 * v48);
        }

        else
        {
          v52 = (v48 * *(v46 + 108)) >> *(v46 + 112);
          if (v52 >= *(v49 + 20) - 1)
          {
            LODWORD(v52) = *(v49 + 20) - 1;
          }

          v50 = (*(v49 + 8 * v47 + 24) + 8 * v52);
        }

        v53 = *v50;
        v54 = HIDWORD(*v50);
        v55 = a1 + *v50;
        v56 = a2 - *v50;
        if (a2 >= *v50)
        {
          v51 = (a1 + v53);
        }

        else
        {
          v51 = 0;
        }

        if (v56 < HIDWORD(v53))
        {
          v54 = a2 - v53;
        }

        v34 = a2 >= v53;
        v57 = v55 + v54;
        if (!v34)
        {
          v57 = 0;
        }

        v156 = v51;
        v157 = v57;
      }

      else
      {
        v51 = v156;
      }

      v58 = (a14 + a17);
      v59 = (a14 + a17 + a17);
      v60 = &v59->i8[a17];
      if (!v161 || !v159 || !v51)
      {
        goto LABEL_95;
      }

      v61 = a16;
      if (!a16)
      {
        break;
      }

      if (v21 == v23[2])
      {
        v62 = v23[3] + 1;
        v63 = a14;
        a14 = (a14 + a17);
        v58 = v59;
        v59 = (v59 + a17);
        do
        {
          v60 = v59;
          v59 = v58;
          v58 = a14;
          a14 = v63;
          v63 = a16;
          --v62;
        }

        while (v62);
      }

      if (v21 != v22)
      {
        break;
      }

      v64 = v23[7];
      if (v64 != 1)
      {
        if (v64 != 2)
        {
          if (v64 != 3)
          {
            break;
          }

          v58 = a16;
        }

        v59 = a16;
      }

LABEL_67:
      v65 = *v23;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v161, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v159, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v156, v65);
      v23 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v161, a7, v155);
        *v142 = v155[1];
        v139 = v155[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a8, v154);
        v66 = &v158;
        v67 = vld1q_dup_s16(v66);
        *&v142[16] = v67;
        v133 = v154[1];
        v136 = v154[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a10, &v152);
        v23 = a12;
        v68.i32[0] = 0;
        v166.val[0] = vqtbl2q_s8(*v142, xmmword_296B6EE70);
        v173.val[0] = v133;
        v69 = v136;
        v70 = v152;
        v173.val[1] = v153;
        v166.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF40);
        v71 = vqtbl2q_s8(*v142, xmmword_296B6EE90);
        v72 = vqtbl2q_s8(v173, xmmword_296B6EF50);
        v170.val[0] = vqtbl2q_s8(*v142, xmmword_296B6EEA0);
        v170.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF60);
        v179.val[0] = v133;
        v179.val[1] = v153;
        v173.val[0] = vqtbl2q_s8(*v142, xmmword_296B6EEB0);
        v173.val[1] = vqtbl2q_s8(v179, xmmword_296B6EF70);
        v73 = vqtbl2q_s8(v166, xmmword_296B6EDD0);
        v74 = vqtbl2q_s8(*v71.i8, xmmword_296B6EDD0);
        v75 = vqtbl2q_s8(v170, xmmword_296B6EDD0);
        v76 = vqtbl2q_s8(v173, xmmword_296B6EDD0);
        if (a12[4] == v65)
        {
          v77 = 4 - a12[5];
        }

        else
        {
          v77 = 4;
        }

        v78 = a12[1];
        v71.i32[0] = v78 & 2;
        v79 = vdupq_lane_s32(*&vceqq_s32(v71, v68), 0);
        v80 = vbslq_s8(v79, v76, v75);
        v81 = vbslq_s8(v79, v75, v76);
        v82 = vbslq_s8(v79, v74, v73);
        v83 = vbslq_s8(v79, v73, v74);
        v180.val[0] = v139;
        v180.val[1] = *&v142[16];
        v171.val[0] = vqtbl2q_s8(v180, xmmword_296B6EEA0);
        v171.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF60);
        v84 = vqtbl2q_s8(v171, xmmword_296B6EDD0);
        v171.val[0] = vqtbl2q_s8(v180, xmmword_296B6EEB0);
        v171.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF70);
        v171.val[0] = vqtbl2q_s8(v171, xmmword_296B6EDD0);
        v85 = vbslq_s8(v79, v171.val[0], v84);
        v86 = vbslq_s8(v79, v84, v171.val[0]);
        v175.val[0] = vqtbl2q_s8(v180, xmmword_296B6EE70);
        v175.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF40);
        v171.val[0] = vqtbl2q_s8(v175, xmmword_296B6EDD0);
        v175.val[0] = vqtbl2q_s8(v180, xmmword_296B6EE90);
        v175.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF50);
        v175.val[0] = vqtbl2q_s8(v175, xmmword_296B6EDD0);
        v87 = vbslq_s8(v79, v175.val[0], v171.val[0]);
        v88 = vbslq_s8(v79, v171.val[0], v175.val[0]);
        if ((v78 & 2) != 0)
        {
          v77 -= 2;
        }

        if (v78)
        {
          v89 = vextq_s8(v87, v88, 8uLL).u64[0];
          v88 = vextq_s8(v88, v87, 8uLL);
          v90 = vextq_s8(v85, v86, 8uLL).u64[0];
          v86 = vextq_s8(v86, v85, 8uLL);
          v91 = vextq_s8(v82, v83, 8uLL).u64[0];
          v83 = vextq_s8(v83, v82, 8uLL);
          v92 = vextq_s8(v80, v81, 8uLL).u64[0];
          --v77;
          v81 = vextq_s8(v81, v80, 8uLL);
          v87.i64[0] = v89;
          v85.i64[0] = v90;
          v82.i64[0] = v91;
          v80.i64[0] = v92;
        }

        if (v77 <= 1)
        {
          v93 = 0;
        }

        else
        {
          *a14 = v88;
          *v58 = v86;
          v77 -= 2;
          v88.i64[0] = v87.i64[0];
          v86.i64[0] = v85.i64[0];
          *v59 = v83;
          v83.i64[0] = v82.i64[0];
          v61->val[0] = v81;
          v81.i64[0] = v80.i64[0];
          v93 = 16;
        }

        if (v77 >= 1)
        {
          *(a14->i64 + v93) = v88.i64[0];
          *(v58->i64 + v93) = v86.i64[0];
          *(v59->i64 + v93) = v83.i64[0];
          *(v61->val[0].i64 + v93) = v81.i64[0];
          v93 |= 8uLL;
        }

        v94 = a12[4];
        if (v94 == v65)
        {
          goto LABEL_95;
        }

        a14 = (a14 + v93);
        v58 = (v58 + v93);
        v59 = (v59 + v93);
        v61 = (v61 + v93);
        ++v65;
      }

      else
      {
        v94 = a12[4];
      }

      v95 = v23[5];
      v96 = v95 != 0;
      v127 = v21;
      if (v94 != 0 || !v96)
      {
        v97 = v94 - v96;
        if (v65 <= v97)
        {
          v98 = v97 - v65 + 1;
          v99 = a7;
          v100 = a8;
          do
          {
            v101 = v61;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v161, v99, v151);
            v140 = v151[0];
            v143.val[0] = v151[1];
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, v100, v150);
            v102 = &v158;
            v103 = vld1q_dup_s16(v102);
            v143.val[1] = v103;
            v137 = v150[0];
            v134 = v150[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a10, v149);
            v163.val[0] = vqtbl2q_s8(v143, xmmword_296B6EEA0);
            v177.val[0] = v134;
            v178.val[0] = v137;
            v178.val[1] = v149[0];
            v177.val[1] = v149[1];
            v163.val[1] = vqtbl2q_s8(v177, xmmword_296B6EF60);
            v163.val[0] = vqtbl2q_s8(v163, xmmword_296B6EDD0);
            v163.val[1] = vqtbl2q_s8(v143, xmmword_296B6EEB0);
            v104 = vqtbl2q_s8(v177, xmmword_296B6EF70);
            v163.val[1] = vqtbl2q_s8(*(&v163 + 16), xmmword_296B6EDD0);
            v167.val[0] = vqtbl2q_s8(v143, xmmword_296B6EE70);
            v167.val[1] = vqtbl2q_s8(v177, xmmword_296B6EF40);
            v167.val[0] = vqtbl2q_s8(v167, xmmword_296B6EDD0);
            v167.val[1] = vqtbl2q_s8(v143, xmmword_296B6EE90);
            v105 = vqtbl2q_s8(v177, xmmword_296B6EF50);
            v177.val[0] = v140;
            v177.val[1] = v143.val[1];
            v172.val[0] = vqtbl2q_s8(v177, xmmword_296B6EEA0);
            v172.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF60);
            v172.val[0] = vqtbl2q_s8(v172, xmmword_296B6EDD0);
            v172.val[1] = vqtbl2q_s8(v177, xmmword_296B6EE70);
            v106 = vqtbl2q_s8(v178, xmmword_296B6EF40);
            v174.val[0] = vqtbl2q_s8(v177, xmmword_296B6EEB0);
            v176.val[0] = vqtbl2q_s8(v177, xmmword_296B6EE90);
            v176.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF50);
            *a14 = vqtbl2q_s8(*(&v172 + 16), xmmword_296B6EDD0);
            a14[1] = vqtbl2q_s8(v176, xmmword_296B6EDD0);
            a14 += 2;
            v174.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF70);
            *v58 = v172.val[0];
            v58[1] = vqtbl2q_s8(v174, xmmword_296B6EDD0);
            v58 += 2;
            *v59 = v167.val[0];
            v59[1] = vqtbl2q_s8(*(&v167 + 16), xmmword_296B6EDD0);
            v59 += 2;
            ++v61;
            *v101 = v163;
            --v98;
          }

          while (v98);
          v23 = a12;
          v95 = a12[5];
          a8 = v100;
          a7 = v99;
          a6 = v126;
        }
      }

      if (v95)
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v161, a7, v148);
        v141 = v148[0];
        v144 = v148[1];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a8, v147);
        v107 = &v158;
        v108 = vld1q_dup_s16(v107);
        v145 = v108;
        v138 = v147[0];
        v135 = v147[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a10, v146);
        v109 = v135;
        v110 = v144;
        v111 = v145;
        v112 = v138;
        v113 = v141;
        v23 = a12;
        v164.val[0] = vqtbl2q_s8(*v110.i8, xmmword_296B6EEA0);
        v114 = v146[0];
        v115 = v146[1];
        v164.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EF60);
        v116 = vqtbl2q_s8(v164, xmmword_296B6EDD0);
        v164.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EE70);
        v117 = vqtbl2q_s8(*v109.i8, xmmword_296B6EF40);
        v118 = vqtbl2q_s8(*(&v164 + 16), xmmword_296B6EDD0);
        v119 = v145;
        v168.val[0] = vqtbl2q_s8(*v113.i8, xmmword_296B6EEA0);
        v168.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EF60);
        v120 = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v168.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EE70);
        v121 = vqtbl2q_s8(*v112.i8, xmmword_296B6EF40);
        v122 = vqtbl2q_s8(*(&v168 + 16), xmmword_296B6EDD0);
        v123 = 4 - a12[5];
        if ((v123 & 2) != 0)
        {
          *a14 = v122;
          *v58 = v120;
          *v59 = v118;
          v61->val[0] = v116;
          v21 = v127;
          if (v123)
          {
            v165.val[0] = vqtbl2q_s8(*v110.i8, xmmword_296B6EEB0);
            v165.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EF70);
            v165.val[0].i64[0] = vqtbl2q_s8(v165, xmmword_296B6EDD0).u64[0];
            v165.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EE90);
            v124 = vqtbl2q_s8(*v109.i8, xmmword_296B6EF50);
            v169.val[0] = vqtbl2q_s8(*v113.i8, xmmword_296B6EEB0);
            v169.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EF70);
            v169.val[0].i64[0] = vqtbl2q_s8(v169, xmmword_296B6EDD0).u64[0];
            v169.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EE90);
            v125 = vqtbl2q_s8(*v112.i8, xmmword_296B6EF50);
            a14[1].i64[0] = vqtbl2q_s8(*(&v169 + 16), xmmword_296B6EDD0).u64[0];
            v58[1].i64[0] = v169.val[0].i64[0];
            v59[1].i64[0] = vqtbl2q_s8(*(&v165 + 16), xmmword_296B6EDD0).u64[0];
            v61->val[1].i64[0] = v165.val[0].i64[0];
          }

          goto LABEL_95;
        }

        a14->i64[0] = v122.i64[0];
        v58->i64[0] = v120.i64[0];
        v59->i64[0] = v118.i64[0];
        v61->val[0].i64[0] = v116.i64[0];
      }

      v21 = v127;
LABEL_95:
      a14 = (v60->val + a17);
      v22 = v23[6];
      v34 = v21++ >= v22;
      if (v34)
      {
        return result;
      }
    }

    v61 = v60;
    goto LABEL_67;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a4;
  v22 = a11[3];
  v23 = a11[7].u32[1];
  v24 = *(a3 + 8);
  v25 = v24[6];
  v26 = *(*(*&v24[5] + 8 * v23) + 16);
  v27 = *(a4 + 8);
  v28 = v27[6];
  v29 = *(*(*&v27[5] + 8 * v23) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(v268, a5);
  v36 = a12[2];
  v37 = a12[6];
  if (v36 <= v37)
  {
    v38 = a3;
    v40 = 4 * vmin_u32(vmls_s32(v26, v25, v22), v25).u32[0];
    v41 = 4 * vmin_u32(vmls_s32(v29, v28, v22), v28).u32[0];
    v42 = *(a6 + 8);
    v43 = v42[5];
    v44 = 4 * vmin_u32(vmls_s32(*(*(v43 + 8 * a11[7].u32[1]) + 16), v42[6], a11[3]), v42[6]).u32[0];
    v45 = *(a13 + 60);
    v46 = vld1q_dup_f32(v268);
    v266 = a6;
    v267 = a1;
    v264 = a3;
    v265 = v18;
    while (1)
    {
      v47 = *(v38 + 8);
      if (v47)
      {
        v48 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
        v49 = *(v48 + 12) - 1;
        if (v49 >= (HIDWORD(*&a11[3]) * v45) + 4 * v36)
        {
          v49 = (HIDWORD(*&a11[3]) * v45) + 4 * v36;
        }

        v50 = v48 + 8 * *&a11[3];
        if (*(v47 + 104) == 1)
        {
          v51 = (*(v50 + 24) + 8 * v49);
        }

        else
        {
          v52 = (v49 * *(v47 + 108)) >> *(v47 + 112);
          v53 = *(v48 + 20) - 1;
          if (v52 >= v53)
          {
            LODWORD(v52) = v53;
          }

          v51 = (*(v50 + 24) + 8 * v52);
        }

        v54 = *v51;
        if (a2 <= v54)
        {
          v33 = 0;
          v43 = 0;
        }

        else
        {
          v55 = v54;
          if (a2 - v54 >= HIDWORD(v54))
          {
            v56 = HIDWORD(v54);
          }

          else
          {
            v56 = a2 - v54;
          }

          v33 = (v55 + a1);
          v43 = v56 + v55 + a1;
        }
      }

      v57 = *(v18 + 8);
      if (v57)
      {
        v58 = *(*(v57 + 40) + 8 * a11[7].u32[1]);
        v59 = *(v58 + 12) - 1;
        if (v59 >= (HIDWORD(*&a11[3]) * v45) + 4 * v36)
        {
          v59 = (HIDWORD(*&a11[3]) * v45) + 4 * v36;
        }

        v60 = v58 + 8 * *&a11[3];
        if (*(v57 + 104) == 1)
        {
          v61 = (*(v60 + 24) + 8 * v59);
        }

        else
        {
          v62 = (v59 * *(v57 + 108)) >> *(v57 + 112);
          v63 = *(v58 + 20) - 1;
          if (v62 >= v63)
          {
            LODWORD(v62) = v63;
          }

          v61 = (*(v60 + 24) + 8 * v62);
        }

        v64 = *v61;
        if (a2 <= v64)
        {
          v34 = 0;
          result = 0;
        }

        else
        {
          v65 = v64;
          if (a2 - v64 >= HIDWORD(v64))
          {
            v66 = HIDWORD(v64);
          }

          else
          {
            v66 = a2 - v64;
          }

          v34 = (v65 + a1);
          result = (v66 + v65 + a1);
        }
      }

      v67 = *(a6 + 8);
      if (v67)
      {
        v68 = *(*(v67 + 40) + 8 * a11[7].u32[1]);
        v69 = *(v68 + 12) - 1;
        if (v69 >= (HIDWORD(*&a11[3]) * v45) + 4 * v36)
        {
          v69 = (HIDWORD(*&a11[3]) * v45) + 4 * v36;
        }

        v70 = v68 + 8 * *&a11[3];
        if (*(v67 + 104) == 1)
        {
          v71 = (*(v70 + 24) + 8 * v69);
        }

        else
        {
          v72 = (v69 * *(v67 + 108)) >> *(v67 + 112);
          v73 = *(v68 + 20) - 1;
          if (v72 >= v73)
          {
            LODWORD(v72) = v73;
          }

          v71 = (*(v70 + 24) + 8 * v72);
        }

        v74 = *v71;
        if (a2 <= v74)
        {
          v32 = 0;
          v31 = 0;
        }

        else
        {
          v75 = v74;
          if (a2 - v74 >= HIDWORD(v74))
          {
            v76 = HIDWORD(v74);
          }

          else
          {
            v76 = a2 - v74;
          }

          v32 = (v75 + a1);
          v31 = v76 + v75 + a1;
        }
      }

      v77 = a14 + a17;
      v78 = a14 + a17 + a17;
      v79 = v78 + a17;
      if (!v33 || !v34 || !v32)
      {
        goto LABEL_235;
      }

      if (a16)
      {
        if (v36 == a12[2])
        {
          v80 = a12[3] + 1;
          v81 = v78 + a17;
          v82 = a14 + a17 + a17;
          v83 = a14 + a17;
          v84 = a14;
          do
          {
            a14 = v84;
            v77 = v83;
            v78 = v82;
            v79 = v81;
            v81 = v82;
            v82 = v83;
            v83 = v84;
            v84 = a16;
            --v80;
          }

          while (v80);
        }

        if (v36 == v37)
        {
          v85 = a12[7];
          if (v85 == 1)
          {
            goto LABEL_58;
          }

          if (v85 == 2)
          {
            goto LABEL_57;
          }

          if (v85 == 3)
          {
            break;
          }
        }
      }

      v86 = v79;
LABEL_60:
      v87 = *a12;
      v33 += v87;
      if (&v33[-1].u64[1] + 7 >= v43)
      {
        return result;
      }

      v34 += v87;
      if ((v34 - 1) >= result)
      {
        return result;
      }

      v32 += v87;
      if (&v32[-1].u64[1] + 7 >= v31)
      {
        return result;
      }

      v88 = a12[1];
      if (v88)
      {
        if (&v33[1] <= v43)
        {
          v89 = *v33;
        }

        else
        {
          v89 = 0uLL;
        }

        v91 = 0uLL;
        v92 = 0uLL;
        v93 = 0uLL;
        v94 = (v33 + v40);
        if (v33[1].u64 + v40 <= v43)
        {
          v91 = *v94;
        }

        v95 = (v94 + v40);
        if (&v95[1] <= v43)
        {
          v92 = *v95;
        }

        v96 = (v95 + v40);
        if (&v96[1] <= v43)
        {
          v93 = *v96;
        }

        if (v34 + 1 <= result)
        {
          v97 = *v34;
        }

        else
        {
          v97 = 0uLL;
        }

        v98 = 0uLL;
        v99 = 0uLL;
        v100 = 0uLL;
        v101 = (v34 + v41);
        if ((v34 + v41 + 16) <= result)
        {
          v98 = *v101;
        }

        v102 = (v101 + v41);
        if (&v102[1] <= result)
        {
          v99 = *v102;
        }

        v103 = (v102 + v41);
        if (&v103[1] <= result)
        {
          v100 = *v103;
        }

        if (&v32[1] <= v31)
        {
          v104 = *v32;
        }

        else
        {
          v104 = 0uLL;
        }

        v105 = 0uLL;
        v106 = 0uLL;
        v107 = 0uLL;
        v108 = (v32 + v44);
        if (v32[1].u64 + v44 <= v31)
        {
          v105 = *v108;
        }

        v109 = (v108 + v44);
        if (&v109[1] <= v31)
        {
          v106 = *v109;
        }

        v110 = (v109 + v44);
        if (&v110[1] <= v31)
        {
          v107 = *v110;
        }

        v35.i32[0] = 0;
        v111 = vuzp1q_s32(v99, v106);
        v112 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v92, v46)), vextq_s8(v99, v111, 0xCuLL));
        v113 = v46;
        v113.i32[0] = v92.i32[2];
        v114 = vtrn2q_s32(vrev64q_s32(v113), v111);
        v115 = v99;
        v115.i32[3] = v106.i32[1];
        v116 = vuzp2q_s32(v92, v46);
        v117 = vtrn2q_s32(vrev64q_s32(v116), v115);
        v118 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v116, v92)), vuzp2q_s32(v99, v106));
        v119 = vuzp1q_s32(v100, v107);
        v120 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v93, v46)), vextq_s8(v100, v119, 0xCuLL));
        v121 = v46;
        v121.i32[0] = v93.i32[2];
        v122 = vtrn2q_s32(vrev64q_s32(v121), v119);
        v123 = v100;
        v123.i32[3] = v107.i32[1];
        v124 = vuzp2q_s32(v93, v46);
        v125 = vtrn2q_s32(vrev64q_s32(v124), v123);
        v126 = vrev64q_s32(vtrn2q_s32(v124, v93));
        v127 = vtrn2q_s32(v126, vuzp2q_s32(v100, v107));
        if (a12[4] == v87)
        {
          v128 = 4 - a12[5];
        }

        else
        {
          v128 = 4;
        }

        v126.i32[0] = a12[1] & 2;
        v129 = vdupq_lane_s32(*&vceqq_s32(v126, v35), 0);
        v130 = vbslq_s8(v129, v125, v127);
        v131 = vbslq_s8(v129, v120, v122);
        v132 = vbslq_s8(v129, v117, v118);
        v133 = vbslq_s8(v129, v112, v114);
        v134 = v98;
        v134.i32[3] = v105.i32[1];
        v135 = vuzp2q_s32(v91, v46);
        v136 = vtrn2q_s32(vrev64q_s32(v135), v134);
        v137 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v135, v91)), vuzp2q_s32(v98, v105));
        v138 = vbslq_s8(v129, v136, v137);
        v139 = vuzp1q_s32(v98, v105);
        v140 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v91, v46)), vextq_s8(v98, v139, 0xCuLL));
        v141 = v46;
        v141.i32[0] = v91.i32[2];
        v142 = vtrn2q_s32(vrev64q_s32(v141), v139);
        v143 = vbslq_s8(v129, v140, v142);
        v144 = v97;
        v144.i32[3] = v104.i32[1];
        v145 = vuzp2q_s32(v89, v46);
        v146 = vtrn2q_s32(vrev64q_s32(v145), v144);
        v147 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v145, v89)), vuzp2q_s32(v97, v104));
        v148 = vbslq_s8(v129, v146, v147);
        v149 = vuzp1q_s32(v97, v104);
        v150 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v89, v46)), vextq_s8(v97, v149, 0xCuLL));
        v151 = v46;
        v151.i32[0] = v89.i32[2];
        v152 = vrev64q_s32(v151);
        v153 = vtrn2q_s32(v152, v149);
        if ((v88 & 2) != 0)
        {
          v128 -= 2;
        }

        v154 = v88 & 1;
        v155 = v128 - v154;
        v152.i32[0] = v154;
        v35 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v152, v35)), 0);
        v156 = vbslq_s8(v35, v148, vbslq_s8(v129, v150, v153));
        v157 = vbslq_s8(v35, v138, v143);
        v158 = vbslq_s8(v35, v132, v133);
        v159 = vbslq_s8(v35, v130, v131);
        if (v128 - v154 <= 1)
        {
          v164 = 0;
        }

        else
        {
          v160 = vbslq_s8(v129, v122, v120);
          v161 = vbslq_s8(v129, v114, v112);
          v162 = vbslq_s8(v129, v142, v140);
          v163 = vbslq_s8(v129, v153, v150);
          *a14 = v156;
          *(a14 + 16) = vbslq_s8(v35, v163, v148);
          *v77 = v157;
          *(v77 + 16) = vbslq_s8(v35, v162, v138);
          *v78 = v158;
          *(v78 + 16) = vbslq_s8(v35, v161, v132);
          v155 -= 2;
          v156 = vbslq_s8(v35, vbslq_s8(v129, v147, v146), v163);
          *v86 = v159;
          *(v86 + 16) = vbslq_s8(v35, v160, v130);
          v157 = vbslq_s8(v35, vbslq_s8(v129, v137, v136), v162);
          v158 = vbslq_s8(v35, vbslq_s8(v129, v118, v117), v161);
          v159 = vbslq_s8(v35, vbslq_s8(v129, v127, v125), v160);
          v164 = 32;
        }

        a1 = v267;
        if (v155 >= 1)
        {
          *(v164 + a14) = v156;
          *(v164 + v77) = v157;
          *(v164 + v78) = v158;
          *(v164 + v86) = v159;
          v164 |= 0x10uLL;
        }

        ++v33;
        ++v34;
        ++v32;
        v90 = a12[4];
        if (v90 == v87)
        {
          goto LABEL_235;
        }

        a14 += v164;
        v77 += v164;
        v78 += v164;
        v86 += v164;
        ++v87;
      }

      else
      {
        v90 = a12[4];
      }

      v165 = a12[5];
      v166 = v165 != 0;
      if (v90 == 0 && v166 || (v167 = v90 - v166, v87 > v167))
      {
        v210 = v86;
        v209 = v78;
        v208 = v77;
        v207 = a14;
        if (v165)
        {
          goto LABEL_144;
        }

LABEL_142:
        v18 = v265;
        a6 = v266;
        v38 = v264;
        a1 = v267;
        goto LABEL_235;
      }

      v168 = v167 - v87 + 1;
      do
      {
        v169 = 0uLL;
        if (v33)
        {
          if (&v33[1] <= v43)
          {
            v170 = *v33;
          }

          else
          {
            v170 = 0uLL;
          }

          v171 = 0uLL;
          v172 = 0uLL;
          v173 = 0uLL;
          v181 = (v33 + v40);
          if (v33[1].u64 + v40 <= v43)
          {
            v171 = *v181;
          }

          v182 = (v181 + v40);
          if (&v182[1] <= v43)
          {
            v172 = *v182;
          }

          v183 = (v182 + v40);
          if (&v183[1] <= v43)
          {
            v173 = *v183;
          }

          ++v33;
          if (!v34)
          {
LABEL_111:
            v174 = 0uLL;
            v175 = 0uLL;
            v176 = 0uLL;
            if (!v32)
            {
              goto LABEL_112;
            }

            goto LABEL_130;
          }
        }

        else
        {
          v170 = 0uLL;
          v171 = 0uLL;
          v172 = 0uLL;
          v173 = 0uLL;
          if (!v34)
          {
            goto LABEL_111;
          }
        }

        if (v34 + 1 <= result)
        {
          v169 = *v34;
        }

        v174 = 0uLL;
        v175 = 0uLL;
        v176 = 0uLL;
        v184 = (v34 + v41);
        if ((v34 + v41 + 16) <= result)
        {
          v174 = *v184;
        }

        v185 = (v184 + v41);
        if (&v185[1] <= result)
        {
          v175 = *v185;
        }

        v186 = (v185 + v41);
        if (&v186[1] <= result)
        {
          v176 = *v186;
        }

        ++v34;
        if (!v32)
        {
LABEL_112:
          v177 = 0uLL;
          v178 = 0uLL;
          v179 = 0uLL;
          v180 = 0uLL;
          goto LABEL_140;
        }

LABEL_130:
        if (&v32[1] <= v31)
        {
          v177 = *v32;
        }

        else
        {
          v177 = 0uLL;
        }

        v178 = 0uLL;
        v179 = 0uLL;
        v180 = 0uLL;
        v187 = (v32 + v44);
        if (v32[1].u64 + v44 <= v31)
        {
          v178 = *v187;
        }

        v188 = (v187 + v44);
        if (&v188[1] <= v31)
        {
          v179 = *v188;
        }

        v189 = (v188 + v44);
        if (&v189[1] <= v31)
        {
          v180 = *v189;
        }

        ++v32;
LABEL_140:
        v190 = v176;
        v190.i32[3] = v180.i32[1];
        v191 = vuzp2q_s32(v173, v46);
        v192 = v175;
        v192.i32[3] = v179.i32[1];
        v35 = vtrn2q_s32(vrev64q_s32(v191), v190);
        v193 = vuzp2q_s32(v172, v46);
        v194 = vuzp1q_s32(v174, v178);
        v195 = v46;
        v195.i32[0] = v171.i32[2];
        v196 = v174;
        v196.i32[3] = v178.i32[1];
        v197 = vuzp2q_s32(v171, v46);
        v198 = vuzp2q_s32(v170, v46);
        v199 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v198, v170)), vuzp2q_s32(v169, v177));
        v200 = vuzp1q_s32(v169, v177);
        v201 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v170, v46)), vextq_s8(v169, v200, 0xCuLL));
        v169.i32[3] = v177.i32[1];
        v202 = v46;
        v202.i32[0] = v170.i32[2];
        v203 = vuzp1q_s32(v176, v180);
        *a14 = v201;
        *(a14 + 16) = vtrn2q_s32(vrev64q_s32(v198), v169);
        v204 = v46;
        v205 = vuzp1q_s32(v175, v179);
        *(a14 + 32) = vtrn2q_s32(vrev64q_s32(v202), v200);
        *(a14 + 48) = v199;
        v206 = v46;
        v206.i32[0] = v172.i32[2];
        v207 = (a14 + 64);
        v208 = (v77 + 64);
        *v77 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v171, v46)), vextq_s8(v174, v194, 0xCuLL));
        *(v77 + 16) = vtrn2q_s32(vrev64q_s32(v197), v196);
        *(v77 + 32) = vtrn2q_s32(vrev64q_s32(v195), v194);
        *(v77 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v197, v171)), vuzp2q_s32(v174, v178));
        v209 = (v78 + 64);
        *v78 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v172, v46)), vextq_s8(v175, v205, 0xCuLL));
        *(v78 + 16) = vtrn2q_s32(vrev64q_s32(v193), v192);
        *(v78 + 32) = vtrn2q_s32(vrev64q_s32(v206), v205);
        *(v78 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v193, v172)), vuzp2q_s32(v175, v179));
        v210 = (v86 + 64);
        v204.i32[0] = v173.i32[2];
        *(v86 + 32) = vtrn2q_s32(vrev64q_s32(v204), v203);
        *(v86 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v191, v173)), vuzp2q_s32(v176, v180));
        a14 += 64;
        *v86 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v173, v46)), vextq_s8(v176, v203, 0xCuLL));
        *(v86 + 16) = v35;
        v77 += 64;
        v78 += 64;
        v86 += 64;
        --v168;
      }

      while (v168);
      v165 = a12[5];
      if (!v165)
      {
        goto LABEL_142;
      }

LABEL_144:
      v211 = 4 - v165;
      if (v36 == a12[6])
      {
        v212 = 4 - a12[7];
      }

      else
      {
        v212 = 4;
      }

      v213 = 0uLL;
      if (!v33)
      {
        v217 = 0uLL;
        v218 = 0uLL;
        v219 = 0uLL;
        v220 = 0uLL;
        if (v34)
        {
          goto LABEL_177;
        }

LABEL_152:
        v221 = 0uLL;
        v222 = 0uLL;
        v223 = 0uLL;
        if (v32)
        {
          goto LABEL_203;
        }

LABEL_153:
        v224 = 0uLL;
        v225 = 0uLL;
        v226 = 0uLL;
        v227 = 0uLL;
        a1 = v267;
        goto LABEL_230;
      }

      if (v212 < 2)
      {
        v215 = 0;
        v214 = v33;
        v216 = v33;
      }

      else
      {
        v214 = (v33->i64 + v40);
        if (v212 == 2)
        {
          v215 = 0;
          v216 = (v33->i64 + v40);
        }

        else
        {
          v216 = (v33->i64 + v40);
          v214 = (v214 + v40);
          if (v212 <= 3)
          {
            v215 = 0;
          }

          else
          {
            v215 = v40;
          }
        }
      }

      v228 = (v214 + v215);
      v218 = 0uLL;
      v219 = 0uLL;
      v220 = 0uLL;
      v217 = 0uLL;
      if ((4 - v165))
      {
        if (v33 + 4 * v211 <= v43)
        {
          v217.i32[0] = v33->i32[3 - v165];
        }

        if (v216 + 4 * v211 <= v43)
        {
          v218.i32[0] = *(v216 + 3 - v165);
        }

        if (v214 + 4 * v211 <= v43)
        {
          v219.i32[0] = *(v214 + 3 - v165);
        }

        if (v228 + 4 * v211 <= v43)
        {
          v220.i32[0] = *(v228 + 3 - v165);
        }
      }

      if (((4 - v165) & 2) != 0)
      {
        v217 = vextq_s8(v217, v217, 8uLL);
        if (&v33->u64[1] <= v43)
        {
          v229.i64[0] = v33->i64[0];
          v229.i64[1] = vextq_s8(v217, v217, 8uLL).u64[0];
          v217 = v229;
        }

        v218 = vextq_s8(v218, v218, 8uLL);
        if ((v216 + 1) <= v43)
        {
          v230.i64[0] = *v216;
          v230.i64[1] = vextq_s8(v218, v218, 8uLL).u64[0];
          v218 = v230;
        }

        v219 = vextq_s8(v219, v219, 8uLL);
        if ((v214 + 1) <= v43)
        {
          v231.i64[0] = *v214;
          v231.i64[1] = vextq_s8(v219, v219, 8uLL).u64[0];
          v219 = v231;
        }

        v220 = vextq_s8(v220, v220, 8uLL);
        if ((v228 + 1) <= v43)
        {
          v232.i64[0] = *v228;
          v232.i64[1] = vextq_s8(v220, v220, 8uLL).u64[0];
          v220 = v232;
        }
      }

      v33 = (v33 + 4 * v211);
      if (!v34)
      {
        goto LABEL_152;
      }

LABEL_177:
      if (v212 < 2)
      {
        v234 = 0;
        v233 = v34;
        v235 = v34;
      }

      else
      {
        v233 = (v34 + v41);
        if (v212 == 2)
        {
          v234 = 0;
          v235 = (v34 + v41);
        }

        else
        {
          v235 = (v34 + v41);
          v233 = (v233 + v41);
          if (v212 <= 3)
          {
            v234 = 0;
          }

          else
          {
            v234 = v41;
          }
        }
      }

      v236 = (v233 + v234);
      v221 = 0uLL;
      v222 = 0uLL;
      v223 = 0uLL;
      if ((4 - v165))
      {
        if ((v34 + 4 * v211) <= result)
        {
          v213.i32[0] = *(v34 + 3 - v165);
        }

        if ((v235 + 4 * v211) <= result)
        {
          v221.i32[0] = *(v235 + 3 - v165);
        }

        if ((v233 + 4 * v211) <= result)
        {
          v222.i32[0] = *(v233 + 3 - v165);
        }

        if ((v236 + 4 * v211) <= result)
        {
          v223.i32[0] = *(v236 + 3 - v165);
        }
      }

      if (((4 - v165) & 2) != 0)
      {
        v213 = vextq_s8(v213, v213, 8uLL);
        if ((v34 + 8) <= result)
        {
          v237.i64[0] = *v34;
          v237.i64[1] = vextq_s8(v213, v213, 8uLL).u64[0];
          v213 = v237;
        }

        v221 = vextq_s8(v221, v221, 8uLL);
        if (v235 + 1 <= result)
        {
          v238.i64[0] = *v235;
          v238.i64[1] = vextq_s8(v221, v221, 8uLL).u64[0];
          v221 = v238;
        }

        v222 = vextq_s8(v222, v222, 8uLL);
        if (v233 + 1 <= result)
        {
          v239.i64[0] = *v233;
          v239.i64[1] = vextq_s8(v222, v222, 8uLL).u64[0];
          v222 = v239;
        }

        v223 = vextq_s8(v223, v223, 8uLL);
        if (v236 + 1 <= result)
        {
          v240.i64[0] = *v236;
          v240.i64[1] = vextq_s8(v223, v223, 8uLL).u64[0];
          v223 = v240;
        }
      }

      v34 = (v34 + 4 * v211);
      if (!v32)
      {
        goto LABEL_153;
      }

LABEL_203:
      if (v212 < 2)
      {
        v242 = 0;
        v241 = v32;
        v243 = v32;
      }

      else
      {
        v241 = (v32->i64 + v44);
        if (v212 == 2)
        {
          v242 = 0;
          v243 = (v32->i64 + v44);
        }

        else
        {
          v243 = (v32->i64 + v44);
          v241 = (v241 + v44);
          if (v212 <= 3)
          {
            v242 = 0;
          }

          else
          {
            v242 = v44;
          }
        }
      }

      v244 = (v241 + v242);
      v225 = 0uLL;
      v226 = 0uLL;
      v227 = 0uLL;
      v224 = 0uLL;
      if ((4 - v165))
      {
        if (v32 + 4 * v211 <= v31)
        {
          v224.i32[0] = v32->i32[3 - v165];
        }

        if (v243 + 4 * v211 <= v31)
        {
          v225.i32[0] = *(v243 + 3 - v165);
        }

        if (v241 + 4 * v211 <= v31)
        {
          v226.i32[0] = *(v241 + 3 - v165);
        }

        if (v244 + 4 * v211 <= v31)
        {
          v227.i32[0] = *(v244 + 3 - v165);
        }
      }

      if (((4 - v165) & 2) != 0)
      {
        v224 = vextq_s8(v224, v224, 8uLL);
        a1 = v267;
        if (&v32->u64[1] <= v31)
        {
          v245.i64[0] = v32->i64[0];
          v245.i64[1] = vextq_s8(v224, v224, 8uLL).u64[0];
          v224 = v245;
        }

        v225 = vextq_s8(v225, v225, 8uLL);
        if ((v243 + 1) <= v31)
        {
          v246.i64[0] = *v243;
          v246.i64[1] = vextq_s8(v225, v225, 8uLL).u64[0];
          v225 = v246;
        }

        v226 = vextq_s8(v226, v226, 8uLL);
        if ((v241 + 1) <= v31)
        {
          v247.i64[0] = *v241;
          v247.i64[1] = vextq_s8(v226, v226, 8uLL).u64[0];
          v226 = v247;
        }

        v227 = vextq_s8(v227, v227, 8uLL);
        if ((v244 + 1) <= v31)
        {
          v248.i64[0] = *v244;
          v248.i64[1] = vextq_s8(v227, v227, 8uLL).u64[0];
          v227 = v248;
        }
      }

      else
      {
        a1 = v267;
      }

      v32 = (v32 + 4 * v211);
LABEL_230:
      v249 = vuzp1q_s32(v213, v224);
      v250 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v217, v46)), vextq_s8(v213, v249, 0xCuLL));
      v35 = vuzp1q_s32(v221, v225);
      v251 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v218, v46)), vextq_s8(v221, v35, 0xCuLL));
      v252 = vuzp1q_s32(v222, v226);
      v253 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v219, v46)), vextq_s8(v222, v252, 0xCuLL));
      v254 = vuzp1q_s32(v223, v227);
      v255 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v220, v46)), vextq_s8(v223, v254, 0xCuLL));
      if ((v211 & 2) != 0)
      {
        v213.i32[3] = v224.i32[1];
        v221.i32[3] = v225.i32[1];
        v222.i32[3] = v226.i32[1];
        v223.i32[3] = v227.i32[1];
        *v207 = v250;
        v207[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v217, v46)), v213);
        *v208 = v251;
        v208[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v218, v46)), v221);
        *v209 = v253;
        v209[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v219, v46)), v222);
        *v210 = v255;
        v210[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v220, v46)), v223);
        if (v211)
        {
          v256 = v46;
          v256.i32[0] = v217.i32[2];
          v257 = vtrn2q_s32(vrev64q_s32(v256), v249);
          v258 = v46;
          v258.i32[0] = v218.i32[2];
          v259 = vrev64q_s32(v258);
          v260 = v46;
          v260.i32[0] = v219.i32[2];
          v261 = vtrn2q_s32(vrev64q_s32(v260), v252);
          v262 = v46;
          v262.i32[0] = v220.i32[2];
          v207[2] = v257;
          v208[2] = vtrn2q_s32(v259, v35);
          v209[2] = v261;
          v210[2] = vtrn2q_s32(vrev64q_s32(v262), v254);
        }
      }

      else
      {
        *v207 = v250;
        *v208 = v251;
        *v209 = v253;
        *v210 = v255;
      }

      v18 = v265;
      a6 = v266;
      v38 = v264;
LABEL_235:
      a14 = v79 + a17;
      v37 = a12[6];
      if (v36++ >= v37)
      {
        return result;
      }
    }

    v77 = a16;
LABEL_57:
    v78 = a16;
LABEL_58:
    v86 = a16;
    goto LABEL_60;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v153, a3);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v152, a4);
  v20 = a12;
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v21 = a12[2];
  v22 = a12[6];
  if (v21 <= v22)
  {
    v23 = a17;
    v129 = *(a13 + 60);
    v127 = a6;
    while (1)
    {
      v25 = *(a5 + 8);
      if (v25)
      {
        v26 = *(a11 + 24);
        v27 = *(*(v25 + 40) + 8 * *(a11 + 60));
        v28 = *(v27 + 12) - 1;
        if (v28 >= (HIDWORD(v26) * v129) + 4 * v21)
        {
          v28 = (HIDWORD(*(a11 + 24)) * v129) + 4 * v21;
        }

        v29 = v27 + 8 * v26;
        if (*(v25 + 104) == 1)
        {
          v30 = (*(v29 + 24) + 8 * v28);
        }

        else
        {
          v31 = (v28 * *(v25 + 108)) >> *(v25 + 112);
          v32 = *(v27 + 20) - 1;
          if (v31 >= v32)
          {
            LODWORD(v31) = v32;
          }

          v30 = (*(v29 + 24) + 8 * v31);
        }

        v33 = *v30;
        v34 = HIDWORD(v33);
        if (a2 >= v33)
        {
          v35 = (a1 + v33);
        }

        else
        {
          v35 = 0;
        }

        if (a2 - v33 < HIDWORD(v33))
        {
          v34 = a2 - v33;
        }

        v36 = a2 >= v33;
        v37 = a1 + v33 + v34;
        if (!v36)
        {
          v37 = 0;
        }

        v150 = v35;
        v151 = v37;
      }

      v38 = *(a6 + 8);
      if (v38)
      {
        v39 = *(a11 + 24);
        v40 = *(*(v38 + 40) + 8 * *(a11 + 60));
        v41 = *(v40 + 12) - 1;
        if (v41 >= (HIDWORD(v39) * v129) + 4 * v21)
        {
          v41 = (HIDWORD(*(a11 + 24)) * v129) + 4 * v21;
        }

        v42 = v40 + 8 * v39;
        if (*(v38 + 104) == 1)
        {
          v43 = (*(v42 + 24) + 8 * v41);
        }

        else
        {
          v45 = (v41 * *(v38 + 108)) >> *(v38 + 112);
          v46 = *(v40 + 20) - 1;
          if (v45 >= v46)
          {
            LODWORD(v45) = v46;
          }

          v43 = (*(v42 + 24) + 8 * v45);
        }

        v47 = *v43;
        v48 = HIDWORD(*v43);
        v49 = a1 + *v43;
        v50 = a2 - *v43;
        if (a2 >= *v43)
        {
          v44 = (a1 + v47);
        }

        else
        {
          v44 = 0;
        }

        if (v50 < HIDWORD(v47))
        {
          v48 = a2 - v47;
        }

        v36 = a2 >= v47;
        v51 = v49 + v48;
        if (!v36)
        {
          v51 = 0;
        }

        v148 = v44;
        v149 = v51;
      }

      else
      {
        v44 = v148;
      }

      v52 = (a14 + v23);
      v53 = (a14 + v23 + v23);
      v54 = &v53->i8[v23];
      if (!v150 || !v44)
      {
        goto LABEL_76;
      }

      v55 = a16;
      if (!a16)
      {
        break;
      }

      if (v21 == v20[2])
      {
        v56 = v20[3] + 1;
        v57 = a14;
        a14 = (a14 + v23);
        v52 = v53;
        v53 = (v53 + v23);
        do
        {
          v54 = v53;
          v53 = v52;
          v52 = a14;
          a14 = v57;
          v57 = a16;
          --v56;
        }

        while (v56);
      }

      if (v21 != v22)
      {
        break;
      }

      v58 = v20[7];
      if (v58 != 1)
      {
        if (v58 != 2)
        {
          if (v58 != 3)
          {
            break;
          }

          v52 = a16;
        }

        v53 = a16;
      }

LABEL_50:
      v59 = *v20;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v150, v59);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v148, v59);
      v20 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        v60 = v153;
        v61 = vld1q_dup_s16(v60);
        v137 = v61;
        v62 = vld1q_dup_s16(&v152);
        v132 = v62;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v150, a9, v147);
        v140 = v147[1];
        v135 = v147[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v148, a10, v146);
        v20 = a12;
        v63.i32[0] = 0;
        v64 = v137;
        v65 = v140;
        v155.val[0] = vqtbl2q_s8(*v64.i8, xmmword_296B6EE70);
        v66 = v132;
        v67 = v146[1];
        v155.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF40);
        v68 = vqtbl2q_s8(v155, xmmword_296B6EDD0);
        v155.val[1] = vqtbl2q_s8(*v64.i8, xmmword_296B6EE90);
        v69 = vqtbl2q_s8(*v66.i8, xmmword_296B6EF50);
        v70 = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EDD0);
        v71 = vqtbl2q_s8(*v64.i8, xmmword_296B6EEA0);
        v72 = vqtbl2q_s8(*v66.i8, xmmword_296B6EF60);
        v73 = vqtbl2q_s8(*v71.i8, xmmword_296B6EDD0);
        v160.val[0] = vqtbl2q_s8(*v64.i8, xmmword_296B6EEB0);
        v160.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF70);
        v74 = vqtbl2q_s8(v160, xmmword_296B6EDD0);
        if (a12[4] == v59)
        {
          v75 = 4 - a12[5];
        }

        else
        {
          v75 = 4;
        }

        v76 = a12[1];
        v71.i32[0] = v76 & 2;
        v77 = vdupq_lane_s32(*&vceqq_s32(v71, v63), 0);
        v78 = vbslq_s8(v77, v74, v73);
        v79 = vbslq_s8(v77, v73, v74);
        v80 = vbslq_s8(v77, v70, v68);
        v81 = vbslq_s8(v77, v68, v70);
        v82 = v135;
        v161.val[0] = vqtbl2q_s8(*v64.i8, xmmword_296B6EEA0);
        v83 = v146[0];
        v161.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF60);
        v84 = vqtbl2q_s8(v161, xmmword_296B6EDD0);
        v161.val[0] = vqtbl2q_s8(*v64.i8, xmmword_296B6EEB0);
        v161.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF70);
        v161.val[0] = vqtbl2q_s8(v161, xmmword_296B6EDD0);
        v85 = vbslq_s8(v77, v161.val[0], v84);
        v86 = vbslq_s8(v77, v84, v161.val[0]);
        v165.val[0] = vqtbl2q_s8(*v64.i8, xmmword_296B6EE70);
        v165.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF40);
        v161.val[0] = vqtbl2q_s8(v165, xmmword_296B6EDD0);
        v165.val[0] = vqtbl2q_s8(*v64.i8, xmmword_296B6EE90);
        v165.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF50);
        v165.val[0] = vqtbl2q_s8(v165, xmmword_296B6EDD0);
        v87 = vbslq_s8(v77, v165.val[0], v161.val[0]);
        v88 = vbslq_s8(v77, v161.val[0], v165.val[0]);
        if ((v76 & 2) != 0)
        {
          v75 -= 2;
        }

        if (v76)
        {
          v89 = vextq_s8(v87, v88, 8uLL).u64[0];
          v88 = vextq_s8(v88, v87, 8uLL);
          v90 = vextq_s8(v85, v86, 8uLL).u64[0];
          v86 = vextq_s8(v86, v85, 8uLL);
          v91 = vextq_s8(v80, v81, 8uLL).u64[0];
          v81 = vextq_s8(v81, v80, 8uLL);
          v92 = vextq_s8(v78, v79, 8uLL).u64[0];
          --v75;
          v79 = vextq_s8(v79, v78, 8uLL);
          v87.i64[0] = v89;
          v85.i64[0] = v90;
          v80.i64[0] = v91;
          v78.i64[0] = v92;
        }

        if (v75 <= 1)
        {
          v93 = 0;
        }

        else
        {
          *a14 = v88;
          *v52 = v86;
          v75 -= 2;
          v88.i64[0] = v87.i64[0];
          v86.i64[0] = v85.i64[0];
          *v53 = v81;
          v81.i64[0] = v80.i64[0];
          v55->val[0] = v79;
          v79.i64[0] = v78.i64[0];
          v93 = 16;
        }

        if (v75 >= 1)
        {
          *(a14->i64 + v93) = v88.i64[0];
          *(v52->i64 + v93) = v86.i64[0];
          *(v53->i64 + v93) = v81.i64[0];
          *(v55->val[0].i64 + v93) = v79.i64[0];
          v93 |= 8uLL;
        }

        v94 = a12[4];
        if (v94 == v59)
        {
          goto LABEL_76;
        }

        a14 = (a14 + v93);
        v52 = (v52 + v93);
        v53 = (v53 + v93);
        v55 = (v55 + v93);
        ++v59;
      }

      else
      {
        v94 = a12[4];
      }

      v95 = v20[5];
      v96 = v95 != 0;
      if (v94 != 0 || !v96)
      {
        v97 = v94 - v96;
        if (v59 <= v97)
        {
          v98 = v97 - v59 + 1;
          do
          {
            v100 = v55;
            v99 = v153;
            v101 = vld1q_dup_s16(v99);
            v138.val[0] = v101;
            v102 = &v152;
            v103 = vld1q_dup_s16(v102);
            v133 = v103;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v150, a9, v145);
            v138.val[1] = v145[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v148, a10, v144);
            v154.val[0] = vqtbl2q_s8(v138, xmmword_296B6EEA0);
            v166.val[0] = v133;
            v166.val[1] = v144[1];
            v154.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF60);
            v154.val[0] = vqtbl2q_s8(v154, xmmword_296B6EDD0);
            v154.val[1] = vqtbl2q_s8(v138, xmmword_296B6EEB0);
            v104 = vqtbl2q_s8(v166, xmmword_296B6EF70);
            v154.val[1] = vqtbl2q_s8(*(&v154 + 16), xmmword_296B6EDD0);
            v156.val[0] = vqtbl2q_s8(v138, xmmword_296B6EE70);
            v156.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF40);
            v156.val[0] = vqtbl2q_s8(v156, xmmword_296B6EDD0);
            v156.val[1] = vqtbl2q_s8(v138, xmmword_296B6EE90);
            v105 = vqtbl2q_s8(v166, xmmword_296B6EF50);
            v162.val[0] = vqtbl2q_s8(v138, xmmword_296B6EEA0);
            v166.val[1] = v144[0];
            v162.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF60);
            v162.val[0] = vqtbl2q_s8(v162, xmmword_296B6EDD0);
            v162.val[1] = vqtbl2q_s8(v138, xmmword_296B6EE70);
            v106 = vqtbl2q_s8(v166, xmmword_296B6EF40);
            v162.val[1] = vqtbl2q_s8(*(&v162 + 16), xmmword_296B6EDD0);
            v164.val[0] = v156.val[1];
            v164.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF50);
            v107 = vqtbl2q_s8(v164, xmmword_296B6EDD0);
            v164.val[0] = vqtbl2q_s8(v138, xmmword_296B6EEB0);
            *a14 = v162.val[1];
            a14[1] = v107;
            a14 += 2;
            v164.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF70);
            *v52 = v162.val[0];
            v52[1] = vqtbl2q_s8(v164, xmmword_296B6EDD0);
            v52 += 2;
            *v53 = v156.val[0];
            v53[1] = vqtbl2q_s8(*(&v156 + 16), xmmword_296B6EDD0);
            v53 += 2;
            ++v55;
            *v100 = v154;
            --v98;
          }

          while (v98);
          v20 = a12;
          v95 = a12[5];
          v23 = a17;
          a6 = v127;
        }
      }

      if (v95)
      {
        v108 = vld1q_dup_s16(v153);
        v139 = v108;
        v109 = vld1q_dup_s16(&v152);
        v136 = v109;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v150, a9, v143);
        v134 = v143[0];
        v141 = v143[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v148, a10, v142);
        v110 = v136;
        v111 = v139;
        v112 = v141;
        v113 = v134;
        v20 = a12;
        v157.val[0] = vqtbl2q_s8(*v111.i8, xmmword_296B6EEA0);
        v114 = v142[0];
        v115 = v142[1];
        v157.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EF60);
        v116 = vqtbl2q_s8(v157, xmmword_296B6EDD0);
        v157.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EE70);
        v117 = vqtbl2q_s8(*v110.i8, xmmword_296B6EF40);
        v118 = vqtbl2q_s8(*(&v157 + 16), xmmword_296B6EDD0);
        v119 = v139;
        v120 = v136;
        v159.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EEA0);
        v159.val[1] = vqtbl2q_s8(*v120.i8, xmmword_296B6EF60);
        v121 = vqtbl2q_s8(v159, xmmword_296B6EDD0);
        v159.val[1] = vqtbl2q_s8(*v119.i8, xmmword_296B6EE70);
        v122 = vqtbl2q_s8(*v120.i8, xmmword_296B6EF40);
        v123 = vqtbl2q_s8(*(&v159 + 16), xmmword_296B6EDD0);
        v124 = 4 - a12[5];
        if ((v124 & 2) != 0)
        {
          *a14 = v123;
          *v52 = v121;
          *v53 = v118;
          v55->val[0] = v116;
          if (v124)
          {
            v158.val[0] = vqtbl2q_s8(*v111.i8, xmmword_296B6EEB0);
            v158.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EF70);
            v158.val[0].i64[0] = vqtbl2q_s8(v158, xmmword_296B6EDD0).u64[0];
            v158.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EE90);
            v125 = vqtbl2q_s8(*v110.i8, xmmword_296B6EF50);
            v163.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EEB0);
            v163.val[1] = vqtbl2q_s8(*v120.i8, xmmword_296B6EF70);
            v163.val[0].i64[0] = vqtbl2q_s8(v163, xmmword_296B6EDD0).u64[0];
            v163.val[1] = vqtbl2q_s8(*v119.i8, xmmword_296B6EE90);
            v126 = vqtbl2q_s8(*v120.i8, xmmword_296B6EF50);
            a14[1].i64[0] = vqtbl2q_s8(*(&v163 + 16), xmmword_296B6EDD0).u64[0];
            v52[1].i64[0] = v163.val[0].i64[0];
            v53[1].i64[0] = vqtbl2q_s8(*(&v158 + 16), xmmword_296B6EDD0).u64[0];
            v55->val[1].i64[0] = v158.val[0].i64[0];
          }
        }

        else
        {
          a14->i64[0] = v123.i64[0];
          v52->i64[0] = v121.i64[0];
          v53->i64[0] = v118.i64[0];
          v55->val[0].i64[0] = v116.i64[0];
        }
      }

LABEL_76:
      a14 = (v54->val + v23);
      v22 = v20[6];
      v36 = v21++ >= v22;
      if (v36)
      {
        return result;
      }
    }

    v55 = v54;
    goto LABEL_50;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v213, a3);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v212, a4);
  v27 = a12[2];
  v28 = a12[6];
  if (v27 > v28)
  {
    return result;
  }

  v30 = a11[3];
  v31 = a11[7].u32[1];
  v32 = 4 * vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v31) + 16), *(*(a5 + 8) + 48), v30), *(*(a5 + 8) + 48)).u32[0];
  v33 = 4 * vmin_u32(vmls_s32(*(*(*(*(a6 + 8) + 40) + 8 * v31) + 16), *(*(a6 + 8) + 48), v30), *(*(a6 + 8) + 48)).u32[0];
  v34 = *(a13 + 60);
  v35 = 3 * a17;
  v36 = vld1q_dup_f32(&v213);
  v37 = vld1q_dup_f32(&v212);
  while (1)
  {
    v38 = *(a5 + 8);
    if (v38)
    {
      v39 = a11[3];
      v40 = (v39.i32[1] * v34) + 4 * v27;
      v41 = *(*(v38 + 40) + 8 * a11[7].u32[1]);
      if (*(v41 + 12) - 1 < v40)
      {
        v40 = *(v41 + 12) - 1;
      }

      if (*(v38 + 104) == 1)
      {
        v42 = (*(v41 + 8 * v39.u32[0] + 24) + 8 * v40);
      }

      else
      {
        v43 = (v40 * *(v38 + 108)) >> *(v38 + 112);
        if (v43 >= *(v41 + 20) - 1)
        {
          LODWORD(v43) = *(v41 + 20) - 1;
        }

        v42 = (*(v41 + 8 * v39.u32[0] + 24) + 8 * v43);
      }

      v44 = *v42;
      if (a2 <= v44)
      {
        v23 = 0;
        result = 0;
      }

      else
      {
        v45 = v44;
        if (a2 - v44 >= HIDWORD(v44))
        {
          v46 = HIDWORD(v44);
        }

        else
        {
          v46 = a2 - v44;
        }

        v23 = (v45 + a1);
        result = (v46 + v45 + a1);
      }
    }

    v47 = *(a6 + 8);
    if (v47)
    {
      v48 = a11[3];
      v49 = (v48.i32[1] * v34) + 4 * v27;
      v50 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
      if (*(v50 + 12) - 1 < v49)
      {
        v49 = *(v50 + 12) - 1;
      }

      if (*(v47 + 104) == 1)
      {
        v51 = (*(v50 + 8 * v48.u32[0] + 24) + 8 * v49);
      }

      else
      {
        v52 = (v49 * *(v47 + 108)) >> *(v47 + 112);
        if (v52 >= *(v50 + 20) - 1)
        {
          LODWORD(v52) = *(v50 + 20) - 1;
        }

        v51 = (*(v50 + 8 * v48.u32[0] + 24) + 8 * v52);
      }

      v53 = *v51;
      if (a2 <= v53)
      {
        v25 = 0;
        v24 = 0;
        v58 = v35 + a14;
        goto LABEL_171;
      }

      v54 = v53;
      if (a2 - v53 >= HIDWORD(v53))
      {
        v55 = HIDWORD(v53);
      }

      else
      {
        v55 = a2 - v53;
      }

      v24 = (v54 + a1);
      v25 = v55 + v54 + a1;
    }

    v56 = a14 + a17;
    v57 = a14 + a17 + a17;
    v58 = v57 + a17;
    if (v23)
    {
      if (v24)
      {
        break;
      }
    }

LABEL_171:
    a14 = v58 + a17;
    v28 = a12[6];
    if (v27++ >= v28)
    {
      return result;
    }
  }

  if (!a16)
  {
    goto LABEL_44;
  }

  if (v27 == a12[2])
  {
    v59 = a12[3] + 1;
    v60 = v57 + a17;
    v61 = a14 + a17 + a17;
    v62 = a14 + a17;
    v63 = a14;
    do
    {
      a14 = v63;
      v56 = v62;
      v57 = v61;
      v58 = v60;
      v60 = v61;
      v61 = v62;
      v62 = v63;
      v63 = a16;
      --v59;
    }

    while (v59);
  }

  if (v27 != v28)
  {
    goto LABEL_44;
  }

  v64 = a12[7];
  if (v64 != 1)
  {
    if (v64 == 2)
    {
LABEL_41:
      v57 = a16;
      goto LABEL_42;
    }

    if (v64 == 3)
    {
      v56 = a16;
      goto LABEL_41;
    }

LABEL_44:
    v65 = v58;
    goto LABEL_45;
  }

LABEL_42:
  v65 = a16;
LABEL_45:
  v66 = *a12;
  v23 += v66;
  if ((v23 - 1) < result)
  {
    v24 += v66;
    if (&v24[-1].u64[1] + 7 < v25)
    {
      v67 = a12[1];
      if (v67)
      {
        if (v23 + 1 <= result)
        {
          v68 = *v23;
        }

        else
        {
          v68 = 0uLL;
        }

        v70 = 0uLL;
        v71 = 0uLL;
        v72 = 0uLL;
        v73 = (v23 + v32);
        if ((v23 + v32 + 16) <= result)
        {
          v70 = *v73;
        }

        v74 = (v73 + v32);
        if (&v74[1] <= result)
        {
          v71 = *v74;
        }

        v75 = (v74 + v32);
        if (&v75[1] <= result)
        {
          v72 = *v75;
        }

        if (&v24[1] <= v25)
        {
          v76 = *v24;
        }

        else
        {
          v76 = 0uLL;
        }

        v77 = 0uLL;
        v78 = 0uLL;
        v79 = 0uLL;
        v80 = (v24 + v33);
        if (v24[1].u64 + v33 <= v25)
        {
          v77 = *v80;
        }

        v81 = (v80 + v33);
        if (&v81[1] <= v25)
        {
          v78 = *v81;
        }

        v82 = (v81 + v33);
        if (&v82[1] <= v25)
        {
          v79 = *v82;
        }

        v26.i32[0] = 0;
        v83 = vuzp1q_s32(v37, v78);
        v84 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v71)), vextq_s8(v37, v83, 0xCuLL));
        v85 = vuzp2q_s32(v36, v71);
        v71.i32[0] = v36.i32[2];
        v86 = v37;
        v86.i32[3] = v78.i32[1];
        v87 = vtrn2q_s32(vrev64q_s32(v71), v83);
        v88 = vtrn2q_s32(vrev64q_s32(v85), v86);
        v89 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v85, v36)), vuzp2q_s32(v37, v78));
        v90 = vuzp1q_s32(v37, v79);
        v91 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v72)), vextq_s8(v37, v90, 0xCuLL));
        v92 = vuzp2q_s32(v36, v72);
        v72.i32[0] = v36.i32[2];
        v93 = vtrn2q_s32(vrev64q_s32(v72), v90);
        v94 = v37;
        v94.i32[3] = v79.i32[1];
        v95 = vtrn2q_s32(vrev64q_s32(v92), v94);
        v96 = vuzp2q_s32(v37, v79);
        v97 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v92, v36)), v96);
        if (a12[4] == v66)
        {
          v98 = 4 - a12[5];
        }

        else
        {
          v98 = 4;
        }

        v96.i32[0] = a12[1] & 2;
        v99 = vdupq_lane_s32(*&vceqq_s32(v96, v26), 0);
        v100 = vbslq_s8(v99, v95, v97);
        v101 = vbslq_s8(v99, v91, v93);
        v102 = vbslq_s8(v99, v88, v89);
        v103 = vbslq_s8(v99, v84, v87);
        v104 = v37;
        v104.i32[3] = v77.i32[1];
        v105 = vuzp2q_s32(v36, v70);
        v106 = vtrn2q_s32(vrev64q_s32(v105), v104);
        v107 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v105, v36)), vuzp2q_s32(v37, v77));
        v108 = vbslq_s8(v99, v106, v107);
        v109 = vuzp1q_s32(v37, v77);
        v110 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v70)), vextq_s8(v37, v109, 0xCuLL));
        v70.i32[0] = v36.i32[2];
        v111 = vtrn2q_s32(vrev64q_s32(v70), v109);
        v112 = vbslq_s8(v99, v110, v111);
        v113 = v37;
        v113.i32[3] = v76.i32[1];
        v114 = vuzp2q_s32(v36, v68);
        v115 = vtrn2q_s32(vrev64q_s32(v114), v113);
        v116 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v114, v36)), vuzp2q_s32(v37, v76));
        v117 = vbslq_s8(v99, v115, v116);
        v118 = vuzp1q_s32(v37, v76);
        v119 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v68)), vextq_s8(v37, v118, 0xCuLL));
        v68.i32[0] = v36.i32[2];
        v120 = vrev64q_s32(v68);
        v121 = vtrn2q_s32(v120, v118);
        if ((v67 & 2) != 0)
        {
          v98 -= 2;
        }

        v122 = v98 - (v67 & 1);
        v120.i32[0] = a12[1] & 1;
        v123 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v120, v26)), 0);
        v26 = vbslq_s8(v123, v117, vbslq_s8(v99, v119, v121));
        v124 = vbslq_s8(v123, v108, v112);
        v125 = vbslq_s8(v123, v102, v103);
        v126 = vbslq_s8(v123, v100, v101);
        if (v122 <= 1)
        {
          v132 = 0;
        }

        else
        {
          v127 = vbslq_s8(v99, v93, v91);
          v128 = vbslq_s8(v99, v87, v84);
          v129 = vbslq_s8(v99, v89, v88);
          v130 = vbslq_s8(v99, v111, v110);
          v131 = vbslq_s8(v99, v121, v119);
          *a14 = v26;
          *(a14 + 16) = vbslq_s8(v123, v131, v117);
          *v56 = v124;
          *(v56 + 16) = vbslq_s8(v123, v130, v108);
          *v57 = v125;
          *(v57 + 16) = vbslq_s8(v123, v128, v102);
          v122 -= 2;
          v26 = vbslq_s8(v123, vbslq_s8(v99, v116, v115), v131);
          *v65 = v126;
          *(v65 + 16) = vbslq_s8(v123, v127, v100);
          v124 = vbslq_s8(v123, vbslq_s8(v99, v107, v106), v130);
          v125 = vbslq_s8(v123, v129, v128);
          v126 = vbslq_s8(v123, vbslq_s8(v99, v97, v95), v127);
          v132 = 32;
        }

        if (v122 >= 1)
        {
          *(v132 + a14) = v26;
          *(v132 + v56) = v124;
          *(v132 + v57) = v125;
          *(v132 + v65) = v126;
          v132 |= 0x10uLL;
        }

        ++v23;
        ++v24;
        v69 = a12[4];
        if (v69 == v66)
        {
          goto LABEL_171;
        }

        a14 += v132;
        v56 += v132;
        v57 += v132;
        v65 += v132;
        ++v66;
      }

      else
      {
        v69 = a12[4];
      }

      v133 = a12[5];
      v134 = v133 != 0;
      if (v69 == 0 && v134 || (v135 = v69 - v134, v66 > v135))
      {
        v172 = v65;
        v171 = v57;
        v170 = v56;
        v169 = a14;
        if (v133)
        {
          goto LABEL_108;
        }

LABEL_106:
        v35 = 3 * a17;
        goto LABEL_171;
      }

      v136 = v135 - v66 + 1;
      while (1)
      {
        v137 = 0uLL;
        if (v23)
        {
          if (v23 + 1 <= result)
          {
            v138 = *v23;
          }

          else
          {
            v138 = 0uLL;
          }

          v139 = 0uLL;
          v140 = 0uLL;
          v141 = 0uLL;
          v145 = (v23 + v32);
          if ((v23 + v32 + 16) <= result)
          {
            v139 = *v145;
          }

          v146 = (v145 + v32);
          if (&v146[1] <= result)
          {
            v140 = *v146;
          }

          v147 = (v146 + v32);
          if (&v147[1] <= result)
          {
            v141 = *v147;
          }

          ++v23;
          if (v24)
          {
LABEL_95:
            if (&v24[1] <= v25)
            {
              v137 = *v24;
            }

            v142 = 0uLL;
            v143 = 0uLL;
            v144 = 0uLL;
            v148 = (v24 + v33);
            if (v24[1].u64 + v33 <= v25)
            {
              v142 = *v148;
            }

            v149 = (v148 + v33);
            if (&v149[1] <= v25)
            {
              v143 = *v149;
            }

            v150 = (v149 + v33);
            if (&v150[1] <= v25)
            {
              v144 = *v150;
            }

            ++v24;
            goto LABEL_104;
          }
        }

        else
        {
          v138 = 0uLL;
          v139 = 0uLL;
          v140 = 0uLL;
          v141 = 0uLL;
          if (v24)
          {
            goto LABEL_95;
          }
        }

        v142 = 0uLL;
        v143 = 0uLL;
        v144 = 0uLL;
LABEL_104:
        v26 = v37;
        v26.i32[3] = v144.i32[1];
        v151 = vuzp2q_s32(v36, v141);
        v152 = vuzp1q_s32(v37, v144);
        v153 = v37;
        v153.i32[3] = v143.i32[1];
        v154 = vuzp2q_s32(v36, v140);
        v155 = v37;
        v155.i32[3] = v142.i32[1];
        v156 = vuzp2q_s32(v36, v139);
        v157 = vuzp2q_s32(v36, v138);
        v158 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v157, v36)), vuzp2q_s32(v37, v137));
        v159 = vuzp1q_s32(v37, v137);
        v160 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v138)), vextq_s8(v37, v159, 0xCuLL));
        v161 = v37;
        v161.i32[3] = v137.i32[1];
        v162 = vuzp1q_s32(v36, v141);
        v163 = vtrn2q_s32(vrev64q_s32(v157), v161);
        v164 = vuzp1q_s32(v37, v143);
        v138.i32[0] = v36.i32[2];
        v165 = vtrn2q_s32(vrev64q_s32(v138), v159);
        v166 = v140;
        v166.i32[0] = v36.i32[2];
        *a14 = v160;
        *(a14 + 16) = v163;
        v167 = vuzp1q_s32(v37, v142);
        *(a14 + 32) = v165;
        *(a14 + 48) = v158;
        v168 = v139;
        v168.i32[0] = v36.i32[2];
        v169 = (a14 + 64);
        v170 = (v56 + 64);
        *v56 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v139)), vextq_s8(v37, v167, 0xCuLL));
        *(v56 + 16) = vtrn2q_s32(vrev64q_s32(v156), v155);
        *(v56 + 32) = vtrn2q_s32(vrev64q_s32(v168), v167);
        *(v56 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v156, v36)), vuzp2q_s32(v37, v142));
        v171 = (v57 + 64);
        *v57 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v140)), vextq_s8(v37, v164, 0xCuLL));
        *(v57 + 16) = vtrn2q_s32(vrev64q_s32(v154), v153);
        *(v57 + 32) = vtrn2q_s32(vrev64q_s32(v166), v164);
        *(v57 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v154, v36)), vuzp2q_s32(v37, v143));
        v172 = (v65 + 64);
        v141.i32[0] = v36.i32[2];
        *(v65 + 32) = vtrn2q_s32(vrev64q_s32(v141), v152);
        *(v65 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v151, v36)), vuzp2q_s32(v37, v144));
        a14 += 64;
        *v65 = vtrn2q_s32(vrev64q_s32(v162), vextq_s8(v37, v152, 0xCuLL));
        *(v65 + 16) = vtrn2q_s32(vrev64q_s32(v151), v26);
        v56 += 64;
        v57 += 64;
        v65 += 64;
        if (!--v136)
        {
          v133 = a12[5];
          if (!v133)
          {
            goto LABEL_106;
          }

LABEL_108:
          v173 = 4 - v133;
          if (v27 == a12[6])
          {
            v174 = 4 - a12[7];
          }

          else
          {
            v174 = 4;
          }

          if (v23)
          {
            if (v174 < 2)
            {
              v176 = 0;
              v175 = v23;
              v177 = v23;
            }

            else
            {
              v175 = (v23 + v32);
              if (v174 == 2)
              {
                v176 = 0;
                v177 = (v23 + v32);
              }

              else
              {
                v177 = (v23 + v32);
                v175 = (v175 + v32);
                if (v174 <= 3)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = v32;
                }
              }
            }

            v186 = (v175 + v176);
            v179 = 0uLL;
            v180 = 0uLL;
            v181 = 0uLL;
            v178 = 0uLL;
            if ((4 - v133))
            {
              if ((v23 + 4 * v173) <= result)
              {
                v178.i32[0] = *(v23 + 3 - v133);
              }

              if ((v177 + 4 * v173) <= result)
              {
                v179.i32[0] = *(v177 + 3 - v133);
              }

              if ((v175 + 4 * v173) <= result)
              {
                v180.i32[0] = *(v175 + 3 - v133);
              }

              if ((v186 + 4 * v173) <= result)
              {
                v181.i32[0] = *(v186 + 3 - v133);
              }
            }

            if (((4 - v133) & 2) != 0)
            {
              v178 = vextq_s8(v178, v178, 8uLL);
              if ((v23 + 8) <= result)
              {
                v187.i64[0] = *v23;
                v187.i64[1] = vextq_s8(v178, v178, 8uLL).u64[0];
                v178 = v187;
              }

              v179 = vextq_s8(v179, v179, 8uLL);
              if (v177 + 1 <= result)
              {
                v188.i64[0] = *v177;
                v188.i64[1] = vextq_s8(v179, v179, 8uLL).u64[0];
                v179 = v188;
              }

              v180 = vextq_s8(v180, v180, 8uLL);
              if (v175 + 1 <= result)
              {
                v189.i64[0] = *v175;
                v189.i64[1] = vextq_s8(v180, v180, 8uLL).u64[0];
                v180 = v189;
              }

              v181 = vextq_s8(v181, v181, 8uLL);
              if (v186 + 1 <= result)
              {
                v190.i64[0] = *v186;
                v190.i64[1] = vextq_s8(v181, v181, 8uLL).u64[0];
                v181 = v190;
              }
            }

            v23 = (v23 + 4 * v173);
            if (v24)
            {
LABEL_140:
              if (v174 < 2)
              {
                v192 = 0;
                v191 = v24;
                v193 = v24;
              }

              else
              {
                v191 = (v24->i64 + v33);
                if (v174 == 2)
                {
                  v192 = 0;
                  v193 = (v24->i64 + v33);
                }

                else
                {
                  v193 = (v24->i64 + v33);
                  v191 = (v191 + v33);
                  if (v174 <= 3)
                  {
                    v192 = 0;
                  }

                  else
                  {
                    v192 = v33;
                  }
                }
              }

              v194 = (v191 + v192);
              v183 = 0uLL;
              v184 = 0uLL;
              v185 = 0uLL;
              v182 = 0uLL;
              if ((4 - v133))
              {
                if (v24 + 4 * v173 <= v25)
                {
                  v182.i32[0] = v24->i32[3 - v133];
                }

                if (v193 + 4 * v173 <= v25)
                {
                  v183.i32[0] = *(v193 + 3 - v133);
                }

                if (v191 + 4 * v173 <= v25)
                {
                  v184.i32[0] = *(v191 + 3 - v133);
                }

                if (v194 + 4 * v173 <= v25)
                {
                  v185.i32[0] = *(v194 + 3 - v133);
                }
              }

              if (((4 - v133) & 2) != 0)
              {
                v182 = vextq_s8(v182, v182, 8uLL);
                v35 = 3 * a17;
                if (&v24->u64[1] <= v25)
                {
                  v195.i64[0] = v24->i64[0];
                  v195.i64[1] = vextq_s8(v182, v182, 8uLL).u64[0];
                  v182 = v195;
                }

                v183 = vextq_s8(v183, v183, 8uLL);
                if ((v193 + 1) <= v25)
                {
                  v196.i64[0] = *v193;
                  v196.i64[1] = vextq_s8(v183, v183, 8uLL).u64[0];
                  v183 = v196;
                }

                v184 = vextq_s8(v184, v184, 8uLL);
                if ((v191 + 1) <= v25)
                {
                  v197.i64[0] = *v191;
                  v197.i64[1] = vextq_s8(v184, v184, 8uLL).u64[0];
                  v184 = v197;
                }

                v185 = vextq_s8(v185, v185, 8uLL);
                if ((v194 + 1) <= v25)
                {
                  v198.i64[0] = *v194;
                  v198.i64[1] = vextq_s8(v185, v185, 8uLL).u64[0];
                  v185 = v198;
                }
              }

              else
              {
                v35 = 3 * a17;
              }

              v24 = (v24 + 4 * v173);
LABEL_167:
              v26 = vuzp1q_s32(v37, v182);
              v199 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v178)), vextq_s8(v37, v26, 0xCuLL));
              v200 = vuzp1q_s32(v37, v183);
              v201 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v179)), vextq_s8(v37, v200, 0xCuLL));
              v202 = vuzp1q_s32(v37, v184);
              v203 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v180)), vextq_s8(v37, v202, 0xCuLL));
              v204 = vuzp1q_s32(v37, v185);
              v205 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v36, v181)), vextq_s8(v37, v204, 0xCuLL));
              if ((v173 & 2) != 0)
              {
                v206 = v37;
                v206.i32[3] = v182.i32[1];
                v207 = v37;
                v207.i32[3] = v183.i32[1];
                v208 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v36, v178)), v206);
                v209 = v37;
                v209.i32[3] = v184.i32[1];
                v210 = v37;
                v210.i32[3] = v185.i32[1];
                *v169 = v199;
                v169[1] = v208;
                *v170 = v201;
                v170[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v36, v179)), v207);
                *v171 = v203;
                v171[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v36, v180)), v209);
                *v172 = v205;
                v172[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v36, v181)), v210);
                if (v173)
                {
                  v178.i32[0] = v36.i32[2];
                  v179.i32[0] = v36.i32[2];
                  v180.i32[0] = v36.i32[2];
                  v181.i32[0] = v36.i32[2];
                  v169[2] = vtrn2q_s32(vrev64q_s32(v178), v26);
                  v170[2] = vtrn2q_s32(vrev64q_s32(v179), v200);
                  v171[2] = vtrn2q_s32(vrev64q_s32(v180), v202);
                  v172[2] = vtrn2q_s32(vrev64q_s32(v181), v204);
                }
              }

              else
              {
                *v169 = v199;
                *v170 = v201;
                *v171 = v203;
                *v172 = v205;
              }

              goto LABEL_171;
            }
          }

          else
          {
            v178 = 0uLL;
            v179 = 0uLL;
            v180 = 0uLL;
            v181 = 0uLL;
            if (v24)
            {
              goto LABEL_140;
            }
          }

          v182 = 0uLL;
          v183 = 0uLL;
          v184 = 0uLL;
          v185 = 0uLL;
          v35 = 3 * a17;
          goto LABEL_167;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  v159 = 0;
  v160 = 0;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v158, a4);
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v20 = a12[2];
  v21 = a12[6];
  if (v20 <= v21)
  {
    v22 = a12;
    v23 = a17;
    v131 = *(a13 + 60);
    v128 = a6;
    while (1)
    {
      v25 = *(a3 + 8);
      if (v25)
      {
        v26 = *(a11 + 24);
        v27 = (HIDWORD(v26) * v131) + 4 * v20;
        v28 = *(*(v25 + 40) + 8 * *(a11 + 60));
        if (*(v28 + 12) - 1 < v27)
        {
          v27 = *(v28 + 12) - 1;
        }

        if (*(v25 + 104) == 1)
        {
          v29 = (*(v28 + 8 * v26 + 24) + 8 * v27);
        }

        else
        {
          v30 = (v27 * *(v25 + 108)) >> *(v25 + 112);
          if (v30 >= *(v28 + 20) - 1)
          {
            LODWORD(v30) = *(v28 + 20) - 1;
          }

          v29 = (*(v28 + 8 * v26 + 24) + 8 * v30);
        }

        v31 = *v29;
        v32 = HIDWORD(v31);
        if (a2 >= v31)
        {
          v33 = (a1 + v31);
        }

        else
        {
          v33 = 0;
        }

        if (a2 - v31 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v34 = a2 >= v31;
        v35 = a1 + v31 + v32;
        if (!v34)
        {
          v35 = 0;
        }

        v159 = v33;
        v160 = v35;
      }

      v36 = *(a5 + 8);
      if (v36)
      {
        v37 = *(a11 + 24);
        v38 = (HIDWORD(v37) * v131) + 4 * v20;
        v39 = *(*(v36 + 40) + 8 * *(a11 + 60));
        if (*(v39 + 12) - 1 < v38)
        {
          v38 = *(v39 + 12) - 1;
        }

        if (*(v36 + 104) == 1)
        {
          v40 = (*(v39 + 8 * v37 + 24) + 8 * v38);
        }

        else
        {
          v41 = (v38 * *(v36 + 108)) >> *(v36 + 112);
          if (v41 >= *(v39 + 20) - 1)
          {
            LODWORD(v41) = *(v39 + 20) - 1;
          }

          v40 = (*(v39 + 8 * v37 + 24) + 8 * v41);
        }

        v42 = *v40;
        v43 = HIDWORD(v42);
        if (a2 >= v42)
        {
          v44 = (a1 + v42);
        }

        else
        {
          v44 = 0;
        }

        if (a2 - v42 < HIDWORD(v42))
        {
          v43 = a2 - v42;
        }

        v34 = a2 >= v42;
        v45 = a1 + v42 + v43;
        if (!v34)
        {
          v45 = 0;
        }

        v156 = v44;
        v157 = v45;
      }

      v46 = *(a6 + 8);
      if (v46)
      {
        v47 = *(a11 + 24);
        v48 = (HIDWORD(v47) * v131) + 4 * v20;
        v49 = *(*(v46 + 40) + 8 * *(a11 + 60));
        if (*(v49 + 12) - 1 < v48)
        {
          v48 = *(v49 + 12) - 1;
        }

        if (*(v46 + 104) == 1)
        {
          v50 = (*(v49 + 8 * v47 + 24) + 8 * v48);
        }

        else
        {
          v52 = (v48 * *(v46 + 108)) >> *(v46 + 112);
          if (v52 >= *(v49 + 20) - 1)
          {
            LODWORD(v52) = *(v49 + 20) - 1;
          }

          v50 = (*(v49 + 8 * v47 + 24) + 8 * v52);
        }

        v53 = *v50;
        v54 = HIDWORD(*v50);
        v55 = a1 + *v50;
        v56 = a2 - *v50;
        if (a2 >= *v50)
        {
          v51 = (a1 + v53);
        }

        else
        {
          v51 = 0;
        }

        if (v56 < HIDWORD(v53))
        {
          v54 = a2 - v53;
        }

        v34 = a2 >= v53;
        v57 = v55 + v54;
        if (!v34)
        {
          v57 = 0;
        }

        v154 = v51;
        v155 = v57;
      }

      else
      {
        v51 = v154;
      }

      v58 = (a14 + v23);
      v59 = (a14 + v23 + v23);
      v60 = &v59->i8[v23];
      if (!v159 || !v156 || !v51)
      {
        goto LABEL_95;
      }

      v61 = a16;
      if (!a16)
      {
        break;
      }

      if (v20 == v22[2])
      {
        v62 = v22[3] + 1;
        v63 = a14;
        a14 = (a14 + v23);
        v58 = v59;
        v59 = (v59 + v23);
        do
        {
          v60 = v59;
          v59 = v58;
          v58 = a14;
          a14 = v63;
          v63 = a16;
          --v62;
        }

        while (v62);
      }

      if (v20 != v21)
      {
        break;
      }

      v64 = v22[7];
      if (v64 != 1)
      {
        if (v64 != 2)
        {
          if (v64 != 3)
          {
            break;
          }

          v58 = a16;
        }

        v59 = a16;
      }

LABEL_67:
      v65 = *v22;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v159, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v156, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v154, v65);
      v22 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a7, v153);
        v66 = &v158;
        v67 = vld1q_dup_s16(v66);
        v134 = v67;
        v137.val[0] = v153[1];
        *v141 = v153[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a9, v152);
        v137.val[1] = v152[1];
        *&v141[16] = v152[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v154, a10, v151);
        v22 = a12;
        v68.i32[0] = 0;
        v162.val[0] = vqtbl2q_s8(v137, xmmword_296B6EE70);
        v69 = v134;
        v70 = v151[1];
        v162.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF40);
        v71 = vqtbl2q_s8(v162, xmmword_296B6EDD0);
        v162.val[1] = vqtbl2q_s8(v137, xmmword_296B6EE90);
        v72 = vqtbl2q_s8(*v69.i8, xmmword_296B6EF50);
        v73 = vqtbl2q_s8(*(&v162 + 16), xmmword_296B6EDD0);
        v74 = vqtbl2q_s8(v137, xmmword_296B6EEA0);
        v75 = vqtbl2q_s8(*v69.i8, xmmword_296B6EF60);
        v76 = vqtbl2q_s8(*v74.i8, xmmword_296B6EDD0);
        v167.val[0] = vqtbl2q_s8(v137, xmmword_296B6EEB0);
        v167.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF70);
        v77 = vqtbl2q_s8(v167, xmmword_296B6EDD0);
        if (a12[4] == v65)
        {
          v78 = 4 - a12[5];
        }

        else
        {
          v78 = 4;
        }

        v79 = a12[1];
        v74.i32[0] = v79 & 2;
        v80 = vdupq_lane_s32(*&vceqq_s32(v74, v68), 0);
        v81 = vbslq_s8(v80, v77, v76);
        v82 = vbslq_s8(v80, v76, v77);
        v83 = vbslq_s8(v80, v73, v71);
        v84 = vbslq_s8(v80, v71, v73);
        v168.val[0] = vqtbl2q_s8(*v141, xmmword_296B6EEA0);
        v85 = v151[0];
        v168.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF60);
        v86 = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v168.val[0] = vqtbl2q_s8(*v141, xmmword_296B6EEB0);
        v168.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF70);
        v168.val[0] = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v87 = vbslq_s8(v80, v168.val[0], v86);
        v88 = vbslq_s8(v80, v86, v168.val[0]);
        v172.val[0] = vqtbl2q_s8(*v141, xmmword_296B6EE70);
        v172.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF40);
        v168.val[0] = vqtbl2q_s8(v172, xmmword_296B6EDD0);
        v172.val[0] = vqtbl2q_s8(*v141, xmmword_296B6EE90);
        v172.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EF50);
        v172.val[0] = vqtbl2q_s8(v172, xmmword_296B6EDD0);
        v89 = vbslq_s8(v80, v172.val[0], v168.val[0]);
        v90 = vbslq_s8(v80, v168.val[0], v172.val[0]);
        if ((v79 & 2) != 0)
        {
          v78 -= 2;
        }

        if (v79)
        {
          v91 = vextq_s8(v89, v90, 8uLL).u64[0];
          v90 = vextq_s8(v90, v89, 8uLL);
          v92 = vextq_s8(v87, v88, 8uLL).u64[0];
          v88 = vextq_s8(v88, v87, 8uLL);
          v93 = vextq_s8(v83, v84, 8uLL).u64[0];
          v84 = vextq_s8(v84, v83, 8uLL);
          v94 = vextq_s8(v81, v82, 8uLL).u64[0];
          --v78;
          v82 = vextq_s8(v82, v81, 8uLL);
          v89.i64[0] = v91;
          v87.i64[0] = v92;
          v83.i64[0] = v93;
          v81.i64[0] = v94;
        }

        if (v78 <= 1)
        {
          v95 = 0;
        }

        else
        {
          *a14 = v90;
          *v58 = v88;
          v78 -= 2;
          v90.i64[0] = v89.i64[0];
          v88.i64[0] = v87.i64[0];
          *v59 = v84;
          v84.i64[0] = v83.i64[0];
          v61->val[0] = v82;
          v82.i64[0] = v81.i64[0];
          v95 = 16;
        }

        if (v78 >= 1)
        {
          *(a14->i64 + v95) = v90.i64[0];
          *(v58->i64 + v95) = v88.i64[0];
          *(v59->i64 + v95) = v84.i64[0];
          *(v61->val[0].i64 + v95) = v82.i64[0];
          v95 |= 8uLL;
        }

        v96 = a12[4];
        if (v96 == v65)
        {
          goto LABEL_95;
        }

        a14 = (a14 + v95);
        v58 = (v58 + v95);
        v59 = (v59 + v95);
        v61 = (v61 + v95);
        ++v65;
      }

      else
      {
        v96 = a12[4];
      }

      v97 = v22[5];
      v98 = v97 != 0;
      if (v96 != 0 || !v98)
      {
        v99 = v96 - v98;
        if (v65 <= v99)
        {
          v100 = v99 - v65 + 1;
          v101 = a7;
          do
          {
            v102 = v61;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, v101, v150);
            v103 = &v158;
            v104 = vld1q_dup_s16(v103);
            v135 = v104;
            v142.val[0] = v150[0];
            v138.val[0] = v150[1];
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a9, v149);
            v142.val[1] = v149[0];
            v138.val[1] = v149[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v154, a10, v148);
            v161.val[0] = vqtbl2q_s8(v138, xmmword_296B6EEA0);
            v173.val[0] = v135;
            v173.val[1] = v148[1];
            v161.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF60);
            v161.val[0] = vqtbl2q_s8(v161, xmmword_296B6EDD0);
            v161.val[1] = vqtbl2q_s8(v138, xmmword_296B6EEB0);
            v105 = vqtbl2q_s8(v173, xmmword_296B6EF70);
            v161.val[1] = vqtbl2q_s8(*(&v161 + 16), xmmword_296B6EDD0);
            v163.val[0] = vqtbl2q_s8(v138, xmmword_296B6EE70);
            v163.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF40);
            v163.val[0] = vqtbl2q_s8(v163, xmmword_296B6EDD0);
            v163.val[1] = vqtbl2q_s8(v138, xmmword_296B6EE90);
            v106 = vqtbl2q_s8(v173, xmmword_296B6EF50);
            v169.val[0] = vqtbl2q_s8(v142, xmmword_296B6EEA0);
            v173.val[1] = v148[0];
            v169.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF60);
            v169.val[0] = vqtbl2q_s8(v169, xmmword_296B6EDD0);
            v169.val[1] = vqtbl2q_s8(v142, xmmword_296B6EE70);
            v107 = vqtbl2q_s8(v173, xmmword_296B6EF40);
            v169.val[1] = vqtbl2q_s8(*(&v169 + 16), xmmword_296B6EDD0);
            v171.val[0] = vqtbl2q_s8(v142, xmmword_296B6EE90);
            v171.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF50);
            v108 = vqtbl2q_s8(v171, xmmword_296B6EDD0);
            v171.val[0] = vqtbl2q_s8(v142, xmmword_296B6EEB0);
            *a14 = v169.val[1];
            a14[1] = v108;
            a14 += 2;
            v171.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF70);
            *v58 = v169.val[0];
            v58[1] = vqtbl2q_s8(v171, xmmword_296B6EDD0);
            v58 += 2;
            *v59 = v163.val[0];
            v59[1] = vqtbl2q_s8(*(&v163 + 16), xmmword_296B6EDD0);
            v59 += 2;
            ++v61;
            *v102 = v161;
            --v100;
          }

          while (v100);
          v22 = a12;
          v97 = a12[5];
          a7 = v101;
          a6 = v128;
        }
      }

      if (v97)
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a7, v147);
        v109 = &v158;
        v110 = vld1q_dup_s16(v109);
        v136 = v110;
        v143 = v147[0];
        v139 = v147[1];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a9, v146);
        v144 = v146[0];
        v140 = v146[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v154, a10, v145);
        v111 = v139;
        v112 = v140;
        v113 = v136;
        v114 = v143;
        v115 = v144;
        v22 = a12;
        v164.val[0] = vqtbl2q_s8(*v111.i8, xmmword_296B6EEA0);
        v116 = v145[0];
        v117 = v145[1];
        v164.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF60);
        v118 = vqtbl2q_s8(v164, xmmword_296B6EDD0);
        v164.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EE70);
        v119 = vqtbl2q_s8(*v113.i8, xmmword_296B6EF40);
        v120 = vqtbl2q_s8(*(&v164 + 16), xmmword_296B6EDD0);
        v121 = v136;
        v166.val[0] = vqtbl2q_s8(*v114.i8, xmmword_296B6EEA0);
        v166.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF60);
        v122 = vqtbl2q_s8(v166, xmmword_296B6EDD0);
        v166.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EE70);
        v123 = vqtbl2q_s8(*v121.i8, xmmword_296B6EF40);
        v124 = vqtbl2q_s8(*(&v166 + 16), xmmword_296B6EDD0);
        v125 = 4 - a12[5];
        if ((v125 & 2) != 0)
        {
          *a14 = v124;
          *v58 = v122;
          *v59 = v120;
          v61->val[0] = v118;
          v23 = a17;
          if (v125)
          {
            v165.val[0] = vqtbl2q_s8(*v111.i8, xmmword_296B6EEB0);
            v165.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF70);
            v165.val[0].i64[0] = vqtbl2q_s8(v165, xmmword_296B6EDD0).u64[0];
            v165.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EE90);
            v126 = vqtbl2q_s8(*v113.i8, xmmword_296B6EF50);
            v170.val[0] = vqtbl2q_s8(*v114.i8, xmmword_296B6EEB0);
            v170.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF70);
            v170.val[0].i64[0] = vqtbl2q_s8(v170, xmmword_296B6EDD0).u64[0];
            v170.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EE90);
            v127 = vqtbl2q_s8(*v121.i8, xmmword_296B6EF50);
            a14[1].i64[0] = vqtbl2q_s8(*(&v170 + 16), xmmword_296B6EDD0).u64[0];
            v58[1].i64[0] = v170.val[0].i64[0];
            v59[1].i64[0] = vqtbl2q_s8(*(&v165 + 16), xmmword_296B6EDD0).u64[0];
            v61->val[1].i64[0] = v165.val[0].i64[0];
          }

          goto LABEL_95;
        }

        a14->i64[0] = v124.i64[0];
        v58->i64[0] = v122.i64[0];
        v59->i64[0] = v120.i64[0];
        v61->val[0].i64[0] = v118.i64[0];
      }

      v23 = a17;
LABEL_95:
      a14 = (v60->val + v23);
      v21 = v22[6];
      v34 = v20++ >= v21;
      if (v34)
      {
        return result;
      }
    }

    v61 = v60;
    goto LABEL_67;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a11[3];
  v23 = *(a3 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(v264, a4);
  v32 = a12[2];
  v33 = a12[6];
  if (v32 <= v33)
  {
    v34 = a3;
    v36 = 4 * vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
    v37 = a11[3];
    v38 = a11[7].u32[1];
    v39 = *(a6 + 8);
    v40 = *(*&v39[5] + 8 * v38);
    v41 = 4 * vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v38) + 16), *(*(a5 + 8) + 48), v37), *(*(a5 + 8) + 48)).u32[0];
    v42 = 4 * vmin_u32(vmls_s32(v40[2], v39[6], v37), v39[6]).u32[0];
    v43 = *(a13 + 60);
    v44 = vld1q_dup_f32(v264);
    v263 = a1;
    v262 = v43;
    v260 = a5;
    v261 = a6;
    v259 = a3;
    while (1)
    {
      v45 = *(v34 + 8);
      if (v45)
      {
        v46 = *(*(v45 + 40) + 8 * a11[7].u32[1]);
        v47 = *(v46 + 12) - 1;
        if (v47 >= (HIDWORD(*&a11[3]) * v43) + 4 * v32)
        {
          v47 = (HIDWORD(*&a11[3]) * v43) + 4 * v32;
        }

        v48 = v46 + 8 * *&a11[3];
        if (*(v45 + 104) == 1)
        {
          v49 = (*(v48 + 24) + 8 * v47);
        }

        else
        {
          v50 = (v47 * *(v45 + 108)) >> *(v45 + 112);
          v51 = *(v46 + 20) - 1;
          if (v50 >= v51)
          {
            LODWORD(v50) = v51;
          }

          v49 = (*(v48 + 24) + 8 * v50);
        }

        v52 = *v49;
        if (a2 <= v52)
        {
          v29 = 0;
          v40 = 0;
        }

        else
        {
          v53 = v52;
          if (a2 - v52 >= HIDWORD(v52))
          {
            v54 = HIDWORD(v52);
          }

          else
          {
            v54 = a2 - v52;
          }

          v29 = (v53 + a1);
          v40 = (v54 + v53 + a1);
        }
      }

      v55 = *(a5 + 8);
      if (v55)
      {
        v56 = *(*(v55 + 40) + 8 * a11[7].u32[1]);
        v57 = *(v56 + 12) - 1;
        if (v57 >= (HIDWORD(*&a11[3]) * v43) + 4 * v32)
        {
          v57 = (HIDWORD(*&a11[3]) * v43) + 4 * v32;
        }

        v58 = v56 + 8 * *&a11[3];
        if (*(v55 + 104) == 1)
        {
          v59 = (*(v58 + 24) + 8 * v57);
        }

        else
        {
          v60 = (v57 * *(v55 + 108)) >> *(v55 + 112);
          v61 = *(v56 + 20) - 1;
          if (v60 >= v61)
          {
            LODWORD(v60) = v61;
          }

          v59 = (*(v58 + 24) + 8 * v60);
        }

        v62 = *v59;
        if (a2 <= v62)
        {
          v30 = 0;
          result = 0;
        }

        else
        {
          v63 = v62;
          if (a2 - v62 >= HIDWORD(v62))
          {
            v64 = HIDWORD(v62);
          }

          else
          {
            v64 = a2 - v62;
          }

          v30 = (v63 + a1);
          result = (v64 + v63 + a1);
        }
      }

      v65 = *(a6 + 8);
      if (v65)
      {
        v66 = *(*(v65 + 40) + 8 * a11[7].u32[1]);
        v67 = *(v66 + 12) - 1;
        if (v67 >= (HIDWORD(*&a11[3]) * v43) + 4 * v32)
        {
          v67 = (HIDWORD(*&a11[3]) * v43) + 4 * v32;
        }

        v68 = v66 + 8 * *&a11[3];
        if (*(v65 + 104) == 1)
        {
          v69 = (*(v68 + 24) + 8 * v67);
        }

        else
        {
          v70 = (v67 * *(v65 + 108)) >> *(v65 + 112);
          v71 = *(v66 + 20) - 1;
          if (v70 >= v71)
          {
            LODWORD(v70) = v71;
          }

          v69 = (*(v68 + 24) + 8 * v70);
        }

        v72 = *v69;
        if (a2 <= v72)
        {
          v28 = 0;
          v27 = 0;
        }

        else
        {
          v73 = v72;
          if (a2 - v72 >= HIDWORD(v72))
          {
            v74 = HIDWORD(v72);
          }

          else
          {
            v74 = a2 - v72;
          }

          v28 = (v73 + a1);
          v27 = v74 + v73 + a1;
        }
      }

      v75 = a14 + a17;
      v76 = a14 + a17 + a17;
      v77 = v76 + a17;
      if (!v29 || !v30 || !v28)
      {
        goto LABEL_236;
      }

      if (!a16)
      {
        goto LABEL_59;
      }

      if (v32 == a12[2])
      {
        v78 = a12[3] + 1;
        v79 = v76 + a17;
        v80 = a14 + a17 + a17;
        v81 = a14 + a17;
        v82 = a14;
        do
        {
          a14 = v82;
          v75 = v81;
          v76 = v80;
          v77 = v79;
          v79 = v80;
          v80 = v81;
          v81 = v82;
          v82 = a16;
          --v78;
        }

        while (v78);
      }

      if (v32 == v33)
      {
        break;
      }

      v84 = v77;
      a1 = v263;
LABEL_61:
      v85 = *a12;
      v29 += v85;
      if ((v29 - 1) >= v40)
      {
        return result;
      }

      v30 += v85;
      if ((v30 - 1) >= result)
      {
        return result;
      }

      v28 += v85;
      if (&v28[-1].u64[1] + 7 >= v27)
      {
        return result;
      }

      v86 = a12[1];
      if (v86)
      {
        if (v29 + 1 <= v40)
        {
          v87 = *v29;
        }

        else
        {
          v87 = 0uLL;
        }

        v89 = 0uLL;
        v90 = 0uLL;
        v91 = 0uLL;
        v92 = (v29 + v36);
        if ((v29 + v36 + 16) <= v40)
        {
          v89 = *v92;
        }

        v93 = (v92 + v36);
        if (&v93[1] <= v40)
        {
          v90 = *v93;
        }

        v94 = (v93 + v36);
        if (&v94[1] <= v40)
        {
          v91 = *v94;
        }

        if (v30 + 1 <= result)
        {
          v95 = *v30;
        }

        else
        {
          v95 = 0uLL;
        }

        v96 = 0uLL;
        v97 = 0uLL;
        v98 = 0uLL;
        v99 = (v30 + v41);
        if ((v30 + v41 + 16) <= result)
        {
          v96 = *v99;
        }

        v100 = (v99 + v41);
        if (&v100[1] <= result)
        {
          v97 = *v100;
        }

        v101 = (v100 + v41);
        if (&v101[1] <= result)
        {
          v98 = *v101;
        }

        if (&v28[1] <= v27)
        {
          v102 = *v28;
        }

        else
        {
          v102 = 0uLL;
        }

        v103 = 0uLL;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = (v28 + v42);
        if (v28[1].u64 + v42 <= v27)
        {
          v103 = *v106;
        }

        v107 = (v106 + v42);
        if (&v107[1] <= v27)
        {
          v104 = *v107;
        }

        v108 = (v107 + v42);
        if (&v108[1] <= v27)
        {
          v105 = *v108;
        }

        v31.i32[0] = 0;
        v109 = vuzp1q_s32(v44, v104);
        v110 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v90, v97)), vextq_s8(v44, v109, 0xCuLL));
        v111 = vuzp2q_s32(v90, v97);
        v97.i32[0] = v90.i32[2];
        v112 = v44;
        v112.i32[3] = v104.i32[1];
        v113 = vtrn2q_s32(vrev64q_s32(v97), v109);
        v114 = vtrn2q_s32(vrev64q_s32(v111), v112);
        v115 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v111, v90)), vuzp2q_s32(v44, v104));
        v116 = vuzp1q_s32(v44, v105);
        v117 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v91, v98)), vextq_s8(v44, v116, 0xCuLL));
        v118 = vuzp2q_s32(v91, v98);
        v98.i32[0] = v91.i32[2];
        v119 = vtrn2q_s32(vrev64q_s32(v98), v116);
        v120 = v44;
        v120.i32[3] = v105.i32[1];
        v121 = vtrn2q_s32(vrev64q_s32(v118), v120);
        v122 = vrev64q_s32(vtrn2q_s32(v118, v91));
        v123 = vtrn2q_s32(v122, vuzp2q_s32(v44, v105));
        if (a12[4] == v85)
        {
          v124 = 4 - a12[5];
        }

        else
        {
          v124 = 4;
        }

        v122.i32[0] = a12[1] & 2;
        v125 = vdupq_lane_s32(*&vceqq_s32(v122, v31), 0);
        v126 = vbslq_s8(v125, v121, v123);
        v127 = vbslq_s8(v125, v117, v119);
        v128 = vbslq_s8(v125, v114, v115);
        v129 = vbslq_s8(v125, v110, v113);
        v130 = v44;
        v130.i32[3] = v103.i32[1];
        v131 = vuzp2q_s32(v89, v96);
        v132 = vtrn2q_s32(vrev64q_s32(v131), v130);
        v133 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v131, v89)), vuzp2q_s32(v44, v103));
        v134 = vbslq_s8(v125, v132, v133);
        v135 = vuzp1q_s32(v44, v103);
        v136 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v89, v96)), vextq_s8(v44, v135, 0xCuLL));
        v96.i32[0] = v89.i32[2];
        v137 = vtrn2q_s32(vrev64q_s32(v96), v135);
        v138 = vbslq_s8(v125, v136, v137);
        v139 = v44;
        v139.i32[3] = v102.i32[1];
        v140 = vuzp2q_s32(v87, v95);
        v141 = vtrn2q_s32(vrev64q_s32(v140), v139);
        v142 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v140, v87)), vuzp2q_s32(v44, v102));
        v143 = vbslq_s8(v125, v141, v142);
        v144 = vuzp1q_s32(v44, v102);
        v145 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v87, v95)), vextq_s8(v44, v144, 0xCuLL));
        v95.i32[0] = v87.i32[2];
        v146 = vrev64q_s32(v95);
        v147 = vtrn2q_s32(v146, v144);
        if ((v86 & 2) != 0)
        {
          v124 -= 2;
        }

        v148 = v86 & 1;
        v149 = v124 - v148;
        v146.i32[0] = v148;
        v31 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v146, v31)), 0);
        v150 = vbslq_s8(v31, v143, vbslq_s8(v125, v145, v147));
        v151 = vbslq_s8(v31, v134, v138);
        v152 = vbslq_s8(v31, v128, v129);
        v153 = vbslq_s8(v31, v126, v127);
        if (v124 - v148 <= 1)
        {
          v158 = 0;
        }

        else
        {
          v154 = vbslq_s8(v125, v119, v117);
          v155 = vbslq_s8(v125, v113, v110);
          v156 = vbslq_s8(v125, v137, v136);
          v157 = vbslq_s8(v125, v147, v145);
          *a14 = v150;
          *(a14 + 16) = vbslq_s8(v31, v157, v143);
          *v75 = v151;
          *(v75 + 16) = vbslq_s8(v31, v156, v134);
          *v76 = v152;
          *(v76 + 16) = vbslq_s8(v31, v155, v128);
          v149 -= 2;
          v150 = vbslq_s8(v31, vbslq_s8(v125, v142, v141), v157);
          *v84 = v153;
          *(v84 + 16) = vbslq_s8(v31, v154, v126);
          v151 = vbslq_s8(v31, vbslq_s8(v125, v133, v132), v156);
          v152 = vbslq_s8(v31, vbslq_s8(v125, v115, v114), v155);
          v153 = vbslq_s8(v31, vbslq_s8(v125, v123, v121), v154);
          v158 = 32;
        }

        v43 = v262;
        if (v149 >= 1)
        {
          *(v158 + a14) = v150;
          *(v158 + v75) = v151;
          *(v158 + v76) = v152;
          *(v158 + v84) = v153;
          v158 |= 0x10uLL;
        }

        ++v29;
        ++v30;
        ++v28;
        v88 = a12[4];
        if (v88 == v85)
        {
          goto LABEL_236;
        }

        a14 += v158;
        v75 += v158;
        v76 += v158;
        v84 += v158;
        ++v85;
      }

      else
      {
        v88 = a12[4];
      }

      v159 = a12[5];
      v160 = v159 != 0;
      if (v88 == 0 && v160 || (v161 = v88 - v160, v85 > v161))
      {
        v207 = v84;
        v206 = v76;
        v205 = v75;
        v204 = a14;
        if (v159)
        {
          goto LABEL_145;
        }

LABEL_143:
        a5 = v260;
        a6 = v261;
        v34 = v259;
        a1 = v263;
        v43 = v262;
        goto LABEL_236;
      }

      v162 = v161 - v85 + 1;
      do
      {
        v163 = 0uLL;
        if (v29)
        {
          if (v29 + 1 <= v40)
          {
            v164 = *v29;
          }

          else
          {
            v164 = 0uLL;
          }

          v165 = 0uLL;
          v166 = 0uLL;
          v167 = 0uLL;
          v175 = (v29 + v36);
          if ((v29 + v36 + 16) <= v40)
          {
            v165 = *v175;
          }

          v176 = (v175 + v36);
          if (&v176[1] <= v40)
          {
            v166 = *v176;
          }

          v177 = (v176 + v36);
          if (&v177[1] <= v40)
          {
            v167 = *v177;
          }

          ++v29;
          if (!v30)
          {
LABEL_112:
            v168 = 0uLL;
            v169 = 0uLL;
            v170 = 0uLL;
            if (!v28)
            {
              goto LABEL_113;
            }

            goto LABEL_131;
          }
        }

        else
        {
          v164 = 0uLL;
          v165 = 0uLL;
          v166 = 0uLL;
          v167 = 0uLL;
          if (!v30)
          {
            goto LABEL_112;
          }
        }

        if (v30 + 1 <= result)
        {
          v163 = *v30;
        }

        v168 = 0uLL;
        v169 = 0uLL;
        v170 = 0uLL;
        v178 = (v30 + v41);
        if ((v30 + v41 + 16) <= result)
        {
          v168 = *v178;
        }

        v179 = (v178 + v41);
        if (&v179[1] <= result)
        {
          v169 = *v179;
        }

        v180 = (v179 + v41);
        if (&v180[1] <= result)
        {
          v170 = *v180;
        }

        ++v30;
        if (!v28)
        {
LABEL_113:
          v171 = 0uLL;
          v172 = 0uLL;
          v173 = 0uLL;
          v174 = 0uLL;
          goto LABEL_141;
        }

LABEL_131:
        if (&v28[1] <= v27)
        {
          v171 = *v28;
        }

        else
        {
          v171 = 0uLL;
        }

        v172 = 0uLL;
        v173 = 0uLL;
        v174 = 0uLL;
        v181 = (v28 + v42);
        if (v28[1].u64 + v42 <= v27)
        {
          v172 = *v181;
        }

        v182 = (v181 + v42);
        if (&v182[1] <= v27)
        {
          v173 = *v182;
        }

        v183 = (v182 + v42);
        if (&v183[1] <= v27)
        {
          v174 = *v183;
        }

        ++v28;
LABEL_141:
        v31 = v44;
        v31.i32[3] = v174.i32[1];
        v184 = v44;
        v184.i32[3] = v173.i32[1];
        v185 = vuzp2q_s32(v166, v169);
        v186 = vuzp1q_s32(v44, v172);
        v187 = v168;
        v187.i32[0] = v165.i32[2];
        v188 = vtrn2q_s32(vrev64q_s32(v187), v186);
        v189 = v44;
        v189.i32[3] = v172.i32[1];
        v190 = vuzp2q_s32(v165, v168);
        v191 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v165, v168)), vextq_s8(v44, v186, 0xCuLL));
        v192 = vuzp2q_s32(v164, v163);
        v193 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v192, v164)), vuzp2q_s32(v44, v171));
        v194 = vuzp1q_s32(v44, v171);
        v195 = v44;
        v195.i32[3] = v171.i32[1];
        v196 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v164, v163)), vextq_s8(v44, v194, 0xCuLL));
        v197 = vuzp2q_s32(v167, v170);
        v163.i32[0] = v164.i32[2];
        v198 = vtrn2q_s32(vrev64q_s32(v192), v195);
        v199 = vuzp1q_s32(v44, v174);
        *a14 = v196;
        *(a14 + 16) = v198;
        v200 = vuzp1q_s32(v167, v170);
        v201 = vtrn2q_s32(vrev64q_s32(v163), v194);
        v202 = vuzp1q_s32(v44, v173);
        *(a14 + 32) = v201;
        *(a14 + 48) = v193;
        v203 = v169;
        v203.i32[0] = v166.i32[2];
        v204 = (a14 + 64);
        v205 = (v75 + 64);
        *v75 = v191;
        *(v75 + 16) = vtrn2q_s32(vrev64q_s32(v190), v189);
        *(v75 + 32) = v188;
        *(v75 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v190, v165)), vuzp2q_s32(v44, v172));
        v206 = (v76 + 64);
        *v76 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v166, v169)), vextq_s8(v44, v202, 0xCuLL));
        *(v76 + 16) = vtrn2q_s32(vrev64q_s32(v185), v184);
        *(v76 + 32) = vtrn2q_s32(vrev64q_s32(v203), v202);
        *(v76 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v185, v166)), vuzp2q_s32(v44, v173));
        v207 = (v84 + 64);
        v170.i32[0] = v167.i32[2];
        *(v84 + 32) = vtrn2q_s32(vrev64q_s32(v170), v199);
        *(v84 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v197, v167)), vuzp2q_s32(v44, v174));
        a14 += 64;
        *v84 = vtrn2q_s32(vrev64q_s32(v200), vextq_s8(v44, v199, 0xCuLL));
        *(v84 + 16) = vtrn2q_s32(vrev64q_s32(v197), v31);
        v75 += 64;
        v76 += 64;
        v84 += 64;
        --v162;
      }

      while (v162);
      v159 = a12[5];
      if (!v159)
      {
        goto LABEL_143;
      }

LABEL_145:
      v208 = 4 - v159;
      if (v32 == a12[6])
      {
        v209 = 4 - a12[7];
      }

      else
      {
        v209 = 4;
      }

      v210 = 0uLL;
      if (!v29)
      {
        v214 = 0uLL;
        v215 = 0uLL;
        v216 = 0uLL;
        v217 = 0uLL;
        v43 = v262;
        if (v30)
        {
          goto LABEL_178;
        }

LABEL_153:
        v218 = 0uLL;
        v219 = 0uLL;
        v220 = 0uLL;
        if (v28)
        {
          goto LABEL_204;
        }

LABEL_154:
        v221 = 0uLL;
        v222 = 0uLL;
        v223 = 0uLL;
        v224 = 0uLL;
        a1 = v263;
        goto LABEL_231;
      }

      v43 = v262;
      if (v209 < 2)
      {
        v212 = 0;
        v211 = v29;
        v213 = v29;
      }

      else
      {
        v211 = (v29 + v36);
        if (v209 == 2)
        {
          v212 = 0;
          v213 = (v29 + v36);
        }

        else
        {
          v213 = (v29 + v36);
          v211 = (v211 + v36);
          if (v209 <= 3)
          {
            v212 = 0;
          }

          else
          {
            v212 = v36;
          }
        }
      }

      v225 = (v211 + v212);
      v215 = 0uLL;
      v216 = 0uLL;
      v217 = 0uLL;
      v214 = 0uLL;
      if ((4 - v159))
      {
        if ((v29 + 4 * v208) <= v40)
        {
          v214.i32[0] = *(v29 + 3 - v159);
        }

        if ((v213 + 4 * v208) <= v40)
        {
          v215.i32[0] = *(v213 + 3 - v159);
        }

        if ((v211 + 4 * v208) <= v40)
        {
          v216.i32[0] = *(v211 + 3 - v159);
        }

        if ((v225 + 4 * v208) <= v40)
        {
          v217.i32[0] = *(v225 + 3 - v159);
        }
      }

      if (((4 - v159) & 2) != 0)
      {
        v214 = vextq_s8(v214, v214, 8uLL);
        if ((v29 + 8) <= v40)
        {
          v226.i64[0] = *v29;
          v226.i64[1] = vextq_s8(v214, v214, 8uLL).u64[0];
          v214 = v226;
        }

        v215 = vextq_s8(v215, v215, 8uLL);
        if (v213 + 1 <= v40)
        {
          v227.i64[0] = *v213;
          v227.i64[1] = vextq_s8(v215, v215, 8uLL).u64[0];
          v215 = v227;
        }

        v216 = vextq_s8(v216, v216, 8uLL);
        if (v211 + 1 <= v40)
        {
          v228.i64[0] = *v211;
          v228.i64[1] = vextq_s8(v216, v216, 8uLL).u64[0];
          v216 = v228;
        }

        v217 = vextq_s8(v217, v217, 8uLL);
        if (v225 + 1 <= v40)
        {
          v229.i64[0] = *v225;
          v229.i64[1] = vextq_s8(v217, v217, 8uLL).u64[0];
          v217 = v229;
        }
      }

      v29 = (v29 + 4 * v208);
      if (!v30)
      {
        goto LABEL_153;
      }

LABEL_178:
      if (v209 < 2)
      {
        v231 = 0;
        v230 = v30;
        v232 = v30;
      }

      else
      {
        v230 = (v30 + v41);
        if (v209 == 2)
        {
          v231 = 0;
          v232 = (v30 + v41);
        }

        else
        {
          v232 = (v30 + v41);
          v230 = (v230 + v41);
          if (v209 <= 3)
          {
            v231 = 0;
          }

          else
          {
            v231 = v41;
          }
        }
      }

      v233 = (v230 + v231);
      v218 = 0uLL;
      v219 = 0uLL;
      v220 = 0uLL;
      if ((4 - v159))
      {
        if ((v30 + 4 * v208) <= result)
        {
          v210.i32[0] = *(v30 + 3 - v159);
        }

        if ((v232 + 4 * v208) <= result)
        {
          v218.i32[0] = *(v232 + 3 - v159);
        }

        if ((v230 + 4 * v208) <= result)
        {
          v219.i32[0] = *(v230 + 3 - v159);
        }

        if ((v233 + 4 * v208) <= result)
        {
          v220.i32[0] = *(v233 + 3 - v159);
        }
      }

      if (((4 - v159) & 2) != 0)
      {
        v210 = vextq_s8(v210, v210, 8uLL);
        if ((v30 + 8) <= result)
        {
          v234.i64[0] = *v30;
          v234.i64[1] = vextq_s8(v210, v210, 8uLL).u64[0];
          v210 = v234;
        }

        v218 = vextq_s8(v218, v218, 8uLL);
        if (v232 + 1 <= result)
        {
          v235.i64[0] = *v232;
          v235.i64[1] = vextq_s8(v218, v218, 8uLL).u64[0];
          v218 = v235;
        }

        v219 = vextq_s8(v219, v219, 8uLL);
        if (v230 + 1 <= result)
        {
          v236.i64[0] = *v230;
          v236.i64[1] = vextq_s8(v219, v219, 8uLL).u64[0];
          v219 = v236;
        }

        v220 = vextq_s8(v220, v220, 8uLL);
        if (v233 + 1 <= result)
        {
          v237.i64[0] = *v233;
          v237.i64[1] = vextq_s8(v220, v220, 8uLL).u64[0];
          v220 = v237;
        }
      }

      v30 = (v30 + 4 * v208);
      if (!v28)
      {
        goto LABEL_154;
      }

LABEL_204:
      if (v209 < 2)
      {
        v239 = 0;
        v238 = v28;
        v240 = v28;
      }

      else
      {
        v238 = (v28->i64 + v42);
        if (v209 == 2)
        {
          v239 = 0;
          v240 = (v28->i64 + v42);
        }

        else
        {
          v240 = (v28->i64 + v42);
          v238 = (v238 + v42);
          if (v209 <= 3)
          {
            v239 = 0;
          }

          else
          {
            v239 = v42;
          }
        }
      }

      v241 = (v238 + v239);
      v222 = 0uLL;
      v223 = 0uLL;
      v224 = 0uLL;
      v221 = 0uLL;
      if ((4 - v159))
      {
        if (v28 + 4 * v208 <= v27)
        {
          v221.i32[0] = v28->i32[3 - v159];
        }

        if (v240 + 4 * v208 <= v27)
        {
          v222.i32[0] = *(v240 + 3 - v159);
        }

        if (v238 + 4 * v208 <= v27)
        {
          v223.i32[0] = *(v238 + 3 - v159);
        }

        if (v241 + 4 * v208 <= v27)
        {
          v224.i32[0] = *(v241 + 3 - v159);
        }
      }

      if (((4 - v159) & 2) != 0)
      {
        v221 = vextq_s8(v221, v221, 8uLL);
        a1 = v263;
        if (&v28->u64[1] <= v27)
        {
          v242.i64[0] = v28->i64[0];
          v242.i64[1] = vextq_s8(v221, v221, 8uLL).u64[0];
          v221 = v242;
        }

        v222 = vextq_s8(v222, v222, 8uLL);
        if ((v240 + 1) <= v27)
        {
          v243.i64[0] = *v240;
          v243.i64[1] = vextq_s8(v222, v222, 8uLL).u64[0];
          v222 = v243;
        }

        v223 = vextq_s8(v223, v223, 8uLL);
        if ((v238 + 1) <= v27)
        {
          v244.i64[0] = *v238;
          v244.i64[1] = vextq_s8(v223, v223, 8uLL).u64[0];
          v223 = v244;
        }

        v224 = vextq_s8(v224, v224, 8uLL);
        if ((v241 + 1) <= v27)
        {
          v245.i64[0] = *v241;
          v245.i64[1] = vextq_s8(v224, v224, 8uLL).u64[0];
          v224 = v245;
        }
      }

      else
      {
        a1 = v263;
      }

      v28 = (v28 + 4 * v208);
LABEL_231:
      v31 = vuzp1q_s32(v44, v221);
      v246 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v214, v210)), vextq_s8(v44, v31, 0xCuLL));
      v247 = vuzp1q_s32(v44, v222);
      v248 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v215, v218)), vextq_s8(v44, v247, 0xCuLL));
      v249 = vuzp1q_s32(v44, v223);
      v250 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v216, v219)), vextq_s8(v44, v249, 0xCuLL));
      v251 = vuzp1q_s32(v44, v224);
      v252 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v217, v220)), vextq_s8(v44, v251, 0xCuLL));
      if ((v208 & 2) != 0)
      {
        v253 = v44;
        v253.i32[3] = v221.i32[1];
        v254 = v44;
        v254.i32[3] = v222.i32[1];
        v255 = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v214, v210)), v253);
        v256 = v44;
        v256.i32[3] = v223.i32[1];
        v257 = v44;
        v257.i32[3] = v224.i32[1];
        *v204 = v246;
        v204[1] = v255;
        *v205 = v248;
        v205[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v215, v218)), v254);
        *v206 = v250;
        v206[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v216, v219)), v256);
        *v207 = v252;
        v207[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v217, v220)), v257);
        if (v208)
        {
          v210.i32[0] = v214.i32[2];
          v218.i32[0] = v215.i32[2];
          v219.i32[0] = v216.i32[2];
          v220.i32[0] = v217.i32[2];
          v204[2] = vtrn2q_s32(vrev64q_s32(v210), v31);
          v205[2] = vtrn2q_s32(vrev64q_s32(v218), v247);
          v206[2] = vtrn2q_s32(vrev64q_s32(v219), v249);
          v207[2] = vtrn2q_s32(vrev64q_s32(v220), v251);
        }
      }

      else
      {
        *v204 = v246;
        *v205 = v248;
        *v206 = v250;
        *v207 = v252;
      }

      a5 = v260;
      a6 = v261;
      v34 = v259;
LABEL_236:
      a14 = v77 + a17;
      v33 = a12[6];
      if (v32++ >= v33)
      {
        return result;
      }
    }

    v83 = a12[7];
    a1 = v263;
    switch(v83)
    {
      case 1u:
        goto LABEL_58;
      case 2u:
        goto LABEL_57;
      case 3u:
        v75 = a16;
LABEL_57:
        v76 = a16;
LABEL_58:
        v84 = a16;
        goto LABEL_61;
    }

LABEL_59:
    v84 = v77;
    goto LABEL_61;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v165, a3);
  v163 = 0;
  v164 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v20 = a12[2];
  v21 = a12[6];
  if (v20 <= v21)
  {
    v22 = a12;
    v23 = a17;
    v133 = *(a13 + 60);
    v130 = a6;
    while (1)
    {
      v25 = *(a4 + 8);
      if (v25)
      {
        v26 = *(a11 + 24);
        v27 = (HIDWORD(v26) * v133) + 4 * v20;
        v28 = *(*(v25 + 40) + 8 * *(a11 + 60));
        if (*(v28 + 12) - 1 < v27)
        {
          v27 = *(v28 + 12) - 1;
        }

        if (*(v25 + 104) == 1)
        {
          v29 = (*(v28 + 8 * v26 + 24) + 8 * v27);
        }

        else
        {
          v30 = (v27 * *(v25 + 108)) >> *(v25 + 112);
          if (v30 >= *(v28 + 20) - 1)
          {
            LODWORD(v30) = *(v28 + 20) - 1;
          }

          v29 = (*(v28 + 8 * v26 + 24) + 8 * v30);
        }

        v31 = *v29;
        v32 = HIDWORD(v31);
        if (a2 >= v31)
        {
          v33 = (a1 + v31);
        }

        else
        {
          v33 = 0;
        }

        if (a2 - v31 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v34 = a2 >= v31;
        v35 = a1 + v31 + v32;
        if (!v34)
        {
          v35 = 0;
        }

        v163 = v33;
        v164 = v35;
      }

      v36 = *(a5 + 8);
      if (v36)
      {
        v37 = *(a11 + 24);
        v38 = (HIDWORD(v37) * v133) + 4 * v20;
        v39 = *(*(v36 + 40) + 8 * *(a11 + 60));
        if (*(v39 + 12) - 1 < v38)
        {
          v38 = *(v39 + 12) - 1;
        }

        if (*(v36 + 104) == 1)
        {
          v40 = (*(v39 + 8 * v37 + 24) + 8 * v38);
        }

        else
        {
          v41 = (v38 * *(v36 + 108)) >> *(v36 + 112);
          if (v41 >= *(v39 + 20) - 1)
          {
            LODWORD(v41) = *(v39 + 20) - 1;
          }

          v40 = (*(v39 + 8 * v37 + 24) + 8 * v41);
        }

        v42 = *v40;
        v43 = HIDWORD(v42);
        if (a2 >= v42)
        {
          v44 = (a1 + v42);
        }

        else
        {
          v44 = 0;
        }

        if (a2 - v42 < HIDWORD(v42))
        {
          v43 = a2 - v42;
        }

        v34 = a2 >= v42;
        v45 = a1 + v42 + v43;
        if (!v34)
        {
          v45 = 0;
        }

        v161 = v44;
        v162 = v45;
      }

      v46 = *(a6 + 8);
      if (v46)
      {
        v47 = *(a11 + 24);
        v48 = (HIDWORD(v47) * v133) + 4 * v20;
        v49 = *(*(v46 + 40) + 8 * *(a11 + 60));
        if (*(v49 + 12) - 1 < v48)
        {
          v48 = *(v49 + 12) - 1;
        }

        if (*(v46 + 104) == 1)
        {
          v50 = (*(v49 + 8 * v47 + 24) + 8 * v48);
        }

        else
        {
          v52 = (v48 * *(v46 + 108)) >> *(v46 + 112);
          if (v52 >= *(v49 + 20) - 1)
          {
            LODWORD(v52) = *(v49 + 20) - 1;
          }

          v50 = (*(v49 + 8 * v47 + 24) + 8 * v52);
        }

        v53 = *v50;
        v54 = HIDWORD(*v50);
        v55 = a1 + *v50;
        v56 = a2 - *v50;
        if (a2 >= *v50)
        {
          v51 = (a1 + v53);
        }

        else
        {
          v51 = 0;
        }

        if (v56 < HIDWORD(v53))
        {
          v54 = a2 - v53;
        }

        v34 = a2 >= v53;
        v57 = v55 + v54;
        if (!v34)
        {
          v57 = 0;
        }

        v159 = v51;
        v160 = v57;
      }

      else
      {
        v51 = v159;
      }

      v58 = (a14 + v23);
      v59 = (a14 + v23 + v23);
      v60 = &v59->i8[v23];
      if (!v163 || !v161 || !v51)
      {
        goto LABEL_94;
      }

      v61 = a16;
      if (!a16)
      {
        break;
      }

      if (v20 == v22[2])
      {
        v62 = v22[3] + 1;
        v63 = a14;
        a14 = (a14 + v23);
        v58 = v59;
        v59 = (v59 + v23);
        do
        {
          v60 = v59;
          v59 = v58;
          v58 = a14;
          a14 = v63;
          v63 = a16;
          --v62;
        }

        while (v62);
      }

      if (v20 != v21)
      {
        break;
      }

      v64 = v22[7];
      if (v64 != 1)
      {
        if (v64 != 2)
        {
          if (v64 != 3)
          {
            break;
          }

          v58 = a16;
        }

        v59 = a16;
      }

LABEL_67:
      v65 = *v22;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v163, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v161, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v159, v65);
      v22 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        v66 = v165;
        v67 = vld1q_dup_s16(v66);
        v144 = v67;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v163, a8, v158);
        v136 = v158[1];
        v139 = v158[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v161, a9, v157);
        v147 = v157[1];
        v142 = v157[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a10, &v155);
        v22 = a12;
        v68.i32[0] = 0;
        v69 = v144;
        v70 = v147;
        v169.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EE70);
        v173.val[0] = v136;
        v71 = v139;
        v72 = v155;
        v173.val[1] = v156;
        v169.val[1] = vqtbl2q_s8(v173, xmmword_296B6EF40);
        v73 = vqtbl2q_s8(v169, xmmword_296B6EDD0);
        v169.val[1] = vqtbl2q_s8(*v69.i8, xmmword_296B6EE90);
        v74 = vqtbl2q_s8(v173, xmmword_296B6EF50);
        v75 = vqtbl2q_s8(*(&v169 + 16), xmmword_296B6EDD0);
        v76 = vqtbl2q_s8(*v69.i8, xmmword_296B6EEA0);
        v77 = vqtbl2q_s8(v173, xmmword_296B6EF60);
        v180.val[0] = v136;
        v180.val[1] = v156;
        v78 = vqtbl2q_s8(*v76.i8, xmmword_296B6EDD0);
        v173.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEB0);
        v173.val[1] = vqtbl2q_s8(v180, xmmword_296B6EF70);
        v79 = vqtbl2q_s8(v173, xmmword_296B6EDD0);
        if (a12[4] == v65)
        {
          v80 = 4 - a12[5];
        }

        else
        {
          v80 = 4;
        }

        v81 = a12[1];
        v76.i32[0] = v81 & 2;
        v82 = vdupq_lane_s32(*&vceqq_s32(v76, v68), 0);
        v83 = vbslq_s8(v82, v79, v78);
        v84 = vbslq_s8(v82, v78, v79);
        v85 = vbslq_s8(v82, v75, v73);
        v86 = vbslq_s8(v82, v73, v75);
        v87 = v142;
        v174.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEA0);
        v174.val[1] = vqtbl2q_s8(*v71.i8, xmmword_296B6EF60);
        v88 = vqtbl2q_s8(v174, xmmword_296B6EDD0);
        v174.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEB0);
        v174.val[1] = vqtbl2q_s8(*v71.i8, xmmword_296B6EF70);
        v174.val[0] = vqtbl2q_s8(v174, xmmword_296B6EDD0);
        v89 = vbslq_s8(v82, v174.val[0], v88);
        v90 = vbslq_s8(v82, v88, v174.val[0]);
        v177.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EE70);
        v177.val[1] = vqtbl2q_s8(*v71.i8, xmmword_296B6EF40);
        v174.val[0] = vqtbl2q_s8(v177, xmmword_296B6EDD0);
        v177.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EE90);
        v177.val[1] = vqtbl2q_s8(*v71.i8, xmmword_296B6EF50);
        v177.val[0] = vqtbl2q_s8(v177, xmmword_296B6EDD0);
        v91 = vbslq_s8(v82, v177.val[0], v174.val[0]);
        v92 = vbslq_s8(v82, v174.val[0], v177.val[0]);
        if ((v81 & 2) != 0)
        {
          v80 -= 2;
        }

        if (v81)
        {
          v93 = vextq_s8(v91, v92, 8uLL).u64[0];
          v92 = vextq_s8(v92, v91, 8uLL);
          v94 = vextq_s8(v89, v90, 8uLL).u64[0];
          v90 = vextq_s8(v90, v89, 8uLL);
          v95 = vextq_s8(v85, v86, 8uLL).u64[0];
          v86 = vextq_s8(v86, v85, 8uLL);
          v96 = vextq_s8(v83, v84, 8uLL).u64[0];
          --v80;
          v84 = vextq_s8(v84, v83, 8uLL);
          v91.i64[0] = v93;
          v89.i64[0] = v94;
          v85.i64[0] = v95;
          v83.i64[0] = v96;
        }

        if (v80 <= 1)
        {
          v97 = 0;
        }

        else
        {
          *a14 = v92;
          *v58 = v90;
          v80 -= 2;
          v92.i64[0] = v91.i64[0];
          v90.i64[0] = v89.i64[0];
          *v59 = v86;
          v86.i64[0] = v85.i64[0];
          v61->val[0] = v84;
          v84.i64[0] = v83.i64[0];
          v97 = 16;
        }

        if (v80 >= 1)
        {
          *(a14->i64 + v97) = v92.i64[0];
          *(v58->i64 + v97) = v90.i64[0];
          *(v59->i64 + v97) = v86.i64[0];
          *(v61->val[0].i64 + v97) = v84.i64[0];
          v97 |= 8uLL;
        }

        v98 = a12[4];
        if (v98 == v65)
        {
          goto LABEL_94;
        }

        a14 = (a14 + v97);
        v58 = (v58 + v97);
        v59 = (v59 + v97);
        v61 = (v61 + v97);
        ++v65;
      }

      else
      {
        v98 = a12[4];
      }

      v99 = v22[5];
      v100 = v99 != 0;
      if (v98 != 0 || !v100)
      {
        v101 = v98 - v100;
        if (v65 <= v101)
        {
          v102 = v101 - v65 + 1;
          v103 = a8;
          do
          {
            v104 = v61;
            v105 = v165;
            v106 = vld1q_dup_s16(v105);
            v145.val[0] = v106;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v163, v103, v154);
            v140 = v154[0];
            v137 = v154[1];
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v161, a9, v153);
            v145.val[1] = v153[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a10, v152);
            v166.val[0] = vqtbl2q_s8(v145, xmmword_296B6EEA0);
            v179.val[0] = v137;
            v178.val[0] = v140;
            v178.val[1] = v152[0];
            v179.val[1] = v152[1];
            v166.val[1] = vqtbl2q_s8(v179, xmmword_296B6EF60);
            v166.val[0] = vqtbl2q_s8(v166, xmmword_296B6EDD0);
            v166.val[1] = vqtbl2q_s8(v145, xmmword_296B6EEB0);
            v107 = vqtbl2q_s8(v179, xmmword_296B6EF70);
            v166.val[1] = vqtbl2q_s8(*(&v166 + 16), xmmword_296B6EDD0);
            v170.val[0] = vqtbl2q_s8(v145, xmmword_296B6EE70);
            v170.val[1] = vqtbl2q_s8(v179, xmmword_296B6EF40);
            v170.val[0] = vqtbl2q_s8(v170, xmmword_296B6EDD0);
            v170.val[1] = vqtbl2q_s8(v145, xmmword_296B6EE90);
            v108 = vqtbl2q_s8(v179, xmmword_296B6EF50);
            v175.val[0] = vqtbl2q_s8(v145, xmmword_296B6EEA0);
            v175.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF60);
            v175.val[0] = vqtbl2q_s8(v175, xmmword_296B6EDD0);
            v175.val[1] = vqtbl2q_s8(v145, xmmword_296B6EE70);
            v109 = vqtbl2q_s8(v178, xmmword_296B6EF40);
            v175.val[1] = vqtbl2q_s8(*(&v175 + 16), xmmword_296B6EDD0);
            v176.val[0] = v170.val[1];
            v176.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF50);
            v110 = vqtbl2q_s8(v176, xmmword_296B6EDD0);
            v176.val[0] = vqtbl2q_s8(v145, xmmword_296B6EEB0);
            *a14 = v175.val[1];
            a14[1] = v110;
            a14 += 2;
            v176.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF70);
            *v58 = v175.val[0];
            v58[1] = vqtbl2q_s8(v176, xmmword_296B6EDD0);
            v58 += 2;
            *v59 = v170.val[0];
            v59[1] = vqtbl2q_s8(*(&v170 + 16), xmmword_296B6EDD0);
            v59 += 2;
            ++v61;
            *v104 = v166;
            --v102;
          }

          while (v102);
          v22 = a12;
          v99 = a12[5];
          a8 = v103;
          v23 = a17;
          a6 = v130;
        }
      }

      if (v99)
      {
        v111 = v165;
        v112 = vld1q_dup_s16(v111);
        v146 = v112;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v163, a8, v151);
        v143 = v151[0];
        v141 = v151[1];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v161, a9, v150);
        v138 = v150[0];
        v148 = v150[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v159, a10, v149);
        v113 = v141;
        v114 = v138;
        v115 = v146;
        v116 = v148;
        v117 = v143;
        v22 = a12;
        v167.val[0] = vqtbl2q_s8(*v115.i8, xmmword_296B6EEA0);
        v118 = v149[0];
        v119 = v149[1];
        v167.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF60);
        v120 = vqtbl2q_s8(v167, xmmword_296B6EDD0);
        v167.val[1] = vqtbl2q_s8(*v115.i8, xmmword_296B6EE70);
        v121 = vqtbl2q_s8(*v113.i8, xmmword_296B6EF40);
        v122 = vqtbl2q_s8(*(&v167 + 16), xmmword_296B6EDD0);
        v123 = v146;
        v171.val[0] = vqtbl2q_s8(*v123.i8, xmmword_296B6EEA0);
        v171.val[1] = vqtbl2q_s8(*v117.i8, xmmword_296B6EF60);
        v124 = vqtbl2q_s8(v171, xmmword_296B6EDD0);
        v171.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EE70);
        v125 = vqtbl2q_s8(*v117.i8, xmmword_296B6EF40);
        v126 = vqtbl2q_s8(*(&v171 + 16), xmmword_296B6EDD0);
        v127 = 4 - a12[5];
        if ((v127 & 2) != 0)
        {
          *a14 = v126;
          *v58 = v124;
          *v59 = v122;
          v61->val[0] = v120;
          if (v127)
          {
            v168.val[0] = vqtbl2q_s8(*v115.i8, xmmword_296B6EEB0);
            v168.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF70);
            v168.val[0].i64[0] = vqtbl2q_s8(v168, xmmword_296B6EDD0).u64[0];
            v168.val[1] = vqtbl2q_s8(*v115.i8, xmmword_296B6EE90);
            v128 = vqtbl2q_s8(*v113.i8, xmmword_296B6EF50);
            v172.val[0] = vqtbl2q_s8(*v123.i8, xmmword_296B6EEB0);
            v172.val[1] = vqtbl2q_s8(*v117.i8, xmmword_296B6EF70);
            v172.val[0].i64[0] = vqtbl2q_s8(v172, xmmword_296B6EDD0).u64[0];
            v172.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EE90);
            v129 = vqtbl2q_s8(*v117.i8, xmmword_296B6EF50);
            a14[1].i64[0] = vqtbl2q_s8(*(&v172 + 16), xmmword_296B6EDD0).u64[0];
            v58[1].i64[0] = v172.val[0].i64[0];
            v59[1].i64[0] = vqtbl2q_s8(*(&v168 + 16), xmmword_296B6EDD0).u64[0];
            v61->val[1].i64[0] = v168.val[0].i64[0];
          }
        }

        else
        {
          a14->i64[0] = v126.i64[0];
          v58->i64[0] = v124.i64[0];
          v59->i64[0] = v122.i64[0];
          v61->val[0].i64[0] = v120.i64[0];
        }
      }

LABEL_94:
      a14 = (v60->val + v23);
      v21 = v22[6];
      v34 = v20++ >= v21;
      if (v34)
      {
        return result;
      }
    }

    v61 = v60;
    goto LABEL_67;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(v254, a3);
  v28 = a12[2];
  v29 = a12[6];
  if (v28 <= v29)
  {
    v30 = a4;
    v32 = a11[3];
    v33 = a11[7].u32[1];
    v34 = 4 * vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v33) + 16), *(*(a4 + 8) + 48), v32), *(*(a4 + 8) + 48)).u32[0];
    v35 = *(a6 + 8);
    v36 = *(*&v35[5] + 8 * v33);
    v37 = 4 * vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v33) + 16), *(*(a5 + 8) + 48), v32), *(*(a5 + 8) + 48)).u32[0];
    v38 = 4 * vmin_u32(vmls_s32(v36[2], v35[6], v32), v35[6]).u32[0];
    v39 = *(a13 + 60);
    v40 = vld1q_dup_f32(v254);
    v253 = a1;
    v252 = v39;
    v250 = a5;
    v251 = a6;
    v249 = a4;
    while (1)
    {
      v41 = *(v30 + 8);
      if (v41)
      {
        v42 = *(*(v41 + 40) + 8 * a11[7].u32[1]);
        v43 = *(v42 + 12) - 1;
        if (v43 >= (HIDWORD(*&a11[3]) * v39) + 4 * v28)
        {
          v43 = (HIDWORD(*&a11[3]) * v39) + 4 * v28;
        }

        v44 = v42 + 8 * *&a11[3];
        if (*(v41 + 104) == 1)
        {
          v45 = (*(v44 + 24) + 8 * v43);
        }

        else
        {
          v46 = (v43 * *(v41 + 108)) >> *(v41 + 112);
          v47 = *(v42 + 20) - 1;
          if (v46 >= v47)
          {
            LODWORD(v46) = v47;
          }

          v45 = (*(v44 + 24) + 8 * v46);
        }

        v48 = *v45;
        if (a2 <= v48)
        {
          v25 = 0;
          v36 = 0;
        }

        else
        {
          v49 = v48;
          if (a2 - v48 >= HIDWORD(v48))
          {
            v50 = HIDWORD(v48);
          }

          else
          {
            v50 = a2 - v48;
          }

          v25 = (v49 + a1);
          v36 = (v50 + v49 + a1);
        }
      }

      v51 = *(a5 + 8);
      if (v51)
      {
        v52 = *(*(v51 + 40) + 8 * a11[7].u32[1]);
        v53 = *(v52 + 12) - 1;
        if (v53 >= (HIDWORD(*&a11[3]) * v39) + 4 * v28)
        {
          v53 = (HIDWORD(*&a11[3]) * v39) + 4 * v28;
        }

        v54 = v52 + 8 * *&a11[3];
        if (*(v51 + 104) == 1)
        {
          v55 = (*(v54 + 24) + 8 * v53);
        }

        else
        {
          v56 = (v53 * *(v51 + 108)) >> *(v51 + 112);
          v57 = *(v52 + 20) - 1;
          if (v56 >= v57)
          {
            LODWORD(v56) = v57;
          }

          v55 = (*(v54 + 24) + 8 * v56);
        }

        v58 = *v55;
        if (a2 <= v58)
        {
          v26 = 0;
          result = 0;
        }

        else
        {
          v59 = v58;
          if (a2 - v58 >= HIDWORD(v58))
          {
            v60 = HIDWORD(v58);
          }

          else
          {
            v60 = a2 - v58;
          }

          v26 = (v59 + a1);
          result = (v60 + v59 + a1);
        }
      }

      v61 = *(a6 + 8);
      if (v61)
      {
        v62 = *(*(v61 + 40) + 8 * a11[7].u32[1]);
        v63 = *(v62 + 12) - 1;
        if (v63 >= (HIDWORD(*&a11[3]) * v39) + 4 * v28)
        {
          v63 = (HIDWORD(*&a11[3]) * v39) + 4 * v28;
        }

        v64 = v62 + 8 * *&a11[3];
        if (*(v61 + 104) == 1)
        {
          v65 = (*(v64 + 24) + 8 * v63);
        }

        else
        {
          v66 = (v63 * *(v61 + 108)) >> *(v61 + 112);
          v67 = *(v62 + 20) - 1;
          if (v66 >= v67)
          {
            LODWORD(v66) = v67;
          }

          v65 = (*(v64 + 24) + 8 * v66);
        }

        v68 = *v65;
        if (a2 <= v68)
        {
          v24 = 0;
          v23 = 0;
        }

        else
        {
          v69 = v68;
          if (a2 - v68 >= HIDWORD(v68))
          {
            v70 = HIDWORD(v68);
          }

          else
          {
            v70 = a2 - v68;
          }

          v24 = (v69 + a1);
          v23 = v70 + v69 + a1;
        }
      }

      v71 = a14 + a17;
      v72 = a14 + a17 + a17;
      v73 = v72 + a17;
      if (!v25 || !v26 || !v24)
      {
        goto LABEL_236;
      }

      if (!a16)
      {
        goto LABEL_59;
      }

      if (v28 == a12[2])
      {
        v74 = a12[3] + 1;
        v75 = v72 + a17;
        v76 = a14 + a17 + a17;
        v77 = a14 + a17;
        v78 = a14;
        do
        {
          a14 = v78;
          v71 = v77;
          v72 = v76;
          v73 = v75;
          v75 = v76;
          v76 = v77;
          v77 = v78;
          v78 = a16;
          --v74;
        }

        while (v74);
      }

      if (v28 == v29)
      {
        break;
      }

      v80 = v73;
      a1 = v253;
LABEL_61:
      v81 = *a12;
      v25 += v81;
      if ((v25 - 1) >= v36)
      {
        return result;
      }

      v26 += v81;
      if ((v26 - 1) >= result)
      {
        return result;
      }

      v24 += v81;
      if (&v24[-1].u64[1] + 7 >= v23)
      {
        return result;
      }

      v82 = a12[1];
      if (v82)
      {
        if (v25 + 1 <= v36)
        {
          v83 = *v25;
        }

        else
        {
          v83 = 0uLL;
        }

        v85 = 0uLL;
        v86 = 0uLL;
        v87 = 0uLL;
        v88 = (v25 + v34);
        if ((v25 + v34 + 16) <= v36)
        {
          v85 = *v88;
        }

        v89 = (v88 + v34);
        if (&v89[1] <= v36)
        {
          v86 = *v89;
        }

        v90 = (v89 + v34);
        if (&v90[1] <= v36)
        {
          v87 = *v90;
        }

        if (v26 + 1 <= result)
        {
          v91 = *v26;
        }

        else
        {
          v91 = 0uLL;
        }

        v92 = 0uLL;
        v93 = 0uLL;
        v94 = 0uLL;
        v95 = (v26 + v37);
        if ((v26 + v37 + 16) <= result)
        {
          v92 = *v95;
        }

        v96 = (v95 + v37);
        if (&v96[1] <= result)
        {
          v93 = *v96;
        }

        v97 = (v96 + v37);
        if (&v97[1] <= result)
        {
          v94 = *v97;
        }

        if (&v24[1] <= v23)
        {
          v98 = *v24;
        }

        else
        {
          v98 = 0uLL;
        }

        v99 = 0uLL;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = (v24 + v38);
        if (v24[1].u64 + v38 <= v23)
        {
          v99 = *v102;
        }

        v103 = (v102 + v38);
        if (&v103[1] <= v23)
        {
          v100 = *v103;
        }

        v104 = (v103 + v38);
        if (&v104[1] <= v23)
        {
          v101 = *v104;
        }

        v27.i32[0] = 0;
        v105 = vuzp1q_s32(v86, v100);
        v106 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v93)), vextq_s8(v86, v105, 0xCuLL));
        v107 = vuzp2q_s32(v40, v93);
        v93.i32[0] = v40.i32[2];
        v108 = v86;
        v108.i32[3] = v100.i32[1];
        v109 = vtrn2q_s32(vrev64q_s32(v93), v105);
        v110 = vtrn2q_s32(vrev64q_s32(v107), v108);
        v111 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v107, v40)), vuzp2q_s32(v86, v100));
        v112 = vuzp1q_s32(v87, v101);
        v113 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v94)), vextq_s8(v87, v112, 0xCuLL));
        v114 = vuzp2q_s32(v40, v94);
        v94.i32[0] = v40.i32[2];
        v115 = vtrn2q_s32(vrev64q_s32(v94), v112);
        v116 = v87;
        v116.i32[3] = v101.i32[1];
        v117 = vtrn2q_s32(vrev64q_s32(v114), v116);
        v118 = vuzp2q_s32(v87, v101);
        v119 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v114, v40)), v118);
        if (a12[4] == v81)
        {
          v120 = 4 - a12[5];
        }

        else
        {
          v120 = 4;
        }

        v118.i32[0] = a12[1] & 2;
        v121 = vdupq_lane_s32(*&vceqq_s32(v118, v27), 0);
        v122 = vbslq_s8(v121, v117, v119);
        v123 = vbslq_s8(v121, v113, v115);
        v124 = vbslq_s8(v121, v110, v111);
        v125 = vbslq_s8(v121, v106, v109);
        v126 = v85;
        v126.i32[3] = v99.i32[1];
        v127 = vuzp2q_s32(v40, v92);
        v128 = vtrn2q_s32(vrev64q_s32(v127), v126);
        v129 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v127, v40)), vuzp2q_s32(v85, v99));
        v130 = vbslq_s8(v121, v128, v129);
        v131 = vuzp1q_s32(v85, v99);
        v132 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v92)), vextq_s8(v85, v131, 0xCuLL));
        v92.i32[0] = v40.i32[2];
        v133 = vtrn2q_s32(vrev64q_s32(v92), v131);
        v134 = vbslq_s8(v121, v132, v133);
        v135 = v83;
        v135.i32[3] = v98.i32[1];
        v136 = vuzp2q_s32(v40, v91);
        v137 = vtrn2q_s32(vrev64q_s32(v136), v135);
        v138 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v136, v40)), vuzp2q_s32(v83, v98));
        v139 = vbslq_s8(v121, v137, v138);
        v140 = vuzp1q_s32(v83, v98);
        v141 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v91)), vextq_s8(v83, v140, 0xCuLL));
        v91.i32[0] = v40.i32[2];
        v142 = vrev64q_s32(v91);
        v143 = vtrn2q_s32(v142, v140);
        if ((v82 & 2) != 0)
        {
          v120 -= 2;
        }

        v144 = v82 & 1;
        v145 = v120 - v144;
        v142.i32[0] = v144;
        v27 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v142, v27)), 0);
        v146 = vbslq_s8(v27, v139, vbslq_s8(v121, v141, v143));
        v147 = vbslq_s8(v27, v130, v134);
        v148 = vbslq_s8(v27, v124, v125);
        v149 = vbslq_s8(v27, v122, v123);
        if (v120 - v144 <= 1)
        {
          v154 = 0;
        }

        else
        {
          v150 = vbslq_s8(v121, v115, v113);
          v151 = vbslq_s8(v121, v109, v106);
          v152 = vbslq_s8(v121, v133, v132);
          v153 = vbslq_s8(v121, v143, v141);
          *a14 = v146;
          *(a14 + 16) = vbslq_s8(v27, v153, v139);
          *v71 = v147;
          *(v71 + 16) = vbslq_s8(v27, v152, v130);
          *v72 = v148;
          *(v72 + 16) = vbslq_s8(v27, v151, v124);
          v145 -= 2;
          v146 = vbslq_s8(v27, vbslq_s8(v121, v138, v137), v153);
          *v80 = v149;
          *(v80 + 16) = vbslq_s8(v27, v150, v122);
          v147 = vbslq_s8(v27, vbslq_s8(v121, v129, v128), v152);
          v148 = vbslq_s8(v27, vbslq_s8(v121, v111, v110), v151);
          v149 = vbslq_s8(v27, vbslq_s8(v121, v119, v117), v150);
          v154 = 32;
        }

        v39 = v252;
        if (v145 >= 1)
        {
          *(v154 + a14) = v146;
          *(v154 + v71) = v147;
          *(v154 + v72) = v148;
          *(v154 + v80) = v149;
          v154 |= 0x10uLL;
        }

        ++v25;
        ++v26;
        ++v24;
        v84 = a12[4];
        if (v84 == v81)
        {
          goto LABEL_236;
        }

        a14 += v154;
        v71 += v154;
        v72 += v154;
        v80 += v154;
        ++v81;
      }

      else
      {
        v84 = a12[4];
      }

      v155 = a12[5];
      v156 = v155 != 0;
      if (v84 == 0 && v156 || (v157 = v84 - v156, v81 > v157))
      {
        v202 = v80;
        v201 = v72;
        v200 = v71;
        v199 = a14;
        if (v155)
        {
          goto LABEL_145;
        }

LABEL_143:
        a5 = v250;
        a6 = v251;
        v30 = v249;
        a1 = v253;
        v39 = v252;
        goto LABEL_236;
      }

      v158 = v157 - v81 + 1;
      do
      {
        v159 = 0uLL;
        if (v25)
        {
          if (v25 + 1 <= v36)
          {
            v160 = *v25;
          }

          else
          {
            v160 = 0uLL;
          }

          v161 = 0uLL;
          v162 = 0uLL;
          v163 = 0uLL;
          v171 = (v25 + v34);
          if ((v25 + v34 + 16) <= v36)
          {
            v161 = *v171;
          }

          v172 = (v171 + v34);
          if (&v172[1] <= v36)
          {
            v162 = *v172;
          }

          v173 = (v172 + v34);
          if (&v173[1] <= v36)
          {
            v163 = *v173;
          }

          ++v25;
          if (!v26)
          {
LABEL_112:
            v164 = 0uLL;
            v165 = 0uLL;
            v166 = 0uLL;
            if (!v24)
            {
              goto LABEL_113;
            }

            goto LABEL_131;
          }
        }

        else
        {
          v160 = 0uLL;
          v161 = 0uLL;
          v162 = 0uLL;
          v163 = 0uLL;
          if (!v26)
          {
            goto LABEL_112;
          }
        }

        if (v26 + 1 <= result)
        {
          v159 = *v26;
        }

        v164 = 0uLL;
        v165 = 0uLL;
        v166 = 0uLL;
        v174 = (v26 + v37);
        if ((v26 + v37 + 16) <= result)
        {
          v164 = *v174;
        }

        v175 = (v174 + v37);
        if (&v175[1] <= result)
        {
          v165 = *v175;
        }

        v176 = (v175 + v37);
        if (&v176[1] <= result)
        {
          v166 = *v176;
        }

        ++v26;
        if (!v24)
        {
LABEL_113:
          v167 = 0uLL;
          v168 = 0uLL;
          v169 = 0uLL;
          v170 = 0uLL;
          goto LABEL_141;
        }

LABEL_131:
        if (&v24[1] <= v23)
        {
          v167 = *v24;
        }

        else
        {
          v167 = 0uLL;
        }

        v168 = 0uLL;
        v169 = 0uLL;
        v170 = 0uLL;
        v177 = (v24 + v38);
        if (v24[1].u64 + v38 <= v23)
        {
          v168 = *v177;
        }

        v178 = (v177 + v38);
        if (&v178[1] <= v23)
        {
          v169 = *v178;
        }

        v179 = (v178 + v38);
        if (&v179[1] <= v23)
        {
          v170 = *v179;
        }

        ++v24;
LABEL_141:
        v27 = v163;
        v27.i32[3] = v170.i32[1];
        v180 = v162;
        v180.i32[3] = v169.i32[1];
        v181 = vuzp2q_s32(v40, v165);
        v182 = v164;
        v182.i32[0] = v40.i32[2];
        v183 = vuzp1q_s32(v161, v168);
        v184 = vtrn2q_s32(vrev64q_s32(v182), v183);
        v185 = v161;
        v185.i32[3] = v168.i32[1];
        v186 = vuzp2q_s32(v40, v164);
        v187 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v164)), vextq_s8(v161, v183, 0xCuLL));
        v188 = vuzp2q_s32(v40, v159);
        v189 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v188, v40)), vuzp2q_s32(v160, v167));
        v190 = vuzp1q_s32(v160, v167);
        v191 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v159)), vextq_s8(v160, v190, 0xCuLL));
        v192 = vuzp2q_s32(v40, v166);
        v160.i32[3] = v167.i32[1];
        v193 = vtrn2q_s32(vrev64q_s32(v188), v160);
        v194 = vuzp1q_s32(v163, v170);
        *a14 = v191;
        *(a14 + 16) = v193;
        v195 = vuzp1q_s32(v40, v166);
        v159.i32[0] = v40.i32[2];
        v196 = vtrn2q_s32(vrev64q_s32(v159), v190);
        v197 = vuzp1q_s32(v162, v169);
        *(a14 + 32) = v196;
        *(a14 + 48) = v189;
        v198 = v165;
        v198.i32[0] = v40.i32[2];
        v199 = (a14 + 64);
        v200 = (v71 + 64);
        *v71 = v187;
        *(v71 + 16) = vtrn2q_s32(vrev64q_s32(v186), v185);
        *(v71 + 32) = v184;
        *(v71 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v186, v40)), vuzp2q_s32(v161, v168));
        v201 = (v72 + 64);
        *v72 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v165)), vextq_s8(v162, v197, 0xCuLL));
        *(v72 + 16) = vtrn2q_s32(vrev64q_s32(v181), v180);
        *(v72 + 32) = vtrn2q_s32(vrev64q_s32(v198), v197);
        *(v72 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v181, v40)), vuzp2q_s32(v162, v169));
        v202 = (v80 + 64);
        v166.i32[0] = v40.i32[2];
        *(v80 + 32) = vtrn2q_s32(vrev64q_s32(v166), v194);
        *(v80 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v192, v40)), vuzp2q_s32(v163, v170));
        a14 += 64;
        *v80 = vtrn2q_s32(vrev64q_s32(v195), vextq_s8(v163, v194, 0xCuLL));
        *(v80 + 16) = vtrn2q_s32(vrev64q_s32(v192), v27);
        v71 += 64;
        v72 += 64;
        v80 += 64;
        --v158;
      }

      while (v158);
      v155 = a12[5];
      if (!v155)
      {
        goto LABEL_143;
      }

LABEL_145:
      v203 = 4 - v155;
      if (v28 == a12[6])
      {
        v204 = 4 - a12[7];
      }

      else
      {
        v204 = 4;
      }

      v205 = 0uLL;
      if (!v25)
      {
        v209 = 0uLL;
        v210 = 0uLL;
        v211 = 0uLL;
        v212 = 0uLL;
        v39 = v252;
        if (v26)
        {
          goto LABEL_178;
        }

LABEL_153:
        v213 = 0uLL;
        v214 = 0uLL;
        v215 = 0uLL;
        if (v24)
        {
          goto LABEL_204;
        }

LABEL_154:
        v216 = 0uLL;
        v217 = 0uLL;
        v218 = 0uLL;
        v219 = 0uLL;
        a1 = v253;
        goto LABEL_231;
      }

      v39 = v252;
      if (v204 < 2)
      {
        v207 = 0;
        v206 = v25;
        v208 = v25;
      }

      else
      {
        v206 = (v25 + v34);
        if (v204 == 2)
        {
          v207 = 0;
          v208 = (v25 + v34);
        }

        else
        {
          v208 = (v25 + v34);
          v206 = (v206 + v34);
          if (v204 <= 3)
          {
            v207 = 0;
          }

          else
          {
            v207 = v34;
          }
        }
      }

      v220 = (v206 + v207);
      v210 = 0uLL;
      v211 = 0uLL;
      v212 = 0uLL;
      v209 = 0uLL;
      if ((4 - v155))
      {
        if ((v25 + 4 * v203) <= v36)
        {
          v209.i32[0] = *(v25 + 3 - v155);
        }

        if ((v208 + 4 * v203) <= v36)
        {
          v210.i32[0] = *(v208 + 3 - v155);
        }

        if ((v206 + 4 * v203) <= v36)
        {
          v211.i32[0] = *(v206 + 3 - v155);
        }

        if ((v220 + 4 * v203) <= v36)
        {
          v212.i32[0] = *(v220 + 3 - v155);
        }
      }

      if (((4 - v155) & 2) != 0)
      {
        v209 = vextq_s8(v209, v209, 8uLL);
        if ((v25 + 8) <= v36)
        {
          v221.i64[0] = *v25;
          v221.i64[1] = vextq_s8(v209, v209, 8uLL).u64[0];
          v209 = v221;
        }

        v210 = vextq_s8(v210, v210, 8uLL);
        if (v208 + 1 <= v36)
        {
          v222.i64[0] = *v208;
          v222.i64[1] = vextq_s8(v210, v210, 8uLL).u64[0];
          v210 = v222;
        }

        v211 = vextq_s8(v211, v211, 8uLL);
        if (v206 + 1 <= v36)
        {
          v223.i64[0] = *v206;
          v223.i64[1] = vextq_s8(v211, v211, 8uLL).u64[0];
          v211 = v223;
        }

        v212 = vextq_s8(v212, v212, 8uLL);
        if (v220 + 1 <= v36)
        {
          v224.i64[0] = *v220;
          v224.i64[1] = vextq_s8(v212, v212, 8uLL).u64[0];
          v212 = v224;
        }
      }

      v25 = (v25 + 4 * v203);
      if (!v26)
      {
        goto LABEL_153;
      }

LABEL_178:
      if (v204 < 2)
      {
        v226 = 0;
        v225 = v26;
        v227 = v26;
      }

      else
      {
        v225 = (v26 + v37);
        if (v204 == 2)
        {
          v226 = 0;
          v227 = (v26 + v37);
        }

        else
        {
          v227 = (v26 + v37);
          v225 = (v225 + v37);
          if (v204 <= 3)
          {
            v226 = 0;
          }

          else
          {
            v226 = v37;
          }
        }
      }

      v228 = (v225 + v226);
      v213 = 0uLL;
      v214 = 0uLL;
      v215 = 0uLL;
      if ((4 - v155))
      {
        if ((v26 + 4 * v203) <= result)
        {
          v205.i32[0] = *(v26 + 3 - v155);
        }

        if ((v227 + 4 * v203) <= result)
        {
          v213.i32[0] = *(v227 + 3 - v155);
        }

        if ((v225 + 4 * v203) <= result)
        {
          v214.i32[0] = *(v225 + 3 - v155);
        }

        if ((v228 + 4 * v203) <= result)
        {
          v215.i32[0] = *(v228 + 3 - v155);
        }
      }

      if (((4 - v155) & 2) != 0)
      {
        v205 = vextq_s8(v205, v205, 8uLL);
        if ((v26 + 8) <= result)
        {
          v229.i64[0] = *v26;
          v229.i64[1] = vextq_s8(v205, v205, 8uLL).u64[0];
          v205 = v229;
        }

        v213 = vextq_s8(v213, v213, 8uLL);
        if (v227 + 1 <= result)
        {
          v230.i64[0] = *v227;
          v230.i64[1] = vextq_s8(v213, v213, 8uLL).u64[0];
          v213 = v230;
        }

        v214 = vextq_s8(v214, v214, 8uLL);
        if (v225 + 1 <= result)
        {
          v231.i64[0] = *v225;
          v231.i64[1] = vextq_s8(v214, v214, 8uLL).u64[0];
          v214 = v231;
        }

        v215 = vextq_s8(v215, v215, 8uLL);
        if (v228 + 1 <= result)
        {
          v232.i64[0] = *v228;
          v232.i64[1] = vextq_s8(v215, v215, 8uLL).u64[0];
          v215 = v232;
        }
      }

      v26 = (v26 + 4 * v203);
      if (!v24)
      {
        goto LABEL_154;
      }

LABEL_204:
      if (v204 < 2)
      {
        v234 = 0;
        v233 = v24;
        v235 = v24;
      }

      else
      {
        v233 = (v24->i64 + v38);
        if (v204 == 2)
        {
          v234 = 0;
          v235 = (v24->i64 + v38);
        }

        else
        {
          v235 = (v24->i64 + v38);
          v233 = (v233 + v38);
          if (v204 <= 3)
          {
            v234 = 0;
          }

          else
          {
            v234 = v38;
          }
        }
      }

      v236 = (v233 + v234);
      v217 = 0uLL;
      v218 = 0uLL;
      v219 = 0uLL;
      v216 = 0uLL;
      if ((4 - v155))
      {
        if (v24 + 4 * v203 <= v23)
        {
          v216.i32[0] = v24->i32[3 - v155];
        }

        if (v235 + 4 * v203 <= v23)
        {
          v217.i32[0] = *(v235 + 3 - v155);
        }

        if (v233 + 4 * v203 <= v23)
        {
          v218.i32[0] = *(v233 + 3 - v155);
        }

        if (v236 + 4 * v203 <= v23)
        {
          v219.i32[0] = *(v236 + 3 - v155);
        }
      }

      if (((4 - v155) & 2) != 0)
      {
        v216 = vextq_s8(v216, v216, 8uLL);
        a1 = v253;
        if (&v24->u64[1] <= v23)
        {
          v237.i64[0] = v24->i64[0];
          v237.i64[1] = vextq_s8(v216, v216, 8uLL).u64[0];
          v216 = v237;
        }

        v217 = vextq_s8(v217, v217, 8uLL);
        if ((v235 + 1) <= v23)
        {
          v238.i64[0] = *v235;
          v238.i64[1] = vextq_s8(v217, v217, 8uLL).u64[0];
          v217 = v238;
        }

        v218 = vextq_s8(v218, v218, 8uLL);
        if ((v233 + 1) <= v23)
        {
          v239.i64[0] = *v233;
          v239.i64[1] = vextq_s8(v218, v218, 8uLL).u64[0];
          v218 = v239;
        }

        v219 = vextq_s8(v219, v219, 8uLL);
        if ((v236 + 1) <= v23)
        {
          v240.i64[0] = *v236;
          v240.i64[1] = vextq_s8(v219, v219, 8uLL).u64[0];
          v219 = v240;
        }
      }

      else
      {
        a1 = v253;
      }

      v24 = (v24 + 4 * v203);
LABEL_231:
      v27 = vuzp1q_s32(v209, v216);
      v241 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v205)), vextq_s8(v209, v27, 0xCuLL));
      v242 = vuzp1q_s32(v210, v217);
      v243 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v213)), vextq_s8(v210, v242, 0xCuLL));
      v244 = vuzp1q_s32(v211, v218);
      v245 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v214)), vextq_s8(v211, v244, 0xCuLL));
      v246 = vuzp1q_s32(v212, v219);
      v247 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v215)), vextq_s8(v212, v246, 0xCuLL));
      if ((v203 & 2) != 0)
      {
        v209.i32[3] = v216.i32[1];
        v210.i32[3] = v217.i32[1];
        v211.i32[3] = v218.i32[1];
        v212.i32[3] = v219.i32[1];
        *v199 = v241;
        v199[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v205)), v209);
        *v200 = v243;
        v200[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v213)), v210);
        *v201 = v245;
        v201[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v214)), v211);
        *v202 = v247;
        v202[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v215)), v212);
        if (v203)
        {
          v205.i32[0] = v40.i32[2];
          v213.i32[0] = v40.i32[2];
          v214.i32[0] = v40.i32[2];
          v215.i32[0] = v40.i32[2];
          v199[2] = vtrn2q_s32(vrev64q_s32(v205), v27);
          v200[2] = vtrn2q_s32(vrev64q_s32(v213), v242);
          v201[2] = vtrn2q_s32(vrev64q_s32(v214), v244);
          v202[2] = vtrn2q_s32(vrev64q_s32(v215), v246);
        }
      }

      else
      {
        *v199 = v241;
        *v200 = v243;
        *v201 = v245;
        *v202 = v247;
      }

      a5 = v250;
      a6 = v251;
      v30 = v249;
LABEL_236:
      a14 = v73 + a17;
      v29 = a12[6];
      if (v28++ >= v29)
      {
        return result;
      }
    }

    v79 = a12[7];
    a1 = v253;
    switch(v79)
    {
      case 1u:
        goto LABEL_58;
      case 2u:
        goto LABEL_57;
      case 3u:
        v71 = a16;
LABEL_57:
        v72 = a16;
LABEL_58:
        v80 = a16;
        goto LABEL_61;
    }

LABEL_59:
    v80 = v73;
    goto LABEL_61;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  v142 = result;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v17 = a12[2];
  v18 = a12[6];
  if (v17 <= v18)
  {
    v21 = a6;
    v141 = *(a13 + 60);
    while (1)
    {
      v23 = *(a3 + 8);
      result = v141;
      if (v23)
      {
        v24 = *(a11 + 24);
        v25 = *(*(v23 + 40) + 8 * *(a11 + 60));
        v26 = *(v25 + 12) - 1;
        if (v26 >= HIDWORD(v24) * v141 + 4 * v17)
        {
          v26 = (HIDWORD(*(a11 + 24)) * v141) + 4 * v17;
        }

        v27 = v25 + 8 * v24;
        if (*(v23 + 104) == 1)
        {
          v28 = (*(v27 + 24) + 8 * v26);
        }

        else
        {
          v29 = (v26 * *(v23 + 108)) >> *(v23 + 112);
          v30 = *(v25 + 20) - 1;
          if (v29 >= v30)
          {
            LODWORD(v29) = v30;
          }

          v28 = (*(v27 + 24) + 8 * v29);
        }

        v31 = *v28;
        v32 = HIDWORD(v31);
        if (a2 >= v31)
        {
          v33 = (v142 + v31);
        }

        else
        {
          v33 = 0;
        }

        if (a2 - v31 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v34 = a2 >= v31;
        v35 = v142 + v31 + v32;
        if (!v34)
        {
          v35 = 0;
        }

        v180 = v33;
        v181 = v35;
      }

      v36 = *(a4 + 8);
      if (v36)
      {
        v37 = *(a11 + 24);
        v38 = *(*(v36 + 40) + 8 * *(a11 + 60));
        v39 = *(v38 + 12) - 1;
        if (v39 >= HIDWORD(v37) * v141 + 4 * v17)
        {
          v39 = (HIDWORD(*(a11 + 24)) * v141) + 4 * v17;
        }

        v40 = v38 + 8 * v37;
        if (*(v36 + 104) == 1)
        {
          v41 = (*(v40 + 24) + 8 * v39);
        }

        else
        {
          v42 = (v39 * *(v36 + 108)) >> *(v36 + 112);
          v43 = *(v38 + 20) - 1;
          if (v42 >= v43)
          {
            LODWORD(v42) = v43;
          }

          v41 = (*(v40 + 24) + 8 * v42);
        }

        v44 = *v41;
        v45 = HIDWORD(v44);
        if (a2 >= v44)
        {
          v46 = (v142 + v44);
        }

        else
        {
          v46 = 0;
        }

        if (a2 - v44 < HIDWORD(v44))
        {
          v45 = a2 - v44;
        }

        v34 = a2 >= v44;
        v47 = v142 + v44 + v45;
        if (!v34)
        {
          v47 = 0;
        }

        v178 = v46;
        v179 = v47;
      }

      v48 = *(a5 + 8);
      if (v48)
      {
        v49 = *(a11 + 24);
        v50 = *(*(v48 + 40) + 8 * *(a11 + 60));
        v51 = *(v50 + 12) - 1;
        if (v51 >= HIDWORD(v49) * v141 + 4 * v17)
        {
          v51 = (HIDWORD(*(a11 + 24)) * v141) + 4 * v17;
        }

        v52 = v50 + 8 * v49;
        if (*(v48 + 104) == 1)
        {
          v53 = (*(v52 + 24) + 8 * v51);
        }

        else
        {
          v54 = (v51 * *(v48 + 108)) >> *(v48 + 112);
          v55 = *(v50 + 20) - 1;
          if (v54 >= v55)
          {
            LODWORD(v54) = v55;
          }

          v53 = (*(v52 + 24) + 8 * v54);
        }

        v56 = *v53;
        v57 = HIDWORD(v56);
        if (a2 >= v56)
        {
          v58 = (v142 + v56);
        }

        else
        {
          v58 = 0;
        }

        if (a2 - v56 < HIDWORD(v56))
        {
          v57 = a2 - v56;
        }

        v34 = a2 >= v56;
        v59 = v142 + v56 + v57;
        if (!v34)
        {
          v59 = 0;
        }

        v176 = v58;
        v177 = v59;
      }

      v60 = *(v21 + 8);
      if (v60)
      {
        v61 = *(a11 + 24);
        v62 = *(*(v60 + 40) + 8 * *(a11 + 60));
        v63 = *(v62 + 12) - 1;
        if (v63 >= HIDWORD(v61) * v141 + 4 * v17)
        {
          v63 = (HIDWORD(*(a11 + 24)) * v141) + 4 * v17;
        }

        v64 = v62 + 8 * v61;
        if (*(v60 + 104) == 1)
        {
          v65 = (*(v64 + 24) + 8 * v63);
        }

        else
        {
          v67 = (v63 * *(v60 + 108)) >> *(v60 + 112);
          v68 = *(v62 + 20) - 1;
          if (v67 >= v68)
          {
            LODWORD(v67) = v68;
          }

          v65 = (*(v64 + 24) + 8 * v67);
        }

        v69 = *v65;
        v70 = HIDWORD(*v65);
        v71 = v142 + *v65;
        v72 = a2 - *v65;
        if (a2 >= *v65)
        {
          v66 = (v142 + *v65);
        }

        else
        {
          v66 = 0;
        }

        if (v72 < HIDWORD(v69))
        {
          v70 = v72;
        }

        v34 = a2 >= v69;
        v73 = v71 + v70;
        if (!v34)
        {
          v73 = 0;
        }

        v174 = v66;
        v175 = v73;
      }

      else
      {
        v66 = v174;
      }

      v74 = a12;
      v75 = (a14 + a17);
      v76 = (a14 + a17 + a17);
      v77 = &v76->i8[a17];
      if (!v180 || !v178 || !v176 || !v66)
      {
        goto LABEL_114;
      }

      v78 = a16;
      if (!a16)
      {
        break;
      }

      if (v17 == a12[2])
      {
        v79 = a12[3] + 1;
        v80 = a14;
        a14 = (a14 + a17);
        v75 = v76;
        v76 = (v76 + a17);
        do
        {
          v77 = v76;
          v76 = v75;
          v75 = a14;
          a14 = v80;
          v80 = a16;
          --v79;
        }

        while (v79);
      }

      v140 = v77;
      if (v17 != v18)
      {
        goto LABEL_84;
      }

      v81 = a12[7];
      if (v81 != 1)
      {
        if (v81 != 2)
        {
          if (v81 != 3)
          {
            goto LABEL_84;
          }

          v75 = a16;
        }

        v76 = a16;
      }

LABEL_85:
      v82 = *a12;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v180, v82);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v178, v82);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v176, v82);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v174, v82);
      if (!result)
      {
        return result;
      }

      v74 = a12;
      if (a12[1])
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v180, a7, v173);
        v153.val[0] = v173[1];
        *v157 = v173[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v178, a8, v172);
        v147 = v172[1];
        v150 = v172[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v176, a9, v171);
        v153.val[1] = v171[1];
        *&v157[16] = v171[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v174, a10, &v169);
        v74 = a12;
        v83.i32[0] = 0;
        v185.val[0] = vqtbl2q_s8(v153, xmmword_296B6EE70);
        v192.val[0] = v147;
        v84 = v150;
        v85 = v169;
        v192.val[1] = v170;
        v185.val[1] = vqtbl2q_s8(v192, xmmword_296B6EF40);
        v86 = vqtbl2q_s8(v185, xmmword_296B6EDD0);
        v185.val[1] = vqtbl2q_s8(v153, xmmword_296B6EE90);
        v87 = vqtbl2q_s8(v192, xmmword_296B6EF50);
        v88 = vqtbl2q_s8(*(&v185 + 16), xmmword_296B6EDD0);
        v89 = vqtbl2q_s8(v153, xmmword_296B6EEA0);
        v90 = vqtbl2q_s8(v192, xmmword_296B6EF60);
        v195.val[0] = v147;
        v195.val[1] = v170;
        v91 = vqtbl2q_s8(*v89.i8, xmmword_296B6EDD0);
        v189.val[0] = vqtbl2q_s8(v153, xmmword_296B6EEB0);
        v189.val[1] = vqtbl2q_s8(v195, xmmword_296B6EF70);
        v92 = vqtbl2q_s8(v189, xmmword_296B6EDD0);
        if (a12[4] == v82)
        {
          v93 = 4 - a12[5];
        }

        else
        {
          v93 = 4;
        }

        v94 = a12[1];
        v89.i32[0] = v94 & 2;
        v95 = vdupq_lane_s32(*&vceqq_s32(v89, v83), 0);
        v96 = vbslq_s8(v95, v92, v91);
        v97 = vbslq_s8(v95, v91, v92);
        v98 = vbslq_s8(v95, v88, v86);
        v99 = vbslq_s8(v95, v86, v88);
        v190.val[0] = vqtbl2q_s8(*v157, xmmword_296B6EEA0);
        v190.val[1] = vqtbl2q_s8(*v84.i8, xmmword_296B6EF60);
        v100 = vqtbl2q_s8(v190, xmmword_296B6EDD0);
        v190.val[0] = vqtbl2q_s8(*v157, xmmword_296B6EEB0);
        v190.val[1] = vqtbl2q_s8(*v84.i8, xmmword_296B6EF70);
        v190.val[0] = vqtbl2q_s8(v190, xmmword_296B6EDD0);
        v101 = vbslq_s8(v95, v190.val[0], v100);
        v102 = vbslq_s8(v95, v100, v190.val[0]);
        v194.val[0] = vqtbl2q_s8(*v157, xmmword_296B6EE70);
        v194.val[1] = vqtbl2q_s8(*v84.i8, xmmword_296B6EF40);
        v190.val[0] = vqtbl2q_s8(v194, xmmword_296B6EDD0);
        v194.val[0] = vqtbl2q_s8(*v157, xmmword_296B6EE90);
        v194.val[1] = vqtbl2q_s8(*v84.i8, xmmword_296B6EF50);
        v194.val[0] = vqtbl2q_s8(v194, xmmword_296B6EDD0);
        v103 = vbslq_s8(v95, v194.val[0], v190.val[0]);
        v104 = vbslq_s8(v95, v190.val[0], v194.val[0]);
        if ((v94 & 2) != 0)
        {
          v93 -= 2;
        }

        if (v94)
        {
          v105 = vextq_s8(v103, v104, 8uLL).u64[0];
          v104 = vextq_s8(v104, v103, 8uLL);
          v106 = vextq_s8(v101, v102, 8uLL).u64[0];
          v102 = vextq_s8(v102, v101, 8uLL);
          v107 = vextq_s8(v98, v99, 8uLL).u64[0];
          v99 = vextq_s8(v99, v98, 8uLL);
          v108 = vextq_s8(v96, v97, 8uLL).u64[0];
          --v93;
          v97 = vextq_s8(v97, v96, 8uLL);
          v103.i64[0] = v105;
          v101.i64[0] = v106;
          v98.i64[0] = v107;
          v96.i64[0] = v108;
        }

        if (v93 <= 1)
        {
          v109 = 0;
        }

        else
        {
          *a14 = v104;
          *v75 = v102;
          v93 -= 2;
          v104.i64[0] = v103.i64[0];
          v102.i64[0] = v101.i64[0];
          *v76 = v99;
          v99.i64[0] = v98.i64[0];
          v78->val[0] = v97;
          v97.i64[0] = v96.i64[0];
          v109 = 16;
        }

        if (v93 >= 1)
        {
          *(a14->i64 + v109) = v104.i64[0];
          *(v75->i64 + v109) = v102.i64[0];
          *(v76->i64 + v109) = v99.i64[0];
          *(v78->val[0].i64 + v109) = v97.i64[0];
          v109 |= 8uLL;
        }

        v110 = a12[4];
        if (v110 == v82)
        {
          goto LABEL_113;
        }

        a14 = (a14 + v109);
        v75 = (v75 + v109);
        v76 = (v76 + v109);
        v78 = (v78 + v109);
        ++v82;
      }

      else
      {
        v110 = a12[4];
      }

      v111 = v74[5];
      v112 = v111 != 0;
      if (v110 != 0 || !v112)
      {
        v113 = v110 - v112;
        if (v82 <= v113)
        {
          v114 = v113 - v82 + 1;
          v115 = a7;
          v116 = a8;
          do
          {
            v117 = v78;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v180, v115, v168);
            v158.val[0] = v168[0];
            v154.val[0] = v168[1];
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v178, v116, v167);
            v151 = v167[0];
            v148 = v167[1];
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v176, a9, v166);
            v158.val[1] = v166[0];
            v154.val[1] = v166[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v174, a10, v165);
            v182.val[0] = vqtbl2q_s8(v154, xmmword_296B6EEA0);
            v197.val[0] = v148;
            v196.val[0] = v151;
            v196.val[1] = v165[0];
            v197.val[1] = v165[1];
            v182.val[1] = vqtbl2q_s8(v197, xmmword_296B6EF60);
            v182.val[0] = vqtbl2q_s8(v182, xmmword_296B6EDD0);
            v182.val[1] = vqtbl2q_s8(v154, xmmword_296B6EEB0);
            v118 = vqtbl2q_s8(v197, xmmword_296B6EF70);
            v182.val[1] = vqtbl2q_s8(*(&v182 + 16), xmmword_296B6EDD0);
            v186.val[0] = vqtbl2q_s8(v154, xmmword_296B6EE70);
            v186.val[1] = vqtbl2q_s8(v197, xmmword_296B6EF40);
            v186.val[0] = vqtbl2q_s8(v186, xmmword_296B6EDD0);
            v186.val[1] = vqtbl2q_s8(v154, xmmword_296B6EE90);
            v119 = vqtbl2q_s8(v197, xmmword_296B6EF50);
            v191.val[0] = vqtbl2q_s8(v158, xmmword_296B6EEA0);
            v191.val[1] = vqtbl2q_s8(v196, xmmword_296B6EF60);
            v191.val[0] = vqtbl2q_s8(v191, xmmword_296B6EDD0);
            v191.val[1] = vqtbl2q_s8(v158, xmmword_296B6EE70);
            v120 = vqtbl2q_s8(v196, xmmword_296B6EF40);
            v191.val[1] = vqtbl2q_s8(*(&v191 + 16), xmmword_296B6EDD0);
            v193.val[0] = vqtbl2q_s8(v158, xmmword_296B6EE90);
            v193.val[1] = vqtbl2q_s8(v196, xmmword_296B6EF50);
            v121 = vqtbl2q_s8(v193, xmmword_296B6EDD0);
            v193.val[0] = vqtbl2q_s8(v158, xmmword_296B6EEB0);
            *a14 = v191.val[1];
            a14[1] = v121;
            a14 += 2;
            v193.val[1] = vqtbl2q_s8(v196, xmmword_296B6EF70);
            *v75 = v191.val[0];
            v75[1] = vqtbl2q_s8(v193, xmmword_296B6EDD0);
            v75 += 2;
            *v76 = v186.val[0];
            v76[1] = vqtbl2q_s8(*(&v186 + 16), xmmword_296B6EDD0);
            v76 += 2;
            ++v78;
            *v117 = v182;
            --v114;
          }

          while (v114);
          v74 = a12;
          v111 = a12[5];
          a8 = v116;
          a7 = v115;
          v21 = a6;
        }
      }

      if (v111)
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v180, a7, v164);
        v159 = v164[0];
        v155 = v164[1];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v178, a8, v163);
        v152 = v163[0];
        v149 = v163[1];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v176, a9, v162);
        v160 = v162[0];
        v156 = v162[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v174, a10, v161);
        v122 = v149;
        v123 = v155;
        v124 = v156;
        v125 = v152;
        v126 = v159;
        v127 = v160;
        v74 = a12;
        v183.val[0] = vqtbl2q_s8(*v123.i8, xmmword_296B6EEA0);
        v128 = v161[0];
        v129 = v161[1];
        v183.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF60);
        v130 = vqtbl2q_s8(v183, xmmword_296B6EDD0);
        v183.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EE70);
        v131 = vqtbl2q_s8(*v122.i8, xmmword_296B6EF40);
        v132 = vqtbl2q_s8(*(&v183 + 16), xmmword_296B6EDD0);
        v187.val[0] = vqtbl2q_s8(*v126.i8, xmmword_296B6EEA0);
        v187.val[1] = vqtbl2q_s8(*v125.i8, xmmword_296B6EF60);
        v133 = vqtbl2q_s8(v187, xmmword_296B6EDD0);
        v187.val[1] = vqtbl2q_s8(*v126.i8, xmmword_296B6EE70);
        v134 = vqtbl2q_s8(*v125.i8, xmmword_296B6EF40);
        v135 = vqtbl2q_s8(*(&v187 + 16), xmmword_296B6EDD0);
        v136 = 4 - a12[5];
        if ((v136 & 2) != 0)
        {
          *a14 = v135;
          *v75 = v133;
          *v76 = v132;
          v78->val[0] = v130;
          v77 = v140;
          if (v136)
          {
            v184.val[0] = vqtbl2q_s8(*v123.i8, xmmword_296B6EEB0);
            v184.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF70);
            v184.val[0].i64[0] = vqtbl2q_s8(v184, xmmword_296B6EDD0).u64[0];
            v184.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EE90);
            v137 = vqtbl2q_s8(*v122.i8, xmmword_296B6EF50);
            v188.val[0] = vqtbl2q_s8(*v126.i8, xmmword_296B6EEB0);
            v188.val[1] = vqtbl2q_s8(*v125.i8, xmmword_296B6EF70);
            v188.val[0].i64[0] = vqtbl2q_s8(v188, xmmword_296B6EDD0).u64[0];
            v188.val[1] = vqtbl2q_s8(*v126.i8, xmmword_296B6EE90);
            v138 = vqtbl2q_s8(*v125.i8, xmmword_296B6EF50);
            a14[1].i64[0] = vqtbl2q_s8(*(&v188 + 16), xmmword_296B6EDD0).u64[0];
            v75[1].i64[0] = v188.val[0].i64[0];
            v76[1].i64[0] = vqtbl2q_s8(*(&v184 + 16), xmmword_296B6EDD0).u64[0];
            v78->val[1].i64[0] = v184.val[0].i64[0];
          }

          goto LABEL_114;
        }

        a14->i64[0] = v135.i64[0];
        v75->i64[0] = v133.i64[0];
        v76->i64[0] = v132.i64[0];
        v78->val[0].i64[0] = v130.i64[0];
      }

LABEL_113:
      v77 = v140;
LABEL_114:
      a14 = (v77->val + a17);
      v18 = v74[6];
      v34 = v17++ >= v18;
      if (v34)
      {
        return result;
      }
    }

    v140 = &v76->i8[a17];
LABEL_84:
    v78 = v77;
    goto LABEL_85;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v292 = result;
  v26 = a12[2];
  v27 = a12[6];
  if (v26 > v27)
  {
    return result;
  }

  result = a16;
  v29 = a11[3];
  v30 = a11[7].u32[1];
  v31 = 4 * vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v30) + 16), *(*(a3 + 8) + 48), v29), *(*(a3 + 8) + 48)).u32[0];
  v32 = 4 * vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v30) + 16), *(*(a4 + 8) + 48), v29), *(*(a4 + 8) + 48)).u32[0];
  v33 = 4 * vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * v30) + 16), *(*(a5 + 8) + 48), v29), *(*(a5 + 8) + 48)).u32[0];
  v34 = 4 * vmin_u32(vmls_s32(*(*(*(*(a6 + 8) + 40) + 8 * v30) + 16), *(*(a6 + 8) + 48), v29), *(*(a6 + 8) + 48)).u32[0];
  v35 = *(a13 + 60);
  while (2)
  {
    v36 = *(a3 + 8);
    if (v36)
    {
      v37 = a11[3];
      v38 = *(*(v36 + 40) + 8 * a11[7].u32[1]);
      v39 = *(v38 + 12) - 1;
      if (v39 >= (v37.i32[1] * v35) + 4 * v26)
      {
        v39 = (HIDWORD(*&a11[3]) * v35) + 4 * v26;
      }

      v40 = v38 + 8 * v37.u32[0];
      if (*(v36 + 104) == 1)
      {
        v41 = (*(v40 + 24) + 8 * v39);
      }

      else
      {
        v42 = (v39 * *(v36 + 108)) >> *(v36 + 112);
        v43 = *(v38 + 20) - 1;
        if (v42 >= v43)
        {
          LODWORD(v42) = v43;
        }

        v41 = (*(v40 + 24) + 8 * v42);
      }

      v44 = *v41;
      if (a2 <= v44)
      {
        v21 = 0;
        v17 = 0;
      }

      else
      {
        v45 = v44;
        if (a2 - v44 >= HIDWORD(v44))
        {
          v46 = HIDWORD(v44);
        }

        else
        {
          v46 = a2 - v44;
        }

        v21 = (v45 + v292);
        v17 = v46 + v45 + v292;
      }
    }

    v47 = *(a4 + 8);
    if (v47)
    {
      v48 = a11[3];
      v49 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
      v50 = *(v49 + 12) - 1;
      if (v50 >= (v48.i32[1] * v35) + 4 * v26)
      {
        v50 = (HIDWORD(*&a11[3]) * v35) + 4 * v26;
      }

      v51 = v49 + 8 * v48.u32[0];
      if (*(v47 + 104) == 1)
      {
        v52 = (*(v51 + 24) + 8 * v50);
      }

      else
      {
        v53 = (v50 * *(v47 + 108)) >> *(v47 + 112);
        v54 = *(v49 + 20) - 1;
        if (v53 >= v54)
        {
          LODWORD(v53) = v54;
        }

        v52 = (*(v51 + 24) + 8 * v53);
      }

      v55 = *v52;
      if (a2 <= v55)
      {
        v22 = 0;
        v18 = 0;
      }

      else
      {
        v56 = v55;
        if (a2 - v55 >= HIDWORD(v55))
        {
          v57 = HIDWORD(v55);
        }

        else
        {
          v57 = a2 - v55;
        }

        v22 = (v56 + v292);
        v18 = v57 + v56 + v292;
      }
    }

    v58 = *(a5 + 8);
    if (v58)
    {
      v59 = a11[3];
      v60 = *(*(v58 + 40) + 8 * a11[7].u32[1]);
      v61 = *(v60 + 12) - 1;
      if (v61 >= (v59.i32[1] * v35) + 4 * v26)
      {
        v61 = (HIDWORD(*&a11[3]) * v35) + 4 * v26;
      }

      v62 = v60 + 8 * v59.u32[0];
      if (*(v58 + 104) == 1)
      {
        v63 = (*(v62 + 24) + 8 * v61);
      }

      else
      {
        v64 = (v61 * *(v58 + 108)) >> *(v58 + 112);
        v65 = *(v60 + 20) - 1;
        if (v64 >= v65)
        {
          LODWORD(v64) = v65;
        }

        v63 = (*(v62 + 24) + 8 * v64);
      }

      v66 = *v63;
      if (a2 <= v66)
      {
        v23 = 0;
        v19 = 0;
      }

      else
      {
        v67 = v66;
        if (a2 - v66 >= HIDWORD(v66))
        {
          v68 = HIDWORD(v66);
        }

        else
        {
          v68 = a2 - v66;
        }

        v23 = (v67 + v292);
        v19 = v68 + v67 + v292;
      }
    }

    v69 = *(a6 + 8);
    if (v69)
    {
      v70 = a11[3];
      v71 = *(*(v69 + 40) + 8 * a11[7].u32[1]);
      v72 = *(v71 + 12) - 1;
      if (v72 >= (v70.i32[1] * v35) + 4 * v26)
      {
        v72 = (HIDWORD(*&a11[3]) * v35) + 4 * v26;
      }

      v73 = v71 + 8 * v70.u32[0];
      if (*(v69 + 104) == 1)
      {
        v74 = (*(v73 + 24) + 8 * v72);
      }

      else
      {
        v75 = (v72 * *(v69 + 108)) >> *(v69 + 112);
        v76 = *(v71 + 20) - 1;
        if (v75 >= v76)
        {
          LODWORD(v75) = v76;
        }

        v74 = (*(v73 + 24) + 8 * v75);
      }

      v77 = *v74;
      if (a2 <= v77)
      {
        v24 = 0;
        v20 = 0;
      }

      else
      {
        v78 = v77;
        if (a2 - v77 >= HIDWORD(v77))
        {
          v79 = HIDWORD(v77);
        }

        else
        {
          v79 = a2 - v77;
        }

        v24 = (v78 + v292);
        v20 = v79 + v78 + v292;
      }
    }

    v80 = a14 + a17;
    v81 = a14 + a17 + a17;
    v82 = v81 + a17;
    if (!v21 || !v22 || !v23 || !v24)
    {
      goto LABEL_301;
    }

    if (result)
    {
      if (v26 == a12[2])
      {
        v83 = a12[3] + 1;
        v84 = v81 + a17;
        v85 = a14 + a17 + a17;
        v86 = a14 + a17;
        v87 = a14;
        do
        {
          a14 = v87;
          v80 = v86;
          v81 = v85;
          v82 = v84;
          v84 = v85;
          v85 = v86;
          v86 = v87;
          v87 = result;
          --v83;
        }

        while (v83);
      }

      if (v26 == v27)
      {
        v88 = a12[7];
        switch(v88)
        {
          case 1u:
LABEL_73:
            v89 = result;
            goto LABEL_75;
          case 2u:
LABEL_72:
            v81 = result;
            goto LABEL_73;
          case 3u:
            v80 = result;
            goto LABEL_72;
        }
      }
    }

    v89 = v82;
LABEL_75:
    v90 = *a12;
    v21 += v90;
    if (&v21[-1].u64[1] + 7 >= v17)
    {
      return result;
    }

    v91 = 16 * v90;
    v22 += v90;
    if (&v22[-1].u64[1] + 7 >= v18)
    {
      return result;
    }

    v23 = (v23 + v91);
    if (&v23[-1].u64[1] + 7 >= v19)
    {
      return result;
    }

    v24 = (v24 + v91);
    if (&v24[-1].u64[1] + 7 >= v20)
    {
      return result;
    }

    v92 = a12[1];
    if (v92)
    {
      if (&v21[1] <= v17)
      {
        v93 = *v21;
      }

      else
      {
        v93 = 0uLL;
      }

      v95 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v98 = (v21 + v31);
      if (v21[1].u64 + v31 <= v17)
      {
        v95 = *v98;
      }

      v99 = (v98 + v31);
      if (&v99[1] <= v17)
      {
        v96 = *v99;
      }

      v100 = (v99 + v31);
      if (&v100[1] <= v17)
      {
        v97 = *v100;
      }

      if (&v22[1] <= v18)
      {
        v101 = *v22;
      }

      else
      {
        v101 = 0uLL;
      }

      v102 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v105 = (v22 + v32);
      if (v22[1].u64 + v32 <= v18)
      {
        v102 = *v105;
      }

      v106 = (v105 + v32);
      if (&v106[1] <= v18)
      {
        v103 = *v106;
      }

      v107 = (v106 + v32);
      if (&v107[1] <= v18)
      {
        v104 = *v107;
      }

      if (&v23[1] <= v19)
      {
        v108 = *v23;
      }

      else
      {
        v108 = 0uLL;
      }

      v109 = 0uLL;
      v110 = 0uLL;
      v111 = 0uLL;
      v112 = (v23 + v33);
      if (v23[1].u64 + v33 <= v19)
      {
        v109 = *v112;
      }

      v113 = (v112 + v33);
      if (&v113[1] <= v19)
      {
        v110 = *v113;
      }

      v114 = (v113 + v33);
      if (&v114[1] <= v19)
      {
        v111 = *v114;
      }

      if (&v24[1] <= v20)
      {
        v115 = *v24;
      }

      else
      {
        v115 = 0uLL;
      }

      v116 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = (v24 + v34);
      if (v24[1].u64 + v34 <= v20)
      {
        v116 = *v119;
      }

      v120 = (v119 + v34);
      if (&v120[1] <= v20)
      {
        v117 = *v120;
      }

      v121 = (v120 + v34);
      if (&v121[1] <= v20)
      {
        v118 = *v121;
      }

      v25.i32[0] = 0;
      v122 = vuzp1q_s32(v103, v117);
      v123 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v96, v110)), vextq_s8(v103, v122, 0xCuLL));
      v124 = vuzp2q_s32(v96, v110);
      v110.i32[0] = v96.i32[2];
      v125 = v103;
      v125.i32[3] = v117.i32[1];
      v126 = vtrn2q_s32(vrev64q_s32(v110), v122);
      v127 = vtrn2q_s32(vrev64q_s32(v124), v125);
      v128 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v124, v96)), vuzp2q_s32(v103, v117));
      v129 = vuzp1q_s32(v104, v118);
      v130 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v97, v111)), vextq_s8(v104, v129, 0xCuLL));
      v131 = vuzp2q_s32(v97, v111);
      v111.i32[0] = v97.i32[2];
      v132 = vtrn2q_s32(vrev64q_s32(v111), v129);
      v133 = v104;
      v133.i32[3] = v118.i32[1];
      v134 = vtrn2q_s32(vrev64q_s32(v131), v133);
      v135 = vrev64q_s32(vtrn2q_s32(v131, v97));
      v136 = vtrn2q_s32(v135, vuzp2q_s32(v104, v118));
      if (a12[4] == v90)
      {
        v137 = 4 - a12[5];
      }

      else
      {
        v137 = 4;
      }

      v135.i32[0] = a12[1] & 2;
      v138 = vdupq_lane_s32(*&vceqq_s32(v135, v25), 0);
      v139 = vbslq_s8(v138, v134, v136);
      v140 = vbslq_s8(v138, v130, v132);
      v141 = vbslq_s8(v138, v127, v128);
      v142 = vbslq_s8(v138, v123, v126);
      v143 = v102;
      v143.i32[3] = v116.i32[1];
      v144 = vuzp2q_s32(v95, v109);
      v145 = vtrn2q_s32(vrev64q_s32(v144), v143);
      v146 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v144, v95)), vuzp2q_s32(v102, v116));
      v147 = vbslq_s8(v138, v145, v146);
      v148 = vuzp1q_s32(v102, v116);
      v149 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v95, v109)), vextq_s8(v102, v148, 0xCuLL));
      v109.i32[0] = v95.i32[2];
      v150 = vtrn2q_s32(vrev64q_s32(v109), v148);
      v151 = vbslq_s8(v138, v149, v150);
      v152 = v101;
      v152.i32[3] = v115.i32[1];
      v153 = vuzp2q_s32(v93, v108);
      v154 = vtrn2q_s32(vrev64q_s32(v153), v152);
      v155 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v153, v93)), vuzp2q_s32(v101, v115));
      v156 = vbslq_s8(v138, v154, v155);
      v157 = vuzp1q_s32(v101, v115);
      v158 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v93, v108)), vextq_s8(v101, v157, 0xCuLL));
      v108.i32[0] = v93.i32[2];
      v159 = vrev64q_s32(v108);
      v160 = vtrn2q_s32(v159, v157);
      if ((v92 & 2) != 0)
      {
        v137 -= 2;
      }

      v161 = v92 & 1;
      v162 = v137 - v161;
      v159.i32[0] = v161;
      v25 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v159, v25)), 0);
      v163 = vbslq_s8(v25, v156, vbslq_s8(v138, v158, v160));
      v164 = vbslq_s8(v25, v147, v151);
      v165 = vbslq_s8(v25, v141, v142);
      v166 = vbslq_s8(v25, v139, v140);
      if (v137 - v161 <= 1)
      {
        v171 = 0;
      }

      else
      {
        v167 = vbslq_s8(v138, v132, v130);
        v168 = vbslq_s8(v138, v126, v123);
        v169 = vbslq_s8(v138, v150, v149);
        v170 = vbslq_s8(v138, v160, v158);
        *a14 = v163;
        *(a14 + 16) = vbslq_s8(v25, v170, v156);
        *v80 = v164;
        *(v80 + 16) = vbslq_s8(v25, v169, v147);
        *v81 = v165;
        *(v81 + 16) = vbslq_s8(v25, v168, v141);
        v162 -= 2;
        v163 = vbslq_s8(v25, vbslq_s8(v138, v155, v154), v170);
        *v89 = v166;
        *(v89 + 16) = vbslq_s8(v25, v167, v139);
        v164 = vbslq_s8(v25, vbslq_s8(v138, v146, v145), v169);
        v165 = vbslq_s8(v25, vbslq_s8(v138, v128, v127), v168);
        v166 = vbslq_s8(v25, vbslq_s8(v138, v136, v134), v167);
        v171 = 32;
      }

      if (v162 >= 1)
      {
        *(v171 + a14) = v163;
        *(v171 + v80) = v164;
        *(v171 + v81) = v165;
        *(v171 + v89) = v166;
        v171 |= 0x10uLL;
      }

      ++v21;
      ++v22;
      ++v23;
      ++v24;
      v94 = a12[4];
      if (v94 == v90)
      {
        goto LABEL_301;
      }

      a14 += v171;
      v80 += v171;
      v81 += v171;
      v89 += v171;
      ++v90;
    }

    else
    {
      v94 = a12[4];
    }

    v172 = a12[5];
    v173 = v172 != 0;
    if (v94 == 0 && v173 || (v174 = v94 - v173, v90 > v174))
    {
      v226 = v89;
      v225 = v81;
      v224 = v80;
      v223 = a14;
      if (!v172)
      {
        goto LABEL_301;
      }

      goto LABEL_180;
    }

    v175 = v174 - v90 + 1;
    do
    {
      v176 = 0uLL;
      if (v21)
      {
        if (&v21[1] <= v17)
        {
          v177 = *v21;
        }

        else
        {
          v177 = 0uLL;
        }

        v178 = 0uLL;
        v179 = 0uLL;
        v180 = 0uLL;
        v184 = (v21 + v31);
        if (v21[1].u64 + v31 <= v17)
        {
          v178 = *v184;
        }

        v185 = (v184 + v31);
        if (&v185[1] <= v17)
        {
          v179 = *v185;
        }

        v186 = (v185 + v31);
        if (&v186[1] <= v17)
        {
          v180 = *v186;
        }

        ++v21;
        if (!v22)
        {
LABEL_136:
          v181 = 0uLL;
          v182 = 0uLL;
          v183 = 0uLL;
          goto LABEL_154;
        }
      }

      else
      {
        v177 = 0uLL;
        v178 = 0uLL;
        v179 = 0uLL;
        v180 = 0uLL;
        if (!v22)
        {
          goto LABEL_136;
        }
      }

      if (&v22[1] <= v18)
      {
        v176 = *v22;
      }

      v181 = 0uLL;
      v182 = 0uLL;
      v183 = 0uLL;
      v187 = (v22 + v32);
      if (v22[1].u64 + v32 <= v18)
      {
        v181 = *v187;
      }

      v188 = (v187 + v32);
      if (&v188[1] <= v18)
      {
        v182 = *v188;
      }

      v189 = (v188 + v32);
      if (&v189[1] <= v18)
      {
        v183 = *v189;
      }

      ++v22;
LABEL_154:
      v190 = 0uLL;
      if (v23)
      {
        if (&v23[1] <= v19)
        {
          v191 = *v23;
        }

        else
        {
          v191 = 0uLL;
        }

        v192 = 0uLL;
        v193 = 0uLL;
        v194 = 0uLL;
        v198 = (v23 + v33);
        if (v23[1].u64 + v33 <= v19)
        {
          v192 = *v198;
        }

        v199 = (v198 + v33);
        if (&v199[1] <= v19)
        {
          v193 = *v199;
        }

        v200 = (v199 + v33);
        if (&v200[1] <= v19)
        {
          v194 = *v200;
        }

        ++v23;
        if (!v24)
        {
LABEL_158:
          v195 = 0uLL;
          v196 = 0uLL;
          v197 = 0uLL;
          goto LABEL_176;
        }
      }

      else
      {
        v191 = 0uLL;
        v192 = 0uLL;
        v193 = 0uLL;
        v194 = 0uLL;
        if (!v24)
        {
          goto LABEL_158;
        }
      }

      if (&v24[1] <= v20)
      {
        v190 = *v24;
      }

      v195 = 0uLL;
      v196 = 0uLL;
      v197 = 0uLL;
      v201 = (v24 + v34);
      if (v24[1].u64 + v34 <= v20)
      {
        v195 = *v201;
      }

      v202 = (v201 + v34);
      if (&v202[1] <= v20)
      {
        v196 = *v202;
      }

      v203 = (v202 + v34);
      if (&v203[1] <= v20)
      {
        v197 = *v203;
      }

      ++v24;
LABEL_176:
      v204 = v182;
      v204.i32[3] = v196.i32[1];
      v25 = vuzp2q_s32(v179, v193);
      v205 = vuzp1q_s32(v181, v195);
      v206 = v192;
      v206.i32[0] = v178.i32[2];
      v207 = vtrn2q_s32(vrev64q_s32(v206), v205);
      v208 = v181;
      v208.i32[3] = v195.i32[1];
      v209 = vuzp2q_s32(v178, v192);
      v210 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v178, v192)), vextq_s8(v181, v205, 0xCuLL));
      v211 = vuzp2q_s32(v181, v195);
      v212 = vuzp2q_s32(v177, v191);
      v213 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v212, v177)), vuzp2q_s32(v176, v190));
      v214 = vuzp1q_s32(v176, v190);
      v215 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v177, v191)), vextq_s8(v176, v214, 0xCuLL));
      v176.i32[3] = v190.i32[1];
      v216 = v183;
      v216.i32[3] = v197.i32[1];
      v191.i32[0] = v177.i32[2];
      v217 = vuzp2q_s32(v180, v194);
      v218 = vtrn2q_s32(vrev64q_s32(v212), v176);
      v219 = vuzp1q_s32(v183, v197);
      *a14 = v215;
      *(a14 + 16) = v218;
      v220 = vuzp1q_s32(v180, v194);
      *(a14 + 32) = vtrn2q_s32(vrev64q_s32(v191), v214);
      *(a14 + 48) = v213;
      v221 = v193;
      v221.i32[0] = v179.i32[2];
      *v80 = v210;
      *(v80 + 16) = vtrn2q_s32(vrev64q_s32(v209), v208);
      v222 = vuzp1q_s32(v182, v196);
      v223 = (a14 + 64);
      v224 = (v80 + 64);
      *(v80 + 32) = v207;
      *(v80 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v209, v178)), v211);
      v225 = (v81 + 64);
      *v81 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v179, v193)), vextq_s8(v182, v222, 0xCuLL));
      *(v81 + 16) = vtrn2q_s32(vrev64q_s32(v25), v204);
      *(v81 + 32) = vtrn2q_s32(vrev64q_s32(v221), v222);
      *(v81 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v25, v179)), vuzp2q_s32(v182, v196));
      v226 = (v89 + 64);
      v194.i32[0] = v180.i32[2];
      *(v89 + 32) = vtrn2q_s32(vrev64q_s32(v194), v219);
      *(v89 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v217, v180)), vuzp2q_s32(v183, v197));
      a14 += 64;
      *v89 = vtrn2q_s32(vrev64q_s32(v220), vextq_s8(v183, v219, 0xCuLL));
      *(v89 + 16) = vtrn2q_s32(vrev64q_s32(v217), v216);
      v80 += 64;
      v81 += 64;
      v89 += 64;
      --v175;
    }

    while (v175);
    v172 = a12[5];
    if (!v172)
    {
      goto LABEL_301;
    }

LABEL_180:
    v227 = 4 - v172;
    if (v26 == a12[6])
    {
      v228 = 4 - a12[7];
    }

    else
    {
      v228 = 4;
    }

    v229 = 0uLL;
    v286 = v228;
    if (!v21)
    {
      v233 = 0uLL;
      v234 = 0uLL;
      v235 = 0uLL;
      v236 = 0uLL;
      if (v22)
      {
        goto LABEL_215;
      }

LABEL_188:
      v237 = 0uLL;
      v238 = 0uLL;
      v239 = 0uLL;
      if (v23)
      {
        goto LABEL_242;
      }

LABEL_189:
      v240 = 0uLL;
      v241 = 0uLL;
      v242 = 0uLL;
      v243 = 0uLL;
      if (v24)
      {
        goto LABEL_269;
      }

      goto LABEL_190;
    }

    if (v228 < 2)
    {
      v231 = 0;
      v230 = v21;
      v232 = v21;
    }

    else
    {
      v230 = (v21->i64 + v31);
      if (v228 == 2)
      {
        v231 = 0;
        v232 = (v21->i64 + v31);
      }

      else
      {
        v232 = (v21->i64 + v31);
        v230 = (v230 + v31);
        if (v228 <= 3)
        {
          v231 = 0;
        }

        else
        {
          v231 = v31;
        }
      }
    }

    v234 = 0uLL;
    v283 = (v230 + v231);
    v235 = 0uLL;
    v236 = 0uLL;
    v233 = 0uLL;
    if ((4 - v172))
    {
      if (v21 + 4 * v227 <= v17)
      {
        v233.i32[0] = v21->i32[3 - v172];
      }

      if (v232 + 4 * v227 <= v17)
      {
        v234.i32[0] = *(v232 + 3 - v172);
      }

      if (v230 + 4 * v227 <= v17)
      {
        v235.i32[0] = *(v230 + 3 - v172);
      }

      if (v283 + 4 * v227 <= v17)
      {
        v236.i32[0] = *(v283 + 3 - v172);
      }
    }

    if (((4 - v172) & 2) != 0)
    {
      v233 = vextq_s8(v233, v233, 8uLL);
      result = a16;
      if (&v21->u64[1] <= v17)
      {
        v248.i64[0] = v21->i64[0];
        v248.i64[1] = vextq_s8(v233, v233, 8uLL).u64[0];
        v233 = v248;
      }

      v234 = vextq_s8(v234, v234, 8uLL);
      v228 = v286;
      if ((v232 + 1) <= v17)
      {
        v249.i64[0] = *v232;
        v249.i64[1] = vextq_s8(v234, v234, 8uLL).u64[0];
        v234 = v249;
      }

      v235 = vextq_s8(v235, v235, 8uLL);
      if ((v230 + 1) <= v17)
      {
        v250.i64[0] = *v230;
        v250.i64[1] = vextq_s8(v235, v235, 8uLL).u64[0];
        v235 = v250;
      }

      v236 = vextq_s8(v236, v236, 8uLL);
      if ((v283 + 1) <= v17)
      {
        v251.i64[0] = *v283;
        v251.i64[1] = vextq_s8(v236, v236, 8uLL).u64[0];
        v236 = v251;
      }
    }

    else
    {
      v228 = v286;
      result = a16;
    }

    v21 = (v21 + 4 * v227);
    if (!v22)
    {
      goto LABEL_188;
    }

LABEL_215:
    if (v228 < 2)
    {
      v253 = 0;
      v252 = v22;
      v284 = v22;
    }

    else
    {
      v252 = (v22->i64 + v32);
      if (v228 == 2)
      {
        v253 = 0;
        v284 = (v22->i64 + v32);
      }

      else
      {
        v284 = (v22->i64 + v32);
        v252 = (v252 + v32);
        if (v228 <= 3)
        {
          v253 = 0;
        }

        else
        {
          v253 = v32;
        }
      }
    }

    v282 = (v252 + v253);
    v237 = 0uLL;
    v238 = 0uLL;
    v239 = 0uLL;
    if ((4 - v172))
    {
      if (v22 + 4 * v227 <= v18)
      {
        v229.i32[0] = v22->i32[3 - v172];
      }

      if (v284 + 4 * v227 <= v18)
      {
        result = a16;
        v237.i32[0] = *(v284 + 3 - v172);
      }

      if (v252 + 4 * v227 <= v18)
      {
        v238.i32[0] = *(v252 + 3 - v172);
      }

      if (v282 + 4 * v227 <= v18)
      {
        v239.i32[0] = *(v282 + 3 - v172);
      }
    }

    if (((4 - v172) & 2) != 0)
    {
      v229 = vextq_s8(v229, v229, 8uLL);
      if (&v22->u64[1] <= v18)
      {
        v254.i64[0] = v22->i64[0];
        v254.i64[1] = vextq_s8(v229, v229, 8uLL).u64[0];
        v229 = v254;
      }

      v237 = vextq_s8(v237, v237, 8uLL);
      v228 = v286;
      if ((v284 + 1) <= v18)
      {
        v255.i64[0] = *v284;
        v255.i64[1] = vextq_s8(v237, v237, 8uLL).u64[0];
        v237 = v255;
      }

      v238 = vextq_s8(v238, v238, 8uLL);
      if ((v252 + 1) <= v18)
      {
        v256.i64[0] = *v252;
        v256.i64[1] = vextq_s8(v238, v238, 8uLL).u64[0];
        v238 = v256;
      }

      v239 = vextq_s8(v239, v239, 8uLL);
      if ((v282 + 1) <= v18)
      {
        v257.i64[0] = *v282;
        v257.i64[1] = vextq_s8(v239, v239, 8uLL).u64[0];
        v239 = v257;
      }
    }

    else
    {
      v228 = v286;
    }

    v22 = (v22 + 4 * v227);
    if (!v23)
    {
      goto LABEL_189;
    }

LABEL_242:
    if (v228 < 2)
    {
      v259 = 0;
      v258 = v23;
      v260 = v23;
    }

    else
    {
      v258 = (v23->i64 + v33);
      if (v228 == 2)
      {
        v259 = 0;
        v260 = (v23->i64 + v33);
      }

      else
      {
        v260 = (v23->i64 + v33);
        v258 = (v258 + v33);
        if (v228 <= 3)
        {
          v259 = 0;
        }

        else
        {
          v259 = v33;
        }
      }
    }

    v285 = (v258 + v259);
    v241 = 0uLL;
    v242 = 0uLL;
    v243 = 0uLL;
    v240 = 0uLL;
    if ((4 - v172))
    {
      if (v23 + 4 * v227 <= v19)
      {
        v240.i32[0] = v23->i32[3 - v172];
      }

      if (v260 + 4 * v227 <= v19)
      {
        v241.i32[0] = *(v260 + 3 - v172);
      }

      if (v258 + 4 * v227 <= v19)
      {
        v242.i32[0] = *(v258 + 3 - v172);
      }

      if (v285 + 4 * v227 <= v19)
      {
        v243.i32[0] = *(v285 + 3 - v172);
      }
    }

    if (((4 - v172) & 2) != 0)
    {
      v240 = vextq_s8(v240, v240, 8uLL);
      if (&v23->u64[1] <= v19)
      {
        v261.i64[0] = v23->i64[0];
        v261.i64[1] = vextq_s8(v240, v240, 8uLL).u64[0];
        v240 = v261;
      }

      v241 = vextq_s8(v241, v241, 8uLL);
      v228 = v286;
      if ((v260 + 1) <= v19)
      {
        v262.i64[0] = *v260;
        v262.i64[1] = vextq_s8(v241, v241, 8uLL).u64[0];
        v241 = v262;
      }

      v242 = vextq_s8(v242, v242, 8uLL);
      if ((v258 + 1) <= v19)
      {
        v263.i64[0] = *v258;
        v263.i64[1] = vextq_s8(v242, v242, 8uLL).u64[0];
        v242 = v263;
      }

      v243 = vextq_s8(v243, v243, 8uLL);
      if ((v285 + 1) <= v19)
      {
        v264.i64[0] = *v285;
        v264.i64[1] = vextq_s8(v243, v243, 8uLL).u64[0];
        v243 = v264;
      }
    }

    else
    {
      v228 = v286;
    }

    v23 = (v23 + 4 * v227);
    if (!v24)
    {
LABEL_190:
      v244 = 0uLL;
      v245 = 0uLL;
      v246 = 0uLL;
      v247 = 0uLL;
      goto LABEL_297;
    }

LABEL_269:
    if (v228 < 2)
    {
      v266 = 0;
      v265 = v24;
      v267 = v24;
    }

    else
    {
      v265 = (v24->i64 + v34);
      if (v228 == 2)
      {
        v266 = 0;
        v267 = (v24->i64 + v34);
      }

      else
      {
        v268 = v228;
        v267 = (v24->i64 + v34);
        v265 = (v265 + v34);
        if (v268 <= 3)
        {
          v266 = 0;
        }

        else
        {
          v266 = v34;
        }
      }
    }

    v287 = (v265 + v266);
    v245 = 0uLL;
    v269 = (v24 + 4 * v227);
    v246 = 0uLL;
    v247 = 0uLL;
    v244 = 0uLL;
    if ((4 - v172))
    {
      if (v269 <= v20)
      {
        v244.i32[0] = v24->i32[3 - v172];
      }

      if (v267 + 4 * v227 <= v20)
      {
        v245.i32[0] = *(v267 + 3 - v172);
      }

      if (v265 + 4 * v227 <= v20)
      {
        v246.i32[0] = *(v265 + 3 - v172);
      }

      if (v287 + 4 * v227 <= v20)
      {
        v247.i32[0] = *(v287 + 3 - v172);
      }

      v269 = (v24 + 4 * v227);
    }

    if (((4 - v172) & 2) != 0)
    {
      v244 = vextq_s8(v244, v244, 8uLL);
      if (&v24->u64[1] <= v20)
      {
        v270.i64[0] = v24->i64[0];
        v270.i64[1] = vextq_s8(v244, v244, 8uLL).u64[0];
        v244 = v270;
      }

      v245 = vextq_s8(v245, v245, 8uLL);
      result = a16;
      if ((v267 + 1) <= v20)
      {
        v271.i64[0] = *v267;
        v271.i64[1] = vextq_s8(v245, v245, 8uLL).u64[0];
        v245 = v271;
      }

      v246 = vextq_s8(v246, v246, 8uLL);
      if ((v265 + 1) <= v20)
      {
        v272.i64[0] = *v265;
        v272.i64[1] = vextq_s8(v246, v246, 8uLL).u64[0];
        v246 = v272;
      }

      v247 = vextq_s8(v247, v247, 8uLL);
      if ((v287 + 1) <= v20)
      {
        v273.i64[0] = *v287;
        v273.i64[1] = vextq_s8(v247, v247, 8uLL).u64[0];
        v247 = v273;
      }
    }

    else
    {
      result = a16;
    }

    v24 = v269;
LABEL_297:
    v25 = vuzp1q_s32(v229, v244);
    v274 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v233, v240)), vextq_s8(v229, v25, 0xCuLL));
    v275 = vuzp1q_s32(v237, v245);
    v276 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v234, v241)), vextq_s8(v237, v275, 0xCuLL));
    v277 = vuzp1q_s32(v238, v246);
    v278 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v235, v242)), vextq_s8(v238, v277, 0xCuLL));
    v279 = vuzp1q_s32(v239, v247);
    v280 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v236, v243)), vextq_s8(v239, v279, 0xCuLL));
    if (((4 - v172) & 2) != 0)
    {
      v229.i32[3] = v244.i32[1];
      v237.i32[3] = v245.i32[1];
      v238.i32[3] = v246.i32[1];
      v239.i32[3] = v247.i32[1];
      *v223 = v274;
      v223[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v233, v240)), v229);
      *v224 = v276;
      v224[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v234, v241)), v237);
      *v225 = v278;
      v225[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v235, v242)), v238);
      *v226 = v280;
      v226[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v236, v243)), v239);
      if ((4 - v172))
      {
        v240.i32[0] = v233.i32[2];
        v241.i32[0] = v234.i32[2];
        v242.i32[0] = v235.i32[2];
        v243.i32[0] = v236.i32[2];
        v223[2] = vtrn2q_s32(vrev64q_s32(v240), v25);
        v224[2] = vtrn2q_s32(vrev64q_s32(v241), v275);
        v225[2] = vtrn2q_s32(vrev64q_s32(v242), v277);
        v226[2] = vtrn2q_s32(vrev64q_s32(v243), v279);
      }
    }

    else
    {
      *v223 = v274;
      *v224 = v276;
      *v225 = v278;
      *v226 = v280;
    }

LABEL_301:
    a14 = v82 + a17;
    v27 = a12[6];
    if (v26++ < v27)
    {
      continue;
    }

    return result;
  }
}