_DWORD *vp9_find_best_ref_mvs(_DWORD *result, int a2, __int16 *a3, _DWORD *a4, _DWORD *a5)
{
  v5 = result[122] - 1248;
  v6 = result[123] + 1248;
  v7 = result[124] - 1248;
  v8 = result[125] + 1248;
  v9 = *a3;
  if (a2)
  {
    if (v9 >= 0)
    {
      v10 = *a3;
    }

    else
    {
      v10 = -v9;
    }

    v11 = a3[1];
    if (v11 >= 0)
    {
      LOWORD(v12) = a3[1];
    }

    else
    {
      v12 = -v11;
    }

    if (v10 > 0x3F || v12 >= 0x40u)
    {
      if (v9 < 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      LOWORD(v9) = (((v9 << 15) >> 15) & v13) + v9;
      v14 = v11 - 1;
      if (v11 < 1)
      {
        v14 = v11 + 1;
      }

      if (v11)
      {
        LOWORD(v11) = v14;
      }
    }

    if (v11 >= v6)
    {
      v15 = *(result + 246) + 1248;
    }

    else
    {
      v15 = v11;
    }

    if (v5 <= v11)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(result + 244) - 1248;
    }

    a3[1] = v16;
    if (v9 >= v8)
    {
      v17 = v8;
    }

    else
    {
      v17 = v9;
    }

    if (v7 <= v9)
    {
      v18 = v17;
    }

    else
    {
      v18 = v7;
    }

    *a3 = v18;
    v19 = a3[2];
    if (v19 >= 0)
    {
      v20 = a3[2];
    }

    else
    {
      v20 = -v19;
    }

    v21 = a3[3];
    if (v21 >= 0)
    {
      LOWORD(v22) = a3[3];
    }

    else
    {
      v22 = -v21;
    }

    if (v20 > 0x3F || v22 >= 0x40u)
    {
      if (v19 < 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = -1;
      }

      LOWORD(v19) = (((v19 << 15) >> 15) & v23) + v19;
      v24 = v21 - 1;
      if (v21 < 1)
      {
        v24 = v21 + 1;
      }

      if (v21)
      {
        LOWORD(v21) = v24;
      }
    }
  }

  else
  {
    if (v9 < 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    v26 = (((v9 << 15) >> 15) & v25) + v9;
    v27 = a3[1];
    if (v27 < 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = -1;
    }

    v29 = ((((v27 << 15) >> 15) & v28) + v27);
    if (v29 >= v6)
    {
      v30 = *(result + 246) + 1248;
    }

    else
    {
      v30 = v29;
    }

    if (v5 <= v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = *(result + 244) - 1248;
    }

    a3[1] = v31;
    if (v26 >= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v26;
    }

    if (v7 <= v26)
    {
      v33 = v32;
    }

    else
    {
      v33 = v7;
    }

    *a3 = v33;
    v19 = a3[2];
    if (v19 < 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = -1;
    }

    LOWORD(v19) = (((v19 << 15) >> 15) & v34) + v19;
    v21 = a3[3];
    if (v21 < 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = -1;
    }

    LOWORD(v21) = (((v21 << 15) >> 15) & v35) + v21;
  }

  if (v21 < v6)
  {
    LOWORD(v6) = v21;
  }

  if (v5 <= v21)
  {
    LOWORD(v5) = v6;
  }

  a3[3] = v5;
  if (v19 < v8)
  {
    LOWORD(v8) = v19;
  }

  if (v7 <= v19)
  {
    LOWORD(v7) = v8;
  }

  a3[2] = v7;
  *a4 = *a3;
  *a5 = *(a3 + 1);
  return result;
}

uint64_t vp9_noise_estimate_init(uint64_t result, int a2, int a3)
{
  v3 = a3 * a2;
  if ((a3 * a2) >> 10 <= 0x7E8)
  {
    v4 = 140;
  }

  else
  {
    v4 = 200;
  }

  *(result + 8) = 0x5A00000000;
  *(result + 24) = 0;
  *(result + 20) = 0;
  *result = 0;
  *(result + 4) = v3 >= 921600;
  if (v3 >= 921600)
  {
    goto LABEL_7;
  }

  if (v3 >= 230400)
  {
    v4 = 115;
LABEL_7:
    *(result + 12) = v4;
    *(result + 32) = 15;
    *(result + 16) = v4 + (v4 >> 1);
    return result;
  }

  *(result + 32) = 15;
  *(result + 16) = 135;
  return result;
}

int *vp9_update_noise_estimate(int *result, double a2, double a3, double a4, double a5, double a6, double a7, int32x4_t a8)
{
  v115 = *MEMORY[0x277D85DE8];
  v8 = result + 233400;
  v9 = result + 188635;
  v10 = result + 47461;
  v11 = result + 42997;
  v12 = result[42997];
  v13 = 40;
  if (v12 <= 352)
  {
    if (result[42998] >= 289)
    {
      v13 = 40;
    }

    else
    {
      v13 = 60;
    }
  }

  v14 = result + 231593;
  v15 = *v10;
  v16 = *(result + 23806);
  v17 = result[47512];
  if (v17 >= 1)
  {
    if (*v9 && (v18 = result[188636], v19 = result[188638] - 1, v18 != v19))
    {
      v20 = 6;
      if (result[43005])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = result + 233400;
      if ((v12 - 641) >= 0x500)
      {
        v20 = 6;
      }

      else
      {
        v20 = 2;
      }

      if (result[43005])
      {
LABEL_33:
        v21 = 1;
        result[233458] = 0;
        v22 = result[188638];
        if (v22 < 2)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (!*v9)
      {
        if (v12 < 320)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }

      v18 = result[188636];
      v19 = result[188638] - 1;
    }

    if (v12 < 320 || v18 != v19)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (result[42998] > 179)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v20 = 6;
  if (result[43005])
  {
    goto LABEL_33;
  }

LABEL_24:
  if (result[47519] || result[47523] != 1 || result[47537] != 3 || result[47514] < 5 || result[233449] || result[233448] || *v9 || result[47595] == 1 || result[42998] * v12 <= 230399)
  {
    goto LABEL_33;
  }

LABEL_22:
  v21 = 0;
  result[233458] = 1;
  v22 = result[188638];
  if (v22 >= 2)
  {
LABEL_34:
    v15 = result[231598];
  }

LABEL_35:
  if ((v21 & 1) != 0 || (v15 & 7) != 0 || !v16 || v22 == 1 && (result[233464] != v12 || result[233465] != result[42998]))
  {
    if (v17 >= 1 && (!*v9 || result[188636] == v22 - 1) && result[233401] >= 1)
    {
      v23 = 0;
      v24 = *(result + 23805);
      v25 = *(result + 116707);
      v26 = *(v24 + 56);
      do
      {
        result = memcpy(v25, v26, *v8);
        v25 += v8[4];
        v26 += *(v24 + 16);
        ++v23;
      }

      while (v23 < v8[1]);
    }

    if (v16)
    {
      *(v8 + 32) = *v11;
    }

    return result;
  }

  v27 = result + 184644;
  if (v15 >= 61 && result[231782] > 1 && *v27 > v22 && result[188636] == v22 - 1 && result[184770] < v13)
  {
    result[233459] = 0;
    result[233463] = 0;
    result[233466] = 10;
    if (v17 >= 1 && result[231598] >= 2)
    {
      result[233441] = 0;
      result[233445] = 0;
      result[233446] = 0;
      v28 = *(result + 23805);
      v29 = result + 233400;

      return copy_frame(v29, v28);
    }

    return result;
  }

  v114 = 0u;
  memset(v113, 0, sizeof(v113));
  v30 = result + 47610;
  v31 = result[43252];
  if (v31 < 1 || (v32 = result[43254], v32 < 1))
  {
LABEL_112:
    v80 = 0;
    v81 = 0;
    goto LABEL_113;
  }

  v33 = 0;
  v34 = 0;
  v35 = *(v16 + 7);
  v109 = v16[4];
  v110 = *(*v30 + 16);
  v37 = *(*v30 + 56);
  v36 = *(*v30 + 64);
  v38 = *(*v30 + 72);
  v108 = *(*v30 + 36);
  v39 = *(result + 116734);
  v40 = v39 + 1;
  v41 = vdupq_n_s32(v20);
  do
  {
    if (v32 >= 4)
    {
      if (v32 < 0x20)
      {
        v43 = 0;
LABEL_72:
        v55 = v34;
        v56 = (v39->u32 + v43);
        v57 = v43 - (v32 & 0x7FFFFFFC);
        do
        {
          v58 = *v56++;
          a8.i32[0] = v58;
          a8 = vcgtq_u32(vmovl_u16(*&vmovl_u8(*a8.i8)), v41);
          v55 = vsubq_s32(v55, a8);
          v57 += 4;
        }

        while (v57);
        v34 = vaddvq_s32(v55);
        v42 = v32 & 0x7FFFFFFC;
        if (v42 == v32)
        {
          goto LABEL_63;
        }

        goto LABEL_75;
      }

      v44 = 0uLL;
      v45 = v34;
      v46 = v32 & 0x7FFFFFE0;
      v47 = v40;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      do
      {
        v54 = v47[-1];
        v48 = vsubq_s32(v48, vcgtq_u32(vqtbl1q_s8(v54, xmmword_273B8E7B0), v41));
        v44 = vsubq_s32(v44, vcgtq_u32(vqtbl1q_s8(v54, xmmword_273B8E7C0), v41));
        v45 = vsubq_s32(v45, vcgtq_u32(vqtbl1q_s8(v54, xmmword_273B8E7D0), v41));
        v49 = vsubq_s32(v49, vcgtq_u32(vqtbl1q_s8(v54, xmmword_273B8E7A0), v41));
        v52 = vsubq_s32(v52, vcgtq_u32(vqtbl1q_s8(*v47, xmmword_273B8E7B0), v41));
        v51 = vsubq_s32(v51, vcgtq_u32(vqtbl1q_s8(*v47, xmmword_273B8E7C0), v41));
        v50 = vsubq_s32(v50, vcgtq_u32(vqtbl1q_s8(*v47, xmmword_273B8E7D0), v41));
        v53 = vsubq_s32(v53, vcgtq_u32(vqtbl1q_s8(*v47, xmmword_273B8E7A0), v41));
        v47 += 2;
        v46 -= 32;
      }

      while (v46);
      a8 = vaddq_s32(vaddq_s32(v51, v44), vaddq_s32(v53, v49));
      v34 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v50, v45), vaddq_s32(v52, v48)), a8));
      if ((v32 & 0x7FFFFFE0) == v32)
      {
        goto LABEL_63;
      }

      v43 = v32 & 0x7FFFFFE0;
      v42 = v43;
      if ((v32 & 0x1C) != 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v42 = 0;
    }

    do
    {
LABEL_75:
      if (v20 < v39->u8[v42])
      {
        ++v34;
      }

      ++v42;
    }

    while (v32 != v42);
LABEL_63:
    ++v33;
    v40 = (v40 + v32);
    v39 = (v39 + v32);
  }

  while (v33 != v31);
  if (v34 < ((3 * v31 * v32) >> 3))
  {
    goto LABEL_112;
  }

  v102 = result + 47610;
  v103 = result + 188635;
  v59 = 0;
  v104 = result + 47461;
  v61 = v109;
  v60 = v110;
  v62 = *(*v30 + 36);
  v63 = 1;
  v106 = result + 231593;
  v107 = result;
  v105 = result + 184644;
  do
  {
    if (v32 >= 1)
    {
      v65 = 0;
      while (1)
      {
        if (((v65 | v59) & 3) != 0)
        {
          goto LABEL_88;
        }

        if (v59 >= v11[255] - 1 || v65 >= v32 - 1)
        {
          goto LABEL_88;
        }

        v68 = v65 + v59 * v32;
        v69 = v68 + 1;
        v70 = *(v8 + 34);
        v71 = *(v70 + v68);
        v72 = *(v70 + v69);
        v73 = (v70 + v65 + v63 * v32);
        v74 = *v73;
        v75 = v73[1];
        if (v74 < v75)
        {
          v75 = v74;
        }

        if (v72 < v75)
        {
          v75 = v72;
        }

        if (v75 < v71)
        {
          v71 = v75;
        }

        if (v20 >= v71 || v27[122] || v14[121])
        {
          goto LABEL_88;
        }

        if (v71 <= 0x3C && v8[56] != 0)
        {
          v77 = vpx_skin_pixel(*(v37 + (8 * v110 + 8)), *(v36 + 4 * v108 + 4), *(v38 + 4 * v108 + 4), v71 < 0x1A);
          v62 = v108;
          v61 = v109;
          v60 = v110;
          v27 = v105;
          v14 = v106;
          v78 = v77;
          result = v107;
          if (v78)
          {
            goto LABEL_88;
          }
        }

        v111 = 0;
        v79 = (*(v27 + 288))(v37, v60, v35, v61, &v111);
        if (v79 < 0x7D0)
        {
          v66 = &v113[0].i8[4 * (v79 / 0x64u)];
        }

        else
        {
          v66 = &v114 + 12;
          if (v79 >= 0xBB8)
          {
            goto LABEL_87;
          }
        }

        ++*v66;
LABEL_87:
        v14 = v106;
        result = v107;
        v27 = v105;
        v61 = v109;
        v60 = v110;
        v62 = v108;
LABEL_88:
        v37 += 8;
        v35 += 8;
        v36 += 4;
        v38 += 4;
        ++v65;
        LODWORD(v32) = v11[257];
        if (v65 >= v32)
        {
          LODWORD(v31) = v11[255];
          break;
        }
      }
    }

    v37 += 8 * (v60 - v32);
    v35 += 8 * (v61 - v32);
    v64 = 4 * (v62 - v32);
    v36 += v64;
    v38 += v64;
    ++v59;
    ++v63;
  }

  while (v59 < v31);
  v12 = *v11;
  v81 = v113[0].i32[0];
  v80 = HIDWORD(v114);
  v9 = v103;
  v10 = v104;
  v30 = v102;
LABEL_113:
  v8[64] = v12;
  v8[65] = v11[1];
  if (v81 < 0xB || v80 <= v81 >> 2)
  {
    v83 = v113[0].i32[1];
    v82 = v113[0].i32[2];
  }

  else
  {
    v81 = 0;
    v113[0].i32[0] = 0;
    *(v113 + 4) = vshlq_u32(*(v113 + 4), xmmword_273BD3050);
    v113[1].i32[1] = v113[1].i32[1] >> 1;
    v113[1].i32[2] = (3 * v113[1].i32[2]) >> 1;
    v80 >>= 1;
    HIDWORD(v114) = v80;
    v82 = v113[0].i32[2];
    v83 = v113[0].i32[1];
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = (DWORD1(v114) + (v80 >> 1) + 2 * DWORD2(v114) + 2) >> 2;
  v88 = v80 >> 2;
  v89 = (v83 + v81 + v82) / 3;
  v90 = v113;
  do
  {
    if (v84 == 19)
    {
      v112[19] = v88;
    }

    else if (v84 == 18)
    {
      v112[18] = v87;
    }

    else if (v84)
    {
      v112[v84] = (v90[-1].i32[3] + 2 * v90->i32[0] + v90->i32[1] + 2) >> 2;
    }

    else
    {
      v112[0] = v89;
    }

    if (v112[v84] > v86)
    {
      v86 = v112[v84];
      v85 = v84;
    }

    ++v84;
    v90 = (v90 + 4);
  }

  while (v84 != 20);
  v91 = v8[59];
  v92 = (3 * v8[60] + 40 * v85) >> 2;
  v8[60] = v92;
  if (v91 > 1 || v92 <= v8[62])
  {
    v93 = v8[63] + 1;
    v8[63] = v93;
    if (v93 != v8[66])
    {
      goto LABEL_145;
    }
  }

  v8[66] = 30;
  v8[63] = 0;
  v94 = v8[61];
  if (v92 <= 2 * v94)
  {
    if (v92 <= v94)
    {
      v95 = v92 > v94 >> 1;
    }

    else
    {
      v95 = 2;
    }
  }

  else
  {
    v95 = 3;
  }

  v8[59] = v95;
  if (v10[51] > 0)
  {
    if (!*v9 || v9[1] == v9[3] - 1)
    {
      v96 = 233441;
      v8[45] = v95;
      if (!v95 || v8[46])
      {
        v97 = 0;
        goto LABEL_143;
      }

      v8[41] = 1;
      if (*v14)
      {
        result[48630] = result[2 * (v9[1] - (v9[3] == 3)) + 231594];
        v97 = 1;
        v96 = 48641;
LABEL_143:
        result[v96] = v97;
      }

      v8[46] = v95;
    }

LABEL_145:
    if (v10[51] >= 1 && (!*v9 || v9[1] == v9[3] - 1) && v8[1] >= 1)
    {
      v98 = 0;
      v99 = *v30;
      v100 = *(v8 + 7);
      v101 = *(*v30 + 56);
      do
      {
        result = memcpy(v100, v101, *v8);
        v100 += v8[4];
        v101 += *(v99 + 16);
        ++v98;
      }

      while (v98 < v8[1]);
    }
  }

  return result;
}

int *copy_frame(int *result, uint64_t a2)
{
  if (result[1] >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 7);
    v6 = *(a2 + 56);
    do
    {
      result = memcpy(v5, v6, *v3);
      v5 += v3[4];
      v6 += *(a2 + 16);
      ++v4;
    }

    while (v4 < v3[1]);
  }

  return result;
}

uint64_t vp9_pick_filter_level(uint64_t result, uint64_t a2, unsigned int a3)
{
  v58 = result;
  v60 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 189856);
  v5 = a2 + 176424;
  *(v5 + 8) = 0;
  if (a3 == 3)
  {
    if (*v5)
    {
      LODWORD(v6) = 0;
      goto LABEL_119;
    }

LABEL_5:
    v7 = v4[55];
    v8 = 63;
    if (v7 == 2)
    {
      if (*(a2 + 172972))
      {
        v9 = 741304;
      }

      else
      {
        v9 = 741308;
      }

      if (*(a2 + v9) <= 8u)
      {
        v8 = 63;
      }

      else
      {
        v8 = 47;
      }
    }

    v10 = *(a2 + 173028);
    v11 = *v4;
    if (*v4 == 8)
    {
      v12 = ac_qlookup_0;
    }

    else if (v11 == 12)
    {
      v12 = ac_qlookup_12;
    }

    else
    {
      if (v11 != 10)
      {
        v45 = -20723;
LABEL_88:
        result = 4584920;
        if (v11 == 10)
        {
          v46 = 4584920;
        }

        else
        {
          v46 = 18339678;
        }

        if (v11 == 10)
        {
          v47 = 20;
        }

        else
        {
          v47 = 22;
        }

        v48 = v11 == 8;
        if (v11 == 8)
        {
          v49 = 1146230;
        }

        else
        {
          v49 = v46;
        }

        if (v48)
        {
          v50 = 18;
        }

        else
        {
          v50 = v47;
        }

        v51 = (v49 + v45) >> v50;
        if (!v7 && v4[59] == 1 && v4[73] == 3 && *(v5 + 48) && (v10 < 200 || *(a2 + 171992) * *(a2 + 171988) >= 76801) && v4[131] != 1 && *(a2 + 172972))
        {
          v51 = (5 * v51) >> 3;
        }

        if (*(a2 + 172972))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 - 4;
        }

        if (v52 < v8)
        {
          v8 = v52;
        }

        if (v52 >= 0)
        {
          LODWORD(v6) = v8;
        }

        else
        {
          LODWORD(v6) = 0;
        }

        goto LABEL_119;
      }

      v12 = ac_qlookup_10;
    }

    if (v10 >= 0xFF)
    {
      v44 = 255;
    }

    else
    {
      v44 = *(a2 + 173028);
    }

    if (v10 < 0)
    {
      v44 = 0;
    }

    v45 = 20723 * v12[v44];
    goto LABEL_88;
  }

  if (a3 >= 2)
  {
    goto LABEL_5;
  }

  v13 = (a2 + 194648);
  v14 = 741304;
  v57 = a3 == 1;
  v15 = *(a2 + 172972);
  v16 = 63;
  if (v4[55] == 2)
  {
    v17 = 741308;
    if (v15)
    {
      v17 = 741304;
    }

    if (*(a2 + v17) <= 8u)
    {
      v16 = 63;
    }

    else
    {
      v16 = 47;
    }
  }

  v53 = v5;
  v18 = *(v5 + 4);
  if (v18 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = *(v5 + 4);
  }

  if (v18 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v15)
  {
    v14 = 741308;
  }

  v21 = *(a2 + v14);
  *&v22 = -1;
  *(&v22 + 1) = -1;
  v59[0] = v22;
  v59[1] = v22;
  v59[2] = v22;
  v59[3] = v22;
  v59[4] = v22;
  v59[5] = v22;
  v59[6] = v22;
  v59[7] = v22;
  v59[8] = v22;
  v59[9] = v22;
  v59[10] = v22;
  v59[11] = v22;
  v59[12] = v22;
  v59[13] = v22;
  v59[14] = v22;
  v59[15] = v22;
  v59[16] = v22;
  v59[17] = v22;
  v59[18] = v22;
  v59[19] = v22;
  v59[20] = v22;
  v59[21] = v22;
  v59[22] = v22;
  v59[23] = v22;
  v59[24] = v22;
  v59[25] = v22;
  v59[26] = v22;
  v59[27] = v22;
  v59[28] = v22;
  v59[29] = v22;
  v59[30] = v22;
  v59[31] = v22;
  v55 = v4;
  v56 = a2 + 171988;
  v23 = *(a2 + 172024);
  v24 = *(v23 + 7);
  v25 = *(a2 + 194688);
  v26 = v23[1];
  if ((v23[38] & 8) != 0)
  {
    if (v26 >= 1)
    {
      v28 = 0;
      v29 = (2 * v25);
      v30 = (2 * v24);
      do
      {
        memcpy(v29, v30, 2 * *v23);
        v30 += 2 * v23[4];
        v29 += 2 * *v13;
        ++v28;
      }

      while (v28 < v23[1]);
    }
  }

  else if (v26 >= 1)
  {
    v27 = 0;
    do
    {
      memcpy(v25, v24, *v23);
      v24 = v24 + v23[4];
      v25 = v25 + *v13;
      ++v27;
    }

    while (v27 < v23[1]);
  }

  result = try_filter_frame(v58, a2, v20, v57);
  *(v59 + v20) = result;
  if (v20 >= 0x10)
  {
    v31 = v20 >> 2;
  }

  else
  {
    v31 = 4;
  }

  if (v31)
  {
    v32 = result;
    v54 = a2;
    v33 = 0;
    v35 = v55;
    v34 = v56;
    while (1)
    {
      if ((v20 + v31) >= v16)
      {
        v37 = v16;
      }

      else
      {
        v37 = v20 + v31;
      }

      v38 = (v32 >> (15 - (v20 / 8))) * v31;
      if (v35[55] == 2 && v21 <= 0x13)
      {
        v39 = (v38 * v21 * 0x6666666666666667) >> 64;
        v38 = (v39 >> 3) + (v39 >> 63);
      }

      v40 = v38 >> (*(v34 + 1036) != 0);
      if (v33 <= 0)
      {
        v41 = v20 - v31;
        LODWORD(v6) = v41 & ~(v41 >> 31);
        if (v6 != v20)
        {
          break;
        }
      }

      v6 = v20;
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_48:
      if (v6 < v20)
      {
        v36 = -1;
      }

      else
      {
        v36 = 1;
      }

      v31 >>= v6 == v20;
      if (v6 == v20)
      {
        v33 = 0;
      }

      else
      {
        v33 = v36;
      }

      v20 = v6;
      if (!v31)
      {
        goto LABEL_118;
      }
    }

    result = *(v59 + v6);
    if (result < 0)
    {
      result = try_filter_frame(v58, v54, v41 & ~(v41 >> 31), v57);
      v35 = v55;
      v34 = v56;
      *(v59 + v6) = result;
    }

    v42 = result - v40;
    if (result >= v32)
    {
      v43 = v32;
    }

    else
    {
      v43 = result;
    }

    if (v42 >= v32)
    {
      v6 = v20;
    }

    else
    {
      v6 = v6;
    }

    if (v42 < v32)
    {
      v32 = v43;
    }

    if (v33 < 0)
    {
      goto LABEL_48;
    }

LABEL_76:
    if (v16 != v20)
    {
      result = *(v59 + v37);
      if (result < 0)
      {
        result = try_filter_frame(v58, v54, v37, v57);
        v35 = v55;
        v34 = v56;
        *(v59 + v37) = result;
      }

      if (result >= v32 - v40)
      {
        v6 = v6;
      }

      else
      {
        v6 = v37;
      }

      if (result < v32 - v40)
      {
        v32 = result;
      }
    }

    goto LABEL_48;
  }

  LODWORD(v6) = v20;
LABEL_118:
  v5 = v53;
LABEL_119:
  *v5 = v6;
  return result;
}

uint64_t try_filter_frame(uint64_t a1, int *a2, int a3, int a4)
{
  v8 = a2 + 233485;
  v9 = a2 + 48658;
  v10 = a2 + 43005;
  vp9_build_mask_frame((a2 + 42924), a3, a4);
  v16 = *(v10 + 1);
  if (*v8 < 2)
  {
    if (a3)
    {
      v17 = v10[247];
      v18 = (v17 >> 1) & 0x3FFFFFF8;
      v19 = v17 >> 3;
      if (v17 <= 0x47)
      {
        v19 = 8;
      }

      if (v17 < 9)
      {
        v18 = 0;
        v19 = v10[247];
      }

      if (a4)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      if (a4)
      {
        v17 = v19;
      }

      loop_filter_rows(v16, (a2 + 42924), (a2 + 18528), v20, v17 + v20, 1);
    }
  }

  else
  {
    vp9_loop_filter_frame_mt(v16, a2 + 42924, a2 + 18528, a3, 1, a4, *(v8 + 1), *v8, (a2 + 233490));
  }

  v21 = *(v10 + 1);
  v22 = *(a1 + 56);
  v24 = *(a1 + 12);
  v23 = *(a1 + 16);
  v25 = *(v21 + 56);
  v26 = *(v21 + 16);
  v27 = *(a1 + 8);
  if (*v10)
  {
    sse = highbd_get_sse(v22, v23, v25, v26, v27, v24, v11, v12, v13, v14, v15);
  }

  else
  {
    sse = get_sse(v22, v23, v25, v26, v27, v24, v11, *v12.i64, v13, v14);
  }

  v29 = sse;
  v30 = *(v10 + 1);
  v31 = *(v9 + 7);
  v32 = *(v30 + 56);
  v33 = v9[1];
  if ((v9[38] & 8) != 0)
  {
    if (v33 >= 1)
    {
      v35 = 0;
      v36 = (2 * v32);
      v37 = (2 * v31);
      do
      {
        memcpy(v36, v37, 2 * *v9);
        v37 += 2 * v9[4];
        v36 += 2 * *(v30 + 16);
        ++v35;
      }

      while (v35 < v9[1]);
    }
  }

  else if (v33 >= 1)
  {
    v34 = 0;
    do
    {
      memcpy(v32, v31, *v9);
      v31 = v31 + v9[4];
      v32 = v32 + *(v30 + 16);
      ++v34;
    }

    while (v34 < v9[1]);
  }

  return v29;
}

