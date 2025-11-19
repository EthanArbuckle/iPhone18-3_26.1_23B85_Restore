unsigned __int16 *sub_298C06FDC(unsigned __int16 *result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int8x16_t a7, double a8, int8x16_t a9, double a10, int8x16_t a11)
{
  v13 = result[10];
  v14 = *(result + 25);
  v15 = *(result + 23);
  v16 = v15 | (v14 << 16);
  v17 = (v15 >> 11) & (16 * v14) & 0xFFFFFFF0 | v13 & 0xF;
  v18 = dword_298D1B47C[v17];
  if (v18 > 3)
  {
    if (v18 == 5)
    {
      if ((v13 & 0x4030) == 0x30)
      {
LABEL_4:
        v19 = result;
        v20 = a2;
        v85 = sub_298C05BD8(v18);
        v21 = v19;
        v22 = v19[7];
        v87 = (v19 + 8);
        v88 = v22;
LABEL_42:
        result = (*(*a3 + 16))(a3, v20, &v85);
        goto LABEL_43;
      }

      goto LABEL_7;
    }

    if (v18 <= 0xE)
    {
      if (((1 << v18) & 0x3980) != 0)
      {
        if ((v13 & 0xC030) == 0x4030)
        {
          if (v18 == 8)
          {
            v85 = 12;
            v23 = *(result + 7);
            if (!v23)
            {
              v21 = result;
              v32 = 0;
              goto LABEL_28;
            }

            v24 = (result + 16);
            if (v23 < 8)
            {
              v25 = 0;
              v31 = 0;
            }

            else
            {
              v25 = v23 & 0xFFFFFFF8;
              v26 = v25 - 24;
              if (v25 <= 0x18 && ((1 << v25) & 0x1010100) != 0)
              {
                v27 = vmovl_u16(*v24);
                v28.i64[0] = v27.u32[0];
                v28.i64[1] = v27.u32[1];
                v29 = v28;
                v28.i64[0] = v27.u32[2];
                v28.i64[1] = v27.u32[3];
                a7 = vshlq_u64(v28, xmmword_298D1B3A0);
                a9 = vshlq_u64(v29, xmmword_298D1ABD0);
              }

              else
              {
                v66 = (result + 40);
                v67 = xmmword_298D1B3D0;
                v68 = xmmword_298D1B3E0;
                v69 = xmmword_298D1B3F0;
                v70 = xmmword_298D1B400;
                v71 = vdupq_n_s64(0xFFFFFFF0uLL);
                v72 = vdupq_n_s64(8uLL);
                do
                {
                  v73 = *v66++;
                  v74 = vmovl_high_u16(v73);
                  v75.i64[0] = v74.u32[0];
                  v75.i64[1] = v74.u32[1];
                  v76 = v75;
                  v77 = vmovl_u16(*v73.i8);
                  v75.i64[0] = v77.u32[2];
                  v75.i64[1] = v77.u32[3];
                  v78 = v75;
                  v75.i64[0] = v74.u32[2];
                  v75.i64[1] = v74.u32[3];
                  v79 = v75;
                  v75.i64[0] = v77.u32[0];
                  v75.i64[1] = v77.u32[1];
                  a11 = vorrq_s8(vshlq_u64(v76, vandq_s8(vshlq_n_s64(v68, 4uLL), v71)), a11);
                  a7 = vorrq_s8(vshlq_u64(v78, vandq_s8(vshlq_n_s64(v69, 4uLL), v71)), a7);
                  v11 = vorrq_s8(vshlq_u64(v79, vandq_s8(vshlq_n_s64(v67, 4uLL), v71)), v11);
                  a9 = vorrq_s8(vshlq_u64(v75, vandq_s8(vshlq_n_s64(v70, 4uLL), v71)), a9);
                  v68 = vaddq_s64(v68, v72);
                  v69 = vaddq_s64(v69, v72);
                  v70 = vaddq_s64(v70, v72);
                  v67 = vaddq_s64(v67, v72);
                  v26 -= 8;
                }

                while (v26);
              }

              v30 = vorrq_s8(vorrq_s8(a9, a11), vorrq_s8(a7, v11));
              v31 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
              if (v25 == v23)
              {
LABEL_27:
                v21 = result;
                v32 = *&v31 << 16;
LABEL_28:
                v86 = v32 | (4 * v13) & 0x8000 | v16 & 0x7FFFu;
LABEL_29:
                result = (*(*a3 + 16))(a3, a2, &v85);
LABEL_43:
                if (*(v21 + 22) == 1)
                {
                  *(v21 + 22) = 0;
                }

                if (*(v21 + 25) == 1)
                {
                  *(v21 + 25) = 0;
                }

                v21[7] = 0;
                return result;
              }
            }

            *&v31 |= v24->u16[v25];
            if ((v25 | 1) != v23)
            {
              *&v31 |= v24->u16[v25 | 1] << ((16 * (v25 | 1)) & 0x90);
              if ((v25 | 2) != v23)
              {
                *&v31 |= v24->u16[v25 | 2] << ((16 * (v25 | 2)) & 0xA0);
                if ((v25 | 3) != v23)
                {
                  if ((v25 | 4) == v23)
                  {
                    *&v31 |= v24->u16[v25 | 3] << ((16 * (v25 | 3)) & 0xB0);
                  }

                  else if ((v25 | 5) != v23)
                  {
                    v62 = v23 - v25 - 5;
                    v63 = 16 * v25 + 80;
                    v64 = &result[v25 + 21];
                    do
                    {
                      v65 = *v64++;
                      *&v31 |= v65 << (v63 & 0xF0);
                      v63 += 16;
                      --v62;
                    }

                    while (v62);
                  }
                }
              }
            }

            goto LABEL_27;
          }

          v47 = a2;
          v21 = result;
          if (v18 <= 10)
          {
            if (v18 != 7)
            {
              goto LABEL_4;
            }

            v85 = 11;
            v81 = *(result + 38);
            if ((v81 + 1) <= 9u)
            {
              v82 = v81 + 1;
            }

            else
            {
              v82 = 0;
            }

            *(result + 38) = v82;
            LOBYTE(v86) = v81;
            v87 = sub_298C078E0(result, v13);
LABEL_73:
            result = (*(*a3 + 16))(a3, v47, &v85);
            goto LABEL_43;
          }

          switch(v18)
          {
            case 12:
              v83 = 16;
              break;
            case 11:
              v83 = 15;
              break;
            case 13:
              v85 = 18;
              goto LABEL_104;
            default:
              goto LABEL_4;
          }

          v85 = v83;
LABEL_104:
          v86 = sub_298C078E0(result, v13);
          goto LABEL_73;
        }

LABEL_7:
        if (*(result + 22) == 1)
        {
          *(result + 22) = 0;
        }

        if ((v16 & 0x10000) != 0)
        {
          *(result + 25) = 0;
        }

        *(result + 7) = 0;
        *(result + 10) = 0;
        *(result + 38) = 0;
        v85 = 17;
        (*(*a3 + 16))(a3);
        return (*(*a3 + 40))(a3);
      }

      if (v18 == 6)
      {
LABEL_31:
        if ((v13 & 0x4030) == 0x20)
        {
          goto LABEL_4;
        }

        goto LABEL_7;
      }

      if (v18 == 14)
      {
        goto LABEL_7;
      }
    }

    if (v18 != 4)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  if (v18 <= 2)
  {
    if (v18)
    {
      v21 = result;
      if (v18 == 1)
      {
        if ((v13 & 0x4020) == 0x20)
        {
          v85 = 2;
          LOWORD(v86) = (v13 >> 7) & 0x3F;
          v61 = *(result + 7);
          v87 = (result + 16);
          v88 = v61;
          goto LABEL_29;
        }
      }

      else if (v18 != 2 || (v13 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    v41 = v13 & 0xF;
    if (v17 < 0xA || v17 == 16)
    {
      v43 = v17;
    }

    else
    {
      v43 = v17 - 16;
    }

    v44 = *(result + 7);
    if (v44)
    {
      v85 = 0;
      LOBYTE(v86) = v43 == 0;
      v45 = result + 16;
      v87 = (result + 16);
      v88 = v44;
      v46 = result;
      v47 = a2;
      (*(*a3 + 16))(a3, a2, &v85);
      v48 = v46[7];
      v46[10] = v48;
      v21 = v46;
      result = memcpy(v46 + 11, v45, 2 * v48);
      if (v43)
      {
LABEL_57:
        v85 = 1;
        LOBYTE(v86) = v43;
        v49 = *(v21 + 25);
        v50 = *(v21 + 23);
        v51 = v50 | (v49 << 16);
        v52 = (v50 >> 11) & (16 * v49) | v41;
        v53 = (v52 - 16);
        if (v52 == 16)
        {
          v53 = 16;
        }

        if (v52 >= 0xA)
        {
          v52 = v53;
        }

        if (v52)
        {
          v54 = 0xFFFFFFFF >> -v52;
        }

        else
        {
          v54 = 0;
        }

        WORD1(v86) = v54 & (((v51 >> 1) >> 7) & (v51 << 8) & 0xFF00 | (v13 >> 6));
        result = (*(*a3 + 16))(a3, v47, &v85);
      }
    }

    else
    {
      v47 = a2;
      v21 = result;
      if (v43)
      {
        v80 = *(result + 10);
        if (v80)
        {
          v85 = 0;
          LOBYTE(v86) = 0;
          v87 = (result + 22);
          v88 = v80;
          (*(*a3 + 16))(a3, a2, &v85);
        }

        goto LABEL_57;
      }
    }

    v55 = *(v47 + 16);
    if (v55 == 1)
    {
      v85 = 9;
      LODWORD(v86) = sub_298C078A8(v13, *(v21 + 23) | (*(v21 + 25) << 16));
      result = (*(*a3 + 16))(a3, v47, &v85);
      v55 = *(v47 + 16);
    }

    if (v55 != 2)
    {
      goto LABEL_43;
    }

    v56 = *(v21 + 25);
    v57 = *(v21 + 23);
    v58 = v57 | (v56 << 16);
    v59 = (v57 >> 11) & (16 * v56) | v41;
    v60 = v59 - 16;
    if (v59 == 16)
    {
      v60 = 16;
    }

    if (v59 >= 0xA)
    {
      LOBYTE(v59) = v60;
    }

    v85 = 10;
    LODWORD(v86) = ((v58 << 8) & (v58 << 15 >> 31) & 0x3FFF00 | (v13 >> 6)) >> v59;
    goto LABEL_73;
  }

  if ((v13 & 0x4030) != 0x10)
  {
    goto LABEL_7;
  }

  v20 = a2;
  *(result + 38) = 0;
  v85 = 5;
  v33 = result[16];
  v34 = (v33 >> 7) & 3;
  if (v34 != 3)
  {
    v35 = (v33 >> 9) & 3;
    if (v35 != 3)
    {
      v36 = v33 & 0x7F;
      v21 = result;
      v37 = (v33 >> 11) & 1;
      v38 = sub_298C36B04(*(result + 4), v33 & 0x7F);
      if ((v38 & 0x100000000) != 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39 == 11 || v39 == 6;
      LOBYTE(v86) = v36;
      BYTE1(v86) = v34;
      BYTE2(v86) = v35;
      BYTE3(v86) = v37;
      HIDWORD(v86) = v39;
      LOBYTE(v87) = (v38 & 0x100000000) == 0;
      BYTE1(v87) = v39 == 11;
      BYTE2(v87) = v39 == 6;
      BYTE3(v87) = (v39 < 0x14) & (0xBBF80u >> v39);
      BYTE4(v87) = v39 - 5 < 2;
      BYTE5(v87) = v40 | v37;
      goto LABEL_42;
    }
  }

  if (*(result + 22) == 1)
  {
    *(result + 22) = 0;
  }

  if ((v16 & 0x10000) != 0)
  {
    *(result + 25) = 0;
  }

  *(result + 7) = 0;
  *(result + 10) = 0;
  *(result + 38) = 0;
  v84[0] = 17;
  return (*(*a3 + 16))(a3, a2, v84);
}

uint64_t sub_298C078A8(unsigned int a1, unsigned int a2)
{
  v2 = a1 & 0xF;
  v3 = (a2 >> 11) & 0x10;
  if ((*&a2 & 0x10000) == 0)
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFF0 | a1 & 0xF;
  v5 = (a2 & 0x3FFF) << 8;
  if ((*&a2 & 0x10000) == 0)
  {
    v5 = 0;
  }

  if (v4 == 16 || v4 < 0xA)
  {
    v2 = v4;
  }

  return (v5 & 0xFFFFFF00 | (a1 >> 6)) >> v2;
}

uint64_t sub_298C078E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = (a1 + 32);
    v6 = 16 * v2;
    do
    {
      v7 = *v5++;
      v4 |= v7 << (v3 & 0xF0);
      v3 += 16;
    }

    while (v6 != v3);
    v8 = v4 << 16;
  }

  else
  {
    v8 = 0;
  }

  return v8 | (4 * a2) & 0x8000 | *(a1 + 23) & 0x7FFF;
}

uint64_t sub_298C07938(uint64_t result)
{
  if (*(result + 22) == 1)
  {
    *(result + 22) = 0;
    if (*(result + 25) != 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(result + 25) != 1)
  {
LABEL_3:
    *(result + 28) = 0;
    *(result + 40) = 0;
    *(result + 38) = 0;
    return result;
  }

  *(result + 25) = 0;
  *(result + 28) = 0;
  *(result + 40) = 0;
  *(result + 38) = 0;
  return result;
}

uint64_t sub_298C0799C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 16) - 1) > 2)
  {
    return result;
  }

  v4 = result;
  v5 = *(a2 + 32);
  v6 = *(a2 + 20);
  if (v6 >= v5)
  {
    if (*(result + 22) == 1)
    {
      *(result + 22) = 0;
    }

    if (*(result + 25) == 1)
    {
      *(result + 25) = 0;
    }

    *(result + 28) = 0;
    *(result + 40) = 0;
    *(result + 38) = 0;
    return result;
  }

  if (*(result + 22) == 1 && (v8 = *(result + 20), v9 = *(result + 25), v6 = ((v8 >> 14) & 1) + ((v8 >> 4) & 3) - (*(result + 28) + v9), (v8 & 0x4000) != 0) && (v9 & 1) == 0)
  {
    v24 = **(a2 + 24);
    LODWORD(v10) = 1;
    *(result + 25) = 1;
    *(result + 23) = v24;
    if ((v8 & 0x30) == 0)
    {
      result = sub_298C07DA0(result, a2, a3);
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 >= v6)
  {
    v12 = *(*(a2 + 24) + 2 * v10);
    if ((v12 & 0x4000) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = v10;
    do
    {
      if (*(v4 + 22))
      {
        v11 = *(v4 + 28);
        *(v4 + 32 + 2 * v11) = *(*(a2 + 24) + 2 * v10);
        *(v4 + 28) = v11 + 1;
        if (v11 + 1 >= ((*(v4 + 20) >> 4) & 3u))
        {
          result = sub_298C07DA0(v4, a2, a3);
        }
      }

      else
      {
        result = (*(*a3 + 32))(a3);
      }

      ++v10;
    }

    while (v6 != v10);
    LODWORD(v10) = v6;
    v12 = *(*(a2 + 24) + 2 * v6);
    if ((v12 & 0x4000) != 0)
    {
LABEL_25:
      if (*(v4 + 22))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  v13 = dword_298D1B47C[v12 & 0xF];
  if (v13 != 5)
  {
    if (v13 == 3)
    {
      v12 = v12 & 0xBFCF | 0x10;
    }

    goto LABEL_25;
  }

  v12 |= 0x30u;
  if ((*(v4 + 22) & 1) == 0)
  {
LABEL_26:
    *(v4 + 22) = 1;
  }

LABEL_27:
  v14 = v10 + 1;
  *(v4 + 20) = v12;
  if ((v12 & 0x4030) != 0)
  {
    v15 = (v12 >> 4) & 3;
    if (v14 >= v5)
    {
      goto LABEL_37;
    }
  }

  else
  {
    result = sub_298C07DA0(v4, a2, a3);
    v15 = 0;
    if (v14 >= v5)
    {
      goto LABEL_37;
    }
  }

  if (*(v4 + 22) == 1)
  {
    v16 = *(v4 + 20);
    if ((v16 & 0x4000) != 0 && (*(v4 + 25) & 1) == 0)
    {
      v17 = *(*(a2 + 24) + 2 * v14);
      *(v4 + 25) = 1;
      *(v4 + 23) = v17;
      if ((v16 & 0x30) == 0)
      {
        result = sub_298C07DA0(v4, a2, a3);
      }

      v14 = v10 + 2;
    }
  }

LABEL_37:
  if (v14 < v5)
  {
    while (1)
    {
      v18 = v14 + 1;
      if (v15)
      {
        if (*(v4 + 22))
        {
          v19 = *(v4 + 28);
          *(v4 + 32 + 2 * v19) = *(*(a2 + 24) + 2 * v14);
          *(v4 + 28) = v19 + 1;
          if (v19 + 1 >= ((*(v4 + 20) >> 4) & 3u))
          {
            result = sub_298C07DA0(v4, a2, a3);
          }
        }

        else
        {
          result = (*(*a3 + 32))(a3);
        }

        --v15;
        goto LABEL_41;
      }

      v20 = *(*(a2 + 24) + 2 * v14);
      if ((v20 & 0x4000) != 0)
      {
        goto LABEL_50;
      }

      v21 = dword_298D1B47C[v20 & 0xF];
      if (v21 != 5)
      {
        break;
      }

      v20 |= 0x30u;
      if ((*(v4 + 22) & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_52:
      *(v4 + 20) = v20;
      if ((v20 & 0x4030) != 0)
      {
        v15 = (v20 >> 4) & 3;
        if (v18 < v5)
        {
          goto LABEL_56;
        }
      }

      else
      {
        result = sub_298C07DA0(v4, a2, a3);
        v15 = 0;
        if (v18 < v5)
        {
LABEL_56:
          if (*(v4 + 22) == 1)
          {
            v22 = *(v4 + 20);
            if ((v22 & 0x4000) != 0 && (*(v4 + 25) & 1) == 0)
            {
              v23 = *(*(a2 + 24) + 2 * v18);
              *(v4 + 25) = 1;
              *(v4 + 23) = v23;
              if ((v22 & 0x30) == 0)
              {
                result = sub_298C07DA0(v4, a2, a3);
              }

              v18 = v14 + 2;
            }
          }
        }
      }

LABEL_41:
      v14 = v18;
      if (v18 >= v5)
      {
        return result;
      }
    }

    if (v21 == 3)
    {
      v20 = v20 & 0xBFCF | 0x10;
    }

LABEL_50:
    if (*(v4 + 22))
    {
      goto LABEL_52;
    }

LABEL_51:
    *(v4 + 22) = 1;
    goto LABEL_52;
  }

  return result;
}

uint64_t sub_298C07DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 20);
  v6 = *(a1 + 25);
  v7 = *(a1 + 23);
  v8 = v7 | (v6 << 16);
  v9 = (v7 >> 11) & (16 * v6) & 0xFFFFFFF0 | v5 & 0xF;
  result = dword_298D1B47C[v9];
  if (result > 3)
  {
    if (result <= 0xE)
    {
      if (((1 << result) & 0x3980) != 0)
      {
        if ((v5 & 0xC030) == 0x4030)
        {
          if (result > 10)
          {
            switch(result)
            {
              case 0xB:
                v177 = 15;
                v93 = *(a1 + 28);
                if (v93)
                {
                  if (v93 < 8)
                  {
                    v99 = 0;
                    v33 = 0;
                  }

                  else
                  {
                    v94 = (a1 + 32);
                    v95 = xmmword_298D1B410;
                    v96 = xmmword_298D1B420;
                    v97 = xmmword_298D1A110;
                    v98 = xmmword_298D1A120;
                    v99 = v93 & 0xFFFFFFF8;
                    v100 = 0uLL;
                    v101 = vdupq_n_s64(0xFFFFFFF0uLL);
                    v102 = vdupq_n_s64(8uLL);
                    v103 = v99;
                    v104 = 0uLL;
                    v105 = 0uLL;
                    v106 = 0uLL;
                    do
                    {
                      v107 = *v94++;
                      v108 = vmovl_high_u16(v107);
                      v109.i64[0] = v108.u32[0];
                      v109.i64[1] = v108.u32[1];
                      v110 = v109;
                      v111 = vmovl_u16(*v107.i8);
                      v109.i64[0] = v111.u32[2];
                      v109.i64[1] = v111.u32[3];
                      v112 = v109;
                      v109.i64[0] = v108.u32[2];
                      v109.i64[1] = v108.u32[3];
                      v113 = v109;
                      v109.i64[0] = v111.u32[0];
                      v109.i64[1] = v111.u32[1];
                      v105 = vorrq_s8(vshlq_u64(v110, vandq_s8(vshlq_n_s64(v96, 4uLL), v101)), v105);
                      v104 = vorrq_s8(vshlq_u64(v112, vandq_s8(vshlq_n_s64(v97, 4uLL), v101)), v104);
                      v106 = vorrq_s8(vshlq_u64(v113, vandq_s8(vshlq_n_s64(v95, 4uLL), v101)), v106);
                      v100 = vorrq_s8(vshlq_u64(v109, vandq_s8(vshlq_n_s64(v98, 4uLL), v101)), v100);
                      v96 = vaddq_s64(v96, v102);
                      v97 = vaddq_s64(v97, v102);
                      v98 = vaddq_s64(v98, v102);
                      v95 = vaddq_s64(v95, v102);
                      v103 -= 8;
                    }

                    while (v103);
                    v114 = vorrq_s8(vorrq_s8(v100, v105), vorrq_s8(v104, v106));
                    v33 = vorr_s8(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
                    if (v99 == v93)
                    {
                      goto LABEL_116;
                    }
                  }

                  v115 = v93 - v99;
                  v116 = 16 * v99;
                  v117 = (a1 + 2 * v99 + 32);
                  do
                  {
                    v118 = *v117++;
                    *&v33 |= v118 << (v116 & 0xF0);
                    v116 += 16;
                    --v115;
                  }

                  while (v115);
                  goto LABEL_116;
                }

                goto LABEL_137;
              case 0xC:
                v177 = 16;
                v119 = *(a1 + 28);
                if (v119)
                {
                  if (v119 < 8)
                  {
                    v125 = 0;
                    v33 = 0;
                  }

                  else
                  {
                    v120 = (a1 + 32);
                    v121 = xmmword_298D1B410;
                    v122 = xmmword_298D1B420;
                    v123 = xmmword_298D1A110;
                    v124 = xmmword_298D1A120;
                    v125 = v119 & 0xFFFFFFF8;
                    v126 = 0uLL;
                    v127 = vdupq_n_s64(0xFFFFFFF0uLL);
                    v128 = vdupq_n_s64(8uLL);
                    v129 = v125;
                    v130 = 0uLL;
                    v131 = 0uLL;
                    v132 = 0uLL;
                    do
                    {
                      v133 = *v120++;
                      v134 = vmovl_high_u16(v133);
                      v135.i64[0] = v134.u32[0];
                      v135.i64[1] = v134.u32[1];
                      v136 = v135;
                      v137 = vmovl_u16(*v133.i8);
                      v135.i64[0] = v137.u32[2];
                      v135.i64[1] = v137.u32[3];
                      v138 = v135;
                      v135.i64[0] = v134.u32[2];
                      v135.i64[1] = v134.u32[3];
                      v139 = v135;
                      v135.i64[0] = v137.u32[0];
                      v135.i64[1] = v137.u32[1];
                      v131 = vorrq_s8(vshlq_u64(v136, vandq_s8(vshlq_n_s64(v122, 4uLL), v127)), v131);
                      v130 = vorrq_s8(vshlq_u64(v138, vandq_s8(vshlq_n_s64(v123, 4uLL), v127)), v130);
                      v132 = vorrq_s8(vshlq_u64(v139, vandq_s8(vshlq_n_s64(v121, 4uLL), v127)), v132);
                      v126 = vorrq_s8(vshlq_u64(v135, vandq_s8(vshlq_n_s64(v124, 4uLL), v127)), v126);
                      v122 = vaddq_s64(v122, v128);
                      v123 = vaddq_s64(v123, v128);
                      v124 = vaddq_s64(v124, v128);
                      v121 = vaddq_s64(v121, v128);
                      v129 -= 8;
                    }

                    while (v129);
                    v140 = vorrq_s8(vorrq_s8(v126, v131), vorrq_s8(v130, v132));
                    v33 = vorr_s8(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
                    if (v125 == v119)
                    {
                      goto LABEL_116;
                    }
                  }

                  v141 = v119 - v125;
                  v142 = 16 * v125;
                  v143 = (a1 + 2 * v125 + 32);
                  do
                  {
                    v144 = *v143++;
                    *&v33 |= v144 << (v142 & 0xF0);
                    v142 += 16;
                    --v141;
                  }

                  while (v141);
                  goto LABEL_116;
                }

LABEL_137:
                v145 = 0;
                goto LABEL_117;
              case 0xD:
                v177 = 18;
                v11 = *(a1 + 28);
                if (v11)
                {
                  if (v11 < 8)
                  {
                    v17 = 0;
                    v33 = 0;
                  }

                  else
                  {
                    v12 = (a1 + 32);
                    v13 = xmmword_298D1B410;
                    v14 = xmmword_298D1B420;
                    v15 = xmmword_298D1A110;
                    v16 = xmmword_298D1A120;
                    v17 = v11 & 0xFFFFFFF8;
                    v18 = 0uLL;
                    v19 = vdupq_n_s64(0xFFFFFFF0uLL);
                    v20 = vdupq_n_s64(8uLL);
                    v21 = v17;
                    v22 = 0uLL;
                    v23 = 0uLL;
                    v24 = 0uLL;
                    do
                    {
                      v25 = *v12++;
                      v26 = vmovl_high_u16(v25);
                      v27.i64[0] = v26.u32[0];
                      v27.i64[1] = v26.u32[1];
                      v28 = v27;
                      v29 = vmovl_u16(*v25.i8);
                      v27.i64[0] = v29.u32[2];
                      v27.i64[1] = v29.u32[3];
                      v30 = v27;
                      v27.i64[0] = v26.u32[2];
                      v27.i64[1] = v26.u32[3];
                      v31 = v27;
                      v27.i64[0] = v29.u32[0];
                      v27.i64[1] = v29.u32[1];
                      v23 = vorrq_s8(vshlq_u64(v28, vandq_s8(vshlq_n_s64(v14, 4uLL), v19)), v23);
                      v22 = vorrq_s8(vshlq_u64(v30, vandq_s8(vshlq_n_s64(v15, 4uLL), v19)), v22);
                      v24 = vorrq_s8(vshlq_u64(v31, vandq_s8(vshlq_n_s64(v13, 4uLL), v19)), v24);
                      v18 = vorrq_s8(vshlq_u64(v27, vandq_s8(vshlq_n_s64(v16, 4uLL), v19)), v18);
                      v14 = vaddq_s64(v14, v20);
                      v15 = vaddq_s64(v15, v20);
                      v16 = vaddq_s64(v16, v20);
                      v13 = vaddq_s64(v13, v20);
                      v21 -= 8;
                    }

                    while (v21);
                    v32 = vorrq_s8(vorrq_s8(v18, v23), vorrq_s8(v22, v24));
                    v33 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
                    if (v17 == v11)
                    {
                      goto LABEL_116;
                    }
                  }

                  v34 = v11 - v17;
                  v35 = 16 * v17;
                  v36 = (a1 + 2 * v17 + 32);
                  do
                  {
                    v37 = *v36++;
                    *&v33 |= v37 << (v35 & 0xF0);
                    v35 += 16;
                    --v34;
                  }

                  while (v34);
LABEL_116:
                  v145 = *&v33 << 16;
LABEL_117:
                  *&v178 = v145 | (4 * v5) & 0x8000 | v8 & 0x7FFF;
                  goto LABEL_118;
                }

                goto LABEL_137;
            }

            goto LABEL_45;
          }

          if (result != 7)
          {
            if (result == 8)
            {
              v177 = 12;
              v50 = *(a1 + 28);
              if (v50)
              {
                if (v50 < 8)
                {
                  v56 = 0;
                  v33 = 0;
                }

                else
                {
                  v51 = (a1 + 32);
                  v52 = xmmword_298D1B410;
                  v53 = xmmword_298D1B420;
                  v54 = xmmword_298D1A110;
                  v55 = xmmword_298D1A120;
                  v56 = v50 & 0xFFFFFFF8;
                  v57 = 0uLL;
                  v58 = vdupq_n_s64(0xFFFFFFF0uLL);
                  v59 = vdupq_n_s64(8uLL);
                  v60 = v56;
                  v61 = 0uLL;
                  v62 = 0uLL;
                  v63 = 0uLL;
                  do
                  {
                    v64 = *v51++;
                    v65 = vmovl_high_u16(v64);
                    v66.i64[0] = v65.u32[0];
                    v66.i64[1] = v65.u32[1];
                    v67 = v66;
                    v68 = vmovl_u16(*v64.i8);
                    v66.i64[0] = v68.u32[2];
                    v66.i64[1] = v68.u32[3];
                    v69 = v66;
                    v66.i64[0] = v65.u32[2];
                    v66.i64[1] = v65.u32[3];
                    v70 = v66;
                    v66.i64[0] = v68.u32[0];
                    v66.i64[1] = v68.u32[1];
                    v62 = vorrq_s8(vshlq_u64(v67, vandq_s8(vshlq_n_s64(v53, 4uLL), v58)), v62);
                    v61 = vorrq_s8(vshlq_u64(v69, vandq_s8(vshlq_n_s64(v54, 4uLL), v58)), v61);
                    v63 = vorrq_s8(vshlq_u64(v70, vandq_s8(vshlq_n_s64(v52, 4uLL), v58)), v63);
                    v57 = vorrq_s8(vshlq_u64(v66, vandq_s8(vshlq_n_s64(v55, 4uLL), v58)), v57);
                    v53 = vaddq_s64(v53, v59);
                    v54 = vaddq_s64(v54, v59);
                    v55 = vaddq_s64(v55, v59);
                    v52 = vaddq_s64(v52, v59);
                    v60 -= 8;
                  }

                  while (v60);
                  v71 = vorrq_s8(vorrq_s8(v57, v62), vorrq_s8(v61, v63));
                  v33 = vorr_s8(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
                  if (v56 == v50)
                  {
                    goto LABEL_116;
                  }
                }

                v72 = v50 - v56;
                v73 = 16 * v56;
                v74 = (a1 + 2 * v56 + 32);
                do
                {
                  v75 = *v74++;
                  *&v33 |= v75 << (v73 & 0xF0);
                  v73 += 16;
                  --v72;
                }

                while (v72);
                goto LABEL_116;
              }

              goto LABEL_137;
            }

            goto LABEL_45;
          }

          v177 = 11;
          v146 = *(a1 + 38);
          if ((v146 + 1) <= 9u)
          {
            v147 = v146 + 1;
          }

          else
          {
            v147 = 0;
          }

          *(a1 + 38) = v147;
          LOBYTE(v178) = v146;
          v148 = *(a1 + 28);
          if (!v148)
          {
            v175 = 0;
            goto LABEL_131;
          }

          if (v148 < 8)
          {
            v154 = 0;
            v170 = 0;
          }

          else
          {
            v149 = (a1 + 32);
            v150 = xmmword_298D1B410;
            v151 = xmmword_298D1B420;
            v152 = xmmword_298D1A110;
            v153 = xmmword_298D1A120;
            v154 = v148 & 0xFFFFFFF8;
            v155 = 0uLL;
            v156 = vdupq_n_s64(0xFFFFFFF0uLL);
            v157 = vdupq_n_s64(8uLL);
            v158 = v154;
            v159 = 0uLL;
            v160 = 0uLL;
            v161 = 0uLL;
            do
            {
              v162 = *v149++;
              v163 = vmovl_high_u16(v162);
              v164.i64[0] = v163.u32[0];
              v164.i64[1] = v163.u32[1];
              v165 = v164;
              v166 = vmovl_u16(*v162.i8);
              v164.i64[0] = v166.u32[2];
              v164.i64[1] = v166.u32[3];
              v167 = v164;
              v164.i64[0] = v163.u32[2];
              v164.i64[1] = v163.u32[3];
              v168 = v164;
              v164.i64[0] = v166.u32[0];
              v164.i64[1] = v166.u32[1];
              v160 = vorrq_s8(vshlq_u64(v165, vandq_s8(vshlq_n_s64(v151, 4uLL), v156)), v160);
              v159 = vorrq_s8(vshlq_u64(v167, vandq_s8(vshlq_n_s64(v152, 4uLL), v156)), v159);
              v161 = vorrq_s8(vshlq_u64(v168, vandq_s8(vshlq_n_s64(v150, 4uLL), v156)), v161);
              v155 = vorrq_s8(vshlq_u64(v164, vandq_s8(vshlq_n_s64(v153, 4uLL), v156)), v155);
              v151 = vaddq_s64(v151, v157);
              v152 = vaddq_s64(v152, v157);
              v153 = vaddq_s64(v153, v157);
              v150 = vaddq_s64(v150, v157);
              v158 -= 8;
            }

            while (v158);
            v169 = vorrq_s8(vorrq_s8(v155, v160), vorrq_s8(v159, v161));
            v170 = vorr_s8(*v169.i8, *&vextq_s8(v169, v169, 8uLL));
            if (v154 == v148)
            {
              goto LABEL_130;
            }
          }

          v171 = v148 - v154;
          v172 = 16 * v154;
          v173 = (a1 + 2 * v154 + 32);
          do
          {
            v174 = *v173++;
            *&v170 |= v174 << (v172 & 0xF0);
            v172 += 16;
            --v171;
          }

          while (v171);
LABEL_130:
          v175 = *&v170 << 16;
LABEL_131:
          *(&v178 + 1) = v175 | (4 * v5) & 0x8000 | v8 & 0x7FFF;
          goto LABEL_118;
        }

        goto LABEL_50;
      }

      if (result == 6)
      {
LABEL_33:
        if ((v5 & 0x4030) == 0x20)
        {
          goto LABEL_45;
        }

LABEL_50:
        if (*(a1 + 22) == 1)
        {
          *(a1 + 22) = 0;
        }

        if ((v8 & 0x10000) != 0)
        {
          *(a1 + 25) = 0;
        }

        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        *(a1 + 38) = 0;
        v177 = 17;
        (*(*a3 + 16))(a3, a2, &v177);
        return (*(*a3 + 40))(a3);
      }

      if (result == 14)
      {
        goto LABEL_50;
      }
    }

    if (result != 4)
    {
      if (result == 5 && (v5 & 0x4030) != 0x30)
      {
        goto LABEL_50;
      }

LABEL_45:
      v42 = a2;
      v177 = sub_298C05BD8(result);
      v49 = *(a1 + 28);
      *(&v178 + 1) = a1 + 32;
      v179 = v49;
LABEL_46:
      result = (*(*a3 + 16))(a3, v42, &v177);
      if (*(a1 + 22) == 1)
      {
        goto LABEL_86;
      }

      goto LABEL_47;
    }

    goto LABEL_33;
  }

  if (result <= 1)
  {
    if (result)
    {
      if (result == 1)
      {
        if ((v5 & 0x4020) == 0x20)
        {
          v177 = 2;
          LOWORD(v178) = (v5 >> 7) & 0x3F;
          v38 = *(a1 + 28);
          *(&v178 + 1) = a1 + 32;
          v179 = v38;
          goto LABEL_118;
        }

        goto LABEL_50;
      }

      goto LABEL_45;
    }

    v43 = v5 & 0xF;
    if (v9 < 0xA || v9 == 16)
    {
      v45 = v9;
    }

    else
    {
      v45 = v9 - 16;
    }

    v46 = *(a1 + 28);
    v47 = a2;
    if (v46)
    {
      v177 = 0;
      LOBYTE(v178) = v45 == 0;
      *(&v178 + 1) = a1 + 32;
      v179 = v46;
      (*(*a3 + 16))(a3, a2, &v177);
      v48 = *(a1 + 28);
      *(a1 + 40) = v48;
      result = memcpy((a1 + 44), (a1 + 32), 2 * v48);
      a2 = v47;
      if (!v45)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (!v45)
      {
        goto LABEL_77;
      }

      v76 = *(a1 + 40);
      if (v76)
      {
        v177 = 0;
        LOBYTE(v178) = 0;
        *(&v178 + 1) = a1 + 44;
        v179 = v76;
        (*(*a3 + 16))(a3, a2, &v177);
      }
    }

    v177 = 1;
    LOBYTE(v178) = v45;
    v77 = *(a1 + 23);
    v78 = (*(a1 + 25) << 31 >> 31) & (v77 >> 11) & 0x10 | v43;
    if (v78 != 16 && v78 >= 0xA)
    {
      v78 = v5 & 0xF;
    }

    v80 = ((*(a1 + 25) << 15) >> 15) & (v77 << 8) & 0xFF00 | (v5 >> 6);
    v81 = 0xFFFFFFFF >> -v78;
    if (!v78)
    {
      LOWORD(v81) = 0;
    }

    WORD1(v178) = v81 & v80;
    result = (*(*a3 + 16))(a3, v47, &v177);
    a2 = v47;
LABEL_77:
    v82 = *(a2 + 16);
    if (v82 == 1)
    {
      v83 = *(a1 + 23);
      v84 = *(a1 + 25) << 31 >> 31;
      v85 = v84 & (v83 >> 11);
      v86 = v84 & (v83 << 8);
      v87 = v85 & 0x10 | v43;
      if (v87 != 16 && v87 >= 0xA)
      {
        LOBYTE(v87) = v5 & 0xF;
      }

      v177 = 9;
      LODWORD(v178) = (v86 & 0x3FFF00 | (v5 >> 6)) >> v87;
      result = (*(*a3 + 16))(a3, v47, &v177);
      a2 = v47;
      if (*(v47 + 16) != 2)
      {
LABEL_85:
        if (*(a1 + 22) == 1)
        {
          goto LABEL_86;
        }

        goto LABEL_47;
      }
    }

    else if (v82 != 2)
    {
      goto LABEL_85;
    }

    v89 = *(a1 + 23);
    v90 = *(a1 + 25) << 31 >> 31;
    v91 = v90 & (v89 >> 11) & 0x10 | v43;
    if (v91 != 16 && v91 >= 0xA)
    {
      LOBYTE(v91) = v5 & 0xF;
    }

    v177 = 10;
    LODWORD(v178) = (v90 & (v89 << 8) & 0x3FFF00 | (v5 >> 6)) >> v91;
LABEL_118:
    result = (*(*a3 + 16))(a3, a2, &v177);
    if (*(a1 + 22) == 1)
    {
LABEL_86:
      *(a1 + 22) = 0;
      if (*(a1 + 25) != 1)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_47:
    if (*(a1 + 25) != 1)
    {
LABEL_49:
      *(a1 + 28) = 0;
      return result;
    }

LABEL_48:
    *(a1 + 25) = 0;
    goto LABEL_49;
  }

  if (result == 2)
  {
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if ((v5 & 0x4030) != 0x10)
  {
    goto LABEL_50;
  }

  *(a1 + 38) = 0;
  v177 = 5;
  v39 = *(a1 + 32);
  v40 = (v39 >> 7) & 3;
  if (v40 != 3)
  {
    v41 = (v39 >> 9) & 3;
    if (v41 != 3)
    {
      v42 = a2;
      sub_298BFA458(v176, *(a1 + 16), v39 & 0x7F, v40, v41, (v39 & 0x800) != 0);
      *&v178 = *v176;
      *(&v178 + 6) = *&v176[6];
      goto LABEL_46;
    }
  }

  if (*(a1 + 22) == 1)
  {
    *(a1 + 22) = 0;
  }

  if ((v8 & 0x10000) != 0)
  {
    *(a1 + 25) = 0;
  }

  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  *(a1 + 38) = 0;
  *v176 = 17;
  return (*(*a3 + 16))(a3, a2, v176);
}

void sub_298C089BC(void *a1, unint64_t a2)
{
  v3 = sub_298C08B34(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] <= 1uLL)
    {
      v5 &= *&v4 - 1;
    }

    else if (v5 >= *&v4)
    {
      v5 %= *&v4;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_16;
    }

    v9 = v8[1];
    if (v6.u32[0] <= 1uLL)
    {
      v9 &= *&v4 - 1;
    }

    else if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v5)
    {
LABEL_16:
      if (!*v3)
      {
        goto LABEL_17;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] <= 1uLL)
      {
        v10 &= *&v4 - 1;
      }

      else if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }

      if (v10 != v5)
      {
LABEL_17:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] <= 1uLL)
      {
        v12 &= *&v4 - 1;
      }

      else if (v12 >= *&v4)
      {
        v12 %= *&v4;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void *sub_298C08B34(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v2 - 1) & v5;
  }

  else
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] <= 1uLL)
        {
          v10 &= *&v2 - 1;
        }

        else if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_298C08C24(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_298C08E00(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v3 = &a1[3 * a1[1]];
    v5 = v3[3];
    v6 = v3[4];
    v4 = (v3 + 3);
    if (v5 == a2 && v6 == a3)
    {
      goto LABEL_21;
    }
  }

  v8 = a1[3076];
  if (!*&v8)
  {
    return 0;
  }

  v10 = a3 ^ a2;
  v11 = vcnt_s8(v8);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] <= 1uLL)
  {
    v12 = (*&v8 - 1) & v10;
  }

  else
  {
    v12 = a3 ^ a2;
    if (v10 >= *&v8)
    {
      v12 = v10 % *&v8;
    }
  }

  v13 = *(a1[3075] + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!v14)
  {
    return 0;
  }

  if (v11.u32[0] >= 2uLL)
  {
    while (1)
    {
      v15 = v14[1];
      if (v15 == v10)
      {
        if (v14[2] == a2 && v14[3] == a3)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *&v8)
        {
          v15 %= *&v8;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v18 = 0;
      v14 = *v14;
      if (!v14)
      {
        return v18;
      }
    }
  }

  v19 = *&v8 - 1;
  while (1)
  {
    v20 = v14[1];
    if (v20 == v10)
    {
      break;
    }

    if ((v20 & v19) != v12)
    {
      return 0;
    }

LABEL_30:
    v18 = 0;
    v14 = *v14;
    if (!v14)
    {
      return v18;
    }
  }

  if (v14[2] != a2 || v14[3] != a3)
  {
    goto LABEL_30;
  }

LABEL_20:
  v17 = v14[4];
  a1[1] = v17;
  v4 = &a1[3 * v17 + 3];
LABEL_21:
  *(v4 + 18) = -1;
  return v4 + 16;
}

void sub_298C08F44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = a3 ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] <= 1uLL)
    {
      v6 = (*&v3 - 1) & v4;
    }

    else
    {
      v6 = a3 ^ a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    v7 = *a1;
    v8 = *(*a1 + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = *&v3 - 1;
        if (v5.u32[0] < 2uLL)
        {
          while (1)
          {
            v14 = v9[1];
            if (v14 == v4)
            {
              if (v9[2] == a2 && v9[3] == a3)
              {
                goto LABEL_28;
              }
            }

            else if ((v14 & v10) != v6)
            {
              return;
            }

            v9 = *v9;
            if (!v9)
            {
              return;
            }
          }
        }

        do
        {
          v12 = v9[1];
          if (v12 == v4)
          {
            if (v9[2] == a2 && v9[3] == a3)
            {
LABEL_28:
              if (v5.u32[0] <= 1uLL)
              {
                v4 &= v10;
              }

              else if (v4 >= *&v3)
              {
                v4 %= *&v3;
              }

              v15 = *(v7 + 8 * v4);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v9);
              if (v16 == a1 + 2)
              {
                goto LABEL_42;
              }

              v17 = v16[1];
              if (v5.u32[0] <= 1uLL)
              {
                v17 &= v10;
              }

              else if (v17 >= *&v3)
              {
                v17 %= *&v3;
              }

              if (v17 != v4)
              {
LABEL_42:
                if (!*v9)
                {
                  goto LABEL_43;
                }

                v18 = *(*v9 + 8);
                if (v5.u32[0] <= 1uLL)
                {
                  v18 &= v10;
                }

                else if (v18 >= *&v3)
                {
                  v18 %= *&v3;
                }

                if (v18 != v4)
                {
LABEL_43:
                  *(v7 + 8 * v4) = 0;
                }
              }

              v19 = *v9;
              if (*v9)
              {
                v20 = *(v19 + 8);
                if (v5.u32[0] <= 1uLL)
                {
                  v20 &= v10;
                }

                else if (v20 >= *&v3)
                {
                  v20 %= *&v3;
                }

                if (v20 != v4)
                {
                  *(*a1 + 8 * v20) = v16;
                  v19 = *v9;
                }
              }

              *v16 = v19;
              *v9 = 0;
              --a1[3];
              operator delete(v9);
              return;
            }
          }

          else if (v12 >= *&v3)
          {
            if (v12 % *&v3 != v6)
            {
              return;
            }
          }

          else if (v12 != v6)
          {
            return;
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }
}

void sub_298C09140(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_298C0930C(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] <= 1uLL)
    {
      v4 = (*&v2 - 1) & a2;
    }

    else
    {
      v4 = a2;
      if (*&v2 <= a2)
      {
        v4 = a2 % *&v2;
      }
    }

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = *&v2 - 1;
        if (v3.u32[0] < 2uLL)
        {
          while (1)
          {
            v10 = v7[1];
            if (v10 == a2)
            {
              if (v7[2] == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v10 & v8) != v4)
            {
              return;
            }

            v7 = *v7;
            if (!v7)
            {
              return;
            }
          }
        }

        do
        {
          v9 = v7[1];
          if (v9 == a2)
          {
            if (v7[2] == a2)
            {
LABEL_22:
              if (v3.u32[0] <= 1uLL)
              {
                a2 &= v8;
              }

              else if (*&v2 <= a2)
              {
                a2 %= *&v2;
              }

              v11 = *(v5 + 8 * a2);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == a1 + 2)
              {
                goto LABEL_36;
              }

              v13 = v12[1];
              if (v3.u32[0] <= 1uLL)
              {
                v13 &= v8;
              }

              else if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }

              if (v13 != a2)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] <= 1uLL)
                {
                  v14 &= v8;
                }

                else if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }

                if (v14 != a2)
                {
LABEL_37:
                  *(v5 + 8 * a2) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] <= 1uLL)
                {
                  v16 &= v8;
                }

                else if (v16 >= *&v2)
                {
                  v16 %= *&v2;
                }

                if (v16 != a2)
                {
                  *(*a1 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              operator delete(v7);
              return;
            }
          }

          else if (v9 >= *&v2)
          {
            if (v9 % *&v2 != v4)
            {
              return;
            }
          }

          else if (v9 != v4)
          {
            return;
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

void *sub_298C094FC(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = *(*(a2 + 96) + 8);
  return result;
}

uint64_t sub_298C09510(void *a1, uint64_t a2)
{
  v9 = a2;
  if (*a1 == a2)
  {
    return a1[1];
  }

  v10 = &v9;
  v4 = sub_298C0E688(a1 + 2, &v9);
  result = v4[3];
  if (!result)
  {
    v5 = v4;
    (*(**(v9 + 96) + 24))(&v10);
    v6 = v10;
    v10 = 0;
    v7 = v5[3];
    v5[3] = v6;
    if (v7)
    {
      (*(*v7 + 8))(v7);
      v8 = v10;
      v10 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    result = v5[3];
  }

  *a1 = v9;
  a1[1] = result;
  return result;
}

uint64_t sub_298C09638(unint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1[3];
  if (v3 > *a1)
  {
    v4 = v1[8];
    if (v4 <= v2)
    {
      v3 = v2 - v4 + 1;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_8;
  }

  if (v1[4] + v3 <= v2)
  {
    v4 = v1[8];
    v3 = *a1;
LABEL_8:
    v7 = v1[5];
    v6 = v1 + 5;
    v6[1] = v7;
    (*(**(v6 - 4) + 32))(*(v6 - 4), v3, v4, v6, *(v6 - 3));
    v5 = *v6;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 2);
    *(v6 - 2) = v3;
    *(v6 - 1) = v8;
    goto LABEL_9;
  }

  v5 = v1[5];
LABEL_9:
  v9 = (v5 + 12 * (v2 - v3));
  result = *v9;
  v11 = *(v9 + 2);
  return result;
}

__n128 sub_298C09708@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3[11];
  if (v5 > *a1)
  {
    v6 = v3[16];
    if (v6 <= v4)
    {
      v5 = v4 - v6 + 1;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_8;
  }

  if (v3[12] + v5 <= v4)
  {
    v6 = v3[16];
    v5 = *a1;
LABEL_8:
    v9 = v3[13];
    v8 = v3 + 13;
    v8[1] = v9;
    (*(**(v8 - 4) + 40))(*(v8 - 4), v5, v6, v8, *(v8 - 3));
    v7 = *v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3);
    *(v8 - 2) = v5;
    *(v8 - 1) = v10;
    goto LABEL_9;
  }

  v7 = v3[13];
LABEL_9:
  v11 = (v7 + 24 * (v4 - v5));
  result = *v11;
  *a2 = *v11;
  a2[1].n128_u64[0] = v11[1].n128_u64[0];
  return result;
}

__n128 sub_298C097E4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3[19];
  if (v5 <= *a1)
  {
    if (v3[20] + v5 > v4)
    {
      goto LABEL_6;
    }

    v6 = v3[24];
    v7 = *a1;
  }

  else
  {
    v6 = v3[24];
    if (v6 <= v4)
    {
      v7 = v4 - v6 + 1;
    }

    else
    {
      v7 = 0;
    }
  }

  sub_298C0EAF8(v3 + 17, v7, v6);
  v5 = v3[19];
LABEL_6:
  v8 = v3[21] + 56 * (v4 - v5);
  v9 = *(v8 + 16);
  *a2 = *v8;
  *(a2 + 16) = v9;
  result = *(v8 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(v8 + 48);
  return result;
}

void *sub_298C099A4(uint64_t a1, uint64_t a2, unint64_t a3, void **a4, void *a5)
{
  v48 = *MEMORY[0x29EDCA608];
  v9 = 12 * a2;
  v10 = (*(**(a1 + 88) + 24))(*(a1 + 88));
  if (v10 - v9 >= 12 * a3)
  {
    v11 = 12 * a3;
  }

  else
  {
    v11 = v10 - v9;
  }

  v12 = *(a1 + 88);
  result = (*(*v12 + 24))(v12);
  if (result - v9 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = result - v9;
  }

  v15 = a5[43];
  v16 = &v14[v9];
  if (v15 <= v9 && (v17 = a5[45]) != 0 && v16 <= v17 + v15)
  {
    v25 = a5[44];
  }

  else
  {
    v18 = a5[46];
    v19 = v16 >= v18 >> 1;
    v20 = &v16[-(v18 >> 1)];
    if (!v19)
    {
      v20 = 0;
    }

    if (v14 >= v18 >> 1)
    {
      v15 = v9;
    }

    else
    {
      v15 = v20;
    }

    if (v18 > v11)
    {
      v11 = a5[46];
    }

    v21 = (*(*v12 + 24))(v12);
    if (v21 - v15 >= v11)
    {
      v22 = v11;
    }

    else
    {
      v22 = v21 - v15;
    }

    v23 = a5[47];
    if (v23)
    {
      v24 = a5[45];
    }

    else
    {
      v24 = 0;
    }

    result = (**v12)(v46, v12, v15, v22, (a5 + 47), v24, v23 != 0);
    if (v47)
    {
      v25 = 0;
    }

    else
    {
      v25 = v46[0];
    }

    v17 = v46[1];
    a5[43] = v15;
    a5[44] = v25;
    a5[45] = v17;
  }

  v26 = v9 - v15;
  if (v17 < v9 - v15)
  {
    v26 = v17;
  }

  v27 = (v25 + v26);
  v28 = v17 - v26;
  if (v28 >= v14)
  {
    v28 = v14;
  }

  v29 = v28 / 0xC;
  if (v29 >= a3)
  {
    v30 = a3;
  }

  else
  {
    v30 = v29;
  }

  v31 = 12 * v30;
  v32 = a4[2];
  v33 = *a4;
  if (0xAAAAAAAAAAAAAAABLL * ((v32 - *a4) >> 2) < v30)
  {
    if (v33)
    {
      a4[1] = v33;
      operator delete(v33);
      v32 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    v34 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
    v35 = 2 * v34;
    if (2 * v34 <= v30)
    {
      v35 = v30;
    }

    if (v34 >= 0xAAAAAAAAAAAAAAALL)
    {
      v36 = 0x1555555555555555;
    }

    else
    {
      v36 = v35;
    }

    if (v36 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v38 = a4[1];
  v39 = v38 - v33;
  if (0xAAAAAAAAAAAAAAABLL * ((v38 - v33) >> 2) >= v30)
  {
    if (v30)
    {
      result = memmove(*a4, v27, 12 * v30);
    }

    v45 = &v33[v31];
  }

  else
  {
    if (v38 != v33)
    {
      result = memmove(*a4, v27, v38 - v33);
    }

    v40 = a4[1];
    if (v39 != v31)
    {
      v41 = &v27[v39];
      v42 = (&v33[v31] - v38);
      v40 = a4[1];
      v43 = v40;
      do
      {
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        v43 += 12;
        v41 += 12;
        v40 += 12;
        v42 -= 12;
      }

      while (v42);
    }

    v45 = v40;
  }

  a4[1] = v45;
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

char *sub_298C09D48(uint64_t a1, uint64_t a2, unint64_t a3, char **a4, uint64_t a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v9 = 24 * a2;
  v10 = (*(**(a1 + 104) + 24))(*(a1 + 104));
  if (v10 - v9 >= 24 * a3)
  {
    v11 = 24 * a3;
  }

  else
  {
    v11 = v10 - v9;
  }

  sub_298C39720((a5 + 384), *(a1 + 104), v9, v11, &v19);
  v12 = v21;
  if (v21)
  {
    v13 = 0;
  }

  else
  {
    v13 = v19;
  }

  if (v20 / 0x18 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v20 / 0x18;
  }

  result = sub_298C0EEE0(a4, v13, &v13[24 * v14], v14);
  if (v13 && (v12 & 1) != 0)
  {
    v16 = *(*v13 + 8);
    v17 = *MEMORY[0x29EDCA608];

    return v16(v13);
  }

  else
  {
    v18 = *MEMORY[0x29EDCA608];
  }

  return result;
}

char *sub_298C09EB8(uint64_t a1, uint64_t a2, unint64_t a3, char **a4, uint64_t a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v10 = 56 * a2;
  v11 = (*(**(a1 + 120) + 24))(*(a1 + 120));
  if (v11 - v10 >= 56 * a3)
  {
    v12 = 56 * a3;
  }

  else
  {
    v12 = v11 - v10;
  }

  sub_298C39720((a5 + 432), *(a1 + 120), v10, v12, &v19);
  v13 = v21;
  if (v21)
  {
    v14 = 0;
  }

  else
  {
    v14 = v19;
  }

  if (v20 / 0x38 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = v20 / 0x38;
  }

  result = sub_298C0F0C4(a4, v14, &v14[56 * v15], v15);
  if (v14 && (v13 & 1) != 0)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (!a2)
  {
    if (a3)
    {
      if (*(a1 + 64))
      {
        v17 = *a4;
        if (**a4 == -1 && *(v17 + 1) == -1 && *(v17 + 5) == -1 && *(v17 + 6) == -1)
        {
          *v17 = *(a1 + 48);
        }
      }
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C0A048(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, void *a5)
{
  v66 = *MEMORY[0x29EDCA608];
  v8 = 48 * a2;
  v9 = (*(**(a1 + 120) + 24))(*(a1 + 120));
  if (v9 - v8 >= 48 * a3)
  {
    v10 = 48 * a3;
  }

  else
  {
    v10 = v9 - v8;
  }

  v63 = a1;
  v11 = *(a1 + 120);
  v12 = (*(*v11 + 24))(v11);
  if (v12 - v8 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12 - v8;
  }

  v14 = a5[55];
  v15 = v13 + v8;
  if (v14 <= v8 && (v16 = a5[57]) != 0 && v15 <= v16 + v14)
  {
    v24 = a5[56];
    v25 = a4;
  }

  else
  {
    v17 = a5[58];
    v18 = v15 >= v17 >> 1;
    v19 = v15 - (v17 >> 1);
    if (!v18)
    {
      v19 = 0;
    }

    if (v13 >= v17 >> 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v19;
    }

    if (v17 > v10)
    {
      v10 = a5[58];
    }

    v20 = (*(*v11 + 24))(v11);
    if (v20 - v14 >= v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = v20 - v14;
    }

    v22 = a5[59];
    if (v22)
    {
      v23 = a5[57];
    }

    else
    {
      v23 = 0;
    }

    (**v11)(v64, v11, v14, v21, (a5 + 59), v23, v22 != 0);
    if (v65)
    {
      v24 = 0;
    }

    else
    {
      v24 = v64[0];
    }

    v16 = v64[1];
    v25 = a4;
    a5[55] = v14;
    a5[56] = v24;
    a5[57] = v16;
  }

  if (v16 >= v8 - v14)
  {
    v26 = v8 - v14;
  }

  else
  {
    v26 = v16;
  }

  v27 = v16 - v26;
  if (v27 >= v13)
  {
    v28 = v13;
  }

  else
  {
    v28 = v27;
  }

  v29 = *v25;
  v25[1] = *v25;
  v30 = v25[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 3) < v28 / 0x30)
  {
    if (v28 < 0xDB6DB6DB6DB6DB90)
    {
      operator new();
    }

LABEL_76:
    sub_298ADDDA0();
  }

  v31 = v29;
  if (v30 != v29)
  {
    if (v30 == v29)
    {
      v31 = 0;
    }

    else
    {
      v32 = v25[1] - v29;
      v33 = &v29[-v25[1]];
      memcpy(-v32, v31, v32);
      v25 = a4;
      *a4 = v33;
      a4[1] = 0;
      a4[2] = 0;
    }

    if (v31)
    {
      operator delete(v31);
      v25 = a4;
      if (v28 < 0x30)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }
  }

  if (v28 >= 0x30)
  {
LABEL_45:
    v35 = (v24 + v26);
    v36 = v24 + v26 + 48 * (v28 / 0x30);
    v62 = v36;
    while (1)
    {
      v37 = *v35;
      v38 = *(v63 + 160);
      if (v38)
      {
        v39 = *(v38 + 48);
        if (!v39)
        {
          goto LABEL_56;
        }

        v40 = v38 + 48;
        do
        {
          v41 = *(v39 + 32);
          v18 = v41 >= v37;
          v42 = v41 < v37;
          if (v18)
          {
            v40 = v39;
          }

          v39 = *(v39 + 8 * v42);
        }

        while (v39);
        if (v40 != v38 + 48 && *(v40 + 32) <= v37)
        {
          v43 = (v40 + 40);
        }

        else
        {
LABEL_56:
          v43 = (v38 + 64);
        }

        v44 = *v43;
        v45 = v35[1];
        v46 = v35[2];
        v47 = v35[3];
        v48 = v35[4];
        v49 = v35[5];
        v50 = v25[1];
        v51 = v25[2];
        if (v50 >= v51)
        {
          goto LABEL_60;
        }

LABEL_46:
        *v50 = v44;
        *(v50 + 1) = v37;
        *(v50 + 2) = v45;
        *(v50 + 3) = v46;
        *(v50 + 4) = v47;
        *(v50 + 5) = v48;
        *(v50 + 6) = v49;
        v25[1] = v50 + 56;
        v35 += 6;
        if (v35 == v36)
        {
          break;
        }
      }

      else
      {
        v44 = 0;
        v45 = v35[1];
        v46 = v35[2];
        v47 = v35[3];
        v48 = v35[4];
        v49 = v35[5];
        v50 = v25[1];
        v51 = v25[2];
        if (v50 < v51)
        {
          goto LABEL_46;
        }

LABEL_60:
        v52 = *v25;
        v53 = 0x6DB6DB6DB6DB6DB7 * (&v50[-*v25] >> 3);
        v54 = v53 + 1;
        if ((v53 + 1) > 0x492492492492492)
        {
          goto LABEL_76;
        }

        v55 = 0x6DB6DB6DB6DB6DB7 * ((v51 - v52) >> 3);
        if (2 * v55 > v54)
        {
          v54 = 2 * v55;
        }

        if (v55 >= 0x249249249249249)
        {
          v56 = 0x492492492492492;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          if (v56 <= 0x492492492492492)
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        v60 = v25;
        v57 = (8 * (&v50[-*v25] >> 3));
        *v57 = v44;
        v57[1] = v37;
        v57[2] = v45;
        v57[3] = v46;
        v57[4] = v47;
        v57[5] = v48;
        v57[6] = v49;
        v58 = 56 * v53 + 56;
        v59 = (56 * v53 - (v50 - v52));
        memcpy(v59, v52, v50 - v52);
        *v60 = v59;
        v60[1] = v58;
        v60[2] = 0;
        if (v52)
        {
          operator delete(v52);
          v25 = a4;
        }

        else
        {
          v25 = v60;
        }

        v36 = v62;
        v25[1] = v58;
        v35 += 6;
        if (v35 == v62)
        {
          break;
        }
      }
    }
  }

LABEL_43:
  v34 = *MEMORY[0x29EDCA608];
}

void *sub_298C0A628(uint64_t a1, uint64_t a2, unint64_t a3, void **a4, void *a5)
{
  v51 = *MEMORY[0x29EDCA608];
  v9 = 80 * a2;
  v10 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v10 - v9 >= 80 * a3)
  {
    v11 = 80 * a3;
  }

  else
  {
    v11 = v10 - v9;
  }

  v12 = *(a1 + 136);
  result = (*(*v12 + 24))(v12);
  if (&result[v9 / 0xFFFFFFFFFFFFFFF8] >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &result[v9 / 0xFFFFFFFFFFFFFFF8];
  }

  v15 = a5[61];
  v16 = &v14[v9 / 8];
  if (v15 <= v9 && (v17 = a5[63]) != 0 && v16 <= v17 + v15)
  {
    v25 = a5[62];
  }

  else
  {
    v18 = a5[64];
    v19 = v16 >= v18 >> 1;
    v20 = v16 - (v18 >> 1);
    if (!v19)
    {
      v20 = 0;
    }

    if (v14 >= v18 >> 1)
    {
      v15 = v9;
    }

    else
    {
      v15 = v20;
    }

    if (v18 > v11)
    {
      v11 = a5[64];
    }

    v21 = (*(*v12 + 24))(v12);
    if (v21 - v15 >= v11)
    {
      v22 = v11;
    }

    else
    {
      v22 = v21 - v15;
    }

    if (a5[65])
    {
      v23 = a5[63];
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    result = (**v12)(v49, v12, v15, v22, (a5 + 65), v23, v24);
    if (v50)
    {
      v25 = 0;
    }

    else
    {
      v25 = v49[0];
    }

    v17 = v49[1];
    a5[61] = v15;
    a5[62] = v25;
    a5[63] = v17;
  }

  v26 = v9 - v15;
  if (v17 < v9 - v15)
  {
    v26 = v17;
  }

  v27 = (v25 + v26);
  v28 = v17 - v26;
  if (v28 >= v14)
  {
    v28 = v14;
  }

  v29 = v28 / 0x50;
  if (v29 >= a3)
  {
    v30 = a3;
  }

  else
  {
    v30 = v29;
  }

  v31 = 80 * v30;
  v32 = a4[2];
  v33 = *a4;
  if (0xCCCCCCCCCCCCCCCDLL * ((v32 - *a4) >> 4) < v30)
  {
    if (v33)
    {
      a4[1] = v33;
      operator delete(v33);
      v32 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    v34 = 0xCCCCCCCCCCCCCCCDLL * (v32 >> 4);
    v35 = 2 * v34;
    if (2 * v34 <= v30)
    {
      v35 = v30;
    }

    if (v34 >= 0x199999999999999)
    {
      v36 = 0x333333333333333;
    }

    else
    {
      v36 = v35;
    }

    if (v36 <= 0x333333333333333)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v37 = a4[1];
  v38 = v37 - v33;
  if (0xCCCCCCCCCCCCCCCDLL * ((v37 - v33) >> 4) < v30)
  {
    if (v37 == v33)
    {
      v39 = a4[1];
      v40 = v39;
      if (v38 == v31)
      {
LABEL_54:
        v41 = v40;
        goto LABEL_55;
      }
    }

    else
    {
      result = memmove(*a4, v27, v37 - v33);
      v39 = a4[1];
      v40 = v39;
      if (v38 == v31)
      {
        goto LABEL_54;
      }
    }

    v42 = &v27[v38];
    v43 = (&v33[v31] - v37);
    v40 = v39;
    v44 = v39;
    do
    {
      *v44 = *v42;
      v45 = *(v42 + 1);
      v46 = *(v42 + 2);
      v47 = *(v42 + 4);
      *(v44 + 3) = *(v42 + 3);
      *(v44 + 4) = v47;
      *(v44 + 1) = v45;
      *(v44 + 2) = v46;
      v42 += 80;
      v44 += 80;
      v40 += 80;
      v43 -= 80;
    }

    while (v43);
    goto LABEL_54;
  }

  if (v30)
  {
    result = memmove(*a4, v27, 80 * v30);
  }

  v41 = &v33[v31];
LABEL_55:
  a4[1] = v41;
  v48 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298C0A9D8(uint64_t a1, uint64_t a2, unint64_t a3, void **a4, void *a5)
{
  v48 = *MEMORY[0x29EDCA608];
  v9 = 16 * a2;
  v10 = (*(**(a1 + 152) + 24))(*(a1 + 152));
  if (v10 - v9 >= 16 * a3)
  {
    v11 = 16 * a3;
  }

  else
  {
    v11 = v10 - v9;
  }

  v12 = *(a1 + 152);
  result = (*(*v12 + 24))(v12);
  if (&result[v9 / 0xFFFFFFFFFFFFFFF8] >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &result[v9 / 0xFFFFFFFFFFFFFFF8];
  }

  v15 = a5[67];
  v16 = &v14[v9 / 8];
  if (v15 <= v9 && (v17 = a5[69]) != 0 && v16 <= v17 + v15)
  {
    v25 = a5[68];
  }

  else
  {
    v18 = a5[70];
    v19 = v16 >= v18 >> 1;
    v20 = v16 - (v18 >> 1);
    if (!v19)
    {
      v20 = 0;
    }

    if (v14 >= v18 >> 1)
    {
      v15 = v9;
    }

    else
    {
      v15 = v20;
    }

    if (v18 > v11)
    {
      v11 = a5[70];
    }

    v21 = (*(*v12 + 24))(v12);
    if (v21 - v15 >= v11)
    {
      v22 = v11;
    }

    else
    {
      v22 = v21 - v15;
    }

    if (a5[71])
    {
      v23 = a5[69];
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    result = (**v12)(v46, v12, v15, v22, (a5 + 71), v23, v24);
    if (v47)
    {
      v25 = 0;
    }

    else
    {
      v25 = v46[0];
    }

    v17 = v46[1];
    a5[67] = v15;
    a5[68] = v25;
    a5[69] = v17;
  }

  v26 = v9 - v15;
  if (v17 < v9 - v15)
  {
    v26 = v17;
  }

  v27 = (v25 + v26);
  v28 = v17 - v26;
  if (v28 >= v14)
  {
    v28 = v14;
  }

  v29 = v28 >> 4;
  if (v29 >= a3)
  {
    v30 = a3;
  }

  else
  {
    v30 = v29;
  }

  v31 = 16 * v30;
  v32 = a4[2];
  v33 = *a4;
  if (v30 > (v32 - *a4) >> 4)
  {
    if (v33)
    {
      a4[1] = v33;
      operator delete(v33);
      v32 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    v34 = v32 >> 3;
    if (v32 >> 3 <= v30)
    {
      v34 = v30;
    }

    v19 = v32 >= 0x7FFFFFFFFFFFFFF0;
    v35 = 0xFFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v35 = v34;
    }

    if (!(v35 >> 60))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v36 = a4[1];
  v37 = v36 - v33;
  if (v30 > (v36 - v33) >> 4)
  {
    if (v36 == v33)
    {
      v38 = a4[1];
      v39 = v38;
      if (v37 == v31)
      {
LABEL_53:
        v40 = v39;
        goto LABEL_54;
      }
    }

    else
    {
      result = memmove(*a4, v27, v36 - v33);
      v38 = a4[1];
      v39 = v38;
      if (v37 == v31)
      {
        goto LABEL_53;
      }
    }

    v41 = &v27[v37];
    v42 = (&v33[v31] - v36);
    v39 = v38;
    v43 = v38;
    do
    {
      v44 = *v41;
      v41 += 16;
      *v43 = v44;
      v43 += 16;
      v39 += 16;
      v42 -= 16;
    }

    while (v42);
    goto LABEL_53;
  }

  if (v30)
  {
    result = memmove(*a4, v27, 16 * v30);
  }

  v40 = &v33[v31];
LABEL_54:
  a4[1] = v40;
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C0AD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(**(a1 + 80) + 48))(*(a1 + 80), a2, 12 * a3, 0, 0);
  *(a1 + 8) += a3;
  return result;
}

uint64_t sub_298C0AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(**(a1 + 96) + 48))(*(a1 + 96), a2, 24 * a3, 0, 0);
  *(a1 + 16) += a3;
  return result;
}

uint64_t sub_298C0ADE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    v4 = 56 * a3;
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 = (v5 + 56);
      v9[0] = v6;
      v9[1] = v7;
      v9[2] = v8;
      result = (*(**(v3 + 112) + 48))(*(v3 + 112), v9, 48, 0, 0);
      ++*(v3 + 24);
      v4 -= 56;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_298C0AE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(**(a1 + 112) + 48))(*(a1 + 112), a2, 56 * a3, 0, 0);
  *(a1 + 24) += a3;
  return result;
}

uint64_t sub_298C0AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(**(a1 + 128) + 48))(*(a1 + 128), a2, 80 * a3, 0, 0);
  *(a1 + 32) += a3;
  return result;
}

uint64_t sub_298C0AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(**(a1 + 144) + 48))(*(a1 + 144), a2, 16 * a3, 0, 0);
  *(a1 + 40) += a3;
  return result;
}

uint64_t sub_298C0AFBC(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4, __int128 *a5)
{
  (*(**a2 + 24))(&v149);
  if ((*(a1 + 64) & 1) == 0)
  {
    v8 = *a5;
    *(a1 + 64) = *(a5 + 16);
    *(a1 + 48) = v8;
  }

  v9 = v149;
  v10 = *(v149[41] + 16);
  if (!v10)
  {
    goto LABEL_170;
  }

  v11 = 0;
  v12 = 0;
  v13 = v149[11];
  do
  {
    if (v13 <= v12)
    {
      v15 = v9[12];
      if (v15 + v13 > v12)
      {
        v16 = v9[13];
        if (*(v16 - 24 * v13 + v11) >= a3)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      v14 = v9[16];
      v13 = v12;
    }

    else
    {
      v14 = v9[16];
      if (v14 <= v12)
      {
        v13 = v12 - v14 + 1;
      }

      else
      {
        v13 = 0;
      }
    }

    v9[14] = v9[13];
    (*(*v9[9] + 40))(v9[9], v13, v14, v9 + 13, v9[10]);
    v16 = v9[13];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9[14] - v16) >> 3);
    v9[11] = v13;
    v9[12] = v15;
    if (*(v16 - 24 * v13 + v11) >= a3)
    {
      goto LABEL_16;
    }

LABEL_14:
    ++v12;
    v11 += 24;
  }

  while (v10 != v12);
  v12 = v10;
LABEL_16:
  v17 = v10 + 2;
  v18 = 24 * v10;
  while (2)
  {
    if (v17 - v12 == 2)
    {
      goto LABEL_170;
    }

    v22 = v17 - 3;
    if (v13 > v17 - 3)
    {
      v19 = v9[16];
      if (v19 <= v22)
      {
        v13 = v17 - v19 - 2;
      }

      else
      {
        v13 = 0;
      }

LABEL_20:
      v9[14] = v16;
      v20 = v9[10];
      (*(*v9[9] + 40))(v9[9], v13);
      v16 = v9[13];
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9[14] - v16) >> 3);
      v9[11] = v13;
      v9[12] = v15;
    }

    else if (v13 + v15 <= v22)
    {
      v23 = v9[16];
      v13 = v17 - 3;
      goto LABEL_20;
    }

    v21 = *(v16 - 24 * v13 + v18 - 24);
    --v17;
    v18 -= 24;
    if (v21 >= a4)
    {
      continue;
    }

    break;
  }

  v147 = a4;
  v24 = v149;
  v25 = v149[41];
  v26 = *(v25 + 8);
  if (!v26)
  {
    v142 = 0;
    v144 = 0;
    v28 = *(v149[41] + 24);
    v145 = a1;
    if (v28)
    {
      goto LABEL_39;
    }

    goto LABEL_101;
  }

  if (v13 <= v12)
  {
    if (v13 + v15 <= v12)
    {
      v27 = v9[16];
      v13 = v12;
      goto LABEL_35;
    }
  }

  else
  {
    v27 = v9[16];
    if (v27 <= v12)
    {
      v13 = v12 - v27 + 1;
    }

    else
    {
      v13 = 0;
    }

LABEL_35:
    v9[14] = v16;
    (*(*v9[9] + 40))(v9[9], v13, v27, v9 + 13, v9[10]);
    v16 = v9[13];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9[14] - v16) >> 3);
    v9[11] = v13;
    v9[12] = v15;
    v24 = v149;
    v25 = v149[41];
  }

  v144 = *(v16 + 24 * (v12 - v13) + 8);
  if (v9 == v24 && v17 - *(v25 + 16) == 1)
  {
    v142 = v26;
    v28 = *(v24[41] + 24);
    v145 = a1;
    if (v28)
    {
      goto LABEL_39;
    }

LABEL_101:
    v30 = 0;
    v63 = 0;
    v64 = v149;
    v65 = *(v149[41] + 40);
    if (!v65)
    {
      goto LABEL_96;
    }

    goto LABEL_102;
  }

  v46 = v17 - 1;
  if (v13 <= v17 - 1)
  {
    if (v13 + v15 <= v46)
    {
      v47 = v9[16];
      v13 = v17 - 1;
      goto LABEL_99;
    }
  }

  else
  {
    v47 = v9[16];
    if (v47 <= v46)
    {
      v13 = v17 - v47;
    }

    else
    {
      v13 = 0;
    }

LABEL_99:
    v9[14] = v16;
    (*(*v9[9] + 40))(v9[9], v13, v47, v9 + 13, v9[10]);
    v16 = v9[13];
    v68 = 0xAAAAAAAAAAAAAAABLL * ((v9[14] - v16) >> 3);
    v9[11] = v13;
    v9[12] = v68;
    v24 = v149;
  }

  v142 = *(v16 - 24 * v13 + v18 + 32);
  v28 = *(v24[41] + 24);
  v145 = a1;
  if (!v28)
  {
    goto LABEL_101;
  }

