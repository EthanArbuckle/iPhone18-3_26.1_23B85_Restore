uint64_t vpx_realloc_frame_buffer(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, signed int a8, void *a9, uint64_t (*a10)(uint64_t, size_t, void *), uint64_t a11)
{
  v11 = 0xFFFFFFFFLL;
  if (a2 > 0x4000 || a3 > 0x4000)
  {
    return v11;
  }

  if ((a7 & 0x1F) != 0)
  {
    return 4294967293;
  }

  if (!a1)
  {
    return 4294967294;
  }

  if (a8 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a8;
  }

  v15 = (a2 + 7) & 0xFFFFFFF8;
  v16 = (a3 + 7) & 0xFFFFFFF8;
  v17 = (v15 + 2 * a7 + 31) & 0xFFFFFFE0;
  v18 = a8 + v17 * (2 * a7 + v16);
  v19 = v16 >> a5;
  v20 = v17 >> a4;
  v21 = a7 >> a5;
  v22 = a8 + (v17 >> a4) * ((v16 >> a5) + 2 * v21);
  v23 = (v18 + 2 * v22) * (a6 + 1);
  if (a10)
  {
    v44 = a7 >> a5;
    v45 = a8 + v17 * (2 * a7 + v16);
    v46 = a8 + v20 * (v19 + 2 * v21);
    v47 = v14;
    v48 = a4;
    v50 = a2;
    v52 = a6;
    v39 = a5;
    v41 = a3;
    v24 = a1;
    if ((a10(a11, v23 + 31, a9) & 0x80000000) == 0 && *a9 && a9[1] >= v23 + 31)
    {
      a1 = v24;
      *(v24 + 88) = (*a9 + 31) & 0xFFFFFFFFFFFFFFE0;
      a2 = v50;
      a6 = v52;
      a5 = v39;
      a3 = v41;
      a4 = v48;
LABEL_23:
      v14 = v47;
      v18 = v45;
      v22 = v46;
      v21 = v44;
      goto LABEL_24;
    }

    return 0xFFFFFFFFLL;
  }

  if (v23 > *(a1 + 96))
  {
    v44 = v21;
    v45 = a8 + v17 * (2 * a7 + v16);
    v46 = a8 + v20 * (v19 + 2 * v21);
    v47 = v14;
    v49 = a4;
    v26 = (a1 + 88);
    v25 = *(a1 + 88);
    v51 = a2;
    if (v25)
    {
      v42 = a1;
      v53 = a6;
      v27 = a5;
      v28 = a3;
      free(*(v25 - 8));
      a3 = v28;
      a5 = v27;
      a6 = v53;
      a1 = v42;
    }

    *v26 = 0;
    v26[1] = 0;
    if (v23 + 39 <= 0x10000000000 && (v29 = a1, v30 = a6, v40 = a5, v43 = a3, (v31 = malloc_type_malloc(v23 + 39, 0xD93B561uLL)) != 0))
    {
      v32 = v31;
      v33 = ((v31 + 39) & 0xFFFFFFFFFFFFFFE0);
      *(v33 - 1) = v32;
      *v26 = v33;
      if (v33)
      {
        *(v29 + 96) = v23;
        bzero(v33, v23);
        a4 = v49;
        a2 = v51;
        a5 = v40;
        a3 = v43;
        a6 = v30;
        a1 = v29;
        goto LABEL_23;
      }
    }

    else
    {
      *v26 = 0;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_24:
  v11 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *a1 = v15;
  *(a1 + 4) = v16;
  *(a1 + 16) = v17;
  *(a1 + 20) = v15 >> a4;
  *(a1 + 24) = v19;
  *(a1 + 28) = (a4 + a2) >> a4;
  *(a1 + 32) = (a5 + a3) >> a5;
  *(a1 + 36) = v20;
  *(a1 + 104) = a7;
  *(a1 + 112) = v23;
  *(a1 + 120) = a4;
  *(a1 + 124) = a5;
  v34 = *(a1 + 88);
  if (a6)
  {
    v34 >>= 1;
  }

  v35 = v14 - 1;
  v36 = -v14;
  v37 = (v34 + v17 * a7 + a7 + v35) & v36;
  v38 = v34 + v18 + v20 * v21 + (a7 >> a4) + v35;
  *(a1 + 56) = v37;
  *(a1 + 64) = v38 & v36;
  *(a1 + 72) = (v38 + v22) & v36;
  *(a1 + 148) = 0;
  *(a1 + 152) = 8 * (a6 != 0);
  return v11;
}

unsigned __int8 *vp8_yv12_extend_frame_borders_c(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = v2 / 2;
  extend_plane(*(a1 + 56), *(a1 + 16), *(a1 + 8), *(a1 + 12), v2, v2, v2 - *(a1 + 12) + *(a1 + 4), v2 - *(a1 + 8) + *a1);
  extend_plane(*(a1 + 64), *(a1 + 36), *(a1 + 28), *(a1 + 32), v3, v3, v3 - *(a1 + 32) + *(a1 + 24), v3 - *(a1 + 28) + *(a1 + 20));
  v4 = *(a1 + 72);
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7 = *(a1 + 28);
  v8 = v3 - v6 + *(a1 + 24);
  v9 = v3 - v7 + *(a1 + 20);

  return extend_plane(v4, v5, v7, v6, v3, v3, v8, v9);
}

unsigned __int8 *extend_plane(unsigned __int8 *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v22 = result;
  v18 = a6 + a3;
  v10 = a6;
  v11 = -a6;
  if (a4 >= 1)
  {
    v12 = a3;
    v13 = a4;
    v14 = result;
    do
    {
      memset(&v14[v11], *v14, v10);
      result = memset(&v14[v12], v14[v12 - 1], a8);
      v14 += a2;
      --v13;
    }

    while (v13);
  }

  if (a5 >= 1)
  {
    v15 = &v22[-v10];
    v16 = &v22[v11 - a2 * a5];
    do
    {
      result = memcpy(v16, v15, v18 + a8);
      v16 += a2;
      --a5;
    }

    while (a5);
  }

  if (a7 >= 1)
  {
    v17 = &v22[a4 * a2 + v11];
    do
    {
      result = memcpy(v17, &v22[(a4 - 1) * a2 + v11], v18 + a8);
      v17 += a2;
      --a7;
    }

    while (a7);
  }

  return result;
}

unsigned __int8 *extend_frame(int *a1, int a2)
{
  v5 = a1[7];
  v4 = a1[8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a2 >> (v10 < v7);
  v12 = a2 >> (v9 < *a1);
  v13 = v10 - v4;
  v14 = v9 - v5;
  v15 = *(a1 + 7);
  v16 = a1[2];
  v17 = a1[3];
  v18 = v7 + a2 - v17;
  v19 = v6 + a2 - v16;
  if ((a1[38] & 8) != 0)
  {
    extend_plane_high(v15, v8, v16, v17, a2, a2, v18, v19);
    extend_plane_high(*(a1 + 8), a1[9], v5, v4, v11, v12, v11 + v13, v12 + v14);
    v23 = *(a1 + 9);
    v24 = a1[9];

    return extend_plane_high(v23, v24, v5, v4, v11, v12, v11 + v13, v12 + v14);
  }

  else
  {
    extend_plane(v15, v8, v16, v17, a2, a2, v18, v19);
    extend_plane(*(a1 + 8), a1[9], v5, v4, v11, v12, v11 + v13, v12 + v14);
    v20 = *(a1 + 9);
    v21 = a1[9];

    return extend_plane(v20, v21, v5, v4, v11, v12, v11 + v13, v12 + v14);
  }
}

unsigned __int8 *vp8_yv12_copy_frame_c(int *a1, uint64_t a2)
{
  if (a1[1] >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 56);
    v6 = *(a1 + 7);
    do
    {
      memcpy(v5, v6, *a1);
      v6 += a1[4];
      v5 += *(a2 + 16);
      ++v4;
    }

    while (v4 < a1[1]);
  }

  if (a1[6] > 0)
  {
    v7 = 0;
    v8 = *(a2 + 64);
    v9 = *(a1 + 8);
    do
    {
      memcpy(v8, v9, a1[5]);
      v9 += a1[9];
      v8 += *(a2 + 36);
      ++v7;
      v10 = a1[6];
    }

    while (v7 < v10);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = *(a2 + 72);
      v13 = *(a1 + 9);
      do
      {
        memcpy(v12, v13, a1[5]);
        v13 += a1[9];
        v12 += *(a2 + 36);
        ++v11;
      }

      while (v11 < a1[6]);
    }
  }

  v14 = *(a2 + 104);
  v15 = v14 / 2;
  extend_plane(*(a2 + 56), *(a2 + 16), *(a2 + 8), *(a2 + 12), v14, v14, v14 - *(a2 + 12) + *(a2 + 4), v14 - *(a2 + 8) + *a2);
  extend_plane(*(a2 + 64), *(a2 + 36), *(a2 + 28), *(a2 + 32), v15, v15, v15 - *(a2 + 32) + *(a2 + 24), v15 - *(a2 + 28) + *(a2 + 20));
  v16 = *(a2 + 72);
  v18 = *(a2 + 32);
  v17 = *(a2 + 36);
  v19 = *(a2 + 28);
  v20 = v15 - v18 + *(a2 + 24);
  v21 = v15 - v19 + *(a2 + 20);

  return extend_plane(v16, v17, v19, v18, v15, v15, v20, v21);
}

unsigned __int8 *vpx_yv12_copy_frame_c(int *a1, uint64_t a2)
{
  v4 = *(a1 + 7);
  v5 = *(a2 + 56);
  v6 = a1[1];
  if ((a1[38] & 8) != 0)
  {
    if (v6 >= 1)
    {
      v15 = 0;
      do
      {
        memcpy((2 * v5), (2 * v4), 2 * *a1);
        v4 = v4 + a1[4];
        v5 = v5 + *(a2 + 16);
        ++v15;
      }

      while (v15 < a1[1]);
    }

    if (a1[6] >= 1)
    {
      v16 = 0;
      v17 = *(a2 + 64);
      v18 = *(a1 + 8);
      do
      {
        memcpy((2 * v17), (2 * v18), 2 * a1[5]);
        v18 += a1[9];
        v17 += *(a2 + 36);
        ++v16;
        v19 = a1[6];
      }

      while (v16 < v19);
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = *(a2 + 72);
        v22 = *(a1 + 9);
        do
        {
          memcpy((2 * v21), (2 * v22), 2 * a1[5]);
          v22 += a1[9];
          v21 += *(a2 + 36);
          ++v20;
        }

        while (v20 < a1[6]);
      }
    }
  }

  else
  {
    if (v6 >= 1)
    {
      v7 = 0;
      do
      {
        memcpy(v5, v4, *a1);
        v4 = v4 + a1[4];
        v5 = v5 + *(a2 + 16);
        ++v7;
      }

      while (v7 < a1[1]);
    }

    if (a1[6] >= 1)
    {
      v8 = 0;
      v9 = *(a2 + 64);
      v10 = *(a1 + 8);
      do
      {
        memcpy(v9, v10, a1[5]);
        v10 += a1[9];
        v9 += *(a2 + 36);
        ++v8;
        v11 = a1[6];
      }

      while (v8 < v11);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = *(a2 + 72);
        v14 = *(a1 + 9);
        do
        {
          memcpy(v13, v14, a1[5]);
          v14 += a1[9];
          v13 += *(a2 + 36);
          ++v12;
        }

        while (v12 < a1[6]);
      }
    }
  }

  v23 = *(a2 + 104);

  return extend_frame(a2, v23);
}

uint64_t extend_plane_high(uint64_t result, int a2, int a3, int a4, int a5, signed int a6, int a7, signed int a8)
{
  v82 = a6 + a3;
  v11 = a6;
  v84 = 2 * result;
  v12 = (2 * result - 2 * a6);
  v81 = a4 - 1;
  if (a4 >= 1)
  {
    v13 = (v84 + 2 * a3);
    v14 = v13 - 1;
    result = a2;
    if (a6)
    {
      v15 = a6 & 0xFFFFFFFFFFFFFFF0;
      v80 = v15;
      v16 = a6 & 0xCLL;
      v17 = a6 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = v17;
      if (a8)
      {
        v19 = 0;
        v20 = v84;
        v21 = v84 - 2 * a6 + 16;
        result = 2 * a2;
        v22 = v84 + 2 * a3 + 16;
        v23 = v12;
        while (1)
        {
          v24 = *v20;
          if (a6 < 4)
          {
            v25 = 0;
            v26 = v23;
            goto LABEL_19;
          }

          if (a6 >= 0x10)
          {
            v28 = vdupq_n_s16(v24);
            v29 = a6 & 0xFFFFFFFFFFFFFFF0;
            v30 = v21;
            do
            {
              *(v30 - 1) = v28;
              *v30 = v28;
              v30 += 2;
              v29 -= 16;
            }

            while (v29);
            if (v15 == a6)
            {
              goto LABEL_21;
            }

            v27 = a6 & 0xFFFFFFFFFFFFFFF0;
            if (!v16)
            {
              v26 = &v23[v80];
              v25 = a6 & 0xFFFFFFFFFFFFFFF0;
LABEL_19:
              v34 = a6 - v25;
              do
              {
                *v26++ = v24;
                --v34;
              }

              while (v34);
              goto LABEL_21;
            }
          }

          else
          {
            v27 = 0;
          }

          v26 = &v23[v18];
          v31 = vdup_n_s16(v24);
          v32 = v27;
          v33 = v27 - v17;
          do
          {
            *&v23[v32] = v31;
            v32 += 4;
            v33 += 4;
          }

          while (v33);
          v25 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v17 != a6)
          {
            goto LABEL_19;
          }

LABEL_21:
          v35 = *v14;
          if (a8 >= 4)
          {
            if (a8 < 0x10)
            {
              v38 = 0;
LABEL_29:
              v37 = &v13[a8 & 0xFFFFFFFFFFFFFFFCLL];
              v42 = vdup_n_s16(v35);
              v43 = v38;
              v44 = v38 - (a8 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v13[v43] = v42;
                v43 += 4;
                v44 += 4;
              }

              while (v44);
              v36 = a8 & 0xFFFFFFFFFFFFFFFCLL;
              if (v36 == a8)
              {
                goto LABEL_5;
              }

              goto LABEL_34;
            }

            v39 = vdupq_n_s16(v35);
            v40 = a8 & 0xFFFFFFFFFFFFFFF0;
            v41 = v22;
            do
            {
              *(v41 - 1) = v39;
              *v41 = v39;
              v41 += 2;
              v40 -= 16;
            }

            while (v40);
            if ((a8 & 0xFFFFFFFFFFFFFFF0) == a8)
            {
              goto LABEL_5;
            }

            v38 = a8 & 0xFFFFFFFFFFFFFFF0;
            if ((a8 & 0xCLL) != 0)
            {
              goto LABEL_29;
            }

            v37 = &v13[a8 & 0xFFFFFFFFFFFFFFF0];
            v36 = a8 & 0xFFFFFFFFFFFFFFF0;
          }

          else
          {
            v36 = 0;
            v37 = v13;
          }

LABEL_34:
          v45 = a8 - v36;
          do
          {
            *v37++ = v35;
            --v45;
          }

          while (v45);
LABEL_5:
          v20 = (v20 + result);
          v14 = (v14 + result);
          v23 = (v23 + result);
          v13 = (v13 + result);
          ++v19;
          v21 += result;
          v22 += result;
          if (v19 == a4)
          {
            goto LABEL_74;
          }
        }
      }

      v60 = 0;
      v61 = v84;
      v62 = v84 - 2 * a6 + 16;
      v63 = 2 * a2;
      v64 = v12;
      while (1)
      {
        v65 = *v61;
        if (a6 >= 4)
        {
          if (a6 < 0x10)
          {
            v68 = 0;
LABEL_66:
            v67 = &v64[v18];
            v72 = vdup_n_s16(v65);
            v73 = v68;
            v74 = v68 - v17;
            do
            {
              *&v64[v73] = v72;
              v73 += 4;
              v74 += 4;
            }

            while (v74);
            v66 = a6 & 0xFFFFFFFFFFFFFFFCLL;
            if (v17 == a6)
            {
              goto LABEL_57;
            }

            goto LABEL_71;
          }

          v69 = vdupq_n_s16(v65);
          v70 = a6 & 0xFFFFFFFFFFFFFFF0;
          v71 = v62;
          do
          {
            *(v71 - 1) = v69;
            *v71 = v69;
            v71 += 2;
            v70 -= 16;
          }

          while (v70);
          if (v15 == a6)
          {
            goto LABEL_57;
          }

          v68 = a6 & 0xFFFFFFFFFFFFFFF0;
          if (v16)
          {
            goto LABEL_66;
          }

          v67 = &v64[v80];
          v66 = a6 & 0xFFFFFFFFFFFFFFF0;
        }

        else
        {
          v66 = 0;
          v67 = v64;
        }

LABEL_71:
        v75 = a6 - v66;
        do
        {
          *v67++ = v65;
          --v75;
        }

        while (v75);
LABEL_57:
        v61 += a2;
        v64 = (v64 + v63);
        ++v60;
        v62 += v63;
        if (v60 == a4)
        {
          goto LABEL_74;
        }
      }
    }

    if (a8)
    {
      v46 = 0;
      v47 = v84 + 2 * a3 + 16;
      v48 = 2 * a2;
      do
      {
        v49 = *v14;
        if (a8 >= 4)
        {
          if (a8 < 0x10)
          {
            v52 = 0;
LABEL_48:
            v51 = &v13[a8 & 0xFFFFFFFFFFFFFFFCLL];
            v56 = vdup_n_s16(v49);
            v57 = v52;
            v58 = v52 - (a8 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v13[v57] = v56;
              v57 += 4;
              v58 += 4;
            }

            while (v58);
            v50 = a8 & 0xFFFFFFFFFFFFFFFCLL;
            if (v50 == a8)
            {
              goto LABEL_39;
            }

            goto LABEL_53;
          }

          v53 = vdupq_n_s16(v49);
          v54 = a8 & 0xFFFFFFFFFFFFFFF0;
          v55 = v47;
          do
          {
            *(v55 - 1) = v53;
            *v55 = v53;
            v55 += 2;
            v54 -= 16;
          }

          while (v54);
          if ((a8 & 0xFFFFFFFFFFFFFFF0) == a8)
          {
            goto LABEL_39;
          }

          v52 = a8 & 0xFFFFFFFFFFFFFFF0;
          if ((a8 & 0xCLL) != 0)
          {
            goto LABEL_48;
          }

          v51 = &v13[a8 & 0xFFFFFFFFFFFFFFF0];
          v50 = a8 & 0xFFFFFFFFFFFFFFF0;
        }

        else
        {
          v50 = 0;
          v51 = v13;
        }

LABEL_53:
        v59 = a8 - v50;
        do
        {
          *v51++ = v49;
          --v59;
        }

        while (v59);
LABEL_39:
        v14 += a2;
        v13 = (v13 + v48);
        ++v46;
        v47 += v48;
      }

      while (v46 != a4);
    }
  }