int *vp9_pick_intra_mode(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = (a2 + 82228);
  v5 = (a2 + 24920);
  v6 = a1 + 43256;
  v7 = **(a2 + 25360);
  v128 = 0;
  v125 = a2;
  if (max_txsize_lookup[a4] >= tx_mode_to_biggest_tx_size[a1[43256]])
  {
    v8 = tx_mode_to_biggest_tx_size[a1[43256]];
  }

  else
  {
    v8 = max_txsize_lookup[a4];
  }

  v9 = *(a2 + 25376);
  v10 = *(a2 + 25368);
  if (v9)
  {
    if (v9[8] <= 0)
    {
      if (*v9 >= 3u)
      {
        ++v9;
      }

      else
      {
        v9 += 44;
      }

      LODWORD(v9) = *v9;
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    LODWORD(v9) = 0;
  }

  if (v10)
  {
LABEL_8:
    if (v10[8] <= 0)
    {
      if (*v10 >= 3u)
      {
        ++v10;
      }

      else
      {
        v10 += 32;
      }

      LODWORD(v10) = *v10;
    }

    else
    {
      LODWORD(v10) = 0;
    }
  }

LABEL_19:
  result = &a1[100 * v9 + 232296 + 10 * v10];
  v130 = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 8) = 0;
  *(v7 + 12) = -2147450880;
  *(v7 + 6) = 768;
  *v4 = 0;
  *(a2 + 82236) = 0;
  v129 = 0;
  v126 = 0x100000000;
  v127 = &v128;
  *(v7 + 2) = v8;
  v12 = *v5;
  v13 = *(a2 + 24924);
  v14 = &ss_size_lookup[4 * a4];
  v15 = v14[2 * v12 + v13];
  v16 = ((*(a2 + 25404) >> (v12 + 5)) & (*(a2 + 25404) >> 31)) + num_4x4_blocks_wide_lookup[v15];
  v118 = ((*(a2 + 25412) >> (v13 + 5)) & (*(a2 + 25412) >> 31)) + num_4x4_blocks_high_lookup[v15];
  v17 = v118 < 1 || v16 < 1;
  v116 = (a2 + 24920);
  v117 = v7;
  v114 = (a2 + 82228);
  v115 = v6;
  v112 = result;
  v113 = a2;
  v110 = v8;
  v103 = &ss_size_lookup[4 * a4];
  if (v17)
  {
    goto LABEL_37;
  }

  v18 = 0;
  v19 = *(**(a2 + 25360) + 2);
  v20 = txsize_to_bsize[v19];
  v21 = b_width_log2_lookup[v15];
  v22 = v19 >= 2 ? 2 : *(**(a2 + 25360) + 2);
  v121 = 1 << v19;
  do
  {
    v23 = 0;
    do
    {
      v24 = *(v125 + 8216);
      v25 = *(v125 + 24928);
      v26 = *(v125 + 8224);
      v27 = *(v125 + 24936);
      v132 = 0;
      v133 = 0;
      v134 = 0;
      *(v125 + 8216) = v24 + 4 * (v23 + v18 * v26);
      v28 = v25 + 4 * (v23 + v18 * v27);
      *(v125 + 24928) = v28;
      v29 = *(v125 + 82216);
      if (v29)
      {
        v30 = v24 + 4 * (v23 + v18 * v26);
      }

      else
      {
        v30 = v25 + 4 * (v23 + v18 * v27);
      }

      if (v29)
      {
        v31 = v26;
      }

      else
      {
        v31 = v27;
      }

      v32 = v16;
      vp9_predict_intra_block(v125 + 24912, v21, v19, v126, v30, v31, v28, v27, v23, v18, 0);
      v131 = 0x7FFFFFFFFFFFFFFFLL;
      block_yrd(a1, v125, &v132, &v126 + 1, &v131, v20, v22, 0, 1);
      v16 = v32;
      *(v125 + 8216) = v24;
      *(v125 + 24928) = v25;
      v33 = v127;
      *v127 += v132;
      v33[1] += v133;
      v23 += v121;
    }

    while (v23 < v32);
    v18 += v121;
  }

  while (v18 < v118);
  v5 = v116;
  v7 = v117;
  v4 = v114;
  v6 = v115;
  result = v112;
  a2 = v113;
  v8 = v110;
  v14 = v103;
  if (HIDWORD(v126))
  {
LABEL_37:
    *v4 = 1;
    v34 = *(a2 + 25368);
    v35 = *(a2 + 25376);
    if (v35)
    {
      v36 = *(v35 + 3);
      v37 = *(v6 + 447);
      if (v34)
      {
LABEL_39:
        v38 = *(v34 + 3);
LABEL_42:
        v39 = vp9_prob_cost[256 - *(v37 + v38 + v36 + 1967)];
        goto LABEL_43;
      }
    }

    else
    {
      v36 = 0;
      v37 = *(v6 + 447);
      if (v34)
      {
        goto LABEL_39;
      }
    }

    v38 = 0;
    goto LABEL_42;
  }

  *v114 = 0;
  v34 = *(v113 + 25368);
  v35 = *(v113 + 25376);
  if (!v35)
  {
    v95 = 0;
    v96 = *(v115 + 447);
    if (v34)
    {
      goto LABEL_98;
    }

LABEL_108:
    v97 = 0;
    goto LABEL_109;
  }

  v95 = *(v35 + 3);
  v96 = *(v115 + 447);
  if (!v34)
  {
    goto LABEL_108;
  }

LABEL_98:
  v97 = *(v34 + 3);
LABEL_109:
  v39 = v128 + vp9_prob_cost[*(v96 + v97 + v95 + 1967)];
LABEL_43:
  v40 = *result + v39;
  v41 = v129;
  v42 = (v129 << v5[178]) + ((v5[179] * v40 + 256) >> 9);
  v130 = v42;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  if (v42 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = 0;
    LODWORD(v40) = 0x7FFFFFFF;
  }

  else
  {
    v44 = HIDWORD(v128);
    *(v7 + 1) = 0;
    v43 = v41;
  }

  LODWORD(v128) = 0;
  v129 = 0;
  HIDWORD(v126) = 1;
  v127 = &v128;
  *(v7 + 2) = v8;
  v45 = *v5;
  v46 = v5[1];
  v47 = v14[2 * v45 + v46];
  v119 = ((v5[123] >> (v46 + 5)) & (v5[123] >> 31)) + num_4x4_blocks_high_lookup[v47];
  if (v119 < 1 || (v48 = ((v5[121] >> (v45 + 5)) & (v5[121] >> 31)) + num_4x4_blocks_wide_lookup[v47], v48 < 1))
  {
LABEL_63:
    *v4 = 1;
    if (v35)
    {
      v65 = *(v35 + 3);
      v66 = *(v6 + 447);
      if (v34)
      {
LABEL_65:
        v67 = *(v34 + 3);
LABEL_68:
        v68 = vp9_prob_cost[256 - *(v66 + v67 + v65 + 1967)];
        goto LABEL_69;
      }
    }

    else
    {
      v65 = 0;
      v66 = *(v6 + 447);
      if (v34)
      {
        goto LABEL_65;
      }
    }

    v67 = 0;
    goto LABEL_68;
  }

  v101 = v43;
  v104 = v42;
  v106 = v44;
  v108 = v40;
  v49 = 0;
  v50 = *(**(a2 + 25360) + 2);
  v51 = txsize_to_bsize[v50];
  v52 = b_width_log2_lookup[v47];
  if (v50 >= 2)
  {
    v53 = 2;
  }

  else
  {
    v53 = *(**(a2 + 25360) + 2);
  }

  v122 = 1 << v50;
  do
  {
    v54 = 0;
    do
    {
      v55 = *(v125 + 8216);
      v56 = *(v125 + 24928);
      v57 = *(v125 + 8224);
      v58 = *(v125 + 24936);
      v132 = 0;
      v133 = 0;
      v134 = 0;
      *(v125 + 8216) = v55 + 4 * (v54 + v49 * v57);
      v59 = v56 + 4 * (v54 + v49 * v58);
      *(v125 + 24928) = v59;
      v60 = *(v125 + 82216);
      if (v60)
      {
        v61 = v55 + 4 * (v54 + v49 * v57);
      }

      else
      {
        v61 = v56 + 4 * (v54 + v49 * v58);
      }

      if (v60)
      {
        v62 = v57;
      }

      else
      {
        v62 = v58;
      }

      v63 = v48;
      vp9_predict_intra_block(v125 + 24912, v52, v50, 1u, v61, v62, v59, v58, v54, v49, 0);
      v131 = 0x7FFFFFFFFFFFFFFFLL;
      block_yrd(a1, v125, &v132, &v126 + 1, &v131, v51, v53, 0, 1);
      v48 = v63;
      *(v125 + 8216) = v55;
      *(v125 + 24928) = v56;
      v64 = v127;
      *v127 += v132;
      v64[1] += v133;
      v54 += v122;
    }

    while (v54 < v63);
    v49 += v122;
  }

  while (v49 < v119);
  a2 = v113;
  v34 = *(v113 + 25368);
  v35 = *(v113 + 25376);
  if (HIDWORD(v126))
  {
    v5 = v116;
    v7 = v117;
    v4 = v114;
    v6 = v115;
    result = v112;
    v8 = v110;
    LODWORD(v40) = v108;
    v44 = v106;
    v14 = v103;
    v42 = v104;
    v43 = v101;
    goto LABEL_63;
  }

  v4 = v114;
  v6 = v115;
  *v114 = 0;
  v5 = v116;
  v7 = v117;
  result = v112;
  v8 = v110;
  LODWORD(v40) = v108;
  v44 = v106;
  v14 = v103;
  v42 = v104;
  v43 = v101;
  if (!v35)
  {
    v98 = 0;
    v99 = *(v115 + 447);
    if (v34)
    {
      goto LABEL_101;
    }

LABEL_111:
    v100 = 0;
    goto LABEL_112;
  }

  v98 = *(v35 + 3);
  v99 = *(v115 + 447);
  if (!v34)
  {
    goto LABEL_111;
  }

LABEL_101:
  v100 = *(v34 + 3);
LABEL_112:
  v68 = v128 + vp9_prob_cost[*(v99 + v100 + v98 + 1967)];
LABEL_69:
  v69 = result[1] + v68;
  v70 = v129;
  v71 = (v129 << v5[178]) + ((v5[179] * v69 + 256) >> 9);
  v130 = v71;
  if (v71 < v42)
  {
    v44 = HIDWORD(v128);
    *(v7 + 1) = 1;
    LODWORD(v40) = v69;
    v43 = v70;
    v42 = v71;
  }

  LODWORD(v128) = 0;
  v129 = 0;
  HIDWORD(v126) = 1;
  v127 = &v128;
  *(v7 + 2) = v8;
  v72 = *v5;
  v73 = v5[1];
  v74 = v14[2 * v72 + v73];
  v120 = ((v5[123] >> (v73 + 5)) & (v5[123] >> 31)) + num_4x4_blocks_high_lookup[v74];
  if (v120 < 1)
  {
    goto LABEL_88;
  }

  v75 = ((v5[121] >> (v72 + 5)) & (v5[121] >> 31)) + num_4x4_blocks_wide_lookup[v74];
  if (v75 < 1)
  {
    goto LABEL_88;
  }

  v102 = v43;
  v105 = v42;
  v107 = v44;
  v109 = v40;
  v76 = 0;
  v77 = *(**(a2 + 25360) + 2);
  v78 = txsize_to_bsize[v77];
  v79 = b_width_log2_lookup[v74];
  if (v77 >= 2)
  {
    v80 = 2;
  }

  else
  {
    v80 = *(**(a2 + 25360) + 2);
  }

  v123 = 1 << v77;
  do
  {
    for (i = 0; i < v75; i += v123)
    {
      v82 = *(v125 + 8216);
      v83 = *(v125 + 24928);
      v84 = *(v125 + 8224);
      v85 = *(v125 + 24936);
      v132 = 0;
      v133 = 0;
      v134 = 0;
      *(v125 + 8216) = v82 + 4 * (i + v76 * v84);
      v86 = v83 + 4 * (i + v76 * v85);
      *(v125 + 24928) = v86;
      v87 = *(v125 + 82216);
      if (v87)
      {
        v88 = v82 + 4 * (i + v76 * v84);
      }

      else
      {
        v88 = v83 + 4 * (i + v76 * v85);
      }

      if (v87)
      {
        v89 = v84;
      }

      else
      {
        v89 = v85;
      }

      vp9_predict_intra_block(v125 + 24912, v79, v77, 2u, v88, v89, v86, v85, i, v76, 0);
      v131 = 0x7FFFFFFFFFFFFFFFLL;
      block_yrd(a1, v125, &v132, &v126 + 1, &v131, v78, v80, 0, 1);
      *(v125 + 8216) = v82;
      *(v125 + 24928) = v83;
      v90 = v127;
      *v127 += v132;
      v90[1] += v133;
    }

    v76 += v123;
  }

  while (v76 < v120);
  v34 = *(v113 + 25368);
  v35 = *(v113 + 25376);
  if (HIDWORD(v126))
  {
    v5 = v116;
    v7 = v117;
    v4 = v114;
    v6 = v115;
    result = v112;
    LODWORD(v40) = v109;
    v44 = v107;
    v42 = v105;
    v43 = v102;
LABEL_88:
    *v4 = 1;
    if (v35)
    {
      v35 = *(v35 + 3);
    }

    if (v34)
    {
      v34 = *(v34 + 3);
    }

    v91 = vp9_prob_cost[256 - *(*(v6 + 447) + v34 + v35 + 1967)];
    goto LABEL_93;
  }

  *v114 = 0;
  v5 = v116;
  v7 = v117;
  result = v112;
  LODWORD(v40) = v109;
  v44 = v107;
  v43 = v102;
  if (v35)
  {
    v35 = *(v35 + 3);
  }

  v42 = v105;
  if (v34)
  {
    v34 = *(v34 + 3);
  }

  v91 = v128 + vp9_prob_cost[*(*(v115 + 447) + v34 + v35 + 1967)];
LABEL_93:
  v92 = result[2] + v91;
  v93 = v129;
  v94 = (v129 << v5[178]) + ((v5[179] * v92 + 256) >> 9);
  if (v94 < v42)
  {
    v44 = HIDWORD(v128);
    *(v7 + 1) = 2;
    LODWORD(v40) = v92;
    v43 = v93;
    v42 = v94;
  }

  *a3 = v40;
  *(a3 + 4) = v44;
  *(a3 + 8) = v43;
  *(a3 + 16) = v42;
  return result;
}