LABEL_39:
  v29 = 0;
  v30 = 0;
  while (2)
  {
    v31 = v24[19];
    if (v31 <= v30)
    {
      if (v24[20] + v31 <= v30)
      {
        v32 = v24[24];
        v31 = v30;
        goto LABEL_48;
      }

      v33 = v24[21];
    }

    else
    {
      v32 = v24[24];
      if (v32 <= v30)
      {
        v31 = v30 - v32 + 1;
      }

      else
      {
        v31 = 0;
      }

LABEL_48:
      v24[22] = v24[21];
      (*(*v24[17] + 48))(v24[17], v31, v32, v24 + 21, v24[18]);
      v33 = v24[21];
      v34 = 0x6DB6DB6DB6DB6DB7 * ((v24[22] - v33) >> 3);
      v24[19] = v31;
      v24[20] = v34;
    }

    v35 = *(v33 - 56 * v31 + v29 + 16);
    v36 = v149[11];
    if (v36 <= v35)
    {
      if (v149[12] + v36 <= v35)
      {
        v37 = v149[16];
        v36 = *(v33 - 56 * v31 + v29 + 16);
        goto LABEL_56;
      }

      v38 = v149[13];
    }

    else
    {
      v37 = v149[16];
      if (v37 <= v35)
      {
        v36 = v35 - v37 + 1;
      }

      else
      {
        v36 = 0;
      }

LABEL_56:
      v39 = v149 + 13;
      v149[14] = v149[13];
      (*(**(v39 - 4) + 40))(*(v39 - 4), v36, v37, v39, *(v39 - 3));
      v38 = *v39;
      v40 = 0xAAAAAAAAAAAAAAABLL * ((v39[1] - *v39) >> 3);
      *(v39 - 2) = v36;
      *(v39 - 1) = v40;
    }

    if (*(v38 + 24 * (v35 - v36)) >= a3)
    {
      v41 = v24[19];
      if (v41 <= v30)
      {
        if (v24[20] + v41 <= v30)
        {
          v42 = v24[24];
          v41 = v30;
          goto LABEL_65;
        }

        v43 = v24[21];
      }

      else
      {
        v42 = v24[24];
        if (v42 <= v30)
        {
          v41 = v30 - v42 + 1;
        }

        else
        {
          v41 = 0;
        }

LABEL_65:
        v24[22] = v24[21];
        (*(*v24[17] + 48))(v24[17], v41, v42, v24 + 21, v24[18]);
        v43 = v24[21];
        v44 = 0x6DB6DB6DB6DB6DB7 * ((v24[22] - v43) >> 3);
        v24[19] = v41;
        v24[20] = v44;
      }

      v45.i64[0] = -1;
      v45.i64[1] = -1;
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v43 - 56 * v41 + v29), v45), vceqq_s64(*(v43 - 56 * v41 + v29 + 40), v45))))))
      {
        goto LABEL_74;
      }

      if ((*(a1 + 128) & 1) == 0)
      {
        *(a1 + 128) = 1;
        goto LABEL_74;
      }
    }

    ++v30;
    v29 += 56;
    if (v28 != v30)
    {
      continue;
    }

    break;
  }

  v30 = v28;
