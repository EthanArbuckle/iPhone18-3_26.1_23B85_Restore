int32x4_t *sub_10000AD0C(int32x4_t *result, uint64_t a2, int a3, unsigned int a4)
{
  v4 = result[68].u32[3];
  v5 = *(a2 + 24);
  v6 = (v4 * a4);
  v7 = v5 + 2 * v6;
  if (a3 < 0)
  {
    if (qword_1001065A8 && *(qword_1001065A8 + 628))
    {
      return result;
    }

    v74 = *(*(a2 + 16) + 2 * -a3);
    result[93].i32[0] = v74;
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        *(result[93].i64[1] + 4 * i) = *(v5 + 2 * v4 * -a3 + 2 * i);
      }

      LODWORD(v4) = result[68].i32[3];
      v74 = result[93].i32[0];
    }

    v76 = v74 + *(*(a2 + 16) + 2 * a4);
    v77 = v76 - 16385;
    if (v4 < 1)
    {
      if (v77 <= 0xFFFF7FFE)
      {
        *(*(a2 + 16) + 2 * a4) = v76 / 2;
        return result;
      }

      goto LABEL_106;
    }

    v78 = result[93].i64[1];
    v79 = v77 < 0xFFFF7FFF;
    v80 = v4;
    v81 = &v78->i8[4 * v4];
    if (v4 < 4 || (v78 < v5 + 2 * (v6 + v4) ? (v82 = v7 >= v81) : (v82 = 1), !v82))
    {
      result = 0;
      v83 = v79;
      goto LABEL_86;
    }

    if (v4 >= 0x10)
    {
      result = (v4 & 0x7FFFFFF0);
      v109 = (v5 + 2 * v6 + 16);
      v110 = 0;
      v111 = v78 + 2;
      v112.i64[0] = 0x400000004000;
      v112.i64[1] = 0x400000004000;
      v113.i64[0] = 0x800000008000;
      v113.i64[1] = 0x800000008000;
      v114 = result;
      v115 = 0;
      do
      {
        v116 = *v109[-2].i8;
        v117 = vaddw_s16(v111[-2], *v116.i8);
        v118 = vaddw_high_s16(v111[-1], v116);
        v119 = vaddw_s16(*v111, *v109);
        v120 = vaddw_high_s16(v111[1], *v109->i8);
        v111[-2] = v117;
        v111[-1] = v118;
        *v111 = v119;
        v111[1] = v120;
        v111 += 4;
        v110 = vorr_s8(v110, vmovn_s16(vuzp1q_s16(vcgtq_u32(v113, vaddq_s32(v117, v112)), vcgtq_u32(v113, vaddq_s32(v118, v112)))));
        v115 = vorr_s8(v115, vmovn_s16(vuzp1q_s16(vcgtq_u32(v113, vaddq_s32(v119, v112)), vcgtq_u32(v113, vaddq_s32(v120, v112)))));
        v109 += 4;
        --v114;
      }

      while (v114);
      if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v115, v110), 7uLL)), 0x8040201008040201)))
      {
        v83 = 1;
      }

      else
      {
        v83 = v79;
      }

      if (result == v4)
      {
        goto LABEL_90;
      }

      if ((v4 & 0xC) == 0)
      {
LABEL_86:
        v84 = &v78->i32[result];
        v85 = (v5 + 2 * result + 2 * v6);
        result = (v4 - result);
        do
        {
          v86 = *v85++;
          v87 = *v84;
          *v84++ += v86;
          if ((v87 + v86 - 16385) < 0xFFFF7FFF)
          {
            v83 = 1;
          }

          result = (result - 1);
        }

        while (result);
LABEL_90:
        if (!v83)
        {
          goto LABEL_100;
        }

        v76 /= 2;
        if (v4 >= 4)
        {
          v88 = v4 & 0x7FFFFFFC;
          v89 = v88;
          result = v78;
          do
          {
            *result = vshrq_n_s32(vsraq_n_u32(*result, *result, 0x1FuLL), 1uLL);
            ++result;
            v89 -= 4;
          }

          while (v89);
          if (v88 == v4)
          {
LABEL_100:
            if (v4 < 4 || v7 < v81 && v78 < v5 + 2 * (v6 + v4))
            {
              v92 = 0;
LABEL_104:
              v93 = (v5 + 2 * v92 + 2 * v6);
              v94 = &v78->i32[v92];
              v95 = v80 - v92;
              do
              {
                v96 = *v94++;
                *v93++ = v96;
                --v95;
              }

              while (v95);
LABEL_106:
              *(*(a2 + 16) + 2 * a4) = v76;
              return result;
            }

            if (v4 >= 0x10)
            {
              v92 = v4 & 0x7FFFFFF0;
              v97 = &v78[2];
              v98 = (v5 + 2 * v6 + 16);
              v99 = v80 & 0x7FFFFFF0;
              do
              {
                v101 = v97[-2];
                v100 = v97[-1];
                v103 = *v97;
                v102 = v97[1];
                v97 += 4;
                v98[-1] = vuzp1q_s16(v101, v100);
                *v98 = vuzp1q_s16(v103, v102);
                v98 += 2;
                v99 -= 16;
              }

              while (v99);
              if (v92 == v80)
              {
                goto LABEL_106;
              }

              if ((v80 & 0xC) == 0)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v92 = 0;
            }

            v104 = v92;
            v92 = v80 & 0x7FFFFFFC;
            v105 = (v78 + 4 * v104);
            v106 = (v5 + 2 * v104 + 2 * v6);
            v107 = v104 - v92;
            do
            {
              v108 = *v105++;
              *v106++ = vmovn_s32(v108);
              v107 += 4;
            }

            while (v107);
            if (v92 == v80)
            {
              goto LABEL_106;
            }

            goto LABEL_104;
          }
        }

        else
        {
          v88 = 0;
        }

        v90 = &v78->i32[v88];
        v91 = v4 - v88;
        do
        {
          result = (*v90 / 2);
          *v90++ = result;
          --v91;
        }

        while (v91);
        goto LABEL_100;
      }
    }

    else
    {
      result = 0;
      v83 = v79;
    }

    v121 = result;
    result = (v4 & 0x7FFFFFFC);
    v122 = vdup_n_s16(v83 != v79);
    v123 = (v5 + 2 * v121 + 2 * v6);
    v124 = (v78 + 4 * v121);
    v125 = v121 - result;
    v126.i64[0] = 0x400000004000;
    v126.i64[1] = 0x400000004000;
    v127.i64[0] = 0x800000008000;
    v127.i64[1] = 0x800000008000;
    do
    {
      v128 = *v123++;
      v129 = vaddw_s16(*v124, v128);
      *v124++ = v129;
      v122 = vorr_s8(v122, vmovn_s32(vcgtq_u32(v127, vaddq_s32(v129, v126))));
      v125 += 4;
    }

    while (v125);
    if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v122, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
    {
      v83 = 1;
    }

    else
    {
      v83 = v79;
    }

    if (result == v4)
    {
      goto LABEL_90;
    }

    goto LABEL_86;
  }

  v8 = *(*result[89].i64[1] + 8 * a3);
  if (v8 && *v8 >= 1)
  {
    v9 = 0;
    v10 = (v5 + 2 * v6);
    v11.i64[0] = 0x400000004000;
    v11.i64[1] = 0x400000004000;
    v12.i64[0] = 0x800000008000;
    v12.i64[1] = 0x800000008000;
    do
    {
      v14 = *(*(v8 + 1) + 2 * v9);
      v15 = *(*(v8 + 2) + 2 * v9);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      result[93].i32[0] = v17;
      if ((v17 < 0) ^ v16 | (v17 == 0))
      {
        if (v4 >= 1)
        {
          v20 = 0;
          do
          {
            *(result[93].i64[1] + v20) = 0;
            v20 += 4;
          }

          while (4 * v4 != v20);
        }
      }

      else if (v4 >= 1)
      {
        v18 = 0;
        v19 = *(*(v8 + 3) + 8 * v9);
        do
        {
          *(result[93].i64[1] + 4 * v18) = *(v19 + 2 * v18);
          ++v18;
        }

        while (v4 != v18);
      }

      v21 = result[68].u32[3];
      v13 = result[93].i32[0] + *(*(a2 + 16) + 2 * a4);
      v22 = v13 - 16385;
      if (v21 < 1)
      {
        if (v22 <= 0xFFFF7FFE)
        {
          LOWORD(v13) = v13 / 2;
        }

        goto LABEL_7;
      }

      v23 = result[93].u64[1];
      v24 = v22 < 0xFFFF7FFF;
      v25 = v10 + 2 * v21;
      v26 = v23 + 4 * v21;
      if (v21 >= 4 && (v23 < v25 ? (v27 = v7 >= v26) : (v27 = 1), v27))
      {
        if (v21 < 0x10)
        {
          v28 = 0;
          v29 = v24;
LABEL_62:
          v67 = v28;
          v28 = v21 & 0x7FFFFFFC;
          v68 = vdup_n_s16(v29 != v24);
          v69 = (v10 + 2 * v67);
          v70 = (v23 + 4 * v67);
          v71 = v67 - v28;
          do
          {
            v72 = *v69++;
            v73 = vaddw_s16(*v70, v72);
            *v70++ = v73;
            v68 = vorr_s8(v68, vmovn_s32(vcgtq_u32(v12, vaddq_s32(v73, v11))));
            v71 += 4;
          }

          while (v71);
          if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v68, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
          {
            v29 = 1;
          }

          else
          {
            v29 = v24;
          }

          if (v28 == v21)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        v28 = v21 & 0x7FFFFFF0;
        v57 = 0;
        v58 = (v23 + 32);
        v59 = v28;
        v60 = v10 + 2;
        v61 = 0;
        do
        {
          v62 = *v60[-2].i8;
          v63 = vaddw_s16(v58[-2], *v62.i8);
          v64 = vaddw_high_s16(v58[-1], v62);
          v65 = vaddw_s16(*v58, *v60);
          v66 = vaddw_high_s16(v58[1], *v60->i8);
          v58[-2] = v63;
          v58[-1] = v64;
          *v58 = v65;
          v58[1] = v66;
          v58 += 4;
          v57 = vorr_s8(v57, vmovn_s16(vuzp1q_s16(vcgtq_u32(v12, vaddq_s32(v63, v11)), vcgtq_u32(v12, vaddq_s32(v64, v11)))));
          v61 = vorr_s8(v61, vmovn_s16(vuzp1q_s16(vcgtq_u32(v12, vaddq_s32(v65, v11)), vcgtq_u32(v12, vaddq_s32(v66, v11)))));
          v60 += 4;
          v59 -= 16;
        }

        while (v59);
        if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v61, v57), 7uLL)), 0x8040201008040201)))
        {
          v29 = 1;
        }

        else
        {
          v29 = v24;
        }

        if (v28 == v21)
        {
          goto LABEL_30;
        }

        if ((v21 & 0xC) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v28 = 0;
        v29 = v24;
      }

LABEL_26:
      v30 = (v23 + 4 * v28);
      v31 = v21 - v28;
      v32 = v10 + v28;
      do
      {
        v33 = *v32++;
        v34 = *v30;
        *v30++ += v33;
        if ((v34 + v33 - 16385) < 0xFFFF7FFF)
        {
          v29 = 1;
        }

        --v31;
      }

      while (v31);
LABEL_30:
      if (!v29)
      {
        goto LABEL_38;
      }

      v13 /= 2;
      if (v21 < 4)
      {
        v35 = 0;
LABEL_36:
        v38 = (v23 + 4 * v35);
        v39 = v21 - v35;
        do
        {
          *v38++ /= 2;
          --v39;
        }

        while (v39);
        goto LABEL_38;
      }

      v35 = v21 & 0x7FFFFFFC;
      v36 = v35;
      v37 = v23;
      do
      {
        *v37 = vshrq_n_s32(vsraq_n_u32(*v37, *v37, 0x1FuLL), 1uLL);
        ++v37;
        v36 -= 4;
      }

      while (v36);
      if (v35 != v21)
      {
        goto LABEL_36;
      }

LABEL_38:
      if (v21 >= 4 && (v7 >= v26 || v23 >= v25))
      {
        if (v21 < 0x10)
        {
          v40 = 0;
LABEL_51:
          v52 = v40;
          v40 = v21 & 0x7FFFFFFC;
          v53 = (v23 + 4 * v52);
          v54 = (v10 + 2 * v52);
          v55 = v52 - v40;
          do
          {
            v56 = *v53++;
            *v54++ = vmovn_s32(v56);
            v55 += 4;
          }

          while (v55);
          if (v40 == v21)
          {
            goto LABEL_7;
          }

          goto LABEL_42;
        }

        v40 = v21 & 0x7FFFFFF0;
        v45 = (v23 + 32);
        v46 = v40;
        v47 = &v10[2];
        do
        {
          v49 = v45[-2];
          v48 = v45[-1];
          v51 = *v45;
          v50 = v45[1];
          v45 += 4;
          v47[-1] = vuzp1q_s16(v49, v48);
          *v47 = vuzp1q_s16(v51, v50);
          v47 += 2;
          v46 -= 16;
        }

        while (v46);
        if (v40 == v21)
        {
          goto LABEL_7;
        }

        if ((v21 & 0xC) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v40 = 0;
      }

LABEL_42:
      v41 = v10 + v40;
      v42 = v21 - v40;
      v43 = (v23 + 4 * v40);
      do
      {
        v44 = *v43++;
        *v41++ = v44;
        --v42;
      }

      while (v42);
LABEL_7:
      *(*(a2 + 16) + 2 * a4) = v13;
      ++v9;
    }

    while (v9 < *v8);
  }

  return result;
}

uint64_t sub_10000B4DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = *(a1 + 1100);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = v11 + 2 * v10 * a4;
  v14 = *(a1 + 1404);
  v15 = *(v12 + 2 * a4);
  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(v12 + 2 * a4);
  }

  if ((a3 & 0x80000000) != 0)
  {
    if (qword_1001065A8 && *(qword_1001065A8 + 628))
    {
      return 1;
    }

    v21 = *(a2 + 44) * v14;
    if (v21 >= 0x4000)
    {
      v22 = 0x3FFF;
    }

    else
    {
      v22 = v21;
    }

    if (v21 >= -16383)
    {
      LOWORD(v23) = v22;
    }

    else
    {
      LOWORD(v23) = -16384;
    }

    LODWORD(v24) = -a3;
    v25 = v10 * -a3;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 688))
      {
        v23 = (v23 * v15) / (v23 + v16);
        if (!*(qword_1001065A8 + 740))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v113 = v16;
      if (v23 < v16)
      {
        v113 = v23;
      }

      if (*(qword_1001065A8 + 84))
      {
        LOWORD(v23) = v113;
      }

      if (*(qword_1001065A8 + 740))
      {
LABEL_26:
        *(v12 + 2 * v24) = 0;
      }
    }

LABEL_27:
    v26 = v11 + 2 * v25;
    v27 = v23;
    *(a1 + 1488) = v23;
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (qword_1001065A8 && *(qword_1001065A8 + 740))
        {
          *(v26 + 2 * i) = 0;
        }

        v29 = *(v13 + 2 * i);
        if (v29 < 0)
        {
          v30 = -2;
        }

        else
        {
          v30 = 2;
        }

        *(*(a1 + 1496) + 4 * i) = (v29 * v23 + (v16 / v30)) / v16;
      }

      v27 = *(a1 + 1488);
    }

    v97 = *(a2 + 16);
    v24 = v24;
    v98 = *(a1 + 1100);
    v99 = v27 + *(v97 + 2 * v24);
    v100 = v99 - 16385;
    if (v98 < 1)
    {
      if (v100 <= 0xFFFF7FFE)
      {
        v99 /= 2;
      }

      goto LABEL_141;
    }

    v101 = v25;
    v102 = *(a1 + 1496);
    v103 = v100 < 0xFFFF7FFF;
    v104 = v102 + 4 * v98;
    if (v98 < 4 || v102 < v11 + 2 * (v101 + v98) && v26 < v104)
    {
      v105 = 0;
      v106 = v103;
      goto LABEL_114;
    }

    if (v98 >= 0x10)
    {
      v105 = v98 & 0x7FFFFFF0;
      v123 = (v11 + 2 * v101 + 16);
      v124 = 0;
      v125 = (v102 + 32);
      v126.i64[0] = 0x400000004000;
      v126.i64[1] = 0x400000004000;
      v127.i64[0] = 0x800000008000;
      v127.i64[1] = 0x800000008000;
      v128 = v105;
      v129 = 0;
      do
      {
        v130 = *v123[-2].i8;
        v131 = vaddw_s16(v125[-2], *v130.i8);
        v132 = vaddw_high_s16(v125[-1], v130);
        v133 = vaddw_s16(*v125, *v123);
        v134 = vaddw_high_s16(v125[1], *v123->i8);
        v125[-2] = v131;
        v125[-1] = v132;
        *v125 = v133;
        v125[1] = v134;
        v125 += 4;
        v124 = vorr_s8(v124, vmovn_s16(vuzp1q_s16(vcgtq_u32(v127, vaddq_s32(v131, v126)), vcgtq_u32(v127, vaddq_s32(v132, v126)))));
        v129 = vorr_s8(v129, vmovn_s16(vuzp1q_s16(vcgtq_u32(v127, vaddq_s32(v133, v126)), vcgtq_u32(v127, vaddq_s32(v134, v126)))));
        v123 += 4;
        v128 -= 16;
      }

      while (v128);
      if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v129, v124), 7uLL)), 0x8040201008040201)))
      {
        v106 = 1;
      }

      else
      {
        v106 = v103;
      }

      if (v105 == v98)
      {
        goto LABEL_118;
      }

      if ((v98 & 0xC) == 0)
      {
LABEL_114:
        v107 = v98 - v105;
        v108 = (v102 + 4 * v105);
        v109 = (v11 + 2 * v105 + 2 * v101);
        do
        {
          v110 = *v109++;
          v111 = *v108;
          *v108++ += v110;
          if ((v111 + v110 - 16385) < 0xFFFF7FFF)
          {
            v106 = 1;
          }

          --v107;
        }

        while (v107);
LABEL_118:
        if (!v106)
        {
LABEL_135:
          if (v98 < 4 || v26 < v104 && v102 < v11 + 2 * (v101 + v98))
          {
            v118 = 0;
LABEL_139:
            v119 = v98 - v118;
            v120 = (v11 + 2 * v118 + 2 * v101);
            v121 = (v102 + 4 * v118);
            do
            {
              v122 = *v121++;
              *v120++ = v122;
              --v119;
            }

            while (v119);
LABEL_141:
            *(v97 + 2 * v24) = v99;
            return 1;
          }

          if (v98 >= 0x10)
          {
            v118 = v98 & 0x7FFFFFF0;
            v144 = (v102 + 32);
            v145 = (v11 + 2 * v101 + 16);
            v146 = v118;
            do
            {
              v148 = v144[-2];
              v147 = v144[-1];
              v150 = *v144;
              v149 = v144[1];
              v144 += 4;
              v145[-1] = vuzp1q_s16(v148, v147);
              *v145 = vuzp1q_s16(v150, v149);
              v145 += 2;
              v146 -= 16;
            }

            while (v146);
            if (v118 == v98)
            {
              goto LABEL_141;
            }

            if ((v98 & 0xC) == 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v118 = 0;
          }

          v151 = v118;
          v118 = v98 & 0x7FFFFFFC;
          v152 = (v102 + 4 * v151);
          v153 = (v11 + 2 * v151 + 2 * v101);
          v154 = v151 - v118;
          do
          {
            v155 = *v152++;
            *v153++ = vmovn_s32(v155);
            v154 += 4;
          }

          while (v154);
          if (v118 == v98)
          {
            goto LABEL_141;
          }

          goto LABEL_139;
        }

        if (v98 > 3)
        {
          v112 = v98 & 0x7FFFFFFC;
          v114 = v112;
          v115 = v102;
          do
          {
            *v115 = vshrq_n_s32(vsraq_n_u32(*v115, *v115, 0x1FuLL), 1uLL);
            ++v115;
            v114 -= 4;
          }

          while (v114);
          if (v112 == v98)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v112 = 0;
        }

        v116 = v98 - v112;
        v117 = (v102 + 4 * v112);
        do
        {
          *v117++ /= 2;
          --v116;
        }

        while (v116);
LABEL_134:
        v99 /= 2;
        goto LABEL_135;
      }
    }

    else
    {
      v105 = 0;
      v106 = v103;
    }

    v135 = v105;
    v105 = v98 & 0x7FFFFFFC;
    v136 = vdup_n_s16(v106 != v103);
    v137 = (v11 + 2 * v135 + 2 * v101);
    v138 = (v102 + 4 * v135);
    v139 = v135 - v105;
    v140.i64[0] = 0x400000004000;
    v140.i64[1] = 0x400000004000;
    v141.i64[0] = 0x800000008000;
    v141.i64[1] = 0x800000008000;
    do
    {
      v142 = *v137++;
      v143 = vaddw_s16(*v138, v142);
      *v138++ = v143;
      v136 = vorr_s8(v136, vmovn_s32(vcgtq_u32(v141, vaddq_s32(v143, v140))));
      v139 += 4;
    }

    while (v139);
    if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v136, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
    {
      v106 = 1;
    }

    else
    {
      v106 = v103;
    }

    if (v105 == v98)
    {
      goto LABEL_118;
    }

    goto LABEL_114;
  }

  v17 = *(a2 + 48) * v14;
  if (v17 >= 0x3FFF)
  {
    v17 = 0x3FFF;
  }

  if (v17 <= -16384)
  {
    v17 = -16384;
  }

  v18 = v16;
  if (v17 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v156 = *(a1 + 1432);
  v20 = *(*v156 + 8 * a3);
  if (v20)
  {
    if (*v20 < 1)
    {
      return 1;
    }

    goto LABEL_38;
  }

  result = sub_100009488(a1, a3);
  if (!result)
  {
    return result;
  }

  v20 = *(*v156 + 8 * v8);
  if (*v20 >= 1)
  {
LABEL_38:
    v32 = 0;
    v33.i64[0] = 0x400000004000;
    v33.i64[1] = 0x400000004000;
    v34.i64[0] = 0x800000008000;
    v34.i64[1] = 0x800000008000;
    while (1)
    {
      if (!*(*(v20 + 3) + 8 * v32))
      {
        v35 = sub_1000BFBD8(2 * *(v156 + 32), a2, a3, 4294934527, a5, a6, a7, a8);
        v34.i64[0] = 0x800000008000;
        v34.i64[1] = 0x800000008000;
        v33.i64[0] = 0x400000004000;
        v33.i64[1] = 0x400000004000;
        *(*(v20 + 3) + 8 * v32) = v35;
        v36 = *(v156 + 56);
        v37 = *(v156 + 60);
        *(v156 + 56) = v36 + 1;
        if (v36 >= v37)
        {
          *(v156 + 60) = v36 + 1;
        }
      }

      v38 = *(*(v20 + 3) + 8 * v32);
      *(a1 + 1488) = v19;
      v39 = v19;
      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          v41 = *(v13 + 2 * j);
          if (v41 < 0)
          {
            v42 = -2;
          }

          else
          {
            v42 = 2;
          }

          *(*(a1 + 1496) + 4 * j) = (v18 / v42 + v19 * v41) / v18;
        }

        v39 = *(a1 + 1488);
      }

      v43 = *(a1 + 1100);
      v44 = *(v20 + 1);
      v45 = v39 + *(v44 + 2 * v32);
      v46 = v45 - 16385;
      if (v43 >= 1)
      {
        break;
      }

      if (v46 > 0xFFFF7FFE)
      {
        *(v44 + 2 * v32) = v45;
        goto LABEL_41;
      }

      *(v44 + 2 * v32) = v45 / 2;
LABEL_40:
      *(*(v20 + 2) + 2 * v32) = (*(*(v20 + 2) + 2 * v32) + (*(*(v20 + 2) + 2 * v32) >> 15)) >> 1;
LABEL_41:
      if (++v32 >= *v20)
      {
        return 1;
      }
    }

    v47 = *(a1 + 1496);
    v48 = v46 < 0xFFFF7FFF;
    v49 = v38 + 2 * v43;
    v50 = v47 + 4 * v43;
    if (v43 < 4 || (v47 < v49 ? (v51 = v38 >= v50) : (v51 = 1), !v51))
    {
      v52 = 0;
      v53 = v48;
      goto LABEL_62;
    }

    if (v43 >= 0x10)
    {
      v52 = v43 & 0x7FFFFFF0;
      v80 = v38 + 2;
      v81 = 0;
      v82 = (v47 + 32);
      v83 = v52;
      v84 = 0;
      do
      {
        v85 = *v80[-2].i8;
        v86 = vaddw_s16(v82[-2], *v85.i8);
        v87 = vaddw_high_s16(v82[-1], v85);
        v88 = vaddw_s16(*v82, *v80);
        v89 = vaddw_high_s16(v82[1], *v80->i8);
        v82[-2] = v86;
        v82[-1] = v87;
        *v82 = v88;
        v82[1] = v89;
        v82 += 4;
        v81 = vorr_s8(v81, vmovn_s16(vuzp1q_s16(vcgtq_u32(v34, vaddq_s32(v86, v33)), vcgtq_u32(v34, vaddq_s32(v87, v33)))));
        v84 = vorr_s8(v84, vmovn_s16(vuzp1q_s16(vcgtq_u32(v34, vaddq_s32(v88, v33)), vcgtq_u32(v34, vaddq_s32(v89, v33)))));
        v80 += 4;
        v83 -= 16;
      }

      while (v83);
      if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v84, v81), 7uLL)), 0x8040201008040201)))
      {
        v53 = 1;
      }

      else
      {
        v53 = v48;
      }

      if (v52 == v43)
      {
        goto LABEL_66;
      }

      if ((v43 & 0xC) == 0)
      {
LABEL_62:
        v54 = (v47 + 4 * v52);
        v55 = v43 - v52;
        v56 = v38 + v52;
        do
        {
          v57 = *v56++;
          a2 = *v54;
          *v54++ = a2 + v57;
          if ((a2 + v57 - 16385) < 0xFFFF7FFF)
          {
            v53 = 1;
          }

          --v55;
        }

        while (v55);
LABEL_66:
        if (!v53)
        {
          goto LABEL_76;
        }

        v45 /= 2;
        if (v43 >= 4)
        {
          v58 = v43 & 0x7FFFFFFC;
          v59 = v58;
          v60 = v47;
          do
          {
            *v60 = vshrq_n_s32(vsraq_n_u32(*v60, *v60, 0x1FuLL), 1uLL);
            ++v60;
            v59 -= 4;
          }

          while (v59);
          if (v58 == v43)
          {
LABEL_76:
            if (v43 < 4 || v38 < v50 && v47 < v49)
            {
              v63 = 0;
              goto LABEL_80;
            }

            if (v43 >= 0x10)
            {
              v63 = v43 & 0x7FFFFFF0;
              v68 = (v47 + 32);
              v69 = &v38[2];
              v70 = v63;
              do
              {
                v72 = v68[-2];
                v71 = v68[-1];
                v74 = *v68;
                v73 = v68[1];
                v68 += 4;
                v69[-1] = vuzp1q_s16(v72, v71);
                *v69 = vuzp1q_s16(v74, v73);
                v69 += 2;
                v70 -= 16;
              }

              while (v70);
              if (v63 == v43)
              {
                goto LABEL_82;
              }

              if ((v43 & 0xC) == 0)
              {
LABEL_80:
                v64 = v38 + v63;
                v65 = v43 - v63;
                v66 = (v47 + 4 * v63);
                do
                {
                  v67 = *v66++;
                  *v64++ = v67;
                  --v65;
                }

                while (v65);
                goto LABEL_82;
              }
            }

            else
            {
              v63 = 0;
            }

            v75 = v63;
            v63 = v43 & 0x7FFFFFFC;
            v76 = (v47 + 4 * v75);
            v77 = (v38 + 2 * v75);
            v78 = v75 - v63;
            do
            {
              v79 = *v76++;
              *v77++ = vmovn_s32(v79);
              v78 += 4;
            }

            while (v78);
            if (v63 != v43)
            {
              goto LABEL_80;
            }

LABEL_82:
            *(*(v20 + 1) + 2 * v32) = v45;
            if (!v53)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v58 = 0;
        }

        v61 = (v47 + 4 * v58);
        v62 = v43 - v58;
        do
        {
          *v61++ /= 2;
          --v62;
        }

        while (v62);
        goto LABEL_76;
      }
    }

    else
    {
      v52 = 0;
      v53 = v48;
    }

    v90 = v52;
    v52 = v43 & 0x7FFFFFFC;
    v91 = vdup_n_s16(v53 != v48);
    v92 = (v38 + 2 * v90);
    v93 = (v47 + 4 * v90);
    v94 = v90 - v52;
    do
    {
      v95 = *v92++;
      v96 = vaddw_s16(*v93, v95);
      *v93++ = v96;
      v91 = vorr_s8(v91, vmovn_s32(vcgtq_u32(v34, vaddq_s32(v96, v33))));
      v94 += 4;
    }

    while (v94);
    if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v91, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
    {
      v53 = 1;
    }

    else
    {
      v53 = v48;
    }

    if (v52 == v43)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  return 1;
}