void vp9_pick_inter_mode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v604 = v10;
  v728 = *MEMORY[0x277D85DE8];
  v647 = **(v4 + 25360);
  v722 = 0u;
  v723 = 0u;
  v720 = 0u;
  v721 = 0u;
  v718 = 0u;
  v719 = 0u;
  v716 = 0u;
  v717 = 0u;
  v715 = 0u;
  memset(v714, 0, sizeof(v714));
  v691 = -1;
  v690 = -1;
  v11 = *(v3 + 173028);
  v12 = *(v3 + 173032);
  if (v8 >= 4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 4;
  }

  if (v8 >= 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v585 = (v3 + 933832);
  if (*(v3 + 933832) && *(v3 + 933836) == 3)
  {
    v14 = 0;
  }

  v646 = (v3 + 754540);
  v693 = 0uLL;
  v694 = 0;
  v15 = v12 + v11;
  if (v15 >= 0xFF)
  {
    v16 = 255;
  }

  else
  {
    v16 = v15;
  }

  if (v15 < 0)
  {
    v16 = 0;
  }

  v17 = dc_qlookup_0[v16];
  v653 = (v4 + 24936);
  v18 = *(v4 + 25636);
  v19 = *(v647 + 4);
  if (*(v3 + 739608))
  {
    v20 = *(v5 + 3704) + 4 * (30 * (v8 + 13 * (v6 >> 3)));
  }

  else
  {
    v20 = v5 + 120 * v8 + 16;
  }

  v632 = v20;
  v644 = v3 + 926364;
  v643 = (v3 + 176472);
  v590 = *(v3 + 173252) == 4;
  v713[1] = 0;
  v713[0] = 0;
  v630 = num_4x4_blocks_high_lookup[v8];
  v610 = num_4x4_blocks_wide_lookup[v8];
  v605 = *(v4 + 24928);
  v601 = *(v4 + 24936);
  v689 = 0;
  if (*(v3 + 740016))
  {
    v606 = *(v9 + 700) != 0;
  }

  else
  {
    v606 = 0;
  }

  v702 = 0;
  v701 = 0;
  v700 = 0uLL;
  v21 = *v646;
  if (*v646)
  {
    v22 = 8;
  }

  else
  {
    v22 = 12;
  }

  v637 = v22;
  v23 = *(v3 + 739064);
  v603 = v23 != 0;
  if (!v23 && v21)
  {
    v603 = *(v3 + 926856) != 0;
  }

  v572 = *(v3 + 740184);
  if (*v643)
  {
    v24 = (v3 + 4 * v19 + 740240);
  }

  else
  {
    v24 = (v3 + 740216);
  }

  *(v4 + 26908) = *v24;
  *(v4 + 25688) = -1;
  if (*(v3 + 740024) == 3)
  {
    v25 = 3;
  }

  else
  {
    v25 = 0;
  }

  v621 = v25;
  v26 = *(v3 + 754544);
  if (v21)
  {
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 != v27)
    {
      v30 = 0;
      v31 = 500;
LABEL_49:
      if (!*(v3 + 926372) || *(v3 + 13936 * *(v3 + 754548) + 772756))
      {
        goto LABEL_59;
      }

LABEL_51:
      if (*(v3 + 172128) != *(v3 + 172304))
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    v29 = v3 + 13936 * (*(v3 + 754548) + *(v3 + 754556) * v28) + 758936;
    v30 = *(v29 + 748) == *(v29 + 752);
LABEL_37:
    v31 = 0;
    if (!v30 && !*(v3 + 926856))
    {
      if (v11 < 151)
      {
        v31 = 500;
        if (v11 <= 139)
        {
          if (v11 >= *(v3 + 926600) - 20)
          {
            v31 = 500;
          }

          else
          {
            v31 = 1000;
          }
        }
      }

      else if (v11 <= *(v3 + 926600) + 15)
      {
        v31 = 500;
      }

      else
      {
        v31 = 100;
      }
    }

    if (!v21)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v30 = 0;
  if (v26 >= 1)
  {
    goto LABEL_37;
  }

  v31 = 500;
  if (*(v3 + 172128) != *(v3 + 172304))
  {
LABEL_59:
    v633 = 0;
    v586 = 0;
    goto LABEL_60;
  }

LABEL_54:
  if (*(v3 + 172132) != *(v3 + 172308))
  {
    goto LABEL_59;
  }

  if (*(v3 + 739080) <= 70)
  {
    v31 = 0;
  }

  else
  {
    v31 = 500;
  }

  v633 = 1;
  v586 = 1;
LABEL_60:
  v599 = 4 * v610;
  v32 = *(v3 + 176600);
  v33 = *(v4 + 25368);
  v34 = *(v4 + 25376);
  v652 = v5;
  v650 = v3 + 738544;
  v639 = v8;
  v600 = 30 * (v8 + 13 * (v6 >> 3));
  v651 = v7;
  v648 = v8;
  v645 = v6;
  v654 = v3;
  v649 = v3 + 172020;
  v587 = v9;
  v592 = (v3 + 933780);
  v588 = v31;
  v617 = v30;
  if (v34 && v33)
  {
    v35 = *(v33 + 8) < 1;
    v36 = *(v34 + 8) < 1;
    v37 = v36 || v35;
    v154 = !v35 || !v36;
    v38 = 3;
    if (v154)
    {
      v38 = v37;
    }
  }

  else if (v34 | v33)
  {
    if (v34)
    {
      v33 = *(v4 + 25376);
    }

    v38 = 2 * (*(v33 + 8) < 1);
  }

  else
  {
    v38 = 0;
  }

  v660 = v4 + 82216;
  v591 = 4 * v630;
  v39 = *(v32 + v38 + 1931);
  v40 = v32 + 1940;
  v41 = v4;
  v42 = *(v32 + 1940 + 2 * vp9_get_pred_context_single_ref_p1(v4 + 24912));
  v683 = v41;
  pred_context_single_ref_p2 = vp9_get_pred_context_single_ref_p2(v41 + 24912);
  v44 = vp9_prob_cost[256 - v39];
  v45 = *(v40 + 2 * pred_context_single_ref_p2 + 1);
  v46 = vp9_prob_cost[v42] + v44;
  v703 = vp9_prob_cost[v39];
  v704 = v46;
  v47 = vp9_prob_cost[256 - v42] + v44;
  v48 = v47 + vp9_prob_cost[v45];
  LODWORD(v45) = v47 + vp9_prob_cost[256 - v45];
  v705 = v48;
  v706 = v45;
  memset(v724, 0, sizeof(v724));
  v725 = 0;
  v49 = v650;
  v50 = v651;
  v51 = v648;
  v52 = v654;
  if (v606)
  {
    v53 = v599 * v591;
    if (*v649)
    {
      v54 = (v707 >> 1);
      v55 = (&v707[2 * v53] >> 1);
      v56 = (&v707[4 * v53] >> 1);
    }

    else
    {
      v54 = v707;
      v55 = &v707[v53];
      v56 = &v707[2 * v53];
    }

    v709[0] = v599;
    v708 = v54;
    v709[1] = v55;
    v710[0] = v599;
    v711 = v599;
    v57 = *(v41 + 24928);
    v710[1] = v56;
    v712[0] = v57;
    v712[1] = *v653;
  }

  v58 = v654 + 47461;
  v59 = *(v650 + 1072);
  if (v59)
  {
    v60 = v653;
    v59 = v653[166] < 115;
    v61 = v652;
  }

  else
  {
    v61 = v652;
    v60 = v653;
  }

  v62 = v41;
  *v660 = v59;
  v60[492] = 0;
  v63 = *(v649 + 1232);
  if (!*(v650 + 1256))
  {
LABEL_84:
    if (*(v650 + 1480) == 3)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

  if (v63 == 4)
  {
    v590 = (((v651 + v645) >> mi_width_log2_lookup[v639]) + *v58) & 1;
    goto LABEL_84;
  }

  v590 = 0;
  if (*(v650 + 1480) == 3)
  {
    goto LABEL_92;
  }

LABEL_87:
  v64 = *(v41 + 25376);
  if (v64 && *(v64 + 8) > 0 || (v64 = *(v41 + 25368)) != 0 && *(v64 + 8) >= 1)
  {
    v63 = *(v64 + 7);
  }

LABEL_92:
  v623 = v63;
  *v692 = 0;
  v65.f64[0] = NAN;
  v65.f64[1] = NAN;
  v66 = vnegq_f64(v65);
  *v604 = 0x7FFFFFFF;
  *(v604 + 8) = v66;
  *v647 = v648;
  *(v647 + 8) = -1;
  v67 = max_txsize_lookup[v639];
  *v692 = 0x7FFFFFFF;
  v68 = tx_mode_to_biggest_tx_size[*(v649 + 1004)];
  *&v692[8] = v66;
  v655 = v67;
  if (v67 < v68)
  {
    LOBYTE(v68) = v67;
  }

  *(v647 + 2) = v68;
  v594 = &v654[16 * v639];
  if (*(v650 + 1556) || *(v650 + 1564))
  {
    if ((*(*(v41 + 25440) + 152) & 8) != 0)
    {
      v70 = v653[150];
      v71 = *(v594 + 92562);
      v72 = *(v41 + 8216);
      v73 = *(v41 + 8224);
      if (v70 == 10)
      {
        v74 = &VP9_HIGH_VAR_OFFS_10;
      }

      else
      {
        v74 = (v70 == 12 ? &VP9_HIGH_VAR_OFFS_12 : &VP9_HIGH_VAR_OFFS_8);
      }

      v726[0] = 0;
      v69 = ((1 << (num_pels_log2_lookup[v639] - 1)) + v71(v72, v73, v74 >> 1, 0, v726)) >> num_pels_log2_lookup[v639];
    }

    else
    {
      v726[0] = 0;
      LODWORD(v69) = ((1 << (num_pels_log2_lookup[v639] - 1)) + (*(v594 + 92562))(*(v41 + 8216), *(v41 + 8224), &VP9_VAR_OFFS_0, 0, v726)) >> num_pels_log2_lookup[v639];
    }

    v653[188] = v69;
    v58 = v654 + 47461;
    v61 = v652;
    v49 = v650;
    v50 = v651;
    v62 = v41;
    if (v654[47595] == 1 && v654[47537] == 3 && *(v647 + 4) >= 1 && *(v660 + 160) && !v69)
    {
      *(v647 + 4) = 0;
      vp9_init_plane_quantizers(v654, v41);
      v58 = v654 + 47461;
      v62 = v41;
      v50 = v651;
      v49 = v650;
      v61 = v652;
    }
  }

  if (v58[51] < 1)
  {
LABEL_119:
    v76 = 1;
    goto LABEL_120;
  }

  if (*v646)
  {
    v75 = v646[1];
    if (v75 < *(v644 + 228))
    {
      v76 = 0;
      goto LABEL_120;
    }

    v76 = v654[3484 * v646[2] + 193189 + 3484 * v646[4] * v75] == 0;
    if (*v592)
    {
      goto LABEL_117;
    }
  }

  else
  {
    v76 = 1;
    if (*v592)
    {
LABEL_117:
      if (!v76)
      {
        goto LABEL_120;
      }

      *(v587 + 792) = -1;
      *(v587 + 800) = -1;
      *(v587 + 808) = 0;
      goto LABEL_119;
    }
  }

LABEL_120:
  v77 = *v49;
  v78 = v633 ^ 1;
  if (*v49)
  {
    v78 = 1;
  }

  if ((v78 & 1) != 0 || *(v49 + 512) || *(v49 + 516))
  {
    v79 = 2;
    v589 = v76;
    if (v58[61] >= 1)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v79 = 1;
    v589 = v76;
    if (v58[61] >= 1)
    {
LABEL_126:
      if (!v58[62])
      {
        if (*(v49 + 512))
        {
          v79 = 3;
        }

        if (*(v49 + 52))
        {
          *(&v700 + 4) = 0x100000001;
          v79 = 3;
        }

        if (!*(v649 + 956) && *(v49 + 32) == 1)
        {
          *(&v700 + 1) = 0x100000001;
          v79 = 1;
        }
      }
    }
  }

  v80 = *v646;
  if (*v646)
  {
    v81 = *v644;
    if (!*v644)
    {
      goto LABEL_141;
    }

    v82 = v633;
    if (v646[1] < 1)
    {
      v82 = 1;
    }

    if ((v82 & 1) == 0)
    {
      v90 = *(v49 + 984);
      if ((v90 & 1) == 0 || (v91 = *(v649 + 108), v91 == -1) || (v92 = *(v649 + 112), v92 == -1) || v91 == 0x4000 && v92 == 0x4000)
      {
        v635 = 2;
        if ((v90 & 2) == 0)
        {
          goto LABEL_192;
        }
      }

      else
      {
        v635 = 1;
        LODWORD(v701) = 1;
        if ((v90 & 2) == 0)
        {
          goto LABEL_192;
        }
      }

      v93 = *(v649 + 284);
      if (v93 != -1)
      {
        v94 = *(v649 + 288);
        if (v94 != -1 && (v93 != 0x4000 || v94 != 0x4000))
        {
          v81 = 1;
          HIDWORD(v701) = 1;
          v635 = 2;
          v83 = 20 * v17;
          v84 = *(v49 + 1560);
          if (!v84)
          {
            goto LABEL_198;
          }

          goto LABEL_142;
        }
      }

LABEL_192:
      v81 = 0;
      v83 = 20 * v17;
      v84 = *(v49 + 1560);
      if (!v84)
      {
        goto LABEL_198;
      }

      goto LABEL_142;
    }
  }

  v81 = 0;
LABEL_141:
  v635 = 2;
  v83 = 20 * v17;
  v84 = *(v49 + 1560);
  if (!v84)
  {
LABEL_198:
    v669 = 0;
    goto LABEL_202;
  }

LABEL_142:
  v669 = 0;
  v85 = (v660 + 165);
  if (v648 <= 8)
  {
    v87 = (v645 >> 1) & 3;
    v88 = (v50 >> 1) & 3;
    switch(v648)
    {
      case 6u:
        v86 = v85[pos_shift_16x16[4 * v87 + v88]];
        goto LABEL_195;
      case 7u:
        if (v85[pos_shift_16x16[4 * v87 + v88]])
        {
          v89 = &pos_shift_16x16[4 * (((v645 + 2) >> 1) & 3)];
          goto LABEL_180;
        }

        break;
      case 8u:
        if (v85[pos_shift_16x16[4 * v87 + v88]])
        {
          v88 = ((v50 + 2) >> 1) & 3;
          v89 = &pos_shift_16x16[4 * v87];
LABEL_180:
          v86 = v85[*&v89[4 * v88]] != 0;
          goto LABEL_195;
        }

        break;
      default:
        goto LABEL_196;
    }

    v669 = 0;
    goto LABEL_196;
  }

  if (v648 > 10)
  {
    if (v648 != 11)
    {
      if (v648 != 12)
      {
        goto LABEL_196;
      }

      v86 = *v85;
      goto LABEL_195;
    }

    if (((v50 | v645) & 7) == 0)
    {
      v86 = *(v660 + 166);
      goto LABEL_195;
    }

    v669 = 0;
    if ((v645 & 7) != 0 && (v50 & 7) == 0)
    {
      v86 = *(v660 + 167);
      goto LABEL_195;
    }
  }

  else if (v648 == 9)
  {
    if (((v50 | v645) & 7) == 0)
    {
      v86 = *(v660 + 170);
      goto LABEL_195;
    }

    v95 = (v50 & 7) != 0;
    if ((v645 & 7) == 0 && (v50 & 7) != 0)
    {
      v86 = *(v660 + 171);
      goto LABEL_195;
    }

    if ((v645 & 7) == 0)
    {
      v95 = 1;
    }

    if (!v95)
    {
      v86 = *(v660 + 172);
      goto LABEL_195;
    }

    v669 = 0;
    if ((v645 & 7) != 0 && (v50 & 7) != 0)
    {
      v86 = *(v660 + 173);
      goto LABEL_195;
    }
  }

  else
  {
    if (((v50 | v645) & 7) == 0)
    {
      v86 = *(v660 + 168);
      goto LABEL_195;
    }

    v669 = 0;
    if ((v645 & 7) == 0 && (v50 & 7) != 0)
    {
      v86 = *(v660 + 169);
LABEL_195:
      v669 = v86;
    }
  }

LABEL_196:
  if (v84 == 1)
  {
    if (!v669)
    {
      goto LABEL_198;
    }
  }

  else if (v84 != 3 || !v669)
  {
    goto LABEL_202;
  }

  v79 = 1;
LABEL_202:
  if (*(v49 + 1620) && (*(v660 + 164) != 6 || *(v49 + 536) <= 59))
  {
    v79 = 1;
  }

  if (v80)
  {
    v96 = v660;
  }

  else
  {
    v96 = v660;
    if (v58[53] >= 8)
    {
      v97 = *(v660 + 141);
      v98 = v77 + 1 < v97 || v97 > 0x28;
      if (v98 || v77 > 120)
      {
        v79 = 1;
      }
    }
  }

  if (*(v643 + 30) == 2)
  {
    v661 = v79 == 3 && *(v49 + 1600) != 0;
    if (v79 == 3 && *(v49 + 1600) != 0)
    {
      v100 = 2;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v661 = 0;
    v100 = 0;
  }

  v597 = v654 + 184901;
  v619 = (v18 * (v83 >> v14) + 256) >> 9;
  v629 = &v654[390 * v19 + 49766 + 30 * v648];
  v101 = (*(v49 + 984) >> 1) & ~v81;
  v593 = v83 >> v14;
  v613 = v100;
  if (*v643)
  {
    v102 = *(v647 + 4);
    if ((v654[v102 + 44138] & 4) != 0 && LOWORD(v654[2 * v102 + 44123]) == 2)
    {
      v588 = 0;
      DWORD2(v700) = 0;
      v79 = 2;
    }
  }

  v681 = 0;
  v596 = v62 + 81920;
  v628 = (v62 + 24576);
  v615 = v101 & (v669 == 0);
  v679 = v62 + 25708;
  v103 = v654 + 43028;
  v625 = v654 + 189734;
  v627 = v654 + 44101;
  v611 = v50 >> 1;
  LOBYTE(v101) = 1;
  v631 = v654 + 43028;
  v673 = v79;
  do
  {
    v104 = v101;
    v105 = ref_frame_to_flag_kVp9RefFlagList[v101];
    v106 = v105 & *(v49 + 984);
    *(&v700 + v104) = v106 == 0;
    if (!v106)
    {
      goto LABEL_228;
    }

    v107 = 48629;
    if (v104 != 2)
    {
      v107 = 48630;
    }

    if (v104 == 1)
    {
      v107 = 48628;
    }

    v108 = v52[v107];
    if (v108 == -1 || (v109 = v654[v108 + 43012], v109 == -1))
    {
      v110 = 0;
    }

    else
    {
      v110 = *(v58 + 25) + 224 * v109 + 88;
    }

    v111 = v104;
    *(v679 + v111 * 4) = 0x7FFFFFFF;
    v112 = &v726[v104 + 52];
    *v112 = -2147450880;
    v726[v111 + 48] = 0;
    if ((*(v49 + 984) & v105) == 0 || !v110)
    {
      v681 |= 1 << v104;
      v52 = v654;
      goto LABEL_228;
    }

    v113 = (*(v62 + 25568) + 8 * v104);
    v114 = &v103[44 * v104 - 40];
    vp9_setup_pred_block(v62 + 24912, &v714[3 * v104], v110, v645, v50, v114, v114);
    v115 = v41;
    v116 = v649;
    v117 = **(v41 + 25360);
    if (*(v649 + 1180) | v661)
    {
      v52 = v654;
      find_mv_refs_idx((v654 + 42924), v41 + 24912, *v117, v104, v113, -1, v645, v50, *(v41 + 25568) + 32);
      v116 = v649;
      v115 = v41;
      v51 = v648;
      goto LABEL_282;
    }

    if (*(v644 + 36))
    {
      v118 = v646[1] == 0;
    }

    else
    {
      v118 = 1;
    }

    v51 = v648;
    v119 = *v117;
    v120 = (&mv_ref_blocks_1 + 64 * v119);
    *v113 = 0;
    if (*v120 + v645 < 0 || ((v121 = v120[1], v122 = v121 + v651, *v120 + v645 < *(v649 + 988)) ? (v123 = v122 < *(v652 + 8)) : (v123 = 1), v123 || v122 >= *(v652 + 12)))
    {
      v125 = 0;
      v127 = 0;
      v128 = 0;
      v126 = 1;
      v129 = v120[2];
      v130 = v129 + v645;
      if (v129 + v645 < 0)
      {
        goto LABEL_264;
      }
    }

    else
    {
      v124 = *(*(v41 + 25360) + 8 * (v121 + v653[104] * *v120));
      v125 = mode_2_counter_1[*(v124 + 1)];
      if (*(v124 + 8) == v104)
      {
        v126 = 0;
        v113->i32[0] = *(v124 + 12);
        v127 = 1;
        v128 = 1;
        v129 = v120[2];
        v130 = v129 + v645;
        if (v129 + v645 < 0)
        {
          goto LABEL_264;
        }
      }

      else
      {
        v128 = 0;
        v127 = 1;
        v126 = 1;
        v129 = v120[2];
        v130 = v129 + v645;
        if (v129 + v645 < 0)
        {
          goto LABEL_264;
        }
      }
    }

    v131 = v120[3];
    v132 = v131 + v651;
    v133 = v130 >= *(v649 + 988) || v132 < *(v652 + 8);
    if (!v133 && v132 < *(v652 + 12))
    {
      v134 = *(*(v41 + 25360) + 8 * (v131 + v653[104] * v129));
      v125 += mode_2_counter_1[*(v134 + 1)];
      if (*(v134 + 8) == v104)
      {
        v135 = *(v134 + 12);
        if ((v126 & 1) == 0)
        {
          if (v135 == v113->i32[0])
          {
            goto LABEL_279;
          }

          v144 = 0;
          v113->i32[v128] = v135;
          goto LABEL_281;
        }
      }

      else
      {
        v127 = 1;
        if (!v126)
        {
          goto LABEL_279;
        }

LABEL_265:
        v136 = v127 == 0;
        v137 = v119 << 6;
        v138 = 2;
        while (1)
        {
          v139 = (&mv_ref_blocks_1 + 8 * v138 + v137 + 4);
          while (1)
          {
            v140 = *(v139 - 1);
            if (v140 + v645 >= 0)
            {
              v141 = *v139 + v651;
              v142 = v140 + v645 >= *(v649 + 988) || v141 < *(v652 + 8);
              if (!v142 && v141 < *(v652 + 12))
              {
                break;
              }
            }

            ++v138;
            v139 += 2;
            if (v138 == 8)
            {
              if (v136)
              {
                goto LABEL_279;
              }

LABEL_316:
              v165 = 0;
              v166 = (&mv_ref_blocks_1 + v137 + 4);
              v167 = 8;
              while (1)
              {
                v176 = *(v166 - 1);
                if (v176 + v645 >= 0)
                {
                  v177 = *v166 + v651;
                  if (v176 + v645 < *(v649 + 988) && v177 >= *(v652 + 8) && v177 < *(v652 + 12))
                  {
                    v179 = *(*(v41 + 25360) + 8 * (*v166 + v653[104] * v176));
                    v180 = *(v179 + 8);
                    if (v180 >= 1)
                    {
                      if (v180 != v104)
                      {
                        v181 = *(v179 + 14);
                        if (v627[v180] == v627[v104])
                        {
                          LOWORD(v182) = *(v179 + 12);
                        }

                        else
                        {
                          v181 = -v181;
                          v182 = -*(v179 + 12);
                        }

                        v183 = v182 | (v181 << 16);
                        if (v165)
                        {
                          if (v183 != v113->i32[0])
                          {
                            v113->i32[1] = v183;
                            goto LABEL_280;
                          }
                        }

                        else
                        {
                          v113->i32[0] = v183;
                        }

                        v165 = 1;
                      }

                      v184 = *(v179 + 9);
                      if (v184 >= 1 && v184 != v104)
                      {
                        v186 = *(v179 + 16);
                        if (v186 != *(v179 + 12))
                        {
                          v187 = v627[*(v179 + 9)];
                          v188 = v627[v104];
                          v189 = v187 == v188;
                          if (v187 == v188)
                          {
                            LOWORD(v190) = HIWORD(*(v179 + 16));
                          }

                          else
                          {
                            v190 = -HIWORD(v186);
                          }

                          if (v189)
                          {
                            LOWORD(v179) = *(v179 + 16);
                          }

                          else
                          {
                            LODWORD(v179) = -v186;
                          }

                          v191 = v179 | (v190 << 16);
                          if (v165)
                          {
                            if (v191 != v113->i32[0])
                            {
                              v113->i32[1] = v191;
                              goto LABEL_280;
                            }
                          }

                          else
                          {
                            v113->i32[0] = v191;
                          }

                          v165 = 1;
                        }
                      }
                    }
                  }
                }

                v166 += 2;
                if (!--v167)
                {
                  goto LABEL_279;
                }
              }
            }
          }

          v143 = *(*(v41 + 25360) + 8 * (*v139 + v653[104] * v140));
          if (*(v143 + 8) == v104)
          {
            break;
          }

          v136 = 0;
          v36 = v138++ > 6;
          if (v36)
          {
            goto LABEL_316;
          }
        }

        v135 = *(v143 + 12);
      }

      v113->i32[0] = v135;
      goto LABEL_279;
    }

LABEL_264:
    if (v126)
    {
      goto LABEL_265;
    }

LABEL_279:
    if (v118)
    {
      goto LABEL_280;
    }

    v144 = 1;
    if (v104 == 1 && !v625[3484 * v646[2] + 3455])
    {
      v157 = 4 * v646[1] - 4;
      v158 = *(v654 + v157 + 926544);
      v159 = v611 + v158 * (v645 >> 1);
      if (v159 < *(v654 + v157 + 926496) * v158)
      {
        v160 = *(*(v649 + 12) + 8) + 12 * v159;
        v161 = *v160;
        v162 = *v160 >> 16;
        if (v161 < 0)
        {
          v161 = -v161;
        }

        v163 = v161 & 0xC000;
        if (v162 < 0)
        {
          v162 = -v162;
        }

        if (v163)
        {
          v164 = 0;
        }

        else
        {
          v164 = (v162 & 0xC000) == 0;
        }

        if (v164)
        {
          v168 = 2 * *v160;
          *v112 = v168;
          v169 = v653[117] + 128;
          v170 = v653[118] - 128;
          v171 = v653[119] + 128;
          v172 = (2 * *(v160 + 2));
          if (v172 < v169)
          {
            LOWORD(v169) = v172;
          }

          if ((v653[116] - 128) <= v172)
          {
            v173 = v169;
          }

          else
          {
            v173 = *(v653 + 232) - 128;
          }

          *(v112 + 1) = v173;
          v174 = v168;
          if (v168 >= v171)
          {
            v168 = v171;
          }

          if (v170 <= v174)
          {
            v175 = v168;
          }

          else
          {
            v175 = v170;
          }

          *v112 = v175;
        }

        else
        {
          *v112 = -2147450880;
        }
      }

LABEL_280:
      v144 = 1;
    }

LABEL_281:
    *(*(v41 + 25568) + v104 + 32) = counter_to_context_1[v125];
    v145.i32[0] = v653[118];
    v145.i32[1] = v653[116];
    v145.i64[1] = v145.i64[0];
    v146.i64[0] = 0x7F0000007FLL;
    v146.i64[1] = 0x7F0000007FLL;
    v147 = vaddq_s32(v145, v146);
    v146.i32[0] = v653[119];
    v146.i32[1] = v653[117];
    v146.i64[1] = v146.i64[0];
    v148.i64[0] = 0x8000000080;
    v148.i64[1] = 0x8000000080;
    v149 = vaddq_s32(v146, v148);
    v150 = vmovl_s16(*v113);
    *v113 = vmovn_s32(vbslq_s8(vcgtq_s32(v147, v150), v147, vminq_s32(v150, v149)));
    *(v713 + v104) = v144;
    v52 = v654;
LABEL_282:
    vp9_find_best_ref_mvs((v115 + 24912), *(v116 + 972), v113, &v726[v111 + 40], &v726[v111 + 44]);
    v151 = *v114;
    if (*v114 == -1)
    {
      v153 = 1;
      v61 = v652;
      v49 = v650;
      v50 = v651;
      v62 = v41;
      v96 = v660;
      v58 = v654 + 47461;
      v103 = v654 + 43028;
      v79 = v673;
      if (v104 == 2 && v669 != 0)
      {
        goto LABEL_228;
      }
    }

    else
    {
      v152 = v114[1];
      v61 = v652;
      v49 = v650;
      v50 = v651;
      v96 = v660;
      v58 = v654 + 47461;
      v79 = v673;
      if (v152 == -1)
      {
        v153 = 1;
        v62 = v41;
        v103 = v654 + 43028;
        if (v104 == 2 && v669 != 0)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v62 = v41;
        v103 = v654 + 43028;
        if (v151 != 0x4000)
        {
          goto LABEL_228;
        }

        v153 = v152 == 0x4000;
        v154 = v104 != 2 || v669 == 0;
        if (!v154)
        {
          goto LABEL_228;
        }
      }
    }

    if (v51 >= 3 && v153)
    {
      vp9_mv_pred(v52, v62, *&v714[3 * v104], *(v110 + 16), v104, v51);
      v79 = v673;
      v58 = v654 + 47461;
      v62 = v41;
      v50 = v651;
      v49 = v650;
      v61 = v652;
    }

LABEL_228:
    v101 = (v104 + 1);
  }

  while (v101 <= v79);
  v192 = v646;
  v193 = v647;
  v194 = v637;
  if (!*v646)
  {
    v200 = v51 >= 9;
    v197 = v639;
    if (!v200 || v58[53] <= 7)
    {
      v199 = 0;
      *(v96 + 144) = 0;
      v198 = 1;
      goto LABEL_382;
    }

LABEL_378:
    v199 = 0;
    v198 = 1;
    goto LABEL_382;
  }

  *(v96 + 144) = 0;
  v195 = v646[1];
  v27 = __OFSUB__(v195, 1);
  v196 = v195 - 1;
  v197 = v639;
  if (v196 < 0 != v27)
  {
    goto LABEL_378;
  }

  if (*(&v701 + (v635 - 1)))
  {
    if (v52[v196 + 231604] == 8)
    {
      v198 = v633;
    }

    else
    {
      v198 = 1;
    }

    if (v198)
    {
      v199 = 0;
    }

    else
    {
      v199 = -4;
    }
  }

  else
  {
    v199 = 0;
    v198 = 1;
  }

  v192 = v646;
  v194 = v637;
LABEL_382:
  v201 = v615;
  v202 = !v617;
  if (v192[1] < 1)
  {
    v202 = 1;
  }

  if ((v202 & 1) == 0 && (*(v49 + 984) & 2) != 0)
  {
    v577 = *(v649 + 1008) <= *(v644 + 236) + 10;
    if (*(v96 + 164) == 6)
    {
      goto LABEL_391;
    }
  }

  else
  {
    v577 = 1;
    if (*(v96 + 164) == 6)
    {
      goto LABEL_391;
    }
  }

  if (!*(v96 + 138) || *(v49 + 536) <= 70)
  {
    if (v58[53] >= 7)
    {
      v205 = 8;
    }

    else
    {
      v205 = 9;
    }

    v203 = 0;
    if (v648 > v205)
    {
      goto LABEL_392;
    }

    goto LABEL_399;
  }

LABEL_391:
  v203 = 0;
  if (v648 <= 9)
  {
LABEL_399:
    v204 = v646;
    goto LABEL_401;
  }

LABEL_392:
  v204 = v646;
  if (v58[62] == 1)
  {
    v203 = (*(**(v62 + 25360) + 4) - 3) <= 0xFFFFFFFD && *(v649 + 1008) != 0;
  }

LABEL_401:
  v575 = v203;
  v206 = 0;
  v578 = 0;
  v616 = 0;
  v656 = 0;
  v207 = v52 + 44138;
  v662 = v52 + 44122;
  v208 = v52 + 184986;
  if (v669)
  {
    v209 = 0;
  }

  else
  {
    v209 = v79 == 2;
  }

  v210 = v209;
  v573 = v210;
  v211 = v623;
  if (v623 == 4)
  {
    v211 = 0;
  }

  v574 = v211;
  v579 = v52 + 232068;
  v584 = (v62 + 25080);
  v583 = (v62 + 25216);
  v581 = (v62 + 25232);
  v212 = (v194 + v613);
  v213 = (v212 - 2) + 1;
  v614 = 12;
  v602 = 4;
  v576 = v201 ^ 1;
  v609 = &ss_size_lookup[4 * v197];
  v618 = 255;
  v582 = 0x7FFFFFFFFFFFFFFFLL;
  v641 = -1;
  v214 = &byte_273BD3061;
  v215 = &byte_273BD3079;
  v580 = 0x7FFFFFFF;
  v607 = -1;
  v598 = v621;
  v612 = 1;
  while (2)
  {
    v695 = 0;
    v696 = 0;
    v688 = 0;
    v699 = 0;
    if (v206 < v194)
    {
      if (*v204)
      {
        v218 = *v215;
        v216 = *(v215 - 1);
        v217 = 255;
        v219 = v216;
        if (v216 <= v79)
        {
          goto LABEL_424;
        }
      }

      else
      {
        v218 = *v214;
        v216 = *(v214 - 1);
        v217 = 255;
        v219 = v216;
        if (v216 <= v79)
        {
          goto LABEL_424;
        }
      }

      goto LABEL_413;
    }

    if (v213 == v206)
    {
      v216 = 2;
    }

    else
    {
      v216 = 1;
    }

    v217 = 3;
    v218 = 12;
    v219 = v216;
    if (v216 > v79)
    {
      goto LABEL_413;
    }

LABEL_424:
    v677 = v217;
    if (*(&v700 + v216))
    {
      goto LABEL_413;
    }

    if (*(v644 + 629) && (v216 != 1 || v726[4 * v218 + v216]))
    {
      goto LABEL_412;
    }

    v220 = *(v193 + 4);
    v221 = *v643;
    if (*v643 && (v207[v220] & 4) != 0 && LOWORD(v662[2 * v220 + 1]) != v219)
    {
      goto LABEL_411;
    }

    if (v635 == v216)
    {
      v222 = v198;
    }

    else
    {
      v222 = 1;
    }

    if ((v222 & 1) == 0)
    {
      if (v218 == 13)
      {
        v223 = &v726[v216];
        *(v223 + 105) = v199;
        *(v223 + 104) = v199;
        break;
      }

      v225 = &v726[4 * v218 + v216];
      if (v199 == v225[1])
      {
        if (v199 == *v225)
        {
          break;
        }

LABEL_410:
        v197 = v639;
LABEL_411:
        v204 = v646;
LABEL_412:
        v194 = v637;
LABEL_413:
        ++v206;
        v214 += 2;
        v215 += 2;
        if (v212 == v206)
        {
          goto LABEL_737;
        }

        continue;
      }

LABEL_501:
      v197 = v639;
LABEL_502:
      v204 = v646;
      v194 = v637;
      goto LABEL_413;
    }

    break;
  }

  if (v206 >= v637)
  {
    if (!*(v49 + 1664))
    {
      goto LABEL_410;
    }

    if ((ref_frame_to_flag_kVp9RefFlagList[v677] & *(v49 + 984)) == 0)
    {
      v197 = v639;
      v204 = v646;
      v194 = v637;
      goto LABEL_413;
    }

    if (v221 && (v207[v220] & 4) != 0)
    {
      goto LABEL_410;
    }
  }

  if (v216 == 2 && v58[62] == 1 && (*v646 && v641 < v588 || !*v646 && v641 < 0x1F4))
  {
    goto LABEL_410;
  }

  v224 = *(v49 + 984);
  if ((ref_frame_to_flag_kVp9RefFlagList[v216] & v224) == 0)
  {
    goto LABEL_501;
  }

  if (v58[134] == 1)
  {
    if (v52[235526] && *(v49 + 1580))
    {
      if (v726[4 * v218 + v216])
      {
        if (*(v660 + 160))
        {
          goto LABEL_501;
        }
      }

      else if (v216 == 1 && !v653[188] && !*(v660 + 160))
      {
        goto LABEL_501;
      }
    }

    else if (v726[4 * v218 + v216] && !v653[188])
    {
      goto LABEL_501;
    }
  }

  if (((v208[v639] >> v218) & 1) == 0)
  {
    goto LABEL_501;
  }

  if (v58[61] >= 1 && !v58[62])
  {
    if (*(v49 + 52) && (v216 != 3 || v726[4 * v218 + v216]))
    {
      goto LABEL_497;
    }

    v230 = *(v649 + 956);
    if (v216 != 3 || v230)
    {
      if (!v230 || !*(v49 + 512))
      {
        goto LABEL_464;
      }

      v240 = *v49;
      v241 = *(v49 + 20) >> 1;
      if (v216 == 2 && v240 > v241)
      {
        if (!v726[4 * v218 + v216])
        {
          goto LABEL_464;
        }

LABEL_497:
        v197 = v639;
        v193 = v647;
        goto LABEL_502;
      }

      if (v216 != 3 || v240 < 1 || v240 >= v241)
      {
        goto LABEL_464;
      }
    }

    if (!v726[4 * v218 + v216])
    {
      goto LABEL_464;
    }

    goto LABEL_497;
  }

LABEL_464:
  if (*(v713 + v216) && v218 == 11)
  {
    goto LABEL_497;
  }

  v226 = v669 ? v222 : 0;
  if (v216 == 2 && v226 && v726[4 * v218 + v216])
  {
    goto LABEL_497;
  }

  v193 = v647;
  if (*(v660 + 164) != 6)
  {
    v227 = *(v49 + 1560);
    if ((v227 > 1 || v648 == 12 && v227 == 1) && v669 && v216 == 1 && v218 == 13)
    {
      goto LABEL_501;
    }
  }

  v228 = v222 ^ 1;
  if (!*v646)
  {
    v228 = 1;
  }

  if ((v228 & 1) == 0 && *(&v701 + v216 - 1) && v726[4 * v218 + v216])
  {
    goto LABEL_501;
  }

  if (v221 && (v207[v220] & 4) != 0)
  {
    v194 = v637;
    goto LABEL_504;
  }

  if (!*(v49 + 1148) || (v229 = v726[4 * v218 + v216], v216 == 1) && !v229)
  {
    v204 = v646;
    v194 = v637;
    if (((v681 >> v219) & 1) == 0)
    {
      goto LABEL_504;
    }

LABEL_557:
    v197 = v639;
    goto LABEL_413;
  }

  if (v79 > 2)
  {
    if (!*(v49 + 52) && (v216 != 3 || v229))
    {
      v248 = v216 == 2 ? 1 : 2;
      if ((ref_frame_to_flag_kVp9RefFlagList[v248] & v224) != 0 && *(v679 + 4 * v216) > 2 * *(v679 + 4 * v248))
      {
        goto LABEL_555;
      }

      v249 = 3;
      if (v216 == 3)
      {
        v249 = 1;
      }

      if ((ref_frame_to_flag_kVp9RefFlagList[v249] & v224) != 0 && *(v679 + 4 * v216) > 2 * *(v679 + 4 * v249))
      {
LABEL_555:
        v681 |= 1 << v219;
      }
    }

LABEL_556:
    v204 = v646;
    v194 = v637;
    if (((v681 >> v219) & 1) == 0)
    {
      goto LABEL_504;
    }

    goto LABEL_557;
  }

  if (!v573)
  {
    goto LABEL_556;
  }

  v246 = v216 == 1 ? 2 : 1;
  if ((ref_frame_to_flag_kVp9RefFlagList[v246] & v224) == 0)
  {
    goto LABEL_556;
  }

  v194 = v637;
  if (*(v679 + 4 * v216) <= 2 * *(v679 + 4 * v246))
  {
    v204 = v646;
    if ((v681 >> v219))
    {
      goto LABEL_557;
    }
  }

  else
  {
    v681 |= 1 << v219;
    v204 = v646;
    if ((v681 >> v219))
    {
      goto LABEL_557;
    }
  }

LABEL_504:
  v571 = v198;
  v569 = v199;
  v570 = v208;
  if (v206 < v194)
  {
    *(v62 + 24944) = v714[3 * v216];
    v238 = 1;
    v239 = v583;
    v237 = v584;
    v234 = v216;
    v231 = v677;
  }

  else
  {
    v231 = v677;
    v232 = &v714[3 * v216];
    v233 = v232[1];
    *(v62 + 24944) = *v232;
    v234 = v677;
    v235 = &v714[3 * v677];
    v236 = v235[1];
    *(v62 + 24960) = *v235;
    v237 = v583;
    *v584 = v233;
    *(v62 + 25096) = v236;
    v238 = 2;
    v239 = v581;
  }

  *v237 = v714[3 * v216 + v238];
  *v239 = v714[3 * v234 + 2];
  *(v647 + 8) = v216;
  *(v647 + 9) = v231;
  v242 = v216 - 1;
  if (v219 <= 0)
  {
    v242 = 0;
  }

  *(v62 + 25424) = &v631[44 * v242];
  v243 = v231 - 1;
  if (v206 < v637)
  {
    v243 = 0;
  }

  *(v62 + 25432) = &v631[44 * v243];
  v564 = v218;
  v562 = v218 - 10;
  v244 = mode_idx[4 * v216 + v562];
  v245 = *(v629 + 4 * v244) << (v616 != 0);
  if (v216 == 2)
  {
    v198 = v571;
    if (*(v49 + 1568) && *v49 > 4)
    {
      v245 *= 8;
    }
  }

  else
  {
    v198 = v571;
  }

  v568 = *&v692[16];
  v193 = v647;
  if ((v245 == 0x7FFFFFFF || (*(v632 + 4 * v244) * v245) >> 5 > *&v692[16]) && v726[4 * v218 + v216])
  {
    v197 = v639;
    v204 = v646;
    v194 = v637;
    goto LABEL_413;
  }

  v247 = v222 ^ 1;
  if (v218 != 13)
  {
    v247 = 1;
  }

  v566 = v212;
  v567 = v207;
  v565 = v213;
  if (v247)
  {
    v563 = &v726[4 * v218 + v216];
    v194 = v637;
    if (v206 < v637)
    {
      v204 = v646;
      if (v218 != 10)
      {
        goto LABEL_561;
      }

      v564 = 10;
LABEL_564:
      if (!v724[v216 + 44] || (v204 = v646, v726[v216 + 44] | *v563))
      {
        if (v218 != 12)
        {
          goto LABEL_567;
        }

        goto LABEL_581;
      }

      goto LABEL_587;
    }
  }

  else
  {
    if (search_new_mv(v52, v62, v726, v219, v586, v648, v645, v50, v580, &v695 + 1, v607, v692))
    {
      v61 = v652;
      v49 = v650;
      v197 = v639;
      v193 = v647;
      v50 = v651;
      v62 = v683;
      v204 = v646;
      v58 = v654 + 47461;
      v194 = v637;
      v79 = v673;
      v199 = v569;
      v198 = v571;
      v212 = v566;
      v207 = v567;
      v208 = v570;
      v213 = v565;
      goto LABEL_413;
    }

    v563 = &v726[v216 + 52];
    v564 = 13;
    v194 = v637;
    v61 = v652;
    v49 = v650;
    v193 = v647;
    v50 = v651;
    v62 = v683;
    v204 = v646;
    v58 = v654 + 47461;
    v79 = v673;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v208 = v570;
    v213 = v565;
    if (v206 < v637)
    {
LABEL_561:
      if (!v724[v216 + 40] || (v204 = v646, v726[v216 + 40] | *v563))
      {
        if (v218 != 11)
        {
          goto LABEL_564;
        }

LABEL_567:
        if (!v724[v216 + 48] || (v204 = v646, v726[v216 + 48] | *v563))
        {
          if (v218 == 13)
          {
            goto LABEL_570;
          }

LABEL_581:
          if (!*(&v726[-1] + v216) || (v204 = v646, v726[v216 + 52] | *v563))
          {
            v561 = v216 == 1;
            goto LABEL_584;
          }
        }
      }

      goto LABEL_587;
    }
  }

LABEL_570:
  v561 = v216 == 1;
  v250 = v576;
  if (v218 != 13)
  {
    v250 = 1;
  }

  if ((v250 & 1) == 0 && v216 == 1 && v727 != -2147450880)
  {
    v251 = (*(v594 + 92559))(*(v62 + 8216), *(v62 + 8224), *(v62 + 24944) + (v653[4] * (v727 >> 3)) + (v727 >> 19));
    v213 = v565;
    v212 = v566;
    v207 = v567;
    v198 = v571;
    v79 = v673;
    v194 = v637;
    v58 = v654 + 47461;
    v62 = v683;
    v50 = v651;
    v193 = v647;
    v49 = v650;
    v61 = v652;
    v580 = v251;
    v653[194] = v251;
    v208 = v570;
    v52 = v654;
    v561 = 1;
  }

  v204 = v646;
LABEL_584:
  v252 = *v563;
  if (v206 < v194 && v218 != 10)
  {
    v204 = v646;
    if (v252 == v726[v216 + 40])
    {
LABEL_587:
      v197 = v639;
      v199 = v569;
      goto LABEL_413;
    }
  }

  *(v193 + 1) = v218;
  *(v193 + 12) = v252;
  *(v193 + 16) = 0;
  if (v606)
  {
    if (v689)
    {
      if (HIDWORD(v709[0]))
      {
        if (HIDWORD(v710[0]))
        {
          if (HIDWORD(v711))
          {
            v253 = -1;
          }

          else
          {
            v253 = 2;
            HIDWORD(v711) = 1;
          }
        }

        else
        {
          v253 = 1;
          HIDWORD(v710[0]) = 1;
        }
      }

      else
      {
        v253 = 0;
        HIDWORD(v709[0]) = 1;
      }

      v689 = &v709[2 * v253 - 1];
      *(v62 + 24928) = *v689;
      *v653 = v599;
    }

    else
    {
      v689 = v712;
    }

    v204 = v646;
  }

  v255 = v218 == 13 || v623 == 4;
  if ((v255 & v590) != 1)
  {
    goto LABEL_617;
  }

  if (!v561)
  {
    v256 = v222 ^ 1;
    if (v216 != 2)
    {
      v256 = 1;
    }

    if ((v256 & 1) != 0 || !*v204 && v58[62])
    {
      goto LABEL_617;
    }
  }

  v204 = v646;
  if (((*(v193 + 14) | *(v193 + 12)) & 7) != 0)
  {
    search_filter_ref(v52, v62, &v693, v645, v50, &v708, v648, v606, &v689, &v691, &v690, v572, &v688, &v699, v575);
    v50 = v651;
    v193 = v647;
    v49 = v650;
    v79 = v673;
    v257 = v656;
    v199 = v569;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v258 = v570;
    v213 = v565;
  }

  else
  {
LABEL_617:
    v260 = v216 != 2 || HIDWORD(v701) == 0 || *v204 == 0;
    v261 = v621;
    if (v260)
    {
      v261 = v574;
    }

    *(v193 + 7) = v261;
    v262 = v62;
    build_inter_predictors_for_planes(v62 + 24912, v648, v645, v50, 0, 0);
    if (v575)
    {
      model_rd_for_sb_y_large(v654, v648, v262, v262 + 24912, &v693, &v693 + 1, &v691, &v690, v645, v651, &v688, &v699);
    }

    else
    {
      model_rd_for_sb_y(v654, v648, v262, v262 + 24912, &v693, &v693 + 1, &v691, &v690, 0);
    }

    v49 = v650;
    v193 = v647;
    v50 = v651;
    v79 = v673;
    v257 = v656;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v258 = v570;
    v213 = v565;
    if (v561)
    {
      v263 = v690;
      if (!*v563)
      {
        v641 = v690 >> (b_height_log2_lookup[v639] + b_width_log2_lookup[v639]);
      }
    }

    else
    {
      v263 = v690;
    }

    v199 = v569;
    v264 = v607;
    if (v263 < v607)
    {
      v264 = v263;
    }

    v607 = v264;
  }

  v560 = v688;
  if (v688)
  {
    v62 = v683;
    if (*(v649 + 1232) == 4 && ((*(v193 + 14) | *(v193 + 12)) & 7) != 0)
    {
      switchable_rate = vp9_get_switchable_rate(v654, v683 + 24912);
      v213 = v565;
      v212 = v566;
      v258 = v570;
      v207 = v567;
      v198 = v571;
      v257 = v656;
      v79 = v673;
      v62 = v683;
      v50 = v651;
      v193 = v647;
      v49 = v650;
      v199 = v569;
      LODWORD(v693) = v693 + switchable_rate;
    }

    v656 = v257;
    v266 = *(v62 + 25368);
    v267 = *(v62 + 25376);
    if (v267)
    {
      v267 = *(v267 + 3);
    }

    v61 = v652;
    v58 = v654 + 47461;
    if (v266)
    {
      v266 = *(v266 + 3);
    }

    v268 = v693 + vp9_prob_cost[256 - *(*(v643 + 16) + v266 + v267 + 1967)];
    goto LABEL_679;
  }

  v696 = v690;
  if (*(v193 + 2) >= 2u)
  {
    v269 = 2;
  }

  else
  {
    v269 = *(v193 + 2);
  }

  v270 = v648;
  block_yrd(v654, v683, &v693, &v695, &v696, v648, v269, 1, 0);
  v271 = v695;
  *(v660 + 12) = v695;
  if (v271)
  {
    v272 = *(v683 + 25376);
    v62 = v683;
    if (v272)
    {
      v272 = *(v272 + 3);
    }

    v61 = v652;
    v49 = v650;
    v193 = v647;
    v50 = v651;
    v58 = v654 + 47461;
    v79 = v673;
    v273 = v569;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v258 = v570;
    v213 = v565;
    v274 = *(v683 + 25368);
    if (v274)
    {
      v274 = *(v274 + 3);
    }

    v268 = vp9_prob_cost[256 - *(*(v643 + 16) + v274 + v272 + 1967)];
    goto LABEL_663;
  }

  v275 = v653[174];
  v276 = (*(&v693 + 1) << v275) + ((v653[175] * v693 + 256) >> 9);
  v277 = v696 << v275;
  v278 = *(v643 + 16);
  v279 = *(v683 + 25368);
  v280 = *(v683 + 25376);
  v62 = v683;
  if (v276 >= v277)
  {
    v61 = v652;
    v49 = v650;
    v50 = v651;
    v58 = v654 + 47461;
    v79 = v673;
    v199 = v569;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v258 = v570;
    v213 = v565;
    if (v280)
    {
      v282 = *(v280 + 3);
    }

    else
    {
      v282 = 0;
    }

    v193 = v647;
    if (v279)
    {
      v279 = *(v279 + 3);
    }

    v268 = vp9_prob_cost[256 - *(v278 + v279 + v282 + 1967)];
    LODWORD(v693) = v268;
    *(&v693 + 1) = v696;
    *(v660 + 12) = 1;
    if (*(v649 + 1232) == 4)
    {
      goto LABEL_664;
    }
  }

  else
  {
    v61 = v652;
    v49 = v650;
    v50 = v651;
    v58 = v654 + 47461;
    v79 = v673;
    v273 = v569;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v258 = v570;
    v213 = v565;
    if (v280)
    {
      v281 = *(v280 + 3);
    }

    else
    {
      v281 = 0;
    }

    v193 = v647;
    if (v279)
    {
      v279 = *(v279 + 3);
    }

    v268 = v693 + vp9_prob_cost[*(v278 + v279 + v281 + 1967)];
LABEL_663:
    LODWORD(v693) = v268;
    v199 = v273;
    v270 = v648;
    if (*(v649 + 1232) == 4)
    {
LABEL_664:
      if (((*(v193 + 14) | *(v193 + 12)) & 7) != 0)
      {
        v283 = vp9_get_switchable_rate(v654, v62 + 24912);
        v213 = v565;
        v212 = v566;
        v258 = v570;
        v207 = v567;
        v198 = v571;
        v79 = v673;
        v58 = v654 + 47461;
        v62 = v683;
        v50 = v651;
        v193 = v647;
        v49 = v650;
        v61 = v652;
        v268 += v283;
        v199 = v569;
        LODWORD(v693) = v268;
      }
    }
  }

  v284 = *(v660 + 136);
  if (*(v660 + 136) || *(v660 + 137))
  {
    v685 = 0;
    v684 = 0;
    v686 = 0;
    v285 = v609[2 * v653[30] + v653[31]];
    if (v284 && !v699)
    {
      build_inter_predictors_for_planes(v62 + 24912, v270, v645, v50, 1, 1);
      v62 = v683;
      LODWORD(v699) = 1;
    }

    if (*(v660 + 137) && !HIDWORD(v699))
    {
      build_inter_predictors_for_planes(v62 + 24912, v270, v645, v651, 2, 2);
      v62 = v683;
      HIDWORD(v699) = 1;
    }

    model_rd_for_sb_uv(v654, v285, v62, v62 + 24912, &v684, &v691, &v690, 1, 2);
    v62 = v683;
    v268 = v693 + v684;
    *(&v693 + 1) += v685;
    v61 = v652;
    v49 = v650;
    v193 = v647;
    v50 = v651;
    v58 = v654 + 47461;
    v79 = v673;
    v199 = v569;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v258 = v570;
    v213 = v565;
  }

LABEL_679:
  v286 = SHIDWORD(v695);
  LODWORD(v693) = HIDWORD(v695) + v268;
  v287 = *(&v703 + v216) + (v579[4 * *(*(v62 + 25568) + v216 + 32) + v562] + HIDWORD(v695) + v268);
  LODWORD(v693) = *(&v703 + v216) + v579[4 * *(*(v62 + 25568) + v216 + 32) + v562] + HIDWORD(v695) + v268;
  v694 = (*(&v693 + 1) << v653[174]) + ((v653[175] * v287 + 256) >> 9);
  v208 = v258;
  if (v58[62] == 1 && v58[53] >= 5 && v58[134] != 1)
  {
    vp9_NEWMV_diff_bias(v585, v62 + 24912, v218, &v693, v648, *v563, *(v563 + 1), v561, *(v660 + 140), *(v660 + 138));
    v213 = v565;
    v212 = v566;
    v208 = v570;
    v207 = v567;
    v198 = v571;
    v199 = v569;
    v79 = v673;
    v58 = v654 + 47461;
    v62 = v683;
    v50 = v651;
    v193 = v647;
    v49 = v650;
    v61 = v652;
  }

  if (*(v49 + 1668))
  {
    if (v653[151] == 0 && !v603 && !*(v644 + 496))
    {
      encode_breakout_test(v654, v683, v648, v645, v50, v219, v218, v691, v690, v714, &v693, &v693 + 1, v699, SHIDWORD(v699));
      v213 = v565;
      v212 = v566;
      v208 = v570;
      v207 = v567;
      v198 = v571;
      v199 = v569;
      v79 = v673;
      v58 = v654 + 47461;
      v62 = v683;
      v50 = v651;
      v193 = v647;
      v49 = v650;
      v61 = v652;
      if (v653[492])
      {
        v288 = v693 + v286;
        LODWORD(v693) = v693 + v286;
        v694 = (*(&v693 + 1) << v653[174]) + ((v653[175] * v288 + 256) >> 9);
      }
    }
  }

  v197 = v639;
  v204 = v646;
  v289 = v607;
  if (v58[134] == 1)
  {
    if (v603)
    {
      if (!v561)
      {
        goto LABEL_700;
      }

LABEL_695:
      if (!*v563 && !v646[1] && !v653[188] && v690)
      {
        v694 *= 4;
      }
    }

    else
    {
      v290 = v561;
      if (!*(v644 + 496))
      {
        v290 = 0;
      }

      if (v290)
      {
        goto LABEL_695;
      }
    }
  }

LABEL_700:
  if (v58[51] >= 1 && v589 && *v592)
  {
    vp9_denoiser_update_frame_stats(v193, v690, v218, v587);
    if (v561)
    {
      v291 = v582;
      if (!*v563)
      {
        v291 = v694;
      }

      v582 = v291;
    }

    v61 = v652;
    v49 = v650;
    v193 = v647;
    v50 = v651;
    v62 = v683;
    v204 = v646;
    v58 = v654 + 47461;
    v79 = v673;
    v199 = v569;
    v198 = v571;
    v212 = v566;
    v207 = v567;
    v208 = v570;
    v213 = v565;
    v289 = v607;
  }

  v724[4 * v564 + v216] = 1;
  v607 = v289;
  if (v694 < v568 || v653[492])
  {
    *v692 = v693;
    *&v692[16] = v694;
    v598 = *(v193 + 7);
    v602 = *(v193 + 2);
    v616 = *(v660 + 12);
    if (v606)
    {
      v292 = v677;
      v293 = v560;
      if (v656)
      {
        *(v656 + 3) = 0;
      }

      v656 = v689;
    }

    else
    {
      v292 = v677;
      v293 = v560;
    }
  }

  else
  {
    if (v606 && v689)
    {
      *(v689 + 3) = 0;
    }

    v216 = v612;
    v218 = v614;
    v292 = v618;
    v293 = v578;
  }

  if (v653[492])
  {
    v294 = v577;
    if (BYTE2(v725))
    {
      v294 = 1;
    }

    if (v294)
    {
      goto LABEL_736;
    }
  }

  if (v206)
  {
    v295 = v293 == 0;
  }

  else
  {
    v295 = 1;
  }

  v296 = v295;
  if ((v296 | v603))
  {
    v612 = v216;
    v614 = v218;
    v618 = v292;
    v578 = v293;
    v52 = v654;
    goto LABEL_412;
  }

  v297 = v577;
  if (BYTE2(v725))
  {
    v297 = 1;
  }

  v194 = v637;
  if (v297 != 1)
  {
    v612 = v216;
    v614 = v218;
    v618 = v292;
    v578 = v293;
    v52 = v654;
    goto LABEL_413;
  }

  v653[492] = 1;
  v204 = v646;
LABEL_736:
  LOBYTE(v612) = v216;
  LOBYTE(v614) = v218;
  LOBYTE(v618) = v292;
  v52 = v654;
LABEL_737:
  *(v193 + 1) = v614;
  *(v193 + 7) = v598;
  *(v193 + 2) = v602;
  *(v193 + 8) = v612;
  v298 = v204;
  v299 = v726[4 * v614 + v612];
  *(v193 + 12) = v299;
  *(**(v62 + 25360) + 24) = v299;
  v300 = v660;
  *(v660 + 12) = v616;
  *(v193 + 9) = v618;
  v301 = v633;
  if (!v298[1])
  {
    v301 = 1;
  }

  if (v301)
  {
    v302 = 1;
    v303 = v653;
    v304 = v629;
    v305 = v619;
    v306 = v656;
    if (v58[61] < 1)
    {
      goto LABEL_751;
    }

LABEL_750:
    if (!v58[62] && *(v49 + 52))
    {
LABEL_755:
      v302 = 0;
      if (*v643)
      {
        goto LABEL_756;
      }

      goto LABEL_759;
    }
  }

  else
  {
    v307 = v298[2];
    v303 = v653;
    v304 = v629;
    if (v307)
    {
      v306 = v656;
      if (!v625[3484 * v307 + 3455] && (*(v49 + 984) & 2) != 0)
      {
        v302 = *(&v701 + v612 - 1) != 0;
        v305 = 3 * v619;
        if (v58[61] < 1)
        {
          goto LABEL_751;
        }

        goto LABEL_750;
      }

      v302 = 1;
      v305 = 3 * v619;
      if (v58[61] >= 1)
      {
        goto LABEL_750;
      }
    }

    else
    {
      v302 = 1;
      v306 = v656;
      v305 = 3 * v619;
      if (v58[61] >= 1)
      {
        goto LABEL_750;
      }
    }
  }

LABEL_751:
  if (*(v644 + 629))
  {
    goto LABEL_755;
  }

  if (*v643)
  {
LABEL_756:
    v308 = *(v193 + 4);
    if ((v207[v308] & 4) != 0 && SLOWORD(v662[2 * v308 + 1]) > 0)
    {
      v302 = 0;
    }
  }

LABEL_759:
  if (*&v692[16] != 0x7FFFFFFFFFFFFFFFLL && (v58[134] != 1 || v303[188]))
  {
    v309 = v603;
    if (!v302)
    {
      v309 = 0;
    }

    if (!v309 && (v648 >= 9 && v669 && *(v660 + 164) != 6 || !v302 || v303[492] || *&v692[16] <= v305 || *(v49 + 1464) < v648 || *(v660 + 139) || *(v660 + 140)))
    {
      v312 = v612;
      goto LABEL_900;
    }
  }

  v686 = 0;
  v684 = v52;
  v685 = v62;
  v699 = 0x7FFFFFFFFFFFFFFFLL;
  v310 = tx_mode_to_biggest_tx_size[*(v649 + 1004)];
  v311 = v655;
  if (v655 < v310)
  {
    LOBYTE(v310) = v655;
  }

  v626 = v310;
  if (v606 && v306)
  {
    if (*v306 != v605)
    {
      v595 = v306;
      goto LABEL_812;
    }

    if (HIDWORD(v709[0]))
    {
      if (HIDWORD(v710[0]))
      {
        if (HIDWORD(v711))
        {
          v313 = -1;
          goto LABEL_790;
        }

        v313 = 2;
        v314 = &v711 + 4;
      }

      else
      {
        v313 = 1;
        v314 = v710 + 4;
      }
    }

    else
    {
      v313 = 0;
      v314 = v709 + 4;
    }

    *v314 = 1;
LABEL_790:
    v315 = &v709[2 * v313 - 1];
    v689 = v315;
    v316 = *v306;
    v595 = v315;
    if (*v649)
    {
      vpx_highbd_convolve_copy_neon((2 * v316), *(v306 + 2), (2 * *v315), *(v315 + 2), 0, 0, 0, 0, 0, v599, v591);
      v58 = v654 + 47461;
      v62 = v683;
      v50 = v651;
      v193 = v647;
      v49 = v650;
      v61 = v652;
    }

    else
    {
      v317 = *(v306 + 2);
      v318 = *v315;
      v319 = *(v315 + 2);
      if (v648 > 1)
      {
        if ((v197 - 2) > 2)
        {
          if (v648 > 7)
          {
            if ((v197 - 8) >= 3)
            {
              v340 = -4 * v630;
              v341 = v316 + 2;
              v342 = v318 + 2;
              do
              {
                v343 = *(v341 - 1);
                v344 = *v341;
                v345 = v341[1];
                *(v342 - 2) = *(v341 - 2);
                *(v342 - 1) = v343;
                *v342 = v344;
                v342[1] = v345;
                v341 = (v341 + v317);
                v342 = (v342 + v319);
                v200 = __CFADD__(v340++, 1);
              }

              while (!v200);
            }

            else
            {
              v333 = -4 * v630;
              do
              {
                v334 = *v316;
                v335 = v316[1];
                v336 = (v316 + v317);
                v337 = *v336;
                v338 = v336[1];
                *v318 = v334;
                v318[1] = v335;
                v339 = (v318 + v319);
                *v339 = v337;
                v339[1] = v338;
                v318 = (v339 + v319);
                v316 = (v336 + v317);
                v333 += 2;
              }

              while (v333);
            }
          }

          else
          {
            v328 = -4 * v630;
            do
            {
              v329 = *v316;
              v330 = (v316 + v317);
              v331 = *v330;
              v316 = (v330 + v317);
              *v318 = v329;
              v332 = (v318 + v319);
              *v332 = v331;
              v318 = (v332 + v319);
              v328 += 2;
            }

            while (v328);
          }
        }

        else
        {
          v323 = -4 * v630;
          do
          {
            v324 = *v316;
            v325 = (v316 + v317);
            v326 = *v325;
            v316 = (v325 + v317);
            *v318 = v324;
            v327 = (v318 + v319);
            *v327 = v326;
            v318 = (v327 + v319);
            v323 += 2;
          }

          while (v323);
        }
      }

      else
      {
        v320 = -4 * v630;
        do
        {
          *v318 = *v316;
          v321 = (v316 + v317);
          v322 = (v318 + v319);
          *v322 = *v321;
          v316 = (v321 + v317);
          v318 = (v322 + v319);
          v320 += 2;
        }

        while (v320);
      }

      v193 = v647;
    }

LABEL_812:
    v311 = v655;
  }

  else
  {
    v595 = v306;
  }

  v346 = 0;
  *(v62 + 24928) = v605;
  v347 = v52 + 184968;
  *(v62 + 24936) = v601;
  v678 = 1 << v311;
  v622 = v52 + 232058;
  v624 = v52 + 184968;
  v620 = v703 + v593;
  v348 = 4 * v678;
  v608 = 4;
  v680 = 4 * v678;
  while (2)
  {
    v349 = intra_mode_list[v346];
    v350 = mode_idx[qword_273BD34F8[v349]];
    v351 = *(v304 + 4 * v350);
    if (!*(v49 + 1556) || v303[188] || (v346 ? (v352 = *(v300 + 160) == 0) : (v352 = 1), v352 ? (v353 = 0) : (v353 = 1), v346 != 3 && (v353 & 1) == 0))
    {
      if (((v347[v197] >> v349) & 1) != 0 && (!v346 || !v52[185047] || *(v300 + 164) == 6))
      {
        v354 = *&v692[16];
        v355 = (*(v632 + 4 * v350) * v351) >> 5;
        v356 = v351 != 0x7FFFFFFF && v355 <= *&v692[16];
        if (v356 || v58[134] == 1 && v646[1] <= 0 && (v603 || *(v644 + 496)))
        {
          v357 = 0;
          *(v193 + 1) = v349;
          *(v193 + 8) = 0;
          LODWORD(v693) = 0;
          *(&v693 + 1) = 0;
          LOBYTE(v686) = v349;
          HIDWORD(v686) = 1;
          v687 = &v693;
          *(v193 + 2) = v626;
          v358 = v303[117];
          if (v358 < 0)
          {
            v357 = v358 >> (v628[86] + 5);
          }

          v642 = *(v62 + 8216);
          v640 = *(v62 + 24928);
          v359 = *(v62 + 8224);
          v360 = *v303;
          v361 = v303[119];
          v638 = v346;
          v636 = v349;
          v634 = v354;
          if (v361 < 0)
          {
            v666 = ((v361 >> (v628[87] + 5)) + v630);
            v682 = v349;
            if (v666 < 1)
            {
              goto LABEL_854;
            }
          }

          else
          {
            v666 = v630;
            v682 = v349;
            if (v630 < 1)
            {
              goto LABEL_854;
            }
          }

          v362 = (v357 + v610);
          if (v362 >= 1)
          {
            v363 = 0;
            v364 = b_width_log2_lookup[v639];
            v663 = v348 * v360;
            v365 = *(v62 + 8216);
            v366 = *(v62 + 24928);
            v657 = v348 * v359;
            do
            {
              v367 = 0;
              v674 = v365;
              v670 = v366;
              do
              {
                *(v62 + 8216) = v365;
                *(v62 + 24928) = v366;
                if (*v660)
                {
                  v368 = v365;
                }

                else
                {
                  v368 = v366;
                }

                if (*v660)
                {
                  v369 = v359;
                }

                else
                {
                  v369 = v360;
                }

                vp9_predict_intra_block(v62 + 24912, v364, v655, v682, v368, v369, v366, v360, v367, v363, 0);
                v62 = v683;
                v367 += v678;
                v366 += v680;
                v365 += v680;
              }

              while (v367 < v362);
              v363 += v678;
              v366 = v670 + v663;
              v365 = v674 + v657;
            }

            while (v363 < v666);
          }

LABEL_854:
          *(v62 + 8216) = v642;
          *(v62 + 24928) = v640;
          v370 = v62;
          model_rd_for_sb_y(v654, v648, v62, v62 + 24912, &v693, &v693 + 1, &v691, &v690, 1);
          if (*(v647 + 2) >= 2u)
          {
            v371 = 2;
          }

          else
          {
            v371 = *(v647 + 2);
          }

          block_yrd(v654, v370, &v693, &v686 + 1, &v699, v648, v371, 1, 1);
          if (HIDWORD(v686))
          {
            *(v660 + 12) = 1;
            v372 = *(v370 + 25376);
            if (v372)
            {
              v372 = *(v372 + 3);
            }

            v373 = *(v370 + 25368);
            if (v373)
            {
              v373 = *(v373 + 3);
            }

            LODWORD(v693) = vp9_prob_cost[256 - *(*(v643 + 16) + v373 + v372 + 1967)];
            if (v654[47595] != 1)
            {
              goto LABEL_895;
            }

LABEL_869:
            if (*(v660 + 136))
            {
              v377 = v653[30];
              v376 = v653[31];
              v378 = 2 * v377;
              v379 = v609[2 * v377 + v376];
              v658 = ((v653[119] >> (v376 + 5)) & (v653[119] >> 31)) + num_4x4_blocks_high_lookup[v379];
              if (v658 >= 1)
              {
                v380 = ((v653[117] >> (v377 + 5)) & (v653[117] >> 31)) + num_4x4_blocks_wide_lookup[v379];
                if (v380 >= 1)
                {
                  v381 = 0;
                  v382 = &uv_txsize_lookup[16 * ***(v683 + 25360) + 4 * *(**(v683 + 25360) + 2)];
                  v383 = v382[v378 + v376];
                  v675 = txsize_to_bsize[v382[v378 + v376]];
                  v384 = b_width_log2_lookup[v379];
                  v671 = v684;
                  v385 = v685;
                  v386 = v686;
                  v387 = v687;
                  v388 = *(v685 + 16520);
                  v389 = *(v685 + 25064);
                  v667 = 1 << v383;
                  v664 = v388;
                  do
                  {
                    for (i = 0; i < v380; i += v667)
                    {
                      v391 = *(v385 + 16528);
                      v392 = *(v385 + 25072);
                      v697 = 0;
                      v696 = 0;
                      v698 = 0;
                      v393 = v388 + 4 * (i + v381 * v391);
                      *(v385 + 16520) = v393;
                      v394 = v389 + 4 * (i + v381 * v392);
                      *(v385 + 25064) = v394;
                      v395 = *(v385 + 82216);
                      if (v395)
                      {
                        v396 = v393;
                      }

                      else
                      {
                        v396 = v389 + 4 * (i + v381 * v392);
                      }

                      if (v395)
                      {
                        v397 = v391;
                      }

                      else
                      {
                        v397 = v392;
                      }

                      vp9_predict_intra_block(v385 + 24912, v384, v383, v386, v396, v397, v394, v392, i, v381, 1);
                      v695 = 0;
                      model_rd_for_sb_uv(v671, v675, v385, v385 + 24912, &v696, &v695 + 1, &v695, 1, 1);
                      v388 = v664;
                      *(v385 + 16520) = v664;
                      *(v385 + 25064) = v389;
                      *v387 += v696;
                      *(v387 + 1) += v697;
                    }

                    v381 += v667;
                  }

                  while (v381 < v658);
                }
              }
            }

            if (*(v660 + 137))
            {
              v398 = v628[154];
              v399 = v628[155];
              v400 = v609[2 * v398 + v399];
              v659 = ((v653[119] >> (v399 + 5)) & (v653[119] >> 31)) + num_4x4_blocks_high_lookup[v400];
              if (v659 >= 1)
              {
                v401 = ((v653[117] >> (v398 + 5)) & (v653[117] >> 31)) + num_4x4_blocks_wide_lookup[v400];
                if (v401 >= 1)
                {
                  v402 = 0;
                  v403 = uv_txsize_lookup[16 * ***(v683 + 25360) + 4 * *(**(v683 + 25360) + 2) + 2 * v398 + v399];
                  v676 = v684;
                  v404 = v685;
                  v672 = txsize_to_bsize[uv_txsize_lookup[16 * ***(v683 + 25360) + 4 * *(**(v683 + 25360) + 2) + 2 * v398 + v399]];
                  v405 = b_width_log2_lookup[v400];
                  v406 = (v685 + 24832);
                  v407 = v686;
                  v408 = v687;
                  v409 = *(v685 + 24824);
                  v410 = *(v685 + 25200);
                  v668 = 1 << v403;
                  v665 = (v685 + 24832);
                  do
                  {
                    for (j = 0; j < v401; j += v668)
                    {
                      v412 = *v406;
                      v413 = v406[94];
                      v697 = 0;
                      v696 = 0;
                      v698 = 0;
                      *(v404 + 24824) = v409 + 4 * (j + v402 * v412);
                      v414 = v410 + 4 * (j + v402 * v413);
                      *(v404 + 25200) = v414;
                      v415 = *(v404 + 82216);
                      if (v415)
                      {
                        v416 = v409 + 4 * (j + v402 * v412);
                      }

                      else
                      {
                        v416 = v410 + 4 * (j + v402 * v413);
                      }

                      if (v415)
                      {
                        v417 = v412;
                      }

                      else
                      {
                        v417 = v413;
                      }

                      vp9_predict_intra_block(v404 + 24912, v405, v403, v407, v416, v417, v414, v413, j, v402, 2);
                      v695 = 0;
                      model_rd_for_sb_uv(v676, v672, v404, v404 + 24912, &v696, &v695 + 1, &v695, 2, 2);
                      v406 = v665;
                      *(v404 + 24824) = v409;
                      *(v404 + 25200) = v410;
                      *v408 += v696;
                      *(v408 + 1) += v697;
                    }

                    v402 += v668;
                  }

                  while (v402 < v659);
                }
              }
            }

            goto LABEL_895;
          }

          *(v660 + 12) = 0;
          v374 = *(v370 + 25376);
          if (v374)
          {
            v374 = *(v374 + 3);
          }

          v375 = *(v370 + 25368);
          if (v375)
          {
            v375 = *(v375 + 3);
          }

          LODWORD(v693) = v693 + vp9_prob_cost[*(*(v643 + 16) + v375 + v374 + 1967)];
          if (v654[47595] == 1)
          {
            goto LABEL_869;
          }

LABEL_895:
          LODWORD(v693) = v620 + v693 + v622[v636];
          v303 = v653;
          v694 = (*(&v693 + 1) << v653[174]) + ((v653[175] * v693 + 256) >> 9);
          v61 = v652;
          v49 = v650;
          v197 = v639;
          v193 = v647;
          v50 = v651;
          v62 = v683;
          v52 = v654;
          v300 = v660;
          v58 = v654 + 47461;
          v304 = v629;
          v346 = v638;
          v347 = v624;
          v348 = 4 * v678;
          if (v694 < v634)
          {
            *v692 = v693;
            *&v692[16] = v694;
            v608 = *(v647 + 2);
            *(v647 + 6) = v682;
            *(v647 + 12) = 0x8000800080008000;
            LOBYTE(v616) = *(v660 + 12);
            LOBYTE(v618) = -1;
            LOBYTE(v612) = 0;
            LOBYTE(v614) = v682;
          }
        }
      }
    }

    if (++v346 != 4)
    {
      continue;
    }

    break;
  }

  v312 = v612;
  v418 = v602;
  if (!v612)
  {
    v418 = v608;
  }

  *(v193 + 2) = v418;
  v306 = v595;
LABEL_900:
  *(v62 + 24928) = v605;
  *(v62 + 24936) = v601;
  *(v193 + 1) = v614;
  *(v193 + 8) = v312;
  *(v193 + 9) = v618;
  *(v300 + 12) = v616;
  if (*(v193 + 8) <= 0)
  {
    *(v193 + 7) = 3;
  }

  if (v606)
  {
    if (v306)
    {
      v419 = *v306;
      if (*v306 != v605 && *(v647 + 1) - 14 >= 0xFFFFFFFC)
      {
        if (*v649)
        {
          vpx_highbd_convolve_copy_neon((2 * v419), *(v306 + 2), (2 * *(v62 + 24928)), *v303, 0, 0, 0, 0, 0, v599, v591);
          v58 = v654 + 47461;
          v62 = v683;
          v50 = v651;
          v49 = v650;
          v61 = v652;
        }

        else
        {
          v420 = *(v306 + 2);
          v421 = *(v62 + 24928);
          v422 = *v303;
          if (v648 > 1)
          {
            if ((v197 - 2) > 2)
            {
              if (v648 > 7)
              {
                if ((v197 - 8) >= 3)
                {
                  v443 = -4 * v630;
                  v444 = v419 + 2;
                  v445 = v421 + 2;
                  do
                  {
                    v446 = *(v444 - 1);
                    v447 = *v444;
                    v448 = v444[1];
                    *(v445 - 2) = *(v444 - 2);
                    *(v445 - 1) = v446;
                    *v445 = v447;
                    v445[1] = v448;
                    v444 = (v444 + v420);
                    v445 = (v445 + v422);
                    v200 = __CFADD__(v443++, 1);
                  }

                  while (!v200);
                }

                else
                {
                  v436 = -4 * v630;
                  do
                  {
                    v437 = *v419;
                    v438 = v419[1];
                    v439 = (v419 + v420);
                    v440 = *v439;
                    v441 = v439[1];
                    *v421 = v437;
                    v421[1] = v438;
                    v442 = (v421 + v422);
                    *v442 = v440;
                    v442[1] = v441;
                    v421 = (v442 + v422);
                    v419 = (v439 + v420);
                    v436 += 2;
                  }

                  while (v436);
                }
              }

              else
              {
                v431 = -4 * v630;
                do
                {
                  v432 = *v419;
                  v433 = (v419 + v420);
                  v434 = *v433;
                  v419 = (v433 + v420);
                  *v421 = v432;
                  v435 = (v421 + v422);
                  *v435 = v434;
                  v421 = (v435 + v422);
                  v431 += 2;
                }

                while (v431);
              }
            }

            else
            {
              v426 = -4 * v630;
              do
              {
                v427 = *v419;
                v428 = (v419 + v420);
                v429 = *v428;
                v419 = (v428 + v420);
                *v421 = v427;
                v430 = (v421 + v422);
                *v430 = v429;
                v421 = (v430 + v422);
                v426 += 2;
              }

              while (v426);
            }
          }

          else
          {
            v423 = -4 * v630;
            do
            {
              *v421 = *v419;
              v424 = (v419 + v420);
              v425 = (v421 + v422);
              *v425 = *v424;
              v419 = (v424 + v420);
              v421 = (v425 + v422);
              v423 += 2;
            }

            while (v423);
          }
        }
      }
    }
  }

  if (v58[51] >= 1 && !v654[233448] && v589 && *v592 && !v654[233441])
  {
    LODWORD(v695) = 0;
    *(v587 + 816) = *(v596 + 452) != 0;
    vp9_denoiser_denoise(v52, v62, v645, v50, v648, v587, &v695, v586);
    if (*v585)
    {
      v49 = v650;
      if (v654[233459] < 2u)
      {
        v455 = v312;
        v61 = v652;
      }

      else
      {
        v449 = *&v692[16];
        v61 = v652;
        if (v582 >= 8 * *&v692[16])
        {
          goto LABEL_956;
        }

        if (v312 || !v695)
        {
          v455 = v312;
          if (v312 != 2)
          {
            goto LABEL_956;
          }

          if (v695 == 2 && v52[188638] == 1)
          {
            goto LABEL_937;
          }
        }

        else
        {
LABEL_937:
          LODWORD(v696) = 0;
          v684 = 0;
          v450 = v647;
          *(v647 + 1) = 12;
          *(v647 + 8) = -255;
          *(v683 + 25424) = v631;
          *(v683 + 25432) = v631;
          *(v647 + 12) = 0;
          if (*(v650 + 1480) == 3)
          {
            v451 = 3;
          }

          else
          {
            v451 = 0;
          }

          *(v647 + 7) = v451;
          *(v683 + 24944) = v715;
          build_inter_predictors_for_planes(v683 + 24912, v648, v645, v651, 0, 0);
          model_rd_for_sb_y(v52, v648, v683, v683 + 24912, &v696, &v684, &v699, &v695 + 1, 0);
          v452 = (v684 << v303[174]) + ((v303[175] * v696 + 256) >> 9);
          if (v452 <= v449)
          {
            *v692 = (v704 + v696 + v579[4 * *(*(v683 + 25568) + 33) + 2]);
            *&v692[8] = v684;
            *&v692[16] = v452;
            v312 = 1;
            v61 = v652;
            v49 = v650;
          }

          else
          {
            *(v647 + 1) = v614;
            *(v647 + 8) = v312;
            v453 = v312 - 1;
            if (!v312)
            {
              v453 = 0;
            }

            *(v683 + 25424) = &v631[44 * v453];
            *(v683 + 25432) = v631;
            *(v647 + 7) = v598;
            if (v312 == 2)
            {
              *(v647 + 12) = v726[4 * v614 + 2];
              v61 = v652;
              v49 = v650;
              v454 = v660;
              if (v606)
              {
                *(v683 + 24944) = v718;
                build_inter_predictors_for_planes(v683 + 24912, v648, v645, v651, 0, 0);
                v450 = v647;
                v49 = v650;
                v61 = v652;
              }
            }

            else
            {
              v61 = v652;
              v49 = v650;
              v454 = v660;
              if (!v312)
              {
                *(v647 + 12) = -2147450880;
                *(v647 + 7) = 3;
              }
            }

            *(v450 + 2) = v602;
            *(v454 + 12) = v616;
          }

LABEL_956:
          v455 = v312;
        }
      }
    }

    else
    {
      v455 = v312;
      v61 = v652;
      v49 = v650;
    }

    v312 = v455;
  }

  if (v312 == 3 || v618 == 3)
  {
    ++*(v596 + 486);
    v456 = v647;
  }

  else
  {
    v456 = v647;
    if (v312)
    {
      ++*(v596 + 487);
    }
  }

  v457 = *v597;
  if (*v597)
  {
    v458 = *(v456 + 1);
    v459 = v458 - 10;
    if (v458 < 0xA)
    {
      v459 = qword_273BD34F8[v458];
    }

    v460 = mode_idx[4 * v312 + v459];
    v461 = v61 + 16;
    if (v312)
    {
      if (v312 != 1)
      {
        if (v312 != 2)
        {
          goto LABEL_1122;
        }

        if (*(v49 + 1064))
        {
          v462 = v600 + 2;
          v463 = *(v61 + 3704);
          v464 = *(v463 + 4 * (v600 + 2));
          if (v460 == 2)
          {
            *(v463 + 4 * v462) = v464 - (v464 >> 4);
            if (!*(v49 + 1064))
            {
              goto LABEL_972;
            }

LABEL_1052:
            v523 = v600 + 9;
            v524 = *(v61 + 3704);
            v525 = *(v524 + 4 * (v600 + 9));
            if (v460 == 9)
            {
              *(v524 + 4 * v523) = v525 - (v525 >> 4);
              if (!*(v49 + 1064))
              {
                goto LABEL_1054;
              }

LABEL_1037:
              v517 = v600 + 11;
              v518 = *(v61 + 3704);
              v519 = *(v518 + 4 * (v600 + 11));
              if (v460 == 11)
              {
                *(v518 + 4 * v517) = v519 - (v519 >> 4);
                if (!*(v49 + 1064))
                {
                  goto LABEL_1039;
                }

LABEL_1065:
                v512 = v600 + 6;
                v513 = *(v61 + 3704);
                v514 = *(v513 + 4 * (v600 + 6));
                if (v460 != 6)
                {
LABEL_1066:
                  if (v514 + 1 < *v597 << 6)
                  {
                    v532 = v514 + 1;
                  }

                  else
                  {
                    v532 = *v597 << 6;
                  }

                  *(v513 + 4 * v512) = v532;
                  goto LABEL_1122;
                }

LABEL_1022:
                *(v513 + 4 * v512) = v514 - (v514 >> 4);
                goto LABEL_1122;
              }

              if (v519 + 1 < *v597 << 6)
              {
                v522 = v519 + 1;
              }

              else
              {
                v522 = *v597 << 6;
              }

              *(v518 + 4 * v517) = v522;
              if (*(v49 + 1064))
              {
                goto LABEL_1065;
              }

LABEL_1039:
              v520 = v461 + 120 * v197;
              v521 = *(v520 + 24);
              v507 = (v520 + 24);
              v508 = v521;
              if (v460 != 6)
              {
LABEL_1040:
                if (v508 + 1 < *v597 << 6)
                {
                  v510 = v508 + 1;
                }

                else
                {
                  v510 = *v597 << 6;
                }

                goto LABEL_1043;
              }

LABEL_1016:
              v510 = v508 - (v508 >> 4);
LABEL_1043:
              *v507 = v510;
              goto LABEL_1122;
            }

            if (v525 + 1 < *v597 << 6)
            {
              v531 = v525 + 1;
            }

            else
            {
              v531 = *v597 << 6;
            }

            *(v524 + 4 * v523) = v531;
            if (*(v49 + 1064))
            {
              goto LABEL_1037;
            }

LABEL_1054:
            v526 = v461 + 120 * v197;
            v529 = *(v526 + 44);
            v527 = (v526 + 44);
            v528 = v529;
            if (v460 == 11)
            {
              v530 = v528 - (v528 >> 4);
            }

            else if (v528 + 1 < *v597 << 6)
            {
              v530 = v528 + 1;
            }

            else
            {
              v530 = *v597 << 6;
            }

            *v527 = v530;
            if (*(v49 + 1064))
            {
              goto LABEL_1065;
            }

            goto LABEL_1039;
          }

          v516 = v457 << 6;
          if (v464 + 1 < v516)
          {
            v516 = v464 + 1;
          }

          *(v463 + 4 * v462) = v516;
          if (*(v49 + 1064))
          {
            goto LABEL_1052;
          }
        }

        else
        {
          v486 = v461 + 120 * v197;
          v489 = *(v486 + 8);
          v487 = (v486 + 8);
          v488 = v489;
          if (v460 == 2)
          {
            v490 = v488 - (v488 >> 4);
          }

          else
          {
            v490 = v457 << 6;
            if (v488 + 1 < v490)
            {
              v490 = v488 + 1;
            }
          }

          *v487 = v490;
          if (*(v49 + 1064))
          {
            goto LABEL_1052;
          }
        }

LABEL_972:
        v465 = v461 + 120 * v197;
        v468 = *(v465 + 36);
        v466 = (v465 + 36);
        v467 = v468;
        if (v460 == 9)
        {
          v469 = v467 - (v467 >> 4);
        }

        else if (v467 + 1 < *v597 << 6)
        {
          v469 = v467 + 1;
        }

        else
        {
          v469 = *v597 << 6;
        }

        *v466 = v469;
        if (*(v49 + 1064))
        {
          goto LABEL_1037;
        }

        goto LABEL_1054;
      }

      if (*(v49 + 1064))
      {
        v477 = *(v61 + 3704);
        v478 = *(v477 + 4 * v600);
        if (v460)
        {
          v479 = v457 << 6;
          if (v478 + 1 < v479)
          {
            v479 = v478 + 1;
          }

          *(v477 + 4 * v600) = v479;
        }

        else
        {
          *(v477 + 4 * v600) = v478 - (v478 >> 4);
        }
      }

      else
      {
        v491 = (v461 + 120 * v197);
        v492 = *v491;
        if (v460)
        {
          v493 = v457 << 6;
          if (v492 + 1 < v493)
          {
            v493 = v492 + 1;
          }
        }

        else
        {
          v493 = v492 - (v492 >> 4);
        }

        *v491 = v493;
      }

      if (*(v49 + 1064))
      {
        v533 = v600 + 7;
        v534 = *(v61 + 3704);
        v535 = *(v534 + 4 * (v600 + 7));
        if (v460 == 7)
        {
          *(v534 + 4 * v533) = v535 - (v535 >> 4);
          if (!*(v49 + 1064))
          {
            goto LABEL_1075;
          }

LABEL_1100:
          v552 = v600 + 10;
          v553 = *(v61 + 3704);
          v554 = *(v553 + 4 * (v600 + 10));
          if (v460 == 10)
          {
            *(v553 + 4 * v552) = v554 - (v554 >> 4);
            v547 = v303[188];
            if (!*(v49 + 1064))
            {
LABEL_1102:
              v555 = v461 + 120 * v197;
              if (v460 == 4)
              {
                v556 = *(v555 + 16) - (*(v555 + 16) >> 4);
              }

              else
              {
                v558 = *(v555 + 16);
                if (v547 <= 4 && v654[185027])
                {
                  if (v558 < 31)
                  {
                    v556 = v558 + 1;
                  }

                  else
                  {
                    v556 = 32;
                  }
                }

                else if (v558 + 1 < *v597 << 6)
                {
                  v556 = v558 + 1;
                }

                else
                {
                  v556 = *v597 << 6;
                }
              }

              *(v555 + 16) = v556;
              goto LABEL_1122;
            }
          }

          else
          {
            if (v554 + 1 < *v597 << 6)
            {
              v557 = v554 + 1;
            }

            else
            {
              v557 = *v597 << 6;
            }

            *(v553 + 4 * v552) = v557;
            v547 = v303[188];
            if (!*(v49 + 1064))
            {
              goto LABEL_1102;
            }
          }

LABEL_1088:
          v548 = v600 + 4;
          v549 = *(v61 + 3704);
          if (v460 == 4)
          {
            *(v549 + 4 * v548) -= *(v549 + 4 * v548) >> 4;
          }

          else
          {
            v550 = *(v549 + 4 * v548);
            if (v547 <= 4 && v654[185027])
            {
              if (v550 < 31)
              {
                v551 = v550 + 1;
              }

              else
              {
                v551 = 32;
              }

              *(v549 + 4 * v548) = v551;
            }

            else
            {
              if (v550 + 1 < *v597 << 6)
              {
                v559 = v550 + 1;
              }

              else
              {
                v559 = *v597 << 6;
              }

              *(v549 + 4 * v548) = v559;
            }
          }

          goto LABEL_1122;
        }

        if (v535 + 1 < *v597 << 6)
        {
          v546 = v535 + 1;
        }

        else
        {
          v546 = *v597 << 6;
        }

        *(v534 + 4 * v533) = v546;
        if (*(v49 + 1064))
        {
          goto LABEL_1100;
        }
      }

      else
      {
        v541 = v461 + 120 * v197;
        v544 = *(v541 + 28);
        v542 = (v541 + 28);
        v543 = v544;
        if (v460 == 7)
        {
          v545 = v543 - (v543 >> 4);
        }

        else if (v543 + 1 < *v597 << 6)
        {
          v545 = v543 + 1;
        }

        else
        {
          v545 = *v597 << 6;
        }

        *v542 = v545;
        if (*(v49 + 1064))
        {
          goto LABEL_1100;
        }
      }

LABEL_1075:
      v536 = v461 + 120 * v197;
      v539 = *(v536 + 40);
      v537 = (v536 + 40);
      v538 = v539;
      if (v460 == 10)
      {
        v540 = v538 - (v538 >> 4);
      }

      else if (v538 + 1 < *v597 << 6)
      {
        v540 = v538 + 1;
      }

      else
      {
        v540 = *v597 << 6;
      }

      *v537 = v540;
      v547 = v303[188];
      if (!*(v49 + 1064))
      {
        goto LABEL_1102;
      }

      goto LABEL_1088;
    }

    if (*(v49 + 1064))
    {
      v470 = v600 + 3;
      v471 = *(v61 + 3704);
      v472 = *(v471 + 4 * (v600 + 3));
      if (v460 == 3)
      {
        *(v471 + 4 * v470) = v472 - (v472 >> 4);
        if (!*(v49 + 1064))
        {
          goto LABEL_977;
        }

LABEL_1004:
        v495 = v600 + 23;
        v496 = *(v61 + 3704);
        v497 = *(v496 + 4 * (v600 + 23));
        if (v460 == 23)
        {
          *(v496 + 4 * v495) = v497 - (v497 >> 4);
          if (!*(v49 + 1064))
          {
            goto LABEL_1006;
          }

LABEL_1013:
          v503 = v600 + 22;
          v504 = *(v61 + 3704);
          v505 = *(v504 + 4 * (v600 + 22));
          if (v460 == 22)
          {
            *(v504 + 4 * v503) = v505 - (v505 >> 4);
            if (!*(v49 + 1064))
            {
              goto LABEL_1015;
            }

LABEL_1021:
            v512 = v600 + 15;
            v513 = *(v61 + 3704);
            v514 = *(v513 + 4 * (v600 + 15));
            if (v460 != 15)
            {
              goto LABEL_1066;
            }

            goto LABEL_1022;
          }

          if (v505 + 1 < *v597 << 6)
          {
            v511 = v505 + 1;
          }

          else
          {
            v511 = *v597 << 6;
          }

          *(v504 + 4 * v503) = v511;
          if (*(v49 + 1064))
          {
            goto LABEL_1021;
          }

LABEL_1015:
          v506 = v461 + 120 * v197;
          v509 = *(v506 + 60);
          v507 = (v506 + 60);
          v508 = v509;
          if (v460 != 15)
          {
            goto LABEL_1040;
          }

          goto LABEL_1016;
        }

        if (v497 + 1 < *v597 << 6)
        {
          v502 = v497 + 1;
        }

        else
        {
          v502 = *v597 << 6;
        }

        *(v496 + 4 * v495) = v502;
        if (*(v49 + 1064))
        {
          goto LABEL_1013;
        }

LABEL_1006:
        v498 = v461 + 120 * v197;
        v501 = *(v498 + 88);
        v499 = (v498 + 88);
        v500 = v501;
        if (v460 == 22)
        {
          *v499 = v500 - (v500 >> 4);
          if (*(v49 + 1064))
          {
            goto LABEL_1021;
          }
        }

        else
        {
          if (v500 + 1 < *v597 << 6)
          {
            v515 = v500 + 1;
          }

          else
          {
            v515 = *v597 << 6;
          }

          *v499 = v515;
          if (*(v49 + 1064))
          {
            goto LABEL_1021;
          }
        }

        goto LABEL_1015;
      }

      v485 = v457 << 6;
      if (v472 + 1 < v485)
      {
        v485 = v472 + 1;
      }

      *(v471 + 4 * v470) = v485;
      if (*(v49 + 1064))
      {
        goto LABEL_1004;
      }
    }

    else
    {
      v480 = v461 + 120 * v197;
      v483 = *(v480 + 12);
      v481 = (v480 + 12);
      v482 = v483;
      if (v460 == 3)
      {
        v484 = v482 - (v482 >> 4);
      }

      else
      {
        v484 = v457 << 6;
        if (v482 + 1 < v484)
        {
          v484 = v482 + 1;
        }
      }

      *v481 = v484;
      if (*(v49 + 1064))
      {
        goto LABEL_1004;
      }
    }

LABEL_977:
    v473 = v461 + 120 * v197;
    v476 = *(v473 + 92);
    v474 = (v473 + 92);
    v475 = v476;
    if (v460 == 23)
    {
      *v474 = v475 - (v475 >> 4);
      if (*(v49 + 1064))
      {
        goto LABEL_1013;
      }
    }

    else
    {
      if (v475 + 1 < *v597 << 6)
      {
        v494 = v475 + 1;
      }

      else
      {
        v494 = *v597 << 6;
      }

      *v474 = v494;
      if (*(v49 + 1064))
      {
        goto LABEL_1013;
      }
    }

    goto LABEL_1006;
  }

LABEL_1122:
  *v604 = *v692;
  *(v604 + 16) = *&v692[16];
}

uint64_t search_new_mv(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7, int a8, int a9, int *a10, unsigned int a11, uint64_t a12)
{
  v14 = a2 + 24576;
  v15 = (a1 + 184770);
  if (a4 < 2 || !a5 || a1[47523] != 1)
  {
    if (!a1[231600] || (v31 = a1 + 188635, !a1[188636]))
    {
      if (!combined_motion_search(a1, a2, a6, a7, a8, (a3 + 4 * a4 + 208), a10, *(a12 + 16), 0))
      {
        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    v32 = a3 + 4 * a4;
    v35 = *(v32 + 208);
    v34 = (v32 + 208);
    v33 = v35;
    if (v35 == -2147450880)
    {
      if (!combined_motion_search(a1, a2, a6, a7, a8, v34, a10, *(a12 + 16), 0))
      {
        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    if (*v15 <= 60)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    v43 = v37;
    v42 = a6;
    (*&a1[16 * a6 + 185124])(*(a2 + 8216), *(a2 + 8224), *(a2 + 24944) + *(a2 + 24952) * (v33 >> 3) + (v33 >> 19));
    if (*v31 && a6 <= 5 && a1[231600] && !*v34 && !v34[1])
    {
      return 0xFFFFFFFFLL;
    }

    if (*(v15 + 259))
    {
      if (0xFFFFFFFF >> v43 > a11)
      {
        return 0xFFFFFFFFLL;
      }

      if (a11 > 0x7FFFFFFF)
      {
        if (a11 == -1 && 0xFFFFFFFF >> (b_height_log2_lookup[v42] + b_width_log2_lookup[v42]) <= 0x18F && !*v34 && !v34[1])
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_37;
      }
    }

    else if (a11 > 0x7FFFFFFF)
    {
LABEL_37:
      v41 = combined_motion_search(a1, a2, a6, a7, a8, v34, a10, *(a12 + 16), 1);
      goto LABEL_39;
    }

    v41 = combined_motion_search(a1, a2, a6, a7, a8, v34, a10, *(a12 + 16), 0);
LABEL_39:
    if (!v41)
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v16 = **(a2 + 25360);
  if (a6 >= 6)
  {
    v19 = vp9_int_pro_motion_estimation(a1, a2, a6, a7, a8, (*(a2 + 25568) + 8 * a4));
    if (v19 <= *(v14 + 1136) && v19 + 16 * num_pels_log2_lookup[a6] <= a9)
    {
      v20 = *(v16 + 12);
      v21 = 4 * a4;
      *(a3 + v21 + 208) = v20;
      v22 = (*(a2 + 25568) + 8 * a4);
      v23 = *(a2 + 25776);
      v24 = *v22;
      v25 = v20 - v24;
      v26 = HIWORD(v20) - v22[1];
      v27 = *v23;
      v28 = v23[1];
      v29 = 2;
      if (v26)
      {
        v29 = 3;
      }

      if (v24 == v20)
      {
        v30 = v26 != 0;
      }

      else
      {
        v30 = v29;
      }

      *a10 = (108 * (*(v27 + 4 * v25) + *(v28 + 4 * v26) + *(a2 + 25724 + 4 * v30)) + 64) >> 7;
      *(a3 + v21 + 208) = *(a3 + v21 + 208) >> 3;
      *(a3 + v21 + 210) = *(a3 + v21 + 210) >> 3;
      v15[152](a2);
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

void *search_filter_ref(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, _DWORD *a6, int a7, int a8, void **a9, _DWORD *a10, _DWORD *a11, int a12, _DWORD *a13, _DWORD *a14, int a15)
{
  v15 = a5;
  v16 = a4;
  v65 = 0;
  v86 = *MEMORY[0x277D85DE8];
  v73 = (a2 + 24936);
  v18 = **(a2 + 25360);
  v63 = 4 * num_4x4_blocks_wide_lookup[a7];
  v85 = 0;
  v83[1] = 0;
  v84 = 0;
  v82 = 0;
  v83[0] = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v19 = a12 != 0;
  v61 = a6 + 7;
  v62 = a6 + 3;
  v60 = a6 + 11;
  v69 = a1 + 233296;
  v66 = 0;
  v20 = 4;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = *a9;
  for (i = a7; ; a7 = i)
  {
    v24 = v18;
    *(v18 + 7) = v19;
    v25 = a7;
    build_inter_predictors_for_planes(a2 + 24912, a7, v16, v15, 0, 0);
    v26 = 4 * v19;
    v27 = &v83[v19 - 1];
    result = a15 ? model_rd_for_sb_y_large(a1, v25, a2, a2 + 24912, (&v84 + v26), v27, (&v78 + v26), (&v76 + v26), v16, v15, a13, a14) : model_rd_for_sb_y(a1, v25, a2, a2 + 24912, (&v84 + v26), v27, (&v78 + v26), (&v76 + v26), 0);
    v29 = *(&v84 + v19);
    *(&v80 + v19) = v29;
    v30 = *(a2 + 25368);
    v18 = v24;
    if (v30)
    {
      v31 = *(v30 + 7);
      v32 = *(a2 + 25376);
      if (v32)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v31 = 3;
      v32 = *(a2 + 25376);
      if (v32)
      {
LABEL_10:
        v33 = *(v32 + 7);
        goto LABEL_13;
      }
    }

    v33 = 3;
LABEL_13:
    v34 = 3;
    if (v33 == 3)
    {
      v34 = v31;
    }

    if (v31 == 3)
    {
      v34 = v33;
    }

    if (v31 != v33)
    {
      LODWORD(v31) = v34;
    }

    v35 = v69[3 * v31 + *(**(a2 + 25360) + 7)] + v29;
    *(&v84 + v19) = v35;
    v36 = (v83[v19 - 1] << v73[174]) + ((v73[175] * v35 + 256) >> 9);
    *(&v74 + v19) = *(v24 + 2);
    if (v36 < v21)
    {
      break;
    }

    v45 = v21;
    if (v19)
    {
      goto LABEL_68;
    }

    *(v24 + 7) = 1;
    build_inter_predictors_for_planes(a2 + 24912, i, a4, a5, 0, 0);
    if (a15)
    {
      result = model_rd_for_sb_y_large(a1, i, a2, a2 + 24912, &v84 + 1, v83, &v78 + 1, &v76 + 1, a4, a5, a13, a14);
    }

    else
    {
      result = model_rd_for_sb_y(a1, i, a2, a2 + 24912, &v84 + 1, v83, &v78 + 1, &v76 + 1, 0);
    }

    HIDWORD(v80) = HIDWORD(v84);
    v46 = *(a2 + 25368);
    v18 = v24;
    if (v46)
    {
      v47 = *(v46 + 7);
      v48 = *(a2 + 25376);
      if (v48)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v47 = 3;
      v48 = *(a2 + 25376);
      if (v48)
      {
LABEL_32:
        v49 = *(v48 + 7);
        goto LABEL_35;
      }
    }

    v49 = 3;
LABEL_35:
    v50 = 3;
    if (v49 == 3)
    {
      v50 = v47;
    }

    if (v47 == 3)
    {
      v50 = v49;
    }

    if (v47 != v49)
    {
      LODWORD(v47) = v50;
    }

    v51 = v69[3 * v47 + *(**(a2 + 25360) + 7)] + SHIDWORD(v84);
    HIDWORD(v84) += v69[3 * v47 + *(**(a2 + 25360) + 7)];
    v21 = (v83[0] << v73[174]) + ((v73[175] * v51 + 256) >> 9);
    HIBYTE(v74) = *(v24 + 2);
    if (v21 >= v45)
    {
      goto LABEL_68;
    }

    v37 = *(a2 + 82228);
    HIDWORD(v65) = *a13;
    v20 = 1;
    v66 = *a14;
    if (!a8)
    {
      v16 = a4;
      v15 = a5;
      v38 = *a13;
      goto LABEL_77;
    }

    v16 = a4;
    v15 = a5;
    v52 = *a9;
    if (*a9 != v22)
    {
      goto LABEL_57;
    }

LABEL_60:
    if (v20)
    {
      v20 = 1;
      v38 = HIDWORD(v65);
      goto LABEL_77;
    }

    v56 = v62;
    if (!*v62)
    {
      v23 = 0;
LABEL_3:
      *v56 = 1;
      goto LABEL_4;
    }

    v56 = v61;
    if (!*v61)
    {
      v23 = 1;
      goto LABEL_3;
    }

    v56 = v60;
    if (!*v60)
    {
      v23 = 2;
      goto LABEL_3;
    }

    v23 = -1;
LABEL_4:
    LOBYTE(v65) = v37;
    v20 = 0;
    v22 = &a6[4 * v23];
    *(a2 + 24928) = *v22;
    *v73 = v63;
    v19 = 1;
  }

  v37 = *(a2 + 82228);
  v38 = *a13;
  v66 = *a14;
  HIDWORD(v65) = *a13;
  if (a8)
  {
    LOBYTE(v20) = v19;
    v21 = v36;
    v16 = a4;
    v15 = a5;
    v52 = *a9;
    if (*a9 == v22)
    {
      goto LABEL_60;
    }

LABEL_57:
    if (v52)
    {
      *(v52 + 3) = 0;
    }

    *a9 = v22;
    goto LABEL_60;
  }

  if (v19)
  {
    v20 = v19;
    goto LABEL_76;
  }

  LOBYTE(v65) = *(a2 + 82228);
  *(v24 + 7) = 1;
  build_inter_predictors_for_planes(a2 + 24912, i, a4, a5, 0, 0);
  if (a15)
  {
    result = model_rd_for_sb_y_large(a1, i, a2, a2 + 24912, &v84 + 1, v83, &v78 + 1, &v76 + 1, a4, a5, a13, a14);
    v39 = HIDWORD(v84);
    v40 = **(a2 + 25360);
    v41 = *(a2 + 25368);
    if (v41)
    {
      goto LABEL_24;
    }

LABEL_46:
    v42 = 3;
    v43 = *(a2 + 25376);
    if (!v43)
    {
      goto LABEL_47;
    }

LABEL_25:
    v44 = *(v43 + 7);
  }

  else
  {
    result = model_rd_for_sb_y(a1, i, a2, a2 + 24912, &v84 + 1, v83, &v78 + 1, &v76 + 1, 0);
    v39 = HIDWORD(v84);
    v40 = **(a2 + 25360);
    v41 = *(a2 + 25368);
    if (!v41)
    {
      goto LABEL_46;
    }

LABEL_24:
    v42 = *(v41 + 7);
    v43 = *(a2 + 25376);
    if (v43)
    {
      goto LABEL_25;
    }

LABEL_47:
    v44 = 3;
  }

  v53 = 3;
  if (v44 == 3)
  {
    v53 = v42;
  }

  if (v42 == 3)
  {
    v53 = v44;
  }

  if (v42 != v44)
  {
    LODWORD(v42) = v53;
  }

  v54 = v69[3 * v42 + *(v40 + 7)] + v39;
  HIDWORD(v84) = v54;
  v55 = *(v24 + 2);
  if (((v83[0] << v73[174]) + ((v73[175] * v54 + 256) >> 9)) < v36)
  {
    v37 = *(a2 + 82228);
    v38 = *a13;
    v66 = *a14;
    HIDWORD(v80) = v39;
    HIBYTE(v74) = v55;
    v20 = 1;
LABEL_76:
    v16 = a4;
    v15 = a5;
    goto LABEL_77;
  }

  v20 = 0;
  HIDWORD(v80) = v39;
  HIBYTE(v74) = v55;
LABEL_68:
  if (a8)
  {
    v16 = a4;
    v15 = a5;
    v37 = v65;
    v38 = HIDWORD(v65);
    if (v22 && *a9 != v22)
    {
      *(v22 + 3) = 0;
    }
  }

  else
  {
    v16 = a4;
    v15 = a5;
    v37 = v65;
    v38 = HIDWORD(v65);
  }

LABEL_77:
  *(v18 + 2) = *(&v74 + v20);
  v57 = *(&v80 + v20);
  *(v18 + 7) = v20;
  *a3 = v57;
  *(a3 + 8) = v83[v20 - 1];
  v58 = *(&v76 + v20);
  *a10 = *(&v78 + v20);
  *a11 = v58;
  *(a2 + 82228) = v37;
  *a13 = v38;
  *a14 = v66;
  if (a8)
  {
    *(a2 + 24928) = **a9;
    *v73 = *(*a9 + 2);
  }

  else if (!v20)
  {
    *(v18 + 7) = 0;

    return build_inter_predictors_for_planes(a2 + 24912, i, v16, v15, 0, 0);
  }

  return result;
}

void *model_rd_for_sb_y_large(_DWORD *a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, void *a6, _DWORD *a7, unsigned int *a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = 0;
  v285 = *MEMORY[0x277D85DE8];
  v13 = *(a4 + 120);
  v250 = *v13;
  v14 = b_width_log2_lookup[a2];
  v254 = a2;
  v15 = b_height_log2_lookup[a2];
  v249 = (a3 + 24832);
  v252 = a1 + 47464;
  v253 = a1 + 42997;
  v240 = v13[1];
  v257 = (v240 * v240) >> 6;
  v246 = v15 + v14;
  memset(v284, 0, sizeof(v284));
  v283 = 0u;
  memset(v282, 0, sizeof(v282));
  v281 = 0u;
  memset(v280, 0, sizeof(v280));
  v242 = v14;
  v243 = v15;
  v16 = (4 << v14);
  v279 = 0u;
  if (v16 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v264 = (4 << v15);
    if (v264 >= 1)
    {
      v18 = *(a3 + 8224);
      v262 = *(a4 + 16);
      v263 = *(a3 + 8216);
      v19 = *(a4 + 24);
      v270 = v19;
      v272 = v18;
      v268 = (4 << v14);
      v12 = 0;
      v17 = 0;
      if (a1[43005])
      {
        v20 = 0;
        LODWORD(v21) = 0;
        v22 = *v252;
        v241 = ((v16 - 1) >> 3) + 1;
        v256 = v241 & 0x3FFFFFFFFFFFFFF8;
        v261 = *v252;
        while (1)
        {
          v23 = v263 + v20 * v18;
          v24 = v21;
          v25 = v262 + v20 * v19;
          v266 = v20;
          switch(v22)
          {
            case 8:
              v38 = 0;
              v21 = v21;
              do
              {
                vpx_highbd_8_get8x8var_neon(v23 + v38, v272, v25 + v38, v270, &v284[-1] + v21, &v282[-1] + v21);
                v16 = v268;
                v19 = v270;
                v18 = v272;
                v39 = *(&v284[-1] + v21);
                v40 = *(&v282[-1] + v21);
                v12 += v39;
                v17 += v40;
                v41 = (v40 * v40) >> 6;
                v42 = v41 - v39;
                v90 = v39 >= v41;
                v43 = v39 - v41;
                if (v43 == 0 || !v90)
                {
                  v43 = v42;
                }

                *(&v280[-1] + v21++) = v43;
                v38 += 8;
              }

              while (v268 > v38);
              break;
            case 10:
              v32 = 0;
              v21 = v21;
              do
              {
                vpx_highbd_10_get8x8var_neon(v23 + v32, v272, v25 + v32, v270, &v284[-1] + v21, &v282[-1] + v21);
                v16 = v268;
                v19 = v270;
                v18 = v272;
                v33 = *(&v284[-1] + v21);
                v34 = *(&v282[-1] + v21);
                v12 += v33;
                v17 += v34;
                v35 = (v34 * v34) >> 6;
                v36 = v35 - v33;
                v90 = v33 >= v35;
                v37 = v33 - v35;
                if (v37 == 0 || !v90)
                {
                  v37 = v36;
                }

                *(&v280[-1] + v21++) = v37;
                v32 += 8;
              }

              while (v268 > v32);
              break;
            case 12:
              v26 = 0;
              v21 = v21;
              do
              {
                vpx_highbd_12_get8x8var_neon(v23 + v26, v272, v25 + v26, v270, &v284[-1] + v21, &v282[-1] + v21);
                v16 = v268;
                v19 = v270;
                v18 = v272;
                v27 = *(&v284[-1] + v21);
                v28 = *(&v282[-1] + v21);
                v12 += v27;
                v17 += v28;
                v29 = (v28 * v28) >> 6;
                v30 = v29 - v27;
                v90 = v27 >= v29;
                v31 = v27 - v29;
                if (v31 == 0 || !v90)
                {
                  v31 = v30;
                }

                *(&v280[-1] + v21++) = v31;
                v26 += 8;
              }

              while (v268 > v26);
              break;
            default:
              if (v16 <= 0x38)
              {
                v44 = 0;
                v21 = v21;
                do
                {
LABEL_29:
                  v57 = *(&v284[-1] + v21);
                  v58 = *(&v282[-1] + v21);
                  v12 += v57;
                  v17 += v58;
                  v59 = (v58 * v58) >> 6;
                  v60 = v59 - v57;
                  v90 = v57 >= v59;
                  v61 = v57 - v59;
                  if (v61 == 0 || !v90)
                  {
                    v61 = v60;
                  }

                  *(&v280[-1] + v21++) = v61;
                  v44 += 8;
                }

                while (v44 < v16);
                break;
              }

              v45 = v241 & 0x3FFFFFFFFFFFFFF8;
              v21 = v21 + v256;
              v46 = 0uLL;
              v47 = v12;
              v48 = v17;
              v49 = 4 * v24;
              v50 = (v280 + 4 * v24);
              v51 = (v284 + 4 * v24);
              v52 = (v282 + v49);
              v53 = 0uLL;
              do
              {
                v54 = v51[-1];
                v47 = vaddq_s32(v54, v47);
                v46 = vaddq_s32(*v51, v46);
                v55 = v52[-1];
                v48 = vaddq_s32(v55, v48);
                v53 = vaddq_s32(*v52, v53);
                v56 = vabdq_u32(*v51, vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v52->i8, *v52->i8), 6uLL), vmull_high_s32(*v52, *v52), 6uLL));
                v50[-1] = vabdq_u32(v54, vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v55.i8, *v55.i8), 6uLL), vmull_high_s32(v55, v55), 6uLL));
                *v50 = v56;
                v50 += 2;
                v51 += 2;
                v52 += 2;
                v45 -= 8;
              }

              while (v45);
              v12 = vaddvq_s32(vaddq_s32(v46, v47));
              v17 = vaddvq_s32(vaddq_s32(v53, v48));
              v44 = 8 * (v241 & 0x3FFFFFFFFFFFFFF8);
              if (v241 != v256)
              {
                goto LABEL_29;
              }

              break;
          }

          v20 = v266 + 8;
          v22 = v261;
          if (v266 + 8 >= v264)
          {
            goto LABEL_40;
          }
        }
      }

      v62 = 0;
      LODWORD(v63) = 0;
      do
      {
        v64 = 0;
        v65 = v263 + v62 * v18;
        v63 = v63;
        v267 = v62;
        v66 = v262 + v62 * v19;
        do
        {
          vpx_get8x8var(v65 + v64, v272, v66 + v64, v270, &v284[-1] + 4 * v63, &v282[-1] + 4 * v63);
          v19 = v270;
          v18 = v272;
          v67 = *(&v284[-1] + v63);
          v68 = *(&v282[-1] + v63);
          v12 += v67;
          v17 += v68;
          v69 = (v68 * v68) >> 6;
          v70 = v69 - v67;
          v90 = v67 >= v69;
          v71 = v67 - v69;
          if (v71 == 0 || !v90)
          {
            v71 = v70;
          }

          *(&v280[-1] + v63++) = v71;
          v64 += 8;
        }

        while (v268 > v64);
        v62 = v267 + 8;
      }

      while (v267 + 8 < v264);
    }
  }

LABEL_40:
  v72 = v250 * v250;
  v73 = (v17 * v17) >> (v246 + 4);
  v74 = v73 - v12;
  v90 = v12 >= v73;
  LODWORD(v75) = v12 - v73;
  if (v75 != 0 && v90)
  {
    v75 = v75;
  }

  else
  {
    v75 = v74;
  }

  *a7 = v75;
  *a8 = v12;
  if (v252[48] >= 1 && (!a1[188635] || a1[188636] >= a1[231648]) && v252[50] >= 6)
  {
    if (v17 >= 0)
    {
      v76 = v17;
    }

    else
    {
      v76 = -v17;
    }

    v77 = (v240 * v240) >> 6;
    v78 = v253;
    if (v76 >> v246 <= 4)
    {
      v79 = a1[233445];
      if (v79)
      {
        v80 = 6;
        if (a1[188637] == 2)
        {
          v80 = 10;
        }

        if (v79 == 1)
        {
          v80 = 2;
        }

        v77 = v80 * v257;
      }
    }

    v81 = v72 >> 6;
    v82 = v249[214];
    v83 = v252[73];
    if (v83 == 3)
    {
      goto LABEL_58;
    }

LABEL_80:
    v85 = 1;
    goto LABEL_81;
  }

  v78 = v253;
  if (v17 >= 0)
  {
    v86 = v17;
  }

  else
  {
    v86 = -v17;
  }

  v87 = v86 >> v246;
  if (v253[1] < 481 && *v253 < 641)
  {
    v89 = 2;
  }

  else
  {
    v89 = 1;
  }

  v90 = v252[50] <= 7 || v87 >= 5;
  if (v90)
  {
    v91 = 0;
  }

  else
  {
    v91 = v89;
  }

  v77 = v257 << v91;
  v81 = v72 >> 6;
  v82 = v249[214];
  v83 = v252[73];
  if (v83 != 3)
  {
    goto LABEL_80;
  }

LABEL_58:
  if (v75)
  {
    v84 = v82 == 0;
  }

  else
  {
    v84 = 1;
  }

  v85 = !v84;
LABEL_81:
  v92 = (a3 + 82228);
  v93 = v78[259];
  if (v93 != 4)
  {
    v96 = tx_mode_to_biggest_tx_size[v93];
    if (max_txsize_lookup[v254] < v96)
    {
      v96 = max_txsize_lookup[v254];
    }

    v97 = v252[131];
    goto LABEL_115;
  }

  if (v12 <= 4 * v75)
  {
    v94 = 1;
    v84 = v83 == 3;
    v98 = v85 ^ 1;
    if (!v84)
    {
      v98 = 1;
    }

    if (v98)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v94 = max_txsize_lookup[v254];
    if (v94 >= 3)
    {
      v94 = 3;
    }

    v84 = v83 == 3;
    v95 = v85 ^ 1;
    if (!v84)
    {
      v95 = 1;
    }

    if (v95)
    {
      goto LABEL_96;
    }
  }

  if ((*(**(a4 + 448) + 4) - 3) <= 0xFFFFFFFD)
  {
LABEL_96:
    if (v94 >= 2)
    {
      v99 = 2;
    }

    else
    {
      v99 = v94;
    }

    if (v85)
    {
      v100 = v99;
    }

    else
    {
      v100 = v94;
    }

    goto LABEL_103;
  }

  v100 = 1;
LABEL_103:
  v97 = v252[131];
  if (v97 == 1 && v100 == 1 && a2 < 7 && v75 >> 5 > v77)
  {
    v96 = 0;
  }

  else
  {
    v96 = v100;
  }

LABEL_115:
  if (v96 <= 1)
  {
    v104 = 1;
  }

  else
  {
    v104 = v96;
  }

  *(**(a4 + 448) + 2) = v104;
  if (v97 == 1 && *(a3 + 82376))
  {
    v81 <<= v82 == 0;
  }

  memset(v278, 0, sizeof(v278));
  memset(v277, 0, sizeof(v277));
  memset(v276, 0, sizeof(v276));
  v275[0] = 0;
  v275[1] = 0;
  v274[0] = 0;
  v274[1] = 0;
  if (v96 == 2)
  {
    v105 = 2;
  }

  else
  {
    v105 = 4;
  }

  if (v96 < 2)
  {
    v105 = 0;
  }

  v273 = (1 << (v246 - 2) >> v105);
  v106 = v275;
  if (v96 == 2)
  {
    v106 = v278;
  }

  if (v96 >= 2)
  {
    v107 = v106;
  }

  else
  {
    v107 = &v283;
  }

  v108 = v274;
  if (v96 == 2)
  {
    v108 = v276;
  }

  if (v96 < 2)
  {
    v108 = &v279;
  }

  v269 = v107;
  v271 = v108;
  if (v96 >= 2)
  {
    v265 = v81;
    v258 = v77;
    if (v243 != 32)
    {
      v109 = v242 - 1;
      if (v242 != 32)
      {
        v110 = 0;
        v111 = 0;
        if (1 << v109 <= 2)
        {
          v112 = 2;
        }

        else
        {
          v112 = 1 << v109;
        }

        v113 = ((v112 - 1) >> 1) + 1;
        v114 = v113 & 0x7FFFFFFC;
        v115 = ((v112 - 1) >> 1) + 1;
        while (1)
        {
          v116 = v110;
          v117 = v111 << v109;
          v118 = (v111 | 1) << v109;
          if (1 << v109 < 7)
          {
            break;
          }

          v120 = 4 * v110;
          v121 = (v278 + v120);
          v122 = (v277 + v120);
          v123 = (v276 + v120);
          v116 = v114 + v110;
          v124 = 4 * v117;
          v125 = 4 * v118;
          v126 = &v281;
          v127 = &v283;
          v128 = v113 & 0x7FFFFFFC;
          do
          {
            v129 = (v127 + v124);
            v286 = vld2q_f32(v129);
            v130 = (v127 + v125);
            v288 = vld2q_f32(v130);
            v286.val[0] = vaddq_s32(vaddq_s32(v286.val[1], v286.val[0]), vaddq_s32(v288.val[0], v288.val[1]));
            *v121++ = v286.val[0];
            v131 = (v126 + v124);
            *(&v286 + 16) = vld2q_f32(v131);
            v286.val[1] = vaddq_s32(v288.val[0], v286.val[1]);
            v132 = (v126 + v125);
            v289 = vld2q_f32(v132);
            v286.val[1] = vaddq_s32(v286.val[1], vaddq_s32(v289.val[0], v289.val[1]));
            *v122++ = v286.val[1];
            *v123++ = vabdq_u32(v286.val[0], vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v286.val[1].f32, *v286.val[1].f32), 8uLL), vmull_high_s32(v286.val[1], v286.val[1]), 8uLL));
            v126 += 2;
            v127 += 2;
            v128 -= 4;
          }

          while (v128);
          v119 = 2 * (v113 & 0x7FFFFFFC);
          if (v114 != v113)
          {
            goto LABEL_148;
          }

LABEL_142:
          v110 += v113;
          v111 += 2;
          v115 += v113;
          if (v111 >= 1 << (v243 - 1))
          {
            goto LABEL_153;
          }
        }

        v119 = 0;
LABEL_148:
        v133 = 0;
        v134 = 4 * (v119 + v118);
        v135 = &v282[-1] + v134;
        v136 = &v284[-1] + v134;
        v137 = 4 * (v119 + v117);
        v138 = &v282[-1] + v137;
        v139 = &v284[-1] + v137;
        v140 = v115 - v116;
        v141 = 4 * v116;
        v142 = v276 + 4 * v116;
        v143 = v277 + v141;
        v144 = v278 + v141;
        do
        {
          v145.i64[0] = *&v139[8 * v133];
          v145.i64[1] = *&v136[8 * v133];
          v145.i32[0] = vaddvq_s32(v145);
          *&v144[4 * v133] = v145.i32[0];
          v146.i64[0] = *&v138[8 * v133];
          v147 = v145.i32[0];
          v146.i64[1] = *&v135[8 * v133];
          v145.i32[0] = vaddvq_s32(v146);
          *&v143[4 * v133] = v145.i32[0];
          v148 = (v145.i32[0] * v145.i32[0]) >> 8;
          v149 = v148 - v147;
          v90 = v147 >= v148;
          v150 = v147 - v148;
          if (v150 == 0 || !v90)
          {
            v150 = v149;
          }

          *&v142[4 * v133++] = v150;
        }

        while (v140 != v133);
        goto LABEL_142;
      }
    }

LABEL_153:
    v77 = v258;
    v81 = v265;
    v92 = (a3 + 82228);
    if (v96 == 3 && v243 != 33)
    {
      v151 = v242 - 2;
      if (v242 != 33)
      {
        v152 = 0;
        v153 = 0;
        if (1 << v151 <= 2)
        {
          v154 = 2;
        }

        else
        {
          v154 = 1 << v151;
        }

        v155 = ((v154 - 1) >> 1) + 1;
        v156 = v155 & 0x7FFFFFFC;
        v157 = ((v154 - 1) >> 1) + 1;
        while (1)
        {
          v158 = v152;
          v159 = v153 << v151;
          v160 = (v153 | 1) << v151;
          if (1 << v151 < 7)
          {
            break;
          }

          v162 = 4 * v152;
          v163 = (v275 + v162);
          v164 = (v274 + v162);
          v158 = v156 + v152;
          v165 = 4 * v159;
          v166 = 4 * v160;
          v167 = v277;
          v168 = v278;
          v169 = v155 & 0x7FFFFFFC;
          do
          {
            v170 = (v168 + v165);
            v287 = vld2q_f32(v170);
            v171 = (v168 + v166);
            v290 = vld2q_f32(v171);
            v287.val[0] = vaddq_s32(vaddq_s32(v287.val[1], v287.val[0]), vaddq_s32(v290.val[0], v290.val[1]));
            *v163++ = v287.val[0];
            v172 = (v167 + v165);
            *(&v287 + 16) = vld2q_f32(v172);
            v287.val[1] = vaddq_s32(v290.val[0], v287.val[1]);
            v173 = (v167 + v166);
            v291 = vld2q_f32(v173);
            v287.val[1] = vaddq_s32(v287.val[1], vaddq_s32(v291.val[0], v291.val[1]));
            *v164++ = vabdq_u32(v287.val[0], vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v287.val[1].f32, *v287.val[1].f32), 0xAuLL), vmull_high_s32(v287.val[1], v287.val[1]), 0xAuLL));
            v167 += 2;
            v168 += 2;
            v169 -= 4;
          }

          while (v169);
          v161 = 2 * (v155 & 0x7FFFFFFC);
          if (v156 != v155)
          {
            goto LABEL_166;
          }

LABEL_160:
          v152 += v155;
          v153 += 2;
          v157 += v155;
          if (v153 >= 1 << (v243 - 2))
          {
            goto LABEL_171;
          }
        }

        v161 = 0;
LABEL_166:
        v174 = 0;
        v175 = 4 * (v161 + v160);
        v176 = v277 + v175;
        v177 = v278 + v175;
        v178 = 4 * (v161 + v159);
        v179 = v277 + v178;
        v180 = v278 + v178;
        v181 = v157 - v158;
        v182 = 4 * v158;
        v183 = v274 + 4 * v158;
        v184 = v275 + v182;
        do
        {
          v185.i64[0] = *&v180[8 * v174];
          v185.i64[1] = *&v177[8 * v174];
          v186.i64[0] = *&v179[8 * v174];
          v186.i64[1] = *&v176[8 * v174];
          v185.i32[0] = vaddvq_s32(v185);
          *&v184[4 * v174] = v185.i32[0];
          v187 = v185.i32[0];
          v185.i32[0] = vaddvq_s32(v186);
          v188 = (v185.i32[0] * v185.i32[0]) >> 10;
          v189 = v188 - v187;
          v90 = v187 >= v188;
          v190 = v187 - v188;
          if (v190 == 0 || !v90)
          {
            v190 = v189;
          }

          *&v183[4 * v174++] = v190;
        }

        while (v181 != v174);
        goto LABEL_160;
      }
    }
  }