LABEL_74:
  v48 = 56 * v28 - 40;
  while (2)
  {
    if (v30 == v28)
    {
      v63 = v30;
      v64 = v149;
      v65 = *(v149[41] + 40);
      if (!v65)
      {
        goto LABEL_96;
      }

      goto LABEL_102;
    }

    v56 = v28 - 1;
    v57 = v24[19];
    if (v57 <= v28 - 1)
    {
      if (v24[20] + v57 <= v56)
      {
        v58 = v24[24];
        v57 = v28 - 1;
        goto LABEL_88;
      }

      v59 = v24[21];
    }

    else
    {
      v58 = v24[24];
      if (v58 <= v56)
      {
        v57 = v28 - v58;
      }

      else
      {
        v57 = 0;
      }

LABEL_88:
      v24[22] = v24[21];
      (*(*v24[17] + 48))(v24[17], v57, v58, v24 + 21, v24[18]);
      v59 = v24[21];
      v60 = 0x6DB6DB6DB6DB6DB7 * ((v24[22] - v59) >> 3);
      v24[19] = v57;
      v24[20] = v60;
    }

    v61 = *(v59 - 56 * v57 + v48);
    v50 = v149[11];
    if (v50 > v61)
    {
      v49 = v149[16];
      if (v49 <= v61)
      {
        v50 = v61 - v49 + 1;
      }

      else
      {
        v50 = 0;
      }

      goto LABEL_78;
    }

    if (v149[12] + v50 <= v61)
    {
      v62 = v149[16];
      v50 = *(v59 - 56 * v57 + v48);
LABEL_78:
      v51 = v149 + 13;
      v149[14] = v149[13];
      v52 = *(v51 - 3);
      (*(**(v51 - 4) + 40))(*(v51 - 4), v50);
      v53 = *v51;
      v54 = 0xAAAAAAAAAAAAAAABLL * ((v51[1] - *v51) >> 3);
      *(v51 - 2) = v50;
      *(v51 - 1) = v54;
      goto LABEL_79;
    }

    v53 = v149[13];
LABEL_79:
    v55 = *(v53 + 24 * (v61 - v50));
    v48 -= 56;
    v28 = v56;
    if (v55 >= v147)
    {
      continue;
    }

    break;
  }

  *(v145 + 128) = 1;
  v63 = v56 + 1;
  v64 = v149;
  v65 = *(v149[41] + 40);
  if (!v65)
  {
LABEL_96:
    v66 = 0;
    v67 = 0;
    goto LABEL_143;
  }