LABEL_74:
  v76 = -v11;
  v77 = v82 + a8;
  if (a5 >= 1)
  {
    v78 = (v84 + 2 * -(a2 * a5) - 2 * v11);
    do
    {
      result = memcpy(v78, v12, 2 * v77);
      v78 += 2 * a2;
      --a5;
    }

    while (a5);
  }

  if (a7 >= 1)
  {
    v79 = (v84 + 2 * a4 * a2 + 2 * v76);
    do
    {
      result = memcpy(v79, (v84 + 2 * v81 * a2 + 2 * v76), 2 * v77);
      v79 += 2 * a2;
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t webm::Ancestory::ById(int a1, void *a2)
{
  if (a1 > 18406)
  {
    if (a1 <= 25187)
    {
      if (a1 > 21673)
      {
        if (a1 > 21929)
        {
          if (a1 > 22202)
          {
            if (a1 != 22203)
            {
              if (a1 == 22337)
              {
                goto LABEL_89;
              }

              if (a1 == 25152)
              {
                *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kContentEncAesSettingsAncestory;
                a2[1] = &unk_273BDAA00;
                return 1;
              }

              goto LABEL_121;
            }

LABEL_105:
            *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kVideoAncestory;
            a2[1] = &unk_273BDA9DC;
            return 1;
          }

          if (a1 == 21930)
          {
            goto LABEL_105;
          }

          if (a1 != 22100)
          {
            v3 = 22186;
            goto LABEL_104;
          }

          goto LABEL_83;
        }

        if ((a1 - 21674) > 0x33 || ((1 << (a1 + 86)) & 0x8000400030341) == 0)
        {
          goto LABEL_121;
        }
      }

      else
      {
        if (a1 <= 21357)
        {
          if (a1 > 19898)
          {
            if ((a1 - 20529) <= 4 && a1 != 20532)
            {
              *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kContentEncAesSettingsAncestory;
              a2[1] = &unk_273BDAA04;
              return 1;
            }

            if (a1 == 19899)
            {
              *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kSeekAncestory;
              a2[1] = &unk_273BDA99C;
              return 1;
            }

            goto LABEL_121;
          }

          if (a1 == 18407)
          {
            goto LABEL_69;
          }

          if (a1 == 18408)
          {
            *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kContentEncAesSettingsAncestory;
            a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kCueTrackPositionsAncestory;
            return 1;
          }

          v4 = 19840;
          goto LABEL_41;
        }

        if (a1 <= 21418)
        {
          if (a1 != 21358)
          {
            if (a1 == 21368)
            {
LABEL_92:
              *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kCueTrackPositionsAncestory;
              a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kChapterDisplayAncestory;
              return 1;
            }

            goto LABEL_121;
          }

          goto LABEL_105;
        }

        if ((a1 - 21419) < 2)
        {
          *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kSeekAncestory;
          a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kInfoAncestory;
          return 1;
        }

        if (a1 != 21432 && a1 != 21440)
        {
          goto LABEL_121;
        }
      }
    }

    else
    {
      if (a1 <= 2274715)
      {
        if (a1 <= 29554)
        {
          if (a1 <= 25545)
          {
            if (a1 <= 25535)
            {
              if (a1 != 25188)
              {
                v3 = 25506;
                goto LABEL_104;
              }

LABEL_70:
              *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kAudioAncestory;
              a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kContentEncAesSettingsAncestory;
              return 1;
            }

            if (a1 != 25536)
            {
              if (a1 != 25541)
              {
                goto LABEL_121;
              }

LABEL_106:
              *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTargetsAncestory;
              a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kSimpleTagAncestory;
              return 1;
            }

LABEL_107:
            *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTargetsAncestory;
            a2[1] = &unk_273BDAA3C;
            return 1;
          }

          if (a1 <= 26825)
          {
            if (a1 == 25546)
            {
              goto LABEL_106;
            }

            if (a1 != 26568)
            {
              goto LABEL_121;
            }

            goto LABEL_107;
          }

          if (a1 == 26826)
          {
            goto LABEL_106;
          }

          v3 = 28032;
LABEL_104:
          if (a1 != v3)
          {
            goto LABEL_121;
          }

          goto LABEL_105;
        }

        if (a1 > 30112)
        {
          if ((a1 - 30113) < 2)
          {
LABEL_43:
            *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kBlockMoreAncestory;
            a2[1] = &unk_273BDA9B4;
            return 1;
          }

          if (a1 == 30901)
          {
            goto LABEL_70;
          }

          v4 = 31657;
LABEL_41:
          if (a1 == v4)
          {
            goto LABEL_89;
          }

          goto LABEL_121;
        }

        if (a1 == 29555)
        {
          *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTargetsAncestory;
          a2[1] = &unk_273BDAA38;
          return 1;
        }

        if (a1 != 29636)
        {
          v3 = 29637;
          goto LABEL_104;
        }

LABEL_83:
        *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kChapterDisplayAncestory;
        a2[1] = &unk_273BDAA2C;
        return 1;
      }

      if (a1 > 307544934)
      {
        if (a1 <= 408125542)
        {
          if (a1 == 307544935 || a1 == 357149030)
          {
            goto LABEL_98;
          }

          v6 = 374648427;
        }

        else
        {
          if (a1 <= 475249514)
          {
            if (a1 == 408125543 || a1 == 440786851)
            {
              *a2 = 0;
              a2[1] = 0;
              return 1;
            }

            goto LABEL_121;
          }

          if (a1 == 475249515)
          {
            goto LABEL_98;
          }

          v6 = 524531317;
        }

        goto LABEL_97;
      }

      if (a1 > 2459271)
      {
        if (a1 <= 272869231)
        {
          if (a1 == 2459272)
          {
            goto LABEL_105;
          }

          v4 = 2807729;
          goto LABEL_41;
        }

        if (a1 == 272869232)
        {
LABEL_98:
          *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kSeekAncestory;
          a2[1] = &unk_273BDA998;
          return 1;
        }

        v6 = 290298740;
LABEL_97:
        if (a1 != v6)
        {
          goto LABEL_121;
        }

        goto LABEL_98;
      }

      if (a1 == 2274716)
      {
        goto LABEL_105;
      }

      if (a1 != 2327523)
      {
        v3 = 2352003;
        goto LABEL_104;
      }
    }

LABEL_31:
    *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kVideoAncestory;
    a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kAudioAncestory;
    return 1;
  }

  if (a1 > 17137)
  {
    if (a1 <= 17504)
    {
      if ((a1 - 17138) <= 5 && ((1 << (a1 + 14)) & 0x23) != 0)
      {
LABEL_73:
        *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kEbmlAncestory;
        a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kSeekAncestory;
        return 1;
      }

      if (a1 == 17276 || a1 == 17278)
      {
LABEL_48:
        *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kChapterDisplayAncestory;
        a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTargetsAncestory;
        return 1;
      }

      goto LABEL_121;
    }

    if (a1 <= 17826)
    {
      v5 = a1 - 97;
      if ((a1 - 17505) <= 0x28)
      {
        if (((1 << v5) & 0x5802000000) != 0)
        {
LABEL_22:
          *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kSimpleTagAncestory;
          a2[1] = &xmmword_273BDAA50;
          return 1;
        }

        if (((1 << v5) & 0x10000000001) != 0)
        {
LABEL_89:
          *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kInfoAncestory;
          a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kBlockMoreAncestory;
          return 1;
        }
      }

LABEL_121:
      result = 0;
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    if ((a1 - 18401) >= 2)
    {
      if (a1 == 17827)
      {
        goto LABEL_22;
      }

      if (a1 == 17849)
      {
        *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kChapterDisplayAncestory;
        a2[1] = &unk_273BDAA24;
        return 1;
      }

      goto LABEL_121;
    }

LABEL_69:
    *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kContentEncAesSettingsAncestory;
    a2[1] = &unk_273BDAA08;
    return 1;
  }

  switch(a1)
  {
    case 128:
    case 145:
    case 146:
      goto LABEL_83;
    case 129:
    case 130:
    case 132:
    case 135:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
    case 144:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 157:
    case 158:
    case 164:
    case 167:
    case 168:
    case 169:
    case 170:
    case 172:
    case 173:
    case 175:
    case 177:
    case 180:
    case 184:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 239:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 248:
    case 249:
    case 250:
      goto LABEL_121;
    case 131:
    case 134:
    case 136:
    case 156:
    case 185:
    case 215:
    case 224:
    case 225:
      goto LABEL_105;
    case 133:
      goto LABEL_48;
    case 142:
    case 155:
    case 161:
    case 162:
    case 251:
      goto LABEL_43;
    case 154:
    case 176:
    case 186:
      goto LABEL_31;
    case 159:
    case 181:
      goto LABEL_70;
    case 160:
    case 163:
    case 171:
    case 231:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kBlockMoreAncestory;
      a2[1] = &unk_273BDA9B0;
      result = 1;
      break;
    case 165:
    case 238:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kBlockMoreAncestory;
      a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTimeSliceAncestory;
      result = 1;
      break;
    case 166:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kBlockMoreAncestory;
      a2[1] = &unk_273BDA9B8;
      result = 1;
      break;
    case 174:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kVideoAncestory;
      a2[1] = &unk_273BDA9D8;
      result = 1;
      break;
    case 178:
    case 240:
    case 241:
    case 247:
      goto LABEL_92;
    case 179:
    case 183:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kCueTrackPositionsAncestory;
      a2[1] = &unk_273BDAA18;
      result = 1;
      break;
    case 182:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kChapterDisplayAncestory;
      a2[1] = &unk_273BDAA28;
      result = 1;
      break;
    case 187:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kCueTrackPositionsAncestory;
      a2[1] = &unk_273BDAA14;
      result = 1;
      break;
    case 204:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTimeSliceAncestory;
      a2[1] = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kVideoAncestory;
      result = 1;
      break;
    case 232:
      *a2 = &webm::Ancestory::ById(webm::Id,webm::Ancestory*)::kTimeSliceAncestory;
      a2[1] = &unk_273BDA9CC;
      result = 1;
      break;
    default:
      if ((a1 - 17026) <= 5 && ((1 << (a1 + 126)) & 0x39) != 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
  }

  return result;
}

uint64_t webm::BlockHeaderParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v13 = 0;
  v8 = *(a1 + 52);
  do
  {
    while (1)
    {
      while (v8 <= 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v9 = *(a1 + 48);
            v13 = 0;
            if (v9 <= 2)
            {
              v10 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v14 = 0;
                  v15 = 0;
                  result = (*(*a3 + 16))(a3, 1, &v14, &v15);
                  if (result)
                  {
                    break;
                  }

                  ++v10;
                  *(a1 + 16) = v14 | (*(a1 + 16) << 8);
                  if (--v12 <= 1)
                  {
                    result = 0;
                    v13 = v9;
                    v10 = v9;
                    goto LABEL_21;
                  }
                }

                v13 = v10;
              }

              else
              {
                result = 0;
              }
            }

            else
            {
              v10 = 0;
              result = 4294966270;
            }

LABEL_21:
            *a4 += v10;
            *(a1 + 48) -= v10;
            if (result)
            {
              return result;
            }

            v8 = 2;
            *(a1 + 52) = 2;
          }
        }

        else
        {
          result = webm::VarIntParser::Feed(a1 + 24, a2, a3, &v13);
          *a4 += v13;
          if (result)
          {
            return result;
          }

          *(a1 + 8) = *(a1 + 40);
          v8 = 1;
          *(a1 + 52) = 1;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      v15 = 0;
      result = (*(*a3 + 16))(a3, 1, a1 + 18, &v15);
      if (result)
      {
        return result;
      }

      ++*a4;
      v8 = 3;
      *(a1 + 52) = 3;
    }
  }

  while (v8 != 3);
  return 0;
}

uint64_t webm::BasicBlockParser<webm::Block>::Init(uint64_t a1, __int128 *a2)
{
  if ((*(a2 + 1) + 1) < 6)
  {
    return 4294966270;
  }

  v3 = 0uLL;
  *&v11[8] = 0u;
  memset(v10, 0, sizeof(v10));
  *v11 = 0xFFFFFFFFLL;
  *&v11[16] = 2;
  memset(v12, 0, sizeof(v12));
  HIDWORD(v12[3]) = 0;
  *(a1 + 56) = 0uLL;
  *(a1 + 40) = v10[2];
  *(a1 + 24) = v10[1];
  *(a1 + 8) = v10[0];
  *(a1 + 80) = 0u;
  *(a1 + 104) = *v11;
  *(a1 + 120) = *&v11[16];
  *(a1 + 136) = 0xFFFFFFFFuLL;
  *(a1 + 152) = 0;
  v5 = (a1 + 160);
  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    v6 = a1;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a1 = v6;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v3 = *&v12[1];
    v8 = v12[3];
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 160) = v3;
  *(a1 + 176) = v8;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v9 = *a2;
  *(a1 + 48) = *(a2 + 2);
  *(a1 + 32) = v9;
  return 0;
}

void *webm::BasicBlockParser<webm::Block>::~BasicBlockParser(void *result)
{
  *result = &unk_2882A7FA0;
  v1 = result[20];
  if (v1)
  {
    result[21] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t webm::BasicBlockParser<webm::Block>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v55 = 0;
  for (i = *(a1 + 192); ; i = 10)
  {
    while (1)
    {
      while (1)
      {
        while (i <= 4)
        {
          if (i <= 1)
          {
            if (i)
            {
              if (i == 1)
              {
                v54 = 0;
                v51 = 0;
                result = (*(*a3 + 16))(a3, 1, &v54, &v51);
                if (result)
                {
                  return result;
                }

                ++*a4;
                ++*(a1 + 8);
                *(a1 + 24) = v54 + 1;
                i = 2;
                *(a1 + 192) = 2;
              }
            }

            else
            {
              result = webm::BlockHeaderParser::Feed(a1 + 72, a2, a3, &v55);
              v43 = v55;
              *a4 += v55;
              *(a1 + 8) += v43;
              if (result)
              {
                return result;
              }

              *(a1 + 16) = *(a1 + 80);
              *(a1 + 28) = *(a1 + 88);
              v44 = *(a1 + 90);
              i = 1;
              *(a1 + 31) = ((v44 >> 3) & 1) == 0;
              v45 = v44 & 6;
              *(a1 + 30) = v45;
              if (!v45)
              {
                *(a1 + 24) = 1;
                i = 2;
              }

              *(a1 + 192) = i;
            }
          }

          else if (i == 2)
          {
            LODWORD(v51) = 0;
            result = (*(*a2 + 104))(a2, a1 + 32, a1 + 16, &v51);
            if (result)
            {
              return result;
            }

            if (v51 == 1)
            {
              i = 8;
              *(a1 + 192) = 8;
            }

            else
            {
              v46 = *(a1 + 30);
              if (*(a1 + 30))
              {
                if (v46 == 6)
                {
                  v47 = 4;
                }

                else
                {
                  v47 = 6;
                }

                if (v46 == 2)
                {
                  i = 3;
                }

                else
                {
                  i = v47;
                }

                if (*(a1 + 24) == 1)
                {
                  i = 7;
                }

                *(a1 + 192) = i;
              }

              else
              {
                i = 7;
                *(a1 + 192) = 7;
              }
            }
          }

          else if (i == 3)
          {
LABEL_59:
            if (*(a1 + 24) - 1 > ((*(a1 + 168) - *(a1 + 160)) >> 3))
            {
              v54 = 0;
              while (1)
              {
                v51 = 0;
                result = (*(*a3 + 16))(a3, 1, &v54, &v51);
                if (result)
                {
                  return result;
                }

                ++*a4;
                ++*(a1 + 8);
                v48 = v54;
                *(a1 + 152) += v54;
                if (v48 != 255)
                {
                  std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 160), (a1 + 152));
                  *(a1 + 152) = 0;
                  goto LABEL_59;
                }
              }
            }

LABEL_64:
            i = 7;
            *(a1 + 192) = 7;
          }

          else
          {
            result = webm::VarIntParser::Feed(a1 + 128, a2, a3, &v55);
            v10 = v55;
            *a4 += v55;
            *(a1 + 8) += v10;
            if (result)
            {
              return result;
            }

            v51 = *(a1 + 144);
            std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 160), &v51);
            v52 = 0xFFFFFFFFLL;
            v53 = 0;
            *(a1 + 136) = 0xFFFFFFFFuLL;
            i = 5;
            *(a1 + 192) = 5;
          }
        }

        if (i > 6)
        {
          break;
        }

        if (i == 5)
        {
          while (*(a1 + 24) - 1 > ((*(a1 + 168) - *(a1 + 160)) >> 3))
          {
            result = webm::VarIntParser::Feed(a1 + 128, a2, a3, &v55);
            v33 = v55;
            *a4 += v55;
            *(a1 + 8) += v33;
            if (result)
            {
              return result;
            }

            v34 = *(a1 + 168);
            if (*(a1 + 160) == v34)
            {
              goto LABEL_78;
            }

            v51 = (-1 << (7 * *(a1 + 140) + 6)) + *(v34 - 8) + *(a1 + 144) + 1;
            std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 160), &v51);
            v52 = 0xFFFFFFFFLL;
            v53 = 0;
            *(a1 + 136) = 0xFFFFFFFFuLL;
          }

          goto LABEL_64;
        }

        v26 = *(a1 + 8);
        v27 = *(a1 + 40);
        v28 = v27 - v26;
        if (v27 <= v26)
        {
          return 4294966266;
        }

        v29 = *(a1 + 24);
        v30 = v28 / v29;
        v51 = v28 / v29;
        if (v28 % v29)
        {
          return 4294966266;
        }

        v31 = *(a1 + 160);
        v32 = (*(a1 + 168) - v31) >> 3;
        if (v29 <= v32)
        {
          if (v29 < v32)
          {
            *(a1 + 168) = v31 + 8 * v29;
          }
        }

        else
        {
          std::vector<unsigned long long>::__append(a1 + 160, v29 - v32, &v51);
          v26 = *(a1 + 8);
        }

        *(a1 + 56) = *(a1 + 48) + v26;
        *(a1 + 64) = v30;
LABEL_68:
        i = 9;
        *(a1 + 192) = 9;
      }

      if (i <= 8)
      {
        if (i != 7)
        {
          v49 = *(a1 + 8);
          do
          {
            result = (*(*a3 + 24))(a3, *(a1 + 40) - v49, &v55);
            v50 = v55;
            *a4 += v55;
            v49 = *(a1 + 8) + v50;
            *(a1 + 8) = v49;
          }

          while (result == -1);
          return result;
        }

        v12 = *(a1 + 160);
        v11 = *(a1 + 168);
        v13 = *(a1 + 8);
        if (v12 != v11)
        {
          v14 = v11 - v12 - 8;
          v15 = *(a1 + 160);
          if (v14 < 0x18)
          {
            goto LABEL_81;
          }

          v16 = (v14 >> 3) + 1;
          v15 = (v12 + 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
          v17 = 0uLL;
          v18 = *(a1 + 8);
          v19 = v12 + 1;
          v20 = v16 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = vaddq_s64(v19[-1], v18);
            v17 = vaddq_s64(*v19, v17);
            v19 += 2;
            v20 -= 4;
          }

          while (v20);
          v13 = vaddvq_s64(vaddq_s64(v17, v18));
          if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_81:
            do
            {
              v21 = v15->i64[0];
              v15 = (v15 + 8);
              v13 += v21;
            }

            while (v15 != v11);
          }
        }

        v22 = *(a1 + 40);
        v23 = v22 > v13;
        v24 = v22 - v13;
        if (!v23)
        {
          return 4294966266;
        }

        v51 = v24;
        result = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 160), &v51);
        *(a1 + 56) = *(a1 + 48) + *(a1 + 36) + *(a1 + 8);
        v25 = *(a1 + 160);
        if (*(a1 + 168) == v25)
        {
          goto LABEL_78;
        }

        *(a1 + 64) = *v25;
        goto LABEL_68;
      }

      if (i == 9)
      {
        break;
      }

      if (i == 10)
      {
        return (*(*a2 + 112))(a2, a1 + 32, a1 + 16);
      }
    }

    v35 = *(a1 + 184);
    v36 = *(a1 + 160);
    if (v35 < (*(a1 + 168) - v36) >> 3)
    {
      break;
    }