LABEL_171:
  *v92 = 0;
  if (v273 < 1)
  {
    goto LABEL_208;
  }

  if (!v75)
  {
    if (!v12)
    {
      goto LABEL_208;
    }

    if (v81 <= (*v269 - *v271))
    {
      goto LABEL_199;
    }

    LOBYTE(v193) = 0;
LABEL_183:
    v194 = 0;
    while (v273 - 1 != v194)
    {
      v195 = (*(v269 + v194 + 1) - *(v271 + v194 + 1));
      ++v194;
      if (v81 <= v195)
      {
        v196 = v194 >= v273;
        if (v193)
        {
          goto LABEL_187;
        }

        goto LABEL_198;
      }
    }

    v196 = 1;
    if (v193)
    {
LABEL_187:
      v198 = a5;
      result = a6;
      if (v196)
      {
        goto LABEL_193;
      }

      goto LABEL_201;
    }

LABEL_198:
    if (v196)
    {
      goto LABEL_208;
    }

LABEL_199:
    *v92 = 2;
LABEL_200:
    v198 = a5;
    result = a6;
LABEL_201:
    v201 = num_pels_log2_lookup[v254];
    v204 = v250 >> (*(a4 + 624) - 5);
    v205 = v12 - v75;
    v206 = (((v204 * v204) << (v201 + 10)) + (v205 >> 1)) / v205;
    if (v206 >= 0x3BFDF)
    {
      LODWORD(v206) = 245727;
    }

    v207 = (v206 >> 2) + 8;
    v208 = __clz(v207);
    v209 = (v207 >> (28 - v208)) & 7 | (8 * (28 - v208));
    v210 = (v206 - xsq_iq_q10[v209]) << 10 >> (30 - v208);
    v200 = ((((v210 * dist_tab_q10[v209 + 1] + (1024 - v210) * dist_tab_q10[v209]) >> 10) * v205 + 512) >> 7) & 0xFFFFFFFFFFFFFFF8;
    v199 = (((v210 * rate_tab_q10[v209 + 1] + (1024 - v210) * rate_tab_q10[v209]) >> 10 << v201) + 1) >> 2;
    *v198 = v199;
    if (!v75)
    {
      goto LABEL_194;
    }

    goto LABEL_204;
  }

  if (v77 <= *v271)
  {
    v193 = 1;
    if (v12 == v75)
    {
      goto LABEL_191;
    }

LABEL_182:
    if (v81 <= (*v269 - *v271))
    {
      if (v193)
      {
        goto LABEL_200;
      }

      goto LABEL_199;
    }

    goto LABEL_183;
  }

  v191 = 0;
  while (v273 - 1 != v191)
  {
    v192 = *(v271 + ++v191);
    if (v77 <= v192)
    {
      goto LABEL_190;
    }
  }

  v191 = v273;