_DWORD *sub_10000BE30(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 > 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1000FCDC0[a3];
  }

  v143 = v8;
  v144 = v9;
  v12 = sub_1000BBAE0(a1, v11, a2, a4, a5, a6, a7, a8);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_1000C0034(2048);
  v15 = v14;
  if (!v14)
  {
    sub_1000BBBC4(v13);
    return v15;
  }

  v16 = (v14 + 2016);
  if (!sub_1000BBD04(v13, (v14 + 2016)))
  {
    goto LABEL_478;
  }

  if (!*v16)
  {
    if (!sub_1000BBD04(v13, v15 + 248))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 249))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 250))
    {
      goto LABEL_478;
    }

    v21 = v15 + 251;
    if (!sub_1000BBD04(v13, v15 + 251))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 252))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 254))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 255))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 256))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 257))
    {
      goto LABEL_478;
    }

    v22 = v15 + 258;
    if (!sub_1000BBD04(v13, v15 + 258))
    {
      goto LABEL_478;
    }

    v23 = v15 + 259;
    if (!sub_1000BBD04(v13, v15 + 259))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDA4(v13, v15 + 1040))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDA4(v13, v15 + 1041))
    {
      goto LABEL_478;
    }

    v139 = v15 + 261;
    if (!sub_1000BBD04(v13, v15 + 261))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 262))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 263))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 264))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 265))
    {
      goto LABEL_478;
    }

    v135 = v15 + 268;
    if (!sub_1000BBD54(v13, v15 + 268))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 269))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 270))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 271))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 272))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 273))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 274))
    {
      goto LABEL_478;
    }

    v134 = v15 + 275;
    if (!sub_1000BBD54(v13, v15 + 275))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 276))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 277))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 278))
    {
      goto LABEL_478;
    }

    v124 = v15 + 279;
    if (!sub_1000BBD04(v13, v15 + 279))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 280))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 281))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 282))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 283))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDFC(v13, v15 + 568))
    {
      goto LABEL_478;
    }

    v15[285] = 2785280;
    v119 = v15 + 295;
    if (!sub_1000BBD54(v13, v15 + 295))
    {
      goto LABEL_478;
    }

    v116 = v15 + 297;
    if (!sub_1000BBD54(v13, v15 + 297))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 298))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 299))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 300))
    {
      goto LABEL_478;
    }

    v142[0] = 0;
    if (!sub_1000BBD54(v13, v142))
    {
      goto LABEL_478;
    }

    v115 = v142[0];
    v15[324] = v142[0];
    if (!sub_1000BBD04(v13, v15 + 328))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 329))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 330))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 336))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 337))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 346))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDFC(v13, v15 + 694))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDFC(v13, v15 + 695))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 348))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDFC(v13, v15 + 698))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 350))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 351))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD54(v13, v15 + 356))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBD04(v13, v15 + 401))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDFC(v13, v15 + 804))
    {
      goto LABEL_478;
    }

    if (!sub_1000BBDFC(v13, v15 + 805))
    {
      goto LABEL_478;
    }

    v114 = v15 + 440;
    if (!sub_1000BBD04(v13, v15 + 440) || !sub_1000BBD04(v13, v15 + 441) || !sub_1000BBDFC(v13, v15 + 884) || !sub_1000BBDA4(v13, v15 + 1770) || !sub_1000BBDA4(v13, v15 + 1771) || !sub_1000BBDA4(v13, v15 + 1772) || !sub_1000BBDA4(v13, v15 + 1773) || !sub_1000BBD04(v13, v15 + 444) || !sub_1000BBDA4(v13, v15 + 1780) || !sub_1000BBD54(v13, v15 + 446) || !sub_1000BBD54(v13, v15 + 447) || !sub_1000BBD04(v13, v15 + 464) || !sub_1000BBD04(v13, v15 + 465) || !sub_1000BBD04(v13, v15 + 466) || !sub_1000BBD04(v13, v15 + 467) || !sub_1000BBD04(v13, v15 + 468) || !sub_1000BBD04(v13, v15 + 469) || !sub_1000BBD54(v13, v15 + 470) || !sub_1000BBD54(v13, v15 + 471) || !sub_1000BBD54(v13, v15 + 472) || !sub_1000BBD54(v13, v15 + 478) || !sub_1000BBD54(v13, v15 + 479) || !sub_1000BBD54(v13, v15 + 480))
    {
      goto LABEL_478;
    }

    if (v15[467])
    {
      v142[0] = 0;
      v108 = v15 + 484;
      if (!sub_1000BBF0C(v13, 4, v15 + 242, v142))
      {
        goto LABEL_478;
      }

      if (*v108)
      {
        if (v142[0] != *v134)
        {
          goto LABEL_478;
        }

        *(v15 + 241) = *v108;
      }

      v142[0] = 0;
      v109 = v15 + 488;
      if (!sub_1000BBF0C(v13, 4, v15 + 244, v142))
      {
        goto LABEL_478;
      }

      if (*v109)
      {
        if (v142[0] != *v134)
        {
          goto LABEL_478;
        }

        *(v15 + 243) = *v109;
      }
    }

    if (!sub_1000BBDFC(v13, v15 + 980) || !sub_1000BBD04(v13, v15 + 491) || !sub_1000BBD04(v13, v15 + 492) || !sub_1000BBDFC(v13, v15 + 986) || !sub_1000BBD04(v13, v15 + 495) || !sub_1000BBD04(v13, v15 + 498) || !sub_1000BBD54(v13, v15 + 499) || !sub_1000BBD04(v13, v15 + 502) || !sub_1000BBD04(v13, v15 + 503) || !sub_1000BBD54(v13, v15 + 505) || !sub_1000BBD04(v13, v15 + 506) || !sub_1000BBD04(v13, v15 + 294))
    {
      goto LABEL_478;
    }

    if (!v15[503])
    {
      if (v15[294])
      {
        v142[0] = 0;
        v110 = v15 + 292;
        if (!sub_1000BBF0C(v13, 4, v15 + 146, v142))
        {
          goto LABEL_478;
        }

        if (*v110)
        {
          if (v142[0] != *v135 + 1)
          {
            goto LABEL_478;
          }

          *(v15 + 145) = *v110;
        }
      }

      else
      {
        v142[0] = 0;
        v111 = v15 + 288;
        if (!sub_1000BBF0C(v13, 2, v15 + 144, v142))
        {
          goto LABEL_478;
        }

        if (*v111)
        {
          if (v142[0] != *v135 + 1)
          {
            goto LABEL_478;
          }

          *(v15 + 143) = *v111;
        }
      }
    }

    if (*v23)
    {
      goto LABEL_168;
    }

    v24 = v15[281] * *v116;
    if (*v22)
    {
      v112 = 0;
      v106 = 0;
      if (v115 == 5)
      {
        v24 = 0;
      }

      v120 = v24;
      if (*v114)
      {
LABEL_142:
        v142[0] = 0;
        v105 = (v15 + 312);
        if (!sub_1000BBF0C(v13, 2, v15 + 156, v142))
        {
          goto LABEL_478;
        }

        v27 = *v105;
        if (*v105)
        {
          if (v142[0] != v106)
          {
            goto LABEL_478;
          }
        }

        if (v27)
        {
          *(v15 + 151) = v27;
        }

        v142[0] = 0;
        v107 = (v15 + 314);
        if (!sub_1000BBF0C(v13, 1, v15 + 157, v142))
        {
          goto LABEL_478;
        }

        v28 = *v107;
        if (*v107)
        {
          if (v142[0] != v112)
          {
            goto LABEL_478;
          }
        }

        if (v28)
        {
          *(v15 + 152) = v28;
        }

        v142[0] = 0;
        v113 = (v15 + 316);
        if (!sub_1000BBF0C(v13, 4, v15 + 158, v142))
        {
          goto LABEL_478;
        }

        v29 = *v113;
        if (*v113)
        {
          if (v142[0] != v120)
          {
            goto LABEL_478;
          }
        }

        if (v29)
        {
          *(v15 + 153) = v29;
          v30 = *(v15 + 151) != 0;
          v31 = 1;
        }

        else
        {
          v32 = *(v15 + 153);
          v31 = v32 != 0;
          v30 = *(v15 + 151) != 0;
          if (!v32)
          {
            v33 = 1;
            goto LABEL_160;
          }
        }

        v33 = 2;
LABEL_160:
        if (v30)
        {
          v34 = v33;
        }

        else
        {
          v34 = v31;
        }

        v35 = *(v15 + 152);
        if (v35)
        {
          ++v34;
        }

        if (v34 != (v115 != 5))
        {
          goto LABEL_478;
        }

        if (!*v124)
        {
          if (v115 == 5)
          {
LABEL_173:
            v125 = 0;
            goto LABEL_174;
          }

          if (!v31 && !v30)
          {
            goto LABEL_478;
          }

LABEL_172:
          v125 = *v116;
LABEL_174:
          v142[0] = 0;
          v121 = (v15 + 322);
          if (!sub_1000BBF0C(v13, 4, v15 + 161, v142))
          {
            goto LABEL_478;
          }

          v36 = *v121;
          if (*v121)
          {
            if (v142[0] != v125)
            {
              goto LABEL_478;
            }
          }

          if (v36)
          {
            *(v15 + 155) = v36;
          }

          if (v15[329])
          {
            v142[0] = 0;
            v126 = v15 + 334;
            if (!sub_1000BBF0C(v13, 2, v15 + 167, v142))
            {
              goto LABEL_478;
            }

            if (*v126)
            {
              if (v142[0] != v15[330])
              {
                goto LABEL_478;
              }

              *(v15 + 166) = *v126;
            }
          }

          if (v15[336])
          {
            v142[0] = 0;
            v127 = v15 + 340;
            if (!sub_1000BBF0C(v13, 2, v15 + 170, v142))
            {
              goto LABEL_478;
            }

            if (*v127)
            {
              if (v142[0] != v15[337])
              {
                goto LABEL_478;
              }

              *(v15 + 169) = *v127;
            }
          }

          v128 = v15[346];
          v122 = v15[274];
          v142[0] = 0;
          v117 = (v15 + 344);
          if (!sub_1000BBF0C(v13, 2, v15 + 172, v142))
          {
            goto LABEL_478;
          }

          v37 = *v117;
          if (*v117)
          {
            if (v142[0] != v122 * v128)
            {
              goto LABEL_478;
            }
          }

          if (v37)
          {
            *(v15 + 171) = v37;
          }

          v129 = sub_1000C0034(48);
          if (!v129)
          {
            goto LABEL_478;
          }

          *(v15 + 116) = v129;
          if (!sub_1000BBD54(v13, v129))
          {
            goto LABEL_478;
          }

          if (!sub_1000BBD54(v13, (*(v15 + 116) + 4)))
          {
            goto LABEL_478;
          }

          if (!sub_1000BBD54(v13, (*(v15 + 116) + 8)))
          {
            goto LABEL_478;
          }

          if (!sub_1000BBDFC(v13, (*(v15 + 116) + 12)))
          {
            goto LABEL_478;
          }

          if (!sub_1000BBD54(v13, (*(v15 + 116) + 16)))
          {
            goto LABEL_478;
          }

          v38 = sub_1000C0034(8 * *v129);
          *(v129 + 3) = v38;
          if (!v38)
          {
            goto LABEL_478;
          }

          *(v129 + 4) = v38;
          if (*v129 >= 1)
          {
            v123 = 0;
            v118 = 0;
            do
            {
              if (!sub_1000BBFD8(v13, (*(v129 + 3) + v123)))
              {
                break;
              }

              v123 += 8;
              ++v118;
            }

            while (v118 < *v129);
          }

          v142[0] = 0;
          v130 = v15 + 354;
          if (!sub_1000BBF0C(v13, 2, v15 + 177, v142))
          {
            goto LABEL_478;
          }

          if (*v130)
          {
            if (v142[0] != v15[356])
            {
              goto LABEL_478;
            }

            *(v15 + 176) = *v130;
          }

          if (v15[506])
          {
            v142[0] = 0;
            v131 = v15 + 510;
            if (!sub_1000BBF0C(v13, 1, v15 + 255, v142))
            {
              goto LABEL_478;
            }

            if (*v131)
            {
              if (v142[0] != *v119)
              {
                goto LABEL_478;
              }

              *(v15 + 254) = *v131;
            }
          }

          v142[0] = 0;
          v132 = v15 + 462;
          if (!sub_1000BBF0C(v13, 1, v15 + 231, v142))
          {
            goto LABEL_478;
          }

          if (*v132)
          {
            if (v142[0] != *v135)
            {
              goto LABEL_478;
            }

            *(v15 + 230) = *v132;
          }

          v142[0] = 0;
          v136 = v15 + 476;
          if (!sub_1000BBF0C(v13, 4, v15 + 238, v142))
          {
            goto LABEL_478;
          }

          if (*v136)
          {
            if (v142[0] != v15[472])
            {
              goto LABEL_478;
            }

            *(v15 + 237) = *v136;
          }

          v133 = *v119;
          if (v15[249] && *v22)
          {
            v39 = *v119;
            if (*v114)
            {
              v39 = 0;
            }

            v137 = v39;
          }

          else
          {
            v137 = 0;
          }

          v40 = v15[280] * v133;
          if (*v23)
          {
            v41 = v15[283];
            v42 = v40 + (v40 < 0 ? 3 : 0);
            v142[0] = 0;
            if (!sub_1000BBF0C(v13, 4, v15 + 21, v142))
            {
              goto LABEL_478;
            }

            v43 = *(v15 + 21);
            if (v43)
            {
              if (v142[0] != *v119)
              {
                goto LABEL_478;
              }

              *(v15 + 20) = v43;
            }

            v142[0] = 0;
            if (!sub_1000BBF0C(v13, 4, v15 + 25, v142))
            {
              goto LABEL_478;
            }

            v44 = *(v15 + 25);
            if (v44)
            {
              if (v142[0] != v41 * v133)
              {
                goto LABEL_478;
              }
            }

            if (v44)
            {
              *(v15 + 24) = v44;
            }

            v142[0] = 0;
            v45 = (v15 + 318);
            if (!sub_1000BBF0C(v13, 4, v15 + 159, v142))
            {
              goto LABEL_478;
            }

            v46 = *v45;
            if (*v45)
            {
              if (v142[0] != v42 >> 2)
              {
                goto LABEL_478;
              }
            }

            if (v46)
            {
              *(v15 + 154) = v46;
            }

LABEL_292:
            v54 = sub_1000C0034(256);
            if (!v54)
            {
              goto LABEL_478;
            }

            v55 = v54;
            *(v15 + 163) = v54;
            if (!sub_1000BBD54(v13, v54) || !sub_1000BBD54(v13, v55) || !sub_1000BBD54(v13, v55 + 26) || !sub_1000BBD54(v13, v55 + 212) || !sub_1000BBD54(v13, v55 + 27) || !sub_1000BBD54(v13, v55 + 220) || !sub_1000BBD54(v13, v55 + 28) || !sub_1000BBD54(v13, v55 + 228) || !sub_1000BBD54(v13, v55 + 30) || !sub_1000BBDA4(v13, v55 + 244) || !sub_1000BBDA4(v13, v55 + 245) || !sub_1000BBDA4(v13, v55 + 246) || !sub_1000BBD04(v13, v55 + 62) || !sub_1000BBD54(v13, v55 + 252))
            {
              goto LABEL_478;
            }

            if (*(v55 + 246))
            {
              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 2, v55 + 13, v142))
              {
                goto LABEL_478;
              }

              v56 = v55[13];
              if (v56)
              {
                if (v142[0] != *(v55 + 54))
                {
                  goto LABEL_478;
                }

                v55[12] = v56;
              }

              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 2, v55 + 15, v142))
              {
                goto LABEL_478;
              }

              v57 = v55[15];
              if (v57)
              {
                if (v142[0] != *(v55 + 54))
                {
                  goto LABEL_478;
                }

                v55[14] = v57;
              }
            }

            else
            {
              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 1, v55 + 9, v142))
              {
                goto LABEL_478;
              }

              v58 = v55[9];
              if (v58)
              {
                if (v142[0] != *(v55 + 54))
                {
                  goto LABEL_478;
                }

                v55[8] = v58;
              }

              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 1, v55 + 11, v142))
              {
                goto LABEL_478;
              }

              v59 = v55[11];
              if (v59)
              {
                if (v142[0] != *(v55 + 54))
                {
                  goto LABEL_478;
                }

                v55[10] = v59;
              }
            }

            v142[0] = 0;
            if (!sub_1000BBF0C(v13, 1, v55 + 17, v142))
            {
              goto LABEL_478;
            }

            v67 = v55[17];
            if (v67)
            {
              if (v142[0] != *(v55 + 54))
              {
                goto LABEL_478;
              }

              v55[16] = v67;
            }

            if (*(v55 + 62))
            {
              v68 = *(v55 + 54);
              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 1, v55 + 23, v142))
              {
                goto LABEL_478;
              }

              v69 = v55[23];
              if (v69)
              {
                if (v142[0] != v68)
                {
                  goto LABEL_478;
                }
              }

              if (v69)
              {
                v70 = 20;
LABEL_342:
                v55[v70] = v69;
              }
            }

            else if (*(v55 + 244))
            {
              v71 = *(v55 + 54);
              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 1, v55 + 21, v142))
              {
                goto LABEL_478;
              }

              v72 = v71 + 14;
              if (v71 >= -7)
              {
                v72 = v71 + 7;
              }

              v69 = v55[21];
              if (v69)
              {
                if (v142[0] != v72 >> 3)
                {
                  goto LABEL_478;
                }
              }

              if (v69)
              {
                v70 = 18;
                goto LABEL_342;
              }
            }

            if (*(v55 + 245))
            {
              v73 = sub_100022AD4(v55);
              v74 = *(v55 + 54);
              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 1, v55 + 22, v142))
              {
                goto LABEL_478;
              }

              v75 = v74 + 14;
              if (v74 >= -7)
              {
                v75 = v74 + 7;
              }

              v76 = v55[22];
              if (v76)
              {
                if (v142[0] != v75 >> 3)
                {
                  goto LABEL_478;
                }
              }

              if (v76)
              {
                v55[19] = v76;
              }

              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 2, v55 + 25, v142))
              {
                goto LABEL_478;
              }

              v77 = v55[25];
              if (v77)
              {
                if (v142[0] != v73)
                {
                  goto LABEL_478;
                }
              }

              if (v77)
              {
                v55[24] = v77;
              }
            }

            v78 = sub_1000BFBD8(6 * *(v55 + 55), v60, v61, v62, v63, v64, v65, v66);
            v55[1] = v78;
            v55[2] = v78;
            if (*(v55 + 55) >= 1)
            {
              v79 = 0;
              v80 = 0;
              do
              {
                if (!sub_1000BBDFC(v13, (v55[2] + v79)))
                {
                  break;
                }

                if (!sub_1000BBDFC(v13, (v55[2] + v79 + 2)))
                {
                  break;
                }

                if (!sub_1000BBDFC(v13, (v55[2] + v79 + 4)))
                {
                  break;
                }

                ++v80;
                v79 += 6;
              }

              while (v80 < *(v55 + 55));
            }

            v81 = *(v15 + 163);
            if (sub_1000BBD54(v13, (v81 + 40)) && sub_1000BBD54(v13, (v81 + 44)) && sub_1000BBD54(v13, (v81 + 48)) && sub_1000BBD54(v13, (v81 + 52)) && sub_1000BBD54(v13, (v81 + 56)))
            {
              v142[0] = 0;
              if (sub_1000BBF0C(v13, 1, (v81 + 32), v142))
              {
                v82 = *(v81 + 32);
                if (v82)
                {
                  if (v142[0] != *(v81 + 40))
                  {
                    goto LABEL_478;
                  }

                  *(v81 + 24) = v82;
                }

                if (*v21)
                {
                  v142[0] = 0;
                  if (!sub_1000BBD54(v13, v15 + 144))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD54(v13, v15 + 145))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD54(v13, v142))
                  {
                    goto LABEL_478;
                  }

                  v140 = v15[144];
                  v138 = *(*(v15 + 143) + 2 * v15[268]);
                  if (!sub_1000BBD04(v13, v15 + 164) || !sub_1000BBD04(v13, v15 + 165) || !sub_1000BBD04(v13, v15 + 166) || !sub_1000BBD54(v13, v15 + 178) || !sub_1000BBD04(v13, v15 + 179) || !sub_1000BBD04(v13, v15 + 180) || !sub_1000BBD04(v13, v15 + 181) || !sub_1000BBD54(v13, v15 + 182) || !sub_1000BBD54(v13, v15 + 183) || !sub_1000BBD54(v13, v15 + 184))
                  {
                    goto LABEL_478;
                  }

                  if (v15[181])
                  {
                    v83 = v142[0];
                    v141 = 0;
                    v84 = (v15 + 136);
                    if (!sub_1000BBF0C(v13, 4, v15 + 68, &v141))
                    {
                      goto LABEL_478;
                    }

                    v85 = v83 >= 0 ? v83 : v83 + 3;
                    v86 = *v84;
                    if (*v84)
                    {
                      if (v141 != v85 >> 2)
                      {
                        goto LABEL_478;
                      }
                    }

                    if (v86)
                    {
                      *(v15 + 67) = v86;
                    }

                    v141 = 0;
                    v87 = v15 + 140;
                    if (!sub_1000BBF0C(v13, 2, v15 + 70, &v141))
                    {
                      goto LABEL_478;
                    }

                    if (*v87)
                    {
                      if (v141 != v15[145])
                      {
                        goto LABEL_478;
                      }

                      *(v15 + 69) = *v87;
                    }
                  }

                  else
                  {
                    v141 = 0;
                    v88 = v15 + 132;
                    if (!sub_1000BBF0C(v13, 1, v15 + 66, &v141))
                    {
                      goto LABEL_478;
                    }

                    if (*v88)
                    {
                      if (v141 != v142[0])
                      {
                        goto LABEL_478;
                      }

                      *(v15 + 65) = *v88;
                    }
                  }

                  v141 = 0;
                  v89 = v15 + 148;
                  if (!sub_1000BBF0C(v13, 4, v15 + 74, &v141))
                  {
                    goto LABEL_478;
                  }

                  if (*v89)
                  {
                    if (v141 != v140 + 1)
                    {
                      goto LABEL_478;
                    }

                    *(v15 + 73) = *v89;
                  }

                  v141 = 0;
                  v90 = v15 + 152;
                  if (!sub_1000BBF0C(v13, 4, v15 + 76, &v141))
                  {
                    goto LABEL_478;
                  }

                  if (*v90)
                  {
                    if (v141 != v140 + 1)
                    {
                      goto LABEL_478;
                    }

                    *(v15 + 75) = *v90;
                  }

                  v141 = 0;
                  v91 = v15 + 156;
                  if (!sub_1000BBF0C(v13, 4, v15 + 78, &v141))
                  {
                    goto LABEL_478;
                  }

                  if (*v91)
                  {
                    if (v141 != v140 + 1)
                    {
                      goto LABEL_478;
                    }

                    *(v15 + 77) = *v91;
                  }

                  v141 = 0;
                  v92 = (v15 + 162);
                  if (!sub_1000BBF0C(v13, 1, v15 + 81, &v141))
                  {
                    goto LABEL_478;
                  }

                  v93 = *v92;
                  if (*v92)
                  {
                    if (v141 != v140 * v138)
                    {
                      goto LABEL_478;
                    }
                  }

                  if (v93)
                  {
                    *(v15 + 80) = v93;
                  }
                }

                if (v15[248])
                {
                  v94 = v15[268];
                  if (!sub_1000BBD54(v13, v15 + 62) || !sub_1000BBD54(v13, v15 + 63) || !sub_1000BBD54(v13, v15 + 64) || !sub_1000BBD04(v13, v15 + 65) || !sub_1000BBD04(v13, v15 + 66) || !sub_1000BBD04(v13, v15 + 67))
                  {
                    goto LABEL_478;
                  }

                  if (v15[67])
                  {
                    v94 = 2;
                  }

                  if (!sub_1000BBD54(v13, v15 + 72))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBDA4(v13, v15 + 292))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD04(v13, v15 + 112))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD04(v13, v15 + 113))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD04(v13, v15 + 70))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD04(v13, v15 + 114))
                  {
                    goto LABEL_478;
                  }

                  v142[0] = 0;
                  if (!sub_1000BBF0C(v13, 1, v15 + 63, v142))
                  {
                    goto LABEL_478;
                  }

                  v95 = *(v15 + 63);
                  if (v95)
                  {
                    if (v142[0] != v94)
                    {
                      goto LABEL_478;
                    }
                  }

                  if (v95)
                  {
                    *(v15 + 62) = v95;
                  }

                  if (qword_1001065A8 && *(qword_1001065A8 + 3864) && !*v21)
                  {
                    if (!sub_1000BBD54(v13, v15 + 144))
                    {
                      goto LABEL_478;
                    }

                    v96 = v15[144];
                    v142[0] = 0;
                    v97 = v15 + 152;
                    if (!sub_1000BBF0C(v13, 4, v15 + 76, v142))
                    {
                      goto LABEL_478;
                    }

                    if (*v97)
                    {
                      if (v142[0] != v96 + 1)
                      {
                        goto LABEL_478;
                      }

                      *(v15 + 75) = *v97;
                    }
                  }
                }

                if (v15[491])
                {
                  if (!sub_1000BBD54(v13, v15 + 218))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD54(v13, v15 + 222))
                  {
                    goto LABEL_478;
                  }

                  if (!sub_1000BBD54(v13, v15 + 230))
                  {
                    goto LABEL_478;
                  }

                  v142[0] = 0;
                  if (!sub_1000BBF0C(v13, 1, v15 + 105, v142) || *(v15 + 105) && v142[0] != *v134)
                  {
                    goto LABEL_478;
                  }

                  v142[0] = 0;
                  v98 = v15 + 214;
                  if (!sub_1000BBF0C(v13, 1, v15 + 107, v142))
                  {
                    goto LABEL_478;
                  }

                  if (*v98)
                  {
                    if (v142[0] != *v134)
                    {
                      goto LABEL_478;
                    }

                    *(v15 + 106) = *v98;
                  }

                  v142[0] = 0;
                  v99 = v15 + 226;
                  if (!sub_1000BBF0C(v13, 2, v15 + 113, v142))
                  {
                    goto LABEL_478;
                  }

                  if (*v99)
                  {
                    if (v142[0] != *v134)
                    {
                      goto LABEL_478;
                    }

                    *(v15 + 112) = *v99;
                  }
                }

                if (!v15[256] || sub_1000BBD54(v13, v15 + 188) && sub_1000BBD54(v13, v15 + 194))
                {
                  if (!v15[254])
                  {
                    goto LABEL_8;
                  }

                  v100 = sub_1000C0034(120);
                  if (v100)
                  {
                    v101 = v100;
                    *(v15 + 118) = v100;
                    *(v15 + 216) = sub_1000A1A48;
                    *(v15 + 119) = 0;
                    if (sub_1000BBD54(v13, v100) && sub_1000BBD54(v13, v101 + 4) && sub_1000BBD54(v13, v101 + 1))
                    {
                      v142[0] = 0;
                      if (sub_1000BBF0C(v13, 1, v101 + 3, v142))
                      {
                        v102 = v101[3];
                        if (v102)
                        {
                          if (v142[0] != *(v101 + 2) * *(v101 + 1))
                          {
                            goto LABEL_478;
                          }

                          v101[2] = v102;
                        }

                        v142[0] = 0;
                        if (sub_1000BBF0C(v13, 1, v101 + 5, v142))
                        {
                          v103 = v101[5];
                          if (!v103)
                          {
                            goto LABEL_8;
                          }

                          if (v142[0] == *v101 * *(v101 + 1))
                          {
                            v101[4] = v103;
                            goto LABEL_8;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_478:
            sub_1000BBBC4(v13);
LABEL_479:
            sub_1000055CC(v15);
            return 0;
          }

          if (!*v22)
          {
            v142[0] = 0;
            if (!sub_1000BBF0C(v13, 1, v15 + 3, v142))
            {
              goto LABEL_478;
            }

            v51 = *(v15 + 3);
            if (v51)
            {
              if (v142[0] != v40)
              {
                goto LABEL_478;
              }
            }

            if (v51)
            {
              *(v15 + 2) = v51;
            }

            goto LABEL_292;
          }

          v142[0] = 0;
          if (!sub_1000BBF0C(v13, 4, v15 + 19, v142))
          {
            goto LABEL_478;
          }

          v47 = v40 >= 0 ? v40 : v40 + 3;
          v48 = *(v15 + 19);
          if (v48)
          {
            if (v142[0] != v47 >> 2)
            {
              goto LABEL_478;
            }
          }

          if (v48)
          {
            *(v15 + 17) = v48;
          }

          if (v15[277])
          {
            v142[0] = 0;
            if (!sub_1000BBF0C(v13, 2, v15 + 9, v142))
            {
              goto LABEL_478;
            }

            v49 = *(v15 + 9);
            if (v49)
            {
              if (v142[0] != v137)
              {
                goto LABEL_478;
              }
            }

            if (v49)
            {
              *(v15 + 8) = v49;
            }

            if (*v139 && !*v114)
            {
              v142[0] = 0;
              if (!sub_1000BBF0C(v13, 2, v15 + 11, v142))
              {
                goto LABEL_478;
              }

              v50 = *(v15 + 11);
              if (v50)
              {
                if (v142[0] != v137)
                {
                  goto LABEL_478;
                }
              }

              if (!v50)
              {
LABEL_279:
                if (!*(v15 + 8))
                {
                  if (*(v15 + 10))
                  {
                    goto LABEL_292;
                  }

LABEL_291:
                  if (v137)
                  {
                    goto LABEL_478;
                  }

                  goto LABEL_292;
                }

                goto LABEL_288;
              }
            }

            else
            {
              v50 = 0;
            }

            *(v15 + 10) = v50;
            goto LABEL_279;
          }

          v142[0] = 0;
          if (!sub_1000BBF0C(v13, 4, v15 + 5, v142))
          {
            goto LABEL_478;
          }

          v52 = *(v15 + 5);
          if (v52)
          {
            if (v142[0] != v137)
            {
              goto LABEL_478;
            }
          }

          if (v52)
          {
            *(v15 + 4) = v52;
          }

          if (*v139 && !*v114)
          {
            v142[0] = 0;
            if (!sub_1000BBF0C(v13, 4, v15 + 7, v142))
            {
              goto LABEL_478;
            }

            v53 = *(v15 + 7);
            if (v53)
            {
              if (v142[0] != v137)
              {
                goto LABEL_478;
              }
            }

            if (!v53)
            {
LABEL_287:
              if (!*(v15 + 4))
              {
                if (*(v15 + 6))
                {
                  goto LABEL_292;
                }

                goto LABEL_291;
              }

LABEL_288:
              if (!v137)
              {
                goto LABEL_478;
              }

              goto LABEL_292;
            }
          }

          else
          {
            v53 = 0;
          }

          *(v15 + 6) = v53;
          goto LABEL_287;
        }

        if (!v35)
        {
          goto LABEL_478;
        }

LABEL_168:
        if (v115 == 5)
        {
          goto LABEL_173;
        }

        goto LABEL_172;
      }
    }

    else
    {
      if (v115 == 5)
      {
        v24 = 0;
      }

      v120 = v24;
    }

    v25 = v120;
    if (*v124)
    {
      v26 = v120;
    }

    else
    {
      v26 = 0;
    }

    v112 = v26;
    if (*v124)
    {
      v25 = 0;
    }

    v106 = v25;
    v120 = 0;
    goto LABEL_142;
  }

LABEL_8:
  sub_1000BBBC4(v13);
  if (!*v16)
  {
    sub_100006DE4(v15);
    if (!v17 && !sub_100006E58(v15))
    {
      goto LABEL_479;
    }

    v18 = *(v15 + 2);
    *(v15 + 18) = *(v15 + 17);
    v19 = *(v15 + 4);
    *(v15 + 12) = v18;
    *(v15 + 13) = v19;
    v20 = *(v15 + 6);
    *(v15 + 14) = *(v15 + 8);
    *(v15 + 15) = v20;
    *(v15 + 16) = *(v15 + 10);
    if (!sub_100005754(v15) || v15[256] && !sub_100019B58(v15))
    {
      goto LABEL_479;
    }
  }

  return v15;
}

uint64_t sub_10000DA0C(uint64_t a1)
{
  v2 = *(a1 + 1388);
  result = (*(a1 + 912))(a1, *(a1 + 840), *(a1 + 1544));
  if (qword_1001065A8 && *(qword_1001065A8 + 5296))
  {
    *(a1 + 1136) = result;
  }

  else
  {
    v4 = *(a1 + 1792);
    v5 = *(v4 + 2 * v2);
    if (v5 == 0x4000)
    {
      v6 = result;
      LOWORD(v5) = sub_100012668(a1, v2);
      result = v6;
      v4 = *(a1 + 1792);
    }

    if (result < v5)
    {
      LOWORD(v5) = result;
    }

    *(v4 + 2 * v2) = v5;
    v7 = *(a1 + 1824);
    if (v7 < *(a1 + 1828))
    {
      v8 = *(a1 + 1832);
      *(a1 + 1824) = v7 + 1;
      *(v8 + 2 * v7) = v2;
    }
  }

  return result;
}

uint64_t sub_10000DAD0(uint64_t a1, int a2)
{
  if (!*(a1 + 1964))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 1100);
  v5 = sub_1000BD7F4(*(a1 + 840), 1, v4, 0xFFFFFFFFLL);
  v6 = sub_1000BD7F4(*(a1 + 848), 1, v4, v5);
  v7 = sub_1000BD5C4(*(a1 + 888), v6);
  v8 = sub_1000BD5C4(*(a1 + 920), v7);
  if (!a2)
  {
    return v8;
  }

  v9 = sub_1000BD5C4(*(a1 + 872), v8);
  v10 = sub_1000BD7F4(*(a1 + 832), 2, v4, v9);
  v11 = sub_1000BD7F4(*(a1 + 880), 2, v4, v10);
  v12 = *(a1 + 864);
  v13 = *(a1 + 888) * v4;

  return sub_1000BD7F4(v12, 1, v13, v11);
}

uint64_t sub_10000DBBC(uint64_t result)
{
  if (!*(result + 1964))
  {
    return result;
  }

  v1 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v1 = *(qword_1001065A8 + 1864);
  }

  *(result + 920) = v1;
  v2 = *(result + 1100);
  v3 = *(result + 848);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      *(*(result + 880) + 2 * i) = *(v3 + i) - *(result + 1770);
      *(*(result + 832) + 2 * i) = *(*(result + 880) + 2 * i) << *(result + 920);
    }
  }

  if (*(result + 888) >= 1)
  {
    v5 = *(result + 1100);
    *(result + 872) = 0;
    if (v5 >= 1)
    {
      if (v5 <= 7)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(result + 864);
          *(v8 + v6) = *v3;
          if (v5 != 1)
          {
            *(v8 + v6 + 1) = *(v3 + 1);
            if (v5 != 2)
            {
              *(v8 + v6 + 2) = *(v3 + 2);
              if (v5 != 3)
              {
                *(v8 + v6 + 3) = *(v3 + 3);
                if (v5 != 4)
                {
                  *(v8 + v6 + 4) = *(v3 + 4);
                  if (v5 != 5)
                  {
                    v9 = v8 + v6;
                    *(v9 + 5) = *(v3 + 5);
                    if (v5 != 6)
                    {
                      *(v9 + 6) = *(v3 + 6);
                    }
                  }
                }
              }
            }
          }

          ++v7;
          v6 += v5;
        }

        while (v7 < *(result + 888));
        goto LABEL_46;
      }

      v10 = v5 & 0x7FFFFFF8;
      if (v5 < 0x20)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = *(result + 864);
          if ((v12 * v5 - v3 + v13) > 0x1F)
          {
            v15 = (v13 + v12 * v5);
            *v15 = *v3;
            if (v10 != 8)
            {
              v15[1] = *(v3 + 8);
              if (v10 != 16)
              {
                v15[2] = *(v3 + 16);
              }
            }

            v14 = v5 & 0x18;
            if (v10 == v5)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = 0;
          }

          v16 = v5 - v14;
          v17 = (v13 + v14 + v11);
          v18 = (v3 + v14);
          do
          {
            v19 = *v18++;
            *v17++ = v19;
            --v16;
          }

          while (v16);
LABEL_21:
          ++v12;
          v11 += v5;
          if (v12 >= *(result + 888))
          {
            goto LABEL_46;
          }
        }
      }

      v20 = 0;
      v21 = 0;
      v22 = 16;
      v23 = v5 & 0x7FFFFFE0;
      do
      {
        v24 = *(result + 864);
        if ((v21 * v5 - v3 + v24) >= 0x20)
        {
          v30 = (v24 + v22);
          v31 = v5 & 0x7FFFFFE0;
          v32 = (v3 + 16);
          do
          {
            v33 = *v32;
            *(v30 - 1) = *(v32 - 1);
            *v30 = v33;
            v32 += 2;
            v30 += 2;
            v31 -= 32;
          }

          while (v31);
          if ((v5 & 0x7FFFFFE0) == v5)
          {
            goto LABEL_32;
          }

          v25 = v5 & 0x7FFFFFE0;
          if ((v5 & 0x18) != 0)
          {
            v34 = (v24 + v23);
            v35 = v10 - (v5 & 0x7FFFFFE0);
            v36 = (v3 + (v5 & 0x7FFFFFE0));
            do
            {
              v37 = *v36++;
              *v34++ = v37;
              v35 -= 8;
            }

            while (v35);
            v25 = v5 & 0x7FFFFFF8;
            if (v10 == v5)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v25 = 0;
        }

        v26 = v5 - v25;
        v27 = (v24 + v25 + v20);
        v28 = (v3 + v25);
        do
        {
          v29 = *v28++;
          *v27++ = v29;
          --v26;
        }

        while (v26);
LABEL_32:
        ++v21;
        v22 += v5;
        v23 += v5;
        v20 += v5;
      }

      while (v21 < *(result + 888));
    }
  }

LABEL_46:
  if (qword_1001065A8 && *(qword_1001065A8 + 1064))
  {
    v38 = *(result + 1752);
    if (v38)
    {
      return v38();
    }
  }

  return result;
}

uint64_t sub_10000DE98(uint64_t result, int a2)
{
  if (*(result + 1964))
  {
    v2 = *(result + 1100);
    v3 = 848;
    if (!a2)
    {
      v3 = 840;
    }

    v4 = *(result + v3);
    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(result + 880) + 2 * i) = *(v4 + i) - *(result + 1770);
        *(*(result + 832) + 2 * i) = *(*(result + 880) + 2 * i) << *(result + 920);
      }
    }

    if (*(result + 888) >= 1)
    {
      v6 = *(result + 1100);
      *(result + 872) = 0;
      if (v6 >= 1)
      {
        if (v6 <= 7)
        {
          v7 = 0;
          v8 = 0;
          do
          {
            v9 = *(result + 864);
            *(v9 + v7) = *v4;
            if (v6 != 1)
            {
              *(v9 + v7 + 1) = *(v4 + 1);
              if (v6 != 2)
              {
                *(v9 + v7 + 2) = *(v4 + 2);
                if (v6 != 3)
                {
                  *(v9 + v7 + 3) = *(v4 + 3);
                  if (v6 != 4)
                  {
                    *(v9 + v7 + 4) = *(v4 + 4);
                    if (v6 != 5)
                    {
                      v10 = v9 + v7;
                      *(v10 + 5) = *(v4 + 5);
                      if (v6 != 6)
                      {
                        *(v10 + 6) = *(v4 + 6);
                      }
                    }
                  }
                }
              }
            }

            ++v8;
            v7 += v6;
          }

          while (v8 < *(result + 888));
          return result;
        }

        v11 = v6 & 0x7FFFFFF8;
        if (v6 < 0x20)
        {
          v12 = 0;
          v13 = 0;
          while (1)
          {
            v14 = *(result + 864);
            if ((v13 * v6 - v4 + v14) > 0x1F)
            {
              v16 = (v14 + v13 * v6);
              *v16 = *v4;
              if (v11 != 8)
              {
                v16[1] = *(v4 + 8);
                if (v11 != 16)
                {
                  v16[2] = *(v4 + 16);
                }
              }

              v15 = v6 & 0x18;
              if (v11 == v6)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v15 = 0;
            }

            v17 = v6 - v15;
            v18 = (v14 + v15 + v12);
            v19 = (v4 + v15);
            do
            {
              v20 = *v19++;
              *v18++ = v20;
              --v17;
            }

            while (v17);
LABEL_21:
            ++v13;
            v12 += v6;
            if (v13 >= *(result + 888))
            {
              return result;
            }
          }
        }

        v21 = 0;
        v22 = 0;
        v23 = 16;
        v24 = v6 & 0x7FFFFFE0;
        do
        {
          v25 = *(result + 864);
          if ((v22 * v6 - v4 + v25) >= 0x20)
          {
            v31 = (v25 + v23);
            v32 = v6 & 0x7FFFFFE0;
            v33 = (v4 + 16);
            do
            {
              v34 = *v33;
              *(v31 - 1) = *(v33 - 1);
              *v31 = v34;
              v33 += 2;
              v31 += 2;
              v32 -= 32;
            }

            while (v32);
            if ((v6 & 0x7FFFFFE0) == v6)
            {
              goto LABEL_32;
            }

            v26 = v6 & 0x7FFFFFE0;
            if ((v6 & 0x18) != 0)
            {
              v35 = (v25 + v24);
              v36 = v11 - (v6 & 0x7FFFFFE0);
              v37 = (v4 + (v6 & 0x7FFFFFE0));
              do
              {
                v38 = *v37++;
                *v35++ = v38;
                v36 -= 8;
              }

              while (v36);
              v26 = v6 & 0x7FFFFFF8;
              if (v11 == v6)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            v26 = 0;
          }

          v27 = v6 - v26;
          v28 = (v25 + v26 + v21);
          v29 = (v4 + v26);
          do
          {
            v30 = *v29++;
            *v28++ = v30;
            --v27;
          }

          while (v27);
LABEL_32:
          ++v22;
          v23 += v6;
          v24 += v6;
          v21 += v6;
        }

        while (v22 < *(result + 888));
      }
    }
  }

  return result;
}