LABEL_70:
    *(a1 + 192) = 10;
  }

  v37 = *(v36 + 8 * v35);
  while (1)
  {
    result = (*(*a2 + 128))(a2, a1 + 32, a3);
    v38 = *(a1 + 184);
    v39 = *(a1 + 160);
    v40 = (*(a1 + 168) - v39) >> 3;
    if (v40 <= v38)
    {
      break;
    }

    *a4 += v37 - *(v39 + 8 * v38);
    if (result)
    {
      return result;
    }

    v41 = v38 + 1;
    if (v41 >= v40)
    {
      *(a1 + 184) = v41;
      goto LABEL_70;
    }

    *(a1 + 56) += *(a1 + 64);
    v42 = (v39 + 8 * v41);
    v37 = *v42;
    *(a1 + 64) = *v42;
    *(a1 + 184) = v41;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t webm::BasicBlockParser<webm::SimpleBlock>::Init(uint64_t a1, __int128 *a2)
{
  if ((*(a2 + 1) + 1) < 6)
  {
    return 4294966270;
  }

  v3 = 0uLL;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  LODWORD(v10) = -1;
  LODWORD(v11) = -1;
  memset(v12, 0, 24);
  *(a1 + 8) = v9[0];
  *(a1 + 72) = 0;
  *(a1 + 56) = v9[3];
  *(a1 + 40) = v9[2];
  *(a1 + 24) = v9[1];
  *(a1 + 88) = 0u;
  *(a1 + 112) = v10;
  *(a1 + 128) = 2;
  *(a1 + 144) = v11;
  *(a1 + 160) = 0;
  v5 = (a1 + 168);
  v4 = *(a1 + 168);
  if (v4)
  {
    *(a1 + 176) = v4;
    v6 = a1;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a1 = v6;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v3 = *(v12 + 8);
  }

  *(a1 + 168) = v3;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v8 = *a2;
  *(a1 + 56) = *(a2 + 2);
  *(a1 + 40) = v8;
  return 0;
}

void *webm::BasicBlockParser<webm::SimpleBlock>::~BasicBlockParser(void *result)
{
  *result = &unk_2882A7FE8;
  v1 = result[21];
  if (v1)
  {
    result[22] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t webm::BasicBlockParser<webm::SimpleBlock>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v55 = 0;
  for (i = *(a1 + 200); ; i = 10)
  {
    while (1)
    {
      while (1)
      {
        while (i <= 4)
        {
          if (i <= 1)
          {
            if (i)
            {
              if (i == 1)
              {
                v54 = 0;
                v51 = 0;
                result = (*(*a3 + 16))(a3, 1, &v54, &v51);
                if (result)
                {
                  return result;
                }

                ++*a4;
                ++*(a1 + 8);
                *(a1 + 24) = v54 + 1;
                i = 2;
                *(a1 + 200) = 2;
              }
            }

            else
            {
              result = webm::BlockHeaderParser::Feed(a1 + 80, a2, a3, &v55);
              v43 = v55;
              *a4 += v55;
              *(a1 + 8) += v43;
              if (result)
              {
                return result;
              }

              *(a1 + 16) = *(a1 + 88);
              *(a1 + 28) = *(a1 + 96);
              v44 = *(a1 + 98);
              i = 1;
              *(a1 + 31) = (*(a1 + 98) & 8) == 0;
              *(a1 + 32) = v44 >> 7;
              *(a1 + 33) = v44 & 1;
              v45 = v44 & 6;
              *(a1 + 30) = v45;
              if (!v45)
              {
                *(a1 + 24) = 1;
                i = 2;
              }

              *(a1 + 200) = i;
            }
          }

          else if (i == 2)
          {
            LODWORD(v51) = 0;
            result = (*(*a2 + 80))(a2, a1 + 40, a1 + 16, &v51);
            if (result)
            {
              return result;
            }

            if (v51 == 1)
            {
              i = 8;
              *(a1 + 200) = 8;
            }

            else
            {
              v46 = *(a1 + 30);
              if (*(a1 + 30))
              {
                if (v46 == 6)
                {
                  v47 = 4;
                }

                else
                {
                  v47 = 6;
                }

                if (v46 == 2)
                {
                  i = 3;
                }

                else
                {
                  i = v47;
                }

                if (*(a1 + 24) == 1)
                {
                  i = 7;
                }

                *(a1 + 200) = i;
              }

              else
              {
                i = 7;
                *(a1 + 200) = 7;
              }
            }
          }

          else if (i == 3)
          {
LABEL_59:
            if (*(a1 + 24) - 1 > ((*(a1 + 176) - *(a1 + 168)) >> 3))
            {
              v54 = 0;
              while (1)
              {
                v51 = 0;
                result = (*(*a3 + 16))(a3, 1, &v54, &v51);
                if (result)
                {
                  return result;
                }

                ++*a4;
                ++*(a1 + 8);
                v48 = v54;
                *(a1 + 160) += v54;
                if (v48 != 255)
                {
                  std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 168), (a1 + 160));
                  *(a1 + 160) = 0;
                  goto LABEL_59;
                }
              }
            }

LABEL_64:
            i = 7;
            *(a1 + 200) = 7;
          }

          else
          {
            result = webm::VarIntParser::Feed(a1 + 136, a2, a3, &v55);
            v10 = v55;
            *a4 += v55;
            *(a1 + 8) += v10;
            if (result)
            {
              return result;
            }

            v51 = *(a1 + 152);
            std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 168), &v51);
            v52 = 0xFFFFFFFFLL;
            v53 = 0;
            *(a1 + 144) = 0xFFFFFFFFuLL;
            i = 5;
            *(a1 + 200) = 5;
          }
        }

        if (i > 6)
        {
          break;
        }

        if (i == 5)
        {
          while (*(a1 + 24) - 1 > ((*(a1 + 176) - *(a1 + 168)) >> 3))
          {
            result = webm::VarIntParser::Feed(a1 + 136, a2, a3, &v55);
            v33 = v55;
            *a4 += v55;
            *(a1 + 8) += v33;
            if (result)
            {
              return result;
            }

            v34 = *(a1 + 176);
            if (*(a1 + 168) == v34)
            {
              goto LABEL_78;
            }

            v51 = (-1 << (7 * *(a1 + 148) + 6)) + *(v34 - 8) + *(a1 + 152) + 1;
            std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 168), &v51);
            v52 = 0xFFFFFFFFLL;
            v53 = 0;
            *(a1 + 144) = 0xFFFFFFFFuLL;
          }

          goto LABEL_64;
        }

        v26 = *(a1 + 8);
        v27 = *(a1 + 48);
        v28 = v27 - v26;
        if (v27 <= v26)
        {
          return 4294966266;
        }

        v29 = *(a1 + 24);
        v30 = v28 / v29;
        v51 = v28 / v29;
        if (v28 % v29)
        {
          return 4294966266;
        }

        v31 = *(a1 + 168);
        v32 = (*(a1 + 176) - v31) >> 3;
        if (v29 <= v32)
        {
          if (v29 < v32)
          {
            *(a1 + 176) = v31 + 8 * v29;
          }
        }

        else
        {
          std::vector<unsigned long long>::__append(a1 + 168, v29 - v32, &v51);
          v26 = *(a1 + 8);
        }

        *(a1 + 64) = *(a1 + 56) + v26;
        *(a1 + 72) = v30;
LABEL_68:
        i = 9;
        *(a1 + 200) = 9;
      }

      if (i <= 8)
      {
        if (i != 7)
        {
          v49 = *(a1 + 8);
          do
          {
            result = (*(*a3 + 24))(a3, *(a1 + 48) - v49, &v55);
            v50 = v55;
            *a4 += v55;
            v49 = *(a1 + 8) + v50;
            *(a1 + 8) = v49;
          }

          while (result == -1);
          return result;
        }

        v12 = *(a1 + 168);
        v11 = *(a1 + 176);
        v13 = *(a1 + 8);
        if (v12 != v11)
        {
          v14 = v11 - v12 - 8;
          v15 = *(a1 + 168);
          if (v14 < 0x18)
          {
            goto LABEL_81;
          }

          v16 = (v14 >> 3) + 1;
          v15 = (v12 + 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
          v17 = 0uLL;
          v18 = *(a1 + 8);
          v19 = v12 + 1;
          v20 = v16 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = vaddq_s64(v19[-1], v18);
            v17 = vaddq_s64(*v19, v17);
            v19 += 2;
            v20 -= 4;
          }

          while (v20);
          v13 = vaddvq_s64(vaddq_s64(v17, v18));
          if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_81:
            do
            {
              v21 = v15->i64[0];
              v15 = (v15 + 8);
              v13 += v21;
            }

            while (v15 != v11);
          }
        }

        v22 = *(a1 + 48);
        v23 = v22 > v13;
        v24 = v22 - v13;
        if (!v23)
        {
          return 4294966266;
        }

        v51 = v24;
        result = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a1 + 168), &v51);
        *(a1 + 64) = *(a1 + 56) + *(a1 + 44) + *(a1 + 8);
        v25 = *(a1 + 168);
        if (*(a1 + 176) == v25)
        {
          goto LABEL_78;
        }

        *(a1 + 72) = *v25;
        goto LABEL_68;
      }

      if (i == 9)
      {
        break;
      }

      if (i == 10)
      {
        return (*(*a2 + 88))(a2, a1 + 40, a1 + 16);
      }
    }

    v35 = *(a1 + 192);
    v36 = *(a1 + 168);
    if (v35 < (*(a1 + 176) - v36) >> 3)
    {
      break;
    }

LABEL_70:
    *(a1 + 200) = 10;
  }

  v37 = *(v36 + 8 * v35);
  while (1)
  {
    result = (*(*a2 + 128))(a2, a1 + 40, a3);
    v38 = *(a1 + 192);
    v39 = *(a1 + 168);
    v40 = (*(a1 + 176) - v39) >> 3;
    if (v40 <= v38)
    {
      break;
    }

    *a4 += v37 - *(v39 + 8 * v38);
    if (result)
    {
      return result;
    }

    v41 = v38 + 1;
    if (v41 >= v40)
    {
      *(a1 + 192) = v41;
      goto LABEL_70;
    }

    *(a1 + 64) += *(a1 + 72);
    v42 = (v39 + 8 * v41);
    v37 = *v42;
    *(a1 + 72) = *v42;
    *(a1 + 192) = v41;
  }

LABEL_78:
  __break(1u);
  return result;
}