LABEL_190:
  v193 = v191 < v273;
  if (v12 != v75)
  {
    goto LABEL_182;
  }

LABEL_191:
  if (v193)
  {
    v198 = a5;
    result = a6;
LABEL_193:
    v199 = 0;
    *v198 = 0;
    v200 = 16 * (v12 - v75);
    v201 = num_pels_log2_lookup[v254];
    if (!v75)
    {
LABEL_194:
      v202 = 0;
      v203 = 0;
LABEL_207:
      *v198 = v199 + v202;
      *result = v203 + v200;
      return result;
    }

LABEL_204:
    v211 = v240 >> (*(a4 + 624) - 5);
    v212 = (((v211 * v211) << (v201 + 10)) + (v75 >> 1)) / v75;
    if (v212 >= 0x3BFDF)
    {
      LODWORD(v212) = 245727;
    }

    v213 = (v212 >> 2) + 8;
    v214 = __clz(v213);
    v215 = (v213 >> (28 - v214)) & 7 | (8 * (28 - v214));
    v216 = (v212 - xsq_iq_q10[v215]) << 10 >> (30 - v214);
    v202 = (((v216 * rate_tab_q10[v215 + 1] + (1024 - v216) * rate_tab_q10[v215]) >> 10 << v201) + 1) >> 1;
    v203 = ((((v216 * dist_tab_q10[v215 + 1] + (1024 - v216) * dist_tab_q10[v215]) >> 10) * v75 + 512) >> 6) & 0xFFFFFFFFFFFFFFF0;
    goto LABEL_207;
  }