LABEL_102:
  v140 = v63;
  v69 = 0;
  v67 = 0;
  while (2)
  {
    v70 = v64[35];
    if (v70 <= v67)
    {
      if (v64[36] + v70 <= v67)
      {
        v71 = v64[40];
        v72 = v67;
        goto LABEL_112;
      }

      v73 = *(v64[37] - 16 * v70 + v69);
      v74 = v149;
      v75 = v149[11];
      if (v75 <= v73)
      {
        goto LABEL_109;
      }

LABEL_113:
      v79 = v74[16];
      if (v79 <= v73)
      {
        v75 = v73 - v79 + 1;
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      v71 = v64[40];
      if (v71 <= v67)
      {
        v72 = v67 - v71 + 1;
      }

      else
      {
        v72 = 0;
      }

LABEL_112:
      v64[38] = v64[37];
      (*(*v64[33] + 64))(v64[33], v72, v71, v64 + 37, v64[34]);
      v77 = v64[37];
      v78 = (v64[38] - v77) >> 4;
      v64[35] = v72;
      v64[36] = v78;
      v73 = *(v77 - 16 * v72 + v69);
      v74 = v149;
      v75 = v149[11];
      if (v75 > v73)
      {
        goto LABEL_113;
      }

LABEL_109:
      if (v74[12] + v75 > v73)
      {
        v76 = v74[13];
        goto LABEL_118;
      }

      v79 = v74[16];
      v75 = v73;
    }

    v81 = v74[13];
    v80 = v74 + 13;
    v80[1] = v81;
    (*(**(v80 - 4) + 40))(*(v80 - 4), v75, v79, v80, *(v80 - 3));
    v76 = *v80;
    v82 = 0xAAAAAAAAAAAAAAABLL * ((v80[1] - *v80) >> 3);
    *(v80 - 2) = v75;
    *(v80 - 1) = v82;
LABEL_118:
    if (*(v76 + 24 * (v73 - v75)) >= a3)
    {
      goto LABEL_121;
    }

    ++v67;
    v69 += 16;
    if (v65 != v67)
    {
      continue;
    }

    break;
  }

  v67 = v65;
LABEL_121:
  v83 = 16 * v65 - 16;
  while (2)
  {
    if (v67 == v65)
    {
      v66 = v67;
      goto LABEL_142;
    }

    v92 = v65 - 1;
    v93 = v64[35];
    if (v93 <= v65 - 1)
    {
      if (v64[36] + v93 <= v92)
      {
        v94 = v64[40];
        v95 = v65 - 1;
        goto LABEL_136;
      }

      v96 = *(v64[37] - 16 * v93 + v83);
      v97 = v149;
      v85 = v149[11];
      if (v85 > v96)
      {
        goto LABEL_122;
      }

LABEL_137:
      if (v97[12] + v85 <= v96)
      {
        v100 = v97[16];
        v85 = v96;
        goto LABEL_125;
      }

      v89 = v97[13];
    }

    else
    {
      v94 = v64[40];
      if (v94 <= v92)
      {
        v95 = v65 - v94;
      }

      else
      {
        v95 = 0;
      }

LABEL_136:
      v64[38] = v64[37];
      (*(*v64[33] + 64))(v64[33], v95, v94, v64 + 37, v64[34]);
      v98 = v64[37];
      v99 = (v64[38] - v98) >> 4;
      v64[35] = v95;
      v64[36] = v99;
      v96 = *(v98 - 16 * v95 + v83);
      v97 = v149;
      v85 = v149[11];
      if (v85 <= v96)
      {
        goto LABEL_137;
      }

LABEL_122:
      v84 = v97[16];
      if (v84 <= v96)
      {
        v85 = v96 - v84 + 1;
      }

      else
      {
        v85 = 0;
      }

LABEL_125:
      v87 = v97[13];
      v86 = v97 + 13;
      v86[1] = v87;
      v88 = *(v86 - 3);
      (*(**(v86 - 4) + 40))(*(v86 - 4), v85);
      v89 = *v86;
      v90 = 0xAAAAAAAAAAAAAAABLL * ((v86[1] - *v86) >> 3);
      *(v86 - 2) = v85;
      *(v86 - 1) = v90;
    }

    v91 = *(v89 + 24 * (v96 - v85));
    v83 -= 16;
    v65 = v92;
    if (v91 >= v147)
    {
      continue;
    }

    break;
  }

  v66 = v92 + 1;
LABEL_142:
  v63 = v140;
LABEL_143:
  v101 = *a2;
  v102 = v142 - v144;
  v103 = *(v145 + 8);
  v104 = *(v145 + 16);
  v105 = v17 - v12;
  v106 = *(v145 + 24);
  v107 = v63 - v30;
  v108 = *(v145 + 40);
  v109 = v66 - v67;
  *(v145 + 8) = v103 + v142 - v144;
  *(v145 + 16) = v17 - v12 + v104 - 1;
  *(v145 + 24) = v106 + v63 - v30;
  *(v145 + 40) = v108 + v66 - v67;
  v111 = *(v145 + 112);
  v110 = *(v145 + 120);
  if (v111 >= v110)
  {
    v119 = *(v145 + 104);
    v120 = v111 - v119;
    v121 = (v111 - v119) >> 3;
    v122 = v121 + 1;
    if ((v121 + 1) >> 61)
    {
      sub_298ADDDA0();
    }

    v123 = v110 - v119;
    if (v123 >> 2 > v122)
    {
      v122 = v123 >> 2;
    }

    if (v123 >= 0x7FFFFFFFFFFFFFF8)
    {
      v124 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v124 = v122;
    }

    v136 = v108;
    v141 = v104;
    v143 = v106;
    v138 = v101;
    v139 = v102;
    v137 = v103;
    if (v124)
    {
      if (!(v124 >> 61))
      {
        operator new();
      }

LABEL_173:
      sub_298ADDDA0();
    }

    v125 = v121;
    v126 = (8 * v121);
    *a2 = 0;
    v127 = &v126[-v125];
    *v126 = v101;
    v128 = v126 + 1;
    memcpy(v127, v119, v120);
    *(v145 + 104) = v127;
    *(v145 + 112) = v128;
    *(v145 + 120) = 0;
    if (v119)
    {
      operator delete(v119);
    }

    v112 = a3;
    v108 = v136;
    v104 = v141;
    v106 = v143;
    v101 = v138;
    v102 = v139;
    v103 = v137;
    v113 = v105 - 1;
    v114 = v145;
    *(v145 + 112) = v128;
    v115 = *(v145 + 88);
    v116 = *(v145 + 96);
    if (v115 >= v116)
    {
      goto LABEL_158;
    }

LABEL_145:
    *v115 = v101;
    *(v115 + 1) = v103;
    *(v115 + 2) = v144;
    *(v115 + 3) = v102;
    *(v115 + 4) = v104;
    *(v115 + 5) = v12;
    *(v115 + 6) = v113;
    *(v115 + 7) = v106;
    *(v115 + 8) = v30;
    *(v115 + 9) = v107;
    *(v115 + 10) = v108;
    *(v115 + 11) = v67;
    *(v115 + 12) = v109;
    *(v115 + 13) = v112;
    v117 = v115 + 120;
    *(v115 + 14) = v147;
    v118 = v114;
  }

  else
  {
    *a2 = 0;
    *v111 = v101;
    v112 = a3;
    v113 = v105 - 1;
    v114 = v145;
    *(v145 + 112) = v111 + 8;
    v115 = *(v145 + 88);
    v116 = *(v145 + 96);
    if (v115 < v116)
    {
      goto LABEL_145;
    }

LABEL_158:
    v129 = *(v114 + 80);
    v130 = 0xEEEEEEEEEEEEEEEFLL * ((v115 - v129) >> 3) + 1;
    if (v130 > 0x222222222222222)
    {
      sub_298ADDDA0();
    }

    v131 = 0xEEEEEEEEEEEEEEEFLL * ((v116 - v129) >> 3);
    if (2 * v131 > v130)
    {
      v130 = 2 * v131;
    }

    if (v131 >= 0x111111111111111)
    {
      v132 = 0x222222222222222;
    }

    else
    {
      v132 = v130;
    }

    if (v132)
    {
      if (v132 <= 0x222222222222222)
      {
        operator new();
      }

      goto LABEL_173;
    }

    v118 = v145;
    v133 = (8 * ((v115 - v129) >> 3));
    *v133 = v101;
    v133[1] = v103;
    v133[2] = v144;
    v133[3] = v102;
    v133[4] = v104;
    v133[5] = v12;
    v133[6] = v113;
    v133[7] = v106;
    v133[8] = v30;
    v133[9] = v107;
    v133[10] = v108;
    v133[11] = v67;
    v133[12] = v109;
    v133[13] = a3;
    v117 = v133 + 15;
    v134 = v133 - (v115 - v129);
    v133[14] = v147;
    memcpy(v134, v129, v115 - v129);
    *(v145 + 80) = v134;
    *(v145 + 88) = v117;
    *(v145 + 96) = 0;
    if (v129)
    {
      operator delete(v129);
    }
  }

  *(v118 + 88) = v117;
LABEL_170:
  result = v149;
  v149 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_298C0BEEC(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = *(result + 88);
  v9 = a5[59];
  if (v9 == v8)
  {
    v62 = *(result + 80);
  }

  else
  {
    v10 = v9[1];
    v11 = v9[3] + v10;
    if (v10 <= a2 && v11 > a2)
    {
      goto LABEL_7;
    }

    if (v10 > a2)
    {
      v8 = a5[59];
    }

    if (v11 <= a2)
    {
      v62 = a5[59];
    }

    else
    {
      v62 = *(result + 80);
    }
  }

  if (v8 != v62)
  {
    v63 = 0xEEEEEEEEEEEEEEEFLL * (v8 - v62);
    v64 = v63 >> 1;
    v65 = &v62[15 * (v63 >> 1)];
    v66 = v65[1];
    v67 = v65 + 15;
    v68 = v63 + ~(v63 >> 1);
    if (v66 <= a2)
    {
      v8 = v67;
    }

    else
    {
      v8 = v62;
    }

    if (v66 <= a2)
    {
      v64 = v68;
    }

    while (v64)
    {
      v74 = v64 >> 1;
      v75 = &v8[15 * (v64 >> 1)];
      v76 = v75[1];
      v77 = v75 + 15;
      v64 += ~(v64 >> 1);
      if (v76 > a2)
      {
        v64 = v74;
      }

      else
      {
        v8 = v77;
      }
    }
  }

  v9 = v8 - 15;
LABEL_7:
  if (a3)
  {
    v13 = a5 + 45;
    v79 = result;
    while (1)
    {
      if (*(result + 88) == v9)
      {
        return result;
      }

      a5[59] = v9;
      v14 = *v9;
      v15 = a5[42];
      v80 = a2;
      if (v15)
      {
        v16 = &v13[3 * a5[43]];
        if (*v16 == v14)
        {
          *(v16 + 8) = -1;
          v34 = v16 + 1;
          goto LABEL_50;
        }
      }

      v17 = 0x9DDFEA08EB382D69 * ((8 * (*v9 & 0x1FFFFFFF) + 8) ^ HIDWORD(*v9));
      v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v17 >> 47) ^ v17);
      v19 = v18 ^ (v18 >> 47);
      v20 = 0x9DDFEA08EB382D69 * v19;
      v21 = a5[55];
      if (v21)
      {
        v22 = vcnt_s8(v21);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] <= 1uLL)
        {
          v23 = (*&v21 - 1) & v20;
        }

        else
        {
          v23 = 0x9DDFEA08EB382D69 * v19;
          if (v20 >= *&v21)
          {
            v23 = v20 % *&v21;
          }
        }

        v24 = *(a5[54] + 8 * v23);
        if (v24)
        {
          v25 = *v24;
          if (v25)
          {
            if (v22.u32[0] < 2uLL)
            {
              v59 = *&v21 - 1;
              while (1)
              {
                v57 = v25[1];
                if (v57 == v20)
                {
                  if (v25[2] == v14)
                  {
                    goto LABEL_84;
                  }
                }

                else if ((v57 & v59) != v23)
                {
                  goto LABEL_18;
                }

                v25 = *v25;
                if (!v25)
                {
                  goto LABEL_18;
                }
              }
            }

            do
            {
              v40 = v25[1];
              if (v40 == v20)
              {
                if (v25[2] == v14)
                {
LABEL_84:
                  v60 = v25[3];
                  a5[43] = v60;
                  v61 = &v13[3 * v60];
                  *(v61 + 8) = -1;
                  v34 = v61 + 1;
                  goto LABEL_50;
                }
              }

              else
              {
                if (v40 >= *&v21)
                {
                  v40 %= *&v21;
                }

                if (v40 != v23)
                {
                  break;
                }
              }

              v25 = *v25;
            }

            while (v25);
          }
        }
      }