void webm::BasicBlockParser<webm::Block>::~BasicBlockParser(void *a1)
{
  *a1 = &unk_2882A7FA0;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webm::BasicBlockParser<webm::SimpleBlock>::~BasicBlockParser(void *a1)
{
  *a1 = &unk_2882A7FE8;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 > (v5 - v4) >> 3)
  {
    v6 = (v4 - *a1) >> 3;
    v7 = v6 + a2;
    if (!((v6 + a2) >> 61))
    {
      v8 = v5 - *a1;
      if (v8 >> 2 > v7)
      {
        v7 = v8 >> 2;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      if (v9)
      {
        if (!(v9 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v12 = 8 * v6;
      v13 = 8 * a2;
      v14 = 8 * v6 + 8 * a2;
      v15 = (8 * v6);
      do
      {
        if (!v15)
        {
          goto LABEL_25;
        }

        *v15++ = *a3;
        v13 -= 8;
      }

      while (v13);
      v16 = *a1;
      v17 = *(a1 + 8) - *a1;
      v18 = v12 - v17;
      memcpy((v12 - v17), *a1, v17);
      *a1 = v18;
      *(a1 + 8) = v14;
      *(a1 + 16) = 0;
      if (v16)
      {

        operator delete(v16);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v10 = 8 * a2;
  v11 = &v4[a2];
  do
  {
    if (!v4)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v4++ = *a3;
    v10 -= 8;
  }

  while (v10);
  v4 = v11;
LABEL_16:
  *(a1 + 8) = v4;
}

void *webm::BufferReader::BufferReader(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_2882A8030;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result[4] = 0;
  return result;
}

{
  *result = &unk_2882A8030;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result[4] = 0;
  return result;
}

void *webm::BufferReader::BufferReader(void *result, void *a2)
{
  *result = &unk_2882A8030;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result[4] = 0;
  return result;
}

{
  *result = &unk_2882A8030;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result[4] = 0;
  return result;
}

__n128 webm::BufferReader::BufferReader(void *a1, __n128 *a2)
{
  *a1 = &unk_2882A8030;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a1[4] = 0;
  return result;
}

{
  *a1 = &unk_2882A8030;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a1[4] = 0;
  return result;
}

__n128 webm::BufferReader::BufferReader(void *a1, uint64_t a2)
{
  *a1 = &unk_2882A8030;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *(a2 + 8);
  *(a1 + 1) = result;
  v3 = *(a2 + 32);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  a1[4] = v3;
  *(a2 + 32) = 0;
  return result;
}

{
  *a1 = &unk_2882A8030;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *(a2 + 8);
  *(a1 + 1) = result;
  v3 = *(a2 + 32);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  a1[4] = v3;
  *(a2 + 32) = 0;
  return result;
}

__n128 webm::BufferReader::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 1;
    v3 = a1[1];
    if (v3)
    {
      a1[2] = v3;
      v5 = a1;
      operator delete(v3);
      a1 = v5;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    result = *(a2 + 8);
    *(a1 + 1) = result;
    v7 = *(a2 + 32);
    a1[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    a1[4] = v7;
    *(a2 + 32) = 0;
  }

  return result;
}

void *webm::BufferReader::operator=(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t webm::BufferReader::Read(webm::BufferReader *this, size_t a2, unsigned __int8 *__dst, unint64_t *a4)
{
  *a4 = 0;
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = *(this + 4);
  v7 = v6 + v4;
  if (v6 + v4 == v5)
  {
    return 4294967293;
  }

  v9 = v5 - v7;
  if (v5 - v7 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v5 - v7;
  }

  if (v10)
  {
    v11 = a2;
    v12 = this;
    v13 = a4;
    memmove(__dst, (v4 + v6), v10);
    this = v12;
    a4 = v13;
    a2 = v11;
    v6 = *(v12 + 4);
  }

  *a4 = v10;
  *(this + 4) = v6 + v10;
  if (v9 >= a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t webm::BufferReader::Skip(webm::BufferReader *this, unint64_t a2, unint64_t *a3)
{
  *a3 = 0;
  v3 = *(this + 2);
  v4 = *(this + 4);
  v5 = v4 + *(this + 1);
  if (v5 == v3)
  {
    return 4294967293;
  }

  v7 = v3 - v5;
  v8 = v7 >= a2;
  if (v7 >= a2)
  {
    v7 = a2;
  }

  *a3 = v7;
  *(this + 4) = v7 + v4;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void webm::BufferReader::~BufferReader(webm::BufferReader *this)
{
  *this = &unk_2882A8030;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A8030;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::Callback::OnUnknownElement(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    return 0;
  }

  do
  {
    result = (*(*a3 + 24))(a3);
    *a4 = *a4;
  }

  while (result == -1);
  return result;
}

uint64_t webm::Callback::Skip(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  do
  {
    v5 = 0;
    result = (*(*a1 + 24))(a1);
    *a2 -= v5;
  }

  while (result == -1);
  return result;
}

uint64_t webm::Callback::OnVoid(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    return 0;
  }

  do
  {
    result = (*(*a3 + 24))(a3);
    *a4 = *a4;
  }

  while (result == -1);
  return result;
}

uint64_t webm::Callback::OnFrame(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    return 0;
  }

  do
  {
    result = (*(*a3 + 24))(a3);
    *a4 = *a4;
  }

  while (result == -1);
  return result;
}

uint64_t webm::DateParser::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 | 8) != 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

void *webm::FileReader::FileReader(void *this, __sFILE *a2)
{
  *this = &unk_2882A8138;
  this[1] = a2;
  this[2] = 0;
  return this;
}

{
  *this = &unk_2882A8138;
  this[1] = a2;
  this[2] = 0;
  return this;
}

void *webm::FileReader::FileReader(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  result[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *result = &unk_2882A8138;
  result[1] = v2;
  *(a2 + 16) = 0;
  return result;
}

{
  v2 = *(a2 + 8);
  result[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *result = &unk_2882A8138;
  result[1] = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t webm::FileReader::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(result + 8);
    *(result + 8) = v3;
    if (v4)
    {
      v5 = result;
      fclose(v4);
      result = v5;
    }

    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t webm::FileReader::Read(webm::FileReader *this, size_t __nitems, unsigned __int8 *__ptr, unint64_t *a4)
{
  v5 = *(this + 1);
  if (v5)
  {
    v8 = fread(__ptr, 1uLL, __nitems, v5);
    *a4 = v8;
    *(this + 2) += v8;
    if (v8 == __nitems)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 4294967293;
    }
  }

  else
  {
    *a4 = 0;
    return 4294967293;
  }
}

uint64_t webm::FileReader::Skip(webm::FileReader *this, uint64_t a2, unint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v4 = *(this + 1);
  if (!v4)
  {
    return 4294967293;
  }

  if (a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = a2;
  }

  if (fseek(v4, v7, 1))
  {
    clearerr(*(this + 1));
    if (a2 >= 0x400)
    {
      v8 = 1024;
    }

    else
    {
      v8 = a2;
    }

    v9 = fread(__ptr, 1uLL, v8, *(this + 1));
    *a3 += v9;
    *(this + 2) += v9;
    if (v9 == a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (*a3)
    {
      return v10;
    }

    else
    {
      return 4294967293;
    }
  }

  else
  {
    *a3 = v7;
    *(this + 2) += v7;
    return a2 >> 63;
  }
}

void webm::FileReader::~FileReader(webm::FileReader *this)
{
  v1 = *(this + 1);
  *this = &unk_2882A8138;
  *(this + 1) = 0;
  if (v1)
  {
    fclose(v1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2882A8138;
  *(this + 1) = 0;
  if (v2)
  {
    fclose(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::FloatParser::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 8 || v2 == 4)
  {
    *(a1 + 24) = 0;
LABEL_9:
    *(a1 + 32) = v2;
    *(a1 + 36) = v2 == 4;
    return 0;
  }

  if (!v2)
  {
    *(a1 + 8) = *(a1 + 16);
    goto LABEL_9;
  }

  return 4294966270;
}

uint64_t webm::IdElementParser::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 4294966270;
  }

  result = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = v2;
  return result;
}

uint64_t webm::IdParser::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v7 = *(a1 + 8);
  if (v7 == -1)
  {
    v14 = 0;
    v15 = 0;
    result = (*(*a3 + 16))(a3, 1, &v14, &v15);
    if (result)
    {
      return result;
    }

    ++*a4;
    v10 = v14;
    if (v14 <= 0xFu)
    {
      return 4294966271;
    }

    v11 = 0;
    do
    {
      v12 = v11++;
    }

    while (((v14 << v12) & 0x80) == 0);
    v7 = v12;
    *(a1 + 8) = v12;
    *(a1 + 12) = v10;
    if (v12 > 4u)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v7)
    {
      v14 = 0;
      v15 = 0;
      result = (*(*a3 + 16))(a3, 1, &v14, &v15);
      if (result)
      {
        v13 = 0;
LABEL_13:
        v8 = v13;
        goto LABEL_17;
      }

      v8 = v7;
      *(a1 + 12) = v14 | (*(a1 + 12) << 8);
      if (v7 != 1)
      {
        v14 = 0;
        v15 = 0;
        v13 = 1;
        result = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (result)
        {
          goto LABEL_13;
        }

        *(a1 + 12) = v14 | (*(a1 + 12) << 8);
        if (v7 != 2)
        {
          v14 = 0;
          v15 = 0;
          result = (*(*a3 + 16))(a3, 1, &v14, &v15);
          if (result)
          {
            v8 = 2;
            goto LABEL_17;
          }

          *(a1 + 12) = v14 | (*(a1 + 12) << 8);
          if (v7 != 3)
          {
            v14 = 0;
            v15 = 0;
            result = (*(*a3 + 16))(a3, 1, &v14, &v15);
            if (result)
            {
              v8 = 3;
            }

            else
            {
              *(a1 + 12) = v14 | (*(a1 + 12) << 8);
            }

            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    goto LABEL_17;
  }

  if (v7 <= 4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = 0;
  result = 4294966270;
LABEL_17:
  *a4 += v8;
  *(a1 + 8) -= v8;
  return result;
}

void *webm::IstreamReader::IstreamReader(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  result[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *result = &unk_2882A8198;
  result[1] = v2;
  *(a2 + 16) = 0;
  return result;
}

{
  v2 = *(a2 + 8);
  result[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *result = &unk_2882A8198;
  result[1] = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t webm::IstreamReader::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(result + 8);
    *(result + 8) = v3;
    if (v4)
    {
      v5 = result;
      (*(*v4 + 8))(v4);
      result = v5;
    }

    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t webm::IstreamReader::Read(webm::IstreamReader *this, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  if (!*(this + 1))
  {
    *a4 = 0;
    return 4294967293;
  }

  std::istream::read();
  v7 = *(*(this + 1) + 8);
  *a4 = v7;
  *(this + 2) += v7;
  if (!v7)
  {
    return 4294967293;
  }

  if (v7 == a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t webm::IstreamReader::Skip(webm::IstreamReader *this, uint64_t a2, unint64_t *a3)
{
  *a3 = 0;
  v3 = *(this + 1);
  if (!v3 || *(v3 + *(*v3 - 24) + 32))
  {
    return 4294967293;
  }

  if (a2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = a2;
  }

  v9 = std::istream::seekg();
  if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
  {
    std::ios_base::clear((*(this + 1) + *(**(this + 1) - 24)), 0);
    std::istream::read();
    v10 = *(*(this + 1) + 8);
    *a3 += v10;
    *(this + 2) += v10;
    if (v10 == a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if (*a3)
    {
      return v11;
    }

    else
    {
      return 4294967293;
    }
  }

  else
  {
    *a3 = v8;
    *(this + 2) += v8;
    return a2 >> 63;
  }
}

void webm::IstreamReader::~IstreamReader(webm::IstreamReader *this)
{
  v1 = *(this + 1);
  *this = &unk_2882A8198;
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2882A8198;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterParser::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 16) = 0xFFFFFFFFLL;
  *(a1 + 40) = -1;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v3;
  *(a1 + 200) = v4;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 216) = a3;
  }

  else
  {
    *(a1 + 216) = v5;
    if (!v5)
    {
      *(a1 + 188) = 8;
      return 0;
    }
  }

  *(a1 + 188) = 0;
  return 0;
}

uint64_t webm::MasterParser::InitAfterSeek(uint64_t result, unsigned int **a2, uint64_t a3)
{
  v3 = result;
  *(result + 16) = 0xFFFFFFFFLL;
  *(result + 40) = -1;
  *(result + 52) = 0;
  *(result + 44) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 192) = -1;
  *(result + 200) = -1;
  *(result + 208) = -1;
  *(result + 232) = 0;
  *(result + 216) = -1;
  *(result + 224) = 0;
  if (*a2 == a2[1])
  {
    v8 = *(a3 + 16);
    *(result + 56) = *a3;
    *(result + 72) = v8;
    v9 = *(result + 88);
    if (v9)
    {
      v10 = *(result + 56);
      v11 = vcnt_s8(v9);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = *(result + 56);
        if (*&v9 <= v10)
        {
          v12 = v10 % v9.i32[0];
        }
      }

      else
      {
        v12 = (v9.i32[0] - 1) & v10;
      }

      v20 = *(*(result + 80) + 8 * v12);
      if (v20)
      {
        v21 = *v20;
        if (v21)
        {
          if (v11.u32[0] < 2uLL)
          {
            v22 = *&v9 - 1;
            while (1)
            {
              v24 = v21[1];
              if (v24 == v10)
              {
                if (*(v21 + 4) == v10)
                {
                  goto LABEL_43;
                }
              }

              else if ((v24 & v22) != v12)
              {
                goto LABEL_44;
              }

              v21 = *v21;
              if (!v21)
              {
                goto LABEL_44;
              }
            }
          }

          do
          {
            v23 = v21[1];
            if (v23 == v10)
            {
              if (*(v21 + 4) == v10)
              {
LABEL_43:
                *(result + 176) = v21[3];
                *(result + 188) = 4;
                return result;
              }
            }

            else
            {
              if (v23 >= *&v9)
              {
                v23 %= *&v9;
              }

              if (v23 != v12)
              {
                break;
              }
            }

            v21 = *v21;
          }

          while (v21);
        }
      }
    }
  }

  else
  {
    v4 = **a2;
    *(result + 56) = v4;
    *(result + 60) = -1;
    *(result + 68) = -1;
    *(result + 76) = -1;
    v5 = *(result + 88);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = v4;
        if (*&v5 <= v4)
        {
          v7 = v4 % v5.i32[0];
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v13 = *(*(result + 80) + 8 * v7);
      if (v13)
      {
        v14 = *v13;
        if (v14)
        {
          if (v6.u32[0] < 2uLL)
          {
            v15 = *&v5 - 1;
            while (1)
            {
              v16 = v14[1];
              if (v16 == v4)
              {
                if (*(v14 + 4) == v4)
                {
                  goto LABEL_18;
                }
              }

              else if ((v16 & v15) != v7)
              {
                goto LABEL_44;
              }

              v14 = *v14;
              if (!v14)
              {
                goto LABEL_44;
              }
            }
          }

          do
          {
            v19 = v14[1];
            if (v19 == v4)
            {
              if (*(v14 + 4) == v4)
              {
LABEL_18:
                v17 = v14[3];
                *(v3 + 176) = v17;
                v18 = a2[1];
                v25[0] = *a2 + 1;
                v25[1] = v18;
                result = (*(*v17 + 32))(v17, v25);
                *(v3 + 188) = 6;
                return result;
              }
            }

            else
            {
              if (v19 >= *&v5)
              {
                v19 %= *&v5;
              }

              if (v19 != v7)
              {
                break;
              }
            }

            v14 = *v14;
          }

          while (v14);
        }
      }
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t webm::MasterParser::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v38 = 0;
  v39 = &unk_2882A8218;
  v8 = (a1 + 184);
  if (*(a1 + 184) == 1)
  {
    v9 = &v39;
  }

  else
  {
    v9 = a2;
  }

  v36 = a1 + 160;
  v37 = a1 + 120;
  while (1)
  {
LABEL_8:
    while (1)
    {
      v11 = *(a1 + 188);
      if (v11 > 3)
      {
        break;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1)
          {
            continue;
          }

          result = webm::IdParser::Feed((v8 - 44), v9, a3, &v38);
          v15 = v38;
          *a4 += v38;
          *(a1 + 224) += v15;
          *(a1 + 60) += v15;
          if (result)
          {
            return result;
          }

LABEL_21:
          v10 = 2;
          goto LABEL_7;
        }

        *(a1 + 72) = (*(*a3 + 32))(a3);
        *(a1 + 60) = 0;
        result = webm::IdParser::Feed((v8 - 44), v9, a3, &v38);
        v25 = v38;
        *a4 += v38;
        *(a1 + 224) += v25;
        *(a1 + 60) += v25;
        if (result == -3)
        {
          if (*(a1 + 200) == -1 && !v25)
          {
            v10 = 8;
            goto LABEL_7;
          }
        }

        else if ((result + 1) < 2)
        {
          if (result)
          {
            v10 = 1;
            goto LABEL_7;
          }

          goto LABEL_21;
        }

        if (v25)
        {
          *(a1 + 188) = 1;
        }

        return result;
      }

      if (v11 == 2)
      {
        LODWORD(result) = webm::VarIntParser::Feed((v8 - 38), v9, a3, &v38);
        if (result == -1030)
        {
          result = 4294966270;
        }

        else
        {
          result = result;
        }

        v26 = v38;
        *a4 += v38;
        *(a1 + 224) += v26;
        *(a1 + 60) += v26;
        if (!result)
        {
          *(a1 + 56) = *(a1 + 20);
          if (*(a1 + 48) == 0xFFFFFFFFFFFFFFFFLL >> (-7 * *(a1 + 44) + 57))
          {
            v27 = -1;
          }

          else
          {
            v27 = *(a1 + 48);
          }

          *(a1 + 64) = v27;
          v10 = 3;
          goto LABEL_7;
        }

        return result;
      }

      v16 = *(a1 + 64);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 64);
      }

      v18 = *(a1 + 216);
      v19 = v17 + *(a1 + 224);
      v20 = *(a1 + 200);
      if (v20 != -1)
      {
        v18 = *(a1 + 200);
      }

      if (v19 > v18)
      {
        return 4294966268;
      }

      v21 = *(a1 + 88);
      if (!*&v21)
      {
        goto LABEL_78;
      }

      v22 = *(a1 + 56);
      v23 = vcnt_s8(v21);
      v23.i16[0] = vaddlv_u8(v23);
      if (v23.u32[0] > 1uLL)
      {
        v24 = *(a1 + 56);
        if (*&v21 <= v22)
        {
          v24 = v22 % v21.i32[0];
        }
      }

      else
      {
        v24 = (v21.i32[0] - 1) & v22;
      }

      v30 = *(*(a1 + 80) + 8 * v24);
      if (!v30 || (v31 = *v30) == 0)
      {
LABEL_78:
        if (v20 == -1)
        {
          *(a1 + 232) = 1;
          v10 = 8;
          goto LABEL_7;
        }

        if (v16 != -1)
        {
          v35 = v37;
          goto LABEL_81;
        }

        return 4294966269;
      }

      if (v23.u32[0] < 2uLL)
      {
        v32 = *&v21 - 1;
        while (1)
        {
          v34 = v31[1];
          if (v34 == v22)
          {
            if (*(v31 + 4) == v22)
            {
              goto LABEL_85;
            }
          }

          else if ((v34 & v32) != v24)
          {
            goto LABEL_78;
          }

          v31 = *v31;
          if (!v31)
          {
            goto LABEL_78;
          }
        }
      }

      while (1)
      {
        v33 = v31[1];
        if (v33 == v22)
        {
          break;
        }

        if (v33 >= *&v21)
        {
          v33 %= *&v21;
        }

        if (v33 != v24)
        {
          goto LABEL_78;
        }

LABEL_68:
        v31 = *v31;
        if (!v31)
        {
          goto LABEL_78;
        }
      }

      if (*(v31 + 4) != v22)
      {
        goto LABEL_68;
      }

LABEL_85:
      v35 = v31[3];
LABEL_81:
      *(a1 + 176) = v35;
      v10 = 4;
LABEL_7:
      *(a1 + 188) = v10;
    }

    if (v11 <= 5)
    {
      if (v11 == 4)
      {
        result = (*(*v9 + 2))(v9, v8 - 32, v8);
        if (!result)
        {
          if (*v8 == 1)
          {
            if (*(a1 + 64) != -1)
            {
              *(a1 + 176) = v36;
            }

            v9 = &v39;
          }

          v10 = 5;
          goto LABEL_7;
        }
      }

      else
      {
        result = (*(**(a1 + 176) + 24))(*(a1 + 176), v8 - 32, *(a1 + 216) - *(a1 + 224));
        if (!result)
        {
          v10 = 6;
          goto LABEL_7;
        }
      }

      return result;
    }

    if (v11 == 6)
    {
      result = (*(**(a1 + 176) + 16))(*(a1 + 176), v9, a3, &v38);
      v28 = v38;
      *a4 += v38;
      *(a1 + 224) += v28;
      if (!result)
      {
        v10 = 7;
        goto LABEL_7;
      }

      return result;
    }

    if (v11 != 7)
    {
      break;
    }

    v12 = *(a1 + 200);
    v13 = *(a1 + 224);
    if (v12 == -1)
    {
      v12 = *(a1 + 216);
    }

    if (v13 > v12)
    {
      return 4294966268;
    }

    if (v13 == v12)
    {
      *(a1 + 188) = 8;
    }

    else
    {
      if ((*(**(a1 + 176) + 40))(*(a1 + 176), v8 - 32))
      {
        v29 = 3;
      }

      else
      {
        v29 = 0;
      }

      *(a1 + 16) = 0xFFFFFFFFLL;
      *(a1 + 40) = -1;
      *(v8 - 33) = 0;
      *(v8 - 35) = 0;
      *(a1 + 176) = 0;
      *(a1 + 184) = 0;
      *(a1 + 188) = v29;
    }

    (*(*a2 + 23))(a2, v8 - 32);
    v9 = a2;
  }

  if (v11 != 8)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t webm::MasterParser::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 232) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 56);
  *(a2 + 16) = *(a1 + 72);
  *a2 = v2;
  return *(a1 + 232) & 1;
}

void webm::MasterParser::~MasterParser(webm::MasterParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t mkvmuxer::WriteEbmlHeader(mkvmuxer *this, unint64_t a2, char *__s, const char *a4)
{
  if (__s)
  {
    v7 = strlen(__s);
    if (v7 >= 0x7F)
    {
      if (v7 >= 0x3FFF)
      {
        if (v7 >= 0x1FFFFF)
        {
          if (v7 >= 0xFFFFFFF)
          {
            if (v7 >= 0x7FFFFFFFFLL)
            {
              if (v7 >= 0x3FFFFFFFFFFLL)
              {
                v8 = 7;
                if (v7 >= 0x1FFFFFFFFFFFFLL)
                {
                  v8 = 8;
                }
              }

              else
              {
                v8 = 6;
              }
            }

            else
            {
              v8 = 5;
            }
          }

          else
          {
            v8 = 4;
          }
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }

    v9 = v7 + v8 + 22;
  }

  else
  {
    v9 = 20;
  }

  v10 = 4;
  v11 = 5;
  v12 = 6;
  v13 = 7;
  v14 = 8;
  v15 = 9;
  v16 = 10;
  if (HIBYTE(a2))
  {
    v16 = 11;
  }

  if (HIWORD(a2))
  {
    v15 = v16;
  }

  if (a2 >> 40)
  {
    v14 = v15;
  }

  if (HIDWORD(a2))
  {
    v13 = v14;
  }

  if (a2 >> 24)
  {
    v12 = v13;
  }

  if (a2 >= 0x10000)
  {
    v11 = v12;
  }

  if (a2 >= 0x100)
  {
    v10 = v11;
  }

  if (!mkvmuxer::WriteEbmlMasterElement(this, 0x1A45DFA3uLL, v9 + v10) || !mkvmuxer::WriteEbmlElement(this, 0x4286uLL, 1uLL, 0) || !mkvmuxer::WriteEbmlElement(this, 0x42F7uLL, 1uLL, 0) || !mkvmuxer::WriteEbmlElement(this, 0x42F2uLL, 4uLL, 0) || !mkvmuxer::WriteEbmlElement(this, 0x42F3uLL, 8uLL, 0) || !mkvmuxer::WriteEbmlElement(this, 0x4282uLL, __s, v17) || !mkvmuxer::WriteEbmlElement(this, 0x4287uLL, a2, 0))
  {
    return 0;
  }

  return mkvmuxer::WriteEbmlElement(this, 0x4285uLL, 2uLL, 0);
}

void mkvmuxer::Frame::~Frame(mkvmuxer::Frame *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }
}

uint64_t mkvmuxer::Frame::CopyFrom(mkvmuxer::Frame *this, const mkvmuxer::Frame *a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x2743DA520](v4, 0x1000C8077774924);
  }

  *(this + 5) = 0;
  *(this + 7) = 0;
  v5 = *(a2 + 7);
  if (v5)
  {
    v6 = *(a2 + 5);
    if (v6)
    {
      result = operator new[](*(a2 + 7), MEMORY[0x277D826F0]);
      if (!result)
      {
        return result;
      }

      *(this + 5) = result;
      *(this + 7) = v5;
      memcpy(result, v6, v5);
    }
  }

  *this = 0;
  v8 = *(this + 1);
  if (v8)
  {
    MEMORY[0x2743DA520](v8, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  v9 = *(a2 + 2);
  if (v9)
  {
    v10 = *(a2 + 1);
    if (v10)
    {
      v11 = *a2;
      result = operator new[](*(a2 + 2), MEMORY[0x277D826F0]);
      if (!result)
      {
        return result;
      }

      *(this + 1) = result;
      *(this + 2) = v9;
      *this = v11;
      memcpy(result, v10, v9);
    }
  }

  *(this + 3) = *(a2 + 3);
  *(this + 32) = *(a2 + 32);
  *(this + 48) = *(a2 + 48);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = *(a2 + 5);
  *(this + 96) = *(a2 + 96);
  return 1;
}

uint64_t mkvmuxer::Cues::Write(mkvmuxer::Cues *this, mkvmuxer::IMkvWriter *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(this + 1);
  if (v4 >= 1)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v8 = *v5;
        if (!*v5)
        {
          return 0;
        }

        v9 = *(v8 + 16);
        if (v9 >= 0x100)
        {
          if (v9 >= 0x10000)
          {
            if (v9 >> 24)
            {
              if (HIDWORD(v9))
              {
                v13 = v9 >> 40;
                v14 = HIWORD(v9);
                if (HIBYTE(v9))
                {
                  v10 = 10;
                }

                else
                {
                  v10 = 9;
                }

                if (!v14)
                {
                  v10 = 8;
                }

                if (!v13)
                {
                  v10 = 7;
                }

                v11 = *(v8 + 8);
                if (v11 < 0x100)
                {
LABEL_10:
                  v12 = v10 + 3;
                  if (*(v8 + 32) == 1)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                v10 = 6;
                v11 = *(v8 + 8);
                if (v11 < 0x100)
                {
                  goto LABEL_10;
                }
              }
            }

            else
            {
              v10 = 5;
              v11 = *(v8 + 8);
              if (v11 < 0x100)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
            v10 = 4;
            v11 = *(v8 + 8);
            if (v11 < 0x100)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
          v10 = 3;
          v11 = *(v8 + 8);
          if (v11 < 0x100)
          {
            goto LABEL_10;
          }
        }

        if (v11 >= 0x10000)
        {
          if (v11 >> 24)
          {
            if (HIDWORD(v11))
            {
              v15 = v11 >> 40;
              v16 = HIWORD(v11);
              if (HIBYTE(v11))
              {
                v17 = 10;
              }

              else
              {
                v17 = 9;
              }

              if (!v16)
              {
                v17 = 8;
              }

              if (!v15)
              {
                v17 = 7;
              }

              v12 = v17 + v10;
              if (*(v8 + 32) != 1)
              {
                goto LABEL_63;
              }

LABEL_46:
              v18 = *(v8 + 24);
              if (v18 >= 2)
              {
                if (v18 >= 0x100)
                {
                  if (v18 >= 0x10000)
                  {
                    if (v18 >> 24)
                    {
                      if (HIDWORD(v18))
                      {
                        if (v18 >> 40)
                        {
                          v20 = HIWORD(v18);
                          if (HIBYTE(v18))
                          {
                            v19 = 11;
                          }

                          else
                          {
                            v19 = 10;
                          }

                          if (!v20)
                          {
                            v19 = 9;
                          }
                        }

                        else
                        {
                          v19 = 8;
                        }
                      }

                      else
                      {
                        v19 = 7;
                      }
                    }

                    else
                    {
                      v19 = 6;
                    }
                  }

                  else
                  {
                    v19 = 5;
                  }
                }

                else
                {
                  v19 = 4;
                }

                v12 += v19;
              }

              goto LABEL_63;
            }

            v12 = v10 + 6;
            if (*(v8 + 32) == 1)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v12 = v10 + 5;
            if (*(v8 + 32) == 1)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v12 = v10 + 4;
          if (*(v8 + 32) == 1)
          {
            goto LABEL_46;
          }
        }

LABEL_63:
        v21 = *v8;
        if (v21 < 0x100)
        {
          v7 = 3;
        }

        else if (v21 >= 0x10000)
        {
          if (v21 >> 24)
          {
            if (HIDWORD(v21))
            {
              if (v21 >> 40)
              {
                if (HIWORD(v21))
                {
                  if (HIBYTE(v21))
                  {
                    v7 = 10;
                  }

                  else
                  {
                    v7 = 9;
                  }
                }

                else
                {
                  v7 = 8;
                }
              }

              else
              {
                v7 = 7;
              }
            }

            else
            {
              v7 = 6;
            }
          }

          else
          {
            v7 = 5;
          }
        }

        else
        {
          v7 = 4;
        }

        v6 += v12 + v7 + 4;
        ++v5;
        if (!--v4)
        {
          goto LABEL_79;
        }
      }
    }

    return 0;
  }

  v6 = 0;
LABEL_79:
  result = mkvmuxer::WriteEbmlMasterElement(a2, 0x1C53BB6BuLL, v6);
  if (result)
  {
    v23 = (*(*a2 + 8))(a2);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = v23;
      if (*(this + 1) < 1)
      {
LABEL_162:
        v54 = (*(*a2 + 8))(a2);
        if ((v54 & 0x8000000000000000) == 0)
        {
          return v54 - v24 == v6;
        }
      }

      else
      {
        v25 = 0;
        while (1)
        {
          v26 = *(this + 1);
          if (v26)
          {
            v27 = *(v26 + 8 * v25);
            v28 = *(v27 + 8);
            if (!v28)
            {
              return 0;
            }
          }

          else
          {
            v27 = 0;
            v28 = MEMORY[8];
            if (!MEMORY[8])
            {
              return 0;
            }
          }

          v29 = *(v27 + 16);
          if (!v29)
          {
            break;
          }

          if (v29 >= 0x100)
          {
            if (v29 >= 0x10000)
            {
              if (v29 >> 24)
              {
                if (HIDWORD(v29))
                {
                  v31 = v29 >> 40;
                  v32 = HIWORD(v29);
                  if (HIBYTE(v29))
                  {
                    v30 = 10;
                  }

                  else
                  {
                    v30 = 9;
                  }

                  if (!v32)
                  {
                    v30 = 8;
                  }

                  if (!v31)
                  {
                    v30 = 7;
                  }
                }

                else
                {
                  v30 = 6;
                }
              }

              else
              {
                v30 = 5;
              }
            }

            else
            {
              v30 = 4;
            }
          }

          else
          {
            v30 = 3;
          }

          if (v28 >= 0x100)
          {
            if (v28 >= 0x10000)
            {
              if (v28 >> 24)
              {
                if (HIDWORD(v28))
                {
                  v34 = v28 >> 40;
                  v35 = HIWORD(v28);
                  if (HIBYTE(v28))
                  {
                    v33 = 10;
                  }

                  else
                  {
                    v33 = 9;
                  }

                  if (!v35)
                  {
                    v33 = 8;
                  }

                  if (!v34)
                  {
                    v33 = 7;
                  }
                }

                else
                {
                  v33 = 6;
                }
              }

              else
              {
                v33 = 5;
              }
            }

            else
            {
              v33 = 4;
            }
          }

          else
          {
            v33 = 3;
          }

          v36 = v33 + v30;
          if (*(v27 + 32) == 1)
          {
            v37 = *(v27 + 24);
            if (v37 >= 2)
            {
              if (v37 >= 0x100)
              {
                if (v37 >= 0x10000)
                {
                  if (v37 >> 24)
                  {
                    v39 = HIDWORD(v37);
                    v40 = v37 >> 40;
                    v41 = HIWORD(v37);
                    v42 = HIBYTE(v37) == 0;
                    v38 = 10;
                    if (!v42)
                    {
                      v38 = 11;
                    }

                    if (!v41)
                    {
                      v38 = 9;
                    }

                    if (!v40)
                    {
                      v38 = 8;
                    }

                    if (!v39)
                    {
                      v38 = 7;
                    }
                  }

                  else
                  {
                    v38 = 6;
                  }
                }

                else
                {
                  v38 = 5;
                }
              }

              else
              {
                v38 = 4;
              }

              v36 += v38;
            }
          }

          v43 = *v27;
          if (*v27 >= 0x100uLL)
          {
            if (v43 >= 0x10000)
            {
              v45 = v43 >> 24;
              v46 = HIDWORD(v43);
              v47 = v43 >> 40;
              v48 = HIWORD(v43);
              if (HIBYTE(v43))
              {
                v44 = 10;
              }

              else
              {
                v44 = 9;
              }

              if (!v48)
              {
                v44 = 8;
              }

              if (!v47)
              {
                v44 = 7;
              }

              if (!v46)
              {
                v44 = 6;
              }

              if (!v45)
              {
                v44 = 5;
              }
            }

            else
            {
              v44 = 4;
            }
          }

          else
          {
            v44 = 3;
          }

          v49 = v36 + 2 + v44;
          result = mkvmuxer::WriteEbmlMasterElement(a2, 0xBBuLL, v49);
          if (!result)
          {
            return result;
          }

          v50 = (*(*a2 + 8))(a2);
          if (v50 < 0)
          {
            return 0;
          }

          v51 = v50;
          result = mkvmuxer::WriteEbmlElement(a2, 0xB3uLL, *v27, 0);
          if (!result)
          {
            return result;
          }

          result = mkvmuxer::WriteEbmlMasterElement(a2, 0xB7uLL, v36);
          if (!result)
          {
            return result;
          }

          result = mkvmuxer::WriteEbmlElement(a2, 0xF7uLL, *(v27 + 8), 0);
          if (!result)
          {
            return result;
          }

          result = mkvmuxer::WriteEbmlElement(a2, 0xF1uLL, *(v27 + 16), 0);
          if (!result)
          {
            return result;
          }

          if (*(v27 + 32) == 1)
          {
            v52 = *(v27 + 24);
            if (v52 >= 2)
            {
              result = mkvmuxer::WriteEbmlElement(a2, 0x5378uLL, v52, 0);
              if (!result)
              {
                return result;
              }
            }
          }

          v53 = (*(*a2 + 8))(a2);
          result = 0;
          if (v53 < 0 || v53 - v51 != v49)
          {
            return result;
          }

          if (++v25 >= *(this + 1))
          {
            goto LABEL_162;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t mkvmuxer::ContentEncAESSettings::Write(mkvmuxer::ContentEncAESSettings *this, mkvmuxer::IMkvWriter *a2)
{
  v4 = *this;
  if (*this < 0x100uLL)
  {
    v5 = 4;
    result = mkvmuxer::WriteEbmlMasterElement(a2, 0x47E7uLL, 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v4 < 0x10000)
  {
    v5 = 5;
    result = mkvmuxer::WriteEbmlMasterElement(a2, 0x47E7uLL, 5uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (!(v4 >> 24))
  {
    v5 = 6;
    result = mkvmuxer::WriteEbmlMasterElement(a2, 0x47E7uLL, 6uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (!HIDWORD(v4))
  {
    v5 = 7;
    result = mkvmuxer::WriteEbmlMasterElement(a2, 0x47E7uLL, 7uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  v7 = v4 >> 40;
  v8 = HIWORD(v4);
  v13 = HIBYTE(v4) == 0;
  v9 = 10;
  if (!v13)
  {
    v9 = 11;
  }

  if (!v8)
  {
    v9 = 9;
  }

  if (v7)
  {
    v5 = v9;
  }

  else
  {
    v5 = 8;
  }

  result = mkvmuxer::WriteEbmlMasterElement(a2, 0x47E7uLL, v5);
  if (result)
  {
LABEL_21:
    v10 = (*(*a2 + 8))(a2);
    if (v10 < 0)
    {
      return 0;
    }

    else
    {
      v11 = v10;
      result = mkvmuxer::WriteEbmlElement(a2, 0x47E8uLL, *this, 0);
      if (result)
      {
        v12 = (*(*a2 + 8))(a2);
        return v12 >= 0 && v12 - v11 == v5;
      }
    }
  }

  return result;
}

unint64_t mkvmuxer::ContentEncoding::Size(mkvmuxer::ContentEncoding *this)
{
  v1 = *(this + 5);
  if (v1 >= 0x100)
  {
    if (v1 >= 0x10000)
    {
      if (v1 >> 24)
      {
        if (HIDWORD(v1))
        {
          if (v1 >> 40)
          {
            if (HIWORD(v1))
            {
              v3 = HIBYTE(v1) == 0;
              v2 = 13;
              if (!v3)
              {
                v2 = 14;
              }
            }

            else
            {
              v2 = 12;
            }
          }

          else
          {
            v2 = 11;
          }
        }

        else
        {
          v2 = 10;
        }
      }

      else
      {
        v2 = 9;
      }
    }

    else
    {
      v2 = 8;
    }
  }

  else
  {
    v2 = 7;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = v5 + 2;
    if (v5 >= 0x7F)
    {
      if (v5 >= 0x3FFF)
      {
        if (v5 >= 0x1FFFFF)
        {
          if (v5 >= 0xFFFFFFF)
          {
            if (v5 >= 0x7FFFFFFFFLL)
            {
              if (v5 >= 0x3FFFFFFFFFFLL)
              {
                v8 = v5 >= 0x1FFFFFFFFFFFFLL;
                v7 = 7;
                if (v8)
                {
                  v7 = 8;
                }
              }

              else
              {
                v7 = 6;
              }
            }

            else
            {
              v7 = 5;
            }
          }

          else
          {
            v7 = 4;
          }
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }

    v4 = v6 + v7;
  }

  v9 = *this;
  if (*this >= 0x100uLL)
  {
    if (v9 >= 0x10000)
    {
      if (v9 >> 24)
      {
        if (HIDWORD(v9))
        {
          if (v9 >> 40)
          {
            if (HIWORD(v9))
            {
              v3 = HIBYTE(v9) == 0;
              v10 = 10;
              if (!v3)
              {
                v10 = 11;
              }
            }

            else
            {
              v10 = 9;
            }
          }

          else
          {
            v10 = 8;
          }
        }

        else
        {
          v10 = 7;
        }
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v10 = 5;
    }
  }

  else
  {
    v10 = 4;
  }

  v11 = v2 + v4 + v10;
  if (v11)
  {
    if (v11 >= 0x7F)
    {
      if (v11 >= 0x3FFF)
      {
        if (v11 >= 0x1FFFFF)
        {
          if (v11 >= 0xFFFFFFF)
          {
            if (v11 >= 0x7FFFFFFFFLL)
            {
              if (v11 >= 0x3FFFFFFFFFFLL)
              {
                v12 = 9;
                if (v11 >= 0x1FFFFFFFFFFFFLL)
                {
                  v12 = 10;
                }
              }

              else
              {
                v12 = 8;
              }
            }

            else
            {
              v12 = 7;
            }
          }

          else
          {
            v12 = 6;
          }
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        v12 = 4;
      }
    }

    else
    {
      v12 = 3;
    }

    v11 += v12;
  }

  v13 = *(this + 4);
  if (v13 >= 0x100)
  {
    if (v13 >= 0x10000)
    {
      if (v13 >> 24)
      {
        if (HIDWORD(v13))
        {
          if (v13 >> 40)
          {
            if (HIWORD(v13))
            {
              v3 = HIBYTE(v13) == 0;
              v14 = 10;
              if (!v3)
              {
                v14 = 11;
              }
            }

            else
            {
              v14 = 9;
            }
          }

          else
          {
            v14 = 8;
          }
        }

        else
        {
          v14 = 7;
        }
      }

      else
      {
        v14 = 6;
      }
    }

    else
    {
      v14 = 5;
    }
  }

  else
  {
    v14 = 4;
  }

  v15 = v14 + v11;
  v16 = *(this + 3);
  if (v16 >= 0x100)
  {
    if (v16 >= 0x10000)
    {
      if (v16 >> 24)
      {
        if (HIDWORD(v16))
        {
          if (v16 >> 40)
          {
            if (HIWORD(v16))
            {
              v3 = HIBYTE(v16) == 0;
              v17 = 10;
              if (!v3)
              {
                v17 = 11;
              }
            }

            else
            {
              v17 = 9;
            }
          }

          else
          {
            v17 = 8;
          }
        }

        else
        {
          v17 = 7;
        }
      }

      else
      {
        v17 = 6;
      }
    }

    else
    {
      v17 = 5;
    }
  }

  else
  {
    v17 = 4;
  }

  v18 = v15 + v17;
  v19 = *(this + 2);
  if (v19 >= 0x100)
  {
    if (v19 >= 0x10000)
    {
      if (v19 >> 24)
      {
        if (HIDWORD(v19))
        {
          if (v19 >> 40)
          {
            if (HIWORD(v19))
            {
              v3 = HIBYTE(v19) == 0;
              v20 = 10;
              if (!v3)
              {
                v20 = 11;
              }
            }

            else
            {
              v20 = 9;
            }
          }

          else
          {
            v20 = 8;
          }
        }

        else
        {
          v20 = 7;
        }
      }

      else
      {
        v20 = 6;
      }
    }

    else
    {
      v20 = 5;
    }
  }

  else
  {
    v20 = 4;
  }

  v21 = v18 + v20;
  if (v21 < 0x7F)
  {
    return v21 + 3;
  }

  if (v21 < 0x3FFF)
  {
    return v21 + 4;
  }

  if (v21 < 0x1FFFFF)
  {
    return v21 + 5;
  }

  if (v21 < 0xFFFFFFF)
  {
    return v21 + 6;
  }

  if (v21 < 0x7FFFFFFFFLL)
  {
    return v21 + 7;
  }

  if (v21 < 0x3FFFFFFFFFFLL)
  {
    return v21 + 8;
  }

  v23 = 9;
  if (v21 >= 0x1FFFFFFFFFFFFLL)
  {
    v23 = 10;
  }

  return v23 + v21;
}

uint64_t mkvmuxer::ContentEncoding::Write(mkvmuxer::ContentEncoding *this, mkvmuxer::IMkvWriter *a2)
{
  v5 = (this + 40);
  v4 = *(this + 5);
  if (v4 >= 0x100)
  {
    if (v4 >= 0x10000)
    {
      if (v4 >> 24)
      {
        if (HIDWORD(v4))
        {
          if (v4 >> 40)
          {
            if (HIWORD(v4))
            {
              v31 = HIBYTE(v4) == 0;
              v6 = 13;
              if (!v31)
              {
                v6 = 14;
              }
            }

            else
            {
              v6 = 12;
            }
          }

          else
          {
            v6 = 11;
          }
        }

        else
        {
          v6 = 10;
        }
      }

      else
      {
        v6 = 9;
      }
    }

    else
    {
      v6 = 8;
    }
  }

  else
  {
    v6 = 7;
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *(this + 6);
    v9 = v8 + 2;
    if (v8 >= 0x7F)
    {
      if (v8 >= 0x3FFF)
      {
        if (v8 >= 0x1FFFFF)
        {
          if (v8 >= 0xFFFFFFF)
          {
            if (v8 >= 0x7FFFFFFFFLL)
            {
              if (v8 >= 0x3FFFFFFFFFFLL)
              {
                v11 = v8 >= 0x1FFFFFFFFFFFFLL;
                v10 = 7;
                if (v11)
                {
                  v10 = 8;
                }
              }

              else
              {
                v10 = 6;
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }

    v7 = v9 + v10;
  }

  v12 = *this;
  if (*this >= 0x100uLL)
  {
    if (v12 >= 0x10000)
    {
      if (v12 >> 24)
      {
        if (HIDWORD(v12))
        {
          if (v12 >> 40)
          {
            if (HIWORD(v12))
            {
              v31 = HIBYTE(v12) == 0;
              v13 = 10;
              if (!v31)
              {
                v13 = 11;
              }
            }

            else
            {
              v13 = 9;
            }
          }

          else
          {
            v13 = 8;
          }
        }

        else
        {
          v13 = 7;
        }
      }

      else
      {
        v13 = 6;
      }
    }

    else
    {
      v13 = 5;
    }
  }

  else
  {
    v13 = 4;
  }

  v14 = v6 + v7 + v13;
  if (v14)
  {
    if (v14 >= 0x7F)
    {
      if (v14 >= 0x3FFF)
      {
        if (v14 >= 0x1FFFFF)
        {
          if (v14 >= 0xFFFFFFF)
          {
            if (v14 >= 0x7FFFFFFFFLL)
            {
              if (v14 >= 0x3FFFFFFFFFFLL)
              {
                v15 = 9;
                if (v14 >= 0x1FFFFFFFFFFFFLL)
                {
                  v15 = 10;
                }
              }

              else
              {
                v15 = 8;
              }
            }

            else
            {
              v15 = 7;
            }
          }

          else
          {
            v15 = 6;
          }
        }

        else
        {
          v15 = 5;
        }
      }

      else
      {
        v15 = 4;
      }
    }

    else
    {
      v15 = 3;
    }

    v16 = v15 + v14;
    v17 = *(this + 4);
    if (v17 < 0x100)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v16 = 0;
    v17 = *(this + 4);
    if (v17 < 0x100)
    {
LABEL_75:
      v18 = 4;
      goto LABEL_76;
    }
  }

  if (v17 >= 0x10000)
  {
    if (v17 >> 24)
    {
      if (HIDWORD(v17))
      {
        if (v17 >> 40)
        {
          if (HIWORD(v17))
          {
            v31 = HIBYTE(v17) == 0;
            v18 = 10;
            if (!v31)
            {
              v18 = 11;
            }
          }

          else
          {
            v18 = 9;
          }
        }

        else
        {
          v18 = 8;
        }
      }

      else
      {
        v18 = 7;
      }
    }

    else
    {
      v18 = 6;
    }
  }

  else
  {
    v18 = 5;
  }

LABEL_76:
  v19 = v18 + v16;
  v20 = *(this + 3);
  if (v20 >= 0x100)
  {
    if (v20 >= 0x10000)
    {
      if (v20 >> 24)
      {
        if (HIDWORD(v20))
        {
          if (v20 >> 40)
          {
            if (HIWORD(v20))
            {
              v31 = HIBYTE(v20) == 0;
              v21 = 10;
              if (!v31)
              {
                v21 = 11;
              }
            }

            else
            {
              v21 = 9;
            }
          }

          else
          {
            v21 = 8;
          }
        }

        else
        {
          v21 = 7;
        }
      }

      else
      {
        v21 = 6;
      }
    }

    else
    {
      v21 = 5;
    }
  }

  else
  {
    v21 = 4;
  }

  v22 = v19 + v21;
  v23 = *(this + 2);
  if (v23 >= 0x100)
  {
    if (v23 >= 0x10000)
    {
      if (v23 >> 24)
      {
        if (HIDWORD(v23))
        {
          if (v23 >> 40)
          {
            if (HIWORD(v23))
            {
              v31 = HIBYTE(v23) == 0;
              v24 = 10;
              if (!v31)
              {
                v24 = 11;
              }
            }

            else
            {
              v24 = 9;
            }
          }

          else
          {
            v24 = 8;
          }
        }

        else
        {
          v24 = 7;
        }
      }

      else
      {
        v24 = 6;
      }
    }

    else
    {
      v24 = 5;
    }
  }

  else
  {
    v24 = 4;
  }

  v25 = v22 + v24;
  if (v22 + v24 >= 0x7F)
  {
    if (v25 >= 0x3FFF)
    {
      if (v25 >= 0x1FFFFF)
      {
        if (v25 >= 0xFFFFFFF)
        {
          if (v25 >= 0x7FFFFFFFFLL)
          {
            if (v25 >= 0x3FFFFFFFFFFLL)
            {
              if (v25 < 0x1FFFFFFFFFFFFLL)
              {
                v26 = 9;
              }

              else
              {
                v26 = 10;
              }
            }

            else
            {
              v26 = 8;
            }
          }

          else
          {
            v26 = 7;
          }
        }

        else
        {
          v26 = 6;
        }
      }

      else
      {
        v26 = 5;
      }
    }

    else
    {
      v26 = 4;
    }
  }

  else
  {
    v26 = 3;
  }

  v27 = (*(*a2 + 8))(a2);
  if (v27 < 0)
  {
    return 0;
  }

  v28 = v27;
  result = mkvmuxer::WriteEbmlMasterElement(a2, 0x6240uLL, v25);
  if (result)
  {
    result = mkvmuxer::WriteEbmlElement(a2, 0x5031uLL, *(this + 2), 0);
    if (result)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x5032uLL, *(this + 3), 0);
      if (result)
      {
        result = mkvmuxer::WriteEbmlElement(a2, 0x5033uLL, *(this + 4), 0);
        if (result)
        {
          result = mkvmuxer::WriteEbmlMasterElement(a2, 0x5035uLL, v14);
          if (result)
          {
            result = mkvmuxer::WriteEbmlElement(a2, 0x47E1uLL, *this, 0);
            if (result)
            {
              result = mkvmuxer::WriteEbmlElement(a2, 0x47E2uLL, *(this + 1), *(this + 6));
              if (result)
              {
                result = mkvmuxer::ContentEncAESSettings::Write(v5, a2);
                if (result)
                {
                  v30 = (*(*a2 + 8))(a2);
                  return v30 >= 0 && v30 - v28 == v26 + v25;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void mkvmuxer::Track::~Track(mkvmuxer::Track *this)
{
  *this = &unk_2882A8330;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x2743DA520](v4, 0x1000C8077774924);
  }

  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x2743DA520](v5, 0x1000C8077774924);
  }

  if (*(this + 13))
  {
    v6 = *(this + 28);
    if (!v6)
    {
      goto LABEL_18;
    }

    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(this + 13) + 8 * i);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          MEMORY[0x2743DA520](v9, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v8, 0x1010C40F262504ALL);
        v6 = *(this + 28);
      }
    }

    if (*(this + 13))
    {
LABEL_18:
      MEMORY[0x2743DA520]();
    }
  }
}

{
  mkvmuxer::Track::~Track(this);

  JUMPOUT(0x2743DA540);
}

uint64_t mkvmuxer::Track::AddContentEncoding(mkvmuxer::Track *this)
{
  v2 = *(this + 28);
  result = operator new[](8 * (v2 + 1), MEMORY[0x277D826F0]);
  if (result)
  {
    v4 = result;
    v5 = operator new(0x38uLL, MEMORY[0x277D826F0]);
    if (v5)
    {
      v6 = v5;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 5;
      *(v5 + 24) = vdupq_n_s64(1uLL);
      *(v5 + 40) = xmmword_273B91FB0;
      v7 = *(this + 13);
      if (v2)
      {
        v8 = 0;
        if (v2 < 4)
        {
          goto LABEL_9;
        }

        if ((v4 - v7) <= 0x1F)
        {
          goto LABEL_9;
        }

        v8 = v2 & 0xFFFFFFFC;
        v9 = (v7 + 16);
        v10 = (v4 + 16);
        v11 = v8;
        do
        {
          v12 = *v9;
          *(v10 - 1) = *(v9 - 1);
          *v10 = v12;
          v9 += 2;
          v10 += 2;
          v11 -= 4;
        }

        while (v11);
        if (v8 != v2)
        {
LABEL_9:
          v13 = v2 - v8;
          v14 = 8 * v8;
          v15 = (v4 + 8 * v8);
          v16 = (v7 + v14);
          do
          {
            v17 = *v16++;
            *v15++ = v17;
            --v13;
          }

          while (v13);
        }
      }

      else if (!v7)
      {
        v18 = 0;
        goto LABEL_16;
      }

      MEMORY[0x2743DA520]();
      v18 = *(this + 28);
LABEL_16:
      *(this + 13) = v4;
      *(v4 + 8 * v18) = v6;
      result = 1;
      *(this + 28) = v2 + 1;
      return result;
    }

    MEMORY[0x2743DA520](v4, 0x20C8093837F09);
    return 0;
  }

  return result;
}

uint64_t mkvmuxer::Track::PayloadSize(mkvmuxer::Track *this)
{
  v2 = *(this + 6);
  if (v2 >= 0x100)
  {
    if (v2 >= 0x10000)
    {
      if (v2 >> 24)
      {
        if (HIDWORD(v2))
        {
          if (v2 >> 40)
          {
            if (HIWORD(v2))
            {
              v4 = HIBYTE(v2) == 0;
              v3 = 9;
              if (!v4)
              {
                v3 = 10;
              }
            }

            else
            {
              v3 = 8;
            }
          }

          else
          {
            v3 = 7;
          }
        }

        else
        {
          v3 = 6;
        }
      }

      else
      {
        v3 = 5;
      }
    }

    else
    {
      v3 = 4;
    }
  }

  else
  {
    v3 = 3;
  }

  v5 = *(this + 8);
  if (v5 >= 0x100)
  {
    if (v5 >= 0x10000)
    {
      if (v5 >> 24)
      {
        if (HIDWORD(v5))
        {
          if (v5 >> 40)
          {
            if (HIWORD(v5))
            {
              v4 = HIBYTE(v5) == 0;
              v6 = 10;
              if (!v4)
              {
                v6 = 11;
              }
            }

            else
            {
              v6 = 9;
            }
          }

          else
          {
            v6 = 8;
          }
        }

        else
        {
          v6 = 7;
        }
      }

      else
      {
        v6 = 6;
      }
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 4;
  }

  v7 = v6 + v3;
  v8 = *(this + 7);
  if (v8 >= 0x100)
  {
    if (v8 >= 0x10000)
    {
      if (v8 >> 24)
      {
        if (HIDWORD(v8))
        {
          if (v8 >> 40)
          {
            if (HIWORD(v8))
            {
              v4 = HIBYTE(v8) == 0;
              v9 = 9;
              if (!v4)
              {
                v9 = 10;
              }
            }

            else
            {
              v9 = 8;
            }
          }

          else
          {
            v9 = 7;
          }
        }

        else
        {
          v9 = 6;
        }
      }

      else
      {
        v9 = 5;
      }
    }

    else
    {
      v9 = 4;
    }
  }

  else
  {
    v9 = 3;
  }

  v10 = v7 + v9;
  v11 = *(this + 1);
  if (v11)
  {
    v12 = strlen(v11);
    if (v12 >= 0x7F)
    {
      if (v12 >= 0x3FFF)
      {
        if (v12 >= 0x1FFFFF)
        {
          if (v12 >= 0xFFFFFFF)
          {
            if (v12 >= 0x7FFFFFFFFLL)
            {
              if (v12 >= 0x3FFFFFFFFFFLL)
              {
                v13 = 7;
                if (v12 >= 0x1FFFFFFFFFFFFLL)
                {
                  v13 = 8;
                }
              }

              else
              {
                v13 = 6;
              }
            }

            else
            {
              v13 = 5;
            }
          }

          else
          {
            v13 = 4;
          }
        }

        else
        {
          v13 = 3;
        }
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 1;
    }

    v10 += v12 + v13 + 1;
  }

  if (*(this + 2))
  {
    v14 = *(this + 12);
    if (v14 >= 0x7F)
    {
      if (v14 >= 0x3FFF)
      {
        if (v14 >= 0x1FFFFF)
        {
          if (v14 >= 0xFFFFFFF)
          {
            if (v14 >= 0x7FFFFFFFFLL)
            {
              if (v14 >= 0x3FFFFFFFFFFLL)
              {
                v15 = 7;
                if (v14 >= 0x1FFFFFFFFFFFFLL)
                {
                  v15 = 8;
                }
              }

              else
              {
                v15 = 6;
              }
            }

            else
            {
              v15 = 5;
            }
          }

          else
          {
            v15 = 4;
          }
        }

        else
        {
          v15 = 3;
        }
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 1;
    }

    v10 += v14 + v15 + 2;
  }

  v16 = *(this + 3);
  if (v16)
  {
    v17 = strlen(v16);
    if (v17 >= 0x7F)
    {
      if (v17 >= 0x3FFF)
      {
        if (v17 >= 0x1FFFFF)
        {
          if (v17 >= 0xFFFFFFF)
          {
            if (v17 >= 0x7FFFFFFFFLL)
            {
              if (v17 >= 0x3FFFFFFFFFFLL)
              {
                v18 = 7;
                if (v17 >= 0x1FFFFFFFFFFFFLL)
                {
                  v18 = 8;
                }
              }

              else
              {
                v18 = 6;
              }
            }

            else
            {
              v18 = 5;
            }
          }

          else
          {
            v18 = 4;
          }
        }

        else
        {
          v18 = 3;
        }
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      v18 = 1;
    }

    v10 += v17 + v18 + 3;
  }

  v19 = *(this + 5);
  if (v19)
  {
    v20 = strlen(v19);
    if (v20 >= 0x7F)
    {
      if (v20 >= 0x3FFF)
      {
        if (v20 >= 0x1FFFFF)
        {
          if (v20 >= 0xFFFFFFF)
          {
            if (v20 >= 0x7FFFFFFFFLL)
            {
              if (v20 >= 0x3FFFFFFFFFFLL)
              {
                v21 = 7;
                if (v20 >= 0x1FFFFFFFFFFFFLL)
                {
                  v21 = 8;
                }
              }

              else
              {
                v21 = 6;
              }
            }

            else
            {
              v21 = 5;
            }
          }

          else
          {
            v21 = 4;
          }
        }

        else
        {
          v21 = 3;
        }
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 1;
    }

    v10 += v20 + v21 + 2;
  }

  v22 = *(this + 4);
  if (v22)
  {
    if (v22 >= 0x100)
    {
      if (v22 >= 0x10000)
      {
        if (v22 >> 24)
        {
          if (HIDWORD(v22))
          {
            if (v22 >> 40)
            {
              if (HIWORD(v22))
              {
                v4 = HIBYTE(v22) == 0;
                v23 = 10;
                if (!v4)
                {
                  v23 = 11;
                }
              }

              else
              {
                v23 = 9;
              }
            }

            else
            {
              v23 = 8;
            }
          }

          else
          {
            v23 = 7;
          }
        }

        else
        {
          v23 = 6;
        }
      }

      else
      {
        v23 = 5;
      }
    }

    else
    {
      v23 = 4;
    }

    v10 += v23;
  }

  v24 = *(this + 9);
  if (v24)
  {
    if (v24 >= 0x100)
    {
      if (v24 >= 0x10000)
      {
        if (v24 >> 24)
        {
          if (HIDWORD(v24))
          {
            if (v24 >> 40)
            {
              if (HIWORD(v24))
              {
                v4 = HIBYTE(v24) == 0;
                v25 = 10;
                if (!v4)
                {
                  v25 = 11;
                }
              }

              else
              {
                v25 = 9;
              }
            }

            else
            {
              v25 = 8;
            }
          }

          else
          {
            v25 = 7;
          }
        }

        else
        {
          v25 = 6;
        }
      }

      else
      {
        v25 = 5;
      }
    }

    else
    {
      v25 = 4;
    }

    v10 += v25;
  }

  v26 = *(this + 10);
  if (v26)
  {
    if (v26 >= 0x100)
    {
      if (v26 >= 0x10000)
      {
        if (v26 >> 24)
        {
          if (HIDWORD(v26))
          {
            if (v26 >> 40)
            {
              if (HIWORD(v26))
              {
                v4 = HIBYTE(v26) == 0;
                v27 = 10;
                if (!v4)
                {
                  v27 = 11;
                }
              }

              else
              {
                v27 = 9;
              }
            }

            else
            {
              v27 = 8;
            }
          }

          else
          {
            v27 = 7;
          }
        }

        else
        {
          v27 = 6;
        }
      }

      else
      {
        v27 = 5;
      }
    }

    else
    {
      v27 = 4;
    }

    v10 += v27;
  }

  v28 = *(this + 11);
  if (v28)
  {
    if (v28 >= 0x100)
    {
      if (v28 >= 0x10000)
      {
        if (v28 >> 24)
        {
          if (HIDWORD(v28))
          {
            if (v28 >> 40)
            {
              if (HIWORD(v28))
              {
                v4 = HIBYTE(v28) == 0;
                v29 = 11;
                if (!v4)
                {
                  v29 = 12;
                }
              }

              else
              {
                v29 = 10;
              }
            }

            else
            {
              v29 = 9;
            }
          }

          else
          {
            v29 = 8;
          }
        }

        else
        {
          v29 = 7;
        }
      }

      else
      {
        v29 = 6;
      }
    }

    else
    {
      v29 = 5;
    }

    v10 += v29;
  }

  v30 = *(this + 28);
  if (v30)
  {
    v31 = 0;
    v32 = *(this + 13);
    do
    {
      v33 = *v32++;
      v31 += mkvmuxer::ContentEncoding::Size(v33);
      --v30;
    }

    while (v30);
    if (v31 >= 0x7F)
    {
      v34 = 4;
      v35 = 5;
      v36 = 6;
      v37 = 7;
      v38 = 8;
      v39 = 9;
      if (v31 >= 0x1FFFFFFFFFFFFLL)
      {
        v39 = 10;
      }

      if (v31 >= 0x3FFFFFFFFFFLL)
      {
        v38 = v39;
      }

      if (v31 >= 0x7FFFFFFFFLL)
      {
        v37 = v38;
      }

      if (v31 >= 0xFFFFFFF)
      {
        v36 = v37;
      }

      if (v31 >= 0x1FFFFF)
      {
        v35 = v36;
      }

      if (v31 >= 0x3FFF)
      {
        v34 = v35;
      }
    }

    else
    {
      v34 = 3;
    }

    v10 += v31 + v34;
  }

  return v10;
}

unint64_t mkvmuxer::Track::Size(mkvmuxer::Track *this)
{
  v1 = (*(*this + 24))(this);
  if (v1 < 0x7F)
  {
    return v1 + 2;
  }

  v3 = 3;
  v4 = 4;
  v5 = 5;
  v6 = 6;
  v7 = 7;
  v8 = 8;
  if (v1 >= 0x1FFFFFFFFFFFFLL)
  {
    v8 = 9;
  }

  if (v1 >= 0x3FFFFFFFFFFLL)
  {
    v7 = v8;
  }

  if (v1 >= 0x7FFFFFFFFLL)
  {
    v6 = v7;
  }

  if (v1 >= 0xFFFFFFF)
  {
    v5 = v6;
  }

  if (v1 >= 0x1FFFFF)
  {
    v4 = v5;
  }

  if (v1 >= 0x3FFF)
  {
    v3 = v4;
  }

  return v3 + v1;
}

uint64_t mkvmuxer::Track::Write(mkvmuxer::Track *this, mkvmuxer::IMkvWriter *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(this + 7))
  {
    return 0;
  }

  result = *(this + 1);
  if (!result)
  {
    return result;
  }

  if (!strcmp(result, "V_AV1") && !*(this + 2))
  {
    return 0;
  }

  v5 = (*(*this + 24))(this);
  result = mkvmuxer::WriteEbmlMasterElement(a2, 0xAEuLL, v5);
  if (!result)
  {
    return result;
  }

  v6 = *(this + 6);
  if (v6 >= 0x100)
  {
    if (v6 >= 0x10000)
    {
      if (v6 >> 24)
      {
        if (HIDWORD(v6))
        {
          if (v6 >> 40)
          {
            if (HIWORD(v6))
            {
              v8 = HIBYTE(v6) == 0;
              v7 = 9;
              if (!v8)
              {
                v7 = 10;
              }
            }

            else
            {
              v7 = 8;
            }
          }

          else
          {
            v7 = 7;
          }
        }

        else
        {
          v7 = 6;
        }
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 3;
  }

  v9 = *(this + 8);
  if (v9 >= 0x100)
  {
    if (v9 >= 0x10000)
    {
      if (v9 >> 24)
      {
        if (HIDWORD(v9))
        {
          if (v9 >> 40)
          {
            if (HIWORD(v9))
            {
              v8 = HIBYTE(v9) == 0;
              v10 = 10;
              if (!v8)
              {
                v10 = 11;
              }
            }

            else
            {
              v10 = 9;
            }
          }

          else
          {
            v10 = 8;
          }
        }

        else
        {
          v10 = 7;
        }
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v10 = 5;
    }
  }

  else
  {
    v10 = 4;
  }

  v11 = v10 + v7;
  v12 = *(this + 7);
  if (v12 >= 0x100)
  {
    if (v12 >= 0x10000)
    {
      if (v12 >> 24)
      {
        if (HIDWORD(v12))
        {
          if (v12 >> 40)
          {
            if (HIWORD(v12))
            {
              v8 = HIBYTE(v12) == 0;
              v13 = 9;
              if (!v8)
              {
                v13 = 10;
              }
            }

            else
            {
              v13 = 8;
            }
          }

          else
          {
            v13 = 7;
          }
        }

        else
        {
          v13 = 6;
        }
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      v13 = 4;
    }
  }

  else
  {
    v13 = 3;
  }

  v14 = v11 + v13;
  v15 = *(this + 1);
  if (v15)
  {
    v16 = strlen(v15);
    if (v16 >= 0x7F)
    {
      if (v16 >= 0x3FFF)
      {
        if (v16 >= 0x1FFFFF)
        {
          if (v16 >= 0xFFFFFFF)
          {
            if (v16 >= 0x7FFFFFFFFLL)
            {
              if (v16 >= 0x3FFFFFFFFFFLL)
              {
                v17 = 7;
                if (v16 >= 0x1FFFFFFFFFFFFLL)
                {
                  v17 = 8;
                }
              }

              else
              {
                v17 = 6;
              }
            }

            else
            {
              v17 = 5;
            }
          }

          else
          {
            v17 = 4;
          }
        }

        else
        {
          v17 = 3;
        }
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 1;
    }

    v14 += v16 + v17 + 1;
  }

  if (*(this + 2))
  {
    v18 = *(this + 12);
    if (v18 >= 0x7F)
    {
      if (v18 >= 0x3FFF)
      {
        if (v18 >= 0x1FFFFF)
        {
          if (v18 >= 0xFFFFFFF)
          {
            if (v18 >= 0x7FFFFFFFFLL)
            {
              if (v18 >= 0x3FFFFFFFFFFLL)
              {
                v19 = 7;
                if (v18 >= 0x1FFFFFFFFFFFFLL)
                {
                  v19 = 8;
                }
              }

              else
              {
                v19 = 6;
              }
            }

            else
            {
              v19 = 5;
            }
          }

          else
          {
            v19 = 4;
          }
        }

        else
        {
          v19 = 3;
        }
      }

      else
      {
        v19 = 2;
      }
    }

    else
    {
      v19 = 1;
    }

    v14 += v18 + v19 + 2;
  }

  v20 = *(this + 3);
  if (v20)
  {
    v21 = strlen(v20);
    if (v21 >= 0x7F)
    {
      if (v21 >= 0x3FFF)
      {
        if (v21 >= 0x1FFFFF)
        {
          if (v21 >= 0xFFFFFFF)
          {
            if (v21 >= 0x7FFFFFFFFLL)
            {
              if (v21 >= 0x3FFFFFFFFFFLL)
              {
                v22 = 7;
                if (v21 >= 0x1FFFFFFFFFFFFLL)
                {
                  v22 = 8;
                }
              }

              else
              {
                v22 = 6;
              }
            }

            else
            {
              v22 = 5;
            }
          }

          else
          {
            v22 = 4;
          }
        }

        else
        {
          v22 = 3;
        }
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      v22 = 1;
    }

    v14 += v21 + v22 + 3;
  }

  v23 = *(this + 5);
  if (v23)
  {
    v24 = strlen(v23);
    if (v24 >= 0x7F)
    {
      if (v24 >= 0x3FFF)
      {
        if (v24 >= 0x1FFFFF)
        {
          if (v24 >= 0xFFFFFFF)
          {
            if (v24 >= 0x7FFFFFFFFLL)
            {
              if (v24 >= 0x3FFFFFFFFFFLL)
              {
                v25 = 7;
                if (v24 >= 0x1FFFFFFFFFFFFLL)
                {
                  v25 = 8;
                }
              }

              else
              {
                v25 = 6;
              }
            }

            else
            {
              v25 = 5;
            }
          }

          else
          {
            v25 = 4;
          }
        }

        else
        {
          v25 = 3;
        }
      }

      else
      {
        v25 = 2;
      }
    }

    else
    {
      v25 = 1;
    }

    v14 += v24 + v25 + 2;
  }

  v26 = *(this + 4);
  if (v26)
  {
    if (v26 >= 0x100)
    {
      if (v26 >= 0x10000)
      {
        if (v26 >> 24)
        {
          if (HIDWORD(v26))
          {
            if (v26 >> 40)
            {
              if (HIWORD(v26))
              {
                v8 = HIBYTE(v26) == 0;
                v27 = 10;
                if (!v8)
                {
                  v27 = 11;
                }
              }

              else
              {
                v27 = 9;
              }
            }

            else
            {
              v27 = 8;
            }
          }

          else
          {
            v27 = 7;
          }
        }

        else
        {
          v27 = 6;
        }
      }

      else
      {
        v27 = 5;
      }
    }

    else
    {
      v27 = 4;
    }

    v14 += v27;
  }

  v28 = *(this + 9);
  if (v28)
  {
    if (v28 >= 0x100)
    {
      if (v28 >= 0x10000)
      {
        if (v28 >> 24)
        {
          if (HIDWORD(v28))
          {
            if (v28 >> 40)
            {
              if (HIWORD(v28))
              {
                v8 = HIBYTE(v28) == 0;
                v29 = 10;
                if (!v8)
                {
                  v29 = 11;
                }
              }

              else
              {
                v29 = 9;
              }
            }

            else
            {
              v29 = 8;
            }
          }

          else
          {
            v29 = 7;
          }
        }

        else
        {
          v29 = 6;
        }
      }

      else
      {
        v29 = 5;
      }
    }

    else
    {
      v29 = 4;
    }

    v14 += v29;
  }

  v30 = *(this + 10);
  if (v30)
  {
    if (v30 >= 0x100)
    {
      if (v30 >= 0x10000)
      {
        if (v30 >> 24)
        {
          if (HIDWORD(v30))
          {
            if (v30 >> 40)
            {
              if (HIWORD(v30))
              {
                v8 = HIBYTE(v30) == 0;
                v31 = 10;
                if (!v8)
                {
                  v31 = 11;
                }
              }

              else
              {
                v31 = 9;
              }
            }

            else
            {
              v31 = 8;
            }
          }

          else
          {
            v31 = 7;
          }
        }

        else
        {
          v31 = 6;
        }
      }

      else
      {
        v31 = 5;
      }
    }

    else
    {
      v31 = 4;
    }

    v14 += v31;
  }

  v32 = *(this + 11);
  if (v32)
  {
    if (v32 >= 0x100)
    {
      if (v32 >= 0x10000)
      {
        if (v32 >> 24)
        {
          if (HIDWORD(v32))
          {
            if (v32 >> 40)
            {
              if (HIWORD(v32))
              {
                v8 = HIBYTE(v32) == 0;
                v33 = 11;
                if (!v8)
                {
                  v33 = 12;
                }
              }

              else
              {
                v33 = 10;
              }
            }

            else
            {
              v33 = 9;
            }
          }

          else
          {
            v33 = 8;
          }
        }

        else
        {
          v33 = 7;
        }
      }

      else
      {
        v33 = 6;
      }
    }

    else
    {
      v33 = 5;
    }

    v14 += v33;
  }

  v34 = (*(*a2 + 8))(a2);
  if (v34 < 0)
  {
    return 0;
  }

  v35 = v34;
  result = mkvmuxer::WriteEbmlElement(a2, 0xD7uLL, *(this + 6), 0);
  if (result)
  {
    result = mkvmuxer::WriteEbmlElement(a2, 0x73C5uLL, *(this + 8), 0);
    if (result)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x83uLL, *(this + 7), 0);
      if (result)
      {
        v37 = *(this + 4);
        if (!v37 || (result = mkvmuxer::WriteEbmlElement(a2, 0x55EEuLL, v37, 0), result))
        {
          v38 = *(this + 9);
          if (!v38 || (result = mkvmuxer::WriteEbmlElement(a2, 0x56AAuLL, v38, 0), result))
          {
            v39 = *(this + 10);
            if (!v39 || (result = mkvmuxer::WriteEbmlElement(a2, 0x56BBuLL, v39, 0), result))
            {
              v40 = *(this + 11);
              if (!v40 || (result = mkvmuxer::WriteEbmlElement(a2, 0x23E383uLL, v40, 0), result))
              {
                v41 = *(this + 1);
                if (!v41 || (result = mkvmuxer::WriteEbmlElement(a2, 0x86uLL, v41, v36), result))
                {
                  v42 = *(this + 2);
                  if (!v42 || (result = mkvmuxer::WriteEbmlElement(a2, 0x63A2uLL, v42, *(this + 12)), result))
                  {
                    v43 = *(this + 3);
                    if (!v43 || (result = mkvmuxer::WriteEbmlElement(a2, 0x22B59CuLL, v43, v36), result))
                    {
                      v44 = *(this + 5);
                      if (!v44 || (result = mkvmuxer::WriteEbmlElement(a2, 0x536EuLL, v44, v36), result))
                      {
                        v45 = (*(*a2 + 8))(a2);
                        result = 0;
                        if ((v45 & 0x8000000000000000) == 0 && v45 - v35 == v14)
                        {
                          v46 = *(this + 28);
                          if (!v46)
                          {
                            return (*(*a2 + 8))(a2) >= 0;
                          }

                          v47 = 0;
                          v48 = *(this + 13);
                          do
                          {
                            v49 = *v48++;
                            v47 += mkvmuxer::ContentEncoding::Size(v49);
                            --v46;
                          }

                          while (v46);
                          result = mkvmuxer::WriteEbmlMasterElement(a2, 0x6D80uLL, v47);
                          if (result)
                          {
                            if (*(this + 28))
                            {
                              v50 = 0;
                              while ((mkvmuxer::ContentEncoding::Write(*(*(this + 13) + 8 * v50), a2) & 1) != 0)
                              {
                                if (++v50 >= *(this + 28))
                                {
                                  return (*(*a2 + 8))(a2) >= 0;
                                }
                              }

                              return 0;
                            }

                            return (*(*a2 + 8))(a2) >= 0;
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

  return result;
}

uint64_t mkvmuxer::Track::SetCodecPrivate(mkvmuxer::Track *this, const unsigned __int8 *a2, size_t __sz)
{
  result = 0;
  if (a2 && __sz)
  {
    v7 = *(this + 2);
    if (v7)
    {
      MEMORY[0x2743DA520](v7, 0x1000C8077774924);
    }

    result = operator new[](__sz, MEMORY[0x277D826F0]);
    *(this + 2) = result;
    if (result)
    {
      memcpy(result, a2, __sz);
      *(this + 12) = __sz;
      return 1;
    }
  }

  return result;
}

char *mkvmuxer::Track::set_codec_id(char *this, const char *__s)
{
  if (__s)
  {
    v3 = this;
    v4 = *(this + 1);
    if (v4)
    {
      MEMORY[0x2743DA520](v4, 0x1000C8077774924);
    }

    v5 = strlen(__s);
    this = operator new[](v5 + 1, MEMORY[0x277D826F0]);
    *(v3 + 1) = this;
    if (this)
    {

      return strcpy(this, __s);
    }
  }

  return this;
}

uint64_t mkvmuxer::MasteringMetadata::Write(mkvmuxer::MasteringMetadata *this, mkvmuxer::IMkvWriter *a2)
{
  v2 = 7;
  if (*this == 3.4028e38)
  {
    v2 = 0;
  }

  if (*(this + 1) != 3.4028e38)
  {
    v2 += 7;
  }

  if (*(this + 1))
  {
    v2 += 14;
  }

  if (*(this + 2))
  {
    v2 += 14;
  }

  if (*(this + 3))
  {
    v2 += 14;
  }

  if (*(this + 4))
  {
    v3 = v2 + 14;
  }

  else
  {
    v3 = v2;
  }

  if (!v3)
  {
    return 1;
  }

  result = mkvmuxer::WriteEbmlMasterElement(a2, 0x55D0uLL, v3);
  if (result)
  {
    if (*this == 3.4028e38 || (result = mkvmuxer::WriteEbmlElement(a2, 0x55D9uLL, *this), result))
    {
      v7 = *(this + 1);
      if (v7 == 3.4028e38 || (result = mkvmuxer::WriteEbmlElement(a2, 0x55DAuLL, v7), result))
      {
        v8 = *(this + 1);
        if (!v8)
        {
          goto LABEL_37;
        }

        v9 = *v8;
        if (*v8 < 0.0 || v9 > 1.0)
        {
          return 0;
        }

        v11 = v8[1];
        if (v11 < 0.0 || v11 > 1.0)
        {
          return 0;
        }

        result = mkvmuxer::WriteEbmlElement(a2, 0x55D1uLL, v9);
        if (result)
        {
          result = mkvmuxer::WriteEbmlElement(a2, 0x55D2uLL, v8[1]);
          if (result)
          {
LABEL_37:
            v13 = *(this + 2);
            if (!v13)
            {
              goto LABEL_85;
            }

            v14 = *v13;
            if (*v13 < 0.0 || v14 > 1.0)
            {
              return 0;
            }

            v16 = v13[1];
            if (v16 < 0.0 || v16 > 1.0)
            {
              return 0;
            }

            result = mkvmuxer::WriteEbmlElement(a2, 0x55D3uLL, v14);
            if (result)
            {
              result = mkvmuxer::WriteEbmlElement(a2, 0x55D4uLL, v13[1]);
              if (result)
              {
LABEL_85:
                v18 = *(this + 3);
                if (!v18)
                {
                  goto LABEL_67;
                }

                v19 = *v18;
                if (*v18 < 0.0 || v19 > 1.0)
                {
                  return 0;
                }

                v21 = v18[1];
                if (v21 < 0.0 || v21 > 1.0)
                {
                  return 0;
                }

                result = mkvmuxer::WriteEbmlElement(a2, 0x55D5uLL, v19);
                if (result)
                {
                  result = mkvmuxer::WriteEbmlElement(a2, 0x55D6uLL, v18[1]);
                  if (result)
                  {
LABEL_67:
                    v23 = *(this + 4);
                    if (!v23)
                    {
                      return 1;
                    }

                    v24 = *v23;
                    if (*v23 < 0.0 || v24 > 1.0)
                    {
                      return 0;
                    }

                    v26 = v23[1];
                    if (v26 < 0.0 || v26 > 1.0)
                    {
                      return 0;
                    }

                    result = mkvmuxer::WriteEbmlElement(a2, 0x55D7uLL, v24);
                    if (result)
                    {
                      result = mkvmuxer::WriteEbmlElement(a2, 0x55D8uLL, v23[1]);
                      if (result)
                      {
                        return 1;
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

  return result;
}

uint64_t mkvmuxer::Colour::PayloadSize(mkvmuxer::Colour *this)
{
  v2 = *this;
  if (*this == -1)
  {
    result = 0;
  }

  else if (v2 >= 0x100)
  {
    if (v2 >= 0x10000)
    {
      if (v2 >> 24)
      {
        if (HIDWORD(v2))
        {
          if (v2 >> 40)
          {
            if (HIWORD(v2))
            {
              if (HIBYTE(v2))
              {
                result = 11;
              }

              else
              {
                result = 10;
              }
            }

            else
            {
              result = 9;
            }
          }

          else
          {
            result = 8;
          }
        }

        else
        {
          result = 7;
        }
      }

      else
      {
        result = 6;
      }
    }

    else
    {
      result = 5;
    }
  }

  else
  {
    result = 4;
  }

  v4 = *(this + 1);
  if (v4 != -1)
  {
    if (v4 >= 0x100)
    {
      if (v4 >= 0x10000)
      {
        if (v4 >> 24)
        {
          if (HIDWORD(v4))
          {
            if (v4 >> 40)
            {
              if (HIWORD(v4))
              {
                v6 = HIBYTE(v4) == 0;
                v5 = 10;
                if (!v6)
                {
                  v5 = 11;
                }
              }

              else
              {
                v5 = 9;
              }
            }

            else
            {
              v5 = 8;
            }
          }

          else
          {
            v5 = 7;
          }
        }

        else
        {
          v5 = 6;
        }
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 4;
    }

    result += v5;
  }

  v7 = *(this + 2);
  if (v7 != -1)
  {
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        if (v7 >> 24)
        {
          if (HIDWORD(v7))
          {
            if (v7 >> 40)
            {
              if (HIWORD(v7))
              {
                v6 = HIBYTE(v7) == 0;
                v8 = 10;
                if (!v6)
                {
                  v8 = 11;
                }
              }

              else
              {
                v8 = 9;
              }
            }

            else
            {
              v8 = 8;
            }
          }

          else
          {
            v8 = 7;
          }
        }

        else
        {
          v8 = 6;
        }
      }

      else
      {
        v8 = 5;
      }
    }

    else
    {
      v8 = 4;
    }

    result += v8;
  }

  v9 = *(this + 3);
  if (v9 != -1)
  {
    if (v9 >= 0x100)
    {
      if (v9 >= 0x10000)
      {
        if (v9 >> 24)
        {
          if (HIDWORD(v9))
          {
            if (v9 >> 40)
            {
              if (HIWORD(v9))
              {
                v6 = HIBYTE(v9) == 0;
                v10 = 10;
                if (!v6)
                {
                  v10 = 11;
                }
              }

              else
              {
                v10 = 9;
              }
            }

            else
            {
              v10 = 8;
            }
          }

          else
          {
            v10 = 7;
          }
        }

        else
        {
          v10 = 6;
        }
      }

      else
      {
        v10 = 5;
      }
    }

    else
    {
      v10 = 4;
    }

    result += v10;
  }

  v11 = *(this + 4);
  if (v11 != -1)
  {
    if (v11 >= 0x100)
    {
      if (v11 >= 0x10000)
      {
        if (v11 >> 24)
        {
          if (HIDWORD(v11))
          {
            if (v11 >> 40)
            {
              if (HIWORD(v11))
              {
                v6 = HIBYTE(v11) == 0;
                v12 = 10;
                if (!v6)
                {
                  v12 = 11;
                }
              }

              else
              {
                v12 = 9;
              }
            }

            else
            {
              v12 = 8;
            }
          }

          else
          {
            v12 = 7;
          }
        }

        else
        {
          v12 = 6;
        }
      }

      else
      {
        v12 = 5;
      }
    }

    else
    {
      v12 = 4;
    }

    result += v12;
  }

  v13 = *(this + 5);
  if (v13 != -1)
  {
    if (v13 >= 0x100)
    {
      if (v13 >= 0x10000)
      {
        if (v13 >> 24)
        {
          if (HIDWORD(v13))
          {
            if (v13 >> 40)
            {
              if (HIWORD(v13))
              {
                v6 = HIBYTE(v13) == 0;
                v14 = 10;
                if (!v6)
                {
                  v14 = 11;
                }
              }

              else
              {
                v14 = 9;
              }
            }

            else
            {
              v14 = 8;
            }
          }

          else
          {
            v14 = 7;
          }
        }

        else
        {
          v14 = 6;
        }
      }

      else
      {
        v14 = 5;
      }
    }

    else
    {
      v14 = 4;
    }

    result += v14;
  }

  v15 = *(this + 6);
  if (v15 != -1)
  {
    if (v15 >= 0x100)
    {
      if (v15 >= 0x10000)
      {
        if (v15 >> 24)
        {
          if (HIDWORD(v15))
          {
            if (v15 >> 40)
            {
              if (HIWORD(v15))
              {
                v6 = HIBYTE(v15) == 0;
                v16 = 10;
                if (!v6)
                {
                  v16 = 11;
                }
              }

              else
              {
                v16 = 9;
              }
            }

            else
            {
              v16 = 8;
            }
          }

          else
          {
            v16 = 7;
          }
        }

        else
        {
          v16 = 6;
        }
      }

      else
      {
        v16 = 5;
      }
    }

    else
    {
      v16 = 4;
    }

    result += v16;
  }

  v17 = *(this + 7);
  if (v17 != -1)
  {
    if (v17 >= 0x100)
    {
      if (v17 >= 0x10000)
      {
        if (v17 >> 24)
        {
          if (HIDWORD(v17))
          {
            if (v17 >> 40)
            {
              if (HIWORD(v17))
              {
                v6 = HIBYTE(v17) == 0;
                v18 = 10;
                if (!v6)
                {
                  v18 = 11;
                }
              }

              else
              {
                v18 = 9;
              }
            }

            else
            {
              v18 = 8;
            }
          }

          else
          {
            v18 = 7;
          }
        }

        else
        {
          v18 = 6;
        }
      }

      else
      {
        v18 = 5;
      }
    }

    else
    {
      v18 = 4;
    }

    result += v18;
  }

  v19 = *(this + 8);
  if (v19 != -1)
  {
    if (v19 >= 0x100)
    {
      if (v19 >= 0x10000)
      {
        if (v19 >> 24)
        {
          if (HIDWORD(v19))
          {
            if (v19 >> 40)
            {
              if (HIWORD(v19))
              {
                v6 = HIBYTE(v19) == 0;
                v20 = 10;
                if (!v6)
                {
                  v20 = 11;
                }
              }

              else
              {
                v20 = 9;
              }
            }

            else
            {
              v20 = 8;
            }
          }

          else
          {
            v20 = 7;
          }
        }

        else
        {
          v20 = 6;
        }
      }

      else
      {
        v20 = 5;
      }
    }

    else
    {
      v20 = 4;
    }

    result += v20;
  }

  v21 = *(this + 9);
  if (v21 != -1)
  {
    if (v21 >= 0x100)
    {
      if (v21 >= 0x10000)
      {
        if (v21 >> 24)
        {
          if (HIDWORD(v21))
          {
            if (v21 >> 40)
            {
              if (HIWORD(v21))
              {
                v6 = HIBYTE(v21) == 0;
                v22 = 10;
                if (!v6)
                {
                  v22 = 11;
                }
              }

              else
              {
                v22 = 9;
              }
            }

            else
            {
              v22 = 8;
            }
          }

          else
          {
            v22 = 7;
          }
        }

        else
        {
          v22 = 6;
        }
      }

      else
      {
        v22 = 5;
      }
    }

    else
    {
      v22 = 4;
    }

    result += v22;
  }

  v23 = *(this + 10);
  if (v23 != -1)
  {
    if (v23 >= 0x100)
    {
      if (v23 >= 0x10000)
      {
        if (v23 >> 24)
        {
          if (HIDWORD(v23))
          {
            if (v23 >> 40)
            {
              if (HIWORD(v23))
              {
                v6 = HIBYTE(v23) == 0;
                v24 = 10;
                if (!v6)
                {
                  v24 = 11;
                }
              }

              else
              {
                v24 = 9;
              }
            }

            else
            {
              v24 = 8;
            }
          }

          else
          {
            v24 = 7;
          }
        }

        else
        {
          v24 = 6;
        }
      }

      else
      {
        v24 = 5;
      }
    }

    else
    {
      v24 = 4;
    }

    result += v24;
  }

  v25 = *(this + 11);
  if (v25 != -1)
  {
    if (v25 >= 0x100)
    {
      if (v25 >= 0x10000)
      {
        if (v25 >> 24)
        {
          if (HIDWORD(v25))
          {
            if (v25 >> 40)
            {
              if (HIWORD(v25))
              {
                v6 = HIBYTE(v25) == 0;
                v26 = 10;
                if (!v6)
                {
                  v26 = 11;
                }
              }

              else
              {
                v26 = 9;
              }
            }

            else
            {
              v26 = 8;
            }
          }

          else
          {
            v26 = 7;
          }
        }

        else
        {
          v26 = 6;
        }
      }

      else
      {
        v26 = 5;
      }
    }

    else
    {
      v26 = 4;
    }

    result += v26;
  }

  v27 = *(this + 12);
  if (v27 != -1)
  {
    if (v27 >= 0x100)
    {
      if (v27 >= 0x10000)
      {
        if (v27 >> 24)
        {
          if (HIDWORD(v27))
          {
            if (v27 >> 40)
            {
              if (HIWORD(v27))
              {
                v6 = HIBYTE(v27) == 0;
                v28 = 10;
                if (!v6)
                {
                  v28 = 11;
                }
              }

              else
              {
                v28 = 9;
              }
            }

            else
            {
              v28 = 8;
            }
          }

          else
          {
            v28 = 7;
          }
        }

        else
        {
          v28 = 6;
        }
      }

      else
      {
        v28 = 5;
      }
    }

    else
    {
      v28 = 4;
    }

    result += v28;
  }

  v29 = *(this + 13);
  if (v29)
  {
    v30 = 7;
    if (*v29 == 3.4028e38)
    {
      v30 = 0;
    }

    if (*(v29 + 4) != 3.4028e38)
    {
      v30 += 7;
    }

    if (*(v29 + 8))
    {
      v30 += 14;
    }

    if (*(v29 + 16))
    {
      v30 += 14;
    }

    v32 = *(v29 + 24);
    v31 = *(v29 + 32);
    if (v32)
    {
      v30 += 14;
    }

    if (v31)
    {
      v33 = v30 + 14;
    }

    else
    {
      v33 = v30;
    }

    if (v33)
    {
      v34 = v33 + 3;
    }

    else
    {
      v34 = 0;
    }

    result += v34;
  }

  return result;
}

uint64_t mkvmuxer::Colour::Write(mkvmuxer::Colour *this, mkvmuxer::IMkvWriter *a2)
{
  v4 = mkvmuxer::Colour::PayloadSize(this);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *(this + 13);
  if (!v6)
  {
LABEL_55:
    if ((*this + 1) > 0xB)
    {
      return 0;
    }

    if ((*(this + 6) + 1) > 3)
    {
      return 0;
    }

    if ((*(this + 7) + 1) > 3)
    {
      return 0;
    }

    if ((*(this + 8) + 1) > 4)
    {
      return 0;
    }

    v28 = *(this + 9);
    if (v28 != -1 && (v28 - 1) > 0x11)
    {
      return 0;
    }

    v29 = *(this + 10);
    if ((v29 + 1) >= 0xC && v29 != 22)
    {
      return 0;
    }

    result = mkvmuxer::WriteEbmlMasterElement(a2, 0x55B0uLL, v5);
    if (!result)
    {
      return result;
    }

    if (*this != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B1uLL, *this, 0);
      if (!result)
      {
        return result;
      }
    }

    v30 = *(this + 1);
    if (v30 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B2uLL, v30, 0);
      if (!result)
      {
        return result;
      }
    }

    v31 = *(this + 2);
    if (v31 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B3uLL, v31, 0);
      if (!result)
      {
        return result;
      }
    }

    v32 = *(this + 3);
    if (v32 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B4uLL, v32, 0);
      if (!result)
      {
        return result;
      }
    }

    v33 = *(this + 4);
    if (v33 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B5uLL, v33, 0);
      if (!result)
      {
        return result;
      }
    }

    v34 = *(this + 5);
    if (v34 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B6uLL, v34, 0);
      if (!result)
      {
        return result;
      }
    }

    v35 = *(this + 6);
    if (v35 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B7uLL, v35, 0);
      if (!result)
      {
        return result;
      }
    }

    v36 = *(this + 7);
    if (v36 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B8uLL, v36, 0);
      if (!result)
      {
        return result;
      }
    }

    v37 = *(this + 8);
    if (v37 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55B9uLL, v37, 0);
      if (!result)
      {
        return result;
      }
    }

    v38 = *(this + 9);
    if (v38 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55BAuLL, v38, 0);
      if (!result)
      {
        return result;
      }
    }

    v39 = *(this + 10);
    if (v39 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55BBuLL, v39, 0);
      if (!result)
      {
        return result;
      }
    }

    v40 = *(this + 11);
    if (v40 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55BCuLL, v40, 0);
      if (!result)
      {
        return result;
      }
    }

    v41 = *(this + 12);
    if (v41 != -1)
    {
      result = mkvmuxer::WriteEbmlElement(a2, 0x55BDuLL, v41, 0);
      if (!result)
      {
        return result;
      }
    }

    v42 = *(this + 13);
    if (v42)
    {
      result = mkvmuxer::MasteringMetadata::Write(v42, a2);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  v7 = *(v6 + 4);
  if (v7 == 3.4028e38)
  {
    v10 = *v6;
  }

  else
  {
    if (v7 < 0.0 || v7 > 999.99)
    {
      return 0;
    }

    v10 = *v6;
    if (v7 > *v6)
    {
      return 0;
    }
  }

  if (v10 == 3.4028e38 || (result = 0, v10 >= v7) && (v10 >= 0.0 ? (v11 = v10 <= 10000.0) : (v11 = 0), v11))
  {
    v12 = *(v6 + 8);
    if (v12)
    {
      if (*v12 < 0.0 || *v12 > 1.0)
      {
        return 0;
      }

      v14 = v12[1];
      if (v14 < 0.0 || v14 > 1.0)
      {
        return 0;
      }
    }

    v16 = *(v6 + 16);
    if (v16)
    {
      if (*v16 < 0.0 || *v16 > 1.0)
      {
        return 0;
      }

      v18 = v16[1];
      if (v18 < 0.0 || v18 > 1.0)
      {
        return 0;
      }
    }

    v20 = *(v6 + 24);
    if (v20)
    {
      if (*v20 < 0.0 || *v20 > 1.0)
      {
        return 0;
      }

      v22 = v20[1];
      if (v22 < 0.0 || v22 > 1.0)
      {
        return 0;
      }
    }

    v24 = *(v6 + 32);
    if (v24)
    {
      if (*v24 < 0.0 || *v24 > 1.0)
      {
        return 0;
      }

      v26 = v24[1];
      if (v26 < 0.0 || v26 > 1.0)
      {
        return 0;
      }
    }

    goto LABEL_55;
  }

  return result;
}

uint64_t mkvmuxer::Projection::Write(mkvmuxer::Projection *this, mkvmuxer::IMkvWriter *a2)
{
  v4 = *this;
  v5 = 5;
  v6 = 6;
  v7 = 11;
  if (*this >= 0)
  {
    v7 = 7;
  }

  if (HIBYTE(*this))
  {
    v6 = v7;
  }

  if (v4 >= 0x10000)
  {
    v5 = v6;
  }

  if (v4 >= 0x100)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(this + 3);
  if (v9 && *(this + 2))
  {
    if (v9 >= 0x7F)
    {
      v10 = 2;
      v11 = 3;
      v12 = 4;
      v13 = 5;
      v14 = 6;
      v15 = 7;
      if (v9 >= 0x1FFFFFFFFFFFFLL)
      {
        v15 = 8;
      }

      if (v9 >= 0x3FFFFFFFFFFLL)
      {
        v14 = v15;
      }

      if (v9 >= 0x7FFFFFFFFLL)
      {
        v13 = v14;
      }

      if (v9 >= 0xFFFFFFF)
      {
        v12 = v13;
      }

      if (v9 >= 0x1FFFFF)
      {
        v11 = v12;
      }

      if (v9 >= 0x3FFF)
      {
        v10 = v11;
      }
    }

    else
    {
      v10 = 1;
    }

    v8 += v9 + v10 + 2;
  }

  if (v8 == -21)
  {
    return 1;
  }

  result = mkvmuxer::WriteEbmlMasterElement(a2, 0x7670uLL, v8 + 21);
  if (result)
  {
    result = mkvmuxer::WriteEbmlElement(a2, 0x7671uLL, *this, 0);
    if (result)
    {
      v17 = *(this + 3);
      if (!v17 || (v18 = *(this + 2)) == 0 || (result = mkvmuxer::WriteEbmlElement(a2, 0x7672uLL, v18, v17), result))
      {
        result = mkvmuxer::WriteEbmlElement(a2, 0x7673uLL, *(this + 1));
        if (result)
        {
          result = mkvmuxer::WriteEbmlElement(a2, 0x7674uLL, *(this + 2));
          if (result)
          {
            v19 = *(this + 3);

            return mkvmuxer::WriteEbmlElement(a2, 0x7675uLL, v19);
          }
        }
      }
    }
  }

  return result;
}

void mkvmuxer::VideoTrack::~VideoTrack(mkvmuxer::VideoTrack *this)
{
  *this = &unk_2882A8370;
  v2 = *(this + 29);
  if (v2)
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      v4 = v3[1];
      if (v4)
      {
        MEMORY[0x2743DA540](v4, 0x1000C4000313F17);
      }

      v5 = v3[2];
      if (v5)
      {
        MEMORY[0x2743DA540](v5, 0x1000C4000313F17);
      }

      v6 = v3[3];
      if (v6)
      {
        MEMORY[0x2743DA540](v6, 0x1000C4000313F17);
      }

      v7 = v3[4];
      if (v7)
      {
        MEMORY[0x2743DA540](v7, 0x1000C4000313F17);
      }

      MEMORY[0x2743DA540](v3, 0x1020C402FC4DB2FLL);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40F7DC2A68);
  }

  v8 = *(this + 30);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      MEMORY[0x2743DA520](v9, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v8, 0x1010C40F09D962ALL);
  }

  mkvmuxer::Track::~Track(this);
}

{
  mkvmuxer::VideoTrack::~VideoTrack(this);

  JUMPOUT(0x2743DA540);
}

unint64_t mkvmuxer::VideoTrack::PayloadSize(mkvmuxer::VideoTrack *this)
{
  v2 = mkvmuxer::Track::PayloadSize(this);
  v3 = mkvmuxer::VideoTrack::VideoPayloadSize(this);
  if (v3 < 0x7F)
  {
    return v3 + v2 + 2;
  }

  v5 = 3;
  v6 = 4;
  v7 = 5;
  v8 = 6;
  v9 = 7;
  v10 = 8;
  if (v3 >= 0x1FFFFFFFFFFFFLL)
  {
    v10 = 9;
  }

  if (v3 >= 0x3FFFFFFFFFFLL)
  {
    v9 = v10;
  }

  if (v3 >= 0x7FFFFFFFFLL)
  {
    v8 = v9;
  }

  if (v3 >= 0xFFFFFFF)
  {
    v7 = v8;
  }

  if (v3 >= 0x1FFFFF)
  {
    v6 = v7;
  }

  if (v3 >= 0x3FFF)
  {
    v5 = v6;
  }

  return v3 + v2 + v5;
}

uint64_t mkvmuxer::VideoTrack::VideoPayloadSize(mkvmuxer::VideoTrack *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    if (v2 < 0x100)
    {
LABEL_3:
      v3 = 3;
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *(this + 27);
    if (v2 < 0x100)
    {
      goto LABEL_3;
    }
  }

  if (v2 >= 0x10000)
  {
    if (v2 >> 24)
    {
      if (HIDWORD(v2))
      {
        if (v2 >> 40)
        {
          if (HIWORD(v2))
          {
            v4 = HIBYTE(v2) == 0;
            v3 = 9;
            if (!v4)
            {
              v3 = 10;
            }
          }

          else
          {
            v3 = 8;
          }
        }

        else
        {
          v3 = 7;
        }
      }

      else
      {
        v3 = 6;
      }
    }

    else
    {
      v3 = 5;
    }
  }

  else
  {
    v3 = 4;
  }

LABEL_17:
  v5 = *(this + 17);
  if (v5)
  {
    if (v5 < 0x100)
    {
LABEL_19:
      v6 = 3;
      goto LABEL_33;
    }
  }

  else
  {
    v5 = *(this + 24);
    if (v5 < 0x100)
    {
      goto LABEL_19;
    }
  }

  if (v5 >= 0x10000)
  {
    if (v5 >> 24)
    {
      if (HIDWORD(v5))
      {
        if (v5 >> 40)
        {
          if (HIWORD(v5))
          {
            v4 = HIBYTE(v5) == 0;
            v6 = 9;
            if (!v4)
            {
              v6 = 10;
            }
          }

          else
          {
            v6 = 8;
          }
        }

        else
        {
          v6 = 7;
        }
      }

      else
      {
        v6 = 6;
      }
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 4;
  }

LABEL_33:
  v7 = v6 + v3;
  v8 = *(this + 16);
  if (v8)
  {
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        if (v8 >> 24)
        {
          if (HIDWORD(v8))
          {
            if (v8 >> 40)
            {
              if (HIWORD(v8))
              {
                v4 = HIBYTE(v8) == 0;
                v9 = 10;
                if (!v4)
                {
                  v9 = 11;
                }
              }

              else
              {
                v9 = 9;
              }
            }

            else
            {
              v9 = 8;
            }
          }

          else
          {
            v9 = 7;
          }
        }

        else
        {
          v9 = 6;
        }
      }

      else
      {
        v9 = 5;
      }
    }

    else
    {
      v9 = 4;
    }

    v7 += v9;
  }

  v10 = *(this + 15);
  if (v10)
  {
    if (v10 >= 0x100)
    {
      if (v10 >= 0x10000)
      {
        if (v10 >> 24)
        {
          if (HIDWORD(v10))
          {
            if (v10 >> 40)
            {
              if (HIWORD(v10))
              {
                v4 = HIBYTE(v10) == 0;
                v11 = 10;
                if (!v4)
                {
                  v11 = 11;
                }
              }

              else
              {
                v11 = 9;
              }
            }

            else
            {
              v11 = 8;
            }
          }

          else
          {
            v11 = 7;
          }
        }

        else
        {
          v11 = 6;
        }
      }

      else
      {
        v11 = 5;
      }
    }

    else
    {
      v11 = 4;
    }

    v7 += v11;
  }

  v12 = *(this + 19);
  if (v12)
  {
    if (v12 >= 0x100)
    {
      if (v12 >= 0x10000)
      {
        if (v12 >> 24)
        {
          if (HIDWORD(v12))
          {
            if (v12 >> 40)
            {
              if (HIWORD(v12))
              {
                v4 = HIBYTE(v12) == 0;
                v13 = 10;
                if (!v4)
                {
                  v13 = 11;
                }
              }

              else
              {
                v13 = 9;
              }
            }

            else
            {
              v13 = 8;
            }
          }

          else
          {
            v13 = 7;
          }
        }

        else
        {
          v13 = 6;
        }
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      v13 = 4;
    }

    v7 += v13;
  }

  v14 = *(this + 20);
  if (v14)
  {
    if (v14 >= 0x100)
    {
      if (v14 >= 0x10000)
      {
        if (v14 >> 24)
        {
          if (HIDWORD(v14))
          {
            if (v14 >> 40)
            {
              if (HIWORD(v14))
              {
                v4 = HIBYTE(v14) == 0;
                v15 = 10;
                if (!v4)
                {
                  v15 = 11;
                }
              }

              else
              {
                v15 = 9;
              }
            }

            else
            {
              v15 = 8;
            }
          }

          else
          {
            v15 = 7;
          }
        }

        else
        {
          v15 = 6;
        }
      }

      else
      {
        v15 = 5;
      }
    }

    else
    {
      v15 = 4;
    }

    v7 += v15;
  }

  v16 = *(this + 21);
  if (v16)
  {
    if (v16 >= 0x100)
    {
      if (v16 >= 0x10000)
      {
        if (v16 >> 24)
        {
          if (HIDWORD(v16))
          {
            if (v16 >> 40)
            {
              if (HIWORD(v16))
              {
                v4 = HIBYTE(v16) == 0;
                v17 = 10;
                if (!v4)
                {
                  v17 = 11;
                }
              }

              else
              {
                v17 = 9;
              }
            }

            else
            {
              v17 = 8;
            }
          }

          else
          {
            v17 = 7;
          }
        }

        else
        {
          v17 = 6;
        }
      }

      else
      {
        v17 = 5;
      }
    }

    else
    {
      v17 = 4;
    }

    v7 += v17;
  }

  v18 = *(this + 22);
  if (v18)
  {
    if (v18 >= 0x100)
    {
      if (v18 >= 0x10000)
      {
        if (v18 >> 24)
        {
          if (HIDWORD(v18))
          {
            if (v18 >> 40)
            {
              if (HIWORD(v18))
              {
                v4 = HIBYTE(v18) == 0;
                v19 = 10;
                if (!v4)
                {
                  v19 = 11;
                }
              }

              else
              {
                v19 = 9;
              }
            }

            else
            {
              v19 = 8;
            }
          }

          else
          {
            v19 = 7;
          }
        }

        else
        {
          v19 = 6;
        }
      }

      else
      {
        v19 = 5;
      }
    }

    else
    {
      v19 = 4;
    }

    v7 += v19;
  }

  v20 = *(this + 25);
  if (v20)
  {
    if (v20 >= 0x100)
    {
      if (v20 >= 0x10000)
      {
        if (v20 >> 24)
        {
          if (HIDWORD(v20))
          {
            if (v20 >> 40)
            {
              if (HIWORD(v20))
              {
                v4 = HIBYTE(v20) == 0;
                v21 = 10;
                if (!v4)
                {
                  v21 = 11;
                }
              }

              else
              {
                v21 = 9;
              }
            }

            else
            {
              v21 = 8;
            }
          }

          else
          {
            v21 = 7;
          }
        }

        else
        {
          v21 = 6;
        }
      }

      else
      {
        v21 = 5;
      }
    }

    else
    {
      v21 = 4;
    }

    v7 += v21;
  }

  v22 = *(this + 26);
  if (v22)
  {
    if (v22 >= 0x100)
    {
      if (v22 >= 0x10000)
      {
        if (v22 >> 24)
        {
          if (HIDWORD(v22))
          {
            if (v22 >> 40)
            {
              if (HIWORD(v22))
              {
                v4 = HIBYTE(v22) == 0;
                v23 = 10;
                if (!v4)
                {
                  v23 = 11;
                }
              }

              else
              {
                v23 = 9;
              }
            }

            else
            {
              v23 = 8;
            }
          }

          else
          {
            v23 = 7;
          }
        }

        else
        {
          v23 = 6;
        }
      }

      else
      {
        v23 = 5;
      }
    }

    else
    {
      v23 = 4;
    }

    v7 += v23;
  }

  if (*(this + 23) <= 0.0)
  {
    v24 = v7;
  }

  else
  {
    v24 = v7 + 8;
  }

  v25 = *(this + 28);
  if (v25)
  {
    v26 = strlen(v25);
    if (v26 >= 0x7F)
    {
      if (v26 >= 0x3FFF)
      {
        if (v26 >= 0x1FFFFF)
        {
          if (v26 >= 0xFFFFFFF)
          {
            if (v26 >= 0x7FFFFFFFFLL)
            {
              if (v26 >= 0x3FFFFFFFFFFLL)
              {
                v27 = 7;
                if (v26 >= 0x1FFFFFFFFFFFFLL)
                {
                  v27 = 8;
                }
              }

              else
              {
                v27 = 6;
              }
            }

            else
            {
              v27 = 5;
            }
          }

          else
          {
            v27 = 4;
          }
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 2;
      }
    }

    else
    {
      v27 = 1;
    }

    v24 += v26 + v27 + 3;
  }

  v28 = *(this + 29);
  if (v28)
  {
    v29 = mkvmuxer::Colour::PayloadSize(v28);
    if (v29)
    {
      if (v29 >= 0x7F)
      {
        if (v29 >= 0x3FFF)
        {
          if (v29 >= 0x1FFFFF)
          {
            if (v29 >= 0xFFFFFFF)
            {
              if (v29 >= 0x7FFFFFFFFLL)
              {
                if (v29 >= 0x3FFFFFFFFFFLL)
                {
                  v30 = 9;
                  if (v29 >= 0x1FFFFFFFFFFFFLL)
                  {
                    v30 = 10;
                  }
                }

                else
                {
                  v30 = 8;
                }
              }

              else
              {
                v30 = 7;
              }
            }

            else
            {
              v30 = 6;
            }
          }

          else
          {
            v30 = 5;
          }
        }

        else
        {
          v30 = 4;
        }
      }

      else
      {
        v30 = 3;
      }

      v31 = v30 + v29;
    }

    else
    {
      v31 = 0;
    }

    v24 += v31;
  }

  v32 = *(this + 30);
  if (v32)
  {
    v33 = *v32;
    if (*v32 >= 0x100u)
    {
      if (v33 >= 0x10000)
      {
        if (HIBYTE(v33))
        {
          v36 = v33 < 0;
          v34 = 11;
          if (!v36)
          {
            v34 = 7;
          }

          v35 = *(v32 + 24);
          if (!v35)
          {
            goto LABEL_228;
          }
        }

        else
        {
          v34 = 6;
          v35 = *(v32 + 24);
          if (!v35)
          {
            goto LABEL_228;
          }
        }
      }

      else
      {
        v34 = 5;
        v35 = *(v32 + 24);
        if (!v35)
        {
          goto LABEL_228;
        }
      }
    }

    else
    {
      v34 = 4;
      v35 = *(v32 + 24);
      if (!v35)
      {
LABEL_228:
        v38 = v34 + 21;
        if (v38)
        {
          if (v38 >= 0x7F)
          {
            if (v38 >= 0x3FFF)
            {
              if (v38 >= 0x1FFFFF)
              {
                if (v38 >= 0xFFFFFFF)
                {
                  if (v38 >= 0x7FFFFFFFFLL)
                  {
                    if (v38 >= 0x3FFFFFFFFFFLL)
                    {
                      v39 = 9;
                      if (v38 >= 0x1FFFFFFFFFFFFLL)
                      {
                        v39 = 10;
                      }
                    }

                    else
                    {
                      v39 = 8;
                    }
                  }

                  else
                  {
                    v39 = 7;
                  }
                }

                else
                {
                  v39 = 6;
                }
              }

              else
              {
                v39 = 5;
              }
            }

            else
            {
              v39 = 4;
            }
          }

          else
          {
            v39 = 3;
          }

          v38 += v39;
        }

        v24 += v38;
        return v24;
      }
    }

    if (*(v32 + 16))
    {
      if (v35 >= 0x7F)
      {
        if (v35 >= 0x3FFF)
        {
          if (v35 >= 0x1FFFFF)
          {
            if (v35 >= 0xFFFFFFF)
            {
              if (v35 >= 0x7FFFFFFFFLL)
              {
                if (v35 >= 0x3FFFFFFFFFFLL)
                {
                  v37 = 7;
                  if (v35 >= 0x1FFFFFFFFFFFFLL)
                  {
                    v37 = 8;
                  }
                }

                else
                {
                  v37 = 6;
                }
              }

              else
              {
                v37 = 5;
              }
            }

            else
            {
              v37 = 4;
            }
          }

          else
          {
            v37 = 3;
          }
        }

        else
        {
          v37 = 2;
        }
      }

      else
      {
        v37 = 1;
      }

      v34 += v35 + v37 + 2;
    }

    goto LABEL_228;
  }

  return v24;
}