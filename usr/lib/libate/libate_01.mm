uint64_t decode_bc4s(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 2) | (*(a1 + 4) << 16);
  do
  {
    v4 = vdupq_n_s32(v7[v3 & 7]);
    v4.i32[3] = 15360;
    *(a2 + 288 + v2) = v4;
    v3 >>= 3;
    v2 += 16;
  }

  while (v2 != 256);
  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t decode_bc5(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v27[0] = *a1;
  v27[1] = v2;
  v26[0] = v3;
  v26[1] = v4;
  v5 = 2 * v2;
  v6 = 3 * v2;
  if (v27[0] <= v2)
  {
    LOBYTE(v11) = 0;
    v7 = (13108 * (v2 + 4 * v27[0])) >> 16;
    v8 = (13108 * (v5 + 3 * v27[0])) >> 16;
    v9 = (13108 * (v6 + 2 * v27[0])) >> 16;
    v10 = (13108 * (v27[0] + 4 * v2)) >> 16;
    LOBYTE(v12) = -1;
  }

  else
  {
    v7 = (9363 * (v2 + 6 * v27[0])) >> 16;
    v8 = (9363 * (v5 + 5 * v27[0])) >> 16;
    v9 = (9363 * (v6 + 4 * v27[0])) >> 16;
    v10 = (9363 * (3 * v27[0] + 4 * v2)) >> 16;
    v11 = (9363 * (5 * v2 + 2 * v27[0])) >> 16;
    v12 = (9363 * (v27[0] + 6 * v2)) >> 16;
  }

  v27[2] = v7;
  v27[3] = v8;
  v27[4] = v9;
  v13 = 2 * v4;
  v27[5] = v10;
  v27[6] = v11;
  v14 = 3 * v4;
  v27[7] = v12;
  if (v3 <= v4)
  {
    LOBYTE(v19) = 0;
    v15 = (13108 * (v4 + 4 * v3)) >> 16;
    v16 = (13108 * (v13 + 3 * v3)) >> 16;
    v17 = (13108 * (v14 + 2 * v3)) >> 16;
    v18 = (13108 * (v3 + 4 * v4)) >> 16;
    LOBYTE(v13) = -1;
  }

  else
  {
    v15 = (9363 * (v4 + 6 * v3)) >> 16;
    v16 = (9363 * (v13 + 5 * v3)) >> 16;
    v17 = (9363 * (v14 + 4 * v3)) >> 16;
    v18 = (9363 * (3 * v3 + 4 * v4)) >> 16;
    v19 = (9363 * (5 * v4 + 2 * v3)) >> 16;
    v13 = (9363 * (v3 + 6 * v4)) >> 16;
  }

  v20 = 0;
  v26[2] = v15;
  v26[3] = v16;
  v26[4] = v17;
  v26[5] = v18;
  v21 = *(a1 + 2) | (*(a1 + 4) << 16);
  v22 = *(a1 + 10) | (*(a1 + 12) << 16);
  v26[6] = v19;
  v26[7] = v13;
  do
  {
    LODWORD(v23) = v27[v21 & 7] | (v27[v21 & 7] << 8);
    DWORD1(v23) = v26[v22 & 7] | (v26[v22 & 7] << 8);
    *(&v23 + 1) = 0xFFFF00000000;
    *(a2 + 288 + v20) = v23;
    v21 >>= 3;
    v22 >>= 3;
    v20 += 16;
  }

  while (v20 != 256);
  v24 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t decode_bc5s(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 2) | (*(a1 + 4) << 16);
  v4 = *(a1 + 10) | (*(a1 + 12) << 16);
  do
  {
    LODWORD(v5) = v8[(v3 & 7) + 8];
    DWORD1(v5) = v8[v4 & 7];
    *(&v5 + 1) = 0x3C0000000000;
    *(a2 + 288 + v2) = v5;
    v3 >>= 3;
    v4 >>= 3;
    v2 += 16;
  }

  while (v2 != 256);
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t decode_bc6(unsigned __int8 *a1, uint64_t a2)
{
  v79 = *MEMORY[0x29EDCA608];
  v68 = *(a2 + 2616);
  v74 = 0;
  Bits = GetBits(a1, &v74, 2);
  if (Bits >= 2)
  {
    LOBYTE(Bits) = Bits | (4 * GetBits(a1, &v74, 3));
  }

  if (((0x4444CCCFuLL >> Bits) & 1) == 0)
  {
    *(a2 + 512) = 0u;
    *(a2 + 528) = 0u;
    *(a2 + 480) = 0u;
    *(a2 + 496) = 0u;
    *(a2 + 448) = 0u;
    *(a2 + 464) = 0u;
    *(a2 + 416) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    goto LABEL_78;
  }

  v4 = ms_aModeToInfo[4 * Bits];
  v5 = &bc6_modeinfo[20 * ms_aModeToInfo[4 * Bits]];
  v6 = 0uLL;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v7 = 65;
  if (v5[1])
  {
    v7 = 82;
  }

  v8 = v74;
  if (v74 >= v7)
  {
    v67 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &bc6_modedesc + 656 * v4 + 8 * v74 + 4;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      if ((a1[v8 >> 3] >> (v8 & 7)))
      {
        switch(*(v10 - 1))
        {
          case 2:
            v9 |= 1 << *v10;
            break;
          case 3:
            v6.i32[0] |= 1 << *v10;
            goto LABEL_22;
          case 4:
            v11.i32[0] |= 1 << *v10;
            goto LABEL_25;
          case 5:
            v12.i32[0] |= 1 << *v10;
            goto LABEL_19;
          case 6:
            v13.i32[0] |= 1 << *v10;
            goto LABEL_27;
          case 7:
            v6.i32[1] |= 1 << *v10;
            goto LABEL_22;
          case 8:
            v11.i32[1] |= 1 << *v10;
            goto LABEL_25;
          case 9:
            v12.i32[1] |= 1 << *v10;
            goto LABEL_19;
          case 0xA:
            v13.i32[1] |= 1 << *v10;
            goto LABEL_27;
          case 0xB:
            v6.i32[2] |= 1 << *v10;
LABEL_22:
            v75 = v6;
            break;
          case 0xC:
            v11.i32[2] |= 1 << *v10;
LABEL_25:
            v76 = v11;
            break;
          case 0xD:
            v12.i32[2] |= 1 << *v10;
LABEL_19:
            v77 = v12;
            break;
          case 0xE:
            v13.i32[2] |= 1 << *v10;
LABEL_27:
            v78 = v13;
            break;
          default:
            goto LABEL_78;
        }
      }

      ++v8;
      v10 += 8;
    }

    while (v7 != v8);
    v67 = v9;
    v8 = v7;
  }

  v74 = v8;
  if (v68 == 1)
  {
    v14.i32[0] = v5[4];
    v14.i32[1] = v5[5];
    *v15.i8 = vorr_s8(vbic_s8(vshl_u32(-1, v14), vceqz_s32(vand_s8(vshl_u32(0x100000001, vadd_s32(v14, -1)), *v6.i8))), *v6.i8);
    v15.i32[3] = vextq_s8(v6, v6, 8uLL).i32[1];
    v15.i32[2] = ((v6.i32[2] >> (v5[6] - 1) << 31) >> 31) & (-1 << v5[6]) | v6.i32[2];
    v75 = v15;
    goto LABEL_34;
  }

  if (v5[2] == 1)
  {
LABEL_34:
    v16 = v5 + 4;
    v17 = -1;
    v18 = &v75;
    do
    {
      if (v17 != -1)
      {
        INTColor::SignExtend(v18, v16);
      }

      INTColor::SignExtend(v18 + 1, v16 + 4);
      ++v17;
      v16 += 8;
      v18 += 2;
    }

    while (v17 < v5[1]);
    if (v5[2])
    {
      v19.i32[0] = v5[4];
      v19.i32[1] = v5[5];
      v20 = vshl_u32(-1, v19);
      *v21.i8 = vmvn_s8(v20);
      v22 = v5[6];
      v23 = -1 << v22;
      v21.i64[1] = ~(-1 << v22);
      v24 = vandq_s8(vaddq_s32(v76, v75), v21);
      v25 = vandq_s8(vaddq_s32(v77, v75), v21);
      v76 = v24;
      v77 = v25;
      v26 = vandq_s8(vaddq_s32(v78, v75), v21);
      v78 = v26;
      if (v68 == 1)
      {
        v27 = vshl_u32(0x100000001, vadd_s32(v19, -1));
        *v28.i8 = vorr_s8(vbic_s8(v20, vceqz_s32(vand_s8(*v24.i8, v27))), *v24.i8);
        v28.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
        v29 = 1 << (v22 - 1);
        if ((v24.i32[2] & v29) != 0)
        {
          v30 = v23;
        }

        else
        {
          v30 = 0;
        }

        v28.i32[2] = v30 | v24.i32[2];
        *v31.i8 = vorr_s8(vbic_s8(v20, vceqz_s32(vand_s8(*v25.i8, v27))), *v25.i8);
        v31.i64[1] = vextq_s8(v25, v25, 8uLL).u64[0];
        if ((v25.i32[2] & v29) != 0)
        {
          v32 = v23;
        }

        else
        {
          v32 = 0;
        }

        v31.i32[2] = v32 | v25.i32[2];
        v76 = v28;
        v77 = v31;
        *v33.i8 = vorr_s8(vbic_s8(v20, vceqz_s32(vand_s8(*v26.i8, v27))), *v26.i8);
        v33.i64[1] = vextq_s8(v26, v26, 8uLL).u64[0];
        if ((v26.i32[2] & v29) == 0)
        {
          v23 = 0;
        }

        v33.i32[2] = v23 | v26.i32[2];
        v78 = v33;
      }
    }
  }

  v34 = 0;
  v65 = a2 + 288;
  v66 = v5;
  do
  {
    v35 = v5[1];
    if (v34 == bc67_fixups[192 * v35 + 3 * v67])
    {
      goto LABEL_55;
    }

    v36 = 0;
    do
    {
      v37 = v36;
      if (v35 == v36)
      {
        break;
      }

      ++v36;
    }

    while (v34 != bc67_fixups[192 * v35 + 1 + 3 * v67 + v37]);
    if (v37 < v35)
    {
LABEL_55:
      v38 = v5[3] - 1;
    }

    else
    {
      v38 = v5[3];
    }

    v39 = GetBits(a1, &v74, v38);
    if (v35)
    {
      v40 = 8;
    }

    else
    {
      v40 = 16;
    }

    if (v40 <= v39)
    {
      abort();
    }

    v41 = v39;
    v42 = v68 == 1;
    v43 = &v75 + 2 * bc67_partitionTable[1024 * v35 + 16 * v67 + v34];
    v72 = *v43;
    v44 = v5[4];
    v45 = bc6_Unquantize(v43->u32[0], v44, v42);
    v46 = v5[5];
    v70 = bc6_Unquantize(v72.u32[1], v46, v42);
    v47 = v5[6];
    v71 = bc6_Unquantize(v72.u32[2], v47, v42);
    v73 = v43[1];
    v48 = bc6_Unquantize(v73.u32[0], v44, v42);
    v49 = bc6_Unquantize(v73.u32[1], v46, v42);
    v50 = bc6_Unquantize(v73.u32[2], v47, v42);
    v51 = &bc67_weights3;
    if (!v35)
    {
      v51 = &bc67_weights4;
    }

    v52 = v51[v41];
    v53 = 64 - v52;
    v54 = ((64 - v52) * v45 + v52 * v48 + 32) >> 6;
    if (v68 == 1)
    {
      if (v54 < 0)
      {
        v55 = -((-31 * v54) >> 5);
      }

      else
      {
        v55 = (31 * v54) >> 5;
      }

      v56 = (v53 * v70 + v52 * v49 + 32) >> 6;
      if (v56 < 0)
      {
        v57 = -((-31 * v56) >> 5);
      }

      else
      {
        v57 = (31 * v56) >> 5;
      }

      v58 = (v53 * v71 + v52 * v50 + 32) >> 6;
      if (v58 < 0)
      {
        v59 = -((-31 * v58) >> 5);
      }

      else
      {
        v59 = (31 * v58) >> 5;
      }

      v60 = vbsl_s8(vcltz_s32(__PAIR64__(v57, v55)), (*&vneg_s32(__PAIR64__(v57, v55)) | 0x800000008000), __PAIR64__(v57, v55));
      if (v59 < 0)
      {
        LOWORD(v59) = -v59 | 0x8000;
      }
    }

    else
    {
      v61.i32[0] = ((64 - v52) * v45 + v52 * v48 + 32) >> 6;
      v61.i32[1] = (v53 * v70 + v52 * v49 + 32) >> 6;
      v60 = vshr_n_s32(vmul_s32(v61, 0x1F0000001FLL), 6uLL);
      v59 = (31 * ((v53 * v71 + v52 * v50 + 32) >> 6)) >> 6;
    }

    *&v62 = vand_s8(v60, 0xFFFF0000FFFFLL);
    DWORD2(v62) = v59;
    HIDWORD(v62) = 15360;
    v5 = v66;
    *(v65 + 16 * v34++) = v62;
  }

  while (v34 != 16);
LABEL_78:
  v63 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GetBits(unsigned __int8 *a1, unint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *a2 >> 3;
    v4 = *a2 & 7;
    if (v4 + a3 < 9)
    {
      v5 = (a1[v3] >> v4) & ~(-1 << a3);
    }

    else
    {
      v5 = ((a1[v3 + 1] & ~(-1 << (a3 - (8 - v4)))) << (8 - v4)) | (a1[v3] >> v4);
    }

    *a2 += a3;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

__n128 INTColor::SignExtend(__n128 *a1, _BYTE *a2)
{
  result = *a1;
  v3 = HIDWORD(a1->n128_u64[0]);
  v4.n128_u64[1] = a1->n128_u64[1];
  v4.n128_u32[0] = ((a1->n128_u32[0] >> (*a2 - 1) << 31) >> 31) & (-1 << *a2) | *a1;
  a1->n128_u32[0] = v4.n128_u32[0];
  v4.n128_u32[1] = ((v3 >> (a2[1] - 1) << 31) >> 31) & (-1 << a2[1]) | v3;
  *a1 = v4;
  v4.n128_u32[2] |= ((v4.n128_u32[2] >> (a2[2] - 1) << 31) >> 31) & (-1 << a2[2]);
  *a1 = v4;
  return result;
}

uint64_t bc6_Unquantize(uint64_t result, unsigned int a2, int a3)
{
  if (a3)
  {
    if (a2 <= 0xF)
    {
      if (result >= 0)
      {
        v3 = result;
      }

      else
      {
        v3 = -result;
      }

      v4 = v3 >= ~(-1 << (a2 - 1));
      v5 = ((v3 << 15) | 0x4000) >> (a2 - 1);
      if (v4)
      {
        v5 = 0x7FFF;
      }

      if (!result)
      {
        v5 = 0;
      }

      if (result >= 0)
      {
        return v5;
      }

      else
      {
        return -v5;
      }
    }
  }

  else
  {
    v6 = ((result << 16) | 0x8000) >> a2;
    if (((-1 << a2) ^ result) == 0xFFFFFFFF)
    {
      v6 = 0xFFFF;
    }

    if (!result)
    {
      v6 = 0;
    }

    if (a2 <= 0xE)
    {
      return v6;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t decode_bc7(unsigned __int8 *a1, _OWORD *a2, double a3, double a4, double a5, int8x16_t a6)
{
  *&v115[22] = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    a2[32] = 0u;
    a2[33] = 0u;
    a2[30] = 0u;
    a2[31] = 0u;
    a2[28] = 0u;
    a2[29] = 0u;
    a2[26] = 0u;
    a2[27] = 0u;
    a2[24] = 0u;
    a2[25] = 0u;
    a2[22] = 0u;
    a2[23] = 0u;
    a2[20] = 0u;
    a2[21] = 0u;
    a2[18] = 0u;
    a2[19] = 0u;
    goto LABEL_81;
  }

  v8 = __clz(__rbit32(*a1));
  if (v8 != 1)
  {
    v110 = v8 + 1;
    v32 = &bc7_modes + 9 * v8;
    Bits = GetBits(a1, &v110, v32[1]);
    v33 = GetBits(a1, &v110, v32[3]);
    v107 = GetBits(a1, &v110, v32[4]);
    v34 = *v32;
    v35 = v32[2];
    v36 = v32[7];
    v37 = v32[8];
    v38 = (2 * v34 + 2) & 0xFE;
    if (((2 * v34 + 2) & 0xFE) != 0)
    {
      v103 = v32;
      v39 = v113;
      v40 = (2 * v34 + 2) & 0xFE;
      do
      {
        *v39 = GetBits(a1, &v110, v36);
        v39 += 4;
        --v40;
      }

      while (v40);
      v41 = &v114;
      v42 = (2 * v34 + 2) & 0xFE;
      do
      {
        *v41 = GetBits(a1, &v110, v36);
        v41 += 4;
        --v42;
      }

      while (v42);
      v43 = v115;
      v44 = (2 * v34 + 2) & 0xFE;
      do
      {
        *v43 = GetBits(a1, &v110, v36);
        v43 += 4;
        --v44;
      }

      while (v44);
      v45 = v37 != 0;
      if (v37)
      {
        v46 = 0;
        v47 = &v115[1];
        do
        {
          *v47 = GetBits(a1, &v110, v37);
          v47 += 4;
          ++v46;
        }

        while (v46 < v38);
        v45 = 1;
      }

      v32 = v103;
      if (!v35)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v45 = v37 != 0;
      if (!v32[2])
      {
        goto LABEL_39;
      }
    }

    v56 = v109;
    v57 = v110;
    v58 = v35;
    do
    {
      v59 = (a1[v57 >> 3] >> (v57 & 7)) & 1;
      ++v57;
      *v56++ = v59;
      --v58;
    }

    while (v58);
    v110 = v57;
    if (((2 * v34 + 2) & 0xFE) == 0)
    {
LABEL_51:
      v72 = 0;
      v73 = v32[5];
      v74 = v32[6];
      v104 = Bits;
      v75 = 3 * Bits;
      v76 = bc67_fixups[192 * v34 + v75];
      v77 = &bc67_fixups[192 * v34 + 1 + v75];
      do
      {
        if (v72 == v76)
        {
          v78 = -1;
        }

        else
        {
          v79 = 0;
          do
          {
            v80 = v79;
            if (v34 == v79)
            {
              break;
            }

            ++v79;
          }

          while (v72 != v77[v80]);
          if (v80 >= v34)
          {
            v78 = 0;
          }

          else
          {
            v78 = -1;
          }
        }

        v112[v72++] = GetBits(a1, &v110, v78 + v73);
      }

      while (v72 != 16);
      if (v74)
      {
        for (i = 0; i != 16; ++i)
        {
          *(v111 + i) = GetBits(a1, &v110, (__PAIR128__(v74, i) - 1) >> 64);
        }

        v106 = v74;
      }

      else
      {
        v106 = 0;
      }

      v82 = 0;
      v83 = a2 + 18;
      v84 = &bc67_partitionTable[1024 * v34 + 16 * v104];
      while (1)
      {
        v85 = &v113[8 * v84[v82]];
        v86 = &v113[4 * ((2 * v84[v82]) | 1)];
        if (v74)
        {
          if (!v107)
          {
            v96 = *(v111 + v82);
            LDRColorA::InterpolateRGB(v85, v86, v112[v82], v73, &v108);
            v92 = v85;
            v93 = v86;
            v94 = v96;
            v95 = v106;
            goto LABEL_73;
          }

          v87 = *(v111 + v82);
          v88 = v112[v82];
          v89 = &v113[8 * v84[v82]];
          v90 = &v113[4 * ((2 * v84[v82]) | 1)];
          v91 = v106;
        }

        else
        {
          v88 = v112[v82];
          v89 = &v113[8 * v84[v82]];
          v90 = &v113[4 * ((2 * v84[v82]) | 1)];
          v87 = v88;
          v91 = v73;
        }

        LDRColorA::InterpolateRGB(v89, v90, v87, v91, &v108);
        v92 = v85;
        v93 = v86;
        v94 = v88;
        v95 = v73;
LABEL_73:
        LDRColorA::InterpolateA(v92, v93, v94, v95, &v108);
        switch(v33)
        {
          case 1:
            v98 = v108;
            LOBYTE(v108) = HIBYTE(v108);
            break;
          case 2:
            v98 = BYTE1(v108);
            BYTE1(v108) = HIBYTE(v108);
            break;
          case 3:
            v98 = BYTE2(v108);
            BYTE2(v108) = HIBYTE(v108);
            break;
          default:
            v98 = HIBYTE(v108);
            break;
        }

        v97.i32[0] = v108;
        v99 = vmovl_u8(v97);
        v99.i8[4] = BYTE2(v108);
        v99.i16[3] = v98;
        v100.i64[0] = 0xFF000000FFLL;
        v100.i64[1] = 0xFF000000FFLL;
        v83[v82++] = vmull_u16(vmovn_s32(vandq_s8(vmovl_u16(*v99.i8), v100)), 0x101010101010101);
        if (v82 == 16)
        {
          goto LABEL_81;
        }
      }
    }

    v60 = 0;
    v61 = &v115[1];
    v62 = (2 * v34 + 2) & 0xFE;
    do
    {
      v63 = v109[v60 / v38];
      *(v61 - 3) = v63 | (2 * *(v61 - 3));
      *(v61 - 2) = v63 | (2 * *(v61 - 2));
      *(v61 - 1) = v63 | (2 * *(v61 - 1));
      if (v45)
      {
        *v61 = v63 | (2 * *v61);
      }

      v61 += 4;
      v60 += v35;
      --v62;
    }

    while (v62);
LABEL_39:
    if (((2 * v34 + 2) & 0xFE) != 0)
    {
      if (v35)
      {
        v64 = v37 + 1;
      }

      else
      {
        v64 = v37;
      }

      if (v35)
      {
        v65 = v36 + 1;
      }

      else
      {
        v65 = v36;
      }

      v66 = 8 - v65;
      v67 = &v114;
      do
      {
        if (v37)
        {
          v68 = (((v67[2] << (8 - v64)) >> v64) | (v67[2] << (8 - v64))) << 24;
        }

        else
        {
          v68 = -16777216;
        }

        v69 = (v67[1] << v66);
        v70 = (*v67 << v66);
        v71 = (*(v67 - 1) << v66);
        *(v67 - 1) = v68 | (((v69 >> v65) | v69) << 16) | (((v70 >> v65) | v70) << 8) | v71 | (v71 >> v65);
        v67 += 4;
        --v38;
      }

      while (v38);
    }

    goto LABEL_51;
  }

  v9 = 0;
  v10 = *a1;
  v11 = *(a1 + 10);
  v12 = v11 | (*(a1 + 7) << 32);
  v13 = HIBYTE(*a1) & 0xFC | (*a1 < 0);
  v14 = *(a1 + 2) | (a1[6] << 16);
  v15 = v14 >> 6;
  v16.i32[0] = 2 * v11;
  v17 = v14 >> 12;
  v16.i32[1] = *(a1 + 10);
  v18 = vand_s8(v16, 0x200000002);
  LOBYTE(v11) = v18.i8[4];
  v19 = vuzp1_s16(v18, v18);
  v20 = vdupq_n_s32(v14);
  a6.i32[0] = *(a1 + 2) | (a1[6] << 16);
  LOBYTE(v14) = v18.i8[0];
  v21 = vzip1_s16(v19, v19);
  a6.i32[1] = v15;
  a6.i32[2] = v17;
  v22.i64[0] = 0x3F0000003FLL;
  v22.i64[1] = 0x3F0000003FLL;
  v23 = vandq_s8(a6, v22);
  v23.i32[3] = vshlq_u32(v20, xmmword_298448150).i32[3];
  *v20.i8 = vmovn_s32(v23);
  v111[0] = vuzp1_s8(vorr_s8(vorr_s8(vshl_n_s16(*v20.i8, 2uLL), vshr_n_u16(*v20.i8, 5uLL)), v21), v21).u32[0];
  v24 = *(a1 + 7) | (a1[9] << 16);
  v112[0] = v14 | (v10 >> 6) & 0xFC | ((v10 & 0x2000) != 0);
  v112[1] = v14 | (v10 >> 12) & 0xFC | ((v10 & 0x80000) != 0);
  v112[2] = v11 | (v10 >> 18) & 0xFC | ((v10 & 0x2000000) != 0);
  v112[3] = v11 | v13;
  v23.i32[0] = v24;
  v23.i32[1] = v24 >> 6;
  v23.i32[2] = v24 >> 12;
  v25 = vandq_s8(v23, v22);
  v25.i32[3] = vshlq_u32(vdupq_n_s32(v24), xmmword_298448150).i32[3];
  *v25.i8 = vmovn_s32(v25);
  v26 = vorr_s8(vorr_s8(vshl_n_s16(*v25.i8, 2uLL), vshr_n_u16(*v25.i8, 5uLL)), v21);
  LODWORD(v110) = vuzp1_s8(v26, v26).u32[0];
  v27 = v10 >> 2;
  v28 = v12 >> 2;
  v29 = bc67_fixups[3 * v27 + 193];
LABEL_11:
  v30 = 3;
  v31 = 2;
  while (1)
  {
    v113[v9] = v30 & v28;
    v28 >>= v31;
    if (!++v9)
    {
      goto LABEL_11;
    }

    if (v9 == 16)
    {
      break;
    }

    if (v29 == v9)
    {
      v30 = 3;
    }

    else
    {
      v30 = 7;
    }

    if (v29 == v9)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }
  }

  v48 = 0;
  v49 = &bc67_partitionTable[16 * v27 + 1024];
  do
  {
    v50 = bc67_weights3[v113[v48]];
    v51 = 2 * (v49[v48] & 0x7F);
    v52 = v50 * v112[v51 | 1] + (64 - v50) * v112[v51] + 32;
    v53 = v50 * *(v111 + (v51 | 1)) + (64 - v50) * *(v111 + v51) + 32;
    v54 = ((v50 * *(&v111[-2] + (v51 | 1)) + (64 - v50) * *(&v111[-2] + v51) + 32) >> 6);
    LODWORD(v55) = (v52 >> 6) | ((v52 >> 6) << 8);
    DWORD1(v55) = (v53 >> 6) | ((v53 >> 6) << 8);
    *(&v55 + 1) = v54 | (v54 << 8) | 0xFFFF00000000;
    a2[v48++ + 18] = v55;
  }

  while (v48 != 16);
LABEL_81:
  v101 = *MEMORY[0x29EDCA608];
  return 0;
}

unsigned __int8 *LDRColorA::InterpolateRGB(unsigned __int8 *result, unsigned __int8 *a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  switch(a4)
  {
    case 4:
      if (a3 >= 0x10)
      {
        LDRColorA::InterpolateRGB();
      }

      v5 = &bc67_weights4;
      break;
    case 3:
      if (a3 >= 8)
      {
        LDRColorA::InterpolateRGB();
      }

      v5 = &bc67_weights3;
      break;
    case 2:
      if (a3 >= 4)
      {
        LDRColorA::InterpolateRGB();
      }

      v5 = &bc67_weights2;
      break;
    default:
      LDRColorA::InterpolateRGB();
  }

  v6 = v5[a3];
  *a5 = (v6 * *a2 + (64 - v6) * *result + 32) >> 6;
  a5[1] = (v6 * a2[1] + (64 - v6) * result[1] + 32) >> 6;
  a5[2] = (v6 * a2[2] + (64 - v6) * result[2] + 32) >> 6;
  return result;
}

uint64_t LDRColorA::InterpolateA(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a4)
  {
    case 4:
      if (a3 >= 0x10)
      {
        LDRColorA::InterpolateA();
      }

      v5 = &bc67_weights4;
      break;
    case 3:
      if (a3 >= 8)
      {
        LDRColorA::InterpolateA();
      }

      v5 = &bc67_weights3;
      break;
    case 2:
      if (a3 >= 4)
      {
        LDRColorA::InterpolateA();
      }

      v5 = &bc67_weights2;
      break;
    default:
      LDRColorA::InterpolateA();
  }

  *(a5 + 3) = (v5[a3] * *(a2 + 3) + (64 - v5[a3]) * *(result + 3) + 32) >> 6;
  return result;
}

void LDRColorA::InterpolateRGB()
{
  __assert_rtn("InterpolateRGB", "BC_impl.h", 354, "wc < 16");
}

{
  __assert_rtn("InterpolateRGB", "BC_impl.h", 353, "wc < 8");
}

{
  __assert_rtn("InterpolateRGB", "BC_impl.h", 352, "wc < 4");
}

{
  __assert_rtn("InterpolateRGB", "BC_impl.h", 355, "false");
}

void LDRColorA::InterpolateA()
{
  __assert_rtn("InterpolateA", "BC_impl.h", 369, "wa < 16");
}

{
  __assert_rtn("InterpolateA", "BC_impl.h", 368, "wa < 8");
}

{
  __assert_rtn("InterpolateA", "BC_impl.h", 367, "wa < 4");
}

{
  __assert_rtn("InterpolateA", "BC_impl.h", 370, "false");
}

unint64_t WeightInfoForSingleLineSingleWeight_6x5(int a1, uint64_t a2)
{
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  v3 = (&WeightInfoForSingleLineSingleWeight_6x5_kSingleLineSingleWeight_6x5 + 8 * WeightInfoForSingleLineSingleWeight_6x5_IndexTable_6x5[4 * a1 + v2]);
  return *v3 & 0xFFE00000FFFE1FFFLL | (*(v3 + v2 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

unint64_t WeightInfoForSingleLineSingleWeight_7x7(int a1, uint64_t a2)
{
  v4 = a1 == 49 && a2 > 2;
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  return *(&WeightInfoForSingleLineSingleWeight_7x7_kSingleLineSingleWeight_7x7 + v4) & 0xFFE00000FFFE1FFFLL | (*(&WeightInfoForSingleLineSingleWeight_7x7_kSingleLineSingleWeight_7x7 + 8 * v4 + v2 + 4) << 32) | (a2 << 40) | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

unint64_t WeightInfoForSingleLineDualWeight_6x5(int a1, uint64_t a2)
{
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  v3 = (&WeightInfoForSingleLineDualWeight_6x5_Table_6x5 + 8 * WeightInfoForSingleLineDualWeight_6x5_Indices_6x5[4 * a1 + v2]);
  return *v3 & 0xFFE00000FFFE1FFFLL | (*(v3 + v2 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

unint64_t GetDualPartitionBlockInfo_6x5(unsigned int a1, int a2)
{
  v2 = (a2 - 4);
  v4 = GetDualPartitionBlockInfo_6x5_kWeightInfo[GetDualPartitionBlockInfo_6x5_kIndices[4 * a1 + (v2 >> 2)]];
  return (a2 << 40) | (*(&v4 + (v2 >> 2) + 4) << 56) | ((v4 >> 27) << 32) | 0x1D000000000000 | (v2 << 25) & 0x18000000 | v4 & 0x1FFFFFF;
}

unint64_t GetDualPartitionDualWeightBlockInfo(unsigned int a1, int a2)
{
  v2 = (a2 - 4);
  v4 = kDualLineDualWeightTable[kDualLineDualWeightIndexTable[4 * a1 + (v2 >> 2)]];
  return (a2 << 40) | (*(&v4 + (v2 >> 2) + 4) << 56) | ((v4 >> 27) << 32) | 0x1D000000000000 | (v2 << 25) & 0x18000000 | v4 & 0x1FFFFFF;
}

unsigned __int16 ConvertSRGBtoLinear@<H0>(int32x4_t a1@<Q0>)
{
  v1.i64[0] = 0xFF000000FFLL;
  v1.i64[1] = 0xFF000000FFLL;
  v2 = vminq_s32(vmaxq_s32(vshrq_n_s32(a1, 8uLL), 0), v1);
  v3 = ConvertSRGBtoLinear_sRGBtoLinearTable[v2.i32[2]];
  v4 = ConvertSRGBtoLinear_sRGBtoLinearAlphaTable[v2.i32[3]];
  result = ConvertSRGBtoLinear_sRGBtoLinearTable[v2.i32[0]];
  v2.i32[1] = ConvertSRGBtoLinear_sRGBtoLinearTable[v2.i32[1]];
  return result;
}

uint64_t ASTCEncoder::GetBlockFeaturesStatic(unint64_t this, at_block_format_t a2, at_flags_t a3)
{
  if (this - 33 < 0xFFFFFFFFFFFFFFE0)
  {
    return 0;
  }

  v4 = &ASTCEncoder::GetBlockFeaturesStatic(at_block_format_t,at_flags_t)::BlockFeatures + 8 * this;
  if (this > 0x10)
  {
    return *(v4 - 17) | 0x400000000;
  }

  else
  {
    return *(v4 - 1);
  }
}

unsigned int *BlockFeatureScan(unsigned int *result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= 3 && v2 == 1 && (!*(result + 80) || v4 == 1))
  {
    return result;
  }

  v7 = result[15];
  if (!v7)
  {
    goto LABEL_222;
  }

  v8 = 0;
  v9 = *(result + 2);
  v10 = v9[1];
  v11 = result[14];
  v12 = *v9 + (v10 * result[12] + 16 * result[11] + v9[2] * result[13]) * a2;
  v119 = v10;
  while (1)
  {
    if (v11)
    {
      v13 = *(result + 9) - 17;
      v14 = v12;
      v15 = v11;
      while (1)
      {
        v16 = *v14;
        v17 = v14->u32[0];
        if ((*v14 & 3) != 0)
        {
          v18 = (v17 >> 2) & 3;
          v19 = (v17 >> 5) & 3;
          if (v18 > 1)
          {
            v29 = v19 + 2;
            v30 = (v17 >> 7) & 1 | 6;
            v31 = (v17 >> 7) & 3;
            if ((*v14 & 0x100) != 0)
            {
              v30 = v29;
            }

            else
            {
              v31 = v29;
            }

            v20 = v18 == 2 ? (v17 >> 7) & 3 | 8 : v30;
            v21 = v18 == 2 ? v29 : v31;
          }

          else
          {
            v20 = v19 + 2;
            v21 = v18 ? (v17 >> 7) & 3 | 8 : (v17 >> 7) & 3 | 4;
          }

          v32 = (2 * (*v14 & 3)) | (v14->u32[0] >> 4) & 1 | (v14->u32[0] >> 6) & 8;
          v33 = (v17 >> 10) & 1;
        }

        else
        {
          if ((~v17 & 0x1FC) == 0)
          {
            v22 = (v16.i32[0] >> 12) & 0x1FFF;
            if (v22 != 0x1FFF && v22 >= ((v16.i64[0] >> 25) & 0x1FFF))
            {
              goto LABEL_64;
            }

            v24 = (v16.i64[0] >> 38) & 0x1FFF;
            if (v24 != 0x1FFF && v24 >= v16.i64[0] >> 51)
            {
              goto LABEL_64;
            }

            if ((v16.i16[0] & 0x200) == 0)
            {
              v25 = v2 | (v16.i16[7] != 0xFFFF);
              if (v16.u16[4] == v16.u16[6] && v16.u16[4] == v16.u16[5])
              {
                v27 = v3;
              }

              else
              {
                v27 = 3;
              }

              goto LABEL_34;
            }

            if (v13 > 0xF)
            {
              goto LABEL_64;
            }

            v25 = v2 | (*&v16.i16[7] < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)));
            if (*&v16.i16[4] == *&v16.i16[6] && *&v16.i16[4] == *&v16.i16[5])
            {
              v27 = v3;
            }

            else
            {
              v27 = 3;
            }

            v64 = vextq_s8(v16, v16, 8uLL).u64[0];
            v65 = vcgt_f16(v64, 0x3C003C003C003C00);
            v65.i16[3] = v65.i16[2];
            if ((vmaxv_u16(v65) & 0x8000) != 0 || (v66 = vcltz_f16(v64), v66.i16[3] = v66.i16[2], (vmaxv_u16(v66) & 0x8000) != 0))
            {
              v28 = 1;
              v21 = 1;
            }

            else
            {
LABEL_34:
              v21 = 1;
              v28 = v4;
            }

            v20 = 1;
            goto LABEL_211;
          }

          v27 = 3;
          if ((*v14 & 0xC) == 0 || (*v14 & 0x1C0) == 0x1C0)
          {
            goto LABEL_65;
          }

          v32 = (v17 >> 1) & 6 | (v17 >> 4) & 1;
          v33 = (v17 >> 10) & 1;
          v41 = (v17 >> 7) & 3;
          v42 = (v17 >> 5) & 3;
          if (v41 > 1)
          {
            v57 = v42 + 6;
            v58 = ((v17 >> 9) & 1 | (2 * v33)) + 6;
            v59 = (*v14 & 0x20) != 0 ? 6 : 10;
            v60 = (*v14 & 0x20) != 0 ? 10 : 6;
            if (v41 == 2)
            {
              v33 = 0;
              v20 = v58;
            }

            else
            {
              v20 = v59;
            }

            v21 = v41 == 2 ? v57 : v60;
          }

          else
          {
            v43 = v42 + 2;
            v20 = v41 ? 12 : v43;
            v21 = v41 ? v43 : 12;
          }
        }

        v34 = (v17 >> 11) & 3;
        if (v34 == 3 && v33)
        {
          goto LABEL_64;
        }

        v35 = (v21 * v20) << v33;
        if (v35 > 0x40)
        {
          goto LABEL_64;
        }

        v36 = _ZZL18GetBlockFeatures2dPKDv2_m17at_block_format_tRjS3_S3_E20kBlockModeRangeTable[v32] + 1;
        v37 = __clz(__rbit32(v36));
        v38 = v37 * v35;
        v39 = v36 >> v37;
        if (v39 != 1)
        {
          if (v39 == 5)
          {
            v40 = 152922 * v35 + 43692;
          }

          else
          {
            if (v39 != 3)
            {
              __break(1u);
              return result;
            }

            v40 = 13108 * ((8 * v35) | 4);
          }

          v38 += HIWORD(v40);
        }

        if ((v38 - 97) < 0xFFFFFFB7)
        {
LABEL_64:
          v27 = 3;
LABEL_65:
          v28 = v4;
          v25 = v2;
LABEL_66:
          if (v4 <= v28)
          {
            v4 = v28;
          }

          if (v3 <= v27)
          {
            v3 = v27;
          }

          v2 = v25;
          goto LABEL_71;
        }

        v44 = vqtbl1q_s8(v16, vsubq_s8(xmmword_298451AC0, vdupq_n_s8(v38 >> 3)));
        v45 = vorrq_s8(vshlq_u64(vqtbl1q_s8(v44, xmmword_298451AD0), vdupq_n_s64((v38 | 0xFFFFFFF8))), vshlq_u64(*&v44, vdupq_n_s64(v38 & 7))).u32[3];
        if (!v34)
        {
          break;
        }

        v46 = (v17 >> 23) & 3;
        if (!v46)
        {
          v67 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[(v17 >> 25) & 0xF];
          if (v13 >= 0x10 && (v67 & 0x40) != 0)
          {
            if (v3 <= 3)
            {
              v62 = 3;
            }

            else
            {
              v62 = v3;
            }

            v25 = v2;
            v28 = v4;
          }

          else
          {
            v25 = v2 | (v67 >> 7);
            v28 = v4 | (v67 >> 6) & 1;
            v80 = v67 & 0x3F;
            if (v3 <= v80)
            {
              v62 = v80;
            }

            else
            {
              v62 = v3;
            }
          }

          v69 = ((v17 >> 26) & 6) + 2;
          if (!v33)
          {
            v71 = 99;
            goto LABEL_134;
          }

          v70 = 97;
LABEL_132:
          v50 = v70 - v38;
          v81 = v45 >> 30;
          goto LABEL_206;
        }

        v47 = v17 >> 25;
        v48 = 4 * v46 - 4;
        v49 = -3 * v34 - v38;
        v50 = v49 + 100;
        v51 = 4 * ((v17 >> 25) & 1);
        if (v34 == 3)
        {
          v72 = v48 + v51;
          v73 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[HIBYTE(v45) & 3 | v72];
          if (v13 >= 0x10 && (v73 & 0x40) != 0)
          {
            v54 = 0;
            v55 = 0;
            v74 = 3;
          }

          else
          {
            v54 = v73 >> 7;
            v55 = (v73 >> 6) & 1;
            v74 = v73 & 0x3F;
            if ((v73 & 0x3E) == 0)
            {
              v74 = 1;
            }
          }

          v91 = v48 + ((2 * v47) & 4);
          v92 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[(v45 >> 26) & 3 | v91];
          if (v13 >= 0x10 && (v92 & 0x40) != 0)
          {
            v93 = 3;
          }

          else
          {
            v54 |= v92 >> 7;
            v55 |= (v92 >> 6) & 1;
            v93 = v92 & 0x3F;
          }

          if (v74 <= v93)
          {
            v74 = v93;
          }

          v94 = v48 + ((v17 >> 25) & 4);
          v95 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[(v45 >> 28) & 3 | v94];
          if (v13 >= 0x10 && (v95 & 0x40) != 0)
          {
            v96 = 3;
          }

          else
          {
            v54 |= v95 >> 7;
            v55 |= (v95 >> 6) & 1;
            v96 = v95 & 0x3F;
          }

          if (v74 > v96)
          {
            v96 = v74;
          }

          v97 = v48 + ((v17 >> 26) & 4);
          v98 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[v97 | (v45 >> 30)];
          if (v13 >= 0x10 && (v98 & 0x40) != 0)
          {
            v99 = 3;
          }

          else
          {
            v54 |= v98 >> 7;
            v55 |= (v98 >> 6) & 1;
            v99 = v98 & 0x3F;
          }

          v100 = v72 >> 1;
          v101 = v91 >> 1;
          v102 = v94 >> 1;
          if (v96 <= v99)
          {
            v90 = v99;
          }

          else
          {
            v90 = v96;
          }

          v69 = v100 + v101 + v102 + (v97 >> 1) + 8;
          v103 = v33 == 0;
          if (v33)
          {
            v81 = HIBYTE(v45) & 3;
          }

          else
          {
            v81 = 3;
          }

          if (!v103)
          {
            v50 = v49 + 98;
          }

          v7 = result[15];
          v10 = v119;
          goto LABEL_200;
        }

        if (v34 == 2)
        {
          v52 = v48 + (v51 | (v17 >> 28) & 1);
          v53 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[(v45 >> 26) & 2 | v52];
          if (v13 >= 0x10 && (v53 & 0x40) != 0)
          {
            v54 = 0;
            v55 = 0;
            v56 = 3;
          }

          else
          {
            v54 = v53 >> 7;
            v55 = (v53 >> 6) & 1;
            if ((v53 & 0x3E) != 0)
            {
              v56 = v53 & 0x3F;
            }

            else
            {
              v56 = 1;
            }
          }

          v82 = v48 + ((2 * v47) & 4);
          v83 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[(v45 >> 28) & 3 | v82];
          if (v13 >= 0x10 && (v83 & 0x40) != 0)
          {
            v84 = 3;
          }

          else
          {
            v54 |= v83 >> 7;
            v55 |= (v83 >> 6) & 1;
            v10 = v119;
            v84 = v83 & 0x3F;
          }

          if (v56 <= v84)
          {
            v56 = v84;
          }

          v85 = v48 + ((v17 >> 25) & 4);
          v86 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[v85 | (v45 >> 30)];
          if (v13 >= 0x10 && (v86 & 0x40) != 0)
          {
            v87 = 3;
          }

          else
          {
            v54 |= v86 >> 7;
            v55 |= (v86 >> 6) & 1;
            v87 = v86 & 0x3F;
          }

          v88 = v52 >> 1;
          v89 = v82 >> 1;
          if (v56 <= v87)
          {
            v90 = v87;
          }

          else
          {
            v90 = v56;
          }

          v69 = v88 + v89 + (v85 >> 1) + 6;
          if (v33)
          {
            v50 = v49 + 98;
            v81 = (v45 >> 26) & 3;
          }

          else
          {
            v81 = 3;
          }

LABEL_200:
          v25 = v54 | v2;
          v28 = v55 | v4;
          if (v3 <= v90)
          {
            v62 = v90;
          }

          else
          {
            v62 = v3;
          }

          if (v69 > 0x12)
          {
            v27 = 3;
            v11 = result[14];
            goto LABEL_66;
          }

          v11 = result[14];
          goto LABEL_206;
        }

        v75 = (v51 | (v17 >> 27) & 3) + v48;
        v76 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[v75];
        if (v13 >= 0x10 && (v76 & 0x40) != 0)
        {
          v77 = 0;
          v78 = 0;
          v79 = 3;
        }

        else
        {
          v77 = v76 >> 7;
          v78 = (v76 >> 6) & 1;
          if ((v76 & 0x3E) != 0)
          {
            v79 = v76 & 0x3F;
          }

          else
          {
            v79 = 1;
          }

          v10 = v119;
        }

        v104 = v48 + ((2 * v47) & 4);
        v105 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[v104 | (v45 >> 30)];
        if (v13 >= 0x10 && (v105 & 0x40) != 0)
        {
          v106 = 3;
        }

        else
        {
          v77 |= v105 >> 7;
          v78 |= (v105 >> 6) & 1;
          v106 = v105 & 0x3F;
        }

        v107 = (v75 >> 1) & 0x7FFFFFFE;
        if (v79 <= v106)
        {
          v108 = v106;
        }

        else
        {
          v108 = v79;
        }

        v69 = v107 + (v104 >> 1) + 4;
        v109 = v33 == 0;
        if (v33)
        {
          v81 = (v45 >> 28) & 3;
        }

        else
        {
          v81 = 3;
        }

        if (!v109)
        {
          v50 = v49 + 98;
        }

        v25 = v77 | v2;
        v28 = v78 | v4;
        if (v3 <= v108)
        {
          v62 = v108;
        }

        else
        {
          v62 = v3;
        }

LABEL_206:
        if (v50 < ((13 * v69 + 4) / 5u))
        {
          v27 = 3;
          goto LABEL_66;
        }

        if (v81 == 3)
        {
          v27 = v62;
        }

        else
        {
          v27 = 3;
        }

LABEL_211:
        if (result[8] >= v21 && result[9] >= v20 && result[10])
        {
          goto LABEL_66;
        }

        v3 = 3;
LABEL_71:
        ++v14;
        if (!--v15)
        {
          goto LABEL_215;
        }
      }

      v61 = ProcessCEM(unsigned int,BOOL,unsigned int &,unsigned int &,unsigned int &)::table[(v17 >> 13) & 0xF];
      if (v13 >= 0x10 && (v61 & 0x40) != 0)
      {
        if (v3 <= 3)
        {
          v62 = 3;
        }

        else
        {
          v62 = v3;
        }

        v25 = v2;
        v28 = v4;
      }

      else
      {
        v25 = v2 | (v61 >> 7);
        v28 = v4 | (v61 >> 6) & 1;
        v68 = v61 & 0x3F;
        if (v3 <= v68)
        {
          v62 = v68;
        }

        else
        {
          v62 = v3;
        }
      }

      v69 = ((v17 >> 14) & 6) + 2;
      if (!v33)
      {
        v71 = 111;
LABEL_134:
        v50 = v71 - v38;
        v81 = 3;
        goto LABEL_206;
      }

      v70 = 109;
      goto LABEL_132;
    }

LABEL_215:
    if (v3 >= 3 && v2 == 1 && (!*(result + 80) || v4 == 1))
    {
      break;
    }

    v12 += v10;
    if (++v8 == v7)
    {
      goto LABEL_222;
    }
  }

  LODWORD(v2) = 1;
  do
  {
LABEL_222:
    explicit = atomic_load_explicit(result, memory_order_acquire);
    if (explicit <= v2)
    {
      v111 = v2;
    }

    else
    {
      v111 = explicit;
    }

    v112 = explicit;
    atomic_compare_exchange_strong_explicit(result, &v112, v111, memory_order_release, memory_order_relaxed);
  }

  while (v112 != explicit);
  do
  {
    v113 = atomic_load_explicit(result + 2, memory_order_acquire);
    if (v113 <= v4)
    {
      v114 = v4;
    }

    else
    {
      v114 = v113;
    }

    v115 = v113;
    atomic_compare_exchange_strong_explicit(result + 2, &v115, v114, memory_order_release, memory_order_relaxed);
  }

  while (v115 != v113);
  do
  {
    v116 = atomic_load_explicit(result + 1, memory_order_acquire);
    if (v116 <= v3)
    {
      v117 = v3;
    }

    else
    {
      v117 = v116;
    }

    v118 = v116;
    atomic_compare_exchange_strong_explicit(result + 1, &v118, v117, memory_order_release, memory_order_relaxed);
  }

  while (v118 != v116);
  return result;
}

uint64_t ASTCEncoder::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (((v3[1].i32[0] ^ v2[1].i32[0]) & 0x7FFLL) != 0)
  {
    return 0;
  }

  if (((v3[1].i32[2] ^ v2[1].i32[2]) & 0x7FFLL) != 0)
  {
    return 0;
  }

  v4 = v2[2].i32[0];
  if (v4 != v3[2].i32[0])
  {
    return 0;
  }

  v5 = v2[2].i32[1];
  if (v5 != v3[2].i32[1])
  {
    return 0;
  }

  if (v4 != 1 && v5 == 1)
  {
    return vminvq_u32(vceqq_f32(*v2, *v3)) >> 31;
  }

  else
  {
    return 1;
  }
}

void *memset_pattern1(void *a1, unsigned __int8 *a2, size_t a3)
{
  return memset(a1, *a2, a3);
}

{
  return memset(a1, *a2, a3);
}

void memset_pattern2(void *a1, _WORD *a2, size_t a3)
{
  __pattern4[0] = *a2;
  __pattern4[1] = __pattern4[0];
  memset_pattern4(a1, __pattern4, a3);
}

{
  __pattern4[0] = *a2;
  __pattern4[1] = __pattern4[0];
  memset_pattern4(a1, __pattern4, a3);
}

uint64_t ASTCEncoder::DecompressTexels(ASTCEncoder *this, const at_block_buffer_t *a2, const at_texel_region_t *a3, at_flags_t a4)
{
  v4 = a4;
  if (!*(this + 12))
  {
    PartitionTables2D = allocatePartitionTables2D(*(this + 4), *(this + 5));
    v9 = 0;
    atomic_compare_exchange_strong(this + 12, &v9, PartitionTables2D);
    if (v9)
    {
      free(PartitionTables2D);
    }
  }

  v10 = (*(*this + 56))(this, *&a3->validSize.x, a3->validSize.z);
  v12 = v11;
  v48 = 0u;
  v49 = 0u;
  v13 = *(this + 1);
  v14 = *(this + 2);
  v15 = *v13;
  texels = a3->texels;
  v17 = *&a3->validSize.x;
  v30 = 0;
  v31 = texels;
  rowBytes = a2->rowBytes;
  blocks = a2->blocks;
  v33 = 0;
  v34 = v17;
  z = a3->validSize.z;
  v36 = v14;
  v37 = *(this + 6);
  v19 = *(v13 + 2);
  v20 = (v19 >> 34) & 0x1F;
  LODWORD(v19) = (v19 >> 26) & 0xF;
  LODWORD(v17) = *(this + 4);
  v21 = HIDWORD(v10);
  v50 = 0;
  v29 = v15;
  v38 = v20 / v19;
  v39 = (v19 + v20 * v17 - 1) / v19;
  v40 = *&a3->rowBytes;
  v41 = rowBytes;
  v42 = 0;
  v43 = 0;
  v44 = HIDWORD(v10);
  v45 = v17 * v10 != a3->validSize.x;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  *&v47[3] = *(this + 12);
  v47[5] = (v4 >> 5) & 1;
  v22 = (*(*this + 96))(this);
  v23 = 0;
  if (v22 >= 0x11)
  {
    v23 = (*(*this + 96))(this) < 0x1F;
  }

  global_queue = 0;
  v47[6] = v23;
  memset(&v47[7], 0, 40);
  v48 = *(this + 4);
  *&v49 = *(this + 10);
  *(&v49 + 1) = &v50;
  if ((v4 & 4) == 0 && v10 >> 33)
  {
    v25 = qos_class_self();
    global_queue = dispatch_get_global_queue(v25, 0);
  }

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (global_queue)
      {
        dispatch_apply_f(v21, global_queue, &v29, DecodeRow);
      }

      else if (v21)
      {
        for (j = 0; j != v21; ++j)
        {
          DecodeRow(&v29, j);
        }
      }

      v31 += *(&v40 + 1);
      blocks += v42;
      z -= *(this + 6);
      LODWORD(v46) = i;
    }
  }

  return v50;
}

uint64_t DecodeRow(uint64_t result, uint64_t a2)
{
  v5 = result;
  v25 = *MEMORY[0x29EDCA608];
  v6 = result + 88;
  v7 = (*(result + 32) + *(result + 104) * a2);
  v9 = *(result + 60);
  v8 = *(result + 64);
  v10 = *(result + 24) + v8 * a2 * *(result + 88);
  v11 = *(result + 48);
  v12 = *(result + 52) - v8 * a2;
  if (v12 >= v8)
  {
    v12 = *(result + 64);
  }

  v19 = v12;
  if (v11 >= v9)
  {
    do
    {
      bzero(v21, 0xA50uLL);
      v24 = *(v5 + 160);
      v20 = *v7;
      v2 = v2 & 0xFFFFFFFF00000000 | *(v5 + 68);
      v13 = (*(v5 + 208))(&v20, *(v5 + 60), v2, *(v5 + 152), v21);
      if (!v22)
      {
        v23 = *v5;
        v3 = v3 & 0xFFFFFFFF00000000 | *(v5 + 68);
        (*(v5 + 224))(*(v5 + 60), v3, v21);
      }

      v4 = v4 & 0xFFFFFFFF00000000 | *(v5 + 68);
      result = (*(v5 + 216))(v21, *(v5 + 60), v4, v10, *(v5 + 60), v19, v6, *(v5 + 96));
      v14 = *(v5 + 80);
      if (v13)
      {
        v15 = *(v5 + 232);
        if (!*v15)
        {
          *v15 = v13;
        }
      }

      v10 += v14;
      ++v7;
      v11 -= v9;
    }

    while (v11 >= v9);
  }

  if (v11)
  {
    bzero(v21, 0xA50uLL);
    v24 = *(v5 + 160);
    v20 = *v7;
    v16 = (*(v5 + 208))(&v20, *(v5 + 60), *(v5 + 68), *(v5 + 152), v21);
    if (!v22)
    {
      v23 = *v5;
      (*(v5 + 224))(*(v5 + 60), *(v5 + 68), v21);
    }

    result = (*(v5 + 216))(v21, *(v5 + 60), *(v5 + 68), v10, v11, v19, v6, *(v5 + 96));
    if (v16)
    {
      v17 = *(v5 + 232);
      if (!*v17)
      {
        *v17 = v16;
      }
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v4 = result;
  v28 = *MEMORY[0x29EDCA608];
  v5 = result + 88;
  v6 = *(result + 32) + *(result + 104) * a2;
  v8 = *(result + 60);
  v7 = *(result + 64);
  v9 = *(result + 24) + v7 * a2 * *(result + 88);
  v10 = *(result + 48);
  v11 = *(result + 52) - v7 * a2;
  if (v11 >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v10 >= v8)
  {
    do
    {
      bzero(v22, 0xA50uLL);
      v13 = *(v4 + 172);
      v25 = *(v4 + 168);
      v26 = v13 != 0;
      v27 = v13;
      v14 = (*(v4 + 216))(v6, v22);
      if (!v23)
      {
        v24 = *v4;
        v2 = v2 & 0xFFFFFFFF00000000 | *(v4 + 68);
        (*(v4 + 232))(*(v4 + 60), v2, v22);
      }

      v3 = v3 & 0xFFFFFFFF00000000 | *(v4 + 68);
      result = (*(v4 + 224))(v22, *(v4 + 60), v3, v9, *(v4 + 60), v12, v5, *(v4 + 96));
      v15 = *(v4 + 80);
      v16 = *(v4 + 120);
      if (v14)
      {
        v17 = *(v4 + 240);
        if (!*v17)
        {
          *v17 = v14;
        }
      }

      v9 += v15;
      v6 += v16;
      v10 -= v8;
    }

    while (v10 >= v8);
  }

  if (v10)
  {
    bzero(v22, 0xA50uLL);
    v18 = *(v4 + 172);
    v25 = *(v4 + 168);
    v26 = v18 != 0;
    v27 = v18;
    v19 = (*(v4 + 216))(v6, v22);
    if (!v23)
    {
      v24 = *v4;
      (*(v4 + 232))(*(v4 + 60), *(v4 + 68), v22);
    }

    result = (*(v4 + 224))(v22, *(v4 + 60), *(v4 + 68), v9, v10, v12, v5, *(v4 + 96));
    if (v19)
    {
      v20 = *(v4 + 240);
      if (!*v20)
      {
        *v20 = v19;
      }
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PrintBlock(uint64_t a1)
{
  printf("Block: %p\n", a1);
  puts("\tred:");
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 192);
  v20 = *(a1 + 176);
  v21 = v4;
  v18 = v2;
  v19 = v3;
  print_vector(&v18);
  puts("\tgreen:");
  v5 = *(a1 + 208);
  v6 = *(a1 + 224);
  v7 = *(a1 + 256);
  v20 = *(a1 + 240);
  v21 = v7;
  v18 = v5;
  v19 = v6;
  print_vector(&v18);
  puts("\tblue:");
  v8 = *(a1 + 272);
  v9 = *(a1 + 288);
  v10 = *(a1 + 320);
  v20 = *(a1 + 304);
  v21 = v10;
  v18 = v8;
  v19 = v9;
  print_vector(&v18);
  puts("\talpha:");
  v11 = *(a1 + 336);
  v12 = *(a1 + 352);
  v13 = *(a1 + 384);
  v20 = *(a1 + 368);
  v21 = v13;
  v18 = v11;
  v19 = v12;
  print_vector(&v18);
  puts("\tluminance:");
  v14 = *(a1 + 656);
  v15 = *(a1 + 672);
  v16 = *(a1 + 704);
  v20 = *(a1 + 688);
  v21 = v16;
  v18 = v14;
  v19 = v15;
  print_vector(&v18);
  puts("\talphaIsZero:");
  printf("%s0x%8.8x  0x%8.8x  0x%8.8x  0x%8.8x\n%s0x%8.8x  0x%8.8x  0x%8.8x  0x%8.8x\n%s0x%8.8x  0x%8.8x  0x%8.8x  0x%8.8x\n%s0x%8.8x  0x%8.8x  0x%8.8x  0x%8.8x\n", "\t\t", *(a1 + 720), HIDWORD(*(a1 + 720)), *(a1 + 728), HIDWORD(*(a1 + 720)), "\t\t", *(a1 + 736), HIDWORD(*(a1 + 736)), *(a1 + 744), HIDWORD(*(a1 + 736)), "\t\t", *(a1 + 752), HIDWORD(*(a1 + 752)), *(a1 + 760), HIDWORD(*(a1 + 752)), "\t\t", *(a1 + 768), HIDWORD(*(a1 + 768)), *(a1 + 776), HIDWORD(*(a1 + 768)));
  printf("\tsaturation:   %f\n", *(a1 + 124));
  printf("\talphaZeroMask: 0x%4.4x\n", *(a1 + 784));
  printf("\talphaZeroCount: %d\n", *(a1 + 134));
  printf("\talphaIsOneEverywhere: %d\n", *(a1 + 136));
  printf("\tblock size: 0x%3.3x\n", *(a1 + 132));
  printf("\toriginal block: %p\n", *(a1 + 40));
  return printf("\tisNotPremultiplied: %d\n", *(a1 + 135));
}

float my_meanv(const float *a1, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = 0.0;
    v5 = a4;
    do
    {
      v4 = v4 + *a1;
      a1 += a2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0.0;
  }

  result = v4 / a4;
  *a3 = result;
  return result;
}

double ATEncoderCompressTexels_BlockBufferIsNotWritable(const at_block_buffer_t *a1, const at_size_t *a2, uint64_t a3)
{
  v3 = a2->x - 1;
  blocks = a1->blocks;
  v5 = a1->rowBytes * (a2->y - 1);
  v6 = a1->sliceBytes * (a2->z - 1);
  result = 0.0;
  if (a3 == 16)
  {
    *blocks = 0u;
    *(&blocks[v3] + v5 + v6) = 0u;
  }

  else
  {
    *blocks = 0;
    *(blocks + 8 * v3 + v5 + v6) = 0;
  }

  return result;
}

_BYTE *ATEncoderDecompressTexels_TexelBufferIsNotWritable(const at_texel_region_t *a1, int a2)
{
  texels = a1->texels;
  v3 = a1->texels + ((a1->validSize.x * a2 + 7) >> 3) + a1->rowBytes * (a1->validSize.y - 1) + a1->sliceBytes * (a1->validSize.z - 1) - 1;
  *texels = 0;
  return ATEncoderDecompressTexels_TexelBufferIsNotBigEnoughOrNotWritable(v3);
}

float ATEncoderDecompressTexels_BlockBufferIsNotReadable(const at_block_buffer_t *a1, const at_size_t *a2, uint64_t a3)
{
  v3 = a2->x - 1;
  blocks = a1->blocks;
  v5 = a1->rowBytes * (a2->y - 1);
  v6 = a1->sliceBytes * (a2->z - 1);
  if (a3 == 16)
  {
    LODWORD(result) = vorrq_s8(*(&blocks[v3] + v5 + v6), *blocks).u32[0];
  }

  else
  {
    LODWORD(result) = vorr_s8(*&blocks->i8[8 * v3 + v5 + v6], *blocks->i8).u32[0];
  }

  return result;
}

at_error_t at_encoder_decompress_texels(at_encoder_t encoder, const at_block_buffer_t *src, const at_texel_region_t *dest, at_flags_t flags)
{
  v5 = dest;
  p_validSize = &dest->validSize;
  if ((flags & 0x10) != 0)
  {
    rowBytes = dest->rowBytes;
    sliceBytes = dest->sliceBytes;
    v11 = *&p_validSize->x;
    z = dest->validSize.z;
    p_validSize = &v43;
    v42 = dest->texels + rowBytes * (dest->validSize.y - 1);
    v43 = v11;
    v44 = z;
    v45 = -rowBytes;
    v46 = sliceBytes;
    v5 = &v42;
  }

  v13 = encoder + 10;
  v14 = (*(encoder[10].isa + 7))(encoder + 10, *&v5->validSize.x, p_validSize->z);
  if (flags)
  {
    return (*(v13->isa + 17))(encoder + 10, src, v5, flags);
  }

  if ((flags & 0xFFFFFFFFFFFFFFC0) == 0)
  {
    v17 = v14;
    v18 = v15;
    v19 = HIDWORD(v14);
    if (HIDWORD(v14))
    {
      v20 = v14 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20 || v15 == 0)
    {
      if ((flags & 2) != 0)
      {
        v22 = *MEMORY[0x29EDCA610];
        v23 = "at_encoder_decompress_texels error:  A member of dest->validSize is zero.\n";
        v24 = 74;
LABEL_18:
        fwrite(v23, v24, 1uLL, v22);
      }
    }

    else
    {
      if ((HIDWORD(v14) | v14) >> 24)
      {
        if ((flags & 2) != 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "at_encoder_decompress_texels error: Exceeded capabilites of ASTC specification. Too many blocks->\n\tno more than 2**24-1 blocks may be present in any dimension {%u, %u, %u}\n");
        }

        return -1;
      }

      if (v19 != 1)
      {
        v29 = src->rowBytes;
        if (v29 < 0)
        {
          v29 = -v29;
        }

        if (v29 < (*(v13->isa + 9))(encoder + 10) * v14)
        {
          if ((flags & 2) != 0)
          {
            v30 = v5->rowBytes;
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_decompress_texels error: consecutive block rows alias.\n\t src->rowBytes %lu is too small for %u blocks->\n");
          }

          return -1;
        }

        v31 = v5->rowBytes;
        if (v31)
        {
          v32 = v31 >= 0 ? v5->rowBytes : -v31;
          if (v32 < ((encoder[6].isa >> 34) & 0x1F) * p_validSize->x * ((encoder[6].isa >> 26) & 0xF))
          {
            if ((flags & 2) != 0)
            {
              v40 = v5->rowBytes;
              fprintf(*MEMORY[0x29EDCA610], "at_encoder_decompress_texels error: consecutive texel rows alias.\n\t dest->rowBytes %lu is too small for %u blocks->\n");
            }

            return -1;
          }
        }
      }

      if (v18 >= 2)
      {
        v25 = v5->rowBytes;
        v26 = v5->sliceBytes;
        if (v26 >= 0)
        {
          v27 = v5->sliceBytes;
        }

        else
        {
          v27 = -v26;
        }

        if (v25 >= 0)
        {
          v28 = v5->rowBytes;
        }

        else
        {
          v28 = -v25;
        }

        if (v27 < v28 * v19)
        {
          if ((flags & 2) != 0)
          {
            v39 = v5->sliceBytes;
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_decompress_texels error: consecutive block slices alias.\n\t src->sliceBytes %lu is too small for %u rows * dest->rowBytes.\n");
          }

          return -1;
        }

        v33 = src->sliceBytes;
        if (v33)
        {
          if (v33 < 0)
          {
            v33 = -v33;
          }

          v34 = src->rowBytes;
          if (v34 < 0)
          {
            v34 = -v34;
          }

          if (v33 < v34 * v17)
          {
            if ((flags & 2) != 0)
            {
              v41 = v5->rowBytes;
              fprintf(*MEMORY[0x29EDCA610], "at_encoder_decompress_texels error: consecutive texel slices alias.\n\t dest->sliceBytes %lu is too small for %u block rows.\n");
            }

            return -1;
          }
        }
      }

      v35 = (*(v13->isa + 12))(encoder + 10);
      if ((GetBlockInfo(v35) & 0x1000000) == 0)
      {
        goto LABEL_55;
      }

      v36 = (*(v13->isa + 10))(encoder + 10);
      if ((GetTexelInfo(v36) & 0x1000000) == 0)
      {
        if ((flags & 2) == 0)
        {
          return -1;
        }

        v22 = *MEMORY[0x29EDCA610];
        v23 = "at_encoder_decompress_texels error: fp16 or snorm block format without floating-point texel format.\n";
        v24 = 100;
        goto LABEL_18;
      }

      v37 = (*(v13->isa + 10))(encoder + 10);
      TexelInfo = GetTexelInfo(v37);
      if (flags < at_flags_srgb_linear_texels || (TexelInfo & 0x400000) == 0)
      {
LABEL_55:
        ATEncoderDecompressTexels_TexelBufferIsNotWritable(v5, (encoder[6].isa >> 31) & 0xF8);
        if ((*(encoder[10].isa + 12))(encoder + 10) >= 0x21 && (*(v13->isa + 12))(encoder + 10) <= 0x2A)
        {
          (*(v13->isa + 9))(encoder + 10);
        }

        return (*(v13->isa + 17))(encoder + 10, src, v5, flags);
      }

      if ((flags & 2) != 0)
      {
        v22 = *MEMORY[0x29EDCA610];
        v23 = "at_encoder_decompress_texels error: cannot use at_flags_srgb_linear_texels with fp16 or signed block format.\n";
        v24 = 109;
        goto LABEL_18;
      }
    }

    return -1;
  }

  if ((flags & 2) != 0)
  {
    fprintf(*MEMORY[0x29EDCA610], "at_encoder_decompress_texels error: unknown or unsupported flags bit: 0x%8.8llx\n", flags & 0xFFFFFFFFFFFFFFC0);
  }

  return -4;
}

uint64_t at_encoder_set_capabilities_mask(uint64_t a1)
{
  v1 = gCapabilitiesMask;
  gCapabilitiesMask = ~a1;
  return ~v1;
}

uint64_t ATEncoder_IsEqual(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 80;
  v4 = (*(*(a1 + 80) + 16))(a1 + 80);
  v6 = *(a2 + 80);
  v5 = a2 + 80;
  if (v4 != (*(v6 + 16))(v5))
  {
    return 0;
  }

  v7 = *(*v3 + 24);

  return v7(v3, v5);
}

uint64_t ATEncoder_GetDescription(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  __size = v2;
  v4 = v3;
  v5 = v1;
  v24 = *MEMORY[0x29EDCA608];
  v6 = v1 + 80;
  v7 = (*(*(v1 + 80) + 80))(v1 + 80);
  if ((v7 - 1) > 9)
  {
    v8 = "<unknown>";
  }

  else
  {
    v8 = off_29EE99018[v7 - 1];
  }

  v9 = (*(*v6 + 96))(v6);
  if ((v9 - 1) > 0x29)
  {
    v10 = "<unknown>";
  }

  else
  {
    v10 = off_29EE99068[v9 - 1];
  }

  if ((*(*v6 + 88))(v6) > 1 || (*(*v6 + 88))(v6))
  {
    if ((*(*v6 + 88))(v6) > 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = (*(*v6 + 88))(v6);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = ATEncoder_GetDescription::kAlphaNames[v11];
  if ((*(*v6 + 104))(v6) > 1 || (*(*v6 + 104))(v6))
  {
    if ((*(*v6 + 104))(v6) > 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = (*(*v6 + 104))(v6);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = ATEncoder_GetDescription::kAlphaNames[v13];
  v15 = (*(*(v5 + 80) + 64))(v6);
  v17 = v16;
  v18 = (*(*(v5 + 80) + 72))(v6);
  snprintf(v23, 0x400uLL, "\ttexel  format:    %s\n\tblock  format:    %s\n\ttexel  alpha:     %s\n\tblock  alpha:     %s\n\tblock size:       %u x %u x %u\n\tchannel count:    %u\n\tcolor chan count: %u\n\ttexel bits:       %u  (before compression)\n\tbit rate:         %3.3f bits per compressed texel\n\tblock size:       %u bits\n\tbackground color: %f %f %f %f\n", v8, v10, v12, v14, v15, HIDWORD(v15), v17, WORD1(*(v5 + 48)) & 7, (*(v5 + 48) >> 19) & 7, (*(v5 + 48) >> 31) & 0xF8, ((v18 * 8.0) / (v17 * v15 * HIDWORD(v15))), 8 * v18, COERCE_FLOAT(*(v5 + 32)), COERCE_FLOAT(HIDWORD(*(v5 + 32))), COERCE_FLOAT(*(v5 + 40)), COERCE_FLOAT(HIDWORD(*(v5 + 32))));
  (*(*(v5 + 80) + 40))(v6, v22, 4096);
  LODWORD(result) = snprintf(v4, __size, "%s\n%s", v23, v22);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

double D3DX_BC6H::RoughMSE(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v17[16] = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 6);
  v4 = a2 + (v3 << 6) + 16;
  v5 = bc6_modeinfo[20 * *(a2 + 5) + 1];
  v6 = a2 + 2064;
  v7 = &bc67_partitionTable[1024 * v5 + 16 * v3];
  do
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v2 == v7[v8])
      {
        v17[v9++] = v8;
      }

      ++v8;
    }

    while (v8 != 16);
    if (v9 == 1)
    {
      v11 = (v6 + 16 * v17[0]);
      *(v4 + 32 * v2) = *v11;
    }

    else
    {
      if (v9 != 2)
      {
        OptimizeRGB(*(a2 + 8), v16, v15, v9, v17);
        abort();
      }

      v10 = v17[1];
      *(v4 + 32 * v2) = *(v6 + 16 * v17[0]);
      v11 = (v6 + 16 * v10);
    }

    *(v4 + 32 * v2 + 16) = *v11;
  }

  while (v2++ != v5);
  v13 = *MEMORY[0x29EDCA608];
  return 0.0;
}

uint64_t D3DX_BC6H::Refine(uint64_t a1, float *a2)
{
  v54 = *MEMORY[0x29EDCA608];
  v4 = &bc6_modeinfo[20 * *(a2 + 5)];
  v5 = v4[1];
  v6 = v4[2];
  D3DX_BC6H::QuantizeEndPts(a1, a2, &v48);
  D3DX_BC6H::AssignIndices(v7, a2, v48.i8, v43, &v53);
  D3DX_BC6H::SwapIndices(a2, &v48, v43);
  if (v6 == 1)
  {
    v41 = v49;
    v39 = v51;
    v40 = v50;
    v49 = vsubq_s32(v49, v48);
    v50 = vsubq_s32(v50, v48);
    v51 = vsubq_s32(v51, v48);
    result = D3DX_BC6H::EndPointsFit(a2, v48.i8);
    if ((result & 1) == 0)
    {
      goto LABEL_30;
    }

    v9 = &bc6_modeinfo[20 * *(a2 + 5)];
    v10 = *(a2 + 4);
    v11.i32[0] = v9[4];
    v11.i32[1] = v9[5];
    v12 = vshl_u32(-1, v11);
    *v13.i8 = vmvn_s8(v12);
    v14 = v9[6];
    v15 = -1 << v14;
    v13.i64[1] = ~(-1 << v14);
    v16 = vandq_s8(v41, v13);
    v17 = vandq_s8(v40, v13);
    v49 = v16;
    v50 = v17;
    v18 = vandq_s8(v39, v13);
    v51 = v18;
    if (v10 == 1)
    {
      v19 = vshl_u32(0x100000001, vadd_s32(v11, -1));
      *v20.i8 = vorr_s8(vbic_s8(v12, vceqz_s32(vand_s8(*v16.i8, v19))), *v16.i8);
      v20.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
      v21 = 1 << (v14 - 1);
      if ((v16.i32[2] & v21) != 0)
      {
        v22 = v15;
      }

      else
      {
        v22 = 0;
      }

      v20.i32[2] = v22 | v16.i32[2];
      *v23.i8 = vorr_s8(vbic_s8(v12, vceqz_s32(vand_s8(*v17.i8, v19))), *v17.i8);
      v23.i64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
      if ((v17.i32[2] & v21) != 0)
      {
        v24 = v15;
      }

      else
      {
        v24 = 0;
      }

      v23.i32[2] = v24 | v17.i32[2];
      v49 = v20;
      v50 = v23;
      *v25.i8 = vorr_s8(vbic_s8(v12, vceqz_s32(vand_s8(*v18.i8, v19))), *v18.i8);
      v25.i64[1] = vextq_s8(v18, v18, 8uLL).u64[0];
      if ((v18.i32[2] & v21) == 0)
      {
        v15 = 0;
      }

      v25.i32[2] = v15 | v18.i32[2];
      v51 = v25;
    }
  }

  else
  {
    result = D3DX_BC6H::EndPointsFit(a2, v48.i8);
    if ((result & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v26 = &v53;
  D3DX_BC6H::OptimizeEndPoints(result, a2, &v53, &v48, &v44);
  v27 = &v52;
  D3DX_BC6H::AssignIndices(v28, a2, v44.i8, v42, &v52);
  D3DX_BC6H::SwapIndices(a2, &v44, v42);
  v29 = v5 + 1;
  v30 = 0.0;
  v31 = 0.0;
  do
  {
    v32 = *v26++;
    v31 = v31 + v32;
    v33 = *v27++;
    v30 = v30 + v33;
    --v29;
  }

  while (v29);
  if (v6)
  {
    v45 = vsubq_s32(v45, v44);
    v46 = vsubq_s32(v46, v44);
    v47 = vsubq_s32(v47, v44);
  }

  result = D3DX_BC6H::EndPointsFit(a2, v44.i8);
  v34 = *a2;
  if (result)
  {
    if (v30 < v31 && v30 < v34)
    {
      *a2 = v30;
      v36 = &v44;
      v37 = v42;
LABEL_29:
      result = D3DX_BC6H::EmitBlock(a1, a2, v36, v37);
      goto LABEL_30;
    }
  }

  if (v31 < v34)
  {
    if (v6)
    {
      v49 = vsubq_s32(v49, v48);
      v50 = vsubq_s32(v50, v48);
      v51 = vsubq_s32(v51, v48);
    }

    *a2 = v31;
    v36 = &v48;
    v37 = v43;
    goto LABEL_29;
  }

LABEL_30:
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t D3DX_BC6H::Quantize(uint64_t this, int a2, int a3)
{
  if (a3)
  {
    if (this >= 0)
    {
      v3 = this;
    }

    else
    {
      v3 = -this;
    }

    if (a2 <= 15)
    {
      v4 = (2216757315 * (v3 << (a2 - 1))) >> 32;
      v3 = (v4 >> 14) + (v4 >> 31);
    }

    if (this >= 0)
    {
      return v3;
    }

    else
    {
      return -v3;
    }
  }

  else if (a2 <= 14)
  {
    return ((this << a2) / 31744);
  }

  return this;
}

uint64_t D3DX_BC6H::FinishUnquantize(D3DX_BC6H *this, int a2)
{
  v2 = (31 * this) >> 5;
  if (this < 0)
  {
    v2 = -((-31 * this) >> 5);
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return ((31 * this) >> 6);
  }
}

BOOL D3DX_BC6H::EndPointsFit(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 4);
  v4 = *a2;
  v5 = *a2;
  if (v5)
  {
    if (v5 < 1)
    {
      v6 = 1;
      while (v5 != -1)
      {
        v5 >>= 1;
        ++v6;
      }
    }

    else
    {
      v6 = *(a1 + 4);
      do
      {
        ++v6;
        v7 = v5 >= 2;
        v5 = v5 >> 1;
      }

      while (v7);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = &bc6_modeinfo[20 * *(a1 + 5)];
  v9 = HIDWORD(*a2);
  if (DWORD1(v4))
  {
    if (SDWORD1(v4) < 1)
    {
      v10 = 1;
      while (v9 != -1)
      {
        v9 >>= 1;
        ++v10;
      }
    }

    else
    {
      v10 = *(a1 + 4);
      do
      {
        ++v10;
        v7 = v9 >= 2;
        v9 = v9 >> 1;
      }

      while (v7);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v8[2];
  v12 = DWORD2(*(a2 + 8));
  if (DWORD2(v4))
  {
    if (SDWORD2(v4) < 1)
    {
      v13 = 1;
      while (v12 != -1)
      {
        v12 >>= 1;
        ++v13;
      }
    }

    else
    {
      v13 = *(a1 + 4);
      do
      {
        ++v13;
        v7 = v12 >= 2;
        v12 = v12 >> 1;
      }

      while (v7);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = a2[1];
  v15 = v14;
  v16 = v3 | v11;
  if (v14)
  {
    if (v14 < 1)
    {
      v17 = 1;
      while (v15 != -1)
      {
        v15 >>= 1;
        ++v17;
      }
    }

    else
    {
      v17 = v3 | v11;
      do
      {
        ++v17;
        v7 = v15 >= 2;
        v15 = v15 >> 1;
      }

      while (v7);
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = HIDWORD(*(a2 + 2));
  if (DWORD1(v14))
  {
    if (SDWORD1(v14) < 1)
    {
      v19 = 1;
      while (v18 != -1)
      {
        v18 >>= 1;
        ++v19;
      }
    }

    else
    {
      v19 = v16;
      do
      {
        ++v19;
        v7 = v18 >= 2;
        v18 = v18 >> 1;
      }

      while (v7);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = DWORD2(*(a2 + 24));
  if (DWORD2(v14))
  {
    if (SDWORD2(v14) < 1)
    {
      v21 = 1;
      while (v20 != -1)
      {
        v20 >>= 1;
        ++v21;
      }
    }

    else
    {
      v21 = v16;
      do
      {
        ++v21;
        v7 = v20 >= 2;
        v20 = v20 >> 1;
      }

      while (v7);
    }
  }

  else
  {
    v21 = 0;
  }

  result = 0;
  if (v6 <= v8[4] && v17 <= v8[8] && v10 <= v8[5] && v19 <= v8[9] && v13 <= v8[6] && v21 <= v8[10])
  {
    if (*(a1 + 5) - 10 < 4)
    {
      return 1;
    }

    v23 = NBits(*(a2 + 8), v16);
    v24 = NBits(*(a2 + 9), v16);
    v25 = NBits(*(a2 + 10), v16);
    v26 = NBits(*(a2 + 12), v16);
    v27 = NBits(*(a2 + 13), v16);
    v28 = NBits(*(a2 + 14), v16);
    if (v23 <= v8[12] && v26 <= v8[16] && v24 <= v8[13] && v27 <= v8[17] && v25 <= v8[14] && v28 <= v8[18])
    {
      return 1;
    }
  }

  return result;
}

uint64_t NBits(int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 < 1)
  {
    a2 = 1;
    while (a1 != -1)
    {
      a1 >>= 1;
      a2 = (a2 + 1);
    }
  }

  else
  {
    do
    {
      a2 = (a2 + 1);
      v2 = a1 >= 2;
      a1 = a1 >> 1;
    }

    while (v2);
  }

  return a2;
}

void D3DX_BC6H::GeneratePaletteQuantized(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v7 = &bc6_modeinfo[20 * *(a2 + 5)];
  v33 = v7[3];
  v34 = *a3;
  v8 = v7[4];
  v9 = *(a2 + 4);
  v10 = bc6_Unquantize(*a3, v8, v9);
  v11 = v7[5];
  v12 = bc6_Unquantize(DWORD1(v34), v11, v9);
  v13 = v7[6];
  v14 = bc6_Unquantize(DWORD2(v34), v13, v9);
  v35 = a3[1];
  v15 = bc6_Unquantize(v35, v8, v9);
  v16 = bc6_Unquantize(DWORD1(v35), v11, v9);
  v17 = bc6_Unquantize(DWORD2(v35), v13, v9);
  if (v33 == 3)
  {
    v18 = &bc67_weights3;
LABEL_5:
    v19 = 1 << v33;
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = 64 - v21;
      v23 = ((64 - v21) * v10 + v21 * v15 + 32) >> 6;
      v24 = (31 * v23) >> 6;
      if (v23 < 0)
      {
        v25 = -((-31 * v23) >> 5);
      }

      else
      {
        v25 = (31 * v23) >> 5;
      }

      if (*(a2 + 4) != 1)
      {
        v25 = v24;
      }

      v26 = *a4;
      LODWORD(v26) = v25;
      *a4 = v25;
      v27 = (v22 * v12 + v20 * v16 + 32) >> 6;
      v28 = (31 * v27) >> 6;
      if (v27 < 0)
      {
        v29 = -((-31 * v27) >> 5);
      }

      else
      {
        v29 = (31 * v27) >> 5;
      }

      if (*(a2 + 4) != 1)
      {
        v29 = v28;
      }

      DWORD1(v26) = v29;
      *a4 = v26;
      v30 = (v22 * v14 + v20 * v17 + 32) >> 6;
      v31 = (31 * v30) >> 6;
      if (v30 < 0)
      {
        v32 = -((-31 * v30) >> 5);
      }

      else
      {
        v32 = (31 * v30) >> 5;
      }

      if (*(a2 + 4) != 1)
      {
        v32 = v31;
      }

      DWORD2(v26) = v32;
      *a4++ = v26;
      --v19;
    }

    while (v19);
    return;
  }

  if (v33 == 4)
  {
    v18 = &bc67_weights4;
    goto LABEL_5;
  }

  bzero(a4, 16 << v33);
}

void D3DX_BC6H::MapColorsQuantized(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v23[31] = *MEMORY[0x29EDCA608];
  v7 = bc6_modeinfo[20 * *(a2 + 5) + 3];
  D3DX_BC6H::GeneratePaletteQuantized(a1, a2, a5, v22.i8);
  if (a4)
  {
    v8 = 0;
    v9 = vcvtq_f32_s32(v22);
    v10 = (1 << v7);
    v11 = 0.0;
    do
    {
      v12 = vcvtq_f32_s32(*(a3 + 16 * v8));
      v13 = vsubq_f32(v12, v9);
      v14 = vmulq_f32(v13, v13);
      v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      if (v10 >= 2 && v15 > 0.0)
      {
        v16 = 2;
        v17 = v23;
        do
        {
          v18 = vsubq_f32(v12, vcvtq_f32_s32(*v17));
          v19 = vmulq_f32(v18, v18);
          v20 = vaddv_f32(*v19.f32);
          if ((v19.f32[2] + v20) > v15)
          {
            break;
          }

          if ((v19.f32[2] + v20) < v15)
          {
            v15 = v19.f32[2] + v20;
          }

          if (v16 >= v10)
          {
            break;
          }

          ++v17;
          ++v16;
        }

        while (v15 > 0.0);
      }

      v11 = v11 + v15;
      ++v8;
    }

    while (v8 != a4);
  }

  v21 = *MEMORY[0x29EDCA608];
}

float D3DX_BC6H::PerturbOne(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, _OWORD *a6, _OWORD *a7, int a8, float a9)
{
  if (a5 == 2)
  {
    v12 = &bc6_modeinfo[20 * *(a2 + 5) + 6];
  }

  else if (a5 == 1)
  {
    v12 = &bc6_modeinfo[20 * *(a2 + 5) + 5];
  }

  else
  {
    if (a5)
    {
      v28 = a6[1];
      *a7 = *a6;
      a7[1] = v28;
      return 3.4028e38;
    }

    v12 = &bc6_modeinfo[20 * *(a2 + 5) + 4];
  }

  v13 = 0;
  v14 = *v12;
  v15 = a6[1];
  *a7 = *a6;
  a7[1] = v15;
  v16 = a6[1];
  v36 = *a6;
  v37 = v16;
  v17 = 1 << (v14 - 1);
  v18 = a7 + a5 + 4;
  v19 = 1 << v14;
  v20 = a7 + 4 * a5;
  v32 = v20;
  if (a8)
  {
    v20 = a7 + 4 * a5 + 16;
  }

  v30 = v20;
  do
  {
    v21 = 0;
    v22 = -v17;
    v31 = v17;
    v23 = 2 * v17;
    v24 = -3;
    do
    {
      if (a8)
      {
        v25 = v22 + *v18;
        *(&v37 + a5) = v25;
        if (v25 < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = v22 + *v32;
        *(&v36 + a5) = v25;
        if (v25 < 0)
        {
          goto LABEL_19;
        }
      }

      if (v25 < v19)
      {
        D3DX_BC6H::MapColorsQuantized(a1, a2, a3, a4, &v36);
        v27 = v26 < a9;
        if (v26 < a9)
        {
          a9 = v26;
          v13 = v22;
        }

        v21 |= v27;
      }

LABEL_19:
      v22 += v23;
      v24 += 2;
    }

    while (v24 < 0);
    if (v21)
    {
      *v30 += v13;
    }

    v17 = v31 >> 1;
  }

  while (v31 >= 2);
  return a9;
}

void D3DX_BC6H::OptimizeOne(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, float a7)
{
  v12 = 0;
  *a6 = *a5;
  v13 = a6 + 1;
  a6[1] = a5[1];
  do
  {
    v14 = D3DX_BC6H::PerturbOne(a1, a2, a3, a4, v12, a6, v25, 0, a7);
    v16 = D3DX_BC6H::PerturbOne(v15, a2, a3, a4, v12, a6, &v23, 1, a7);
    if (v14 >= v16)
    {
      if (v16 >= a7)
      {
        goto LABEL_12;
      }

      v17 = 0;
      v18 = &v24;
      v19 = v13;
      a7 = v16;
    }

    else
    {
      if (v14 >= a7)
      {
        goto LABEL_12;
      }

      v17 = 1;
      v18 = v25;
      v19 = a6;
      a7 = v14;
    }

    *(v19 + v12) = *(v18 + v12);
    for (i = D3DX_BC6H::PerturbOne(a1, a2, a3, a4, v12, a6, v22, v17, a7); i < a7; i = D3DX_BC6H::PerturbOne(a1, a2, a3, a4, v12, a6, v22, v17, i))
    {
      a7 = i;
      if (v17)
      {
        v21 = v13;
      }

      else
      {
        v21 = a6;
      }

      *(v21 + v12) = *(&v22[v17 != 0] + v12);
      v17 = 1 - v17;
    }

LABEL_12:
    ++v12;
  }

  while (v12 != 3);
}

void D3DX_BC6H::OptimizeEndPoints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v10 = bc6_modeinfo[20 * *(a2 + 5) + 1];
  v11 = bc67_partitionTable;
  do
  {
    v12 = 0;
    v13 = &v11[16 * *(a2 + 6)];
    for (i = 2064; i != 2320; i += 16)
    {
      v15 = *v13++;
      if (v9 == v15)
      {
        v18[v12++] = *(a2 + i);
      }
    }

    D3DX_BC6H::OptimizeOne(a1, a2, v18, v12, (a4 + 32 * v9), (a5 + 32 * v9), *(a3 + 4 * v9));
    v11 += 1024;
  }

  while (v9++ != v10);
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t D3DX_BC6H::SwapIndices(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = &bc6_modeinfo + 20 * *(result + 5);
  v5 = v4[1];
  v6 = 1 << v4[3];
  v7 = *(result + 6);
  do
  {
    if ((*(a3 + 8 * bc67_fixups[192 * v5 + 3 * v7 + v3]) & (v6 >> 1)) != 0)
    {
      v8 = 0;
      v9 = (a2 + 32 * v3);
      v10 = *v9;
      *v9 = v9[1];
      v9[1] = v10;
      v7 = *(result + 6);
      do
      {
        if (v3 == bc67_partitionTable[1024 * v5 + 16 * v7 + v8])
        {
          *(a3 + 8 * v8) = v6 + ~*(a3 + 8 * v8);
        }

        ++v8;
      }

      while (v8 != 16);
    }
  }

  while (v3++ != v5);
  return result;
}

void D3DX_BC6H::AssignIndices(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _DWORD *a5)
{
  v32 = *MEMORY[0x29EDCA608];
  v9 = &bc6_modeinfo[20 * *(a2 + 5)];
  v10 = v9[1];
  v11 = v9[3];
  v12 = v10 + 1;
  v13 = v31;
  v14 = a5;
  do
  {
    D3DX_BC6H::GeneratePaletteQuantized(a1, a2, a3, v13);
    *v14++ = 0;
    v13 += 16;
    a3 += 2;
    --v12;
  }

  while (v12);
  v15 = 0;
  v16 = a2 + 2064;
  v17 = (1 << v11);
  v18 = &bc67_partitionTable[1024 * v10 + 16 * *(a2 + 6)];
  do
  {
    v19 = v18[v15];
    _S2 = vcvtq_f32_s32(vsubq_s32(*(v16 + 16 * v15), *(v31 + (v19 << 8)))).i32[2];
    __asm { FMLA            S1, S2, V0.S[2] }

    *(a4 + 8 * v15) = 0;
    if (v17 < 2 || _S1 <= 0.0)
    {
      v27 = _S1;
    }

    else
    {
      v26 = 1;
      v27 = _S1;
      do
      {
        _S4 = vcvtq_f32_s32(vsubq_s32(*(v16 + 16 * v15), *(v31 + (v19 << 8) + 16 * v26))).i32[2];
        __asm { FMLA            S2, S4, V3.S[2] }

        if (_S2 < _S1)
        {
          *(a4 + 8 * v15) = v26;
          v27 = _S2;
        }

        if (_S2 > _S1)
        {
          break;
        }

        if (v17 <= ++v26)
        {
          break;
        }

        _S1 = v27;
      }

      while (v27 > 0.0);
    }

    *&a5[v19] = v27 + *&a5[v19];
    ++v15;
  }

  while (v15 != 16);
  v30 = *MEMORY[0x29EDCA608];
}

__n128 D3DX_BC6H::QuantizeEndPts(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = &bc6_modeinfo + 20 * a2[5];
  v4 = v3[1];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v5 - 1;
  v9 = v6 - 1;
  v10 = v7 - 1;
  v11 = v4 + 1;
  v12 = &a2[64 * a2[6] + 20];
  v13 = (a3 + 16);
  do
  {
    v14 = *(v12 - 1);
    if (a2[4] == 1)
    {
      if (v14 >= 0)
      {
        v15 = *(v12 - 1);
      }

      else
      {
        v15 = -v14;
      }

      if (v5 <= 0xF)
      {
        v15 = (v15 << v8) / 31744;
      }

      if (v14 >= 0)
      {
        v14 = v15;
      }

      else
      {
        v14 = -v15;
      }
    }

    else if (v5 <= 0xE)
    {
      v14 = (v14 << v5) / 31744;
    }

    v16 = *(v13 - 1);
    *(v13 - 4) = v14;
    v17 = *v12;
    if (a2[4] == 1)
    {
      if (v17 >= 0)
      {
        v18 = *v12;
      }

      else
      {
        v18 = -v17;
      }

      if (v6 <= 0xF)
      {
        v18 = (v18 << v9) / 31744;
      }

      if (v17 >= 0)
      {
        v17 = v18;
      }

      else
      {
        v17 = -v18;
      }
    }

    else if (v6 <= 0xE)
    {
      v17 = (v17 << v6) / 31744;
    }

    *&v16 = __PAIR64__(v17, v14);
    *(v13 - 1) = v16;
    v19 = v12[1];
    if (a2[4] == 1)
    {
      if (v19 >= 0)
      {
        v20 = v12[1];
      }

      else
      {
        v20 = -v19;
      }

      if (v7 <= 0xF)
      {
        v20 = (v20 << v10) / 31744;
      }

      if (v19 >= 0)
      {
        v19 = v20;
      }

      else
      {
        v19 = -v20;
      }
    }

    else if (v7 <= 0xE)
    {
      v19 = (v19 << v7) / 31744;
    }

    DWORD2(v16) = v19;
    *(v13 - 1) = v16;
    v21 = v12[3];
    if (a2[4] == 1)
    {
      if (v21 >= 0)
      {
        v22 = v12[3];
      }

      else
      {
        v22 = -v21;
      }

      if (v5 <= 0xF)
      {
        v22 = (v22 << v8) / 31744;
      }

      if (v21 >= 0)
      {
        v21 = v22;
      }

      else
      {
        v21 = -v22;
      }
    }

    else if (v5 <= 0xE)
    {
      v21 = (v21 << v5) / 31744;
    }

    v23 = *v13;
    *v13 = v21;
    v24 = v12[4];
    if (a2[4] == 1)
    {
      if (v24 >= 0)
      {
        v25 = v12[4];
      }

      else
      {
        v25 = -v24;
      }

      if (v6 <= 0xF)
      {
        v25 = (v25 << v9) / 31744;
      }

      if (v24 >= 0)
      {
        v24 = v25;
      }

      else
      {
        v24 = -v25;
      }
    }

    else if (v6 <= 0xE)
    {
      v24 = (v24 << v6) / 31744;
    }

    *&v23 = __PAIR64__(v24, v21);
    *v13 = v23;
    v26 = v12[5];
    if (a2[4] == 1)
    {
      if (v26 >= 0)
      {
        v27 = v12[5];
      }

      else
      {
        v27 = -v26;
      }

      if (v7 <= 0xF)
      {
        v27 = (v27 << v10) / 31744;
      }

      if (v26 >= 0)
      {
        v26 = v27;
      }

      else
      {
        v26 = -v27;
      }
    }

    else if (v7 <= 0xE)
    {
      v26 = (v26 << v7) / 31744;
    }

    DWORD2(v23) = v26;
    *v13 = v23;
    v13 += 2;
    v12 += 8;
    --v11;
  }

  while (v11);
  result.n128_u64[0] = v23;
  result.n128_u32[2] = DWORD2(v23);
  return result;
}

uint64_t D3DX_BC6H::EmitBlock(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = 0;
  v9 = &bc6_modeinfo[20 * *(a2 + 5)];
  v10 = *v9;
  v11 = v9[3];
  v12 = &bc6_modedesc + 656 * *(a2 + 5);
  if (v9[1])
  {
    v13 = 82;
  }

  else
  {
    v13 = 65;
  }

  for (i = 0; i < v13; v8 = i)
  {
    v14 = &v12[8 * v8];
    v15 = v10;
    switch(*v14)
    {
      case 1:
        goto LABEL_19;
      case 2:
        v15 = *(a2 + 6);
        goto LABEL_19;
      case 3:
        v15 = *a3;
        goto LABEL_19;
      case 4:
        v15 = a3[4];
        goto LABEL_19;
      case 5:
        v15 = a3[8];
        goto LABEL_19;
      case 6:
        v15 = a3[12];
        goto LABEL_19;
      case 7:
        v15 = a3[1];
        goto LABEL_19;
      case 8:
        v15 = a3[5];
        goto LABEL_19;
      case 9:
        v15 = a3[9];
        goto LABEL_19;
      case 0xA:
        v15 = a3[13];
        goto LABEL_19;
      case 0xB:
        v15 = a3[2];
        goto LABEL_19;
      case 0xC:
        v15 = a3[6];
        goto LABEL_19;
      case 0xD:
        v15 = a3[10];
        goto LABEL_19;
      case 0xE:
        v15 = a3[14];
LABEL_19:
        CBits<16ul>::SetBit(a1, &i, (v15 >> v14[4]) & 1);
        break;
      default:
        continue;
    }
  }

  for (j = 0; j != 16; ++j)
  {
    v17 = 0;
    do
    {
      v18 = bc67_fixups[192 * bc6_modeinfo[20 * *(a2 + 5) + 1] + 3 * *(a2 + 6) + v17];
      if (v17 >= bc6_modeinfo[20 * *(a2 + 5) + 1])
      {
        break;
      }

      ++v17;
    }

    while (j != v18);
    result = CBits<16ul>::SetBits(a1, &i, v11 - (j == v18), *(a4 + 8 * j));
  }

  return result;
}

uint64_t CBits<16ul>::SetBit(uint64_t result, void *a2, unsigned int a3)
{
  if (a3 > 1 || *a2 >= 0x80uLL)
  {
    CBits<16ul>::SetBit();
  }

  *(result + (*a2 >> 3)) = *(result + (*a2 >> 3)) & ~(1 << (*a2 & 7)) | (a3 << (*a2 & 7));
  ++*a2;
  return result;
}

uint64_t CBits<16ul>::SetBits(uint64_t result, void *a2, unint64_t a3, unsigned int a4)
{
  if (a3)
  {
    if (a3 > 8 || *a2 + a3 >= 0x81)
    {
      CBits<16ul>::SetBits();
    }

    if (1 << a3 <= a4)
    {
      CBits<16ul>::SetBits();
    }

    v4 = *a2 >> 3;
    v5 = *a2 & 7;
    if (v5 + a3 < 9)
    {
      v7 = (result + v4);
      v9 = *v7 & ~(((1 << a3) - 1) << v5);
      v10 = a4 << v5;
    }

    else
    {
      *(result + v4) = *(result + v4) & ~(~(-1 << (8 - v5)) << v5) | (a4 << v5);
      v6 = result + v4;
      v8 = *(v6 + 1);
      v7 = (v6 + 1);
      v9 = v8 & (-1 << (a3 - (8 - v5)));
      v10 = a4 >> (8 - v5);
    }

    *v7 = v9 | v10;
    *a2 += a3;
  }

  return result;
}

void D3DX_BC6H::GeneratePaletteUnquantized(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = bc6_modeinfo[20 * *(a1 + 5) + 3];
  LODWORD(v4) = 1 << v3;
  if (v3 == 3)
  {
    v5 = &bc67_weights3;
    goto LABEL_5;
  }

  if (v3 == 4)
  {
    v5 = &bc67_weights4;
LABEL_5:
    v6 = (a1 + (*(a1 + 6) << 6) + 32 * a2);
    if ((v4 & 0xFE) != 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    do
    {
      v7 = *v5++;
      v8 = *a3;
      LODWORD(v8) = (v6[8] * v7 + (64 - v7) * v6[4] + 32) >> 6;
      *a3 = v8;
      DWORD1(v8) = (v6[9] * v7 + v6[5] * (64 - v7) + 32) >> 6;
      *a3 = v8;
      DWORD2(v8) = (v6[10] * v7 + v6[6] * (64 - v7) + 32) >> 6;
      *a3++ = v8;
      --v4;
    }

    while (v4);
    return;
  }

  v9 = (1 << v3);
  if ((v4 & 0xFE) == 0)
  {
    v9 = 1;
  }

  bzero(a3, (16 * v9));
}

void D3DX_BC6H::MapColors(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v8 = bc6_modeinfo[20 * *(a2 + 5) + 3];
  D3DX_BC6H::GeneratePaletteUnquantized(a2, a3, v23[0].i8);
  if (a4)
  {
    v9 = 0;
    v10 = (1 << v8);
    v11 = 0.0;
    do
    {
      v12 = *(a2 + 2064 + 16 * *(a5 + 8 * v9));
      _S5 = vcvtq_f32_s32(vsubq_s32(v12, *v23)).i32[2];
      __asm { FMLA            S2, S5, V4.S[2] }

      if (v10 >= 2 && _S2 > 0.0)
      {
        v19 = 1;
        do
        {
          _S6 = vcvtq_f32_s32(vsubq_s32(v12, *(v23 + 16 * v19))).i32[2];
          __asm { FMLA            S4, S6, V5.S[2] }

          if (_S4 > _S2)
          {
            break;
          }

          if (_S4 < _S2)
          {
            _S2 = _S4;
          }

          if (v10 <= ++v19)
          {
            break;
          }
        }

        while (_S2 > 0.0);
      }

      v11 = v11 + _S2;
      ++v9;
    }

    while (v9 != a4);
  }

  v22 = *MEMORY[0x29EDCA608];
}

uint64_t OptimizeRGB(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v81 = *MEMORY[0x29EDCA608];
  v5 = 0;
  __asm { FMOV            V1.2S, #1.0 }

  if (a4)
  {
    v10 = 0.0;
    v11 = a5;
    v12 = a4;
    v13 = 1.0;
    do
    {
      v14 = *v11++;
      v15 = (result + 16 * v14);
      _D1 = vbsl_s8(vcgt_f32(_D1, *v15), *v15, _D1);
      v16 = v15[1].f32[0];
      if (v16 < v13)
      {
        v13 = v15[1].f32[0];
      }

      v5 = vbsl_s8(vcgt_f32(*v15, v5), *v15, v5);
      if (v16 > v10)
      {
        v10 = v15[1].f32[0];
      }

      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = 1.0;
    v10 = 0.0;
  }

  v17 = vsub_f32(v5, _D1);
  v18 = v10 - v13;
  v19 = (COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0])) + (v18 * v18);
  if (v19 >= 1.1755e-38)
  {
    if (a4)
    {
      v20 = vmul_n_f32(v17, 1.0 / v19);
      v21 = v18 * (1.0 / v19);
      v22 = vmul_f32(vadd_f32(v5, _D1), 0x3F0000003F000000);
      v23 = 0.0;
      v24 = a5;
      v25 = a4;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      do
      {
        v29 = *v24++;
        v30 = (result + 16 * v29);
        v31 = vmul_f32(v20, vsub_f32(*v30, v22));
        v32 = v21 * (v30[1].f32[0] - ((v10 + v13) * 0.5));
        v33 = vaddv_f32(v31);
        v23 = v23 + ((v33 + v32) * (v33 + v32));
        v26 = v26 + ((v33 - v32) * (v33 - v32));
        v31.f32[0] = v31.f32[0] - v31.f32[1];
        v27 = v27 + ((v31.f32[0] + v32) * (v31.f32[0] + v32));
        v28 = v28 + ((v31.f32[0] - v32) * (v31.f32[0] - v32));
        --v25;
      }

      while (v25);
    }

    else
    {
      v28 = 0.0;
      v27 = 0.0;
      v26 = 0.0;
      v23 = 0.0;
    }

    v34 = 0;
    *&v80[19] = v26;
    *&v80[20] = v27;
    v35 = 1;
    *&v80[21] = v28;
    do
    {
      if (*&v80[v35 + 18] > v23)
      {
        v34 = v35;
        v23 = *&v80[v35 + 18];
      }

      ++v35;
    }

    while (v35 != 4);
    v36 = v5.f32[1];
    if ((v34 & 2) != 0)
    {
      v37 = _D1.f32[1];
    }

    else
    {
      v37 = v5.f32[1];
    }

    if ((v34 & 2) == 0)
    {
      v36 = _D1.f32[1];
    }

    if (v34)
    {
      v38 = v13;
    }

    else
    {
      v38 = v10;
    }

    if ((v34 & 1) == 0)
    {
      v10 = v13;
    }

    if (v19 >= 0.00024414)
    {
      for (i = 0; i != 8; ++i)
      {
        v41 = vmlaq_n_f32(vmulq_n_f32(xmmword_298492150, v5.f32[0]), xmmword_298492160, _D1.f32[0]);
        v42 = vmlaq_n_f32(vmulq_n_f32(xmmword_298492150, v37), xmmword_298492160, v36);
        *v80 = vzip1_s32(*v41.i8, *v42.i8);
        *&v80[4] = vzip2_s32(*v41.i8, *v42.i8);
        v42.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
        v41.i64[0] = vextq_s8(v41, v41, 8uLL).u64[0];
        *&v80[8] = vzip1_s32(*v41.i8, *v42.i8);
        *&v80[12] = vzip2_s32(*v41.i8, *v42.i8);
        v43 = vmlaq_n_f32(vmulq_n_f32(xmmword_298492150, v38), xmmword_298492160, v10);
        *&v80[2] = v43.u32[0];
        *&v80[6] = v43.u32[1];
        *&v80[10] = v43.u32[2];
        *&v80[14] = v43.u32[3];
        v44 = v5.f32[0] - _D1.f32[0];
        v45 = v37 - v36;
        v46 = v38 - v10;
        v47 = ((v45 * v45) + (v44 * v44)) + (v46 * v46);
        if (v47 < 0.00024414)
        {
          break;
        }

        if (a4)
        {
          v48 = 3.0 / v47;
          v49 = v44 * v48;
          v50 = v45 * v48;
          v51 = v46 * v48;
          v52 = 0.0;
          v53 = 0.0;
          v54 = a5;
          v55 = a4;
          v56 = 0.0;
          v57 = 0.0;
          v58 = 0.0;
          v59 = 0.0;
          v60 = 0.0;
          v61 = 0.0;
          do
          {
            v62 = *v54++;
            v63 = (result + 16 * v62);
            v64 = *v63;
            v65 = v63[1];
            v66 = v63[2];
            v67 = ((v50 * (v65 - v36)) + ((*v63 - _D1.f32[0]) * v49)) + ((v66 - v10) * v51);
            if (v67 <= 0.0)
            {
              v68 = 0;
            }

            else if (v67 >= 3.0)
            {
              v68 = 3;
            }

            else
            {
              v68 = (v67 + 0.5);
            }

            v69 = &v80[4 * v68];
            v70 = *v69 - v64;
            v71 = v69[1] - v65;
            v72 = v69[2] - v66;
            v73 = pC4[v68];
            v74 = pD4[v68];
            v53 = v53 + ((v73 * 0.125) * v73);
            v59 = v59 + ((v73 * 0.125) * v70);
            v60 = v60 + ((v73 * 0.125) * v71);
            v61 = v61 + ((v73 * 0.125) * v72);
            v52 = v52 + ((v74 * 0.125) * v74);
            v56 = v56 + ((v74 * 0.125) * v70);
            v57 = v57 + ((v74 * 0.125) * v71);
            v58 = v58 + ((v74 * 0.125) * v72);
            --v55;
          }

          while (v55);
          if (v53 > 0.0)
          {
            _D1.f32[0] = _D1.f32[0] + (v59 * (-1.0 / v53));
            v36 = v36 + (v60 * (-1.0 / v53));
            v10 = v10 + (v61 * (-1.0 / v53));
          }

          if (v52 > 0.0)
          {
            v75 = -1.0 / v52;
            v5.f32[0] = v5.f32[0] + (v56 * v75);
            v37 = v37 + (v57 * v75);
            v38 = v38 + (v58 * v75);
          }
        }

        else
        {
          v61 = 0.0;
          v60 = 0.0;
          v59 = 0.0;
          v58 = 0.0;
          v57 = 0.0;
          v56 = 0.0;
        }

        v76 = v59 * v59;
        v78 = (v60 * v60) < 0.000015259 && v76 < 0.000015259;
        v79 = v78 && (v61 * v61) < 0.000015259;
        if ((v56 * v56) >= 0.000015259)
        {
          v79 = 0;
        }

        if ((v57 * v57) >= 0.000015259)
        {
          v79 = 0;
        }

        if ((v58 * v58) >= 0.000015259)
        {
          v79 = 0;
        }

        if (v79)
        {
          break;
        }
      }
    }

    *a2 = _D1.i32[0];
    *(a2 + 4) = v36;
    *(a2 + 8) = v10;
    *a3 = v5.i32[0];
    *(a3 + 4) = v37;
    *(a3 + 8) = v38;
  }

  else
  {
    *a2 = _D1;
    *(a2 + 8) = v13;
    *a3 = v5;
    *(a3 + 8) = v10;
  }

  v39 = *MEMORY[0x29EDCA608];
  return result;
}

float D3DX_BC7::Encode(int16x8_t *a1, unsigned int a2, const float *a3)
{
  v81 = *MEMORY[0x29EDCA608];
  v80 = *a1;
  *&v76[68] = a3;
  bzero(v74, 0x640uLL);
  v6 = 0;
  v7 = a3;
  v82 = vld4q_f32(v7);
  v7 += 16;
  v84 = vld4q_f32(v7);
  v8 = a3 + 32;
  v85 = vld4q_f32(v8);
  v9 = a3 + 48;
  v86 = vld4q_f32(v9);
  v10 = vdupq_n_s32(0x437F0000u);
  v11 = vdupq_n_s32(0x3C23D70Au);
  v12 = vminnmq_f32(vmlaq_f32(v11, v10, v84.val[0]), v10);
  v13 = vminnmq_f32(vmlaq_f32(v11, v10, v82.val[0]), v10);
  v14 = vminnmq_f32(vmlaq_f32(v11, v10, v85.val[0]), v10);
  v15 = vminnmq_f32(vmlaq_f32(v11, v10, v86.val[0]), v10);
  v16 = vminnmq_f32(vmlaq_f32(v11, v10, v84.val[1]), v10);
  v17 = vminnmq_f32(vmlaq_f32(v11, v10, v82.val[1]), v10);
  v18 = vminnmq_f32(vmlaq_f32(v11, v10, v85.val[1]), v10);
  v19 = vminnmq_f32(vmlaq_f32(v11, v10, v86.val[1]), v10);
  v83.val[2] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v82.val[2]), v10), 0)), vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v84.val[2]), v10), 0))), vuzp1q_s16(vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v85.val[2]), v10), 0)), vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v86.val[2]), v10), 0))));
  v24 = vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v86.val[3]), v10), 0));
  v82.val[0] = vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v85.val[3]), v10), 0));
  v82.val[2] = vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v82.val[3]), v10), 0));
  v82.val[3] = vcvtq_s32_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_f32(v11, v10, v84.val[3]), v10), 0));
  v83.val[3] = vuzp1q_s8(vuzp1q_s16(v82.val[2], v82.val[3]), vuzp1q_s16(v82.val[0], v24));
  v20 = vmovn_s32(v82.val[2]);
  v83.val[1] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vandq_s8(v17, vcgtzq_f32(v17))), vcvtq_s32_f32(vandq_s8(v16, vcgtzq_f32(v16)))), vuzp1q_s16(vcvtq_s32_f32(vandq_s8(v18, vcgtzq_f32(v18))), vcvtq_s32_f32(vandq_s8(v19, vcgtzq_f32(v19)))));
  v21 = vcvtq_s32_f32(vandq_s8(v13, vcgtzq_f32(v13)));
  v22 = vuzp1q_s16(v21, vcvtq_s32_f32(vandq_s8(v12, vcgtzq_f32(v12))));
  v83.val[0] = vuzp1q_s8(v22, vuzp1q_s16(vcvtq_s32_f32(vandq_s8(v14, vcgtzq_f32(v14))), vcvtq_s32_f32(vandq_s8(v15, vcgtzq_f32(v15)))));
  v70 = v75;
  vst4q_s8(v70, v83);
  v23 = vmovl_u16(vmovn_s32(v82.val[3]));
  v82.val[0] = vandq_s8(vandq_s8(vmovl_u16(vand_s8(v20, vmovn_s32(v82.val[0]))), vmovl_u16(vmovn_s32(v24))), v23);
  v24.i64[0] = vextq_s8(v82.val[0], v82.val[0], 8uLL).u64[0];
  v25 = COERCE_DOUBLE(vand_s8(*v82.val[0].f32, *v24.i8));
  v26 = LODWORD(v25) & HIDWORD(v25);
  v73 = 0;
  v27 = 3.4028e38;
  v68 = LODWORD(v25) & HIDWORD(v25);
  v69 = a2;
  do
  {
    if (a2 & 0x80000 | v6 & 5 && ((v6 != 1) & (a2 >> 21)) == 0)
    {
      v28 = v26 == 255 && v6 == 7;
      v29 = v28;
      if (((v6 != 6) & (a2 >> 20)) == 0 && !v29 && v27 > 0.0)
      {
        v30 = 0;
        v31 = &D3DX_BC7::ms_aInfo[16 * v6 - v6];
        v32 = 1 << v31[1];
        v71 = v31[3];
        v72 = v31[4];
        if (v32 >> 2 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32 >> 2;
        }

        do
        {
          switch(v30)
          {
            case 1uLL:
              v40 = v75;
              v41 = 16;
              do
              {
                v42 = *v40;
                *v40 = v40[3];
                v40[3] = v42;
                v40 += 4;
                --v41;
              }

              while (v41);
              break;
            case 2uLL:
              v37 = v76;
              v38 = 16;
              do
              {
                v39 = *(v37 - 2);
                *(v37 - 2) = *v37;
                *v37 = v39;
                v37 += 4;
                --v38;
              }

              while (v38);
              break;
            case 3uLL:
              v34 = v76;
              v35 = 16;
              do
              {
                v36 = *(v34 - 1);
                *(v34 - 1) = *v34;
                *v34 = v36;
                v34 += 4;
                --v35;
              }

              while (v35);
              break;
          }

          if (v27 > 0.0)
          {
            v43 = 0;
            do
            {
              v44 = 0;
              do
              {
                *&v25 = D3DX_BC7::RoughMSE(&v73, v44, v43, v25, *v24.i64, *&v20, *v23.i8, v22, v21);
                *&v78[4 * v44 + 504] = LODWORD(v25);
                *(v78 + 8 * v44 + 6) = v44;
                ++v44;
              }

              while (v32 != v44);
              v45 = 0;
              v46 = &v79;
              v47 = v78;
              v48 = v32 - 1;
              do
              {
                v49 = v45 + 1;
                if (v45 + 1 < v32)
                {
                  v50 = v46;
                  v51 = v47;
                  v52 = v48;
                  do
                  {
                    LODWORD(v25) = *&v78[4 * v45 + 504];
                    v24.i32[0] = *v50;
                    if (*&v25 > *v50)
                    {
                      *&v78[4 * v45 + 504] = v24.i32[0];
                      *v50 = LODWORD(v25);
                      v53 = *(v78 + 8 * v45 + 6);
                      *(v78 + 8 * v45 + 6) = *v51;
                      *v51 = v53;
                    }

                    ++v51;
                    ++v50;
                    --v52;
                  }

                  while (v52);
                }

                --v48;
                v47 += 8;
                ++v46;
                ++v45;
              }

              while (v49 != v33);
              if (v27 > 0.0)
              {
                v54 = &v77;
                v55 = 1;
                do
                {
                  v56 = *v54++;
                  *&v25 = D3DX_BC7::Refine(a1, &v73, v56, v30, v43);
                  if (*&v25 < v27)
                  {
                    v24 = *a1;
                    v80 = *a1;
                    v27 = *&v25;
                  }

                  if (v32 >> 2 <= v55)
                  {
                    break;
                  }

                  ++v55;
                }

                while (v27 > 0.0);
              }

              ++v43;
            }

            while (!(v43 >> v72) && v27 > 0.0);
          }

          switch(v30)
          {
            case 1uLL:
              v63 = v75;
              v64 = 16;
              do
              {
                v65 = *v63;
                *v63 = v63[3];
                v63[3] = v65;
                v63 += 4;
                --v64;
              }

              while (v64);
              break;
            case 2uLL:
              v60 = v76;
              v61 = 16;
              do
              {
                v62 = *(v60 - 2);
                *(v60 - 2) = *v60;
                *v60 = v62;
                v60 += 4;
                --v61;
              }

              while (v61);
              break;
            case 3uLL:
              v57 = v76;
              v58 = 16;
              do
              {
                v59 = *(v57 - 1);
                *(v57 - 1) = *v57;
                *v57 = v59;
                v57 += 4;
                --v58;
              }

              while (v58);
              break;
          }

          ++v30;
        }

        while (!(v30 >> v71) && v27 > 0.0);
        v6 = v73;
        v26 = v68;
        a2 = v69;
      }
    }

    v73 = ++v6;
  }

  while (v6 <= 7u && v27 > 0.0);
  *a1 = v80;
  v66 = *MEMORY[0x29EDCA608];
  return v27;
}

float D3DX_BC7::RoughMSE(unsigned __int8 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int8x8_t a7, int8x16_t _Q4, int8x16_t a9)
{
  v11 = 0;
  v167 = *MEMORY[0x29EDCA608];
  v158 = &a1[24 * a2 + 1];
  v12 = &D3DX_BC7::ms_aInfo + 16 * *a1 - *a1;
  v13 = *v12;
  v14 = 5;
  if (a3)
  {
    v14 = 6;
  }

  v15 = v12[v14];
  v16 = v12 + 5;
  v17 = v12 + 6;
  if (a3)
  {
    v17 = v16;
  }

  v18 = *v17;
  v19 = (a1 + 1537);
  v159 = v13;
  v155 = (v13 << 10) + 16 * a2;
  __asm { FMOV            V10.2S, #1.0 }

  v22 = vdup_n_s32(0x437F0000u);
  v23 = vdup_n_s32(0x3C23D70Au);
  v24 = 0x1000000018;
  v9.i32[0] = 0.5;
  v25 = &unk_298492000;
  v26 = &unk_298492000;
  v156 = _D10;
  do
  {
    v27 = 0;
    for (i = 0; i != 16; ++i)
    {
      if (v11 == bc67_partitionTable[v155 + i])
      {
        v160[v27++] = i;
      }
    }

    if (v27 == 1)
    {
      v31 = v160[0];
      v32 = (v158 + 8 * v11);
      *v32 = v19[v160[0]];
      v32[1] = v19[v31];
    }

    else if (v27 == 2)
    {
      v29 = (v158 + 8 * v11);
      v30 = v160[1];
      *v29 = v19[v160[0]];
      v29[1] = v19[v30];
    }

    else if (v18)
    {
      v33 = 0;
      v34 = 0;
      v35 = -1;
      do
      {
        v36 = HIBYTE(v19[v160[v33]]);
        if (v36 < v35)
        {
          v35 = HIBYTE(v19[v160[v33]]);
        }

        if (v34 <= v36)
        {
          v34 = HIBYTE(v19[v160[v33]]);
        }

        ++v33;
      }

      while (v33 != 16);
      OptimizeRGB(*(a1 + 201), v161, &v162, v27, v160);
      v37 = (v158 + 8 * v11);
      __asm { FMOV            V4.2S, #1.0 }

      v38 = vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vmaxnm_f32(__PAIR64__(v162, LODWORD(v161[0])), 0), *_Q4.i8)));
      v39 = vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vmaxnm_f32(__PAIR64__(LODWORD(v163), LODWORD(v161[1])), 0), *_Q4.i8)));
      v40 = vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vmaxnm_f32(__PAIR64__(LODWORD(v164), LODWORD(v161[3])), 0), *_Q4.i8)));
      v41 = vshl_u32(vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vmaxnm_f32(__PAIR64__(LODWORD(v165), LODWORD(v161[2])), 0), *_Q4.i8))), 0x1800000010);
      _Q4.i64[0] = 0x1000000018;
      a7 = vshl_u32(v40, 0x1000000018);
      a6 = COERCE_DOUBLE(vorr_s8(v41, a7));
      a5 = COERCE_DOUBLE(vshl_n_s32(v39, 8uLL));
      v24 = vorr_s8(vorr_s8(*&a6, v38), *&a5);
      *v37 = v24;
      v37->i8[3] = v35;
      v37->i8[7] = v34;
      v9.i32[0] = 0.5;
      v25 = &unk_298492000;
      v26 = &unk_298492000;
    }

    else
    {
      v42 = *(a1 + 201);
      v43 = 1065353216;
      v44 = xmmword_298492170;
      _D0 = _D10;
      if (v27)
      {
        v43 = 1065353216;
        v44 = xmmword_298492170;
        __asm { FMOV            V0.2S, #1.0 }

        v46 = v160;
        v47 = v27;
        do
        {
          v48 = *v46++;
          v49 = v42 + 16 * v48;
          _Q4.i32[0] = *(v49 + 4);
          a9.i64[0] = *(v49 + 8);
          v50.i32[1] = v43.i32[1];
          v50.i32[0] = *v49;
          v51.i32[0] = v43.i32[0];
          v51.i32[1] = *v49;
          _D0 = vbsl_s8(vcgt_f32(_D0, *a9.i8), *a9.i8, _D0);
          v43 = vbsl_s8(vcgt_f32(v51, v50), vdup_lane_s32(v50, 0), v43);
          v52 = vextq_s8(vextq_s8(_Q4, _Q4, 4uLL), a9, 0xCuLL);
          v52.i32[3] = v52.i32[0];
          v53 = vmovn_s32(vcgtq_f32(v52, v44));
          a9 = vcgtq_f32(v44, v52);
          v53.i16[3] = vmovn_s32(*&a9).i16[3];
          _Q4 = vmovl_s16(v53);
          v44 = vbslq_s8(_Q4, v52, v44);
          --v47;
        }

        while (v47);
      }

      v54 = v43.f32[1] - v43.f32[0];
      v55 = v44.f32[0] - v44.f32[3];
      v56 = v44.f32[1];
      v57 = v44.f32[2];
      v58 = vsub_f32(*&vextq_s8(v44, v44, 4uLL), _D0);
      v59 = vmul_f32(v58, v58);
      v60 = (((v55 * v55) + (v54 * v54)) + v59.f32[0]) + v59.f32[1];
      v61.i32[0] = _D0.i32[1];
      if (v60 >= 1.1755e-38)
      {
        if (v27)
        {
          v62 = v54 * (1.0 / v60);
          v63 = v55 * (1.0 / v60);
          v64 = (1.0 / v60) * v58.f32[0];
          v65 = vmuls_lane_f32(1.0 / v60, v58, 1);
          v66 = (v43.f32[1] + v43.f32[0]) * v9.f32[0];
          v67 = (v44.f32[0] + v44.f32[3]) * v9.f32[0];
          v68 = (v44.f32[1] + _D0.f32[0]) * v9.f32[0];
          v69 = (v44.f32[2] + _D0.f32[1]) * v9.f32[0];
          v70 = 0uLL;
          v71 = 0.0;
          v72 = v160;
          v73 = v27;
          v74 = 0.0;
          v75 = 0.0;
          v76 = 0.0;
          do
          {
            v77 = *v72++;
            v78 = (v42 + 16 * v77);
            v9.f32[0] = v62 * (*v78 - v66);
            v79 = v63 * (v78[1] - v67);
            *v10.i32 = v64 * (v78[2] - v68);
            *&v80 = v65 * (v78[3] - v69);
            v81 = (v9.f32[0] + v79) + *v10.i32;
            v71 = v71 + ((v81 + *&v80) * (v81 + *&v80));
            v82 = (v9.f32[0] + v79) - *v10.i32;
            v9.f32[0] = v9.f32[0] - v79;
            v74 = v74 + ((v81 - *&v80) * (v81 - *&v80));
            *v83.f32 = vdup_lane_s32(vadd_f32(*v9.f32, *v10.i8), 0);
            v75 = v75 + ((v82 + *&v80) * (v82 + *&v80));
            *&v83.u32[2] = vdup_lane_s32(vsub_f32(*v9.f32, *v10.i8), 0);
            v84 = vdupq_lane_s32(v80, 0);
            v76 = v76 + ((v82 - *&v80) * (v82 - *&v80));
            v10 = vaddq_f32(v83, v84);
            v9 = vtrn2q_s32(vrev64q_s32(v10), vsubq_f32(v83, v84));
            v70 = vmlaq_f32(v70, v9, v9);
            --v73;
          }

          while (v73);
        }

        else
        {
          v70 = 0uLL;
          v76 = 0.0;
          v75 = 0.0;
          v74 = 0.0;
          v71 = 0.0;
        }

        v85 = 0;
        v163 = v74;
        v164 = v75;
        v165 = v76;
        v86 = 1;
        v166 = v70;
        do
        {
          if (*(&v162 + v86) > v71)
          {
            v85 = v86;
            v71 = *(&v162 + v86);
          }

          ++v86;
        }

        while (v86 != 8);
        if ((v85 & 4) != 0)
        {
          v87 = v44.f32[3];
        }

        else
        {
          v87 = v44.f32[0];
        }

        if ((v85 & 4) == 0)
        {
          v44.f32[0] = v44.f32[3];
        }

        if ((v85 & 2) != 0)
        {
          v88 = _D0.f32[0];
        }

        else
        {
          v88 = v44.f32[1];
        }

        if ((v85 & 2) != 0)
        {
          _D0.f32[0] = v44.f32[1];
        }

        if (v85)
        {
          v89 = _D0.f32[1];
        }

        else
        {
          v89 = v44.f32[2];
        }

        if (v85)
        {
          *v61.i32 = v44.f32[2];
        }

        _D10 = v156;
        if (v60 >= 0.00024414)
        {
          v90 = 0;
          v9.i32[0] = 0.5;
          do
          {
            v91 = v25[22];
            v92 = v26[21];
            v168.val[0] = vmlaq_n_f32(vmulq_lane_f32(v92, v43, 1), v91, v43.f32[0]);
            v168.val[1] = vmlaq_n_f32(vmulq_n_f32(v92, v87), v91, v44.f32[0]);
            v168.val[2] = vmlaq_n_f32(vmulq_n_f32(v92, v88), v91, _D0.f32[0]);
            v168.val[3] = vmlaq_n_f32(vmulq_n_f32(v92, v89), v91, *v61.i32);
            vst4q_f32(v161, v168);
            v93 = v43.f32[1] - v43.f32[0];
            v94 = v87 - v44.f32[0];
            v95 = v88 - _D0.f32[0];
            v96 = v89 - *v61.i32;
            v97 = (((v93 * v93) + (v94 * v94)) + (v95 * v95)) + (v96 * v96);
            if (v97 < 0.00024414)
            {
              break;
            }

            if (v27)
            {
              v98 = 3.0 / v97;
              v99 = v93 * (3.0 / v97);
              v100 = v94 * v98;
              v101 = v95 * v98;
              v102 = v96 * v98;
              _Q7 = 0uLL;
              v104 = v160;
              v105 = v27;
              v106 = 0.0;
              v107 = 0uLL;
              do
              {
                v108 = *v104++;
                v109 = *(v42 + 16 * v108);
                v110 = (((v100 * (COERCE_FLOAT(HIDWORD(*(v42 + 16 * v108))) - v44.f32[0])) + (v99 * (v109.f32[0] - v43.f32[0]))) + (v101 * (COERCE_FLOAT(*(v42 + 16 * v108 + 8)) - _D0.f32[0]))) + (v102 * (v109.f32[3] - *v61.i32));
                if (v110 <= 0.0)
                {
                  v111 = 0;
                }

                else if (v110 >= 3.0)
                {
                  v111 = 3;
                }

                else
                {
                  v111 = (v110 + 0.5);
                }

                _S26 = LODWORD(pD4[v111]);
                v113 = vrev64q_s32(vsubq_f32(*&v161[4 * v111], v109));
                v114 = vextq_s8(v113, v113, 8uLL);
                v115.f32[0] = pC4[v111];
                v115.i32[1] = _S26;
                _D27 = vmul_f32(v115, 0x3E0000003E000000);
                v106 = v106 + (_D27.f32[0] * pC4[v111]);
                __asm { FMLA            S18, S26, V27.S[1] }

                v107 = vmlaq_lane_f32(v107, v114, _D27, 1);
                _Q7 = vmlaq_n_f32(_Q7, v114, _D27.f32[0]);
                --v105;
              }

              while (v105);
              _S19 = -1.0 / v106;
              __asm
              {
                FMLA            S20, S19, V7.S[3]
                FMLA            S21, S19, V7.S[2]
                FMLA            S22, S19, V7.S[1]
              }

              v125 = *v61.i32 + (_Q7.f32[0] * (-1.0 / v106));
              if (_NF ^ _VF | _ZF)
              {
                v126 = v43.f32[0];
              }

              else
              {
                v126 = _S20;
              }

              if (!(_NF ^ _VF | _ZF))
              {
                v44.f32[0] = _S21;
                _D0.f32[0] = _S22;
                *v61.i32 = v125;
              }

              v43.f32[0] = v126;
              v127 = _Q7.f32[1];
              v128 = _Q7.f32[3];
              v129 = _Q7.f32[2];
              v130 = v107.f32[1];
              v131 = v107.f32[3];
              v132 = v107.f32[2];
              if (_S18 > 0.0)
              {
                v133 = -1.0 / _S18;
                v87 = v87 + (v107.f32[2] * v133);
                v88 = v88 + (v107.f32[1] * v133);
                v89 = v89 + (v107.f32[0] * v133);
                v43.f32[1] = v43.f32[1] + (v107.f32[3] * v133);
              }
            }

            else
            {
              v131 = 0.0;
              v132 = 0.0;
              v130 = 0.0;
              v107.i32[0] = 0;
              v128 = 0.0;
              v129 = 0.0;
              v127 = 0.0;
              _Q7.i32[0] = 0;
            }

            if (((((v129 * v129) + (v128 * v128)) + (v127 * v127)) + (_Q7.f32[0] * _Q7.f32[0])) < 0.000015259 && ((((v132 * v132) + (v131 * v131)) + (v130 * v130)) + (v107.f32[0] * v107.f32[0])) < 0.000015259)
            {
              break;
            }

            ++v90;
          }

          while (v90 != 8);
        }

        else
        {
          v9.i32[0] = 0.5;
        }

        v44.f32[1] = v87;
        v57 = v89;
        v56 = v88;
      }

      else
      {
        v44.i64[0] = vextq_s8(v44, v44, 0xCuLL).u64[0];
      }

      *&v61.i32[1] = v56;
      _D0.f32[1] = v57;
      a7 = vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vmaxnm_f32(*v44.f32, 0), _D10)));
      _Q4.i64[0] = 0x1000000018;
      v135 = vorr_s8(vshl_u32(vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vand_s8(v61, vcltz_s32(vshl_n_s32(__PAIR64__(v56 > 0.0, *v61.i32 > 0.0), 0x1FuLL))), _D10))), 0x1000000018), vshl_u32(vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vand_s8(_D0, vcltz_s32(vshl_n_s32(__PAIR64__(v57 > 0.0, _D0.f32[0] > 0.0), 0x1FuLL))), _D10))), 0x1800000010));
      a6 = COERCE_DOUBLE(vshl_n_s32(a7, 8uLL));
      a5 = COERCE_DOUBLE(vorr_s8(*&a6, vcvt_s32_f32(vmla_f32(v23, v22, vminnm_f32(vmaxnm_f32(v43, 0), _D10)))));
      v24 = vorr_s8(v135, *&a5);
      *(v158 + 8 * v11) = v24;
    }

    _ZF = v11++ == v159;
  }

  while (!_ZF);
  v136 = 1 << v15;
  v137 = 0;
  if (v18)
  {
    if ((v136 & 0xFE) != 0)
    {
      v138 = (1 << v15);
    }

    else
    {
      v138 = 1;
    }

    if (((1 << v18) & 0xFE) != 0)
    {
      v139 = (1 << v18);
    }

    else
    {
      v139 = 1;
    }

    v140 = v161;
    do
    {
      v141 = (v158 + 8 * v137);
      if (v15 <= 7)
      {
        v142 = 0;
        v143 = v140;
        do
        {
          LDRColorA::InterpolateRGB(v141, v141 + 4, v142++, v15, v143++);
        }

        while (v138 != v142);
      }

      if (v18 <= 7)
      {
        v144 = 0;
        v145 = v140;
        do
        {
          LDRColorA::InterpolateA(v141, (v141 + 4), v144++, v18, v145);
          v145 += 4;
        }

        while (v139 != v144);
      }

      v140 += 16;
      _ZF = v137++ == v159;
    }

    while (!_ZF);
  }

  else
  {
    if ((v136 & 0xFE) != 0)
    {
      v146 = (1 << v15);
    }

    else
    {
      v146 = 1;
    }

    v147 = v161;
    do
    {
      if (v15 <= 7)
      {
        v148 = 0;
        v149 = (v158 + 8 * v137);
        v150 = v147;
        do
        {
          LDRColorA::InterpolateRGB(v149, v149 + 4, v148, v15, v150);
          LDRColorA::InterpolateA(v149, (v149 + 4), v148++, v15, v150++);
        }

        while (v146 != v148);
      }

      v147 += 16;
      _ZF = v137++ == v159;
    }

    while (!_ZF);
  }

  v151 = 0;
  v152 = 0.0;
  do
  {
    *v24.i32 = ComputeError(v19, &v161[16 * bc67_partitionTable[v155 + v151]], v15, v18, 0, 0, v24, a5, a6, *&a7, *_Q4.i8);
    v152 = v152 + *v24.i32;
    ++v151;
    ++v19;
  }

  while (v151 != 16);
  v153 = *MEMORY[0x29EDCA608];
  return v152;
}

float D3DX_BC7::Refine(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v32[3] = *MEMORY[0x29EDCA608];
  v10 = v32 + 1;
  v11 = D3DX_BC7::ms_aInfo[16 * *a2 - *a2];
  v12 = v11 + 1;
  v13 = &a2[24 * a3 + 5];
  do
  {
    *(v10 - 1) = D3DX_BC7::Quantize(v13 - 4, &D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 11]);
    v14 = D3DX_BC7::Quantize(v13, &D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 11]);
    *v10 = v14;
    v10 += 2;
    v13 += 8;
    --v12;
  }

  while (v12);
  D3DX_BC7::FixEndpointPBits(v14, a2, v32, v24);
  D3DX_BC7::AssignIndices(v15, a2, a3, a5, v24, v30, v29, v26);
  v16 = D3DX_BC7::OptimizeEndPoints(a1, a2, a3, a5, v26, v24, v31);
  D3DX_BC7::FixEndpointPBits(v16, a2, v31, v23);
  D3DX_BC7::AssignIndices(v17, a2, a3, a5, v23, v28, v27, v25);
  v18 = 0;
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    v20 = v20 + *&v26[v18 / 4];
    v19 = v19 + *&v25[v18 / 4];
    v18 += 4;
  }

  while (4 * v11 + 4 != v18);
  if (v19 >= v20)
  {
    D3DX_BC7::EmitBlock(a1, a2, a3, a4, a5, v24, v30, v29);
    v19 = v20;
  }

  else
  {
    D3DX_BC7::EmitBlock(a1, a2, a3, a4, a5, v23, v28, v27);
  }

  v21 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t D3DX_BC7::GeneratePaletteQuantized(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5)
{
  v8 = &D3DX_BC7::ms_aInfo[16 * *a2 - *a2];
  v9 = v8 + 5;
  if (a3)
  {
    v10 = v8 + 6;
  }

  else
  {
    v10 = v8 + 5;
  }

  if (!a3)
  {
    v9 = v8 + 6;
  }

  v11 = *v10;
  v12 = *v9;
  v13 = 1 << v11;
  v20 = D3DX_BC7::Unquantize(a4, v8 + 11);
  v19 = D3DX_BC7::Unquantize(a4 + 4, &D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 11]);
  if (v12)
  {
    v14 = 0;
    v15 = a5;
    do
    {
      LDRColorA::InterpolateRGB(&v20, &v19, v14++, v11, v15);
      v15 += 4;
    }

    while (v13 != v14);
    v16 = 1;
    do
    {
      result = LDRColorA::InterpolateA(&v20, &v19, v16 - 1, v12, a5);
      v18 = v16++ >> v12;
      a5 += 4;
    }

    while (!v18);
  }

  else
  {
    do
    {
      LDRColorA::InterpolateRGB(&v20, &v19, v12, v11, a5);
      result = LDRColorA::InterpolateA(&v20, &v19, v12++, v11, a5);
      a5 += 4;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t D3DX_BC7::Unquantize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = D3DX_BC7::Unquantize(*a1, *a2);
  v5 = D3DX_BC7::Unquantize(a1[1], a2[1]);
  v6 = D3DX_BC7::Unquantize(a1[2], a2[2]);
  if (a2[3])
  {
    v7 = D3DX_BC7::Unquantize(a1[3], a2[3]) << 24;
  }

  else
  {
    v7 = -16777216;
  }

  return v7 | (v6 << 16) | (v5 << 8) | v4;
}

float D3DX_BC7::PerturbOne(float a1, uint64_t a2, unsigned __int8 *a3, __int32 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, char a10)
{
  v16 = *LDRColorA::operator[](&D3DX_BC7::ms_aInfo[16 * *a3 - *a3 + 11], a7);
  v17 = *a8;
  *a9 = *a8;
  v35 = v17;
  if (a10)
  {
    v18 = LDRColorA::operator[](a9 + 4, a7);
    v19 = &v35 + 4;
  }

  else
  {
    v18 = LDRColorA::operator[](a9, a7);
    v19 = &v35;
  }

  v20 = LDRColorA::operator[](v19, a7);
  v21 = v20;
  v22 = 1 << (v16 - 1);
  v23 = 1 << v16;
  do
  {
    v24 = 0;
    v25 = 0;
    v26 = -v22;
    v32 = v22;
    v27 = 2 * v22;
    v28 = -3;
    do
    {
      v29 = v26 + *v18;
      if (v29 >= 0 && v29 < v23)
      {
        *v21 = v29;
        v30 = D3DX_BC7::MapColors(v20, a3, a4, a5, a6, &v35, a1);
        v25 |= v30 < a1;
        if (v30 < a1)
        {
          v24 = v26;
          a1 = v30;
        }
      }

      v26 += v27;
      v28 += 2;
    }

    while (v28 < 0);
    if (v25)
    {
      *v18 += v24;
    }

    v22 = v32 >> 1;
  }

  while (v32 >= 2);
  return a1;
}

uint64_t LDRColorA::operator[](uint64_t result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result += 2;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_10;
      }

      result += 3;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return ++result;
    }

LABEL_10:
    LDRColorA::operator[]();
  }

  return result;
}

{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result += 2;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_10;
      }

      result += 3;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return ++result;
    }

LABEL_10:
    LDRColorA::operator[]();
  }

  return result;
}

float D3DX_BC7::MapColors(uint64_t a1, unsigned __int8 *a2, __int32 *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, float a7)
{
  v25 = *MEMORY[0x29EDCA608];
  v10 = &D3DX_BC7::ms_aInfo[16 * *a2 - *a2];
  v11 = (v10 + 6);
  v12 = (v10 + 5);
  if (a5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (!a5)
  {
    v12 = v11;
  }

  v14 = *v13;
  v15 = *v12;
  D3DX_BC7::GeneratePaletteQuantized(a1, a2, a5, a6, v24);
  v21 = 0.0;
  if (a4)
  {
    while (1)
    {
      *v16.i32 = ComputeError(a3, v24, v14, v15, 0, 0, v16, v17, v18, v19, v20);
      v21 = v21 + *v16.i32;
      if (v21 > a7)
      {
        break;
      }

      ++a3;
      if (!--a4)
      {
        goto LABEL_11;
      }
    }

    v21 = 3.4028e38;
  }

LABEL_11:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

char *D3DX_BC7::Exhaustive(uint64_t a1, unsigned __int8 *a2, __int32 *a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, uint64_t *a8)
{
  result = LDRColorA::operator[](&D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 11], a6);
  if (*a7 != 0.0)
  {
    v39 = a7;
    v16 = *result;
    v42 = *a8;
    v17 = *LDRColorA::operator[](a8, a6);
    if (v17 <= 5)
    {
      v17 = 5;
    }

    v18 = v17 - 5;
    v19 = -1 << v16;
    v20 = *LDRColorA::operator[](a8, a6) + 5;
    if (v20 >= ~v19)
    {
      v20 = ~v19;
    }

    v41 = v20;
    v21 = *LDRColorA::operator[](a8 + 4, a6);
    if (v21 <= 5)
    {
      v21 = 5;
    }

    v22 = v21 - 5;
    v23 = *LDRColorA::operator[](a8 + 4, a6) + 5;
    if (v23 >= ~v19)
    {
      v23 = ~v19;
    }

    v40 = v23;
    v24 = *v39;
    v38 = a8;
    v25 = *LDRColorA::operator[](a8, a6);
    v37 = a8 + 4;
    if (v25 <= *LDRColorA::operator[](a8 + 4, a6))
    {
      if (v18 <= v41)
      {
        v26 = 0;
        v27 = 0;
        v33 = v40;
        do
        {
          if (v18 <= v22)
          {
            v34 = v22;
          }

          else
          {
            v34 = v18;
          }

          if (v34 < v33)
          {
            do
            {
              *LDRColorA::operator[](&v42, a6) = v18;
              v35 = LDRColorA::operator[](&v42 + 4, a6);
              *v35 = v34;
              v36 = D3DX_BC7::MapColors(v35, a2, a3, a4, a5, &v42, v24);
              v33 = v40;
              if (v36 < v24)
              {
                v27 = v34;
                v24 = v36;
                v26 = v18;
              }

              ++v34;
            }

            while (v34 < v40);
          }

          v32 = v18++ >= v41;
        }

        while (!v32);
        goto LABEL_35;
      }
    }

    else if (v22 < v40)
    {
      v26 = 0;
      v27 = 0;
      v28 = v41;
      do
      {
        if (v22 <= v18)
        {
          v29 = v18;
        }

        else
        {
          v29 = v22;
        }

        if (v29 <= v28)
        {
          do
          {
            *LDRColorA::operator[](&v42, a6) = v29;
            v30 = LDRColorA::operator[](&v42 + 4, a6);
            *v30 = v22;
            v31 = D3DX_BC7::MapColors(v30, a2, a3, a4, a5, &v42, v24);
            v28 = v41;
            if (v31 < v24)
            {
              v27 = v22;
              v24 = v31;
              v26 = v29;
            }

            v32 = v29++ >= v41;
          }

          while (!v32);
        }

        ++v22;
      }

      while (v22 != v40);
      goto LABEL_35;
    }

    v27 = 0;
    v26 = 0;
LABEL_35:
    result = v38;
    if (v24 < *v39)
    {
      *LDRColorA::operator[](v38, a6) = v26;
      result = LDRColorA::operator[](v37, a6);
      *result = v27;
      *v39 = v24;
    }
  }

  return result;
}

_BYTE *D3DX_BC7::OptimizeOne(uint64_t a1, unsigned __int8 *a2, __int32 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, float a8)
{
  v8 = a8;
  v10 = 0;
  v36[0] = a8;
  *a7 = *a6;
  v23 = a7 + 4;
  do
  {
    result = LDRColorA::operator[](&D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 11], v10);
    if (!*result)
    {
      goto LABEL_15;
    }

    v13 = D3DX_BC7::PerturbOne(v8, a1, a2, a3, a4, a5, v10, a7, &v35, 0);
    v14 = D3DX_BC7::PerturbOne(v8, a1, a2, a3, a4, a5, v10, a7, &v34, 1);
    v30 = LDRColorA::operator[](a7, v10);
    v29 = LDRColorA::operator[](v23, v10);
    v28 = LDRColorA::operator[](&v35, v10);
    v15 = LDRColorA::operator[](&v35 + 4, v10);
    v31 = v15;
    if (v13 >= v14)
    {
      v17 = v15;
      result = a1;
      v16 = v29;
      if (v14 >= v8)
      {
        goto LABEL_15;
      }

      v18 = 0;
      v8 = v14;
    }

    else
    {
      result = a1;
      v16 = v30;
      v17 = v28;
      if (v13 >= v8)
      {
        goto LABEL_15;
      }

      v18 = 1;
      v8 = v13;
    }

    *v16 = *v17;
    v19 = D3DX_BC7::PerturbOne(v8, result, a2, a3, a4, a5, v10, a7, &v33, v18);
    for (i = v31; v19 < v8; i = v31)
    {
      v8 = v19;
      if (v18)
      {
        v21 = v29;
      }

      else
      {
        v21 = v30;
      }

      if (!v18)
      {
        i = v28;
      }

      *v21 = *i;
      v18 = 1 - v18;
      v19 = D3DX_BC7::PerturbOne(v19, a1, a2, a3, a4, a5, v10, a7, &v33, v18);
    }

LABEL_15:
    ++v10;
  }

  while (v10 != 4);
  v22 = 0;
  v36[0] = v8;
  do
  {
    result = D3DX_BC7::Exhaustive(result, a2, a3, a4, a5, v22++, v36, a7);
  }

  while (v22 != 4);
  return result;
}

_BYTE *D3DX_BC7::OptimizeEndPoints(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 0;
  v24 = *MEMORY[0x29EDCA608];
  v14 = D3DX_BC7::ms_aInfo[16 * *a2 - *a2];
  v15 = &bc67_partitionTable[1024 * v14 + 16 * a3];
  do
  {
    v16 = 0;
    v17 = v15;
    for (i = 1537; i != 1601; i += 4)
    {
      v19 = *v17++;
      if (v13 == v19)
      {
        v23[v16++] = *&a2[i];
      }
    }

    result = D3DX_BC7::OptimizeOne(a1, a2, v23, v16, a4, (a6 + 8 * v13), (a7 + 8 * v13), *(a5 + 4 * v13));
  }

  while (v13++ != v14);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void D3DX_BC7::AssignIndices(uint64_t PaletteQuantized, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _DWORD *a7, _DWORD *a8)
{
  v11 = a5;
  v53 = *MEMORY[0x29EDCA608];
  v14 = &D3DX_BC7::ms_aInfo[16 * *a2 - *a2];
  v15 = *v14;
  v16 = 5;
  if (a4)
  {
    v16 = 6;
  }

  v17 = v14[v16];
  v18 = v14 + 5;
  v19 = v14 + 6;
  if (a4)
  {
    v19 = v18;
  }

  v48 = v17;
  v46 = *v19;
  v20 = (1 << v17);
  v44 = (1 << v46);
  v51 = v15;
  v21 = v15 + 1;
  v22 = v52;
  v23 = a8;
  do
  {
    PaletteQuantized = D3DX_BC7::GeneratePaletteQuantized(PaletteQuantized, a2, a4, v11, v22);
    *v23++ = 0;
    v22 += 64;
    v11 += 8;
    --v21;
  }

  while (v21);
  v29 = 0;
  v47 = v20 >> 1;
  v30 = a2 + 1537;
  v45 = (v51 << 10) + 16 * a3;
  v31 = &bc67_partitionTable[v45];
  do
  {
    v32 = *v31++;
    *v24.i32 = ComputeError(&v30[v29 * 4], &v52[64 * v32], v48, v46, (a6 + v29 * 4), &a7[v29], v24, v25, v26, v27, v28);
    LODWORD(v25) = a8[v32];
    *v24.i32 = *v24.i32 + *&v25;
    a8[v32] = v24.i32[0];
    ++v29;
  }

  while (v29 != 16);
  v33 = 0;
  if (v46)
  {
    v34 = vdupq_n_s32(v44);
    do
    {
      v35 = &a5[8 * v33];
      if ((*(a6 + 4 * bc67_fixups[192 * v51 + 3 * a3 + v33]) & v47) != 0)
      {
        v36 = 0;
        v37 = *v35;
        *v35 = v35[4];
        v35[4] = v37;
        v38 = *(v35 + 1);
        *(v35 + 1) = *(v35 + 5);
        *(v35 + 5) = v38;
        do
        {
          if (v33 == bc67_partitionTable[v45 + v36])
          {
            *(a6 + 4 * v36) = v20 + ~*(a6 + 4 * v36);
          }

          ++v36;
        }

        while (v36 != 16);
      }

      if ((*a7 & (v44 >> 1)) != 0)
      {
        v39 = 0;
        v40 = v35[3];
        v35[3] = v35[7];
        v35[7] = v40;
        do
        {
          *&a7[v39] = vaddq_s32(v34, vmvnq_s8(*&a7[v39]));
          v39 += 4;
        }

        while (v39 != 16);
      }

      v41 = v33++ == v51;
    }

    while (!v41);
  }

  else
  {
    do
    {
      if ((*(a6 + 4 * bc67_fixups[192 * v51 + 3 * a3 + v33]) & v47) != 0)
      {
        v42 = 0;
        *&a5[8 * v33] = vrev64_s32(*&a5[8 * v33]);
        do
        {
          if (v33 == bc67_partitionTable[v45 + v42])
          {
            *(a6 + 4 * v42) = v20 + ~*(a6 + 4 * v42);
          }

          ++v42;
        }

        while (v42 != 16);
      }

      v41 = v33++ == v51;
    }

    while (!v41);
  }

  v43 = *MEMORY[0x29EDCA608];
}

float ComputeError(__int32 *a1, uint64_t a2, char a3, int a4, _DWORD *a5, _DWORD *a6, uint8x8_t a7, double a8, double a9, double a10, uint8x8_t a11)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v11 = 1 << a3;
  a7.i32[0] = *a1;
  v12.i64[0] = vmovl_u8(a7).u64[0];
  v13 = vdupq_n_s32(0x4B400000u);
  v14 = vdupq_n_s32(0xCB400000);
  v15 = vaddq_f32(vorrq_s8(vmovl_u16(*v12.f32), v13), v14);
  if (a4)
  {
    v16 = 0;
    v17 = v12.u8[6];
    v18 = 1;
    v19 = 3.4028e38;
    while (1)
    {
      v12.i32[0] = *(a2 + 4 * v16);
      v20 = vsubq_f32(v15, vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v12.f32)), v13), v14));
      v12 = vmulq_f32(v20, v20);
      v21 = v12.f32[2] + vaddv_f32(*v12.f32);
      if (v21 > v19)
      {
        break;
      }

      if (v21 < v19)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      if (a5 && v21 < v19)
      {
        *a5 = v18 - 1;
        v22 = v21;
      }

      if (v11 > v18)
      {
        v16 = v18++;
        v19 = v22;
        if (v22 > 0.0)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    v22 = v19;
LABEL_29:
    v30 = 0;
    v31 = v22 + 0.0;
    v32 = v17;
    v33 = 1;
    v34 = 3.4028e38;
    while (1)
    {
      v15.i8[0] = *(a2 + 4 * v30 + 3);
      v35 = (v32 - v15.u32[0]) * (v32 - v15.u32[0]);
      if (v35 > v34)
      {
        break;
      }

      if (v35 < v34)
      {
        v15.f32[0] = (v32 - v15.u32[0]) * (v32 - v15.u32[0]);
      }

      else
      {
        v15.f32[0] = v34;
      }

      if (a6 && v35 < v34)
      {
        *a6 = v33 - 1;
        v15.f32[0] = v35;
      }

      v30 = v33;
      if (!(v33 >> a4))
      {
        ++v33;
        v34 = v15.f32[0];
        if (v15.f32[0] > 0.0)
        {
          continue;
        }
      }

      return v31 + v15.f32[0];
    }

    v15.f32[0] = v34;
    return v31 + v15.f32[0];
  }

  else
  {
    v23 = 0;
    v24 = 1;
    v25 = 3.4028e38;
    while (1)
    {
      a11.i32[0] = *(a2 + 4 * v23);
      v26 = vsubq_f32(v15, vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a11)), v13), v14));
      v27 = vmulq_f32(v26, v26);
      a11 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v28 = vaddv_f32(a11);
      if (v28 > v25)
      {
        break;
      }

      if (v28 < v25)
      {
        v29 = v28;
      }

      else
      {
        v29 = v25;
      }

      if (a5 && v28 < v25)
      {
        *a5 = v24 - 1;
        v29 = v28;
      }

      if (v11 > v24)
      {
        v23 = v24++;
        v25 = v29;
        if (v29 > 0.0)
        {
          continue;
        }
      }

      return v29 + 0.0;
    }

    v29 = v25;
    return v29 + 0.0;
  }
}

uint64_t D3DX_BC7::EmitBlock(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v14 = *a2;
  v15 = &D3DX_BC7::ms_aInfo[16 * v14 - v14];
  v16 = *v15;
  v17 = v15[2];
  v56 = v15[5];
  v18 = v15[6];
  v19 = *(v15 + 7);
  v66 = *(v15 + 11);
  v67 = v19;
  v65 = 0;
  CBits<16ul>::SetBits(a1, &v65, v14, 0);
  CBits<16ul>::SetBits(v13, &v65, 1uLL, 1u);
  CBits<16ul>::SetBits(v13, &v65, D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 3], a4);
  v52 = a5;
  CBits<16ul>::SetBits(v13, &v65, D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 4], a5);
  v50 = a3;
  v51 = a2;
  CBits<16ul>::SetBits(v13, &v65, D3DX_BC7::ms_aInfo[16 * *a2 - *a2 + 1], a3);
  v59 = v17;
  if (v17)
  {
    v20 = 0;
    v57 = v13;
    v58 = 2 * v16 + 2;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v54 = v16 + 1;
    do
    {
      v60 = 0;
      v21 = v54;
      v22 = a6;
      do
      {
        v23 = *LDRColorA::operator[](&v67, v20);
        v24 = *LDRColorA::operator[](&v66, v20);
        v25 = *LDRColorA::operator[](&v67, v20);
        v26 = *LDRColorA::operator[](v22, v20);
        if (v23 == v24)
        {
          CBits<16ul>::SetBits(v13, &v65, v25, v26);
          v27 = *LDRColorA::operator[](&v67, v20);
          v28 = LDRColorA::operator[](v22 + 4, v20);
          CBits<16ul>::SetBits(v13, &v65, v27, *v28);
        }

        else
        {
          CBits<16ul>::SetBits(v13, &v65, v25, v26 >> 1);
          v29 = *LDRColorA::operator[](&v67, v20);
          v30 = LDRColorA::operator[](v22 + 4, v20);
          CBits<16ul>::SetBits(v13, &v65, v29, *v30 >> 1);
          v31 = v60 + 1;
          v32 = v60 * v59 / v58;
          *(&v63 + v32) += *LDRColorA::operator[](v22, v20) & 1;
          ++*(&v61 + v32);
          v60 += 2;
          v33 = v31 * v59 / v58;
          *(&v63 + v33) += *LDRColorA::operator[](v22 + 4, v20) & 1;
          ++*(&v61 + v33);
          v13 = v57;
        }

        v22 += 8;
        --v21;
      }

      while (v21);
      ++v20;
    }

    while (v20 != 4);
    v34 = 0;
    do
    {
      CBits<16ul>::SetBits(v13, &v65, 1uLL, *(&v63 + v34) > (*(&v61 + v34) >> 1));
      ++v34;
    }

    while (v59 != v34);
  }

  else
  {
    v35 = 0;
    v36 = v16 + 1;
    do
    {
      v37 = a6;
      v38 = v36;
      do
      {
        v39 = *LDRColorA::operator[](&v67, v35);
        v40 = LDRColorA::operator[](v37, v35);
        CBits<16ul>::SetBits(v13, &v65, v39, *v40);
        v41 = *LDRColorA::operator[](&v67, v35);
        v42 = LDRColorA::operator[](v37 + 4, v35);
        CBits<16ul>::SetBits(v13, &v65, v41, *v42);
        v37 += 8;
        --v38;
      }

      while (v38);
      ++v35;
    }

    while (v35 != 4);
  }

  v43 = 0;
  if (v52)
  {
    v44 = a8;
  }

  else
  {
    v44 = a7;
  }

  do
  {
    v45 = 0;
    do
    {
      v46 = bc67_fixups[192 * D3DX_BC7::ms_aInfo[16 * *v51 - *v51] + 3 * v50 + v45];
      if (v45 >= D3DX_BC7::ms_aInfo[16 * *v51 - *v51])
      {
        break;
      }

      ++v45;
    }

    while (v43 != v46);
    result = CBits<16ul>::SetBits(v13, &v65, v56 - (v43 == v46), *(v44 + 4 * v43));
    ++v43;
  }

  while (v43 != 16);
  if (v52)
  {
    v48 = a7;
  }

  else
  {
    v48 = a8;
  }

  if (v18)
  {
    for (i = 0; i != 64; i += 4)
    {
      result = CBits<16ul>::SetBits(v13, &v65, (__PAIR128__(v18, i) - 1) >> 64, *(v48 + i));
    }
  }

  return result;
}

void D3DX_BC7::FixEndpointPBits(uint64_t a1, _BYTE *a2, void *a3, void *a4)
{
  *&v53[20] = *MEMORY[0x29EDCA608];
  v4 = D3DX_BC7::ms_aInfo[16 * *a2 - *a2];
  *a4 = *a3;
  a4[1] = a3[1];
  a4[2] = a3[2];
  v5 = *a2;
  if (((0x34uLL >> v5) & 1) == 0)
  {
    v6 = a4;
    v38 = v4;
    v7 = 0;
    v8 = &D3DX_BC7::ms_aInfo[16 * v5 - v5];
    v43 = v8[2];
    v42 = 2 * v4 + 2;
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v47 = *(v8 + 7);
    v48 = 0;
    v46 = *(v8 + 11);
    v39 = v4 + 1;
    do
    {
      v45 = 0;
      v9 = a3;
      v10 = v6;
      v11 = v39;
      do
      {
        v12 = *LDRColorA::operator[](&v47, v7);
        v13 = *LDRColorA::operator[](&v46, v7);
        v14 = *LDRColorA::operator[](v9, v7);
        if (v12 == v13)
        {
          *LDRColorA::operator[](v10, v7) = v14;
          v15 = *LDRColorA::operator[](v9 + 4, v7);
          *LDRColorA::operator[](v10 + 4, v7) = v15;
        }

        else
        {
          *LDRColorA::operator[](v10, v7) = v14 >> 1;
          v16 = *LDRColorA::operator[](v9 + 4, v7) >> 1;
          *LDRColorA::operator[](v10 + 4, v7) = v16;
          v44 = v45 + 1;
          v17 = v45 * v43 / v42;
          *(&v50 + v17) += *LDRColorA::operator[](v9, v7) & 1;
          ++*(&v48 + v17);
          v45 += 2;
          v18 = v44 * v43 / v42;
          *(&v50 + v18) += *LDRColorA::operator[](v9 + 4, v7) & 1;
          ++*(&v48 + v18);
        }

        v10 += 8;
        v9 += 8;
        --v11;
      }

      while (v11);
      ++v7;
      v6 = a4;
    }

    while (v7 != 4);
    v19 = 0;
    v20 = v43;
    if (v43 <= 1)
    {
      v20 = 1;
    }

    do
    {
      v52[v19] = *(&v50 + v19) > (*(&v48 + v19) >> 1);
      ++v19;
    }

    while (v20 != v19);
    if (*a2 == 1)
    {
      for (i = 0; i != 4; ++i)
      {
        v22 = v52;
        v23 = a4;
        v24 = v38 + 1;
        do
        {
          v25 = LDRColorA::operator[](v23, i);
          v26 = *v22++;
          v27 = v26 | (2 * *v25);
          *LDRColorA::operator[](v23, i) = v27;
          v28 = v26 | (2 * *LDRColorA::operator[](v23 + 4, i));
          *LDRColorA::operator[](v23 + 4, i) = v28;
          v23 += 8;
          --v24;
        }

        while (v24);
      }
    }

    else
    {
      for (j = 0; j != 4; ++j)
      {
        v30 = v53;
        v31 = a4;
        v32 = v38 + 1;
        do
        {
          v33 = *(v30 - 1) | (2 * *LDRColorA::operator[](v31, j));
          *LDRColorA::operator[](v31, j) = v33;
          v34 = LDRColorA::operator[](v31 + 4, j);
          v35 = *v30;
          v30 += 2;
          LOBYTE(v33) = v35 | (2 * *v34);
          *LDRColorA::operator[](v31 + 4, j) = v33;
          v31 += 8;
          --v32;
        }

        while (v32);
      }
    }
  }

  v36 = *MEMORY[0x29EDCA608];
}

uint64_t D3DX_BC7::Quantize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = D3DX_BC7::Quantize(*a1, *a2);
  v5 = D3DX_BC7::Quantize(a1[1], a2[1]);
  v6 = D3DX_BC7::Quantize(a1[2], a2[2]);
  if (a2[3])
  {
    v7 = D3DX_BC7::Quantize(a1[3], a2[3]) << 24;
  }

  else
  {
    v7 = -16777216;
  }

  return v7 | (v6 << 16) | (v5 << 8) | v4;
}

float encode_bc7(uint64_t a1, float *a2, int16x8_t *a3)
{
  if (*(a1 + 136))
  {
    v4 = 0x200000;
  }

  else
  {
    v4 = 0x100000;
  }

  result = D3DX_BC7::Encode(a3, v4, (a1 + 400)) / 65025.0;
  *a2 = result;
  return result;
}

uint64_t D3DX_BC7::Unquantize(D3DX_BC7 *this, uint64_t a2)
{
  if ((a2 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    D3DX_BC7::Unquantize();
  }

  return ((this << (8 - a2)) >> a2) | (this << (8 - a2));
}

uint64_t D3DX_BC7::Quantize(D3DX_BC7 *this, int a2)
{
  if ((a2 - 9) <= 0xFFFFFFF7)
  {
    D3DX_BC7::Quantize();
  }

  v2 = (1 << (7 - a2)) + this;
  if (v2 >= 0xFF)
  {
    v2 = 255;
  }

  v3 = v2 >> (8 - a2);
  if (a2 == 8)
  {
    LOBYTE(v3) = this;
  }

  return v3;
}

void CBits<16ul>::SetBits()
{
  __assert_rtn("SetBits", "BC_impl.h", 445, "uValue < (1 << uNumBits)");
}

{
  __assert_rtn("SetBits", "BC_impl.h", 444, "uStartBit + uNumBits <= 128 && uNumBits <= 8");
}

void LDRColorA::operator[]()
{
  __assert_rtn("operator[]", "BC_impl.h", 319, "false");
}

{
  __assert_rtn("operator[]", "BC_impl.h", 331, "false");
}

void encode_bc4(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v4 = 0;
  v13 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  v5 = (a1 + 400);
  do
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v9 = *v5;
    v8 = *(v5 + 1);
    v5 += 4;
    v8.i64[0] = vzip1q_s32(v9, v8).u64[0];
    v8.i64[1] = vextq_s8(v7, vzip1q_s32(*&v7, v6), 8uLL).i64[1];
    *&v12[v4] = v8;
    v4 += 4;
  }

  while (v4 != 16);
  *&v10 = FindEndPointsBC4U(v12, a3, a3 + 1);
  FindClosestUNORM(a3, v12, v10);
  v11 = *MEMORY[0x29EDCA608];
}

float FindEndPointsBC4U(float *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = *a1;
  v7 = *a1;
  do
  {
    v8 = a1[v5];
    if (v8 >= v7)
    {
      if (v8 > v6)
      {
        v6 = a1[v5];
      }
    }

    else
    {
      v7 = a1[v5];
    }

    ++v5;
  }

  while (v5 != 16);
  v13 = 0;
  if (v7 == 0.0 || v6 == 1.0)
  {
    OptimizeAlpha<false>(&v13 + 1, &v13, a1, 6u);
    v10 = (*(&v13 + 1) * 255.0);
    result = *&v13 * 255.0;
    *a3 = (*&v13 * 255.0);
    *a2 = v10;
  }

  else
  {
    OptimizeAlpha<false>(&v13 + 1, &v13, a1, 8u);
    v11 = (*(&v13 + 1) * 255.0);
    result = *&v13 * 255.0;
    *a2 = (*&v13 * 255.0);
    *a3 = v11;
  }

  return result;
}

void FindClosestUNORM(BC4_UNORM *this, const float *a2, double a3)
{
  v5 = 0;
  v14 = *MEMORY[0x29EDCA608];
  do
  {
    a3 = BC4_UNORM::DecodeFromIndex(this, v5, *&a3);
    v13[v5++] = *&a3;
  }

  while (v5 != 8);
  v6 = 0;
  v7 = *this;
  do
  {
    v8 = 0;
    v9 = 0;
    v10 = 100000.0;
    do
    {
      v11 = vabds_f32(v13[v8], a2[v6]);
      if (v11 < v10)
      {
        v9 = v8;
        v10 = v11;
      }

      ++v8;
    }

    while (v8 != 8);
    v7 = v7 & ~(458752 << (3 * v6)) | (v9 << (3 * v6 + 16));
    *this = v7;
    ++v6;
  }

  while (v6 != 16);
  v12 = *MEMORY[0x29EDCA608];
}

void encode_bc5(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v4 = 0;
  v17 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *(a3 + 1) = 0;
  v5 = (a1 + 400);
  do
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v9 = *v5;
    v8 = *(v5 + 1);
    v5 += 4;
    *&v10 = vzip1q_s32(v9, v8).u64[0];
    v11 = vzip1q_s32(v7, v6);
    *(&v10 + 1) = vextq_s8(v7, v11, 8uLL).i64[1];
    *&v16[v4] = v10;
    v7.i64[0] = vtrn2q_s32(v9, v8).u64[0];
    v7.i64[1] = v11.i64[1];
    *&v15[v4] = v7;
    v4 += 4;
  }

  while (v4 != 16);
  FindEndPointsBC4U(v16, a3, a3 + 1);
  *&v12 = FindEndPointsBC4U(v15, a3 + 8, a3 + 9);
  FindClosestUNORM(a3, v16, v12);
  FindClosestUNORM((a3 + 8), v15, v13);
  v14 = *MEMORY[0x29EDCA608];
}

float *OptimizeAlpha<false>(float *result, float *a2, uint64_t a3, unsigned int a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = &OptimizeAlpha<false>(float *,float *,float const*,unsigned int)::pC8;
  if (a4 == 6)
  {
    v4 = &OptimizeAlpha<false>(float *,float *,float const*,unsigned int)::pC6;
  }

  v5 = &OptimizeAlpha<false>(float *,float *,float const*,unsigned int)::pD8;
  if (a4 == 6)
  {
    v5 = &OptimizeAlpha<false>(float *,float *,float const*,unsigned int)::pD6;
  }

  if (a4 == 8)
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 1.0;
    do
    {
      v9 = *(a3 + v6);
      if (v9 < v8)
      {
        v8 = *(a3 + v6);
      }

      if (v9 > v7)
      {
        v7 = *(a3 + v6);
      }

      v6 += 4;
    }

    while (v6 != 64);
  }

  else
  {
    v10 = 0;
    v7 = 0.0;
    v8 = 1.0;
    do
    {
      v11 = *(a3 + v10);
      if (v11 > 0.0 && v11 < v8)
      {
        v8 = *(a3 + v10);
      }

      if (v11 < 1.0 && v11 > v7)
      {
        v7 = *(a3 + v10);
      }

      v10 += 4;
    }

    while (v10 != 64);
    if (v8 == v7)
    {
      v7 = 1.0;
    }
  }

  v14 = 0;
  v15 = (a4 - 1);
  do
  {
    if ((v7 - v8) < 0.0039062)
    {
      break;
    }

    if (a4)
    {
      v16 = v44;
      v17 = v4;
      v18 = v5;
      v19 = a4;
      do
      {
        v20 = *v17++;
        v21 = v20;
        v22 = *v18++;
        *v16++ = (v7 * v22) + (v8 * v21);
        --v19;
      }

      while (v19);
      if (a4 == 6)
      {
        v45 = 0x3F80000000000000;
      }
    }

    v23 = 0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    do
    {
      v28 = *(a3 + v23);
      v29 = (v15 / (v7 - v8)) * (v28 - v8);
      if (v29 <= 0.0)
      {
        if (v28 <= (v8 * 0.5) && a4 == 6)
        {
          v30 = 6;
        }

        else
        {
          v30 = 0;
        }
      }

      else if (v29 >= v15)
      {
        if (a4 != 6 || v28 < ((v7 + 1.0) * 0.5))
        {
          v30 = a4 - 1;
        }

        else
        {
          v30 = 7;
        }
      }

      else
      {
        v30 = (v29 + 0.5);
      }

      if (v30 < a4)
      {
        v33 = v44[v30] - v28;
        v34 = v4[v30];
        v27 = v27 + (v34 * v33);
        v25 = v25 + (v34 * v34);
        v35 = v5[v30];
        v26 = v26 + (v33 * v35);
        v24 = v24 + (v35 * v35);
      }

      v23 += 4;
    }

    while (v23 != 64);
    if (v25 > 0.0)
    {
      v8 = v8 - (v27 / v25);
    }

    if (v24 > 0.0)
    {
      v7 = v7 - (v26 / v24);
    }

    v36 = v7;
    if (v8 > v7)
    {
      v7 = v8;
      v8 = v36;
    }

    v37 = v27 * v27;
    if ((v26 * v26) < 0.015625 && v37 < 0.015625)
    {
      break;
    }

    ++v14;
  }

  while (v14 != 8);
  v40 = 1.0;
  if (v8 <= 1.0)
  {
    v41 = v8;
  }

  else
  {
    v41 = 1.0;
  }

  if (v8 < 0.0)
  {
    v41 = 0.0;
  }

  *result = v41;
  if (v7 <= 1.0)
  {
    v40 = v7;
  }

  if (v7 >= 0.0)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0.0;
  }

  *a2 = v42;
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

double BC4_UNORM::DecodeFromIndex(BC4_UNORM *this, uint64_t a2, float a3)
{
  v3 = a2 - 1;
  if (a2 == 1)
  {
    LOBYTE(a3) = *(this + 1);
    goto LABEL_5;
  }

  if (!a2)
  {
    LOBYTE(a3) = *this;
LABEL_5:
    v4 = LODWORD(a3);
    v5 = 255.0;
LABEL_6:
    *&result = v4 / v5;
    return result;
  }

  v7 = *this;
  v8 = v7 / 255.0;
  v9 = *(this + 1);
  v10 = v9 / 255.0;
  if (v7 > v9)
  {
    v4 = (v10 * v3) + (v8 * (8 - a2));
    v5 = 7.0;
    goto LABEL_6;
  }

  if (a2 == 6)
  {
    return 0.0;
  }

  if (a2 != 7)
  {
    v4 = (v10 * v3) + (v8 * (6 - a2));
    v5 = 5.0;
    goto LABEL_6;
  }

  LODWORD(result) = 1.0;
  return result;
}

size_t ATEncoder::GetBlockAddress(ATEncoder *this, at_size_t a2, at_size_t a3, const at_block_buffer_t *a4)
{
  v6 = (*(*this + 56))(this, *&a3.x, a3.z);
  blocks = a4->blocks;
  return blocks + (*(*this + 72))(this) * v6 + a4->rowBytes * HIDWORD(v6) + a4->sliceBytes * v8;
}

void EncodeDXTC_BC7_vec(uint64_t a1, float *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = a3;
  v1127 = *MEMORY[0x29EDCA608];
  if (*(a1 + 120) < 0.00024606 || (v14 = *(a1 + 134), v14 == 16))
  {
    __asm { FMOV            V1.4S, #1.0 }

    v20 = vmaxnmq_f32(vminnmq_f32(*(a1 + 16), _Q1), 0);
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    v22.i64[0] = 0x3F0000003F000000;
    v22.i64[1] = 0x3F0000003F000000;
    v23 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v22, vdupq_n_s32(0x437F0000u), v20)));
    *v20.f32 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v21, vdupq_n_s32(0x42FE0000u), v20)));
    v24 = v20.i8[0];
    v25 = v20.u8[2];
    v26 = v20.u8[4];
    v27 = vorr_s8(vadd_s16(*v20.f32, *v20.f32), vshr_n_u16((v20.i64[0] & 0xFF00FF00FF00FFLL), 6uLL));
    v1104 = xmmword_2984956E0;
    v1105 = unk_2984956F0;
    v1106 = xmmword_298495700;
    v1107 = unk_298495710;
    v28 = (v25 << 8) | (v26 << 16) & 0xFFFFFF | v24 | (v23.u8[6] << 24);
    v29 = v24 - 1;
    if (v27.u8[0] <= v23.u8[0])
    {
      v29 = v24 + 1;
    }

    if (v23.u8[0] != v27.u8[0])
    {
      v24 = v29;
    }

    v30 = v25 - 1;
    if (v27.u8[2] <= v23.u8[2])
    {
      v30 = v25 + 1;
    }

    if (v23.u8[2] != v27.u8[2])
    {
      v25 = v30;
    }

    v31 = v26 - 1;
    if (v27.u8[4] <= v23.u8[4])
    {
      v31 = v26 + 1;
    }

    if (v23.u8[4] != v27.u8[4])
    {
      v26 = v31;
    }

    v1086.i32[0] = v28;
    v1086.i32[1] = (v25 << 8) | (v26 << 16) | v24 | (v23.u16[3] << 24);
    v1125 = 0;
    bzero(&v1109, 0x641uLL);
    v1109.i8[0] = 5;
    D3DX_BC7::EmitBlock(v11, &v1109, 0, 0, 0, &v1086, &v1104, &v1104);
    *a2 = fmaxf(*(a1 + 120), 0.0);
    goto LABEL_16;
  }

  v1036 = *(a1 + 16);
  v33 = *(a1 + 124);
  __asm
  {
    FMOV            V15.4S, #3.0
    FMOV            V0.4S, #1.0
  }

  v1037 = _Q15;
  if (_NF ^ _VF | _ZF || !*(a1 + 136))
  {
    v56 = *(a1 + 144);
    v55 = *(a1 + 160);
    v57 = vdupq_lane_s32(*v1036.f32, 0);
    v58 = vsubq_f32(v56, v57);
    v59 = vsubq_f32(v55, v57);
    v1079 = *(a1 + 176);
    v60 = vsubq_f32(v1079, v57);
    v1076 = *(a1 + 192);
    v61 = vsubq_f32(v1076, v57);
    v62 = *(a1 + 240);
    v63 = *(a1 + 256);
    v64 = vdupq_lane_s32(*v1036.f32, 1);
    v66 = *(a1 + 208);
    v65 = *(a1 + 224);
    v67 = vsubq_f32(v66, v64);
    v68 = vsubq_f32(v65, v64);
    v69 = vsubq_f32(v62, v64);
    v70 = vsubq_f32(v63, v64);
    v71 = *(a1 + 304);
    v72 = vdupq_laneq_s32(v1036, 2);
    v1057 = *(a1 + 272);
    v73 = vsubq_f32(v1057, v72);
    v1070 = *(a1 + 288);
    v74 = vsubq_f32(v1070, v72);
    v75 = vsubq_f32(v71, v72);
    v1073 = *(a1 + 320);
    v76 = vsubq_f32(v1073, v72);
    v77 = vdupq_laneq_s32(v1036, 3);
    v1067 = *(a1 + 336);
    v78 = vsubq_f32(v1067, v77);
    v1064 = *(a1 + 352);
    v79 = vsubq_f32(v1064, v77);
    v1061 = *(a1 + 368);
    v80 = vsubq_f32(v1061, v77);
    v1059 = *(a1 + 384);
    v81 = vsubq_f32(v1059, v77);
    v82 = vmulq_f32(v61, v61);
    v83 = vmulq_f32(v60, v60);
    v84 = vmulq_f32(v59, v59);
    v85 = vmulq_f32(v58, v58);
    v86 = vmulq_f32(v70, v70);
    v87 = vmulq_f32(v69, v69);
    v88 = vmulq_f32(v68, v68);
    v89 = vmulq_f32(v67, v67);
    v90 = vmulq_f32(v76, v76);
    v91 = vmulq_f32(v75, v75);
    v53 = *(a1 + 32);
    v92 = vmulq_f32(v74, v74);
    v93 = vmulq_f32(v73, v73);
    v94 = vmulq_f32(v81, v81);
    v95 = vmulq_f32(v80, v80);
    v96 = vmulq_f32(v79, v79);
    v97 = vmulq_f32(v78, v78);
    if (v53)
    {
      v98 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v88, *v53, 1), v84, COERCE_FLOAT(*v53->f32)), v92, *v53->f32, 2), v96, *v53->f32, 3), v1037);
      v99 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v89, *v53, 1), v85, COERCE_FLOAT(*v53->f32)), v93, *v53->f32, 2), v97, *v53->f32, 3), v1037);
      v100 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v87, *v53, 1), v83, COERCE_FLOAT(*v53->f32)), v91, *v53->f32, 2), v95, *v53->f32, 3), v1037);
      v101 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v86, *v53, 1), v82, COERCE_FLOAT(*v53->f32)), v90, *v53->f32, 2), v94, *v53->f32, 3), v1037);
    }

    else
    {
      v99 = vaddq_f32(vaddq_f32(vaddq_f32(v85, v89), v93), v97);
      v98 = vaddq_f32(vaddq_f32(vaddq_f32(v84, v88), v92), v96);
      v100 = vaddq_f32(vaddq_f32(vaddq_f32(v83, v87), v91), v95);
      v101 = vaddq_f32(vaddq_f32(vaddq_f32(v82, v86), v90), v94);
    }

    if (*(a1 + 135))
    {
      v102.i64[0] = 0x7F0000007FLL;
      v102.i64[1] = 0x7F0000007FLL;
      v100 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v102, v100);
      v98 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v102, v98);
      v99 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v102, v99);
      v101 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v102, v101);
    }

    v103 = a1 + 400;
    v104 = vmaxnmq_f32(v99, v100);
    v105 = vmaxnmq_f32(v98, v101);
    v106 = vbslq_s8(vcgtq_f32(v100, v99), xmmword_298495610, xmmword_298495600);
    v107 = vmaxnmq_f32(v104, v105);
    v108 = vbslq_s8(vcgtq_f32(v105, v104), vbslq_s8(vcgtq_f32(v101, v98), xmmword_298495630, xmmword_298495620), v106);
    v109 = vextq_s8(v107, v107, 8uLL).u64[0];
    v110 = vmaxnm_f32(*v107.i8, v109);
    v111 = vbsl_s8(vcgt_f32(v109, *v107.i8), *&vextq_s8(v108, v108, 8uLL), *v108.i8);
    v112 = v111.i32[1];
    if ((vmvn_s8(vcge_f32(v110, vdup_lane_s32(v110, 1))).u8[0] & 1) == 0)
    {
      v112 = v111.i32[0];
    }

    v113 = *(v103 + 16 * v112);
    v114 = vsubq_f32(v1036, v113);
    v115 = vdupq_lane_s32(*v113.f32, 0);
    v116 = *(a1 + 144);
    v117 = vsubq_f32(v56, v115);
    v118 = vsubq_f32(v55, v115);
    v119 = vsubq_f32(v1079, v115);
    v120 = vsubq_f32(v1076, v115);
    v121 = vdupq_lane_s32(*v113.f32, 1);
    v122 = vsubq_f32(v66, v121);
    v123 = vsubq_f32(v65, v121);
    v124 = vsubq_f32(v62, v121);
    v125 = vsubq_f32(v63, v121);
    v126 = vdupq_laneq_s32(v113, 2);
    v127 = vsubq_f32(v1057, v126);
    v128 = vsubq_f32(v1070, v126);
    v129 = vsubq_f32(v71, v126);
    v130 = vsubq_f32(v1073, v126);
    v131 = vdupq_laneq_s32(v113, 3);
    v132 = vsubq_f32(v1067, v131);
    v133 = vsubq_f32(v1064, v131);
    v134 = vsubq_f32(v1061, v131);
    v135 = vsubq_f32(v1059, v131);
    v1017 = v120;
    v1019 = v118;
    v136 = vmulq_n_f32(v120, v114.f32[0]);
    v1026 = v122;
    v1029 = v119;
    v137 = vmulq_n_f32(v119, v114.f32[0]);
    v138 = vmulq_n_f32(v118, v114.f32[0]);
    v1046 = v117;
    v139 = vmulq_n_f32(v117, v114.f32[0]);
    v1013 = v125;
    v1015 = v124;
    v140 = vmulq_lane_f32(v125, *v114.f32, 1);
    v141 = vmulq_lane_f32(v124, *v114.f32, 1);
    v1023 = v127;
    v1024 = v123;
    v142 = vmulq_lane_f32(v123, *v114.f32, 1);
    v143 = vmulq_lane_f32(v122, *v114.f32, 1);
    v144 = vmulq_laneq_f32(v130, v114, 2);
    v145 = vmulq_laneq_f32(v129, v114, 2);
    v1021 = v128;
    v146 = vmulq_laneq_f32(v128, v114, 2);
    v147 = vmulq_laneq_f32(v127, v114, 2);
    v148 = vmulq_laneq_f32(v135, v114, 3);
    v149 = vmulq_laneq_f32(v134, v114, 3);
    v150 = vmulq_laneq_f32(v133, v114, 3);
    v151 = vmulq_laneq_f32(v132, v114, 3);
    v1011 = v139;
    v1053 = *(a1 + 304);
    v1055 = *(a1 + 224);
    v1006 = v149;
    v1008 = v150;
    v1042 = v151;
    v1043 = v148;
    v1038 = v145;
    v1041 = v144;
    v1032 = v146;
    v1034 = v147;
    v1002 = v137;
    v1004 = v138;
    v998 = v140;
    v1000 = v136;
    v1030 = v142;
    v1031 = v141;
    if (v53)
    {
      v152 = v151;
      v153 = vmlaq_n_f32(vmulq_lane_f32(v140, *v53, 1), v136, COERCE_FLOAT(*v53->f32));
      v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v141, *v53, 1), v137, COERCE_FLOAT(*v53->f32)), v145, *v53->f32, 2), v149, *v53->f32, 3);
      v155 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v142, *v53, 1), v138, COERCE_FLOAT(*v53->f32)), v146, *v53->f32, 2), v150, *v53->f32, 3), v1037);
      v156 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v143, *v53, 1), v139, COERCE_FLOAT(*v53->f32)), v147, *v53->f32, 2), v152, *v53->f32, 3), v1037);
      v157 = vmulq_f32(v154, v1037);
      v158 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(v153, v144, *v53->f32, 2), v148, *v53->f32, 3), v1037);
    }

    else
    {
      v156 = vaddq_f32(v151, vaddq_f32(v147, vaddq_f32(v139, v143)));
      v159 = v149;
      v155 = vaddq_f32(v150, vaddq_f32(v146, vaddq_f32(v138, v142)));
      v157 = vaddq_f32(v159, vaddq_f32(v145, vaddq_f32(v137, v141)));
      v158 = vaddq_f32(v148, vaddq_f32(v144, vaddq_f32(v136, v140)));
    }

    v160 = *(a1 + 160);
    v1044 = _Q0;
    v996 = v143;
    if (*(a1 + 135))
    {
      v161.i64[0] = 0x7F0000007FLL;
      v161.i64[1] = 0x7F0000007FLL;
      v157 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v161, v157);
      v155 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v161, v155);
      v156 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v161, v156);
      v158 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v161, v158);
    }

    v162 = vmaxnmq_f32(v156, v157);
    v163 = vmaxnmq_f32(v155, v158);
    v164 = vbslq_s8(vcgtq_f32(v157, v156), xmmword_298495610, xmmword_298495600);
    v165 = vbslq_s8(vcgtq_f32(v158, v155), xmmword_298495630, xmmword_298495620);
    v166 = vmaxnmq_f32(v162, v163);
    v167 = vbslq_s8(vcgtq_f32(v163, v162), v165, v164);
    v165.i64[0] = vextq_s8(v166, v166, 8uLL).u64[0];
    *v162.f32 = vmaxnm_f32(*v166.i8, *v165.i8);
    v168 = vbsl_s8(vcgt_f32(*v165.i8, *v166.i8), *&vextq_s8(v167, v167, 8uLL), *v167.i8);
    v169 = vmvn_s8(vcge_f32(*v162.f32, vdup_lane_s32(*v162.f32, 1)));
    if (v169.i8[0])
    {
      v170 = v168.i32[1];
    }

    else
    {
      v170 = v168.i32[0];
    }

    v50 = *(v103 + 16 * v170);
    v54 = *(a1 + 136);
    v171 = 127;
    if (!*(a1 + 136))
    {
      v171 = 255;
    }

    v1009 = ReciprocalTable[v171];
    *v169.i32 = v1009 * v1009;
    v172 = vsubq_f32(v50, v113);
    v173.i64[0] = 0x8000000080000000;
    v173.i64[1] = 0x8000000080000000;
    v174 = vdupq_n_s32(0x3B808081u);
    __asm { FMOV            V0.4S, #1.0 }

    v994 = _Q0;
    v176 = vdivq_f32(_Q0, vbslq_s8(vcgtq_f32(v174, vabdq_f32(v50, v113)), vorrq_s8(vandq_s8(v172, v173), v174), v172));
    v177 = vmulq_n_f32(v1019, v176.f32[0]);
    v178 = vmulq_n_f32(v1046, v176.f32[0]);
    v179 = vmulq_n_f32(v1017, v176.f32[0]);
    v180 = vmulq_n_f32(v1029, v176.f32[0]);
    v181 = vmulq_lane_f32(v1015, *v176.f32, 1);
    v182 = vmulq_lane_f32(v1013, *v176.f32, 1);
    v183 = vmulq_lane_f32(v1026, *v176.f32, 1);
    v184 = vmulq_lane_f32(v1024, *v176.f32, 1);
    v185 = vmulq_laneq_f32(v129, v176, 2);
    v186 = vmulq_laneq_f32(v130, v176, 2);
    v187 = vmulq_laneq_f32(v1023, v176, 2);
    v188 = vmulq_laneq_f32(v1021, v176, 2);
    v189 = vmulq_laneq_f32(v133, v176, 3);
    v190 = vmulq_laneq_f32(v132, v176, 3);
    v191 = vmulq_laneq_f32(v135, v176, 3);
    v192 = vmulq_laneq_f32(v134, v176, 3);
    v193 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v181, v181), v180, v180), v185, v185), v192, v192);
    v194 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v182, v182), v179, v179), v186, v186), v191, v191);
    v195 = vdupq_lane_s32(v169, 0);
    v196 = vcgtq_f32(v195, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v184, v184), v177, v177), v188, v188), v189, v189));
    v197 = vcgtq_f32(v195, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v183, v183), v178, v178), v187, v187), v190, v190));
    v198 = vcgtq_f32(v195, v194);
    v199 = vcgtq_f32(v195, v193);
    v200 = vorrq_s8(vandq_s8(vuzp1q_s16(v197, v196), xmmword_298495650), vandq_s8(vuzp1q_s16(v199, v198), xmmword_298495640));
    v200.i16[0] = vaddvq_s16(v200);
    v201 = vcnt_s8(*v200.i8);
    v201.i16[0] = vaddlv_u8(v201);
    v1047 = v113;
    if (v201.i32[0] >= 2u)
    {
      v113 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v116, v197), vandq_s8(v1079, v199)), vaddq_f32(vandq_s8(v160, v196), vandq_s8(v1076, v198))), vaddq_f32(vaddq_f32(vandq_s8(v66, v197), vandq_s8(v62, v199)), vaddq_f32(vandq_s8(v1055, v196), vandq_s8(v63, v198)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1057, v197), vandq_s8(v1053, v199)), vaddq_f32(vandq_s8(v1070, v196), vandq_s8(v1073, v198))), vaddq_f32(vaddq_f32(vandq_s8(v1067, v197), vandq_s8(v1061, v199)), vaddq_f32(vandq_s8(v1064, v196), vandq_s8(v1059, v198))))), ReciprocalTable[v201.u16[0]]);
    }

    v1027 = *(a1 + 144);
    v202 = vdupq_lane_s32(*v50.f32, 0);
    v203 = vsubq_f32(v202, v116);
    v204 = vsubq_f32(v202, v160);
    v205 = vsubq_f32(v202, v1076);
    v206 = vmulq_n_f32(vsubq_f32(v202, v1079), v176.f32[0]);
    v207 = vmulq_n_f32(v205, v176.f32[0]);
    v208 = vmulq_n_f32(v204, v176.f32[0]);
    v209 = vmulq_n_f32(v203, v176.f32[0]);
    v210 = vdupq_lane_s32(*v50.f32, 1);
    v211 = vsubq_f32(v210, v62);
    v212 = vsubq_f32(v210, v63);
    v213 = vsubq_f32(v210, v1055);
    v214 = vmulq_lane_f32(vsubq_f32(v210, v66), *v176.f32, 1);
    v215 = vmulq_lane_f32(v213, *v176.f32, 1);
    v216 = vmulq_lane_f32(v212, *v176.f32, 1);
    v217 = vmulq_lane_f32(v211, *v176.f32, 1);
    v218 = vdupq_laneq_s32(v50, 2);
    v219 = vsubq_f32(v218, v1053);
    v220 = vsubq_f32(v218, v1073);
    v221 = vsubq_f32(v218, v1070);
    v222 = vmulq_laneq_f32(vsubq_f32(v218, v1057), v176, 2);
    v223 = vmulq_laneq_f32(v221, v176, 2);
    v224 = vmulq_laneq_f32(v220, v176, 2);
    v225 = vmulq_laneq_f32(v219, v176, 2);
    v226 = vdupq_laneq_s32(v50, 3);
    v227 = vsubq_f32(v226, v1067);
    v228 = vsubq_f32(v226, v1064);
    v229 = vsubq_f32(v226, v1059);
    v230 = vmulq_laneq_f32(vsubq_f32(v226, v1061), v176, 3);
    v231 = vmulq_laneq_f32(v229, v176, 3);
    v232 = vmulq_laneq_f32(v228, v176, 3);
    v233 = vmulq_laneq_f32(v227, v176, 3);
    v234 = vmlaq_f32(vmulq_f32(v214, v214), v209, v209);
    v235 = vcgtq_f32(v195, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v217, v217), v206, v206), v225, v225), v230, v230));
    v236 = vcgtq_f32(v195, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v216, v216), v207, v207), v224, v224), v231, v231));
    v237 = vcgtq_f32(v195, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v215, v215), v208, v208), v223, v223), v232, v232));
    v238 = vcgtq_f32(v195, vmlaq_f32(vmlaq_f32(v234, v222, v222), v233, v233));
    v239 = vandq_s8(vuzp1q_s16(v238, v237), xmmword_298495650);
    v240 = vorrq_s8(v239, vandq_s8(vuzp1q_s16(v235, v236), xmmword_298495640));
    v240.i16[0] = vaddvq_s16(v240);
    *v240.f32 = vcnt_s8(*v240.f32);
    v240.i16[0] = vaddlv_u8(*v240.f32);
    v241 = v240.i16[0];
    _Q15 = v1037;
    if (v240.i32[0] >= 2u)
    {
      v242 = vandq_s8(v66, v238);
      v243 = vandq_s8(v62, v235);
      v244 = vandq_s8(v1057, v238);
      v245 = vandq_s8(v1053, v235);
      v246 = vaddq_f32(vandq_s8(v116, v238), vandq_s8(v1079, v235));
      v247 = vaddq_f32(vandq_s8(v1067, v238), vandq_s8(v1061, v235));
      v235 = vaddq_f32(vandq_s8(v1064, v237), vandq_s8(v1059, v236));
      v239 = vaddq_f32(vaddq_f32(v242, v243), vaddq_f32(vandq_s8(v1055, v237), vandq_s8(v63, v236)));
      v240 = vpaddq_f32(vaddq_f32(v246, vaddq_f32(vandq_s8(v160, v237), vandq_s8(v1076, v236))), v239);
      v238 = vpaddq_f32(v240, vpaddq_f32(vaddq_f32(vaddq_f32(v244, v245), vaddq_f32(vandq_s8(v1070, v237), vandq_s8(v1073, v236))), vaddq_f32(v247, v235)));
      v50 = vmulq_n_f32(v238, ReciprocalTable[v241]);
    }

    _Q0 = v1044;
    a11 = v1047;
    v52 = v113;
    if (!*(a1 + 134))
    {
      goto LABEL_59;
    }

    v238.i32[0] = v113.i32[3];
    if (!*(a1 + 135))
    {
      v249 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v50, 3), v238), 0);
      v50 = vandq_s8(v50, v249);
      v52 = vbicq_s8(v113, v249);
      goto LABEL_59;
    }

    if (v113.f32[3] == 0.0 || v50.f32[3] == 0.0)
    {
      goto LABEL_59;
    }

    v248 = vsubq_f32(v50, v113);
    v240.i32[0] = v248.i32[3];
    if (v248.f32[3] == 0.0)
    {
      if (v14 == 15)
      {
        v52 = 0uLL;
        goto LABEL_59;
      }

      v250.i64[0] = 0x3F0000003FLL;
      v250.i64[1] = 0x3F0000003FLL;
      v52 = vnegq_f32(v250);
    }

    v239.i64[0] = 0;
    v251 = vdupq_lane_s32(*&vcgtq_f32(v239, v240), 0);
    v252 = vbslq_s8(v251, vnegq_f32(v248), v248);
    v253 = vbslq_s8(v251, v50, v52);
    v235.f32[0] = v253.f32[3] / v252.f32[3];
    v254 = vmlsq_lane_f32(v253, v252, *v235.f32, 0);
    v252.f32[0] = -v1009;
    v235.f32[0] = v1009 + 1.0;
    if ((vminvq_u32(vandq_s8(vcgtq_f32(v254, vdupq_lane_s32(*v252.f32, 0)), vcgtq_f32(vdupq_lane_s32(*v235.f32, 0), v254))) & 0x80000000) != 0)
    {
      v50 = vbslq_s8(v251, v52, v50);
      v52 = vminnmq_f32(vmaxnmq_f32(v254, 0), v994);
    }

    else
    {
      if (v53)
      {
        v255 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1030, *v53, 1), v1004, COERCE_FLOAT(*v53->f32)), v1032, *v53->f32, 2), v1008, *v53->f32, 3), v1037);
        v256 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v996, *v53, 1), v1011, COERCE_FLOAT(*v53->f32)), v1034, *v53->f32, 2), v1042, *v53->f32, 3), v1037);
        v257 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1031, *v53, 1), v1002, COERCE_FLOAT(*v53->f32)), v1038, *v53->f32, 2), v1006, *v53->f32, 3), v1037);
        v258 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v998, *v53, 1), v1000, COERCE_FLOAT(*v53->f32)), v1041, *v53->f32, 2), v1043, *v53->f32, 3), v1037);
      }

      else
      {
        v256 = vaddq_f32(v1042, vaddq_f32(v1034, vaddq_f32(v1011, v996)));
        v255 = vaddq_f32(v1008, vaddq_f32(v1032, vaddq_f32(v1004, v1030)));
        v257 = vaddq_f32(v1006, vaddq_f32(v1038, vaddq_f32(v1002, v1031)));
        v258 = vaddq_f32(v1043, vaddq_f32(v1041, vaddq_f32(v1000, v998)));
      }

      v259 = vmaxnmq_f32(v256, v257);
      v260 = vmaxnmq_f32(v255, v258);
      v261 = vbslq_s8(vcgtq_f32(v257, v256), xmmword_298495610, xmmword_298495600);
      v262 = vmaxnmq_f32(v259, v260);
      v263 = vbslq_s8(vcgtq_f32(v260, v259), vbslq_s8(vcgtq_f32(v258, v255), xmmword_298495630, xmmword_298495620), v261);
      v264 = vextq_s8(v262, v262, 8uLL).u64[0];
      v265 = vmaxnm_f32(*v262.i8, v264);
      v266 = vbsl_s8(vcgt_f32(v264, *v262.i8), *&vextq_s8(v263, v263, 8uLL), *v263.i8);
      if (vmvn_s8(vcge_f32(v265, vdup_lane_s32(v265, 1))).u8[0])
      {
        v267 = v266.i32[1];
      }

      else
      {
        v267 = v266.i32[0];
      }

      v268 = *(v103 + 16 * v267);
      v269 = v1047;
      v269.i32[3] = 0;
      v270 = v268;
      v270.i32[3] = 0;
      v271 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v268, v1047)), 3)), 0x1FuLL));
      v50 = vbslq_s8(v271, v268, v270);
      v52 = vbslq_s8(v271, v269, v1047);
    }

    goto LABEL_59;
  }

  v37 = *(a1 + 688);
  v36 = *(a1 + 704);
  v39 = *(a1 + 656);
  v38 = *(a1 + 672);
  v40 = vmaxnmq_f32(v38, v36);
  v41 = vminnmq_f32(v38, v36);
  v42 = vmaxnmq_f32(vmaxnmq_f32(v39, v37), v40);
  v43 = vminnmq_f32(vminnmq_f32(v39, v37), v41);
  __asm { FMOV            V2.4S, #1.0 }

  v45 = vzip2q_s32(v43, _Q2);
  v46 = vzip1q_s32(v43, _Q2);
  v47 = vmaxnmq_f32(vzip1q_s32(v42, _Q2), vzip2q_s32(v42, _Q2));
  v48 = vminnmq_f32(v46, v45);
  v49 = vmaxnmq_f32(v47, vextq_s8(v47, v47, 8uLL));
  v50 = vzip1q_s32(v49, v49);
  v50.i32[2] = v49.i32[0];
  v51 = vminnmq_f32(v48, vextq_s8(v48, v48, 8uLL));
  v52 = vzip1q_s32(v51, v51);
  v52.i32[2] = v51.i32[0];
  v53 = *(a1 + 32);
  v54 = 1;
LABEL_59:
  v272 = vdupq_n_s32(0x437F0000u);
  v273 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v52, 0), _Q0), v272));
  v274 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v50, 0), _Q0), v272));
  *v272.f32 = vmovn_s16(vuzp1q_s16(vcvtq_s32_f32(v273), vcvtq_s32_f32(v274)));
  v275 = vsubq_f32(v273, v274);
  v275.f32[0] = v275.f32[2] + vaddv_f32(*v275.f32);
  v276 = 0.0;
  *v275.f32 = vbsl_s8(vdup_lane_s32(vcgt_f32(*v275.f32, 0), 0), vext_s8(*v272.f32, *v272.f32, 4uLL), *v272.f32);
  v272.i64[0] = v275.i64[0];
  v272.i64[1] = v275.i64[0];
  *v272.f32 = vqtbl1_s8(v272, 0x707070703030303);
  v1005 = vorr_s8(vbic_s8(*v275.f32, vand_s8(vceqz_s8(*v272.f32), 0x101010101010101)), vand_s8(vceq_s8(*v272.f32, -1), 0x101010101010101));
  v277 = vmovl_u8(v1005);
  v278 = vmovl_u16(*v277.i8);
  v279 = vdupq_n_s32(0x4B400000u);
  v280 = vdupq_n_s32(0xCB400000);
  v281 = vaddq_f32(vorrq_s8(vmovl_high_u16(v277), v279), v280);
  a11.i32[0] = 998277249;
  v1022 = vdupq_lane_s32(*a11.i8, 0);
  v282 = vmulq_n_f32(vaddq_f32(vorrq_s8(v278, v279), v280), 0.0039216);
  v283 = vdupq_lane_s32(*v282.f32, 0);
  v284 = vdupq_lane_s32(*v282.f32, 1);
  v285 = vmlaq_n_f32(vnegq_f32(v282), v281, 0.0039216);
  v286 = vdupq_laneq_s32(v282, 2);
  v287 = vdupq_laneq_s32(v282, 3);
  v288 = v285.f32[3];
  if (v53)
  {
    v282.i32[0] = 0;
    a11.i32[0] = v54;
    v289 = vandq_s8(*v53->f32, vorrq_s8(vdupq_lane_s32(*&vceqq_s32(a11, v282), 0), xmmword_298495660));
    v290 = vsubq_f32(*(a1 + 192), v283);
    v291 = vsubq_f32(*(a1 + 176), v283);
    v292 = vsubq_f32(*(a1 + 160), v283);
    v293 = vsubq_f32(*(a1 + 144), v283);
    v1077 = *(a1 + 256);
    v294 = vsubq_f32(v1077, v284);
    v295 = vsubq_f32(*(a1 + 240), v284);
    v1074 = *(a1 + 224);
    v296 = vsubq_f32(v1074, v284);
    v1080 = *(a1 + 208);
    v297 = vsubq_f32(v1080, v284);
    v1065 = *(a1 + 320);
    v298 = vsubq_f32(v1065, v286);
    v1071 = *(a1 + 304);
    v299 = vsubq_f32(v1071, v286);
    v1062 = *(a1 + 288);
    v300 = vsubq_f32(v1062, v286);
    v1068 = *(a1 + 272);
    v301 = vsubq_f32(v1068, v286);
    v302 = *(a1 + 336);
    v303 = *(a1 + 352);
    v304 = *(a1 + 368);
    v305 = *(a1 + 384);
    v306 = vmulq_f32(v285, v289);
    v307 = vmulq_f32(v285, v306);
    v308 = vaddv_f32(vadd_f32(*v307.i8, *&vextq_s8(v307, v307, 8uLL)));
    v309 = vsubq_f32(v305, v287);
    v310 = vsubq_f32(v304, v287);
    v311 = vsubq_f32(v303, v287);
    v312 = vsubq_f32(v302, v287);
    if (fabsf(v308) >= 0.000015259)
    {
      v276 = vrecpes_f32(v308);
    }

    v313 = vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v295, *v306.f32, 1), v291, v306.f32[0]), v299, v306, 2), v310, v306, 3), v276), _Q0);
    v314 = vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v294, *v306.f32, 1), v290, v306.f32[0]), v298, v306, 2), v309, v306, 3), v276), _Q0);
    v315 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v297, *v306.f32, 1), v293, v306.f32[0]), v301, v306, 2), v312, v306, 3), v276), _Q0), 0);
    v316 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v296, *v306.f32, 1), v292, v306.f32[0]), v300, v306, 2), v311, v306, 3), v276), _Q0), 0);
    v317 = vmaxnmq_f32(v313, 0);
    v318 = vmaxnmq_f32(v314, 0);
    _Q15 = v1037;
    v319 = *(a1 + 144);
    v320 = *(a1 + 160);
    v322 = *(a1 + 176);
    v321 = *(a1 + 192);
    v323 = *(a1 + 240);
    v288 = v285.f32[3];
  }

  else
  {
    v319 = *(a1 + 144);
    v320 = *(a1 + 160);
    v322 = *(a1 + 176);
    v321 = *(a1 + 192);
    v323 = *(a1 + 240);
    v1080 = *(a1 + 208);
    v1074 = *(a1 + 224);
    v1077 = *(a1 + 256);
    v324 = vmulq_f32(v285, v285);
    v1068 = *(a1 + 272);
    v1062 = *(a1 + 288);
    v1071 = *(a1 + 304);
    v1065 = *(a1 + 320);
    v302 = *(a1 + 336);
    v303 = *(a1 + 352);
    v304 = *(a1 + 368);
    v305 = *(a1 + 384);
    v325 = vrecpes_f32(vaddv_f32(vadd_f32(*v324.i8, *&vextq_s8(v324, v324, 8uLL))));
    __asm { FMOV            V18.4S, #1.0 }

    v315 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1080, v284), *v285.f32, 1), vsubq_f32(v319, v283), v285.f32[0]), vsubq_f32(v1068, v286), v285, 2), vsubq_f32(v302, v287), v285, 3), v325), _Q18), 0);
    v316 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1074, v284), *v285.f32, 1), vsubq_f32(v320, v283), v285.f32[0]), vsubq_f32(v1062, v286), v285, 2), vsubq_f32(v303, v287), v285, 3), v325), _Q18), 0);
    v317 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v323, v284), *v285.f32, 1), vsubq_f32(v322, v283), v285.f32[0]), vsubq_f32(v1071, v286), v285, 2), vsubq_f32(v304, v287), v285, 3), v325), _Q18), 0);
    v318 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1077, v284), *v285.f32, 1), vsubq_f32(v321, v283), v285.f32[0]), vsubq_f32(v1065, v286), v285, 2), vsubq_f32(v305, v287), v285, 3), v325), _Q18), 0);
  }

  if (v14 >= 1)
  {
    v327 = vrecpes_f32(v288);
    if (fabsf(v288) < 0.0039062)
    {
      v327 = 0.0;
    }

    v316 = vbslq_s8(vcltzq_s32(*(a1 + 736)), vmulq_n_f32(vsubq_f32(v303, v287), v327), v316);
    v315 = vbslq_s8(vcltzq_s32(*(a1 + 720)), vmulq_n_f32(vsubq_f32(v302, v287), v327), v315);
    v317 = vbslq_s8(vcltzq_s32(*(a1 + 752)), vmulq_n_f32(vsubq_f32(v304, v287), v327), v317);
    v318 = vbslq_s8(vcltzq_s32(*(a1 + 768)), vmulq_n_f32(vsubq_f32(v305, v287), v327), v318);
  }

  __asm { FMOV            V19.4S, #15.0 }

  v329 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v315, 0), _Q0), _Q19);
  v330 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v316, 0), _Q0), _Q19);
  v331 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v317, 0), _Q0), _Q19);
  v332 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v318, 0), _Q0), _Q19);
  v333 = a1;
  do
  {
    v334 = v333;
    v333 = *(v333 + 40);
  }

  while (v333);
  if (v53)
  {
    _Q0 = vmulq_f32(*v53->f32, _Q15);
  }

  v335 = vrndxq_f32(v332);
  v336 = vrndxq_f32(v331);
  v337 = vrndxq_f32(v330);
  v338 = vrndxq_f32(v329);
  v1007 = 0u;
  v986 = v317;
  v987 = v315;
  v984 = v318;
  v985 = v316;
  v1001 = v335;
  v1003 = v338;
  v997 = v337;
  v999 = v336;
  if (*(v334 + 132) == 324)
  {
    v318.i32[0] = 0;
    v339 = vmulq_n_f32(v338, 0.066667);
    v340 = vmulq_n_f32(v336, 0.066667);
    v341 = v283;
    v342 = v283;
    v343 = v335;
    v344 = vmlaq_n_f32(v283, v339, v285.f32[0]);
    v345 = vmlaq_n_f32(v283, v340, v285.f32[0]);
    v346 = vmlaq_lane_f32(v284, v340, *v285.f32, 1);
    v347 = v337;
    v348 = vmlaq_laneq_f32(v286, v340, v285, 2);
    v349 = vmlaq_laneq_f32(v287, v340, v285, 3);
    v350 = vmlaq_lane_f32(v284, v339, *v285.f32, 1);
    v351 = vmlaq_laneq_f32(v286, v339, v285, 2);
    v352 = vmlaq_laneq_f32(v287, v339, v285, 3);
    v353 = vmulq_n_f32(v343, 0.066667);
    v354 = vmlaq_n_f32(v342, v353, v285.f32[0]);
    v355 = vmlaq_lane_f32(v284, v353, *v285.f32, 1);
    v356 = vmlaq_laneq_f32(v286, v353, v285, 2);
    v357 = vmlaq_laneq_f32(v287, v353, v285, 3);
    v358 = vmulq_n_f32(v347, 0.066667);
    v359 = vmlaq_n_f32(v341, v358, v285.f32[0]);
    v360 = vmlaq_lane_f32(v284, v358, *v285.f32, 1);
    v361 = vmlaq_laneq_f32(v286, v358, v285, 2);
    v362 = vmlaq_laneq_f32(v287, v358, v285, 3);
    v363 = vsubq_f32(v345, v322);
    v364 = vsubq_f32(v344, v319);
    v365 = vsubq_f32(v354, v321);
    v366 = vsubq_f32(v359, v320);
    v367 = vsubq_f32(v360, v1074);
    v368 = vsubq_f32(v355, v1077);
    v369 = vsubq_f32(v350, v1080);
    v370 = vsubq_f32(v346, v323);
    v371 = vsubq_f32(v361, v1062);
    v372 = vsubq_f32(v356, v1065);
    v373 = vsubq_f32(v351, v1068);
    v374 = vsubq_f32(v348, v1071);
    v375 = vsubq_f32(v362, v303);
    v376 = vsubq_f32(v357, v305);
    v377 = vsubq_f32(v352, v302);
    v378 = vsubq_f32(v349, v304);
    v322.i8[0] = *(a1 + 135);
    v379 = vdupq_lane_s8(*&vceqq_s8(v322, v318), 0);
    v380 = vbslq_s8(v379, v374, vmulq_f32(v304, v374));
    v381 = vbslq_s8(v379, v373, vmulq_f32(v302, v373));
    v382 = vbslq_s8(v379, v372, vmulq_f32(v305, v372));
    v383 = vbslq_s8(v379, v371, vmulq_f32(v303, v371));
    v384 = vbslq_s8(v379, v370, vmulq_f32(v304, v370));
    v385 = vbslq_s8(v379, v369, vmulq_f32(v302, v369));
    v386 = vbslq_s8(v379, v368, vmulq_f32(v305, v368));
    v387 = vbslq_s8(v379, v367, vmulq_f32(v303, v367));
    v388 = vbslq_s8(v379, v366, vmulq_f32(v303, v366));
    v389 = vbslq_s8(v379, v365, vmulq_f32(v305, v365));
    v390 = vbslq_s8(v379, v364, vmulq_f32(v302, v364));
    v391 = vbslq_s8(v379, v363, vmulq_f32(v304, v363));
    v392 = vmulq_f32(v391, v391);
    v393 = vmulq_f32(v390, v390);
    v394 = vmulq_f32(v389, v389);
    v395 = vmulq_f32(v388, v388);
    v396 = vmulq_f32(v387, v387);
    v397 = vmulq_f32(v386, v386);
    v398 = vmulq_f32(v385, v385);
    v399 = vmulq_f32(v384, v384);
    v400 = vmulq_f32(v383, v383);
    v401 = vmulq_f32(v382, v382);
    v402 = vmulq_f32(v381, v381);
    v403 = vmulq_f32(v380, v380);
    v404 = vmulq_f32(v378, v378);
    v405 = vmulq_f32(v377, v377);
    v406 = vmulq_f32(v376, v376);
    v407 = vmulq_f32(v375, v375);
    v408 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v396, *_Q0.f32, 1), v395, _Q0.f32[0]), v400, _Q0, 2), v407, _Q0, 3);
    v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v397, *_Q0.f32, 1), v394, _Q0.f32[0]), v401, _Q0, 2), v406, _Q0, 3);
    v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v398, *_Q0.f32, 1), v393, _Q0.f32[0]), v402, _Q0, 2), v405, _Q0, 3);
    v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v399, *_Q0.f32, 1), v392, _Q0.f32[0]), v403, _Q0, 2), v404, _Q0, 3);
    v412 = vaddq_f32(v393, v392);
    v285 = vaddq_f32(v395, v394);
    v413 = vpaddq_f32(vpaddq_f32(vaddq_f32(v412, v285), vaddq_f32(vaddq_f32(v398, v399), vaddq_f32(v396, v397))), vpaddq_f32(vaddq_f32(vaddq_f32(v402, v403), vaddq_f32(v400, v401)), vaddq_f32(vaddq_f32(v405, v404), vaddq_f32(v407, v406))));
    v981 = v410;
    v982 = v411;
    v979 = v408;
    v980 = v409;
    v414 = vaddq_f32(vaddq_f32(v410, v411), vaddq_f32(v408, v409));
    v414.i64[0] = vpaddq_f32(v414, v414).u64[0];
    *v285.f32 = vpadd_f32(*v414.f32, *v414.f32);
  }

  else
  {
    v285.i32[0] = 2139095040;
    v413 = 0uLL;
  }

  v1025 = a2[1];
  if (v285.f32[0] <= v1025)
  {
    v421 = 0;
    v422 = 0uLL;
LABEL_85:
    v990 = v422;
    v991 = v422;
    v989 = v422;
    goto LABEL_174;
  }

  if (*(a1 + 40))
  {
    v415 = vextq_s8(vrev64q_s32(v413), v413, 8uLL);
    v416 = vmaxnmq_f32(v413, v415);
    v417 = vminnmq_f32(v413, v415);
    v418 = vminnmq_f32(v417, vrev64q_s32(v417));
    v418.f32[0] = 0.25 * vmlaq_f32(vmaxnmq_f32(v416, vrev64q_s32(v416)), _Q15, v418).f32[0];
    v419 = vandq_s8(vcgtq_f32(v413, vdupq_lane_s32(*v418.f32, 0)), xmmword_298495670);
    v420 = vaddvq_s32(v419);
    if (!v54)
    {
      v420 |= 8u;
    }
  }

  else
  {
    v423 = vmaxnmq_f32(v413, vextq_s8(v413, v413, 8uLL));
    v419 = vandq_s8(vceqq_f32(vmaxnmq_f32(v423, vrev64q_s32(v423)), v413), xmmword_298495670);
    v420 = vaddvq_s32(v419);
    if ((v420 & 8) != 0)
    {
      v420 = 8;
    }
  }

  if (v285.f32[0] < v1025)
  {
    v421 = 0;
    v422 = 0uLL;
    v1007 = 0u;
    goto LABEL_85;
  }

  v419.i32[0] = 0;
  v1018 = v419;
  v419.i32[0] = 0;
  v995 = v419;
  v988 = 0;
  v1014 = vdupq_lane_s32(*v1036.f32, 1);
  v1016 = vdupq_lane_s32(*v1036.f32, 0);
  v424 = vdupq_laneq_s32(v1036, 2);
  v425 = vdupq_laneq_s32(v1036, 3);
  v1010 = v425;
  v1012 = v424;
  v426 = a1 + 400;
  *v425.i32 = 0.33333 * (0.33333 * 0.75);
  v427 = vdupq_lane_s32(*v425.i8, 0);
  v1033 = v427;
  *v427.i32 = 0.33333 * (0.33333 * 0.25);
  v993 = *v427.i8;
  v428 = vdupq_lane_s32(*v427.i8, 0);
  v992 = v428;
  *v424.i32 = -0.007874;
  v428.f32[0] = 0.007874 + 1.0;
  v977 = vdupq_lane_s32(*v428.f32, 0);
  v978 = vdupq_lane_s32(*v424.i8, 0);
  v429 = 1;
  v428.i64[0] = 0x3F0000003FLL;
  v428.i64[1] = 0x3F0000003FLL;
  v969 = vnegq_f32(v428);
  v1007 = 0u;
  v990 = 0u;
  v991 = 0u;
  v989 = 0u;
  do
  {
    if ((v429 & v420) == 0)
    {
      goto LABEL_171;
    }

    v1028 = v285;
    v430 = __clz(v429);
    v431 = v430 ^ 0x1F;
    v432 = _ZZL19FindDualWeights_4x4PK9Block_4x4PK12ColorVectorshPDv16_fE11kVectorMask[v431];
    v433 = (a1 + 144 + (v431 << 6));
    v435 = *v433;
    v434 = v433[1];
    v436 = v433[2];
    v437 = v433[3];
    *v1085 = v1036;
    v438 = *(a1 + 192);
    v439 = vsubq_f32(v438, v1016);
    v440 = *(a1 + 144);
    v1051 = *(a1 + 176);
    v441 = vsubq_f32(v1051, v1016);
    v442 = vsubq_f32(v440, v1016);
    v1035 = *(a1 + 160);
    v443 = vsubq_f32(v1035, v1016);
    v444 = (v1085 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v430 ^ 0x1F) & 3)));
    v445 = *(a1 + 208);
    v446 = *(a1 + 240);
    v1063 = *(a1 + 256);
    v447 = vsubq_f32(v1063, v1014);
    v448 = vsubq_f32(v446, v1014);
    v449 = vsubq_f32(v445, v1014);
    v1066 = *(a1 + 224);
    v450 = vsubq_f32(v1066, v1014);
    v1072 = *(a1 + 304);
    v451 = vsubq_f32(v1072, v1012);
    v1075 = *(a1 + 272);
    v452 = vsubq_f32(v1075, v1012);
    v453 = *(a1 + 288);
    v454 = vsubq_f32(v453, v1012);
    v455 = vld1q_dup_f32(v444);
    v1050 = v437;
    v456 = vsubq_f32(v437, v455);
    v1054 = v436;
    v457 = vsubq_f32(v436, v455);
    v1045 = v435;
    v1048 = v434;
    v458 = vsubq_f32(v434, v455);
    v459 = vsubq_f32(v435, v455);
    v460 = *(a1 + 32);
    v461 = vmulq_f32(v443, v443);
    v462 = vmulq_f32(v442, v442);
    v463 = vmulq_f32(v441, v441);
    v464 = vmulq_f32(v439, v439);
    v465 = vmulq_f32(v450, v450);
    v466 = vmulq_f32(v449, v449);
    v467 = vmulq_f32(v448, v448);
    v468 = vmulq_f32(v447, v447);
    v469 = vmulq_f32(v454, v454);
    v470 = vmulq_f32(v452, v452);
    v471 = vmulq_f32(v451, v451);
    v1069 = *(a1 + 320);
    v472 = vsubq_f32(v1069, v1012);
    v473 = vmulq_f32(v472, v472);
    v474 = *(a1 + 336);
    v1056 = *(a1 + 352);
    v475 = vsubq_f32(v1056, v1010);
    v476 = vmulq_f32(v475, v475);
    v477 = vsubq_f32(v474, v1010);
    v478 = vmulq_f32(v477, v477);
    v1078 = *(a1 + 368);
    v479 = vsubq_f32(v1078, v1010);
    v480 = vmulq_f32(v479, v479);
    v1081 = *(a1 + 384);
    v481 = vsubq_f32(v1081, v1010);
    v482 = vmulq_f32(v481, v481);
    if (v460)
    {
      v483 = (&v1084 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v430 ^ 0x1F) & 3)));
      v484 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v465, *v460, 1), v461, COERCE_FLOAT(*v460->f32)), v469, *v460->f32, 2), v476, *v460->f32, 3);
      v485 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v466, *v460, 1), v462, COERCE_FLOAT(*v460->f32)), v470, *v460->f32, 2), v478, *v460->f32, 3);
      v486 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v468, *v460, 1), v464, COERCE_FLOAT(*v460->f32)), v473, *v460->f32, 2), v482, *v460->f32, 3), v1037);
      v487 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v467, *v460, 1), v463, COERCE_FLOAT(*v460->f32)), v471, *v460->f32, 2), v480, *v460->f32, 3), v1037);
      v1084 = *v460->f32;
      v488 = vld1q_dup_f32(v483);
      v489 = vnegq_f32(v488);
      v490 = vmlaq_f32(vmulq_f32(v484, v1037), v458, vmulq_f32(v458, v489));
      v491 = vmlaq_f32(vmulq_f32(v485, v1037), v459, vmulq_f32(v459, v489));
      v492 = vmlaq_f32(v487, v457, vmulq_f32(v457, v489));
      v493 = vmlaq_f32(v486, v456, vmulq_f32(v456, v489));
    }

    else
    {
      v491 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v462, v466), v470), v478), v459, v459);
      v490 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v461, v465), v469), v476), v458, v458);
      v492 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v463, v467), v471), v480), v457, v457);
      v493 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v464, v468), v473), v482), v456, v456);
    }

    v494 = *(a1 + 135);
    v495 = v491;
    v496 = v490;
    v497 = v492;
    v498 = v493;
    v499 = v1035;
    if (*(a1 + 135))
    {
      v500.i64[0] = 0x7F0000007FLL;
      v500.i64[1] = 0x7F0000007FLL;
      v497 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v500, v492);
      v496 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v500, v490);
      v495 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v500, v491);
      v498 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v500, v493);
    }

    v501 = vmaxnmq_f32(v495, v497);
    v502 = vmaxnmq_f32(v496, v498);
    v503 = vbslq_s8(vcgtq_f32(v497, v495), xmmword_298495610, xmmword_298495600);
    v504 = vbslq_s8(vcgtq_f32(v498, v496), xmmword_298495630, xmmword_298495620);
    v505 = vmaxnmq_f32(v501, v502);
    v506 = vbslq_s8(vcgtq_f32(v502, v501), v504, v503);
    v504.i64[0] = vextq_s8(v505, v505, 8uLL).u64[0];
    v507 = vmaxnm_f32(*v505.i8, *v504.i8);
    v508 = vbsl_s8(vcgt_f32(*v504.i8, *v505.i8), *&vextq_s8(v506, v506, 8uLL), *v506.i8);
    v509 = v508.i32[0];
    if (vmvn_s8(vcge_f32(v507, vdup_lane_s32(v507, 1))).u8[0])
    {
      v509 = v508.i32[1];
    }

    v510 = *(v426 + 16 * v509);
    v1039 = vcltzq_s32(v432);
    v511 = vbicq_s8(vsubq_f32(v1036, v510), v1039);
    if (v460)
    {
      v512 = vmulq_f32(*v460->f32, v511);
    }

    else
    {
      v512 = vmulq_f32(v511, vdupq_n_s32(0x3EAAAAABu));
    }

    v513 = vdupq_lane_s32(*v510.f32, 0);
    v514 = vsubq_f32(v438, v513);
    v515 = vsubq_f32(v1051, v513);
    v516 = vsubq_f32(v440, v513);
    v517 = vdupq_lane_s32(*v510.f32, 1);
    v518 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1066, v517), *v512.f32, 1), vsubq_f32(v1035, v513), v512.f32[0]);
    v519 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v445, v517), *v512.f32, 1), v516, v512.f32[0]);
    v520 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v446, v517), *v512.f32, 1), v515, v512.f32[0]);
    v521 = vdupq_laneq_s32(v510, 2);
    v522 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1063, v517), *v512.f32, 1), v514, v512.f32[0]), vsubq_f32(v1069, v521), v512, 2);
    v523 = vdupq_laneq_s32(v510, 3);
    v524 = vmlaq_laneq_f32(vmlaq_laneq_f32(v518, vsubq_f32(v453, v521), v512, 2), vsubq_f32(v1056, v523), v512, 3);
    v525 = vmlaq_laneq_f32(vmlaq_laneq_f32(v519, vsubq_f32(v1075, v521), v512, 2), vsubq_f32(v474, v523), v512, 3);
    v526 = vmlaq_laneq_f32(vmlaq_laneq_f32(v520, vsubq_f32(v1072, v521), v512, 2), vsubq_f32(v1078, v523), v512, 3);
    v527 = vmlaq_laneq_f32(v522, vsubq_f32(v1081, v523), v512, 3);
    if (*(a1 + 135))
    {
      v528.i64[0] = 0x7F0000007FLL;
      v528.i64[1] = 0x7F0000007FLL;
      v526 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v528, v526);
      v524 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v528, v524);
      v525 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v528, v525);
      v527 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v528, v527);
    }

    v529 = vmaxnmq_f32(v525, v526);
    v530 = vmaxnmq_f32(v524, v527);
    v531 = vbslq_s8(vcgtq_f32(v526, v525), xmmword_298495610, xmmword_298495600);
    v532 = vmaxnmq_f32(v529, v530);
    v533 = vbslq_s8(vcgtq_f32(v530, v529), vbslq_s8(vcgtq_f32(v527, v524), xmmword_298495630, xmmword_298495620), v531);
    v531.i64[0] = vextq_s8(v532, v532, 8uLL).u64[0];
    *v529.f32 = vmaxnm_f32(*v532.i8, *v531.i8);
    v534 = vbsl_s8(vcgt_f32(*v531.i8, *v532.i8), *&vextq_s8(v533, v533, 8uLL), *v533.i8);
    if (vmvn_s8(vcge_f32(*v529.f32, vdup_lane_s32(*v529.f32, 1))).u8[0])
    {
      v535 = v534.i32[1];
    }

    else
    {
      v535 = v534.i32[0];
    }

    v536 = *(v426 + 16 * v535);
    v537 = v1045;
    v538 = v1048;
    v539 = v1054;
    v540 = v1050;
    v541 = v1045;
    v542 = v1048;
    v543 = v1054;
    v544 = v1050;
    if ((v429 & 8) == 0)
    {
      v537 = v1045;
      v538 = v1048;
      v539 = v1054;
      v540 = v1050;
      v541 = v1045;
      v542 = v1048;
      v543 = v1054;
      v544 = v1050;
      if (*(a1 + 135))
      {
        v545 = vcltzq_s32(*(a1 + 768));
        v546 = vcltzq_s32(*(a1 + 720));
        v547 = vcltzq_s32(*(a1 + 736));
        v548 = vcltzq_s32(*(a1 + 752));
        v549.i64[0] = 0x7F0000007FLL;
        v549.i64[1] = 0x7F0000007FLL;
        v539 = vbslq_s8(v548, v549, v1054);
        v538 = vbslq_s8(v547, v549, v1048);
        v537 = vbslq_s8(v546, v549, v1045);
        v540 = vbslq_s8(v545, v549, v1050);
        v550 = vnegq_f32(v549);
        v543 = vbslq_s8(v548, v550, v1054);
        v542 = vbslq_s8(v547, v550, v1048);
        v541 = vbslq_s8(v546, v550, v1045);
        v544 = vbslq_s8(v545, v550, v1050);
      }
    }

    v551 = vmaxnmq_f32(vmaxnmq_f32(v537, v539), vmaxnmq_f32(v538, v540));
    v552 = vminnmq_f32(vminnmq_f32(v541, v543), vminnmq_f32(v542, v544));
    v553 = vmaxnmq_f32(v551, vextq_s8(v551, v551, 8uLL));
    v554 = vminnmq_f32(v552, vextq_s8(v552, v552, 8uLL));
    v555 = vmaxnmq_f32(v553, vrev64q_s32(v553));
    v556 = vminnmq_f32(v554, vrev64q_s32(v554));
    v557 = vcgtq_f32(v510, v536);
    v558 = v557.i32[1];
    if (v430 == 30)
    {
      v558 = v557.i32[0];
    }

    v557.i32[0] = v558;
    v559 = vdupq_lane_s32(*&vceqq_s32(v557, v1018), 0);
    v560 = vbslq_s8(v559, v555, v556);
    v561 = vbslq_s8(v559, v556, v555);
    v562 = vcltzq_s32(vshlq_n_s32(v1039, 0x1FuLL));
    v563 = vbslq_s8(v562, v561, v510);
    v564 = vbslq_s8(v562, v560, v536);
    v565 = vsubq_f32(v564, v563);
    v566.i64[0] = 0x8000000080000000;
    v566.i64[1] = 0x8000000080000000;
    v1020 = vdupq_n_s32(0x3B808081u);
    v567 = vbslq_s8(vcgtq_f32(v1020, vabdq_f32(v564, v563)), vorrq_s8(vandq_s8(v565, v566), v1020), v565);
    __asm { FMOV            V0.4S, #1.0 }

    v569 = vdivq_f32(_Q0, v567);
    v570 = vdupq_lane_s32(*v563.f32, 0);
    v1112 = vmulq_n_f32(vsubq_f32(v438, v570), v569.f32[0]);
    v1111 = vmulq_n_f32(vsubq_f32(v1051, v570), v569.f32[0]);
    v571 = vdupq_lane_s32(*v563.f32, 1);
    v1110 = vmulq_n_f32(vsubq_f32(v1035, v570), v569.f32[0]);
    v1109 = vmulq_n_f32(vsubq_f32(v440, v570), v569.f32[0]);
    v1116 = vmulq_lane_f32(vsubq_f32(v1063, v571), *v569.f32, 1);
    v1115 = vmulq_lane_f32(vsubq_f32(v446, v571), *v569.f32, 1);
    v1114 = vmulq_lane_f32(vsubq_f32(v1066, v571), *v569.f32, 1);
    v1113 = vmulq_lane_f32(vsubq_f32(v445, v571), *v569.f32, 1);
    v572 = vdupq_laneq_s32(v563, 2);
    v1120 = vmulq_laneq_f32(vsubq_f32(v1069, v572), v569, 2);
    v1119 = vmulq_laneq_f32(vsubq_f32(v1072, v572), v569, 2);
    v1118 = vmulq_laneq_f32(vsubq_f32(v453, v572), v569, 2);
    v1117 = vmulq_laneq_f32(vsubq_f32(v1075, v572), v569, 2);
    v573 = vdupq_laneq_s32(v563, 3);
    v1124 = vmulq_laneq_f32(vsubq_f32(v1081, v573), v569, 3);
    v1123 = vmulq_laneq_f32(vsubq_f32(v1078, v573), v569, 3);
    v1122 = vmulq_laneq_f32(vsubq_f32(v1056, v573), v569, 3);
    v1121 = vmulq_laneq_f32(vsubq_f32(v474, v573), v569, 3);
    v574 = &v1109 + 4 * v431;
    v575 = v574[2];
    v576 = v574[3];
    v577 = *v574;
    v578 = v574[1];
    v579 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1113, v1113), v1109, v1109), v1117, v1117), v1121, v1121), v577, v577);
    v580 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1114, v1114), v1110, v1110), v1118, v1118), v1122, v1122), v578, v578);
    v581 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1115, v1115), v1111, v1111), v1119, v1119), v1123, v1123), v575, v575);
    v582 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1116, v1116), v1112, v1112), v1120, v1120), v1124, v1124), v576, v576);
    v1058 = v445;
    if (v494)
    {
      v583 = vbicq_s8(vcgtq_f32(v1033, v579), *(a1 + 720));
      v584 = vbicq_s8(vcgtq_f32(v1033, v580), *(a1 + 736));
      v585 = vbicq_s8(vcgtq_f32(v1033, v581), *(a1 + 752));
      v586 = vbicq_s8(vcgtq_f32(v1033, v582), *(a1 + 768));
    }

    else
    {
      v586 = vcgtq_f32(v1033, v582);
      v585 = vcgtq_f32(v1033, v581);
      v584 = vcgtq_f32(v1033, v580);
      v583 = vcgtq_f32(v1033, v579);
    }

    v1060 = v446;
    v587 = vmovn_s32(v1039);
    v588 = vorrq_s8(vandq_s8(vuzp1q_s16(v583, v584), xmmword_298495650), vandq_s8(vuzp1q_s16(v585, v586), xmmword_298495640));
    v588.i16[0] = vaddvq_s16(v588);
    *v588.i8 = vcnt_s8(*v588.i8);
    v588.i16[0] = vaddlv_u8(*v588.i8);
    v589 = v588.i16[0];
    v1049 = v440;
    if (v588.i32[0] >= 2u)
    {
      v590 = vcltzq_s32(v585);
      v591 = vcltzq_s32(v583);
      v592 = vcltzq_s32(v586);
      v593 = vcltzq_s32(v584);
      v594 = vaddq_f32(vandq_s8(v591, v440), vandq_s8(v590, v1051));
      v595 = vaddq_f32(vandq_s8(v591, v1058), vandq_s8(v590, v446));
      v596 = vaddq_f32(vandq_s8(v593, v1066), vandq_s8(v592, v1063));
      v597 = vaddq_f32(vandq_s8(v591, v1075), vandq_s8(v590, v1072));
      v598 = vaddq_f32(vandq_s8(v593, v453), vandq_s8(v592, v1069));
      v599 = vaddq_f32(vandq_s8(v591, v474), vandq_s8(v590, v1078));
      v600 = vaddq_f32(vandq_s8(v593, v1056), vandq_s8(v592, v1081));
      v601 = vaddq_f32(v594, vaddq_f32(vandq_s8(v593, v1035), vandq_s8(v592, v438)));
      v440 = v1049;
      v563 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v587), 0x1FuLL)), v561, vmulq_n_f32(vpaddq_f32(vpaddq_f32(v601, vaddq_f32(v595, v596)), vpaddq_f32(vaddq_f32(v597, v598), vaddq_f32(v599, v600))), ReciprocalTable[v589]));
    }

    v602 = 0;
    if (v429 == 8)
    {
      v603 = v1063;
      v604 = v1066;
      v605 = v1072;
      v606 = v1069;
    }

    else
    {
      v607 = vmulq_f32(v576, v576);
      v608 = vmulq_f32(v575, v575);
      v609 = vmulq_f32(v578, v578);
      v610 = vmulq_f32(v577, v577);
      v606 = v1069;
      if (v494)
      {
        v611 = vbicq_s8(vcgtq_f32(v992, v610), *(a1 + 720));
        v440 = v1049;
        v612 = vbicq_s8(vcgtq_f32(v992, v609), *(a1 + 736));
        v613 = vbicq_s8(vcgtq_f32(v992, v608), *(a1 + 752));
        v614 = vbicq_s8(vcgtq_f32(v992, v607), *(a1 + 768));
      }

      else
      {
        v611 = vcgtq_f32(v992, v610);
        v612 = vcgtq_f32(v992, v609);
        v613 = vcgtq_f32(v992, v608);
        v614 = vcgtq_f32(v992, v607);
      }

      v615 = vorrq_s8(vandq_s8(vuzp1q_s16(v611, v612), xmmword_298495650), vandq_s8(vuzp1q_s16(v613, v614), xmmword_298495640));
      v615.i16[0] = vaddvq_s16(v615);
      v616 = vcnt_s8(*v615.i8);
      v616.i16[0] = vaddlv_u8(v616);
      v603 = v1063;
      v604 = v1066;
      v605 = v1072;
      if (v616.i32[0] >= 2u)
      {
        v617 = vaddq_f32(vaddq_f32(vandq_s8(v1045, vcltzq_s32(v611)), vandq_s8(v1054, vcltzq_s32(v613))), vaddq_f32(vandq_s8(v1048, vcltzq_s32(v612)), vandq_s8(v1050, vcltzq_s32(v614))));
        v617.i64[0] = vpaddq_f32(v617, v617).u64[0];
        *v616.i32 = ReciprocalTable[v616.u16[0]] * vpadd_f32(*v617.f32, *v617.f32).f32[0];
        v563 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v587), 0x1FuLL)), vdupq_lane_s32(v616, 0), v563);
      }

      v602 = v993;
    }

    v618 = vdupq_lane_s32(*v564.f32, 0);
    v1052 = v438;
    v619 = vdupq_lane_s32(*v564.f32, 1);
    v620 = vsubq_f32(v619, v604);
    v621 = vdupq_laneq_s32(v564, 2);
    v622 = vdupq_laneq_s32(v564, 3);
    v1114 = vmulq_lane_f32(v620, *v569.f32, 1);
    v1110 = vmulq_n_f32(vsubq_f32(v618, v1035), v569.f32[0]);
    v1109 = vmulq_n_f32(vsubq_f32(v618, v440), v569.f32[0]);
    v1113 = vmulq_lane_f32(vsubq_f32(v619, v1058), *v569.f32, 1);
    v1115 = vmulq_lane_f32(vsubq_f32(v619, v1060), *v569.f32, 1);
    v1111 = vmulq_n_f32(vsubq_f32(v618, v1051), v569.f32[0]);
    v1112 = vmulq_n_f32(vsubq_f32(v618, v438), v569.f32[0]);
    v1116 = vmulq_lane_f32(vsubq_f32(v619, v603), *v569.f32, 1);
    v1120 = vmulq_laneq_f32(vsubq_f32(v621, v606), v569, 2);
    v1117 = vmulq_laneq_f32(vsubq_f32(v621, v1075), v569, 2);
    v1118 = vmulq_laneq_f32(vsubq_f32(v621, v453), v569, 2);
    v1119 = vmulq_laneq_f32(vsubq_f32(v621, v605), v569, 2);
    v1122 = vmulq_laneq_f32(vsubq_f32(v622, v1056), v569, 3);
    v1121 = vmulq_laneq_f32(vsubq_f32(v622, v474), v569, 3);
    v1123 = vmulq_laneq_f32(vsubq_f32(v622, v1078), v569, 3);
    v1124 = vmulq_laneq_f32(vsubq_f32(v622, v1081), v569, 3);
    v623 = *v574;
    v624 = v574[1];
    v625 = v574[2];
    v626 = v574[3];
    v627 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1116, v1116), v1112, v1112), v1120, v1120), v1124, v1124), v626, v626);
    v628 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1113, v1113), v1109, v1109), v1117, v1117), v1121, v1121), v623, v623);
    v629 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1114, v1114), v1110, v1110), v1118, v1118), v1122, v1122), v624, v624);
    v630 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1115, v1115), v1111, v1111), v1119, v1119), v1123, v1123), v625, v625);
    if (v494)
    {
      v631 = vcgtq_f32(v1033, v630);
      v632 = vbicq_s8(vcgtq_f32(v1033, v628), *(a1 + 720));
      v633 = vbicq_s8(vcgtq_f32(v1033, v629), *(a1 + 736));
      v634 = vbicq_s8(v631, *(a1 + 752));
      v635 = vbicq_s8(vcgtq_f32(v1033, v627), *(a1 + 768));
    }

    else
    {
      v634 = vcgtq_f32(v1033, v630);
      v633 = vcgtq_f32(v1033, v629);
      v632 = vcgtq_f32(v1033, v628);
      v635 = vcgtq_f32(v1033, v627);
    }

    v636 = vorrq_s8(vandq_s8(vuzp1q_s16(v632, v633), xmmword_298495650), vandq_s8(vuzp1q_s16(v634, v635), xmmword_298495640));
    v636.i16[0] = vaddvq_s16(v636);
    *v636.i8 = vcnt_s8(*v636.i8);
    v636.i16[0] = vaddlv_u8(*v636.i8);
    v637 = v636.i16[0];
    _Q15 = v1037;
    v638 = v1051;
    v639 = v1049;
    v640 = v1056;
    if (v636.i32[0] >= 2u)
    {
      v641 = vcltzq_s32(v634);
      v642 = vcltzq_s32(v632);
      v643 = vcltzq_s32(v635);
      v644 = vcltzq_s32(v633);
      v639 = v1049;
      v638 = v1051;
      v564 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v587), 0x1FuLL)), v564, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v642, v1049), vandq_s8(v641, v1051)), vaddq_f32(vandq_s8(v644, v1035), vandq_s8(v643, v438))), vaddq_f32(vaddq_f32(vandq_s8(v642, v1058), vandq_s8(v641, v1060)), vaddq_f32(vandq_s8(v644, v1066), vandq_s8(v643, v1063)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v642, v1075), vandq_s8(v641, v1072)), vaddq_f32(vandq_s8(v644, v453), vandq_s8(v643, v1069))), vaddq_f32(vaddq_f32(vandq_s8(v642, v474), vandq_s8(v641, v1078)), vaddq_f32(vandq_s8(v644, v1056), vandq_s8(v643, v1081))))), ReciprocalTable[v637]));
    }

    if (v429 == 8)
    {
      v645 = v1063;
      v646 = v1066;
      v647 = v1075;
    }

    else
    {
      v649 = vmulq_f32(v626, v626);
      v650 = vmulq_f32(v625, v625);
      v651 = vmulq_f32(v623, v623);
      v652 = vmulq_f32(v624, v624);
      v653 = vdupq_lane_s32(v602, 0);
      if (v494)
      {
        v654 = vbicq_s8(vcgtq_f32(v653, v651), *(a1 + 720));
        v655 = vbicq_s8(vcgtq_f32(v653, v652), *(a1 + 736));
        v656 = vbicq_s8(vcgtq_f32(v653, v650), *(a1 + 752));
        v657 = vbicq_s8(vcgtq_f32(v653, v649), *(a1 + 768));
      }

      else
      {
        v655 = vcgtq_f32(v653, v652);
        v654 = vcgtq_f32(v653, v651);
        v656 = vcgtq_f32(v653, v650);
        v657 = vcgtq_f32(v653, v649);
      }

      v648 = v1048;
      v658 = vorrq_s8(vandq_s8(vuzp1q_s16(v654, v655), xmmword_298495650), vandq_s8(vuzp1q_s16(v656, v657), xmmword_298495640));
      v658.i16[0] = vaddvq_s16(v658);
      *v658.f32 = vcnt_s8(*v658.f32);
      v658.i16[0] = vaddlv_u8(*v658.f32);
      v645 = v1063;
      v646 = v1066;
      v647 = v1075;
      if (v658.i32[0] >= 2u)
      {
        v655 = vaddq_f32(vandq_s8(v1048, vcltzq_s32(v655)), vandq_s8(v1050, vcltzq_s32(v657)));
        v659 = vaddq_f32(vaddq_f32(vandq_s8(v1045, vcltzq_s32(v654)), vandq_s8(v1054, vcltzq_s32(v656))), v655);
        v659.i64[0] = vpaddq_f32(v659, v659).u64[0];
        v658.f32[0] = ReciprocalTable[v658.u16[0]] * vpadd_f32(*v659.f32, *v659.f32).f32[0];
        v658 = vdupq_lane_s32(*v658.f32, 0);
        v564 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v587), 0x1FuLL)), v658, v564);
      }

      if (!v14)
      {
        goto LABEL_154;
      }

      if (!v494)
      {
        v661 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v564, 3), vdupq_laneq_s32(v563, 3)), 0);
        v564 = vandq_s8(v564, v661);
        v563 = vbicq_s8(v563, v661);
        goto LABEL_154;
      }

      v660 = vsubq_f32(v564, v563);
      v655.i32[0] = v660.i32[3];
      if (v660.f32[3] == 0.0)
      {
        if (v14 == 15)
        {
          v563 = 0uLL;
          goto LABEL_154;
        }

        v563 = v969;
      }

      v658.i64[0] = 0;
      v662 = vdupq_lane_s32(*&vcgtq_f32(v658, v655), 0);
      v663 = vbslq_s8(v662, v563, v564);
      v664 = vbslq_s8(v662, vnegq_f32(v660), v660);
      v665 = vbslq_s8(v662, v564, v563);
      *v662.i32 = v665.f32[3] / v664.f32[3];
      v666 = vmlsq_lane_f32(v665, v664, *v662.i8, 0);
      if ((vminvq_u32(vandq_s8(vcgtq_f32(v666, v978), vcgtq_f32(v977, v666))) & 0x80000000) == 0)
      {
        v667 = vmvnq_s8(v1039);
        v668 = vmaxnmq_f32(v491, v492);
        v669 = vmaxnmq_f32(v490, v493);
        v670 = vbslq_s8(vcgtq_f32(v493, v490), xmmword_298495630, xmmword_298495620);
        v671 = vmaxnmq_f32(v668, v669);
        v672 = vbslq_s8(vcgtq_f32(v669, v668), v670, vbslq_s8(vcgtq_f32(v492, v491), xmmword_298495610, xmmword_298495600));
        v669.i64[0] = vextq_s8(v671, v671, 8uLL).u64[0];
        *v670.i8 = vmaxnm_f32(*v671.i8, *v669.f32);
        v673 = vbsl_s8(vcgt_f32(*v669.f32, *v671.i8), *&vextq_s8(v672, v672, 8uLL), *v672.i8);
        if (vmvn_s8(vcge_f32(*v670.i8, vdup_lane_s32(*v670.i8, 1))).u8[0])
        {
          v674 = v673.i32[1];
        }

        else
        {
          v674 = v673.i32[0];
        }

        v675 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v587), 0x1FuLL));
        v676 = vbslq_s8(v675, v665, *(v426 + 16 * v674));
        v677 = vandq_s8(vsubq_f32(v1036, v676), v667);
        v678 = vdupq_lane_s32(*v676.f32, 0);
        v679 = vsubq_f32(v639, v678);
        v680 = vsubq_f32(v638, v678);
        v681 = vsubq_f32(v1035, v678);
        v682 = vsubq_f32(v438, v678);
        v683 = vdupq_lane_s32(*v676.f32, 1);
        v971 = v682;
        v972 = vsubq_f32(v1063, v683);
        v684 = vsubq_f32(v1066, v683);
        v685 = vsubq_f32(v1060, v683);
        v686 = vsubq_f32(v1058, v683);
        v687 = vdupq_laneq_s32(v676, 2);
        v688 = vsubq_f32(v1069, v687);
        v976 = v453;
        v970 = v663;
        v689 = vsubq_f32(v453, v687);
        v690 = vsubq_f32(v1072, v687);
        v691 = vsubq_f32(v1075, v687);
        v692 = vdupq_laneq_s32(v676, 3);
        v693 = vsubq_f32(v474, v692);
        v694 = vsubq_f32(v1078, v692);
        v973 = v688;
        v974 = vsubq_f32(v1056, v692);
        v975 = vsubq_f32(v1081, v692);
        v695 = vmlaq_n_f32(vmulq_lane_f32(v972, *v677.f32, 1), v682, v677.f32[0]);
        v499 = v1035;
        v696 = v689;
        v697 = vmlaq_laneq_f32(vmlaq_laneq_f32(v695, v688, v677, 2), v975, v677, 3);
        v698 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v684, *v677.f32, 1), v681, v677.f32[0]), v689, v677, 2), v974, v677, 3);
        v699 = vbslq_s8(vcgtq_f32(v697, v698), xmmword_298495630, xmmword_298495620);
        v700 = v675;
        v701 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v685, *v677.f32, 1), v680, v677.f32[0]), v690, v677, 2), v694, v677, 3);
        v702 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v686, *v677.f32, 1), v679, v677.f32[0]), v691, v677, 2), v693, v677, 3);
        v703 = vmaxnmq_f32(v698, v697);
        v704 = vmaxnmq_f32(v702, v701);
        v705 = vbslq_s8(vcgtq_f32(v701, v702), xmmword_298495610, xmmword_298495600);
        v706 = v638;
        v707 = vmaxnmq_f32(v704, v703);
        v708 = vbslq_s8(vcgtq_f32(v703, v704), v699, v705);
        v704.i64[0] = vextq_s8(v707, v707, 8uLL).u64[0];
        v709 = vbsl_s8(vcgt_f32(*v704.f32, *v707.i8), *&vextq_s8(v708, v708, 8uLL), *v708.i8);
        *v704.f32 = vmaxnm_f32(*v707.i8, *v704.f32);
        if (vmvn_s8(vcge_f32(*v704.f32, vdup_lane_s32(*v704.f32, 1))).u8[0])
        {
          v710 = v709.i32[1];
        }

        else
        {
          v710 = v709.i32[0];
        }

        v1040 = v700;
        v711 = vbslq_s8(v700, v970, *(v426 + 16 * v710));
        v712 = vsubq_f32(v711, v676);
        v713.i64[0] = 0x8000000080000000;
        v713.i64[1] = 0x8000000080000000;
        v714 = vdivq_f32(_Q0, vbslq_s8(vcgtq_f32(v1020, vabdq_f32(v711, v676)), vorrq_s8(vandq_s8(v712, v713), v1020), v712));
        v715 = vmulq_n_f32(v679, v714.f32[0]);
        v646 = v1066;
        v716 = vmulq_lane_f32(v686, *v714.f32, 1);
        v640 = v1056;
        v717 = vmulq_lane_f32(v684, *v714.f32, 1);
        v645 = v1063;
        v1114 = v717;
        v1110 = vmulq_n_f32(v681, v714.f32[0]);
        v1109 = v715;
        v1113 = v716;
        v1116 = vmulq_lane_f32(v972, *v714.f32, 1);
        v1112 = vmulq_n_f32(v971, v714.f32[0]);
        v1111 = vmulq_n_f32(v680, v714.f32[0]);
        v1115 = vmulq_lane_f32(v685, *v714.f32, 1);
        v1119 = vmulq_laneq_f32(v690, v714, 2);
        v1120 = vmulq_laneq_f32(v973, v714, 2);
        v1117 = vmulq_laneq_f32(v691, v714, 2);
        v1118 = vmulq_laneq_f32(v696, v714, 2);
        v1122 = vmulq_laneq_f32(v974, v714, 3);
        v1121 = vmulq_laneq_f32(v693, v714, 3);
        v453 = v976;
        v1124 = vmulq_laneq_f32(v975, v714, 3);
        v1123 = vmulq_laneq_f32(v694, v714, 3);
        v718 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v717, v717), v1110, v1110), v1118, v1118), v1122, v1122), v574[1], v574[1]));
        v647 = v1075;
        v719 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v716, v716), v715, v715), v1117, v1117), v1121, v1121), *v574, *v574));
        v720 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1116, v1116), v1112, v1112), v1120, v1120), v1124, v1124), v574[3], v574[3]));
        v721 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1115, v1115), v1111, v1111), v1119, v1119), v1123, v1123), v574[2], v574[2]));
        v722 = vorrq_s8(vandq_s8(vuzp1q_s16(v719, v718), xmmword_298495650), vandq_s8(vuzp1q_s16(v721, v720), xmmword_298495640));
        v722.i16[0] = vaddvq_s16(v722);
        v723 = vcnt_s8(*v722.i8);
        v723.i16[0] = vaddlv_u8(v723);
        if (v723.i32[0] >= 2u)
        {
          v676 = vbslq_s8(v1040, v665, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v639, v719), vandq_s8(v706, v721)), vaddq_f32(vandq_s8(v1035, v718), vandq_s8(v438, v720))), vaddq_f32(vaddq_f32(vandq_s8(v1058, v719), vandq_s8(v1060, v721)), vaddq_f32(vandq_s8(v1066, v718), vandq_s8(v1063, v720)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1075, v719), vandq_s8(v1072, v721)), vaddq_f32(vandq_s8(v976, v718), vandq_s8(v1069, v720))), vaddq_f32(vaddq_f32(vandq_s8(v474, v719), vandq_s8(v1078, v721)), vaddq_f32(vandq_s8(v1056, v718), vandq_s8(v1081, v720))))), ReciprocalTable[v723.u16[0]]));
        }

        v724 = vdupq_lane_s32(*v711.f32, 0);
        v725 = vmulq_n_f32(vsubq_f32(v724, v639), v714.f32[0]);
        v726 = vmulq_n_f32(vsubq_f32(v724, v1035), v714.f32[0]);
        v727 = vdupq_lane_s32(*v711.f32, 1);
        v728 = vdupq_laneq_s32(v711, 2);
        v729 = vdupq_laneq_s32(v711, 3);
        v1115 = vmulq_lane_f32(vsubq_f32(v727, v1060), *v714.f32, 1);
        v1111 = vmulq_n_f32(vsubq_f32(v724, v706), v714.f32[0]);
        v1112 = vmulq_n_f32(vsubq_f32(v724, v438), v714.f32[0]);
        v1116 = vmulq_lane_f32(vsubq_f32(v727, v1063), *v714.f32, 1);
        v1114 = vmulq_lane_f32(vsubq_f32(v727, v1066), *v714.f32, 1);
        v730 = vmlaq_f32(vmulq_f32(v1114, v1114), v726, v726);
        v1110 = v726;
        v1109 = v725;
        v1113 = vmulq_lane_f32(vsubq_f32(v727, v1058), *v714.f32, 1);
        v1117 = vmulq_laneq_f32(vsubq_f32(v728, v1075), v714, 2);
        v1118 = vmulq_laneq_f32(vsubq_f32(v728, v976), v714, 2);
        v1120 = vmulq_laneq_f32(vsubq_f32(v728, v1069), v714, 2);
        v1119 = vmulq_laneq_f32(vsubq_f32(v728, v1072), v714, 2);
        v1123 = vmulq_laneq_f32(vsubq_f32(v729, v1078), v714, 3);
        v1124 = vmulq_laneq_f32(vsubq_f32(v729, v1081), v714, 3);
        v1122 = vmulq_laneq_f32(vsubq_f32(v729, v1056), v714, 3);
        v1121 = vmulq_laneq_f32(vsubq_f32(v729, v474), v714, 3);
        v731 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1113, v1113), v725, v725), v1117, v1117), v1121, v1121), *v574, *v574);
        v732 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1115, v1115), v1111, v1111), v1119, v1119), v1123, v1123), v574[2], v574[2]));
        v733 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1116, v1116), v1112, v1112), v1120, v1120), v1124, v1124), v574[3], v574[3]));
        v734 = vcgtq_f32(v1033, vmlsq_f32(vmlaq_f32(vmlaq_f32(v730, v1118, v1118), v1122, v1122), v574[1], v574[1]));
        v735 = vcgtq_f32(v1033, v731);
        v736 = vorrq_s8(vandq_s8(vuzp1q_s16(v735, v734), xmmword_298495650), vandq_s8(vuzp1q_s16(v732, v733), xmmword_298495640));
        v736.i16[0] = vaddvq_s16(v736);
        v737 = vcnt_s8(*v736.i8);
        v737.i16[0] = vaddlv_u8(v737);
        v638 = v1051;
        if (v737.i32[0] >= 2u)
        {
          v711 = vbslq_s8(v1040, v711, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v639, v735), vandq_s8(v1051, v732)), vaddq_f32(vandq_s8(v1035, v734), vandq_s8(v438, v733))), vaddq_f32(vaddq_f32(vandq_s8(v1058, v735), vandq_s8(v1060, v732)), vaddq_f32(vandq_s8(v1066, v734), vandq_s8(v1063, v733)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1075, v735), vandq_s8(v1072, v732)), vaddq_f32(vandq_s8(v976, v734), vandq_s8(v1069, v733))), vaddq_f32(vaddq_f32(vandq_s8(v474, v735), vandq_s8(v1078, v732)), vaddq_f32(vandq_s8(v1056, v734), vandq_s8(v1081, v733))))), ReciprocalTable[v737.u16[0]]));
        }

        v648 = v1048;
        v738 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(vdupq_laneq_s32(v711, 3), vdupq_laneq_s32(v676, 3))), 0);
        v739 = v711;
        v739.i32[3] = 0;
        v564 = vbslq_s8(v738, v739, v711);
        v740 = v676;
        v740.i32[3] = 0;
        v563 = vbslq_s8(v738, v676, v740);
        goto LABEL_154;
      }

      v563 = vminnmq_f32(vmaxnmq_f32(v666, 0), _Q0);
      v564 = v663;
    }

    v648 = v1048;
LABEL_154:
    v741 = vceqq_s32(vdupq_n_s32(__clz(__rbit32(v429))), xmmword_298495600);
    v742 = vbslq_s8(v741, vdupq_n_s32(0x437F0000u), vdupq_n_s32(0x42FE0000u));
    v743 = vrndxq_f32(vmulq_f32(v742, vminnmq_f32(vmaxnmq_f32(v563, 0), _Q0)));
    v744 = vrndxq_f32(vmulq_f32(v742, vminnmq_f32(vmaxnmq_f32(v564, 0), _Q0)));
    v745 = vmovn_s16(vuzp1q_s16(vcvtq_s32_f32(v743), vcvtq_s32_f32(v744)));
    v746 = vsubq_f32(v743, v744);
    if ((v746.f32[2] + vaddv_f32(*v746.f32)) > 0.0)
    {
      v745 = vext_s8(v745, v745, 4uLL);
      v747 = v743;
      v743 = v744;
      v744 = v747;
    }

    v748 = vmovl_u8(vorr_s8(vadd_s8(v745, v745), vshr_n_u8(v745, 6uLL)));
    v749 = vmovl_u16(*v748.i8);
    v750 = vdupq_n_s32(0x4B400000u);
    v751 = vorrq_s8(vmovl_high_u16(v748), v750);
    v752 = vorrq_s8(v749, v750);
    v753 = vdupq_n_s32(0xCB400000);
    v754 = vmulq_n_f32(vbslq_s8(v741, v743, vaddq_f32(v752, v753)), 0.0039216);
    v755 = vmlaq_f32(vnegq_f32(v754), vbslq_s8(v741, v744, vaddq_f32(v751, v753)), v1022);
    v756 = vdupq_lane_s32(*v754.f32, 0);
    v757 = vsubq_f32(v438, v756);
    v758 = vsubq_f32(v638, v756);
    v759 = vdupq_lane_s32(*v754.f32, 1);
    v760 = vdupq_laneq_s32(v754, 2);
    v761 = vbicq_s8(v755, vcltzq_s32(_ZZL19FindDualWeights_4x4PK9Block_4x4PK12ColorVectorshPDv16_fE11kVectorMask[v431]));
    v762 = vmulq_f32(v761, v761);
    v763 = vadd_f32(*v762.i8, *&vextq_s8(v762, v762, 8uLL));
    v764 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v646, v759), *v761.f32, 1), vsubq_f32(v499, v756), v761.f32[0]);
    v765 = vdupq_laneq_s32(v754, 3);
    v766 = vsubq_f32(v1081, v765);
    v767 = vsubq_f32(v1078, v765);
    v768 = vsubq_f32(v640, v765);
    v769 = vsubq_f32(v474, v765);
    v770 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1058, v759), *v761.f32, 1), vsubq_f32(v639, v756), v761.f32[0]), vsubq_f32(v647, v760), v761, 2), v769, v761, 3);
    v771 = vmlaq_laneq_f32(vmlaq_laneq_f32(v764, vsubq_f32(v453, v760), v761, 2), v768, v761, 3);
    v772 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1060, v759), *v761.f32, 1), v758, v761.f32[0]), vsubq_f32(v1072, v760), v761, 2), v767, v761, 3);
    v773 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v645, v759), *v761.f32, 1), v757, v761.f32[0]), vsubq_f32(v1069, v760), v761, 2), v766, v761, 3);
    v761.f32[0] = vrecpes_f32(vaddv_f32(v763));
    v774 = vmulq_n_f32(v772, v761.f32[0]);
    v775 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v770, v761.f32[0]), _Q0), 0);
    v776 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v771, v761.f32[0]), _Q0), 0);
    v777 = vmaxnmq_f32(vminnmq_f32(v774, _Q0), 0);
    v778 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v773, v761.f32[0]), _Q0), 0);
    if (v14 >= 1 && (v429 & 8) == 0)
    {
      v779 = vrecpes_f32(v755.f32[3]);
      if (fabsf(v755.f32[3]) < 0.0039216)
      {
        v779 = 0.0;
      }

      v776 = vbslq_s8(vcltzq_s32(*(a1 + 736)), vmulq_n_f32(v768, v779), v776);
      v775 = vbslq_s8(vcltzq_s32(*(a1 + 720)), vmulq_n_f32(v769, v779), v775);
      v777 = vbslq_s8(vcltzq_s32(*(a1 + 752)), vmulq_n_f32(v767, v779), v777);
      v778 = vbslq_s8(vcltzq_s32(*(a1 + 768)), vmulq_n_f32(v766, v779), v778);
    }

    v1083 = v755;
    v780 = *(&v1083 & 0xFFFFFFFFFFFFFFF3 | (4 * (v431 & 3)));
    v781 = 0.0;
    if (fabsf(v780) >= 0.00024414)
    {
      v781 = vrecpes_f32(v780);
    }

    v782 = (&v1082 & 0xFFFFFFFFFFFFFFF3 | (4 * (v431 & 3)));
    v1082 = v754;
    v783 = vld1q_dup_f32(v782);
    v784 = vmulq_n_f32(vsubq_f32(v1050, v783), v781);
    v785 = vmulq_n_f32(vsubq_f32(v1054, v783), v781);
    v786 = vmulq_n_f32(vsubq_f32(v648, v783), v781);
    v787 = vmulq_n_f32(vsubq_f32(v1045, v783), v781);
    v788 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v775, 0), _Q0), v1037));
    v789 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v776, 0), _Q0), v1037));
    v790 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v777, 0), _Q0), v1037));
    v791 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v778, 0), _Q0), v1037));
    v792 = vminnmq_f32(vmaxnmq_f32(v787, 0), _Q0);
    v793 = vminnmq_f32(vmaxnmq_f32(v786, 0), _Q0);
    v794 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v784, 0), _Q0), v1037);
    v795 = vmulq_f32(v792, v1037);
    v796 = vrndxq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v785, 0), _Q0), v1037));
    v797 = vrndxq_f32(vmulq_f32(v793, v1037));
    v798 = vrndxq_f32(v795);
    v1109 = vmulq_n_f32(v788, 0.33333);
    v1110 = vmulq_n_f32(v789, 0.33333);
    v799 = vrndxq_f32(v794);
    v1111 = vmulq_n_f32(v790, 0.33333);
    v1112 = vmulq_n_f32(v791, 0.33333);
    v800 = vmulq_n_f32(v799, 0.33333);
    v1114 = vmulq_n_f32(v797, 0.33333);
    v1113 = vmulq_n_f32(v798, 0.33333);
    v1115 = vmulq_n_f32(v796, 0.33333);
    v1116 = v800;
    if (v460)
    {
      _Q0 = vmulq_f32(*v460->f32, v1037);
    }

    v801 = a1;
    do
    {
      v802 = v801;
      v801 = *(v801 + 40);
    }

    while (v801);
    if (*(v802 + 132) == 324)
    {
      v800.i32[0] = v494;
      v803 = vdupq_lane_s8(*&vceqq_s8(v800, v995), 0);
      v804 = &v1109 + 4 * ((v429 >> 2) & 1);
      v805 = vsubq_f32(vmlaq_laneq_f32(v760, v804[1], v755, 2), v453);
      v806 = vbslq_s8(v803, v805, vmulq_f32(v640, v805));
      v807 = vsubq_f32(vmlaq_laneq_f32(v760, v804[3], v755, 2), v1069);
      v808 = vbslq_s8(v803, v807, vmulq_f32(v1081, v807));
      v809 = vsubq_f32(vmlaq_laneq_f32(v760, *v804, v755, 2), v647);
      v810 = vbslq_s8(v803, v809, vmulq_f32(v474, v809));
      v811 = vsubq_f32(vmlaq_laneq_f32(v760, v804[2], v755, 2), v1072);
      v812 = vbslq_s8(v803, v811, vmulq_f32(v1078, v811));
      v813 = &v1109 + 4 * ((v429 >> 1) & 1);
      v814 = vsubq_f32(vmlaq_lane_f32(v759, v813[1], *v755.f32, 1), v646);
      v815 = vbslq_s8(v803, v814, vmulq_f32(v640, v814));
      v816 = vsubq_f32(vmlaq_lane_f32(v759, v813[3], *v755.f32, 1), v645);
      v817 = vbslq_s8(v803, v816, vmulq_f32(v1081, v816));
      v818 = vsubq_f32(vmlaq_lane_f32(v759, *v813, *v755.f32, 1), v1058);
      v819 = vbslq_s8(v803, v818, vmulq_f32(v474, v818));
      v820 = vsubq_f32(vmlaq_lane_f32(v759, v813[2], *v755.f32, 1), v1060);
      v821 = vbslq_s8(v803, v820, vmulq_f32(v1078, v820));
      v822 = &v1109 + 4 * (v429 & 1);
      v823 = vsubq_f32(vmlaq_n_f32(v756, v822[2], v755.f32[0]), v1051);
      v824 = vbslq_s8(v803, v823, vmulq_f32(v1078, v823));
      v825 = vsubq_f32(vmlaq_n_f32(v756, *v822, v755.f32[0]), v1049);
      v826 = vbslq_s8(v803, v825, vmulq_f32(v474, v825));
      v827 = vsubq_f32(vmlaq_n_f32(v756, v822[3], v755.f32[0]), v1052);
      v828 = vbslq_s8(v803, v827, vmulq_f32(v1081, v827));
      v829 = vsubq_f32(vmlaq_n_f32(v756, v822[1], v755.f32[0]), v1035);
      v830 = vbslq_s8(v803, v829, vmulq_f32(v640, v829));
      v831 = &v1109 + 4 * (v429 >> 3);
      v832 = vmlaq_laneq_f32(v765, v831[1], v755, 3);
      v833 = vmlaq_laneq_f32(v765, v831[3], v755, 3);
      v834 = vmlaq_laneq_f32(v765, *v831, v755, 3);
      v835 = vsubq_f32(vmlaq_laneq_f32(v765, v831[2], v755, 3), v1078);
      v836 = vsubq_f32(v834, v474);
      v837 = vsubq_f32(v833, v1081);
      _Q15 = v1037;
      v838 = vsubq_f32(v832, v640);
      v839 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v819, v819), *_Q0.f32, 1), vmulq_f32(v826, v826), _Q0.f32[0]), vmulq_f32(v810, v810), _Q0, 2), vmulq_f32(v836, v836), _Q0, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v821, v821), *_Q0.f32, 1), vmulq_f32(v824, v824), _Q0.f32[0]), vmulq_f32(v812, v812), _Q0, 2), vmulq_f32(v835, v835), _Q0, 3)), vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v815, v815), *_Q0.f32, 1), vmulq_f32(v830, v830), _Q0.f32[0]), vmulq_f32(v806, v806), _Q0, 2), vmulq_f32(v838, v838), _Q0, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v817, v817), *_Q0.f32, 1), vmulq_f32(v828, v828), _Q0.f32[0]), vmulq_f32(v808, v808), _Q0, 2), vmulq_f32(v837, v837), _Q0, 3)));
      v839.i64[0] = vpaddq_f32(v839, v839).u64[0];
      v840 = vpadd_f32(*v839.f32, *v839.f32).f32[0];
      v285 = v1028;
      if (v840 < v1028.f32[0])
      {
        v988 = v429;
        v285.f32[0] = v840;
        v990 = v796;
        v991 = v797;
        v989 = v799;
        v1001 = v791;
        v1003 = v788;
        v997 = v789;
        v999 = v790;
        v1005 = v745;
        v1007 = v798;
      }
    }

    else
    {
      v285 = v1028;
    }

LABEL_171:
    if (v429 > 4u)
    {
      break;
    }

    v429 *= 2;
  }

  while (v285.f32[0] >= v1025);
  v421 = v988;
  v11 = a3;
LABEL_174:
  v841 = *a2;
  if (v285.f32[0] < *a2)
  {
    *a2 = v285.f32[0];
    v1125 = 0;
    bzero(&v1109, 0x641uLL);
    if (v421)
    {
      v844 = (__clz(__rbit32(v421)) + 1) & 3;
      v842.i32[0] = 1;
      v843.i32[0] = v844;
      *v845.i8 = v1005;
      v845.u64[1] = v1005;
      *v845.i8 = vqtbl1_s8(v845, 0x406050700020103);
      v846 = vbsl_s8(vdup_lane_s32(vceq_s32(v843, v842), 0), *v845.i8, v1005);
      v845.i32[0] = 2;
      *v845.i8 = vdup_lane_s32(vceq_s32(v843, *v845.i8), 0);
      *v847.i8 = v846;
      v847.u64[1] = v846;
      v848 = vbsl_s8(*v845.i8, vqtbl1_s8(v847, 0x506070401020300), v846);
      v845.i32[0] = 3;
      v849 = vdup_lane_s32(vceq_s32(v843, *v845.i8), 0);
      *v845.i8 = v848;
      v845.u64[1] = v848;
      *v850.i8 = vbsl_s8(v849, vqtbl1_s8(v845, 0x607050402030100), v848);
      v851.i64[0] = 0x4F0000004F000000;
      v851.i64[1] = 0x4F0000004F000000;
      v852 = vcgtq_f32(v997, v851);
      v853 = vcgtq_f32(v999, v851);
      v854 = vcgtq_f32(v1001, v851);
      v855 = vcgtq_f32(v1003, v851);
      v1109.i8[0] = 5;
      v856 = vcvtq_s32_f32(vsubq_f32(v1001, vandq_s8(v851, v854)));
      v857.i64[0] = 0x8000000080000000;
      v857.i64[1] = 0x8000000080000000;
      v858 = vandq_s8(v854, v857);
      v859 = vaddq_s32(vandq_s8(v852, v857), vcvtq_s32_f32(vsubq_f32(v997, vandq_s8(v851, v852))));
      v860 = vaddq_s32(vandq_s8(v853, v857), vcvtq_s32_f32(vsubq_f32(v999, vandq_s8(v851, v853))));
      v861 = vaddq_s32(v858, v856);
      v862 = vaddq_s32(vandq_s8(v855, v857), vcvtq_s32_f32(vsubq_f32(v1003, vandq_s8(v851, v855))));
      v863 = vcgtq_f32(v1007, v851);
      v864 = vcgtq_f32(v991, v851);
      v865 = vcgtq_f32(v990, v851);
      v866 = vcgtq_f32(v989, v851);
      v867 = vandq_s8(v851, v866);
      v868 = vandq_s8(v851, v865);
      v869 = vandq_s8(v851, v864);
      v870 = vaddq_s32(vandq_s8(v863, v857), vcvtq_s32_f32(vsubq_f32(v1007, vandq_s8(v851, v863))));
      v871 = vaddq_s32(vandq_s8(v864, v857), vcvtq_s32_f32(vsubq_f32(v991, v869)));
      v872 = vaddq_s32(vandq_s8(v865, v857), vcvtq_s32_f32(vsubq_f32(v990, v868)));
      v873 = vaddq_s32(vandq_s8(v866, v857), vcvtq_s32_f32(vsubq_f32(v989, v867)));
      if ((v862.i8[0] & 2) != 0)
      {
        *v850.i8 = vext_s8(*v850.i8, *v850.i8, 4uLL);
        v874.i64[0] = 0x300000003;
        v874.i64[1] = 0x300000003;
        v862 = vsubq_s32(v874, v862);
        v859 = vsubq_s32(v874, v859);
        v860 = vsubq_s32(v874, v860);
        v861 = vsubq_s32(v874, v861);
        v870 = vsubq_s32(v874, v870);
        v871 = vsubq_s32(v874, v871);
        v872 = vsubq_s32(v874, v872);
        v873 = vsubq_s32(v874, v873);
      }

      if ((v870.i8[0] & 2) != 0)
      {
        v850.i64[1] = v850.i64[0];
        *v850.i8 = vqtbl1_s8(v850, 0x306050407020100);
        v875.i64[0] = 0x300000003;
        v875.i64[1] = 0x300000003;
        v870 = vsubq_s32(v875, v870);
        v871 = vsubq_s32(v875, v871);
        v872 = vsubq_s32(v875, v872);
        v873 = vsubq_s32(v875, v873);
      }

      v1108[0] = v870;
      v1108[1] = v871;
      v1108[2] = v872;
      v1108[3] = v873;
    }

    else
    {
      v1109.i8[0] = 6;
      v876.i64[0] = 0x4F0000004F000000;
      v876.i64[1] = 0x4F0000004F000000;
      v877 = vcgtq_f32(v997, v876);
      v878 = vcgtq_f32(v999, v876);
      v879 = vcgtq_f32(v1001, v876);
      v880 = vcgtq_f32(v1003, v876);
      v881 = vandq_s8(v876, v880);
      v882 = vandq_s8(v876, v879);
      v883 = vandq_s8(v876, v878);
      v884.i64[0] = 0x8000000080000000;
      v884.i64[1] = 0x8000000080000000;
      v885 = vandq_s8(v878, v884);
      v859 = vaddq_s32(vandq_s8(v877, v884), vcvtq_s32_f32(vsubq_f32(v997, vandq_s8(v876, v877))));
      v860 = vaddq_s32(v885, vcvtq_s32_f32(vsubq_f32(v999, v883)));
      v861 = vaddq_s32(vandq_s8(v879, v884), vcvtq_s32_f32(vsubq_f32(v1001, v882)));
      v862 = vaddq_s32(vandq_s8(v880, v884), vcvtq_s32_f32(vsubq_f32(v1003, v881)));
      *v850.i8 = v1005;
      v844 = 0;
      if ((v862.i8[0] & 8) != 0)
      {
        *v850.i8 = vext_s8(v1005, v1005, 4uLL);
        v886.i64[0] = 0xF0000000FLL;
        v886.i64[1] = 0xF0000000FLL;
        v862 = vsubq_s32(v886, v862);
        v859 = vsubq_s32(v886, v859);
        v860 = vsubq_s32(v886, v860);
        v861 = vsubq_s32(v886, v861);
      }
    }

    v1104 = v862;
    v1105 = v859;
    v1106 = v860;
    v1107 = v861;
    v1086.i8[2] = v850.i8[2];
    v1086.i8[3] = v850.i8[3];
    v1086.i8[1] = v850.i8[1];
    v1086.i8[0] = v850.i8[0];
    v1086.i8[6] = v850.i8[6];
    v1086.i8[7] = v850.i8[7];
    v1086.i8[5] = v850.i8[5];
    v1086.i8[4] = v850.i8[4];
    D3DX_BC7::EmitBlock(v11, &v1109, 0, v844, 0, &v1086, &v1104, v1108);
    v841 = *a2;
    _Q15 = v1037;
  }

  v887 = a2[1];
  if (v841 >= v887)
  {
    v888 = vdupq_n_s32(0x37810183u);
    v889 = vmaxnmq_f32(vmaxnmq_f32(v981, v982), vmaxnmq_f32(v979, v980));
    v890 = vminnmq_f32(vminnmq_f32(v981, v982), vminnmq_f32(v979, v980));
    v891 = vmaxnmq_f32(v889, vextq_s8(vrev64q_s32(v889), v889, 8uLL));
    v892 = vminnmq_f32(v890, vextq_s8(vrev64q_s32(v890), v890, 8uLL));
    v891.i64[0] = vmlaq_f32(vmaxnmq_f32(v891, vrev64q_s32(v891)), _Q15, vminnmq_f32(v892, vrev64q_s32(v892))).u64[0];
    v891.f32[0] = 0.25 * v891.f32[0];
    v893 = vdupq_lane_s32(*v891.f32, 0);
    v894 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v893, v981), vcgtq_f32(v893, v979)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v893, v982), vcgtq_f32(v893, v980)), xmmword_298495640));
    v894.i16[0] = vaddvq_s16(v894);
    v895 = v894.i16[0];
    v896 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v888, v981), vcgeq_f32(v888, v979)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v888, v982), vcgeq_f32(v888, v980)), xmmword_298495640));
    v896.i16[0] = vaddvq_s16(v896);
    v897 = v896.i16[0];
    v1085[3] = FindDualPartitions_4x4(v894.u32[0], v896.i32[0], *v896.i8);
    v898 = 8;
    v899 = v841;
    do
    {
      v900 = *(&v1085[2] + v898);
      if (v900 != -1)
      {
        v901 = EncodeStandardDualPartitionBlock(a1, &v1086, &EncodeDualBlock_4x4(Block_4x4 const*,D3DX_BC7 *,BlockInfo *,SingleBlockErrorInfo const*)::bc67[2 * v900], v899);
        if (v899 >= v901)
        {
          v899 = v901;
        }
      }

      v898 += 2;
    }

    while (v898 != 16);
    if (v899 > v887)
    {
      if (*(a1 + 136))
      {
        goto LABEL_192;
      }

      __asm { FMOV            V4.4S, #1.0 }

      v907 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(_Q4, *(a1 + 336)), vcgtq_f32(_Q4, *(a1 + 352))), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(_Q4, *(a1 + 368)), vcgtq_f32(_Q4, *(a1 + 384))), xmmword_298495640));
      v907.i16[0] = vaddvq_s16(v907);
      v908 = v907.i16[0];
      if (v907.i16[0] == -1)
      {
LABEL_192:
        v902 = vmaxnmq_f32(vmaxnmq_f32(v987, v986), vmaxnmq_f32(v985, v984));
        v903 = vminnmq_f32(vminnmq_f32(v987, v986), vminnmq_f32(v985, v984));
        v904 = vmaxnmq_f32(v902, vextq_s8(vrev64q_s32(v902), v902, 8uLL));
        v905 = vminnmq_f32(v903, vextq_s8(vrev64q_s32(v903), v903, 8uLL));
        v904.i64[0] = vaddq_f32(vmaxnmq_f32(v904, vrev64q_s32(v904)), vminnmq_f32(v905, vrev64q_s32(v905))).u64[0];
        v904.f32[0] = 0.5 * v904.f32[0];
        v906 = vdupq_lane_s32(*v904.f32, 0);
        v907 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v906, v987), vcgtq_f32(v906, v985)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v906, v986), vcgtq_f32(v906, v984)), xmmword_298495640));
        v907.i16[0] = vaddvq_s16(v907);
        v908 = v907.i16[0];
      }

      if (v908 != v895 && (v908 - 1) <= 0xFFFDu)
      {
        v1109.i64[1] = FindDualPartitions_4x4(v908, v897, *v907.i8);
        for (i = 4; i != 8; ++i)
        {
          v911 = v1109.i16[i];
          if (v911 != -1)
          {
            v912 = EncodeStandardDualPartitionBlock(a1, &v1086, &EncodeDualBlock_4x4(Block_4x4 const*,D3DX_BC7 *,BlockInfo *,SingleBlockErrorInfo const*)::bc67[2 * v911], v899);
            if (v899 >= v912)
            {
              v899 = v912;
            }
          }
        }
      }
    }

    if (v899 < v841)
    {
      v983 = v11;
      v913 = 0;
      *a2 = v899;
      v914 = vmovl_u8(*v1086.i8);
      v915 = vmovl_high_u8(v1086);
      v916.i16[0] = v1089;
      v916.i16[1] = v1094;
      v1107 = vmovl_high_u16(v915);
      v1106 = vmovl_u16(*v915.i8);
      v916.i16[2] = v1097;
      v1105 = vmovl_high_u16(v914);
      v1104 = vmovl_u16(*v914.i8);
      v916.i16[3] = v1102;
      v915.i64[0] = 0xFF000000FFLL;
      v915.i64[1] = 0xFF000000FFLL;
      v917.i16[0] = v1090;
      v917.i16[1] = v1093;
      v917.i16[2] = v1098;
      v917.i16[3] = v1101;
      v918.i16[0] = v1088;
      v918.i16[1] = v1092;
      v918.i16[2] = v1096;
      v919 = vorrq_s8(vshlq_u32(vandq_s8(vmovl_u16(v916), v915), xmmword_298495680), vshlq_u32(vandq_s8(vmovl_u16(v917), v915), xmmword_298495690));
      v918.i16[3] = v1100;
      v920 = vandq_s8(vmovl_u16(v918), v915);
      v918.i16[0] = v1087;
      v918.i16[1] = v1091;
      v918.i16[2] = v1095;
      v918.i16[3] = v1099;
      v1126 = vorrq_s8(v919, vorrq_s8(vshlq_n_s32(v920, 8uLL), vandq_s8(vmovl_u16(v918), v915)));
      v921 = *(a1 + 136);
      if (*(a1 + 136))
      {
        v922 = 4;
      }

      else
      {
        v922 = 2;
      }

      v923 = v1103;
      v924 = 2 * v922;
      v925 = v1104.i32[2];
      v926 = v1104.i32[3];
      v927 = v1105.i32[0];
      v928 = v1105.i32[1];
      v929 = v1105.i32[2];
      v930 = v1105.i32[3];
      v931 = v1106.i32[0];
      v932 = v1106.i32[1];
      v933 = v1106.i32[2];
      v934 = v1106.i32[3];
      v935 = v1107.i32[0];
      v936 = v1107.i32[1];
      v937 = v1107.i32[2];
      v938 = v1107.i32[3];
      v939 = &v1126;
      v940 = 1;
      v941 = v1104.i32[1];
      v942 = v1104.i32[0];
      v943 = 3 * v1103;
      v944 = &bc67_partitionTable[16 * v1103];
      do
      {
        v945 = v940;
        if ((v1104.i32[bc67_fixups[v943 + 192 + v913]] & v922) != 0)
        {
          *v939 = vrev64_s32(*v939);
          v946 = vdupq_n_s64(v913);
          v947 = *(v944 + 64);
          v948 = vmovl_u8(*v947.i8);
          v949 = vmovl_u16(*v948.i8);
          v950.i64[0] = v949.u32[0];
          v950.i64[1] = v949.u32[1];
          v951 = vmovn_s64(vceqq_s64(v946, v950));
          if (vuzp1_s8(vuzp1_s16(v951, *v946.i8), *v946.i8).u8[0])
          {
            v942 = v924 + ~v942;
            v1104.i32[0] = v942;
          }

          if (vuzp1_s8(vuzp1_s16(v951, *&v946), *&v946).i8[1])
          {
            v941 = v924 + ~v941;
            v1104.i32[1] = v941;
          }

          v952.i64[0] = v949.u32[2];
          v952.i64[1] = v949.u32[3];
          if (vuzp1_s8(vuzp1_s16(*&v946, vmovn_s64(vceqq_s64(v946, v952))), *&v946).i8[2])
          {
            v925 = v924 + ~v925;
            v1104.i32[2] = v925;
            v926 = v924 + ~v926;
            v1104.i32[3] = v926;
          }

          v953 = vmovl_high_u16(v948);
          v954.i64[0] = v953.u32[0];
          v954.i64[1] = v953.u32[1];
          v955 = vmovn_s64(vceqq_s64(v946, v954));
          if (vuzp1_s8(*&v946, vuzp1_s16(v955, *&v946)).i32[1])
          {
            v927 = v924 + ~v927;
            v1105.i32[0] = v927;
          }

          if (vuzp1_s8(*&v946, vuzp1_s16(v955, *&v946)).i8[5])
          {
            v928 = v924 + ~v928;
            v1105.i32[1] = v928;
          }

          v956.i64[0] = v953.u32[2];
          v956.i64[1] = v953.u32[3];
          if (vuzp1_s8(*&v946, vuzp1_s16(*&v946, vmovn_s64(vceqq_s64(v946, v956)))).i8[6])
          {
            v929 = v924 + ~v929;
            v1105.i32[2] = v929;
            v930 = v924 + ~v930;
            v1105.i32[3] = v930;
          }

          v957 = vmovl_high_u8(v947);
          v958 = vmovl_u16(*v957.i8);
          v959.i64[0] = v958.u32[0];
          v959.i64[1] = v958.u32[1];
          v960 = vmovn_s64(vceqq_s64(v946, v959));
          if (vuzp1_s8(vuzp1_s16(v960, *v946.i8), *v946.i8).u8[0])
          {
            v931 = v924 + ~v931;
            v1106.i32[0] = v931;
          }

          if (vuzp1_s8(vuzp1_s16(v960, *&v946), *&v946).i8[1])
          {
            v932 = v924 + ~v932;
            v1106.i32[1] = v932;
          }

          v961.i64[0] = v958.u32[2];
          v961.i64[1] = v958.u32[3];
          if (vuzp1_s8(vuzp1_s16(*&v946, vmovn_s64(vceqq_s64(v946, v961))), *&v946).i8[2])
          {
            v933 = v924 + ~v933;
            v1106.i32[2] = v933;
            v934 = v924 + ~v934;
            v1106.i32[3] = v934;
          }

          v962 = vmovl_high_u16(v957);
          v963.i64[0] = v962.u32[0];
          v963.i64[1] = v962.u32[1];
          v964 = vmovn_s64(vceqq_s64(v946, v963));
          if (vuzp1_s8(*&v946, vuzp1_s16(v964, *&v946)).i32[1])
          {
            v935 = v924 + ~v935;
            v1107.i32[0] = v935;
          }

          if (vuzp1_s8(*&v946, vuzp1_s16(v964, *&v946)).i8[5])
          {
            v936 = v924 + ~v936;
            v1107.i32[1] = v936;
          }

          v965.i64[0] = v962.u32[2];
          v965.i64[1] = v962.u32[3];
          v966 = vmovn_s64(vceqq_s64(v946, v965));
          if (vuzp1_s8(*&v966, vuzp1_s16(v966, v966)).i8[6])
          {
            v937 = v924 + ~v937;
            v1107.i32[2] = v937;
          }

          v967 = vuzp1_s16(v966, v966);
          if (vuzp1_s8(v967, v967).i8[7])
          {
            v938 = v924 + ~v938;
            v1107.i32[3] = v938;
          }
        }

        v940 = 0;
        v939 = &v1126.u64[1];
        v913 = 1;
      }

      while ((v945 & 1) != 0);
      v1125 = 0;
      if (v921)
      {
        v968 = 1;
      }

      else
      {
        v968 = 7;
      }

      bzero(&v1109, 0x641uLL);
      v1109.i8[0] = v968;
      D3DX_BC7::EmitBlock(v983, &v1109, v923, 0, 0, &v1126, &v1104, 0);
    }
  }

LABEL_16:
  v32 = *MEMORY[0x29EDCA608];
}

uint64_t FindDualPartitions_4x4(unsigned int a1, int a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vcnt_s8(a3);
  v3.i16[0] = vaddlv_u8(v3);
  if ((16 - v3.i32[0]) >= v3.i32[0])
  {
    v4 = v3.u32[0];
  }

  else
  {
    v4 = (16 - v3.i32[0]);
  }

  if (!v4)
  {
    return -1;
  }

  v7.i64[0] = -1;
  v7.i64[1] = -1;
  v21 = v7;
  v22 = vdupq_n_s32(v4);
  v20 = 0;
  CheckPartitionRow_4x4(&v20, &v22, &v21, &DualPartitionTable_4x4 + 72 * v4, &DualPartitionTableIndices_4x4 + 72 * v4, a1, a2);
  v8 = v22.i32[3];
  if (v22.i32[3] >= 2)
  {
    v9 = 72 * v4 - 72;
    v10 = &DualPartitionTableIndices_4x4 + v9;
    v11 = &DualPartitionTable_4x4 + v9;
    v12 = v4 - 1;
    v13 = 72 * v4 + 72;
    v14 = &DualPartitionTable_4x4 + v13;
    v15 = &DualPartitionTableIndices_4x4 + v13;
    v16 = 1;
    do
    {
      if (v12-- >= 1)
      {
        CheckPartitionRow_4x4(&v20, &v22, &v21, v11, v10, a1, a2);
        v8 = v22.i32[3];
      }

      v18 = v8;
      if (v16 < v8 && (v4 + v16) <= 8)
      {
        CheckPartitionRow_4x4(&v20, &v22, &v21, v14, v15, a1, a2);
        v8 = v22.i32[3];
        v18 = v22.i32[3];
      }

      if (v16 > 3)
      {
        break;
      }

      ++v16;
      v10 -= 72;
      v11 -= 72;
      v14 += 72;
      v15 += 72;
    }

    while (v16 < v18);
  }

  return vmovn_s32(v21);
}

float EncodeStandardDualPartitionBlock(int8x16_t *a1, uint64_t a2, unsigned __int16 *a3, float a4)
{
  v4 = a3[1];
  v5 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
  v6 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
  v7 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
  v8 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
  v9 = a1[8].u8[7];
  if (a1[8].i8[7])
  {
    v796 = vmvnq_s8(v5);
    v799 = vmvnq_s8(v6);
    v778 = vmvnq_s8(v7);
    v783 = vmvnq_s8(v8);
    v11 = a1[45];
    v10 = a1[46];
    v12 = vorrq_s8(v10, v6);
    v13 = vorrq_s8(v11, v5);
    v14 = a1[47];
    v15 = a1[48];
    v16 = vorrq_s8(v14, v7);
    v17 = vorrq_s8(v15, v8);
    v18 = vornq_s8(v10, v6);
    v19 = vornq_s8(v11, v5);
    v20 = vornq_s8(v14, v7);
    v21 = vornq_s8(v15, v8);
  }

  else
  {
    v19 = vmvnq_s8(v5);
    v18 = vmvnq_s8(v6);
    v20 = vmvnq_s8(v7);
    v13 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
    v12 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
    v16 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
    v17 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
    v21 = vmvnq_s8(v8);
    v796 = v19;
    v799 = v18;
    v778 = v20;
    v783 = v21;
  }

  v807 = v12;
  v23 = a1[15];
  v22 = a1[16];
  v25 = a1[13];
  v24 = a1[14];
  v26 = a1[17];
  v27 = a1[18];
  v815 = a1[23];
  v810 = a1[24];
  v28 = a1[21];
  v29 = a1[22];
  v785 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
  v792 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
  v794 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
  v30 = vcltzq_s32(v5);
  v790 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
  v31 = vcltzq_s32(v8);
  v32 = vcgezq_s32(v16);
  v33 = vcgezq_s32(v13);
  v34 = vcgezq_s32(v17);
  v35 = vcgezq_s32(v12);
  v813 = a1[19];
  v814 = a1[20];
  v37 = a1[9];
  v36 = a1[10];
  v38 = v13;
  v39 = a1[11];
  v40 = a1[12];
  v41 = vcgezq_s32(v20);
  v42 = vcgezq_s32(v19);
  v43 = vcgezq_s32(v21);
  v44 = vcgezq_s32(v18);
  v773 = v30;
  v774 = vcltzq_s32(v7);
  v772 = vcltzq_s32(v6);
  v767 = v31;
  v45 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v37, v42), vandq_s8(v39, v41)), vaddq_f32(vandq_s8(v36, v44), vandq_s8(v40, v43))), vaddq_f32(vaddq_f32(vandq_s8(v25, v42), vandq_s8(v23, v41)), vaddq_f32(vandq_s8(v24, v44), vandq_s8(v22, v43)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v26, v42), vandq_s8(v813, v41)), vaddq_f32(vandq_s8(v27, v44), vandq_s8(v814, v43))), vaddq_f32(vaddq_f32(vandq_s8(v28, v30), vandq_s8(v815, v774)), vaddq_f32(vandq_s8(v29, v772), vandq_s8(v810, v31)))));
  v46 = vorrq_s8(vandq_s8(vuzp1q_s16(v38, v807), xmmword_298495650), vandq_s8(vuzp1q_s16(v16, v17), xmmword_298495640));
  v46.i16[0] = vaddvq_s16(v46);
  *v46.i8 = vcnt_s8(*v46.i8);
  v46.i16[0] = vaddlv_u8(*v46.i8);
  v47 = v46.i32[0];
  v48 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v37, v33), vandq_s8(v39, v32)), vaddq_f32(vandq_s8(v36, v35), vandq_s8(v40, v34))), vaddq_f32(vaddq_f32(vandq_s8(v25, v33), vandq_s8(v23, v32)), vaddq_f32(vandq_s8(v24, v35), vandq_s8(v22, v34)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v26, v33), vandq_s8(v813, v32)), vaddq_f32(vandq_s8(v27, v35), vandq_s8(v814, v34))), vaddq_f32(vaddq_f32(vbicq_s8(v28, v30), vbicq_s8(v815, v774)), vaddq_f32(vbicq_s8(v29, v772), vbicq_s8(v810, v31))))), ReciprocalTable[(16 - v46.i16[0])]);
  v49 = vdupq_lane_s32(*v48.i8, 0);
  v50 = vsubq_f32(v37, v49);
  v801 = v40;
  v802 = v36;
  v51 = vsubq_f32(v36, v49);
  v798 = v39;
  v52 = vsubq_f32(v39, v49);
  v53 = vsubq_f32(v40, v49);
  v54 = vdupq_lane_s32(*v48.i8, 1);
  v805 = v25;
  v806 = v23;
  v55 = vsubq_f32(v25, v54);
  v811 = v24;
  v812 = v28;
  v56 = vsubq_f32(v24, v54);
  v57 = vsubq_f32(v23, v54);
  v808 = v22;
  v809 = v29;
  v58 = vsubq_f32(v22, v54);
  v59 = vdupq_laneq_s32(v48, 2);
  v803 = v26;
  v804 = v27;
  v60 = vsubq_f32(v26, v59);
  v61 = vsubq_f32(v27, v59);
  v62 = vsubq_f32(v813, v59);
  v63 = vsubq_f32(v814, v59);
  v761 = v48;
  v64 = vdupq_laneq_s32(v48, 3);
  v65 = vsubq_f32(v28, v64);
  v66 = vsubq_f32(v29, v64);
  v67 = vsubq_f32(v815, v64);
  v68 = vsubq_f32(v810, v64);
  v69 = a1[2].i64[0];
  v70 = vmulq_f32(v53, v53);
  v71 = vmulq_f32(v52, v52);
  v72 = vmulq_f32(v51, v51);
  v73 = vmulq_f32(v50, v50);
  v74 = vmulq_f32(v58, v58);
  v75 = vmulq_f32(v57, v57);
  v76 = vmulq_f32(v56, v56);
  v77 = vmulq_f32(v55, v55);
  v78 = vmulq_f32(v63, v63);
  v79 = vmulq_f32(v62, v62);
  v80 = vmulq_f32(v61, v61);
  v81 = vmulq_f32(v60, v60);
  v82 = vmulq_f32(v68, v68);
  v83 = vmulq_f32(v67, v67);
  v84 = vmulq_f32(v66, v66);
  v85 = vmulq_f32(v65, v65);
  __asm { FMOV            V8.4S, #3.0 }

  if (v69)
  {
    v91 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v75, *v69, 1), v71, COERCE_FLOAT(*v69->f32)), v79, *v69->f32, 2), v83, *v69->f32, 3);
    v92 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v76, *v69, 1), v72, COERCE_FLOAT(*v69->f32)), v80, *v69->f32, 2), v84, *v69->f32, 3), _Q8);
    v93 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v77, *v69, 1), v73, COERCE_FLOAT(*v69->f32)), v81, *v69->f32, 2), v85, *v69->f32, 3), _Q8);
    v94 = vmulq_f32(v91, _Q8);
    v95 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v74, *v69, 1), v70, COERCE_FLOAT(*v69->f32)), v78, *v69->f32, 2), v82, *v69->f32, 3), _Q8);
  }

  else
  {
    v96 = vaddq_f32(v79, vaddq_f32(v71, v75));
    v97 = vaddq_f32(v80, vaddq_f32(v72, v76));
    v93 = vaddq_f32(v85, vaddq_f32(v81, vaddq_f32(v73, v77)));
    v92 = vaddq_f32(v84, v97);
    v94 = vaddq_f32(v83, v96);
    v95 = vaddq_f32(v82, vaddq_f32(v78, vaddq_f32(v70, v74)));
  }

  v98 = vmulq_n_f32(v45, ReciprocalTable[v47]);
  v99 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
  v100 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
  v101 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
  v102 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
  if (a1[8].i8[7])
  {
    v100 = vorrq_s8(a1[46], v792);
    v99 = vorrq_s8(a1[45], v794);
    v101 = vorrq_s8(a1[47], v785);
    v102 = vorrq_s8(a1[48], v790);
  }

  v103.i64[0] = 0x7F0000007FLL;
  v103.i64[1] = 0x7F0000007FLL;
  v739 = v92;
  v740 = v95;
  v104 = vbslq_s8(vcltzq_s32(v100), v103, v92);
  v105 = vbslq_s8(vcltzq_s32(v102), v103, v95);
  v741 = v93;
  v742 = v94;
  v106 = vbslq_s8(vcltzq_s32(v99), v103, v93);
  v107 = vbslq_s8(vcltzq_s32(v101), v103, v94);
  v108 = a1 + 25;
  v109 = vmaxnmq_f32(v106, v107);
  v110 = vmaxnmq_f32(v104, v105);
  v111 = vbslq_s8(vcgtq_f32(v107, v106), xmmword_298495610, xmmword_298495600);
  v112 = vmaxnmq_f32(v109, v110);
  v113 = vbslq_s8(vcgtq_f32(v110, v109), vbslq_s8(vcgtq_f32(v105, v104), xmmword_298495630, xmmword_298495620), v111);
  v111.i64[0] = vextq_s8(v112, v112, 8uLL).u64[0];
  *v105.f32 = vmaxnm_f32(*v112.i8, *v111.i8);
  v114 = vbsl_s8(vcgt_f32(*v111.i8, *v112.i8), *&vextq_s8(v113, v113, 8uLL), *v113.i8);
  if (vmvn_s8(vcge_f32(*v105.f32, vdup_lane_s32(*v105.f32, 1))).u8[0])
  {
    v115 = v114.i32[1];
  }

  else
  {
    v115 = v114.i32[0];
  }

  v116 = vdupq_lane_s32(*v98.f32, 0);
  v117 = vsubq_f32(v40, v116);
  v118 = vsubq_f32(v37, v116);
  v119 = vsubq_f32(v36, v116);
  v120 = vsubq_f32(v798, v116);
  v121 = vdupq_lane_s32(*v98.f32, 1);
  v122 = vsubq_f32(v808, v121);
  v123 = vsubq_f32(v805, v121);
  v124 = vsubq_f32(v24, v121);
  v125 = vsubq_f32(v806, v121);
  v126 = vdupq_laneq_s32(v98, 2);
  v127 = vsubq_f32(v814, v126);
  v128 = vsubq_f32(v803, v126);
  v129 = vsubq_f32(v804, v126);
  v130 = vsubq_f32(v813, v126);
  v131 = vdupq_laneq_s32(v98, 3);
  v132 = vsubq_f32(v810, v131);
  v133 = vsubq_f32(v812, v131);
  v134 = vsubq_f32(v809, v131);
  v135 = vsubq_f32(v815, v131);
  v136 = vmulq_f32(v120, v120);
  v137 = vmulq_f32(v119, v119);
  v138 = vmulq_f32(v118, v118);
  v139 = vmulq_f32(v117, v117);
  v140 = vmulq_f32(v125, v125);
  v141 = vmulq_f32(v124, v124);
  v142 = vmulq_f32(v123, v123);
  v143 = vmulq_f32(v122, v122);
  v144 = vmulq_f32(v130, v130);
  v145 = vmulq_f32(v129, v129);
  v146 = vmulq_f32(v128, v128);
  v147 = vmulq_f32(v127, v127);
  v148 = vmulq_f32(v135, v135);
  v149 = vmulq_f32(v134, v134);
  v150 = vmulq_f32(v133, v133);
  v151 = vmulq_f32(v132, v132);
  if (v69)
  {
    v152 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v142, *v69, 1), v138, COERCE_FLOAT(*v69->f32)), v146, *v69->f32, 2), v150, *v69->f32, 3);
    v153 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v141, *v69, 1), v137, COERCE_FLOAT(*v69->f32)), v145, *v69->f32, 2), v149, *v69->f32, 3), _Q8);
    v154 = vmulq_f32(v152, _Q8);
    v155 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v140, *v69, 1), v136, COERCE_FLOAT(*v69->f32)), v144, *v69->f32, 2), v148, *v69->f32, 3), _Q8);
    v156 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v143, *v69, 1), v139, COERCE_FLOAT(*v69->f32)), v147, *v69->f32, 2), v151, *v69->f32, 3), _Q8);
  }

  else
  {
    v157 = vaddq_f32(v145, vaddq_f32(v137, v141));
    v154 = vaddq_f32(v150, vaddq_f32(v146, vaddq_f32(v138, v142)));
    v153 = vaddq_f32(v149, v157);
    v155 = vaddq_f32(v148, vaddq_f32(v144, vaddq_f32(v136, v140)));
    v156 = vaddq_f32(v151, vaddq_f32(v147, vaddq_f32(v139, v143)));
  }

  v158 = v108[v115];
  v159 = v796;
  v160 = v799;
  v161 = v778;
  v162 = v783;
  if (a1[8].i8[7])
  {
    v160 = vorrq_s8(a1[46], v799);
    v159 = vorrq_s8(a1[45], v796);
    v161 = vorrq_s8(a1[47], v778);
    v162 = vorrq_s8(a1[48], v783);
  }

  v163.i64[0] = 0x7F0000007FLL;
  v163.i64[1] = 0x7F0000007FLL;
  v746 = v153;
  v164 = vbslq_s8(vcltzq_s32(v160), v163, v153);
  v743 = v156;
  v165 = vbslq_s8(vcltzq_s32(v162), v163, v156);
  v166 = vbslq_s8(vcltzq_s32(v159), v163, v154);
  v167 = vbslq_s8(vcltzq_s32(v161), v163, v155);
  v168 = vmaxnmq_f32(v166, v167);
  v169 = vmaxnmq_f32(v164, v165);
  v170 = vbslq_s8(vcgtq_f32(v167, v166), xmmword_298495610, xmmword_298495600);
  v171 = vmaxnmq_f32(v168, v169);
  v172 = vbslq_s8(vcgtq_f32(v169, v168), vbslq_s8(vcgtq_f32(v165, v164), xmmword_298495630, xmmword_298495620), v170);
  v170.i64[0] = vextq_s8(v171, v171, 8uLL).u64[0];
  *v165.f32 = vmaxnm_f32(*v171.i8, *v170.i8);
  v173 = vbsl_s8(vcgt_f32(*v170.i8, *v171.i8), *&vextq_s8(v172, v172, 8uLL), *v172.i8);
  if (vmvn_s8(vcge_f32(*v165.f32, vdup_lane_s32(*v165.f32, 1))).u8[0])
  {
    v174 = v173.i32[1];
  }

  else
  {
    v174 = v173.i32[0];
  }

  v175 = v108[v174];
  v176 = vsubq_f32(v98, v175);
  v177 = vsubq_f32(v761, v158);
  v758 = v98;
  if (v69)
  {
    v176 = vmulq_f32(v176, *v69->f32);
    v177 = vmulq_f32(v177, *v69->f32);
  }

  v744 = v155;
  v745 = v154;
  v747 = _Q8;
  v178 = vdupq_lane_s32(*v158.f32, 0);
  v179 = vsubq_f32(v40, v178);
  v180 = vsubq_f32(v798, v178);
  v787 = a1[9];
  v181 = vsubq_f32(v37, v178);
  v182 = vsubq_f32(v36, v178);
  v183 = vdupq_lane_s32(*v158.f32, 1);
  v184 = vsubq_f32(v811, v183);
  v185 = vsubq_f32(v805, v183);
  v186 = vsubq_f32(v806, v183);
  v187 = vsubq_f32(v808, v183);
  v188 = vdupq_laneq_s32(v158, 2);
  v189 = vsubq_f32(v804, v188);
  v190 = vsubq_f32(v803, v188);
  v191 = vsubq_f32(v813, v188);
  v192 = vsubq_f32(v814, v188);
  v775 = v158;
  v193 = vdupq_laneq_s32(v158, 3);
  v194 = vsubq_f32(v810, v193);
  v195 = vsubq_f32(v815, v193);
  v196 = vsubq_f32(v812, v193);
  v197 = vsubq_f32(v809, v193);
  v756 = v187;
  v753 = v186;
  v754 = v192;
  v198 = vmulq_lane_f32(v186, *v177.f32, 1);
  v750 = v180;
  v780 = v179;
  v751 = v195;
  v752 = v191;
  v748 = v197;
  v749 = v189;
  v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v184, *v177.f32, 1), v182, v177.f32[0]), v189, v177, 2), v197, v177, 3);
  v200 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v185, *v177.f32, 1), v181, v177.f32[0]), v190, v177, 2), v196, v177, 3);
  v201 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(v198, v180, v177.f32[0]), v191, v177, 2), v195, v177, 3);
  v755 = v194;
  v202 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v187, *v177.f32, 1), v179, v177.f32[0]), v192, v177, 2), v194, v177, 3);
  v203 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
  v204 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
  v205 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
  v206 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
  if (a1[8].i8[7])
  {
    v204 = vorrq_s8(a1[46], v792);
    v203 = vorrq_s8(a1[45], v794);
    v205 = vorrq_s8(a1[47], v785);
    v206 = vorrq_s8(a1[48], v790);
  }

  v207 = vcltzq_s32(v203);
  v208.i64[0] = 0x7F0000007FLL;
  v208.i64[1] = 0x7F0000007FLL;
  v209 = vbslq_s8(vcltzq_s32(v204), v208, v199);
  v210 = vbslq_s8(vcltzq_s32(v206), v208, v202);
  v211 = vbslq_s8(v207, v208, v200);
  v212 = vbslq_s8(vcltzq_s32(v205), v208, v201);
  v213 = vmaxnmq_f32(v211, v212);
  v214 = vmaxnmq_f32(v209, v210);
  v215 = vbslq_s8(vcgtq_f32(v210, v209), xmmword_298495630, xmmword_298495620);
  v216 = vmaxnmq_f32(v213, v214);
  v217 = vbslq_s8(vcgtq_f32(v214, v213), v215, vbslq_s8(vcgtq_f32(v212, v211), xmmword_298495610, xmmword_298495600));
  v212.i64[0] = vextq_s8(v216, v216, 8uLL).u64[0];
  *v211.f32 = vmaxnm_f32(*v216.i8, *v212.f32);
  v218 = vbsl_s8(vcgt_f32(*v212.f32, *v216.i8), *&vextq_s8(v217, v217, 8uLL), *v217.i8);
  if (vmvn_s8(vcge_f32(*v211.f32, vdup_lane_s32(*v211.f32, 1))).u8[0])
  {
    v219 = v218.i32[1];
  }

  else
  {
    v219 = v218.i32[0];
  }

  v768 = v108[v219];
  v220 = vdupq_lane_s32(*v175.f32, 0);
  v221 = vsubq_f32(v40, v220);
  v222 = vsubq_f32(v798, v220);
  v223 = vsubq_f32(v37, v220);
  v224 = vsubq_f32(v36, v220);
  v225 = vdupq_lane_s32(*v175.f32, 1);
  v226 = vsubq_f32(v811, v225);
  v227 = vsubq_f32(v805, v225);
  v228 = vsubq_f32(v806, v225);
  v229 = vsubq_f32(v808, v225);
  v230 = vdupq_laneq_s32(v175, 2);
  v231 = vsubq_f32(v804, v230);
  v232 = vsubq_f32(v803, v230);
  v233 = vsubq_f32(v813, v230);
  v234 = vsubq_f32(v814, v230);
  v770 = v175;
  v235 = vdupq_laneq_s32(v175, 3);
  v236 = vsubq_f32(v810, v235);
  v237 = vsubq_f32(v815, v235);
  v238 = vsubq_f32(v812, v235);
  v239 = vsubq_f32(v809, v235);
  v240 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v226, *v176.f32, 1), v224, v176.f32[0]), v231, v176, 2), v239, v176, 3);
  v241 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v227, *v176.f32, 1), v223, v176.f32[0]), v232, v176, 2), v238, v176, 3);
  v242 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v228, *v176.f32, 1), v222, v176.f32[0]), v233, v176, 2), v237, v176, 3);
  v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v229, *v176.f32, 1), v221, v176.f32[0]), v234, v176, 2), v236, v176, 3);
  v244 = v796;
  v245 = v799;
  v246 = v778;
  v247 = v783;
  if (a1[8].i8[7])
  {
    v245 = vorrq_s8(a1[46], v799);
    v244 = vorrq_s8(a1[45], v796);
    v246 = vorrq_s8(a1[47], v778);
    v247 = vorrq_s8(a1[48], v783);
  }

  v248 = vbslq_s8(vcltzq_s32(v245), v208, v240);
  v249 = vbslq_s8(vcltzq_s32(v247), v208, v243);
  v250 = vbslq_s8(vcltzq_s32(v244), v208, v241);
  v251 = vbslq_s8(vcltzq_s32(v246), v208, v242);
  v252 = vmaxnmq_f32(v248, v249);
  v253 = vcgtq_f32(v249, v248);
  v254 = vmaxnmq_f32(v250, v251);
  v255 = vbslq_s8(vcgtq_f32(v252, v254), vbslq_s8(v253, xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v251, v250), xmmword_298495610, xmmword_298495600));
  v256 = vmaxnmq_f32(v254, v252);
  v252.i64[0] = vextq_s8(v256, v256, 8uLL).u64[0];
  v257 = vbsl_s8(vcgt_f32(*v252.f32, *v256.i8), *&vextq_s8(v255, v255, 8uLL), *v255.i8);
  v258 = v775;
  v259 = vsubq_f32(v768, v775);
  v260.i64[0] = 0x8000000080000000;
  v260.i64[1] = 0x8000000080000000;
  v261 = vdupq_n_s32(0x3B808081u);
  v262 = vbslq_s8(vcgtq_f32(v261, vabdq_f32(v768, v775)), vorrq_s8(vandq_s8(v259, v260), v261), v259);
  *v256.i8 = vmaxnm_f32(*v256.i8, *v252.f32);
  if (vmvn_s8(vcge_f32(*v256.i8, vdup_lane_s32(*v256.i8, 1))).u8[0])
  {
    v263 = v257.i32[1];
  }

  else
  {
    v263 = v257.i32[0];
  }

  v264 = v108[v263];
  v265 = vsubq_f32(v264, v770);
  v266 = vbslq_s8(vcgtq_f32(v261, vabdq_f32(v264, v770)), vorrq_s8(vandq_s8(v265, v260), v261), v265);
  __asm { FMOV            V21.4S, #1.0 }

  v268 = vdivq_f32(_Q21, v262);
  v782 = _Q21;
  v269 = vdivq_f32(_Q21, v266);
  v270 = vmulq_n_f32(v181, v268.f32[0]);
  v271 = vuzp1q_s16(v773, v772);
  v272 = vmovn_s16(v271);
  v273 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v272, *v233.f32)), 0x1FuLL));
  v274 = vbslq_s8(v273, vmulq_n_f32(v223, v269.f32[0]), v270);
  v275 = vbslq_s8(v273, vmulq_lane_f32(v227, *v269.f32, 1), vmulq_lane_f32(v185, *v268.f32, 1));
  v276 = vbslq_s8(v273, vmulq_laneq_f32(v232, v269, 2), vmulq_laneq_f32(v190, v268, 2));
  v277 = vbslq_s8(v273, vmulq_laneq_f32(v238, v269, 3), vmulq_laneq_f32(v196, v268, 3));
  v278 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v272, *v233.f32)), 0x1FuLL));
  v279 = vbslq_s8(v278, vmulq_n_f32(v224, v269.f32[0]), vmulq_n_f32(v182, v268.f32[0]));
  v280 = vbslq_s8(v278, vmulq_lane_f32(v226, *v269.f32, 1), vmulq_lane_f32(v184, *v268.f32, 1));
  v281 = vbslq_s8(v278, vmulq_laneq_f32(v231, v269, 2), vmulq_laneq_f32(v749, v268, 2));
  v282 = vuzp1q_s16(v774, v767);
  v283 = vbslq_s8(v278, vmulq_laneq_f32(v239, v269, 3), vmulq_laneq_f32(v748, v268, 3));
  *v278.i8 = vmovn_s16(v282);
  v284 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v278.i8, *v233.f32)), 0x1FuLL));
  v285 = vbslq_s8(v284, vmulq_n_f32(v222, v269.f32[0]), vmulq_n_f32(v750, v268.f32[0]));
  v286 = vbslq_s8(v284, vmulq_lane_f32(v228, *v269.f32, 1), vmulq_lane_f32(v753, *v268.f32, 1));
  v287 = vbslq_s8(v284, vmulq_laneq_f32(v233, v269, 2), vmulq_laneq_f32(v752, v268, 2));
  v288 = vbslq_s8(v284, vmulq_laneq_f32(v237, v269, 3), vmulq_laneq_f32(v751, v268, 3));
  v289 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v278.i8, *v287.f32)), 0x1FuLL));
  v290 = vbslq_s8(v289, vmulq_n_f32(v221, v269.f32[0]), vmulq_n_f32(v780, v268.f32[0]));
  v291 = vbslq_s8(v289, vmulq_lane_f32(v229, *v269.f32, 1), vmulq_lane_f32(v756, *v268.f32, 1));
  v292 = vbslq_s8(v289, vmulq_laneq_f32(v234, v269, 2), vmulq_laneq_f32(v754, v268, 2));
  v293 = vbslq_s8(v289, vmulq_laneq_f32(v236, v269, 3), vmulq_laneq_f32(v755, v268, 3));
  v294 = vmlaq_f32(vmulq_f32(v291, v291), v290, v290);
  v295 = vmlaq_f32(vmulq_f32(v286, v286), v285, v285);
  v296 = vmlaq_f32(vmulq_f32(v280, v280), v279, v279);
  v297 = vmlaq_f32(vmulq_f32(v275, v275), v274, v274);
  v298 = 7;
  if (!a1[8].i8[8])
  {
    v298 = 3;
  }

  v299 = vmlaq_f32(v297, v276, v276);
  v276.f32[0] = ReciprocalTable[v298] * ReciprocalTable[v298];
  v300 = vmlaq_f32(vmlaq_f32(v295, v287, v287), v288, v288);
  v301 = vdupq_lane_s32(*v276.f32, 0);
  v302 = vcgtq_f32(v301, vmlaq_f32(v299, v277, v277));
  v303 = vcgtq_f32(v301, vmlaq_f32(vmlaq_f32(v296, v281, v281), v283, v283));
  v304 = vcgtq_f32(v301, v300);
  v305 = vcgtq_f32(v301, vmlaq_f32(vmlaq_f32(v294, v292, v292), v293, v293));
  v306 = vandq_s8(v783, v305);
  v307 = vandq_s8(v778, v304);
  v308 = vandq_s8(v799, v303);
  v309 = vandq_s8(v796, v302);
  v310 = vorrq_s8(vandq_s8(vuzp1q_s16(v309, v308), xmmword_298495650), vandq_s8(vuzp1q_s16(v307, v306), xmmword_298495640));
  v310.i16[0] = vaddvq_s16(v310);
  v311 = vcnt_s8(*v310.i8);
  v311.i16[0] = vaddlv_u8(v311);
  if (v311.i32[0] >= 2u)
  {
    v312 = vcltzq_s32(v307);
    v313 = vcltzq_s32(v309);
    v314 = vcltzq_s32(v306);
    v315 = vcltzq_s32(v308);
    v258 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(a1[9], v313), vandq_s8(a1[11], v312)), vaddq_f32(vandq_s8(a1[10], v315), vandq_s8(a1[12], v314))), vaddq_f32(vaddq_f32(vandq_s8(a1[13], v313), vandq_s8(a1[15], v312)), vaddq_f32(vandq_s8(a1[14], v315), vandq_s8(a1[16], v314)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(a1[17], v313), vandq_s8(a1[19], v312)), vaddq_f32(vandq_s8(a1[18], v315), vandq_s8(a1[20], v314))), vaddq_f32(vaddq_f32(vandq_s8(a1[21], v313), vandq_s8(a1[23], v312)), vaddq_f32(vandq_s8(a1[22], v315), vandq_s8(a1[24], v314))))), ReciprocalTable[v311.u16[0]]);
  }

  v316 = vuzp1q_s8(v271, v282);
  v317 = vandq_s8(v794, v302);
  v318 = vandq_s8(v792, v303);
  v319 = vandq_s8(v785, v304);
  v320 = vandq_s8(v790, v305);
  v321 = vorrq_s8(vandq_s8(vuzp1q_s16(v317, v318), xmmword_298495650), vandq_s8(vuzp1q_s16(v319, v320), xmmword_298495640));
  v321.i16[0] = vaddvq_s16(v321);
  v322 = vcnt_s8(*v321.i8);
  v322.i16[0] = vaddlv_u8(v322);
  v776 = v258;
  if (v322.i32[0] >= 2u)
  {
    v323 = vcltzq_s32(v319);
    v324 = vcltzq_s32(v317);
    v325 = vcltzq_s32(v320);
    v326 = vcltzq_s32(v318);
    v770 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(a1[9], v324), vandq_s8(a1[11], v323)), vaddq_f32(vandq_s8(a1[10], v326), vandq_s8(a1[12], v325))), vaddq_f32(vaddq_f32(vandq_s8(a1[13], v324), vandq_s8(a1[15], v323)), vaddq_f32(vandq_s8(a1[14], v326), vandq_s8(a1[16], v325)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(a1[17], v324), vandq_s8(a1[19], v323)), vaddq_f32(vandq_s8(a1[18], v326), vandq_s8(a1[20], v325))), vaddq_f32(vaddq_f32(vandq_s8(a1[21], v324), vandq_s8(a1[23], v323)), vaddq_f32(vandq_s8(a1[22], v326), vandq_s8(a1[24], v325))))), ReciprocalTable[v322.u16[0]]);
  }

  v327 = vdupq_lane_s32(*v768.f32, 0);
  v328 = vmulq_n_f32(vsubq_f32(v327, v787), v268.f32[0]);
  v329 = vdupq_lane_s32(*v264.f32, 0);
  v330 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v316.i8, *v328.i8)), 0x1FuLL));
  v331 = vbslq_s8(v330, vmulq_n_f32(vsubq_f32(v329, v787), v269.f32[0]), v328);
  v332 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v316.i8, *v331.f32)), 0x1FuLL));
  v333 = vbslq_s8(v332, vmulq_n_f32(vsubq_f32(v329, v36), v269.f32[0]), vmulq_n_f32(vsubq_f32(v327, v36), v268.f32[0]));
  v334 = *v316.i8;
  v335 = vextq_s8(v316, v316, 8uLL).u64[0];
  v336 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v335, *v331.f32)), 0x1FuLL));
  v337 = vbslq_s8(v336, vmulq_n_f32(vsubq_f32(v329, v798), v269.f32[0]), vmulq_n_f32(vsubq_f32(v327, v798), v268.f32[0]));
  v338 = vdupq_lane_s32(*v768.f32, 1);
  v339 = vdupq_lane_s32(*v264.f32, 1);
  v340 = vbslq_s8(v336, vmulq_lane_f32(vsubq_f32(v339, v806), *v269.f32, 1), vmulq_lane_f32(vsubq_f32(v338, v806), *v268.f32, 1));
  v341 = vbslq_s8(v332, vmulq_lane_f32(vsubq_f32(v339, v811), *v269.f32, 1), vmulq_lane_f32(vsubq_f32(v338, v811), *v268.f32, 1));
  v342 = vbslq_s8(v330, vmulq_lane_f32(vsubq_f32(v339, v805), *v269.f32, 1), vmulq_lane_f32(vsubq_f32(v338, v805), *v268.f32, 1));
  v343 = vdupq_laneq_s32(v768, 2);
  v344 = vdupq_laneq_s32(v264, 2);
  v345 = vbslq_s8(v336, vmulq_laneq_f32(vsubq_f32(v344, v813), v269, 2), vmulq_laneq_f32(vsubq_f32(v343, v813), v268, 2));
  v346 = vbslq_s8(v332, vmulq_laneq_f32(vsubq_f32(v344, v804), v269, 2), vmulq_laneq_f32(vsubq_f32(v343, v804), v268, 2));
  v347 = vdupq_laneq_s32(v768, 3);
  v348 = vbslq_s8(v330, vmulq_laneq_f32(vsubq_f32(v344, v803), v269, 2), vmulq_laneq_f32(vsubq_f32(v343, v803), v268, 2));
  v349 = vdupq_laneq_s32(v264, 3);
  v350 = vbslq_s8(v330, vmulq_laneq_f32(vsubq_f32(v349, v812), v269, 3), vmulq_laneq_f32(vsubq_f32(v347, v812), v268, 3));
  v351 = vbslq_s8(v332, vmulq_laneq_f32(vsubq_f32(v349, v809), v269, 3), vmulq_laneq_f32(vsubq_f32(v347, v809), v268, 3));
  v352 = vbslq_s8(v336, vmulq_laneq_f32(vsubq_f32(v349, v815), v269, 3), vmulq_laneq_f32(vsubq_f32(v347, v815), v268, 3));
  v781 = v335;
  v353 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v335, *v331.f32)), 0x1FuLL));
  v354 = vbslq_s8(v353, vmulq_n_f32(vsubq_f32(v329, v801), v269.f32[0]), vmulq_n_f32(vsubq_f32(v327, v801), v268.f32[0]));
  v355 = vbslq_s8(v353, vmulq_lane_f32(vsubq_f32(v339, v808), *v269.f32, 1), vmulq_lane_f32(vsubq_f32(v338, v808), *v268.f32, 1));
  v356 = vbslq_s8(v353, vmulq_laneq_f32(vsubq_f32(v344, v814), v269, 2), vmulq_laneq_f32(vsubq_f32(v343, v814), v268, 2));
  v357 = vbslq_s8(v353, vmulq_laneq_f32(vsubq_f32(v349, v810), v269, 3), vmulq_laneq_f32(vsubq_f32(v347, v810), v268, 3));
  v358 = vmlaq_f32(vmulq_f32(v355, v355), v354, v354);
  v359 = vcgtq_f32(v301, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v342, v342), v331, v331), v348, v348), v350, v350));
  v360 = vcgtq_f32(v301, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v341, v341), v333, v333), v346, v346), v351, v351));
  v361 = vcgtq_f32(v301, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v340, v340), v337, v337), v345, v345), v352, v352));
  v362 = vcgtq_f32(v301, vmlaq_f32(vmlaq_f32(v358, v356, v356), v357, v357));
  v363 = v783;
  v364 = vandq_s8(v783, v362);
  v365 = vandq_s8(v778, v361);
  v366 = v799;
  v367 = vandq_s8(v799, v360);
  v368 = vandq_s8(v796, v359);
  v369 = vorrq_s8(vandq_s8(vuzp1q_s16(v368, v367), xmmword_298495650), vandq_s8(vuzp1q_s16(v365, v364), xmmword_298495640));
  v369.i16[0] = vaddvq_s16(v369);
  v370 = vcnt_s8(*v369.i8);
  v370.i16[0] = vaddlv_u8(v370);
  if (v370.i32[0] < 2u)
  {
    v376 = xmmword_298495620;
    v378 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
    v377 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
    v379 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
    v380 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
    v375 = v768;
  }

  else
  {
    v371 = vcltzq_s32(v365);
    v372 = vcltzq_s32(v368);
    v373 = vcltzq_s32(v364);
    v374 = vcltzq_s32(v367);
    v366 = v799;
    v363 = v783;
    v375 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(a1[9], v372), vandq_s8(a1[11], v371)), vaddq_f32(vandq_s8(a1[10], v374), vandq_s8(a1[12], v373))), vaddq_f32(vaddq_f32(vandq_s8(a1[13], v372), vandq_s8(a1[15], v371)), vaddq_f32(vandq_s8(a1[14], v374), vandq_s8(a1[16], v373)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(a1[17], v372), vandq_s8(a1[19], v371)), vaddq_f32(vandq_s8(a1[18], v374), vandq_s8(a1[20], v373))), vaddq_f32(vaddq_f32(vandq_s8(a1[21], v372), vandq_s8(a1[23], v371)), vaddq_f32(vandq_s8(a1[22], v374), vandq_s8(a1[24], v373))))), ReciprocalTable[v370.u16[0]]);
    v376 = xmmword_298495620;
    v378 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
    v377 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
    v379 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + (v4 & 0xF0));
    v380 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
  }

  v381 = vandq_s8(v377, v359);
  v382 = vandq_s8(v378, v360);
  v383 = vandq_s8(v379, v361);
  v384 = vandq_s8(v380, v362);
  v385 = vorrq_s8(vandq_s8(vuzp1q_s16(v381, v382), xmmword_298495650), vandq_s8(vuzp1q_s16(v383, v384), xmmword_298495640));
  v385.i16[0] = vaddvq_s16(v385);
  *v385.f32 = vcnt_s8(*v385.f32);
  v385.i16[0] = vaddlv_u8(*v385.f32);
  v386 = v385.i16[0];
  if (v385.i32[0] >= 2u)
  {
    v387 = vcltzq_s32(v383);
    v388 = vcltzq_s32(v381);
    v389 = vcltzq_s32(v384);
    v390 = vcltzq_s32(v382);
    v391 = vaddq_f32(vandq_s8(a1[9], v388), vandq_s8(a1[11], v387));
    v392 = vaddq_f32(vandq_s8(a1[10], v390), vandq_s8(a1[12], v389));
    v393 = vaddq_f32(vandq_s8(a1[13], v388), vandq_s8(a1[15], v387));
    v394 = vaddq_f32(vandq_s8(a1[14], v390), vandq_s8(a1[16], v389));
    v395 = vaddq_f32(vandq_s8(a1[17], v388), vandq_s8(a1[19], v387));
    v380 = VectorMaskForBitMask(unsigned short)::kVectorMasks[v4 & 0xF];
    v378 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 4) & 0xF0));
    v396 = vaddq_f32(vandq_s8(a1[18], v390), vandq_s8(a1[20], v389));
    v377 = *(VectorMaskForBitMask(unsigned short)::kVectorMasks + ((v4 >> 8) & 0xF0));
    v383 = vaddq_f32(vandq_s8(a1[21], v388), vandq_s8(a1[23], v387));
    v397 = vaddq_f32(vandq_s8(a1[22], v390), vandq_s8(a1[24], v389));
    v398 = vaddq_f32(v391, v392);
    v385 = vaddq_f32(v393, v394);
    v384 = vpaddq_f32(v398, v385);
    v264 = vmulq_n_f32(vpaddq_f32(v384, vpaddq_f32(vaddq_f32(v395, v396), vaddq_f32(v383, v397))), ReciprocalTable[v386]);
  }

  v399 = v770;
  v400 = a1[49].u16[0];
  v401 = vcgezq_s32(v377);
  v402 = vcgezq_s32(v378);
  v403 = vcgezq_s32(v379);
  v404 = vcgezq_s32(v380);
  if ((v400 & ~v4) == 0)
  {
    v409 = v776;
    goto LABEL_65;
  }

  if (!a1[8].i8[7])
  {
    v409 = v776;
    if (v776.f32[3] >= v375.f32[3])
    {
      v375 = 0uLL;
      goto LABEL_65;
    }

    goto LABEL_50;
  }

  v405 = vsubq_f32(v375, v776);
  v384.i32[0] = v405.i32[3];
  if (v405.f32[3] == 0.0)
  {
    v383.i32[0] = v400 & ~v4;
    v406 = vcnt_s8(*v383.f32);
    v406.i16[0] = vaddlv_u8(v406);
    v407 = v406.i32[0];
    v385 = vandq_s8(vuzp1q_s16(vandq_s8(a1[45], v796), vandq_s8(a1[46], v366)), xmmword_298495650);
    v383 = vorrq_s8(v385, vandq_s8(vuzp1q_s16(vandq_s8(a1[47], v778), vandq_s8(a1[48], v363)), xmmword_298495640));
    v383.i16[0] = vaddvq_s16(v383);
    *v383.f32 = vcnt_s8(*v383.f32);
    v383.i16[0] = vaddlv_u8(*v383.f32);
    if (15 - v407 != v383.i32[0])
    {
      v383.i64[0] = 0x3F0000003FLL;
      v383.i64[1] = 0x3F0000003FLL;
      v408 = vnegq_f32(v383);
      v375 = v408;
      goto LABEL_52;
    }

LABEL_50:
    v409 = 0uLL;
    goto LABEL_65;
  }

  v408 = v776;
LABEL_52:
  v383.i64[0] = 0;
  v384 = vdupq_lane_s32(*&vcgtq_f32(v383, v384), 0);
  v410 = vbslq_s8(v384, vnegq_f32(v405), v405);
  v411 = vbslq_s8(v384, v375, v408);
  v385.f32[0] = v411.f32[3] / v410.f32[3];
  v412 = vmlsq_lane_f32(v411, v410, *v385.f32, 0);
  v383 = vandq_s8(vcgtq_f32(v412, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v412));
  if ((vminvq_u32(v383) & 0x80000000) != 0)
  {
    v375 = vbslq_s8(v384, v408, v375);
    v384.i32[1] = v782.i32[1];
    v409 = vminnmq_f32(vmaxnmq_f32(v412, 0), v782);
  }

  else
  {
    v413.i64[0] = 0x7F0000007FLL;
    v413.i64[1] = 0x7F0000007FLL;
    v414 = vandq_s8(v773, v413);
    v415 = vandq_s8(v772, v413);
    v416 = vandq_s8(v774, v413);
    v417 = vandq_s8(v767, v413);
    v418 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v334, *v414.i8)), 0x1FuLL)), v413, v739);
    v419 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v335, *v414.i8)), 0x1FuLL)), v413, v740);
    v420 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v334, *v414.i8)), 0x1FuLL)), v413, v741);
    v421 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v335, *v414.i8)), 0x1FuLL)), v413, v742);
    v422 = vmaxnmq_f32(v420, v421);
    v423 = vmaxnmq_f32(v418, v419);
    v424 = vbslq_s8(vcgtq_f32(v419, v418), xmmword_298495630, v376);
    v425 = vmaxnmq_f32(v422, v423);
    v426 = vbslq_s8(vcgtq_f32(v423, v422), v424, vbslq_s8(vcgtq_f32(v421, v420), xmmword_298495610, xmmword_298495600));
    v424.i64[0] = vextq_s8(v425, v425, 8uLL).u64[0];
    *v420.f32 = vmaxnm_f32(*v425.i8, *v424.i8);
    v427 = vbsl_s8(vcgt_f32(*v424.i8, *v425.i8), *&vextq_s8(v426, v426, 8uLL), *v426.i8);
    if (vmvn_s8(vcge_f32(*v420.f32, vdup_lane_s32(*v420.f32, 1))).u8[0])
    {
      v428 = v427.i32[1];
    }

    else
    {
      v428 = v427.i32[0];
    }

    v429 = v108[v428];
    v430 = vsubq_f32(v761, v429);
    if (v69)
    {
      v431 = *v69->f32;
    }

    else
    {
      v431 = vdupq_n_s32(0x3EAAAAABu);
    }

    v432 = vmulq_f32(v430, v431);
    v433 = vdupq_lane_s32(*v429.f32, 0);
    v434 = vsubq_f32(v798, v433);
    v435 = vsubq_f32(v787, v433);
    v436 = vdupq_lane_s32(*v429.f32, 1);
    v437 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v811, v436), *v432.f32, 1), vsubq_f32(v802, v433), v432.f32[0]);
    v438 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v808, v436), *v432.f32, 1), vsubq_f32(v801, v433), v432.f32[0]);
    v439 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v805, v436), *v432.f32, 1), v435, v432.f32[0]);
    v440 = vdupq_laneq_s32(v429, 2);
    v441 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v806, v436), *v432.f32, 1), v434, v432.f32[0]), vsubq_f32(v813, v440), v432, 2);
    v442 = vmlaq_laneq_f32(v439, vsubq_f32(v803, v440), v432, 2);
    v443 = vsubq_f32(v804, v440);
    v444 = vmlaq_laneq_f32(v438, vsubq_f32(v814, v440), v432, 2);
    v445 = vdupq_laneq_s32(v429, 3);
    v446 = vorrq_s8(vandq_s8(v402, vmlaq_laneq_f32(vmlaq_laneq_f32(v437, v443, v432, 2), vsubq_f32(v809, v445), v432, 3)), v415);
    v447 = vorrq_s8(vandq_s8(v404, vmlaq_laneq_f32(v444, vsubq_f32(v810, v445), v432, 3)), v417);
    v448 = vorrq_s8(vandq_s8(v401, vmlaq_laneq_f32(v442, vsubq_f32(v812, v445), v432, 3)), v414);
    v449 = vorrq_s8(vandq_s8(v403, vmlaq_laneq_f32(v441, vsubq_f32(v815, v445), v432, 3)), v416);
    v450 = vmaxnmq_f32(v446, v447);
    v451 = vcgtq_f32(v447, v446);
    v452 = vmaxnmq_f32(v448, v449);
    v453 = vbslq_s8(vcgtq_f32(v449, v448), xmmword_298495610, xmmword_298495600);
    v454 = vbslq_s8(v451, xmmword_298495630, v376);
    v455 = vmaxnmq_f32(v452, v450);
    v456 = vbslq_s8(vcgtq_f32(v450, v452), v454, v453);
    v454.i64[0] = vextq_s8(v455, v455, 8uLL).u64[0];
    v457 = vbsl_s8(vcgt_f32(*v454.i8, *v455.i8), *&vextq_s8(v456, v456, 8uLL), *v456.i8);
    *v454.i8 = vmaxnm_f32(*v455.i8, *v454.i8);
    if (vmvn_s8(vcge_f32(*v454.i8, vdup_lane_s32(*v454.i8, 1))).u8[0])
    {
      v458 = v457.i32[1];
    }

    else
    {
      v458 = v457.i32[0];
    }

    v459 = v108[v458];
    v383 = v459;
    v383.i32[3] = 0;
    v384 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v459, v429)), 3)), 0x1FuLL));
    v375 = vbslq_s8(v384, v459, v383);
    v460 = v429;
    v460.i32[3] = 0;
    v409 = vbslq_s8(v384, v460, v429);
  }

LABEL_65:
  v461 = v400 & v4;
  if (!v461)
  {
    goto LABEL_87;
  }

  if (!a1[8].i8[7])
  {
    if (v770.f32[3] >= v264.f32[3])
    {
      v264 = 0uLL;
      goto LABEL_87;
    }

    goto LABEL_79;
  }

  v462 = vsubq_f32(v264, v770);
  v384.i32[0] = v462.i32[3];
  if (v462.f32[3] == 0.0)
  {
    v383.i32[0] = v461;
    v463 = vcnt_s8(*v383.f32);
    v463.i16[0] = vaddlv_u8(v463);
    v464 = v463.i32[0];
    v463.i32[0] = a3[1];
    v465 = vcnt_s8(v463);
    v465.i16[0] = vaddlv_u8(v465);
    if (v465.i32[0] - 1 != v464)
    {
      v466.i64[0] = 0x3F0000003FLL;
      v466.i64[1] = 0x3F0000003FLL;
      v399 = vnegq_f32(v466);
      v264 = v399;
      goto LABEL_70;
    }

LABEL_79:
    v399 = 0uLL;
    goto LABEL_87;
  }

LABEL_70:
  if (v462.f32[3] < 0.0)
  {
    v467 = v399;
    v462 = vnegq_f32(v462);
    v384.i32[0] = v462.i32[3];
    v399 = v264;
    v264 = v467;
  }

  v384.f32[0] = v399.f32[3] / v384.f32[0];
  v468 = vmlsq_lane_f32(v399, v462, *v384.f32, 0);
  if ((vminvq_u32(vandq_s8(vcgtq_f32(v468, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v468))) & 0x80000000) != 0)
  {
    v399 = vminnmq_f32(vmaxnmq_f32(v468, 0), v782);
  }

  else
  {
    v469.i64[0] = 0x7F0000007FLL;
    v469.i64[1] = 0x7F0000007FLL;
    v470 = vandq_s8(v403, v469);
    v471 = vandq_s8(v401, v469);
    v472 = vandq_s8(v404, v469);
    v473 = vandq_s8(v402, v469);
    v474 = vorrq_s8(vandq_s8(v772, v746), v473);
    v475 = vorrq_s8(vandq_s8(v767, v743), v472);
    v476 = vorrq_s8(vandq_s8(v773, v745), v471);
    v477 = vorrq_s8(vandq_s8(v774, v744), v470);
    v478 = vmaxnmq_f32(v476, v477);
    v479 = vmaxnmq_f32(v474, v475);
    v480 = vbslq_s8(vcgtq_f32(v477, v476), xmmword_298495610, xmmword_298495600);
    v481 = vbslq_s8(vcgtq_f32(v475, v474), xmmword_298495630, v376);
    v482 = vmaxnmq_f32(v478, v479);
    v483 = vbslq_s8(vcgtq_f32(v479, v478), v481, v480);
    v481.i64[0] = vextq_s8(v482, v482, 8uLL).u64[0];
    *v474.f32 = vmaxnm_f32(*v482.i8, *v481.i8);
    v484 = vbsl_s8(vcgt_f32(*v481.i8, *v482.i8), *&vextq_s8(v483, v483, 8uLL), *v483.i8);
    if (vmvn_s8(vcge_f32(*v474.f32, vdup_lane_s32(*v474.f32, 1))).u8[0])
    {
      v485 = v484.i32[1];
    }

    else
    {
      v485 = v484.i32[0];
    }

    v486 = v108[v485];
    v487 = vsubq_f32(v758, v486);
    if (v69)
    {
      v488 = *v69->f32;
    }

    else
    {
      v488 = vdupq_n_s32(0x3EAAAAABu);
    }

    v489 = vmulq_f32(v487, v488);
    v490 = vdupq_lane_s32(*v486.f32, 0);
    v491 = vsubq_f32(v798, v490);
    v492 = vsubq_f32(v787, v490);
    v493 = vdupq_lane_s32(*v486.f32, 1);
    v494 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v811, v493), *v489.f32, 1), vsubq_f32(v802, v490), v489.f32[0]);
    v495 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v808, v493), *v489.f32, 1), vsubq_f32(v801, v490), v489.f32[0]);
    v496 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v805, v493), *v489.f32, 1), v492, v489.f32[0]);
    v497 = vdupq_laneq_s32(v486, 2);
    v498 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v806, v493), *v489.f32, 1), v491, v489.f32[0]), vsubq_f32(v813, v497), v489, 2);
    v499 = vmlaq_laneq_f32(v496, vsubq_f32(v803, v497), v489, 2);
    v500 = vsubq_f32(v804, v497);
    v501 = vmlaq_laneq_f32(v495, vsubq_f32(v814, v497), v489, 2);
    v502 = vdupq_laneq_s32(v486, 3);
    v503 = vmlaq_laneq_f32(vmlaq_laneq_f32(v494, v500, v489, 2), vsubq_f32(v809, v502), v489, 3);
    v504 = vmlaq_laneq_f32(v501, vsubq_f32(v810, v502), v489, 3);
    v505 = vorrq_s8(vandq_s8(v773, vmlaq_laneq_f32(v499, vsubq_f32(v812, v502), v489, 3)), v471);
    v506 = vorrq_s8(vandq_s8(v774, vmlaq_laneq_f32(v498, vsubq_f32(v815, v502), v489, 3)), v470);
    v507 = vbslq_s8(vcgtq_f32(v506, v505), xmmword_298495610, xmmword_298495600);
    v508 = vorrq_s8(vandq_s8(v772, v503), v473);
    v509 = vorrq_s8(vandq_s8(v767, v504), v472);
    v510 = vbslq_s8(vcgtq_f32(v509, v508), xmmword_298495630, v376);
    v511 = vmaxnmq_f32(v505, v506);
    v512 = vmaxnmq_f32(v508, v509);
    v513 = vmaxnmq_f32(v511, v512);
    v514 = vbslq_s8(vcgtq_f32(v512, v511), v510, v507);
    v511.i64[0] = vextq_s8(v513, v513, 8uLL).u64[0];
    v515 = vbsl_s8(vcgt_f32(*v511.f32, *v513.i8), *&vextq_s8(v514, v514, 8uLL), *v514.i8);
    *v513.i8 = vmaxnm_f32(*v513.i8, *v511.f32);
    if (vmvn_s8(vcge_f32(*v513.i8, vdup_lane_s32(*v513.i8, 1))).u8[0])
    {
      v516 = v515.i32[1];
    }

    else
    {
      v516 = v515.i32[0];
    }

    v517 = v108[v516];
    v518 = v517;
    v518.i32[3] = 0;
    v519 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v517, v486)), 3)), 0x1FuLL));
    v264 = vbslq_s8(v519, v517, v518);
    v520 = v486;
    v520.i32[3] = 0;
    v399 = vbslq_s8(v519, v520, v486);
  }

LABEL_87:
  v797 = v403;
  v800 = v402;
  if (a1[8].i8[8])
  {
    v521 = 127;
  }

  else
  {
    v521 = 63;
  }

  if (a1[8].i8[8])
  {
    v522 = 7;
  }

  else
  {
    v522 = 3;
  }

  v523 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v409, 0), v782), v521));
  v524 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v375, 0), v782), v521));
  v525 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v264, 0), v782), v521);
  v526 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v399, 0), v782), v521));
  v527 = vrndxq_f32(v525);
  v528 = vsubq_f32(v523, v524);
  v529 = vsubq_f32(v526, v527);
  v530 = vcgtz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v529, v529, 8uLL), *&vextq_s8(v528, v528, 8uLL)), vadd_f32(vzip1_s32(*v529.i8, *v528.i8), vzip2_s32(*v529.i8, *v528.i8))));
  v531 = vmovl_s16(vdup_lane_s16(v530, 2));
  v532 = vbslq_s8(v531, v524, v523);
  v533 = vbslq_s8(v531, v523, v524);
  v534 = vcvtq_s32_f32(v533);
  v535 = vcvtq_s32_f32(v532);
  v536 = vmovn_s16(vuzp1q_s16(v535, v534));
  v537 = vmovl_s16(vdup_lane_s16(v530, 0));
  v538 = vbslq_s8(v537, v527, v526);
  v539 = vbslq_s8(v537, v526, v527);
  v540 = vcvtq_s32_f32(v539);
  v541 = vcvtq_s32_f32(v538);
  v542 = vmovn_s16(vuzp1q_s16(v541, v540));
  if (a1[8].i8[8])
  {
    v543 = *v69->f32;
    v543.i32[3] = 0;
    v544.i64[0] = 0x100000001;
    v544.i64[1] = 0x100000001;
    v545 = vdupq_n_s32(0x4B400000u);
    v546 = vdupq_n_s32(0xCB400000);
    v535 = vaddq_f32(vorrq_s8(vandq_s8(v535, v544), v545), v546);
    v547 = vaddq_f32(vorrq_s8(vandq_s8(v541, v544), v545), v546);
    v548 = vmlaq_f32(vmulq_f32(vaddq_f32(vorrq_s8(vandq_s8(v534, v544), v545), v546), v543), v543, v535);
    v548.i64[0] = vpaddq_f32(v548, v548).u64[0];
    v549 = vmlaq_f32(vmulq_f32(vaddq_f32(vorrq_s8(vandq_s8(v540, v544), v545), v546), v543), v543, v547);
    v549.i64[0] = vpaddq_f32(v549, v549).u64[0];
    v547.i32[0] = 1.0;
    *v548.f32 = vdup_lane_s32(vcgt_f32(vpadd_f32(*v548.f32, *v548.f32), *v547.f32), 0);
    *v535.f32 = vand_s8(vorr_s8(v536, 0x1010100010101), *v548.f32);
    *v549.f32 = vdup_lane_s32(vcgt_f32(vpadd_f32(*v549.f32, *v549.f32), *v547.f32), 0);
    v757 = vorr_s8(vand_s8(vorr_s8(v542, 0x1010100010101), *v549.f32), vand_s8(vbic_s8(v542, *v549.f32), 0xFFFEFEFEFFFEFEFELL));
    v759 = vorr_s8(*v535.f32, vand_s8(vbic_s8(v536, *v548.f32), 0xFFFEFEFEFFFEFEFELL));
    v550 = vmovl_u8(vorr_s8(vadd_s8(v759, v759), vshr_n_u8(v759, 6uLL)));
    v551 = vaddq_f32(vorrq_s8(vmovl_u16(*v550.i8), v545), v546);
    v552 = vaddq_f32(vorrq_s8(vmovl_high_u16(v550), v545), v546);
    v553 = vmovl_u8(vorr_s8(vadd_s8(v757, v757), vshr_n_u8(v757, 6uLL)));
    v554 = vmovl_u16(*v553.i8);
    v555 = vorrq_s8(vmovl_high_u16(v553), v545);
    v556 = vaddq_f32(vorrq_s8(v554, v545), v546);
    v532 = vaddq_f32(v555, v546);
    v557 = vmulq_n_f32(v551, 0.0039216);
    v558 = vmulq_n_f32(v556, 0.0039216);
    v559 = vmlaq_n_f32(vnegq_f32(v558), v532, 0.0039216);
    v560 = vmlaq_n_f32(vnegq_f32(v557), v552, 0.0039216);
  }

  else
  {
    v757 = v542;
    v759 = v536;
    v557 = vmulq_n_f32(v532, 0.015873);
    v558 = vmulq_n_f32(v538, 0.015873);
    v559 = vmlaq_n_f32(vnegq_f32(v558), v539, 0.015873);
    v560 = vmlaq_n_f32(vnegq_f32(v557), v533, 0.015873);
    v561 = v559;
    v562 = v560;
    if (!v69)
    {
      goto LABEL_97;
    }
  }

  v561 = *v69->f32;
  v562 = *v69->f32;
LABEL_97:
  v532.i32[0] = 0;
  v535.i32[0] = a1[8].u8[8];
  v563 = vorrq_s8(vdupq_lane_s8(*&vceqq_s8(v535, v532), 0), xmmword_298495660);
  v564 = vandq_s8(v563, v562);
  v565 = vandq_s8(v563, v561);
  v566 = vmulq_f32(v560, v564);
  v567 = vaddv_f32(vadd_f32(*v566.i8, *&vextq_s8(v566, v566, 8uLL)));
  v568 = vmulq_f32(v559, v565);
  v569 = vaddv_f32(vadd_f32(*v568.i8, *&vextq_s8(v568, v568, 8uLL)));
  if (fabsf(v567) < 0.0039062)
  {
    v570 = vmulq_f32(v560, v560);
    v567 = vaddv_f32(vadd_f32(*v570.i8, *&vextq_s8(v570, v570, 8uLL)));
    v564 = v560;
  }

  v795 = v401;
  v766 = v404;
  if (fabsf(v569) < 0.0039062)
  {
    v571 = vmulq_f32(v559, v559);
    v569 = vaddv_f32(vadd_f32(*v571.i8, *&vextq_s8(v571, v571, 8uLL)));
    v565 = v559;
  }

  v572 = vdupq_lane_s32(*v557.f32, 0);
  v573 = vdupq_lane_s32(*v558.f32, 0);
  v574 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v334, *v572.i8)), 0x1FuLL));
  v575 = v334;
  v576 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v334, *v572.i8)), 0x1FuLL));
  v577 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v335, *v572.i8)), 0x1FuLL));
  v578 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v335, *v572.i8)), 0x1FuLL));
  v788 = vbslq_s8(v578, v573, v572);
  v789 = vbslq_s8(v577, v573, v572);
  v791 = vbslq_s8(v574, v573, v572);
  v793 = vbslq_s8(v576, v573, v572);
  v579 = vdupq_lane_s32(*v557.f32, 1);
  v580 = vdupq_lane_s32(*v558.f32, 1);
  v581 = vbslq_s8(v578, v580, v579);
  v784 = vbslq_s8(v577, v580, v579);
  v786 = vbslq_s8(v574, v580, v579);
  v777 = vbslq_s8(v576, v580, v579);
  v582 = vdupq_laneq_s32(v557, 2);
  v583 = vdupq_laneq_s32(v558, 2);
  v584 = vdupq_lane_s32(*v564.f32, 0);
  v585 = vdupq_lane_s32(*v565.f32, 0);
  v586 = vdupq_lane_s32(*v564.f32, 1);
  v587 = vdupq_lane_s32(*v565.f32, 1);
  v588 = vmlaq_f32(vmulq_f32(vsubq_f32(v811, v786), vbslq_s8(v574, v587, v586)), vbslq_s8(v574, v585, v584), vsubq_f32(v802, v791));
  v589 = vbslq_s8(v578, v583, v582);
  v590 = vmlaq_f32(vmulq_f32(vsubq_f32(v805, v777), vbslq_s8(v576, v587, v586)), vbslq_s8(v576, v585, v584), vsubq_f32(v787, v793));
  v591 = vbslq_s8(v577, v583, v582);
  v592 = vbslq_s8(v576, v583, v582);
  v593 = vbslq_s8(v574, v583, v582);
  v594 = vbslq_s8(v577, v587, v586);
  v779 = v581;
  v769 = v591;
  v771 = v593;
  v595 = vdupq_laneq_s32(v564, 2);
  v596 = vdupq_laneq_s32(v565, 2);
  v597 = vmlaq_f32(vmlaq_f32(vmulq_f32(vsubq_f32(v806, v581), vbslq_s8(v578, v587, v586)), vbslq_s8(v578, v585, v584), vsubq_f32(v798, v788)), vbslq_s8(v578, v596, v595), vsubq_f32(v813, v589));
  v598 = vdupq_laneq_s32(v557, 3);
  v599 = vdupq_laneq_s32(v558, 3);
  v600 = vmlaq_f32(vmlaq_f32(vmulq_f32(vsubq_f32(v808, v784), v594), vbslq_s8(v577, v585, v584), vsubq_f32(v801, v789)), vbslq_s8(v577, v596, v595), vsubq_f32(v814, v591));
  v601 = vbslq_s8(v574, v599, v598);
  v602 = vmlaq_f32(v590, vbslq_s8(v576, v596, v595), vsubq_f32(v803, v592));
  v603 = vbslq_s8(v576, v599, v598);
  v762 = vbslq_s8(v578, v599, v598);
  v763 = vbslq_s8(v577, v599, v598);
  v604 = vsubq_f32(v815, v762);
  v605 = vbslq_s8(v574, v596, v595);
  v606 = vsubq_f32(v810, v763);
  v607 = vmlaq_f32(v588, v605, vsubq_f32(v804, v593));
  v764 = v603;
  v765 = v601;
  v608 = vsubq_f32(v812, v603);
  v609 = vsubq_f32(v809, v601);
  v610 = vdupq_laneq_s32(v564, 3);
  v611 = vdupq_laneq_s32(v565, 3);
  v612 = vbslq_s8(v578, v611, v610);
  v613 = vbslq_s8(v577, v611, v610);
  v614 = vbslq_s8(v576, v611, v610);
  v615 = vbslq_s8(v574, v611, v610);
  v616 = 0;
  v617 = 0;
  if (fabsf(v567) >= 0.00024414)
  {
    *v617.i32 = vrecpes_f32(v567);
  }

  v618 = vmlaq_f32(v607, v615, v609);
  v619 = vmlaq_f32(v602, v614, v608);
  v620 = vmlaq_f32(v600, v613, v606);
  v621 = vmlaq_f32(v597, v612, v604);
  if (fabsf(v569) >= 0.00024414)
  {
    *v616.i32 = vrecpes_f32(v569);
  }

  v622 = vdupq_lane_s32(v617, 0);
  v623 = vdupq_lane_s32(v616, 0);
  v624 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v781, *v809.f32)), 0x1FuLL)), v623, v622);
  v625 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v781, *v809.f32)), 0x1FuLL)), v623, v622);
  v626 = v575;
  v627 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v626, v626)), 0x1FuLL)), v623, v622);
  v628 = vmulq_f32(v618, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v626, v626)), 0x1FuLL)), v623, v622));
  v629 = vmulq_f32(v619, v627);
  v630 = vmulq_f32(v620, v625);
  v631 = vmulq_f32(v621, v624);
  if (a1[8].i8[6] < 1)
  {
    v634 = v766;
    v635 = v767;
    v640 = v795;
    v638 = v797;
    v639 = v800;
  }

  else
  {
    v632 = 0;
    v633 = 0;
    if (fabsf(v560.f32[3]) >= 0.0039062)
    {
      *v633.i32 = vrecpes_f32(v560.f32[3]);
    }

    v634 = v766;
    v635 = v767;
    if (fabsf(v559.f32[3]) >= 0.0039062)
    {
      *v632.i32 = vrecpes_f32(v559.f32[3]);
    }

    v636 = vdupq_lane_s32(v633, 0);
    v637 = vdupq_lane_s32(v632, 0);
    v638 = v797;
    v639 = v800;
    v628 = vbslq_s8(vcltzq_s32(a1[46]), vmulq_f32(v609, vorrq_s8(vandq_s8(v637, v772), vandq_s8(v800, v636))), v628);
    v629 = vbslq_s8(vcltzq_s32(a1[45]), vmulq_f32(v608, vorrq_s8(vandq_s8(v637, v773), vandq_s8(v795, v636))), v629);
    v631 = vbslq_s8(vcltzq_s32(a1[47]), vmulq_f32(v604, vorrq_s8(vandq_s8(v637, v774), vandq_s8(v797, v636))), v631);
    v630 = vbslq_s8(vcltzq_s32(a1[48]), vmulq_f32(v606, vorrq_s8(vandq_s8(v637, v767), vandq_s8(v766, v636))), v630);
    v640 = v795;
  }

  v641 = vdupq_lane_s32(*v560.f32, 0);
  v642 = vdupq_lane_s32(*v559.f32, 0);
  v643 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v781, *v638.i8)), 0x1FuLL));
  v644 = vbslq_s8(v643, v642, v641);
  v645 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v781, *v638.i8)), 0x1FuLL));
  v646 = vbslq_s8(v645, v642, v641);
  v647 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v575, *v638.i8)), 0x1FuLL));
  v648 = vbslq_s8(v647, v642, v641);
  v649 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v575, *v638.i8)), 0x1FuLL));
  v650 = vbslq_s8(v649, v642, v641);
  v651 = vdupq_lane_s32(*v560.f32, 1);
  v652 = vdupq_lane_s32(*v559.f32, 1);
  v653 = vbslq_s8(v643, v652, v651);
  v654 = vbslq_s8(v645, v652, v651);
  v655 = vbslq_s8(v647, v652, v651);
  v656 = vdupq_laneq_s32(v560, 2);
  v657 = vdupq_laneq_s32(v559, 2);
  v658 = vbslq_s8(v649, v652, v651);
  v659 = vbslq_s8(v643, v657, v656);
  v660 = vbslq_s8(v645, v657, v656);
  v661 = vbslq_s8(v647, v657, v656);
  v662 = vbslq_s8(v649, v657, v656);
  v663 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vminnmq_f32(v630, v782), 0), 0), v782), v522);
  v664 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vminnmq_f32(v629, v782), 0), 0), v782), v522);
  v665 = vdupq_laneq_s32(v560, 3);
  v666 = vandq_s8(v640, v665);
  v667 = vandq_s8(v639, v665);
  v668 = vandq_s8(v638, v665);
  v669 = vandq_s8(v634, v665);
  v670 = vdupq_laneq_s32(v559, 3);
  v671 = vandq_s8(v773, v670);
  v672 = vandq_s8(v772, v670);
  v673 = vandq_s8(v774, v670);
  v674 = vandq_s8(v635, v670);
  v675 = vrndxq_f32(v664);
  v676 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vminnmq_f32(v628, v782), 0), 0), v782), v522));
  v677 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vminnmq_f32(v631, v782), 0), 0), v782), v522));
  v678 = vrndxq_f32(v663);
  v679 = vorrq_s8(v674, v669);
  *v674.i32 = ReciprocalTable[v522];
  v680 = vorrq_s8(v673, v668);
  v681 = vmulq_n_f32(v678, *v674.i32);
  v682 = vorrq_s8(v672, v667);
  v683 = vmulq_n_f32(v677, *v674.i32);
  v684 = vorrq_s8(v671, v666);
  v685 = vmulq_n_f32(v676, *v674.i32);
  v686 = vmulq_n_f32(v675, *v674.i32);
  if (v69)
  {
    v782 = vmulq_f32(*v69->f32, v747);
  }

  v687 = vmlaq_f32(v793, v686, v650);
  v688 = vmlaq_f32(v777, v686, v658);
  v689 = vmlaq_f32(v592, v686, v662);
  v690 = vmlaq_f32(v764, v686, v684);
  v691 = vmlaq_f32(v791, v685, v648);
  v692 = vmlaq_f32(v786, v685, v655);
  v693 = v692;
  v694 = vmlaq_f32(v771, v685, v661);
  v695 = vmlaq_f32(v765, v685, v682);
  v696 = vmlaq_f32(v788, v683, v646);
  v697 = vmlaq_f32(v779, v683, v654);
  v698 = vmlaq_f32(v589, v683, v660);
  v699 = vmlaq_f32(v762, v683, v680);
  v700 = vmlaq_f32(v789, v681, v644);
  v701 = vmlaq_f32(v784, v681, v653);
  v702 = vmlaq_f32(v769, v681, v659);
  v703 = vmlaq_f32(v763, v681, v679);
  v704 = *a3;
  do
  {
    v705 = a1;
    a1 = a1[2].i64[1];
  }

  while (a1);
  if (v705[8].i16[2] == 324)
  {
    v692.i32[0] = 0;
    v706 = vsubq_f32(v689, v803);
    v707 = vsubq_f32(v698, v813);
    v646.i32[0] = v9;
    v708 = vdupq_lane_s8(*&vceqq_s8(v646, v692), 0);
    v709 = vbslq_s8(v708, v706, vmulq_f32(v812, v706));
    v710 = vbslq_s8(v708, v707, vmulq_f32(v815, v707));
    v711 = vsubq_f32(v702, v814);
    v712 = vbslq_s8(v708, v711, vmulq_f32(v810, v711));
    v713 = vsubq_f32(v694, v804);
    v714 = vbslq_s8(v708, v713, vmulq_f32(v809, v713));
    v715 = vsubq_f32(v688, v805);
    v716 = vbslq_s8(v708, v715, vmulq_f32(v812, v715));
    v717 = vsubq_f32(v697, v806);
    v718 = vbslq_s8(v708, v717, vmulq_f32(v815, v717));
    v719 = vsubq_f32(v701, v808);
    v720 = vbslq_s8(v708, v719, vmulq_f32(v810, v719));
    v721 = vsubq_f32(v693, v811);
    v722 = vbslq_s8(v708, v721, vmulq_f32(v809, v721));
    v723 = vsubq_f32(v691, v802);
    v724 = vbslq_s8(v708, v723, vmulq_f32(v809, v723));
    v725 = vsubq_f32(v700, v801);
    v726 = vbslq_s8(v708, v725, vmulq_f32(v810, v725));
    v727 = vsubq_f32(v696, v798);
    v728 = vbslq_s8(v708, v727, vmulq_f32(v815, v727));
    v729 = vsubq_f32(v687, v787);
    v730 = vbslq_s8(v708, v729, vmulq_f32(v812, v729));
    v731 = vsubq_f32(v695, v809);
    v732 = vsubq_f32(v703, v810);
    v733 = vsubq_f32(v699, v815);
    v734 = vsubq_f32(v690, v812);
    v735 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v716, v716), *v782.f32, 1), vmulq_f32(v730, v730), v782.f32[0]), vmulq_f32(v709, v709), v782, 2), vmulq_f32(v734, v734), v782, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v718, v718), *v782.f32, 1), vmulq_f32(v728, v728), v782.f32[0]), vmulq_f32(v710, v710), v782, 2), vmulq_f32(v733, v733), v782, 3)), vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v722, v722), *v782.f32, 1), vmulq_f32(v724, v724), v782.f32[0]), vmulq_f32(v714, v714), v782, 2), vmulq_f32(v731, v731), v782, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v720, v720), *v782.f32, 1), vmulq_f32(v726, v726), v782.f32[0]), vmulq_f32(v712, v712), v782, 2), vmulq_f32(v732, v732), v782, 3)));
    v735.i64[0] = vpaddq_f32(v735, v735).u64[0];
    LODWORD(v736) = vpadd_f32(*v735.f32, *v735.f32).u32[0];
  }

  else
  {
    v736 = INFINITY;
  }

  if (v736 < a4)
  {
    *&v737 = v759;
    *(&v737 + 1) = v757;
    *a2 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v675), vcvtq_s32_f32(v676)), vuzp1q_s16(vcvtq_s32_f32(v677), vcvtq_s32_f32(v678)));
    *(a2 + 16) = v737;
    *(a2 + 32) = v704;
  }

  return v736;
}