LABEL_18:
      v26 = a5[44];
      if (v15 == 3)
      {
        v27 = -1;
        v28 = a5[44];
        v29 = v28;
        while (1)
        {
          v30 = &v13[3 * v28];
          v31 = *(v30 + 8);
          *(v30 + 8) >>= 1;
          if (v31 < 2)
          {
            break;
          }

          if (v31 >> 1 < v27)
          {
            v27 = v31 >> 1;
            v29 = v28;
          }

          v28 = (v28 + 1) % 3;
          a5[44] = v28;
          if (v28 == v26)
          {
            a5[44] = v29;
            v30 = &v13[3 * v29];
            break;
          }
        }

        sub_298C0FB94(a5 + 54, *v30);
        --a5[42];
        v26 = a5[44];
      }

      v78 = v7;
      v32 = &v13[3 * v26];
      *v32 = v14;
      v34 = v32 + 1;
      v33 = v32[1];
      v32[1] = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
        v34 = v32 + 1;
        v26 = a5[44];
      }

      *(v32 + 8) = -1;
      v35 = a5[55];
      if (!*&v35)
      {
        goto LABEL_34;
      }

      v36 = vcnt_s8(v35);
      v36.i16[0] = vaddlv_u8(v36);
      if (v36.u32[0] <= 1uLL)
      {
        v37 = (*&v35 - 1) & v20;
      }

      else
      {
        v37 = v20;
        if (v20 >= *&v35)
        {
          v37 = v20 % *&v35;
        }
      }

      v38 = *(a5[54] + 8 * v37);
      if (!v38 || (v39 = *v38) == 0)
      {
LABEL_34:
        operator new();
      }

      if (v36.u32[0] < 2uLL)
      {
        while (1)
        {
          v58 = v39[1];
          if (v58 == v20)
          {
            if (v39[2] == v14)
            {
              goto LABEL_85;
            }
          }

          else if ((v58 & (*&v35 - 1)) != v37)
          {
            goto LABEL_34;
          }

          v39 = *v39;
          if (!v39)
          {
            goto LABEL_34;
          }
        }
      }

      while (1)
      {
        v41 = v39[1];
        if (v41 == v20)
        {
          break;
        }

        if (v41 >= *&v35)
        {
          v41 %= *&v35;
        }

        if (v41 != v37)
        {
          goto LABEL_34;
        }

LABEL_43:
        v39 = *v39;
        if (!v39)
        {
          goto LABEL_34;
        }
      }

      if (v39[2] != v14)
      {
        goto LABEL_43;
      }

LABEL_85:
      a2 = v80;
      v39[3] = v26;
      v42 = a5[44];
      ++a5[42];
      a5[43] = v42;
      a5[44] = (v42 + 1) % 3uLL;
      v7 = v78;
LABEL_50:
      if (!*v34)
      {
        v69 = a2;
        v70 = v34;
        (*(**v9 + 24))(&v81);
        v71 = v81;
        v81 = 0;
        v72 = *v70;
        *v70 = v71;
        if (v72)
        {
          (*(*v72 + 8))(v72);
          v73 = v81;
          v81 = 0;
          if (v73)
          {
            (*(*v73 + 8))(v73);
          }
        }

        a2 = v69;
        v34 = v70;
      }

      v43 = a2 - v9[1];
      v44 = v9[3] - v43;
      if (v44)
      {
        break;
      }

      a2 = v80;
LABEL_67:
      v9 += 15;
      result = v79;
      if (!v7)
      {
        return result;
      }
    }

    if (v44 >= v7)
    {
      v45 = v7;
    }

    else
    {
      v45 = v9[3] - v43;
    }

    v46 = v9[2] + v43;
    v47 = *v34;
    v48 = 12 * v46;
    v49 = v45;
    while (1)
    {
      v50 = v47[3];
      if (v50 <= v46)
      {
        if (v47[4] + v50 > v46)
        {
          goto LABEL_61;
        }

        v51 = v47[8];
        v52 = v46;
      }

      else
      {
        v51 = v47[8];
        if (v46 >= v51)
        {
          v52 = v46 - v51 + 1;
        }

        else
        {
          v52 = 0;
        }
      }

      sub_298C0EA74(v47 + 1, v52, v51);
      v50 = v47[3];
LABEL_61:
      v53 = v47[5] - 12 * v50 + v48;
      v54 = *v53;
      LODWORD(v53) = *(v53 + 8);
      v81 = v54;
      v82 = v53;
      v55 = *(a4 + 8);
      if (v55 >= *(a4 + 16))
      {
        v56 = sub_298C0FE00(a4, &v81);
      }

      else
      {
        *v55 = v81;
        *(v55 + 8) = v82;
        v56 = v55 + 12;
      }

      *(a4 + 8) = v56;
      ++v46;
      v48 += 12;
      if (!--v49)
      {
        v7 -= v45;
        a2 = v45 + v80;
        goto LABEL_67;
      }
    }
  }

  return result;
}

uint64_t sub_298C0C734(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = *(result + 88);
  v9 = *(a5 + 472);
  if (v9 == v8)
  {
    v10 = *(result + 80);
  }

  else
  {
    v41 = v9[4];
    v42 = v9[6] + v41;
    if (v41 <= a2 && v42 > a2)
    {
      goto LABEL_11;
    }

    if (v41 > a2)
    {
      v8 = *(a5 + 472);
    }

    if (v42 <= a2)
    {
      v10 = *(a5 + 472);
    }

    else
    {
      v10 = *(result + 80);
    }
  }

  if (v8 != v10)
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * (v8 - v10);
    v12 = v11 >> 1;
    v13 = &v10[15 * (v11 >> 1)];
    v14 = v13[4];
    v15 = v13 + 15;
    v16 = v11 + ~(v11 >> 1);
    if (v14 <= a2)
    {
      v8 = v15;
    }

    else
    {
      v8 = v10;
    }

    if (v14 <= a2)
    {
      v12 = v16;
    }

    while (v12)
    {
      v44 = v12 >> 1;
      v45 = &v8[15 * (v12 >> 1)];
      v46 = v45[4];
      v47 = v45 + 15;
      v12 += ~(v12 >> 1);
      if (v46 > a2)
      {
        v12 = v44;
      }

      else
      {
        v8 = v47;
      }
    }
  }

  v9 = v8 - 15;
LABEL_11:
  if (a3)
  {
    v48 = result;
    while (1)
    {
      if (v9 == *(result + 88))
      {
        return result;
      }

      *(a5 + 472) = v9;
      v17 = sub_298C0F63C((a5 + 336), *v9);
      if (!*v17)
      {
        v36 = v7;
        v37 = v17;
        (*(**v9 + 24))(&v52, *v9);
        v38 = v52;
        *&v52 = 0;
        v39 = *v37;
        *v37 = v38;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }

        v40 = v52;
        *&v52 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }

        v17 = v37;
        v7 = v36;
      }

      v51 = v7;
      v18 = v7 - v9[4];
      v19 = v9[6] - v18;
      if (v19)
      {
        break;
      }

LABEL_31:
      result = v48;
      v9 += 15;
      if (!v6)
      {
        return result;
      }
    }

    v50 = v6;
    if (v19 >= v6)
    {
      v20 = v6;
    }

    else
    {
      v20 = v9[6] - v18;
    }

    v21 = v9[5] + v18;
    v22 = *v17;
    v23 = 24 * v21;
    v24 = v20;
    while (1)
    {
      v26 = v9[1];
      v25 = v9[2];
      v27 = v22[11];
      if (v27 <= v21)
      {
        if (v22[12] + v27 > v21)
        {
          goto LABEL_25;
        }

        v28 = v22[16];
        v29 = v21;
      }

      else
      {
        v28 = v22[16];
        if (v21 >= v28)
        {
          v29 = v21 - v28 + 1;
        }

        else
        {
          v29 = 0;
        }
      }

      sub_298C0E9F0(v22 + 9, v29, v28);
      v27 = v22[11];
LABEL_25:
      v30 = (v22[13] - 24 * v27 + v23);
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      *&v52 = v31;
      *(&v52 + 1) = v26 - v25 + v32;
      v53 = v33;
      v34 = *(a4 + 8);
      if (v34 >= *(a4 + 16))
      {
        v35 = sub_298C0FF18(a4, &v52);
      }

      else
      {
        *v34 = v52;
        *(v34 + 16) = v53;
        v35 = v34 + 24;
      }

      *(a4 + 8) = v35;
      ++v21;
      v23 += 24;
      if (!--v24)
      {
        v6 = v50 - v20;
        v7 = v20 + v51;
        goto LABEL_31;
      }
    }
  }

  return result;
}

__n128 sub_298C0CA48(__n128 *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v8 = a1[5].n128_u64[1];
  v9 = *(a5 + 472);
  if (v9 == v8)
  {
    v10 = a1[5].n128_u64[0];
  }

  else
  {
    v46 = v9[7];
    v47 = v9[9] + v46;
    if (v46 <= a2 && v47 > a2)
    {
      goto LABEL_11;
    }

    if (v46 > a2)
    {
      v8 = *(a5 + 472);
    }

    if (v47 <= a2)
    {
      v10 = *(a5 + 472);
    }

    else
    {
      v10 = a1[5].n128_u64[0];
    }
  }

  if (v8 != v10)
  {
    v11 = 0xEEEEEEEEEEEEEEEFLL * (v8 - v10);
    v12 = v11 >> 1;
    v13 = &v10[15 * (v11 >> 1)];
    v14 = v13[7];
    v15 = v13 + 15;
    v16 = v11 + ~(v11 >> 1);
    if (v14 <= a2)
    {
      v8 = v15;
    }

    else
    {
      v8 = v10;
    }

    if (v14 <= a2)
    {
      v12 = v16;
    }

    while (v12)
    {
      v49 = v12 >> 1;
      v50 = &v8[15 * (v12 >> 1)];
      v51 = v50[7];
      v52 = v50 + 15;
      v12 += ~(v12 >> 1);
      if (v51 > a2)
      {
        v12 = v49;
      }

      else
      {
        v8 = v52;
      }
    }
  }

  v9 = v8 - 15;
LABEL_11:
  if (a3)
  {
    v17 = a2;
    while (v9 != v7[5].n128_u64[1])
    {
      *(a5 + 472) = v9;
      v18 = sub_298C0F63C((a5 + 336), *v9);
      if (!*v18)
      {
        v42 = v18;
        (*(**v9 + 24))(&v61, *v9);
        v18 = v42;
        v43 = v61;
        *&v61 = 0;
        v44 = *v42;
        *v42 = v43;
        if (v44)
        {
          (*(*v44 + 8))(v44);
          v18 = v42;
        }

        v45 = v61;
        *&v61 = 0;
        if (v45)
        {
          (*(*v45 + 8))(v45);
          v18 = v42;
        }
      }

      v20 = v17 - v9[7];
      v21 = v9[9] - v20;
      if (v21)
      {
        v57 = v17;
        v58 = v6;
        if (v21 >= v6)
        {
          v22 = v6;
        }

        else
        {
          v22 = v9[9] - v20;
        }

        v23 = v9[8] + v20;
        v24 = *v18;
        v25 = 56 * v23;
        v56 = v22;
        while (1)
        {
          v27 = v9[1];
          v26 = v9[2];
          v28 = v9[4];
          v29 = v9[5];
          v31 = v9[10];
          v30 = v9[11];
          v32 = v24[19];
          if (v32 <= v23)
          {
            if (v24[20] + v32 > v23)
            {
              goto LABEL_25;
            }

            v60 = v9[2];
            v33 = v24[24];
            v34 = v23;
          }

          else
          {
            v60 = v9[2];
            v33 = v24[24];
            if (v33 <= v23)
            {
              v34 = v23 - v33 + 1;
            }

            else
            {
              v34 = 0;
            }
          }

          sub_298C0EAF8(v24 + 17, v34, v33);
          v32 = v24[19];
          v26 = v60;
LABEL_25:
          v35 = v24[21] - 56 * v32 + v25;
          v36 = *(v35 + 16);
          v37 = *(v35 + 24);
          v38 = *(v35 + 32);
          *&v63[8] = *(v35 + 40);
          v61 = *v35;
          *&v62 = v28 - v29 + v36;
          *(&v62 + 1) = v27 - v26 + v37;
          *v63 = v31 - v30 + v38;
          v5 = a4;
          v39 = *(a4 + 8);
          if (v39 >= *(a4 + 16))
          {
            v40 = sub_298C0F2C8(a4, &v61);
          }

          else
          {
            *v39 = v61;
            *(v39 + 16) = v62;
            result.n128_u64[0] = *v63;
            *(v39 + 32) = *v63;
            *(v39 + 48) = *&v63[16];
            v40 = v39 + 56;
          }

          *(a4 + 8) = v40;
          ++v23;
          v25 += 56;
          if (!--v22)
          {
            v6 = v58 - v56;
            v17 = v56 + v57;
            v7 = a1;
            break;
          }
        }
      }

      v9 += 15;
      if (!v6)
      {
        break;
      }
    }

    if (!a2 && (v7[4].n128_u8[0] & 1) != 0)
    {
      v41 = *v5;
      if ((*v5)->n128_u64[0] == -1 && v41->n128_u64[1] == -1 && v41[2].n128_u64[1] == -1 && v41[3].n128_u64[0] == -1)
      {
        result = v7[3];
        *v41 = result;
      }
    }
  }

  return result;
}