LABEL_208:
  v217 = 1;
  *v92 = 1;
  *a5 = 0;
  *a6 = 16 * v12;
  v218 = *(a4 + 148);
  v219 = 2 * *(a4 + 144);
  v220 = txsize_to_bsize[uv_txsize_lookup[16 * ***(a4 + 448) + 4 * *(**(a4 + 448) + 2) + v219 + v218]];
  v221 = &ss_size_lookup[4 * v254];
  v222 = v221[v219 + v218];
  LOBYTE(v218) = b_width_log2_lookup[v220];
  v223 = b_height_log2_lookup[v220];
  v224 = *(a4 + 256);
  v225 = *v224;
  v226 = v223 - (b_width_log2_lookup[v222] + b_height_log2_lookup[v222]) + v218 + 6;
  v227 = (v224[1] * v224[1]) >> v226;
  build_inter_predictors_for_planes(a4, a2, a9, a10, 1, 1);
  *a12 = 1;
  result = (*&a1[16 * v222 + 185124])(*(a3 + 16520), *(a3 + 16528), *(a4 + 152), *(a4 + 160), v278);
  v228 = result < v227 || result == 0;
  if (v228 && (LODWORD(v278[0]) == result || LODWORD(v278[0]) - result < (v225 * v225) >> v226))
  {
    v230 = *(a4 + 284);
    v231 = 2 * *(a4 + 280);
    v232 = txsize_to_bsize[uv_txsize_lookup[16 * ***(a4 + 448) + 4 * *(**(a4 + 448) + 2) + v231 + v230]];
    v233 = v221[v231 + v230];
    v234 = *(a4 + 392);
    v235 = *v234;
    v236 = b_height_log2_lookup[v232] - (b_width_log2_lookup[v233] + b_height_log2_lookup[v233]) + b_width_log2_lookup[v232] + 6;
    v237 = (v234[1] * v234[1]) >> v236;
    build_inter_predictors_for_planes(a4, a2, a9, a10, 2, 2);
    a12[1] = 1;
    result = (*&a1[16 * v233 + 185124])(*(a3 + 24824), *v249, *(a4 + 288), *(a4 + 296), v278 + 4);
    v229 = (result < v237 || result == 0) && (DWORD1(v278[0]) == result || DWORD1(v278[0]) - result < (v235 * v235) >> v236);
  }

  else
  {
    v229 = 0;
    v217 = 0;
  }

  if ((v217 & v229) != 0)
  {
    *a11 = 1;
  }

  return result;
}