uint64_t sub_10000E14C(uint64_t result, uint64_t a2, int a3)
{
  if (!*(result + 1964))
  {
    return result;
  }

  v3 = *(result + 1100);
  if (*(result + 888))
  {
    v4 = *(result + 864) + *(result + 872) * v3;
    v5 = v4;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v4 = a2;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      *(*(result + 832) + 2 * i) += *(v4 + i) - *(result + 1770) - *(*(result + 880) + 2 * i);
      *(*(result + 880) + 2 * i) = *(*(result + 832) + 2 * i) >> *(result + 920);
    }

    v7 = *(result + 1100);
    if (v7 >= 1)
    {
      for (j = 0; j != v7; ++j)
      {
        *(*(result + 840) + j) = *(result + 1770) + *(*(result + 880) + 2 * j);
      }
    }
  }

LABEL_12:
  v9 = *(result + 888);
  if (v9 >= 1)
  {
    if (v3 < 1)
    {
LABEL_28:
      v24 = *(result + 872);
      if (v24 + 1 < v9)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = 0;
      }

      *(result + 872) = v25;
      goto LABEL_32;
    }

    v10 = 0;
    if (v3 >= 8 && (v5 - a2) >= 0x20)
    {
      if (v3 < 0x20)
      {
        v10 = 0;
        goto LABEL_22;
      }

      v10 = v3 & 0x7FFFFFE0;
      v11 = (a2 + 16);
      v12 = (v5 + 16);
      v13 = v10;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 32;
      }

      while (v13);
      if (v10 == v3)
      {
        goto LABEL_27;
      }

      if ((v3 & 0x18) != 0)
      {
LABEL_22:
        v15 = v10;
        v10 = v3 & 0x7FFFFFF8;
        v16 = (a2 + v15);
        v17 = (v5 + v15);
        v18 = v15 - v10;
        do
        {
          v19 = *v16++;
          *v17++ = v19;
          v18 += 8;
        }

        while (v18);
        if (v10 == v3)
        {
          goto LABEL_27;
        }
      }
    }

    v20 = v3 - v10;
    v21 = (v5 + v10);
    v22 = (a2 + v10);
    do
    {
      v23 = *v22++;
      *v21++ = v23;
      --v20;
    }

    while (v20);
LABEL_27:
    v9 = *(result + 888);
    goto LABEL_28;
  }

LABEL_32:
  if (qword_1001065A8 && *(qword_1001065A8 + 1064))
  {
    v26 = *(result + 1752);
    if (v26)
    {
      return v26();
    }
  }

  return result;
}

uint64_t sub_10000E310(uint64_t a1)
{
  v2 = *(a1 + 1100);
  sub_1000BFEC4(*(a1 + 832));
  sub_1000BFEC4(*(a1 + 840));
  sub_1000BFEC4(*(a1 + 880));
  v3 = sub_1000C0034(2 * v2);
  *(a1 + 832) = v3;
  if (!v3)
  {
    return 1;
  }

  v4 = sub_1000C0034(v2);
  *(a1 + 840) = v4;
  if (!v4)
  {
    return 1;
  }

  v5 = sub_1000C0034(2 * v2);
  *(a1 + 880) = v5;
  if (!v5)
  {
    return 1;
  }

  sub_100002968(a1, *(a1 + 1296));
  *(a1 + 912) = *(a1 + 1616);
  if (v2 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 848);
    v8 = *(a1 + 840);
    if (v2 < 8 || (v8 - v7) < 0x20)
    {
      goto LABEL_16;
    }

    if (v2 >= 0x20)
    {
      v6 = v2 & 0x7FFFFFE0;
      v9 = (v7 + 16);
      v10 = (v8 + 16);
      v11 = v6;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 32;
      }

      while (v11);
      if (v6 == v2)
      {
        goto LABEL_18;
      }

      if ((v2 & 0x18) == 0)
      {
LABEL_16:
        v18 = v2 - v6;
        v19 = (v8 + v6);
        v20 = (v7 + v6);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v18;
        }

        while (v18);
        goto LABEL_18;
      }
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;
    v6 = v2 & 0x7FFFFFF8;
    v14 = (v7 + v13);
    v15 = (v8 + v13);
    v16 = v13 - v6;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      v16 += 8;
    }

    while (v16);
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  if (!qword_1001065A8 || *(qword_1001065A8 + 216) < 1)
  {
    *(a1 + 888) = 0;
    *(a1 + 864) = 0;
    return 1;
  }

  sub_1000BFEC4(*(a1 + 864));
  v22 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v22 = *(qword_1001065A8 + 216);
  }

  *(a1 + 888) = v22;
  v23 = sub_1000C0034(v22 * v2);
  *(a1 + 864) = v23;
  if (v23)
  {
    v24 = *(a1 + 848);
    v25 = *(a1 + 1100);
    *(a1 + 872) = 0;
    if (*(a1 + 888) >= 1 && v25 >= 1)
    {
      if (v25 < 8)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = *(a1 + 864);
          *(v28 + v26) = *v24;
          if (v25 != 1)
          {
            *(v28 + v26 + 1) = v24[1];
            if (v25 != 2)
            {
              *(v28 + v26 + 2) = v24[2];
              if (v25 != 3)
              {
                *(v28 + v26 + 3) = v24[3];
                if (v25 != 4)
                {
                  *(v28 + v26 + 4) = v24[4];
                  if (v25 != 5)
                  {
                    v29 = v28 + v26;
                    *(v29 + 5) = v24[5];
                    if (v25 != 6)
                    {
                      *(v29 + 6) = v24[6];
                    }
                  }
                }
              }
            }
          }

          ++v27;
          v26 += v25;
        }

        while (v27 < *(a1 + 888));
        return 1;
      }

      v31 = 0;
      v32 = 0;
      v33 = 16;
      do
      {
        v34 = *(a1 + 864);
        if ((v32 * v25 - v24 + v34) >= 0x20)
        {
          if (v25 < 0x20)
          {
            v36 = 0;
LABEL_47:
            v41 = &v24[v36];
            v42 = (v34 + v36 + v31);
            v43 = v36 - (v25 & 0x7FFFFFF8);
            do
            {
              v44 = *v41++;
              *v42++ = v44;
              v43 += 8;
            }

            while (v43);
            v35 = v25 & 0x7FFFFFF8;
            if (v35 == v25)
            {
              goto LABEL_38;
            }

            goto LABEL_50;
          }

          v37 = (v34 + v33);
          v38 = v25 & 0x7FFFFFE0;
          v39 = (v24 + 16);
          do
          {
            v40 = *v39;
            *(v37 - 1) = *(v39 - 1);
            *v37 = v40;
            v39 += 2;
            v37 += 2;
            v38 -= 32;
          }

          while (v38);
          if ((v25 & 0x7FFFFFE0) == v25)
          {
            goto LABEL_38;
          }

          v36 = v25 & 0x7FFFFFE0;
          v35 = v36;
          if ((v25 & 0x18) != 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v35 = 0;
        }

LABEL_50:
        v45 = v25 - v35;
        v46 = v34 + v35;
        v47 = &v24[v35];
        do
        {
          v48 = *v47++;
          *(v46 + v31) = v48;
          ++v46;
          --v45;
        }

        while (v45);
LABEL_38:
        ++v32;
        v33 += v25;
        v31 += v25;
      }

      while (v32 < *(a1 + 888));
    }
  }

  return 1;
}

double sub_10000E660(uint64_t a1)
{
  if (*(a1 + 1964))
  {
    sub_1000BFEC4(*(a1 + 832));
    sub_1000BFEC4(*(a1 + 840));
    sub_1000BFEC4(*(a1 + 880));
    sub_1000BFEC4(*(a1 + 856));
    sub_1000BFEC4(*(a1 + 904));
    sub_1000BFEC4(*(a1 + 864));
    *(a1 + 880) = 0;
    *(a1 + 904) = 0;
    result = 0.0;
    *(a1 + 832) = 0u;
    *(a1 + 856) = 0u;
  }

  return result;
}

uint64_t sub_10000E6D8(uint64_t a1)
{
  if (*(a1 + 1964))
  {
    return (2 * *(a1 + 1100));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000E6F4(uint64_t a1, char *__dst)
{
  result = 0;
  if (__dst)
  {
    if (*(a1 + 1964))
    {
      v4 = *(a1 + 1100);
      v5 = a1;
      memcpy(__dst, *(a1 + 840), v4);
      memcpy(&__dst[v4], *(v5 + 848), v4);
      return 1;
    }
  }

  return result;
}

uint64_t sub_10000E764(uint64_t a1, int a2, _WORD *a3)
{
  if (*(a1 + 1600) == a2)
  {
    if (*(a1 + 1612))
    {
      v3 = *(a1 + 1388);
      if (*(*(a1 + 1792) + 2 * v3) > *(a1 + 1608))
      {
        LOWORD(v3) = *(a1 + 1610);
      }

LABEL_5:
      result = 1;
      *a3 = v3;
      return result;
    }

    v5 = *(a1 + 1076);
    if (v5 >= 1)
    {
      v6 = 0;
      LOWORD(v3) = -1;
      v7 = 0x4000;
      do
      {
        if (*(*(a1 + 1792) + 2 * v6) < v7 && v6 != *(a1 + 1960))
        {
          LOWORD(v3) = v6;
          v7 = *(*(a1 + 1792) + 2 * v6);
        }

        ++v6;
      }

      while (v5 > v6);
      goto LABEL_5;
    }

    result = 1;
    *a3 = -1;
  }

  else
  {
    result = 0;
    *a3 = -1;
  }

  return result;
}

uint64_t sub_10000E814(uint64_t a1)
{
  if (*(a1 + 1004) && (*(a1 + 656) ? (v2 = qword_1001065A8 == 0) : (v2 = 1), !v2 && *(qword_1001065A8 + 708)))
  {

    return sub_10001A7AC(a1);
  }

  else
  {
    v4 = *(a1 + 1072);
    if (v4 < 1)
    {
      return 0x4000;
    }

    else
    {
      v5 = 0;
      v6 = 0x4000;
      do
      {
        v7 = *(*(a1 + 1792) + 2 * v5);
        if (v7 == 0x4000)
        {
          LOWORD(v7) = sub_100012668(a1, v5);
          v4 = *(a1 + 1072);
        }

        if (v7 < v6)
        {
          v6 = v7;
        }

        ++v5;
      }

      while (v4 > v5);
    }

    return v6;
  }
}

uint64_t sub_10000E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1974);
  if (v8 >= 0x4000)
  {
    v10 = *(a1 + 1388);
    if (*(*(a1 + 1792) + 2 * v10) == 0x4000)
    {
      sub_100012668(a1, v10);
    }

    if (!qword_1001065A8)
    {
      goto LABEL_87;
    }

    if (*(qword_1001065A8 + 344))
    {
      if (!*(qword_1001065A8 + 348))
      {
        if (*(a1 + 1004) && *(a1 + 656) && *(qword_1001065A8 + 708))
        {
          sub_10001A7AC(a1);
        }

        else
        {
          v23 = *(a1 + 1072);
          if (v23 >= 1)
          {
            for (i = 0; i < v23; ++i)
            {
              if (*(*(a1 + 1792) + 2 * i) == 0x4000)
              {
                sub_100012668(a1, i);
                v23 = *(a1 + 1072);
              }
            }
          }
        }
      }

      v11 = *(a1 + 1076);
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      if (v11 < 1)
      {
        goto LABEL_55;
      }

      v15 = *(a1 + 1792);
      if (v11 < 4)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        goto LABEL_49;
      }

      if (v11 >= 0x10)
      {
        v28 = 0uLL;
        v16 = v11 & 0x7FFFFFF0;
        v29.i64[0] = 0x4000400040004000;
        v29.i64[1] = 0x4000400040004000;
        v30 = v15 + 1;
        v31.i64[0] = 0x100000001;
        v31.i64[1] = 0x100000001;
        v32 = v16;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        do
        {
          v40 = v30[-1];
          v41 = vcgtq_s16(v29, v40);
          v42 = vcgtq_s16(v29, *v30);
          v37 = vaddq_s32(v37, vandq_s8(vmovl_high_u16(v41), v31));
          v36 = vaddq_s32(v36, vandq_s8(vmovl_u16(*v41.i8), v31));
          v39 = vaddq_s32(v39, vandq_s8(vmovl_high_u16(v42), v31));
          v38 = vaddq_s32(v38, vandq_s8(vmovl_u16(*v42.i8), v31));
          v43 = vandq_s8(v40, v41);
          v44 = vandq_s8(*v30, v42);
          v33 = vaddw_high_s16(v33, v43);
          v28 = vaddw_s16(v28, *v43.i8);
          v35 = vaddw_high_s16(v35, v44);
          v34 = vaddw_s16(v34, *v44.i8);
          v30 += 2;
          v32 -= 16;
        }

        while (v32);
        v17 = vaddvq_s32(vaddq_s32(vaddq_s32(v34, v28), vaddq_s32(v35, v33)));
        v18 = vaddvq_s32(vaddq_s32(vaddq_s32(v38, v36), vaddq_s32(v39, v37)));
        if (v16 == v11)
        {
          goto LABEL_54;
        }

        if ((v11 & 0xC) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v16 = 0;
      }

      v45 = v16;
      v16 = v11 & 0x7FFFFFFC;
      v46 = v17;
      v47 = v18;
      v48 = (v15 + 2 * v45);
      v49 = v45 - v16;
      v50.i64[0] = 0x100000001;
      v50.i64[1] = 0x100000001;
      do
      {
        v51 = *v48++;
        v52 = vcgt_s16(0x4000400040004000, v51);
        v47 = vaddq_s32(v47, vandq_s8(vmovl_u16(v52), v50));
        v46 = vaddw_s16(v46, vand_s8(v51, v52));
        v49 += 4;
      }

      while (v49);
      v17 = vaddvq_s32(v46);
      v18 = vaddvq_s32(v47);
      if (v16 != v11)
      {
LABEL_49:
        v53 = v11 - v16;
        v54 = &v15->i16[v16];
        do
        {
          v56 = *v54++;
          v55 = v56;
          if (v56 >= 0x4000)
          {
            v55 = 0;
          }

          else
          {
            ++v18;
          }

          v17 += v55;
          --v53;
        }

        while (v53);
      }

LABEL_54:
      v14 = v17;
      v13 = v18;
LABEL_55:
      if (qword_1001065A8)
      {
        v12 = *(qword_1001065A8 + 328);
      }

      v22 = (v14 * v12 / v13);
LABEL_83:
      v70 = *(a1 + 1972) + v22;
      v8 = v70 & ~(v70 >> 31);
      *(a1 + 1974) = v8;
      return v8;
    }

    if (!*(qword_1001065A8 + 712))
    {
LABEL_87:
      if (*(a1 + 1856))
      {
        v21 = *(a1 + 1960);
        v22 = *(*(a1 + 1792) + 2 * v21);
        if (v22 == 0x4000)
        {
          LOWORD(v22) = sub_100012668(a1, v21);
        }
      }

      else
      {
        LOWORD(v22) = 0x3FFF;
      }

      goto LABEL_83;
    }

    v19 = sub_1000BFBD8(0x194uLL, v10, a3, a4, a5, a6, a7, a8);
    if (qword_1001065A8 && *(qword_1001065A8 + 348))
    {
      if (*(a1 + 1612))
      {
        v20 = *(a1 + 1608);
        goto LABEL_66;
      }

      v57 = *(a1 + 1076);
      if (v57 >= 1)
      {
        v58 = 0;
        v20 = 0x4000;
        do
        {
          if (*(*(a1 + 1792) + 2 * v58) < v20 && *(a1 + 1960) != v58 && *(a1 + 1388) != v58)
          {
            v20 = *(*(a1 + 1792) + 2 * v58);
          }

          ++v58;
        }

        while (v57 > v58);
        goto LABEL_66;
      }
    }

    else
    {
      if (*(a1 + 1004) && qword_1001065A8 && *(a1 + 656) && *(qword_1001065A8 + 708))
      {
        v20 = sub_10001A7AC(a1);
        goto LABEL_66;
      }

      v25 = *(a1 + 1072);
      if (v25 >= 1)
      {
        v26 = 0;
        v20 = 0x4000;
        do
        {
          v27 = *(*(a1 + 1792) + 2 * v26);
          if (v27 == 0x4000)
          {
            LOWORD(v27) = sub_100012668(a1, v26);
            v25 = *(a1 + 1072);
          }

          if (v27 < v20)
          {
            v20 = v27;
          }

          ++v26;
        }

        while (v25 > v26);
LABEL_66:
        v59 = *(a1 + 1076);
        if (v59 <= 1)
        {
          v64 = 1;
          v65 = qword_1001065A8;
          if (!qword_1001065A8)
          {
LABEL_76:
            LODWORD(v66) = 0;
LABEL_77:
            v67 = 0;
            v68 = 0;
            v69 = v66 * v64 / 100;
            while (1)
            {
              v68 += v19[v67];
              if (v68 >= v69)
              {
                break;
              }

              if (++v67 == 100)
              {
                goto LABEL_82;
              }
            }

            *(a1 + 1974) = v20 + v67;
LABEL_82:
            sub_1000BFEC4(v19);
            LOWORD(v22) = *(a1 + 1974);
            goto LABEL_83;
          }
        }

        else
        {
          v60 = 1;
          v61 = 1;
          do
          {
            v62 = *(*(a1 + 1792) + 2 * v60);
            if (v62 < 0x4000)
            {
              v63 = v62 - v20;
              if (v63 >= 100)
              {
                v63 = 100;
              }

              ++v19[v63];
              ++v61;
              v59 = *(a1 + 1076);
            }

            ++v60;
          }

          while (v60 < v59);
          v64 = v61;
          v65 = qword_1001065A8;
          if (!qword_1001065A8)
          {
            goto LABEL_76;
          }
        }

        v66 = *(v65 + 336);
        goto LABEL_77;
      }
    }

    v20 = 0x4000;
    goto LABEL_66;
  }

  return v8;
}

uint64_t sub_10000EDDC(uint64_t a1)
{
  if (*(a1 + 1856))
  {
    v1 = *(a1 + 1960);
    v2 = *(*(a1 + 1792) + 2 * v1);
    if (v2 == 0x4000)
    {
      return sub_100012668(a1, v1);
    }
  }

  else
  {
    LOWORD(v2) = 0x3FFF;
  }

  return v2;
}

uint64_t sub_10000EE08(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1388) == a2)
  {
    return *(*(a1 + 1792) + 2 * a2);
  }

  else
  {
    return (*(a1 + 1704))();
  }
}