void sub_298C0CE08(uint64_t a1, unint64_t a2, unint64_t a3, void **a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = *(a1 + 88);
  v11 = *(a5 + 472);
  if (v11 == v10)
  {
    v15 = *(a1 + 80);
    v16 = v10 - v15;
    if (v10 == v15)
    {
LABEL_20:
      v11 = v10 - 15;
      goto LABEL_21;
    }

LABEL_14:
    v17 = 0xEEEEEEEEEEEEEEEFLL * (v16 >> 3);
    do
    {
      v18 = v17 >> 1;
      v19 = &v15[15 * (v17 >> 1)];
      v20 = v19[10];
      v21 = v19 + 15;
      v17 += ~(v17 >> 1);
      if (v20 > a2)
      {
        v17 = v18;
      }

      else
      {
        v15 = v21;
      }
    }

    while (v17);
    v10 = v15;
    goto LABEL_20;
  }

  v12 = v11[10];
  v13 = v11[12] + v12;
  if (v12 > a2 || v13 <= a2)
  {
    if (v12 > a2)
    {
      v10 = *(a5 + 472);
    }

    if (v13 <= a2)
    {
      v15 = *(a5 + 472);
    }

    else
    {
      v15 = *(a1 + 80);
    }

    v16 = v10 - v15;
    if (v10 == v15)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_21:
  if (a3)
  {
    do
    {
      if (v11 == *(v9 + 88))
      {
        return;
      }

      *(v5 + 472) = v11;
      v22 = sub_298C0F63C((v5 + 336), *v11);
      if (!*v22)
      {
        (*(**v11 + 24))(&v58);
        v23 = v58;
        v58 = 0;
        v24 = *v22;
        *v22 = v23;
        if (v24)
        {
          (*(*v24 + 8))(v24);
          v25 = v58;
          v58 = 0;
          if (v25)
          {
LABEL_58:
            (*(*v25 + 8))(v25);
            v26 = v8 - v11[10];
            v27 = v11[12] - v26;
            if (!v27)
            {
              goto LABEL_24;
            }

LABEL_30:
            v54 = v8;
            if (v27 >= v7)
            {
              v28 = v7;
            }

            else
            {
              v28 = v27;
            }

            v29 = v11[11] + v26;
            v30 = *v22;
            v55 = v7 - v28;
            v56 = v11;
            v31 = 16 * v29;
            v53 = v28;
            while (2)
            {
              v32 = v11[4];
              v33 = v11[5];
              v34 = *(v30 + 280);
              if (v34 <= v29)
              {
                if (*(v30 + 288) + v34 <= v29)
                {
                  v35 = *(v30 + 320);
                  v34 = v29;
                  goto LABEL_42;
                }

                v36 = *(v30 + 296);
              }

              else
              {
                v35 = *(v30 + 320);
                if (v35 <= v29)
                {
                  v34 = v29 - v35 + 1;
                }

                else
                {
                  v34 = 0;
                }

LABEL_42:
                *(v30 + 304) = *(v30 + 296);
                (*(**(v30 + 264) + 64))(*(v30 + 264), v34, v35, v30 + 296, *(v30 + 272));
                v36 = *(v30 + 296);
                v37 = (*(v30 + 304) - v36) >> 4;
                *(v30 + 280) = v34;
                *(v30 + 288) = v37;
              }

              v38 = (v36 - 16 * v34 + v31);
              v39 = v38[1];
              v40 = *v38 + v32 - v33;
              v42 = v6[1];
              v41 = v6[2];
              if (v42 < v41)
              {
                *v42 = v40;
                *(v42 + 1) = v39;
                v6[1] = v42 + 16;
                ++v29;
                v31 += 16;
                if (!--v28)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                v43 = *v6;
                v44 = v42 - *v6;
                v45 = v44 >> 4;
                v46 = (v44 >> 4) + 1;
                if (v46 >> 60)
                {
                  sub_298ADDDA0();
                }

                v47 = v41 - v43;
                if (v47 >> 3 > v46)
                {
                  v46 = v47 >> 3;
                }

                if (v47 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v48 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  if (!(v48 >> 60))
                  {
                    operator new();
                  }

                  sub_298ADDDA0();
                }

                v49 = (16 * v45);
                *v49 = v40;
                v49[1] = v39;
                v50 = 16 * v45 + 16;
                memcpy(0, v43, v44);
                *a4 = 0;
                a4[1] = v50;
                a4[2] = 0;
                if (v43)
                {
                  operator delete(v43);
                }

                v11 = v56;
                v6 = a4;
                a4[1] = v50;
                ++v29;
                v31 += 16;
                if (!--v28)
                {
LABEL_23:
                  v8 = v53 + v54;
                  v9 = a1;
                  v5 = a5;
                  v7 = v55;
                  goto LABEL_24;
                }
              }

              continue;
            }
          }
        }

        else
        {
          v25 = v58;
          v58 = 0;
          if (v25)
          {
            goto LABEL_58;
          }
        }
      }

      v26 = v8 - v11[10];
      v27 = v11[12] - v26;
      if (v27)
      {
        goto LABEL_30;
      }

LABEL_24:
      v11 += 15;
    }

    while (v7);
  }
}

void *sub_298C0D1FC(void *result, uint64_t a2)
{
  v2 = result + 6146;
  v3 = result + 2;
  v4 = result[6148];
  if (v4 == 4096)
  {
    result[96273] = 0;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = result[6147];
    v7 = v3 + 12 * (v6 & 0xFFF);
    *v7 = *a2;
    *(v7 + 2) = v5;
    ++v4;
    result[6147] = v6 + 1;
    result[6148] = v4;
    result[96273] = v7;
    if (v4 < 0x841)
    {
      return result;
    }
  }

  v8 = result[1];
  v9 = *v2;
  v10 = v3 + 12 * *v2;
  if ((4096 - *v2) >= 0x800)
  {
    v11 = 2048;
  }

  else
  {
    v11 = 4096 - *v2;
  }

  v2[2] = v4 - v11;
  *v2 = (v11 + v9) & 0xFFF;
  return (*(*v8 + 72))(v8, v10);
}

__n128 sub_298C0D2BC(void *a1)
{
  v2 = a1[1];
  v3 = a1[6148];
  if (v3 + v2[1])
  {
    v4 = a1 + 34821;
    v5 = a1[34823];
    if (!(v2[3] + v5))
    {
      *&v18 = -1;
      *(&v18 + 1) = -1;
      v19.n128_u64[0] = 0;
      v19.n128_u64[1] = -1;
      v6 = a1 + 6149;
      if (v5 == 4096)
      {
        a1[96274] = 0;
      }

      else
      {
        v11 = a1[34822];
        v12 = &v6[7 * (v11 & 0xFFF)];
        *v12 = v18;
        *(v12 + 1) = 0uLL;
        result = v19;
        *(v12 + 2) = v19;
        v12[6] = -1;
        ++v5;
        a1[34822] = v11 + 1;
        a1[34823] = v5;
        a1[96274] = v12;
        if (v5 < 0x841)
        {
          return result;
        }
      }

      v7 = *v4;
      if (*v4 == 4096)
      {
LABEL_7:
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v8 = &v6[7 * v7];
        if (4096 - v7 >= v5)
        {
          v13 = v5;
        }

        else
        {
          v13 = 4096 - v7;
        }

        v14 = v2[1] + v3;
        v15 = &a1[7 * v13 + 6145 + 7 * v7];
        while (1)
        {
          v16 = *v15;
          v15 -= 7;
          if (v16 < v14)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_7;
          }
        }

        if (v5 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v5;
        }

        if (4096 - v7 >= v17)
        {
          v9 = v17;
        }

        else
        {
          v9 = 4096 - v7;
        }

        v4[2] = v5 - v9;
        *v4 = (v9 + v7) & 0xFFF;
      }

      (*(*v2 + 88))(v2, v8, v9);
    }
  }

  return result;
}

void *sub_298C0D43C(void *result, uint64_t a2)
{
  v2 = result + 88075;
  v3 = result + 75787;
  v4 = result[88077];
  if (v4 == 4096)
  {
    result[96275] = 0;
  }

  else
  {
    v5 = result[88076];
    v6 = &v3[3 * (v5 & 0xFFF)];
    v7 = *(a2 + 16);
    *v6 = *a2;
    v6[2] = v7;
    ++v4;
    result[88076] = v5 + 1;
    result[88077] = v4;
    result[96275] = v6;
    if (v4 < 0x841)
    {
      return result;
    }
  }

  v8 = result[1];
  v9 = *v2;
  v10 = &v3[3 * *v2];
  if ((4096 - *v2) >= 0x800)
  {
    v11 = 2048;
  }

  else
  {
    v11 = 4096 - *v2;
  }

  v2[2] = v4 - v11;
  *v2 = (v11 + v9) & 0xFFF;
  return (*(*v8 + 80))(v8, v10);
}

uint64_t sub_298C0D500(uint64_t result)
{
  v1 = result;
  v2 = (result + 770160);
  v3 = (result + 704600);
  v4 = (result + 606272);
  v5 = (result + 278568);
  v6 = (result + 49168);
  for (i = *(result + 49184); i; i = v6[2])
  {
    v35 = *(v1 + 8);
    v36 = *v6;
    v37 = v1 + 16 + 12 * *v6;
    if (4096 - *v6 >= i)
    {
      v38 = i;
    }

    else
    {
      v38 = 4096 - *v6;
    }

    v6[2] = i - v38;
    *v6 = (v38 + v36) & 0xFFF;
    result = (*(*v35 + 72))(v35, v37);
  }

  do
  {
    v8 = v5[2];
    if (!v8)
    {
      break;
    }

    v9 = *v5;
    v10 = *(v1 + 8);
    if (*v5 == 4096)
    {
      v14 = 0;
    }

    else
    {
      v11 = 4096 - v9 >= v8 ? v5[2] : 4096 - v9;
      v12 = v6[2] + v10[1];
      v13 = *(v1 + 49192 + 56 * v9 - 32 + 56 * v11);
      v14 = v13 >= v12;
      if (v13 >= v12)
      {
        v16 = (v1 + 49104 + 56 * v11 + 56 * v9);
        while (--v11)
        {
          v17 = *v16;
          v16 -= 7;
          if (v17 < v12)
          {
            goto LABEL_8;
          }
        }

        v14 = 1;
      }

      else
      {
LABEL_8:
        if (v8 < v11)
        {
          v11 = v5[2];
        }

        v15 = 4096 - v9 >= v11 ? v11 : 4096 - v9;
        v5[2] = v8 - v15;
        *v5 = (v15 + v9) & 0xFFF;
      }
    }

    result = (*(*v10 + 88))(v10);
  }

  while (!v14);
  for (j = v3[2]; j; j = v3[2])
  {
    v31 = *(v1 + 8);
    v32 = *v3;
    v33 = v1 + 606296 + 24 * *v3;
    if (4096 - *v3 >= j)
    {
      v34 = j;
    }

    else
    {
      v34 = 4096 - *v3;
    }

    v3[2] = j - v34;
    *v3 = (v34 + v32) & 0xFFF;
    result = (*(*v31 + 80))(v31, v33);
  }

  v19 = v4[2];
  if (v19)
  {
    v20 = *(v1 + 8);
    v21 = *v4;
    v22 = v1 + 278592 + 80 * *v4;
    v23 = 4096 - *v4 >= v19 ? v4[2] : 4096 - *v4;
    v4[2] = v19 - v23;
    *v4 = (v23 + v21) & 0xFFF;
    result = (*(*v20 + 96))(v20, v22);
    for (k = v4[2]; k; k = v4[2])
    {
      v39 = *(v1 + 8);
      v40 = *v4;
      v41 = v1 + 278592 + 80 * *v4;
      if (4096 - *v4 >= k)
      {
        v42 = k;
      }

      else
      {
        v42 = 4096 - *v4;
      }

      v4[2] = k - v42;
      *v4 = (v42 + v40) & 0xFFF;
      result = (*(*v39 + 96))(v39, v41);
    }
  }

  v25 = v2[2];
  if (v25)
  {
    v26 = *(v1 + 8);
    v27 = *v2;
    v28 = v1 + 704624 + 16 * *v2;
    v29 = 4096 - *v2 >= v25 ? v2[2] : 4096 - *v2;
    v2[2] = v25 - v29;
    *v2 = (v29 + v27) & 0xFFF;
    result = (*(*v26 + 104))(v26, v28);
    for (m = v2[2]; m; m = v2[2])
    {
      v43 = *(v1 + 8);
      v44 = *v2;
      v45 = v1 + 704624 + 16 * *v2;
      if (4096 - *v2 >= m)
      {
        v46 = m;
      }

      else
      {
        v46 = 4096 - *v2;
      }

      v2[2] = m - v46;
      *v2 = (v46 + v44) & 0xFFF;
      result = (*(*v43 + 104))(v43, v45);
    }
  }

  return result;
}

void *sub_298C0D8E4(void *result)
{
  *result = &unk_2A1F1F320;
  v1 = result[19];
  result[19] = 0;
  if (v1)
  {
    v6 = result;
    (*(*v1 + 16))(v1);
    result = v6;
  }

  v2 = result[17];
  result[17] = 0;
  if (v2)
  {
    v7 = result;
    (*(*v2 + 16))(v2);
    result = v7;
  }

  v3 = result[15];
  result[15] = 0;
  if (v3)
  {
    v8 = result;
    (*(*v3 + 16))(v3);
    result = v8;
  }

  v4 = result[13];
  result[13] = 0;
  if (v4)
  {
    v9 = result;
    (*(*v4 + 16))(v4);
    result = v9;
  }

  v5 = result[11];
  result[11] = 0;
  if (v5)
  {
    v10 = result;
    (*(*v5 + 16))(v5);
    return v10;
  }

  return result;
}

void sub_298C0DA5C(void *a1)
{
  *a1 = &unk_2A1F1F320;
  v1 = a1[19];
  a1[19] = 0;
  if (v1)
  {
    v6 = a1;
    (*(*v1 + 16))(v1);
    a1 = v6;
  }

  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    v7 = a1;
    (*(*v2 + 16))(v2);
    a1 = v7;
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    v8 = a1;
    (*(*v3 + 16))(v3);
    a1 = v8;
  }

  v4 = a1[13];
  a1[13] = 0;
  if (v4)
  {
    v9 = a1;
    (*(*v4 + 16))(v4);
    a1 = v9;
  }

  v5 = a1[11];
  a1[11] = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298C0DBF4(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  sub_298C0E204(&v1, *(a1 + 76));
}

void *sub_298C0DDC8(void *a1)
{
  *a1 = &unk_2A1F1F2A0;
  v1 = a1[20];
  a1[20] = 0;
  if (v1)
  {
    v2 = a1;
    sub_298AE9B00(v1 + 40, *(v1 + 48));
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x29C2945F0](v1, 0x10A0C40616DDAE8);
    a1 = v2;
  }

  return sub_298C0E08C(a1);
}

void sub_298C0DE78(void *a1)
{
  *a1 = &unk_2A1F1F2A0;
  v2 = a1[20];
  a1[20] = 0;
  if (v2)
  {
    sub_298AE9B00(v2 + 40, *(v2 + 48));
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x29C2945F0](v2, 0x10A0C40616DDAE8);
  }

  sub_298C0E08C(a1);

  JUMPOUT(0x29C2945F0);
}

void *sub_298C0DF3C(void *result)
{
  *result = &unk_2A1F1F220;
  v2 = (result + 13);
  v1 = result[13];
  if (v1)
  {
    v3 = result;
    sub_298C0E60C((result + 13), v1);
    operator delete(*v2);
    result = v3;
  }

  v4 = result[10];
  if (v4)
  {
    result[11] = v4;
    v5 = result;
    operator delete(v4);
    return v5;
  }

  return result;
}

void sub_298C0DFB8(void *a1)
{
  *a1 = &unk_2A1F1F220;
  v2 = (a1 + 13);
  v1 = a1[13];
  if (v1)
  {
    v3 = a1;
    sub_298C0E60C((a1 + 13), v1);
    operator delete(*v2);
    a1 = v3;
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C0E054(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  if (*(result + 64) == 1)
  {
    *(result + 64) = 0;
  }

  return result;
}

void *sub_298C0E08C(void *result)
{
  *result = &unk_2A1F1F320;
  v1 = result[19];
  result[19] = 0;
  if (v1)
  {
    v6 = result;
    (*(*v1 + 16))(v1);
    result = v6;
  }

  v2 = result[17];
  result[17] = 0;
  if (v2)
  {
    v7 = result;
    (*(*v2 + 16))(v2);
    result = v7;
  }

  v3 = result[15];
  result[15] = 0;
  if (v3)
  {
    v8 = result;
    (*(*v3 + 16))(v3);
    result = v8;
  }

  v4 = result[13];
  result[13] = 0;
  if (v4)
  {
    v9 = result;
    (*(*v4 + 16))(v4);
    result = v9;
  }

  v5 = result[11];
  result[11] = 0;
  if (v5)
  {
    v10 = result;
    (*(*v5 + 16))(v5);
    return v10;
  }

  return result;
}

void sub_298C0E204(uint64_t a1, int a2)
{
  v2[5] = *MEMORY[0x29EDCA608];
  if (a2 == 4)
  {
    operator new();
  }

  if (a2 != 1)
  {
    sub_298C0E204(v2, dword_2A13C2B68);
    sub_298C3C108(1);
    sub_298C0E4A8();
  }

  operator new();
}

uint64_t sub_298C0E5D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1F178;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C0E60C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v4 = *--v2;
    v3 = v4;
    *v2 = 0;
    if (v4)
    {
      v5 = result;
      v6 = a2;
      (*(*v3 + 8))(v3);
      result = v5;
      a2 = v6;
    }
  }

  *(result + 8) = a2;
  return result;
}

void *sub_298C0E688(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] <= 1uLL)
  {
    v8 = v5 & (*&v6 - 1);
  }

  else
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_21:
    operator new();
  }

  if (v7.u32[0] >= 2uLL)
  {
    while (1)
    {
      v11 = result[1];
      if (v11 == v5)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }

        if (v11 != v8)
        {
          goto LABEL_21;
        }
      }

      result = *result;
      if (!result)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v5)
    {
      break;
    }

    if ((v12 & (*&v6 - 1)) != v8)
    {
      goto LABEL_21;
    }

LABEL_14:
    result = *result;
    if (!result)
    {
      goto LABEL_21;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_298C0E9F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 4;
  a1[5] = a1[4];
  result = (*(**a1 + 40))(*a1, a2, a3, a1 + 4, a1[1]);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[5] - *v5) >> 3);
  a1[2] = a2;
  a1[3] = v7;
  return result;
}

uint64_t sub_298C0EA74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 4;
  a1[5] = a1[4];
  result = (*(**a1 + 32))(*a1, a2, a3, a1 + 4, a1[1]);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[5] - *v5) >> 2);
  a1[2] = a2;
  a1[3] = v7;
  return result;
}

uint64_t sub_298C0EAF8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 4;
  a1[5] = a1[4];
  result = (*(**a1 + 48))(*a1, a2, a3, a1 + 4, a1[1]);
  v7 = 0x6DB6DB6DB6DB6DB7 * ((a1[5] - *v5) >> 3);
  a1[2] = a2;
  a1[3] = v7;
  return result;
}

void *sub_298C0EB84(void *a1)
{
  *a1 = &unk_2A1F1F1C0;
  v1 = a1[71];
  a1[71] = 0;
  if (v1)
  {
    v7 = a1;
    MEMORY[0x29C2945C0](v1, 0x1000C8077774924);
    a1 = v7;
  }

  v2 = a1[65];
  a1[65] = 0;
  if (v2)
  {
    v8 = a1;
    MEMORY[0x29C2945C0](v2, 0x1000C8077774924);
    a1 = v8;
  }

  v3 = a1[59];
  a1[59] = 0;
  if (v3)
  {
    v9 = a1;
    MEMORY[0x29C2945C0](v3, 0x1000C8077774924);
    a1 = v9;
  }

  v4 = a1[53];
  a1[53] = 0;
  if (v4)
  {
    v10 = a1;
    MEMORY[0x29C2945C0](v4, 0x1000C8077774924);
    a1 = v10;
  }

  v5 = a1[47];
  a1[47] = 0;
  if (v5)
  {
    v11 = a1;
    MEMORY[0x29C2945C0](v5, 0x1000C8077774924);
    a1 = v11;
  }

  return sub_298C0EE44(a1);
}

void sub_298C0ECBC(void *a1)
{
  *a1 = &unk_2A1F1F1C0;
  v1 = a1[71];
  a1[71] = 0;
  if (v1)
  {
    v6 = a1;
    MEMORY[0x29C2945C0](v1, 0x1000C8077774924);
    a1 = v6;
  }

  v2 = a1[65];
  a1[65] = 0;
  if (v2)
  {
    v7 = a1;
    MEMORY[0x29C2945C0](v2, 0x1000C8077774924);
    a1 = v7;
  }

  v3 = a1[59];
  a1[59] = 0;
  if (v3)
  {
    v8 = a1;
    MEMORY[0x29C2945C0](v3, 0x1000C8077774924);
    a1 = v8;
  }

  v4 = a1[53];
  a1[53] = 0;
  if (v4)
  {
    v9 = a1;
    MEMORY[0x29C2945C0](v4, 0x1000C8077774924);
    a1 = v9;
  }

  v5 = a1[47];
  a1[47] = 0;
  if (v5)
  {
    v10 = a1;
    MEMORY[0x29C2945C0](v5, 0x1000C8077774924);
    a1 = v10;
  }

  sub_298C0EE44(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298C0EE0C(void *a1)
{
  sub_298C0EE44(a1);

  JUMPOUT(0x29C2945F0);
}

void *sub_298C0EE44(void *a1)
{
  *a1 = &unk_2A1F1F1E0;
  v2 = a1[37];
  if (v2)
  {
    a1[38] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[21];
  if (v4)
  {
    a1[22] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return a1;
}

char *sub_298C0EEE0(char **a1, char *a2, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v18 = a3 - a2;
    if (v18)
    {
      v19 = result;
      memmove(result, a2, v18);
      result = v19;
    }

    a1[1] = &result[v18];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        v16 += 24;
        v14 += 24;
        v15 += 24;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

char *sub_298C0F0C4(char **a1, char *a2, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    if (v11 <= 0x492492492492492)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
  {
    v20 = a3 - a2;
    if (v20)
    {
      v21 = result;
      memmove(result, a2, v20);
      result = v21;
    }

    a1[1] = &result[v20];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 1);
        v19 = *(v14 + 2);
        *(v16 + 6) = *(v14 + 6);
        *(v16 + 1) = v18;
        *(v16 + 2) = v19;
        *v16 = v17;
        v16 += 56;
        v14 += 56;
        v15 += 56;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_298C0F2C8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x492492492492492)
  {
    sub_298ADDDA0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - v3) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - v3) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - v3) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x492492492492492)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = 8 * ((v2 - *a1) >> 3);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  v10 = 56 * v4 + 56;
  v11 = 56 * v4 - (v2 - v3);
  memcpy((v8 - (v2 - v3)), v3, v2 - v3);
  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v10;
}

void *sub_298C0F400(void *a1)
{
  v2 = a1[56];
  if (v2)
  {
    v3 = *v2;
    operator delete(v2);
    if (v3)
    {
      do
      {
        v9 = *v3;
        operator delete(v3);
        v3 = v9;
      }

      while (v9);
    }
  }

  v4 = a1[54];
  a1[54] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[52];
  a1[52] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[49];
  a1[49] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[46];
  a1[46] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return sub_298C0EE44(a1);
}

void sub_298C0F514(void *a1)
{
  v2 = a1[56];
  if (v2)
  {
    v3 = *v2;
    operator delete(v2);
    if (v3)
    {
      do
      {
        v8 = *v3;
        operator delete(v3);
        v3 = v8;
      }

      while (v8);
    }
  }

  v4 = a1[54];
  a1[54] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[52];
  a1[52] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[49];
  a1[49] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[46];
  a1[46] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_298C0EE44(a1);

  JUMPOUT(0x29C2945F0);
}

void *sub_298C0F63C(void *a1, unint64_t a2)
{
  if (!*a1 || (v4 = &a1[3 * a1[1]], v6 = v4[3], v5 = v4 + 3, v6 != a2))
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = v8 ^ (v8 >> 47);
    v10 = 0x9DDFEA08EB382D69 * v9;
    v11 = a1[13];
    if (v11)
    {
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] <= 1uLL)
      {
        v13 = (*&v11 - 1) & v10;
      }

      else
      {
        v13 = 0x9DDFEA08EB382D69 * v9;
        if (v10 >= *&v11)
        {
          v13 = v10 % *&v11;
        }
      }

      v14 = *(a1[12] + 8 * v13);
      if (v14)
      {
        v15 = *v14;
        if (v15)
        {
          if (v12.u32[0] >= 2uLL)
          {
            while (1)
            {
              v16 = v15[1];
              if (v16 == v10)
              {
                if (v15[2] == a2)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                if (v16 >= *&v11)
                {
                  v16 %= *&v11;
                }

                if (v16 != v13)
                {
                  goto LABEL_17;
                }
              }

              v15 = *v15;
              if (!v15)
              {
                goto LABEL_17;
              }
            }
          }

          v35 = *&v11 - 1;
          do
          {
            v36 = v15[1];
            if (v36 == v10)
            {
              if (v15[2] == a2)
              {
LABEL_55:
                v37 = v15[3];
                a1[1] = v37;
                v38 = &a1[3 * v37];
                *(v38 + 20) = -1;
                return v38 + 4;
              }
            }

            else if ((v36 & v35) != v13)
            {
              break;
            }

            v15 = *v15;
          }

          while (v15);
        }
      }
    }

