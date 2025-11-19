uint64_t sub_100139B94(uint64_t *a1, int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v6 = a1[1];
  v5 = a1[2];
  v7 = v6 - v5;
  if (v6 >= v5)
  {
    v8 = v6 - v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xE)
  {
    v13 = v5 & 7;
    v89 = v6 + 7;
    if ((v6 + 7 - v5) >> 3 >= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = (v6 + 7 - v5) >> 3;
    }

    *&__dst[0] = 0;
    v15 = *a1;
    memcpy(__dst, (*a1 + (v5 >> 3)), v14);
    v16 = *&__dst[0] >> v13;
    v17 = (((*&__dst[0] >> v13) >> 10) & 0xF) + 4;
    v18 = v5 + 14;
    a1[2] = v18;
    v91 = 0;
    v92[0] = 0;
    *(v92 + 7) = 0;
    v19 = v6 - v18;
    if (v6 < v18)
    {
      v19 = 0;
    }

    v20 = (3 * v17);
    if (v19 >= v20)
    {
      v85 = a5;
      v86 = ((v16 >> 5) & 0x1F) + 1;
      v87 = (v16 & 0x1F) + 257;
      v21 = (v7 - 7) >> 3 >= 8 ? 8 : (v7 - 7) >> 3;
      *&__dst[0] = 0;
      memcpy(__dst, (v15 + (v18 >> 3)), v21);
      v22 = *&__dst[0] >> (v18 & 7);
      v23 = v18 + v20;
      a1[2] = v18 + v20;
      v24 = &byte_1003E2588;
      do
      {
        v25 = *v24++;
        *(&v92[-1] + v25) = v22 & 7;
        v22 >>= 3;
        --v17;
      }

      while (v17);
      v26 = 0;
      v27 = 1;
      do
      {
        if (v27 <= *(&v92[-1] + v26))
        {
          v27 = *(&v92[-1] + v26);
        }

        ++v26;
      }

      while (v26 != 19);
      v28 = 1 << v27;
      if (v28 <= 128)
      {
        v30 = 0;
        memset(v90, 0, 64);
        do
        {
          ++*(v90 + *(&v92[-1] + v30++));
        }

        while (v30 != 19);
        v31 = 0;
        v32 = 0;
        LODWORD(v90[0]) = 0;
        LODWORD(v94[0]) = 0;
        do
        {
          v32 = 2 * (*(v90 + v31) + v32);
          *(v94 + v31 + 4) = v32;
          v31 += 4;
        }

        while (v31 != 60);
        for (i = 0; i != 19; ++i)
        {
          v34 = *(&v92[-1] + i);
          v35 = *(v94 + v34);
          *(v94 + v34) = v35 + 1;
          *(__dst + i) = (byte_1003E2488[BYTE1(v35)] | (byte_1003E2488[v35] << 8)) >> (16 - v34);
        }

        v83 = a4;
        v84 = a2;
        for (j = 0; j != 19; ++j)
        {
          v37 = *(&v92[-1] + j);
          if (*(&v92[-1] + j))
          {
            v38 = *(__dst + j);
            if (v28 > v38)
            {
              v39 = 0;
              v40 = v37 + 16 * j;
              v41 = 1 << v37;
              v42 = v41;
              v43 = v38 + v41;
              if (v43 >= v28)
              {
                v44 = 1;
              }

              else
              {
                v44 = 2;
              }

              if (v43 < v28)
              {
                v45 = v28;
              }

              else
              {
                v45 = v38 + v41;
              }

              v46 = v44 + (v45 - (v43 < v28) - v43) / v41;
              v47 = 2 * v41;
              v48 = 3 * v41;
              v49 = 4 * v41;
              v50 = 5 * v41;
              v51 = vdupq_n_s64(v46 - 1);
              v52 = 6 * v41;
              v53 = 16 * v41;
              v54 = v40 - 1;
              v55 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
              v56 = 7 * v41;
              v57 = v90 + v38;
              do
              {
                v58 = vdupq_n_s64(v39);
                v59 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_1003772E0)));
                if (vuzp1_s8(vuzp1_s16(v59, 6), 6).u8[0])
                {
                  *v57 = v54;
                }

                if (vuzp1_s8(vuzp1_s16(v59, 6), 6).i8[1])
                {
                  v57[v42] = v54;
                }

                if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_10037C710)))), 6).i8[2])
                {
                  v57[v47] = v54;
                  v57[v48] = v54;
                }

                v60 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_10037D3A0)));
                if (vuzp1_s8(6, vuzp1_s16(v60, 6)).i32[1])
                {
                  v57[v49] = v54;
                }

                if (vuzp1_s8(6, vuzp1_s16(v60, 6)).i8[5])
                {
                  v57[v50] = v54;
                }

                if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v58, xmmword_10037D390))))).i8[6])
                {
                  v57[v52] = v54;
                  v57[v56] = v54;
                }

                v39 += 8;
                v57 = (v57 + v53);
              }

              while (v55 != v39);
            }
          }
        }

        v61 = 0;
        v62 = 0;
        v63 = v28 - 1;
        memset(__dst, 0, 320);
        while (1)
        {
          if (v6 >= v23)
          {
            v64 = v6 - v23;
          }

          else
          {
            v64 = 0;
          }

          v94[0] = 0;
          if ((v6 - v23 + 7) >> 3 >= 8)
          {
            v65 = 8;
          }

          else
          {
            v65 = (v6 - v23 + 7) >> 3;
          }

          memcpy(v94, (v15 + (v23 >> 3)), v65);
          v66 = *(v90 + (v63 & (v94[0] >> (v23 & 7))));
          v67 = (v66 & 0xF) + 1;
          if (v64 < v67)
          {
            return 0xFFFFFFFFLL;
          }

          v68 = v66 >> 4;
          v23 += v67;
          a1[2] = v23;
          if (v66 > 0xFF)
          {
            break;
          }

          *(__dst + v62++) = v66 >> 4;
LABEL_85:
          v61 = v68;
          if (v62 >= (v86 + v87))
          {
            v79 = sub_10013A228(v87, __dst, *v84, a3);
            if (v79)
            {
              v80 = v79;
              v81 = sub_10013A228(v86, __dst + v87, *v83, v85);
              if (v81)
              {
                v82 = v81;
                result = 0;
                *v84 = v80;
                *v83 = v82;
                return result;
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        v69 = v6 - v23;
        if (v6 < v23)
        {
          v69 = 0;
        }

        if (v68 == 17)
        {
          if (v69 < 3)
          {
            return 0xFFFFFFFFLL;
          }

          if ((v89 - v23) >> 3 >= 8)
          {
            v73 = 8;
          }

          else
          {
            v73 = (v89 - v23) >> 3;
          }

          v94[0] = 0;
          memcpy(v94, (v15 + (v23 >> 3)), v73);
          v74 = v94[0] >> (v23 & 7);
          v23 += 3;
          a1[2] = v23;
          v75 = (v74 & 7) + 3;
        }

        else
        {
          if (v68 == 16)
          {
            if (v69 < 2)
            {
              return 0xFFFFFFFFLL;
            }

            v70 = (v89 - v23) >> 3 >= 8 ? 8 : (v89 - v23) >> 3;
            v94[0] = 0;
            memcpy(v94, (v15 + (v23 >> 3)), v70);
            v71 = v94[0] >> (v23 & 7);
            v23 += 2;
            a1[2] = v23;
            if (((v71 & 3) + v62 + 3) > 319)
            {
              return 0xFFFFFFFFLL;
            }

            v72 = v71 & 3;
            memset(__dst + v62, v61, (v71 & 3) + 3);
            v62 += v72 + 3;
            goto LABEL_84;
          }

          if (v69 < 7)
          {
            return 0xFFFFFFFFLL;
          }

          if ((v89 - v23) >> 3 >= 8)
          {
            v76 = 8;
          }

          else
          {
            v76 = (v89 - v23) >> 3;
          }

          v94[0] = 0;
          memcpy(v94, (v15 + (v23 >> 3)), v76);
          v77 = v94[0] >> (v23 & 7);
          v23 += 7;
          a1[2] = v23;
          v75 = (v77 & 0x7F) + 11;
        }

        v78 = v75 + v62;
        if (v75 + v62 > 319)
        {
          return 0xFFFFFFFFLL;
        }

        bzero(__dst + v62, v75);
        v62 = v78;
LABEL_84:
        v68 = v61;
        goto LABEL_85;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10013A228(int a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  if (a1 < 1)
  {
    if (a3 > 1)
    {
      memset(v48 + 4, 0, 60);
      result = 2;
      goto LABEL_13;
    }

    return 0;
  }

  v5 = a1;
  v6 = 1;
  v7 = a1;
  v8 = a2;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v6 <= v10)
    {
      v6 = v9;
    }

    --v7;
  }

  while (v7);
  result = (1 << v6);
  if (result > a3)
  {
    return 0;
  }

  memset(v48, 0, sizeof(v48));
  v12 = a2;
  do
  {
    v13 = *v12++;
    ++*(v48 + v13);
    --v5;
  }

  while (v5);
LABEL_13:
  v14 = 0;
  v15 = 0;
  LODWORD(v48[0]) = 0;
  v47[0] = 0;
  do
  {
    v15 = 2 * (*(v48 + v14 * 4) + v15);
    v47[++v14] = v15;
  }

  while (v14 != 15);
  if (a1 > 0)
  {
    v16 = v46;
    v17 = a2;
    v18 = a1;
    do
    {
      v19 = *v17++;
      v20 = v47[v19];
      v47[v19] = v20 + 1;
      *v16++ = (byte_1003E2488[BYTE1(v20)] | (byte_1003E2488[v20] << 8)) >> (16 - v19);
      --v18;
    }

    while (v18);
    v21 = 0;
    do
    {
      v22 = a2[v21];
      if (a2[v21])
      {
        v23 = v46[v21];
        if (result > v23)
        {
          v24 = 0;
          v25 = v22 + 16 * v21;
          v26 = 1 << v22;
          v27 = v26;
          v28 = v23 + v26;
          if (v28 >= result)
          {
            v29 = 1;
          }

          else
          {
            v29 = 2;
          }

          if (v28 < result)
          {
            v30 = result;
          }

          else
          {
            v30 = v23 + v26;
          }

          v31 = v29 + (v30 - (v28 < result) - v28) / v26;
          v32 = 2 * v26;
          v33 = 3 * v26;
          v34 = 4 * v26;
          v35 = 5 * v26;
          v36 = vdupq_n_s64(v31 - 1);
          v37 = 6 * v26;
          v38 = 16 * v26;
          v39 = v25 - 1;
          v40 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
          v41 = 7 * v26;
          v42 = (a4 + 2 * v23);
          do
          {
            v43 = vdupq_n_s64(v24);
            v44 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_1003772E0)));
            if (vuzp1_s8(vuzp1_s16(v44, 6), 6).u8[0])
            {
              *v42 = v39;
            }

            if (vuzp1_s8(vuzp1_s16(v44, 6), 6).i8[1])
            {
              v42[v27] = v39;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_10037C710)))), 6).i8[2])
            {
              v42[v32] = v39;
              v42[v33] = v39;
            }

            v45 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_10037D3A0)));
            if (vuzp1_s8(6, vuzp1_s16(v45, 6)).i32[1])
            {
              v42[v34] = v39;
            }

            if (vuzp1_s8(6, vuzp1_s16(v45, 6)).i8[5])
            {
              v42[v35] = v39;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v43, xmmword_10037D390))))).i8[6])
            {
              v42[v37] = v39;
              v42[v41] = v39;
            }

            v24 += 8;
            v42 = (v42 + v38);
          }

          while (v40 != v24);
        }
      }

      ++v21;
    }

    while (v21 != a1);
  }

  return result;
}