uint64_t sub_10000EE30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072) <= a2)
  {
    v5 = 1;
  }

  else if (*(a1 + 1176))
  {
    v4 = (*(a1 + 1160) + 4 * a2);
    v5 = v4[1] - *v4;
    if (v5 < 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = (*(a1 + 1144) + 2 * a2);
    v5 = v11[1] - *v11;
    if (v5 < 1)
    {
LABEL_14:
      v7 = 0x4000;
      goto LABEL_10;
    }
  }

  v6 = 0;
  v7 = 0x4000;
  do
  {
    v8 = (*(a1 + 1720))(a1, a2, v6);
    if (v8 < v7)
    {
      v7 = v8;
    }

    v6 = (v6 + 1);
  }

  while (v5 != v6);
LABEL_10:
  v9 = *(a1 + 1136);
  if (v7 >= v9)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_10000EF04(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 1544);
  v7 = sub_1000011AC(a1, a2, a3);
  v8 = sub_100001FC8(a1, a2, a3);
  v9 = *sub_1000021CC(a1, a2, a3);
  v12 = *(a1 + 1104);
  if (v12 >= 1)
  {
    if (v12 < 4)
    {
      v13 = *(a1 + 1104);
      goto LABEL_15;
    }

    if (v12 >= 0x20)
    {
      v14 = v12 & 0x7FFFFFE0;
      v15 = 0uLL;
      v16 = v9;
      v17 = (v7 + v12 - 16);
      v18 = (v8 + 2 * v12 - 32);
      v19 = (v6 + v12 - 16);
      v20 = v14;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = vrev64q_s8(*v17);
        v28 = vextq_s8(v27, v27, 8uLL);
        v29 = vrev64q_s8(v17[-1]);
        v30 = vextq_s8(v29, v29, 8uLL);
        v31 = vrev64q_s8(*v19);
        v32 = vextq_s8(v31, v31, 8uLL);
        v33 = vrev64q_s8(v19[-1]);
        v34 = vextq_s8(v33, v33, 8uLL);
        v35 = vsubl_u8(*v28.i8, *v32.i8);
        v36 = vsubl_high_u8(v28, v32);
        v37 = vsubl_u8(*v30.i8, *v34.i8);
        v38 = vsubl_high_u8(v30, v34);
        v39 = vrev64q_s16(v18[1]);
        v40 = vextq_s8(v39, v39, 8uLL);
        v41 = vrev64q_s16(*v18);
        v42 = vextq_s8(v41, v41, 8uLL);
        v43 = vrev64q_s16(v18[-1]);
        v44 = vextq_s8(v43, v43, 8uLL);
        v45 = vrev64q_s16(v18[-2]);
        v46 = vextq_s8(v45, v45, 8uLL);
        v22 = vmlaq_s32(v22, vmull_high_s16(v36, v36), vmovl_high_u16(v42));
        v21 = vmlaq_s32(v21, vmull_s16(*v36.i8, *v36.i8), vmovl_u16(*v42.i8));
        v15 = vmlaq_s32(v15, vmull_high_s16(v35, v35), vmovl_high_u16(v40));
        v16 = vmlaq_s32(v16, vmull_s16(*v35.i8, *v35.i8), vmovl_u16(*v40.i8));
        v26 = vmlaq_s32(v26, vmull_high_s16(v38, v38), vmovl_high_u16(v46));
        v25 = vmlaq_s32(v25, vmull_s16(*v38.i8, *v38.i8), vmovl_u16(*v46.i8));
        v24 = vmlaq_s32(v24, vmull_high_s16(v37, v37), vmovl_high_u16(v44));
        v23 = vmlaq_s32(v23, vmull_s16(*v37.i8, *v37.i8), vmovl_u16(*v44.i8));
        v17 -= 2;
        v18 -= 4;
        v19 -= 2;
        v20 -= 32;
      }

      while (v20);
      v11 = vaddq_s32(v25, v21);
      v10 = vaddq_s32(vaddq_s32(v24, v15), vaddq_s32(v26, v22));
      v9 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v16), v11), v10));
      if (v14 == v12)
      {
        return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }

      if ((v12 & 0x1C) == 0)
      {
        v13 = v12 & 0x1F;
LABEL_15:
        v57 = v13 - 1;
        do
        {
          v58 = *(v7 + v57) - *(v6 + v57);
          v9 += v58 * v58 * *(v8 + 2 * v57);
          v59 = v57-- + 1;
        }

        while (v59 > 1);
        return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = v12 & 3;
    v47 = v9;
    v48 = (v8 - 2 * v14 + 2 * v12 - 8);
    v49 = v12 - v14 - 4;
    v50 = (v6 + v49);
    v51 = (v7 + v49);
    v52 = v14 - (v12 & 0x7FFFFFFC);
    do
    {
      v53 = *v51--;
      v10.i32[0] = v53;
      v54 = *v50--;
      v11.i32[0] = v54;
      v55 = vsubl_u16(vrev64_s16(*&vmovl_u8(*v10.i8)), vrev64_s16(*&vmovl_u8(*v11.i8)));
      v10 = vmulq_s32(v55, v55);
      v56 = *v48--;
      v11 = vmovl_u16(vrev64_s16(v56));
      v47 = vmlaq_s32(v47, v10, v11);
      v52 += 4;
    }

    while (v52);
    v9 = vaddvq_s32(v47);
    if ((v12 & 0x7FFFFFFC) != v12)
    {
      goto LABEL_15;
    }
  }

  return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_10000F1BC(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 1544);
  v7 = sub_1000011AC(a1, a2, a3);
  v8 = sub_100001F48(a1, a2, a3);
  v9 = *sub_1000021CC(a1, a2, a3);
  v11 = *(a1 + 1104);
  if (v11 >= 1)
  {
    if (v11 < 8)
    {
      v12 = *(a1 + 1104);
      goto LABEL_15;
    }

    if (v11 >= 0x20)
    {
      v13 = v11 & 0x7FFFFFE0;
      v14 = 0uLL;
      v15 = v9;
      v16 = (v7 + v11 - 16);
      v17 = (v8 + v11 - 16);
      v18 = (v6 + v11 - 16);
      v19 = v13;
      v10 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = vrev64q_s8(*v16);
        v26 = vextq_s8(v25, v25, 8uLL);
        v27 = vrev64q_s8(v16[-1]);
        v28 = vextq_s8(v27, v27, 8uLL);
        v29 = vrev64q_s8(*v18);
        v30 = vextq_s8(v29, v29, 8uLL);
        v31 = vrev64q_s8(v18[-1]);
        v32 = vextq_s8(v31, v31, 8uLL);
        v33 = vsubl_u8(*v26.i8, *v30.i8);
        v34 = vsubl_high_u8(v26, v30);
        v35 = vsubl_u8(*v28.i8, *v32.i8);
        v36 = vsubl_high_u8(v28, v32);
        v37 = v17[-1];
        v20 = vmlaq_s32(v20, vmull_high_s16(v34, v34), vqtbl1q_s8(*v17, xmmword_1000F0C90));
        v10 = vmlaq_s32(v10, vmull_s16(*v34.i8, *v34.i8), vqtbl1q_s8(*v17, xmmword_1000F0CA0));
        v14 = vmlaq_s32(v14, vmull_high_s16(v33, v33), vqtbl1q_s8(*v17, xmmword_1000F0CB0));
        v15 = vmlaq_s32(v15, vmull_s16(*v33.i8, *v33.i8), vqtbl1q_s8(*v17, xmmword_1000F0CC0));
        v24 = vmlaq_s32(v24, vmull_high_s16(v36, v36), vqtbl1q_s8(v37, xmmword_1000F0C90));
        v23 = vmlaq_s32(v23, vmull_s16(*v36.i8, *v36.i8), vqtbl1q_s8(v37, xmmword_1000F0CA0));
        v22 = vmlaq_s32(v22, vmull_high_s16(v35, v35), vqtbl1q_s8(v37, xmmword_1000F0CB0));
        v21 = vmlaq_s32(v21, vmull_s16(*v35.i8, *v35.i8), vqtbl1q_s8(v37, xmmword_1000F0CC0));
        v16 -= 2;
        v17 -= 2;
        v18 -= 2;
        v19 -= 32;
      }

      while (v19);
      v9 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v21, v15), vaddq_s32(v23, v10)), vaddq_s32(vaddq_s32(v22, v14), vaddq_s32(v24, v20))));
      if (v13 == v11)
      {
        return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }

      if ((v11 & 0x18) == 0)
      {
        v12 = v11 & 0x1F;
LABEL_15:
        v51 = v12 - 1;
        do
        {
          v52 = *(v7 + v51) - *(v6 + v51);
          v9 += v52 * v52 * *(v8 + v51);
          v53 = v51-- + 1;
        }

        while (v53 > 1);
        return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }

    else
    {
      v13 = 0;
    }

    v12 = v11 & 7;
    v38 = 0uLL;
    v39 = v9;
    v40 = v11 - v13 - 8;
    v41 = (v8 + v40);
    v42 = (v6 + v40);
    v43 = (v7 + v40);
    v44 = v13 - (v11 & 0x7FFFFFF8);
    do
    {
      v45 = *v43--;
      v46 = vrev64_s8(v45);
      v47 = *v42--;
      v48 = vsubl_u8(v46, vrev64_s8(v47));
      v49 = *v41--;
      *v10.i8 = vrev64_s8(v49);
      v50 = vqtbl1q_s8(v10, xmmword_1000F0C50);
      v10 = vqtbl1q_s8(v10, xmmword_1000F0C60);
      v38 = vmlaq_s32(v38, vmull_high_s16(v48, v48), v50);
      v39 = vmlaq_s32(v39, vmull_s16(*v48.i8, *v48.i8), v10);
      v44 += 8;
    }

    while (v44);
    v9 = vaddvq_s32(vaddq_s32(v39, v38));
    if ((v11 & 0x7FFFFFF8) != v11)
    {
      goto LABEL_15;
    }
  }

  return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_10000F490(uint64_t a1, unsigned int a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v5 = *(a1 + 1296);
  v6 = *(a1 + 1072);
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if (v8 < 0 != v7)
  {
    if (*(a1 + 1176))
    {
      v9 = (*(a1 + 1160) + 4 * a2);
      v10 = *v9;
      v11 = v9[1];
    }

    else
    {
      v14 = (*(a1 + 1144) + 2 * a2);
      v10 = *v14;
      v11 = v14[1];
    }

    v13 = v11 - v10;
    if (*(a1 + 2012))
    {
      v10 = a2;
    }

    v15 = *(a1 + 1120) * v10;
    if (*(a1 + 1080) <= a2)
    {
      v12 = *(a1 + 96) + v15;
      if (v5 == 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = *(a1 + 16) + v15;
      if (v5 == 3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v12 = *(a1 + 784) + *(a1 + 1120) * v8;
    v13 = 1;
    if (v5 == 3)
    {
      goto LABEL_19;
    }
  }

  if (v5 == 4)
  {
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        a2 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        a2 = *(*(a1 + 1144) + 2 * a2);
      }
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_19:
  v16 = v13 - 1;
  if (v13 < 1)
  {
    v30 = 0x40000000;
  }

  else
  {
    v17 = *(a1 + 1104);
    v18 = v5 == 4;
    v19 = v5 == 4;
    v20 = (*(a1 + 1240) + 4 * a2);
    v21 = *(a1 + 1100);
    v22 = 4 * v19;
    if (v18)
    {
      v23 = *(a1 + 1100);
    }

    else
    {
      v23 = 0;
    }

    if (v17 <= 0)
    {
      v30 = 0x40000000;
      do
      {
        if (*v20 < v30)
        {
          v30 = *v20;
        }

        v20 = (v20 + v22);
        --v13;
      }

      while (v13);
    }

    else
    {
      v24 = *(a1 + 1544);
      v25 = *(a1 + 1208);
      v26 = *(a1 + 1124) * a2;
      v27 = v25 + 2 * v26;
      if (v17 > 3)
      {
        v37 = v26;
        v38 = v17 & 0x7FFFFFFC;
        v39 = v17 & 3;
        if (v17 >= 0x20)
        {
          v65 = (v12 + v17 - 16);
          v66 = 2 * v17 + 2 * v37 + v25 - 32;
          v67 = 2 * v23;
          v30 = 0x40000000;
          do
          {
            v68 = 0uLL;
            a3.i32[0] = *v20;
            v69 = &v24[v17 - 16];
            v70 = v66;
            v71 = v65;
            v72 = v17 & 0x7FFFFFE0;
            v73 = 0uLL;
            v74 = 0uLL;
            v75 = 0uLL;
            v76 = 0uLL;
            v77 = 0uLL;
            v78 = 0uLL;
            do
            {
              v79 = vrev64q_s8(*v71);
              v80 = vextq_s8(v79, v79, 8uLL);
              v81 = vrev64q_s8(v71[-1]);
              v82 = vextq_s8(v81, v81, 8uLL);
              v83 = vrev64q_s8(*v69);
              v84 = vextq_s8(v83, v83, 8uLL);
              v85 = vrev64q_s8(v69[-1]);
              v86 = vextq_s8(v85, v85, 8uLL);
              v87 = vsubl_u8(*v80.i8, *v84.i8);
              v88 = vsubl_high_u8(v80, v84);
              v89 = vsubl_u8(*v82.i8, *v86.i8);
              v90 = vsubl_high_u8(v82, v86);
              v91 = vrev64q_s16(v70[1]);
              v92 = vextq_s8(v91, v91, 8uLL);
              v93 = vrev64q_s16(*v70);
              v94 = vextq_s8(v93, v93, 8uLL);
              v95 = vrev64q_s16(v70[-1]);
              v96 = vextq_s8(v95, v95, 8uLL);
              v97 = vrev64q_s16(v70[-2]);
              v98 = vextq_s8(v97, v97, 8uLL);
              v74 = vmlaq_s32(v74, vmull_high_s16(v88, v88), vmovl_high_u16(v94));
              v73 = vmlaq_s32(v73, vmull_s16(*v88.i8, *v88.i8), vmovl_u16(*v94.i8));
              v68 = vmlaq_s32(v68, vmull_high_s16(v87, v87), vmovl_high_u16(v92));
              a3 = vmlaq_s32(a3, vmull_s16(*v87.i8, *v87.i8), vmovl_u16(*v92.i8));
              v78 = vmlaq_s32(v78, vmull_high_s16(v90, v90), vmovl_high_u16(v98));
              v77 = vmlaq_s32(v77, vmull_s16(*v90.i8, *v90.i8), vmovl_u16(*v98.i8));
              v76 = vmlaq_s32(v76, vmull_high_s16(v89, v89), vmovl_high_u16(v96));
              v75 = vmlaq_s32(v75, vmull_s16(*v89.i8, *v89.i8), vmovl_u16(*v96.i8));
              v71 -= 2;
              v70 -= 4;
              v69 -= 2;
              v72 -= 32;
            }

            while (v72);
            v99 = vaddq_s32(v77, v73);
            v100 = vaddq_s32(vaddq_s32(v76, v68), vaddq_s32(v78, v74));
            a3 = vaddq_s32(vaddq_s32(vaddq_s32(v75, a3), v99), v100);
            v100.i32[0] = vaddvq_s32(a3);
            v101 = v100.i32[0];
            if ((v17 & 0x7FFFFFE0) != v17)
            {
              v102 = v17 & 0x1F;
              if ((v17 & 0x1C) == 0)
              {
                goto LABEL_66;
              }

              a3 = v100.u32[0];
              v103 = v38 - (v17 & 0x7FFFFFE0);
              v104 = v17 - (v17 & 0x7FFFFFE0) - 4;
              v105 = 2 * v17 - (((v17 >> 5) & 0x3FFFFFF) << 6) - 8;
              do
              {
                v100.i32[0] = *(v12 + v104);
                v99.i32[0] = *&v24[v104];
                v106 = vsubl_u16(vrev64_s16(*&vmovl_u8(*v100.i8)), vrev64_s16(*&vmovl_u8(*v99.i8)));
                v100 = vmulq_s32(v106, v106);
                v99 = vmovl_u16(vrev64_s16(*(v27 + v105)));
                a3 = vmlaq_s32(a3, v100, v99);
                v105 -= 8;
                v104 -= 4;
                v103 -= 4;
              }

              while (v103);
              v101 = vaddvq_s32(a3);
              v102 = v17 & 3;
              if (v38 != v17)
              {
LABEL_66:
                v107 = v102 - 1;
                do
                {
                  v108 = *(v12 + v107) - v24[v107];
                  v101 += v108 * v108 * *(v27 + 2 * v107);
                  v109 = v107-- + 1;
                }

                while (v109 > 1);
              }
            }

            if (v101 < v30)
            {
              v30 = v101;
            }

            v12 += v21;
            v20 = (v20 + v22);
            v65 = (v65 + v21);
            v66 += v67;
            v27 += v67;
            v35 = v16-- <= 0;
          }

          while (!v35);
        }

        else
        {
          v40 = v24 - 3;
          a3.i32[0] = *&v24[v17 - 4];
          v41 = vmovl_u16(vrev64_s16(*&vmovl_u8(*a3.i8)));
          v42 = 2 * v37;
          v43 = (2 * v37 + 2 * v17 + v25 - 24);
          v44 = 2 * v23;
          v45 = (v42 + 2 * v39 + v25 - 2);
          v46 = (v12 + v39 - 1);
          v47 = (v17 + v12 - 12);
          v30 = 0x40000000;
          do
          {
            a4.i32[0] = *v20;
            a5.i32[0] = v47[2];
            v48 = vsubq_s32(vmovl_u16(vrev64_s16(*&vmovl_u8(*a5.i8))), v41);
            a5 = vmulq_s32(v48, v48);
            v49 = vmovl_u16(vrev64_s16(v43[2]));
            a4 = vmlaq_s32(a4, a5, v49);
            if (v38 != 4)
            {
              a5.i32[0] = v47[1];
              v49.i32[0] = *&v40[v17 - 5];
              v50 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a5.i8)), vrev64_s16(*&vmovl_u8(*v49.i8)));
              a5 = vmulq_s32(v50, v50);
              v51 = vmovl_u16(vrev64_s16(v43[1]));
              a4 = vmlaq_s32(a4, a5, v51);
              if (v38 != 8)
              {
                a5.i32[0] = *v47;
                v51.i32[0] = *&v40[v17 - 9];
                v52 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a5.i8)), vrev64_s16(*&vmovl_u8(*v51.i8)));
                a5 = vmulq_s32(v52, v52);
                v53 = vmovl_u16(vrev64_s16(*v43));
                a4 = vmlaq_s32(a4, a5, v53);
                if (v38 != 12)
                {
                  a5.i32[0] = *(v47 - 1);
                  v53.i32[0] = *&v40[v17 - 13];
                  v54 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a5.i8)), vrev64_s16(*&vmovl_u8(*v53.i8)));
                  a5 = vmulq_s32(v54, v54);
                  v55 = vmovl_u16(vrev64_s16(v43[-1]));
                  a4 = vmlaq_s32(a4, a5, v55);
                  if (v38 != 16)
                  {
                    a5.i32[0] = *(v47 - 2);
                    v55.i32[0] = *&v40[v17 - 17];
                    v56 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a5.i8)), vrev64_s16(*&vmovl_u8(*v55.i8)));
                    a5 = vmulq_s32(v56, v56);
                    v57 = vmovl_u16(vrev64_s16(v43[-2]));
                    a4 = vmlaq_s32(a4, a5, v57);
                    if (v38 != 20)
                    {
                      a5.i32[0] = *(v47 - 3);
                      v57.i32[0] = *&v40[v17 - 21];
                      v58 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a5.i8)), vrev64_s16(*&vmovl_u8(*v57.i8)));
                      a5 = vmulq_s32(v58, v58);
                      v59 = vmovl_u16(vrev64_s16(v43[-3]));
                      a4 = vmlaq_s32(a4, a5, v59);
                      if (v38 != 24)
                      {
                        a5.i32[0] = *(v47 - 4);
                        v59.i32[0] = *&v40[v17 - 25];
                        v60 = vsubl_u16(vrev64_s16(*&vmovl_u8(*a5.i8)), vrev64_s16(*&vmovl_u8(*v59.i8)));
                        a5 = vmulq_s32(v60, v60);
                        a4 = vmlaq_s32(a4, a5, vmovl_u16(vrev64_s16(v43[-4])));
                      }
                    }
                  }
                }
              }
            }

            v61 = vaddvq_s32(a4);
            if (v38 != v17)
            {
              v62 = *v46 - v24[v39 - 1];
              v61 += v62 * v62 * *v45;
              if (v39 > 1)
              {
                v63 = *(v46 - 1) - v24[v39 - 2];
                v61 += v63 * v63 * *(v45 - 1);
                if (v39 == 3)
                {
                  v64 = *(v46 - 2) - *v24;
                  v61 += v64 * v64 * *(v45 - 2);
                }
              }
            }

            if (v61 < v30)
            {
              v30 = v61;
            }

            v20 = (v20 + v22);
            v43 = (v43 + v44);
            v45 = (v45 + v44);
            v46 += v21;
            v47 = (v47 + v21);
            v7 = __OFSUB__(v13--, 1);
          }

          while (!((v13 < 0) ^ v7 | (v13 == 0)));
        }
      }

      else
      {
        v28 = v17 - 1;
        v29 = 2 * v23;
        v30 = 0x40000000;
        do
        {
          v31 = *v20;
          v32 = v28;
          do
          {
            v33 = *(v12 + v32) - v24[v32];
            v31 += v33 * v33 * *(v27 + 2 * v32);
            v34 = v32-- + 1;
          }

          while (v34 > 1);
          if (v31 < v30)
          {
            v30 = v31;
          }

          v12 += v21;
          v20 = (v20 + v22);
          v27 += v29;
          v35 = v16-- <= 0;
        }

        while (!v35);
      }
    }
  }

  return (((v30 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_10000FB68(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    if (*(a1 + 1176))
    {
      v6 = (*(a1 + 1160) + 4 * a2);
      v7 = *v6;
      v8 = v6[1];
    }

    else
    {
      v12 = (*(a1 + 1144) + 2 * a2);
      v7 = *v12;
      v8 = v12[1];
    }

    v10 = v8 - v7;
    if (*(a1 + 2012))
    {
      v7 = a2;
    }

    v13 = *(a1 + 1120) * v7;
    if (*(a1 + 1080) <= a2)
    {
      v9 = *(a1 + 96) + v13;
      v11 = *(a1 + 1296);
      if (v11 == 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = *(a1 + 16) + v13;
      v11 = *(a1 + 1296);
      if (v11 == 3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v9 = *(a1 + 784) + *(a1 + 1120) * v5;
    v10 = 1;
    v11 = *(a1 + 1296);
    if (v11 == 3)
    {
      goto LABEL_19;
    }
  }

  if (v11 == 4)
  {
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        a2 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        a2 = *(*(a1 + 1144) + 2 * a2);
      }
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_19:
  v14 = v10 - 1;
  if (v10 < 1)
  {
    v22 = 0x40000000;
    return (((v22 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
  }

  v15 = *(a1 + 1104);
  v16 = *(a1 + 1240);
  v17 = (v16 + 4 * a2);
  if (v15 > 0)
  {
    v18 = *(a1 + 1544);
    v19 = *(a1 + 1100);
    v20 = *(a1 + 1216) + *(a1 + 1124) * a2;
    if (v15 < 8)
    {
      v21 = v15 - 1;
      v22 = 0x40000000;
      do
      {
        v23 = *v17;
        v24 = v21;
        do
        {
          v25 = *(v9 + v24) - *(v18 + v24);
          v23 += v25 * v25 * *(v20 + v24);
          v26 = v24-- + 1;
        }

        while (v26 > 1);
        if (v23 < v22)
        {
          v22 = v23;
        }

        v9 += v19;
        v20 += v19;
        ++v17;
        v27 = v14-- <= 0;
      }

      while (!v27);
      return (((v22 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
    }

    v28 = v18 - 16;
    v22 = 0x40000000;
    while (1)
    {
      v29 = *v17;
      if (v15 < 0x20)
      {
        break;
      }

      v31 = 0uLL;
      v32 = *v17;
      v33 = *(a1 + 1104);
      v34 = v15 & 0x7FFFFFE0;
      v35 = 0uLL;
      v36 = 0uLL;
      v2 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      do
      {
        v40 = vrev64q_s8(*(v9 + v33 - 16));
        v41 = vextq_s8(v40, v40, 8uLL);
        v42 = vrev64q_s8(*(v9 + v33 - 32));
        v43 = vextq_s8(v42, v42, 8uLL);
        v44 = vrev64q_s8(*(v28 + v33));
        v45 = vextq_s8(v44, v44, 8uLL);
        v46 = vrev64q_s8(*(v28 + v33 - 16));
        v47 = vextq_s8(v46, v46, 8uLL);
        v48 = vsubl_u8(*v41.i8, *v45.i8);
        v49 = vsubl_high_u8(v41, v45);
        v50 = vsubl_u8(*v43.i8, *v47.i8);
        v51 = vsubl_high_u8(v43, v47);
        v53 = *(v20 + v33 - 32);
        v52 = *(v20 + v33 - 16);
        v36 = vmlaq_s32(v36, vmull_high_s16(v49, v49), vqtbl1q_s8(v52, xmmword_1000F0C90));
        v35 = vmlaq_s32(v35, vmull_s16(*v49.i8, *v49.i8), vqtbl1q_s8(v52, xmmword_1000F0CA0));
        v31 = vmlaq_s32(v31, vmull_high_s16(v48, v48), vqtbl1q_s8(v52, xmmword_1000F0CB0));
        v32 = vmlaq_s32(v32, vmull_s16(*v48.i8, *v48.i8), vqtbl1q_s8(v52, xmmword_1000F0CC0));
        v39 = vmlaq_s32(v39, vmull_high_s16(v51, v51), vqtbl1q_s8(v53, xmmword_1000F0C90));
        v38 = vmlaq_s32(v38, vmull_s16(*v51.i8, *v51.i8), vqtbl1q_s8(v53, xmmword_1000F0CA0));
        v37 = vmlaq_s32(v37, vmull_high_s16(v50, v50), vqtbl1q_s8(v53, xmmword_1000F0CB0));
        v2 = vmlaq_s32(v2, vmull_s16(*v50.i8, *v50.i8), vqtbl1q_s8(v53, xmmword_1000F0CC0));
        v33 -= 32;
        v34 -= 32;
      }

      while (v34);
      v29 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v2, v32), vaddq_s32(v38, v35)), vaddq_s32(vaddq_s32(v37, v31), vaddq_s32(v39, v36))));
      if ((v15 & 0x7FFFFFE0) == v15)
      {
        goto LABEL_34;
      }

      v30 = v15 & 0x7FFFFFE0;
      v54 = v15 & 0x1F;
      if ((v15 & 0x18) != 0)
      {
        goto LABEL_43;
      }

LABEL_46:
      v61 = v54 - 1;
      do
      {
        v62 = *(v9 + v61) - *(v18 + v61);
        v29 += v62 * v62 * *(v20 + v61);
        v63 = v61-- + 1;
      }

      while (v63 > 1);
LABEL_34:
      if (v29 < v22)
      {
        v22 = v29;
      }

      v9 += v19;
      v20 += v19;
      ++v17;
      v27 = v14-- <= 0;
      if (v27)
      {
        return (((v22 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }

    v30 = 0;
LABEL_43:
    v55 = 0uLL;
    v56 = v29;
    v57 = v15 - 8 - v30;
    v58 = v30 - (v15 & 0x7FFFFFF8);
    do
    {
      v59 = vsubl_u8(vrev64_s8(*(v9 + v57)), vrev64_s8(*(v18 + v57)));
      *v2.i8 = vrev64_s8(*(v20 + v57));
      v60 = vqtbl1q_s8(v2, xmmword_1000F0C50);
      v2 = vqtbl1q_s8(v2, xmmword_1000F0C60);
      v55 = vmlaq_s32(v55, vmull_high_s16(v59, v59), v60);
      v56 = vmlaq_s32(v56, vmull_s16(*v59.i8, *v59.i8), v2);
      v57 -= 8;
      v58 += 8;
    }

    while (v58);
    v29 = vaddvq_s32(vaddq_s32(v56, v55));
    v54 = v15 & 7;
    if ((v15 & 0x7FFFFFF8) == v15)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

  if (v10 > 7)
  {
    v64 = v10;
    v65 = v10 & 0x7FFFFFF8;
    v14 -= v65;
    v17 += v65;
    v66 = (v16 + 4 * a2 + 16);
    v67.i64[0] = 0x4000000040000000;
    v67.i64[1] = 0x4000000040000000;
    v68 = v65;
    v69.i64[0] = 0x4000000040000000;
    v69.i64[1] = 0x4000000040000000;
    do
    {
      v67 = vminq_s32(v66[-1], v67);
      v69 = vminq_s32(*v66, v69);
      v66 += 2;
      v68 -= 8;
    }

    while (v68);
    v22 = vminvq_s32(vminq_s32(v67, v69));
    if (v65 == v64)
    {
      return (((v22 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
    }
  }

  else
  {
    v22 = 0x40000000;
  }

  v70 = v14 + 1;
  do
  {
    v72 = *v17++;
    v71 = v72;
    if (v72 < v22)
    {
      v22 = v71;
    }

    --v70;
  }

  while (v70);
  return (((v22 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_10000FFFC(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, int32x4_t a9)
{
  v10 = *(a1 + 1544);
  v11 = *(a1 + 1100);
  v12 = *(a1 + 1072);
  v13 = __OFSUB__(a2, v12);
  v14 = a2 - v12;
  if (v14 < 0 == v13)
  {
    v18 = *(a1 + 784) + *(a1 + 1120) * v14;
    v19 = 0;
    v20 = *(a1 + 1296);
    if (v20 == 3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (*(a1 + 1176))
  {
    v15 = (*(a1 + 1160) + 4 * a2);
    v16 = *v15;
    v17 = v15[1];
  }

  else
  {
    v21 = (*(a1 + 1144) + 2 * a2);
    v16 = *v21;
    v17 = v21[1];
  }

  v22 = v17 - v16;
  if (*(a1 + 2012))
  {
    v16 = a2;
  }

  v23 = *(a1 + 1120) * v16;
  if (*(a1 + 1080) <= a2)
  {
    v24 = *(a1 + 96);
  }

  else
  {
    v24 = *(a1 + 16);
  }

  v18 = v24 + v23;
  v19 = (v22 - 1) * v11;
  v20 = *(a1 + 1296);
  if (v20 != 3)
  {
LABEL_14:
    if (v20 == 4)
    {
      if (!*(a1 + 2012))
      {
        if (*(a1 + 1176))
        {
          a2 = *(*(a1 + 1160) + 4 * a2);
        }

        else
        {
          a2 = *(*(a1 + 1144) + 2 * a2);
        }
      }
    }

    else
    {
      a2 = 0;
    }
  }

LABEL_19:
  v25 = 0;
  v26 = *(a1 + 1216) + (*(a1 + 1124) * a2);
  v27 = (*(a1 + 1240) + 4 * a2);
  v28 = *(a1 + 1140);
  v29 = vmovl_u8(*v10);
  v30 = vmovl_high_u16(v29);
  v31 = vmovl_u16(*v29.i8);
  while (1)
  {
    v32 = vmovl_u8(*(v18 + v25));
    v33 = vmovl_u16(*v32.i8);
    v34 = vsubq_s32(vmovl_high_u16(v32), v30);
    v35 = vsubq_s32(v33, v31);
    a9.i64[0] = *(v26 + v25);
    v36 = vqtbl1q_s8(a9, xmmword_1000F0C60);
    a9 = vqtbl1q_s8(a9, xmmword_1000F0C50);
    v37 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmulq_s32(v34, v34), a9), vmulq_s32(v35, v35), v36));
    if (v37 <= v28)
    {
      v38 = vsubl_u8(*(v18 + v25 + 8), v10[1]);
      v39 = vmovl_u8(*(v26 + v25 + 8));
      v40 = vmovl_u16(*v39.i8);
      a9 = vmovl_high_u16(v39);
      v41 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmull_high_s16(v38, v38), a9), vmull_s16(*v38.i8, *v38.i8), v40)) + *v27 + v37;
      if (v41 < v28)
      {
        v42 = vsubl_u8(*(v18 + v25 + 16), v10[2]);
        v43 = vmovl_u8(*(v26 + v25 + 16));
        v44 = vmovl_u16(*v43.i8);
        a9 = vmovl_high_u16(v43);
        v45 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmull_high_s16(v42, v42), a9), vmull_s16(*v42.i8, *v42.i8), v44)) + v41;
        if (v45 < v28)
        {
          v46 = vsubl_u8(*(v18 + v25 + 24), v10[3]);
          v47 = vmull_s16(*v46.i8, *v46.i8);
          v48 = vmovl_u8(*(v26 + v25 + 24));
          v49 = vmovl_u16(*v48.i8);
          v50 = vmovl_high_u16(v48);
          v51 = vmulq_s32(vmull_high_s16(v46, v46), v50);
          v50.i32[0] = *(v18 + v25 + 32);
          v9.i32[0] = v10[4].i32[0];
          v52 = vmovl_u8(*v9.i8).u64[0];
          v53 = vsubl_u16(*&vmovl_u8(*v50.i8), v52);
          a9 = vmulq_s32(v53, v53);
          v52.i32[0] = *(v26 + v25 + 32);
          v9 = vmovl_u16(*&vmovl_u8(v52));
          v54 = vaddvq_s32(vmlaq_s32(vmlaq_s32(v51, v47, v49), a9, v9)) + v45;
          if (v54 < v28)
          {
            v28 = v54;
          }
        }
      }
    }

    if (v19 == v25)
    {
      break;
    }

    ++v27;
    v25 += v11;
  }

  return (((v28 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_1000102AC(uint64_t a1, unsigned int a2, double a3, double a4, int32x4_t a5)
{
  if (*(a1 + 1072) <= a2)
  {
    v8 = 1;
    v9 = *(a1 + 1296);
    v10 = a2;
    if (v9 != 3)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (*(a1 + 2012))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (*(a1 + 1176))
  {
    v5 = (*(a1 + 1160) + 4 * a2);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v11 = (*(a1 + 1144) + 2 * a2);
    v7 = *v11;
    v6 = v11[1];
  }

  v8 = v6 - v7;
  v9 = *(a1 + 1296);
  v10 = a2;
  if (v9 == 3)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v9 != 4)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v10 = a2;
  if (*(a1 + 2012))
  {
    goto LABEL_14;
  }

  if (*(a1 + 1176))
  {
    v10 = *(*(a1 + 1160) + 4 * a2);
    if (*(a1 + 2012))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *(*(a1 + 1144) + 2 * a2);
    if (*(a1 + 2012))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (*(a1 + 1176))
  {
    a2 = *(*(a1 + 1160) + 4 * a2);
  }

  else
  {
    a2 = *(*(a1 + 1144) + 2 * a2);
  }

LABEL_18:
  v12 = v8 - 1;
  if (v8 < 1)
  {
    v27 = 0x40000000;
    return (((v27 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
  }

  v13 = *(a1 + 1104);
  v14 = *(a1 + 160);
  v15 = (v14 + 4 * a2);
  if (v13 > 0)
  {
    v16 = (*(a1 + 1124) * v10);
    v17 = *(a1 + 1544);
    v18 = (*(a1 + 1216) + v16);
    v19 = *(a1 + 176) + 2 * (*(a1 + 1120) * a2);
    v20 = *(a1 + 1100);
    v21 = v13 & 0x7FFFFFE0;
    v22 = v13 & 0x7FFFFFFC;
    v23 = (v19 + 32);
    v24 = *(a1 + 1584);
    v25 = 2 * v20;
    v26 = v18 + 2;
    v27 = 0x40000000;
    while (1)
    {
      v29 = *v15;
      if (v13 < 4)
      {
        for (i = 0; i != v13; ++i)
        {
LABEL_35:
          v29 -= 2 * *(v19 + 2 * i) * v17->u8[i];
        }

        goto LABEL_36;
      }

      if (v13 >= 0x20)
      {
        v32 = 0uLL;
        v33 = *v15;
        v34 = v13 & 0x7FFFFFE0;
        v35 = v17 + 1;
        v36 = v23;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v40 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        do
        {
          v43 = v36[-2];
          v44 = v36[-1];
          v45 = *v36;
          v46 = v36[1];
          v36 += 4;
          v47 = v35[-1];
          v48 = vqtbl1q_s8(v47, xmmword_1000F0C30);
          v49 = vqtbl1q_s8(v47, xmmword_1000F0C40);
          v50 = vuzp1q_s16(vqtbl1q_s8(v47, xmmword_1000F0C60), vqtbl1q_s8(v47, xmmword_1000F0C50));
          v51 = vmull_u16(*v43.i8, *v50.i8);
          v52 = vuzp1q_s16(v49, v48);
          v53 = vmull_u16(*v44.i8, *v52.i8);
          v54 = vmull_high_u16(v43, v50);
          v55 = vmull_high_u16(v44, v52);
          v56 = vuzp1q_s16(vqtbl1q_s8(*v35, xmmword_1000F0C60), vqtbl1q_s8(*v35, xmmword_1000F0C50));
          v57 = vmull_u16(*v45.i8, *v56.i8);
          v58 = vuzp1q_s16(vqtbl1q_s8(*v35, xmmword_1000F0C40), vqtbl1q_s8(*v35, xmmword_1000F0C30));
          v59 = vmull_u16(*v46.i8, *v58.i8);
          v60 = vmull_high_u16(v45, v56);
          v61 = vmull_high_u16(v46, v58);
          v38 = vsubq_s32(v38, vaddq_s32(v55, v55));
          v32 = vsubq_s32(v32, vaddq_s32(v54, v54));
          v37 = vsubq_s32(v37, vaddq_s32(v53, v53));
          v33 = vsubq_s32(v33, vaddq_s32(v51, v51));
          v42 = vsubq_s32(v42, vaddq_s32(v61, v61));
          v40 = vsubq_s32(v40, vaddq_s32(v60, v60));
          v41 = vsubq_s32(v41, vaddq_s32(v59, v59));
          v39 = vsubq_s32(v39, vaddq_s32(v57, v57));
          v35 += 2;
          v34 -= 32;
        }

        while (v34);
        a5 = vaddq_s32(v41, v37);
        v29 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v39, v33), a5), vaddq_s32(vaddq_s32(v40, v32), vaddq_s32(v42, v38))));
        if (v21 == v13)
        {
          goto LABEL_36;
        }

        i = v13 & 0x7FFFFFE0;
        v31 = i;
        if ((v13 & 0x1C) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v31 = 0;
      }

      v62 = v29;
      v63 = 2 * v31;
      v64 = (v17->u32 + v31);
      v65 = v31 - (v13 & 0x7FFFFFFC);
      do
      {
        v66 = *v64++;
        a5.i32[0] = v66;
        a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
        v67 = vmull_u16(*(v19 + v63), *a5.i8);
        v62 = vsubq_s32(v62, vaddq_s32(v67, v67));
        v63 += 8;
        v65 += 4;
      }

      while (v65);
      v29 = vaddvq_s32(v62);
      i = v13 & 0x7FFFFFFC;
      if (v22 != v13)
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v13 >= 4)
      {
        if (v13 < 0x20)
        {
          v69 = 0;
LABEL_44:
          v90 = v29;
          v91 = (v24 + 2 * v69);
          do
          {
            v92 = *v91++;
            a5.i32[0] = *(v18->i32 + v69);
            a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
            v90 = vmlal_u16(v90, *a5.i8, v92);
            v69 += 4;
          }

          while (v22 != v69);
          v29 = vaddvq_s32(v90);
          v68 = v13 & 0x7FFFFFFC;
          if (v22 == v13)
          {
            goto LABEL_21;
          }

          goto LABEL_47;
        }

        v70 = 0uLL;
        v71 = v29;
        v72 = v13 & 0x7FFFFFE0;
        v73 = v26;
        v74 = v24 + 2;
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v79 = 0uLL;
        v80 = 0uLL;
        do
        {
          v82 = v74[-2];
          v81 = v74[-1];
          v84 = *v74;
          v83 = v74[1];
          v74 += 4;
          v85 = *v73[-2].i8;
          v86 = vmovl_u8(*v85.i8);
          v87 = vmovl_high_u8(v85);
          v88 = vmovl_u8(*v73);
          v89 = vmovl_high_u8(*v73->i8);
          v76 = vmlal_high_u16(v76, v87, v81);
          v75 = vmlal_u16(v75, *v87.i8, *v81.i8);
          v70 = vmlal_high_u16(v70, v86, v82);
          v71 = vmlal_u16(v71, *v86.i8, *v82.i8);
          v80 = vmlal_high_u16(v80, v89, v83);
          v79 = vmlal_u16(v79, *v89.i8, *v83.i8);
          v78 = vmlal_high_u16(v78, v88, v84);
          v77 = vmlal_u16(v77, *v88.i8, *v84.i8);
          v73 += 4;
          v72 -= 32;
        }

        while (v72);
        a5 = vaddq_s32(v79, v75);
        v29 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v77, v71), a5), vaddq_s32(vaddq_s32(v78, v70), vaddq_s32(v80, v76))));
        if (v21 == v13)
        {
          goto LABEL_21;
        }

        v68 = v13 & 0x7FFFFFE0;
        v69 = v68;
        if ((v13 & 0x1C) != 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v68 = 0;
      }

      do
      {
LABEL_47:
        v29 += v18->u8[v68] * v24->u16[v68];
        ++v68;
      }

      while (v13 != v68);
LABEL_21:
      ++v15;
      if (v29 < v27)
      {
        v27 = v29;
      }

      v18 = (v18 + v20);
      v23 = (v23 + v25);
      v19 += v25;
      v26 = (v26 + v20);
      if (v12-- <= 0)
      {
        return (((v27 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }
  }

  if (v8 > 7)
  {
    v93 = v8;
    v94 = v8 & 0x7FFFFFF8;
    v12 -= v94;
    v15 += v94;
    v95 = (v14 + 4 * a2 + 16);
    v96.i64[0] = 0x4000000040000000;
    v96.i64[1] = 0x4000000040000000;
    v97 = v94;
    v98.i64[0] = 0x4000000040000000;
    v98.i64[1] = 0x4000000040000000;
    do
    {
      v96 = vminq_s32(v95[-1], v96);
      v98 = vminq_s32(*v95, v98);
      v95 += 2;
      v97 -= 8;
    }

    while (v97);
    v27 = vminvq_s32(vminq_s32(v96, v98));
    if (v94 == v93)
    {
      return (((v27 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
    }
  }

  else
  {
    v27 = 0x40000000;
  }

  v99 = v12 + 1;
  do
  {
    v101 = *v15++;
    v100 = v101;
    if (v101 < v27)
    {
      v27 = v100;
    }

    --v99;
  }

  while (v99);
  return (((v27 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_1000107EC(uint64_t a1, unsigned int a2, int a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 1104);
  v7 = *(a1 + 1296);
  if (v7 == 3)
  {
    goto LABEL_4;
  }

  if (v7 == 4)
  {
    if (*(a1 + 2012))
    {
LABEL_4:
      v8 = a2;
      goto LABEL_6;
    }

    if (*(a1 + 1176))
    {
      v8 = *(*(a1 + 1160) + 4 * a2) + a3;
    }

    else
    {
      v8 = *(*(a1 + 1144) + 2 * a2) + a3;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  if (!*(a1 + 2012))
  {
    if (*(a1 + 1176))
    {
      v9 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v9 = *(*(a1 + 1144) + 2 * a2);
    }

    a2 = v9 + a3;
  }

  v10 = *(*(a1 + 160) + 4 * a2);
  if (v6 < 1)
  {
    return (((v10 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
  }

  v11 = *(a1 + 1124) * v8;
  v12 = *(a1 + 1544);
  v13 = *(a1 + 176);
  v14 = (*(a1 + 1120) * a2);
  if (v6 >= 4)
  {
    if (v6 >= 0x20)
    {
      v15 = v6 & 0x7FFFFFE0;
      v16 = 0uLL;
      v17 = *(*(a1 + 160) + 4 * a2);
      v18 = (v13 + 2 * v14 + 32);
      v19 = v12 + 1;
      v20 = v15;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = v18[-2];
        v28 = v18[-1];
        v29 = *v18;
        v30 = v18[1];
        v18 += 4;
        v31 = v19[-1];
        v32 = vqtbl1q_s8(v31, xmmword_1000F0C30);
        v33 = vqtbl1q_s8(v31, xmmword_1000F0C40);
        v34 = vuzp1q_s16(vqtbl1q_s8(v31, xmmword_1000F0C60), vqtbl1q_s8(v31, xmmword_1000F0C50));
        v35 = vmull_u16(*v27.i8, *v34.i8);
        v36 = vuzp1q_s16(v33, v32);
        v37 = vmull_u16(*v28.i8, *v36.i8);
        v38 = vmull_high_u16(v27, v34);
        v39 = vmull_high_u16(v28, v36);
        v40 = vuzp1q_s16(vqtbl1q_s8(*v19, xmmword_1000F0C60), vqtbl1q_s8(*v19, xmmword_1000F0C50));
        v41 = vmull_u16(*v29.i8, *v40.i8);
        v42 = vuzp1q_s16(vqtbl1q_s8(*v19, xmmword_1000F0C40), vqtbl1q_s8(*v19, xmmword_1000F0C30));
        v43 = vmull_u16(*v30.i8, *v42.i8);
        v44 = vmull_high_u16(v29, v40);
        v45 = vmull_high_u16(v30, v42);
        v22 = vsubq_s32(v22, vaddq_s32(v39, v39));
        v16 = vsubq_s32(v16, vaddq_s32(v38, v38));
        v21 = vsubq_s32(v21, vaddq_s32(v37, v37));
        v17 = vsubq_s32(v17, vaddq_s32(v35, v35));
        v26 = vsubq_s32(v26, vaddq_s32(v45, v45));
        v24 = vsubq_s32(v24, vaddq_s32(v44, v44));
        v25 = vsubq_s32(v25, vaddq_s32(v43, v43));
        v23 = vsubq_s32(v23, vaddq_s32(v41, v41));
        v19 += 2;
        v20 -= 32;
      }

      while (v20);
      a6 = vaddq_s32(v26, v22);
      v10 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v17), vaddq_s32(v25, v21)), vaddq_s32(vaddq_s32(v24, v16), a6)));
      if (v15 == v6)
      {
        goto LABEL_25;
      }

      if ((v6 & 0x1C) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
    }

    v46 = v15;
    v47 = v10;
    v15 = v6 & 0x7FFFFFFC;
    v48 = (v13 + 2 * v46 + 2 * v14);
    v49 = (v12->i32 + v46);
    v50 = v46 - v15;
    do
    {
      v51 = *v48++;
      v52 = v51;
      v51.i32[0] = *v49++;
      a6.i32[0] = v51.i32[0];
      a6.i64[0] = vmovl_u8(*a6.i8).u64[0];
      v53 = vmull_u16(v52, *a6.i8);
      v47 = vsubq_s32(v47, vaddq_s32(v53, v53));
      v50 += 4;
    }

    while (v50);
    v10 = vaddvq_s32(v47);
    if (v15 == v6)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v15 = 0;
LABEL_23:
  v54 = &v12->u8[v15];
  v55 = (v13 + 2 * v15 + 2 * v14);
  v56 = v6 - v15;
  do
  {
    v58 = *v55++;
    v57 = v58;
    v59 = *v54++;
    v10 -= 2 * v57 * v59;
    --v56;
  }

  while (v56);
LABEL_25:
  v60 = *(a1 + 1216);
  v61 = v11;
  v62 = *(a1 + 1584);
  if (v6 < 4)
  {
    v63 = 0;
    goto LABEL_36;
  }

  if (v6 >= 0x20)
  {
    v63 = v6 & 0x7FFFFFE0;
    v64 = 0uLL;
    v65 = v10;
    v66 = v62 + 2;
    v67 = (v61 + v60 + 16);
    v68 = v63;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    do
    {
      v76 = v66[-2];
      v75 = v66[-1];
      v78 = *v66;
      v77 = v66[1];
      v66 += 4;
      v79 = *v67[-2].i8;
      v80 = vmovl_u8(*v79.i8);
      v81 = vmovl_high_u8(v79);
      v82 = vmovl_u8(*v67);
      v83 = vmovl_high_u8(*v67->i8);
      v70 = vmlal_high_u16(v70, v81, v75);
      v69 = vmlal_u16(v69, *v81.i8, *v75.i8);
      v64 = vmlal_high_u16(v64, v80, v76);
      v65 = vmlal_u16(v65, *v80.i8, *v76.i8);
      v74 = vmlal_high_u16(v74, v83, v77);
      v73 = vmlal_u16(v73, *v83.i8, *v77.i8);
      v72 = vmlal_high_u16(v72, v82, v78);
      v71 = vmlal_u16(v71, *v82.i8, *v78.i8);
      v67 += 4;
      v68 -= 32;
    }

    while (v68);
    a6 = vaddq_s32(v73, v69);
    v10 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v71, v65), a6), vaddq_s32(vaddq_s32(v72, v64), vaddq_s32(v74, v70))));
    if (v63 == v6)
    {
      return (((v10 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
    }

    if ((v6 & 0x1C) == 0)
    {
LABEL_36:
      v91 = (v60 + v63 + v61);
      v92 = v62 + v63;
      v93 = v6 - v63;
      do
      {
        v95 = *v92++;
        v94 = v95;
        v96 = *v91++;
        v10 += v96 * v94;
        --v93;
      }

      while (v93);
      return (((v10 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
    }
  }

  else
  {
    v63 = 0;
  }

  v84 = v63;
  v63 = v6 & 0x7FFFFFFC;
  v85 = v10;
  v86 = (v62 + 2 * v84);
  v87 = (v60 + v84 + v61);
  v88 = v84 - v63;
  do
  {
    v89 = *v86++;
    v90 = v89;
    v89.i32[0] = *v87++;
    a6.i32[0] = v89.i32[0];
    a6.i64[0] = vmovl_u8(*a6.i8).u64[0];
    v85 = vmlal_u16(v85, *a6.i8, v90);
    v88 += 4;
  }

  while (v88);
  v10 = vaddvq_s32(v85);
  if (v63 != v6)
  {
    goto LABEL_36;
  }

  return (((v10 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100010BE4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1072);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 != v3)
  {
    if (*(a1 + 1176))
    {
      v5 = (*(a1 + 1160) + 4 * a2);
      v7 = *v5;
      v6 = v5[1];
    }

    else
    {
      v11 = (*(a1 + 1144) + 2 * a2);
      v7 = *v11;
      v6 = v11[1];
    }

    v9 = v6 - v7;
    if (*(a1 + 2012))
    {
      v7 = a2;
    }

    v12 = *(a1 + 1120) * v7;
    if (*(a1 + 1080) <= a2)
    {
      v8 = (*(a1 + 96) + v12);
      v10 = *(a1 + 1296);
      if (v10 == 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = (*(a1 + 16) + v12);
      v10 = *(a1 + 1296);
      if (v10 == 3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v8 = (*(a1 + 784) + *(a1 + 1120) * v4);
    v9 = 1;
    v10 = *(a1 + 1296);
    if (v10 == 3)
    {
      goto LABEL_19;
    }
  }

  if (v10 == 4)
  {
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        a2 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        a2 = *(*(a1 + 1144) + 2 * a2);
      }
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_19:
  if (v9 >= 1)
  {
    v13 = *(a1 + 1544);
    v14 = (*(a1 + 1240) + 4 * a2);
    v15 = (*(a1 + 1208) + 2 * (*(a1 + 1124) * a2));
    v16 = *(a1 + 1100);
    v17 = v10 == 4;
    v18 = 4 * (v10 == 4);
    if (v17)
    {
      v19 = *(a1 + 1100);
    }

    else
    {
      v19 = 0;
    }

    v20 = vmovl_u8(*v13);
    v21 = vmovl_high_u16(v20);
    v22 = vmovl_u16(*v20.i8);
    v23 = v8 + 3;
    v24 = v15 + 3;
    v25 = 2 * v19;
    v26 = 0x40000000;
    while (1)
    {
      v29 = vmovl_u8(*v8);
      v30 = vmovl_u16(*v29.i8);
      v31 = vsubq_s32(vmovl_high_u16(v29), v21);
      v32 = vsubq_s32(v30, v22);
      v33 = vmulq_s32(v32, v32);
      v34 = vmovl_high_u16(*v15);
      v34.i32[0] = vaddvq_s32(vmlaq_s32(vmulq_s32(vmulq_s32(v31, v31), v34), v33, vmovl_u16(*v15->i8)));
      v27 = v34.i32[0];
      if (v34.i32[0] > *(a1 + 1056))
      {
        v27 = *(a1 + 1060) + v34.i32[0];
      }

      else
      {
        v35 = *(a1 + 1104);
        if (v35 >= 9)
        {
          v36 = v35 - 8;
          if ((v35 - 8) < 4)
          {
            v37 = 8;
            goto LABEL_43;
          }

          if (v36 >= 0x20)
          {
            v38 = v36 & 0xFFFFFFFFFFFFFFE0;
            v39 = 0uLL;
            v40 = v34.u32[0];
            v41 = v13 + 3;
            v42 = v24;
            v43 = v23;
            v44 = v36 & 0xFFFFFFFFFFFFFFE0;
            v45 = 0uLL;
            v46 = 0uLL;
            v47 = 0uLL;
            v48 = 0uLL;
            v49 = 0uLL;
            v50 = 0uLL;
            do
            {
              v51 = *v43[-2].i8;
              v52 = *v41[-2].i8;
              v53 = vsubl_u8(*v51.i8, *v52.i8);
              v54 = vsubl_high_u8(v51, v52);
              v55 = vsubl_u8(*v43, *v41);
              v56 = vsubl_high_u8(*v43->i8, *v41->i8);
              v57 = v42[-2];
              v58 = v42[-1];
              v59 = *v42;
              v60 = v42[1];
              v42 += 4;
              v46 = vmlaq_s32(v46, vmull_high_s16(v54, v54), vmovl_high_u16(v58));
              v45 = vmlaq_s32(v45, vmull_s16(*v54.i8, *v54.i8), vmovl_u16(*v58.i8));
              v39 = vmlaq_s32(v39, vmull_high_s16(v53, v53), vmovl_high_u16(v57));
              v40 = vmlaq_s32(v40, vmull_s16(*v53.i8, *v53.i8), vmovl_u16(*v57.i8));
              v50 = vmlaq_s32(v50, vmull_high_s16(v56, v56), vmovl_high_u16(v60));
              v49 = vmlaq_s32(v49, vmull_s16(*v56.i8, *v56.i8), vmovl_u16(*v60.i8));
              v48 = vmlaq_s32(v48, vmull_high_s16(v55, v55), vmovl_high_u16(v59));
              v47 = vmlaq_s32(v47, vmull_s16(*v55.i8, *v55.i8), vmovl_u16(*v59.i8));
              v43 += 4;
              v41 += 4;
              v44 -= 32;
            }

            while (v44);
            v34 = vaddq_s32(v49, v45);
            v33 = vaddq_s32(vaddq_s32(v48, v39), vaddq_s32(v50, v46));
            v27 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v47, v40), v34), v33));
            if (v36 == v38)
            {
              goto LABEL_25;
            }

            if ((v36 & 0x1C) == 0)
            {
              v37 = v38 | 8;
              do
              {
LABEL_43:
                v66 = v8->u8[v37] - v13->u8[v37];
                v27 += v66 * v66 * v15->u16[v37++];
              }

              while (v35 != v37);
              goto LABEL_25;
            }
          }

          else
          {
            v38 = 0;
          }

          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          v61 = v27;
          v62 = v38 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
          v63 = v38 + 8;
          v64 = 2 * v38 + 16;
          do
          {
            v33.i32[0] = *(v8->i32 + v63);
            v34.i32[0] = *(v13->i32 + v63);
            v65 = vsubl_u16(*&vmovl_u8(*v33.i8), *&vmovl_u8(*v34.i8));
            v33 = vmulq_s32(v65, v65);
            v34 = vmovl_u16(*&v15->i8[v64]);
            v61 = vmlaq_s32(v61, v33, v34);
            v63 += 4;
            v64 += 8;
            v62 += 4;
          }

          while (v62);
          v27 = vaddvq_s32(v61);
          if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }
      }

LABEL_25:
      if ((*v14 + v27) < v26)
      {
        v26 = *v14 + v27;
      }

      v8 = (v8 + v16);
      v14 = (v14 + v18);
      v15 = (v15 + v25);
      v23 = (v23 + v16);
      v24 = (v24 + v25);
      if (v9-- <= 1)
      {
        return (((v26 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }
  }

  v26 = 0x40000000;
  return (((v26 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100010FB0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    if (*(a1 + 1176))
    {
      v6 = (*(a1 + 1160) + 4 * a2);
      v8 = *v6;
      v7 = v6[1];
    }

    else
    {
      v12 = (*(a1 + 1144) + 2 * a2);
      v8 = *v12;
      v7 = v12[1];
    }

    v10 = v7 - v8;
    if (*(a1 + 2012))
    {
      v8 = a2;
    }

    v13 = *(a1 + 1120) * v8;
    if (*(a1 + 1080) <= a2)
    {
      v9 = (*(a1 + 96) + v13);
      v11 = *(a1 + 1296);
      if (v11 == 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = (*(a1 + 16) + v13);
      v11 = *(a1 + 1296);
      if (v11 == 3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v9 = (*(a1 + 784) + *(a1 + 1120) * v5);
    v10 = 1;
    v11 = *(a1 + 1296);
    if (v11 == 3)
    {
      goto LABEL_19;
    }
  }

  if (v11 == 4)
  {
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        a2 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        a2 = *(*(a1 + 1144) + 2 * a2);
      }
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_19:
  if (v10 >= 1)
  {
    v14 = *(a1 + 1544);
    v15 = (*(a1 + 1240) + 4 * a2);
    v16 = (*(a1 + 1216) + *(a1 + 1124) * a2);
    v17 = v11 == 4;
    v18 = 4 * (v11 == 4);
    if (v17)
    {
      v19 = *(a1 + 1100);
    }

    else
    {
      v19 = 0;
    }

    v20 = vmovl_u8(*v14);
    v21 = vmovl_high_u16(v20);
    v22 = vmovl_u16(*v20.i8);
    v23 = 0x40000000;
    while (1)
    {
      v26 = vmovl_u8(*v9);
      v27 = vmovl_u16(*v26.i8);
      v28 = vsubq_s32(vmovl_high_u16(v26), v21);
      v29 = vsubq_s32(v27, v22);
      v30 = vmulq_s32(v29, v29);
      v2.i64[0] = *v16;
      v31 = vqtbl1q_s8(v2, xmmword_1000F0C60);
      v2 = vqtbl1q_s8(v2, xmmword_1000F0C50);
      v2.i32[0] = vaddvq_s32(vmlaq_s32(vmulq_s32(vmulq_s32(v28, v28), v2), v30, v31));
      v24 = v2.i32[0];
      if (v2.i32[0] > *(a1 + 1056))
      {
        v24 = *(a1 + 1060) + v2.i32[0];
      }

      else
      {
        v32 = *(a1 + 1104);
        if (v32 >= 9)
        {
          v33 = v32 - 8;
          if ((v32 - 8) < 4)
          {
            v34 = 8;
            goto LABEL_43;
          }

          if (v33 >= 0x20)
          {
            v35 = v33 & 0xFFFFFFFFFFFFFFE0;
            v36 = 0uLL;
            v37 = v2.u32[0];
            v38 = 3;
            v39 = v33 & 0xFFFFFFFFFFFFFFE0;
            v40 = 0uLL;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            do
            {
              v46 = *v9[v38 - 2].i8;
              v47 = *v9[v38].i8;
              v48 = *v14[v38 - 2].i8;
              v49 = *v14[v38].i8;
              v50 = vsubl_u8(*v46.i8, *v48.i8);
              v51 = vsubl_high_u8(v46, v48);
              v52 = vsubl_u8(*v47.i8, *v49.i8);
              v53 = vsubl_high_u8(v47, v49);
              v54 = *&v16[v38 - 2];
              v55 = *&v16[v38];
              v41 = vmlaq_s32(v41, vmull_high_s16(v51, v51), vqtbl1q_s8(v54, xmmword_1000F0C30));
              v40 = vmlaq_s32(v40, vmull_s16(*v51.i8, *v51.i8), vqtbl1q_s8(v54, xmmword_1000F0C40));
              v36 = vmlaq_s32(v36, vmull_high_s16(v50, v50), vqtbl1q_s8(v54, xmmword_1000F0C50));
              v37 = vmlaq_s32(v37, vmull_s16(*v50.i8, *v50.i8), vqtbl1q_s8(v54, xmmword_1000F0C60));
              v45 = vmlaq_s32(v45, vmull_high_s16(v53, v53), vqtbl1q_s8(v55, xmmword_1000F0C30));
              v44 = vmlaq_s32(v44, vmull_s16(*v53.i8, *v53.i8), vqtbl1q_s8(v55, xmmword_1000F0C40));
              v43 = vmlaq_s32(v43, vmull_high_s16(v52, v52), vqtbl1q_s8(v55, xmmword_1000F0C50));
              v42 = vmlaq_s32(v42, vmull_s16(*v52.i8, *v52.i8), vqtbl1q_s8(v55, xmmword_1000F0C60));
              v38 += 4;
              v39 -= 32;
            }

            while (v39);
            v2 = vaddq_s32(v44, v40);
            v30 = vaddq_s32(vaddq_s32(v43, v36), vaddq_s32(v45, v41));
            v24 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v42, v37), v2), v30));
            if (v33 == v35)
            {
              goto LABEL_25;
            }

            if ((v33 & 0x1C) == 0)
            {
              v34 = v35 | 8;
              do
              {
LABEL_43:
                v61 = v9->u8[v34] - v14->u8[v34];
                v24 += v61 * v61 * *(v16 + v34++);
              }

              while (v32 != v34);
              goto LABEL_25;
            }
          }

          else
          {
            v35 = 0;
          }

          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          v56 = v24;
          v57 = v35 - (v33 & 0xFFFFFFFFFFFFFFFCLL);
          v58 = v35 + 8;
          do
          {
            v30.i32[0] = *(v9->i32 + v58);
            v2.i32[0] = *(v14->i32 + v58);
            v59 = vmovl_u8(*v2.i8).u64[0];
            v60 = vsubl_u16(*&vmovl_u8(*v30.i8), v59);
            v59.i32[0] = *(v16 + v58);
            v30 = vmulq_s32(v60, v60);
            v2 = vmovl_u16(*&vmovl_u8(v59));
            v56 = vmlaq_s32(v56, v30, v2);
            v58 += 4;
            v57 += 4;
          }

          while (v57);
          v24 = vaddvq_s32(v56);
          if (v33 == (v33 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }
      }

LABEL_25:
      if ((*v15 + v24) < v23)
      {
        v23 = *v15 + v24;
      }

      v9 = (v9 + *(a1 + 1100));
      v15 = (v15 + v18);
      v16 = (v16 + v19);
      if (v10-- <= 1)
      {
        return (((v23 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }
  }

  v23 = 0x40000000;
  return (((v23 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100011374(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, int32x4_t a9)
{
  v10 = *(a1 + 1544);
  v11 = *(a1 + 1100);
  v12 = *(a1 + 1072);
  v13 = __OFSUB__(a2, v12);
  v14 = a2 - v12;
  if (v14 < 0 == v13)
  {
    v18 = *(a1 + 784) + *(a1 + 1120) * v14;
    v19 = *(a1 + 1056);
    v20 = 0;
    v21 = *(a1 + 1296);
    if (v21 == 3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (*(a1 + 1176))
  {
    v15 = (*(a1 + 1160) + 4 * a2);
    v16 = *v15;
    v17 = v15[1];
  }

  else
  {
    v22 = (*(a1 + 1144) + 2 * a2);
    v16 = *v22;
    v17 = v22[1];
  }

  v23 = v17 - v16;
  if (*(a1 + 2012))
  {
    v16 = a2;
  }

  v24 = *(a1 + 1120) * v16;
  if (*(a1 + 1080) <= a2)
  {
    v25 = *(a1 + 96);
  }

  else
  {
    v25 = *(a1 + 16);
  }

  v18 = v25 + v24;
  v19 = *(a1 + 1056);
  v20 = (v23 - 1) * v11;
  v21 = *(a1 + 1296);
  if (v21 != 3)
  {
LABEL_14:
    if (v21 == 4)
    {
      if (!*(a1 + 2012))
      {
        if (*(a1 + 1176))
        {
          a2 = *(*(a1 + 1160) + 4 * a2);
        }

        else
        {
          a2 = *(*(a1 + 1144) + 2 * a2);
        }
      }
    }

    else
    {
      a2 = 0;
    }
  }

LABEL_19:
  v26 = 0;
  v27 = *(a1 + 1216) + (*(a1 + 1124) * a2);
  v28 = (*(a1 + 1240) + 4 * a2);
  v29 = *(a1 + 1140);
  v30 = vmovl_u8(*v10);
  v31 = vmovl_high_u16(v30);
  v32 = vmovl_u16(*v30.i8);
  while (1)
  {
    v33 = vmovl_u8(*(v18 + v26));
    v34 = vmovl_u16(*v33.i8);
    v35 = vsubq_s32(vmovl_high_u16(v33), v31);
    v36 = vsubq_s32(v34, v32);
    a9.i64[0] = *(v27 + v26);
    v37 = vqtbl1q_s8(a9, xmmword_1000F0C60);
    a9 = vqtbl1q_s8(a9, xmmword_1000F0C50);
    v38 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmulq_s32(v35, v35), a9), vmulq_s32(v36, v36), v37));
    if (v38 <= v19)
    {
      v39 = vsubl_u8(*(v18 + v26 + 8), v10[1]);
      v40 = vmovl_u8(*(v27 + v26 + 8));
      v41 = vmovl_u16(*v40.i8);
      a9 = vmovl_high_u16(v40);
      v42 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmull_high_s16(v39, v39), a9), vmull_s16(*v39.i8, *v39.i8), v41)) + *v28 + v38;
      if (v42 < v29)
      {
        v43 = vsubl_u8(*(v18 + v26 + 16), v10[2]);
        v44 = vmovl_u8(*(v27 + v26 + 16));
        v45 = vmovl_u16(*v44.i8);
        a9 = vmovl_high_u16(v44);
        v46 = vaddvq_s32(vmlaq_s32(vmulq_s32(vmull_high_s16(v43, v43), a9), vmull_s16(*v43.i8, *v43.i8), v45)) + v42;
        if (v46 < v29)
        {
          v47 = vsubl_u8(*(v18 + v26 + 24), v10[3]);
          v48 = vmull_s16(*v47.i8, *v47.i8);
          v49 = vmovl_u8(*(v27 + v26 + 24));
          v50 = vmovl_u16(*v49.i8);
          v51 = vmovl_high_u16(v49);
          v52 = vmulq_s32(vmull_high_s16(v47, v47), v51);
          v51.i32[0] = *(v18 + v26 + 32);
          v9.i32[0] = v10[4].i32[0];
          v53 = vmovl_u8(*v9.i8).u64[0];
          v54 = vsubl_u16(*&vmovl_u8(*v51.i8), v53);
          a9 = vmulq_s32(v54, v54);
          v53.i32[0] = *(v27 + v26 + 32);
          v9 = vmovl_u16(*&vmovl_u8(v53));
          v55 = vaddvq_s32(vmlaq_s32(vmlaq_s32(v52, v48, v50), a9, v9)) + v46;
          if (v55 >= v19)
          {
            v56 = v19;
          }

          else
          {
            v56 = v55;
          }

          if (v55 < v29)
          {
            v29 = v55;
            v19 = v56;
          }
        }
      }
    }

    if (v20 == v26)
    {
      break;
    }

    ++v28;
    v26 += v11;
  }

  return (((v29 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100011638(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 1544);
  v7 = sub_1000011AC(a1, a2, a3);
  v8 = sub_100001FC8(a1, a2, a3);
  if (*(a1 + 1296) == 5)
  {
    v11 = 0;
    v12 = *(a1 + 1104);
    if (v12 < 1)
    {
      return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  else
  {
    v11 = *sub_1000021CC(a1, a2, a3);
    v12 = *(a1 + 1104);
    if (v12 < 1)
    {
      return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  if (v12 < 4)
  {
    v13 = v12;
    goto LABEL_18;
  }

  if (v12 < 0x20)
  {
    v14 = 0;
LABEL_13:
    v13 = v12 & 3;
    v47 = v11;
    v48 = (v8 - 2 * v14 + 2 * v12 - 8);
    v49 = v12 - v14 - 4;
    v50 = (v6 + v49);
    v51 = (v7 + v49);
    v52 = v14 - (v12 & 0x7FFFFFFC);
    do
    {
      v53 = *v51--;
      v9.i32[0] = v53;
      v54 = *v50--;
      v10.i32[0] = v54;
      *v10.i8 = vrev64_s16(*&vmovl_u8(*v10.i8));
      v55 = *v48--;
      v56 = vrev64_s16(v55);
      v9 = vabsq_s32(vmlsl_u16(vmull_u16(vrev64_s16(*&vmovl_u8(*v9.i8)), v56), *v10.i8, v56));
      v47 = vaddq_s32(v9, v47);
      v52 += 4;
    }

    while (v52);
    v11 = vaddvq_s32(v47);
    if ((v12 & 0x7FFFFFFC) == v12)
    {
      return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }

    goto LABEL_18;
  }

  v14 = v12 & 0x7FFFFFE0;
  v15 = 0uLL;
  v16 = v11;
  v17 = (v7 + v12 - 16);
  v18 = (v8 + 2 * v12 - 32);
  v19 = (v6 + v12 - 16);
  v20 = v14;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  do
  {
    v27 = vrev64q_s8(*v17);
    v28 = vextq_s8(v27, v27, 8uLL);
    v29 = vrev64q_s8(v17[-1]);
    v30 = vextq_s8(v29, v29, 8uLL);
    v31 = vrev64q_s8(*v19);
    v32 = vextq_s8(v31, v31, 8uLL);
    v33 = vrev64q_s8(v19[-1]);
    v34 = vextq_s8(v33, v33, 8uLL);
    v35 = vsubl_u8(*v28.i8, *v32.i8);
    v36 = vsubl_high_u8(v28, v32);
    v37 = vsubl_u8(*v30.i8, *v34.i8);
    v38 = vsubl_high_u8(v30, v34);
    v39 = vrev64q_s16(*v18);
    v40 = vextq_s8(v39, v39, 8uLL);
    v41 = vrev64q_s16(v18[1]);
    v42 = vextq_s8(v41, v41, 8uLL);
    v43 = vrev64q_s16(v18[-2]);
    v44 = vextq_s8(v43, v43, 8uLL);
    v45 = vrev64q_s16(v18[-1]);
    v46 = vextq_s8(v45, v45, 8uLL);
    v22 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_high_s16(v36), vmovl_high_u16(v40))), v22);
    v21 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_s16(*v36.i8), vmovl_u16(*v40.i8))), v21);
    v15 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_high_s16(v35), vmovl_high_u16(v42))), v15);
    v16 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_s16(*v35.i8), vmovl_u16(*v42.i8))), v16);
    v26 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_high_s16(v38), vmovl_high_u16(v44))), v26);
    v25 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_s16(*v38.i8), vmovl_u16(*v44.i8))), v25);
    v24 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_high_s16(v37), vmovl_high_u16(v46))), v24);
    v23 = vaddq_s32(vabsq_s32(vmulq_s32(vmovl_s16(*v37.i8), vmovl_u16(*v46.i8))), v23);
    v17 -= 2;
    v18 -= 4;
    v19 -= 2;
    v20 -= 32;
  }

  while (v20);
  v10 = vaddq_s32(v25, v21);
  v9 = vaddq_s32(vaddq_s32(v24, v15), vaddq_s32(v26, v22));
  v11 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v16), v10), v9));
  if (v14 == v12)
  {
    return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  if ((v12 & 0x1C) != 0)
  {
    goto LABEL_13;
  }

  v13 = v12 & 0x1F;
LABEL_18:
  v57 = v13 - 1;
  do
  {
    v58 = (*(v7 + v57) - *(v6 + v57)) * *(v8 + 2 * v57);
    if (v58 < 0)
    {
      v58 = -v58;
    }

    v11 += v58;
    v59 = v57-- + 1;
  }

  while (v59 > 1);
  return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_10001194C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 1544);
  if (*(a1 + 1032))
  {
    v5 = sub_100001234(a1, a2, a3);
    sub_100001334(a1, v5, *(a1 + 1512));
    v6 = *(a1 + 1512);
    v7 = *(a1 + 1104);
    if (v7 >= 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    return ((*(a1 + 1052) * v8 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v6 = sub_1000011AC(a1, a2, a3);
  v7 = *(a1 + 1104);
  if (v7 < 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < 8)
  {
    v8 = 0;
    v9 = v7;
    goto LABEL_18;
  }

  if (v7 >= 0x20)
  {
    v11 = 0uLL;
    v10 = v7 & 0x7FFFFFE0;
    v12 = 0uLL;
    v13 = (v6 + v7 - 16);
    v14 = (v4 + v7 - 16);
    v15 = v10;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    do
    {
      v22 = vrev64q_s8(*v13);
      v23 = vextq_s8(v22, v22, 8uLL);
      v24 = vrev64q_s8(v13[-1]);
      v25 = vextq_s8(v24, v24, 8uLL);
      v26 = vrev64q_s8(*v14);
      v27 = vextq_s8(v26, v26, 8uLL);
      v28 = vrev64q_s8(v14[-1]);
      v29 = vextq_s8(v28, v28, 8uLL);
      v30 = vsubl_u8(*v23.i8, *v27.i8);
      v31 = vsubl_high_u8(v23, v27);
      v32 = vsubl_u8(*v25.i8, *v29.i8);
      v33 = vsubl_high_u8(v25, v29);
      v17 = vmlal_high_s16(v17, v31, v31);
      v16 = vmlal_s16(v16, *v31.i8, *v31.i8);
      v12 = vmlal_high_s16(v12, v30, v30);
      v11 = vmlal_s16(v11, *v30.i8, *v30.i8);
      v21 = vmlal_high_s16(v21, v33, v33);
      v20 = vmlal_s16(v20, *v33.i8, *v33.i8);
      v19 = vmlal_high_s16(v19, v32, v32);
      v18 = vmlal_s16(v18, *v32.i8, *v32.i8);
      v13 -= 2;
      v14 -= 2;
      v15 -= 32;
    }

    while (v15);
    v8 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v18, v11), vaddq_s32(v20, v16)), vaddq_s32(vaddq_s32(v19, v12), vaddq_s32(v21, v17))));
    if (v10 == v7)
    {
      return ((*(a1 + 1052) * v8 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }

    if ((v7 & 0x18) == 0)
    {
      v9 = v7 & 0x1F;
LABEL_18:
      v44 = v9 - 1;
      do
      {
        v8 += (*(v6 + v44) - *(v4 + v44)) * (*(v6 + v44) - *(v4 + v44));
        v45 = v44-- + 1;
      }

      while (v45 > 1);
      return ((*(a1 + 1052) * v8 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v9 = v7 & 7;
  v34 = v8;
  v35 = 0uLL;
  v36 = v7 - v10 - 8;
  v37 = (v4 + v36);
  v38 = (v6 + v36);
  v39 = v10 - (v7 & 0x7FFFFFF8);
  do
  {
    v40 = *v38--;
    v41 = v40;
    v42 = *v37--;
    v43 = vsubl_u8(vrev64_s8(v41), vrev64_s8(v42));
    v35 = vmlal_high_s16(v35, v43, v43);
    v34 = vmlal_s16(v34, *v43.i8, *v43.i8);
    v39 += 8;
  }

  while (v39);
  v8 = vaddvq_s32(vaddq_s32(v34, v35));
  if ((v7 & 0x7FFFFFF8) != v7)
  {
    goto LABEL_18;
  }

  return ((*(a1 + 1052) * v8 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100011B60(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 1544);
  v5 = sub_1000011AC(a1, a2, a3);
  v8 = *(a1 + 1104);
  if (v8 < 1)
  {
    v9 = 0;
    return ((*(a1 + 1052) * v9 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  if (v8 < 4)
  {
    v9 = 0;
    v10 = *(a1 + 1104);
    goto LABEL_16;
  }

  if (v8 < 0x20)
  {
    v9 = 0;
    v11 = 0;
LABEL_11:
    v31 = v9;
    v10 = v8 & 3;
    v32 = v8 - v11 - 4;
    v33 = (v4 + v32);
    v34 = (v5 + v32);
    v35 = v11 - (v8 & 0x7FFFFFFC);
    do
    {
      v36 = *v34--;
      v6.i32[0] = v36;
      v37 = *v33--;
      v7.i32[0] = v37;
      v6 = vmovl_u16(vrev64_s16(*&vmovl_u8(*v6.i8)));
      v7 = vmovl_u16(vrev64_s16(*&vmovl_u8(*v7.i8)));
      v31 = vabaq_u32(v31, v6, v7);
      v35 += 4;
    }

    while (v35);
    v9 = vaddvq_s32(v31);
    if ((v8 & 0x7FFFFFFC) == v8)
    {
      return ((*(a1 + 1052) * v9 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }

    goto LABEL_16;
  }

  v12 = 0uLL;
  v11 = v8 & 0x7FFFFFE0;
  v13 = 0uLL;
  v14 = (v5 + v8 - 16);
  v15 = (v4 + v8 - 16);
  v16 = v11;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  do
  {
    v23 = vrev64q_s8(vabdq_u8(*v14, *v15));
    v24 = vextq_s8(v23, v23, 8uLL);
    v25 = vmovl_u8(*v24.i8);
    v26 = vmovl_high_u8(v24);
    v27 = vrev64q_s8(vabdq_u8(v14[-1], v15[-1]));
    v28 = vextq_s8(v27, v27, 8uLL);
    v29 = vmovl_u8(*v28.i8);
    v30 = vmovl_high_u8(v28);
    v18 = vaddw_high_u16(v18, v26);
    v17 = vaddw_u16(v17, *v26.i8);
    v13 = vaddw_high_u16(v13, v25);
    v12 = vaddw_u16(v12, *v25.i8);
    v22 = vaddw_high_u16(v22, v30);
    v21 = vaddw_u16(v21, *v30.i8);
    v20 = vaddw_high_u16(v20, v29);
    v19 = vaddw_u16(v19, *v29.i8);
    v14 -= 2;
    v15 -= 2;
    v16 -= 32;
  }

  while (v16);
  v7 = vaddq_s32(v21, v17);
  v6 = vaddq_s32(vaddq_s32(v20, v13), vaddq_s32(v22, v18));
  v9 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v19, v12), v7), v6));
  if (v11 == v8)
  {
    return ((*(a1 + 1052) * v9 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  if ((v8 & 0x1C) != 0)
  {
    goto LABEL_11;
  }

  v10 = v8 & 0x1F;
LABEL_16:
  v38 = v10 - 1;
  do
  {
    v39 = *(v5 + v38) - *(v4 + v38);
    if (v39 < 0)
    {
      v39 = *(v4 + v38) - *(v5 + v38);
    }

    v9 += v39;
    v40 = v38-- + 1;
  }

  while (v40 > 1);
  return ((*(a1 + 1052) * v9 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100011D3C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, int32x4_t a6, int32x4_t a7)
{
  v7 = **(a1 + 1240);
  v8 = *(a1 + 1104);
  if (v8 >= 1)
  {
    v9 = *(a1 + 1208);
    if (v8 < 4)
    {
      v10 = *(a1 + 1104);
      goto LABEL_15;
    }

    if (v8 >= 0x20)
    {
      v11 = v8 & 0x7FFFFFE0;
      v12 = 0uLL;
      v13 = **(a1 + 1240);
      v14 = (v9 + 2 * v8 - 32);
      v15 = (a3 + v8 - 16);
      v16 = (a2 + v8 - 16);
      v17 = v11;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v24 = vrev64q_s16(*v14);
        v25 = vextq_s8(v24, v24, 8uLL);
        v26 = vrev64q_s16(v14[1]);
        v27 = vextq_s8(v26, v26, 8uLL);
        v28 = vrev64q_s16(v14[-2]);
        v29 = vextq_s8(v28, v28, 8uLL);
        v30 = vrev64q_s16(v14[-1]);
        v31 = vextq_s8(v30, v30, 8uLL);
        v32 = vrev64q_s8(*v16);
        v33 = vextq_s8(v32, v32, 8uLL);
        v34 = vrev64q_s8(v16[-1]);
        v35 = vextq_s8(v34, v34, 8uLL);
        v36 = vrev64q_s8(*v15);
        v37 = vextq_s8(v36, v36, 8uLL);
        v38 = vrev64q_s8(v15[-1]);
        v39 = vextq_s8(v38, v38, 8uLL);
        v40 = vsubl_u8(*v33.i8, *v37.i8);
        v41 = vmovl_s16(*v40.i8);
        v42 = vmovl_high_s16(v40);
        v43 = vsubl_high_u8(v33, v37);
        v44 = vmovl_s16(*v43.i8);
        v45 = vmovl_high_s16(v43);
        v46 = vsubl_u8(*v35.i8, *v39.i8);
        v47 = vmovl_s16(*v46.i8);
        v48 = vmovl_high_s16(v46);
        v49 = vsubl_high_u8(v35, v39);
        v50 = vmovl_s16(*v49.i8);
        v51 = vmovl_high_s16(v49);
        v19 = vmlaq_s32(v19, vmulq_s32(v45, vmovl_high_u16(v25)), v45);
        v18 = vmlaq_s32(v18, vmulq_s32(v44, vmovl_u16(*v25.i8)), v44);
        v12 = vmlaq_s32(v12, vmulq_s32(v42, vmovl_high_u16(v27)), v42);
        v13 = vmlaq_s32(v13, vmulq_s32(v41, vmovl_u16(*v27.i8)), v41);
        v23 = vmlaq_s32(v23, vmulq_s32(v51, vmovl_high_u16(v29)), v51);
        v22 = vmlaq_s32(v22, vmulq_s32(v50, vmovl_u16(*v29.i8)), v50);
        v21 = vmlaq_s32(v21, vmulq_s32(v48, vmovl_high_u16(v31)), v48);
        v14 -= 4;
        v15 -= 2;
        v16 -= 2;
        v20 = vmlaq_s32(v20, vmulq_s32(v47, vmovl_u16(*v31.i8)), v47);
        v17 -= 32;
      }

      while (v17);
      a7 = vaddq_s32(v23, v19);
      a6 = vaddq_s32(v22, v18);
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v20, v13), a6), vaddq_s32(vaddq_s32(v21, v12), a7)));
      if (v11 == v8)
      {
        return (((v7 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }

      if ((v8 & 0x1C) == 0)
      {
        v10 = v8 & 0x1F;
LABEL_15:
        v63 = v10 - 1;
        do
        {
          v64 = *(a2 + v63) - *(a3 + v63);
          v7 += v64 * *(v9 + 2 * v63) * v64;
          v65 = v63-- + 1;
        }

        while (v65 > 1);
        return (((v7 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = v8 & 3;
    v52 = v7;
    v53 = v8 - v11 - 4;
    v54 = (a3 + v53);
    v55 = (a2 + v53);
    v56 = (v9 - 2 * v11 + 2 * v8 - 8);
    v57 = v11 - (v8 & 0x7FFFFFFC);
    do
    {
      v58 = *v56--;
      v59 = v58;
      v58.i32[0] = *v55--;
      a6.i32[0] = v58.i32[0];
      v60 = vrev64_s16(v59);
      v61 = vrev64_s16(*&vmovl_u8(*a6.i8));
      v58.i32[0] = *v54--;
      a7.i32[0] = v58.i32[0];
      *a7.i8 = vrev64_s16(*&vmovl_u8(*a7.i8));
      v62 = vsubl_u16(v61, *a7.i8);
      a6 = vmlsl_u16(vmull_u16(v61, v60), *a7.i8, v60);
      v52 = vmlaq_s32(v52, a6, v62);
      v57 += 4;
    }

    while (v57);
    v7 = vaddvq_s32(v52);
    if ((v8 & 0x7FFFFFFC) != v8)
    {
      goto LABEL_15;
    }
  }

  return (((v7 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100011FB8(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[276];
  if (v3 < 1)
  {
    v4 = 0;
    return ((a1[263] * v4 + a1[298] / 2) >> a1[299]);
  }

  if (v3 < 8)
  {
    v4 = 0;
    v5 = a1[276];
    goto LABEL_16;
  }

  if (v3 >= 0x20)
  {
    v7 = 0uLL;
    v6 = v3 & 0x7FFFFFE0;
    v8 = 0uLL;
    v9 = (a2 + v3 - 16);
    v10 = (a3 + v3 - 16);
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = vrev64q_s8(*v9);
      v19 = vextq_s8(v18, v18, 8uLL);
      v20 = vrev64q_s8(v9[-1]);
      v21 = vextq_s8(v20, v20, 8uLL);
      v22 = vrev64q_s8(*v10);
      v23 = vextq_s8(v22, v22, 8uLL);
      v24 = vrev64q_s8(v10[-1]);
      v25 = vextq_s8(v24, v24, 8uLL);
      v26 = vsubl_u8(*v19.i8, *v23.i8);
      v27 = vsubl_high_u8(v19, v23);
      v28 = vsubl_u8(*v21.i8, *v25.i8);
      v29 = vsubl_high_u8(v21, v25);
      v13 = vmlal_high_s16(v13, v27, v27);
      v12 = vmlal_s16(v12, *v27.i8, *v27.i8);
      v8 = vmlal_high_s16(v8, v26, v26);
      v7 = vmlal_s16(v7, *v26.i8, *v26.i8);
      v17 = vmlal_high_s16(v17, v29, v29);
      v16 = vmlal_s16(v16, *v29.i8, *v29.i8);
      v15 = vmlal_high_s16(v15, v28, v28);
      v14 = vmlal_s16(v14, *v28.i8, *v28.i8);
      v9 -= 2;
      v10 -= 2;
      v11 -= 32;
    }

    while (v11);
    v4 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v7), vaddq_s32(v16, v12)), vaddq_s32(vaddq_s32(v15, v8), vaddq_s32(v17, v13))));
    if (v6 == v3)
    {
      return ((a1[263] * v4 + a1[298] / 2) >> a1[299]);
    }

    if ((v3 & 0x18) == 0)
    {
      v5 = v3 & 0x1F;
LABEL_16:
      v40 = v5 - 1;
      do
      {
        v4 += (*(a2 + v40) - *(a3 + v40)) * (*(a2 + v40) - *(a3 + v40));
        v41 = v40-- + 1;
      }

      while (v41 > 1);
      return ((a1[263] * v4 + a1[298] / 2) >> a1[299]);
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v5 = v3 & 7;
  v30 = v4;
  v31 = 0uLL;
  v32 = v3 - v6 - 8;
  v33 = (a3 + v32);
  v34 = (a2 + v32);
  v35 = v6 - (v3 & 0x7FFFFFF8);
  do
  {
    v36 = *v34--;
    v37 = v36;
    v38 = *v33--;
    v39 = vsubl_u8(vrev64_s8(v37), vrev64_s8(v38));
    v31 = vmlal_high_s16(v31, v39, v39);
    v30 = vmlal_s16(v30, *v39.i8, *v39.i8);
    v35 += 8;
  }

  while (v35);
  v4 = vaddvq_s32(vaddq_s32(v30, v31));
  if ((v3 & 0x7FFFFFF8) != v3)
  {
    goto LABEL_16;
  }

  return ((a1[263] * v4 + a1[298] / 2) >> a1[299]);
}

uint64_t sub_100012174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1104);
  if (v3 < 1)
  {
    return 0;
  }

  if (v3 < 8)
  {
    v4 = 0;
    v5 = *(a1 + 1104);
    goto LABEL_18;
  }

  if (v3 < 0x20)
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  v8 = 0uLL;
  v7 = v3 & 0x7FFFFFE0;
  v9 = 0uLL;
  v10 = (a2 + v3 - 16);
  v11 = (a3 + v3 - 16);
  v12 = v7;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  do
  {
    v19 = vrev64q_s8(*v10);
    v20 = vextq_s8(v19, v19, 8uLL);
    v21 = vrev64q_s8(v10[-1]);
    v22 = vextq_s8(v21, v21, 8uLL);
    v23 = vrev64q_s8(*v11);
    v24 = vextq_s8(v23, v23, 8uLL);
    v25 = vrev64q_s8(v11[-1]);
    v26 = vextq_s8(v25, v25, 8uLL);
    v27 = vsubl_u8(*v20.i8, *v24.i8);
    v28 = vsubl_high_u8(v20, v24);
    v29 = vsubl_u8(*v22.i8, *v26.i8);
    v30 = vsubl_high_u8(v22, v26);
    v14 = vmlal_high_s16(v14, v28, v28);
    v13 = vmlal_s16(v13, *v28.i8, *v28.i8);
    v9 = vmlal_high_s16(v9, v27, v27);
    v8 = vmlal_s16(v8, *v27.i8, *v27.i8);
    v18 = vmlal_high_s16(v18, v30, v30);
    v17 = vmlal_s16(v17, *v30.i8, *v30.i8);
    v16 = vmlal_high_s16(v16, v29, v29);
    v15 = vmlal_s16(v15, *v29.i8, *v29.i8);
    v10 -= 2;
    v11 -= 2;
    v12 -= 32;
  }

  while (v12);
  v4 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v15, v8), vaddq_s32(v17, v13)), vaddq_s32(vaddq_s32(v16, v9), vaddq_s32(v18, v14))));
  if (v7 == v3)
  {
    goto LABEL_14;
  }

  if ((v3 & 0x18) != 0)
  {
LABEL_11:
    v5 = v3 & 7;
    v31 = v4;
    v32 = 0uLL;
    v33 = v3 - v7 - 8;
    v34 = (a3 + v33);
    v35 = (a2 + v33);
    v36 = v7 - (v3 & 0x7FFFFFF8);
    do
    {
      v37 = *v35--;
      v38 = v37;
      v39 = *v34--;
      v40 = vsubl_u8(vrev64_s8(v38), vrev64_s8(v39));
      v32 = vmlal_high_s16(v32, v40, v40);
      v31 = vmlal_s16(v31, *v40.i8, *v40.i8);
      v36 += 8;
    }

    while (v36);
    v4 = vaddvq_s32(vaddq_s32(v31, v32));
    if ((v3 & 0x7FFFFFF8) == v3)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v5 = v3 & 0x1F;
LABEL_18:
  v41 = v5 - 1;
  do
  {
    v4 += (*(a2 + v41) - *(a3 + v41)) * (*(a2 + v41) - *(a3 + v41));
    v42 = v41-- + 1;
  }

  while (v42 > 1);
LABEL_14:
  if (v4 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100012328(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 1544);
  v7 = sub_1000011AC(a1, a2, a3);
  v8 = sub_100001FC8(a1, a2, a3);
  v9 = *sub_1000021CC(a1, a2, a3);
  v10 = *(a1 + 1104);
  if (v10 >= 2)
  {
    v11 = (v10 - 1);
    do
    {
      v12 = v11 >> 1;
      v13 = *(v7 + v12);
      v14 = (v13 >> 4) - *(v6 + v11);
      v15 = (v13 & 0xF) - *(v6 + v11 - 1);
      v9 += v14 * v14 * (*(v8 + v12) >> 4) + v15 * (*(v8 + v12) & 0xF) * v15;
      v16 = v11 > 2;
      v11 -= 2;
    }

    while (v16);
  }

  return (((v9 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100012418(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 1544);
  if (*(a1 + 1032))
  {
    v5 = sub_100001234(a1, a2, a3);
    sub_100001334(a1, v5, *(a1 + 1512));
    v6 = *(a1 + 1512);
    v7 = *(a1 + 1104);
    if (v7 >= 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v6 = sub_1000011AC(a1, a2, a3);
  v7 = *(a1 + 1104);
  if (v7 < 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = (v7 - 1);
  v9 = 2;
  if (v8 < 2)
  {
    v9 = (v7 - 1);
  }

  v10 = v7 - v9;
  if (v10 < 2)
  {
    v11 = 0;
    v12 = v8;
    do
    {
LABEL_12:
      v24 = *(v6 + (v12 >> 1));
      v25 = (v24 >> 4) - *(v4 + v12);
      v26 = (v24 & 0xF) - *(v4 + v12 - 1);
      v11 += v25 * v25 + v26 * v26;
      v27 = v12 > 2;
      v12 -= 2;
    }

    while (v27);
    return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
  }

  v13 = 0;
  v14 = 0;
  v15 = (v10 >> 1) + 1;
  v12 = v8 - 2 * (v15 & 0x7FFFFFFE);
  v16 = v4 - 3;
  v17 = v15 & 0x7FFFFFFE;
  do
  {
    v18 = *(v6 + (v8 >> 1));
    v19 = *(v6 + ((v8 - 2) >> 1));
    v20 = (v18 >> 4) - *(v4 + v8);
    v21 = (v19 >> 4) - *(v16 + v8 + 1);
    v22 = (v18 & 0xF) - *(v16 + v8 + 2);
    v23 = (v19 & 0xF) - *(v16 + v8);
    v13 += v20 * v20 + v22 * v22;
    v14 += v21 * v21 + v23 * v23;
    v8 -= 4;
    v17 -= 2;
  }

  while (v17);
  v11 = v14 + v13;
  if (v15 != (v15 & 0x7FFFFFFE))
  {
    goto LABEL_12;
  }

  return ((*(a1 + 1052) * v11 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

void sub_100012594(uint64_t a1)
{
  *(a1 + 1608) = 0x1FFFF4000;
  v1 = *(a1 + 1824);
  if (v1 >= *(a1 + 1828))
  {
    *(a1 + 1824) = 0;
    v3 = *(a1 + 1808);
    if (v3 >= 2)
    {
      memset_pattern16((*(a1 + 1800) - 8 * ((v3 >> 1) - 1) + 4 * v3 - 8), &unk_1000F0CE0, 8 * ((v3 >> 1) - 1) + 8);
    }
  }

  else
  {
    if (v1 >= 1)
    {
      v2 = 0;
      do
      {
        *(*(a1 + 1792) + 2 * *(*(a1 + 1832) + 2 * v2++)) = 0x4000;
      }

      while (v2 < *(a1 + 1824));
    }

    *(a1 + 1824) = 0;
  }
}

uint64_t sub_100012628(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 1096);
  v4 = *(a1 + 1368);
  v5 = v3;
  if (*(a1 + 1390) == a2)
  {
    v5 = *(a1 + 1392);
  }

  *a3 = v5;
  return v4 + 2 * v3 * a2;
}

uint64_t sub_100012668(uint64_t a1, unsigned int a2)
{
  result = (*(a1 + 1712))();
  *(*(a1 + 1792) + 2 * a2) = result;
  v5 = *(a1 + 1824);
  if (v5 < *(a1 + 1828))
  {
    v6 = *(a1 + 1832);
    *(a1 + 1824) = v5 + 1;
    *(v6 + 2 * v5) = a2;
  }

  v7 = *(a1 + 1608);
  if (result <= v7 && (result < v7 || *(a1 + 1610) > a2) && *(a1 + 1960) != a2 && *(a1 + 1388) != a2)
  {
    *(a1 + 1608) = result;
    *(a1 + 1610) = a2;
    *(a1 + 1612) = 1;
  }

  return result;
}

uint64_t sub_100012700(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1072);
  v3 = a2 - v2;
  if (a2 >= v2)
  {
    v4 = (a1 + 792);
    v5 = (a1 + 800);
    v6 = (a1 + 808);
    v7 = 6 * v3;
  }

  else
  {
    v3 = a2;
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v3 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v3 = *(*(a1 + 1144) + 2 * a2);
      }
    }

    v7 = *(a1 + 1128) * v3;
    v8 = *(a1 + 1080);
    v9 = v8 <= a2;
    v4 = (a1 + 144);
    if (v8 <= a2)
    {
      v5 = (a1 + 104);
    }

    else
    {
      v4 = (a1 + 136);
      v5 = (a1 + 32);
    }

    if (v9)
    {
      v6 = (a1 + 120);
    }

    else
    {
      v6 = (a1 + 48);
    }
  }

  v10 = *v6;
  v11 = *v5;
  v12 = *v4;
  v13 = 4 * v3;
  v14 = (v10 + v13);
  if (!v10)
  {
    v14 = 0;
  }

  v15 = *(a1 + 1552);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (a2 >= v2)
  {
    v18 = 1;
  }

  else if (*(a1 + 1176))
  {
    v18 = *(*(a1 + 1160) + 4 * a2 + 4) - *(*(a1 + 1160) + 4 * a2);
    if (v18 < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = *(*(a1 + 1144) + 2 * a2 + 2) - *(*(a1 + 1144) + 2 * a2);
    if (v18 < 1)
    {
LABEL_28:
      v29 = 0x40000000;
      return ((*(a1 + 1052) * v29 + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  v19 = v7;
  v20 = (v11 + v13);
  v21 = vshr_n_u32(v16, 8uLL);
  v22 = *&v16 & 0xFF00FF00FF00FFLL;
  v23 = *&v21 & 0xFFFF00FFFFFF00FFLL;
  v24 = vshrq_n_u32(v17, 8uLL);
  v25 = *&v17 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v26 = *&v24 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  v27 = v18 + 1;
  v28 = (v12 + 4 * v19 + 8);
  v29 = 0x40000000;
  do
  {
    v32 = *v20++;
    v33.i16[0] = v28[-1].i64[1];
    v33.i16[1] = BYTE2(v28[-1].i64[1]);
    v33.i16[2] = BYTE4(v28[-1].i64[1]);
    v33.i16[3] = BYTE6(v28[-1].i64[1]);
    v34 = vmla_s32(vmul_s32(v33, v22), (*&vshr_n_u32(v28[-1].u64[1], 8uLL) & 0xFFFF00FFFFFF00FFLL), v23);
    v35 = *(a1 + 1572) + v32 - vsra_n_u32(vdup_lane_s32(vshr_n_u32(v34, 0xFuLL), 1), v34, 0xFuLL).u32[0];
    if (v35 <= *(a1 + 1056))
    {
      v30.i16[0] = v28->u8[0];
      v30.i16[1] = BYTE2(v28->u32[0]);
      v30.i16[2] = BYTE4(v28->i64[0]);
      v30.i16[3] = BYTE6(v28->i64[0]);
      v30.i16[4] = v28->i64[1];
      v30.i16[5] = BYTE2(v28->i64[1]);
      v30.i16[6] = BYTE12(*v28);
      v30.i16[7] = BYTE14(*v28);
      v31 = *v14 + *(a1 + 1576) + v35 - vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v30, v25), (*&vshrq_n_u32(*v28, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v26), 0xFuLL));
    }

    else
    {
      v31 = *(a1 + 1060) + v35;
    }

    ++v14;
    if (v31 < v29)
    {
      v29 = v31;
    }

    --v27;
    v28 = (v28 + 24);
  }

  while (v27 > 1);
  return ((*(a1 + 1052) * v29 + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_1000128F8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1072);
  v3 = a2 - v2;
  if (a2 >= v2)
  {
    v4 = (a1 + 792);
    v5 = (a1 + 800);
    v6 = 6 * v3;
  }

  else
  {
    v3 = a2;
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v3 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v3 = *(*(a1 + 1144) + 2 * a2);
      }
    }

    v6 = *(a1 + 1128) * v3;
    v4 = (a1 + 136);
    v5 = (a1 + 32);
    if (*(a1 + 1080) <= a2)
    {
      v4 = (a1 + 144);
      v5 = (a1 + 104);
    }
  }

  v7 = *v5;
  v8 = *v4;
  v9 = *(a1 + 1552);
  if (a2 >= v2)
  {
    v10 = 1;
  }

  else if (*(a1 + 1176))
  {
    v10 = *(*(a1 + 1160) + 4 * a2 + 4) - *(*(a1 + 1160) + 4 * a2);
    if (v10 < 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = *(*(a1 + 1144) + 2 * a2 + 2) - *(*(a1 + 1144) + 2 * a2);
    if (v10 < 1)
    {
LABEL_25:
      v17 = 0x40000000;
      return (((*(a1 + 1568) + v17) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  v11 = (v8 + 4 * v6);
  v12 = (v7 + 4 * v3);
  v13.i16[0] = *v9;
  v13.i16[1] = BYTE2(*v9);
  v13.i16[2] = BYTE4(*v9);
  v13.i16[3] = BYTE6(*v9);
  v13.i16[4] = *(v9 + 8);
  v13.i16[5] = BYTE2(*(v9 + 8));
  v13.i16[6] = BYTE12(*v9);
  v13.i16[7] = BYTE14(*v9);
  v14 = *&vshrq_n_u32(*v9, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
  v15.i16[0] = *(v9 + 16);
  v15.i16[1] = BYTE2(*(v9 + 16));
  v15.i16[2] = BYTE4(*(v9 + 16));
  v15.i16[3] = BYTE6(*(v9 + 16));
  v16 = *&vshr_n_u32(*(v9 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL;
  if (v10 >= 8)
  {
    v19 = v3;
    v20 = v10;
    v21 = v10 & 0x7FFFFFF8;
    v10 -= v21;
    v12 += v21;
    v85 = vdupq_lane_s32(*&v14, 0);
    v86 = vdupq_lane_s32(*v13.i8, 0);
    v83 = vdupq_lane_s32(*&v14, 1);
    v84 = vdupq_lane_s32(*v13.i8, 1);
    v22 = vdupq_laneq_s32(v13, 2);
    v23 = vdupq_laneq_s32(v14, 2);
    v18 = (v11 + 24 * v21);
    v81 = v15;
    v82 = v13;
    v24 = vdupq_laneq_s32(v13, 3);
    v79 = v16;
    v80 = v14;
    v25 = vdupq_laneq_s32(v14, 3);
    v26 = vdupq_lane_s32(v15, 0);
    v27 = (v7 + 4 * v19 + 16);
    v28 = vdupq_lane_s32(v16, 0);
    v29.i64[0] = 0x4000000040000000;
    v29.i64[1] = 0x4000000040000000;
    v30 = vdupq_lane_s32(v15, 1);
    v31 = v21;
    v32 = vdupq_lane_s32(v16, 1);
    v33.i64[0] = 0x4000000040000000;
    v33.i64[1] = 0x4000000040000000;
    do
    {
      v34 = v11[4];
      v35 = v11[5];
      v37 = v11[2];
      v36 = v11[3];
      v38 = *v11;
      v39 = v11[1];
      v41 = v11[10];
      v40 = v11[11];
      v43 = v11[8];
      v42 = v11[9];
      v44 = v11[6];
      v45 = v11[7];
      v46.i64[0] = vextq_s8(vtrn2q_s32(v39, *v11), *v11, 4uLL).u64[0];
      v47.i64[0] = vzip2q_s32(*v11, vuzp1q_s32(*v11, v37)).u64[0];
      v48.i32[1] = HIDWORD(v11[2].i64[0]);
      v48.i32[0] = HIDWORD(*v11);
      v49 = vtrn1q_s32(vuzp1q_s32(v36, v36), v34);
      v50.i64[0] = vzip2q_s32(v44, vuzp1q_s32(v44, v43)).u64[0];
      v38.i32[1] = v11[1].i64[1];
      v51.i32[0] = v44.i32[0];
      LODWORD(v52) = v11[3].i64[1];
      HIDWORD(v52) = v35.i32[0];
      v51.i32[1] = v11[7].i64[1];
      LODWORD(v53) = v11[9].i64[1];
      HIDWORD(v53) = v40.i32[0];
      v54 = vextq_s8(v36, v35, 8uLL);
      v47.i64[1] = v52;
      v55 = vtrn1q_s32(vuzp1q_s32(v34, v34), v35);
      v35.i32[2] = HIDWORD(v11[4].i64[0]);
      v50.i64[1] = v53;
      v34.i32[2] = HIDWORD(v11[3].i64[0]);
      v38.i64[1] = v49.i64[1];
      v48.i64[1] = vzip2q_s32(v36, v54).i64[1];
      v51.i64[1] = vtrn1q_s32(vuzp1q_s32(v42, v42), v41).i64[1];
      v56.i32[1] = HIDWORD(v11[8].i64[0]);
      v57 = vextq_s8(v42, v40, 8uLL);
      v56.i32[0] = v44.i32[3];
      v58 = vtrn1q_s32(vuzp1q_s32(v41, v41), v40);
      v40.i32[2] = HIDWORD(v11[10].i64[0]);
      v41.i32[2] = HIDWORD(v11[9].i64[0]);
      v44.i64[0] = vextq_s8(vtrn2q_s32(v45, v44), v44, 4uLL).u64[0];
      v56.i64[1] = vzip2q_s32(v42, v57).i64[1];
      v46.i64[1] = v34.i64[1];
      v49.i32[0] = v39.i32[0];
      v49.i32[1] = v11[2].i64[1];
      v49.i64[1] = v55.i64[1];
      v59.i32[0] = v45.i32[0];
      v59.i32[1] = v11[8].i64[1];
      v59.i64[1] = v58.i64[1];
      v44.i64[1] = v41.i64[1];
      v37.i64[0] = vextq_s8(vtrn2q_s32(v37, v39), v39, 4uLL).u64[0];
      v37.i64[1] = v35.i64[1];
      v35.i64[0] = vextq_s8(vtrn2q_s32(v43, v45), v45, 4uLL).u64[0];
      v35.i64[1] = v40.i64[1];
      v60 = vshrq_n_u32(v38, 8uLL);
      v38.i16[0] = v11->u8[0];
      v38.i16[1] = BYTE2(v11->u32[0]);
      v38.i16[2] = v11[1].i64[1];
      v38.i16[3] = BYTE2(v11[1].i64[1]);
      v38.i64[1] &= 0xFF00FF00FF00FFuLL;
      v61 = vmlaq_s32(vmulq_s32(v38, v86), (*&v60 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v85);
      v62 = vshrq_n_u32(v51, 8uLL);
      v51.i16[0] = *&v11[6];
      v51.i16[1] = BYTE2(*&v11[6]);
      v51.i16[2] = v11[7].i64[1];
      v51.i16[3] = BYTE2(v11[7].i64[1]);
      v51.i64[1] &= 0xFF00FF00FF00FFuLL;
      v63 = vmlaq_s32(vmulq_s32(v51, v86), (*&v62 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v85);
      v64 = vshrq_n_u32(v44, 8uLL);
      v44.i64[0] &= 0xFF00FF00FF00FFuLL;
      v44.i16[4] = v41.u8[8];
      v44.i16[5] = BYTE6(v11[9].i64[0]);
      v44.i16[6] = BYTE12(*&v11[10]);
      v44.i16[7] = BYTE14(*&v11[10]);
      v65 = vshrq_n_u32(v48, 8uLL);
      v48.i16[0] = v48.u8[0];
      v48.i16[1] = BYTE14(*v11);
      v48.i16[2] = v48.u8[4];
      v48.i16[3] = BYTE6(v11[2].i64[0]);
      v48.i64[1] &= 0xFF00FF00FF00FFuLL;
      v66 = vmlaq_s32(vmulq_s32(v48, v24), (*&v65 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v25);
      v67 = vshrq_n_u32(v49, 8uLL);
      v49.i16[0] = *&v11[1];
      v49.i16[1] = BYTE2(*&v11[1]);
      v49.i16[2] = v11[2].i64[1];
      v49.i16[3] = BYTE2(v11[2].i64[1]);
      v49.i64[1] = v55.i64[1] & 0xFF00FF00FF00FFLL;
      v68 = vmlaq_s32(vmulq_s32(v49, v26), (*&v67 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v28);
      v69 = vshrq_n_u32(v56, 8uLL);
      v56.i16[0] = BYTE12(*&v11[6]);
      v56.i16[1] = BYTE14(*&v11[6]);
      v56.i16[2] = v56.u8[4];
      v56.i16[3] = BYTE6(v11[8].i64[0]);
      v56.i64[1] &= 0xFF00FF00FF00FFuLL;
      v70 = vmlaq_s32(vmulq_s32(v56, v24), (*&v69 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v25);
      v71 = vshrq_n_u32(v59, 8uLL);
      v59.i16[0] = v45.u8[0];
      v59.i16[1] = v45.u8[2];
      v59.i16[2] = v11[8].i64[1];
      v59.i16[3] = BYTE2(v11[8].i64[1]);
      v59.i64[1] = v58.i64[1] & 0xFF00FF00FF00FFLL;
      v29 = vminq_s32(vsubq_s32(v27[-1], vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v61, 0xFuLL), vmlaq_s32(vmulq_s32((*&v46 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v84), (*&vshrq_n_u32(v46, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v83), 0xFuLL), vmlaq_s32(vmulq_s32((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v22), (*&vshrq_n_u32(v47, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v23), 0xFuLL), v66, 0xFuLL), v68, 0xFuLL), vmlaq_s32(vmulq_s32((*&v37 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v30), (*&vshrq_n_u32(v37, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v32), 0xFuLL)), v29);
      v33 = vminq_s32(vsubq_s32(*v27, vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v63, 0xFuLL), vmlaq_s32(vmulq_s32(v44, v84), (*&v64 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v83), 0xFuLL), vmlaq_s32(vmulq_s32((*&v50 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v22), (*&vshrq_n_u32(v50, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v23), 0xFuLL), v70, 0xFuLL), vmlaq_s32(vmulq_s32(v59, v26), (*&v71 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v28), 0xFuLL), vmlaq_s32(vmulq_s32((*&v35 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v30), (*&vshrq_n_u32(v35, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v32), 0xFuLL)), v33);
      v27 += 2;
      v11 += 12;
      v31 -= 8;
    }

    while (v31);
    v17 = vminvq_s32(vminq_s32(v29, v33));
    v15 = v81;
    v13 = v82;
    v16 = v79;
    v14 = v80;
    if (v21 == v20)
    {
      return (((*(a1 + 1568) + v17) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  else
  {
    v17 = 0x40000000;
    v18 = v11;
  }

  v72 = v10 + 1;
  do
  {
    v73.i16[0] = v18->u8[0];
    v73.i16[1] = BYTE2(v18->u32[0]);
    v73.i16[2] = BYTE4(v18->i64[0]);
    v73.i16[3] = BYTE6(v18->i64[0]);
    v73.i16[4] = v18->i64[1];
    v73.i16[5] = BYTE2(v18->i64[1]);
    v73.i16[6] = BYTE12(*v18);
    v73.i16[7] = BYTE14(*v18);
    v74.i16[0] = v18[1].i64[0];
    v74.i16[1] = BYTE2(v18[1].i64[0]);
    v74.i16[2] = BYTE4(v18[1].i64[0]);
    v74.i16[3] = BYTE6(v18[1].i64[0]);
    v75 = vshr_n_u32(vmla_s32(vmul_s32(v74, v15), (*&vshr_n_u32(*v18[1].i8, 8uLL) & 0xFFFF00FFFFFF00FFLL), v16), 0xFuLL);
    v76 = *v12++;
    v77 = v76 - (vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v73, v13), (*&vshrq_n_u32(*v18, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v14), 0xFuLL)) + v75.i32[0]) - v75.i32[1];
    if (v77 < v17)
    {
      v17 = v77;
    }

    --v72;
    v18 = (v18 + 24);
  }

  while (v72 > 1);
  return (((*(a1 + 1568) + v17) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100012DA0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1072);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 != v3)
  {
    v5 = *(a1 + 1176);
    v6 = v5 == 0;
    if (*(a1 + 2012))
    {
      v7 = a2;
    }

    else if (v5)
    {
      v6 = 0;
      v7 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v7 = *(*(a1 + 1144) + 2 * a2);
      v6 = 1;
    }

    v14 = 144;
    if (*(a1 + 1080) > a2)
    {
      v14 = 136;
    }

    v15 = 104;
    if (*(a1 + 1080) > a2)
    {
      v15 = 32;
    }

    if (v6)
    {
      v13 = *(*(a1 + 1144) + 2 * a2 + 2) - *(*(a1 + 1144) + 2 * a2);
      if (v13 < 1)
      {
LABEL_14:
        v16 = 0x40000000;
        return (((*(a1 + 1568) + v16) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
      }
    }

    else
    {
      v13 = *(*(a1 + 1160) + 4 * a2 + 4) - *(*(a1 + 1160) + 4 * a2);
      if (v13 < 1)
      {
        goto LABEL_14;
      }
    }

    v17 = *(a1 + 1552);
    v8 = *(a1 + v14) + 4 * (*(a1 + 1128) * v7);
    v9 = (*(a1 + v15) + 4 * v7);
    v12 = v17[1].u32[0];
    v11 = *v17;
    goto LABEL_17;
  }

  v8 = *(a1 + 792) + 24 * v4;
  v9 = (*(a1 + 800) + 4 * v4);
  v10 = *(a1 + 1552);
  v11 = *v10;
  v12 = v10[1].u32[0];
  v13 = 1;
LABEL_17:
  v18 = vshr_n_u32(v11, 8uLL);
  v19 = *&v11 & 0xFF00FF00FF00FFLL;
  v20 = *&v18 & 0xFFFF00FFFFFF00FFLL;
  v21 = v12 & 0xFF00FF;
  v22 = (v12 >> 8) & 0xFF00FF;
  if (v13 >= 9)
  {
    v23 = v13 & 7;
    if (!v23)
    {
      v23 = 8;
    }

    v24 = v13 - v23;
    v13 -= v24;
    v25 = (v9 + 4 * v24);
    v26 = vdupq_lane_s32(v19, 0);
    v27 = vdupq_lane_s32(v20, 0);
    v28 = vdupq_lane_s32(v19, 1);
    v29 = vdupq_lane_s32(v20, 1);
    v30 = vdupq_n_s32(v21);
    v31 = v8 + 24 * v24;
    v32 = vdupq_n_s32(v22);
    v33 = v9 + 1;
    v34.i64[0] = 0x4000000040000000;
    v34.i64[1] = 0x4000000040000000;
    v35.i64[0] = 0x4000000040000000;
    v35.i64[1] = 0x4000000040000000;
    do
    {
      v37 = *(v8 + 48);
      v36 = *(v8 + 64);
      v38 = *v8;
      v40 = *(v8 + 144);
      v39 = *(v8 + 160);
      v41 = *(v8 + 96);
      v42.i64[0] = vextq_s8(vtrn2q_s32(*(v8 + 16), *v8), *v8, 4uLL).u64[0];
      v43.i64[0] = vzip2q_s32(*v8, vuzp1q_s32(*v8, *(v8 + 32))).u64[0];
      v44 = vtrn1q_s32(vuzp1q_s32(v37, v37), v36);
      v38.i32[1] = *(v8 + 24);
      v45.i64[0] = vextq_s8(vtrn2q_s32(*(v8 + 112), v41), v41, 4uLL).u64[0];
      v46.i64[0] = vzip2q_s32(v41, vuzp1q_s32(v41, *(v8 + 128))).u64[0];
      v41.i32[1] = *(v8 + 120);
      v47 = vtrn1q_s32(vuzp1q_s32(v40, v40), v39);
      v36.i32[2] = HIDWORD(*(v8 + 48));
      v42.i64[1] = v36.i64[1];
      v39.i32[2] = HIDWORD(*(v8 + 144));
      v45.i64[1] = v39.i64[1];
      v38.i64[1] = v44.i64[1];
      v37.i32[3] = *(v8 + 80);
      v43.i64[1] = v37.i64[1];
      v41.i64[1] = v47.i64[1];
      v40.i32[3] = *(v8 + 176);
      v46.i64[1] = v40.i64[1];
      v48 = vshrq_n_u32(v38, 8uLL);
      v38.i16[0] = *v8;
      v38.i16[1] = BYTE2(*v8);
      v38.i16[2] = *(v8 + 24);
      v38.i16[3] = BYTE2(*(v8 + 24));
      v38.i64[1] = v44.i64[1] & 0xFF00FF00FF00FFLL;
      v49 = vshrq_n_u32(v41, 8uLL);
      v41.i16[0] = *(v8 + 96);
      v41.i16[1] = BYTE2(*(v8 + 96));
      v41.i16[2] = *(v8 + 120);
      v41.i16[3] = BYTE2(*(v8 + 120));
      v41.i64[1] = v47.i64[1] & 0xFF00FF00FF00FFLL;
      v50 = vshrq_n_u32(v45, 8uLL);
      v45.i64[0] &= 0xFF00FF00FF00FFuLL;
      v45.i32[2] = v39.i32[2] & 0xFF00FF;
      v45.i16[6] = BYTE12(*(v8 + 160));
      v45.i16[7] = BYTE14(*(v8 + 160));
      v34 = vminq_s32(vsubq_s32(v33[-1], vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v38, v26), (*&v48 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v27), 0xFuLL), vmlaq_s32(vmulq_s32((*&v42 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v28), (*&vshrq_n_u32(v42, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v29), 0xFuLL), vmlaq_s32(vmulq_s32((*&v43 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v30), (*&vshrq_n_u32(v43, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v32), 0xFuLL)), v34);
      v35 = vminq_s32(vsubq_s32(*v33, vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v41, v26), (*&v49 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v27), 0xFuLL), vmlaq_s32(vmulq_s32(v45, v28), (*&v50 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v29), 0xFuLL), vmlaq_s32(vmulq_s32((*&v46 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v30), (*&vshrq_n_u32(v46, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v32), 0xFuLL)), v35);
      v33 += 2;
      v8 += 192;
      v24 -= 8;
    }

    while (v24);
    v16 = vminvq_s32(vminq_s32(v34, v35));
    v9 = v25;
    v8 = v31;
  }

  else
  {
    v16 = 0x40000000;
  }

  v51 = v13 + 1;
  v52 = (v8 + 8);
  do
  {
    v53 = v9->i32[0];
    v9 = (v9 + 4);
    v54.i16[0] = *(v52 - 1);
    v54.i16[1] = BYTE2(*(v52 - 1));
    v54.i16[2] = BYTE4(*(v52 - 1));
    v54.i16[3] = BYTE6(*(v52 - 1));
    v55 = vmla_s32(vmul_s32(v54, v19), (*&vshr_n_u32(*(v52 - 2), 8uLL) & 0xFFFF00FFFFFF00FFLL), v20);
    v56 = v53 - (vsra_n_u32(vdup_lane_s32(vshr_n_u32(v55, 0xFuLL), 1), v55, 0xFuLL).u32[0] + (((*v52 & 0xFF00FF) * v21 + ((*v52 >> 8) & 0xFF00FF) * v22) >> 15));
    if (v56 < v16)
    {
      v16 = v56;
    }

    --v51;
    v52 += 6;
  }

  while (v51 > 1);
  return (((*(a1 + 1568) + v16) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_1000130F0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1072) <= a2)
  {
    v5 = 1;
    if (*(a1 + 2012))
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (*(a1 + 1176))
  {
    v2 = (*(a1 + 1160) + 4 * a2);
    v4 = *v2;
    v3 = v2[1];
  }

  else
  {
    v6 = (*(a1 + 1144) + 2 * a2);
    v4 = *v6;
    v3 = v6[1];
  }

  v5 = v3 - v4;
  if (!*(a1 + 2012))
  {
LABEL_8:
    if (*(a1 + 1176))
    {
      a2 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      a2 = *(*(a1 + 1144) + 2 * a2);
    }
  }

LABEL_11:
  if (v5 < 1)
  {
    v32 = 0x40000000;
  }

  else
  {
    v7 = *(a1 + 1592);
    v8 = *(a1 + 1552);
    v9 = (*(a1 + 1232) + 4 * (*(a1 + 1128) * a2));
    v10 = (*(a1 + 160) + 4 * a2);
    v11 = (*(a1 + 192) + 72 * a2);
    v12 = v8[1];
    v13 = v8[2];
    v14 = v8[3];
    v15 = v8[4];
    v16 = v8[5];
    v17 = v8[6];
    v18 = v8[8];
    v19.i16[0] = v17;
    v19.i16[1] = BYTE2(v17);
    v19.i16[2] = BYTE1(v17);
    v19.i16[3] = v17 >> 8 >> 16;
    v19.i16[4] = v8[7];
    v19.i16[5] = BYTE2(v8[7]);
    v19.i16[6] = BYTE1(v8[7]);
    v19.i16[7] = (v8[7] >> 8 >> 16);
    v20.i16[0] = v15;
    v20.i16[1] = BYTE2(v15);
    v20.i16[2] = BYTE1(v15);
    v20.i16[3] = v15 >> 8 >> 16;
    v20.i16[4] = v16;
    v20.i16[5] = BYTE2(v16);
    v20.i16[6] = BYTE1(v16);
    v21.i16[0] = v13;
    v21.i16[1] = BYTE2(v13);
    v21.i16[2] = BYTE1(v13);
    v21.i16[3] = v13 >> 8 >> 16;
    v21.i16[4] = v14;
    v21.i16[5] = BYTE2(v14);
    v21.i16[6] = BYTE1(v14);
    v22.i16[0] = *v8;
    v22.i16[1] = BYTE2(*v8);
    v22.i16[2] = BYTE1(*v8);
    v22.i16[3] = (*v8 >> 8 >> 16);
    v22.i16[4] = v12;
    v22.i16[5] = BYTE2(v12);
    v22.i16[6] = BYTE1(v12);
    v22.i16[7] = v12 >> 8 >> 16;
    v23 = v18 & 0xFF00FF;
    v24 = (v18 >> 8) & 0xFF00FF;
    v26 = v7[2];
    v25 = v7[3];
    v28 = *v7;
    v27 = v7[1];
    v29 = v7[4].i32[0];
    v30 = v7[4].i32[1];
    v31 = v5 + 1;
    v32 = 0x40000000;
    do
    {
      v33 = *v10++;
      v34 = v9[1];
      v35 = v9[3];
      v36 = v9[5];
      v37 = v9[6];
      v38 = v9[7];
      v39.i16[0] = *v9;
      v39.i16[1] = BYTE2(*v9);
      v39.i16[2] = BYTE1(*v9);
      v39.i16[3] = (*v9 >> 8 >> 16);
      v39.i16[4] = v34;
      v39.i16[5] = BYTE2(v34);
      v39.i16[6] = BYTE1(v34);
      v39.i16[7] = v34 >> 8 >> 16;
      v40.i16[0] = v9[2];
      v40.i16[1] = BYTE2(v9[2]);
      v40.i16[2] = BYTE1(v9[2]);
      v40.i16[3] = (v9[2] >> 8 >> 16);
      v40.i16[4] = v35;
      v40.i16[5] = BYTE2(v35);
      v40.i16[6] = BYTE1(v35);
      v40.i16[7] = v35 >> 8 >> 16;
      v41.i16[0] = v37;
      v41.i16[1] = BYTE2(v37);
      v41.i16[2] = BYTE1(v37);
      v41.i16[3] = v37 >> 8 >> 16;
      v41.i16[4] = v38;
      v41.i16[5] = BYTE2(v38);
      v41.i16[6] = BYTE1(v38);
      v41.i16[7] = v38 >> 8 >> 16;
      v42.i16[0] = v9[4];
      v42.i16[1] = BYTE2(v9[4]);
      v42.i16[2] = BYTE1(v9[4]);
      v42.i16[3] = (v9[4] >> 8 >> 16);
      v42.i16[4] = v36;
      v42.i16[5] = BYTE2(v36);
      v42.i16[6] = BYTE1(v36);
      v42.i16[7] = v36 >> 8 >> 16;
      v21.i16[7] = v14 >> 8 >> 16;
      v20.i16[7] = v16 >> 8 >> 16;
      v43 = vaddvq_s32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(v39, v28), 0x10uLL), vmulq_s32(v42, v26), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(v40, v27), 0x10uLL), vmulq_s32(v41, v25), 0x10uLL))) + ((v29 * (v9[8] & 0xFF00FFu)) >> 16) + v33 - (vaddvq_s32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(v22, *v11), 0xFuLL), vmulq_s32(v20, v11[2]), 0xFuLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(v21, v11[1]), 0xFuLL), vmulq_s32(v19, v11[3]), 0xFuLL))) + ((v11[4].i32[0] * v23) >> 15) + ((v11[4].i32[1] * v24) >> 15)) + ((v30 * ((v9[8] >> 8) & 0xFF00FFu)) >> 16);
      if (v43 < v32)
      {
        v32 = v43;
      }

      --v31;
      v11 = (v11 + 72);
      v9 += 9;
    }

    while (v31 > 1);
  }

  return (((v32 >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_1000133D4(uint64_t a1, unsigned int a2, int a3)
{
  if (!*(a1 + 2012))
  {
    if (*(a1 + 1176))
    {
      v3 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v3 = *(*(a1 + 1144) + 2 * a2);
    }

    a2 = v3 + a3;
  }

  v4 = (*(a1 + 192) + 72 * a2);
  v5 = (*(a1 + 1232) + 4 * (*(a1 + 1128) * a2));
  v6 = *(a1 + 1552);
  v7 = *(a1 + 1592);
  v8 = *(*(a1 + 160) + 4 * a2);
  v9 = *v6;
  v10 = v6[1];
  v11 = *v6 >> 8;
  v13 = v6[2];
  v12 = v6[3];
  v14 = v6[4];
  v15 = v6[5];
  v16 = v6[6];
  v17 = v6[7];
  LODWORD(v6) = v6[8];
  v18.i32[0] = v9 & 0xFF00FF;
  v18.i32[1] = v11 & 0xFF00FF;
  v18.i32[2] = v10 & 0xFF00FF;
  v18.i16[6] = BYTE1(v10);
  v18.i16[7] = v10 >> 8 >> 16;
  v19.i32[0] = v13 & 0xFF00FF;
  v19.i16[2] = BYTE1(v13);
  v19.i16[3] = v13 >> 8 >> 16;
  v19.i32[2] = v12 & 0xFF00FF;
  v19.i16[6] = BYTE1(v12);
  v19.i16[7] = v12 >> 8 >> 16;
  v20.i32[0] = v16 & 0xFF00FF;
  v20.i16[2] = BYTE1(v16);
  v20.i16[3] = v16 >> 8 >> 16;
  v20.i32[2] = v17 & 0xFF00FF;
  v20.i16[6] = BYTE1(v17);
  v20.i16[7] = v17 >> 8 >> 16;
  v21.i32[0] = v14 & 0xFF00FF;
  v21.i16[2] = BYTE1(v14);
  v21.i16[3] = v14 >> 8 >> 16;
  v21.i32[2] = v15 & 0xFF00FF;
  v21.i16[6] = BYTE1(v15);
  v21.i16[7] = v15 >> 8 >> 16;
  v22 = vmulq_s32(v21, v4[2]);
  v23 = vmulq_s32(v20, v4[3]);
  v24 = vshrq_n_u32(vmulq_s32(v18, *v4), 0xFuLL);
  v25 = vshrq_n_u32(vmulq_s32(v19, v4[1]), 0xFuLL);
  v26 = v4[4].i32[1];
  LODWORD(v4) = v4[4].i32[0] * (v6 & 0xFF00FF);
  LODWORD(v6) = v26 * ((v6 >> 8) & 0xFF00FF);
  v27 = v5[1];
  v29 = v5[2];
  v28 = v5[3];
  v30 = v5[4];
  v31 = v5[5];
  v32 = v5[6];
  v33 = v5[7];
  v34.i16[0] = *v5;
  v34.i16[1] = BYTE2(*v5);
  v34.i32[1] = (*v5 >> 8) & 0xFF00FF;
  v34.i16[4] = v27;
  v34.i16[5] = BYTE2(v27);
  v34.i16[6] = BYTE1(v27);
  v34.i16[7] = v27 >> 8 >> 16;
  v35.i32[0] = v29 & 0xFF00FF;
  v35.i16[2] = BYTE1(v29);
  v35.i16[3] = v29 >> 8 >> 16;
  v35.i32[2] = v28 & 0xFF00FF;
  v35.i16[6] = BYTE1(v28);
  v35.i16[7] = v28 >> 8 >> 16;
  v18.i16[0] = v32;
  v18.i16[1] = BYTE2(v32);
  v18.i16[2] = BYTE1(v32);
  v18.i16[3] = v32 >> 8 >> 16;
  v18.i16[4] = v33;
  v18.i16[5] = BYTE2(v33);
  v18.i16[6] = BYTE1(v33);
  v18.i16[7] = v33 >> 8 >> 16;
  v19.i32[0] = v30 & 0xFF00FF;
  v19.i16[2] = BYTE1(v30);
  v19.i16[3] = v30 >> 8 >> 16;
  v19.i32[2] = v31 & 0xFF00FF;
  v19.i16[6] = BYTE1(v31);
  v19.i16[7] = v31 >> 8 >> 16;
  return ((((vaddvq_s32(vaddq_s32(vsraq_n_u32(vshrq_n_u32(vmulq_s32(v34, *v7), 0x10uLL), vmulq_s32(v19, v7[2]), 0x10uLL), vsraq_n_u32(vshrq_n_u32(vmulq_s32(v35, v7[1]), 0x10uLL), vmulq_s32(v18, v7[3]), 0x10uLL))) + ((v7[4].i32[0] * (v5[8] & 0xFF00FFu)) >> 16) + v8 - (vaddvq_s32(vaddq_s32(vsraq_n_u32(v24, v22, 0xFuLL), vsraq_n_u32(v25, v23, 0xFuLL))) + (v4 >> 15) + (v6 >> 15)) + ((v7[4].i32[1] * ((v5[8] >> 8) & 0xFF00FFu)) >> 16)) >> (*(a1 + 1196) - 2)) * *(a1 + 1052) + *(a1 + 1192) / 2) >> (*(a1 + 1196) + 2));
}

uint64_t sub_100013620(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    v5 = a2;
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v6 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v6 = *(*(a1 + 1144) + 2 * a2);
      }

      v5 = v6 + a3;
    }

    v9 = *(a1 + 1128) * v5;
    v7 = (a1 + 136);
    v8 = (a1 + 32);
    if (*(a1 + 1080) <= a2)
    {
      v7 = (a1 + 144);
      v8 = (a1 + 104);
    }
  }

  else
  {
    v7 = (a1 + 792);
    v8 = (a1 + 800);
    v9 = 6 * v5;
  }

  v10 = *v7 + 4 * v9;
  v11 = *(a1 + 1552);
  v12.i16[0] = *v10;
  v12.i16[1] = BYTE2(*v10);
  v12.i16[2] = BYTE4(*v10);
  v12.i16[3] = BYTE6(*v10);
  v12.i16[4] = *(v10 + 8);
  v12.i16[5] = BYTE2(*(v10 + 8));
  v12.i16[6] = BYTE12(*v10);
  v12.i16[7] = BYTE14(*v10);
  v13.i16[0] = *v11;
  v13.i16[1] = BYTE2(*v11);
  v13.i16[2] = BYTE4(*v11);
  v13.i16[3] = BYTE6(*v11);
  v13.i16[4] = *(v11 + 8);
  v13.i16[5] = BYTE2(*(v11 + 8));
  v13.i16[6] = BYTE12(*v11);
  v13.i16[7] = BYTE14(*v11);
  v14 = vshrq_n_u32(vmlaq_s32(vmulq_s32(v12, v13), (*&vshrq_n_u32(*v10, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&vshrq_n_u32(*v11, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL);
  v15.i16[0] = *(v10 + 16);
  v15.i16[1] = BYTE2(*(v10 + 16));
  v15.i16[2] = BYTE4(*(v10 + 16));
  v15.i16[3] = BYTE6(*(v10 + 16));
  v12.i16[0] = *(v11 + 16);
  v12.i16[1] = BYTE2(*(v11 + 16));
  v12.i16[2] = BYTE4(*(v11 + 16));
  v12.i16[3] = BYTE6(*(v11 + 16));
  *v12.i8 = vshr_n_u32(vmla_s32(vmul_s32(v15, *v12.i8), (*&vshr_n_u32(*(v10 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), (*&vshr_n_u32(*(v11 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL)), 0xFuLL);
  return (((*(*v8 + 4 * v5) + *(a1 + 1568) - (vaddvq_s32(v14) + v12.i32[0]) - v12.i32[1]) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100013748(uint64_t a1, unsigned int a2, int a3)
{
  if (!*(a1 + 2012))
  {
    if (*(a1 + 1176))
    {
      v3 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v3 = *(*(a1 + 1144) + 2 * a2);
    }

    a2 = v3 + a3;
  }

  v4 = *(a1 + 136) + 24 * a2;
  v5 = *(a1 + 1552);
  v6.i16[0] = *v4;
  v6.i16[1] = BYTE2(*v4);
  v6.i16[2] = BYTE4(*v4);
  v6.i16[3] = BYTE6(*v4);
  v6.i16[4] = *(v4 + 8);
  v6.i16[5] = BYTE2(*(v4 + 8));
  v6.i16[6] = BYTE12(*v4);
  v6.i16[7] = BYTE14(*v4);
  v7.i16[0] = *v5;
  v7.i16[1] = BYTE2(*v5);
  v7.i16[2] = BYTE4(*v5);
  v7.i16[3] = BYTE6(*v5);
  v7.i16[4] = *(v5 + 8);
  v7.i16[5] = BYTE2(*(v5 + 8));
  v7.i16[6] = BYTE12(*v5);
  v7.i16[7] = BYTE14(*v5);
  v8 = vshrq_n_u32(vmlaq_s32(vmulq_s32(v6, v7), (*&vshrq_n_u32(*v4, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&vshrq_n_u32(*v5, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL);
  v9.i16[0] = *(v4 + 16);
  v9.i16[1] = BYTE2(*(v4 + 16));
  v9.i16[2] = BYTE4(*(v4 + 16));
  v9.i16[3] = BYTE6(*(v4 + 16));
  v6.i16[0] = *(v5 + 16);
  v6.i16[1] = BYTE2(*(v5 + 16));
  v6.i16[2] = BYTE4(*(v5 + 16));
  v6.i16[3] = BYTE6(*(v5 + 16));
  *v6.i8 = vshr_n_u32(vmla_s32(vmul_s32(v9, *v6.i8), (*&vshr_n_u32(*(v4 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), (*&vshr_n_u32(*(v5 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL)), 0xFuLL);
  return (((*(*(a1 + 32) + 4 * a2) + *(a1 + 1568) - (vaddvq_s32(v8) + v6.i32[0]) - v6.i32[1]) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100013828(uint64_t a1, unsigned int a2, int a3)
{
  if (!*(a1 + 2012))
  {
    if (*(a1 + 1176))
    {
      v3 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v3 = *(*(a1 + 1144) + 2 * a2);
    }

    a2 = v3 + a3;
  }

  v4 = (*(a1 + 136) + 36 * a2);
  v5 = *(a1 + 1552);
  v6.i16[0] = *&v4[1];
  v6.i16[1] = BYTE2(*&v4[1]);
  v6.i16[2] = BYTE4(v4[1].i64[0]);
  v6.i16[3] = BYTE6(v4[1].i64[0]);
  v6.i16[4] = v4[1].i64[1];
  v6.i16[5] = BYTE2(v4[1].i64[1]);
  v6.i16[6] = BYTE12(*&v4[1]);
  v6.i16[7] = BYTE14(*&v4[1]);
  v7.i16[0] = v4->u8[0];
  v7.i16[1] = BYTE2(v4->u32[0]);
  v7.i16[2] = BYTE4(v4->i64[0]);
  v7.i16[3] = BYTE6(v4->i64[0]);
  v7.i16[4] = v4->i64[1];
  v7.i16[5] = BYTE2(v4->i64[1]);
  v7.i16[6] = BYTE12(*v4);
  v7.i16[7] = BYTE14(*v4);
  v8.i16[0] = *&v5[1];
  v8.i16[1] = BYTE2(*&v5[1]);
  v8.i16[2] = BYTE4(v5[1].i64[0]);
  v8.i16[3] = BYTE6(v5[1].i64[0]);
  v8.i16[4] = v5[1].i64[1];
  v8.i16[5] = BYTE2(v5[1].i64[1]);
  v8.i16[6] = BYTE12(*&v5[1]);
  v8.i16[7] = BYTE14(*&v5[1]);
  v9.i16[0] = v5->u8[0];
  v9.i16[1] = BYTE2(v5->u32[0]);
  v9.i16[2] = BYTE4(v5->i64[0]);
  v9.i16[3] = BYTE6(v5->i64[0]);
  v9.i16[4] = v5->i64[1];
  v9.i16[5] = BYTE2(v5->i64[1]);
  v9.i16[6] = BYTE12(*v5);
  v9.i16[7] = BYTE14(*v5);
  return (((*(*(a1 + 32) + 4 * a2) + *(a1 + 1568) - (vaddvq_s32(vsraq_n_u32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v7, v9), (*&vshrq_n_u32(*v4, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&vshrq_n_u32(*v5, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL), vmlaq_s32(vmulq_s32(v6, v8), (*&vshrq_n_u32(v4[1], 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&vshrq_n_u32(v5[1], 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL)) + (((v4[2].i32[0] & 0xFF00FF) * (v5[2].i32[0] & 0xFF00FF) + ((v4[2].i32[0] >> 8) & 0xFF00FF) * ((v5[2].i32[0] >> 8) & 0xFF00FF)) >> 15))) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_10001391C(uint64_t a1, unsigned int a2, int a3)
{
  if (!*(a1 + 2012))
  {
    if (*(a1 + 1176))
    {
      v3 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v3 = *(*(a1 + 1144) + 2 * a2);
    }

    a2 = v3 + a3;
  }

  v4 = (*(a1 + 136) + 24 * a2);
  v5 = *(a1 + 1552);
  v6.i16[0] = v4->u8[0];
  v6.i16[1] = BYTE2(v4->u32[0]);
  v6.i16[2] = BYTE4(*v4);
  v6.i16[3] = BYTE6(*v4);
  v7.i16[0] = v5->u8[0];
  v7.i16[1] = BYTE2(v5->u32[0]);
  v7.i16[2] = BYTE4(*v5);
  v7.i16[3] = BYTE6(*v5);
  v8 = vmla_s32(vmul_s32(v6, v7), (*&vshr_n_u32(*v4, 8uLL) & 0xFFFF00FFFFFF00FFLL), (*&vshr_n_u32(*v5, 8uLL) & 0xFFFF00FFFFFF00FFLL));
  return (((*(a1 + 1568) + *(*(a1 + 32) + 4 * a2) - (vsra_n_u32(vdup_lane_s32(vshr_n_u32(v8, 0xFuLL), 1), v8, 0xFuLL).u32[0] + (((v4[1].i32[0] & 0xFF00FF) * (v5[1].i32[0] & 0xFF00FF) + ((v4[1].i32[0] >> 8) & 0xFF00FF) * ((v5[1].i32[0] >> 8) & 0xFF00FF)) >> 15))) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_1000139F0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 != v4)
  {
    v5 = a2;
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v6 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v6 = *(*(a1 + 1144) + 2 * a2);
      }

      v5 = v6 + a3;
    }

    v10 = *(a1 + 1128) * v5;
    v7 = (a1 + 136);
    v8 = (a1 + 32);
    v9 = (a1 + 48);
    if (*(a1 + 1080) <= a2)
    {
      v7 = (a1 + 144);
      v8 = (a1 + 104);
      v9 = (a1 + 120);
    }
  }

  else
  {
    v7 = (a1 + 792);
    v8 = (a1 + 800);
    v9 = (a1 + 808);
    v10 = 6 * v5;
  }

  v11 = *v8;
  v12 = *v7;
  v13 = *(a1 + 1552);
  *v14.i8 = *v13;
  v15 = *(v11 + 4 * v5);
  if (*(a1 + 1044))
  {
    v15 += *(*v9 + 4 * v5);
  }

  v16 = v12 + 4 * v10;
  v14.i32[2] = v13[1].i32[0];
  v17.i16[0] = *v16;
  v17.i16[1] = BYTE2(*v16);
  v17.i16[2] = BYTE4(*v16);
  v17.i16[3] = BYTE6(*v16);
  v17.i16[4] = *(v16 + 8);
  v17.i16[5] = BYTE2(*(v16 + 8));
  v17.i16[6] = BYTE12(*v16);
  v17.i16[7] = BYTE14(*v16);
  v14.i32[3] = v13[1].i32[1];
  v18.i64[0] = v14.i64[0] & 0xFF00FF00FF00FFLL;
  v18.i16[4] = v14.u8[8];
  v18.i16[5] = v14.u8[10];
  v18.i16[6] = v14.u8[12];
  v18.i16[7] = v14.u8[14];
  v19 = vshrq_n_u32(vmlaq_s32(vmulq_s32(v17, v18), (*&vshrq_n_u32(*v16, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), (*&vshrq_n_u32(v14, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 0xFuLL);
  v20.i16[0] = *(v16 + 16);
  v20.i16[1] = BYTE2(*(v16 + 16));
  v20.i16[2] = BYTE4(*(v16 + 16));
  v20.i16[3] = BYTE6(*(v16 + 16));
  v17.i16[0] = *&v13[2];
  v17.i16[1] = BYTE2(*&v13[2]);
  v17.i16[2] = BYTE4(*&v13[2]);
  v17.i16[3] = BYTE6(*&v13[2]);
  *v17.i8 = vshr_n_u32(vmla_s32(vmul_s32(v20, *v17.i8), (*&vshr_n_u32(*(v16 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), (*&vshr_n_u32(v13[2], 8uLL) & 0xFFFF00FFFFFF00FFLL)), 0xFuLL);
  return (((v15 + *(a1 + 1568) - v17.i32[1] - (vaddvq_s32(v19) + v17.i32[0])) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
}

uint64_t sub_100013B50(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1072) > a2)
  {
    v3 = *(a1 + 1176);
    if (v3)
    {
      v4 = (*(a1 + 1160) + 4 * a2);
      v5 = v4[1] - *v4;
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = (*(a1 + 1144) + 2 * a2);
      v5 = v7[1] - *v7;
      if ((v5 & 1) == 0)
      {
LABEL_4:
        v6 = a2;
        if (!*(a1 + 2012))
        {
          if (v3)
          {
            v6 = *(*(a1 + 1160) + 4 * a2);
          }

          else
          {
            v6 = *(*(a1 + 1144) + 2 * a2);
          }
        }

        v9 = (v5 >> 1);
        if (v9 < 1)
        {
          v25 = 0x40000000;
        }

        else
        {
          v10 = *(a1 + 1552);
          v11 = 104;
          if (*(a1 + 1080) > a2)
          {
            v11 = 32;
          }

          v12 = *(a1 + v11);
          v13 = (v12 + 4 * v6);
          v14 = 144;
          if (*(a1 + 1080) > a2)
          {
            v14 = 136;
          }

          v15 = *(a1 + v14);
          v16 = *(a1 + 1128) * v6;
          v17.i64[0] = *(v10 + 12);
          v17.i32[2] = *(v10 + 20);
          v18 = v15 + 4 * v16;
          v17.i32[3] = *v10;
          v19 = (v10 + 4);
          v20.i16[0] = v19->u8[0];
          v20.i16[1] = BYTE2(v19->u32[0]);
          v20.i16[2] = BYTE4(*v19);
          v20.i16[3] = BYTE6(*v19);
          v21 = *&vshr_n_u32(*v19, 8uLL) & 0xFFFF00FFFFFF00FFLL;
          v22 = vshrq_n_u32(v17, 8uLL);
          v23 = *&v17 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          v24 = *&v22 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
          if (v9 < 8)
          {
            v25 = 0x40000000;
            v26 = v9;
            goto LABEL_23;
          }

          v27 = v6;
          v26 = v9 - (v9 & 0x7FFFFFF8);
          v13 += 2 * (v9 & 0x7FFFFFF8);
          v133 = vdupq_laneq_s32(v24, 3);
          v134 = vdupq_laneq_s32(v23, 3);
          v131 = vdupq_lane_s32(v21, 0);
          v132 = vdupq_lane_s32(v20, 0);
          v111 = v21;
          v112 = v20;
          v118 = vdupq_lane_s32(*&v23, 0);
          v119 = vdupq_lane_s32(v21, 1);
          v18 += 48 * (v9 & 0x7FFFFFF8);
          v129 = vdupq_lane_s32(*&v23, 1);
          v130 = vdupq_lane_s32(v20, 1);
          v28 = (v15 + 4 * v16 + 192);
          v116 = vdupq_lane_s32(*&v24, 1);
          v117 = vdupq_lane_s32(*&v24, 0);
          v115 = vdupq_laneq_s32(v23, 2);
          v29 = (v12 + 4 * v27 + 32);
          v110 = v24;
          v113 = v23;
          v114 = vdupq_laneq_s32(v24, 2);
          v30.i64[0] = 0x4000000040000000;
          v30.i64[1] = 0x4000000040000000;
          v31 = v9 & 0x7FFFFFF8;
          v32.i64[0] = 0x4000000040000000;
          v32.i64[1] = 0x4000000040000000;
          do
          {
            v126 = v32;
            v128 = v30;
            v33 = v29 - 8;
            v34.i32[0] = *v28;
            v35.i32[0] = v28[1];
            v135 = vld2q_f32(v33);
            v127 = v135;
            v34.i32[1] = v28[12];
            v34.i32[2] = v28[24];
            v36.i32[0] = *(v28 - 48);
            v36.i32[1] = *(v28 - 36);
            v35.i32[1] = v28[13];
            v37.i32[0] = *(v28 - 47);
            v37.i32[1] = *(v28 - 35);
            v35.i32[2] = v28[25];
            v34.i32[3] = v28[36];
            v35.i32[3] = v28[37];
            v36.i32[2] = *(v28 - 24);
            v37.i32[2] = *(v28 - 23);
            v38.i32[0] = *(v28 - 46);
            v38.i32[1] = *(v28 - 34);
            v36.i32[3] = *(v28 - 12);
            v38.i32[2] = *(v28 - 22);
            v37.i32[3] = *(v28 - 11);
            v135.val[0].i32[0] = v28[2];
            v39.i32[0] = v28[3];
            v38.i32[3] = *(v28 - 10);
            v135.val[0].i32[1] = v28[14];
            v135.val[0].i32[2] = v28[26];
            v40 = vshrq_n_u32(v34, 8uLL);
            v135.val[0].i32[3] = v28[38];
            v41.i32[0] = *(v28 - 45);
            v34.i16[0] = *v28;
            v34.i16[1] = BYTE2(*v28);
            v34.i16[2] = v34.u8[4];
            v34.i16[3] = BYTE2(v28[12]);
            v34.i16[4] = v34.u8[8];
            v34.i16[5] = BYTE2(v28[24]);
            v34.i16[6] = v34.u8[12];
            v34.i16[7] = BYTE2(v28[36]);
            v41.i32[1] = *(v28 - 33);
            v41.i32[2] = *(v28 - 21);
            v42 = vshrq_n_u32(v35, 8uLL);
            v35.i16[0] = v35.u8[0];
            v35.i16[1] = BYTE2(v28[1]);
            v35.i16[2] = v35.u8[4];
            v35.i16[3] = BYTE2(v28[13]);
            v35.i16[4] = v35.u8[8];
            v35.i16[5] = BYTE2(v28[25]);
            v35.i16[6] = v35.u8[12];
            v35.i16[7] = BYTE2(v28[37]);
            v41.i32[3] = *(v28 - 9);
            v39.i32[1] = v28[15];
            v39.i32[2] = v28[27];
            v43 = vshrq_n_u32(v135.val[0], 8uLL);
            v39.i32[3] = v28[39];
            v44 = vmulq_s32(v35, v132);
            v45.i32[0] = *(v28 - 44);
            v45.i32[1] = *(v28 - 32);
            v135.val[0].i16[0] = v135.val[0].u8[0];
            v135.val[0].i16[1] = BYTE2(v28[2]);
            v135.val[0].i16[2] = v135.val[0].u8[4];
            v135.val[0].i16[3] = BYTE2(v28[14]);
            v135.val[0].i16[4] = v135.val[0].u8[8];
            v135.val[0].i16[5] = BYTE2(v28[26]);
            v135.val[0].i16[6] = v135.val[0].u8[12];
            v135.val[0].i16[7] = BYTE2(v28[38]);
            v45.i32[2] = *(v28 - 20);
            v46 = vmulq_s32(v135.val[0], v130);
            v45.i32[3] = *(v28 - 8);
            v47.i32[0] = v28[4];
            v35.i32[0] = v28[5];
            v48 = vshrq_n_u32(v36, 8uLL);
            v47.i32[1] = v28[16];
            v47.i32[2] = v28[28];
            v36.i16[0] = v36.u8[0];
            v36.i16[1] = BYTE2(*(v28 - 48));
            v36.i16[2] = v36.u8[4];
            v36.i16[3] = BYTE2(*(v28 - 36));
            v36.i16[4] = v36.u8[8];
            v36.i16[5] = BYTE2(*(v28 - 24));
            v36.i16[6] = v36.u8[12];
            v36.i16[7] = BYTE2(*(v28 - 12));
            v47.i32[3] = v28[40];
            v49.i32[0] = *(v28 - 43);
            v50 = vshrq_n_u32(v37, 8uLL);
            v49.i32[1] = *(v28 - 31);
            v49.i32[2] = *(v28 - 19);
            v37.i16[0] = v37.u8[0];
            v37.i16[1] = BYTE2(*(v28 - 47));
            v37.i16[2] = v37.u8[4];
            v37.i16[3] = BYTE2(*(v28 - 35));
            v37.i16[4] = v37.u8[8];
            v37.i16[5] = BYTE2(*(v28 - 23));
            v37.i16[6] = v37.u8[12];
            v37.i16[7] = BYTE2(*(v28 - 11));
            v49.i32[3] = *(v28 - 7);
            v51 = vshrq_n_u32(v38, 8uLL);
            v35.i32[1] = v28[17];
            v35.i32[2] = v28[29];
            v38.i16[0] = v38.u8[0];
            v38.i16[1] = BYTE2(*(v28 - 46));
            v38.i16[2] = v38.u8[4];
            v38.i16[3] = BYTE2(*(v28 - 34));
            v38.i16[4] = v38.u8[8];
            v38.i16[5] = BYTE2(*(v28 - 22));
            v38.i16[6] = v38.u8[12];
            v38.i16[7] = BYTE2(*(v28 - 10));
            v35.i32[3] = v28[41];
            v135.val[0] = vshrq_n_u32(v41, 8uLL);
            v52 = vshrq_n_u32(v39, 8uLL);
            v41.i16[0] = v41.u8[0];
            v41.i16[1] = BYTE2(*(v28 - 45));
            v41.i16[2] = v41.u8[4];
            v41.i16[3] = BYTE2(*(v28 - 33));
            v41.i16[4] = v41.u8[8];
            v41.i16[5] = BYTE2(*(v28 - 21));
            v41.i16[6] = v41.u8[12];
            v41.i16[7] = BYTE2(*(v28 - 9));
            v39.i16[0] = v39.u8[0];
            v39.i16[1] = BYTE2(v28[3]);
            v39.i16[2] = v39.u8[4];
            v39.i16[3] = BYTE2(v28[15]);
            v39.i16[4] = v39.u8[8];
            v39.i16[5] = BYTE2(v28[27]);
            v39.i16[6] = v39.u8[12];
            v39.i16[7] = BYTE2(v28[39]);
            v53 = vmulq_s32(v39, v118);
            v123 = vshrq_n_u32(v45, 8uLL);
            v45.i16[0] = v45.u8[0];
            v45.i16[1] = BYTE2(*(v28 - 44));
            v45.i16[2] = v45.u8[4];
            v45.i16[3] = BYTE2(*(v28 - 32));
            v45.i16[4] = v45.u8[8];
            v45.i16[5] = BYTE2(*(v28 - 20));
            v45.i16[6] = v45.u8[12];
            v45.i16[7] = BYTE2(*(v28 - 8));
            v54 = vshrq_n_u32(v47, 8uLL);
            v47.i16[0] = v47.u8[0];
            v47.i16[1] = BYTE2(v28[4]);
            v47.i16[2] = v47.u8[4];
            v47.i16[3] = BYTE2(v28[16]);
            v47.i16[4] = v47.u8[8];
            v47.i16[5] = BYTE2(v28[28]);
            v47.i16[6] = v47.u8[12];
            v47.i16[7] = BYTE2(v28[40]);
            v55 = vmulq_s32(v47, v129);
            v122 = vshrq_n_u32(v49, 8uLL);
            v49.i16[0] = v49.u8[0];
            v49.i16[1] = BYTE2(*(v28 - 43));
            v49.i16[2] = v49.u8[4];
            v49.i16[3] = BYTE2(*(v28 - 31));
            v49.i16[4] = v49.u8[8];
            v49.i16[5] = BYTE2(*(v28 - 19));
            v49.i16[6] = v49.u8[12];
            v49.i16[7] = BYTE2(*(v28 - 7));
            v56.i32[0] = *(v28 - 39);
            v57 = vmlaq_s32(vmulq_s32(v34, v134), (*&v40 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v133);
            v56.i32[1] = *(v28 - 27);
            v56.i32[2] = *(v28 - 15);
            v58 = vmulq_s32(v37, v132);
            v59 = vshrq_n_u32(v35, 8uLL);
            v56.i32[3] = *(v28 - 3);
            v47.i32[0] = v28[8];
            v60.i32[0] = v28[9];
            v60.i32[1] = v28[21];
            v61 = vmlaq_s32(v44, (*&v42 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v131);
            v60.i32[2] = v28[33];
            v60.i32[3] = v28[45];
            v62 = vmulq_s32(v38, v130);
            v35.i16[0] = v35.u8[0];
            v35.i16[1] = BYTE2(v28[5]);
            v35.i16[2] = v35.u8[4];
            v35.i16[3] = BYTE2(v28[17]);
            v35.i16[4] = v35.u8[8];
            v35.i16[5] = BYTE2(v28[29]);
            v35.i16[6] = v35.u8[12];
            v35.i16[7] = BYTE2(v28[41]);
            v42.i32[0] = *(v28 - 38);
            v42.i32[1] = *(v28 - 26);
            v42.i32[2] = *(v28 - 14);
            v63 = vmlaq_s32(v46, (*&v43 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v119);
            v64 = vmulq_s32(v35, v115);
            v42.i32[3] = *(v28 - 2);
            v65 = vmulq_s32(v41, v118);
            v43.i32[0] = v28[10];
            v41.i32[0] = v28[11];
            v43.i32[1] = v28[22];
            v135.val[1] = (*v135.val & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL));
            v43.i32[2] = v28[34];
            v43.i32[3] = v28[46];
            v120 = vmlaq_s32(v53, (*&v52 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v117);
            v52.i32[0] = *(v28 - 37);
            v52.i32[1] = *(v28 - 25);
            v66 = vmulq_s32(v45, v129);
            v52.i32[2] = *(v28 - 13);
            v52.i32[3] = *(v28 - 1);
            v67 = *&v123 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
            v41.i32[1] = v28[23];
            v121 = vmlaq_s32(v55, (*&v54 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v116);
            v41.i32[2] = v28[35];
            v41.i32[3] = v28[47];
            v68 = vmulq_s32(v49, v115);
            v124 = vmlaq_s32(v64, (*&v59 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v114);
            v69 = vshrq_n_u32(v56, 8uLL);
            v56.i16[0] = v56.u8[0];
            v56.i16[1] = BYTE2(*(v28 - 39));
            v56.i16[2] = v56.u8[4];
            v56.i16[3] = BYTE2(*(v28 - 27));
            v56.i16[4] = v56.u8[8];
            v56.i16[5] = BYTE2(*(v28 - 15));
            v56.i16[6] = v56.u8[12];
            v56.i16[7] = BYTE2(*(v28 - 3));
            v70 = vshrq_n_u32(v60, 8uLL);
            v60.i16[0] = v60.u8[0];
            v60.i16[1] = BYTE2(v28[9]);
            v60.i16[2] = v60.u8[4];
            v60.i16[3] = BYTE2(v28[21]);
            v60.i16[4] = v60.u8[8];
            v60.i16[5] = BYTE2(v28[33]);
            v60.i16[6] = v60.u8[12];
            v60.i16[7] = BYTE2(v28[45]);
            v71 = vmulq_s32(v56, v118);
            v72 = vmlaq_s32(vmulq_s32(v36, v134), (*&v48 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v133);
            v125 = vmlaq_s32(v58, (*&v50 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v131);
            v73 = vmlaq_s32(vmulq_s32(v60, v118), (*&v70 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v117);
            v74 = vshrq_n_u32(v42, 8uLL);
            v42.i16[0] = v42.u8[0];
            v42.i16[1] = BYTE2(*(v28 - 38));
            v42.i16[2] = v42.u8[4];
            v42.i16[3] = BYTE2(*(v28 - 26));
            v42.i16[4] = v42.u8[8];
            v42.i16[5] = BYTE2(*(v28 - 14));
            v42.i16[6] = v42.u8[12];
            v42.i16[7] = BYTE2(*(v28 - 2));
            v75 = vshrq_n_u32(v43, 8uLL);
            v43.i16[0] = v43.u8[0];
            v43.i16[1] = BYTE2(v28[10]);
            v43.i16[2] = v43.u8[4];
            v43.i16[3] = BYTE2(v28[22]);
            v43.i16[4] = v43.u8[8];
            v43.i16[5] = BYTE2(v28[34]);
            v43.i16[6] = v43.u8[12];
            v43.i16[7] = BYTE2(v28[46]);
            v76 = vmlaq_s32(vmulq_s32(v43, v129), (*&v75 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v116);
            v77 = vshrq_n_u32(v52, 8uLL);
            v52.i16[0] = v52.u8[0];
            v52.i16[1] = BYTE2(*(v28 - 37));
            v52.i16[2] = v52.u8[4];
            v52.i16[3] = BYTE2(*(v28 - 25));
            v52.i16[4] = v52.u8[8];
            v52.i16[5] = BYTE2(*(v28 - 13));
            v52.i16[6] = v52.u8[12];
            v52.i16[7] = BYTE2(*(v28 - 1));
            v78 = vshrq_n_u32(v41, 8uLL);
            v41.i16[0] = v41.u8[0];
            v41.i16[1] = BYTE2(v28[11]);
            v41.i16[2] = v41.u8[4];
            v41.i16[3] = BYTE2(v28[23]);
            v41.i16[4] = v41.u8[8];
            v41.i16[5] = BYTE2(v28[35]);
            v41.i16[6] = v41.u8[12];
            v41.i16[7] = BYTE2(v28[47]);
            v79 = vmulq_s32(v52, v115);
            v52.i32[0] = *(v28 - 42);
            v52.i32[1] = *(v28 - 30);
            v80 = vmlaq_s32(v68, (*&v122 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v114);
            v52.i32[2] = *(v28 - 18);
            v52.i32[3] = *(v28 - 6);
            v81 = vmlaq_s32(v71, (*&v69 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v117);
            v69.i32[0] = v28[6];
            v75.i32[0] = v28[7];
            v69.i32[1] = v28[18];
            v82 = vmlaq_s32(vmulq_s32(v42, v129), (*&v74 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v116);
            v69.i32[2] = v28[30];
            v69.i32[3] = v28[42];
            v83 = vmlaq_s32(v79, (*&v77 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v114);
            v74.i32[0] = *(v28 - 41);
            v74.i32[1] = *(v28 - 29);
            v74.i32[2] = *(v28 - 17);
            v74.i32[3] = *(v28 - 5);
            v75.i32[1] = v28[19];
            v75.i32[2] = v28[31];
            v75.i32[3] = v28[43];
            v84 = vshrq_n_u32(v52, 8uLL);
            v52.i16[0] = v52.u8[0];
            v52.i16[1] = BYTE2(*(v28 - 42));
            v52.i16[2] = v52.u8[4];
            v52.i16[3] = BYTE2(*(v28 - 30));
            v52.i16[4] = v52.u8[8];
            v52.i16[5] = BYTE2(*(v28 - 18));
            v52.i16[6] = v52.u8[12];
            v52.i16[7] = BYTE2(*(v28 - 6));
            v85 = vmlaq_s32(vmulq_s32(v52, v134), (*&v84 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v133);
            v86 = vshrq_n_u32(v69, 8uLL);
            v69.i16[0] = v69.u8[0];
            v69.i16[1] = BYTE2(v28[6]);
            v69.i16[2] = v69.u8[4];
            v69.i16[3] = BYTE2(v28[18]);
            v69.i16[4] = v69.u8[8];
            v69.i16[5] = BYTE2(v28[30]);
            v69.i16[6] = v69.u8[12];
            v69.i16[7] = BYTE2(v28[42]);
            v87 = vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v57, 0xFuLL), v61, 0xFuLL), v63, 0xFuLL), v120, 0xFuLL);
            v135.val[0] = vmlaq_s32(vmulq_s32(v69, v134), (*&v86 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v133);
            v88 = vshrq_n_u32(v74, 8uLL);
            v74.i16[0] = v74.u8[0];
            v74.i16[1] = BYTE2(*(v28 - 41));
            v74.i16[2] = v74.u8[4];
            v74.i16[3] = BYTE2(*(v28 - 29));
            v74.i16[4] = v74.u8[8];
            v74.i16[5] = BYTE2(*(v28 - 17));
            v74.i16[6] = v74.u8[12];
            v74.i16[7] = BYTE2(*(v28 - 5));
            v89 = vmlaq_s32(vmulq_s32(v74, v132), (*&v88 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v131);
            v90 = vshrq_n_u32(v75, 8uLL);
            v75.i16[0] = v75.u8[0];
            v75.i16[1] = BYTE2(v28[7]);
            v75.i16[2] = v75.u8[4];
            v75.i16[3] = BYTE2(v28[19]);
            v75.i16[4] = v75.u8[8];
            v75.i16[5] = BYTE2(v28[31]);
            v75.i16[6] = v75.u8[12];
            v75.i16[7] = BYTE2(v28[43]);
            v91 = vmlaq_s32(vmulq_s32(v75, v132), (*&v90 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v131);
            v90.i32[0] = *(v28 - 40);
            v90.i32[1] = *(v28 - 28);
            v92 = vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v72, 0xFuLL), v125, 0xFuLL), vmlaq_s32(v62, (*&v51 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v119), 0xFuLL), vmlaq_s32(v65, v135.val[1], v117), 0xFuLL);
            v90.i32[2] = *(v28 - 16);
            v90.i32[3] = *(v28 - 4);
            v93 = vshrq_n_u32(v90, 8uLL);
            v90.i16[0] = v90.u8[0];
            v90.i16[1] = BYTE2(*(v28 - 40));
            v90.i16[2] = v90.u8[4];
            v90.i16[3] = BYTE2(*(v28 - 28));
            v90.i16[4] = v90.u8[8];
            v90.i16[5] = BYTE2(*(v28 - 16));
            v90.i16[6] = v90.u8[12];
            v90.i16[7] = BYTE2(*(v28 - 4));
            v136 = vld2q_f32(v29);
            v47.i32[1] = v28[20];
            v47.i32[2] = v28[32];
            v47.i32[3] = v28[44];
            v94 = vshrq_n_u32(v47, 8uLL);
            v47.i16[0] = v47.u8[0];
            v47.i16[1] = BYTE2(v28[8]);
            v47.i16[2] = v47.u8[4];
            v47.i16[3] = BYTE2(v28[20]);
            v47.i16[4] = v47.u8[8];
            v47.i16[5] = BYTE2(v28[32]);
            v47.i16[6] = v47.u8[12];
            v47.i16[7] = BYTE2(v28[44]);
            v28 += 96;
            v30 = vminq_s32(vsubq_s32(v127.val[1], vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v81, 0xFuLL), v82, 0xFuLL), v83, 0xFuLL), v85, 0xFuLL), v89, 0xFuLL), vmlaq_s32(vmulq_s32(v90, v130), (*&v93 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v119), 0xFuLL)), vminq_s32(vsubq_s32(v127.val[0], vsraq_n_u32(vsraq_n_u32(v92, vmlaq_s32(v66, v67, v116), 0xFuLL), v80, 0xFuLL)), v128));
            v29 += 16;
            v32 = vminq_s32(vsubq_s32(v136.val[1], vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v73, 0xFuLL), v76, 0xFuLL), vmlaq_s32(vmulq_s32(v41, v115), (*&v78 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v114), 0xFuLL), v135.val[0], 0xFuLL), v91, 0xFuLL), vmlaq_s32(vmulq_s32(v47, v130), (*&v94 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v119), 0xFuLL)), vminq_s32(vsubq_s32(v136.val[0], vsraq_n_u32(vsraq_n_u32(v87, v121, 0xFuLL), v124, 0xFuLL)), v126));
            v31 -= 8;
          }

          while (v31);
          v25 = vminvq_s32(vminq_s32(v30, v32));
          v20 = v112;
          v23 = v113;
          v24 = v110;
          v21 = v111;
          if ((v9 & 0x7FFFFFF8) != v9)
          {
LABEL_23:
            v95 = vextq_s8(v23, vextq_s8(v23, v23, 8uLL), 0xCuLL);
            *(v95.i64 + 4) = v20;
            v96 = vextq_s8(v24, vextq_s8(v24, v24, 8uLL), 0xCuLL);
            *(v96.i64 + 4) = v21;
            v97 = vextq_s8(v23, v23, 4uLL).u64[0];
            v98 = vextq_s8(v24, v24, 4uLL).u64[0];
            v99 = v26 + 1;
            do
            {
              v100.i16[0] = *v18;
              v100.i16[1] = BYTE2(*v18);
              v100.i16[2] = BYTE4(*v18);
              v100.i16[3] = BYTE6(*v18);
              v100.i16[4] = *(v18 + 8);
              v100.i16[5] = BYTE2(*(v18 + 8));
              v100.i16[6] = BYTE12(*v18);
              v100.i16[7] = BYTE14(*v18);
              v101.i16[0] = *(v18 + 16);
              v101.i16[1] = BYTE2(*(v18 + 16));
              v101.i16[2] = BYTE4(*(v18 + 16));
              v101.i16[3] = BYTE6(*(v18 + 16));
              v102 = vshr_n_u32(vmla_s32(vmul_s32(v101, v97), (*&vshr_n_u32(*(v18 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), v98), 0xFuLL);
              v103 = *v13;
              v104 = v13[1];
              v13 += 2;
              v105 = v103 - (vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v100, v95), (*&vshrq_n_u32(*v18, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v96), 0xFuLL)) + v102.i32[0]) - v102.i32[1];
              if (v105 >= v25)
              {
                v105 = v25;
              }

              v106.i32[3] = *(v18 + 24);
              v106.i32[2] = *(v18 + 44);
              v106.i64[0] = *(v18 + 36);
              v107 = vshrq_n_u32(v106, 8uLL);
              v106.i16[0] = v106.u8[0];
              v106.i16[1] = BYTE2(*(v18 + 36));
              v106.i16[2] = BYTE4(*(v18 + 36));
              v106.i16[3] = BYTE6(*(v18 + 36));
              v106.i16[4] = v106.u8[8];
              v106.i16[5] = BYTE2(*(v18 + 44));
              v106.i16[6] = v106.u8[12];
              v106.i16[7] = BYTE2(*(v18 + 24));
              v108 = vshrq_n_u32(vmlaq_s32(vmulq_s32(v106, v23), (*&v107 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v24), 0xFuLL);
              v107.i16[0] = *(v18 + 28);
              v107.i16[1] = BYTE2(*(v18 + 28));
              v107.i16[2] = BYTE4(*(v18 + 28));
              v107.i16[3] = BYTE6(*(v18 + 28));
              *v107.i8 = vshr_n_u32(vmla_s32(vmul_s32(*v107.i8, v20), (*&vshr_n_u32(*(v18 + 28), 8uLL) & 0xFFFF00FFFFFF00FFLL), v21), 0xFuLL);
              v109 = v104 - v107.i32[1] - (vaddvq_s32(v108) + v107.i32[0]);
              if (v109 >= v105)
              {
                v25 = v105;
              }

              else
              {
                v25 = v109;
              }

              --v99;
              v18 += 48;
            }

            while (v99 > 1);
          }
        }

        return (((*(a1 + 1568) + v25) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
      }
    }
  }

  return sub_1000128F8(a1, a2);
}

uint64_t sub_10001442C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1176);
  if (v3)
  {
    v4 = (*(a1 + 1160) + 4 * a2);
    v5 = v4[1] - *v4;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = (*(a1 + 1144) + 2 * a2);
    v5 = v6[1] - *v6;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (!*(a1 + 2012))
      {
        if (v3)
        {
          a2 = *(*(a1 + 1160) + 4 * a2);
        }

        else
        {
          a2 = *(*(a1 + 1144) + 2 * a2);
        }
      }

      v8 = (v5 >> 1);
      if (v8 < 1)
      {
        v20 = 0x40000000;
      }

      else
      {
        v9 = *(a1 + 1552);
        v10 = *(a1 + 32);
        v11 = (v10 + 4 * a2);
        v12 = *(a1 + 136);
        v13.i64[0] = *(v9 + 12);
        v13.i32[2] = *(v9 + 20);
        v14 = v12 + 4 * (6 * a2);
        v13.i32[3] = *v9;
        v9 += 4;
        v15.i16[0] = *v9;
        v15.i16[1] = BYTE2(*v9);
        v15.i16[2] = BYTE4(*v9);
        v15.i16[3] = BYTE6(*v9);
        v16 = *&vshr_n_u32(*v9, 8uLL) & 0xFFFF00FFFFFF00FFLL;
        v17 = vshrq_n_u32(v13, 8uLL);
        v18 = *&v13 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
        v19 = *&v17 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
        if (v8 < 8)
        {
          v20 = 0x40000000;
          v21 = v8;
          goto LABEL_18;
        }

        v21 = v8 - (v8 & 0x7FFFFFF8);
        v11 += 2 * (v8 & 0x7FFFFFF8);
        v127 = vdupq_laneq_s32(v19, 3);
        v128 = vdupq_laneq_s32(v18, 3);
        v125 = vdupq_lane_s32(v16, 0);
        v126 = vdupq_lane_s32(v15, 0);
        v105 = v16;
        v106 = v15;
        v112 = vdupq_lane_s32(*&v18, 0);
        v113 = vdupq_lane_s32(v16, 1);
        v14 += 48 * (v8 & 0x7FFFFFF8);
        v123 = vdupq_lane_s32(*&v18, 1);
        v124 = vdupq_lane_s32(v15, 1);
        v22 = (v12 + 4 * (6 * a2) + 192);
        v110 = vdupq_lane_s32(*&v19, 1);
        v111 = vdupq_lane_s32(*&v19, 0);
        v109 = vdupq_laneq_s32(v18, 2);
        v23 = (v10 + 4 * a2 + 32);
        v104 = v19;
        v107 = v18;
        v108 = vdupq_laneq_s32(v19, 2);
        v24.i64[0] = 0x4000000040000000;
        v24.i64[1] = 0x4000000040000000;
        v25 = v8 & 0x7FFFFFF8;
        v26.i64[0] = 0x4000000040000000;
        v26.i64[1] = 0x4000000040000000;
        do
        {
          v120 = v26;
          v122 = v24;
          v27 = v23 - 8;
          v28.i32[0] = *v22;
          v29.i32[0] = v22[1];
          v129 = vld2q_f32(v27);
          v121 = v129;
          v28.i32[1] = v22[12];
          v28.i32[2] = v22[24];
          v30.i32[0] = *(v22 - 48);
          v30.i32[1] = *(v22 - 36);
          v29.i32[1] = v22[13];
          v31.i32[0] = *(v22 - 47);
          v31.i32[1] = *(v22 - 35);
          v29.i32[2] = v22[25];
          v28.i32[3] = v22[36];
          v29.i32[3] = v22[37];
          v30.i32[2] = *(v22 - 24);
          v31.i32[2] = *(v22 - 23);
          v32.i32[0] = *(v22 - 46);
          v32.i32[1] = *(v22 - 34);
          v30.i32[3] = *(v22 - 12);
          v32.i32[2] = *(v22 - 22);
          v31.i32[3] = *(v22 - 11);
          v129.val[0].i32[0] = v22[2];
          v33.i32[0] = v22[3];
          v32.i32[3] = *(v22 - 10);
          v129.val[0].i32[1] = v22[14];
          v129.val[0].i32[2] = v22[26];
          v34 = vshrq_n_u32(v28, 8uLL);
          v129.val[0].i32[3] = v22[38];
          v35.i32[0] = *(v22 - 45);
          v28.i16[0] = *v22;
          v28.i16[1] = BYTE2(*v22);
          v28.i16[2] = v28.u8[4];
          v28.i16[3] = BYTE2(v22[12]);
          v28.i16[4] = v28.u8[8];
          v28.i16[5] = BYTE2(v22[24]);
          v28.i16[6] = v28.u8[12];
          v28.i16[7] = BYTE2(v22[36]);
          v35.i32[1] = *(v22 - 33);
          v35.i32[2] = *(v22 - 21);
          v36 = vshrq_n_u32(v29, 8uLL);
          v29.i16[0] = v29.u8[0];
          v29.i16[1] = BYTE2(v22[1]);
          v29.i16[2] = v29.u8[4];
          v29.i16[3] = BYTE2(v22[13]);
          v29.i16[4] = v29.u8[8];
          v29.i16[5] = BYTE2(v22[25]);
          v29.i16[6] = v29.u8[12];
          v29.i16[7] = BYTE2(v22[37]);
          v35.i32[3] = *(v22 - 9);
          v33.i32[1] = v22[15];
          v33.i32[2] = v22[27];
          v37 = vshrq_n_u32(v129.val[0], 8uLL);
          v33.i32[3] = v22[39];
          v38 = vmulq_s32(v29, v126);
          v39.i32[0] = *(v22 - 44);
          v39.i32[1] = *(v22 - 32);
          v129.val[0].i16[0] = v129.val[0].u8[0];
          v129.val[0].i16[1] = BYTE2(v22[2]);
          v129.val[0].i16[2] = v129.val[0].u8[4];
          v129.val[0].i16[3] = BYTE2(v22[14]);
          v129.val[0].i16[4] = v129.val[0].u8[8];
          v129.val[0].i16[5] = BYTE2(v22[26]);
          v129.val[0].i16[6] = v129.val[0].u8[12];
          v129.val[0].i16[7] = BYTE2(v22[38]);
          v39.i32[2] = *(v22 - 20);
          v40 = vmulq_s32(v129.val[0], v124);
          v39.i32[3] = *(v22 - 8);
          v41.i32[0] = v22[4];
          v29.i32[0] = v22[5];
          v42 = vshrq_n_u32(v30, 8uLL);
          v41.i32[1] = v22[16];
          v41.i32[2] = v22[28];
          v30.i16[0] = v30.u8[0];
          v30.i16[1] = BYTE2(*(v22 - 48));
          v30.i16[2] = v30.u8[4];
          v30.i16[3] = BYTE2(*(v22 - 36));
          v30.i16[4] = v30.u8[8];
          v30.i16[5] = BYTE2(*(v22 - 24));
          v30.i16[6] = v30.u8[12];
          v30.i16[7] = BYTE2(*(v22 - 12));
          v41.i32[3] = v22[40];
          v43.i32[0] = *(v22 - 43);
          v44 = vshrq_n_u32(v31, 8uLL);
          v43.i32[1] = *(v22 - 31);
          v43.i32[2] = *(v22 - 19);
          v31.i16[0] = v31.u8[0];
          v31.i16[1] = BYTE2(*(v22 - 47));
          v31.i16[2] = v31.u8[4];
          v31.i16[3] = BYTE2(*(v22 - 35));
          v31.i16[4] = v31.u8[8];
          v31.i16[5] = BYTE2(*(v22 - 23));
          v31.i16[6] = v31.u8[12];
          v31.i16[7] = BYTE2(*(v22 - 11));
          v43.i32[3] = *(v22 - 7);
          v45 = vshrq_n_u32(v32, 8uLL);
          v29.i32[1] = v22[17];
          v29.i32[2] = v22[29];
          v32.i16[0] = v32.u8[0];
          v32.i16[1] = BYTE2(*(v22 - 46));
          v32.i16[2] = v32.u8[4];
          v32.i16[3] = BYTE2(*(v22 - 34));
          v32.i16[4] = v32.u8[8];
          v32.i16[5] = BYTE2(*(v22 - 22));
          v32.i16[6] = v32.u8[12];
          v32.i16[7] = BYTE2(*(v22 - 10));
          v29.i32[3] = v22[41];
          v129.val[0] = vshrq_n_u32(v35, 8uLL);
          v46 = vshrq_n_u32(v33, 8uLL);
          v35.i16[0] = v35.u8[0];
          v35.i16[1] = BYTE2(*(v22 - 45));
          v35.i16[2] = v35.u8[4];
          v35.i16[3] = BYTE2(*(v22 - 33));
          v35.i16[4] = v35.u8[8];
          v35.i16[5] = BYTE2(*(v22 - 21));
          v35.i16[6] = v35.u8[12];
          v35.i16[7] = BYTE2(*(v22 - 9));
          v33.i16[0] = v33.u8[0];
          v33.i16[1] = BYTE2(v22[3]);
          v33.i16[2] = v33.u8[4];
          v33.i16[3] = BYTE2(v22[15]);
          v33.i16[4] = v33.u8[8];
          v33.i16[5] = BYTE2(v22[27]);
          v33.i16[6] = v33.u8[12];
          v33.i16[7] = BYTE2(v22[39]);
          v47 = vmulq_s32(v33, v112);
          v117 = vshrq_n_u32(v39, 8uLL);
          v39.i16[0] = v39.u8[0];
          v39.i16[1] = BYTE2(*(v22 - 44));
          v39.i16[2] = v39.u8[4];
          v39.i16[3] = BYTE2(*(v22 - 32));
          v39.i16[4] = v39.u8[8];
          v39.i16[5] = BYTE2(*(v22 - 20));
          v39.i16[6] = v39.u8[12];
          v39.i16[7] = BYTE2(*(v22 - 8));
          v48 = vshrq_n_u32(v41, 8uLL);
          v41.i16[0] = v41.u8[0];
          v41.i16[1] = BYTE2(v22[4]);
          v41.i16[2] = v41.u8[4];
          v41.i16[3] = BYTE2(v22[16]);
          v41.i16[4] = v41.u8[8];
          v41.i16[5] = BYTE2(v22[28]);
          v41.i16[6] = v41.u8[12];
          v41.i16[7] = BYTE2(v22[40]);
          v49 = vmulq_s32(v41, v123);
          v116 = vshrq_n_u32(v43, 8uLL);
          v43.i16[0] = v43.u8[0];
          v43.i16[1] = BYTE2(*(v22 - 43));
          v43.i16[2] = v43.u8[4];
          v43.i16[3] = BYTE2(*(v22 - 31));
          v43.i16[4] = v43.u8[8];
          v43.i16[5] = BYTE2(*(v22 - 19));
          v43.i16[6] = v43.u8[12];
          v43.i16[7] = BYTE2(*(v22 - 7));
          v50.i32[0] = *(v22 - 39);
          v51 = vmlaq_s32(vmulq_s32(v28, v128), (*&v34 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v127);
          v50.i32[1] = *(v22 - 27);
          v50.i32[2] = *(v22 - 15);
          v52 = vmulq_s32(v31, v126);
          v53 = vshrq_n_u32(v29, 8uLL);
          v50.i32[3] = *(v22 - 3);
          v41.i32[0] = v22[8];
          v54.i32[0] = v22[9];
          v54.i32[1] = v22[21];
          v55 = vmlaq_s32(v38, (*&v36 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v125);
          v54.i32[2] = v22[33];
          v54.i32[3] = v22[45];
          v56 = vmulq_s32(v32, v124);
          v29.i16[0] = v29.u8[0];
          v29.i16[1] = BYTE2(v22[5]);
          v29.i16[2] = v29.u8[4];
          v29.i16[3] = BYTE2(v22[17]);
          v29.i16[4] = v29.u8[8];
          v29.i16[5] = BYTE2(v22[29]);
          v29.i16[6] = v29.u8[12];
          v29.i16[7] = BYTE2(v22[41]);
          v36.i32[0] = *(v22 - 38);
          v36.i32[1] = *(v22 - 26);
          v36.i32[2] = *(v22 - 14);
          v57 = vmlaq_s32(v40, (*&v37 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v113);
          v58 = vmulq_s32(v29, v109);
          v36.i32[3] = *(v22 - 2);
          v59 = vmulq_s32(v35, v112);
          v37.i32[0] = v22[10];
          v35.i32[0] = v22[11];
          v37.i32[1] = v22[22];
          v129.val[1] = (*v129.val & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL));
          v37.i32[2] = v22[34];
          v37.i32[3] = v22[46];
          v114 = vmlaq_s32(v47, (*&v46 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v111);
          v46.i32[0] = *(v22 - 37);
          v46.i32[1] = *(v22 - 25);
          v60 = vmulq_s32(v39, v123);
          v46.i32[2] = *(v22 - 13);
          v46.i32[3] = *(v22 - 1);
          v61 = *&v117 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
          v35.i32[1] = v22[23];
          v115 = vmlaq_s32(v49, (*&v48 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v110);
          v35.i32[2] = v22[35];
          v35.i32[3] = v22[47];
          v62 = vmulq_s32(v43, v109);
          v118 = vmlaq_s32(v58, (*&v53 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v108);
          v63 = vshrq_n_u32(v50, 8uLL);
          v50.i16[0] = v50.u8[0];
          v50.i16[1] = BYTE2(*(v22 - 39));
          v50.i16[2] = v50.u8[4];
          v50.i16[3] = BYTE2(*(v22 - 27));
          v50.i16[4] = v50.u8[8];
          v50.i16[5] = BYTE2(*(v22 - 15));
          v50.i16[6] = v50.u8[12];
          v50.i16[7] = BYTE2(*(v22 - 3));
          v64 = vshrq_n_u32(v54, 8uLL);
          v54.i16[0] = v54.u8[0];
          v54.i16[1] = BYTE2(v22[9]);
          v54.i16[2] = v54.u8[4];
          v54.i16[3] = BYTE2(v22[21]);
          v54.i16[4] = v54.u8[8];
          v54.i16[5] = BYTE2(v22[33]);
          v54.i16[6] = v54.u8[12];
          v54.i16[7] = BYTE2(v22[45]);
          v65 = vmulq_s32(v50, v112);
          v66 = vmlaq_s32(vmulq_s32(v30, v128), (*&v42 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v127);
          v119 = vmlaq_s32(v52, (*&v44 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v125);
          v67 = vmlaq_s32(vmulq_s32(v54, v112), (*&v64 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v111);
          v68 = vshrq_n_u32(v36, 8uLL);
          v36.i16[0] = v36.u8[0];
          v36.i16[1] = BYTE2(*(v22 - 38));
          v36.i16[2] = v36.u8[4];
          v36.i16[3] = BYTE2(*(v22 - 26));
          v36.i16[4] = v36.u8[8];
          v36.i16[5] = BYTE2(*(v22 - 14));
          v36.i16[6] = v36.u8[12];
          v36.i16[7] = BYTE2(*(v22 - 2));
          v69 = vshrq_n_u32(v37, 8uLL);
          v37.i16[0] = v37.u8[0];
          v37.i16[1] = BYTE2(v22[10]);
          v37.i16[2] = v37.u8[4];
          v37.i16[3] = BYTE2(v22[22]);
          v37.i16[4] = v37.u8[8];
          v37.i16[5] = BYTE2(v22[34]);
          v37.i16[6] = v37.u8[12];
          v37.i16[7] = BYTE2(v22[46]);
          v70 = vmlaq_s32(vmulq_s32(v37, v123), (*&v69 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v110);
          v71 = vshrq_n_u32(v46, 8uLL);
          v46.i16[0] = v46.u8[0];
          v46.i16[1] = BYTE2(*(v22 - 37));
          v46.i16[2] = v46.u8[4];
          v46.i16[3] = BYTE2(*(v22 - 25));
          v46.i16[4] = v46.u8[8];
          v46.i16[5] = BYTE2(*(v22 - 13));
          v46.i16[6] = v46.u8[12];
          v46.i16[7] = BYTE2(*(v22 - 1));
          v72 = vshrq_n_u32(v35, 8uLL);
          v35.i16[0] = v35.u8[0];
          v35.i16[1] = BYTE2(v22[11]);
          v35.i16[2] = v35.u8[4];
          v35.i16[3] = BYTE2(v22[23]);
          v35.i16[4] = v35.u8[8];
          v35.i16[5] = BYTE2(v22[35]);
          v35.i16[6] = v35.u8[12];
          v35.i16[7] = BYTE2(v22[47]);
          v73 = vmulq_s32(v46, v109);
          v46.i32[0] = *(v22 - 42);
          v46.i32[1] = *(v22 - 30);
          v74 = vmlaq_s32(v62, (*&v116 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v108);
          v46.i32[2] = *(v22 - 18);
          v46.i32[3] = *(v22 - 6);
          v75 = vmlaq_s32(v65, (*&v63 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v111);
          v63.i32[0] = v22[6];
          v69.i32[0] = v22[7];
          v63.i32[1] = v22[18];
          v76 = vmlaq_s32(vmulq_s32(v36, v123), (*&v68 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v110);
          v63.i32[2] = v22[30];
          v63.i32[3] = v22[42];
          v77 = vmlaq_s32(v73, (*&v71 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v108);
          v68.i32[0] = *(v22 - 41);
          v68.i32[1] = *(v22 - 29);
          v68.i32[2] = *(v22 - 17);
          v68.i32[3] = *(v22 - 5);
          v69.i32[1] = v22[19];
          v69.i32[2] = v22[31];
          v69.i32[3] = v22[43];
          v78 = vshrq_n_u32(v46, 8uLL);
          v46.i16[0] = v46.u8[0];
          v46.i16[1] = BYTE2(*(v22 - 42));
          v46.i16[2] = v46.u8[4];
          v46.i16[3] = BYTE2(*(v22 - 30));
          v46.i16[4] = v46.u8[8];
          v46.i16[5] = BYTE2(*(v22 - 18));
          v46.i16[6] = v46.u8[12];
          v46.i16[7] = BYTE2(*(v22 - 6));
          v79 = vmlaq_s32(vmulq_s32(v46, v128), (*&v78 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v127);
          v80 = vshrq_n_u32(v63, 8uLL);
          v63.i16[0] = v63.u8[0];
          v63.i16[1] = BYTE2(v22[6]);
          v63.i16[2] = v63.u8[4];
          v63.i16[3] = BYTE2(v22[18]);
          v63.i16[4] = v63.u8[8];
          v63.i16[5] = BYTE2(v22[30]);
          v63.i16[6] = v63.u8[12];
          v63.i16[7] = BYTE2(v22[42]);
          v81 = vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v51, 0xFuLL), v55, 0xFuLL), v57, 0xFuLL), v114, 0xFuLL);
          v129.val[0] = vmlaq_s32(vmulq_s32(v63, v128), (*&v80 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v127);
          v82 = vshrq_n_u32(v68, 8uLL);
          v68.i16[0] = v68.u8[0];
          v68.i16[1] = BYTE2(*(v22 - 41));
          v68.i16[2] = v68.u8[4];
          v68.i16[3] = BYTE2(*(v22 - 29));
          v68.i16[4] = v68.u8[8];
          v68.i16[5] = BYTE2(*(v22 - 17));
          v68.i16[6] = v68.u8[12];
          v68.i16[7] = BYTE2(*(v22 - 5));
          v83 = vmlaq_s32(vmulq_s32(v68, v126), (*&v82 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v125);
          v84 = vshrq_n_u32(v69, 8uLL);
          v69.i16[0] = v69.u8[0];
          v69.i16[1] = BYTE2(v22[7]);
          v69.i16[2] = v69.u8[4];
          v69.i16[3] = BYTE2(v22[19]);
          v69.i16[4] = v69.u8[8];
          v69.i16[5] = BYTE2(v22[31]);
          v69.i16[6] = v69.u8[12];
          v69.i16[7] = BYTE2(v22[43]);
          v85 = vmlaq_s32(vmulq_s32(v69, v126), (*&v84 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v125);
          v84.i32[0] = *(v22 - 40);
          v84.i32[1] = *(v22 - 28);
          v86 = vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v66, 0xFuLL), v119, 0xFuLL), vmlaq_s32(v56, (*&v45 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v113), 0xFuLL), vmlaq_s32(v59, v129.val[1], v111), 0xFuLL);
          v84.i32[2] = *(v22 - 16);
          v84.i32[3] = *(v22 - 4);
          v87 = vshrq_n_u32(v84, 8uLL);
          v84.i16[0] = v84.u8[0];
          v84.i16[1] = BYTE2(*(v22 - 40));
          v84.i16[2] = v84.u8[4];
          v84.i16[3] = BYTE2(*(v22 - 28));
          v84.i16[4] = v84.u8[8];
          v84.i16[5] = BYTE2(*(v22 - 16));
          v84.i16[6] = v84.u8[12];
          v84.i16[7] = BYTE2(*(v22 - 4));
          v130 = vld2q_f32(v23);
          v41.i32[1] = v22[20];
          v41.i32[2] = v22[32];
          v41.i32[3] = v22[44];
          v88 = vshrq_n_u32(v41, 8uLL);
          v41.i16[0] = v41.u8[0];
          v41.i16[1] = BYTE2(v22[8]);
          v41.i16[2] = v41.u8[4];
          v41.i16[3] = BYTE2(v22[20]);
          v41.i16[4] = v41.u8[8];
          v41.i16[5] = BYTE2(v22[32]);
          v41.i16[6] = v41.u8[12];
          v41.i16[7] = BYTE2(v22[44]);
          v22 += 96;
          v24 = vminq_s32(vsubq_s32(v121.val[1], vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v75, 0xFuLL), v76, 0xFuLL), v77, 0xFuLL), v79, 0xFuLL), v83, 0xFuLL), vmlaq_s32(vmulq_s32(v84, v124), (*&v87 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v113), 0xFuLL)), vminq_s32(vsubq_s32(v121.val[0], vsraq_n_u32(vsraq_n_u32(v86, vmlaq_s32(v60, v61, v110), 0xFuLL), v74, 0xFuLL)), v122));
          v23 += 16;
          v26 = vminq_s32(vsubq_s32(v130.val[1], vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vsraq_n_u32(vshrq_n_u32(v67, 0xFuLL), v70, 0xFuLL), vmlaq_s32(vmulq_s32(v35, v109), (*&v72 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v108), 0xFuLL), v129.val[0], 0xFuLL), v85, 0xFuLL), vmlaq_s32(vmulq_s32(v41, v124), (*&v88 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v113), 0xFuLL)), vminq_s32(vsubq_s32(v130.val[0], vsraq_n_u32(vsraq_n_u32(v81, v115, 0xFuLL), v118, 0xFuLL)), v120));
          v25 -= 8;
        }

        while (v25);
        v20 = vminvq_s32(vminq_s32(v24, v26));
        v15 = v106;
        v18 = v107;
        v19 = v104;
        v16 = v105;
        if ((v8 & 0x7FFFFFF8) != v8)
        {
LABEL_18:
          v89 = vextq_s8(v18, vextq_s8(v18, v18, 8uLL), 0xCuLL);
          *(v89.i64 + 4) = v15;
          v90 = vextq_s8(v19, vextq_s8(v19, v19, 8uLL), 0xCuLL);
          *(v90.i64 + 4) = v16;
          v91 = vextq_s8(v18, v18, 4uLL).u64[0];
          v92 = vextq_s8(v19, v19, 4uLL).u64[0];
          v93 = v21 + 1;
          do
          {
            v94.i16[0] = *v14;
            v94.i16[1] = BYTE2(*v14);
            v94.i16[2] = BYTE4(*v14);
            v94.i16[3] = BYTE6(*v14);
            v94.i16[4] = *(v14 + 8);
            v94.i16[5] = BYTE2(*(v14 + 8));
            v94.i16[6] = BYTE12(*v14);
            v94.i16[7] = BYTE14(*v14);
            v95.i16[0] = *(v14 + 16);
            v95.i16[1] = BYTE2(*(v14 + 16));
            v95.i16[2] = BYTE4(*(v14 + 16));
            v95.i16[3] = BYTE6(*(v14 + 16));
            v96 = vshr_n_u32(vmla_s32(vmul_s32(v95, v91), (*&vshr_n_u32(*(v14 + 16), 8uLL) & 0xFFFF00FFFFFF00FFLL), v92), 0xFuLL);
            v97 = *v11;
            v98 = v11[1];
            v11 += 2;
            v99 = v97 - (vaddvq_s32(vshrq_n_u32(vmlaq_s32(vmulq_s32(v94, v89), (*&vshrq_n_u32(*v14, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v90), 0xFuLL)) + v96.i32[0]) - v96.i32[1];
            if (v99 >= v20)
            {
              v99 = v20;
            }

            v100.i32[3] = *(v14 + 24);
            v100.i32[2] = *(v14 + 44);
            v100.i64[0] = *(v14 + 36);
            v101 = vshrq_n_u32(v100, 8uLL);
            v100.i16[0] = v100.u8[0];
            v100.i16[1] = BYTE2(*(v14 + 36));
            v100.i16[2] = BYTE4(*(v14 + 36));
            v100.i16[3] = BYTE6(*(v14 + 36));
            v100.i16[4] = v100.u8[8];
            v100.i16[5] = BYTE2(*(v14 + 44));
            v100.i16[6] = v100.u8[12];
            v100.i16[7] = BYTE2(*(v14 + 24));
            v102 = vshrq_n_u32(vmlaq_s32(vmulq_s32(v100, v18), (*&v101 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v19), 0xFuLL);
            v101.i16[0] = *(v14 + 28);
            v101.i16[1] = BYTE2(*(v14 + 28));
            v101.i16[2] = BYTE4(*(v14 + 28));
            v101.i16[3] = BYTE6(*(v14 + 28));
            *v101.i8 = vshr_n_u32(vmla_s32(vmul_s32(*v101.i8, v15), (*&vshr_n_u32(*(v14 + 28), 8uLL) & 0xFFFF00FFFFFF00FFLL), v16), 0xFuLL);
            v103 = v98 - v101.i32[1] - (vaddvq_s32(v102) + v101.i32[0]);
            if (v103 >= v99)
            {
              v20 = v99;
            }

            else
            {
              v20 = v103;
            }

            --v93;
            v14 += 48;
          }

          while (v93 > 1);
        }
      }

      return (((*(a1 + 1568) + v20) * *(a1 + 1052) + *(a1 + 1192) / 2) >> *(a1 + 1196));
    }
  }

  return sub_100014CD8(a1, a2);
}