LABEL_17:
    v17 = a1[2];
    v18 = a1 + 3;
    if (*a1 == 3)
    {
      v19 = -1;
      v20 = a1[2];
      v21 = v20;
      do
      {
        v22 = &v18[3 * v20];
        v23 = *(v22 + 8);
        *(v22 + 8) >>= 1;
        if (v23 < 2)
        {
          goto LABEL_24;
        }

        if (v23 >> 1 < v19)
        {
          v19 = v23 >> 1;
          v21 = v20;
        }

        v20 = (v20 + 1) % 3;
        a1[2] = v20;
      }

      while (v20 != v17);
      a1[2] = v21;
      v22 = &v18[3 * v21];
LABEL_24:
      sub_298C0FB94(a1 + 12, *v22);
      --*a1;
      v17 = a1[2];
    }

    v24 = &v18[3 * v17];
    *v24 = a2;
    v26 = v24 + 1;
    v25 = v24[1];
    v24[1] = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
      v17 = a1[2];
    }

    *(v24 + 8) = -1;
    v27 = a1[13];
    if (!*&v27)
    {
      goto LABEL_43;
    }

    v28 = vcnt_s8(v27);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] <= 1uLL)
    {
      v29 = (*&v27 - 1) & v10;
    }

    else
    {
      v29 = v10;
      if (v10 >= *&v27)
      {
        v29 = v10 % *&v27;
      }
    }

    v30 = *(a1[12] + 8 * v29);
    if (!v30 || (v31 = *v30) == 0)
    {
LABEL_43:
      operator new();
    }

    if (v28.u32[0] >= 2uLL)
    {
      while (1)
      {
        v32 = v31[1];
        if (v32 == v10)
        {
          if (v31[2] == a2)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v32 >= *&v27)
          {
            v32 %= *&v27;
          }

          if (v32 != v29)
          {
            goto LABEL_43;
          }
        }

        v31 = *v31;
        if (!v31)
        {
          goto LABEL_43;
        }
      }
    }

    while (1)
    {
      v39 = v31[1];
      if (v39 == v10)
      {
        if (v31[2] == a2)
        {
LABEL_44:
          v31[3] = v17;
          v33 = a1[2];
          ++*a1;
          a1[1] = v33;
          a1[2] = (v33 + 1) % 3uLL;
          return v26;
        }
      }

      else if ((v39 & (*&v27 - 1)) != v29)
      {
        goto LABEL_43;
      }

      v31 = *v31;
      if (!v31)
      {
        goto LABEL_43;
      }
    }
  }

  *(v5 + 8) = -1;
  return v5 + 1;
}

void sub_298C0FB94(void *a1, unint64_t a2)
{
  v3 = sub_298C0FD14(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = v3[1];
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v5 &= *&v4 - 1;
  }

  else if (v5 >= *&v4)
  {
    v5 %= *&v4;
  }

  v7 = *(*a1 + 8 * v5);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != v3);
  if (v8 != a1 + 2)
  {
    v9 = v8[1];
    if (v6.u32[0] <= 1uLL)
    {
      if ((v9 & (*&v4 - 1)) == v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }

      if (v9 == v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (!*v3)
  {
LABEL_17:
    *(*a1 + 8 * v5) = 0;
    goto LABEL_18;
  }

  v10 = *(*v3 + 8);
  if (v6.u32[0] <= 1uLL)
  {
    if ((v10 & (*&v4 - 1)) == v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v10 >= *&v4)
  {
    v10 %= *&v4;
  }

  if (v10 != v5)
  {
    goto LABEL_17;
  }

LABEL_18:
  v11 = *v3;
  if (*v3)
  {
    v12 = *(v11 + 8);
    if (v6.u32[0] <= 1uLL)
    {
      v12 &= *&v4 - 1;
      if (v12 == v5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v12 >= *&v4)
      {
        v12 %= *&v4;
      }

      if (v12 == v5)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v12) = v8;
    v11 = *v3;
  }

LABEL_24:
  *v8 = v11;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

void *sub_298C0FD14(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v2 - 1) & v5;
  }

  else
  {
    v7 = v5 < *&v2 ? v5 : v5 % *&v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] <= 1uLL)
        {
          v10 &= *&v2 - 1;
        }

        else if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_298C0FE00(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 2);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1555555555555555)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v3) >> 2) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - v3) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v3) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v7 = 0x1555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = 4 * ((v2 - *a1) >> 2);
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  v9 = 12 * v4 + 12;
  v10 = 12 * v4 - (v2 - v3);
  memcpy((v8 - (v2 - v3)), v3, v2 - v3);
  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v9;
}

uint64_t sub_298C0FF18(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v3) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - v3) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v3) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = 8 * ((v2 - *a1) >> 3);
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  v9 = 24 * v4 + 24;
  v10 = 24 * v4 - (v2 - v3);
  memcpy((v8 - (v2 - v3)), v3, v2 - v3);
  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v9;
}

void *sub_298C10030(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 25;
  v39 = a4 + a2;
  v38 = (a4 + a2 - 1) >> 25;
  if (a2 >> 25 <= v38)
  {
    v6 = a2;
    v7 = result;
    while (1)
    {
      v8 = *(v7 + 16);
      if (!v8)
      {
        break;
      }

      v9 = (v8 - 1) & (37 * v4);
      v10 = (*v7 + 16 * v9);
      v11 = *v10;
      if (v4 == *v10)
      {
        goto LABEL_21;
      }

      v12 = 0;
      v13 = 1;
      while (v11 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v11 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v15 = v9 + v13++;
        v9 = v15 & (v8 - 1);
        v10 = (*v7 + 16 * v9);
        v11 = *v10;
        if (v4 == *v10)
        {
          goto LABEL_21;
        }
      }

      if (v12)
      {
        v10 = v12;
      }

      v24 = *(v7 + 8);
      if (4 * v24 + 4 >= 3 * v8)
      {
        goto LABEL_46;
      }

      if (v8 + ~v24 - *(v7 + 12) > v8 >> 3)
      {
        goto LABEL_18;
      }

      result = sub_298C1048C(v7, v8);
      v32 = *(v7 + 16) - 1;
      v33 = v32 & (37 * v4);
      v10 = (*v7 + 16 * v33);
      v34 = *v10;
      if (v4 == *v10)
      {
LABEL_57:
        ++*(v7 + 8);
LABEL_19:
        --*(v7 + 12);
        goto LABEL_20;
      }

      v28 = 0;
      v35 = 1;
      while (v34 != -1)
      {
        if (v28)
        {
          v36 = 0;
        }

        else
        {
          v36 = v34 == -2;
        }

        if (v36)
        {
          v28 = v10;
        }

        v37 = v33 + v35++;
        v33 = v37 & v32;
        v10 = (*v7 + 16 * v33);
        v34 = *v10;
        if (v4 == *v10)
        {
          goto LABEL_57;
        }
      }

LABEL_67:
      if (v28)
      {
        v10 = v28;
      }

LABEL_18:
      v17 = *v10;
      ++*(v7 + 8);
      if (v17 != -1)
      {
        goto LABEL_19;
      }

LABEL_20:
      *v10 = v4;
      v10[1] = 0;
LABEL_21:
      if (!v10[1])
      {
        operator new();
      }

      if ((v4 << 25) + 0x2000000 >= v39)
      {
        v18 = v39;
      }

      else
      {
        v18 = (v4 << 25) + 0x2000000;
      }

      if (v6 < v18)
      {
        v19 = (v6 >> 14) & 0x7FF;
        do
        {
          while (1)
          {
            if (v19 == 2048)
            {
              abort();
            }

            result = *(v10[1] + 8 * v19);
            if (!result)
            {
              operator new();
            }

            v20 = *(result + 2);
            if (v20)
            {
              break;
            }

            v20 = 0;
LABEL_39:
            if (v20 >= *(result + 3))
            {
              v23 = *(v10[1] + 8 * v19);
              sub_298B90A44(result, result + 2, v20 + 1, 8);
              result = v23;
              v20 = *(v23 + 8);
            }

            *(*result + 8 * v20) = a3;
            ++*(result + 2);
            v6 += 0x4000;
            a3 += 0x4000;
            ++v19;
            if (v6 >= v18)
            {
              goto LABEL_4;
            }
          }

          v21 = *result;
          v22 = 8 * v20;
          while (*v21 != a3)
          {
            ++v21;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_39;
            }
          }

          if (!v22)
          {
            goto LABEL_39;
          }

          v6 += 0x4000;
          a3 += 0x4000;
          ++v19;
        }

        while (v6 < v18);
      }

LABEL_4:
      v14 = v4++ == v38;
      if (v14)
      {
        return result;
      }
    }

    v16 = (4 * *(v7 + 8) + 4);
LABEL_46:
    result = sub_298C1048C(v7, 2 * v8);
    v25 = *(v7 + 16) - 1;
    v26 = v25 & (37 * v4);
    v10 = (*v7 + 16 * v26);
    v27 = *v10;
    if (v4 == *v10)
    {
      goto LABEL_57;
    }

    v28 = 0;
    v29 = 1;
    while (v27 != -1)
    {
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v27 == -2;
      }

      if (v30)
      {
        v28 = v10;
      }

      v31 = v26 + v29++;
      v26 = v31 & v25;
      v10 = (*v7 + 16 * v26);
      v27 = *v10;
      if (v4 == *v10)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_67;
  }

  return result;
}

void *sub_298C1048C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      v17 = &v4[2 * v3];
      do
      {
        v18 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = *(a1 + 16) - 1;
          v20 = v19 & (37 * v18);
          v21 = (*a1 + 16 * v20);
          v22 = *v21;
          if (v18 != *v21)
          {
            v27 = 0;
            v28 = 1;
            while (v22 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v22 == -2;
              }

              if (v29)
              {
                v27 = v21;
              }

              v30 = v20 + v28++;
              v20 = v30 & v19;
              v21 = (*a1 + 16 * (v30 & v19));
              v22 = *v21;
              if (v18 == *v21)
              {
                goto LABEL_18;
              }
            }

            if (v27)
            {
              v21 = v27;
            }
          }

LABEL_18:
          v23 = v16[1];
          v16[1] = 0;
          *v21 = v18;
          v21[1] = v23;
          ++*(a1 + 8);
          v24 = v16[1];
          v16[1] = 0;
          if (v24)
          {
            for (i = 16376; i != -8; i -= 8)
            {
              v26 = *(v24 + i);
              *(v24 + i) = 0;
              if (v26)
              {
                if (*v26 != v26 + 2)
                {
                  free(*v26);
                }

                MEMORY[0x29C2945F0](v26, 0x1080C40ABB4582ELL);
              }
            }

            MEMORY[0x29C2945F0](v24, 0x20C40B44FAD86);
          }
        }

        v16 += 2;
      }

      while (v16 != v17);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v31 = *(a1 + 16);
  if (v31)
  {
    if (((v31 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_45;
    }

    v32 = ((v31 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v32 & 0x1FFFFFFFFFFFFFFELL)];
    v33 = result + 2;
    v34 = v32 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v33 - 2) = -1;
      *v33 = -1;
      v33 += 4;
      v34 -= 2;
    }

    while (v34);
    if (v32 != (v32 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_45:
      v35 = &result[2 * v31];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v35);
    }
  }

  return result;
}