uint64_t model_rd_for_sb_y(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, unint64_t *a6, _DWORD *a7, unsigned int *a8, int a9)
{
  v16 = (a1 + 190148);
  v67 = 0;
  v65 = *(a3 + 8280);
  v17 = *(a3 + 8288) >> 6;
  v18 = *(a4 + 120);
  v63 = *v18;
  v64 = v18[1];
  v19 = a2;
  result = (*(a1 + (a2 << 6) + 740496))(*(a3 + 8216), *(a3 + 8224), *(a4 + 16), *(a4 + 24), &v67);
  *a7 = result;
  v21 = v67;
  *a8 = v67;
  v22 = *v16;
  if (*v16 == 3)
  {
    if (a9)
    {
      v23 = v17;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23 > result || *(a3 + 25688) == 0;
    v25 = !v24;
    v26 = *(a1 + 173024);
    if (v26 != 4)
    {
LABEL_12:
      v27 = max_txsize_lookup[v19];
      if (v27 >= tx_mode_to_biggest_tx_size[v26])
      {
        v27 = tx_mode_to_biggest_tx_size[v26];
      }

      goto LABEL_44;
    }
  }

  else
  {
    v25 = 1;
    v26 = *(a1 + 173024);
    if (v26 != 4)
    {
      goto LABEL_12;
    }
  }

  if (v21 <= 4 * result)
  {
    v28 = 1;
    v24 = v22 == 3;
    v30 = v25 ^ 1;
    if (!v24)
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v28 = max_txsize_lookup[v19];
    if (v28 >= 3)
    {
      v28 = 3;
    }

    v24 = v22 == 3;
    v29 = v25 ^ 1;
    if (!v24)
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_26;
    }
  }

  if ((*(**(a4 + 448) + 4) - 3) > 0xFFFFFFFD)
  {
    v27 = 1;
    goto LABEL_33;
  }

LABEL_26:
  if (v28 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v28;
  }

  if (v25)
  {
    v27 = v31;
  }

  else
  {
    v27 = v28;
  }

LABEL_33:
  if (v16[58] == 1 && v27 == 1 && a2 < 7 && result >> 5 > v17)
  {
    v27 = 0;
  }

LABEL_44:
  *(**(a4 + 448) + 2) = v27;
  v35 = txsize_to_bsize[v27];
  v36 = v65 >> 6;
  v37 = b_width_log2_lookup[v19] - b_width_log2_lookup[v35] - b_height_log2_lookup[v35] + b_height_log2_lookup[v19];
  v38 = v21 >> v37;
  v39 = result >> v37;
  *(a3 + 82228) = 0;
  if (result && v17 <= v39)
  {
    if (v36 > v38 - v39 || v67 == result)
    {
      v41 = 0;
      *a5 = 0;
      v42 = 16 * (v21 - result);
      v43 = num_pels_log2_lookup[v19];
LABEL_63:
      v48 = v64 >> (*(a4 + 624) - 5);
      v49 = (((v48 * v48) << (v43 + 10)) + (result >> 1)) / result;
      if (v49 >= 0x3BFDF)
      {
        LODWORD(v49) = 245727;
      }

      v50 = (v49 >> 2) + 8;
      v51 = __clz(v50);
      v52 = (v50 >> (28 - v51)) & 7 | (8 * (28 - v51));
      v53 = (v49 - xsq_iq_q10[v52]) << 10 >> (30 - v51);
      v54 = (((v53 * rate_tab_q10[v52 + 1] + (1024 - v53) * rate_tab_q10[v52]) >> 10 << v43) + 1) >> 1;
      v55 = ((((v53 * dist_tab_q10[v52 + 1] + (1024 - v53) * dist_tab_q10[v52]) >> 10) * result + 512) >> 6) & 0xFFFFFFFFFFFFFFF0;
      goto LABEL_70;
    }

LABEL_61:
    v43 = num_pels_log2_lookup[v19];
    v47 = v21 - result;
    if (v47)
    {
      v56 = v63 >> (*(a4 + 624) - 5);
      v57 = (((v56 * v56) << (v43 + 10)) + (v47 >> 1)) / v47;
      if (v57 >= 0x3BFDF)
      {
        LODWORD(v57) = 245727;
      }

      v58 = (v57 >> 2) + 8;
      v59 = __clz(v58);
      v60 = (v58 >> (28 - v59)) & 7 | (8 * (28 - v59));
      v61 = (v57 - xsq_iq_q10[v60]) << 10 >> (30 - v59);
      v62 = ((v61 * dist_tab_q10[v60 + 1] + (1024 - v61) * dist_tab_q10[v60]) >> 10) * v47 + 512;
      v41 = (((v61 * rate_tab_q10[v60 + 1] + (1024 - v61) * rate_tab_q10[v60]) >> 10 << v43) + 1) >> 2;
      v42 = (v62 >> 7) & 0xFFFFFFFFFFFFFFF8;
      *a5 = v41;
      if (result)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v41 = 0;
      v42 = 0;
      *a5 = 0;
      if (result)
      {
        goto LABEL_63;
      }
    }

    v54 = 0;
    v55 = 0;
LABEL_70:
    *a5 = v41 + v54;
    v46 = v55 + v42;
    goto LABEL_71;
  }

  v44 = v36 > v38 - v39 || v67 == result;
  if (v44)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  *(a3 + 82228) = v45;
  if (!v44)
  {
    goto LABEL_61;
  }

  *a5 = 0;
  v46 = 16 * v21;
LABEL_71:
  *a6 = v46;
  return result;
}