uint64_t sub_10013A55C(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_100170C68(v4, a2, 517, 0x70148u, 0x30001u);
    *(a1 + 32) = v5;
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_100170C68(v4, 0, 517, 0x88u, 0);
    *(a1 + 32) = v7;
    if (v7)
    {
      sub_100169648(v7 + 3, 5u, 8, -15, 8, 0, "1.2.5", 112);
      if (!v8)
      {
        return 0;
      }

      free(*(a1 + 32));
      *(a1 + 32) = 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10013A60C(void **a1, char a2)
{
  v3 = a1[4];
  if (*v3 == 1)
  {
    v17 = v3 + 328001;
    *(v3 + 2) = v3 + 328001;
    v18 = v3 + 262464;
    *(v3 + 5) = v3 + 262464;
    while (1)
    {
      v19 = *(v3 + 32806);
      if (v19 > 0x10000)
      {
        break;
      }

      if (0x10000 - v19 >= a1[3])
      {
        v20 = a1[3];
      }

      else
      {
        v20 = 0x10000 - v19;
      }

      memcpy(&v18[v19], a1[2], v20);
      v21 = a1[1];
      v22 = a1[3] - v20;
      a1[2] = a1[2] + v20;
      a1[3] = v22;
      v23 = *(v3 + 32807);
      v24 = *(v3 + 32806) + v20;
      *(v3 + 32806) = v24;
      v25 = 0x20000 - v23;
      if (0x20000 - v23 >= v21)
      {
        v25 = v21;
      }

      *(v3 + 3) = v25;
      *(v3 + 9) = &v17[v23 + v25];
      *(v3 + 10) = &v17[v23];
      if (v24 >= 9)
      {
        *(v3 + 6) = 8 * v24 - 64;
        sub_10013821C((v3 + 16));
        if (*(v3 + 16) == 12)
        {
          return 0xFFFFFFFFLL;
        }

        v24 = *(v3 + 32806);
      }

      memcpy(v3 + 131232, v3 + 16, 0x20090uLL);
      *(v3 + 6) = 8 * v24;
      sub_100138E6C((v3 + 16));
      v26 = *(v3 + 7);
      if (v26 > *(v3 + 6) || *(v3 + 16) == 12)
      {
        memcpy(v3 + 16, v3 + 131232, 0x20090uLL);
        v26 = *(v3 + 7);
      }

      if (!*(v3 + 3))
      {
        v27 = ~(-1 << (*(v3 + 12) - v26));
        if (*(v3 + 17) < v27)
        {
          v27 = *(v3 + 17);
        }

        *(v3 + 17) = v27;
      }

      if (v26 >= 8)
      {
        result = 0xFFFFFFFFLL;
        if (v26 > 0x80007)
        {
          return result;
        }

        v28 = v26 >> 3;
        v29 = *(v3 + 32806);
        v30 = v29 >= v26 >> 3;
        v31 = v29 - (v26 >> 3);
        if (!v30)
        {
          return result;
        }

        *(v3 + 7) = v26 & 7;
        *(v3 + 32806) = v31;
        if (v31 >= 0x10000 - v28)
        {
          v32 = 0x10000 - v28;
        }

        else
        {
          v32 = v31;
        }

        memmove(v3 + 262464, &v18[v28], v32);
      }

      v33 = *(v3 + 10);
      v34 = &v17[*(v3 + 32807)];
      v35 = v33 - v34;
      if (v33 == v34)
      {
        if (*(v3 + 32806) == 0x10000)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v35 > a1[1])
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(*a1, v34, v35);
        v36 = a1[1] - v35;
        *a1 = *a1 + v35;
        a1[1] = v36;
        v37 = *(v3 + 32807) + v35;
        *(v3 + 32807) = v37;
        if (v37 > 0x10000)
        {
          memmove(v3 + 328001, &v3[v37 + 262465], 0x10000uLL);
          *(v3 + 32807) = 0x10000;
        }
      }

      v38 = *(v3 + 16);
      if (v38 == 11 || !a1[1] || !a1[3])
      {
        return v38 == 11;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (*v3)
    {
      return result;
    }

    v5 = a1[3];
    *(v3 + 3) = a1[2];
    v6 = (v3 + 24);
    v7 = *(v6 - 8) | a2 & 1;
    v8 = v7 != 0;
    *(v6 - 8) = v7;
    LODWORD(v9) = -1;
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    *(v6 + 8) = v5;
    v10 = *a1;
    if (a1[1] < 0xFFFFFFFF)
    {
      v9 = a1[1];
    }

    *(v6 + 32) = v9;
    *(v6 + 24) = v10;
    v11 = sub_100169E20(v6, (4 * v8));
    v12 = *(v6 + 24);
    v13 = *a1;
    v14 = a1[1];
    v15 = a1[2] + a1[3] - *v6;
    a1[2] = *v6;
    a1[3] = v15;
    *a1 = v12;
    a1[1] = &v14[v13 - v12];
    if (v11 == -5 || v11 == 0)
    {
      return 0;
    }

    if (v11 == 1)
    {
      sub_10016997C(v6);
      return 1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10013A95C(uint64_t a1)
{
  if (**(a1 + 32))
  {
    return 459080;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013A978(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  if (a2 == 1)
  {
    v6 = sub_100170C68(*(a1 + 32), 1, 256, 0x4813Cu, 0);
    *(a1 + 32) = v6;
    if (v6)
    {
      v7 = v6;
      result = 0;
      v7[4] = 5;
      return result;
    }
  }

  else if (!a2)
  {
    v4 = sub_100170C68(*(a1 + 32), 0, 256, 0x4813Cu, 0);
    *(a1 + 32) = v4;
    if (v4)
    {
      v4[4] = 0;
      memset_pattern8(v4 + 65615, &unk_1003E2408, 0x8000uLL);
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10013AA30(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v2 != 1)
  {
    if (*v2)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v2 + 16399;
    v6 = v2 + 6;
    v7 = v2 + 32815;
    for (i = v2[4]; ; v2[4] = i)
    {
      result = 0xFFFFFFFFLL;
      if (i > 2)
      {
        if (i == 3)
        {
          v16 = v2[12];
          if (*(a1 + 8) >= (v2[11] - v16))
          {
            v17 = (v2[11] - v16);
          }

          else
          {
            v17 = *(a1 + 8);
          }

          memcpy(*a1, v5 + v16, v17);
          v18 = *(a1 + 8) - v17;
          *a1 += v17;
          *(a1 + 8) = v18;
          v13 = v2[11];
          v14 = v2[12] + v17;
          v2[12] = v14;
LABEL_24:
          if (v14 < v13)
          {
            return 0;
          }

          i = 4;
          continue;
        }

        if (i != 4)
        {
          if (i == 8)
          {
            if (*(a1 + 24))
            {
              goto LABEL_99;
            }

            return 1;
          }

          return result;
        }

        if (*(a1 + 24))
        {
          memcpy(v2 + 15, v2 + 16399, 0x10000uLL);
          v2[11] = 0;
          if (v2[5])
          {
            for (j = 0; j != 0x2000; j += 2)
            {
              v2[j + 65615] -= 0x10000;
            }
          }

          i = 0;
          v2[5] = 1;
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v2[6] = 607417954;
          *(v2 + 9) = 0x400000000;
          i = 1;
        }
      }

      else
      {
        if (i)
        {
          if (i != 1)
          {
            if (i != 2)
            {
              return result;
            }

            v10 = v2[14];
            if (*(a1 + 8) >= (v2[13] - v10))
            {
              v11 = (v2[13] - v10);
            }

            else
            {
              v11 = *(a1 + 8);
            }

            memcpy(*a1, v7 + v10, v11);
            v12 = *(a1 + 8) - v11;
            *a1 += v11;
            *(a1 + 8) = v12;
            v13 = v2[13];
            v14 = v2[14] + v11;
            v2[14] = v14;
            goto LABEL_24;
          }

          v29 = v2[9];
          v26 = v2[10];
        }

        else
        {
          v19 = v2[11];
          if (*(a1 + 24) >= (0x10000 - v19))
          {
            v20 = (0x10000 - v19);
          }

          else
          {
            v20 = *(a1 + 24);
          }

          memcpy(v5 + v19, *(a1 + 16), v20);
          v21 = *(a1 + 24) - v20;
          *(a1 + 16) += v20;
          *(a1 + 24) = v21;
          v22 = (v2[11] + v20);
          v2[11] = v22;
          if (!a2 && v22 < 0x10000)
          {
            return 0;
          }

          v61 = (v2 + 16399);
          v62 = v2 + 32815;
          if (v2[5])
          {
            v23 = (v2 + 15);
          }

          else
          {
            v23 = (v2 + 16399);
          }

          lz4_encode_2gb(&v62, 131200, &v61, v23, v22, (v2 + 65615), 0);
          v24 = v62 - v7;
          v2[13] = v62 - v7;
          v25 = v2[11];
          if (v25 <= v24)
          {
            v26 = 8;
            v27 = 758412898;
            v28 = v2 + 12;
          }

          else
          {
            v2[8] = v24;
            v26 = 12;
            v27 = 825521762;
            v28 = v2 + 14;
          }

          v29 = 0;
          v2[6] = v27;
          v2[7] = v25;
          v2[9] = 0;
          v2[10] = v26;
          *v28 = 0;
          v2[4] = 1;
        }

        v30 = v26 - v29;
        v31 = *(a1 + 8);
        if (v31 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        memcpy(*a1, v6 + v29, v32);
        v33 = *(a1 + 8) - v32;
        *a1 += v32;
        *(a1 + 8) = v33;
        LODWORD(v33) = v2[10];
        v34 = v2[9] + v32;
        v2[9] = v34;
        if (v34 != v33)
        {
          return 0;
        }

        v35 = *v6;
        if (*v6 == 607417954)
        {
          i = 8;
        }

        else if (v35 == 825521762)
        {
          i = 2;
        }

        else
        {
          if (v35 != 758412898)
          {
            return 0xFFFFFFFFLL;
          }

          i = 3;
        }
      }
    }
  }

  v36 = v2 + 16399;
  v37 = v2 + 6;
  v38 = v2 + 32815;
  while (1)
  {
    while (1)
    {
      v39 = v2[4];
      result = 0xFFFFFFFFLL;
      if (v39 <= 5)
      {
        break;
      }

      switch(v39)
      {
        case 6:
          v46 = v2[14];
          if (*(a1 + 24) >= (v2[13] - v46))
          {
            v47 = (v2[13] - v46);
          }

          else
          {
            v47 = *(a1 + 24);
          }

          memcpy(v38 + v46, *(a1 + 16), v47);
          v48 = *(a1 + 24) - v47;
          *(a1 + 16) += v47;
          *(a1 + 24) = v48;
          v49 = v2[13];
          LODWORD(v48) = v2[14] + v47;
          v2[14] = v48;
          if (v48 < v49)
          {
            return 0;
          }

          v61 = (v2 + 32815);
          v62 = v2 + 16399;
          if (lz4_decode_asm(&v62, (v2 + 15), (v2 + 32815), &v61, v38 + v49) || sub_10036CFC8(&v62, (v2 + 15), v2 + 131260, &v61, v38 + v2[13]))
          {
            v2[4] = 9;
            return 0xFFFFFFFFLL;
          }

          v2[11] = v62 - v36;
LABEL_76:
          v2[12] = 0;
          v2[4] = 7;
          break;
        case 7:
          v40 = v2[12];
          if (*(a1 + 8) >= (v2[11] - v40))
          {
            v41 = (v2[11] - v40);
          }

          else
          {
            v41 = *(a1 + 8);
          }

          memcpy(*a1, v36 + v40, v41);
          v42 = *(a1 + 8) - v41;
          *a1 += v41;
          *(a1 + 8) = v42;
          LODWORD(v42) = v2[11];
          v43 = v2[12] + v41;
          v2[12] = v43;
          if (v43 < v42)
          {
            return 0;
          }

          memcpy(v2 + 15, v2 + 16399, 0x10000uLL);
          v2[9] = 0;
          v2[10] = 0;
          v2[4] = 5;
          break;
        case 8:
          return 1;
        default:
          return result;
      }
    }

    if (!v39)
    {
      v50 = v2[12];
      if (*(a1 + 24) >= (v2[11] - v50))
      {
        v51 = (v2[11] - v50);
      }

      else
      {
        v51 = *(a1 + 24);
      }

      memcpy(v36 + v50, *(a1 + 16), v51);
      v52 = *(a1 + 24) - v51;
      *(a1 + 16) += v51;
      *(a1 + 24) = v52;
      LODWORD(v52) = v2[11];
      v53 = v2[12] + v51;
      v2[12] = v53;
      if (v53 < v52)
      {
        return 0;
      }

      goto LABEL_76;
    }

    if (v39 != 5)
    {
      return result;
    }

    v44 = v2[9];
    if (v44 <= 3)
    {
      v45 = 4;
      v2[10] = 4;
      goto LABEL_82;
    }

    v54 = *v37;
    if (*v37 == 758412898)
    {
      v45 = 8;
      goto LABEL_81;
    }

    if (v54 != 825521762)
    {
      break;
    }

    v45 = 12;
LABEL_81:
    v2[10] = v45;
    if (v44 >= v45)
    {
      if (v54 == 758412898)
      {
        v60 = v2[7];
        if (v60 > 0x10000)
        {
          goto LABEL_99;
        }

        v2[11] = v60;
        v2[12] = 0;
        v2[4] = 0;
      }

      else
      {
        v59 = v2[8];
        if (v59 > 0x10000 || v2[7] >= 0x10001u)
        {
LABEL_99:
          v2[4] = 9;
          return result;
        }

        v2[13] = v59;
        v2[14] = 0;
        v2[4] = 6;
      }
    }

    else
    {
LABEL_82:
      v55 = v45 - v44;
      v56 = *(a1 + 24);
      if (v56 >= v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = v56;
      }

      if (!v57)
      {
        return 0;
      }

      memcpy(v37 + v44, *(a1 + 16), v57);
      v58 = *(a1 + 24) - v57;
      *(a1 + 16) += v57;
      *(a1 + 24) = v58;
      v2[9] += v57;
    }
  }

  if (v54 == 607417954)
  {
    v2[10] = 4;
    v2[4] = 8;
    return 1;
  }

  return result;
}

unint64_t sub_10013B084(char *a1, unint64_t a2, char *a3, unint64_t a4, char *__b, int a6)
{
  result = 0;
  if (!HIDWORD(a4) && (a6 - 32) >= 0xFFFFFFE1)
  {
    if ((a2 & 0x8000000000000000) != 0 || a2 < 4)
    {
      return 0;
    }

    else
    {
      *a1 = a4;
      v9 = a1 + 4;
      v80 = a1;
      if (a4)
      {
        v10 = __b;
        v12 = __b + 279520;
        v13 = (__b + 213488);
        v82 = &a1[a2];
        v14 = __b + 0x20000;
        v83 = a6 - 1;
        v84 = a4;
        __dst = __b + 147456;
        v81 = a4 + a3;
        v15 = a4;
        v16 = a3;
        v91 = __b + 279520;
        v90 = __b + 0x10000;
        while (1)
        {
          v87 = v15;
          if (v15 >= 0x1000)
          {
            v17 = 4096;
          }

          else
          {
            v17 = v15;
          }

          v18 = *(v12 + 1);
          if (v18 > 0x7F || (*(v12 + 2) ^ v18) != 0xE11CCA)
          {
            v18 = 0;
            *(v12 + 1) = 0;
          }

          v88 = v18;
          __src = v16;
          v19 = v16 - a3;
          if (((v16 - a3) & 0x7FFFFFFF) == 0)
          {
            result = memset(v10, (v19 >> 24) - 2, 0x10000uLL);
          }

          v20 = (v17 + v19);
          if (v20 > v19)
          {
            v21 = v19;
            v22 = v81 - v16;
            do
            {
              v23 = &v14[4 * (v21 & 0xFFF)];
              *v23 = 0;
              v24 = (v84 - v21);
              if (v24 >= 4)
              {
                v25 = *(v10 + ((-1640531535 * *&a3[v21]) >> 18));
                v26 = v21 - v25;
                v27 = (v21 - v25) >> 14;
                if (!v27)
                {
                  v28 = 64;
                  while (v28)
                  {
                    result = 0;
                    --v28;
                    v29 = 1;
                    while (1)
                    {
                      v30 = v29;
                      if (result + 16 > v24)
                      {
                        break;
                      }

                      v31 = veorq_s8(*&a3[v25 + result], *&a3[v21 + result]);
                      if (*&v31 != 0)
                      {
                        v33 = (__clz(__rbit64(v31.u64[1])) >> 3) + 8;
                        v34 = __clz(__rbit64(v31.u64[0])) >> 3;
                        if (v31.i64[0])
                        {
                          v33 = v34;
                        }

                        result = v33 + result;
                        if (result >= 0x1F)
                        {
                          LODWORD(v32) = 31;
                        }

                        else
                        {
                          LODWORD(v32) = result;
                        }

                        goto LABEL_40;
                      }

                      v29 = 0;
                      result = 16;
                      if ((v30 & 1) == 0)
                      {
LABEL_33:
                        LODWORD(v32) = 31;
                        goto LABEL_40;
                      }
                    }

                    if (result <= v22)
                    {
                      v32 = v22;
                    }

                    else
                    {
                      v32 = result;
                    }

                    while (v32 != result)
                    {
                      if (a3[(v21 + result)] != a3[v25 + result])
                      {
                        LODWORD(v32) = result;
                        break;
                      }

                      if (++result == 31)
                      {
                        goto LABEL_33;
                      }
                    }

LABEL_40:
                    if (v32 > v27)
                    {
                      *v23 = v32;
                      *(v23 + 1) = v26;
                      if (v32 == 31)
                      {
                        v27 = 31;
                        break;
                      }

                      v27 = v32;
                    }

                    v25 = *&v90[4 * (v25 & 0x3FFF)];
                    v26 = v21 - v25;
                    if (v21 - v25 >= 0x4000)
                    {
                      break;
                    }
                  }

                  if (v20 - v21 < v27)
                  {
                    *v23 = v17 + v19 - v21;
                  }
                }

                if (v21 >= 0x1F)
                {
                  v35 = (-1640531535 * *&a3[(v21 - 31)]) >> 18;
                  *&v90[4 * ((v21 - 31) & 0x3FFF)] = *(v10 + v35);
                  *(v10 + v35) = v21 - 31;
                }
              }

              ++v21;
              --v22;
            }

            while (v21 != v20);
          }

          v36 = 0;
          v37 = 128;
          v38 = v88;
LABEL_52:
          v39 = v38;
          while (v36 < v37)
          {
            result = memset(v13, 255, (16 * v17 + 496));
            v40 = 0;
            v41 = 0;
            *v13 = -0.0;
            *(v13 + 4) = 7936;
            while (1)
            {
              v42 = &v13[2 * v41];
              v43 = *(v42 + 1);
              if (v40 > v43)
              {
                *v42 = v43;
                *(v42 + 8) = *(v42 + 9);
                *(v42 + 10) = 0;
                *(v42 + 6) = 0;
                v40 = v43;
              }

              if (v41 == v17)
              {
                break;
              }

              v44 = *(v42 + 9);
              if (v44 != 31 && *(v42 + 5) > v43 + 4)
              {
                *(v42 + 5) = v43 + 4;
                *(v42 + 25) = v44 + 1;
              }

              v45 = v39 + 136 + v40;
              v46 = 31;
              do
              {
                v47 = &v42[2 * v46];
                if (*(v47 + 1) <= v45)
                {
                  break;
                }

                *(v47 + 1) = v45;
                *(v47 + 9) = v46;
                v45 -= 4;
                --v46;
              }

              while (v46);
              v48 = &v14[4 * v41];
              v49 = v43 + v39;
              v50 = *v48;
              v51 = &v42[2 * v50];
              result = *v51;
              if (result > v49)
              {
                *v51 = v49;
                *(v51 + 8) = v44;
                *(v51 + 10) = v50;
                *(v51 + 6) = *(v48 + 1);
                v40 = *v42;
                result = v49;
              }

              v52 = v39 + 12 + v40;
              if (result > v52)
              {
                *v51 = v52;
                *(v51 + 8) = 0;
                *(v51 + 10) = v50;
                *(v51 + 6) = *(v48 + 1);
              }

              ++v41;
              v40 = LODWORD(v13[2 * v41]);
            }

            v53 = 0;
            v54 = 0;
            v55 = v17;
            do
            {
              if (v55 > 0x1000)
              {
                goto LABEL_91;
              }

              v56 = &v13[2 * v55];
              v57 = *(v56 + 8);
              v54 += v57 + 3;
              v53 += a6;
              v55 -= v57 + *(v56 + 10);
            }

            while (v55);
            if (v53 <= v83 + v17)
            {
              result = memcpy(__dst, v13, (16 * v17 + 16));
              *v91 = v54;
              goto LABEL_77;
            }

            v36 = v39 + 1;
            if (v39 == *(v91 + 1))
            {
              v39 = (2 * v39) | 1u;
              if (v36 + v37 > 2 * v39)
              {
                continue;
              }
            }

            v39 = v37;
LABEL_77:
            v38 = (v39 + v36) >> 1;
            v37 = v39;
            goto LABEL_52;
          }

          *(v91 + 1) = v36;
          *(v91 + 2) = v36 ^ 0xE11CCA;
          if (v36 == 128)
          {
            break;
          }

          v58 = *v91;
          v59 = v82 - v9;
          v10 = __b;
          if (v58 >= v17 + 2)
          {
            if (v59 < (v17 + 2))
            {
              return 0;
            }

            *v9 = 0;
            v79 = v9 + 2;
            v78 = __src;
            result = memcpy(v79, __src, v17);
            v12 = v91;
            v9 = &v79[v17];
          }

          else
          {
            if (v59 < v58 + 1)
            {
              return 0;
            }

            v60 = &__dst[16 * v17];
            v61 = *v60;
            v62 = v60[8];
            v63 = v60[9];
            v64 = v60[10];
            v92 = *(v60 + 11);
            v93 = v60[15];
            v65 = v17;
            do
            {
              v65 -= v64 + v62;
              v66 = &__dst[16 * v65];
              v67 = *v66;
              v68 = v66[8];
              v69 = v66[9];
              v70 = v66[10];
              v71 = *(v66 + 11);
              v72 = v66[15];
              *v66 = v61;
              v66[8] = v62;
              v66[9] = v63;
              v66[10] = v64;
              *(v66 + 11) = v92;
              v66[15] = v93;
              v93 = v72;
              v92 = v71;
              v64 = v70;
              v63 = v69;
              v62 = v68;
              v61 = v67;
            }

            while (v65);
            v73 = 0;
            do
            {
              v74 = &__dst[16 * v73];
              v75 = v74[8];
              *v9 = v75 + 32 * v74[10] + (*(v74 + 6) << 10);
              v76 = v9 + 3;
              result = memcpy(v76, &__src[v73], v75);
              v77 = v74[8];
              v9 = &v76[v77];
              v73 += v77 + v74[10];
            }

            while (v73 < v17);
            v12 = v91;
            v78 = __src;
            v10 = __b;
          }

          v16 = &v78[v17];
          v15 = v87 - v17;
          if (v87 == v17)
          {
            return v9 - v80;
          }
        }

LABEL_91:
        __break(1u);
      }

      else
      {
        return v9 - v80;
      }
    }
  }

  return result;
}

uint64_t lzfse_decode_buffer_output_size(char *__src, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = __src;
    v3 = 0;
    v4 = &__src[a2];
    do
    {
      v5 = (v2 + 4);
      if (v2 + 4 > v4)
      {
        return 0;
      }

      v6 = *v2;
      if (*v2 > 846755425)
      {
        if (v6 == 846755426)
        {
          goto LABEL_13;
        }

        if (v6 != 1853388386)
        {
          return 0;
        }

        if (v2 + 12 > v4)
        {
          return 0;
        }

        v7 = *(v2 + 2);
        if (&v2[v7 + 12] > v4)
        {
          return 0;
        }

        v8 = *v5;
        v9 = v7 + 12;
      }

      else
      {
        if (v6 != 762869346)
        {
          if (v6 != 829978210)
          {
            if (v6 == 611874402)
            {
              return v3;
            }

            return 0;
          }

LABEL_13:
          memset(v13, 0, 512);
          if (v6 == 846755426)
          {
            if (v2 + 32 > v4)
            {
              return 0;
            }

            v10 = *(v2 + 3);
            if ((v10 & 0xFFFFFFE0) == 0 || &v2[v10] > v4 || sub_10013B8F8(v13, v2, v4))
            {
              return 0;
            }

            v11 = v10;
          }

          else
          {
            if (v2 + 772 > v4)
            {
              return 0;
            }

            memcpy(v13, v2, 0x304uLL);
            v11 = 772;
          }

          if (&v2[v11 + DWORD2(v13[0])] > v4)
          {
            return 0;
          }

          v8 = DWORD1(v13[0]);
          v9 = v11 + DWORD2(v13[0]);
          goto LABEL_26;
        }

        if (v2 + 8 > v4)
        {
          return 0;
        }

        v8 = *v5;
        if (&v2[v8 + 8] > v4)
        {
          return 0;
        }

        v9 = v8 + 8;
      }

LABEL_26:
      v2 += v9;
      v3 += v8;
    }

    while (v2 < v4);
  }

  return 0;
}

uint64_t sub_10013B8F8(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  bzero(a1, 0x304uLL);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 4);
  *a1 = 829978210;
  a1[1] = v8;
  v9 = v7 >> 10;
  v10 = v7 >> 20;
  v11 = v7 >> 30;
  v12 = (v7 >> 40) & 0xFFFFF;
  v13 = (v7 >> 60) & 7;
  LOWORD(v14) = v7;
  v15 = *(a2 + 24);
  WORD2(v14) = v10;
  v16 = (v6 >> 20) & 0xFFFFF;
  LOWORD(v14) = v14 & 0x3FF;
  WORD1(v14) = v9 & 0x3FF;
  WORD2(v14) &= 0x3FFu;
  HIWORD(v14) = v11 & 0x3FF;
  *(a1 + 4) = v14;
  a1[4] = (v6 >> 40) & 0xFFFFF;
  a1[5] = v16;
  a1[6] = v12;
  a1[7] = ((v6 >> 60) & 7) - 7;
  a1[10] = v13 - 7;
  *(a1 + 22) = WORD2(v15) & 0x3FF;
  *(a1 + 23) = (v15 >> 42) & 0x3FF;
  *(a1 + 24) = (v15 >> 52) & 0x3FF;
  a1[2] = v12 + v16;
  a1[3] = v6 & 0xFFFFF;
  if (v15 == 32)
  {
    return 0;
  }

  result = 0xFFFFFFFFLL;
  if (v15 >= 0x20)
  {
    v18 = (a2 + v15);
    if (v18 <= a3)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = (a2 + 32);
      do
      {
        if (v22 >= v18 || v20 > 24)
        {
          v23 = v20;
        }

        else
        {
          do
          {
            v23 = v20 + 8;
            v24 = *v22++;
            v21 |= v24 << v20;
            if (v22 >= v18)
            {
              break;
            }

            v25 = v20 < 17;
            v20 += 8;
          }

          while (v25);
        }

        v26 = byte_1003E27A4[v21 & 0x1F];
        if (v26 == 14)
        {
          v27 = ((v21 >> 4) & 0x3FF) + 24;
        }

        else if (v26 == 8)
        {
          LOWORD(v27) = (v21 >> 4) + 8;
        }

        else
        {
          LOWORD(v27) = byte_1003E27C4[v21 & 0x1F];
        }

        v28 = v26;
        *(a1 + v19 + 25) = v27;
        v20 = v23 - v26;
        if (v23 < v28)
        {
          return 0xFFFFFFFFLL;
        }

        v21 >>= v28;
        ++v19;
      }

      while (v19 != 360);
      v30 = v20 > 7 || v22 != v18;
      return (v30 << 31 >> 31);
    }
  }

  return result;
}

char *lzfse_decode_buffer_iboot(char *a1, uint64_t a2, char *a3, uint64_t a4, char **a5)
{
  bzero(a5 + 7, 0x1F60uLL);
  result = 0;
  *a5 = a3;
  a5[1] = a3;
  v11 = &a3[a4];
  a5[3] = a1;
  v191 = a5 + 3;
  a5[2] = &a3[a4];
  a5[5] = a1;
  a5[6] = 0;
  a5[4] = &a1[a2];
  if ((a1 & 3) != 0 || ((a1 + a2) & 3) != 0 || a4 < 4)
  {
    return result;
  }

  v12 = a3 + 4;
  v13 = a5 + 110;
  v14 = a5 + 150;
  v15 = a5 + 190;
  v16 = a5 + 318;
  v17 = a5 + 106;
  v190 = a5 + 490;
  v189 = a5 + 1006;
  v188 = a5 + 1002;
  while (1)
  {
    result = 0;
    v18 = *a3;
    *(a5 + 14) = *a3;
    if (v18 <= 846755425)
    {
      break;
    }

    if (v18 == 846755426)
    {
      goto LABEL_13;
    }

    if (v18 != 1853388386)
    {
      return result;
    }

    if ((sub_10013C684(a5) & 0x80000000) != 0)
    {
      return 0;
    }

    a3 = *a5;
LABEL_131:
    result = 0;
    v11 = a5[2];
    if (a3 < v11)
    {
      v12 = a3 + 4;
      if ((a3 + 4) <= v11)
      {
        continue;
      }
    }

    return result;
  }

  if (v18 == 762869346)
  {
    v109 = (a3 + 8);
    if ((a3 + 8) > v11)
    {
      return 0;
    }

    v110 = *v12;
    if (&v109[v110] > v11 || (sub_10013C850(v191, v110, v109) & 0x80000000) != 0)
    {
      return 0;
    }

    a3 = &(*a5)[v110 + 8];
    goto LABEL_130;
  }

  if (v18 != 829978210)
  {
    if (v18 == 611874402)
    {
      *a5 = v12;
      if (*(a5 + 13))
      {
        v182 = a5[5];
        *v182 = *(a5 + 12);
        v183 = *(a5 + 13);
      }

      else
      {
        v183 = 0;
        v182 = a5[5];
      }

      return &v182[v183 - *v191];
    }

    return result;
  }

LABEL_13:
  *(a5 + 208) = 0;
  if (v18 == 846755426)
  {
    if ((a3 + 32) > v11)
    {
      return 0;
    }

    result = 0;
    v19 = *(a3 + 3);
    *(a5 + 208) = v19;
    if (v19 < 0x20 || &a3[v19] > v11)
    {
      return result;
    }

    if (sub_10013B8F8(a5 + 15, a3, v11))
    {
      return 0;
    }
  }

  else
  {
    if ((a3 + 772) > v11)
    {
      return 0;
    }

    memcpy(a5 + 60, a3, 0x304uLL);
    *(a5 + 208) = 772;
  }

  v20 = 0;
  for (i = 110; i != 150; i += 2)
  {
    v20 += *(a5 + i);
  }

  v22 = 0;
  for (j = 150; j != 190; j += 2)
  {
    v22 += *(a5 + j);
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  do
  {
    v28 = *(a5 + j);
    v29 = vmovl_u16(*v28.i8);
    v30 = vmovl_high_u16(v28);
    v27 = vaddw_high_u32(v27, v30);
    v26 = vaddw_u32(v26, *v30.i8);
    v25 = vaddw_high_u32(v25, v29);
    v24 = vaddw_u32(v24, *v29.i8);
    j += 16;
  }

  while (j != 318);
  v31 = vaddvq_s64(vaddq_s64(vaddq_s64(v24, v26), vaddq_s64(v25, v27)));
  v32 = 0uLL;
  v33 = 318;
  v34 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  do
  {
    v37 = *(a5 + v33);
    v38 = vmovl_u16(*v37.i8);
    v39 = vmovl_high_u16(v37);
    v36 = vaddw_high_u32(v36, v39);
    v35 = vaddw_u32(v35, *v39.i8);
    v34 = vaddw_high_u32(v34, v38);
    v32 = vaddw_u32(v32, *v38.i8);
    v33 += 16;
  }

  while (v33 != 830);
  v40 = vbicq_s8(xmmword_1003E27F0, vmovl_s16(vcgt_u16(0x400040004000400, *(a5 + 92))));
  v41 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
  v42 = ((vaddvq_s64(vaddq_s64(vaddq_s64(v32, v35), vaddq_s64(v34, v36))) > 0x400) << 13) | ((v31 > 0x100) << 12);
  v43 = ((*(a5 + 54) > 0xFFu) << 9) | ((*(a5 + 53) > 0x3Fu) << 8) | ((v22 > 0x40) << 11) | ((v20 > 0x40) << 10);
  if (*(a5 + 15) == 829978210)
  {
    v44 = v42;
  }

  else
  {
    v44 = v42 + 1;
  }

  if (v41.i32[0] | v41.i32[1] | (2 * (*(a5 + 18) > 0x9C40u)) | ((*(a5 + 52) > 0x3Fu) << 7) | (4 * (*(a5 + 19) > 0x2710u)) | v43 | v44 || &(*a5)[*(a5 + 208) + *(a5 + 17)] > a5[2])
  {
    return 0;
  }

  v187 = *(a5 + 17);
  v45 = 0;
  v46 = 0;
  v47 = a5 + 490;
  do
  {
    v48 = *(v16 + 2 * v45);
    if (*(v16 + 2 * v45))
    {
      v46 += v48;
      if (v46 > 1024)
      {
        return 0;
      }

      v49 = 0;
      v50 = __clz(v48);
      v51 = v50 - 21;
      v52 = 0x800u >> (v50 - 21);
      v53 = v52 - v48;
      v54 = v50 - 22;
      v55 = v48 - v52;
      do
      {
        v56 = (v55 + v49) << v54;
        if (v49 < v53)
        {
          v57 = v51;
        }

        else
        {
          v57 = v54;
        }

        if (v49 < v53)
        {
          LOWORD(v56) = ((v48 + v49) << v51) - 1024;
        }

        *v47 = v57;
        *(v47 + 1) = v45;
        *(v47 + 1) = v56;
        v47 = (v47 + 4);
        ++v49;
      }

      while (v48 != v49);
    }

    ++v45;
  }

  while (v45 != 256);
  v58 = 0;
  v59 = v17;
  do
  {
    v60 = *(v13 + 2 * v58);
    if (*(v13 + 2 * v58))
    {
      v61 = 0;
      v62 = __clz(v60);
      v63 = v62 - 25;
      v64 = 0x80u >> (v62 - 25);
      v65 = v64 - v60;
      v66 = byte_1003E259C[v58];
      v67 = dword_1003E25B0[v58];
      v68 = v62 - 26;
      v69 = v60 - v64;
      do
      {
        v70 = (v69 + v61) << v68;
        if (v61 < v65)
        {
          v71 = v63;
        }

        else
        {
          v71 = v68;
        }

        if (v61 < v65)
        {
          LOWORD(v70) = ((v60 + v61) << v63) - 64;
        }

        *v59 = v66 + v71;
        *(v59 + 1) = v66;
        *(v59 + 1) = v70;
        *(v59++ + 1) = v67;
        ++v61;
      }

      while (v60 != v61);
    }

    ++v58;
  }

  while (v58 != 20);
  v72 = 0;
  v73 = a5 + 170;
  do
  {
    v74 = *(v14 + 2 * v72);
    if (*(v14 + 2 * v72))
    {
      v75 = 0;
      v76 = __clz(v74);
      v77 = v76 - 25;
      v78 = 0x80u >> (v76 - 25);
      v79 = v78 - v74;
      v80 = byte_1003E2600[v72];
      v81 = dword_1003E2614[v72];
      v82 = v76 - 26;
      v83 = v74 - v78;
      do
      {
        v84 = (v83 + v75) << v82;
        if (v75 < v79)
        {
          v85 = v77;
        }

        else
        {
          v85 = v82;
        }

        if (v75 < v79)
        {
          LOWORD(v84) = ((v74 + v75) << v77) - 64;
        }

        *v73 = v80 + v85;
        *(v73 + 1) = v80;
        *(v73 + 1) = v84;
        *(v73++ + 1) = v81;
        ++v75;
      }

      while (v74 != v75);
    }

    ++v72;
  }

  while (v72 != 20);
  v86 = 0;
  v87 = a5 + 234;
  do
  {
    v88 = *(v15 + 2 * v86);
    if (*(v15 + 2 * v86))
    {
      v89 = 0;
      v90 = __clz(v88);
      v91 = v90 - 23;
      v92 = 0x200u >> (v90 - 23);
      v93 = v92 - v88;
      v94 = byte_1003E2664[v86];
      v95 = dword_1003E26A4[v86];
      v96 = v90 - 24;
      v97 = v88 - v92;
      do
      {
        v98 = (v97 + v89) << v96;
        if (v89 < v93)
        {
          v99 = v91;
        }

        else
        {
          v99 = v96;
        }

        if (v89 < v93)
        {
          LOWORD(v98) = ((v88 + v89) << v91) - 256;
        }

        *v87 = v94 + v99;
        *(v87 + 1) = v94;
        *(v87 + 1) = v98;
        *(v87++ + 1) = v95;
        ++v89;
      }

      while (v88 != v89);
    }

    ++v86;
  }

  while (v86 != 64);
  *(a5 + 210) = *(a5 + 18);
  v100 = *a5;
  v101 = *(a5 + 208);
  v102 = &(*a5)[v101 + *(a5 + 20)];
  a5[1008] = v102;
  v103 = a5[2];
  if (v102 > v103)
  {
    return 0;
  }

  a5[1010] = 0;
  v104 = *(a5 + 92);
  a5[1009] = v104;
  v105 = *(a5 + 22);
  v106 = a5[1];
  if (v105)
  {
    if (v102 < (v106 + 8))
    {
      return 0;
    }

    a5[1008] = (v102 - 8);
    v107 = *(v102 - 8);
    a5[1006] = v107;
    v108 = v105 + 64;
    *(a5 + 2014) = v105 + 64;
    if (v105 < 0xFFFFFFF8)
    {
      return 0;
    }
  }

  else
  {
    if (v102 < (v106 + 7))
    {
      return 0;
    }

    a5[1008] = (v102 - 7);
    v111 = *(v102 - 7);
    *(a5 + 8051) = *(v102 - 4);
    *v189 = v111;
    v107 = a5[1006] & 0xFFFFFFFFFFFFFFLL;
    a5[1006] = v107;
    v108 = 56;
    *(a5 + 2014) = 56;
  }

  v113 = v107 >> v108 == 0;
  v112 = vaddv_s16(vand_s8(vcgt_u16(v104, 0xFC00FC00FC00FC00), 0x8000400020001)) & 0xF;
  v113 = v113 && v112 == 0;
  if (!v113)
  {
    return 0;
  }

  v114 = *(a5 + 19);
  *(a5 + 209) = v114;
  v115 = v102 + *(a5 + 21);
  a5[1004] = v115;
  if (v115 > v103)
  {
    return 0;
  }

  v116 = *(a5 + 52);
  *(a5 + 4020) = v116;
  v117 = *(a5 + 53);
  *(a5 + 4021) = v117;
  v118 = *(a5 + 54);
  *(a5 + 4022) = v118;
  v119 = *(a5 + 25);
  if (v119)
  {
    if (v115 < (v106 + 8))
    {
      return 0;
    }

    a5[1004] = (v115 - 8);
    v120 = *(v115 - 8);
    a5[1002] = v120;
    v121 = v119 + 64;
    *(a5 + 2006) = v119 + 64;
    if (v119 < 0xFFFFFFF8)
    {
      return 0;
    }
  }

  else
  {
    if (v115 < (v106 + 7))
    {
      return 0;
    }

    a5[1004] = (v115 - 7);
    v122 = *(v115 - 7);
    *(a5 + 8019) = *(v115 - 4);
    *v188 = v122;
    v120 = a5[1002] & 0xFFFFFFFFFFFFFFLL;
    a5[1002] = v120;
    v121 = 56;
    *(a5 + 2006) = 56;
  }

  result = 0;
  if (v120 >> v121)
  {
    return result;
  }

  if (v116 > 0x3F)
  {
    return result;
  }

  if (v117 > 0x3F)
  {
    return result;
  }

  v123 = __OFSUB__(v118, 255);
  if (v118 > 0xFF)
  {
    return result;
  }

  if (!v114)
  {
LABEL_129:
    a3 = (v100 + (v101 + v187));
LABEL_130:
    *a5 = a3;
    goto LABEL_131;
  }

  v124 = 0;
  v125 = 0;
  v184 = v17;
  while (1)
  {
    v126 = *(a5 + 2006);
    v127 = 63 - v126;
    v128 = (63 - v126) & 0xFFFFFFF8;
    v186 = v124;
    if ((v127 < 0) ^ v123 | ((v127 & 0xFFFFFFF8) == 0))
    {
      v130 = *v188;
    }

    else
    {
      v129 = &a5[1004][-(v127 >> 3)];
      if (v129 < a5[1])
      {
        return 0;
      }

      a5[1004] = v129;
      v130 = (qword_1003E2808[v128] & *v129 | (a5[1002] << v128));
      a5[1002] = v130;
      v126 += v128;
      *(a5 + 2006) = v126;
    }

    result = 0;
    v131 = &v17[*(a5 + 4020)];
    v132 = *v131;
    v133 = *(v131 + 1);
    v134 = *(v131 + 1);
    v135 = *(v131 + 1);
    v136 = v126 - v132;
    *(a5 + 2006) = v136;
    v137 = v130 >> v136;
    v138 = qword_1003E2808[v136] & v130;
    a5[1002] = v138;
    v139 = v134 + ((v130 >> v136) >> v133);
    v140 = v139;
    *(a5 + 4020) = v139;
    v141 = qword_1003E2808[v133];
    v142 = &a5[*(a5 + 4021) + 170];
    v143 = *v142;
    v144 = *(v142 + 1);
    v145 = *(v142 + 2);
    v185 = *(v142 + 4);
    LODWORD(v142) = v136 - v143;
    *(a5 + 2006) = v136 - v143;
    v146 = v138 >> (v136 - v143);
    v147 = qword_1003E2808[v136 - v143] & v138;
    a5[1002] = v147;
    v148 = v145 + (v146 >> v144);
    *(a5 + 4021) = v145 + (v146 >> v144);
    v149 = qword_1003E2808[v144];
    v150 = &a5[*(a5 + 4022) + 234];
    v151 = *(v150 + 1);
    LODWORD(v142) = v142 - *v150;
    *(a5 + 2006) = v142;
    v152 = v147 >> v142;
    v153 = (qword_1003E2808[v142] & v147);
    v154 = *(v150 + 1);
    v155 = *(v150 + 1);
    a5[1002] = v153;
    *(a5 + 4022) = v154 + (v152 >> v151);
    if (v155 + (qword_1003E2808[v151] & v152))
    {
      v125 = v155 + (qword_1003E2808[v151] & v152);
    }

    if (v140 > 0x3F || v148 > 0x3Fu || (v154 + (v152 >> v151)) > 0xFFu)
    {
      return result;
    }

    v156 = v135 + (v141 & v137);
    if (v156)
    {
      v157 = *(a5 + 2021);
      do
      {
        if (v157)
        {
          v158 = *(a5 + 2020);
        }

        else
        {
          v159 = *(a5 + 210);
          v161 = __OFSUB__(v159, 4);
          v160 = v159 >= 4;
          v162 = v159 - 4;
          if (!v160)
          {
            return 0;
          }

          *(a5 + 2020) = 0;
          v163 = *(a5 + 2014);
          v164 = 63 - v163;
          v165 = (63 - v163) & 0xFFFFFFF8;
          if ((v164 < 0) ^ v161 | ((v164 & 0xFFFFFFF8) == 0))
          {
            v167 = *v189;
          }

          else
          {
            v166 = &a5[1008][-(v164 >> 3)];
            if (v166 < a5[1])
            {
              return 0;
            }

            a5[1008] = v166;
            v167 = qword_1003E2808[v165] & *v166 | (a5[1006] << v165);
            v163 += v165;
            *(a5 + 2014) = v163;
          }

          v168 = *(v190 + *(a5 + 4036));
          v169 = v163 - v168;
          *(a5 + 2014) = v169;
          v170 = v167 >> v169;
          v171 = qword_1003E2808[v169] & v167;
          *(a5 + 4036) = v170 + HIWORD(v168);
          *(a5 + 2020) = BYTE1(v168);
          LODWORD(v170) = *(v190 + *(a5 + 4037));
          v172 = v169 - v170;
          *(a5 + 2014) = v172;
          v173 = v171 >> v172;
          v174 = qword_1003E2808[v172] & v171;
          *(a5 + 4037) = v173 + WORD1(v170);
          LODWORD(v173) = v170 & 0xFF00 | BYTE1(v168);
          *(a5 + 2020) = v173;
          v175 = *(v190 + *(a5 + 4038));
          v176 = v172 - v175;
          *(a5 + 2014) = v176;
          v177 = v174 >> v176;
          v178 = qword_1003E2808[v176] & v174;
          *(a5 + 4038) = v177 + HIWORD(v175);
          LODWORD(v173) = v173 & 0xFF00FFFF | (BYTE1(v175) << 16);
          *(a5 + 2020) = v173;
          v179 = *(v190 + *(a5 + 4039));
          v180 = v176 - v179;
          *(a5 + 2014) = v180;
          a5[1006] = (qword_1003E2808[v180] & v178);
          *(a5 + 4039) = (v178 >> v180) + HIWORD(v179);
          v158 = v173 & 0xFFFFFF | (BYTE1(v179) << 24);
          *(a5 + 2020) = v158;
          *(a5 + 2021) = 4;
          *(a5 + 210) = v162;
        }

        if ((sub_10013C938(v191, v158) & 0x80000000) != 0)
        {
          return 0;
        }

        *(a5 + 2020) >>= 8;
        v157 = *(a5 + 2021) - 1;
        *(a5 + 2021) = v157;
      }

      while (--v156);
    }

    if ((sub_10013C988(v191, v185 + (v149 & v146), v125) & 0x80000000) != 0)
    {
      return 0;
    }

    v124 = v186 + 1;
    v181 = *(a5 + 209);
    v123 = __OFSUB__(v186 + 1, v181);
    v17 = v184;
    if (v186 + 1 >= v181)
    {
      LODWORD(v101) = *(a5 + 208);
      v100 = *a5;
      goto LABEL_129;
    }
  }
}

uint64_t sub_10013C684(void *a1)
{
  v1 = *a1 + 12;
  v2 = a1[2];
  if (v1 <= v2)
  {
    v3 = *(*a1 + 8);
    if (v1 + v3 <= v2)
    {
      if (v3)
      {
        __asm { BRAA            X9, X17 }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_10013C830()
{
  if (v2 >= 8)
  {
    *v0 += v1 + 12;
    JUMPOUT(0x10013C814);
  }

  JUMPOUT(0x10013C810);
}

uint64_t sub_10013C850(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v4 = a2;
  if (*(a1 + 16) + a2 <= *(a1 + 8))
  {
    if (a2)
    {
      while (*(a1 + 28))
      {
        if ((sub_10013C938(a1, *a3) & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        ++a3;
        if (!--v4)
        {
          return 0;
        }
      }

      if (v4 < 4)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 16) + 4;
      do
      {
        v7 = *a3;
        a3 += 4;
        *(v6 - 4) = v7;
        *(a1 + 16) = v6;
        v4 -= 4;
        v6 += 4;
      }

      while (v4 > 3);
      if (v4)
      {
LABEL_15:
        while ((sub_10013C938(a1, *a3) & 0x80000000) == 0)
        {
          ++a3;
          if (!--v4)
          {
            return 0;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  while ((sub_10013C938(a1, *a3) & 0x80000000) == 0)
  {
    ++a3;
    if (!--v4)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10013C938(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 >= *(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 28);
  v4 = (a2 << (8 * v3++)) | *(a1 + 24);
  *(a1 + 24) = v4;
  *(a1 + 28) = v3;
  if (v3 != 4)
  {
    return 0;
  }

  v5 = 0;
  *v2 = v4;
  *(a1 + 16) = v2 + 1;
  *(a1 + 24) = 0;
  return v5;
}

uint64_t sub_10013C988(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a2 != 0;
  if (a3 && a2)
  {
    v6 = 0;
    v7 = a3;
    v8 = (a1 + 24);
    while (1)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 28);
      v11 = v9 - v7 - *a1;
      v13 = &v11[v10];
      v12 = &v11[v10] < 0;
      v14 = (v11 + v10) & 3;
      v15 = (*a1 + (v13 & 0xFFFFFFFFFFFFFFFCLL));
      if (v12 || v15 >= v9)
      {
        v16 = v15 != v9 || v14 >= v10;
        v15 = v8;
        if (v16)
        {
          break;
        }
      }

      if ((sub_10013C938(a1, (*v15 >> (8 * v14))) & 0x80000000) != 0)
      {
        break;
      }

      if (++v6 >= a2)
      {
        v3 = 0;
        return (v3 << 31 >> 31);
      }
    }

    v3 = 1;
  }

  return (v3 << 31 >> 31);
}

uint64_t sub_10013CA54(int a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = 0;
  v8[0] = -1;
  while (1)
  {
    while (1)
    {
      v5 = a2 + 8 * a1;
      a1 = *(v5 + 4);
      if ((a1 & 0x80000000) == 0)
      {
        break;
      }

      *(a3 + *(v5 + 6)) = v4;
      if ((v4 & 0x80000000) != 0)
      {
        return 1;
      }

      while (1)
      {
        a1 = v8[v4];
        if (a1 != -1)
        {
          break;
        }

        v6 = v4 <= 0;
        LODWORD(v4) = v4 - 1;
        if (v6)
        {
          return 1;
        }
      }

      v8[v4] = -1;
    }

    if (v4 >= a4)
    {
      break;
    }

    v4 = v4 + 1;
    v8[v4] = *(v5 + 6);
  }

  return 0;
}

uint64_t sub_10013CB14(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v46 = a2 - 1;
  v10 = a4 + 8;
  for (i = 1; ; i *= 2)
  {
    if (!a2)
    {
      goto LABEL_21;
    }

    v12 = 0;
    v13 = v46;
    do
    {
      v14 = *(v9 + 4 * v13);
      if (v14)
      {
        if (v14 <= i)
        {
          v14 = i;
        }

        v15 = a4 + 8 * v12;
        *v15 = v14;
        ++v12;
        *(v15 + 4) = -1;
        *(v15 + 6) = v13;
      }

      --v13;
    }

    while (v13 != -1);
    if (v12 == 1)
    {
      break;
    }

    if (v12 > 0xC)
    {
      v25 = 2 * (v12 < 0x39);
      while (1)
      {
        v26 = qword_1003E2A10[v25];
        if (v26 >= v12)
        {
          goto LABEL_35;
        }

        v27 = 0;
        v28 = qword_1003E2A10[v25];
        do
        {
          v29 = *(a4 + 8 * v28);
          v30 = v28;
          if (v28 < v26)
          {
            goto LABEL_34;
          }

          v31 = v27;
          v32 = v28;
          while (1)
          {
            v33 = *(a4 + v31);
            if (v33 != v29)
            {
              break;
            }

            if (*(a4 + v31 + 6) >= SHIWORD(v29))
            {
              goto LABEL_33;
            }

LABEL_31:
            v30 = v32 - v26;
            *(a4 + 8 * v32) = *(a4 + v31);
            v31 -= 8 * v26;
            v32 = v30;
            if (v30 < v26)
            {
              goto LABEL_34;
            }
          }

          if (v33 > v29)
          {
            goto LABEL_31;
          }

LABEL_33:
          v30 = v32;
LABEL_34:
          *(a4 + 8 * v30) = v29;
          ++v28;
          v27 += 8;
        }

        while (v28 != v12);
LABEL_35:
        if (++v25 == 6)
        {
          goto LABEL_36;
        }
      }
    }

    if (v12)
    {
      v16 = 0;
      for (j = 1; j != v12; ++j)
      {
        v18 = *(a4 + 8 * j);
        v19 = v16;
        v20 = j;
        do
        {
          v21 = *(a4 + v19);
          if (v21 == v18)
          {
            if (*(a4 + v19 + 6) >= SHIWORD(v18))
            {
              break;
            }
          }

          else if (v21 <= v18)
          {
            break;
          }

          *(a4 + 8 * v20) = *(a4 + v19);
          v19 -= 8;
          --v20;
        }

        while (v20);
        *(a4 + 8 * v20) = v18;
        v16 += 8;
      }

LABEL_36:
      *&v34 = -1;
      *(&v34 + 1) = -1;
      *(a4 + 8 * v12) = v34;
      v23 = v12 - 1;
      v24 = v12 + 1;
      goto LABEL_37;
    }

LABEL_21:
    v12 = 0;
    *&v22 = -1;
    *(&v22 + 1) = -1;
    *a4 = v22;
    v23 = -1;
    v24 = 1;
LABEL_37:
    v35 = 0;
    v36 = (v10 - 8 * v23 + 16 * v12);
    do
    {
      v37 = *(a4 + 8 * v35);
      v38 = *(a4 + 8 * v24);
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v40 = v35;
      }

      else
      {
        v40 = v35 + 1;
      }

      if (v39)
      {
        v41 = v24 + 1;
      }

      else
      {
        v41 = v24;
      }

      v42 = *(a4 + 8 * v40);
      v43 = *(a4 + 8 * v41);
      if (!v39)
      {
        v24 = v35;
      }

      v44 = v42 > v43;
      if (v42 > v43)
      {
        v45 = v41;
      }

      else
      {
        v45 = v40;
      }

      *(v36 - 2) = *(a4 + 8 * v45) + *(a4 + 8 * v24);
      *(v36 - 2) = v24;
      if (v44)
      {
        v35 = v40;
      }

      else
      {
        v35 = v40 + 1;
      }

      if (v44)
      {
        v24 = v41 + 1;
      }

      else
      {
        v24 = v41;
      }

      *(v36 - 1) = v45;
      *v36++ = -1;
      --v23;
    }

    while (v23);
    result = sub_10013CA54(2 * v12 - 1, a4, a5, a3);
    if (result)
    {
      return result;
    }
  }

  *(a5 + *(a4 + 6)) = 1;
  return result;
}

void sub_10013CDD0(size_t a1, int *a2, char *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = 0;
    v7 = 0;
    do
    {
      if (a2[v6])
      {
        ++v7;
      }

      ++v6;
    }

    while (a1 != v6);
    if (v7 >= 0x10)
    {
      v8 = a2 - 1;
      while (!v8[v5])
      {
        if (!--v5)
        {
          return;
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0x40000000;
      do
      {
        v12 = v9;
        v13 = a2[v10];
        if (v11 >= v13)
        {
          v14 = a2[v10];
        }

        else
        {
          v14 = v11;
        }

        if (v13)
        {
          ++v9;
          v11 = v14;
        }

        ++v10;
      }

      while (v5 != v10);
      if (v9 >= 5)
      {
        if (v13)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = v12;
        }

        v16 = v5 - v15;
        if (v11 <= 3 && v16 <= 5 && v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = a2 + 1;
          v20 = v5 - 2;
          do
          {
            if (*(v19 - 1) && !*v19 && v19[1])
            {
              *v19 = 1;
            }

            ++v19;
            --v20;
          }

          while (v20);
        }

        if (v9 >= 0x1C)
        {
          bzero(a3, v5);
          v21 = 0;
          v22 = 0;
          v23 = *a2;
          do
          {
            if (v5 == v22 || a2[v22] != v23)
            {
              if (!v23 && v21 > 4 || v23 && v21 >= 7)
              {
                memset(&a3[v22 - v21], 1, v21);
              }

              if (v5 != v22)
              {
                v23 = a2[v22];
              }

              v21 = 1;
            }

            else
            {
              ++v21;
            }

            v24 = v22++ >= v5;
          }

          while (!v24);
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = vdupq_n_s64(4uLL);
          v29 = ((a2[1] + *a2 + a2[2]) << 8) / 3u + 420;
          do
          {
            if (v5 == v25 || a3[v25] || v25 && a3[v25 - 1] || (v42 = a2[v25], (v42 << 8) - v29 - 1240 <= 0xFFFFFFFFFFFFF64FLL))
            {
              v30 = &a2[v25];
              if (v27 > 3 || v27 == 3 && !v26)
              {
                v31 = 0;
                v32 = v26 + (v27 >> 1);
                if (v27 > v32)
                {
                  v33 = 1;
                }

                else
                {
                  v33 = v32 / v27;
                }

                if (v26)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = 0;
                }

                v35 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v36 = vdupq_n_s64(v27 - 1);
                v37 = v8;
                v38 = xmmword_1003772E0;
                v39 = xmmword_10037C710;
                do
                {
                  v40 = vmovn_s64(vcgeq_u64(v36, v38));
                  if (vuzp1_s16(v40, 2).u8[0])
                  {
                    *v37 = v34;
                  }

                  if (vuzp1_s16(v40, 2).i8[2])
                  {
                    v30[v31 ^ 0x3FFFFFFFFFFFFFFELL] = v34;
                  }

                  if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v36, *&v39))).i32[1])
                  {
                    v30[v31 ^ 0xFFFFFFFFFFFFFFFDLL] = v34;
                    v30[v31 ^ 0x3FFFFFFFFFFFFFFCLL] = v34;
                  }

                  v31 += 4;
                  v39 = vaddq_s64(v39, v28);
                  v38 = vaddq_s64(v38, v28);
                  v37 -= 4;
                }

                while (v35 != v31);
              }

              if (v25 >= v5 - 2)
              {
                if (v25 >= v5)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = a2[v25] << 8;
                }
              }

              else
              {
                v41 = ((v30[1] + *v30 + v30[2]) << 8) / 3u + 420;
              }

              v29 = v41;
              if (v5 == v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = a2[v25];
              }

              v27 = 1;
            }

            else
            {
              ++v27;
              v26 += v42;
              if (v27 >= 4)
              {
                v29 = ((v26 << 8) + (v27 >> 1)) / v27;
                if (v27 == 4)
                {
                  v29 += 120;
                }
              }
            }

            ++v8;
            v24 = v25++ >= v5;
          }

          while (!v24);
        }
      }
    }
  }
}

uint64_t sub_10013D158(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return result;
  }

  v5 = -a2;
  v6 = result - 1;
  while (!*(v6 + a2))
  {
    --v6;
    if (__CFADD__(v5++, 1))
    {
      if (a2 <= 0x32)
      {
        return result;
      }

LABEL_28:
      v8 = 0;
      v11 = 0;
      v9 = 0;
      v23 = 2;
      v22 = 2;
      goto LABEL_29;
    }
  }

  v8 = -v5;
  if (a2 <= 0x32)
  {
    v24 = 0;
    v25 = 0;
    if (!v5)
    {
      return result;
    }

LABEL_32:
    v26 = 0;
    v27 = 8;
    while (1)
    {
      v28 = *(result + v26);
      if ((*(result + v26) == 0 || !v24) && (*(result + v26) != 0 || !v25))
      {
        break;
      }

      if (v26 + 1 >= v8)
      {
        break;
      }

      v29 = 1;
      while (*(result + v26 + v29) == v28)
      {
        if (v8 - v26 == ++v29)
        {
          v29 = v8 - v26;
          break;
        }
      }

      if (*(result + v26))
      {
        goto LABEL_44;
      }

      if (v29 == 11)
      {
        *(a4 + *a3) = 0;
        *(a5 + *a3) = 0;
        v30 = *a3 + 1;
        *a3 = v30;
        v29 = 11;
        v31 = 7;
LABEL_70:
        *(a4 + v30) = 17;
        *(a5 + *a3) = v31 & 7;
        v44 = *a3;
        v45 = *a3 + 1;
        *a3 = v45;
        if (v31 >= 8)
        {
          do
          {
            v31 = (v31 >> 3) - 1;
            *(a4 + v45) = 17;
            *(a5 + *a3) = v31 & 7;
            v44 = *a3;
            v45 = *a3 + 1;
            *a3 = v45;
          }

          while (v31 > 7);
        }

        if (v44 > v30)
        {
          v46 = v30;
          do
          {
            v47 = *(a4 + v46);
            *(a4 + v46) = *(a4 + v44);
            *(a4 + v44) = v47;
            ++v46;
            --v44;
          }

          while (v46 < v44);
          v45 = *a3;
        }

        for (i = v45 - 1; v30 < i; --i)
        {
          v49 = *(a5 + v30);
          *(a5 + v30) = *(a5 + i);
          *(a5 + i) = v49;
          ++v30;
        }

        goto LABEL_67;
      }

      v31 = v29 - 3;
      if (v29 >= 3)
      {
        v30 = *a3;
        goto LABEL_70;
      }

      if (v29)
      {
LABEL_65:
        v42 = *a3;
        v43 = v29;
        do
        {
          *(a4 + v42) = 0;
          *(a5 + *a3) = 0;
          v42 = *a3 + 1;
          *a3 = v42;
          --v43;
        }

        while (v43);
      }

LABEL_67:
      v26 += v29;
      if (v26 >= v8)
      {
        return result;
      }
    }

    v29 = 1;
    if (!*(result + v26))
    {
      goto LABEL_65;
    }

LABEL_44:
    v32 = v29;
    if (v27 != v28)
    {
      *(a4 + *a3) = v28;
      *(a5 + (*a3)++) = 0;
      v32 = v29 - 1;
    }

    if (v32 == 7)
    {
      *(a4 + *a3) = v28;
      *(a5 + *a3) = 0;
      v33 = *a3 + 1;
      *a3 = v33;
      v34 = 3;
    }

    else
    {
      v34 = v32 - 3;
      if (v32 < 3)
      {
        if (v32)
        {
          v35 = *a3;
          do
          {
            *(a4 + v35) = v28;
            *(a5 + *a3) = 0;
            v35 = *a3 + 1;
            *a3 = v35;
            --v32;
          }

          while (v32);
        }

        goto LABEL_62;
      }

      v33 = *a3;
    }

    *(a4 + v33) = 16;
    *(a5 + *a3) = v34 & 3;
    v36 = *a3;
    v37 = *a3 + 1;
    *a3 = v37;
    if (v34 >= 4)
    {
      do
      {
        v34 = (v34 >> 2) - 1;
        *(a4 + v37) = 16;
        *(a5 + *a3) = v34 & 3;
        v36 = *a3;
        v37 = *a3 + 1;
        *a3 = v37;
      }

      while (v34 > 3);
    }

    if (v36 > v33)
    {
      v38 = v33;
      do
      {
        v39 = *(a4 + v38);
        *(a4 + v38) = *(a4 + v36);
        *(a4 + v36) = v39;
        ++v38;
        --v36;
      }

      while (v38 < v36);
      v37 = *a3;
    }

    for (j = v37 - 1; v33 < j; --j)
    {
      v41 = *(a5 + v33);
      *(a5 + v33) = *(a5 + j);
      *(a5 + j) = v41;
      ++v33;
    }

LABEL_62:
    v27 = v28;
    goto LABEL_67;
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -v5;
  v13 = 1;
  v14 = 1;
  do
  {
    v15 = *(result + v10);
    if (v10 + 1 >= v8)
    {
      ++v10;
      v16 = 1;
    }

    else
    {
      v16 = 1;
      while (*(result + v10 + v16) == v15)
      {
        if (v12 - v10 == ++v16)
        {
          v16 = v12 - v10;
          break;
        }
      }

      v10 += v16;
    }

    v17 = v15 == 0;
    v18 = !v17;
    v19 = (v16 > 2) & v17;
    v14 += v19;
    if (v19)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v9 += v20;
    v21 = (v16 > 3) & v18;
    if (((v16 > 3) & v18) == 0)
    {
      v16 = 0;
    }

    v11 += v16;
    v13 += v21;
  }

  while (v10 < v8);
  v22 = 2 * v13;
  v23 = 2 * v14;
LABEL_29:
  v24 = v11 > v22;
  v25 = v9 > v23;
  if (v8)
  {
    goto LABEL_32;
  }

  return result;
}

unsigned __int8 *sub_10013D55C(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  memset(v14, 0, sizeof(v14));
  if (a2)
  {
    v3 = result;
    v4 = a2;
    do
    {
      v5 = *v3++;
      ++*(v14 + v5);
      --v4;
    }

    while (v4);
  }

  v6 = 0;
  v7 = 0;
  LOWORD(v14[0]) = 0;
  do
  {
    v7 = 2 * (v7 + *(v14 + v6));
    *&v13[v6 + 2] = v7;
    v6 += 2;
  }

  while (v6 != 30);
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = result[i];
      if (result[i])
      {
        v10 = *&v13[2 * v9];
        *&v13[2 * v9] = v10 + 1;
        v11 = qword_1003E2A40[v10 & 0xF];
        if (v9 >= 5)
        {
          for (j = 4; j < v9; j += 4)
          {
            v10 >>= 4;
            v11 = qword_1003E2A40[v10] | (16 * v11);
          }
        }

        *(a3 + 2 * i) = v11 >> (-v9 & 3);
      }
    }
  }

  return result;
}

uint64_t sub_10013D67C(int32x4_t *a1, unint64_t a2, char *a3, unint64_t a4, char *__b)
{
  v7 = a3;
  v24 = a3;
  memset_pattern8(__b, &unk_1003E2408, 0x8000uLL);
  v22 = a1;
  if (a4)
  {
    v10 = v7;
    v11 = a1;
    while (1)
    {
      if (a2 < 0xC)
      {
        return 0;
      }

      v12 = a4 >= 0x10000 ? 0x10000 : a4;
      v13 = (&v11->u64[1] + 4);
      v23 = (&v11->u64[1] + 4);
      lz4_encode_2gb(&v23, a2 - 12, &v24, v10, v12, __b, 0);
      if (v24 - v7 < v12)
      {
        break;
      }

      if (v23 == v13)
      {
        goto LABEL_12;
      }

      v14 = v23 - v13;
      v15 = v23 - v11;
      if (v23 - v11 >= v12 + 8)
      {
        goto LABEL_12;
      }

      v11->i32[0] = 825521762;
      v11->i32[1] = v12;
      v11->i32[2] = v14;
      v11 = v23;
      v7 = v24;
      a2 -= v15;
LABEL_15:
      if (&v7[-v10] >= 1610612736)
      {
        for (i = 0; i != 0x8000; i += 8)
        {
          v19 = *&__b[i];
          if (v19 != 0x80000000)
          {
            if (v19 >> 30)
            {
              v20 = v19 - 0x40000000;
            }

            else
            {
              v20 = 0x80000000;
            }

            *&__b[i] = v20;
          }
        }

        v10 += 0x40000000;
      }

      a4 -= v12;
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    v23 = (&v11->u64[1] + 4);
    v24 = &v7[v12];
LABEL_12:
    v11->i32[0] = 758412898;
    v11->i32[1] = v12;
    v16 = a2 - 8 >= v12;
    a2 = a2 - 8 - v12;
    if (!v16)
    {
      return 0;
    }

    v17 = &v11->u64[1];
    v7 = v24;
    memcpy(v17, &v24[-v12], v12);
    v11 = (v17 + v12);
    goto LABEL_15;
  }

  v11 = a1;
LABEL_27:
  if (a2 < 4)
  {
    return 0;
  }

  v11->i32[0] = 607417954;
  return v11 - v22 + 4;
}

uint64_t sub_10013D848(uint64_t result, char *__src, unint64_t a3, int a4, unsigned int *a5, char *__dst, uint64_t a7, unsigned int a8, unint64_t *a9, uint64_t a10)
{
  v13 = *a9;
  v14 = __clz(a8) ^ 0x1F;
  if (v14 > 12)
  {
    if (v14 <= 14)
    {
      if (v14 == 13)
      {
        result = sub_100140460(result, __src, a3, a5, __dst, a7, a9, a10);
      }

      else
      {
        result = sub_100140C9C(result, __src, a3, a5, __dst, a7, a9, a10);
      }
    }

    else
    {
      switch(v14)
      {
        case 15:
          result = sub_1001414D8(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
        case 16:
          result = sub_100141D14(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
        case 17:
          result = sub_10014265C(result, __src, a3, a5, __dst, a7, a9, a10);
          break;
      }
    }
  }

  else if (v14 <= 9)
  {
    if (v14 == 8)
    {
      result = sub_10013DB34(result, __src, a3, a5, __dst, a7, a9, a10);
    }

    else if (v14 == 9)
    {
      result = sub_10013E370(result, __src, a3, a5, __dst, a7, a9, a10);
    }
  }

  else if (v14 == 10)
  {
    result = sub_10013EBAC(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  else if (v14 == 11)
  {
    result = sub_10013F3E8(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  else
  {
    result = sub_10013FC24(result, __src, a3, a5, __dst, a7, a9, a10);
  }

  if (*a9 - v13 > 8 * a3 + 31)
  {
    *(a10 + (v13 >> 3)) &= ~(-1 << (v13 & 7));
    *a9 = v13;
    sub_1001294F4(a3, 1u, a9, a10);
    v15 = (*a9 + 7) & 0xFFFFFFF8;
    *a9 = v15;
    result = memcpy((a10 + (v15 >> 3)), __src, a3);
    v16 = *a9 + 8 * a3;
    *a9 = v16;
    *(a10 + (v16 >> 3)) = 0;
  }

  if (a4)
  {
    v17 = *a9;
    *(a10 + (*a9 >> 3)) = (1 << (*a9 & 7)) | *(a10 + (*a9 >> 3));
    *a9 = v17 + 1;
    *(a10 + ((v17 + 1) >> 3)) = (1 << ((v17 + 1) & 7)) | *(a10 + ((v17 + 1) >> 3));
    *a9 = (v17 + 9) & 0xFFFFFFF8;
  }

  return result;
}

uint64_t sub_10013DB34(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 56;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 54) & 0x3FC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 54) & 0x3FC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 54) & 0x3FC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_10013E370(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 55;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 53) & 0x7FC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 53) & 0x7FC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 53) & 0x7FC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_10013EBAC(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 54;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 52) & 0xFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 52) & 0xFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 52) & 0xFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_10013F3E8(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 53;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 51) & 0x1FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 51) & 0x1FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_10013FC24(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 52;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 50) & 0x3FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 50) & 0x3FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_100140460(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 51;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 49) & 0x7FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 49) & 0x7FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_100140C9C(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 50;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 48) & 0xFFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 48) & 0xFFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_1001414D8(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (sub_100142FA4(v11, v12, v15 - v9))
      {
        sub_1001294F4(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = sub_100143150(v85);
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        sub_1001294F4(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 49;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 47) & 0x1FFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 47) & 0x1FFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t sub_100141D14(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = result;
  if (a3)
  {
    v9 = __dst;
    v11 = __src;
    do
    {
      while (1)
      {
        if (a3 >= 0x20000)
        {
          v12 = 0x20000;
        }

        else
        {
          v12 = a3;
        }

        v13 = &v11[v12];
        v14 = a4;
        v15 = v9;
        v16 = v11;
        v96 = a3;
        v17 = a3 - 16;
        v99 = &v11[v12];
        if (a3 >= 0x10)
        {
          v95 = v12;
          if (v12 - 6 < v17)
          {
            v17 = v12 - 6;
          }

          v18 = v9;
          v19 = &v11[v17];
          v20 = v13 - 6;
          v21 = -1;
          v14 = a4;
          v15 = v18;
          v98 = v11;
          v16 = v11;
          v100 = v13 - 6;
LABEL_10:
          v22 = v16 + 1;
          v23 = (0x1E35A7BD0000 * *(v16 + 1)) >> 48;
          v24 = 32;
          while (1)
          {
            v25 = &v22[v24 >> 5];
            if (v25 > v19)
            {
              break;
            }

            ++v24;
            while (1)
            {
              v26 = v22;
              v27 = v23;
              v22 = v25;
              v23 = (0x1E35A7BD0000 * *v25) >> 48;
              v28 = &v26[-v21];
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5] && v21 >= 1)
              {
                break;
              }

              v28 = &__src[*(a6 + 4 * v27)];
              *(a6 + 4 * v27) = v26 - __src;
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5])
              {
                goto LABEL_25;
              }

              v25 = &v22[v24++ >> 5];
              if (v25 > v19)
              {
                goto LABEL_94;
              }
            }

            *(a6 + 4 * v27) = v26 - __src;
LABEL_25:
            v30 = v26 - v28;
            if (v26 - v28 <= 262128)
            {
              v31 = v28 + 6;
              v32 = (v26 + 6);
              v33 = v20 - v26;
              if ((v20 - v26) < 8)
              {
                v36 = 0;
LABEL_89:
                v80 = v33 & 7;
                if (v80)
                {
                  v81 = v36 | v80;
                  while (v31[v36] == *v32)
                  {
                    ++v32;
                    ++v36;
                    if (!--v80)
                    {
                      v36 = v81;
                      break;
                    }
                  }
                }
              }

              else
              {
                v34 = 0;
                v35 = v33 >> 3;
                v36 = v33 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v37 = *&v32[v34];
                  v38 = *&v31[v34];
                  if (v37 != v38)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--v35)
                  {
                    v32 += v33 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_89;
                  }
                }

                v36 = v34 + (__clz(__rbit64(v38 ^ v37)) >> 3);
              }

              v39 = v26 - v16;
              v101 = v36;
              if ((v26 - v16) >= 6)
              {
                if (v39 > 0x81)
                {
                  if (v39 > 0x841)
                  {
                    if (v39 >> 1 > 0xC20)
                    {
                      if (v39 > 0x5841)
                      {
                        v43 = -5784041;
                      }

                      else
                      {
                        v43 = -1589738;
                      }

                      v40 = (v39 << 8) + v43;
                    }

                    else
                    {
                      v40 = (v39 << 8) - 541163;
                    }
                  }

                  else
                  {
                    v42 = __clz(v39 - 66) ^ 0x1F;
                    v40 = (v42 | (((-1 << v42) + v39 - 66) << 8)) + 10;
                  }
                }

                else
                {
                  v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
                  v40 = (((v39 - 2) >> v41) + 2 * v41 + 2) | ((v39 - 2 - ((v39 - 2) >> v41 << v41)) << 8);
                }
              }

              else
              {
                v40 = v26 - v16;
              }

              *v14 = v40;
              v44 = v15;
              memcpy(v15, v16, v39);
              if (v21 == v30)
              {
                v45 = 64;
              }

              else
              {
                v46 = __clz(v30 + 3) ^ 0x1F;
                v45 = (((v30 + 3 - ((((v30 + 3) >> (v46 - 1)) & 1 | 2) << (v46 - 1))) << 8) | (2 * v46) | ((v30 + 3) >> (v46 - 1)) & 1) + 76;
                v21 = v30;
              }

              v47 = v101 + 6;
              v14[1] = v45;
              if (v101 + 6 <= 0xB)
              {
                v48 = v101 + 26;
                goto LABEL_51;
              }

              if (v47 > 0x47)
              {
                if (v47 > 0x87)
                {
                  if (v47 > 0x847)
                  {
                    v51 = (v47 << 8) - 542657;
                  }

                  else
                  {
                    v52 = __clz(v101 - 66) ^ 0x1F;
                    v51 = (v52 | (((-1 << v52) + v101 - 66) << 8)) + 52;
                  }
                }

                else
                {
                  v51 = (((v101 - 2) >> 5) + 54) | (((v101 - 2) & 0x1F) << 8);
                }

                v14[2] = v51;
                v14[3] = 64;
                v50 = 16;
              }

              else
              {
                v49 = (__clz(v101 - 2) ^ 0x1F) - 1;
                v48 = (((v101 - 2) >> v49) + 2 * v49 + 28) | ((v101 - 2 - ((v101 - 2) >> v49 << v49)) << 8);
LABEL_51:
                v14[2] = v48;
                v50 = 12;
              }

              v16 = &v26[v47];
              v15 = &v44[v39];
              v14 = (v14 + v50);
              if (&v26[v47] >= v19)
              {
                break;
              }

              v53 = *(v16 - 5);
              *(a6 + (((0x1E35A7BD0000 * v53) >> 46) & 0x3FFFC)) = v16 - __src - 5;
              *(a6 + (((506832829 * ((v53 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 4;
              *(a6 + (((506832829 * (v53 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 3;
              v54 = *(v16 - 2);
              *(a6 + (((0x1E35A7BD0000 * v54) >> 46) & 0x3FFFC)) = v16 - __src - 2;
              *(a6 + (((506832829 * ((v54 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 1;
              v55 = ((506832829 * (v54 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC;
              v56 = *(a6 + v55);
              *(a6 + v55) = v16 - __src;
              v57 = &__src[v56];
              LODWORD(v58) = v16 - v57;
              v20 = v100;
              if (v16 - v57 < 262129 && *v16 == *v57)
              {
                v11 = v98;
                while (1)
                {
                  v59 = v58;
                  if (v16[4] != v57[4] || v16[5] != v57[5])
                  {
                    break;
                  }

                  v60 = v57 + 6;
                  v61 = (v16 + 6);
                  v62 = v100 - v16;
                  if ((v100 - v16) < 8)
                  {
                    v65 = 0;
LABEL_82:
                    v78 = v62 & 7;
                    if (v78)
                    {
                      v79 = v65 | v78;
                      while (v60[v65] == *v61)
                      {
                        ++v61;
                        ++v65;
                        if (!--v78)
                        {
                          v65 = v79;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = v62 >> 3;
                    v65 = v62 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v66 = *&v61[v63];
                      v67 = *&v60[v63];
                      if (v66 != v67)
                      {
                        break;
                      }

                      v63 += 8;
                      if (!--v64)
                      {
                        v61 += v62 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_82;
                      }
                    }

                    v65 = v63 + (__clz(__rbit64(v67 ^ v66)) >> 3);
                  }

                  v68 = v65 + 6;
                  if (v65 + 6 > 9)
                  {
                    if (v68 > 0x85)
                    {
                      if (v68 > 0x845)
                      {
                        v69 = (v68 << 8) - 542145;
                      }

                      else
                      {
                        v71 = v65 - 64;
                        v72 = __clz(v71) ^ 0x1F;
                        v69 = (v72 | (((-1 << v72) + v71) << 8)) + 52;
                      }
                    }

                    else
                    {
                      v70 = (__clz(v65) ^ 0x1F) - 1;
                      v69 = ((v65 >> v70) + 2 * v70 + 44) | ((v65 - (v65 >> v70 << v70)) << 8);
                    }
                  }

                  else
                  {
                    v69 = v65 + 44;
                  }

                  v16 += v68;
                  v73 = __clz(v59 + 3);
                  *v14 = v69;
                  v14[1] = (((v59 + 3 - ((((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1 | 2) << ((v73 ^ 0x1F) - 1))) << 8) | (2 * (v73 ^ 0x1F)) | ((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1) + 76;
                  v14 += 2;
                  if (v16 >= v19)
                  {
                    v9 = __dst;
                    v12 = v95;
                    v13 = v99;
                    goto LABEL_95;
                  }

                  v74 = *(v16 - 5);
                  *(a6 + (((0x1E35A7BD0000 * v74) >> 46) & 0x3FFFC)) = v16 - __src - 5;
                  *(a6 + (((506832829 * ((v74 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 4;
                  *(a6 + (((506832829 * (v74 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 3;
                  v75 = *(v16 - 2);
                  *(a6 + (((0x1E35A7BD0000 * v75) >> 46) & 0x3FFFC)) = v16 - __src - 2;
                  *(a6 + (((506832829 * ((v75 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 1;
                  v76 = ((506832829 * (v75 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC;
                  v77 = *(a6 + v76);
                  *(a6 + v76) = v16 - __src;
                  v57 = &__src[v77];
                  v58 = v16 - &__src[v77];
                  if (v58 < 262129)
                  {
                    v21 = v59;
                    if (*v16 == *v57)
                    {
                      continue;
                    }
                  }

                  v21 = v59;
                  goto LABEL_10;
                }
              }

              goto LABEL_10;
            }
          }

LABEL_94:
          v9 = __dst;
          v12 = v95;
          v11 = v98;
          v13 = v99;
        }

LABEL_95:
        if (v16 < v13)
        {
          v82 = v13 - v16;
          if ((v13 - v16) >= 6)
          {
            v84 = (v82 << 8) - 1589738;
            if (v82 > 0x5841)
            {
              v84 = (v82 << 8) - 5784041;
            }

            if (v82 >> 1 <= 0xC20)
            {
              v83 = (v82 << 8) - 541163;
            }

            else
            {
              v83 = v84;
            }

            v85 = __clz(v82 - 66) ^ 0x1F;
            if (v82 <= 0x841)
            {
              v83 = (v85 | (((-1 << v85) + v82 - 66) << 8)) + 10;
            }

            v86 = (__clz(v82 - 2) ^ 0x1F) - 1;
            if (v82 <= 0x81)
            {
              v83 = (((v82 - 2) >> v86) + 2 * v86 + 2) | ((v82 - 2 - ((v82 - 2) >> v86 << v86)) << 8);
            }
          }

          else
          {
            v83 = v13 - v16;
          }

          *v14 = v83;
          v87 = v15;
          memcpy(v15, v16, v82);
          v15 = &v87[v82];
        }

        if (sub_100142FA4(v11, v12, v15 - v9))
        {
          break;
        }

        sub_1001294F4(v12, 1u, a7, a8);
        v89 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v89;
        result = memcpy((a8 + (v89 >> 3)), v11, v12);
        v90 = *a7 + 8 * v12;
        *a7 = v90;
        *(a8 + (v90 >> 3)) = 0;
        v11 = v99;
        a3 = v96 - v12;
        if (v96 == v12)
        {
          return result;
        }
      }

      sub_1001294F4(v12, 0, a7, a8);
      v88 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v88 + 13;
      result = sub_100143150(v91);
      if (*(v91 + 24))
      {
        break;
      }

      v11 = v99;
      a3 = v96 - v12;
    }

    while (v96 != v12);
  }

  return result;
}

uint64_t sub_10014265C(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = result;
  if (a3)
  {
    v9 = __dst;
    v11 = __src;
    do
    {
      while (1)
      {
        if (a3 >= 0x20000)
        {
          v12 = 0x20000;
        }

        else
        {
          v12 = a3;
        }

        v13 = &v11[v12];
        v14 = a4;
        v15 = v9;
        v16 = v11;
        v96 = a3;
        v17 = a3 - 16;
        v99 = &v11[v12];
        if (a3 >= 0x10)
        {
          v95 = v12;
          if (v12 - 6 < v17)
          {
            v17 = v12 - 6;
          }

          v18 = v9;
          v19 = &v11[v17];
          v20 = v13 - 6;
          v21 = -1;
          v14 = a4;
          v15 = v18;
          v98 = v11;
          v16 = v11;
          v100 = v13 - 6;
LABEL_10:
          v22 = v16 + 1;
          v23 = (0x1E35A7BD0000 * *(v16 + 1)) >> 47;
          v24 = 32;
          while (1)
          {
            v25 = &v22[v24 >> 5];
            if (v25 > v19)
            {
              break;
            }

            ++v24;
            while (1)
            {
              v26 = v22;
              v27 = v23;
              v22 = v25;
              v23 = (0x1E35A7BD0000 * *v25) >> 47;
              v28 = &v26[-v21];
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5] && v21 >= 1)
              {
                break;
              }

              v28 = &__src[*(a6 + 4 * v27)];
              *(a6 + 4 * v27) = v26 - __src;
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5])
              {
                goto LABEL_25;
              }

              v25 = &v22[v24++ >> 5];
              if (v25 > v19)
              {
                goto LABEL_94;
              }
            }

            *(a6 + 4 * v27) = v26 - __src;
LABEL_25:
            v30 = v26 - v28;
            if (v26 - v28 <= 262128)
            {
              v31 = v28 + 6;
              v32 = (v26 + 6);
              v33 = v20 - v26;
              if ((v20 - v26) < 8)
              {
                v36 = 0;
LABEL_89:
                v80 = v33 & 7;
                if (v80)
                {
                  v81 = v36 | v80;
                  while (v31[v36] == *v32)
                  {
                    ++v32;
                    ++v36;
                    if (!--v80)
                    {
                      v36 = v81;
                      break;
                    }
                  }
                }
              }

              else
              {
                v34 = 0;
                v35 = v33 >> 3;
                v36 = v33 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v37 = *&v32[v34];
                  v38 = *&v31[v34];
                  if (v37 != v38)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--v35)
                  {
                    v32 += v33 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_89;
                  }
                }

                v36 = v34 + (__clz(__rbit64(v38 ^ v37)) >> 3);
              }

              v39 = v26 - v16;
              v101 = v36;
              if ((v26 - v16) >= 6)
              {
                if (v39 > 0x81)
                {
                  if (v39 > 0x841)
                  {
                    if (v39 >> 1 > 0xC20)
                    {
                      if (v39 > 0x5841)
                      {
                        v43 = -5784041;
                      }

                      else
                      {
                        v43 = -1589738;
                      }

                      v40 = (v39 << 8) + v43;
                    }

                    else
                    {
                      v40 = (v39 << 8) - 541163;
                    }
                  }

                  else
                  {
                    v42 = __clz(v39 - 66) ^ 0x1F;
                    v40 = (v42 | (((-1 << v42) + v39 - 66) << 8)) + 10;
                  }
                }

                else
                {
                  v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
                  v40 = (((v39 - 2) >> v41) + 2 * v41 + 2) | ((v39 - 2 - ((v39 - 2) >> v41 << v41)) << 8);
                }
              }

              else
              {
                v40 = v26 - v16;
              }

              *v14 = v40;
              v44 = v15;
              memcpy(v15, v16, v39);
              if (v21 == v30)
              {
                v45 = 64;
              }

              else
              {
                v46 = __clz(v30 + 3) ^ 0x1F;
                v45 = (((v30 + 3 - ((((v30 + 3) >> (v46 - 1)) & 1 | 2) << (v46 - 1))) << 8) | (2 * v46) | ((v30 + 3) >> (v46 - 1)) & 1) + 76;
                v21 = v30;
              }

              v47 = v101 + 6;
              v14[1] = v45;
              if (v101 + 6 <= 0xB)
              {
                v48 = v101 + 26;
                goto LABEL_51;
              }

              if (v47 > 0x47)
              {
                if (v47 > 0x87)
                {
                  if (v47 > 0x847)
                  {
                    v51 = (v47 << 8) - 542657;
                  }

                  else
                  {
                    v52 = __clz(v101 - 66) ^ 0x1F;
                    v51 = (v52 | (((-1 << v52) + v101 - 66) << 8)) + 52;
                  }
                }

                else
                {
                  v51 = (((v101 - 2) >> 5) + 54) | (((v101 - 2) & 0x1F) << 8);
                }

                v14[2] = v51;
                v14[3] = 64;
                v50 = 16;
              }

              else
              {
                v49 = (__clz(v101 - 2) ^ 0x1F) - 1;
                v48 = (((v101 - 2) >> v49) + 2 * v49 + 28) | ((v101 - 2 - ((v101 - 2) >> v49 << v49)) << 8);
LABEL_51:
                v14[2] = v48;
                v50 = 12;
              }

              v16 = &v26[v47];
              v15 = &v44[v39];
              v14 = (v14 + v50);
              if (&v26[v47] >= v19)
              {
                break;
              }

              v53 = *(v16 - 5);
              *(a6 + (((0x1E35A7BD0000 * v53) >> 45) & 0x7FFFC)) = v16 - __src - 5;
              *(a6 + (((506832829 * ((v53 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 4;
              *(a6 + (((506832829 * (v53 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 3;
              v54 = *(v16 - 2);
              *(a6 + (((0x1E35A7BD0000 * v54) >> 45) & 0x7FFFC)) = v16 - __src - 2;
              *(a6 + (((506832829 * ((v54 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 1;
              v55 = ((506832829 * (v54 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC;
              v56 = *(a6 + v55);
              *(a6 + v55) = v16 - __src;
              v57 = &__src[v56];
              LODWORD(v58) = v16 - v57;
              v20 = v100;
              if (v16 - v57 < 262129 && *v16 == *v57)
              {
                v11 = v98;
                while (1)
                {
                  v59 = v58;
                  if (v16[4] != v57[4] || v16[5] != v57[5])
                  {
                    break;
                  }

                  v60 = v57 + 6;
                  v61 = (v16 + 6);
                  v62 = v100 - v16;
                  if ((v100 - v16) < 8)
                  {
                    v65 = 0;
LABEL_82:
                    v78 = v62 & 7;
                    if (v78)
                    {
                      v79 = v65 | v78;
                      while (v60[v65] == *v61)
                      {
                        ++v61;
                        ++v65;
                        if (!--v78)
                        {
                          v65 = v79;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = v62 >> 3;
                    v65 = v62 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v66 = *&v61[v63];
                      v67 = *&v60[v63];
                      if (v66 != v67)
                      {
                        break;
                      }

                      v63 += 8;
                      if (!--v64)
                      {
                        v61 += v62 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_82;
                      }
                    }

                    v65 = v63 + (__clz(__rbit64(v67 ^ v66)) >> 3);
                  }

                  v68 = v65 + 6;
                  if (v65 + 6 > 9)
                  {
                    if (v68 > 0x85)
                    {
                      if (v68 > 0x845)
                      {
                        v69 = (v68 << 8) - 542145;
                      }

                      else
                      {
                        v71 = v65 - 64;
                        v72 = __clz(v71) ^ 0x1F;
                        v69 = (v72 | (((-1 << v72) + v71) << 8)) + 52;
                      }
                    }

                    else
                    {
                      v70 = (__clz(v65) ^ 0x1F) - 1;
                      v69 = ((v65 >> v70) + 2 * v70 + 44) | ((v65 - (v65 >> v70 << v70)) << 8);
                    }
                  }

                  else
                  {
                    v69 = v65 + 44;
                  }

                  v16 += v68;
                  v73 = __clz(v59 + 3);
                  *v14 = v69;
                  v14[1] = (((v59 + 3 - ((((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1 | 2) << ((v73 ^ 0x1F) - 1))) << 8) | (2 * (v73 ^ 0x1F)) | ((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1) + 76;
                  v14 += 2;
                  if (v16 >= v19)
                  {
                    v9 = __dst;
                    v12 = v95;
                    v13 = v99;
                    goto LABEL_95;
                  }

                  v74 = *(v16 - 5);
                  *(a6 + (((0x1E35A7BD0000 * v74) >> 45) & 0x7FFFC)) = v16 - __src - 5;
                  *(a6 + (((506832829 * ((v74 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 4;
                  *(a6 + (((506832829 * (v74 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 3;
                  v75 = *(v16 - 2);
                  *(a6 + (((0x1E35A7BD0000 * v75) >> 45) & 0x7FFFC)) = v16 - __src - 2;
                  *(a6 + (((506832829 * ((v75 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 1;
                  v76 = ((506832829 * (v75 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC;
                  v77 = *(a6 + v76);
                  *(a6 + v76) = v16 - __src;
                  v57 = &__src[v77];
                  v58 = v16 - &__src[v77];
                  if (v58 < 262129)
                  {
                    v21 = v59;
                    if (*v16 == *v57)
                    {
                      continue;
                    }
                  }

                  v21 = v59;
                  goto LABEL_10;
                }
              }

              goto LABEL_10;
            }
          }

LABEL_94:
          v9 = __dst;
          v12 = v95;
          v11 = v98;
          v13 = v99;
        }

LABEL_95:
        if (v16 < v13)
        {
          v82 = v13 - v16;
          if ((v13 - v16) >= 6)
          {
            v84 = (v82 << 8) - 1589738;
            if (v82 > 0x5841)
            {
              v84 = (v82 << 8) - 5784041;
            }

            if (v82 >> 1 <= 0xC20)
            {
              v83 = (v82 << 8) - 541163;
            }

            else
            {
              v83 = v84;
            }

            v85 = __clz(v82 - 66) ^ 0x1F;
            if (v82 <= 0x841)
            {
              v83 = (v85 | (((-1 << v85) + v82 - 66) << 8)) + 10;
            }

            v86 = (__clz(v82 - 2) ^ 0x1F) - 1;
            if (v82 <= 0x81)
            {
              v83 = (((v82 - 2) >> v86) + 2 * v86 + 2) | ((v82 - 2 - ((v82 - 2) >> v86 << v86)) << 8);
            }
          }

          else
          {
            v83 = v13 - v16;
          }

          *v14 = v83;
          v87 = v15;
          memcpy(v15, v16, v82);
          v15 = &v87[v82];
        }

        if (sub_100142FA4(v11, v12, v15 - v9))
        {
          break;
        }

        sub_1001294F4(v12, 1u, a7, a8);
        v89 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v89;
        result = memcpy((a8 + (v89 >> 3)), v11, v12);
        v90 = *a7 + 8 * v12;
        *a7 = v90;
        *(a8 + (v90 >> 3)) = 0;
        v11 = v99;
        a3 = v96 - v12;
        if (v96 == v12)
        {
          return result;
        }
      }

      sub_1001294F4(v12, 0, a7, a8);
      v88 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v88 + 13;
      result = sub_100143150(v91);
      if (*(v91 + 24))
      {
        break;
      }

      v11 = v99;
      a3 = v96 - v12;
    }

    while (v96 != v12);
  }

  return result;
}

BOOL sub_100142FA4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (a2 * 0.98 > a3)
  {
    return 1;
  }

  bzero(v20, 0x400uLL);
  if (a2)
  {
    v7 = 0;
    do
    {
      ++v20[*(a1 + v7)];
      v7 += 43;
    }

    while (v7 < a2);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = v3 * 8.0 * 0.98 / 43.0;
  do
  {
    v12 = v20[v8];
    if (v12 > 0xFF)
    {
      v14 = v12;
      v13 = log2(v12);
    }

    else
    {
      v13 = dbl_1003EDA70[v12];
      v14 = v12;
    }

    v15 = v20[v8 + 1];
    if (v15 > 0xFF)
    {
      v16 = log2(v15);
    }

    else
    {
      v16 = dbl_1003EDA70[v15];
    }

    v8 += 2;
    v9 += v12 + v15;
    v10 = v10 - v14 * v13 - v15 * v16;
  }

  while ((v8 * 4 - 8) < 0x3F8);
  v17 = v9;
  if (v9)
  {
    if (v9 > 0xFF)
    {
      v18 = log2(v9);
    }

    else
    {
      v18 = dbl_1003EDA70[v9];
    }

    v10 = v10 + v17 * v18;
  }

  if (v10 >= v17)
  {
    v19 = v10;
  }

  else
  {
    v19 = v9;
  }

  return v19 < v11;
}

unint64_t sub_100143150(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  bzero(v56, 0x400uLL);
  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  memset(v51, 0, sizeof(v51));
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  if (v11)
  {
    v15 = v13;
    v16 = v11;
    do
    {
      v17 = *v15++;
      ++v56[v17];
      --v16;
    }

    while (v16);
  }

  result = sub_10016D708(v14, v56, v11, 8, v58, v57, v5, v3);
  if (!*(v14 + 24))
  {
    if (v7)
    {
      v19 = v9;
      v20 = v7;
      do
      {
        v21 = *v19;
        v19 += 4;
        ++*(v37 + v21);
        --v20;
      }

      while (v20);
      v22 = vadd_s32(*(v37 + 4), 0x100000001);
      v23 = LODWORD(v38[0]) + 1;
      v24 = v39 + 1;
    }

    else
    {
      v22 = 0x100000001;
      v24 = 1;
      v23 = 1;
    }

    *(v37 + 4) = v22;
    LODWORD(v38[0]) = v23;
    LODWORD(v39) = v24;
    bzero(v64, 0x280uLL);
    sub_10013CB14(v37, 64, 15, v65, &v52);
    sub_10013CB14(v38, 64, 14, v65, v55);
    *v60 = *(v53 + 8);
    *&v60[16] = *(&v53[1] + 1);
    *&v61 = v52;
    *(&v61 + 1) = v54;
    *&v62 = *(&v52 + 1);
    v25 = v53;
    *(&v62 + 1) = *(&v54 + 1);
    v63 = *&v53[0];
    sub_10013D55C(v60, 64, v59);
    v50[0] = v59[3];
    v50[1] = v59[5];
    v50[2] = v59[7];
    v50[3] = v59[0];
    v50[4] = v59[1];
    v50[5] = v59[2];
    v50[6] = v59[4];
    v50[7] = v59[6];
    sub_10013D55C(v55, 64, v51);
    v62 = 0u;
    v61 = 0u;
    *&v60[8] = 0u;
    v63 = 0;
    *v60 = *(&v53[0] + 1);
    v64[8] = *(&v53[1] + 1);
    v64[0] = *&v53[1];
    v64[40] = *(&v54 + 1);
    v64[16] = v54;
    for (i = 256; i != 320; i += 8)
    {
      v27 = &v60[i];
      *(v27 - 128) = *(v25 - 16);
      *v27 = *(v25 - 8);
      v28 = *v25++;
      v27[192] = v28;
    }

    sub_10016D458(v60, 0x2C0uLL, v65, v5, v3);
    result = sub_10016D458(v55, 0x40uLL, v65, v5, v3);
    if (v7)
    {
      v29 = 0;
      v30 = *v5;
      do
      {
        v31 = *&v9[4 * v29];
        v32 = *(&v53[-1] + v31);
        v33 = *&v9[4 * v29] >> 8;
        *(v3 + (v30 >> 3)) = (*(v50 + v31) << (v30 & 7)) | *(v3 + (v30 >> 3));
        v34 = v30 + v32;
        result = dword_1003E2AD0[v31];
        *v5 = v34;
        *(v3 + (v34 >> 3)) = (v33 << (v34 & 7)) | *(v3 + (v34 >> 3));
        v30 = v34 + result;
        *v5 = v30;
        if (v31 <= 0x17)
        {
          for (j = dword_1003E2CD0[v31] + v33; j; --j)
          {
            v36 = *v13++;
            result = v58[v36];
            *(v3 + (v30 >> 3)) = (v57[v36] << (v30 & 7)) | *(v3 + (v30 >> 3));
            v30 += result;
            *v5 = v30;
          }
        }

        ++v29;
      }

      while (v29 != v7);
    }
  }

  return result;
}

unint64_t sub_10014356C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 15;
  if (a2 > 0xF)
  {
    v8 = a2;
  }

  v9 = a5 + 5120;
  v10 = a5 + 4096;
  v11 = a5 + 5121;
  v12 = a5 + 8;
  v13 = 0uLL;
  v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v88 = a2;
  v89 = a4;
  v87 = a3;
  v85 = a1 + v8 - 15;
LABEL_4:
  if (v7 + 256 > a4)
  {
    if (v6 != a2)
    {
      return 0;
    }
  }

  else
  {
    v15 = (a3 + v7);
    v93 = 0;
    v16 = -32;
    v91 = v13;
    v92 = v13;
    do
    {
      v17 = *v15++;
      v94.val[0] = vandq_s8(v17, v14);
      v94.val[1] = vshrq_n_u8(v17, 4uLL);
      v18 = &a5[v16 + 5152];
      vst2q_s8(v18, v94);
      v16 += 32;
    }

    while (v16 < 0x1E0);
    v19 = 0;
    do
    {
      v20 = &v91 + 2 * v11[v19 - 1];
      ++*(v20 + 1);
      v21 = &v91 + 2 * v11[v19];
      ++*(v21 + 1);
      v22 = &v91 + 2 * v11[v19 + 1];
      ++*(v22 + 1);
      v23 = &v91 + 2 * v11[v19 + 2];
      ++*(v23 + 1);
      v24 = v19 >= 0x1FC;
      v19 += 4;
    }

    while (!v24);
    v25 = 0;
    WORD1(v91) = 0;
    for (i = 4; i != 34; i += 2)
    {
      v25 += *(&v91 + i);
      *(&v91 + i) = v25;
    }

    v27 = 0;
    LOWORD(v91) = v93;
    do
    {
      v28 = v9[v27];
      v29 = *(&v91 + v28);
      *(&v91 + v28) = v29 + 1;
      *&v10[2 * v29] = v28 + 16 * v27++;
    }

    while (v27 != 512);
    v30 = HIWORD(v92);
    if (HIWORD(v92))
    {
      v90 = v7 + 256;
      bzero(a5, 0x800uLL);
      v31 = 0x8000;
      v32 = 1024;
      while (1)
      {
        v33 = v31;
        v34 = *&v10[2 * v30 - 2];
        v35 = v34 & 0xF;
        v31 += -1 << (v34 & 0xF ^ 0xF);
        if (v31 < 0)
        {
          break;
        }

        v36 = v31 >> 5;
        if (v35 > 0xA)
        {
          v46 = *&a5[2 * v36];
          if (!*&a5[2 * v36])
          {
            v47 = v35 | (16 * v32);
            *&a5[2 * v36] = v47;
            v32 += (1 << (v35 - 10));
            if (v32 > 0x800)
            {
              return 0;
            }

            v46 = v47;
          }

          v48 = 0;
          v49 = (v31 >> (v46 & 0xF ^ 0xF)) & ~(-1 << ((v46 & 0xF) - 10));
          v50 = (1 << ((v46 & 0xF) - v35)) + (v46 >> 4) + v49;
          v51 = (v46 >> 4) + v49;
          if (v50 <= v51 + 1)
          {
            v50 = v51 + 1;
          }

          v52 = v50 - v51;
          v53 = vdupq_n_s64(v52 - 1);
          v54 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
          v55 = &v12[2 * v51];
          do
          {
            v56 = vdupq_n_s64(v48);
            v57 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_1003772E0)));
            if (vuzp1_s8(vuzp1_s16(v57, *v53.i8), *v53.i8).u8[0])
            {
              *(v55 - 4) = v34;
            }

            if (vuzp1_s8(vuzp1_s16(v57, *&v53), *&v53).i8[1])
            {
              *(v55 - 3) = v34;
            }

            if (vuzp1_s8(vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_10037C710)))), *&v53).i8[2])
            {
              *(v55 - 2) = v34;
              *(v55 - 1) = v34;
            }

            v58 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_10037D3A0)));
            if (vuzp1_s8(*&v53, vuzp1_s16(v58, *&v53)).i32[1])
            {
              *v55 = v34;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(v58, *&v53)).i8[5])
            {
              *(v55 + 1) = v34;
            }

            if (vuzp1_s8(*&v53, vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v56, xmmword_10037D390))))).i8[6])
            {
              *(v55 + 2) = v34;
              *(v55 + 3) = v34;
            }

            v48 += 8;
            v55 += 16;
          }

          while (v54 != v48);
        }

        else
        {
          v37 = v33 >> 5;
          if (v36 < v33 >> 5)
          {
            v38 = 0;
            v39 = v37 + ~v36;
            v40 = (v39 + 8) & 0x1FFFFFFF8;
            v41 = vdupq_n_s64(v39);
            v42 = &v12[2 * v36];
            do
            {
              v43 = vdupq_n_s64(v38);
              v44 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_1003772E0)));
              if (vuzp1_s8(vuzp1_s16(v44, *v41.i8), *v41.i8).u8[0])
              {
                *(v42 - 4) = v34;
              }

              if (vuzp1_s8(vuzp1_s16(v44, *&v41), *&v41).i8[1])
              {
                *(v42 - 3) = v34;
              }

              if (vuzp1_s8(vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_10037C710)))), *&v41).i8[2])
              {
                *(v42 - 2) = v34;
                *(v42 - 1) = v34;
              }

              v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_10037D3A0)));
              if (vuzp1_s8(*&v41, vuzp1_s16(v45, *&v41)).i32[1])
              {
                *v42 = v34;
              }

              if (vuzp1_s8(*&v41, vuzp1_s16(v45, *&v41)).i8[5])
              {
                *(v42 + 1) = v34;
              }

              if (vuzp1_s8(*&v41, vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_10037D390))))).i8[6])
              {
                *(v42 + 2) = v34;
                *(v42 + 3) = v34;
              }

              v38 += 8;
              v42 += 16;
            }

            while (v40 != v38);
          }
        }

        v77 = v30-- <= 1;
        if (v77)
        {
          if (v31)
          {
            return 0;
          }

          v59 = v7 + 258;
          a4 = v89;
          if (v7 + 258 > v89)
          {
            return 0;
          }

          v7 += 260;
          if (v7 > v89)
          {
            return 0;
          }

          a3 = v87;
          a2 = v88;
          v60 = *(v87 + v59) | (*(v87 + v90) << 16);
          if (v6 + 0x10000 >= v88)
          {
            v61 = v88;
          }

          else
          {
            v61 = v6 + 0x10000;
          }

          v62 = 16;
          if (v6 < v61)
          {
            v13 = 0uLL;
            v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            while (1)
            {
              v63 = *&a5[2 * (v60 >> 22)];
              if (v63 >= 0x4000)
              {
                v63 = *&a5[2 * (v60 << 10 >> (42 - (v63 & 0xF))) + 2 * (v63 >> 4)];
              }

              v64 = v60 << (v63 & 0xF);
              v62 -= v63 & 0xF;
              if (v62 < 0)
              {
                if (v7 + 2 > v89)
                {
                  return 0;
                }

                v64 |= *(v87 + v7) << -v62;
                v62 += 16;
                v7 += 2;
              }

              v65 = v63 >> 4;
              if (v63 > 0xFFF)
              {
                if (v65 == 256 && v7 == v89)
                {
                  return v6;
                }

                v67 = v63 >> 4;
                if (v67 == 15)
                {
                  if (v7 >= v89)
                  {
                    return 0;
                  }

                  v68 = v7 + 1;
                  v69 = *(v87 + v7);
                  if (v69 == 255)
                  {
                    v70 = v7 + 3;
                    if (v7 + 3 > v89)
                    {
                      return 0;
                    }

                    v71 = *(v87 + v68);
                    if (!*(v87 + v68))
                    {
                      if (v7 + 7 > v89)
                      {
                        return 0;
                      }

                      v71 = *(v87 + v70);
                      v70 = v7 + 7;
                    }

                    v24 = v71 >= 0xF;
                    v69 = v71 - 15;
                    if (!v24)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v70 = v7 + 1;
                  }

                  v67 = v69 + 15;
                  v7 = v70;
                }

                v72 = (v63 >> 8) & 0xF;
                v60 = v64 << v72;
                v62 -= v72;
                if (v62 < 0)
                {
                  if (v7 + 2 > v89)
                  {
                    return 0;
                  }

                  v60 |= *(v87 + v7) << -v62;
                  v62 += 16;
                  v7 += 2;
                }

                v73 = (HIWORD(v64) >> (16 - v72)) | (1 << v72);
                if (v6 < v73)
                {
                  return 0;
                }

                v74 = v67 + 3;
                v75 = (a1 + v6);
                v76 = a1 + v6 + v67 + 3;
                v77 = v73 < 0x10 || v76 > v85;
                if (v77)
                {
                  if (v74 > v88 - v6)
                  {
                    return 0;
                  }

                  v78 = -v73;
                  do
                  {
                    *v75 = v75[v78];
                    ++v75;
                  }

                  while (v75 < v76);
                }

                else
                {
                  v79 = -v73;
                  do
                  {
                    *v75 = *&v75[v79];
                    v75 += 16;
                  }

                  while (v75 < v76);
                }

                v6 += v74;
              }

              else
              {
                *(a1 + v6++) = v65;
                v60 = v64;
              }

              if (v6 >= v61)
              {
                goto LABEL_103;
              }
            }
          }

          v13 = 0uLL;
          v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
          v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
LABEL_103:
          v80 = *&a5[2 * (v60 >> 22)];
          if (v80 >= 0x4000)
          {
            LOWORD(v80) = *&a5[2 * (v60 << 10 >> (42 - (v80 & 0xF))) + 2 * (v80 >> 4)];
          }

          v81 = v80 & 0xFFF0;
          v82 = v80 & 0xF;
          if (v81 == 4096 && v62 < v82)
          {
            v7 += 2;
            if (v7 > v89)
            {
              return 0;
            }
          }

          if (v7 != v89)
          {
            goto LABEL_4;
          }

          return v6;
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_100143C98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v5 = a5;
  v150 = a5 + 170338;
  v143 = (a5 + 162144);
  bzero(a5, 0x10006uLL);
  v8 = a3;
  result = 0;
  v10 = 0;
  v11 = v5 + 152928;
  v160 = v5 + 65542;
  v12 = (v5 + 167264);
  v13 = v5 + 169312;
  v155 = (v5 + 171362);
  v147 = v5 + 171364;
  v148 = v5 + 167776;
  v145 = (v5 + 171876);
  v146 = v5 + 171878;
  v163 = v5 + 161116;
  v14 = (v5 + 165216);
  v15 = v5 + 168288;
  v159 = v8 + 1;
  v144 = v5 + 161118;
  v154 = v5;
  v153 = v8;
  v157 = v5 + 152928;
  v149 = v5 + 161120;
  do
  {
    if (v10 >= a4)
    {
      return result;
    }

    v158 = result;
    if (v10 + 0x10000 >= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = v10 + 0x10000;
    }

    if (v16 <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v16;
    }

    v161 = v10;
    v18 = v10 + 1;
    bzero(v11, 0x2000uLL);
    if (v18 < v16)
    {
      v19 = 0;
      v20 = v17 - 8;
      v21 = 1;
      v22 = v18;
      v23 = v153;
      while (1)
      {
        if (v22 + 4 <= a4)
        {
          v24 = 0;
          v25 = 0;
          v26 = &v5[2 * ((-1640531535 * (*(v153 + v22) & 0xFFFFFFu)) >> 17)];
          v27 = v22 & 0xFFFF0000;
          v28 = 2;
          LOWORD(v29) = v22;
          do
          {
            v30 = *&v26[2 * v24];
            *&v26[2 * v24] = v29;
            v29 = v27 | v30;
            if (v22 != (v27 | v30))
            {
              v31 = v29 - 0x10000;
              if (v29 < v22)
              {
                v31 = v29;
              }

              if (v22 >= v20)
              {
                LODWORD(v32) = 0;
              }

              else
              {
                v32 = 0;
                v33 = 0;
                while (1)
                {
                  v34 = *(v153 + v22 + v32);
                  v32 = *(v153 + v31 + v32);
                  if (v34 != v32)
                  {
                    break;
                  }

                  v33 += 8;
                  v32 = v33;
                  if (v22 + v33 >= v20)
                  {
                    goto LABEL_24;
                  }
                }

                LODWORD(v32) = v33 + (__clz(__rbit64(v32 ^ v34)) >> 3);
              }

LABEL_24:
              v35 = v28 >= v32;
              if (v28 <= v32)
              {
                v28 = v32;
              }

              if (!v35)
              {
                v25 = v31;
              }
            }

            ++v24;
          }

          while (v24 != 3);
          if (v28 >= 4)
          {
            LOWORD(v37) = v22 - v25;
            v36 = v159;
LABEL_34:
            *&v157[4 * (v21 >> 5)] |= 1 << v21;
            v38 = v19 + 1;
            v39 = &v160[4 * v19];
            *v39 = v37;
            *(v39 + 1) = v28;
            v40 = v22 + v28;
            v18 = v22 + 1;
            if (v22 + 1 >= v40)
            {
              v19 = v38;
            }

            else
            {
              v41 = v28 - 1;
              do
              {
                v42 = v22 + 1;
                if (v22 + 5 <= a4)
                {
                  v43 = &v5[2 * ((-1640531535 * (*(v36 + v22) & 0xFFFFFFu)) >> 17)];
                  v44 = *v43;
                  *v43 = v42;
                  *(v43 + 2) = v44;
                }

                v22 = v42;
                --v41;
              }

              while (v41);
              v19 = v38;
              v18 = v40;
            }

            goto LABEL_41;
          }

          v36 = v159;
          if (v28 == 3)
          {
            v37 = v22 - v25;
            if (v37 < 0x100)
            {
              goto LABEL_34;
            }
          }
        }

        v18 = v22 + 1;
LABEL_41:
        ++v21;
        v22 = v18;
        if (v18 >= v16)
        {
          goto LABEL_44;
        }
      }
    }

    v21 = 1;
    v23 = v153;
LABEL_44:
    v156 = v18;
    v164 = a1 + v158;
    v162 = v23 + v161;
    bzero(v12, 0x400uLL);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 2176;
    do
    {
      if ((*&v157[4 * (v45 >> 5)] >> v45))
      {
        v49 = &v160[4 * v46++];
        v50 = *v49;
        v51 = *(v49 + 1);
        v52 = 31 - __clz(v50);
        v53 = v51 - 3;
        if (v51 - 3 >= 0xF)
        {
          v53 = 15;
        }

        v54 = v53 | (16 * v52);
        v47 += v51;
        v55 = v48 + v52;
        ++v148[v54];
        if (v51 <= 0x110)
        {
          v56 = 8;
        }

        else
        {
          v56 = 24;
        }

        v57 = v55 + v56;
        if (v51 >= 0x12)
        {
          v48 = v57;
        }

        else
        {
          v48 = v55;
        }
      }

      else
      {
        v58 = *(v162 + v47++);
        ++v12[v58];
      }

      ++v45;
    }

    while (v21 != v45);
    if (!*v148)
    {
      *v148 = 1;
    }

    bzero(v155, 0x404uLL);
    v59 = 0;
    v60 = 0;
    do
    {
      v61 = v12[v59];
      if (v12[v59])
      {
        ++*&v147[2 * v12[v59]];
        ++*&v146[(v61 >> 7) & 0x1FE];
        *&v13[2 * v60++] = v59;
      }

      ++v59;
    }

    while (v59 != 512);
    v62 = *v155;
    v63 = *v145;
    v64 = v147;
    v65 = 255;
    do
    {
      v62 += *v64;
      *v64 = v62;
      v63 += *(v64 + 257);
      *(v64 + 257) = v63;
      v64 += 2;
      --v65;
    }

    while (v65);
    v66 = v60;
    if (v60 >= 1)
    {
      v67 = v13;
      v68 = v60;
      do
      {
        v69 = *v67;
        v67 += 2;
        v70 = LOBYTE(v12[v69]);
        v71 = v155[v70];
        v155[v70] = v71 + 1;
        *&v150[2 * v71] = v69;
        --v68;
      }

      while (v68);
      v72 = v150;
      v73 = v60;
      do
      {
        v74 = *v72++;
        v75 = HIBYTE(v12[v74]);
        v76 = v145[v75];
        v145[v75] = v76 + 1;
        *&v13[2 * v76] = v74;
        --v73;
      }

      while (v73);
    }

    memcpy(v14, v12, 0x400uLL);
    *(v154 + 83120) = -1;
    *&v13[2 * v60] = 512;
    v77 = (v60 + 511);
    if (v77 <= 513)
    {
      v78 = 513;
    }

    else
    {
      v78 = v60 + 511;
    }

    if (v60 > 1)
    {
      v122 = 0;
      v123 = (v78 + 1);
      v124 = 513;
      v125 = 513;
      v11 = v157;
      v79 = 0uLL;
      while (1)
      {
        do
        {
          v14[v124] = -1;
          v126 = *&v13[2 * v122];
          v127 = v14[*&v13[2 * v122]];
          v128 = v14[v125];
          v129 = v127 > v128;
          if (v127 <= v128)
          {
            v130 = v125;
          }

          else
          {
            v130 = v125 + 1;
          }

          if (v129)
          {
            v126 = v125;
          }

          else
          {
            ++v122;
          }

          v131 = v14[*&v13[2 * v122]];
          v132 = v14[v130];
          v133 = v131 > v132;
          if (v131 <= v132)
          {
            v125 = v130;
          }

          else
          {
            v125 = v130 + 1;
          }

          if (!v133)
          {
            v130 = *&v13[2 * v122];
          }

          v14[v124] = v14[v130] + v14[v126];
          if (!v133)
          {
            ++v122;
          }

          v134 = &v163[4 * v124];
          *v134 = v126;
          *(v134 + 1) = v130;
          ++v124;
        }

        while (v124 != v123);
        v135 = 0;
        v15[30] = 0uLL;
        v15[31] = 0uLL;
        v15[28] = 0uLL;
        v15[29] = 0uLL;
        v15[26] = 0uLL;
        v15[27] = 0uLL;
        v15[24] = 0uLL;
        v15[25] = 0uLL;
        v15[22] = 0uLL;
        v15[23] = 0uLL;
        v15[20] = 0uLL;
        v15[21] = 0uLL;
        v15[18] = 0uLL;
        v15[19] = 0uLL;
        v15[16] = 0uLL;
        v15[17] = 0uLL;
        v15[14] = 0uLL;
        v15[15] = 0uLL;
        v15[12] = 0uLL;
        v15[13] = 0uLL;
        v15[10] = 0uLL;
        v15[11] = 0uLL;
        v15[8] = 0uLL;
        v15[9] = 0uLL;
        v15[6] = 0uLL;
        v15[7] = 0uLL;
        v15[4] = 0uLL;
        v15[5] = 0uLL;
        v15[2] = 0uLL;
        v15[3] = 0uLL;
        v136 = v15 + v77;
        v137 = &v144[4 * v77];
        v138 = v60 + 512;
        *v15 = 0uLL;
        v15[1] = 0uLL;
        *(v15 + v77) = 0;
        do
        {
          v135 |= 2 << *v136;
          *(v15 + *(v137 - 1)) = *v136 + 1;
          v139 = *v136--;
          v140 = v139 + 1;
          v141 = *v137;
          v137 -= 4;
          *(v15 + v141) = v140;
          --v138;
        }

        while (v138 > 513);
        if (v135 < 0x10000)
        {
          break;
        }

        for (i = 0; i != 512; i += 8)
        {
          *&v14[i] = vsubq_s16(*&v14[i], vshrq_n_u16(*&v14[i], 1uLL));
        }

        v122 = 0;
        v124 = 513;
        v125 = 513;
      }
    }

    else
    {
      v79 = 0uLL;
      v15[30] = 0u;
      v15[31] = 0u;
      v15[28] = 0u;
      v15[29] = 0u;
      v15[26] = 0u;
      v15[27] = 0u;
      v15[24] = 0u;
      v15[25] = 0u;
      v15[22] = 0u;
      v15[23] = 0u;
      v15[20] = 0u;
      v15[21] = 0u;
      v15[18] = 0u;
      v15[19] = 0u;
      v15[16] = 0u;
      v15[17] = 0u;
      v15[14] = 0u;
      v15[15] = 0u;
      v15[12] = 0u;
      v15[13] = 0u;
      v15[10] = 0u;
      v15[11] = 0u;
      v15[8] = 0u;
      v15[9] = 0u;
      v15[6] = 0u;
      v15[7] = 0u;
      v15[4] = 0u;
      v15[5] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      *v15 = 0u;
      v15[1] = 0u;
      *(v15 + v77) = 0;
      v11 = v157;
    }

    v80 = 0;
    v167[0] = v79;
    v167[1] = v79;
    v166 = 0;
    v165[0] = v79;
    v165[1] = v79;
    do
    {
      v81 = *(v15 + v80);
      *(v167 + v81) += v12[v80];
      ++*(v165 + v81 + 1);
      ++v80;
    }

    while (v80 != 512);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    WORD1(v165[0]) = 0;
    do
    {
      v85 = v165 + 2 * v82;
      v84 += (v82 + 1) * *(v167 + v82 + 1);
      v83 += *(v85 + 2);
      *(v85 + 2) = v83;
      ++v82;
    }

    while (v82 != 15);
    v86 = 0;
    LOWORD(v165[0]) = v166;
    do
    {
      v87 = *(v15 + v86);
      v88 = *(v165 + v87);
      *(v165 + v87) = v88 + 1;
      *&v13[2 * v88] = v86++;
    }

    while (v86 != 512);
    if (v60 >= 1)
    {
      LOWORD(v89) = 0;
      v90 = v13;
      do
      {
        v91 = *v90;
        v90 += 2;
        v92 = *(v15 + v91);
        v93 = &v149[4 * v91];
        *v93 = v89 >> (15 - v92);
        *(v93 + 1) = v92;
        v89 = (1 << (15 - v92)) + v89;
        --v66;
      }

      while (v66);
    }

    if (a2 - v158 < (v84 + v48) >> 3)
    {
      break;
    }

    v94 = 0;
    v95 = (a1 + v158);
    do
    {
      v96 = &v15[v94];
      v168 = vld2q_s8(v96);
      *v95++ = vorrq_s8(vshlq_n_s8(v168.val[1], 4uLL), v168.val[0]);
      v35 = v94 >= 30;
      v94 += 2;
    }

    while (!v35);
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 16;
    v102 = 260;
    v103 = 258;
    v104 = 256;
    v5 = v154;
    do
    {
      if ((*&v157[4 * (v99 >> 5)] >> v99))
      {
        v105 = &v160[4 * v98];
        v106 = *v105;
        v107 = *(v105 + 1);
        v108 = __clz(v106);
        v109 = 31 - v108;
        if ((v107 - 3) >= 0xF)
        {
          v110 = 15;
        }

        else
        {
          v110 = v107 - 3;
        }

        v111 = &v149[4 * (v110 | (16 * v109))];
        v112 = *(v111 + 513);
        v113 = *(v111 + 512);
        if (v112 <= v101)
        {
          v113 += v100 << v112;
        }

        else
        {
          v114 = (v113 >> (v112 - v101)) + (v100 << v101);
          v101 += 16;
          *(v164 + v104) = v114;
          v104 = v103;
          v103 = v102;
          v102 += 2;
        }

        if (v107 >= 0x12)
        {
          if (v107 > 0x110)
          {
            *(v164 + v102) = ((v107 - 3) << 8) | 0xFF;
            v102 += 3;
          }

          else
          {
            *(v164 + v102++) = v107 - 18;
          }
        }

        ++v98;
        v115 = v97 + v107;
        v119 = v101 - v112;
        v100 = v106 - (0x80000000 >> v108);
        v101 = v101 - v112 - v109;
        if (v119 >= v109)
        {
          v100 += v113 << v109;
        }

        else
        {
          v101 = v108 + v119 - 15;
          *(v164 + v104) = (v113 << v119) + (v100 >> (v109 - v119));
          v104 = v103;
          v103 = v102;
          v102 += 2;
        }
      }

      else
      {
        v115 = v97 + 1;
        v116 = &v149[4 * *(v162 + v97)];
        v117 = *(v116 + 1);
        v118 = *v116;
        if (v101 >= v117)
        {
          v100 = v118 + (v100 << v117);
          v101 -= v117;
        }

        else
        {
          *(v164 + v104) = (v118 >> (v117 - v101)) + (v100 << v101);
          v101 = v101 - v117 + 16;
          v104 = v103;
          v103 = v102;
          v102 += 2;
          v100 = v118;
        }
      }

      ++v99;
      v97 = v115;
    }

    while (v21 != v99);
    v10 = v156;
    if (v156 == a4)
    {
      v120 = v143[1];
      v121 = *v143;
      if (v101 >= v120)
      {
        v100 = v121 + (v100 << v120);
        LOBYTE(v101) = v101 - v120;
      }

      else
      {
        *(v164 + v104) = (v121 >> (v120 - v101)) + (v100 << v101);
        LOBYTE(v101) = v101 - v120 + 16;
        v104 = v103;
        v103 = v102;
        v102 += 2;
        v100 = v121;
      }

      v10 = v156;
    }

    *(v164 + v104) = v100 << v101;
    *(v164 + v103) = 0;
    result = v102 + v158;
  }

  while (v102);
  return 0;
}