void sub_298C10734(uint64_t a1, uint64_t a2)
{
  v4 = sub_298B877D8(a2, "Platform", 8);
  v6 = v4;
  v7 = *v4;
  if (v7 == 6)
  {
    v8 = v4 + 4;
    v9 = *(v4 + 31);
    if (v9 >= 0)
    {
      v10 = (v4 + 4);
    }

    else
    {
      v10 = *(v4 + 1);
    }

    v11 = *(v8 + 1);
    if (v9 >= 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = v11;
    }
  }

  else if (v7 == 5)
  {
    v10 = *(v4 + 1);
    v5 = *(v6 + 2);
  }

  else
  {
    v10 = 0;
  }

  *a1 = sub_298BE6DC0(v10, v5);
  *(a1 + 4) = sub_298B878FC(a2, "ClusterID", 9);
  sub_298B87AE0(a2, "ClusterName", 11, &__s);
  if (v42 != 1)
  {
    v13 = 0;
    v12 = "";
    goto LABEL_12;
  }

  v12 = __s;
  if (__s)
  {
    v13 = __sz;
LABEL_12:
    std::string::__init(&v43, v12, v13);
    goto LABEL_13;
  }

  memset(&v43, 0, sizeof(v43));
LABEL_13:
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v43;
  sub_298B87AE0(a2, "ClusterType", 11, &v43);
  *(a1 + 32) = sub_298BE713C(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  sub_298B87AE0(a2, "TraceType", 9, &v43);
  if (v43.__r_.__value_.__s.__data_[16])
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  else
  {
    size = 11;
  }

  if (v43.__r_.__value_.__s.__data_[16])
  {
    v15 = v43.__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = "TraceStream";
  }

  *(a1 + 36) = sub_298BE76AC(v15, size);
  v16 = sub_298B878FC(a2, "NumCPUs", 7);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 4;
  }

  *(a1 + 40) = v18;
  sub_298B87AE0(a2, "MCTInitial", 10, &v43);
  if (v43.__r_.__value_.__s.__data_[16] == 1)
  {
    v19 = sub_298C124D8(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 48) = v19;
  sub_298B87AE0(a2, "MCTRef", 6, &v43);
  if (v43.__r_.__value_.__s.__data_[16] == 1)
  {
    v20 = sub_298C124D8(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 56) = v20;
  sub_298B87AE0(a2, "CarveoutAddr", 12, &v43);
  if (v43.__r_.__value_.__s.__data_[16] == 1)
  {
    v21 = sub_298C124D8(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 64) = v21;
  sub_298B87AE0(a2, "CarveoutSize", 12, &v43);
  if (v43.__r_.__value_.__s.__data_[16] == 1)
  {
    v22 = sub_298C124D8(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 72) = v22;
  sub_298B87AE0(a2, "CarveoutVA", 10, &v43);
  if (v43.__r_.__value_.__s.__data_[16] == 1)
  {
    v23 = sub_298C124D8(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 80) = v23;
  sub_298B87AE0(a2, "FillSize", 8, &v43);
  if (v43.__r_.__value_.__s.__data_[16] == 1)
  {
    v24 = sub_298C124D8(v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 88) = v24;
  v25 = sub_298B8784C(a2, "DidWrap", 7);
  *(a1 + 96) = v25 & ((v25 & 0x100) >> 8);
  v26 = sub_298B8784C(a2, "AddressTrace", 12);
  *(a1 + 97) = v26 & ((v26 & 0x100) >> 8);
  v27 = sub_298B8784C(a2, "DebugLog", 8);
  *(a1 + 98) = v27 & ((v27 & 0x100) >> 8);
  sub_298B87AE0(a2, "Filename", 8, &__s);
  if (__s)
  {
    std::string::__init(&v43, __s, __sz);
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  sub_298C10B88(a1 + 104, &v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v28 = sub_298B878FC(a2, "ChunkSize", 9);
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  *(a1 + 136) = v30;
  v31 = sub_298B878FC(a2, "TotalLostBytes", 14);
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 144) = v33;
  v34 = sub_298B878FC(a2, "TotalStreamedBytes", 18);
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  *(a1 + 152) = v36;
  v37 = sub_298B87C7C(a2, "LossByteOffsets", 15);
  if (v37)
  {
    v38 = *v37;
    v39 = *(v37 + 8);
    while (v38 != v39)
    {
      v43.__r_.__value_.__r.__words[0] = sub_298C10C14(v38);
      sub_298AFB228(a1 + 160, &v43);
      v38 += 4;
    }
  }
}

__n128 sub_298C10B88(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a1;
      v3 = a2;
      operator delete(*a1);
      a2 = v3;
      a1 = v2;
    }

    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

unint64_t sub_298C10C14(double *a1)
{
  v1 = *a1;
  switch(v1)
  {
    case 2:
      return llround(a1[1]);
    case 3:
      v2 = *(a1 + 1);
      if (v2 < 0)
      {
        return llround(v2);
      }

      else
      {
        return *(a1 + 1) | v2 & 0x7FFFFFFFFFFFFF00;
      }

    case 4:
      return *(a1 + 1) | a1[1] & 0xFFFFFFFFFFFFFF00;
    default:
      return llround(0.0);
  }
}

uint64_t sub_298C10C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 127);
  if (v6 >= 0)
  {
    v7 = a1 + 104;
  }

  else
  {
    v7 = *(a1 + 104);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 127);
  }

  else
  {
    v8 = *(a1 + 112);
  }

  (*(*a2 + 32))(&v20, a2, v7, v8, 0);
  if (v25)
  {
    v9 = v20;
    v20 = 0;
    *a3 = v9;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a3 = 0;
  }

  sub_298AFF468(&v20, a3);
  if (!*a3)
  {
    v14 = v20;
    v15 = BYTE2(v20);
    v16 = v21;
    v17 = v22;
    v21 = 0uLL;
    v18 = v23;
    v12 = v24;
    v22 = 0;
    v24 = 0;
    v19 = 0;
    v13 = *(a1 + 184);
    *(a1 + 184) = v12;
    if (v13)
    {
      (*(*v13 + 16))(v13);
    }

    sub_298BDC2AC(&v14);
    *a3 = 0;
  }

LABEL_12:
  result = sub_298C13D54(&v20);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C10DE4(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v69[6] = *MEMORY[0x29EDCA608];
  v53[0] = a2;
  v56[0] = a5;
  v59[0] = v53;
  v59[1] = v56;
  v60 = a3;
  v10 = *(a1 + 136);
  if (v10)
  {
    v11 = *(a1 + 128);
    v12 = &v11[2 * v10];
    do
    {
      while (*(v11 + 2) != 25)
      {
        v11 += 2;
        if (v11 == v12)
        {
          goto LABEL_12;
        }
      }

      v14 = *v11;
      v11 += 2;
      v13 = v14;
      v15 = v14 + 8;
      v16 = strnlen((v14 + 8), 0x10uLL);
      v17 = *(a1 + 24);
      v18 = *(v14 + 40);
      v19 = *(v14 + 48);
      if (v17 < v18)
      {
        v18 = *(a1 + 24);
      }

      v20 = v17 - v18;
      if (v20 >= v19)
      {
        v20 = *(v13 + 48);
      }

      v21 = v18 + *(a1 + 16);
      v22 = *(v13 + 24);
      v63 = v15;
      v64 = v16;
      v65 = v21;
      v66 = v20;
      *&v67 = v22;
    }

    while ((sub_298C12578(v59, &v63) & 1) == 0 && v11 != v12);
  }

LABEL_12:
  if (!a3[1])
  {
    std::generic_category();
    v50[0] = "RawTrace.cpp";
    v51 = ":";
    v52 = 771;
    v49 = 3;
    v48[0] = 3291188;
    *v53 = v50;
    v54 = v48;
    v55 = 1026;
    v56[0] = v53;
    v57 = ": ";
    v58 = 770;
    v26 = "CPUTrace metadata not found";
    goto LABEL_20;
  }

  sub_298C12180(&v63, v53[0], *a3);
  if (*(&v67 + 1))
  {
    *a4 = v67;
    v23 = 1;
    v24 = v68;
    if (v68 == v69)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v27 = v56[0];
  if (!v56[0])
  {
    v27 = v64;
    v56[0] = v64;
  }

  v28 = *(a1 + 136);
  if (v28)
  {
    v29 = v63;
    v30 = *(a1 + 128);
    v31 = &v30[4 * v28];
    v32 = *(a1 + 24);
    if (!v53[0])
    {
      while (1)
      {
        if (v30[2] == 25)
        {
          v40 = *v30;
          v41 = strnlen((*v30 + 8), 0x10uLL);
          v33 = *(v40 + 40);
          v42 = *(v40 + 48);
          if (v32 < v33)
          {
            v33 = v32;
          }

          if (v32 - v33 < v42)
          {
            v42 = v32 - v33;
          }

          v43 = *(v40 + 24);
          if (v41 == 9 && *(v40 + 8) == 0x756F657672616370 && *(v40 + 16) == 116)
          {
            v47 = v33 + *(a1 + 16);
            if (v42 < v29)
            {
              v29 = v42;
            }

            goto LABEL_64;
          }

          v45 = v42 + v43;
          v37 = v27 >= v43;
          v38 = v27 - v43;
          if (v37 && v45 > v27)
          {
            if (v42 < v38)
            {
              v38 = v42;
            }

            if (v42 - v38 >= v29)
            {
              goto LABEL_61;
            }
          }
        }

        v30 += 4;
        if (v30 == v31)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      if (v30[2] == 25)
      {
        v33 = *(*v30 + 40);
        v34 = *(*v30 + 48);
        if (v32 < v33)
        {
          v33 = *(a1 + 24);
        }

        if (v32 - v33 < v34)
        {
          v34 = v32 - v33;
        }

        v35 = *(*v30 + 24);
        v36 = v34 + v35;
        v37 = v27 >= v35;
        v38 = v27 - v35;
        if (v37 && v36 > v27)
        {
          if (v34 < v38)
          {
            v38 = v34;
          }

          if (v34 - v38 >= v63)
          {
            break;
          }
        }
      }

      v30 += 4;
      if (v30 == v31)
      {
        goto LABEL_59;
      }
    }

LABEL_61:
    v47 = v38 + v33 + *(a1 + 16);
LABEL_64:
    *a4 = v47;
    *(a4 + 8) = v29;
  }

LABEL_59:
  v23 = *(a4 + 8) != 0;
  v24 = v68;
  if (v68 != v69)
  {
LABEL_15:
    free(v24);
  }

LABEL_16:
  if (!v23)
  {
    std::generic_category();
    v50[0] = "RawTrace.cpp";
    v51 = ":";
    v52 = 771;
    v49 = 3;
    v48[0] = 3422260;
    *v53 = v50;
    v54 = v48;
    v55 = 1026;
    v56[0] = v53;
    v57 = ": ";
    v58 = 770;
LABEL_20:
    v59[0] = v56;
    v60 = v26;
    v61 = 770;
    sub_298B996A4(v59, &__p);
    operator new();
  }

  *a6 = 0;
  v25 = *MEMORY[0x29EDCA608];
}

void sub_298C112C0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v96[6] = *MEMORY[0x29EDCA608];
  v87[0] = 0;
  v87[1] = 0;
  v88 = 0;
  v79 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 1;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v78 = &unk_2A1F1E040;
  v86 = v87;
  sub_298ADDDB0(&v78);
  __p[0] = 0;
  __p[1] = 0;
  v77 = 0;
  sub_298C12180(v90, a1, a3);
  v11 = v91;
  if (v93)
  {
    a4 = v92;
    a5 = v93;
    goto LABEL_10;
  }

  if (a5 % v91)
  {
    v12 = 0;
  }

  else
  {
    v12 = a5 == v90[0];
  }

  if (!v12)
  {
    v13 = v82;
    if ((v81 - v82) > 0x16)
    {
      *v82 = *"Invalid raw pcarveout:\n";
      *(v13 + 15) = *"rveout:\n";
      v14 = v82 + 23;
      v82 = v14;
      if ((v81 - v14) > 0x12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_298B9BCEC(&v78, "Invalid raw pcarveout:\n", 0x17uLL);
      v14 = v82;
      if ((v81 - v82) > 0x12)
      {
LABEL_9:
        *(v14 + 15) = 540697978;
        *v14 = *"  - PCarveoutSize: ";
        v82 += 19;
        goto LABEL_63;
      }
    }

    sub_298B9BCEC(&v78, "  - PCarveoutSize: ", 0x13uLL);
LABEL_63:
    sub_298ADC8F4(&v56, a5);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v56;
    }

    else
    {
      v43 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(&v78, v43, size);
    if (v81 == v82)
    {
      sub_298B9BCEC(&v78, "\n", 1uLL);
      v45 = v82;
      if ((v81 - v82) <= 0x20)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *v82 = 10;
      v45 = v82 + 1;
      v82 = v45;
      if ((v81 - v45) <= 0x20)
      {
LABEL_71:
        sub_298B9BCEC(&v78, "  - buffer_size (from metadata): ", 0x21uLL);
        goto LABEL_74;
      }
    }

    qmemcpy(v45, "  - buffer_size (from metadata): ", 33);
    v82 += 33;
LABEL_74:
    sub_298ADC8F4(&__src, v90[0]);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __src.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(&v78, p_src, v47);
    if (v81 == v82)
    {
      sub_298B9BCEC(&v78, "\n", 1uLL);
      v48 = v82;
      if ((v81 - v82) <= 0xF)
      {
        goto LABEL_82;
      }
    }

    else
    {
      *v82 = 10;
      v48 = v82 + 1;
      v82 = v48;
      if ((v81 - v48) <= 0xF)
      {
LABEL_82:
        sub_298B9BCEC(&v78, "  - PacketSize: ", 0x10uLL);
        goto LABEL_85;
      }
    }

    *v48 = *"  - PacketSize: ";
    v82 += 16;
LABEL_85:
    sub_298ADC8F4(&v71, v11);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v71;
    }

    else
    {
      v49 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v71.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(&v78, v49, v50);
    if (v81 == v82)
    {
      sub_298B9BCEC(&v78, "\n", 1uLL);
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_93:
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }
    }

    else
    {
      *v82++ = 10;
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    operator delete(v71.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_94:
      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_95:
        std::generic_category();
        v65[0] = "RawTrace.cpp";
        v66 = ":";
        v67 = 771;
        v64 = 3;
        v51 = 3421749;
        goto LABEL_109;
      }

LABEL_99:
      operator delete(v56.__r_.__value_.__l.__data_);
      goto LABEL_95;
    }

LABEL_98:
    operator delete(__src.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_99;
  }

LABEL_10:
  if (v95)
  {
    v15 = v94 + 20;
    v16 = __p[1];
    v17 = __p[0];
    v18 = __p[1] - __p[0];
    v19 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 6);
    v20 = v19 + 1;
    if (v19 + 1 > 0x155555555555555)
    {
      sub_298ADDDA0();
    }

    if (0x5555555555555556 * ((v77 - __p[0]) >> 6) > v20)
    {
      v20 = 0x5555555555555556 * ((v77 - __p[0]) >> 6);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v77 - __p[0]) >> 6) >= 0xAAAAAAAAAAAAAALL)
    {
      v21 = 0x155555555555555;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      if (v21 <= 0x155555555555555)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v22 = ((__p[1] - __p[0]) >> 6 << 6);
    v22[10] = 0u;
    v22[11] = 0u;
    v22[8] = 0u;
    v22[9] = 0u;
    v22[6] = 0u;
    v22[7] = 0u;
    v22[4] = 0u;
    v22[5] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    v23 = (192 * v19 + 192);
    v24 = v22 - v18;
    sub_298B08664(__p, v17, v16, v22 - v18);
    v25 = __p[0];
    __p[0] = v24;
    __p[1] = v23;
    v77 = 0;
    if (v25)
    {
      operator delete(v25);
    }

    __p[1] = v23;
    v26 = a2;
    if ((a2 & 0x100000000) == 0)
    {
      if (*(v15 - 16) != 1)
      {
        std::generic_category();
        v65[0] = "RawTrace.cpp";
        v66 = ":";
        v67 = 771;
        v64 = 3;
        v63[0] = 3684149;
        v68[0] = v65;
        v69 = v63;
        v70 = 1026;
        v71.__r_.__value_.__r.__words[0] = v68;
        v71.__r_.__value_.__r.__words[2] = ": ";
        v72 = 770;
        __src.__r_.__value_.__r.__words[0] = &v71;
        __src.__r_.__value_.__r.__words[2] = "Unable to determine SOC generation";
        v75 = 770;
        sub_298B996A4(&__src, v89);
        operator new();
      }

      v26 = *(v15 - 5);
    }

    *(v23 - 48) = v26;
    *(v23 - 47) = *(v15 + 1);
    MEMORY[0x29C294300](v23 - 184, "");
    *(v23 - 40) = *(v15 - 3);
    v27 = *(v15 - 1);
    *(v23 - 156) = v27;
    *(v23 - 18) = 0;
    *(v23 - 17) = v90[2];
    *(v23 - 16) = 0;
    v28 = *(v15 + 12);
    *(v23 - 15) = v28;
    v29 = *(v15 + 20);
    *(v23 - 13) = v29;
    *(v23 - 96) = *v15;
    *(v23 - 95) = 0;
    if (v27 != 1 || !(v28 % v11) && !(v29 % v11))
    {
      if (a5 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = a5;
      }

      v31 = v28 >= v29;
      v32 = -104;
      if (!v31)
      {
        v32 = -120;
      }

      v33 = *&v23[v32];
      __src.__r_.__value_.__r.__words[0] = &v74;
      *&__src.__r_.__value_.__r.__words[1] = 0uLL;
      v34 = a4;
      LODWORD(v56.__r_.__value_.__r.__words[1]) = 0;
      v59 = 0;
      v60 = 0;
      v61 = 1;
      v57 = 0;
      __dst = 0;
      v56.__r_.__value_.__r.__words[2] = 0;
      v56.__r_.__value_.__r.__words[0] = &unk_2A1F1E0B8;
      v62 = &__src;
      sub_298ADDDB0(&v56);
      v35 = __dst;
      if (v30 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v30;
      }

      if (*(v23 - 96) == 1 && v33 < *(v23 - 15))
      {
        v37 = v30 - v36;
        if (v30 - v36 <= v57 - __dst)
        {
          if (v30 > v33)
          {
            memcpy(__dst, &v34[v36], v30 - v36);
            v35 = __dst + v37;
            __dst = __dst + v37;
          }
        }

        else
        {
          sub_298B9BCEC(&v56, &v34[v36], v30 - v36);
          v35 = __dst;
        }
      }

      if (v36 <= v57 - v35)
      {
        if (v36)
        {
          memcpy(v35, v34, v36);
          __dst = __dst + v36;
        }
      }

      else
      {
        sub_298B9BCEC(&v56, v34, v36);
      }

      operator new();
    }

    if ((v81 - v82) > 7)
    {
      *v82 = 0x2072657473756C43;
      v82 += 8;
    }

    else
    {
      sub_298B9BCEC(&v78, "Cluster ", 8uLL);
    }

    sub_298B8FC48(&v78, *(v23 - 47), 0, 0, 0);
    v38 = v82;
    if ((v81 - v82) > 0x16)
    {
      *v82 = *" has invalid metadata:\n";
      *(v38 + 15) = *"tadata:\n";
      v39 = v82 + 23;
      v82 = v39;
      if ((v81 - v39) > 0x10)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_298B9BCEC(&v78, " has invalid metadata:\n", 0x17uLL);
      v39 = v82;
      if ((v81 - v82) > 0x10)
      {
LABEL_54:
        v39[16] = 32;
        *v39 = *"  - buffer_size: ";
        v82 += 17;
        goto LABEL_57;
      }
    }

    sub_298B9BCEC(&v78, "  - buffer_size: ", 0x11uLL);
LABEL_57:
    v40 = *(v23 - 15);
    if (HIDWORD(v40))
    {
      sub_298B8FEA0(&v78, v40, 0, 0, 0);
      v41 = v82;
      if (v81 != v82)
      {
LABEL_59:
        *v41 = 10;
        v42 = v82 + 1;
        v82 = v42;
        if ((v81 - v42) <= 0x15)
        {
LABEL_60:
          sub_298B9BCEC(&v78, "  - buffer_fill_size: ", 0x16uLL);
          goto LABEL_103;
        }

LABEL_102:
        qmemcpy(v42, "  - buffer_fill_size: ", 22);
        v82 += 22;
LABEL_103:
        v52 = *(v23 - 13);
        if (HIDWORD(v52))
        {
          sub_298B8FEA0(&v78, v52, 0, 0, 0);
          v53 = v82;
          if (v81 != v82)
          {
            goto LABEL_105;
          }
        }

        else
        {
          sub_298B8FC48(&v78, v52, 0, 0, 0);
          v53 = v82;
          if (v81 != v82)
          {
LABEL_105:
            *v53 = 10;
            ++v82;
LABEL_108:
            std::generic_category();
            v65[0] = "RawTrace.cpp";
            v66 = ":";
            v67 = 771;
            v64 = 3;
            v51 = 3750197;
LABEL_109:
            v63[0] = v51;
            v68[0] = v65;
            v69 = v63;
            v70 = 1026;
            v71.__r_.__value_.__r.__words[0] = v68;
            v71.__r_.__value_.__r.__words[2] = ": ";
            v72 = 770;
            __src.__r_.__value_.__r.__words[0] = &v71;
            __src.__r_.__value_.__r.__words[2] = v87;
            v75 = 1026;
            sub_298B996A4(&__src, v89);
            operator new();
          }
        }

        sub_298B9BCEC(&v78, "\n", 1uLL);
        goto LABEL_108;
      }
    }

    else
    {
      sub_298B8FC48(&v78, v40, 0, 0, 0);
      v41 = v82;
      if (v81 != v82)
      {
        goto LABEL_59;
      }
    }

    sub_298B9BCEC(&v78, "\n", 1uLL);
    v42 = v82;
    if ((v81 - v82) <= 0x15)
    {
      goto LABEL_60;
    }

    goto LABEL_102;
  }

  *(a6 + 24) &= ~1u;
  *a6 = 0u;
  *(a6 + 16) = 0;
  __p[1] = 0;
  v77 = 0;
  __p[0] = 0;
  if (v94 != v96)
  {
    free(v94);
  }

  sub_298B9AE14(&v78);
  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87[0]);
  }

  v54 = *MEMORY[0x29EDCA608];
}

__n128 sub_298C12180(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3)
  {
    v3 = 24;
LABEL_5:
    result.n128_u64[0] = 0;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 64;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = a1 + 64;
    *(a1 + 56) = 0x100000001;
    v5 = ((*(a3 + 8) >> 8) & 0xF) - 5;
    v6 = 2 * v5 + 13;
    if (v5 >= 3)
    {
      v6 = 0;
    }

    v7 = v5 >= 3;
    v8 = 2 * v5 + 14;
    if (v7)
    {
      v8 = 0;
    }

    if ((*(a3 + 8) & 0xE0) != 0)
    {
      v8 = v6;
    }

    v9 = *(a3 + 48);
    if ((v9 & 2) != 0)
    {
      v11 = *(a3 + v3);
      v12 = *(a3 + 32);
      v13 = *(a3 + 40);
      *a1 = v12;
      *(a1 + 8) = v11;
      *(a1 + 76) = 1;
      v10 = v13 << 6;
LABEL_27:
      *(a1 + 64) = v8;
      *(a1 + 68) = 1;
      *(a1 + 72) = 3;
      *(a1 + 80) = 2;
      *(a1 + 84) = v9 & 1;
      *(a1 + 88) = 0;
      *(a1 + 96) = v12;
      *(a1 + 104) = v10;
      return result;
    }

    if ((0x55000uLL >> v8))
    {
      v10 = (56 * *(a3 + 40)) >> 1;
    }

    else
    {
      if (((0x2A800uLL >> v8) & 1) == 0)
      {
        v10 = *a1;
LABEL_26:
        *(a1 + 8) = 0;
        *(a1 + 32) = a3 + 56;
        *(a1 + 40) = v10;
        *(a1 + 76) = 0;
        v12 = v10;
        goto LABEL_27;
      }

      v10 = 4 * ((5 * *(a3 + 40)) & 0x1FFFFFFFFFFFFFFFLL);
    }

    *a1 = v10;
    goto LABEL_26;
  }

  if (a2 == 2)
  {
    v3 = 16;
    goto LABEL_5;
  }

  *(a1 + 32) = 0u;
  v14 = (a1 + 64);
  *(a1 + 48) = a1 + 64;
  v15 = (a1 + 48);
  result.n128_u64[0] = 0x100000000;
  *(a1 + 56) = 0x100000000;
  *a1 = *(a3 + 16);
  v16 = *(a3 + 4);
  if (v16 <= 1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = *(a3 + 8);
    v17 = *(a3 + 28);
    if (!v17)
    {
      return result;
    }

    goto LABEL_30;
  }

  v18 = a3 + *(a3 + 32);
  v20 = *(v18 + 40);
  v19 = v18 + 40;
  *(a1 + 8) = v20;
  if (v16 == 2)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = *(a3 + 8);
    v17 = *(a3 + 28);
    if (!v17)
    {
      return result;
    }

    goto LABEL_30;
  }

  *(a1 + 16) = *(v19 + 8);
  *(a1 + 24) = *(a3 + 8);
  v17 = *(a3 + 28);
  if (v17)
  {
LABEL_30:
    v21 = 0;
    v22 = 48 * v17;
    v23 = (a3 + 64);
    v24 = 0uLL;
    v25 = a1 + 64;
    do
    {
      if (v21 >= *(a1 + 60))
      {
        v31 = a1;
        v38[1] = v24;
        v38[2] = v24;
        v38[0] = v24;
        if (v25 <= v38 && v25 + 48 * v21 > v38)
        {
          v37 = v38 - v25;
          sub_298B90A44(v15, v14, v21 + 1, 48);
          v32 = *v15;
          v33 = &v37[*v15];
        }

        else
        {
          sub_298B90A44(v15, v14, v21 + 1, 48);
          v32 = *v15;
          v33 = v38;
        }

        a1 = v31;
        v34 = (v32 + 48 * *(v31 + 56));
        v35 = *v33;
        v36 = *(v33 + 2);
        v34[1] = *(v33 + 1);
        v34[2] = v36;
        *v34 = v35;
        v21 = *(v31 + 56) + 1;
        *(v31 + 56) = v21;
        v24 = 0uLL;
        v25 = *v15;
        v30 = *v23 - 2;
        if (v30 > 2)
        {
LABEL_35:
          v26 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        v29 = (v25 + 48 * v21);
        v29[1] = v24;
        v29[2] = v24;
        *v29 = v24;
        v21 = *(a1 + 56) + 1;
        *(a1 + 56) = v21;
        v25 = *v15;
        v30 = *v23 - 2;
        if (v30 > 2)
        {
          goto LABEL_35;
        }
      }

      v26 = dword_298D1B6F8[v30];
LABEL_32:
      v27 = v25 + 48 * v21;
      *(v27 - 40) = v26;
      *(v27 - 36) = 1;
      v28 = *(v23 - 2);
      *(v27 - 32) = *(v23 - 1);
      *(v27 - 28) = 1;
      *(v27 - 24) = v28;
      result = *(v23 - 6);
      *(v27 - 16) = result;
      v23 += 12;
      v22 -= 48;
    }

    while (v22);
  }

  return result;
}

unint64_t sub_298C124D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = a2;
  }

  v3 = a2 - v2;
  if (a2 == v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = (v2 + a1);
  v6 = a2 - v2;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = -55;
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v9 = v8 + v7;
    if (v9 > 0xF)
    {
      break;
    }

    if (v4 >> 60)
    {
      return 0;
    }

    v4 = v9 | (16 * v4);
    ++v5;
    --v6;
  }

  while (v6);
  if (v3 == v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_298C12578(int **a1, uint64_t a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = **a1;
  if ((v6 - 2) >= 2)
  {
    if (v6 || v5 < 0x28)
    {
      goto LABEL_82;
    }

    v20 = *a1[1];
    while (1)
    {
      if (*v4 != 322420958)
      {
        goto LABEL_48;
      }

      if (*(v4 + 12))
      {
        goto LABEL_48;
      }

      if (*(v4 + 36))
      {
        goto LABEL_48;
      }

      v21 = *(v4 + 8);
      if ((v21 & 0x3F) != 0)
      {
        goto LABEL_48;
      }

      v22 = *(v4 + 16);
      if (v22 % v21)
      {
        goto LABEL_48;
      }

      if (*(v4 + 24) > 0x80u)
      {
        goto LABEL_48;
      }

      v23 = *(v4 + 28);
      if (v23 > 0x40)
      {
        goto LABEL_48;
      }

      v24 = *(v4 + 32);
      if (48 * v23 > v24)
      {
        goto LABEL_48;
      }

      if (v24 % 0x30)
      {
        goto LABEL_48;
      }

      v25 = *(v4 + 4);
      if (!v25)
      {
        goto LABEL_48;
      }

      if (v25 == 1)
      {
        if (v5 < v24 + 40)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v25 == 2)
        {
          v26 = v24 + 48;
        }

        else
        {
          v26 = v24 + 56;
        }

        if (v5 < v26 || v20 && *(v4 + v24 + 40) != v20)
        {
          goto LABEL_48;
        }
      }

      if (!v23)
      {
        goto LABEL_80;
      }

      v27 = 48 * v23 + v4 + 40;
      v28 = 40;
      while (1)
      {
        v29 = v4 + v28;
        if (*(v4 + v28) > v22 || !*(v29 + 20) || (*(v29 + 24) - 1) >= 4)
        {
          break;
        }

        v28 += 48;
        if (v29 + 48 == v27)
        {
LABEL_80:
          v30 = a1[2];
          *v30 = v4;
          v30[1] = v5;
          result = 1;
          goto LABEL_83;
        }
      }

LABEL_48:
      ++v4;
      if (--v5 <= 0x27)
      {
        goto LABEL_82;
      }
    }
  }

  v7 = a1;
  LOBYTE(v33[0]) = 0;
  v34 = 0;
  v37[0] = &unk_2A1F1F3A0;
  v37[1] = v33;
  v38 = v37;
  while (v5)
  {
    sub_298C3732C(v4, v5, &v42);
    v8 = v42;
    if (v44)
    {
      v42 = 0;
      if (v8)
      {
        v36 = v8;
        sub_298AE72FC(&v36, &__p);
        if (v36)
        {
          (*(*v36 + 8))(v36);
        }

        v9 = 1;
        if ((v44 & 1) == 0)
        {
          goto LABEL_3;
        }

LABEL_39:
        v18 = v42;
        v42 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        goto LABEL_3;
      }
    }

    v10 = v43;
    if (v43 > 0x1F && *v8 == 1129072709 && *(v8 + 5) << 8 == 768 && ((v11 = *(v8 + 8), v11) ? (v12 = v43 >= v11) : (v12 = 0), v12))
    {
      v19 = v11 + 32;
      if (v43 >= v19)
      {
        v2 = v19;
      }

      else
      {
        v2 = v43;
      }

      v3 = v8;
    }

    else
    {
      v3 &= 0xFFFFFFFFFFFFFF00;
    }

    sub_298C37544(v3, v2, &__p);
    v13 = __p;
    if ((v41 & 1) != 0 && (__p = 0, v13))
    {
      v35 = v13;
      sub_298AE72FC(&v35, &v36);
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }

      v14 = v10 != 0;
      v15 = __p;
      if ((v41 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = v40;
      while (v13 != v16)
      {
        v17 = *v13;
        if (**v13 == 1131438964)
        {
          v35 = v17 + 2;
          v36 = v17;
          if (!v38)
          {
            sub_298AE761C();
          }

          (*(*v38 + 48))(v38, &v36, &v35);
        }

        v13 += 2;
      }

      if (v10 >= v2)
      {
        v14 = v2;
      }

      else
      {
        v14 = v10;
      }

      v15 = __p;
      if ((v41 & 1) == 0)
      {
LABEL_24:
        if (v15)
        {
          v40 = v15;
          operator delete(v15);
        }

        goto LABEL_38;
      }
    }

    __p = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

LABEL_38:
    v9 = 0;
    v5 = v10 - v14;
    v4 = v8 + v14;
    if (v44)
    {
      goto LABEL_39;
    }

LABEL_3:
    if (v9)
    {
      break;
    }
  }

  if (v38 == v37)
  {
    (*(*v38 + 32))(v38);
    if (v34)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if (v38)
    {
      (*(*v38 + 40))();
    }

    if (v34)
    {
LABEL_79:
      v4 = v33[0];
      v5 = v33[1];
      a1 = v7;
      goto LABEL_80;
    }
  }

LABEL_82:
  result = 0;
LABEL_83:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}