void block_yrd(_DWORD *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t *a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  v126 = num_4x4_blocks_wide_lookup[a6];
  v10 = num_4x4_blocks_high_lookup[a6];
  if (a1[185032] && a1[43243] && (a6 < 9 || a1[188635] && a1[188637] >= 1))
  {
    if (!a8)
    {
      model_rd_for_sb_y(a1, a6, a2, a2 + 24912, a3, (a3 + 8), v129, &v128, a9);
    }

    *a5 = 0x7FFFFFFFLL;
    *a4 = 0;
  }

  else
  {
    v11 = 2 * a7;
    v110 = ((*(a2 + 25412) >> 31) & (*(a2 + 25412) >> 5)) + v10;
    v12 = 4 * num_4x4_blocks_wide_lookup[a6];
    v13 = (4 * v10);
    v14 = (*(a2 + 25404) >> 31) & (*(a2 + 25404) >> 5);
    v15 = *(a2 + 8216);
    v16 = *(a2 + 8224);
    v17 = *(a2 + 24928);
    v18 = *(a2 + 24936);
    v99 = a5;
    if ((*(*(a2 + 25440) + 152) & 8) != 0)
    {
      v20 = 2 * v15;
      v21 = 2 * v17;
      if (a6 - 5 > 7)
      {
        if (a6 <= 1)
        {
          v32 = a2;
          v33 = 2 * v16;
          do
          {
            v34 = 0;
            v35 = 0;
            do
            {
              *(v32 + v34) = vsub_s16(*(v20 + v34), *(v21 + v34));
              v35 += 4;
              v34 += 8;
            }

            while (v35 < v12);
            v32 += 8 * v126;
            v21 += 2 * v18;
            v20 += v33;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
        }

        else
        {
          v28 = a2;
          v29 = 2 * v16;
          do
          {
            v30 = 0;
            v31 = 0;
            do
            {
              *(v28 + v30) = vsubq_s16(*(v20 + v30), *(v21 + v30));
              v31 += 8;
              v30 += 16;
            }

            while (v31 < v12);
            v28 += 8 * v126;
            v21 += 2 * v18;
            v20 += v29;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
        }
      }

      else
      {
        v22 = 2 * v16;
        v23 = a2;
        do
        {
          v24 = 0;
          v25 = 16;
          do
          {
            v26 = vsubq_s16(*(v20 + v25), *(v21 + v25));
            v27 = (v23 + v25);
            v27[-1] = vsubq_s16(*(v20 + v25 - 16), *(v21 + v25 - 16));
            *v27 = v26;
            v24 += 16;
            v25 += 32;
          }

          while (v24 < v12);
          v20 += v22;
          v21 += 2 * v18;
          v23 += 8 * v126;
          LODWORD(v13) = v13 - 1;
        }

        while (v13);
      }
    }

    else
    {
      v19 = a7;
      vpx_subtract_block_neon(v13, 4 * num_4x4_blocks_wide_lookup[a6], a2, 4 * num_4x4_blocks_wide_lookup[a6], v15, v16, v17, v18);
      a7 = v19;
    }

    v36 = v126 + v14;
    v37 = (1 << v11);
    v38 = (1 << a7);
    *a4 = 1;
    v121 = v38;
    v122 = v37;
    v98 = v11;
    if (v110 < 1)
    {
      v42 = 0;
    }

    else
    {
      v117 = &vp9_default_scan_orders + 3 * a7;
      v118 = v126 + v14;
      v119 = 4 * v126;
      if (a7 == 2)
      {
        v70 = 0;
        v71 = 0;
        LODWORD(v72) = 0;
        v42 = 0;
        v102 = 16 * v38 * v126;
        v73 = 4 * v38;
        v74 = 2 * v37;
        v75 = v37 << 6;
        v112 = 4 * v38;
        do
        {
          v105 = v71;
          v76 = 0;
          v72 = v72;
          v77 = 2 * v72;
          v78 = v72 << 6;
          v108 = v70;
          do
          {
            if (v76 < v36)
            {
              v124 = v42;
              v79 = *(a2 + 8200);
              v80 = *(a2 + 0x2000);
              v115 = *(a2 + 24912);
              v81 = *(a2 + 8208);
              vpx_hadamard_16x16_neon((a2 + 2 * v70), v119, v79 + v78);
              v82 = (v80 + v78);
              v36 = v118;
              vp9_quantize_fp_neon((v79 + v78), 256, a2, v82, (v115 + v78), *(a2 + 25032), (v81 + v77), v117);
              v38 = v121;
              v37 = v122;
              if (*(v81 + 2 * v72))
              {
                v83 = 0;
              }

              else
              {
                v83 = *a4 & 1;
              }

              *a4 = v83;
              v73 = v112;
              v42 = v124 + 1;
            }

            v72 += v37;
            v76 += v38;
            v70 += v73;
            v77 += v74;
            v78 += v75;
          }

          while (v76 < v126);
          v71 = v105 + v38;
          v70 = v108 + v102;
        }

        while (v105 + v38 < v110);
      }

      else if (a7 == 1)
      {
        v39 = 0;
        v40 = 0;
        LODWORD(v41) = 0;
        v42 = 0;
        v101 = 16 * v38 * v126;
        v43 = 4 * v38;
        v44 = 2 * v37;
        v45 = v37 << 6;
        v111 = 4 * v38;
        do
        {
          v104 = v40;
          v46 = 0;
          v41 = v41;
          v47 = 2 * v41;
          v48 = v41 << 6;
          v107 = v39;
          do
          {
            if (v46 < v36)
            {
              v49 = *(a2 + 8200);
              v114 = *(a2 + 0x2000);
              v50 = *(a2 + 24912);
              v123 = v42;
              v51 = *(a2 + 8208);
              vpx_hadamard_8x8_neon((a2 + 2 * v39), v119, (v49 + v48));
              v52 = (v50 + v48);
              v36 = v118;
              vp9_quantize_fp_neon((v49 + v48), 64, a2, (v114 + v48), v52, *(a2 + 25032), (v51 + v47), v117);
              v38 = v121;
              v37 = v122;
              if (*(v51 + 2 * v41))
              {
                v53 = 0;
              }

              else
              {
                v53 = *a4 & 1;
              }

              *a4 = v53;
              v43 = v111;
              v42 = v123 + 1;
            }

            v41 += v37;
            v46 += v38;
            v39 += v43;
            v47 += v44;
            v48 += v45;
          }

          while (v46 < v126);
          v40 = v104 + v38;
          v39 = v107 + v101;
        }

        while (v104 + v38 < v110);
      }

      else
      {
        v84 = 0;
        v85 = 0;
        LODWORD(v86) = 0;
        v42 = 0;
        v103 = 16 * v38 * v126;
        v87 = 4 * v38;
        v88 = 2 * v37;
        v89 = v37 << 6;
        v113 = 4 * v38;
        do
        {
          v106 = v85;
          v90 = 0;
          v86 = v86;
          v91 = 2 * v86;
          v92 = v86 << 6;
          v109 = v84;
          do
          {
            if (v90 < v36)
            {
              v93 = *(a2 + 8200);
              v116 = *(a2 + 0x2000);
              v94 = *(a2 + 24912);
              v125 = v42;
              v95 = *(a2 + 8208);
              (*(a2 + 82408))(a2 + 2 * v84, v93 + v92, v119);
              v96 = (v94 + v92);
              v36 = v118;
              vp9_quantize_fp_neon((v93 + v92), 16, a2, (v116 + v92), v96, *(a2 + 25032), (v95 + v91), v117);
              v38 = v121;
              v37 = v122;
              if (*(v95 + 2 * v86))
              {
                v97 = 0;
              }

              else
              {
                v97 = *a4 & 1;
              }

              *a4 = v97;
              v87 = v113;
              v42 = v125 + 1;
            }

            v86 += v37;
            v90 += v38;
            v84 += v87;
            v91 += v88;
            v92 += v89;
          }

          while (v90 < v126);
          v85 = v106 + v38;
          v84 = v109 + v103;
        }

        while (v106 + v38 < v110);
      }
    }

    *a3 = 0;
    if (*v99 == 0x7FFFFFFFFFFFFFFFLL || (v54 = *v99 << 6 >> 2, *v99 = v54, !*a4))
    {
      *(a3 + 8) = 0;
      if (v110 < 1)
      {
        v69 = 0;
      }

      else
      {
        v55 = v42;
        LODWORD(v56) = 0;
        v57 = 0;
        do
        {
          v58 = 0;
          v56 = v56;
          do
          {
            if (v58 < v36)
            {
              v60 = *(a2 + 8200);
              v61 = v56 << 6;
              v62 = *(a2 + 24912);
              v63 = *(a2 + 8208);
              v64 = *(v63 + 2 * v56);
              if (*(v63 + 2 * v56))
              {
                v65 = (*(a2 + 0x2000) + v61);
                if (v64 == 1)
                {
                  v59 = v65->i32[0];
                  if (v59 < 0)
                  {
                    v59 = -v59;
                  }
                }

                else
                {
                  v66 = 0uLL;
                  v67 = 0uLL;
                  v68 = 16 << v98;
                  do
                  {
                    v66 = vpadalq_s16(v66, vabsq_s16(vuzp1q_s16(*v65, v65[1])));
                    v67 = vpadalq_s16(v67, vabsq_s16(vuzp1q_s16(v65[2], v65[3])));
                    v65 += 4;
                    v68 -= 16;
                  }

                  while (v68);
                  v59 = vaddvq_s32(vaddq_s32(v67, v66));
                }

                *a3 += v59;
              }

              *(a3 + 8) += vp9_block_error_fp(v60 + v61, v62 + v61, (16 << v98)) >> 2;
              LODWORD(v38) = v121;
              v37 = v122;
            }

            v56 += v37;
            v58 += v38;
          }

          while (v58 < v126);
          v57 += v38;
        }

        while (v57 < v110);
        v69 = *a3 << 11;
        v42 = v55;
      }

      *a3 = v69 + (v42 << 9);
    }

    else
    {
      *(a3 + 8) = v54;
    }
  }
}

uint64_t model_rd_for_sb_uv(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, int *a6, int *a7, int a8, int a9)
{
  v9 = *a6;
  v10 = *a7;
  *a5 = 0;
  *(a5 + 1) = 0;
  if (a8 <= a9)
  {
    v55 = 0;
    v53 = a2;
    v52 = result + (a2 << 6);
    v15 = 8304 * a8;
    v16 = a9 - a8 + 1;
    v17 = (a4 + 136 * a8 + 120);
    v18 = a8 + 82351;
    do
    {
      if (!*(a3 + v18))
      {
        goto LABEL_13;
      }

      v54 = v10;
      v26 = a3;
      _X9 = a3 + v15 + 16520;
      v28 = (*v17)[1];
      v29 = **v17;
      __asm { PRFM            #0, [X9] }

      result = (*(v52 + 740496))(*(a3 + v15 + 8216), *(a3 + v15 + 8224), *(v17 - 13), *(v17 - 24), &v55);
      v35 = result;
      v36 = num_pels_log2_lookup[v53];
      v37 = *(a4 + 624) - 5;
      if (v55 == result)
      {
        v38 = 0;
        v39 = 0;
        v40 = *a5;
        v41 = *(a5 + 1);
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v42 = v55 - result;
        v43 = ((((v29 >> v37) * (v29 >> v37)) << (v36 + 10)) + (v42 >> 1)) / v42;
        if (v43 >= 0x3BFDF)
        {
          LODWORD(v43) = 245727;
        }

        v44 = (v43 >> 2) + 8;
        v45 = __clz(v44);
        v46 = (v44 >> (28 - v45)) & 7 | (8 * (28 - v45));
        v47 = (v43 - xsq_iq_q10[v46]) << 10 >> (30 - v45);
        v48 = (v47 * rate_tab_q10[v46 + 1] + (1024 - v47) * rate_tab_q10[v46]) >> 10;
        result = dist_tab_q10[v46 + 1];
        v49 = ((v47 * result + (1024 - v47) * dist_tab_q10[v46]) >> 10) * v42 + 512;
        v38 = ((v48 << v36) + 1) >> 2;
        v39 = (v49 >> 7) & 0xFFFFFFFFFFFFFFF8;
        v40 = *a5;
        v41 = *(a5 + 1);
        if (v35)
        {
LABEL_9:
          v19 = ((((v28 >> v37) * (v28 >> v37)) << (v36 + 10)) + (v35 >> 1)) / v35;
          if (v19 >= 0x3BFDF)
          {
            LODWORD(v19) = 245727;
          }

          v20 = (v19 >> 2) + 8;
          v21 = __clz(v20);
          v22 = (v20 >> (28 - v21)) & 7 | (8 * (28 - v21));
          v23 = (v19 - xsq_iq_q10[v22]) << 10 >> (30 - v21);
          result = (1024 - v23);
          v24 = (((v23 * rate_tab_q10[v22 + 1] + result * rate_tab_q10[v22]) >> 10 << v36) + 1) >> 1;
          v25 = ((((v23 * dist_tab_q10[v22 + 1] + result * dist_tab_q10[v22]) >> 10) * v35 + 512) >> 6) & 0xFFFFFFFFFFFFFFF0;
          goto LABEL_12;
        }
      }

      v24 = 0;
      v25 = 0;
LABEL_12:
      a3 = v26;
      v9 += v35;
      v10 = v54 + v55;
      *a5 = v24 + v40 + v38;
      *(a5 + 1) = v25 + v41 + v39;
LABEL_13:
      v15 += 8304;
      v17 += 17;
      ++v18;
      --v16;
    }

    while (v16);
  }

  v11 = -1;
  if (v9 >= 0xFFFFFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = v9;
  }

  *a6 = v12;
  if (v10 < 0xFFFFFFFF)
  {
    v11 = v10;
  }

  *a7 = v11;
  return result;
}

_DWORD *vp9_NEWMV_diff_bias(_DWORD *result, uint64_t a2, int a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a3 != 13)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 464);
  if (v10)
  {
    v11 = *(v10 + 12);
    v12 = v11 != -2147450880;
    v13 = v11;
    LODWORD(v10) = v11 >> 16;
    v14 = *(a2 + 456);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_8:
    v16 = 0;
    v17 = 0;
LABEL_9:
    if (!v16)
    {
      LODWORD(v14) = 0;
      v17 = 0;
    }

    v18 = !v12;
    if (v12)
    {
      v19 = v13;
    }

    else
    {
      v19 = v14;
    }

    if (v18)
    {
      LODWORD(v10) = v17;
    }

    if ((v19 - a6 - 49) < 0xFFFFFF9F)
    {
LABEL_26:
      v20 = *(a4 + 16);
      v21 = v20 + (v20 >> 1);
      v22 = 2 * v20;
      if (a5 <= 9)
      {
        v22 = v21;
      }

      *(a4 + 16) = v22;
      if (!*result)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v12 = 0;
  v13 = 0;
  v14 = *(a2 + 456);
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = *(v14 + 12);
  v16 = v15 != -2147450880;
  LODWORD(v14) = v15;
  v17 = v15 >> 16;
  if (!v12 || !v16)
  {
    goto LABEL_9;
  }

  LODWORD(v10) = (v10 + v17 + 1) >> 1;
  if ((((v13 + v15 + 1) >> 1) - a6 - 49) < 0xFFFFFF9F)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v10 - a7 - 49) <= 0xFFFFFF9E)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (!*result)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((a7 + 7) <= 0xE && (a6 + 7) <= 0xE && a8 && a5 >= 9 && result[1] > 1u)
  {
    goto LABEL_35;
  }

LABEL_29:
  if ((a7 + 15) <= 0x1E && (a6 + 15) <= 0x1E && a8 && a5 >= 6 && a9 && !a10)
  {
LABEL_35:
    *(a4 + 16) = (*(a4 + 16) & 0xFFFFFFFFFFFFFFF8) - (*(a4 + 16) >> 3);
  }

  return result;
}

uint64_t encode_breakout_test(uint64_t result, void *a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, uint64_t a10, _DWORD *a11, void *a12, int a13, int a14)
{
  v14 = (a2 + 3104);
  v15 = *a2[3170];
  v16 = ss_size_lookup[4 * a3 + 2 * *(a2 + 6264) + *(a2 + 6265)];
  if (a6 != 2 || !*(result + 754540))
  {
    if (*(v15 + 12) - 65 < 0xFF7F || *(v15 + 14) - 65 < 0xFF7F || (v17 = *(a2 + 6727), v17 < 1))
    {
      v28 = 0;
      v30 = 0;
    }

    else
    {
      v18 = 16 * v17;
      if (v18 >= 0x8CA0)
      {
        v19 = 36000;
      }

      else
      {
        v19 = v18;
      }

      v20 = 2 * *(a2 + 6384);
      v21 = v20 - 16;
      v22 = a2[3129];
      v23 = (v22[1] * v22[1]) >> 3;
      v24 = *(a2[3180] + 152);
      v25 = v20 > 16;
      v26 = 1 << (v20 - 17);
      if ((v25 & (v24 >> 3)) != 0)
      {
        v23 = (v23 + v26) >> v21;
      }

      v27 = (*v22 * *v22) >> 6;
      v28 = (v27 + v26) >> v21;
      if ((v25 & (v24 >> 3)) == 0)
      {
        v28 = v27;
      }

      if (v23 >= 36000)
      {
        v29 = 36000;
      }

      else
      {
        v29 = v23;
      }

      if (v23 < v19)
      {
        v29 = v19;
      }

      v30 = v29 >> (8 - (b_width_log2_lookup[a3] + b_height_log2_lookup[a3]));
    }

    if (v30 >= a8 && a9 - a8 <= v28)
    {
      v40 = 0;
      if (*(a2 + 82354))
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      if (*(a2 + 82354))
      {
        v33 = 0;
      }

      else
      {
        v33 = v28;
      }

      v34 = a2;
      if (!a13 || !a14)
      {
        v35 = a10 + 48 * a6;
        *(a2 + 3135) = *(v35 + 16);
        *(a2 + 1576) = *(v35 + 32);
        v36 = result;
        build_inter_predictors_for_planes((a2 + 3114), a3, a4, a5, 1, 2);
        a2 = v34;
        result = v36;
      }

      v37 = result;
      v38 = result + (v16 << 6);
      result = (*(v38 + 740496))(a2[2065], *(a2 + 4132), a2[3133], v14[60], &v40 + 4);
      if (v32 >= 4 * result && HIDWORD(v40) - result <= v33)
      {
        result = (*(v38 + 740496))(v34[3103], *v14, v34[3150], v14[94], &v40);
        if (v32 >= 4 * result && v40 - result <= v33)
        {
          v14[518] = 1;
          *a11 = *(v37 + 16 * *(v34[3196] + a6 + 32) + 4 * a7 + 928232);
          *a12 = (16 * a9);
        }
      }
    }
  }

  return result;
}

__n128 vp9_pick_inter_mode_sub8x8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v10 = a1;
  v207[8] = *MEMORY[0x277D85DE8];
  v11 = (a2 + 24936);
  v12 = a1 + 739528;
  v13 = (a1 + 194512);
  v174 = **(a2 + 25360);
  v149 = *(a2 + 25568);
  v14 = a6;
  v15 = *(a1 + 739616);
  if (v15)
  {
    v15 = *(a2 + 25600) < 115;
  }

  v169 = (a1 + 172992);
  v148 = *(v174 + 4);
  v16 = v202;
  v160 = num_4x4_blocks_wide_lookup[a6];
  v155 = num_4x4_blocks_high_lookup[a6];
  *(a2 + 82216) = v15;
  *(a7 + 700) = 0;
  v17 = a1 + 172048;
  v159 = &v149[4];
  v18 = *v13;
  if (v18 == -1 || (v19 = *(v17 + 4 * v18), v19 == -1))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a1 + 189944) + 224 * v19 + 88;
  }

  *(a2 + 25712) = 0x7FFFFFFF;
  v21 = 2;
  v162 = a3;
  if ((*v12 & 1) != 0 && v20)
  {
    v23 = a6;
    vp9_setup_pred_block(a2 + 24912, v202, v20, a3, a4, a1 + 172128, a1 + 172128);
    find_mv_refs_idx(a1 + 171696, a2 + 24912, ***(a2 + 25360), 1, v149 + 1, -1, a3, a4, v159);
    vp9_find_best_ref_mvs((a2 + 24912), *v169, &v149[1], &v200, v201);
    v14 = v23;
    v10 = a1;
    v7 = a7;
    v21 = 0;
  }

  v24 = v13[1];
  if (v24 == -1 || (v25 = *(v17 + 4 * v24), v25 == -1))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v10 + 189944) + 224 * v25 + 88;
  }

  v27 = &v203;
  v28 = &v204;
  v153 = v10 + 172112;
  v11[195] = 0x7FFFFFFF;
  v145 = v7;
  if ((*v12 & 2) != 0 && v26)
  {
    v150 = v21;
    v29 = a4;
    v30 = v14;
    vp9_setup_pred_block(a2 + 24912, v205, v26, v162, a4, v10 + 172304, v10 + 172304);
    find_mv_refs_idx(a1 + 171696, a2 + 24912, ***(a2 + 25360), 2, v149 + 2, -1, v162, a4, v159);
    v31 = v169;
    vp9_find_best_ref_mvs((a2 + 24912), *v169, &v149[2], &v200, v201);
    v14 = v30;
    v10 = a1;
  }

  else
  {
    v150 = v21 | 4;
    v29 = a4;
    v31 = v169;
  }

  v32 = 0;
  *v174 = a6;
  *(v174 + 2) = 0;
  *(v174 + 6) = 0;
  *(v174 + 8) = -255;
  v33 = *(v31 + 260);
  if (v33 == 4)
  {
    LOBYTE(v33) = 0;
  }

  v147 = v10 + 176552;
  v34 = (a2 + 24944);
  *(v174 + 7) = v33;
  v172 = v10 + 928272;
  v180 = (v11 + 228);
  v170 = a2 + 25724;
  v167 = v10 + (v14 << 6);
  v35 = v160;
  v157 = v29 << 7;
  v36 = v162;
  v158 = a6 & 0xFD;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  v38 = 255;
  v146 = v10 + 8 * v148;
  v39 = v29;
  v40 = 1;
  v41 = v150;
  do
  {
    v154 = v32;
    if (((v41 >> v40) & 1) == 0)
    {
      v42 = v153 + 176 * v40;
      v45 = *(v42 - 160);
      v44 = v42 - 160;
      v43 = v45;
      if (v45 == -1 || (v46 = *(v44 + 4), v46 == -1) || v43 == 0x4000 && v46 == 0x4000)
      {
        if (!*(v31 + 3480) || (*(v147 + 4 * v148) & 4) == 0 || *(v146 + 176492) == v40)
        {
          v151 = v38;
          v152 = v37;
          v47 = 0;
          v48 = 0;
          *(v174 + 8) = v40;
          *(a2 + 25424) = v153 + 176 * (v40 - 1);
          v11[492] = 0;
          *(a2 + 25432) = v153;
          *v34 = *v16;
          *(a2 + 25080) = *v27;
          *(a2 + 25216) = *v28;
          v49 = &v149[v40];
          v168 = a2 + 25692 + 4 * v40;
          v163 = &v201[12 * v40 - 1];
          v176 = v40;
          while (1)
          {
            v50 = 0;
            v164 = 2 * v47;
            v156 = v47;
            v175 = (v162 << 7) + (v47 << 6);
            do
            {
              v165 = v48;
              v166 = v50;
              v51 = v50 + v164;
              v189 = 0;
              v190 = 0;
              v191 = 0;
              v188 = 0;
              v52 = *(a2 + 8216);
              v186 = *(a2 + 24928);
              v187 = v52;
              v53 = v34[1];
              v193 = *v34;
              v194 = v53;
              v54 = (v50 + v164) >> 1;
              v55 = (v50 + v164) & 1;
              *(a2 + 8216) += 4 * (v55 + *(a2 + 8224) * v54);
              *(a2 + 24928) += 4 * (v55 + *v11 * v54);
              *(a2 + 24944) += 4 * (v55 + v11[4] * v54);
              v199 = -2147450880;
              v56 = **(a2 + 25360);
              v57.n128_u64[0] = find_mv_refs_idx(a1 + 171696, a2 + 24912, *v56, *(v56 + 8), v192, v50 + v164, v36, v39, v159);
              v198 = 0;
              v197 = 0;
              if ((v51 - 1) < 2)
              {
                v58 = *(v56 + 24);
                v196 = v58;
                v60 = v192[0].i32[0];
                v171 = v58;
                if (v58 == v192[0].i32[0])
                {
                  v60 = v192[0].i32[1];
                  goto LABEL_48;
                }

                goto LABEL_55;
              }

              if (!v51)
              {
                v60 = v192[0].i32[1];
                v171 = v192[0].i16[0];
                v196 = v192[0].i32[0];
                goto LABEL_55;
              }

              if (v51 == 3)
              {
                v58 = *(v56 + 36);
                v59 = *(v56 + 24);
                v60 = v192[0].i32[1];
                v196 = *(v56 + 48);
                v171 = v196;
                if (v196 == v58)
                {
                  if (v58 == v59)
                  {
                    if (v58 != v192[0].i32[0])
                    {
                      v60 = v192[0].i32[0];
                      goto LABEL_55;
                    }

LABEL_48:
                    v61 = v58 == v60;
                    v62 = v166;
                    if (v61)
                    {
                      goto LABEL_57;
                    }

LABEL_56:
                    v197 = v60;
                    goto LABEL_57;
                  }

                  v60 = v59;
                }

                else
                {
                  v60 = v58;
                }

LABEL_55:
                v62 = v166;
                goto LABEL_56;
              }

              v171 = v196;
              v62 = v166;
LABEL_57:
              v63 = 0;
              v173 = &v163[3 * v51];
              v64 = 0x7FFFFFFFFFFFFFFFLL;
              v65 = v172;
              v177 = v157 + (v62 << 6);
              while (1)
              {
                *(**(a2 + 25360) + 12 * v51 + 24) = v195[v63 + 10];
                if (v63 != 3)
                {
                  v84 = *(v65 + 16 * *(*(a2 + 25568) + v40 + 32));
                  v85 = *(a2 + 24944);
                  if ((*(*(a2 + 25440) + 152) & 8) != 0)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_86;
                }

                v66 = *(v12 + 48);
                v183 = 0;
                v182 = *v180;
                v181 = 0;
                v67 = v171;
                v68 = &v196 + 1;
                if (v51)
                {
                  v69 = **(a2 + 25360);
                  v67 = *(v69 + 24);
                  v68 = (v69 + 26);
                }

                v184 = v67 >> 3;
                v185 = *v68 >> 3;
                v70 = v49[1];
                v71 = v70 >> 3;
                v72 = (v70 & 7) != 0 ? v71 + 1 : v70 >> 3;
                v73 = v72 - 1023;
                v74 = *v49;
                v75 = v74 >> 3;
                v76 = (v74 & 7) != 0 ? v75 + 1 : v74 >> 3;
                v77 = v76 - 1023;
                v78 = v73 <= -2047 ? -2047 : v73;
                v79 = v77 <= -2047 ? -2047 : v77;
                v80 = v71 >= 1023 ? 1023 : v71;
                v81 = v75 >= 1023 ? 1023 : v75;
                if (*v180 >= v78)
                {
                  v82 = v80 + 1023;
                  if (v11[229] <= v80 + 1023)
                  {
LABEL_82:
                    if (v11[230] >= v79)
                    {
                      goto LABEL_89;
                    }

                    goto LABEL_83;
                  }
                }

                else
                {
                  *v180 = v78;
                  v82 = v80 + 1023;
                  if (v11[229] <= v80 + 1023)
                  {
                    goto LABEL_82;
                  }
                }

                v11[229] = v82;
                if (v11[230] >= v79)
                {
LABEL_89:
                  v83 = v81 + 1023;
                  if (v11[231] <= v81 + 1023)
                  {
                    goto LABEL_91;
                  }

LABEL_90:
                  v11[231] = v83;
                  goto LABEL_91;
                }

LABEL_83:
                v11[230] = v79;
                v83 = v81 + 1023;
                if (v11[231] > v81 + 1023)
                {
                  goto LABEL_90;
                }

LABEL_91:
                if (*(v12 + 20))
                {
                  v91 = v192;
                }

                else
                {
                  v91 = 0;
                }

                vp9_full_pixel_search(a1, a2, a6, &v184, v66, *(v12 + 8), v11[173], v91, v49, &v183, 0x7FFFFFFF, 0);
                *v180 = v182;
                v184 = 8 * v183;
                v185 = 8 * HIWORD(v183);
                v92 = *(a2 + 25776);
                v93 = *v49;
                v94 = v49[1];
                v95 = (8 * HIWORD(v183)) != v94;
                v96 = 2;
                if ((8 * HIWORD(v183)) != v94)
                {
                  v96 = 3;
                }

                if ((8 * v183) != v93)
                {
                  v95 = v96;
                }

                v84 = *(v172 + 16 * *(*(a2 + 25568) + v40 + 32) + 12) + ((108 * (*(*v92 + 4 * (8 * v183 - v93)) + *(v92[1] + 4 * (8 * HIWORD(v183) - v94)) + *(v170 + 4 * v95)) + 64) >> 7);
                if (v64 < (v11[175] * v84 + 256) >> 9)
                {
                  break;
                }

                if (*(v12 + 20))
                {
                  v97 = v192;
                }

                else
                {
                  v97 = 0;
                }

                (*(v12 + 768))(a2, &v183, v49, *v169, v11[171], v167 + 740472, *(v12 + 28), *(v12 + 24), v97, v170, v92, &v181, v168, 0, 0, *(v12 + 640));
                *(**(a2 + 25360) + 12 * v51 + 24) = v183;
                v85 = *(a2 + 24944);
                if ((*(*(a2 + 25440) + 152) & 8) != 0)
                {
LABEL_103:
                  v98 = **(a2 + 25360) + 12 * v51;
                  v99 = *(a2 + 25424);
                  v100 = (((v175 * *(v99 + 20)) >> 14) & 0xF) + ((*(v99 + 20) * (2 * *(v98 + 24))) >> 14);
                  LODWORD(v98) = (((v177 * *(v99 + 16)) >> 14) & 0xF) + ((*(v99 + 16) * (2 * *(v98 + 26))) >> 14);
                  v89 = 2 * v85 + 2 * ((v100 >> 4) * v11[4] + (v98 >> 4));
                  v90 = *(v99 + 32 * ((v98 & 0xF) != 0) + 16 * ((v100 & 0xF) != 0) + 112);
                  goto LABEL_104;
                }

LABEL_86:
                v86 = **(a2 + 25360) + 12 * v51;
                v87 = *(a2 + 25424);
                v88 = (((v175 * *(v87 + 20)) >> 14) & 0xF) + ((*(v87 + 20) * (2 * *(v86 + 24))) >> 14);
                LODWORD(v86) = (((v177 * *(v87 + 16)) >> 14) & 0xF) + ((*(v87 + 16) * (2 * *(v86 + 26))) >> 14);
                v89 = v85 + (v88 >> 4) * v11[4] + (v86 >> 4);
                v90 = *(v87 + 32 * ((v86 & 0xF) != 0) + 16 * ((v88 & 0xF) != 0) + 48);
LABEL_104:
                v90(v89, v57);
                model_rd_for_sb_y(a1, a6, a2, a2 + 24912, &v189, &v190, &v188 + 1, &v188, 0);
                v101 = v189 + v84;
                LODWORD(v189) = v189 + v84;
                v102 = (v190 << v11[174]) + ((v11[175] * v101 + 256) >> 9);
                v191 = v102;
                if (v102 < v64)
                {
                  *v173 = v63 + 10;
                  v173[1] = *(**(a2 + 25360) + 12 * v51 + 24);
                  v64 = v102;
                }

                v65 += 4;
                ++v63;
                v40 = v176;
                if (v63 == 4)
                {
                  goto LABEL_107;
                }
              }

              v40 = v176;
LABEL_107:
              *(a2 + 8216) = v187;
              v34 = (a2 + 24944);
              *(a2 + 24944) = v193;
              *(a2 + 24928) = v186;
              v103 = **(a2 + 25360) + 12 * v51;
              *(v103 + 28) = v173[2];
              *(v103 + 20) = *v173;
              if (a6 >= 2)
              {
                v104 = **(a2 + 25360) + 12 * v51;
                *(v104 + 32) = *(v104 + 20);
                *(v104 + 40) = *(v104 + 28);
              }

              v35 = v160;
              v39 = a4;
              v36 = v162;
              if ((a6 & 0xFD) != 0)
              {
                v105 = **(a2 + 25360) + 12 * v51;
                *(v105 + 44) = *(v105 + 20);
                *(v105 + 52) = *(v105 + 28);
              }

              v48 = v64 + v165;
              v50 = v166 + v160;
            }

            while ((v166 + v160) < 2);
            v47 = v156 + v155;
            if ((v156 + v155) >= 2)
            {
              v37 = v152;
              if (v48 >= v152)
              {
                v38 = v151;
              }

              else
              {
                v37 = v64 + v165;
                v38 = v40;
              }

              v31 = v169;
              break;
            }
          }
        }
      }

      v41 = v150;
    }

    v32 = 1;
    v27 = &v206;
    v16 = v205;
    v28 = v207;
    v40 = 2;
  }

  while ((v154 & 1) == 0);
  *(v174 + 2) = 0;
  *(v174 + 8) = v38;
  if (a6 < 2)
  {
    v106 = a5;
    v117 = 0;
    v118 = 0;
    if (v158)
    {
      v119 = &v201[12 * v38 - 1];
      do
      {
        v120 = 0;
        v121 = v117;
        do
        {
          v122 = **(a2 + 25360) + v121;
          v123 = *(v119 + v121);
          *(v122 + 20) = v123;
          v124 = *(v119 + v121 + 8);
          *(v122 + 28) = v124;
          v125 = **(a2 + 25360) + v121;
          *(v125 + 52) = v124;
          *(v125 + 44) = v123;
          v120 += v35;
          v121 += 12 * v35;
        }

        while (v120 < 2);
        v118 += v155;
        v117 += 24 * v155;
      }

      while (v118 < 2);
    }

    else
    {
      v133 = &v201[12 * v38 - 1];
      do
      {
        v134 = 0;
        v135 = v117;
        do
        {
          v136 = **(a2 + 25360) + v135;
          *(v136 + 20) = *(v133 + v135);
          *(v136 + 28) = *(v133 + v135 + 8);
          v134 += v35;
          v135 += 12 * v35;
        }

        while (v134 < 2);
        v118 += v155;
        v117 += 24 * v155;
      }

      while (v118 < 2);
    }
  }

  else
  {
    v106 = a5;
    v107 = 0;
    v108 = 0;
    if (v158)
    {
      v109 = &v201[12 * v38 - 1];
      do
      {
        v110 = 0;
        v111 = v107;
        do
        {
          v112 = **(a2 + 25360) + v111;
          v113 = *(v109 + v111);
          *(v112 + 20) = v113;
          v114 = *(v109 + v111 + 8);
          *(v112 + 28) = v114;
          v115 = **(a2 + 25360) + v111;
          *(v115 + 40) = v114;
          *(v115 + 32) = v113;
          v116 = **(a2 + 25360) + v111;
          *(v116 + 52) = v114;
          *(v116 + 44) = v113;
          v110 += v35;
          v111 += 12 * v35;
        }

        while (v110 < 2);
        v108 += v155;
        v107 += 24 * v155;
      }

      while (v108 < 2);
    }

    else
    {
      v126 = &v201[12 * v38 - 1];
      do
      {
        v127 = 0;
        v128 = v107;
        do
        {
          v129 = **(a2 + 25360) + v128;
          v130 = *(v126 + v128);
          *(v129 + 20) = v130;
          v131 = *(v126 + v128 + 8);
          *(v129 + 28) = v131;
          v132 = **(a2 + 25360) + v128;
          *(v132 + 40) = v131;
          *(v132 + 32) = v130;
          v127 += v35;
          v128 += 12 * v35;
        }

        while (v127 < 2);
        v108 += v155;
        v107 += 24 * v155;
      }

      while (v108 < 2);
    }
  }

  v137 = **(a2 + 25360);
  *(v174 + 1) = *(v137 + 56);
  *v145 = *v137;
  v138 = *(v137 + 16);
  v139 = *(v137 + 32);
  v140 = *(v137 + 48);
  *(v145 + 64) = *(v137 + 64);
  *(v145 + 32) = v139;
  *(v145 + 48) = v140;
  *(v145 + 16) = v138;
  v141 = *(a2 + 25568);
  result = *v141;
  v143 = *(v141 + 16);
  *(v145 + 100) = *(v141 + 32);
  *(v145 + 84) = v143;
  *(v145 + 68) = result;
  *(v145 + 708) = 0;
  *(v145 + 696) = 0;
  *(v106 + 16) = v37;
  return result;
}

BOOL combined_motion_search(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, __int16 *a6, int *a7, uint64_t a8, int a9)
{
  v9 = a6;
  v10 = a2;
  v11 = a1;
  v101 = *MEMORY[0x277D85DE8];
  v12 = (a2 + 25620);
  v13 = a1 + 739536;
  v14 = a1 + 189944;
  v15 = **(a2 + 25360);
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v16 = *(a1 + 739576);
  v96 = 0;
  v17 = *(v15 + 8);
  v18 = *(*(a2 + 25568) + 8 * v17);
  v19 = *(a2 + 25624);
  v95 = v18;
  v92 = *(a2 + 25848);
  v20 = *(a1 + 4 * v17 + 194496);
  v21 = 194512;
  v22 = 194516;
  if (v17 != 2)
  {
    v22 = 194520;
  }

  if (v17 != 1)
  {
    v21 = v22;
  }

  v23 = *(a1 + v21);
  if (v23 != -1)
  {
    LODWORD(v23) = *(a1 + 4 * v23 + 172048);
  }

  v24 = v20 == -1 || v20 == v23;
  v25 = v24;
  v89 = v25;
  if (!v24)
  {
    v26 = *v14 + 224 * v20;
    v27 = *(a2 + 25080);
    v98 = *(a2 + 24944);
    v99 = v27;
    v100 = *(a2 + 25216);
    v28 = a3;
    v29 = v16;
    v30 = v19;
    v88 = v18;
    v31 = (a2 + 25620);
    v33 = v17;
    v36 = a1 + 739536;
    v37 = a1 + 189944;
    vp9_setup_pre_planes(a2 + 24912, 0, v26 + 88, a4, a5, 0);
    v14 = v37;
    v13 = v36;
    v9 = a6;
    v11 = a1;
    v17 = v33;
    v10 = a2;
    v12 = v31;
    v18 = v88;
    v19 = v30;
    v16 = v29;
    a3 = v28;
  }

  v93 = 0;
  v38 = v18 >> 19;
  if ((v18 & 0x70000) != 0)
  {
    v39 = v38 + 1;
  }

  else
  {
    v39 = v18 >> 19;
  }

  v40 = v39 - 1023;
  v41 = v18 >> 3;
  if ((v18 & 7) != 0)
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v18 >> 3;
  }

  v43 = v42 - 1023;
  if (v40 <= -2047)
  {
    v44 = -2047;
  }

  else
  {
    v44 = v40;
  }

  if (v43 <= -2047)
  {
    v45 = -2047;
  }

  else
  {
    v45 = v43;
  }

  if (v38 >= 1023)
  {
    v38 = 1023;
  }

  v46 = v38 + 1023;
  if (v41 >= 1023)
  {
    v41 = 1023;
  }

  v47 = v12[57];
  if (v47 < v44)
  {
    v12[57] = v44;
    v47 = v44;
    v48 = v12[58];
    if (v48 <= v46)
    {
LABEL_33:
      v49 = v41 + 1023;
      v50 = v12[59];
      if (v50 >= v45)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v48 = v12[58];
    if (v48 <= v46)
    {
      goto LABEL_33;
    }
  }

  v12[58] = v46;
  v48 = v46;
  v49 = v41 + 1023;
  v50 = v12[59];
  if (v50 >= v45)
  {
LABEL_34:
    v51 = v10 + 82356;
    v52 = v12[60];
    if (v52 <= v49)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12[59] = v45;
  v50 = v45;
  v51 = v10 + 82356;
  v52 = v12[60];
  if (v52 <= v49)
  {
LABEL_35:
    if (*(v14 + 112) < 6)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12[60] = v49;
  v52 = v49;
  if (*(v14 + 112) < 6)
  {
    goto LABEL_52;
  }

LABEL_41:
  if (*v51)
  {
    if (v47 <= -10)
    {
      v47 = -10;
    }

    if (v50 <= -10)
    {
      v50 = -10;
    }

    if (v48 >= 10)
    {
      v48 = 10;
    }

    v12[57] = v47;
    v12[58] = v48;
    if (v52 >= 10)
    {
      v53 = 10;
    }

    else
    {
      v53 = v52;
    }

    v12[59] = v50;
    v12[60] = v53;
  }

LABEL_52:
  v54 = v10 + 4 * v17;
  v55 = *(v54 + 25656);
  if (v55 > 1)
  {
    v56 = (v54 + 82336);
  }

  else
  {
    v56 = (*(v10 + 25568) + 8 * v17 + 4 * v55);
  }

  v57 = *v56;
  HIWORD(v96) = v57 >> 19;
  LOWORD(v96) = v57 >> 3;
  v58 = &v95;
  if (a9)
  {
    v58 = v9;
  }

  v94 = *v58;
  if (*(v51 + 4))
  {
    *v9 = *(v51 + 12) >> 3;
    v9[1] = *(v51 + 8) >> 3;
  }

  else
  {
    if (*(v13 + 12))
    {
      v59 = v97;
    }

    else
    {
      v59 = 0;
    }

    v60 = a3;
    vp9_full_pixel_search(v11, v10, a3, &v96, v16, *v13, v19, v59, &v94, v9, 0x7FFFFFFF, 0);
    v54 = v10 + 4 * v17;
    a3 = v60;
  }

  *(v12 + 57) = v92;
  v62 = (8 * *v9);
  LOWORD(v96) = 8 * *v9;
  v61 = v96;
  HIWORD(v96) = 8 * v9[1];
  v63 = HIWORD(v96);
  v64 = v10 + 25724;
  v65 = *(v10 + 25776);
  v66 = (HIWORD(v96) & 0xFFF8) != HIWORD(v18);
  v67 = 2;
  if ((HIWORD(v96) & 0xFFF8) != HIWORD(v18))
  {
    v67 = 3;
  }

  if (v62 != v18)
  {
    v66 = v67;
  }

  v68 = (108 * (*(*v65 + 4 * (v96 - v18)) + *(v65[1] + 4 * (HIWORD(v96) - HIWORD(v18))) + *(v64 + 4 * v66)) + 64) >> 7;
  *a7 = v68;
  v69 = ((v11[4 * *(*(v10 + 25568) + v17 + 32) + 232071] + v68) * v12[4] + 256) >> 9;
  if (v11[188635])
  {
    v70 = a8;
    if (v11[231599])
    {
      v71 = (v63 | v61) != 0;
      if (v69 > a8 || !v71)
      {
        goto LABEL_98;
      }
    }

    else if (v69 > a8)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v70 = a8;
    if (v69 > a8)
    {
      goto LABEL_98;
    }
  }

  v73 = *(v13 + 20);
  if (a9)
  {
    if (*(v13 + 580))
    {
      v73 = 2;
    }

    else
    {
      v73 = v73;
    }
  }

  if (*(v13 + 24))
  {
    v74 = 184893;
    v75 = *(v13 + 28);
    v76 = *v9;
    if (v76 < 0)
    {
      v76 = -v76;
    }

    if (v75 > v76)
    {
      v77 = v9[1];
      if (v77 < 0)
      {
        v77 = -v77;
      }

      if (v75 > v77)
      {
        v74 = 184892;
      }
    }

    v73 = v11[v74];
  }

  v78 = v97;
  if (!*(v13 + 12))
  {
    v78 = 0;
  }

  (*(v13 + 760))(v10, v9, &v95, v11[43248], *v12, &v11[16 * a3 + 185118], v73, *(v13 + 16), v78, v10 + 25724, v65, &v93, v54 + 25692, 0, 0, *(v13 + 632));
  v79 = *(v10 + 25776);
  v80 = v9[1] - HIWORD(v95);
  v81 = v9[1] != HIWORD(v95);
  v82 = 2;
  if (v80)
  {
    v82 = 3;
  }

  v83 = *v9 - v95;
  v85 = *v79;
  v84 = v79[1];
  if (v83)
  {
    v81 = v82;
  }

  *a7 = (108 * (*(v85 + 4 * v83) + *(v84 + 4 * v80) + *(v64 + 4 * v81)) + 64) >> 7;
LABEL_98:
  if ((v89 & 1) == 0)
  {
    v86 = v99;
    *(v10 + 24944) = v98;
    *(v10 + 25080) = v86;
    *(v10 + 25216) = v100;
  }

  return v69 <= v70;
}