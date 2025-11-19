uint64_t vp9_row_mt_sync_read(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(result + 24);
    if (((v5 - 1) & a3) == 0)
    {
      v6 = a2 - 1;
      v7 = a2 - 1;
      v8 = (*result + (v7 << 6));
      pthread_mutex_lock(v8);
      v9 = 1 - v5;
      if (*(*(v4 + 16) + 4 * v6) + v9 < a3)
      {
        do
        {
          pthread_cond_wait((*(v4 + 8) + 48 * v7), v8);
        }

        while (*(*(v4 + 16) + 4 * v7) + v9 < a3);
      }

      return pthread_mutex_unlock(v8);
    }
  }

  return result;
}

uint64_t vp9_row_mt_sync_write(uint64_t result, int a2, int a3, int a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4;
  }

  else
  {
    v7 = a3;
    if (a3 % v6 != v6 - 1)
    {
      return result;
    }
  }

  v8 = a2 << 6;
  pthread_mutex_lock((*result + v8));
  v9 = v5[1];
  *(v5[2] + 4 * a2) = v7;
  pthread_cond_signal((v9 + 48 * a2));
  v10 = (*v5 + v8);

  return pthread_mutex_unlock(v10);
}

void vp9_encode_tiles_row_mt(uint64_t a1)
{
  v2 = (a1 + 933940);
  v3 = (a1 + 189928);
  v42 = (a1 + 173004);
  v4 = 1 << *(a1 + 189928);
  v5 = (a1 + 936224);
  v6 = *(a1 + 190352);
  v41 = v6;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (*(a1 + 936228) >= v4 && *v5 >= 1 << *(a1 + 189932) && *(a1 + 936232) >= *v42)
  {
    vp9_init_tile_data(a1);
    create_enc_workers(a1, v7);
    v8 = *v2;
    if (v8 < 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    vp9_row_mt_mem_dealloc(a1);
    vp9_init_tile_data(a1);
    vp9_row_mt_mem_alloc(a1);
    create_enc_workers(a1, v7);
    v8 = *v2;
    if (v8 < 1)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  v10 = (a1 + 941392);
  do
  {
    *v10++ = v9;
    if (v9 + 1 == v4)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    --v8;
  }

  while (v8);
LABEL_13:
  vp9_prepare_job_queue(a1, 1);
  if (*v3 != 31)
  {
    v23 = (v42[1] + 7) >> 3;
    v24 = 1 << *v3;
    v25 = 3688;
    do
    {
      v27 = v23;
      if (v3[37] == 1)
      {
        v27 = *v42;
      }

      v26 = (*(a1 + 194488) + v25);
      memset(*v26, 255, 4 * v27);
      *(v26 - 10) = 0u;
      *(v26 - 9) = 0u;
      *(v26 - 8) = 0u;
      *(v26 - 7) = 0u;
      *(v26 - 6) = 0u;
      *(v26 - 5) = 0u;
      *(v26 - 4) = 0u;
      *(v26 - 3) = 0u;
      *(v26 - 2) = 0u;
      v25 += 3720;
      *(v26 - 19) = -1;
      --v24;
    }

    while (v24);
  }

  v11 = (a1 + 49200);
  v12 = (a1 + 176620);
  v13 = 8;
  v14 = v7;
  do
  {
    v15 = *(v2 + 3);
    v16 = *(v15 + v13);
    if (v16 != v11)
    {
      memcpy(v16, (a1 + 49200), 0x15210uLL);
      memcpy((*(v15 + v13) + 86544), (a1 + 135744), 0x6C38uLL);
      v16 = *(v15 + v13);
    }

    v17 = v16[14281];
    if (v17 != v12)
    {
      memcpy(v17, (a1 + 176620), 0x33A8uLL);
    }

    if (*(a1 + 739940))
    {
      v18 = *(v15 + v13);
      v19 = v18[14284];
      v18[1025] = v19[52];
      v18[1024] = v19[61];
      v18[3114] = v19[70];
      v18[1026] = v19[79];
      v18[2063] = v19[55];
      v18[2062] = v19[64];
      v18[3131] = v19[73];
      v18[2064] = v19[82];
      v18[3101] = v19[58];
      v18[3100] = v19[67];
      v18[3148] = v19[76];
      v18[3102] = v19[85];
    }

    v13 += 280;
    --v14;
  }

  while (v14);
  v20 = *(v2 + 1);
  v21 = *(v2 + 3);
  if (v41 >= 2)
  {
    v22 = v7 & 0x7FFFFFFE;
    v28 = (v20 + 96);
    v29 = *(v2 + 3);
    v30 = v22;
    do
    {
      *(v28 - 9) = enc_row_mt_worker_hook;
      *(v28 - 8) = v29;
      *(v28 - 2) = enc_row_mt_worker_hook;
      *(v28 - 1) = v29 + 280;
      *(v28 - 7) = v5;
      *v28 = v5;
      v28 += 14;
      v29 += 560;
      v30 -= 2;
    }

    while (v30);
    if (v22 == v7)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v22 = 0;
  }

  v31 = v7 - v22;
  v32 = v21 + 280 * v22;
  v33 = (v20 + 56 * v22 + 40);
  do
  {
    *(v33 - 2) = enc_row_mt_worker_hook;
    *(v33 - 1) = v32;
    *v33 = v5;
    v33 += 7;
    v32 += 280;
    --v31;
  }

  while (v31);
LABEL_33:
  v34 = 0;
  for (i = 0; i != v7; ++i)
  {
    *(*(*(v2 + 1) + v34 + 32) + 16) = i;
    if (i == *v2 - 1)
    {
      v36 = 4;
    }

    else
    {
      v36 = 3;
    }

    g_worker_interface[v36]();
    v34 += 56;
  }

  v37 = 0;
  do
  {
    off_28100B630();
    v37 += 56;
  }

  while (56 * v7 != v37);
  v38 = 0;
  v39 = 32;
  do
  {
    if (v38 < *v2 - 1)
    {
      v40 = *(*(v2 + 1) + v39);
      vp9_accumulate_frame_counts(v12, *(*(v40 + 8) + 114248), 0);
      accumulate_rd_opt(v11, *(v40 + 8));
    }

    ++v38;
    v39 += 56;
  }

  while (v7 != v38);
}

uint64_t enc_row_mt_worker_hook(int *a1, pthread_mutex_t *a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = *(*a1 + 189928);
  v5 = *&a2[80].__opaque[4 * a1[5] + 40];
  v6 = a1 + 6;
  v7 = &a2->__opaque[40];
  if (v4 == 31)
  {
    v8 = &v7[80 * v5];
    pthread_mutex_lock((v8 + 16));
    for (i = *v8; *v8; i = *v8)
    {
      *v8 = *i;
      ++*(v8 + 2);
      pthread_mutex_unlock((v8 + 16));
      vp9_encode_sb_row(v3, *(v2 + 1), *(i + 16), *(i + 12), (8 * *(i + 8)));
      pthread_mutex_lock((v8 + 16));
    }

    pthread_mutex_unlock((v8 + 16));
    v6[v5] = 1;
  }

  else
  {
    v11 = a2;
    v12 = (1 << v4);
    v20 = a2 + 1;
    v21 = &a2->__opaque[40];
    do
    {
      v13 = &v7[80 * v5];
      pthread_mutex_lock((v13 + 16));
      for (j = *v13; *v13; j = *v13)
      {
        *v13 = *j;
        ++*(v13 + 2);
        pthread_mutex_unlock((v13 + 16));
        vp9_encode_sb_row(v3, *(v2 + 1), *(j + 16), *(j + 12), (8 * *(j + 8)));
        pthread_mutex_lock((v13 + 16));
      }

      pthread_mutex_unlock((v13 + 16));
      v15 = 0;
      v6[v5] = 1;
      v5 = -1;
      v16 = v20;
      do
      {
        if (!v6[j])
        {
          pthread_mutex_lock(v16);
          v17 = v11;
          v18 = *&v11->__opaque[32];
          v19 = *&v16[-1].__opaque[48];
          pthread_mutex_unlock(v16);
          if (v18 == v19)
          {
            v6[j] = 1;
          }

          if (v18 - v19 > v15)
          {
            v5 = j;
            v15 = v18 - v19;
          }

          v11 = v17;
        }

        ++j;
        v16 = (v16 + 80);
      }

      while (v12 != j);
      v7 = v21;
      v2 = a1;
    }

    while (v5 != -1);
  }

  return 1;
}

uint64_t vp9_extrc_create(_OWORD *a1, __int128 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 8;
  }

  if (!*a3)
  {
    goto LABEL_8;
  }

  v6 = *(a3 + 184);
  if (v6)
  {
    fclose(v6);
  }

  if ((*(a3 + 88))(*(a3 + 8)) != 1)
  {
    v7 = *(a3 + 168);
    if (v7)
    {
      free(*(v7 - 8));
    }

LABEL_8:
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  v8 = a1[1];
  *(a3 + 16) = *a1;
  *(a3 + 32) = v8;
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[5];
  *(a3 + 80) = a1[4];
  *(a3 + 96) = v11;
  *(a3 + 48) = v9;
  *(a3 + 64) = v10;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  *(a3 + 160) = *(a2 + 6);
  *(a3 + 128) = v13;
  *(a3 + 144) = v14;
  *(a3 + 112) = v12;
  result = (*(a3 + 24))(*(a3 + 104), a3 + 112, a3 + 8);
  if (result != 1)
  {
    v16 = *(a2 + 2);
    *(a3 + 176) = v16;
    v17 = 208 * v16 + 23;
    if (v17 <= 0x10000000000 && (v18 = malloc_type_malloc(v17, 0xD93B561uLL)) != 0)
    {
      v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v19 - 8) = v18;
      *(a3 + 168) = v19;
      if (v19)
      {
        v20 = *(a1 + 10);
        if (v20)
        {
          v21 = fopen(v20, "w");
          *(a3 + 184) = v21;
          if (!v21)
          {
            return 1;
          }
        }

        else
        {
          *(a3 + 184) = 0;
        }

        result = 0;
        *a3 = 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      *(a3 + 168) = 0;
      return 2;
    }
  }

  return result;
}

uint64_t vp9_extrc_get_frame_rdmult(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, void *a8, unsigned int a9, uint64_t a10)
{
  if (!a1 || !*a1 || (*(a1 + 16) & 4) == 0)
  {
    return 8;
  }

  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  if (a5 <= 1)
  {
    if (!a5)
    {
      v16 = 0;
      v17[0] = 0;
      v23 = a6;
      v24 = a7;
      v18 = -1;
      v20 = 0;
      v21 = 0;
      v15 = -1;
      goto LABEL_16;
    }

    if (a5 == 1)
    {
      v11 = 1;
      goto LABEL_15;
    }

LABEL_18:
    fprintf(*MEMORY[0x277D85DF8], "Unsupported update_type %d\n", a5);
    abort();
  }

  if (a5 == 4)
  {
    v11 = 3;
    goto LABEL_15;
  }

  if (a5 == 3)
  {
    v11 = 2;
    goto LABEL_15;
  }

  if (a5 != 2)
  {
    goto LABEL_18;
  }

  v11 = 4;
LABEL_15:
  v24 = a7;
  v12 = a8[1];
  v13 = *(*a8 + 32);
  v17[0] = v11;
  LODWORD(v18) = v13;
  v14 = *(v12 + 32);
  v20 = a9 & 1;
  HIDWORD(v18) = v14;
  v23 = a6;
  v21 = (a9 >> 1) & 1;
  v15 = *(a8[2] + 32);
  v16 = (a9 >> 2) & 1;
LABEL_16:
  v19 = v15;
  v22 = v16;
  return (*(a1 + 80))(*(a1 + 8), v17, a10) == 1;
}

void *vp9_copy_and_extend_frame(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *a1 + 16;
  if (v5 <= ((*a1 + 63) & 0xFFFFFFC0))
  {
    v5 = (*a1 + 63) & 0xFFFFFFC0;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = v5 - v6;
  v9 = v4 + 16;
  if (v4 + 16 <= ((v4 + 63) & 0xFFFFFFC0))
  {
    v9 = (v4 + 63) & 0xFFFFFFC0;
  }

  v10 = v9 - v7;
  v11 = *(a1 + 20) != *a1;
  v12 = *(a1 + 24) != v4;
  v13 = 0x10u >> v12;
  v14 = 0x10u >> v11;
  v15 = v10 >> v12;
  v16 = v8 >> v11;
  if ((*(a1 + 152) & 8) != 0)
  {
    highbd_copy_and_extend_plane(*(a1 + 56), *(a1 + 16), *(a2 + 56), *(a2 + 16), v6, v7, 16, 0x10u, v10, v8);
    highbd_copy_and_extend_plane(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), *(a1 + 28), *(a1 + 32), v13, v14, v15, v16);
    return highbd_copy_and_extend_plane(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), *(a1 + 28), *(a1 + 32), v13, v14, v15, v16);
  }

  else
  {
    v17 = *(a1 + 64);
    v18 = *(a1 + 56);
    if (*(a1 + 72) - v17 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    copy_and_extend_plane_0(v18, *(a1 + 16), *(a2 + 56), *(a2 + 16), v6, v7, 16, 0x10uLL, v10, v8, 1);
    copy_and_extend_plane_0(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), *(a1 + 28), *(a1 + 32), v13, v14, v15, v16, v19);
    return copy_and_extend_plane_0(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), *(a1 + 28), *(a1 + 32), v13, v14, v15, v16, v19);
  }
}

void *highbd_copy_and_extend_plane(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, unsigned int a8, int a9, signed int a10)
{
  v11 = a9;
  v12 = 2 * a3;
  v13 = a8;
  v14 = -a8;
  v15 = (2 * a3 - 2 * a8);
  if (a6 > 0)
  {
    v78 = -a8;
    v16 = (2 * a1);
    v86 = a2;
    v87 = 2 * a5;
    v75 = a4;
    v89 = a8;
    v88 = a8;
    v76 = a5;
    v77 = 2 * a3 - 2 * a8;
    v73 = a4;
    v74 = 2 * a3;
    if (a10)
    {
      v17 = 0;
      v18 = 2 * a5;
      v19 = 2 * a3 - 2 * a8;
      v20 = &v16[v18 / 2 - 1];
      v21 = (v12 + v18);
      v84 = a8 & 0xFFFFFFF0;
      v79 = a8 & 0xC;
      v82 = 2 * (a8 & 0xFFFFFFFC);
      v22 = a10 & 0xFFFFFFFFFFFFFFFCLL;
      v81 = v22;
      v23 = v12 - 2 * a8 + 16;
      v24 = 2 * a4;
      v83 = a8 & 0xFFFFFFFC;
      v25 = v12 + v18 + 16;
      v80 = -v22;
      while (1)
      {
        v26 = *v16;
        if (a8 < 4)
        {
          v27 = 0;
          v28 = v19;
          goto LABEL_18;
        }

        if (a8 >= 0x10)
        {
          v30 = vdupq_n_s16(v26);
          v31 = v84;
          v32 = v23;
          do
          {
            *(v32 - 1) = v30;
            *v32 = v30;
            v32 += 2;
            v31 -= 16;
          }

          while (v31);
          if (v84 == v13)
          {
            goto LABEL_20;
          }

          v29 = v84;
          if (!v79)
          {
            v28 = (v19 + 2 * v84);
            v27 = v84;
LABEL_18:
            v36 = v13 - v27;
            do
            {
              *v28++ = v26;
              --v36;
            }

            while (v36);
            goto LABEL_20;
          }
        }

        else
        {
          v29 = 0;
        }

        v28 = (v19 + v82);
        v33 = vdup_n_s16(v26);
        v34 = 2 * v29;
        v35 = v29 - v83;
        do
        {
          *(v19 + v34) = v33;
          v34 += 8;
          v35 += 4;
        }

        while (v35);
        v27 = v83;
        if (v83 != v13)
        {
          goto LABEL_18;
        }

LABEL_20:
        memcpy((v19 + 2 * v13), v16, v87);
        v37 = *v20;
        if (a10 >= 4)
        {
          if (a10 < 0x10)
          {
            v40 = 0;
            v13 = v88;
LABEL_28:
            v39 = &v21[v81];
            v44 = vdup_n_s16(v37);
            v45 = v40;
            v46 = v80 + v40;
            do
            {
              *&v21[v45] = v44;
              v45 += 4;
              v46 += 4;
            }

            while (v46);
            v38 = a10 & 0xFFFFFFFFFFFFFFFCLL;
            if (v38 == a10)
            {
              goto LABEL_4;
            }

            goto LABEL_33;
          }

          v41 = vdupq_n_s16(v37);
          v42 = a10 & 0xFFFFFFFFFFFFFFF0;
          v43 = v25;
          v13 = v88;
          do
          {
            *(v43 - 1) = v41;
            *v43 = v41;
            v43 += 2;
            v42 -= 16;
          }

          while (v42);
          if ((a10 & 0xFFFFFFFFFFFFFFF0) == a10)
          {
            goto LABEL_4;
          }

          v40 = a10 & 0xFFFFFFFFFFFFFFF0;
          if ((a10 & 0xCLL) != 0)
          {
            goto LABEL_28;
          }

          v39 = &v21[a10 & 0xFFFFFFFFFFFFFFF0];
          v38 = a10 & 0xFFFFFFFFFFFFFFF0;
        }

        else
        {
          v38 = 0;
          v39 = v21;
          v13 = v88;
        }

LABEL_33:
        v47 = a10 - v38;
        do
        {
          *v39++ = v37;
          --v47;
        }

        while (v47);
LABEL_4:
        v16 += v86;
        v20 += v86;
        v19 += v24;
        v21 = (v21 + v24);
        ++v17;
        v23 += v24;
        v25 += v24;
        a8 = v89;
        if (v17 == a6)
        {
          goto LABEL_55;
        }
      }
    }

    v49 = 0;
    v50 = a8 & 0xFFFFFFF0;
    v85 = a8 & 0xC;
    v51 = a8 & 0xFFFFFFFC;
    v52 = v12 - 2 * a8 + 16;
    v53 = 2 * a4;
    while (1)
    {
      v54 = *v16;
      if (a8 >= 4)
      {
        if (a8 < 0x10)
        {
          v57 = 0;
LABEL_47:
          v56 = &v15[2 * v51];
          v61 = vdup_n_s16(v54);
          v62 = 2 * v57;
          v63 = v57 - v51;
          do
          {
            *&v15[v62] = v61;
            v62 += 8;
            v63 += 4;
          }

          while (v63);
          v55 = v51;
          if (v51 == v13)
          {
            goto LABEL_38;
          }

          goto LABEL_52;
        }

        v58 = vdupq_n_s16(v54);
        v59 = v50;
        v60 = v52;
        do
        {
          *(v60 - 1) = v58;
          *v60 = v58;
          v60 += 2;
          v59 -= 16;
        }

        while (v59);
        if (v50 == v13)
        {
          goto LABEL_38;
        }

        v57 = v50;
        if (v85)
        {
          goto LABEL_47;
        }

        v56 = &v15[2 * v50];
        v55 = v50;
      }

      else
      {
        v55 = 0;
        v56 = v15;
      }

LABEL_52:
      v64 = v13 - v55;
      do
      {
        *v56 = v54;
        v56 += 2;
        --v64;
      }

      while (v64);
LABEL_38:
      memcpy(&v15[2 * v13], v16, v87);
      v13 = v88;
      v16 += v86;
      v15 += v53;
      ++v49;
      v52 += v53;
      a8 = v89;
      if (v49 == a6)
      {
LABEL_55:
        v15 = v77;
        v14 = v78;
        a4 = v75;
        a5 = v76;
        v48 = v73;
        v12 = v74;
        goto LABEL_56;
      }
    }
  }

  v48 = a4;
LABEL_56:
  v65 = v12 + 2 * (a6 - 1) * a4;
  v66 = v12 + 2 * a6 * a4;
  v67 = (v12 + 2 * -(a4 * a7) + 2 * v14);
  v68 = 2 * (a8 + a5 + a10);
  v69 = 2 * v48;
  do
  {
    result = memcpy(v67, v15, v68);
    v67 += v69;
    --a7;
  }

  while (a7);
  if (a9 >= 1)
  {
    v71 = (v65 + 2 * v14);
    v72 = (v66 + 2 * v14);
    do
    {
      result = memcpy(v72, v71, v68);
      v72 += v69;
      --v11;
    }

    while (v11);
  }

  return result;
}

void *copy_and_extend_plane_0(unint64_t a1, int a2, unint64_t a3, int a4, unsigned int a5, int a6, int a7, size_t __len, int a9, int a10, int a11)
{
  v12 = a5;
  v14 = a9;
  v13 = a10;
  v15 = -__len;
  v16 = (a3 - __len);
  if (a6 > 0)
  {
    v17 = a1;
    __b = (a3 - __len);
    v18 = ((a5 - 1) * a11);
    v19 = a5;
    v20 = a4;
    v77 = a2;
    v78 = __len;
    v64 = __len;
    v62 = a4;
    v63 = a3;
    if (a11 == 1)
    {
      v21 = a6;
      v22 = a3;
      v23 = __len;
      do
      {
        memset(&v22[v15], *v17, v23);
        memcpy(v22, v17, v19);
        memset(&v22[v19], v17[v18], a10);
        v23 = v78;
        v17 += v77;
        v22 += v20;
        --v21;
      }

      while (v21);
LABEL_38:
      LODWORD(__len) = v64;
      a4 = v62;
      a3 = v63;
      v12 = a5;
      v13 = a10;
      v16 = __b;
      goto LABEL_39;
    }

    if (a5 <= 0)
    {
      v51 = a6;
      v52 = a3;
      v53 = __len;
      do
      {
        memset((v52 + v15), *v17, v53);
        memset((v52 + v19), v17[v18], a10);
        v53 = v78;
        v17 += v77;
        v52 += v20;
        --v51;
      }

      while (v51);
      goto LABEL_38;
    }

    v61 = -__len;
    v24 = 0;
    v75 = (a1 + v18);
    v74 = (a3 + a5);
    v25 = a5;
    v26 = (a6 - 1);
    v29 = a1 + a2 * v26 + 2 * a5 - 1 > a3 && a3 + a4 * v26 + a5 > a1 || (a4 | a2) < 0;
    v70 = v29;
    v30 = a5 & 0x1F;
    if (!v30)
    {
      v30 = 32;
    }

    v66 = v30;
    v69 = a5 - v30;
    v31 = a5 & 7;
    if (!v31)
    {
      v31 = 8;
    }

    v68 = a5 - v31;
    v76 = (a1 + 32);
    v32 = (a3 + 16);
    v67 = v31 - a5;
    v33 = a3;
    v34 = (a3 - __len);
    v35 = __len;
    while (1)
    {
      v73 = v24;
      memset(v34, *v17, v35);
      if (v12 < 9 || v70)
      {
        v36 = 0;
        v37 = a10;
      }

      else
      {
        v37 = a10;
        if (v12 >= 0x21)
        {
          v39 = v69;
          v40 = v32;
          v41 = v76;
          do
          {
            v42 = v41 - 32;
            v43 = vld2q_s8(v42);
            v44 = vld2q_s8(v41);
            *(v40 - 1) = v43;
            *v40 = v44;
            v41 += 64;
            v40 += 2;
            v39 -= 32;
          }

          while (v39);
          v36 = v69;
          v38 = v69;
          if (v66 < 9)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v38 = 0;
        }

        v45 = 2 * v38;
        v46 = (v33 + v38);
        v47 = v67 + v38;
        do
        {
          v48 = &v17[v45];
          v49 = *vld2_s8(v48).val;
          *v46++ = v49;
          v45 += 16;
          v47 += 8;
        }

        while (v47);
        v36 = v68;
      }

LABEL_32:
      v50 = 2 * v36;
      do
      {
        *(v33 + v36++) = v17[v50];
        v50 += 2;
      }

      while (v25 != v36);
      memset(v74, *v75, v37);
      v17 += v77;
      v75 += v77;
      v34 += v20;
      v74 += v20;
      v24 = v73 + 1;
      v76 += v77;
      v32 = (v32 + v20);
      v33 += v20;
      v12 = a5;
      v35 = v78;
      if (v73 + 1 == a6)
      {
        v15 = v61;
        v13 = a10;
        v16 = __b;
        LODWORD(__len) = v64;
        a4 = v62;
        a3 = v63;
        goto LABEL_39;
      }
    }
  }

  v20 = a4;
LABEL_39:
  v54 = a3 + (a6 - 1) * a4;
  v55 = a3 + a6 * a4;
  v56 = __len + v12 + v13;
  v57 = (a3 + -(a4 * a7) + v15);
  v58 = v56;
  do
  {
    result = memcpy(v57, v16, v58);
    v57 += v20;
    --a7;
  }

  while (a7);
  if (a9 >= 1)
  {
    v60 = (v55 + v15);
    do
    {
      result = memcpy(v60, (v54 + v15), v58);
      v60 += v20;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t vp9_alloc_internal_frame_buffers(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + v4);
      if (v6)
      {
        free(*(v6 - 8));
        v3 = *(a1 + 8);
        v2 = *a1;
      }

      *(v3 + v4) = 0;
      ++v5;
      v4 += 24;
    }

    while (v5 < v2);
    goto LABEL_7;
  }

  if (v3)
  {
LABEL_7:
    free(*(v3 - 8));
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  v7 = malloc_type_malloc(0x197uLL, 0xD93B561uLL);
  if (v7 && (v8 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF0), *(v8 - 1) = v7, v8))
  {
    result = 0;
    v8[22] = 0u;
    v8[23] = 0u;
    v8[20] = 0u;
    v8[21] = 0u;
    v8[18] = 0u;
    v8[19] = 0u;
    v8[16] = 0u;
    v8[17] = 0u;
    v8[14] = 0u;
    v8[15] = 0u;
    v8[12] = 0u;
    v8[13] = 0u;
    v8[10] = 0u;
    v8[11] = 0u;
    v8[8] = 0u;
    v8[9] = 0u;
    v8[6] = 0u;
    v8[7] = 0u;
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    *(a1 + 8) = v8;
    *a1 = 16;
  }

  else
  {
    *(a1 + 8) = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t vp9_get_frame_buffer(unsigned int *a1, unint64_t a2, unint64_t *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if (v3 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    v5 = (*(a1 + 1) + 16);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (!v6)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (v4 != v3)
  {
    v8 = *(a1 + 1);
    v9 = v4;
    v10 = (v8 + 24 * v4);
    v11 = *v10;
    v12 = v10[1];
    if (v12 >= a2)
    {
LABEL_17:
      result = 0;
      v21 = v8 + 24 * v9;
      *a3 = v11;
      a3[1] = v12;
      *(v21 + 16) = 1;
      a3[2] = v21;
      return result;
    }

    v13 = a3;
    if (v11)
    {
      v14 = *(v11 - 8);
      v15 = a1;
      v16 = a2;
      free(v14);
      a1 = v15;
      a2 = v16;
    }

    if (a2 <= 0xFFFFFFFFE9)
    {
      v17 = a1;
      v12 = a2;
      v18 = malloc_type_malloc(a2 + 23, 0xD93B561uLL);
      a1 = v17;
      if (v18)
      {
        v11 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v11 - 8) = v18;
        if (v11)
        {
          v19 = a1;
          bzero(((v18 + 23) & 0xFFFFFFFFFFFFFFF0), v12);
          v8 = *(v19 + 1);
          v20 = (v8 + 24 * v9);
          *v20 = v11;
          v20[1] = v12;
          a3 = v13;
          goto LABEL_17;
        }
      }
    }

    *(*(a1 + 1) + 24 * v9) = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t vp9_release_frame_buffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    *(v2 + 16) = 0;
  }

  return 0;
}

unsigned __int8 *vp9_scale_and_extend_frame_c(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v63 = *(a1 + 56);
  v64 = *(a1 + 64);
  v65 = *(a1 + 72);
  v6 = *(a1 + 16);
  v95 = *(a1 + 36);
  v7 = *(a2 + 56);
  v70 = *(a2 + 72);
  v8 = *(a2 + 12);
  v9 = *(a2 + 16);
  v97 = *(a2 + 36);
  v77 = v8;
  v78 = *(&vp9_filter_kernels + a3);
  v10 = *(a2 + 8);
  v96 = a4;
  v86 = v9;
  v91 = v6;
  if (3 * v5 == 4 * v10 && 3 * v4 == 4 * v8)
  {
    v67 = *(a2 + 64);
    v11 = *(a2 + 28);
    v60 = a2;
    v83 = *(a2 + 32);
    if (v8 >= 1 && v10 >= 1)
    {
      v13 = 0;
      v71 = 3 * v9;
      do
      {
        v14 = 0;
        v15 = 0;
        v79 = v13;
        v16 = v63 + 4 * v13 / 3u * v6;
        v73 = v7;
        v17 = v7;
        do
        {
          vpx_convolve8_c(v16 + v14 / 3uLL, v6, v17, v86, v78, a4, 21, a4, 21, 3, 3);
          v6 = v91;
          v15 += 3;
          v17 += 3;
          v14 += 12;
        }

        while (v10 > v15);
        v13 = v79 + 3;
        v7 = v73 + v71;
      }

      while (v79 + 3 < v77);
    }

    v18 = v95;
    v19 = v67;
    if (v83 >= 1 && v11 >= 1)
    {
      v20 = 0;
      v92 = 3 * v97;
      do
      {
        v21 = 0;
        v22 = 0;
        v87 = v20;
        v23 = v64 + (4 * v20 / 3u * v18);
        v68 = v19;
        do
        {
          vpx_convolve8_c(v23 + v21 / 3uLL, v18, v19, v97, v78, v96, 21, v96, 21, 3, 3);
          v18 = v95;
          v22 += 3;
          v19 += 3;
          v21 += 12;
        }

        while (v11 > v22);
        v20 = v87 + 3;
        v19 = v68 + v92;
      }

      while (v87 + 3 < v83);
      v24 = 0;
      do
      {
        v25 = 0;
        v26 = 0;
        v88 = v24;
        v27 = v65 + (4 * v24 / 3u * v18);
        v28 = v70;
        do
        {
          vpx_convolve8_c(v27 + v25 / 3uLL, v18, v28, v97, v78, v96, 21, v96, 21, 3, 3);
          v18 = v95;
          v26 += 3;
          v28 += 3;
          v25 += 12;
        }

        while (v11 > v26);
        v24 = v88 + 3;
        v70 += v92;
      }

      while (v88 + 3 < v83);
    }

LABEL_36:
    v57 = v60[26];

    return extend_frame(v60, v57);
  }

  v29 = 16 * v5;
  v30 = (16 * v5 / v10);
  if (v30 <= 64)
  {
    v62 = 16 * v4;
    v31 = (16 * v4 / v8);
    if (v31 <= 64)
    {
      v60 = a2;
      if (v10 >= 1 && v8 >= 1)
      {
        v69 = *(a2 + 64);
        v32 = 0;
        v61 = 16 * v9;
        v59 = *(a1 + 8);
        v33 = v5 << 8;
        v72 = *(a1 + 12);
        do
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v84 = v62 * v32 / v8 + v96;
          v66 = v32;
          v80 = v63 + v4 * v32 / v8 * v6;
          v74 = v7;
          v37 = v7;
          do
          {
            v38 = v30;
            v39 = v31;
            vpx_scaled_2d_neon(v80 + v34 / v10, v6, v37, v86, v78, ((v35 / v10) + v96) & 0xF, v30, v84 & 0xF, v31, 16, 16);
            v6 = v91;
            v31 = v39;
            v30 = v38;
            v36 += 16;
            v37 += 16;
            v35 += v33;
            v34 += v29;
          }

          while (v10 > v36);
          v32 = v66 + 16;
          v8 = v77;
          v7 = v74 + v61;
          v4 = v72;
        }

        while (v66 + 16 < v77);
        v40 = 0;
        v41 = 0;
        v85 = 8 * v72;
        v42 = (8 * v59);
        v43 = (v59 << 7);
        v44 = v95;
        do
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v81 = v40;
          v48 = v69 + v40;
          v93 = v85 * v41 / v8 + v96;
          v75 = v41;
          v89 = v64 + (v4 * (v41 >> 1)) / v8 * v44;
          do
          {
            v49 = v42;
            v50 = v43;
            vpx_scaled_2d_neon(v89 + v46 / v10, v44, v48, v97, v78, ((v45 / v10) + v96) & 0xF, v38, v93 & 0xF, v31, 8, 8);
            v43 = v50;
            v42 = v49;
            LODWORD(v31) = v39;
            v44 = v95;
            v47 += 16;
            v48 += 8;
            v46 += v49;
            v45 += v50;
          }

          while (v10 > v47);
          v8 = v77;
          v41 = v75 + 16;
          v40 = v81 + 8 * v97;
          v4 = v72;
        }

        while (v75 + 16 < v77);
        v51 = 0;
        v52 = 0;
        do
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v82 = v51;
          v56 = v70 + v51;
          v94 = v85 * v52 / v8 + v96;
          v76 = v52;
          v90 = v65 + (v4 * (v52 >> 1)) / v8 * v44;
          do
          {
            vpx_scaled_2d_neon(v90 + v54 / v10, v44, v56, v97, v78, ((v53 / v10) + v96) & 0xF, v38, v94 & 0xF, v31, 8, 8);
            LODWORD(v31) = v39;
            v44 = v95;
            v55 += 16;
            v56 += 8;
            v54 += v49;
            v53 += v50;
          }

          while (v10 > v55);
          v8 = v77;
          v52 = v76 + 16;
          v51 = v82 + 8 * v97;
          v4 = v72;
        }

        while (v76 + 16 < v77);
      }

      goto LABEL_36;
    }
  }

  return vp9_scale_and_extend_frame_nonnormative(a1, a2, 8);
}

unsigned __int8 *vp9_scale_and_extend_frame_neon(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int8x8_t a5, int8x8_t a6)
{
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  v12 = *(a2 + 8);
  v11 = *(a2 + 12);
  v14 = *(a2 + 28);
  v13 = *(a2 + 32);
  if (v10 == 2 * v12 && 2 * v11 == v9)
  {
    if (a4)
    {
      if (a3 != 3)
      {
        v144 = a3;
        v145 = malloc_type_malloc((((v12 + 3) & 0x1FFFFFFC) * ((v9 + 13) & 0xFFFFFFF8)), 0x100004077774924uLL);
        a3 = v144;
        if (!v145)
        {
          goto LABEL_77;
        }

        v30 = v145;
        v146 = 16 * a4;
        v147 = a3;
        scale_plane_2_to_1_general(*(a1 + 56), *(a1 + 16), *(a2 + 56), *(a2 + 16), v12, v11, v145, *(*(&vp9_filter_kernels + a3) + v146));
        scale_plane_2_to_1_general(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), v14, v13, v30, *(*(&vp9_filter_kernels + v147) + v146));
        scale_plane_2_to_1_general(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), v14, v13, v30, *(*(&vp9_filter_kernels + v147) + v146));
        goto LABEL_81;
      }

      v46 = off_2808D3630 + 16 * a4;
      v47 = *(a1 + 56);
      v48 = *(a1 + 16);
      v49 = *(a2 + 56);
      v50 = (v12 + 15) & 0xFFFFFFF0;
      v51 = &v47[v48];
      a6.i8[0] = v46[6];
      a5.i8[0] = v46[8];
      v52 = (2 * (v48 - v50));
      v53 = (*(a2 + 16) - v50);
      v54 = -v50;
      v55 = vdupq_lane_s8(a6, 0);
      v56 = vdupq_lane_s8(a5, 0);
      do
      {
        v57 = v49;
        v49 = (v49 + v53);
        v58 = v54;
        do
        {
          v201 = vld2q_s8(v47);
          v47 += 32;
          v204 = vld2q_s8(v51);
          v51 += 32;
          *v57++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v204.val[1].i8, *v56.i8), *v204.val[0].i8, *v55.i8), 7uLL), *v56.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v201.val[1].i8, *v56.i8), *v201.val[0].i8, *v55.i8), 7uLL), *v55.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v204.val[1], v56), v204.val[0], v55), 7uLL), *v56.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v201.val[1], v56), v201.val[0], v55), 7uLL), *v55.i8), 7uLL);
          ++v49;
          v58 += 16;
        }

        while (v58);
        v47 += v52;
        v51 += v52;
        --v11;
      }

      while (v11);
      v59 = *(a1 + 64);
      v60 = *(a1 + 36);
      v61 = *(a2 + 64);
      v62 = (v14 + 15) & 0xFFFFFFF0;
      v63 = &v59[v60];
      v64 = (2 * (v60 - v62));
      v65 = (*(a2 + 36) - v62);
      v66 = vdupq_lane_s8(a6, 0);
      v67 = vdupq_lane_s8(a5, 0);
      v68 = v13;
      do
      {
        v69 = v61;
        v61 = (v61 + v65);
        v70 = -v62;
        do
        {
          v202 = vld2q_s8(v59);
          v59 += 32;
          v205 = vld2q_s8(v63);
          v63 += 32;
          *v69++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v205.val[1].i8, *v67.i8), *v205.val[0].i8, *v66.i8), 7uLL), *v67.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v202.val[1].i8, *v67.i8), *v202.val[0].i8, *v66.i8), 7uLL), *v66.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v205.val[1], v67), v205.val[0], v66), 7uLL), *v67.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v202.val[1], v67), v202.val[0], v66), 7uLL), *v66.i8), 7uLL);
          ++v61;
          v70 += 16;
        }

        while (v70);
        v59 += v64;
        v63 += v64;
        --v68;
      }

      while (v68);
      v71 = *(a1 + 72);
      v72 = *(a1 + 36);
      v73 = *(a2 + 72);
      v74 = &v71[v72];
      v75 = (2 * (v72 - v62));
      v76 = (*(a2 + 36) - v62);
      v77 = vdupq_lane_s8(a6, 0);
      v78 = vdupq_lane_s8(a5, 0);
      do
      {
        v79 = v73;
        v73 = (v73 + v76);
        v80 = -((v14 + 15) & 0xFFFFFFF0);
        do
        {
          v200 = vld2q_s8(v71);
          v71 += 32;
          v203 = vld2q_s8(v74);
          v74 += 32;
          *v79++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v203.val[1].i8, *v78.i8), *v203.val[0].i8, *v77.i8), 7uLL), *v78.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v200.val[1].i8, *v78.i8), *v200.val[0].i8, *v77.i8), 7uLL), *v77.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v203.val[1], v78), v203.val[0], v77), 7uLL), *v78.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v200.val[1], v78), v200.val[0], v77), 7uLL), *v77.i8), 7uLL);
          ++v73;
          v80 += 16;
        }

        while (v80);
        v71 += v75;
        v74 += v75;
        --v13;
      }

      while (v13);
    }

    else
    {
      v116 = *(a1 + 56);
      v117 = *(a2 + 56);
      v118 = (v12 + 15) & 0xFFFFFFF0;
      v119 = (2 * (*(a1 + 16) - v118));
      v120 = (*(a2 + 16) - v118);
      v121 = -v118;
      do
      {
        v122 = v116;
        v123 = v117;
        v117 = (v117 + v120);
        v116 += v119;
        v124 = v121;
        do
        {
          v125 = vld2q_s8(v122);
          v122 += 32;
          *v123++ = v125;
          ++v117;
          v116 += 32;
          v124 += 16;
        }

        while (v124);
        --v11;
      }

      while (v11);
      v126 = *(a1 + 64);
      v127 = *(a2 + 64);
      v128 = (v14 + 15) & 0xFFFFFFF0;
      v129 = (2 * (*(a1 + 36) - v128));
      v130 = (*(a2 + 36) - v128);
      v131 = v13;
      do
      {
        v132 = v126;
        v133 = v127;
        v127 = (v127 + v130);
        v126 += v129;
        v134 = -v128;
        do
        {
          v135 = vld2q_s8(v132);
          v132 += 32;
          *v133++ = v135;
          ++v127;
          v126 += 32;
          v134 += 16;
        }

        while (v134);
        --v131;
      }

      while (v131);
      v136 = *(a1 + 72);
      v137 = *(a2 + 72);
      v138 = (2 * (*(a1 + 36) - v128));
      v139 = (*(a2 + 36) - v128);
      do
      {
        v140 = v136;
        v141 = v137;
        v137 = (v137 + v139);
        v136 += v138;
        v142 = -((v14 + 15) & 0xFFFFFFF0);
        do
        {
          v143 = vld2q_s8(v140);
          v140 += 32;
          *v141++ = v143;
          ++v137;
          v136 += 32;
          v142 += 16;
        }

        while (v142);
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v16 = 4 * v11;
    if (4 * v12 != v10 || v16 != v9)
    {
      v18 = 3 * v9;
      if (4 * v12 == 3 * v10 && v16 == v18)
      {
        v20 = a3;
        v21 = malloc_type_malloc(((v16 / 3 + 14) & 0x7FFFFFF8) * (6 * ((v12 + 5) / 6) + 2), 0x100004077774924uLL);
        a3 = v20;
        if (v21)
        {
          v30 = v21;
          v31 = *(a1 + 56);
          v32 = *(a1 + 16);
          v33 = *(a2 + 16);
          if (a3 == 3)
          {
            scale_plane_4_to_3_bilinear(v31, v32, *(a2 + 56), v33, v12, v11, a4, v30, *&v22, *&v23, *&v24, *&v25, *&v26, *&v27);
            scale_plane_4_to_3_bilinear(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), v14, v13, a4, v30, v34, v35, v36, v37, v38, v39);
            scale_plane_4_to_3_bilinear(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), v14, v13, a4, v30, v40, v41, v42, v43, v44, v45);
          }

          else
          {
            v181 = a3;
            scale_plane_4_to_3_general(v31, v32, *(a2 + 56), v33, v12, v11, *(&vp9_filter_kernels + a3), a4, v22, v23, v24, v25, v26, v27, v28, v29, v30);
            scale_plane_4_to_3_general(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), v14, v13, *(&vp9_filter_kernels + v181), a4, v182, v183, v184, v185, v186, v187, v188, v189, v30);
            scale_plane_4_to_3_general(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), v14, v13, *(&vp9_filter_kernels + v181), a4, v190, v191, v192, v193, v194, v195, v196, v197, v30);
          }

          goto LABEL_81;
        }
      }

LABEL_77:

      return vp9_scale_and_extend_frame_c(a1, a2, a3, a4);
    }

    if (a4)
    {
      if (a3 == 3)
      {
        v81 = off_2808D3630 + 16 * a4;
        v82 = *(a1 + 56);
        v83 = *(a1 + 16);
        v84 = *(a2 + 56);
        v85 = (v12 + 15) & 0xFFFFFFF0;
        v86 = &v82[v83];
        a6.i8[0] = v81[6];
        a5.i8[0] = v81[8];
        v87 = (4 * (v83 - v85));
        v88 = (*(a2 + 16) - v85);
        v89 = -v85;
        v90 = vdupq_lane_s8(a6, 0);
        v91 = vdupq_lane_s8(a5, 0);
        do
        {
          v92 = v84;
          v84 = (v84 + v88);
          v93 = v89;
          do
          {
            v207 = vld4q_s8(v82);
            v82 += 64;
            v209 = vld4q_s8(v86);
            v86 += 64;
            *v92++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v209.val[1].i8, *v91.i8), *v209.val[0].i8, *v90.i8), 7uLL), *v91.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v207.val[1].i8, *v91.i8), *v207.val[0].i8, *v90.i8), 7uLL), *v90.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v209.val[1], v91), v209.val[0], v90), 7uLL), *v91.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v207.val[1], v91), v207.val[0], v90), 7uLL), *v90.i8), 7uLL);
            ++v84;
            v93 += 16;
          }

          while (v93);
          v82 += v87;
          v86 += v87;
          --v11;
        }

        while (v11);
        v94 = *(a1 + 64);
        v95 = *(a1 + 36);
        v96 = *(a2 + 64);
        v97 = (v14 + 15) & 0xFFFFFFF0;
        v98 = &v94[v95];
        v99 = (4 * (v95 - v97));
        v100 = (*(a2 + 36) - v97);
        v101 = vdupq_lane_s8(a6, 0);
        v102 = vdupq_lane_s8(a5, 0);
        v103 = v13;
        do
        {
          v104 = v96;
          v96 = (v96 + v100);
          v105 = -v97;
          do
          {
            v208 = vld4q_s8(v94);
            v94 += 64;
            v210 = vld4q_s8(v98);
            v98 += 64;
            *v104++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v210.val[1].i8, *v102.i8), *v210.val[0].i8, *v101.i8), 7uLL), *v102.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v208.val[1].i8, *v102.i8), *v208.val[0].i8, *v101.i8), 7uLL), *v101.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v210.val[1], v102), v210.val[0], v101), 7uLL), *v102.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v208.val[1], v102), v208.val[0], v101), 7uLL), *v101.i8), 7uLL);
            ++v96;
            v105 += 16;
          }

          while (v105);
          v94 += v99;
          v98 += v99;
          --v103;
        }

        while (v103);
        v106 = *(a1 + 72);
        v107 = *(a1 + 36);
        v108 = *(a2 + 72);
        v109 = &v106[v107];
        v110 = (4 * (v107 - v97));
        v111 = (*(a2 + 36) - v97);
        v112 = vdupq_lane_s8(a6, 0);
        v113 = vdupq_lane_s8(a5, 0);
        do
        {
          v114 = v108;
          v108 = (v108 + v111);
          v115 = -((v14 + 15) & 0xFFFFFFF0);
          do
          {
            v206 = vld4q_s8(v106);
            v106 += 64;
            v211 = vld4q_s8(v109);
            v109 += 64;
            *v114++ = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_u8(vmull_u8(*v211.val[1].i8, *v113.i8), *v211.val[0].i8, *v112.i8), 7uLL), *v113.i8), vrshrn_n_s16(vmlal_u8(vmull_u8(*v206.val[1].i8, *v113.i8), *v206.val[0].i8, *v112.i8), 7uLL), *v112.i8), 7uLL), vmlal_u8(vmull_u8(vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v211.val[1], v113), v211.val[0], v112), 7uLL), *v113.i8), vrshrn_n_s16(vmlal_high_u8(vmull_high_u8(v206.val[1], v113), v206.val[0], v112), 7uLL), *v112.i8), 7uLL);
            ++v108;
            v115 += 16;
          }

          while (v115);
          v106 += v110;
          v109 += v110;
          --v13;
        }

        while (v13);
        goto LABEL_82;
      }

      v176 = a3;
      v177 = malloc_type_malloc((((v12 + 1) & 0x1FFFFFFE) * ((v9 + 13) & 0xFFFFFFF8)), 0x100004077774924uLL);
      a3 = v176;
      if (!v177)
      {
        goto LABEL_77;
      }

      v30 = v177;
      v178 = 16 * a4;
      v179 = a3;
      scale_plane_4_to_1_general(*(a1 + 56), *(a1 + 16), *(a2 + 56), *(a2 + 16), v12, v11, v177, *(*(&vp9_filter_kernels + a3) + v178));
      scale_plane_4_to_1_general(*(a1 + 64), *(a1 + 36), *(a2 + 64), *(a2 + 36), v14, v13, v30, *(*(&vp9_filter_kernels + v179) + v178));
      scale_plane_4_to_1_general(*(a1 + 72), *(a1 + 36), *(a2 + 72), *(a2 + 36), v14, v13, v30, *(*(&vp9_filter_kernels + v179) + v178));
LABEL_81:
      free(v30);
      goto LABEL_82;
    }

    v148 = *(a1 + 56);
    v149 = *(a2 + 56);
    v150 = (v12 + 15) & 0xFFFFFFF0;
    v151 = (4 * (*(a1 + 16) - v150));
    v152 = (*(a2 + 16) - v150);
    v153 = -v150;
    do
    {
      v154 = v148;
      v155 = v149;
      v149 = (v149 + v152);
      v148 += v151;
      v156 = v153;
      do
      {
        v157 = vld4q_s8(v154);
        v154 += 64;
        *v155++ = v157;
        ++v149;
        v148 += 64;
        v156 += 16;
      }

      while (v156);
      --v11;
    }

    while (v11);
    v158 = *(a1 + 64);
    v159 = *(a2 + 64);
    v160 = (v14 + 15) & 0xFFFFFFF0;
    v161 = (4 * (*(a1 + 36) - v160));
    v162 = (*(a2 + 36) - v160);
    v163 = v13;
    do
    {
      v164 = v158;
      v165 = v159;
      v159 = (v159 + v162);
      v158 += v161;
      v166 = -v160;
      do
      {
        v167 = vld4q_s8(v164);
        v164 += 64;
        *v165++ = v167;
        ++v159;
        v158 += 64;
        v166 += 16;
      }

      while (v166);
      --v163;
    }

    while (v163);
    v168 = *(a1 + 72);
    v169 = *(a2 + 72);
    v170 = (4 * (*(a1 + 36) - v160));
    v171 = (*(a2 + 36) - v160);
    do
    {
      v172 = v168;
      v173 = v169;
      v169 = (v169 + v171);
      v168 += v170;
      v174 = -((v14 + 15) & 0xFFFFFFF0);
      do
      {
        v175 = vld4q_s8(v172);
        v172 += 64;
        *v173++ = v175;
        ++v169;
        v168 += 64;
        v174 += 16;
      }

      while (v174);
      --v13;
    }

    while (v13);
  }

LABEL_82:
  v198 = *(a2 + 104);

  return extend_frame(a2, v198);
}

uint64_t scale_plane_2_to_1_general(uint64_t a1, int a2, int8x8_t *a3, int a4, int a5, int a6, uint8x8_t *a7, int16x8_t a8)
{
  v22 = (a5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = (2 * a6 + 13) & 0xFFFFFFF8;
  v24 = -3 * a2 - 5;
  v25 = 8 * a2 - 2 * v22;
  v26 = vdupq_lane_s16(*a8.i8, 0);
  v27 = vdupq_lane_s16(*a8.i8, 1);
  v28 = vdupq_lane_s16(*a8.i8, 2);
  v29 = vdupq_laneq_s16(a8, 5);
  v30 = vdupq_laneq_s16(a8, 6);
  v31 = vdupq_laneq_s16(a8, 7);
  v32 = vdupq_lane_s16(*a8.i8, 3);
  v33 = a2;
  v34 = vdupq_laneq_s16(a8, 4);
  v35 = 6 * v22;
  v36 = 7 * v22;
  v37 = a1 + v24;
  v38 = a7;
  do
  {
    v39 = 0;
    v40 = v37 + v25;
    v41 = (v37 + 8);
    v8.i64[0] = *(v37 + 2);
    v42 = (v37 + 2 + v33);
    v9.i64[0] = *v42;
    v43 = (v42 + v33);
    v10.i64[0] = *v43;
    v44 = (v43 + v33);
    v11.i64[0] = *v44;
    v45 = (v44 + v33);
    v12.i64[0] = *v45;
    v46 = (v45 + v33);
    v13.i64[0] = *v46;
    v47 = (v46 + v33);
    v14.i64[0] = *v47;
    v15.i64[0] = *(v47 + v33);
    v48 = vzip1q_s8(v8, v9);
    v49 = vzip1q_s8(v10, v11);
    v10 = vzip1q_s8(v12, v13);
    v50 = vzip1q_s8(v14, v15);
    v12 = vzip1q_s16(v48, v49);
    v13 = vzip2q_s16(v48, v49);
    v51 = vzip1q_s16(v10, v50);
    v8 = vzip1q_s32(v12, v51);
    v9 = vzip2q_s32(v12, v51);
    v11 = vzip1q_s32(v13, vzip2q_s16(v10, v50));
    v10.i64[0] = vextq_s8(v8, v8, 8uLL).u64[0];
    v12.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
    v13.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
    v37 = v40;
    do
    {
      v14.i64[0] = *v41;
      v15.i64[0] = *(v41 + v33);
      v52 = (v41 + v33 + v33);
      v16.i64[0] = *v52;
      v17.i64[0] = *(v52 + v33);
      v53 = (v52 + v33 + v33);
      v18.i64[0] = *v53;
      v54 = (v53 + v33);
      v19.i64[0] = *v54;
      v55 = (v54 + v33);
      v20.i64[0] = *v55;
      v21.i64[0] = *(v55 + v33);
      v56 = vzip1q_s8(v14, v15);
      v57 = vzip1q_s8(v16, v17);
      v58 = vzip1q_s8(v18, v19);
      v59 = vzip1q_s8(v20, v21);
      v60 = vzip1q_s16(v56, v57);
      v61 = vzip2q_s16(v56, v57);
      v62 = vzip1q_s16(v58, v59);
      v63 = vzip1q_s32(v60, v62);
      v64 = vzip2q_s16(v58, v59);
      v65 = vmovl_u8(*v8.i8);
      v8 = vzip2q_s32(v60, v62);
      v66 = vmovl_u8(*v9.i8);
      v9 = vzip1q_s32(v61, v64);
      v67 = vmovl_u8(*v11.i8);
      v11 = vzip2q_s32(v61, v64);
      v68 = vmovl_u8(*v10.i8);
      v10 = vextq_s8(v8, v8, 8uLL);
      v69 = vmovl_u8(*v12.i8);
      v70 = vmovl_u8(*v13.i8);
      v71 = vmovl_u8(*v63.i8);
      v19 = vmovl_high_u8(v63);
      v21 = vmovl_u8(*v8.i8);
      v72 = vmovl_high_u8(v8);
      v73 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v28, v67), v27, v69), v26, v66), v29, v19), v30, v21), v31, v72);
      v74 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v29, v70), v28, v66), v27, v68), v26, v65), v30, v71), v31, v19), vmulq_s16(v32, v69)), vmulq_s16(v34, v67));
      v17 = vmovl_u8(*v9.i8);
      v20 = vmovl_high_u8(v9);
      *v74.i8 = vqrshrun_n_s16(v74, 7uLL);
      v14 = vqaddq_s16(vqaddq_s16(v73, vmulq_s16(v32, v70)), vmulq_s16(v34, v71));
      v75 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v27, v70), v26, v67), v28, v71), v29, v72), v30, v17), v31, v20), vmulq_s16(v32, v19));
      v18 = vmovl_u8(*v11.i8);
      *v14.i8 = vqrshrun_n_s16(v14, 7uLL);
      v76 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v26, v71), v27, v19), v28, v21), v29, v20), v30, v18), v31, vmovl_high_u8(v11)), vmulq_s16(v32, v72));
      v16 = vmulq_s16(v34, v17);
      *v75.i8 = vqrshrun_n_s16(vqaddq_s16(v75, vmulq_s16(v34, v21)), 7uLL);
      v15 = vqaddq_s16(v76, v16);
      *v15.i8 = vqrshrun_n_s16(v15, 7uLL);
      *v16.i8 = vtrn1_s8(*v74.i8, *v14.i8);
      *v74.i8 = vtrn2_s8(*v74.i8, *v14.i8);
      *v14.i8 = vtrn1_s8(*v75.i8, *v15.i8);
      *v75.i8 = vtrn2_s8(*v75.i8, *v15.i8);
      *v15.i8 = vtrn1_s16(*v16.i8, *v14.i8);
      *v14.i8 = vtrn2_s16(*v16.i8, *v14.i8);
      *v16.i8 = vtrn1_s16(*v74.i8, *v75.i8);
      *v17.i8 = vtrn2_s16(*v74.i8, *v75.i8);
      v38->i32[v39 / 4] = v15.i32[0];
      *(v38->i32 + v22 + v39) = v16.i32[0];
      *(v38->i32 + 2 * v22 + v39) = v14.i32[0];
      *(v38->i32 + 3 * v22 + v39) = v17.i32[0];
      v38->i32[v22 + v39 / 4] = v15.i32[1];
      *(v38->i32 + 5 * v22 + v39) = v16.i32[1];
      v12 = vextq_s8(v9, v9, 8uLL);
      v77 = (v38 + v36 + v39);
      v37 += 8;
      *(v38->i32 + v35 + v39) = v14.i32[1];
      ++v41;
      v13 = vextq_s8(v11, v11, 8uLL);
      v39 += 4;
      v77->i32[0] = v17.i32[1];
    }

    while (((a5 + 3) & 0xFFFFFFFC) != v39);
    v38 = (v38 + v36 + v39);
    v23 -= 8;
  }

  while (v23);
  v78 = (a5 + 7) & 0xFFFFFFF8;
  v79 = (a6 + 3) & 0xFFFFFFFC;
  v80 = v79 * a4;
  result = 3 * v22;
  v82 = -v79;
  v83 = 8 - v80;
  do
  {
    v84 = *a7;
    v85 = *(a7 + v22);
    v86 = (a7 + v22 + v22);
    v87 = *v86;
    v88 = (v86 + v22);
    v89 = *v88;
    v90 = (v88 + v22);
    v91 = *v90;
    v92 = *(v90 + v22);
    v93 = (a7 + v35);
    v94 = v82;
    do
    {
      v95 = *(v93 + v22);
      v96 = vmovl_u8(v84);
      v84 = *(v93 + 2 * v22);
      v97 = vmovl_u8(v85);
      v85 = *(v93 + 3 * v22);
      v98 = vmovl_u8(v87);
      v87 = *(v93 + 4 * v22);
      v99 = vmovl_u8(v89);
      v89 = *(v93 + 5 * v22);
      v100 = vmovl_u8(v91);
      v91 = *(v93 + 6 * v22);
      v101 = vmovl_u8(v92);
      v92 = *(v93 + 7 * v22);
      v102 = vmovl_u8(*v93);
      v93 += v22;
      v103 = vmovl_u8(v95);
      v104 = vmovl_u8(v84);
      v105 = vmovl_u8(v85);
      v106 = vmovl_u8(v87);
      v107 = vmovl_u8(v89);
      *a3 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v29, v101), v28, v98), v27, v97), v26, v96), v30, v102), v31, v103), vmulq_s16(v32, v99)), vmulq_s16(v34, v100)), 7uLL);
      *(a3 + a4) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v28, v100), v27, v99), v26, v98), v29, v103), v30, v104), v31, v105), vmulq_s16(v32, v101)), vmulq_s16(v34, v102)), 7uLL);
      *(a3 + 2 * a4) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v27, v101), v26, v100), v28, v102), v29, v105), v30, v106), v31, v107), vmulq_s16(v32, v103)), vmulq_s16(v34, v104)), 7uLL);
      *(a3 + 3 * a4) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v26, v102), v27, v103), v28, v104), v29, v107), v30, vmovl_u8(v91)), v31, vmovl_u8(v92)), vmulq_s16(v32, v105)), vmulq_s16(v34, v106)), 7uLL);
      a3 = (a3 + 4 * a4);
      v94 += 4;
    }

    while (v94);
    a7 = (v93 + 8 - ((2 * (a6 + 3)) | 6) * v22);
    a3 = (a3 + v83);
    v78 -= 8;
  }

  while (v78);
  return result;
}

uint64_t scale_plane_4_to_1_general(uint64_t a1, int a2, int8x8_t *a3, int a4, int a5, int a6, uint8x8_t *a7, int16x8_t a8)
{
  v16 = (a5 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = (4 * a6 + 13) & 0xFFFFFFF8;
  v18 = -3 * a2 - 7;
  v19 = 8 * a2 - 4 * v16;
  v20 = vdupq_lane_s16(*a8.i8, 0);
  v21 = vdupq_lane_s16(*a8.i8, 1);
  v22 = vdupq_lane_s16(*a8.i8, 2);
  v23 = vdupq_laneq_s16(a8, 5);
  v24 = vdupq_laneq_s16(a8, 6);
  v25 = vdupq_laneq_s16(a8, 7);
  v26 = vdupq_lane_s16(*a8.i8, 3);
  v27 = a2;
  v28 = 2 * v16;
  v29 = vdupq_laneq_s16(a8, 4);
  v30 = 7 * v16;
  v31 = a1 + v18;
  v32 = a7;
  do
  {
    v33 = 0;
    v34 = v31 + v19;
    v35 = (v31 + 8);
    v36 = *(v31 + 4);
    v37 = (v31 + 4 + v27);
    v38 = *v37;
    v39 = (v37 + v27);
    v40 = *v39;
    v41 = (v39 + v27);
    v42 = *v41;
    v43 = (v41 + v27);
    v44 = *v43;
    v45 = (v43 + v27);
    v46 = *v45;
    v47 = (v45 + v27);
    v48 = vzip1_s32(v36, v44);
    v49 = vzip1_s32(v38, v46);
    v50 = vzip1_s32(v40, *v47);
    v51 = vzip1_s32(v42, *(v47 + v27));
    v52 = vtrn1_s16(v48, v50);
    v53 = vtrn2_s16(v48, v50);
    v54 = vtrn1_s16(v49, v51);
    v55 = vtrn2_s16(v49, v51);
    *v56.i8 = vtrn1_s8(v52, v54);
    v57 = vtrn2_s8(v52, v54);
    *v58.i8 = vtrn1_s8(v53, v55);
    v59 = vtrn2_s8(v53, v55);
    v31 = v34;
    do
    {
      v8.i64[0] = *v35;
      v9.i64[0] = *(v35 + v27);
      v60 = (v35 + v27 + v27);
      v10.i64[0] = *v60;
      v61 = (v60 + v27);
      v11.i64[0] = *v61;
      v62 = (v61 + v27);
      v12.i64[0] = *v62;
      v63 = (v62 + v27);
      v13.i64[0] = *v63;
      v64 = (v63 + v27);
      v14.i64[0] = *v64;
      v15.i64[0] = *(v64 + v27);
      v65 = vzip1q_s8(v8, v9);
      v66 = vzip1q_s8(v10, v11);
      v67 = vzip1q_s8(v12, v13);
      v68 = vzip1q_s8(v14, v15);
      v69 = vzip1q_s16(v65, v66);
      v70 = vzip2q_s16(v65, v66);
      v71 = vzip1q_s16(v67, v68);
      v72 = vzip2q_s16(v67, v68);
      v73 = vzip1q_s32(v69, v71);
      v74 = vzip2q_s32(v69, v71);
      v75 = vmovl_u8(*v56.i8);
      v56 = vzip1q_s32(v70, v72);
      v76 = vmovl_u8(*v58.i8);
      v58 = vzip2q_s32(v70, v72);
      v77 = vmovl_u8(v57);
      v57 = vextq_s8(v56, v56, 8uLL).u64[0];
      v78 = vmovl_u8(*v73.i8);
      v11 = vmovl_high_u8(v73);
      v14 = vmovl_u8(*v74.i8);
      v79 = vmovl_high_u8(v74);
      v80 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v22, v76), v21, v77), v20, v75), v23, v11), v24, v14), v25, v79), vmulq_s16(v26, vmovl_u8(v59)));
      v12 = vmovl_u8(*v56.i8);
      v13 = vmovl_u8(*v58.i8);
      v15 = vmovl_high_u8(v58);
      *v80.i8 = vqrshrun_n_s16(vqaddq_s16(v80, vmulq_s16(v29, v78)), 7uLL);
      v10 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v20, v78), v21, v11), v22, v14), v23, vmovl_high_u8(v56)), v24, v13), v25, v15);
      v81 = vqaddq_s16(v10, vmulq_s16(v26, v79));
      v9 = vmulq_s16(v29, v12);
      v8 = vqaddq_s16(v81, v9);
      *v8.i8 = vqrshrun_n_s16(v8, 7uLL);
      *v9.i8 = vtrn1_s8(*v80.i8, *v8.i8);
      v32->i16[v33 / 2] = v9.i16[0];
      *v8.i8 = vtrn2_s8(*v80.i8, *v8.i8);
      *(v32->i16 + v16 + v33) = v8.i16[0];
      v32->i16[v16 + v33 / 2] = v9.i16[1];
      *(v32->i16 + 3 * v16 + v33) = v8.i16[1];
      v32->i16[v28 + v33 / 2] = v9.i16[2];
      *(v32->i16 + 5 * v16 + v33) = v8.i16[2];
      v32->i16[3 * v16 + v33 / 2] = v9.i16[3];
      v82 = (v32 + v30 + v33);
      v59 = vextq_s8(v58, v58, 8uLL).u64[0];
      v31 += 8;
      ++v35;
      v33 += 2;
      v82->i16[0] = v8.i16[3];
    }

    while (((a5 + 1) & 0xFFFFFFFE) != v33);
    v32 = (v32 + v30 + v33);
    v17 -= 8;
  }

  while (v17);
  v83 = (a5 + 7) & 0xFFFFFFF8;
  v84 = (a6 + 1) & 0xFFFFFFFE;
  v85 = 8 - ((4 * (a6 + 1)) | 4) * v16;
  v86 = v84 * a4;
  result = 4 * v16;
  v88 = -v84;
  v89 = 8 - v86;
  do
  {
    v90 = *a7;
    v91 = *(a7 + v16);
    v92 = (a7 + v16 + v16);
    v93 = *v92;
    v94 = *(v92 + v16);
    v95 = (a7 + v28 * 2);
    v96 = v88;
    do
    {
      v97 = *v95;
      v98 = *(v95 + v16);
      v99 = *(v95 + 2 * v16);
      v100 = *(v95 + 3 * v16);
      v101 = *(v95 + 4 * v16);
      v102 = *(v95 + 5 * v16);
      v103 = *(v95 + 6 * v16);
      v104 = *(v95 + 7 * v16);
      v95 += v16;
      v105 = vmovl_u8(v97);
      v106 = vmovl_u8(v98);
      v107 = vmovl_u8(v99);
      v108 = vmovl_u8(v100);
      *a3 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v22, vmovl_u8(v93)), v21, vmovl_u8(v91)), v20, vmovl_u8(v90)), v23, v106), v24, v107), v25, v108), vmulq_s16(v26, vmovl_u8(v94))), vmulq_s16(v29, v105)), 7uLL);
      *(a3 + a4) = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v20, v105), v21, v106), v22, v107), v23, vmovl_u8(v102)), v24, vmovl_u8(v103)), v25, vmovl_u8(v104)), vmulq_s16(v26, v108)), vmulq_s16(v29, vmovl_u8(v101))), 7uLL);
      a3 = (a3 + 2 * a4);
      v94 = v104;
      v93 = v103;
      v91 = v102;
      v90 = v101;
      v96 += 2;
    }

    while (v96);
    a7 = (v95 + v85);
    a3 = (a3 + v89);
    v83 -= 8;
  }

  while (v83);
  return result;
}

uint64_t scale_plane_4_to_3_bilinear(void *a1, int a2, int8x8_t *a3, int a4, int a5, int a6, int a7, uint8x8_t *a8, int8x8_t a9, int8x8_t a10, int8x8_t a11, int8x8_t a12, int8x8_t a13, int8x8_t a14)
{
  v118 = *MEMORY[0x277D85DE8];
  v23 = off_2808D3630 + 16 * a7;
  v24 = off_2808D3630 + 16 * ((a7 + 21) & 0xF);
  v25 = off_2808D3630 + 16 * ((a7 + 42) & 0xF);
  v26 = 6 * ((a5 + 5) / 6);
  v27 = ((34359738360 * ((a5 + 5) / 6)) >> 32) - 24 * ((a5 + 5) / 6);
  v28 = ((4 * a6 / 3) & 0xFFFFFFF8) + 8;
  v115 = a6 + 5;
  a13.i8[0] = v23[6];
  a12.i8[0] = v23[8];
  a11.i8[0] = v24[6];
  a10.i8[0] = v24[8];
  a9.i8[0] = v25[6];
  v29 = ((v27 >> 1) + (v27 >> 31) + 8 * a2);
  v30 = &v117[8 * ((a7 + 21) >> 4)];
  a14.i8[0] = v25[8];
  v31 = &v117[8 * ((a7 + 42) >> 4)];
  v32 = v26 + 2;
  v33 = 7 * (v26 + 2);
  v34 = 0uLL;
  v35 = vdup_lane_s8(a13, 0);
  v36 = vdup_lane_s8(a12, 0);
  v37 = vdup_lane_s8(a11, 0);
  v38 = vdup_lane_s8(a10, 0);
  v39 = vdup_lane_s8(a9, 0);
  v40 = vdup_lane_s8(a14, 0);
  v41 = 0uLL;
  v42 = a8;
  do
  {
    v43 = 0;
    *v117 = *a1;
    v14.i64[0] = *v117;
    *&v117[8] = *(a1 + a2);
    v15.i64[0] = *&v117[8];
    v44 = (a1 + a2 + a2);
    *&v117[16] = *v44;
    v16.i64[0] = *&v117[16];
    v45 = (v44 + a2);
    *&v117[24] = *v45;
    v17.i64[0] = *&v117[24];
    v46 = (v45 + a2);
    *&v117[32] = *v46;
    v18.i64[0] = *&v117[32];
    v47 = (v46 + a2);
    *&v117[40] = *v47;
    v19.i64[0] = *&v117[40];
    v48 = (v47 + a2);
    *&v117[48] = *v48;
    v20.i64[0] = *&v117[48];
    v21.i64[0] = *(v48 + a2);
    v49 = (a1 + 1);
    v50 = vzip1q_s8(v14, v15);
    v51 = vzip1q_s8(v16, v17);
    v52 = vzip1q_s8(v18, v19);
    v53 = vzip1q_s8(v20, v21);
    v54 = vzip1q_s16(v50, v51);
    v55 = vzip2q_s16(v50, v51);
    v19 = vzip1q_s16(v52, v53);
    v16 = vzip2q_s16(v52, v53);
    v14 = vzip1q_s32(v54, v19);
    v17 = vzip2q_s32(v54, v19);
    v18 = vzip1q_s32(v55, v16);
    v15 = vzip2q_s32(v55, v16);
    *v117 = v14;
    *&v117[16] = v17;
    *&v117[32] = v18;
    *&v117[48] = v15;
    a1 = (a1 + v29);
    do
    {
      *&v117[8] = *v49;
      v15.i64[0] = *&v117[8];
      *&v117[16] = *(v49 + a2);
      v16.i64[0] = *&v117[16];
      v56 = (v49 + a2 + a2);
      *&v117[24] = *v56;
      v17.i64[0] = *&v117[24];
      v57 = (v56 + a2);
      *&v117[32] = *v57;
      v18.i64[0] = *&v117[32];
      v58 = (v57 + a2);
      *&v117[40] = *v58;
      v19.i64[0] = *&v117[40];
      v59 = (v58 + a2);
      *&v117[48] = *v59;
      v20.i64[0] = *&v117[48];
      v60 = (v59 + a2);
      *&v117[56] = *v60;
      v21.i64[0] = *&v117[56];
      v22.i64[0] = *(v60 + a2);
      v61 = vzip1q_s8(v15, v16);
      v62 = vzip1q_s8(v17, v18);
      v63 = vzip1q_s8(v19, v20);
      v64 = vzip1q_s8(v21, v22);
      v65 = vzip1q_s16(v61, v62);
      v66 = vzip2q_s16(v61, v62);
      v67 = vzip1q_s16(v63, v64);
      v68 = vzip2q_s16(v63, v64);
      *&v117[8] = vzip1q_s32(v65, v67);
      *&v117[24] = vzip2q_s32(v65, v67);
      *&v117[40] = vzip1q_s32(v66, v68);
      *&v117[56] = vzip2q_s32(v66, v68);
      v69 = vmlal_u8(vmull_u8(*&v117[8], v36), *v14.i8, v35);
      *v69.i8 = vrshrn_n_s16(v69, 7uLL);
      v70 = vmlal_u8(vmull_u8(v30[1], v38), *v30, v37);
      *v70.i8 = vrshrn_n_s16(v70, 7uLL);
      v71 = vmlal_u8(vmull_u8(v31[1], v40), *v31, v39);
      v72 = vmlal_u8(vmull_u8(*&v117[40], v36), *&v117[32], v35);
      *v14.i8 = vrshrn_n_s16(v72, 7uLL);
      *v71.i8 = vrshrn_n_s16(v71, 7uLL);
      v73 = vmlal_u8(vmull_u8(v30[5], v38), v30[4], v37);
      *v73.i8 = vrshrn_n_s16(v73, 7uLL);
      v20 = vmlal_u8(vmull_u8(v31[5], v40), v31[4], v39);
      *v72.i8 = vrshrn_n_s16(v20, 7uLL);
      v74 = vzip1q_s8(v69, v70);
      v75 = vzip1q_s8(v71, v14);
      v76 = vzip1q_s8(v73, v72);
      v77 = vzip1q_s8(v34, v41);
      v78 = vzip1q_s16(v74, v75);
      v79 = vzip2q_s16(v74, v75);
      v80 = vzip1q_s16(v76, v77);
      v81 = vzip2q_s16(v76, v77);
      v16 = vzip1q_s32(v78, v80);
      v15 = vzip2q_s32(v78, v80);
      v17 = vzip1q_s32(v79, v81);
      v34 = vzip2q_s32(v79, v81);
      v14 = vextq_s8(v16, v16, 8uLL);
      v18 = vextq_s8(v15, v15, 8uLL);
      v19 = vextq_s8(v17, v17, 8uLL);
      v41 = vextq_s8(v34, v34, 8uLL);
      *(v42 + v43) = *v16.i8;
      *(v42 + v32 + v43) = *v14.i8;
      *(v42 + 2 * v26 + v43 + 4) = *v15.i8;
      *(v42 + 3 * v26 + v43 + 6) = *v18.i8;
      *(&v42[v26 / 2u + 1] + v43) = *v17.i8;
      *(&v42[1] + 2 * (5 * v26 / 2u) + v43 + 2) = *v19.i8;
      *(&v42[1] + 6 * v26 + v43 + 4) = *v34.i8;
      *(v42 + v33 + v43) = *v41.i8;
      ++v49;
      v14.i64[0] = *&v117[64];
      *v117 = *&v117[64];
      v43 += 6;
      ++a1;
    }

    while (v26 != v43);
    v42 = (v42 + v33 + v43 + 2);
    v28 -= 8;
  }

  while (v28);
  v82 = (a5 + 7) & 0xFFFFFFF8;
  v83 = v32;
  result = 6 * a4;
  v85 = vdup_lane_s8(a13, 0);
  v86 = vdup_lane_s8(a12, 0);
  v87 = vdup_lane_s8(a11, 0);
  v88 = vdup_lane_s8(a10, 0);
  v89 = vdup_lane_s8(a9, 0);
  v90 = vdup_lane_s8(a14, 0);
  do
  {
    v91 = *a8;
    *v117 = *a8;
    v92 = (a8 + v32);
    *&v117[8] = *(a8 + v32);
    v93 = (a8 + v32 + v32);
    *&v117[16] = *v93;
    v94 = (v93 + v32);
    *&v117[24] = *v94;
    v95 = (v94 + v32);
    *&v117[32] = *v95;
    v96 = (v95 + v32);
    *&v117[40] = *v96;
    v97 = (v96 + v32);
    *&v117[48] = *v97;
    *&v117[56] = *(v97 + v32);
    v98 = v115 % 6 - a6 - 5;
    do
    {
      v99 = v92;
      *&v117[8] = *v92;
      v100 = (v92 + v32);
      v101 = *v100;
      v102 = (v100 + v32);
      *&v117[16] = v101;
      *&v117[24] = *v102;
      v103 = (v102 + v32);
      v104 = *v103;
      v105 = (v103 + v32);
      *&v117[32] = v104;
      *&v117[40] = *v105;
      v106 = (v105 + v32);
      v107 = *v106;
      v108 = (v106 + v32);
      *&v117[48] = v107;
      *&v117[56] = *v108;
      v109 = (v108 + v32);
      *&v117[64] = *v109;
      v110 = vrshrn_n_s16(vmlal_u8(vmull_u8(v30[1], v88), *v30, v87), 7uLL);
      v111 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v117[40], v86), v104, v85), 7uLL);
      v112 = vrshrn_n_s16(vmlal_u8(vmull_u8(v31[1], v90), *v31, v89), 7uLL);
      v113 = vrshrn_n_s16(vmlal_u8(vmull_u8(v30[5], v88), v30[4], v87), 7uLL);
      v114 = vrshrn_n_s16(vmlal_u8(vmull_u8(v31[5], v90), v31[4], v89), 7uLL);
      *a3 = vrshrn_n_s16(vmlal_u8(vmull_u8(*&v117[8], v86), v91, v85), 7uLL);
      *(a3 + a4) = v110;
      *(a3 + 2 * a4) = v112;
      *(a3 + 3 * a4) = v111;
      *(a3 + 4 * a4) = v113;
      *(a3 + 5 * a4) = v114;
      v91 = *&v117[64];
      *v117 = *&v117[64];
      a3 = (a3 + result);
      v92 = (v109 + v83 * 8 - 7 * v32);
      v98 += 6;
    }

    while (v98);
    a8 = (&v99[v83] + 8 - (v32 + v32 * (24 * (v115 / 6) / 3)));
    a3 = (a3 + 8 - 6 * (v115 / 6) * a4);
    v82 -= 8;
  }

  while (v82);
  return result;
}

uint64_t scale_plane_4_to_3_general(uint64_t a1, int a2, int8x8_t *a3, int a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, int8x16_t a15, int16x8_t a16, uint8x8_t *a17)
{
  v20 = 6 * ((a5 + 5) / 6);
  v183 = *MEMORY[0x277D85DE8];
  v21 = *(a7 + 16 * (a8 & 0xF));
  v22 = *(a7 + 16 * ((a8 + 21) & 0xF));
  v23 = *(a7 + 16 * ((a8 + 42) & 0xF));
  v24 = a17;
  v25 = (4 * a6 / 3 + 14) & 0xFFFFFFF8;
  v26 = a1 + -3 * a2 - 4;
  v27 = ((34359738360 * ((a5 + 5) / 6)) >> 32) - 24 * ((a5 + 5) / 6);
  v28 = ((v27 >> 1) + (v27 >> 31) + 8 * a2);
  v164 = vdupq_lane_s16(*v21.i8, 1);
  v165 = vdupq_lane_s16(*v21.i8, 0);
  v162 = vdupq_laneq_s16(v21, 5);
  v163 = vdupq_lane_s16(*v21.i8, 2);
  v29 = vdupq_laneq_s16(v21, 7);
  v160 = vdupq_lane_s16(*v21.i8, 3);
  v161 = vdupq_laneq_s16(v21, 6);
  v30 = &v176 + ((a8 + 21) >> 4);
  v158 = vdupq_lane_s16(*v22.i8, 0);
  v159 = vdupq_laneq_s16(v21, 4);
  v174 = vdupq_lane_s16(*v22.i8, 1);
  v175 = v29;
  v156 = vdupq_laneq_s16(v22, 5);
  v157 = vdupq_lane_s16(*v22.i8, 2);
  v154 = vdupq_laneq_s16(v22, 7);
  v155 = vdupq_laneq_s16(v22, 6);
  v31 = vdupq_lane_s16(*v22.i8, 3);
  v32 = vdupq_laneq_s16(v22, 4);
  v33 = &v176 + ((a8 + 42) >> 4);
  v152 = vdupq_lane_s16(*v23.i8, 0);
  v153 = v31;
  v34 = vdupq_lane_s16(*v23.i8, 1);
  v35 = vdupq_lane_s16(*v23.i8, 2);
  v36 = vdupq_laneq_s16(v23, 5);
  v37 = vdupq_laneq_s16(v23, 6);
  v38 = vdupq_laneq_s16(v23, 7);
  v39 = vdupq_lane_s16(*v23.i8, 3);
  v170 = v39;
  v171 = v37;
  v40 = v20 + 2;
  v41 = vdupq_laneq_s16(v23, 4);
  v168 = v32;
  v169 = v41;
  v151 = a6 + 5;
  v42 = 7 * (v20 + 2);
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = a17;
  v173 = v38;
  v172 = v34;
  do
  {
    v46 = 0;
    v47 = (v26 + 8);
    v176.i64[0] = *(v26 + 1);
    v41.i64[0] = v176.i64[0];
    v48 = (v26 + 1 + a2);
    v176.i64[1] = *v48;
    v39.i64[0] = v176.i64[1];
    v49 = (v48 + a2);
    v177.i64[0] = *v49;
    v37.i64[0] = v177.i64[0];
    v50 = (v49 + a2);
    v177.i64[1] = *v50;
    v31.i64[0] = v177.i64[1];
    v51 = (v50 + a2);
    *&v178 = *v51;
    v32.i64[0] = v178;
    v52 = (v51 + a2);
    *(&v178 + 1) = *v52;
    v29.i64[0] = *(&v178 + 1);
    v53 = (v52 + a2);
    *v179 = *v53;
    a15.i64[0] = *v179;
    a16.i64[0] = *(v53 + a2);
    v54 = vzip1q_s8(v41, v39);
    v55 = vzip1q_s8(v37, v31);
    v56 = vzip1q_s8(v32, v29);
    v31 = vzip1q_s8(a15, a16);
    v32 = vzip1q_s16(v54, v55);
    v39 = vzip2q_s16(v54, v55);
    v57 = vzip1q_s16(v56, v31);
    v58 = vzip2q_s16(v56, v31);
    v59 = vzip1q_s32(v32, v57);
    v60 = vzip2q_s32(v32, v57);
    v41 = vzip1q_s32(v39, v58);
    v37 = vzip2q_s32(v39, v58);
    v61 = v59.u64[1];
    v39.i64[0] = v60.i64[1];
    v31.i64[0] = v41.i64[1];
    v176 = v59;
    v177 = v60;
    v178 = v41;
    *v179 = v37;
    v26 += v28;
    do
    {
      *&v179[8] = *v47;
      v32.i64[0] = *&v179[8];
      *&v179[16] = *(v47 + a2);
      v29.i64[0] = *&v179[16];
      v62 = (v47 + a2 + a2);
      *&v179[24] = *v62;
      a15.i64[0] = *&v179[24];
      v63 = (v62 + a2);
      v180.i64[0] = *v63;
      a16.i64[0] = v180.i64[0];
      v64 = (v63 + a2);
      v180.i64[1] = *v64;
      v38.i64[0] = v180.i64[1];
      v65 = (v64 + a2);
      v181.i64[0] = *v65;
      v17.i64[0] = v181.i64[0];
      v66 = (v65 + a2);
      v181.i64[1] = *v66;
      v18.i64[0] = v181.i64[1];
      v19.i64[0] = *(v66 + a2);
      v67 = vzip1q_s8(v32, v29);
      v68 = vzip1q_s8(a15, a16);
      v69 = vzip1q_s8(v38, v17);
      v70 = vzip1q_s8(v18, v19);
      v71 = vzip1q_s16(v67, v68);
      v72 = vzip2q_s16(v67, v68);
      v73 = vzip1q_s16(v69, v70);
      v74 = vzip2q_s16(v69, v70);
      v75 = vzip1q_s32(v71, v73);
      v76 = vzip2q_s32(v71, v73);
      v77 = vzip1q_s32(v72, v74);
      v78 = vzip2q_s32(v72, v74);
      *&v179[8] = v75;
      *&v179[24] = v76.i64[0];
      v180 = vextq_s8(v76, v77, 8uLL);
      v181 = vextq_s8(v77, v78, 8uLL);
      v182 = vextq_s8(v78, v78, 8uLL).u64[0];
      v79 = vmovl_u8(*v60.i8);
      v60 = vmovl_u8(*v41.i8);
      v80 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v161, vmovl_u8(*v37.i8)), v162, vmovl_u8(*v31.i8)), v163, v79), v164, vmovl_u8(v61)), v165, vmovl_u8(*v59.i8)), v175, vmovl_u8(*v75.i8)), vmulq_s16(v160, vmovl_u8(*v39.i8)));
      v18 = vmovl_u8(v30[4]);
      v81 = vmovl_u8(v30[5]);
      v17 = vqaddq_s16(v80, vmulq_s16(v159, v60));
      v82 = vmovl_u8(v30[6]);
      v19 = vmovl_u8(v30[7]);
      v59.i64[0] = v75.i64[1];
      v83 = vmlaq_s16(vmlaq_s16(vmulq_s16(v152, vmovl_u8(*v33)), v34, vmovl_u8(v33[1])), v35, vmovl_u8(v33[2]));
      v61 = *&v179[24];
      v84 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v165, v60), v164, vmovl_u8(*(&v178 + 8))), v163, vmovl_u8(*v179)), v162, vmovl_u8(*&v179[24]));
      v60.i64[0] = v180.i64[0];
      v38 = vmovl_u8(v33[5]);
      v85 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(v84, v161, vmovl_u8(*v180.i8)), v175, vmovl_u8(v180.u64[1])), vmulq_s16(v160, vmovl_u8(*v75.i8))), vmulq_s16(v159, vmovl_u8(v75.u64[1])));
      v86 = vmlaq_s16(vmulq_s16(v158, v18), v174, v81);
      v87 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v158, vmovl_u8(*v30)), v174, vmovl_u8(v30[1])), v157, vmovl_u8(v30[2])), v156, v81), v155, v82), v154, v19), vmulq_s16(v153, vmovl_u8(v30[3])));
      v88 = vmovl_u8(v33[6]);
      v89 = vmovl_u8(v33[7]);
      v34 = v172;
      v90 = vmlaq_s16(vmlaq_s16(v86, v157, v82), v156, vmovl_u8(v30[9]));
      v91 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v83, v36, v38), v171, v88), v173, v89), vmulq_s16(v170, vmovl_u8(v33[3])));
      v92 = vmovl_u8(v33[4]);
      a16 = vqaddq_s16(vmlaq_s16(vmlaq_s16(v90, v155, vmovl_u8(v30[10])), v154, vmovl_u8(v30[11])), vmulq_s16(v153, v19));
      v93 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v152, v92), v172, v38), v35, v88), v36, vmovl_u8(v33[9]));
      v94 = vqaddq_s16(v87, vmulq_s16(v168, v18));
      v95 = vqaddq_s16(v91, vmulq_s16(v169, v92));
      v38.i64[1] = v173.i64[1];
      v96 = vqaddq_s16(a16, vmulq_s16(v168, vmovl_u8(v30[8])));
      v97 = vmulq_s16(v169, vmovl_u8(v33[8]));
      v98 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(v93, v171, vmovl_u8(v33[10])), v173, vmovl_u8(v33[11])), vmulq_s16(v170, v89)), v97);
      *v97.i8 = vqrshrun_n_s16(v17, 7uLL);
      *v94.i8 = vqrshrun_n_s16(v94, 7uLL);
      v99 = vzip1q_s8(v97, v94);
      *v95.i8 = vqrshrun_n_s16(v95, 7uLL);
      *v97.i8 = vqrshrun_n_s16(v85, 7uLL);
      *v96.i8 = vqrshrun_n_s16(v96, 7uLL);
      *v98.i8 = vqrshrun_n_s16(v98, 7uLL);
      v100 = vzip1q_s8(v95, v97);
      v101 = vzip1q_s8(v96, v98);
      v31 = vzip1q_s8(v44, v43);
      v102 = vzip1q_s16(v99, v100);
      v29 = vzip1q_s16(v101, v31);
      v103 = vzip1q_s32(v102, v29);
      *(v45 + v46) = *v103.i8;
      a15 = vextq_s8(v103, v103, 8uLL);
      *(v45 + v40 + v46) = *a15.i8;
      v104 = vzip2q_s16(v99, v100);
      v105 = vzip2q_s32(v102, v29);
      v32 = vextq_s8(v105, v105, 8uLL);
      *(v45 + 2 * v20 + v46 + 4) = *v105.i8;
      *(v45 + 3 * v20 + v46 + 6) = *v32.i8;
      v39 = vzip2q_s16(v101, v31);
      v37 = vzip1q_s32(v104, v39);
      *(&v45[v20 / 2u + 1] + v46) = *v37.i8;
      v176.i64[0] = v59.i64[0];
      v176.u64[1] = v61;
      v44 = vzip2q_s32(v104, v39);
      v41 = vextq_s8(v37, v37, 8uLL);
      *(&v45[1] + 2 * (5 * v20 / 2u) + v46 + 2) = *v41.i8;
      v39.i64[0] = v180.i64[1];
      v41.i64[0] = v181.i64[0];
      v177.i64[0] = v60.i64[0];
      v177.i64[1] = v180.i64[1];
      *(&v45[1] + 6 * v20 + v46 + 4) = *v44.i8;
      v31.i64[0] = v181.i64[1];
      v37.i64[0] = v182;
      v43 = vextq_s8(v44, v44, 8uLL);
      v178 = __PAIR128__(v181.u64[1], v41.u64[0]);
      *(v45 + v42 + v46) = *v43.i8;
      *v179 = v37.i64[0];
      v46 += 6;
      v26 += 8;
      ++v47;
    }

    while (v20 != v46);
    v45 = (v45 + v42 + v46 + 2);
    v25 -= 8;
  }

  while (v25);
  v106 = (a5 + 7) & 0xFFFFFFF8;
  v107 = v40;
  result = (4 * a4);
  v109 = v151 % 6 - a6 - 5;
  v110 = v175;
  do
  {
    v111 = *v24;
    *v176.i8 = *v24;
    v112 = *(v24 + v40);
    v176.u64[1] = v112;
    v113 = (v24 + v40 + v40);
    v114 = *v113;
    *v177.i8 = *v113;
    v115 = (v113 + v40);
    v116 = *v115;
    v177.u64[1] = *v115;
    v117 = (v115 + v40);
    v118 = *v117;
    *&v178 = *v117;
    v119 = (v117 + v40);
    v120 = *v119;
    *(&v178 + 1) = *v119;
    v121 = (v119 + v40);
    v122 = *v121;
    *v179 = *v121;
    *&v179[8] = *(v121 + v40);
    v123 = (v24 + v42);
    v124 = v109;
    do
    {
      v125 = v123;
      *&v179[8] = *v123;
      v126 = (v123 + v40);
      *&v179[16] = *v126;
      v127 = (v126 + v40);
      *&v179[24] = *v127;
      v128 = (v127 + v40);
      v180.i64[0] = *v128;
      v129 = (v128 + v40);
      v180.i64[1] = *v129;
      v130 = (v129 + v40);
      v181.i64[0] = *v130;
      v131 = (v130 + v40);
      v181.i64[1] = *v131;
      v132 = (v131 + v40);
      v182 = *v132;
      v133 = vmovl_u8(v114);
      v134 = vmovl_u8(v118);
      v135 = vmovl_u8(*&v179[8]);
      v167 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v161, vmovl_u8(v122)), v162, vmovl_u8(v120)), v163, v133), v164, vmovl_u8(v112)), v165, vmovl_u8(v111)), v110, v135), vmulq_s16(v160, vmovl_u8(v116))), vmulq_s16(v159, v134));
      v136 = vmovl_u8(v30[5]);
      v137 = vmovl_u8(v30[6]);
      v138 = vmovl_u8(v30[7]);
      v139 = vmovl_u8(v33[5]);
      v140 = vmovl_u8(v33[6]);
      v141 = vmovl_u8(v33[7]);
      v142 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v152, vmovl_u8(*v33)), v172, vmovl_u8(v33[1])), v35, vmovl_u8(v33[2])), v36, v139), v171, v140), v173, v141), vmulq_s16(v170, vmovl_u8(v33[3])));
      v143 = vmovl_u8(v30[4]);
      v144 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v165, v134), v162, vmovl_u8(*&v179[24])), v161, vmovl_u8(*v180.i8)), v175, vmovl_u8(v180.u64[1])), v164, vmovl_u8(*(&v178 + 8))), v163, vmovl_u8(*v179)), vmulq_s16(v160, v135));
      v145 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v158, vmovl_u8(*v30)), v174, vmovl_u8(v30[1])), v157, vmovl_u8(v30[2])), v156, v136), v155, v137), v154, v138), vmulq_s16(v153, vmovl_u8(v30[3]))), vmulq_s16(v168, v143));
      v146 = vqaddq_s16(v144, vmulq_s16(v159, vmovl_u8(*&v179[16])));
      v147 = vmovl_u8(v33[4]);
      v148 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v158, v143), v174, v136), v157, v137), v156, vmovl_u8(v30[9])), v155, vmovl_u8(v30[10])), v154, vmovl_u8(v30[11])), vmulq_s16(v153, v138)), vmulq_s16(v168, vmovl_u8(v30[8])));
      v110 = v175;
      v149 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v152, v147), v172, v139), v35, v140), v36, vmovl_u8(v33[9])), v171, vmovl_u8(v33[10])), v173, vmovl_u8(v33[11])), vmulq_s16(v170, v141));
      v150 = vmulq_s16(v169, vmovl_u8(v33[8]));
      *a3 = vqrshrun_n_s16(v167, 7uLL);
      *(a3 + a4) = vqrshrun_n_s16(v145, 7uLL);
      *(a3 + 2 * a4) = vqrshrun_n_s16(vqaddq_s16(v142, vmulq_s16(v169, v147)), 7uLL);
      *(a3 + 3 * a4) = vqrshrun_n_s16(v146, 7uLL);
      *(a3 + result) = vqrshrun_n_s16(v148, 7uLL);
      *(a3 + 5 * a4) = vqrshrun_n_s16(vqaddq_s16(v149, v150), 7uLL);
      v111 = *&v179[16];
      v112 = *&v179[24];
      v116 = v180.u64[1];
      v114 = *v180.i8;
      v176 = *&v179[16];
      v177 = v180;
      v120 = v181.u64[1];
      v118 = *v181.i8;
      v178 = v181;
      v122 = v182;
      *v179 = v182;
      a3 = (a3 + 6 * a4);
      v123 = (v132 + v107 * 8 - 7 * v40);
      v124 += 6;
    }

    while (v124);
    v24 = (&v125[v107] + 8 - (24 * (v151 / 6) / 3 + 7) * v40);
    a3 = (a3 + 8 - 6 * (v151 / 6) * a4);
    v106 -= 8;
  }

  while (v106);
  return result;
}

int32x4_t *highbd_iadst16_neon(int32x4_t *result, int32x4_t *a2, int16x8_t *a3, int a4, char a5)
{
  v5 = result[1];
  v6 = result[5];
  v329 = result[4];
  v7 = vtrn1q_s32(*result, v329);
  v8 = result[9];
  v308 = result[8];
  v9 = result[13];
  v315 = result[12];
  v10 = vtrn1q_s32(v308, v315);
  v11 = result[17];
  v301 = result[16];
  v12 = result[21];
  v303 = result[20];
  v13 = vtrn1q_s32(v301, v303);
  v297 = result[3];
  v299 = result[7];
  v14 = vtrn2q_s32(v297, v299);
  v293 = result[11];
  v295 = result[15];
  v15 = vtrn2q_s32(v293, v295);
  v289 = result[19];
  v291 = result[23];
  v16 = vtrn2q_s32(v289, v291);
  v17 = vzip2q_s64(v14, v15);
  v18 = vdupq_n_s32(0x3FECu);
  v19 = vdupq_n_s32(0x324u);
  v20 = vmull_s32(*v17.i8, *v19.i8);
  v21 = vmull_high_s32(v17, v19);
  v365 = vmlal_s32(vmull_s32(*v7.i8, *v19.i8), *v17.i8, *v18.i8);
  v337 = vmlal_high_s32(vmull_s32(*v10.i8, *v19.i8), v17, v18);
  v22 = result[28];
  v285 = result[27];
  v287 = result[31];
  v23 = vtrn2q_s32(v285, v287);
  v24 = vzip2q_s64(v16, v23);
  v345 = vmlal_s32(vmull_s32(*v13.i8, *v19.i8), *v24.i8, *v18.i8);
  v25 = result[25];
  v276 = result[24];
  v26 = result[29];
  v27 = vtrn1q_s32(v276, v22);
  v327 = vmlal_high_s32(vmull_s32(*v27.i8, *v19.i8), v24, v18);
  v362 = vmlsl_s32(v20, *v7.i8, *v18.i8);
  v28 = vzip2q_s64(v7, v10);
  v339 = vmlsl_s32(v21, *v10.i8, *v18.i8);
  v347 = vmlsl_s32(vmull_s32(*v24.i8, *v19.i8), *v13.i8, *v18.i8);
  v323 = vmlsl_s32(vmull_high_s32(v24, v19), *v27.i8, *v18.i8);
  v29 = vzip2q_s64(v13, v27);
  v30 = vdupq_n_s32(0x3E15u);
  v31 = vdupq_n_s32(0xF8Du);
  v354 = vmlal_s32(vmull_s32(*v28.i8, *v31.i8), *v14.i8, *v30.i8);
  v359 = vmlal_s32(vmull_s32(*v29.i8, *v31.i8), *v16.i8, *v30.i8);
  v266 = vmlal_high_s32(vmull_s32(*v15.i8, *v30.i8), v28, v31);
  v268 = vmlal_high_s32(vmull_s32(*v23.i8, *v30.i8), v29, v31);
  v342 = vmlsl_s32(vmull_s32(*v14.i8, *v31.i8), *v28.i8, *v30.i8);
  v357 = vmlsl_high_s32(vmull_s32(*v15.i8, *v31.i8), v28, v30);
  v351 = vmlsl_s32(vmull_s32(*v16.i8, *v31.i8), *v29.i8, *v30.i8);
  v264 = vmlsl_high_s32(vmull_s32(*v23.i8, *v31.i8), v29, v30);
  v32 = result[2];
  v33 = result[6];
  v34 = result[10];
  v35 = result[14];
  v36 = vdupq_n_s32(0x39DBu);
  v37 = vtrn1q_s32(v5, v6);
  v38 = vtrn2q_s32(v32, v33);
  v39 = vtrn2q_s32(v34, v35);
  v40 = vzip2q_s64(v38, v39);
  v41 = vdupq_n_s32(0x1B5Du);
  v336 = vmlal_s32(vmull_s32(*v37.i8, *v41.i8), *v40.i8, *v36.i8);
  v42 = vtrn1q_s32(v8, v9);
  v332 = vmlal_high_s32(vmull_s32(*v42.i8, *v41.i8), v40, v36);
  v43 = vmull_s32(*v40.i8, *v41.i8);
  v44 = vmull_high_s32(v40, v41);
  v45 = result[18];
  v46 = result[22];
  v47 = result[26];
  v48 = result[30];
  v49 = vtrn1q_s32(v11, v12);
  v50 = vtrn2q_s32(v45, v46);
  v51 = vtrn2q_s32(v47, v48);
  v52 = vzip2q_s64(v50, v51);
  v334 = vmlal_s32(vmull_s32(*v49.i8, *v41.i8), *v52.i8, *v36.i8);
  v53 = vtrn1q_s32(v25, v26);
  v54 = vmull_s32(*v52.i8, *v41.i8);
  v55 = vmull_high_s32(v52, v41);
  v320 = vmlal_high_s32(vmull_s32(*v53.i8, *v41.i8), v52, v36);
  v318 = vmlsl_s32(v43, *v37.i8, *v36.i8);
  v56 = vzip2q_s64(v37, v42);
  v313 = vmlsl_s32(v44, *v42.i8, *v36.i8);
  v272 = vmlsl_s32(v54, *v49.i8, *v36.i8);
  v311 = vmlsl_s32(v55, *v53.i8, *v36.i8);
  v57 = vzip2q_s64(v49, v53);
  v58 = vdupq_n_s32(0x3368u);
  v59 = vdupq_n_s32(0x2620u);
  v262 = vmlal_s32(vmull_s32(*v56.i8, *v59.i8), *v38.i8, *v58.i8);
  v261 = vmlal_s32(vmull_s32(*v57.i8, *v59.i8), *v50.i8, *v58.i8);
  v259 = vmlal_high_s32(vmull_s32(*v51.i8, *v58.i8), v57, v59);
  v260 = vmlal_high_s32(vmull_s32(*v39.i8, *v58.i8), v56, v59);
  v256 = vmlsl_high_s32(vmull_s32(*v39.i8, *v59.i8), v56, v58);
  v257 = vmlsl_s32(vmull_s32(*v38.i8, *v59.i8), *v56.i8, *v58.i8);
  v252 = vmlsl_s32(vmull_s32(*v50.i8, *v59.i8), *v57.i8, *v58.i8);
  v254 = vmlsl_high_s32(vmull_s32(*v51.i8, *v59.i8), v57, v58);
  v60 = vtrn2q_s32(v5, v6);
  v61 = vtrn2q_s32(v8, v9);
  v62 = vtrn2q_s32(v11, v12);
  v63 = vtrn2q_s32(v25, v26);
  v64 = vtrn1q_s32(v32, v33);
  v65 = vtrn1q_s32(v34, v35);
  v66 = vtrn1q_s32(v45, v46);
  v67 = vtrn1q_s32(v47, v48);
  v68 = vzip2q_s64(v60, v61);
  v69 = vdupq_n_s32(0x2AFBu);
  v70 = vdupq_n_s32(0x2F6Cu);
  v71 = vmlal_s32(vmull_s32(*v64.i8, *v70.i8), *v68.i8, *v69.i8);
  v212 = vmlal_high_s32(vmull_s32(*v65.i8, *v70.i8), v68, v69);
  v72 = vmull_s32(*v68.i8, *v70.i8);
  v73 = vmull_high_s32(v68, v70);
  v74 = vzip2q_s64(v62, v63);
  v216 = vmlal_s32(vmull_s32(*v66.i8, *v70.i8), *v74.i8, *v69.i8);
  v200 = vmlal_high_s32(vmull_s32(*v67.i8, *v70.i8), v74, v69);
  v220 = vmlsl_s32(v72, *v64.i8, *v69.i8);
  v75 = vzip2q_s64(v64, v65);
  v214 = vmlsl_s32(v73, *v65.i8, *v69.i8);
  v218 = vmlsl_s32(vmull_s32(*v74.i8, *v70.i8), *v66.i8, *v69.i8);
  v205 = vmlsl_s32(vmull_high_s32(v74, v70), *v67.i8, *v69.i8);
  v76 = vzip2q_s64(v66, v67);
  v77 = vdupq_n_s32(0x20E7u);
  v78 = vdupq_n_s32(0x36E5u);
  v280 = vmlal_s32(vmull_s32(*v75.i8, *v78.i8), *v60.i8, *v77.i8);
  v274 = vmlal_s32(vmull_s32(*v76.i8, *v78.i8), *v62.i8, *v77.i8);
  v246 = vmlal_high_s32(vmull_s32(*v63.i8, *v77.i8), v76, v78);
  v305 = vmlsl_s32(vmull_s32(*v60.i8, *v78.i8), *v75.i8, *v77.i8);
  v283 = vmlsl_high_s32(vmull_s32(*v61.i8, *v78.i8), v75, v77);
  v278 = vmlsl_s32(vmull_s32(*v62.i8, *v78.i8), *v76.i8, *v77.i8);
  v247 = vmlsl_high_s32(vmull_s32(*v63.i8, *v78.i8), v76, v77);
  v249 = vmlal_high_s32(vmull_s32(*v61.i8, *v77.i8), v75, v78);
  v79 = vtrn2q_s32(*result, v329);
  v80 = vtrn2q_s32(v308, v315);
  v81 = vtrn2q_s32(v301, v303);
  v82 = vtrn2q_s32(v276, v22);
  v83 = vtrn1q_s32(v297, v299);
  v84 = vtrn1q_s32(v293, v295);
  v85 = vtrn1q_s32(v289, v291);
  v86 = vtrn1q_s32(v285, v287);
  v87 = vdupq_n_s32(0x1590u);
  v88 = vdupq_n_s32(0x3C42u);
  v89 = vzip2q_s64(v79, v80);
  v209 = vmlal_s32(vmull_s32(*v83.i8, *v88.i8), *v89.i8, *v87.i8);
  v203 = vmlal_high_s32(vmull_s32(*v84.i8, *v88.i8), v89, v87);
  v90 = vmull_s32(*v89.i8, *v88.i8);
  v91 = vmull_high_s32(v89, v88);
  v92 = vzip2q_s64(v81, v82);
  v207 = vmlal_s32(vmull_s32(*v85.i8, *v88.i8), *v92.i8, *v87.i8);
  v93 = vmull_s32(*v92.i8, *v88.i8);
  v94 = vmull_high_s32(v92, v88);
  v95 = vmlal_high_s32(vmull_s32(*v86.i8, *v88.i8), v92, v87);
  v96 = vzip2q_s64(v83, v84);
  v198 = vmlsl_s32(v93, *v85.i8, *v87.i8);
  v199 = vmlsl_s32(v90, *v83.i8, *v87.i8);
  v196 = vmlsl_s32(v94, *v86.i8, *v87.i8);
  v197 = vmlsl_s32(v91, *v84.i8, *v87.i8);
  v97 = vzip2q_s64(v85, v86);
  v98 = vdupq_n_s32(0x964u);
  v99 = vdupq_n_s32(0x3F4Fu);
  v100 = vmlal_s32(vmull_s32(*v96.i8, *v99.i8), *v79.i8, *v98.i8);
  v101 = vmull_s32(*v79.i8, *v99.i8);
  v235 = vmlal_s32(vmull_s32(*v97.i8, *v99.i8), *v81.i8, *v98.i8);
  v102 = vmlal_high_s32(vmull_s32(*v82.i8, *v98.i8), v97, v99);
  v233 = vmlal_high_s32(vmull_s32(*v80.i8, *v98.i8), v96, v99);
  v103 = vmlsl_s32(v101, *v96.i8, *v98.i8);
  v229 = vmlsl_high_s32(vmull_s32(*v80.i8, *v99.i8), v96, v98);
  v195 = vmlsl_s32(vmull_s32(*v81.i8, *v99.i8), *v97.i8, *v98.i8);
  v227 = vmlsl_high_s32(vmull_s32(*v82.i8, *v99.i8), v97, v98);
  *v99.i8 = vrshrn_n_s64(vsubq_s64(v365, v71), 0xEuLL);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v362, v220), 0xEuLL);
  *v96.i8 = vdup_n_s32(0x3EC5u);
  *v97.i8 = vdup_n_s32(0xC7Cu);
  v330 = vmlal_s32(vmull_s32(*v98.i8, *v97.i8), *v99.i8, *v96.i8);
  v326 = vmlsl_s32(vmull_s32(*v99.i8, *v97.i8), *v98.i8, *v96.i8);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v345, v216), 0xEuLL);
  *v99.i8 = vrshrn_n_s64(vsubq_s64(v347, v218), 0xEuLL);
  v300 = vmlal_s32(vmull_s32(*v99.i8, *v97.i8), *v98.i8, *v96.i8);
  v304 = vmlsl_s32(vmull_s32(*v98.i8, *v97.i8), *v99.i8, *v96.i8);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v337, v212), 0xEuLL);
  *v99.i8 = vrshrn_n_s64(vsubq_s64(v339, v214), 0xEuLL);
  v292 = vmlal_s32(vmull_s32(*v99.i8, *v97.i8), *v98.i8, *v96.i8);
  v296 = vmlsl_s32(vmull_s32(*v98.i8, *v97.i8), *v99.i8, *v96.i8);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v327, v200), 0xEuLL);
  *v99.i8 = vrshrn_n_s64(vsubq_s64(v323, v205), 0xEuLL);
  v251 = vmlal_s32(vmull_s32(*v99.i8, *v97.i8), *v98.i8, *v96.i8);
  v290 = vmlsl_s32(vmull_s32(*v98.i8, *v97.i8), *v99.i8, *v96.i8);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v336, v209), 0xEuLL);
  *v99.i8 = vrshrn_n_s64(vsubq_s64(v334, v207), 0xEuLL);
  *v6.i8 = vrshrn_n_s64(vsubq_s64(v332, v203), 0xEuLL);
  *v22.i8 = vrshrn_n_s64(vsubq_s64(v320, v95), 0xEuLL);
  *v93.i8 = vrshrn_n_s64(vsubq_s64(v318, v199), 0xEuLL);
  *v9.i8 = vrshrn_n_s64(vsubq_s64(v272, v198), 0xEuLL);
  *v12.i8 = vrshrn_n_s64(vsubq_s64(v313, v197), 0xEuLL);
  *v25.i8 = vrshrn_n_s64(vsubq_s64(v311, v196), 0xEuLL);
  v316 = vmlal_s32(vmull_s32(*v98.i8, *v96.i8), *v93.i8, *v97.i8);
  v309 = vmlal_s32(vmull_s32(*v99.i8, *v96.i8), *v9.i8, *v97.i8);
  v294 = vmlal_s32(vmull_s32(*v6.i8, *v96.i8), *v12.i8, *v97.i8);
  v270 = vmlal_s32(vmull_s32(*v22.i8, *v96.i8), *v25.i8, *v97.i8);
  v302 = vmlsl_s32(vmull_s32(*v93.i8, *v96.i8), *v98.i8, *v97.i8);
  v298 = vmlsl_s32(vmull_s32(*v9.i8, *v96.i8), *v99.i8, *v97.i8);
  v286 = vmlsl_s32(vmull_s32(*v12.i8, *v96.i8), *v6.i8, *v97.i8);
  v104 = vmlsl_s32(vmull_s32(*v25.i8, *v96.i8), *v22.i8, *v97.i8);
  *v96.i8 = vrshrn_n_s64(vsubq_s64(v354, v280), 0xEuLL);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v342, v305), 0xEuLL);
  *v99.i8 = vdup_n_s32(0x238Eu);
  *v97.i8 = vdup_n_s32(0x3537u);
  v242 = vmlal_s32(vmull_s32(*v98.i8, *v97.i8), *v96.i8, *v99.i8);
  v244 = v104;
  v245 = vmlsl_s32(vmull_s32(*v96.i8, *v97.i8), *v98.i8, *v99.i8);
  *v96.i8 = vrshrn_n_s64(vsubq_s64(v359, v274), 0xEuLL);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v351, v278), 0xEuLL);
  v240 = vmlal_s32(vmull_s32(*v98.i8, *v97.i8), *v96.i8, *v99.i8);
  v243 = vmlsl_s32(vmull_s32(*v96.i8, *v97.i8), *v98.i8, *v99.i8);
  *v96.i8 = vrshrn_n_s64(vsubq_s64(v266, v249), 0xEuLL);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v357, v283), 0xEuLL);
  v238 = vmlal_s32(vmull_s32(*v98.i8, *v97.i8), *v96.i8, *v99.i8);
  v241 = vmlsl_s32(vmull_s32(*v96.i8, *v97.i8), *v98.i8, *v99.i8);
  *v96.i8 = vrshrn_n_s64(vsubq_s64(v268, v246), 0xEuLL);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v264, v247), 0xEuLL);
  v237 = vmlal_s32(vmull_s32(*v98.i8, *v97.i8), *v96.i8, *v99.i8);
  v239 = vmlsl_s32(vmull_s32(*v96.i8, *v97.i8), *v98.i8, *v99.i8);
  *v96.i8 = vrshrn_n_s64(vsubq_s64(v262, v100), 0xEuLL);
  *v98.i8 = vrshrn_n_s64(vsubq_s64(v261, v235), 0xEuLL);
  *v6.i8 = vrshrn_n_s64(vsubq_s64(v260, v233), 0xEuLL);
  *v22.i8 = vrshrn_n_s64(vsubq_s64(v259, v102), 0xEuLL);
  *v93.i8 = vrshrn_n_s64(vsubq_s64(v257, v103), 0xEuLL);
  *v9.i8 = vrshrn_n_s64(vsubq_s64(v252, v195), 0xEuLL);
  *v12.i8 = vrshrn_n_s64(vsubq_s64(v256, v229), 0xEuLL);
  *v25.i8 = vrshrn_n_s64(vsubq_s64(v254, v227), 0xEuLL);
  v288 = vmlal_s32(vmull_s32(*v96.i8, *v99.i8), *v93.i8, *v97.i8);
  v226 = vmlal_s32(vmull_s32(*v98.i8, *v99.i8), *v9.i8, *v97.i8);
  v225 = vmlal_s32(vmull_s32(*v6.i8, *v99.i8), *v12.i8, *v97.i8);
  v277 = vmlsl_s32(vmull_s32(*v93.i8, *v99.i8), *v96.i8, *v97.i8);
  v273 = vmlsl_s32(vmull_s32(*v9.i8, *v99.i8), *v98.i8, *v97.i8);
  v271 = vmlsl_s32(vmull_s32(*v12.i8, *v99.i8), *v6.i8, *v97.i8);
  v223 = vmlsl_s32(vmull_s32(*v25.i8, *v99.i8), *v22.i8, *v97.i8);
  v224 = vmlal_s32(vmull_s32(*v22.i8, *v99.i8), *v25.i8, *v97.i8);
  v105 = vaddq_s64(v71, v365);
  v211 = vaddq_s64(v216, v345);
  v106 = vaddq_s64(v212, v337);
  v107 = vaddq_s64(v220, v362);
  v348 = vaddq_s64(v218, v347);
  v221 = vaddq_s64(v214, v339);
  v222 = vaddq_s64(v200, v327);
  v219 = vaddq_s64(v205, v323);
  v281 = vaddq_s64(v280, v354);
  v355 = vaddq_s64(v274, v359);
  v206 = vaddq_s64(v249, v266);
  v201 = vaddq_s64(v246, v268);
  v306 = vaddq_s64(v305, v342);
  v324 = vaddq_s64(v278, v351);
  v213 = vaddq_s64(v247, v264);
  v215 = vaddq_s64(v283, v357);
  v108 = vaddq_s64(v209, v336);
  v366 = vaddq_s64(v203, v332);
  v360 = vaddq_s64(v95, v320);
  v109 = vaddq_s64(v198, v272);
  v110 = vaddq_s64(v197, v313);
  v352 = vaddq_s64(v196, v311);
  v321 = vaddq_s64(v100, v262);
  v111 = vaddq_s64(v235, v261);
  v217 = vaddq_s64(v233, v260);
  v210 = vaddq_s64(v102, v259);
  v112 = vaddq_s64(v103, v257);
  v113 = vaddq_s64(v195, v252);
  v253 = vaddq_s64(v229, v256);
  v248 = vaddq_s64(v227, v254);
  *v81.i8 = vsub_s32(vrshrn_n_s64(v106, 0xEuLL), vrshrn_n_s64(v366, 0xEuLL));
  *v84.i8 = vsub_s32(vrshrn_n_s64(v222, 0xEuLL), vrshrn_n_s64(v360, 0xEuLL));
  *v104.i8 = vsub_s32(vrshrn_n_s64(v221, 0xEuLL), vrshrn_n_s64(v110, 0xEuLL));
  *v103.i8 = vsub_s32(vrshrn_n_s64(v219, 0xEuLL), vrshrn_n_s64(v352, 0xEuLL));
  *v256.i8 = vrshrn_n_s64(v105, 0xEuLL);
  *v259.i8 = vrshrn_n_s64(v107, 0xEuLL);
  *v272.i8 = vrshrn_n_s64(v108, 0xEuLL);
  *v336.i8 = vrshrn_n_s64(vaddq_s64(v199, v318), 0xEuLL);
  *v95.i8 = vdup_n_s32(0x3B21u);
  *v102.i8 = vsub_s32(*v256.i8, *v272.i8);
  *v80.i8 = vdup_n_s32(0x187Eu);
  *v105.i8 = vsub_s32(*v259.i8, *v336.i8);
  v340 = vmlal_s32(vmull_s32(*v105.i8, *v80.i8), *v102.i8, *v95.i8);
  v363 = vmlsl_s32(vmull_s32(*v102.i8, *v80.i8), *v105.i8, *v95.i8);
  v232 = vrshrn_n_s64(v211, 0xEuLL);
  *v246.i8 = vrshrn_n_s64(v348, 0xEuLL);
  *v260.i8 = vrshrn_n_s64(vaddq_s64(v207, v334), 0xEuLL);
  *v261.i8 = vrshrn_n_s64(v109, 0xEuLL);
  *v100.i8 = vsub_s32(v232, *v260.i8);
  *v102.i8 = vsub_s32(*v246.i8, *v261.i8);
  v335 = vmlal_s32(vmull_s32(*v102.i8, *v80.i8), *v100.i8, *v95.i8);
  v349 = vmlsl_s32(vmull_s32(*v100.i8, *v80.i8), *v102.i8, *v95.i8);
  v328 = vmlal_s32(vmull_s32(*v104.i8, *v80.i8), *v81.i8, *v95.i8);
  v338 = vmlsl_s32(vmull_s32(*v81.i8, *v80.i8), *v104.i8, *v95.i8);
  v333 = vmlal_s32(vmull_s32(*v103.i8, *v80.i8), *v84.i8, *v95.i8);
  v343 = vmlsl_s32(vmull_s32(*v84.i8, *v80.i8), *v103.i8, *v95.i8);
  *v104.i8 = vsub_s32(vrshrn_n_s64(v215, 0xEuLL), vrshrn_n_s64(v253, 0xEuLL));
  *v103.i8 = vsub_s32(vrshrn_n_s64(v213, 0xEuLL), vrshrn_n_s64(v248, 0xEuLL));
  *v100.i8 = vsub_s32(vrshrn_n_s64(v206, 0xEuLL), vrshrn_n_s64(v217, 0xEuLL));
  *v6.i8 = vsub_s32(vrshrn_n_s64(v201, 0xEuLL), vrshrn_n_s64(v210, 0xEuLL));
  *v32.i8 = vrshrn_n_s64(v281, 0xEuLL);
  *v60.i8 = vrshrn_n_s64(v306, 0xEuLL);
  v202 = vrshrn_n_s64(v321, 0xEuLL);
  *v211.i8 = vrshrn_n_s64(v112, 0xEuLL);
  *v84.i8 = vsub_s32(*v60.i8, *v211.i8);
  *v71.i8 = vsub_s32(*v32.i8, v202);
  v314 = vmlal_s32(vmull_s32(*v71.i8, *v95.i8), *v84.i8, *v80.i8);
  v265 = vmlsl_s32(vmull_s32(*v84.i8, *v95.i8), *v71.i8, *v80.i8);
  *v102.i8 = vrshrn_n_s64(v355, 0xEuLL);
  *v99.i8 = vrshrn_n_s64(v324, 0xEuLL);
  *v111.i8 = vrshrn_n_s64(v111, 0xEuLL);
  *v97.i8 = vrshrn_n_s64(v113, 0xEuLL);
  *v83.i8 = vsub_s32(*v99.i8, *v97.i8);
  *v91.i8 = vsub_s32(*v102.i8, *v111.i8);
  v284 = vmlal_s32(vmull_s32(*v91.i8, *v95.i8), *v83.i8, *v80.i8);
  v263 = vmlsl_s32(vmull_s32(*v83.i8, *v95.i8), *v91.i8, *v80.i8);
  v275 = vmlal_s32(vmull_s32(*v100.i8, *v95.i8), *v104.i8, *v80.i8);
  v255 = vmlsl_s32(vmull_s32(*v104.i8, *v95.i8), *v100.i8, *v80.i8);
  v279 = vmlal_s32(vmull_s32(*v6.i8, *v95.i8), *v103.i8, *v80.i8);
  v258 = vmlsl_s32(vmull_s32(*v103.i8, *v95.i8), *v6.i8, *v80.i8);
  *v83.i8 = vrshrn_n_s64(vsubq_s64(v330, v302), 0xEuLL);
  *v104.i8 = vrshrn_n_s64(vsubq_s64(v326, v316), 0xEuLL);
  v319 = vmlal_s32(vmull_s32(*v104.i8, *v80.i8), *v83.i8, *v95.i8);
  v322 = vmlsl_s32(vmull_s32(*v83.i8, *v80.i8), *v104.i8, *v95.i8);
  *v83.i8 = vrshrn_n_s64(vsubq_s64(v300, v298), 0xEuLL);
  *v104.i8 = vrshrn_n_s64(vsubq_s64(v304, v309), 0xEuLL);
  v312 = vmlal_s32(vmull_s32(*v104.i8, *v80.i8), *v83.i8, *v95.i8);
  v325 = vmlsl_s32(vmull_s32(*v83.i8, *v80.i8), *v104.i8, *v95.i8);
  *v83.i8 = vrshrn_n_s64(vsubq_s64(v292, v286), 0xEuLL);
  *v104.i8 = vrshrn_n_s64(vsubq_s64(v296, v294), 0xEuLL);
  v269 = vmlal_s32(vmull_s32(*v104.i8, *v80.i8), *v83.i8, *v95.i8);
  v307 = vmlsl_s32(vmull_s32(*v83.i8, *v80.i8), *v104.i8, *v95.i8);
  *v83.i8 = vrshrn_n_s64(vsubq_s64(v251, v244), 0xEuLL);
  *v104.i8 = vrshrn_n_s64(vsubq_s64(v290, v270), 0xEuLL);
  v267 = vmlal_s32(vmull_s32(*v104.i8, *v80.i8), *v83.i8, *v95.i8);
  v282 = vmlsl_s32(vmull_s32(*v83.i8, *v80.i8), *v104.i8, *v95.i8);
  *v84.i8 = vrshrn_n_s64(vsubq_s64(v242, v277), 0xEuLL);
  *v104.i8 = vrshrn_n_s64(vsubq_s64(v240, v273), 0xEuLL);
  *v96.i8 = vrshrn_n_s64(vsubq_s64(v238, v271), 0xEuLL);
  *v6.i8 = vrshrn_n_s64(vsubq_s64(v237, v223), 0xEuLL);
  *v91.i8 = vrshrn_n_s64(vsubq_s64(v245, v288), 0xEuLL);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v243, v226), 0xEuLL);
  *v81.i8 = vrshrn_n_s64(vsubq_s64(v241, v225), 0xEuLL);
  *v83.i8 = vrshrn_n_s64(vsubq_s64(v239, v224), 0xEuLL);
  v236 = vmlal_s32(vmull_s32(*v84.i8, *v95.i8), *v91.i8, *v80.i8);
  v250 = vmlal_s32(vmull_s32(*v104.i8, *v95.i8), *v71.i8, *v80.i8);
  v231 = vmlal_s32(vmull_s32(*v96.i8, *v95.i8), *v81.i8, *v80.i8);
  v234 = vmlal_s32(vmull_s32(*v6.i8, *v95.i8), *v83.i8, *v80.i8);
  v204 = vmlsl_s32(vmull_s32(*v91.i8, *v95.i8), *v84.i8, *v80.i8);
  v208 = vmlsl_s32(vmull_s32(*v81.i8, *v95.i8), *v96.i8, *v80.i8);
  v228 = vmlsl_s32(vmull_s32(*v83.i8, *v95.i8), *v6.i8, *v80.i8);
  v230 = vmlsl_s32(vmull_s32(*v71.i8, *v95.i8), *v104.i8, *v80.i8);
  v114 = vrshrn_high_n_s64(*v97.i8, v248, 0xEuLL);
  v115 = vaddq_s32(vrshrn_high_n_s64(*v272.i8, v366, 0xEuLL), vrshrn_high_n_s64(*v256.i8, v106, 0xEuLL));
  v116 = vaddq_s32(vrshrn_high_n_s64(*v260.i8, v360, 0xEuLL), vrshrn_high_n_s64(v232, v222, 0xEuLL));
  v117 = vaddq_s32(vrshrn_high_n_s64(*v336.i8, v110, 0xEuLL), vrshrn_high_n_s64(*v259.i8, v221, 0xEuLL));
  v118 = vaddq_s32(vrshrn_high_n_s64(*v261.i8, v352, 0xEuLL), vrshrn_high_n_s64(*v246.i8, v219, 0xEuLL));
  v119 = vaddq_s32(vrshrn_high_n_s64(v202, v217, 0xEuLL), vrshrn_high_n_s64(*v32.i8, v206, 0xEuLL));
  v120 = vaddq_s32(vrshrn_high_n_s64(*v111.i8, v210, 0xEuLL), vrshrn_high_n_s64(*v102.i8, v201, 0xEuLL));
  v121 = vaddq_s32(vrshrn_high_n_s64(*v211.i8, v253, 0xEuLL), vrshrn_high_n_s64(*v60.i8, v215, 0xEuLL));
  v122 = vaddq_s32(v114, vrshrn_high_n_s64(*v99.i8, v213, 0xEuLL));
  v123 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v302, v330), 0xEuLL), vaddq_s64(v286, v292), 0xEuLL);
  v124 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v298, v300), 0xEuLL), vaddq_s64(v244, v251), 0xEuLL);
  v125 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v316, v326), 0xEuLL), vaddq_s64(v294, v296), 0xEuLL);
  v126 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v309, v304), 0xEuLL), vaddq_s64(v270, v290), 0xEuLL);
  v127 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v277, v242), 0xEuLL), vaddq_s64(v271, v238), 0xEuLL);
  v128 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v273, v240), 0xEuLL), vaddq_s64(v223, v237), 0xEuLL);
  v129 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v288, v245), 0xEuLL), vaddq_s64(v225, v241), 0xEuLL);
  v130 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v226, v243), 0xEuLL), vaddq_s64(v224, v239), 0xEuLL);
  v361 = vaddq_s32(v119, v115);
  v131 = vsubq_s32(v115, v119);
  v358 = vaddq_s32(v120, v116);
  v132 = vsubq_s32(v116, v120);
  v356 = vaddq_s32(v117, v121);
  v133 = vsubq_s32(v117, v121);
  v353 = vaddq_s32(v118, v122);
  v134 = vsubq_s32(v118, v122);
  v346 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v265, v340), 0xEuLL), vaddq_s64(v255, v328), 0xEuLL);
  v331 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v314, v363), 0xEuLL), vaddq_s64(v275, v338), 0xEuLL);
  v135 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v284, v349), 0xEuLL), vaddq_s64(v279, v343), 0xEuLL);
  v310 = vsubq_s64(v340, v265);
  v136 = vsubq_s64(v363, v314);
  v317 = vsubq_s64(v349, v284);
  v137 = vsubq_s64(v343, v279);
  v344 = vaddq_s32(v123, v127);
  v138 = vsubq_s32(v123, v127);
  v341 = vaddq_s32(v124, v128);
  v139 = vsubq_s32(v124, v128);
  v364 = vaddq_s32(v129, v125);
  v140 = vsubq_s32(v125, v129);
  v367 = vaddq_s32(v130, v126);
  v141 = vsubq_s32(v126, v130);
  v350 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v204, v319), 0xEuLL), vaddq_s64(v208, v269), 0xEuLL);
  v142 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v230, v312), 0xEuLL), vaddq_s64(v228, v267), 0xEuLL);
  v143 = vaddq_s32(v133, v131);
  v144 = vsubq_s32(v131, v133);
  v145 = vaddq_s32(v134, v132);
  v146 = vsubq_s32(v132, v134);
  v147 = vdupq_n_s32(0xFFFFD2BF);
  v148 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v143.i8, *v147.i8), 0xEuLL), vmull_high_s32(v143, v147), 0xEuLL);
  v149 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v145.i8, *v147.i8), 0xEuLL), vmull_high_s32(v145, v147), 0xEuLL);
  v150 = vdupq_n_s32(0x2D41u);
  v151 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v144.i8, *v150.i8), 0xEuLL), vmull_high_s32(v144, v150), 0xEuLL);
  v152 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v146.i8, *v150.i8), 0xEuLL), vmull_high_s32(v146, v150), 0xEuLL);
  *v144.i8 = vrshrn_n_s64(v310, 0xEuLL);
  *v134.i8 = vrshrn_n_s64(vsubq_s64(v328, v255), 0xEuLL);
  *v105.i8 = vrshrn_n_s64(v136, 0xEuLL);
  *v116.i8 = vrshrn_n_s64(vsubq_s64(v338, v275), 0xEuLL);
  v153 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v105.i8, *v144.i8), *v150.i8), 0xEuLL), vmull_s32(vadd_s32(*v116.i8, *v134.i8), *v150.i8), 0xEuLL);
  *v107.i8 = vrshrn_n_s64(vsubq_s64(v335, v263), 0xEuLL);
  *v11.i8 = vrshrn_n_s64(vsubq_s64(v333, v258), 0xEuLL);
  *v108.i8 = vrshrn_n_s64(v317, 0xEuLL);
  *v110.i8 = vrshrn_n_s64(v137, 0xEuLL);
  v154 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v108.i8, *v107.i8), *v150.i8), 0xEuLL), vmull_s32(vadd_s32(*v110.i8, *v11.i8), *v150.i8), 0xEuLL);
  v155 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v105.i8, *v144.i8), *v150.i8), 0xEuLL), vmull_s32(vsub_s32(*v116.i8, *v134.i8), *v150.i8), 0xEuLL);
  v156 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v108.i8, *v107.i8), *v150.i8), 0xEuLL), vmull_s32(vsub_s32(*v110.i8, *v11.i8), *v150.i8), 0xEuLL);
  v157 = vaddq_s32(v140, v138);
  v158 = vsubq_s32(v140, v138);
  v159 = vaddq_s32(v141, v139);
  v160 = vsubq_s32(v141, v139);
  v161 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v157.i8, *v150.i8), 0xEuLL), vmull_high_s32(v157, v150), 0xEuLL);
  v162 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v159.i8, *v150.i8), 0xEuLL), vmull_high_s32(v159, v150), 0xEuLL);
  v163 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v158.i8, *v150.i8), 0xEuLL), vmull_high_s32(v158, v150), 0xEuLL);
  v164 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v160.i8, *v150.i8), 0xEuLL), vmull_high_s32(v160, v150), 0xEuLL);
  *v159.i8 = vrshrn_n_s64(vsubq_s64(v319, v204), 0xEuLL);
  *v108.i8 = vrshrn_n_s64(vsubq_s64(v312, v230), 0xEuLL);
  *v106.i8 = vrshrn_n_s64(vsubq_s64(v269, v208), 0xEuLL);
  *v137.i8 = vrshrn_n_s64(vsubq_s64(v267, v228), 0xEuLL);
  *v138.i8 = vrshrn_n_s64(vsubq_s64(v322, v236), 0xEuLL);
  *v121.i8 = vrshrn_n_s64(vsubq_s64(v325, v250), 0xEuLL);
  *v139.i8 = vrshrn_n_s64(vsubq_s64(v307, v231), 0xEuLL);
  *v25.i8 = vrshrn_n_s64(vsubq_s64(v282, v234), 0xEuLL);
  v165 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v138.i8, *v159.i8), *v147.i8), 0xEuLL), vmull_s32(vadd_s32(*v139.i8, *v106.i8), *v147.i8), 0xEuLL);
  v166 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v121.i8, *v108.i8), *v147.i8), 0xEuLL), vmull_s32(vadd_s32(*v25.i8, *v137.i8), *v147.i8), 0xEuLL);
  v167 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v159.i8, *v138.i8), *v150.i8), 0xEuLL), vmull_s32(vsub_s32(*v106.i8, *v139.i8), *v150.i8), 0xEuLL);
  v168 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v108.i8, *v121.i8), *v150.i8), 0xEuLL), vmull_s32(vsub_s32(*v137.i8, *v25.i8), *v150.i8), 0xEuLL);
  v169 = vnegq_s32(v344);
  v170 = vnegq_s32(v341);
  v171 = vnegq_s32(v346);
  v172 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v263, v335), 0xEuLL), vaddq_s64(v258, v333), 0xEuLL));
  v173 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v236, v322), 0xEuLL), vaddq_s64(v231, v307), 0xEuLL));
  v174 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v250, v325), 0xEuLL), vaddq_s64(v234, v282), 0xEuLL));
  v175 = vnegq_s32(v356);
  v176 = vnegq_s32(v353);
  if (a2)
  {
    *a2 = v361;
    a2[1] = v358;
    a2[4] = v169;
    a2[5] = v170;
    a2[8] = v350;
    a2[9] = v142;
    a2[12] = v171;
    a2[13] = v172;
    a2[16] = v153;
    a2[17] = v154;
    a2[20] = v165;
    a2[21] = v166;
    a2[24] = v161;
    a2[25] = v162;
    a2[28] = v148;
    a2[29] = v149;
    a2[32] = v151;
    a2[33] = v152;
    a2[36] = v163;
    a2[37] = v164;
    a2[40] = v167;
    a2[41] = v168;
    a2[44] = v155;
    a2[45] = v156;
    a2[48] = v331;
    a2[49] = v135;
    a2[52] = v173;
    a2[53] = v174;
    a2[56] = v364;
    a2[57] = v367;
    a2[60] = v175;
    a2[61] = v176;
  }

  else
  {
    v177 = vrshrn_high_n_s32(vrshrn_n_s32(v165, 6uLL), v166, 6uLL);
    v178 = vrshrn_high_n_s32(vrshrn_n_s32(v151, 6uLL), v152, 6uLL);
    v179 = vrshrn_high_n_s32(vrshrn_n_s32(v155, 6uLL), v156, 6uLL);
    v180 = vdupq_n_s16(~(-1 << a5));
    *a3 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v361, 6uLL), v358, 6uLL), *a3), v180), 0);
    v181 = 2 * a4;
    *(a3 + v181) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v169, 6uLL), v170, 6uLL), *(a3 + v181)), v180), 0);
    v182 = (a3 + v181 + v181);
    *v182 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v350, 6uLL), v142, 6uLL), *v182), v180), 0);
    v183 = (v182 + v181);
    *v183 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v171, 6uLL), v172, 6uLL), *v183), v180), 0);
    v184 = (v183 + v181);
    *v184 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v153, 6uLL), v154, 6uLL), *v184), v180), 0);
    v185 = (v184 + v181);
    *v185 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v177, *v185), v180), 0);
    v186 = (v185 + v181);
    *v186 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v161, 6uLL), v162, 6uLL), *v186), v180), 0);
    v187 = (v186 + v181);
    *v187 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v148, 6uLL), v149, 6uLL), *v187), v180), 0);
    v188 = (v187 + v181);
    *v188 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v178, *v188), v180), 0);
    v189 = (v188 + v181);
    *v189 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v163, 6uLL), v164, 6uLL), *v189), v180), 0);
    v190 = (v189 + v181);
    *v190 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v167, 6uLL), v168, 6uLL), *v190), v180), 0);
    v191 = (v190 + v181);
    *v191 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v179, *v191), v180), 0);
    v192 = (v191 + v181);
    *v192 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v331, 6uLL), v135, 6uLL), *v192), v180), 0);
    v193 = (v192 + v181);
    *v193 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v173, 6uLL), v174, 6uLL), *v193), v180), 0);
    v194 = (v193 + v181);
    *v194 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v364, 6uLL), v367, 6uLL), *v194), v180), 0);
    *(v194 + v181) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v175, 6uLL), v176, 6uLL), *(v194 + v181)), v180), 0);
  }

  return result;
}

double vp9_highbd_iht4x4_16_add_neon(int16x8_t *a1, uint64_t *a2, int a3, int a4, int a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (a5 == 8)
  {
    v9 = vuzp1q_s16(v5, v6);
    v10 = vuzp1q_s16(v7, v8);
    v11 = vtrn1q_s32(v9, v10);
    v12 = vtrn2q_s32(v9, v10);
    v13 = vzip2q_s64(v11, v12);
    v14.i64[0] = v11.i64[0];
    v14.i64[1] = v12.i64[0];
    v15 = vtrn1q_s16(v14, v13);
    v16 = vtrn2q_s16(v14, v13);
    v17 = vextq_s8(v16, v16, 8uLL).u64[0];
    if (a4 == 2)
    {
      v119 = vdupq_n_s16(0x14A3u);
      v120 = vdup_n_s16(0x26C9u);
      v121 = vdup_n_s16(0x3441u);
      v122 = vdupq_n_s16(0x3B6Cu);
      v123 = vmlal_s16(vmlal_high_s16(vmull_s16(*v15.i8, *v119.i8), v15, v122), v17, v120);
      v124 = vmlsl_s16(vmlsl_high_s16(vmull_s16(*v15.i8, v120), v15, v119), v17, *v122.i8);
      v125 = vaddq_s32(vmlsl_s16(v123, *v16.i8, v121), v124);
      v126 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v123, *v16.i8, v121), 0xEuLL), vmlal_s16(v124, *v16.i8, v121), 0xEuLL);
      v127 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddw_s16(vsubw_high_s16(vmovl_s16(*v15.i8), v15), v17), vdupq_n_s32(0x3441u)), 0xEuLL), v125, 0xEuLL);
      v128 = vtrn1q_s32(v126, v127);
      v129 = vtrn2q_s32(v126, v127);
      v127.i64[0] = v128.i64[0];
      v127.i64[1] = v129.i64[0];
      v130 = vzip2q_s64(v128, v129);
      v131 = vtrn1q_s16(v127, v130);
      v132 = vtrn2q_s16(v127, v130);
      v133 = vdupq_n_s16(0x2D41u);
      v134 = vmull_s16(*v131.i8, *v133.i8);
      v135 = vmlsl_high_s16(v134, v131, v133);
      v136 = vdupq_n_s16(0x187Eu);
      v137 = vmlal_high_s16(v134, v131, v133);
      v138 = vdupq_n_s16(0x3B21u);
      v139 = vmlsl_high_s16(vmull_s16(*v132.i8, *v136.i8), v132, v138);
      v140 = vmlal_high_s16(vmull_s16(*v132.i8, *v138.i8), v132, v136);
      v38 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v140, 0xEuLL), v139, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v137, 0xEuLL), v135, 0xEuLL));
      v39 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v135, 0xEuLL), v137, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v139, 0xEuLL), v140, 0xEuLL));
    }

    else if (a4 == 1)
    {
      v78 = vdupq_n_s16(0x2D41u);
      v79 = vmull_s16(*v15.i8, *v78.i8);
      v80 = vmlsl_high_s16(v79, v15, v78);
      v81 = vdup_n_s16(0x187Eu);
      v82 = vmlal_high_s16(v79, v15, v78);
      *v78.i8 = vdup_n_s16(0x3B21u);
      v83 = vmlsl_s16(vmull_s16(*v16.i8, v81), v17, *v78.i8);
      v84 = vmlal_s16(vmull_s16(v17, v81), *v16.i8, *v78.i8);
      v85 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xEuLL), v83, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v82, 0xEuLL), v80, 0xEuLL));
      v86 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xEuLL), v82, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v83, 0xEuLL), v84, 0xEuLL));
      v87 = vtrn1q_s32(v85, v86);
      v88 = vtrn2q_s32(v85, v86);
      v89 = vzip2q_s64(v87, v88);
      v87.i64[1] = v88.i64[0];
      v90 = vtrn1q_s16(v87, v89);
      v91 = vtrn2q_s16(v87, v89);
      v92 = vdupq_n_s16(0x14A3u);
      v93 = vdupq_n_s16(0x26C9u);
      *v80.i8 = vdup_n_s16(0x3441u);
      v94 = vdupq_n_s16(0x3B6Cu);
      v95 = vmlal_high_s16(vmlal_high_s16(vmull_s16(*v90.i8, *v92.i8), v90, v94), v91, v93);
      v96 = vmlsl_high_s16(vmlsl_high_s16(vmull_s16(*v90.i8, *v93.i8), v90, v92), v91, v94);
      v97 = vmulq_s32(vaddw_high_s16(vsubw_high_s16(vmovl_s16(*v90.i8), v90), v91), vdupq_n_s32(0x3441u));
      v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v95, *v91.i8, *v80.i8), 0xEuLL), vmlal_s16(v96, *v91.i8, *v80.i8), 0xEuLL);
      v39 = vrshrn_high_n_s32(vrshrn_n_s32(v97, 0xEuLL), vaddq_s32(vmlsl_s16(v95, *v91.i8, *v80.i8), v96), 0xEuLL);
    }

    else if (a4)
    {
      v183 = vdupq_n_s16(0x14A3u);
      v184 = vdupq_n_s16(0x26C9u);
      v185 = vdup_n_s16(0x3441u);
      v186 = vdupq_n_s16(0x3B6Cu);
      v187 = vaddw_s16(vsubw_high_s16(vmovl_s16(*v15.i8), v15), v17);
      v188 = vmlal_s16(vmlal_high_s16(vmull_s16(*v15.i8, *v183.i8), v15, v186), v17, *v184.i8);
      v189 = vmlsl_s16(vmlsl_high_s16(vmull_s16(*v15.i8, *v184.i8), v15, v183), v17, *v186.i8);
      v190 = vdupq_n_s32(0x3441u);
      v191 = vmulq_s32(v187, v190);
      v192 = vmlal_s16(v188, *v16.i8, v185);
      v193 = vaddq_s32(vmlsl_s16(v188, *v16.i8, v185), v189);
      v194 = vrshrn_high_n_s32(vrshrn_n_s32(v192, 0xEuLL), vmlal_s16(v189, *v16.i8, v185), 0xEuLL);
      v195 = vrshrn_high_n_s32(vrshrn_n_s32(v191, 0xEuLL), v193, 0xEuLL);
      v196 = vtrn1q_s32(v194, v195);
      v197 = vtrn2q_s32(v194, v195);
      v198 = vzip2q_s64(v196, v197);
      v196.i64[1] = v197.i64[0];
      v199 = vtrn1q_s16(v196, v198);
      v200 = vtrn2q_s16(v196, v198);
      v201 = vmlal_high_s16(vmlal_high_s16(vmull_s16(*v199.i8, *v183.i8), v199, v186), v200, v184);
      v202 = vmlsl_high_s16(vmlsl_high_s16(vmull_s16(*v199.i8, *v184.i8), v199, v183), v200, v186);
      v203 = vmulq_s32(vaddw_high_s16(vsubw_high_s16(vmovl_s16(*v199.i8), v199), v200), v190);
      v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v201, *v200.i8, v185), 0xEuLL), vmlal_s16(v202, *v200.i8, v185), 0xEuLL);
      v39 = vrshrn_high_n_s32(vrshrn_n_s32(v203, 0xEuLL), vaddq_s32(vmlsl_s16(v201, *v200.i8, v185), v202), 0xEuLL);
    }

    else
    {
      v18 = vdupq_n_s16(0x2D41u);
      v19 = vmull_s16(*v15.i8, *v18.i8);
      v20 = vmlsl_high_s16(v19, v15, v18);
      v21 = vmlal_high_s16(v19, v15, v18);
      v22 = vdupq_n_s16(0x187Eu);
      v23 = vdupq_n_s16(0x3B21u);
      v24 = vmlsl_s16(vmull_s16(*v16.i8, *v22.i8), v17, *v23.i8);
      v25 = vmlal_s16(vmull_s16(v17, *v22.i8), *v16.i8, *v23.i8);
      v26 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v25, 0xEuLL), v24, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xEuLL), v20, 0xEuLL));
      v27 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xEuLL), v21, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v24, 0xEuLL), v25, 0xEuLL));
      v28 = vtrn1q_s32(v26, v27);
      v29 = vtrn2q_s32(v26, v27);
      v30 = vzip2q_s64(v28, v29);
      v28.i64[1] = v29.i64[0];
      v31 = vtrn1q_s16(v28, v30);
      v32 = vtrn2q_s16(v28, v30);
      v33 = vmull_s16(*v31.i8, *v18.i8);
      v34 = vmlsl_high_s16(v33, v31, v18);
      v35 = vmlal_high_s16(v33, v31, v18);
      v36 = vmlsl_high_s16(vmull_s16(*v32.i8, *v22.i8), v32, v23);
      v37 = vmlal_high_s16(vmull_s16(*v32.i8, *v23.i8), v32, v22);
      *v24.i8 = vrshrn_n_s32(v36, 0xEuLL);
      v38 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v37, 0xEuLL), v36, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v35, 0xEuLL), v34, 0xEuLL));
      v39 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xEuLL), v35, 0xEuLL), vrshrn_high_n_s32(*v24.i8, v37, 0xEuLL));
    }

    v204 = vrshrq_n_s16(v38, 4uLL);
    v205 = vrshrq_n_s16(v39, 4uLL);
  }

  else
  {
    if (a4 == 2)
    {
      v141 = vtrn1q_s32(v5, v6);
      v142 = vtrn2q_s32(v5, v6);
      v143 = vtrn1q_s32(v7, v8);
      v144 = vtrn2q_s32(v7, v8);
      v145 = vzip2q_s64(v141, v143);
      v146 = vdupq_n_s32(0x14A3u);
      v147 = vdupq_n_s32(0x26C9u);
      v148 = vdupq_n_s32(0x3B6Cu);
      v149 = vmull_s32(*v141.i8, *v147.i8);
      v150 = vmlal_s32(vmull_s32(*v145.i8, *v148.i8), *v141.i8, *v146.i8);
      v141.i64[1] = v143.i64[0];
      v151 = vzip2q_s64(v142, v144);
      v152 = vdupq_n_s32(0x3441u);
      v153 = vaddq_s32(vsubq_s32(v141, v145), v151);
      v154 = vmlal_s32(v150, *v151.i8, *v147.i8);
      v155 = vmlal_high_s32(vmlal_high_s32(vmull_s32(*v143.i8, *&vextq_s8(v146, v146, 8uLL)), v145, v148), v151, v147);
      v156 = vmlsl_s32(vmlsl_s32(v149, *v145.i8, *v146.i8), *v151.i8, *v148.i8);
      v157 = vmlsl_high_s32(vmlsl_high_s32(vmull_s32(*v143.i8, *&vextq_s8(v147, v147, 8uLL)), v145, v146), v151, v148);
      v158 = vmlal_s32(v154, *v142.i8, *v152.i8);
      v159 = vaddq_s64(vmlsl_s32(v154, *v142.i8, *v152.i8), v156);
      v160 = vmlal_s32(v156, *v142.i8, *v152.i8);
      v161 = vaddq_s64(vmlsl_s32(v155, *v144.i8, *v152.i8), v157);
      v162 = vmlal_s32(v157, *v144.i8, *v152.i8);
      v163 = vrshrn_high_n_s64(vrshrn_n_s64(v158, 0xEuLL), vmlal_s32(v155, *v144.i8, *v152.i8), 0xEuLL);
      v164 = vrshrn_high_n_s64(vrshrn_n_s64(v160, 0xEuLL), v162, 0xEuLL);
      v165 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v153.i8, *v152.i8), 0xEuLL), vmull_high_s32(v153, v152), 0xEuLL);
      v166 = vrshrn_high_n_s64(vrshrn_n_s64(v159, 0xEuLL), v161, 0xEuLL);
      v167 = vtrn1q_s32(v163, v164);
      v168 = vtrn2q_s32(v163, v164);
      v169 = vtrn1q_s32(v165, v166);
      v170 = vtrn2q_s32(v165, v166);
      v171 = vzip2q_s64(v167, v169);
      v162.i64[0] = v167.i64[0];
      v162.i64[1] = v169.i64[0];
      v172.i64[0] = v168.i64[0];
      v172.i64[1] = v170.i64[0];
      v173 = vzip2q_s64(v168, v170);
      v174 = vaddq_s32(v162, v171);
      v175 = vsubq_s32(v162, v171);
      if (a5 == 10)
      {
        v176 = vdupq_n_s32(0x2D41u);
        v177 = vmulq_s32(v174, v176);
        v178 = vmulq_s32(v175, v176);
        v179 = vdupq_n_s32(0x187Eu);
        v180 = vmlaq_s32(vmulq_s32(v172, vdupq_n_s32(0x3B21u)), v173, v179);
        v181 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v172, v179), v173, vdupq_n_s32(0xFFFFC4DF)), 0xEuLL);
        v182 = vrshrq_n_s32(v180, 0xEuLL);
        v74 = vsubq_s32(vrshrq_n_s32(v178, 0xEuLL), v181);
        v75 = vrsraq_n_s32(v181, v178, 0xEuLL);
        v76 = vsubq_s32(vrshrq_n_s32(v177, 0xEuLL), v182);
        v77 = vrsraq_n_s32(v182, v177, 0xEuLL);
      }

      else
      {
        v288 = vdupq_n_s32(0x2D41u);
        v289 = vmull_s32(*v174.i8, *v288.i8);
        v290 = vmull_high_s32(v174, v288);
        v291 = vmull_s32(*v175.i8, *v288.i8);
        v292 = vdupq_n_s32(0x187Eu);
        v293 = vmull_high_s32(v175, v288);
        v294 = vdupq_n_s32(0x3B21u);
        v295 = vmull_s32(*v173.i8, *v292.i8);
        v296 = vmlsl_s32(vmull_s32(*v168.i8, *v292.i8), *v173.i8, *v294.i8);
        v297 = vmlsl_high_s32(vmull_high_s32(v172, v292), v173, v294);
        v298 = vmlal_high_s32(vmull_high_s32(v173, v292), v172, v294);
        v299 = vrshrn_high_n_s64(vrshrn_n_s64(v289, 0xEuLL), v290, 0xEuLL);
        v300 = vrshrn_high_n_s64(vrshrn_n_s64(v291, 0xEuLL), v293, 0xEuLL);
        v301 = vrshrn_high_n_s64(vrshrn_n_s64(v296, 0xEuLL), v297, 0xEuLL);
        v302 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v295, *v168.i8, *v294.i8), 0xEuLL), v298, 0xEuLL);
        v77 = vaddq_s32(v302, v299);
        v75 = vaddq_s32(v301, v300);
        v74 = vsubq_s32(v300, v301);
        v76 = vsubq_s32(v299, v302);
      }
    }

    else if (a4 == 1)
    {
      v98 = vtrn1q_s32(v5, v6);
      v99 = vtrn2q_s32(v5, v6);
      v100 = vtrn1q_s32(v7, v8);
      v101 = vtrn2q_s32(v7, v8);
      v102 = vzip2q_s64(v98, v100);
      v98.i64[1] = v100.i64[0];
      v103.i64[0] = v99.i64[0];
      v103.i64[1] = v101.i64[0];
      v104 = vzip2q_s64(v99, v101);
      v105 = vaddq_s32(v98, v102);
      v106 = vsubq_s32(v98, v102);
      if (a5 == 10)
      {
        v107 = vdupq_n_s32(0x2D41u);
        v108 = vmulq_s32(v105, v107);
        v109 = vmulq_s32(v106, v107);
        v110 = vdupq_n_s32(0x187Eu);
        v111 = vmlaq_s32(vmulq_s32(v103, v110), v104, vdupq_n_s32(0xFFFFC4DF));
        v112 = vmlaq_s32(vmulq_s32(v103, vdupq_n_s32(0x3B21u)), v104, v110);
        v113 = vrshrq_n_s32(v111, 0xEuLL);
        v114 = vrshrq_n_s32(v112, 0xEuLL);
        v115 = vsubq_s32(vrshrq_n_s32(v109, 0xEuLL), v113);
        v116 = vrsraq_n_s32(v113, v109, 0xEuLL);
        v117 = vsubq_s32(vrshrq_n_s32(v108, 0xEuLL), v114);
        v118 = vrsraq_n_s32(v114, v108, 0xEuLL);
      }

      else
      {
        v250 = vdupq_n_s32(0x2D41u);
        v251 = vmull_s32(*v105.i8, *v250.i8);
        v252 = vmull_high_s32(v105, v250);
        v253 = vmull_s32(*v106.i8, *v250.i8);
        v254 = vdupq_n_s32(0x187Eu);
        v255 = vmull_high_s32(v106, v250);
        v256 = vdupq_n_s32(0x3B21u);
        v257 = vmull_s32(*v104.i8, *v254.i8);
        v258 = vmlsl_s32(vmull_s32(*v99.i8, *v254.i8), *v104.i8, *v256.i8);
        v259 = vmlsl_high_s32(vmull_high_s32(v103, v254), v104, v256);
        v260 = vmlal_high_s32(vmull_high_s32(v104, v254), v103, v256);
        v261 = vrshrn_high_n_s64(vrshrn_n_s64(v251, 0xEuLL), v252, 0xEuLL);
        v262 = vrshrn_high_n_s64(vrshrn_n_s64(v253, 0xEuLL), v255, 0xEuLL);
        v263 = vrshrn_high_n_s64(vrshrn_n_s64(v258, 0xEuLL), v259, 0xEuLL);
        v264 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v257, *v99.i8, *v256.i8), 0xEuLL), v260, 0xEuLL);
        v118 = vaddq_s32(v264, v261);
        v116 = vaddq_s32(v263, v262);
        v115 = vsubq_s32(v262, v263);
        v117 = vsubq_s32(v261, v264);
      }

      v265 = vtrn1q_s32(v118, v116);
      v266 = vtrn2q_s32(v118, v116);
      v267 = vtrn1q_s32(v115, v117);
      v268 = vtrn2q_s32(v115, v117);
      v269 = vzip2q_s64(v265, v267);
      v270 = vdupq_n_s32(0x14A3u);
      v271 = vdupq_n_s32(0x26C9u);
      v272 = vmull_s32(*v265.i8, *v271.i8);
      v273 = vdupq_n_s32(0x3B6Cu);
      v274 = vmlal_s32(vmull_s32(*v269.i8, *v273.i8), *v265.i8, *v270.i8);
      v265.i64[1] = v267.i64[0];
      v275 = vzip2q_s64(v266, v268);
      v276 = vdupq_n_s32(0x3441u);
      v277 = vaddq_s32(vsubq_s32(v265, v269), v275);
      v278 = vmlal_s32(v274, *v275.i8, *v271.i8);
      v279 = vmlal_high_s32(vmlal_high_s32(vmull_s32(*v267.i8, *&vextq_s8(v270, v270, 8uLL)), v269, v273), v275, v271);
      v280 = vmlsl_s32(vmlsl_s32(v272, *v269.i8, *v270.i8), *v275.i8, *v273.i8);
      v281 = vmlsl_high_s32(vmlsl_high_s32(vmull_s32(*v267.i8, *&vextq_s8(v271, v271, 8uLL)), v269, v270), v275, v273);
      v282 = vmull_s32(*v277.i8, *v276.i8);
      v283 = vmull_high_s32(v277, v276);
      v284 = vmlal_s32(v278, *v266.i8, *v276.i8);
      v285 = vaddq_s64(vmlsl_s32(v278, *v266.i8, *v276.i8), v280);
      v286 = vaddq_s64(vmlsl_s32(v279, *v268.i8, *v276.i8), v281);
      v287 = vmlal_s32(v281, *v268.i8, *v276.i8);
      v77 = vrshrn_high_n_s64(vrshrn_n_s64(v284, 0xEuLL), vmlal_s32(v279, *v268.i8, *v276.i8), 0xEuLL);
      v75 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v280, *v266.i8, *v276.i8), 0xEuLL), v287, 0xEuLL);
      v74 = vrshrn_high_n_s64(vrshrn_n_s64(v282, 0xEuLL), v283, 0xEuLL);
      v76 = vrshrn_high_n_s64(vrshrn_n_s64(v285, 0xEuLL), v286, 0xEuLL);
    }

    else
    {
      v40 = vtrn1q_s32(v5, v6);
      if (a4)
      {
        v206 = vtrn2q_s32(v5, v6);
        v207 = vtrn1q_s32(v7, v8);
        v208 = vtrn2q_s32(v7, v8);
        v209 = vzip2q_s64(v40, v207);
        v210 = vdupq_n_s32(0x14A3u);
        v211 = vdupq_n_s32(0x26C9u);
        v212 = vdupq_n_s32(0x3B6Cu);
        v213 = vmull_s32(*v40.i8, *v211.i8);
        v214 = vmlal_s32(vmull_s32(*v209.i8, *v212.i8), *v40.i8, *v210.i8);
        v215.i64[0] = v40.i64[0];
        v215.i64[1] = v207.i64[0];
        v216 = vzip2q_s64(v206, v208);
        v217 = vextq_s8(v210, v210, 8uLL).u64[0];
        v218 = vextq_s8(v211, v211, 8uLL).u64[0];
        v219 = vdupq_n_s32(0x3441u);
        v220 = vaddq_s32(vsubq_s32(v215, v209), v216);
        v221 = vmlal_s32(v214, *v216.i8, *v211.i8);
        v222 = vmlal_high_s32(vmlal_high_s32(vmull_s32(*v207.i8, v217), v209, v212), v216, v211);
        v223 = vmlsl_s32(vmlsl_s32(v213, *v209.i8, *v210.i8), *v216.i8, *v212.i8);
        v224 = vmlsl_high_s32(vmlsl_high_s32(vmull_s32(*v207.i8, v218), v209, v210), v216, v212);
        v225 = vmlal_s32(v221, *v206.i8, *v219.i8);
        v226 = vaddq_s64(vmlsl_s32(v221, *v206.i8, *v219.i8), v223);
        v227 = vmlal_s32(v223, *v206.i8, *v219.i8);
        v228 = vaddq_s64(vmlsl_s32(v222, *v208.i8, *v219.i8), v224);
        v229 = vmlal_s32(v224, *v208.i8, *v219.i8);
        v230 = vrshrn_high_n_s64(vrshrn_n_s64(v225, 0xEuLL), vmlal_s32(v222, *v208.i8, *v219.i8), 0xEuLL);
        v231 = vrshrn_high_n_s64(vrshrn_n_s64(v227, 0xEuLL), v229, 0xEuLL);
        v232 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v220.i8, *v219.i8), 0xEuLL), vmull_high_s32(v220, v219), 0xEuLL);
        v233 = vrshrn_high_n_s64(vrshrn_n_s64(v226, 0xEuLL), v228, 0xEuLL);
        v234 = vtrn1q_s32(v230, v231);
        v235 = vtrn2q_s32(v230, v231);
        v236 = vtrn1q_s32(v232, v233);
        v237 = vtrn2q_s32(v232, v233);
        v238 = vzip2q_s64(v234, v236);
        v239 = vmull_s32(*v234.i8, *v211.i8);
        v240 = vmlal_s32(vmull_s32(*v238.i8, *v212.i8), *v234.i8, *v210.i8);
        v234.i64[1] = v236.i64[0];
        v241 = vzip2q_s64(v235, v237);
        v242 = vaddq_s32(vsubq_s32(v234, v238), v241);
        v243 = vmlal_s32(v240, *v241.i8, *v211.i8);
        v244 = vmlal_high_s32(vmlal_high_s32(vmull_s32(*v236.i8, v217), v238, v212), v241, v211);
        v245 = vmlsl_s32(vmlsl_s32(v239, *v238.i8, *v210.i8), *v241.i8, *v212.i8);
        v246 = vmlsl_high_s32(vmlsl_high_s32(vmull_s32(*v236.i8, v218), v238, v210), v241, v212);
        v247 = vmlal_s32(v244, *v237.i8, *v219.i8);
        v248 = vaddq_s64(vmlsl_s32(v243, *v235.i8, *v219.i8), v245);
        v249 = vaddq_s64(vmlsl_s32(v244, *v237.i8, *v219.i8), v246);
        v77 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v243, *v235.i8, *v219.i8), 0xEuLL), v247, 0xEuLL);
        v75 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v245, *v235.i8, *v219.i8), 0xEuLL), vmlal_s32(v246, *v237.i8, *v219.i8), 0xEuLL);
        v74 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v242.i8, *v219.i8), 0xEuLL), vmull_high_s32(v242, v219), 0xEuLL);
        v76 = vrshrn_high_n_s64(vrshrn_n_s64(v248, 0xEuLL), v249, 0xEuLL);
      }

      else
      {
        v41 = vtrn2q_s32(v5, v6);
        v42 = vtrn1q_s32(v7, v8);
        v43 = vtrn2q_s32(v7, v8);
        v44 = vzip2q_s64(v40, v42);
        v45.i64[0] = v40.i64[0];
        v45.i64[1] = v42.i64[0];
        v46.i64[0] = v41.i64[0];
        v46.i64[1] = v43.i64[0];
        v47 = vzip2q_s64(v41, v43);
        v48 = vaddq_s32(v45, v44);
        v49 = vsubq_s32(v45, v44);
        v50 = vdupq_n_s32(0x2D41u);
        if (a5 == 10)
        {
          v51 = vmulq_s32(v48, v50);
          v52 = vmulq_s32(v49, v50);
          v53 = vdupq_n_s32(0x187Eu);
          v54 = vdupq_n_s32(0x3B21u);
          v55 = vdupq_n_s32(0xFFFFC4DF);
          v56 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v46, v53), v47, v55), 0xEuLL);
          v57 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v46, v54), v47, v53), 0xEuLL);
          v58 = vsubq_s32(vrshrq_n_s32(v52, 0xEuLL), v56);
          v59 = vrsraq_n_s32(v56, v52, 0xEuLL);
          v60 = vsubq_s32(vrshrq_n_s32(v51, 0xEuLL), v57);
          v61 = vrsraq_n_s32(v57, v51, 0xEuLL);
          v62 = vtrn1q_s32(v61, v59);
          v63 = vtrn2q_s32(v61, v59);
          v64 = vtrn1q_s32(v58, v60);
          v65 = vtrn2q_s32(v58, v60);
          v66 = vzip2q_s64(v62, v64);
          v62.i64[1] = v64.i64[0];
          v67 = vzip2q_s64(v63, v65);
          v63.i64[1] = v65.i64[0];
          v68 = vaddq_s32(v62, v66);
          v69 = vsubq_s32(v62, v66);
          v70 = vmulq_s32(v68, v50);
          v71 = vmulq_s32(v69, v50);
          v72 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v63, v53), v67, v55), 0xEuLL);
          v73 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v63, v54), v67, v53), 0xEuLL);
          v74 = vsubq_s32(vrshrq_n_s32(v71, 0xEuLL), v72);
          v75 = vrsraq_n_s32(v72, v71, 0xEuLL);
          v76 = vsubq_s32(vrshrq_n_s32(v70, 0xEuLL), v73);
          v77 = vrsraq_n_s32(v73, v70, 0xEuLL);
        }

        else
        {
          v303 = vmull_s32(*v48.i8, *v50.i8);
          v304 = vmull_high_s32(v48, v50);
          v305 = vmull_s32(*v49.i8, *v50.i8);
          v306 = vmull_high_s32(v49, v50);
          v307 = vdupq_n_s32(0x187Eu);
          v308 = vdupq_n_s32(0x3B21u);
          v309 = vmlsl_s32(vmull_s32(*v41.i8, *v307.i8), *v47.i8, *v308.i8);
          v310 = vmlsl_high_s32(vmull_high_s32(v46, v307), v47, v308);
          v311 = vmlal_s32(vmull_s32(*v47.i8, *v307.i8), *v41.i8, *v308.i8);
          v312 = vmlal_high_s32(vmull_high_s32(v47, v307), v46, v308);
          v313 = vrshrn_high_n_s64(vrshrn_n_s64(v303, 0xEuLL), v304, 0xEuLL);
          v314 = vrshrn_high_n_s64(vrshrn_n_s64(v305, 0xEuLL), v306, 0xEuLL);
          v315 = vrshrn_high_n_s64(vrshrn_n_s64(v309, 0xEuLL), v310, 0xEuLL);
          v316 = vrshrn_high_n_s64(vrshrn_n_s64(v311, 0xEuLL), v312, 0xEuLL);
          v317 = vaddq_s32(v316, v313);
          v318 = vaddq_s32(v315, v314);
          v319 = vsubq_s32(v314, v315);
          v320 = vsubq_s32(v313, v316);
          v321 = vtrn1q_s32(v317, v318);
          v322 = vtrn2q_s32(v317, v318);
          v323 = vtrn1q_s32(v319, v320);
          v324 = vtrn2q_s32(v319, v320);
          v325 = vzip2q_s64(v321, v323);
          v321.i64[1] = v323.i64[0];
          v326 = vzip2q_s64(v322, v324);
          v327 = vaddq_s32(v321, v325);
          v328 = vsubq_s32(v321, v325);
          v329 = vmull_s32(*v327.i8, *v50.i8);
          v330 = vmull_high_s32(v327, v50);
          v331 = vmull_s32(*v328.i8, *v50.i8);
          v332 = vmull_high_s32(v328, v50);
          v333 = vmlsl_s32(vmull_s32(*v322.i8, *v307.i8), *v326.i8, *v308.i8);
          v334 = vmlsl_high_s32(vmull_s32(*v324.i8, *v307.i8), v326, v308);
          v335 = vmlal_s32(vmull_s32(*v326.i8, *v307.i8), *v322.i8, *v308.i8);
          v336 = vmlal_high_s32(vmull_s32(*v324.i8, *v308.i8), v326, v307);
          v337 = vrshrn_high_n_s64(vrshrn_n_s64(v329, 0xEuLL), v330, 0xEuLL);
          v338 = vrshrn_high_n_s64(vrshrn_n_s64(v331, 0xEuLL), v332, 0xEuLL);
          v339 = vrshrn_high_n_s64(vrshrn_n_s64(v333, 0xEuLL), v334, 0xEuLL);
          v340 = vrshrn_high_n_s64(vrshrn_n_s64(v335, 0xEuLL), v336, 0xEuLL);
          v77 = vaddq_s32(v340, v337);
          v75 = vaddq_s32(v339, v338);
          v74 = vsubq_s32(v338, v339);
          v76 = vsubq_s32(v337, v340);
        }
      }
    }

    v204 = vqrshrn_high_n_s32(vqrshrn_n_s32(v77, 4uLL), v75, 4uLL);
    v205 = vqrshrn_high_n_s32(vqrshrn_n_s32(v74, 4uLL), v76, 4uLL);
  }

  v341 = vdupq_n_s16(~(-1 << a5));
  v342.i64[0] = *a2;
  v343 = 2 * a3;
  v342.i64[1] = *(a2 + v343);
  v344 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v204, v342), v341), 0);
  *a2 = v344.i64[0];
  *(a2 + v343) = vextq_s8(v344, v344, 8uLL).u64[0];
  v345 = (a2 + v343 + v343);
  v344.i64[0] = *v345;
  v344.i64[1] = *(v345 + v343);
  v346 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v205, v344), v341), 0);
  *v345 = v346.i64[0];
  *&result = vextq_s8(v346, v346, 8uLL).u64[0];
  *(v345 + v343) = result;
  return result;
}

int16x8_t vp9_highbd_iht8x8_64_add_neon(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v12 = a1[6];
  v11 = a1[7];
  v13 = a1[9];
  v1656 = a1[8];
  v15 = a1[10];
  v14 = a1[11];
  v17 = a1[12];
  v16 = a1[13];
  v19 = a1[14];
  v18 = a1[15];
  if (a5 == 8)
  {
    v20 = vuzp1q_s16(v5, v6);
    v21 = vuzp1q_s16(v7, v8);
    v22 = vuzp1q_s16(v10, v9);
    v23 = vuzp1q_s16(v12, v11);
    v24 = vuzp1q_s16(v1656, v13);
    v25 = vuzp1q_s16(v15, v14);
    v26 = vuzp1q_s16(v17, v16);
    v27 = vuzp1q_s16(v19, v18);
    v28 = vtrn1q_s16(v20, v21);
    v29 = vtrn2q_s16(v20, v21);
    v30 = vtrn1q_s16(v22, v23);
    v31 = vtrn2q_s16(v22, v23);
    v32 = vtrn1q_s16(v24, v25);
    v33 = vtrn2q_s16(v24, v25);
    v34 = vtrn1q_s16(v26, v27);
    v35 = vtrn2q_s16(v26, v27);
    v36 = vtrn1q_s32(v28, v30);
    v47 = vtrn2q_s32(v28, v30);
    v45 = vtrn1q_s32(v29, v31);
    v37 = vtrn1q_s32(v32, v34);
    v38 = vtrn2q_s32(v32, v34);
    v39 = vtrn1q_s32(v33, v35);
    v40 = vzip2q_s64(v36, v37);
    v44.i64[0] = v36.i64[0];
    v41 = vzip2q_s64(v45, v39);
    v42 = vzip2q_s64(v47, v38);
    v48 = vtrn2q_s32(v29, v31);
    v43 = vtrn2q_s32(v33, v35);
    v44.i64[1] = v37.i64[0];
    v45.i64[1] = v39.i64[0];
    v46 = vzip2q_s64(v48, v43);
    v47.i64[1] = v38.i64[0];
    v48.i64[1] = v43.i64[0];
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        v352 = vdupq_n_s16(0xC7Cu);
        v353 = vdupq_n_s16(0xDC72u);
        v354 = vdupq_n_s16(0x3537u);
        v355 = vmull_s16(*v48.i8, *v354.i8);
        v356 = vdupq_n_s16(0x3EC5u);
        v357 = vmull_high_s16(v48, v354);
        v358 = vmlsl_high_s16(vmull_high_s16(v45, v352), v46, v356);
        v359 = vmlal_s16(vmull_s16(*v41.i8, *v354.i8), *v48.i8, *v353.i8);
        v360 = vmlal_high_s16(vmull_high_s16(v41, v354), v48, v353);
        v361 = vmlsl_s16(v355, *v41.i8, *v353.i8);
        v362 = vmlsl_high_s16(v357, v41, v353);
        v363 = vmlal_s16(vmull_s16(*v46.i8, *v352.i8), *v45.i8, *v356.i8);
        v364 = vmlal_high_s16(vmull_high_s16(v46, v352), v45, v356);
        v365 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v45.i8, *v352.i8), *v46.i8, *v356.i8), 0xEuLL);
        *v352.i8 = vrshrn_n_s32(v358, 0xEuLL);
        v366 = vrshrn_n_s32(v359, 0xEuLL);
        v367 = vsub_s16(v365, v366);
        v368 = vrshrn_high_n_s32(v365, v358, 0xEuLL);
        *v353.i8 = vrshrn_n_s32(v360, 0xEuLL);
        v369 = vrshrn_high_n_s32(v366, v360, 0xEuLL);
        *v358.i8 = vrshrn_n_s32(v361, 0xEuLL);
        *v360.i8 = vrshrn_n_s32(v362, 0xEuLL);
        *v361.i8 = vrshrn_n_s32(v363, 0xEuLL);
        *v363.i8 = vsub_s16(*v361.i8, *v358.i8);
        v370 = vrshrn_high_n_s32(*v358.i8, v362, 0xEuLL);
        *v359.i8 = vrshrn_n_s32(v364, 0xEuLL);
        v371 = vrshrn_high_n_s32(*v361.i8, v364, 0xEuLL);
        v372 = vdupq_n_s16(0x2D41u);
        v373 = vdupq_n_s16(0x187Eu);
        v374 = vdupq_n_s16(0x3B21u);
        v375 = vmlal_s16(vmull_s16(*v40.i8, *v372.i8), *v44.i8, *v372.i8);
        v376 = vmlal_high_s16(vmull_high_s16(v40, v372), v44, v372);
        v377 = vmlsl_s16(vmull_s16(*v44.i8, *v372.i8), *v40.i8, *v372.i8);
        v378 = vmlsl_high_s16(vmull_high_s16(v44, v372), v40, v372);
        v379 = vmlsl_s16(vmull_s16(*v47.i8, *v373.i8), *v42.i8, *v374.i8);
        v380 = vmlsl_high_s16(vmull_high_s16(v47, v373), v42, v374);
        v381 = vmlal_s16(vmull_s16(*v42.i8, *v373.i8), *v47.i8, *v374.i8);
        v382 = vmlal_high_s16(vmull_high_s16(v42, v373), v47, v374);
        v383 = vrshrn_high_n_s32(vrshrn_n_s32(v375, 0xEuLL), v376, 0xEuLL);
        v384 = vrshrn_high_n_s32(vrshrn_n_s32(v377, 0xEuLL), v378, 0xEuLL);
        v385 = vrshrn_high_n_s32(vrshrn_n_s32(v379, 0xEuLL), v380, 0xEuLL);
        v386 = vrshrn_high_n_s32(vrshrn_n_s32(v381, 0xEuLL), v382, 0xEuLL);
        v387 = vaddq_s16(v369, v368);
        v388 = vaddq_s16(v371, v370);
        v389 = vaddq_s16(v386, v383);
        v390 = vaddq_s16(v385, v384);
        v391 = vsubq_s16(v384, v385);
        v392 = vsubq_s16(v383, v386);
        *v385.i8 = vsub_s16(*v359.i8, *v360.i8);
        *v352.i8 = vsub_s16(*v352.i8, *v353.i8);
        v393 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v363.i8, *v372.i8), v367, *v372.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v385.i8, *v372.i8), *v352.i8, *v372.i8), 0xEuLL);
        v394 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v367, *v372.i8), *v363.i8, *v372.i8), 0xEuLL), vmlal_s16(vmull_s16(*v352.i8, *v372.i8), *v385.i8, *v372.i8), 0xEuLL);
        v395 = vaddq_s16(v389, v388);
        v396 = vaddq_s16(v394, v390);
        v397 = vaddq_s16(v393, v391);
        v398 = vaddq_s16(v392, v387);
        v399 = vsubq_s16(v392, v387);
        v400 = vsubq_s16(v391, v393);
        v401 = vsubq_s16(v390, v394);
        v402 = vsubq_s16(v389, v388);
        v403 = vtrn1q_s16(v395, v396);
        v404 = vtrn2q_s16(v395, v396);
        v405 = vtrn1q_s16(v397, v398);
        v406 = vtrn2q_s16(v397, v398);
        v407 = vtrn1q_s16(v399, v400);
        v408 = vtrn2q_s16(v399, v400);
        v409 = vtrn1q_s16(v401, v402);
        v410 = vtrn2q_s16(v401, v402);
        v411 = vtrn1q_s32(v403, v405);
        v412 = vtrn2q_s32(v403, v405);
        v413 = vtrn1q_s32(v404, v406);
        v414 = vtrn2q_s32(v404, v406);
        v415 = vtrn1q_s32(v407, v409);
        v416 = vtrn2q_s32(v407, v409);
        v417 = vtrn1q_s32(v408, v410);
        v418 = vtrn2q_s32(v408, v410);
        v419 = vzip2q_s64(v411, v415);
        v420 = vzip2q_s64(v413, v417);
        v421 = vzip2q_s64(v412, v416);
        v422 = vdupq_n_s16(0x3FB1u);
        v423 = vzip2q_s64(v414, v418);
        v424 = vdupq_n_s16(0x646u);
        v425 = vmull_s16(*v423.i8, *v424.i8);
        v402.i64[0] = vextq_s8(v424, v424, 8uLL).u64[0];
        v426 = vmull_high_s16(v423, v424);
        v427 = vmlal_s16(vmull_s16(*v411.i8, *v424.i8), *v423.i8, *v422.i8);
        v428 = vmlal_high_s16(vmull_s16(*v415.i8, *v402.i8), v423, v422);
        v429 = vmlsl_s16(v425, *v411.i8, *v422.i8);
        v430 = vmlsl_s16(v426, *v415.i8, *&vextq_s8(v422, v422, 8uLL));
        v431 = vdupq_n_s16(0x3871u);
        v432 = vdupq_n_s16(0x1E2Bu);
        v433 = vmull_s16(*v420.i8, *v432.i8);
        v406.i64[0] = vextq_s8(v432, v432, 8uLL).u64[0];
        v434 = vmull_high_s16(v420, v432);
        v435 = vmlal_s16(vmull_s16(*v412.i8, *v432.i8), *v420.i8, *v431.i8);
        v436 = vmlal_high_s16(vmull_s16(*v416.i8, *v406.i8), v420, v431);
        v437 = vmlsl_s16(v433, *v412.i8, *v431.i8);
        v438 = vmlsl_s16(v434, *v416.i8, *&vextq_s8(v431, v431, 8uLL));
        v439 = vdupq_n_s16(0x289Au);
        v440 = vmull_s16(*v418.i8, *&vextq_s8(v439, v439, 8uLL));
        v441 = vdupq_n_s16(0x3179u);
        v442 = vmull_s16(*v418.i8, *&vextq_s8(v441, v441, 8uLL));
        v443 = vmlal_s16(vmull_s16(*v419.i8, *v441.i8), *v414.i8, *v439.i8);
        v444 = vmlal_high_s16(v440, v419, v441);
        v445 = vmlsl_s16(vmull_s16(*v414.i8, *v441.i8), *v419.i8, *v439.i8);
        v446 = vdupq_n_s16(0x1294u);
        v447 = vmlsl_high_s16(v442, v419, v439);
        v448 = vdupq_n_s16(0x3D3Fu);
        v449 = vmlal_s16(vmull_s16(*v421.i8, *v448.i8), *v413.i8, *v446.i8);
        v450 = vmlal_high_s16(vmull_s16(*v417.i8, *&vextq_s8(v446, v446, 8uLL)), v421, v448);
        v451 = vmlsl_s16(vmull_s16(*v413.i8, *v448.i8), *v421.i8, *v446.i8);
        v452 = vmlsl_high_s16(vmull_s16(*v417.i8, *&vextq_s8(v448, v448, 8uLL)), v421, v446);
        v453 = vaddq_s32(v444, v428);
        *v448.i8 = vrshrn_n_s32(vaddq_s32(v443, v427), 0xEuLL);
        *v413.i8 = vrshrn_n_s32(v453, 0xEuLL);
        *v446.i8 = vrshrn_n_s32(vaddq_s32(v449, v435), 0xEuLL);
        v454 = vsub_s16(*v448.i8, *v446.i8);
        v455 = vrshrn_high_n_s32(*v448.i8, v453, 0xEuLL);
        v456 = vaddq_s32(v447, v430);
        v457 = vrshrn_n_s32(vaddq_s32(v445, v429), 0xEuLL);
        *v448.i8 = vrshrn_n_s32(v456, 0xEuLL);
        v458 = vrshrn_n_s32(vaddq_s32(v451, v437), 0xEuLL);
        *v453.i8 = vsub_s16(v457, v458);
        v459 = vrshrn_high_n_s32(v457, v456, 0xEuLL);
        v460 = vaddq_s32(v450, v436);
        v461 = vrshrn_n_s32(v460, 0xEuLL);
        v462 = vrshrn_high_n_s32(*v446.i8, v460, 0xEuLL);
        v463 = vaddq_s32(v452, v438);
        *v427.i8 = vrshrn_n_s32(vsubq_s32(v427, v443), 0xEuLL);
        *v428.i8 = vrshrn_n_s32(vsubq_s32(v428, v444), 0xEuLL);
        *v429.i8 = vrshrn_n_s32(vsubq_s32(v429, v445), 0xEuLL);
        *v430.i8 = vrshrn_n_s32(vsubq_s32(v430, v447), 0xEuLL);
        *v435.i8 = vrshrn_n_s32(vsubq_s32(v435, v449), 0xEuLL);
        *v436.i8 = vrshrn_n_s32(vsubq_s32(v436, v450), 0xEuLL);
        *v437.i8 = vrshrn_n_s32(vsubq_s32(v437, v451), 0xEuLL);
        *v438.i8 = vrshrn_n_s32(vsubq_s32(v438, v452), 0xEuLL);
        v464 = vmull_s16(*v427.i8, *v373.i8);
        v465 = vmlal_s16(vmull_s16(*v429.i8, *v373.i8), *v427.i8, *v374.i8);
        v466 = vmlal_s16(vmull_s16(*v430.i8, *v373.i8), *v428.i8, *v374.i8);
        v467 = vmlsl_s16(v464, *v429.i8, *v374.i8);
        v468 = vmlsl_s16(vmull_s16(*v428.i8, *v373.i8), *v430.i8, *v374.i8);
        v469 = vmull_s16(*v437.i8, *v374.i8);
        v470 = vmull_s16(*v438.i8, *v374.i8);
        v471 = vmlal_s16(vmull_s16(*v435.i8, *v374.i8), *v437.i8, *v373.i8);
        v472 = vmlal_s16(vmull_s16(*v436.i8, *v374.i8), *v438.i8, *v373.i8);
        v473 = vmlsl_s16(v469, *v435.i8, *v373.i8);
        v474 = vmlsl_s16(v470, *v436.i8, *v373.i8);
        v158 = vaddq_s16(v462, v455);
        v475 = vaddq_s16(v459, vrshrn_high_n_s32(v458, v463, 0xEuLL));
        v476 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v473, v465), 0xEuLL), vaddq_s32(v474, v466), 0xEuLL);
        v157 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v471, v467), 0xEuLL), vaddq_s32(v472, v468), 0xEuLL);
        *v373.i8 = vrshrn_n_s32(vsubq_s32(v465, v473), 0xEuLL);
        *v473.i8 = vrshrn_n_s32(vsubq_s32(v466, v474), 0xEuLL);
        *v435.i8 = vrshrn_n_s32(vsubq_s32(v467, v471), 0xEuLL);
        *v472.i8 = vrshrn_n_s32(vsubq_s32(v468, v472), 0xEuLL);
        *v436.i8 = vsub_s16(*v413.i8, v461);
        *v468.i8 = vsub_s16(*v448.i8, vrshrn_n_s32(v463, 0xEuLL));
        v477 = vmlsl_s16(vmull_s16(*v436.i8, *v372.i8), *v468.i8, *v372.i8);
        v478 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v453.i8, *v372.i8), v454, *v372.i8), 0xEuLL), vmlal_s16(vmull_s16(*v468.i8, *v372.i8), *v436.i8, *v372.i8), 0xEuLL);
        v153 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v454, *v372.i8), *v453.i8, *v372.i8), 0xEuLL), v477, 0xEuLL);
        v479 = vmlsl_s16(vmull_s16(*v373.i8, *v372.i8), *v435.i8, *v372.i8);
        v480 = vmlsl_s16(vmull_s16(*v473.i8, *v372.i8), *v472.i8, *v372.i8);
        v154 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v435.i8, *v372.i8), *v373.i8, *v372.i8), 0xEuLL), vmlal_s16(vmull_s16(*v472.i8, *v372.i8), *v473.i8, *v372.i8), 0xEuLL);
        v481 = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xEuLL), v480, 0xEuLL);
        v156 = vnegq_s16(v476);
        v152 = vnegq_s16(v478);
      }

      else
      {
        if (!a4)
        {
          v49 = vdupq_n_s16(0xC7Cu);
          v50 = vdupq_n_s16(0xDC72u);
          v51 = vdupq_n_s16(0x3537u);
          v52 = vdupq_n_s16(0x3EC5u);
          v53 = vmlsl_s16(vmull_s16(*v45.i8, *v49.i8), *v46.i8, *v52.i8);
          v54 = vmlsl_high_s16(vmull_high_s16(v45, v49), v46, v52);
          v55 = vmlal_s16(vmull_s16(*v41.i8, *v51.i8), *v48.i8, *v50.i8);
          v56 = vmlal_high_s16(vmull_high_s16(v41, v51), v48, v50);
          v57 = vmlsl_s16(vmull_s16(*v48.i8, *v51.i8), *v41.i8, *v50.i8);
          v58 = vmlsl_high_s16(vmull_high_s16(v48, v51), v41, v50);
          v59 = vmlal_s16(vmull_s16(*v46.i8, *v49.i8), *v45.i8, *v52.i8);
          v60 = vmlal_high_s16(vmull_high_s16(v46, v49), v45, v52);
          v61 = vdupq_n_s16(0x2D41u);
          v62 = vmull_s16(*v44.i8, *v61.i8);
          v63 = vmull_high_s16(v44, v61);
          v64 = vdupq_n_s16(0x187Eu);
          v65 = vmlal_s16(vmull_s16(*v40.i8, *v61.i8), *v44.i8, *v61.i8);
          v66 = vmlal_high_s16(vmull_high_s16(v40, v61), v44, v61);
          v67 = vdupq_n_s16(0x3B21u);
          v68 = vmlsl_s16(vmull_s16(*v47.i8, *v64.i8), *v42.i8, *v67.i8);
          v69 = vmlsl_high_s16(vmull_high_s16(v47, v64), v42, v67);
          v70 = vmlal_s16(vmull_s16(*v42.i8, *v64.i8), *v47.i8, *v67.i8);
          v71 = vmlal_high_s16(vmull_high_s16(v42, v64), v47, v67);
          v72 = vrshrn_high_n_s32(vrshrn_n_s32(v65, 0xEuLL), v66, 0xEuLL);
          v73 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v62, *v40.i8, *v61.i8), 0xEuLL), vmlsl_high_s16(v63, v40, v61), 0xEuLL);
          v74 = vrshrn_high_n_s32(vrshrn_n_s32(v68, 0xEuLL), v69, 0xEuLL);
          *v53.i8 = vrshrn_n_s32(v53, 0xEuLL);
          *v55.i8 = vrshrn_n_s32(v55, 0xEuLL);
          v75 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xEuLL), v71, 0xEuLL);
          *v69.i8 = vsub_s16(*v53.i8, *v55.i8);
          *v57.i8 = vrshrn_n_s32(v57, 0xEuLL);
          *v59.i8 = vrshrn_n_s32(v59, 0xEuLL);
          v76 = vaddq_s16(vrshrn_high_n_s32(*v55.i8, v56, 0xEuLL), vrshrn_high_n_s32(*v53.i8, v54, 0xEuLL));
          *v55.i8 = vsub_s16(*v59.i8, *v57.i8);
          v77 = vaddq_s16(vrshrn_high_n_s32(*v59.i8, v60, 0xEuLL), vrshrn_high_n_s32(*v57.i8, v58, 0xEuLL));
          v78 = vaddq_s16(v74, v73);
          v79 = vsubq_s16(v73, v74);
          v80 = vaddq_s16(v75, v72);
          v81 = vsubq_s16(v72, v75);
          *v73.i8 = vsub_s16(vrshrn_n_s32(v60, 0xEuLL), vrshrn_n_s32(v58, 0xEuLL));
          *v60.i8 = vsub_s16(vrshrn_n_s32(v54, 0xEuLL), vrshrn_n_s32(v56, 0xEuLL));
          v82 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v55.i8, *v61.i8), *v69.i8, *v61.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v73.i8, *v61.i8), *v60.i8, *v61.i8), 0xEuLL);
          v83 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v69.i8, *v61.i8), *v55.i8, *v61.i8), 0xEuLL), vmlal_s16(vmull_s16(*v60.i8, *v61.i8), *v73.i8, *v61.i8), 0xEuLL);
          v84 = vaddq_s16(v80, v77);
          v85 = vaddq_s16(v81, v76);
          v86 = vsubq_s16(v81, v76);
          v87 = vaddq_s16(v82, v79);
          v88 = vsubq_s16(v79, v82);
          v89 = vaddq_s16(v83, v78);
          v90 = vsubq_s16(v78, v83);
          v91 = vsubq_s16(v80, v77);
          v92 = vtrn1q_s16(v84, v89);
          v93 = vtrn2q_s16(v84, v89);
          v94 = vtrn1q_s16(v87, v85);
          v95 = vtrn2q_s16(v87, v85);
          v96 = vtrn1q_s16(v86, v88);
          v97 = vtrn2q_s16(v86, v88);
          v98 = vtrn1q_s16(v90, v91);
          v99 = vtrn2q_s16(v90, v91);
          v100 = vtrn1q_s32(v92, v94);
          v101 = vtrn2q_s32(v92, v94);
          v102 = vtrn1q_s32(v93, v95);
          v103 = vtrn2q_s32(v93, v95);
          v104 = vtrn1q_s32(v96, v98);
          v105 = vtrn2q_s32(v96, v98);
          v106 = vtrn1q_s32(v97, v99);
          v107 = vtrn2q_s32(v97, v99);
          v108 = vzip2q_s64(v102, v106);
          v109 = vmlal_high_s16(vmull_s16(*v107.i8, *&vextq_s8(v50, v50, 8uLL)), v108, v51);
          v110 = vmlsl_s16(vmull_s16(*v103.i8, *v51.i8), *v108.i8, *v50.i8);
          v111 = vmlsl_high_s16(vmull_s16(*v107.i8, *&vextq_s8(v51, v51, 8uLL)), v108, v50);
          v112 = vmlal_s16(vmull_s16(*v108.i8, *v51.i8), *v103.i8, *v50.i8);
          v113 = vzip2q_s64(v103, v107);
          v114 = vzip2q_s64(v100, v104);
          v115 = vmull_s16(*v106.i8, *&vextq_s8(v49, v49, 8uLL));
          v116 = vmull_s16(*v106.i8, *&vextq_s8(v52, v52, 8uLL));
          v117 = vmlal_s16(vmull_s16(*v113.i8, *v49.i8), *v102.i8, *v52.i8);
          v118 = vmlsl_high_s16(v115, v113, v52);
          v119 = vzip2q_s64(v101, v105);
          v120 = vmlal_high_s16(v116, v113, v49);
          *v49.i8 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v102.i8, *v49.i8), *v113.i8, *v52.i8), 0xEuLL);
          *v52.i8 = vrshrn_n_s32(v112, 0xEuLL);
          *v112.i8 = vrshrn_n_s32(v110, 0xEuLL);
          v121 = vmull_s16(*v105.i8, *&vextq_s8(v64, v64, 8uLL));
          v122 = vmull_s16(*v105.i8, *&vextq_s8(v67, v67, 8uLL));
          v123 = vmlal_s16(vmull_s16(*v119.i8, *v64.i8), *v101.i8, *v67.i8);
          v124 = vmlsl_s16(vmull_s16(*v101.i8, *v64.i8), *v119.i8, *v67.i8);
          v125 = vmlsl_high_s16(v121, v119, v67);
          *v117.i8 = vrshrn_n_s32(v117, 0xEuLL);
          v126 = vmlal_high_s16(v122, v119, v64);
          v127 = vmull_s16(*v100.i8, *v61.i8);
          v128 = vmull_s16(*v104.i8, *&vextq_s8(v61, v61, 8uLL));
          v129 = vmlal_s16(vmull_s16(*v114.i8, *v61.i8), *v100.i8, *v61.i8);
          v130 = vmlal_high_s16(v128, v114, v61);
          v131 = vmlsl_s16(v127, *v114.i8, *v61.i8);
          v132 = vmlsl_high_s16(v128, v114, v61);
          *v114.i8 = vsub_s16(*v117.i8, *v112.i8);
          *v67.i8 = vsub_s16(vrshrn_n_s32(v120, 0xEuLL), vrshrn_n_s32(v111, 0xEuLL));
          *v102.i8 = vsub_s16(vrshrn_n_s32(v118, 0xEuLL), vrshrn_n_s32(v109, 0xEuLL));
          *v108.i8 = vsub_s16(*v49.i8, *v52.i8);
          v133 = vmlsl_s16(vmull_s16(*v114.i8, *v61.i8), *v108.i8, *v61.i8);
          v134 = vmlal_s16(vmull_s16(*v108.i8, *v61.i8), *v114.i8, *v61.i8);
          v135 = vmlsl_s16(vmull_s16(*v67.i8, *v61.i8), *v102.i8, *v61.i8);
          v136 = vmlal_s16(vmull_s16(*v102.i8, *v61.i8), *v67.i8, *v61.i8);
          v137 = vrshrn_high_n_s32(*v52.i8, v109, 0xEuLL);
          v138 = vrshrn_high_n_s32(*v112.i8, v111, 0xEuLL);
          v139 = vrshrn_high_n_s32(*v117.i8, v120, 0xEuLL);
          v140 = vrshrn_high_n_s32(vrshrn_n_s32(v129, 0xEuLL), v130, 0xEuLL);
          v141 = vrshrn_high_n_s32(vrshrn_n_s32(v131, 0xEuLL), v132, 0xEuLL);
          v142 = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xEuLL), v125, 0xEuLL);
          v143 = vrshrn_high_n_s32(vrshrn_n_s32(v123, 0xEuLL), v126, 0xEuLL);
          v144 = vaddq_s16(v137, vrshrn_high_n_s32(*v49.i8, v118, 0xEuLL));
          v145 = vaddq_s16(v139, v138);
          v146 = vaddq_s16(v142, v141);
          v147 = vsubq_s16(v141, v142);
          v148 = vaddq_s16(v143, v140);
          v149 = vsubq_s16(v140, v143);
          v150 = vrshrn_high_n_s32(vrshrn_n_s32(v133, 0xEuLL), v135, 0xEuLL);
          v151 = vrshrn_high_n_s32(vrshrn_n_s32(v134, 0xEuLL), v136, 0xEuLL);
          v152 = vaddq_s16(v149, v144);
          v153 = vsubq_s16(v149, v144);
          v154 = vaddq_s16(v150, v147);
          v155 = vsubq_s16(v147, v150);
          v156 = vaddq_s16(v151, v146);
          v157 = vsubq_s16(v146, v151);
          v158 = vaddq_s16(v148, v145);
          v159 = vsubq_s16(v148, v145);
LABEL_17:
          v1154 = vrshrq_n_s16(v158, 5uLL);
          v1155 = vrshrq_n_s16(v156, 5uLL);
          v1156 = vrshrq_n_s16(v154, 5uLL);
          v1157 = vrshrq_n_s16(v152, 5uLL);
          v1158 = vrshrq_n_s16(v153, 5uLL);
          v1159 = vrshrq_n_s16(v155, 5uLL);
          v1160 = vrshrq_n_s16(v157, 5uLL);
          v1161 = vrshrq_n_s16(v159, 5uLL);
          goto LABEL_21;
        }

        v1027 = vdupq_n_s16(0x3FB1u);
        v1028 = vdupq_n_s16(0x646u);
        v1029 = vmlal_s16(vmull_s16(*v44.i8, *v1028.i8), *v46.i8, *v1027.i8);
        v1030 = vmlal_high_s16(vmull_high_s16(v44, v1028), v46, v1027);
        v1031 = vmlsl_s16(vmull_s16(*v46.i8, *v1028.i8), *v44.i8, *v1027.i8);
        v1032 = vdupq_n_s16(0x3871u);
        v1033 = vdupq_n_s16(0x1E2Bu);
        v1034 = vmlsl_high_s16(vmull_high_s16(v46, v1028), v44, v1027);
        v1035 = vmlal_s16(vmull_s16(*v47.i8, *v1033.i8), *v41.i8, *v1032.i8);
        v1036 = vmlal_high_s16(vmull_high_s16(v47, v1033), v41, v1032);
        v1037 = vmlsl_s16(vmull_s16(*v41.i8, *v1033.i8), *v47.i8, *v1032.i8);
        v1038 = vmlsl_high_s16(vmull_high_s16(v41, v1033), v47, v1032);
        v1039 = vdupq_n_s16(0x289Au);
        v1040 = vdupq_n_s16(0x3179u);
        v1041 = vmlal_s16(vmull_s16(*v40.i8, *v1040.i8), *v48.i8, *v1039.i8);
        v1042 = vmlal_high_s16(vmull_high_s16(v40, v1040), v48, v1039);
        v1043 = vmlsl_s16(vmull_s16(*v48.i8, *v1040.i8), *v40.i8, *v1039.i8);
        v1044 = vmlsl_high_s16(vmull_high_s16(v48, v1040), v40, v1039);
        v1045 = vdupq_n_s16(0x1294u);
        v1046 = vdupq_n_s16(0x3D3Fu);
        v1047 = vmlal_s16(vmull_s16(*v42.i8, *v1046.i8), *v45.i8, *v1045.i8);
        v1048 = vmlal_high_s16(vmull_high_s16(v42, v1046), v45, v1045);
        v1049 = vmlsl_s16(vmull_s16(*v45.i8, *v1046.i8), *v42.i8, *v1045.i8);
        v1050 = vmlsl_high_s16(vmull_high_s16(v45, v1046), v42, v1045);
        v1659 = vaddq_s32(v1042, v1030);
        v1051 = vrshrn_n_s32(vaddq_s32(v1041, v1029), 0xEuLL);
        v1052 = vrshrn_n_s32(vaddq_s32(v1047, v1035), 0xEuLL);
        v1053 = vsub_s16(v1051, v1052);
        v1054 = vsubq_s32(v1029, v1041);
        v1055 = vaddq_s32(v1044, v1034);
        v1056 = vrshrn_n_s32(vaddq_s32(v1043, v1031), 0xEuLL);
        v1057 = vsubq_s32(v1030, v1042);
        *v1042.i8 = vrshrn_n_s32(vaddq_s32(v1049, v1037), 0xEuLL);
        v1058 = vsubq_s32(v1031, v1043);
        *v1031.i8 = vsub_s16(v1056, *v1042.i8);
        v1059 = vsubq_s32(v1034, v1044);
        v1060 = vaddq_s32(v1048, v1036);
        v1061 = vrshrn_high_n_s32(v1052, v1060, 0xEuLL);
        v1062 = vsubq_s32(v1035, v1047);
        v1063 = vaddq_s32(v1050, v1038);
        *v1035.i8 = vrshrn_n_s32(v1054, 0xEuLL);
        *v1057.i8 = vrshrn_n_s32(v1057, 0xEuLL);
        *v1058.i8 = vrshrn_n_s32(v1058, 0xEuLL);
        *v1054.i8 = vrshrn_n_s32(v1059, 0xEuLL);
        v1064 = vsubq_s32(v1036, v1048);
        *v1036.i8 = vrshrn_n_s32(v1062, 0xEuLL);
        *v1048.i8 = vrshrn_n_s32(v1064, 0xEuLL);
        *v1037.i8 = vrshrn_n_s32(vsubq_s32(v1037, v1049), 0xEuLL);
        *v1038.i8 = vrshrn_n_s32(vsubq_s32(v1038, v1050), 0xEuLL);
        *v1064.i8 = vdup_n_s16(0x3B21u);
        *v1062.i8 = vdup_n_s16(0x187Eu);
        v1065 = vmlal_s16(vmull_s16(*v1058.i8, *v1062.i8), *v1035.i8, *v1064.i8);
        v1066 = vmlsl_s16(vmull_s16(*v1035.i8, *v1062.i8), *v1058.i8, *v1064.i8);
        v1067 = vmlal_s16(vmull_s16(*v1054.i8, *v1062.i8), *v1057.i8, *v1064.i8);
        v1068 = vmlsl_s16(vmull_s16(*v1057.i8, *v1062.i8), *v1054.i8, *v1064.i8);
        v1069 = vmlal_s16(vmull_s16(*v1036.i8, *v1064.i8), *v1037.i8, *v1062.i8);
        v1070 = vmlsl_s16(vmull_s16(*v1037.i8, *v1064.i8), *v1036.i8, *v1062.i8);
        v1071 = vmlal_s16(vmull_s16(*v1048.i8, *v1064.i8), *v1038.i8, *v1062.i8);
        v1072 = vmlsl_s16(vmull_s16(*v1038.i8, *v1064.i8), *v1048.i8, *v1062.i8);
        v1073 = vaddq_s16(v1061, vrshrn_high_n_s32(v1051, v1659, 0xEuLL));
        v1074 = vaddq_s16(vrshrn_high_n_s32(v1056, v1055, 0xEuLL), vrshrn_high_n_s32(*v1042.i8, v1063, 0xEuLL));
        v1075 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v1070, v1065), 0xEuLL), vaddq_s32(v1072, v1067), 0xEuLL);
        v1076 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v1069, v1066), 0xEuLL), vaddq_s32(v1071, v1068), 0xEuLL);
        v1077 = vsubq_s32(v1067, v1072);
        *v1042.i8 = vsub_s16(vrshrn_n_s32(v1659, 0xEuLL), vrshrn_n_s32(v1060, 0xEuLL));
        *v1072.i8 = vdup_n_s16(0x2D41u);
        *v1055.i8 = vsub_s16(vrshrn_n_s32(v1055, 0xEuLL), vrshrn_n_s32(v1063, 0xEuLL));
        v1078 = vmlal_s16(vmull_s16(*v1055.i8, *v1072.i8), *v1042.i8, *v1072.i8);
        *v1065.i8 = vrshrn_n_s32(vsubq_s32(v1065, v1070), 0xEuLL);
        *v1077.i8 = vrshrn_n_s32(v1077, 0xEuLL);
        *v1066.i8 = vrshrn_n_s32(vsubq_s32(v1066, v1069), 0xEuLL);
        *v1069.i8 = vrshrn_n_s32(vsubq_s32(v1068, v1071), 0xEuLL);
        v1079 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v1053, *v1072.i8), *v1031.i8, *v1072.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v1042.i8, *v1072.i8), *v1055.i8, *v1072.i8), 0xEuLL);
        v1080 = vmlal_s16(vmull_s16(*v1066.i8, *v1072.i8), *v1065.i8, *v1072.i8);
        v1081 = vmlsl_s16(vmull_s16(*v1065.i8, *v1072.i8), *v1066.i8, *v1072.i8);
        v1082 = vmlal_s16(vmull_s16(*v1069.i8, *v1072.i8), *v1077.i8, *v1072.i8);
        v1083 = vmlsl_s16(vmull_s16(*v1077.i8, *v1072.i8), *v1069.i8, *v1072.i8);
        v1084 = vrshrn_high_n_s32(vrshrn_n_s32(v1080, 0xEuLL), v1082, 0xEuLL);
        v1085 = vrshrn_high_n_s32(vrshrn_n_s32(v1081, 0xEuLL), v1083, 0xEuLL);
        v1086 = vnegq_s16(v1075);
        v1087 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v1031.i8, *v1072.i8), v1053, *v1072.i8), 0xEuLL), v1078, 0xEuLL));
        v1088 = vnegq_s16(v1085);
        v1089 = vnegq_s16(v1074);
        v1090 = vtrn1q_s16(v1073, v1086);
        v1091 = vtrn2q_s16(v1073, v1086);
        v1092 = vtrn1q_s16(v1084, v1087);
        v1093 = vtrn2q_s16(v1084, v1087);
        v1094 = vtrn1q_s16(v1079, v1088);
        v1095 = vtrn2q_s16(v1079, v1088);
        v1096 = vtrn1q_s16(v1076, v1089);
        v1097 = vtrn2q_s16(v1076, v1089);
        v1098 = vtrn1q_s32(v1090, v1092);
        v1099 = vtrn2q_s32(v1090, v1092);
        v1100 = vtrn1q_s32(v1091, v1093);
        v1101 = vtrn2q_s32(v1091, v1093);
        v1102 = vtrn1q_s32(v1094, v1096);
        v1103 = vtrn2q_s32(v1094, v1096);
        v1104 = vtrn1q_s32(v1095, v1097);
        v1105 = vtrn2q_s32(v1095, v1097);
        v1106 = vzip2q_s64(v1101, v1105);
        v1107 = vmlal_s16(vmull_s16(*v1098.i8, *v1028.i8), *v1106.i8, *v1027.i8);
        v1108 = vmlal_high_s16(vmull_s16(*v1102.i8, *&vextq_s8(v1028, v1028, 8uLL)), v1106, v1027);
        v1109 = vmlsl_s16(vmull_s16(*v1106.i8, *v1028.i8), *v1098.i8, *v1027.i8);
        v1110 = vzip2q_s64(v1098, v1102);
        v1111 = vmull_high_s16(v1106, v1028);
        v1112 = vzip2q_s64(v1100, v1104);
        v1113 = vmlsl_s16(v1111, *v1102.i8, *&vextq_s8(v1027, v1027, 8uLL));
        v1114 = vmlal_s16(vmull_s16(*v1099.i8, *v1033.i8), *v1112.i8, *v1032.i8);
        v1115 = vmlal_high_s16(vmull_s16(*v1103.i8, *&vextq_s8(v1033, v1033, 8uLL)), v1112, v1032);
        v1116 = vmlsl_s16(vmull_s16(*v1112.i8, *v1033.i8), *v1099.i8, *v1032.i8);
        v1117 = vmlsl_s16(vmull_high_s16(v1112, v1033), *v1103.i8, *&vextq_s8(v1032, v1032, 8uLL));
        v1118 = vzip2q_s64(v1099, v1103);
        v1119 = vmull_s16(*v1105.i8, *&vextq_s8(v1039, v1039, 8uLL));
        v1120 = vmull_s16(*v1105.i8, *&vextq_s8(v1040, v1040, 8uLL));
        v1121 = vmlal_s16(vmull_s16(*v1110.i8, *v1040.i8), *v1101.i8, *v1039.i8);
        v1122 = vmlal_high_s16(v1119, v1110, v1040);
        v1123 = vmlsl_s16(vmull_s16(*v1101.i8, *v1040.i8), *v1110.i8, *v1039.i8);
        v1124 = vmlsl_high_s16(v1120, v1110, v1039);
        v1125 = vmlal_s16(vmull_s16(*v1118.i8, *v1046.i8), *v1100.i8, *v1045.i8);
        v1126 = vmlal_high_s16(vmull_s16(*v1104.i8, *&vextq_s8(v1045, v1045, 8uLL)), v1118, v1046);
        v1127 = vmlsl_s16(vmull_s16(*v1100.i8, *v1046.i8), *v1118.i8, *v1045.i8);
        v1128 = vmlsl_high_s16(vmull_s16(*v1104.i8, *&vextq_s8(v1046, v1046, 8uLL)), v1118, v1045);
        v1129 = vaddq_s32(v1122, v1108);
        *v1039.i8 = vrshrn_n_s32(vaddq_s32(v1121, v1107), 0xEuLL);
        v1130 = vaddq_s32(v1124, v1113);
        *v1112.i8 = vrshrn_n_s32(vaddq_s32(v1123, v1109), 0xEuLL);
        v1131 = vsubq_s32(v1107, v1121);
        v1132 = vaddq_s32(v1126, v1115);
        *v1033.i8 = vrshrn_n_s32(vaddq_s32(v1125, v1114), 0xEuLL);
        v1133 = vsubq_s32(v1108, v1122);
        v1134 = vaddq_s32(v1128, v1117);
        *v1046.i8 = vrshrn_n_s32(vaddq_s32(v1127, v1116), 0xEuLL);
        *v1122.i8 = vrshrn_n_s32(v1131, 0xEuLL);
        *v1133.i8 = vrshrn_n_s32(v1133, 0xEuLL);
        *v1123.i8 = vrshrn_n_s32(vsubq_s32(v1109, v1123), 0xEuLL);
        *v1108.i8 = vrshrn_n_s32(vsubq_s32(v1113, v1124), 0xEuLL);
        *v1113.i8 = vrshrn_n_s32(vsubq_s32(v1114, v1125), 0xEuLL);
        *v1124.i8 = vrshrn_n_s32(vsubq_s32(v1115, v1126), 0xEuLL);
        v1135 = vsubq_s32(v1117, v1128);
        *v1128.i8 = vrshrn_n_s32(vsubq_s32(v1116, v1127), 0xEuLL);
        *v1126.i8 = vrshrn_n_s32(v1135, 0xEuLL);
        v1136 = vmlal_s16(vmull_s16(*v1123.i8, *v1062.i8), *v1122.i8, *v1064.i8);
        v1137 = vmlal_s16(vmull_s16(*v1108.i8, *v1062.i8), *v1133.i8, *v1064.i8);
        v1138 = vmlsl_s16(vmull_s16(*v1122.i8, *v1062.i8), *v1123.i8, *v1064.i8);
        v1139 = vmlsl_s16(vmull_s16(*v1133.i8, *v1062.i8), *v1108.i8, *v1064.i8);
        v1140 = vmull_s16(*v1128.i8, *v1064.i8);
        v1141 = vmull_s16(*v1126.i8, *v1064.i8);
        v1142 = vmlal_s16(vmull_s16(*v1113.i8, *v1064.i8), *v1128.i8, *v1062.i8);
        v1143 = vmlal_s16(vmull_s16(*v1124.i8, *v1064.i8), *v1126.i8, *v1062.i8);
        v1144 = vmlsl_s16(v1140, *v1113.i8, *v1062.i8);
        v1145 = vmlsl_s16(v1141, *v1124.i8, *v1062.i8);
        *v1062.i8 = vrshrn_n_s32(vsubq_s32(v1136, v1144), 0xEuLL);
        *v1113.i8 = vrshrn_n_s32(vsubq_s32(v1137, v1145), 0xEuLL);
        *v1122.i8 = vrshrn_n_s32(vsubq_s32(v1138, v1142), 0xEuLL);
        *v1128.i8 = vrshrn_n_s32(vsubq_s32(v1139, v1143), 0xEuLL);
        *v1123.i8 = vsub_s16(*v1039.i8, *v1033.i8);
        *v1110.i8 = vsub_s16(vrshrn_n_s32(v1129, 0xEuLL), vrshrn_n_s32(v1132, 0xEuLL));
        *v1100.i8 = vsub_s16(*v1112.i8, *v1046.i8);
        *v1055.i8 = vsub_s16(vrshrn_n_s32(v1130, 0xEuLL), vrshrn_n_s32(v1134, 0xEuLL));
        v1146 = vmlal_s16(vmull_s16(*v1100.i8, *v1072.i8), *v1123.i8, *v1072.i8);
        v1147 = vmlsl_s16(vmull_s16(*v1123.i8, *v1072.i8), *v1100.i8, *v1072.i8);
        v1148 = vmlal_s16(vmull_s16(*v1055.i8, *v1072.i8), *v1110.i8, *v1072.i8);
        v1149 = vmlsl_s16(vmull_s16(*v1110.i8, *v1072.i8), *v1055.i8, *v1072.i8);
        v1150 = vmlal_s16(vmull_s16(*v1122.i8, *v1072.i8), *v1062.i8, *v1072.i8);
        v1151 = vmlsl_s16(vmull_s16(*v1062.i8, *v1072.i8), *v1122.i8, *v1072.i8);
        v1152 = vmlal_s16(vmull_s16(*v1128.i8, *v1072.i8), *v1113.i8, *v1072.i8);
        v1153 = vmlsl_s16(vmull_s16(*v1113.i8, *v1072.i8), *v1128.i8, *v1072.i8);
        v158 = vaddq_s16(vrshrn_high_n_s32(*v1033.i8, v1132, 0xEuLL), vrshrn_high_n_s32(*v1039.i8, v1129, 0xEuLL));
        v475 = vaddq_s16(vrshrn_high_n_s32(*v1112.i8, v1130, 0xEuLL), vrshrn_high_n_s32(*v1046.i8, v1134, 0xEuLL));
        v157 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v1142, v1138), 0xEuLL), vaddq_s32(v1143, v1139), 0xEuLL);
        v153 = vrshrn_high_n_s32(vrshrn_n_s32(v1147, 0xEuLL), v1149, 0xEuLL);
        v154 = vrshrn_high_n_s32(vrshrn_n_s32(v1150, 0xEuLL), v1152, 0xEuLL);
        v481 = vrshrn_high_n_s32(vrshrn_n_s32(v1151, 0xEuLL), v1153, 0xEuLL);
        v156 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v1144, v1136), 0xEuLL), vaddq_s32(v1145, v1137), 0xEuLL));
        v152 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v1146, 0xEuLL), v1148, 0xEuLL));
      }

      v155 = vnegq_s16(v481);
      v159 = vnegq_s16(v475);
      goto LABEL_17;
    }

    v699 = vdupq_n_s16(0x3FB1u);
    v700 = vdupq_n_s16(0x646u);
    v701 = vmull_s16(*v46.i8, *v700.i8);
    v702 = vmull_high_s16(v46, v700);
    v703 = vmlal_s16(vmull_s16(*v44.i8, *v700.i8), *v46.i8, *v699.i8);
    v704 = vmlal_high_s16(vmull_high_s16(v44, v700), v46, v699);
    v705 = vmlsl_s16(v701, *v44.i8, *v699.i8);
    v706 = vmlsl_high_s16(v702, v44, v699);
    v707 = vdupq_n_s16(0x3871u);
    v708 = vdupq_n_s16(0x1E2Bu);
    v709 = vmull_s16(*v41.i8, *v708.i8);
    v710 = vmull_high_s16(v41, v708);
    v711 = vmlal_s16(vmull_s16(*v47.i8, *v708.i8), *v41.i8, *v707.i8);
    v712 = vmlal_high_s16(vmull_high_s16(v47, v708), v41, v707);
    v713 = vmlsl_s16(v709, *v47.i8, *v707.i8);
    v714 = vmlsl_high_s16(v710, v47, v707);
    v715 = vdupq_n_s16(0x289Au);
    v716 = vdupq_n_s16(0x3179u);
    v717 = vmull_s16(*v48.i8, *v716.i8);
    v718 = vmull_high_s16(v48, v716);
    v719 = vmlal_s16(vmull_s16(*v40.i8, *v716.i8), *v48.i8, *v715.i8);
    v720 = vmlal_high_s16(vmull_high_s16(v40, v716), v48, v715);
    v721 = vmlsl_s16(v717, *v40.i8, *v715.i8);
    v722 = vdupq_n_s16(0x1294u);
    v723 = vmlsl_high_s16(v718, v40, v715);
    v724 = vdupq_n_s16(0x3D3Fu);
    v725 = vmull_s16(*v45.i8, *v724.i8);
    v726 = vmull_high_s16(v45, v724);
    v727 = vmlal_s16(vmull_s16(*v42.i8, *v724.i8), *v45.i8, *v722.i8);
    v728 = vmlal_high_s16(vmull_high_s16(v42, v724), v45, v722);
    v729 = vmlsl_s16(v725, *v42.i8, *v722.i8);
    v730 = vmlsl_high_s16(v726, v42, v722);
    v731 = vaddq_s32(v720, v704);
    v732 = vrshrn_n_s32(vaddq_s32(v719, v703), 0xEuLL);
    *v722.i8 = vrshrn_n_s32(v731, 0xEuLL);
    v733 = vrshrn_n_s32(vaddq_s32(v727, v711), 0xEuLL);
    v734 = vsub_s16(v732, v733);
    v735 = vrshrn_high_n_s32(v732, v731, 0xEuLL);
    v736 = vaddq_s32(v723, v706);
    v737 = vrshrn_n_s32(vaddq_s32(v721, v705), 0xEuLL);
    *v731.i8 = vrshrn_n_s32(v736, 0xEuLL);
    v738 = vrshrn_n_s32(vaddq_s32(v729, v713), 0xEuLL);
    v739 = vsub_s16(v737, v738);
    v740 = vrshrn_high_n_s32(v737, v736, 0xEuLL);
    v741 = vaddq_s32(v728, v712);
    *v736.i8 = vrshrn_n_s32(v741, 0xEuLL);
    v742 = vrshrn_high_n_s32(v733, v741, 0xEuLL);
    v743 = vaddq_s32(v730, v714);
    *v741.i8 = vrshrn_n_s32(v743, 0xEuLL);
    v744 = vrshrn_high_n_s32(v738, v743, 0xEuLL);
    v745 = vsubq_s32(v703, v719);
    v746 = vsubq_s32(v704, v720);
    *v704.i8 = vrshrn_n_s32(v745, 0xEuLL);
    *v746.i8 = vrshrn_n_s32(v746, 0xEuLL);
    v747 = vsubq_s32(v705, v721);
    v748 = vsubq_s32(v706, v723);
    *v723.i8 = vrshrn_n_s32(v747, 0xEuLL);
    *v748.i8 = vrshrn_n_s32(v748, 0xEuLL);
    *v711.i8 = vrshrn_n_s32(vsubq_s32(v711, v727), 0xEuLL);
    *v712.i8 = vrshrn_n_s32(vsubq_s32(v712, v728), 0xEuLL);
    *v713.i8 = vrshrn_n_s32(vsubq_s32(v713, v729), 0xEuLL);
    *v714.i8 = vrshrn_n_s32(vsubq_s32(v714, v730), 0xEuLL);
    v749 = vdupq_n_s16(0x3B21u);
    v750 = vdupq_n_s16(0x187Eu);
    v751 = vmlal_s16(vmull_s16(*v723.i8, *v750.i8), *v704.i8, *v749.i8);
    v752 = vmlal_s16(vmull_s16(*v748.i8, *v750.i8), *v746.i8, *v749.i8);
    v753 = vmlsl_s16(vmull_s16(*v704.i8, *v750.i8), *v723.i8, *v749.i8);
    v754 = vmlsl_s16(vmull_s16(*v746.i8, *v750.i8), *v748.i8, *v749.i8);
    v755 = vmlal_s16(vmull_s16(*v711.i8, *v749.i8), *v713.i8, *v750.i8);
    v756 = vmlal_s16(vmull_s16(*v712.i8, *v749.i8), *v714.i8, *v750.i8);
    v757 = vmlsl_s16(vmull_s16(*v713.i8, *v749.i8), *v711.i8, *v750.i8);
    v758 = vmlsl_s16(vmull_s16(*v714.i8, *v749.i8), *v712.i8, *v750.i8);
    v759 = vaddq_s16(v742, v735);
    v760 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v757, v751), 0xEuLL), vaddq_s32(v758, v752), 0xEuLL);
    v761 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v755, v753), 0xEuLL), vaddq_s32(v756, v754), 0xEuLL);
    *v711.i8 = vrshrn_n_s32(vsubq_s32(v751, v757), 0xEuLL);
    *v751.i8 = vrshrn_n_s32(vsubq_s32(v752, v758), 0xEuLL);
    *v755.i8 = vrshrn_n_s32(vsubq_s32(v753, v755), 0xEuLL);
    *v753.i8 = vrshrn_n_s32(vsubq_s32(v754, v756), 0xEuLL);
    v762 = vdupq_n_s16(0x2D41u);
    *v722.i8 = vsub_s16(*v722.i8, *v736.i8);
    *v731.i8 = vsub_s16(*v731.i8, *v741.i8);
    v763 = vmlsl_s16(vmull_s16(*v722.i8, *v762.i8), *v731.i8, *v762.i8);
    v764 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v739, *v762.i8), v734, *v762.i8), 0xEuLL), vmlal_s16(vmull_s16(*v731.i8, *v762.i8), *v722.i8, *v762.i8), 0xEuLL);
    v765 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v734, *v762.i8), v739, *v762.i8), 0xEuLL), v763, 0xEuLL);
    v766 = vmlsl_s16(vmull_s16(*v711.i8, *v762.i8), *v755.i8, *v762.i8);
    v767 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v755.i8, *v762.i8), *v711.i8, *v762.i8), 0xEuLL), vmlal_s16(vmull_s16(*v753.i8, *v762.i8), *v751.i8, *v762.i8), 0xEuLL);
    v768 = vnegq_s16(v760);
    v769 = vnegq_s16(v764);
    v770 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v766, 0xEuLL), vmlsl_s16(vmull_s16(*v751.i8, *v762.i8), *v753.i8, *v762.i8), 0xEuLL));
    v771 = vnegq_s16(vaddq_s16(v740, v744));
    v772 = vtrn1q_s16(v759, v768);
    v773 = vtrn2q_s16(v759, v768);
    v774 = vtrn1q_s16(v767, v769);
    v775 = vtrn2q_s16(v767, v769);
    v776 = vtrn1q_s16(v765, v770);
    v777 = vtrn2q_s16(v765, v770);
    v778 = vtrn1q_s16(v761, v771);
    v779 = vtrn2q_s16(v761, v771);
    v780 = vtrn1q_s32(v772, v774);
    v781 = vtrn2q_s32(v772, v774);
    v782 = vtrn1q_s32(v773, v775);
    v783 = vtrn2q_s32(v773, v775);
    v784 = vtrn1q_s32(v776, v778);
    v785 = vtrn2q_s32(v776, v778);
    v786 = vtrn1q_s32(v777, v779);
    v787 = vtrn2q_s32(v777, v779);
    v788 = vzip2q_s64(v780, v784);
    v789 = vzip2q_s64(v782, v786);
    v790 = vzip2q_s64(v781, v785);
    v791 = vzip2q_s64(v783, v787);
    v792 = vdupq_n_s16(0xC7Cu);
    v793 = vdupq_n_s16(0xDC72u);
    v794 = vmull_s16(*v787.i8, *&vextq_s8(v793, v793, 8uLL));
    v795 = vdupq_n_s16(0x3537u);
    v796 = vmull_s16(*v787.i8, *&vextq_s8(v795, v795, 8uLL));
    v797 = vdupq_n_s16(0x3EC5u);
    v798 = vmlsl_high_s16(vmull_s16(*v786.i8, *&vextq_s8(v792, v792, 8uLL)), v791, v797);
    v799 = vmlal_s16(vmull_s16(*v789.i8, *v795.i8), *v783.i8, *v793.i8);
    v800 = vmlal_high_s16(v794, v789, v795);
    v801 = vmlsl_s16(vmull_s16(*v783.i8, *v795.i8), *v789.i8, *v793.i8);
    v802 = vmlsl_high_s16(v796, v789, v793);
    v803 = vmlal_s16(vmull_s16(*v791.i8, *v792.i8), *v782.i8, *v797.i8);
    v804 = vmlal_high_s16(vmull_s16(*v786.i8, *&vextq_s8(v797, v797, 8uLL)), v791, v792);
    *v782.i8 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v782.i8, *v792.i8), *v791.i8, *v797.i8), 0xEuLL);
    *v797.i8 = vrshrn_n_s32(v798, 0xEuLL);
    *v789.i8 = vrshrn_n_s32(v799, 0xEuLL);
    *v791.i8 = vsub_s16(*v782.i8, *v789.i8);
    v805 = vrshrn_high_n_s32(*v782.i8, v798, 0xEuLL);
    *v798.i8 = vrshrn_n_s32(v800, 0xEuLL);
    v806 = vrshrn_high_n_s32(*v789.i8, v800, 0xEuLL);
    *v800.i8 = vrshrn_n_s32(v801, 0xEuLL);
    *v801.i8 = vrshrn_n_s32(v802, 0xEuLL);
    *v803.i8 = vrshrn_n_s32(v803, 0xEuLL);
    *v792.i8 = vsub_s16(*v803.i8, *v800.i8);
    v807 = vrshrn_high_n_s32(*v800.i8, v802, 0xEuLL);
    *v802.i8 = vrshrn_n_s32(v804, 0xEuLL);
    v808 = vrshrn_high_n_s32(*v803.i8, v804, 0xEuLL);
    v809 = vmull_s16(*v780.i8, *v762.i8);
    v810 = vmull_s16(*v784.i8, *&vextq_s8(v762, v762, 8uLL));
    v811 = vmull_s16(*v785.i8, *&vextq_s8(v750, v750, 8uLL));
    v812 = vmull_s16(*v785.i8, *&vextq_s8(v749, v749, 8uLL));
    v813 = vmlal_s16(vmull_s16(*v788.i8, *v762.i8), *v780.i8, *v762.i8);
    v814 = vmlal_high_s16(v810, v788, v762);
    v815 = vmlsl_s16(v809, *v788.i8, *v762.i8);
    v816 = vmlsl_high_s16(v810, v788, v762);
    v817 = vmlsl_s16(vmull_s16(*v781.i8, *v750.i8), *v790.i8, *v749.i8);
    v818 = vmlsl_high_s16(v811, v790, v749);
    v819 = vmlal_s16(vmull_s16(*v790.i8, *v750.i8), *v781.i8, *v749.i8);
    v820 = vmlal_high_s16(v812, v790, v750);
    v821 = vrshrn_high_n_s32(vrshrn_n_s32(v813, 0xEuLL), v814, 0xEuLL);
    v822 = vrshrn_high_n_s32(vrshrn_n_s32(v815, 0xEuLL), v816, 0xEuLL);
    v823 = vrshrn_high_n_s32(vrshrn_n_s32(v817, 0xEuLL), v818, 0xEuLL);
    v824 = vrshrn_high_n_s32(vrshrn_n_s32(v819, 0xEuLL), v820, 0xEuLL);
    v825 = vaddq_s16(v806, v805);
    v826 = vaddq_s16(v808, v807);
    v827 = vaddq_s16(v824, v821);
    v828 = vaddq_s16(v823, v822);
    v829 = vsubq_s16(v822, v823);
    v830 = vsubq_s16(v821, v824);
    *v820.i8 = vsub_s16(*v802.i8, *v801.i8);
    *v817.i8 = vsub_s16(*v797.i8, *v798.i8);
    v831 = vmlal_s16(vmull_s16(*v817.i8, *v762.i8), *v820.i8, *v762.i8);
    v832 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v792.i8, *v762.i8), *v791.i8, *v762.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v820.i8, *v762.i8), *v817.i8, *v762.i8), 0xEuLL);
    v833 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v791.i8, *v762.i8), *v792.i8, *v762.i8), 0xEuLL), v831, 0xEuLL);
    v158 = vaddq_s16(v827, v826);
    v156 = vaddq_s16(v833, v828);
    v154 = vaddq_s16(v832, v829);
    v152 = vaddq_s16(v830, v825);
    v153 = vsubq_s16(v830, v825);
    v155 = vsubq_s16(v829, v832);
    v157 = vsubq_s16(v828, v833);
    v159 = vsubq_s16(v827, v826);
    goto LABEL_17;
  }

  if (a4 == 2)
  {
    v834 = vtrn1q_s32(v5, v7);
    v835 = vtrn2q_s32(v5, v7);
    v836 = vtrn1q_s32(v6, v8);
    v837 = vtrn2q_s32(v6, v8);
    v838 = vtrn1q_s32(v10, v12);
    v839 = vtrn2q_s32(v10, v12);
    v840 = vtrn1q_s32(v9, v11);
    v841 = vtrn2q_s32(v9, v11);
    v842 = vzip2q_s64(v834, v838);
    v843 = vzip2q_s64(v835, v839);
    v844 = vzip2q_s64(v836, v840);
    v845 = vzip2q_s64(v837, v841);
    v846 = vdupq_n_s32(0x3FB1u);
    v847 = vdupq_n_s32(0x646u);
    v848 = vmlal_s32(vmull_s32(*v834.i8, *v847.i8), *v845.i8, *v846.i8);
    v849 = vmlsl_s32(vmull_s32(*v845.i8, *v847.i8), *v834.i8, *v846.i8);
    v850 = vmlal_high_s32(vmull_s32(*v838.i8, *v847.i8), v845, v846);
    v851 = vdupq_n_s32(0x3871u);
    v852 = vdupq_n_s32(0x1E2Bu);
    v853 = vmlsl_s32(vmull_high_s32(v845, v847), *v838.i8, *v846.i8);
    v854 = vmlal_s32(vmull_s32(*v842.i8, *v852.i8), *v837.i8, *v851.i8);
    v855 = vmlsl_s32(vmull_s32(*v837.i8, *v852.i8), *v842.i8, *v851.i8);
    v856 = vmlal_high_s32(vmull_s32(*v841.i8, *v851.i8), v842, v852);
    v857 = vmlsl_high_s32(vmull_s32(*v841.i8, *v852.i8), v842, v851);
    v858 = vdupq_n_s32(0x289Au);
    v859 = vdupq_n_s32(0x3179u);
    v860 = vmlal_s32(vmull_s32(*v836.i8, *v859.i8), *v843.i8, *v858.i8);
    v861 = vmlsl_s32(vmull_s32(*v843.i8, *v859.i8), *v836.i8, *v858.i8);
    v862 = vmlal_high_s32(vmull_s32(*v840.i8, *v859.i8), v843, v858);
    v863 = vmlsl_s32(vmull_high_s32(v843, v859), *v840.i8, *v858.i8);
    v864 = vdupq_n_s32(0x1294u);
    v865 = vdupq_n_s32(0x3D3Fu);
    v866 = vmlal_s32(vmull_s32(*v844.i8, *v865.i8), *v835.i8, *v864.i8);
    v1653 = a1[14];
    v1620 = a1[12];
    v1626 = a1[13];
    v867 = vmlsl_s32(vmull_s32(*v835.i8, *v865.i8), *v844.i8, *v864.i8);
    v868 = vmlal_high_s32(vmull_s32(*v839.i8, *v864.i8), v844, v865);
    v869 = vmlsl_high_s32(vmull_s32(*v839.i8, *v865.i8), v844, v864);
    v870 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v860, v848), 0xEuLL), vaddq_s64(v862, v850), 0xEuLL);
    v871 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v861, v849), 0xEuLL), vaddq_s64(v863, v853), 0xEuLL);
    v1602 = a1[11];
    v1608 = a1[15];
    v872 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v866, v854), 0xEuLL), vaddq_s64(v868, v856), 0xEuLL);
    v873 = a1[9];
    v874 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v867, v855), 0xEuLL), vaddq_s64(v869, v857), 0xEuLL);
    *v860.i8 = vrshrn_n_s64(vsubq_s64(v848, v860), 0xEuLL);
    v875 = vrshrn_n_s64(vsubq_s64(v850, v862), 0xEuLL);
    *v849.i8 = vrshrn_n_s64(vsubq_s64(v849, v861), 0xEuLL);
    *v850.i8 = vrshrn_n_s64(vsubq_s64(v853, v863), 0xEuLL);
    v876 = vsubq_s64(v856, v868);
    *v856.i8 = vrshrn_n_s64(vsubq_s64(v854, v866), 0xEuLL);
    *v876.i8 = vrshrn_n_s64(v876, 0xEuLL);
    *v855.i8 = vrshrn_n_s64(vsubq_s64(v855, v867), 0xEuLL);
    *v857.i8 = vrshrn_n_s64(vsubq_s64(v857, v869), 0xEuLL);
    v877 = vdupq_n_s32(0x3B21u);
    v878 = vdupq_n_s32(0x187Eu);
    v879 = vmlal_s32(vmull_s32(*v849.i8, *v878.i8), *v860.i8, *v877.i8);
    v880 = vmlsl_s32(vmull_s32(*v860.i8, *v878.i8), *v849.i8, *v877.i8);
    v881 = vmlal_s32(vmull_s32(*v850.i8, *v878.i8), v875, *v877.i8);
    v882 = vmlsl_s32(vmull_s32(v875, *v878.i8), *v850.i8, *v877.i8);
    v883 = vmlal_s32(vmull_s32(*v856.i8, *v877.i8), *v855.i8, *v878.i8);
    v884 = vmlsl_s32(vmull_s32(*v855.i8, *v877.i8), *v856.i8, *v878.i8);
    v885 = vmlal_s32(vmull_s32(*v876.i8, *v877.i8), *v857.i8, *v878.i8);
    v886 = vmlsl_s32(vmull_s32(*v857.i8, *v877.i8), *v876.i8, *v878.i8);
    v887 = vaddq_s32(v872, v870);
    v888 = vaddq_s32(v871, v874);
    v889 = vsubq_s32(v870, v872);
    v890 = vsubq_s32(v871, v874);
    v891 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v884, v879), 0xEuLL), vaddq_s64(v886, v881), 0xEuLL);
    v1645 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v883, v880), 0xEuLL), vaddq_s64(v885, v882), 0xEuLL);
    *v884.i8 = vrshrn_n_s64(vsubq_s64(v879, v884), 0xEuLL);
    *v886.i8 = vrshrn_n_s64(vsubq_s64(v881, v886), 0xEuLL);
    *v883.i8 = vrshrn_n_s64(vsubq_s64(v880, v883), 0xEuLL);
    *v882.i8 = vrshrn_n_s64(vsubq_s64(v882, v885), 0xEuLL);
    v892 = vaddq_s32(v890, v889);
    v893 = vsubq_s32(v889, v890);
    v894 = vdupq_n_s32(0x2D41u);
    v895 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v893.i8, *v894.i8), 0xEuLL), vmull_high_s32(v893, v894), 0xEuLL);
    v896 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v883.i8, *v884.i8), *v894.i8), 0xEuLL), vmull_s32(vadd_s32(*v882.i8, *v886.i8), *v894.i8), 0xEuLL);
    v1614 = vnegq_s32(v891);
    v897 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v892.i8, *v894.i8), 0xEuLL), vmull_high_s32(v892, v894), 0xEuLL));
    v1631 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v884.i8, *v883.i8), *v894.i8), 0xEuLL), vmull_s32(vsub_s32(*v886.i8, *v882.i8), *v894.i8), 0xEuLL));
    v1638 = vnegq_s32(v888);
    v898 = vtrn1q_s32(v1656, v15);
    v899 = vtrn2q_s32(v1656, v15);
    v900 = vtrn1q_s32(v873, v1602);
    v901 = vtrn2q_s32(v873, v1602);
    v902 = vtrn1q_s32(v1620, v1653);
    v903 = vtrn2q_s32(v1620, v1653);
    v904 = vtrn1q_s32(v1626, v1608);
    v905 = vtrn2q_s32(v1626, v1608);
    v906 = vzip2q_s64(v898, v902);
    v907 = vzip2q_s64(v899, v903);
    v908 = vzip2q_s64(v901, v905);
    v909 = vmull_high_s32(v908, v847);
    v910 = vmlsl_s32(vmull_s32(*v908.i8, *v847.i8), *v898.i8, *v846.i8);
    v911 = vmlal_s32(vmull_s32(*v898.i8, *v847.i8), *v908.i8, *v846.i8);
    v912 = vmlal_high_s32(vmull_s32(*v902.i8, *v847.i8), v908, v846);
    v913 = vzip2q_s64(v900, v904);
    v914 = vmlsl_s32(v909, *v902.i8, *v846.i8);
    v915 = vmlal_s32(vmull_s32(*v906.i8, *v852.i8), *v901.i8, *v851.i8);
    v916 = vmlsl_s32(vmull_s32(*v901.i8, *v852.i8), *v906.i8, *v851.i8);
    v917 = vmlal_high_s32(vmull_s32(*v905.i8, *v851.i8), v906, v852);
    v918 = vmlsl_high_s32(vmull_s32(*v905.i8, *v852.i8), v906, v851);
    v919 = vmlal_s32(vmull_s32(*v900.i8, *v859.i8), *v907.i8, *v858.i8);
    v920 = vmlsl_s32(vmull_s32(*v907.i8, *v859.i8), *v900.i8, *v858.i8);
    v921 = vmlal_high_s32(vmull_s32(*v904.i8, *v859.i8), v907, v858);
    v922 = vmlsl_s32(vmull_high_s32(v907, v859), *v904.i8, *v858.i8);
    v923 = vmlal_s32(vmull_s32(*v913.i8, *v865.i8), *v899.i8, *v864.i8);
    v924 = vmlsl_s32(vmull_s32(*v899.i8, *v865.i8), *v913.i8, *v864.i8);
    v925 = vmlal_high_s32(vmull_s32(*v903.i8, *v864.i8), v913, v865);
    v926 = vmlsl_high_s32(vmull_s32(*v903.i8, *v865.i8), v913, v864);
    v927 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v919, v911), 0xEuLL), vaddq_s64(v921, v912), 0xEuLL);
    v928 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v920, v910), 0xEuLL), vaddq_s64(v922, v914), 0xEuLL);
    v929 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v923, v915), 0xEuLL), vaddq_s64(v925, v917), 0xEuLL);
    v930 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v924, v916), 0xEuLL), vaddq_s64(v926, v918), 0xEuLL);
    *v911.i8 = vrshrn_n_s64(vsubq_s64(v911, v919), 0xEuLL);
    *v912.i8 = vrshrn_n_s64(vsubq_s64(v912, v921), 0xEuLL);
    *v910.i8 = vrshrn_n_s64(vsubq_s64(v910, v920), 0xEuLL);
    *v914.i8 = vrshrn_n_s64(vsubq_s64(v914, v922), 0xEuLL);
    *v915.i8 = vrshrn_n_s64(vsubq_s64(v915, v923), 0xEuLL);
    *v917.i8 = vrshrn_n_s64(vsubq_s64(v917, v925), 0xEuLL);
    *v916.i8 = vrshrn_n_s64(vsubq_s64(v916, v924), 0xEuLL);
    *v918.i8 = vrshrn_n_s64(vsubq_s64(v918, v926), 0xEuLL);
    v931 = vmlal_s32(vmull_s32(*v910.i8, *v878.i8), *v911.i8, *v877.i8);
    v932 = vmlsl_s32(vmull_s32(*v911.i8, *v878.i8), *v910.i8, *v877.i8);
    v933 = vmlal_s32(vmull_s32(*v914.i8, *v878.i8), *v912.i8, *v877.i8);
    v934 = vmlsl_s32(vmull_s32(*v912.i8, *v878.i8), *v914.i8, *v877.i8);
    v935 = vmlal_s32(vmull_s32(*v915.i8, *v877.i8), *v916.i8, *v878.i8);
    v936 = vmlsl_s32(vmull_s32(*v916.i8, *v877.i8), *v915.i8, *v878.i8);
    v937 = vmlal_s32(vmull_s32(*v917.i8, *v877.i8), *v918.i8, *v878.i8);
    v938 = vmlsl_s32(vmull_s32(*v918.i8, *v877.i8), *v917.i8, *v878.i8);
    v1609 = vaddq_s32(v929, v927);
    v939 = vaddq_s32(v928, v930);
    v940 = vsubq_s32(v927, v929);
    v941 = vsubq_s32(v928, v930);
    v942 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v936, v931), 0xEuLL), vaddq_s64(v938, v933), 0xEuLL);
    v943 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v935, v932), 0xEuLL), vaddq_s64(v937, v934), 0xEuLL);
    *v936.i8 = vrshrn_n_s64(vsubq_s64(v931, v936), 0xEuLL);
    *v933.i8 = vrshrn_n_s64(vsubq_s64(v933, v938), 0xEuLL);
    *v938.i8 = vrshrn_n_s64(vsubq_s64(v932, v935), 0xEuLL);
    *v937.i8 = vrshrn_n_s64(vsubq_s64(v934, v937), 0xEuLL);
    v944 = vaddq_s32(v941, v940);
    v945 = vsubq_s32(v940, v941);
    v946 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v945.i8, *v894.i8), 0xEuLL), vmull_high_s32(v945, v894), 0xEuLL);
    v947 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v938.i8, *v936.i8), *v894.i8), 0xEuLL), vmull_s32(vadd_s32(*v937.i8, *v933.i8), *v894.i8), 0xEuLL);
    v948 = vnegq_s32(v942);
    v949 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v944.i8, *v894.i8), 0xEuLL), vmull_high_s32(v944, v894), 0xEuLL));
    v950 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v936.i8, *v938.i8), *v894.i8), 0xEuLL), vmull_s32(vsub_s32(*v933.i8, *v937.i8), *v894.i8), 0xEuLL));
    v951 = vnegq_s32(v939);
    v952 = v887;
    v953 = vtrn2q_s32(v887, v1614);
    v954 = vtrn2q_s32(v1609, v948);
    v955 = vtrn2q_s32(v896, v897);
    v956 = vtrn2q_s32(v947, v949);
    v957 = vzip2q_s64(v953, v955);
    v958 = vzip2q_s64(v954, v956);
    v959 = vdupq_n_s32(0xC7Cu);
    v960 = vdupq_n_s32(0xFFFFDC72);
    v961 = vdupq_n_s32(0x3537u);
    v962 = vmlal_s32(vmull_s32(*v954.i8, *v961.i8), *v957.i8, *v960.i8);
    v963 = vmlsl_s32(vmull_s32(*v957.i8, *v961.i8), *v954.i8, *v960.i8);
    v964 = vdupq_n_s32(0x3EC5u);
    v965 = vmlal_s32(vmull_s32(*v958.i8, *v959.i8), *v953.i8, *v964.i8);
    v1654 = vmlsl_s32(vmull_s32(*v953.i8, *v959.i8), *v958.i8, *v964.i8);
    v1658 = vmlal_high_s32(vmull_s32(*v956.i8, *v961.i8), v957, v960);
    v1621 = vmlsl_high_s32(vmull_s32(*v955.i8, *v959.i8), v958, v964);
    v1627 = vmlsl_s32(vmull_high_s32(v957, v961), *v956.i8, *v960.i8);
    v1585 = vmlal_high_s32(vmull_s32(*v955.i8, *v964.i8), v958, v959);
    v966 = vtrn2q_s32(v895, v1631);
    v967 = vtrn2q_s32(v946, v950);
    v968 = vtrn2q_s32(v1645, v1638);
    v969 = vzip2q_s64(v966, v968);
    v1603 = vmlal_s32(vmull_s32(*v967.i8, *v961.i8), *v969.i8, *v960.i8);
    v970 = vtrn2q_s32(v943, v951);
    v1592 = vmlal_high_s32(vmull_s32(*v970.i8, *v961.i8), v969, v960);
    v1594 = vmlsl_s32(vmull_s32(*v969.i8, *v961.i8), *v967.i8, *v960.i8);
    v971 = vmlsl_s32(vmull_high_s32(v969, v961), *v970.i8, *v960.i8);
    v972 = vzip2q_s64(v967, v970);
    v973 = vmlal_s32(vmull_s32(*v972.i8, *v959.i8), *v966.i8, *v964.i8);
    v974 = vmlsl_s32(vmull_s32(*v966.i8, *v959.i8), *v972.i8, *v964.i8);
    v1588 = vmlsl_high_s32(vmull_s32(*v968.i8, *v959.i8), v972, v964);
    v1586 = v971;
    v1587 = vmlal_high_s32(vmull_s32(*v968.i8, *v964.i8), v972, v959);
    v975 = vtrn1q_s32(v952, v1614);
    v976 = vtrn1q_s32(v1609, v948);
    v977 = vtrn1q_s32(v896, v897);
    v978 = vtrn1q_s32(v947, v949);
    v979 = vzip2q_s64(v975, v977);
    v980 = vzip2q_s64(v976, v978);
    v1615 = vmlsl_s32(vmull_s32(*v979.i8, *v878.i8), *v980.i8, *v877.i8);
    v1610 = vmlsl_high_s32(vmull_high_s32(v979, v878), v980, v877);
    v1596 = vmlal_high_s32(vmull_high_s32(v980, v878), v979, v877);
    v1599 = vmlal_s32(vmull_s32(*v980.i8, *v878.i8), *v979.i8, *v877.i8);
    v981 = vtrn1q_s32(v895, v1631);
    v982 = vtrn1q_s32(v946, v950);
    v983 = vtrn1q_s32(v1645, v1638);
    v984 = vtrn1q_s32(v943, v951);
    v985 = vzip2q_s64(v981, v983);
    v986 = vzip2q_s64(v982, v984);
    v1646 = vmlsl_s32(vmull_s32(*v985.i8, *v878.i8), *v986.i8, *v877.i8);
    v1639 = vmlsl_high_s32(vmull_high_s32(v985, v878), v986, v877);
    v1632 = vmlal_s32(vmull_s32(*v986.i8, *v878.i8), *v985.i8, *v877.i8);
    v1590 = vmlal_high_s32(vmull_high_s32(v986, v878), v985, v877);
    v987 = vmlal_s32(vmull_s32(*v976.i8, *v894.i8), *v975.i8, *v894.i8);
    v988 = vmlsl_s32(vmull_s32(*v975.i8, *v894.i8), *v976.i8, *v894.i8);
    v989 = vmlal_s32(vmull_s32(*v978.i8, *v894.i8), *v977.i8, *v894.i8);
    v990 = vmlsl_s32(vmull_s32(*v977.i8, *v894.i8), *v978.i8, *v894.i8);
    *v877.i8 = vsub_s32(vrshrn_n_s64(v1585, 0xEuLL), vrshrn_n_s64(v1627, 0xEuLL));
    *v979.i8 = vsub_s32(vrshrn_n_s64(v1621, 0xEuLL), vrshrn_n_s64(v1658, 0xEuLL));
    *v878.i8 = vrshrn_n_s64(v1654, 0xEuLL);
    *v968.i8 = vrshrn_n_s64(v962, 0xEuLL);
    *v870.i8 = vrshrn_n_s64(v963, 0xEuLL);
    *v897.i8 = vrshrn_n_s64(v965, 0xEuLL);
    *v962.i8 = vsub_s32(*v897.i8, *v870.i8);
    *v965.i8 = vsub_s32(*v878.i8, *v968.i8);
    v991 = vmlsl_s32(vmull_s32(*v962.i8, *v894.i8), *v965.i8, *v894.i8);
    v992 = vmlal_s32(vmull_s32(*v965.i8, *v894.i8), *v962.i8, *v894.i8);
    v993 = vmlsl_s32(vmull_s32(*v877.i8, *v894.i8), *v979.i8, *v894.i8);
    v994 = vmlal_s32(vmull_s32(*v979.i8, *v894.i8), *v877.i8, *v894.i8);
    v995 = vmlal_s32(vmull_s32(*v982.i8, *v894.i8), *v981.i8, *v894.i8);
    v996 = vmlsl_s32(vmull_s32(*v981.i8, *v894.i8), *v982.i8, *v894.i8);
    v997 = vmlal_s32(vmull_s32(*v984.i8, *v894.i8), *v983.i8, *v894.i8);
    v998 = vmlsl_s32(vmull_s32(*v983.i8, *v894.i8), *v984.i8, *v894.i8);
    *v983.i8 = vsub_s32(vrshrn_n_s64(v1587, 0xEuLL), vrshrn_n_s64(v971, 0xEuLL));
    *v971.i8 = vsub_s32(vrshrn_n_s64(v1588, 0xEuLL), vrshrn_n_s64(v1592, 0xEuLL));
    *v979.i8 = vrshrn_n_s64(v974, 0xEuLL);
    *v981.i8 = vrshrn_n_s64(v1603, 0xEuLL);
    *v977.i8 = vrshrn_n_s64(v1594, 0xEuLL);
    *v985.i8 = vrshrn_n_s64(v973, 0xEuLL);
    *v973.i8 = vsub_s32(*v985.i8, *v977.i8);
    *v974.i8 = vsub_s32(*v979.i8, *v981.i8);
    v999 = vmlsl_s32(vmull_s32(*v973.i8, *v894.i8), *v974.i8, *v894.i8);
    v1000 = vmlal_s32(vmull_s32(*v974.i8, *v894.i8), *v973.i8, *v894.i8);
    v1001 = vmlsl_s32(vmull_s32(*v983.i8, *v894.i8), *v971.i8, *v894.i8);
    v1002 = vmlal_s32(vmull_s32(*v971.i8, *v894.i8), *v983.i8, *v894.i8);
    v1003 = vrshrn_high_n_s64(vrshrn_n_s64(v987, 0xEuLL), v989, 0xEuLL);
    v1004 = vrshrn_high_n_s64(vrshrn_n_s64(v988, 0xEuLL), v990, 0xEuLL);
    v1005 = vrshrn_high_n_s64(vrshrn_n_s64(v1615, 0xEuLL), v1610, 0xEuLL);
    v1006 = vrshrn_high_n_s64(vrshrn_n_s64(v1599, 0xEuLL), v1596, 0xEuLL);
    v1007 = vaddq_s32(vrshrn_high_n_s64(*v968.i8, v1658, 0xEuLL), vrshrn_high_n_s64(*v878.i8, v1621, 0xEuLL));
    v1008 = vaddq_s32(vrshrn_high_n_s64(*v897.i8, v1585, 0xEuLL), vrshrn_high_n_s64(*v870.i8, v1627, 0xEuLL));
    v1009 = vaddq_s32(v1005, v1004);
    v1010 = vsubq_s32(v1004, v1005);
    v1011 = vaddq_s32(v1006, v1003);
    v1012 = vsubq_s32(v1003, v1006);
    v1013 = vrshrn_high_n_s64(vrshrn_n_s64(v991, 0xEuLL), v993, 0xEuLL);
    v1014 = vrshrn_high_n_s64(vrshrn_n_s64(v992, 0xEuLL), v994, 0xEuLL);
    v299 = vaddq_s32(v1012, v1007);
    v333 = vsubq_s32(v1012, v1007);
    v325 = vaddq_s32(v1013, v1010);
    v301 = vsubq_s32(v1010, v1013);
    v302 = vaddq_s32(v1014, v1009);
    v1651 = vsubq_s32(v1009, v1014);
    v1657 = vaddq_s32(v1011, v1008);
    v303 = vsubq_s32(v1011, v1008);
    v1015 = vrshrn_high_n_s64(vrshrn_n_s64(v995, 0xEuLL), v997, 0xEuLL);
    v1016 = vrshrn_high_n_s64(vrshrn_n_s64(v996, 0xEuLL), v998, 0xEuLL);
    v1017 = vrshrn_high_n_s64(vrshrn_n_s64(v1646, 0xEuLL), v1639, 0xEuLL);
    v1018 = vrshrn_high_n_s64(vrshrn_n_s64(v1632, 0xEuLL), v1590, 0xEuLL);
    v1019 = vaddq_s32(vrshrn_high_n_s64(*v981.i8, v1592, 0xEuLL), vrshrn_high_n_s64(*v979.i8, v1588, 0xEuLL));
    v1020 = vaddq_s32(vrshrn_high_n_s64(*v985.i8, v1587, 0xEuLL), vrshrn_high_n_s64(*v977.i8, v1586, 0xEuLL));
    v1021 = vaddq_s32(v1017, v1016);
    v1022 = vsubq_s32(v1016, v1017);
    v1023 = vaddq_s32(v1018, v1015);
    v1024 = vsubq_s32(v1015, v1018);
    v1025 = vrshrn_high_n_s64(vrshrn_n_s64(v999, 0xEuLL), v1001, 0xEuLL);
    v1026 = vrshrn_high_n_s64(vrshrn_n_s64(v1000, 0xEuLL), v1002, 0xEuLL);
    v345 = vaddq_s32(v1024, v1019);
    v346 = vsubq_s32(v1024, v1019);
    v348 = vaddq_s32(v1025, v1022);
    v347 = vsubq_s32(v1022, v1025);
    v350 = vaddq_s32(v1026, v1021);
    v349 = vsubq_s32(v1021, v1026);
    v344 = vaddq_s32(v1023, v1020);
    v351 = vsubq_s32(v1023, v1020);
  }

  else if (a4 == 1)
  {
    v482 = vtrn1q_s32(v5, v7);
    v483 = vtrn2q_s32(v5, v7);
    v484 = vtrn1q_s32(v6, v8);
    v485 = vtrn2q_s32(v6, v8);
    v486 = vtrn1q_s32(v10, v12);
    v487 = vtrn2q_s32(v10, v12);
    v488 = vtrn1q_s32(v9, v11);
    v489 = vtrn2q_s32(v9, v11);
    v490 = vzip2q_s64(v482, v486);
    v491 = vzip2q_s64(v483, v487);
    v492 = vzip2q_s64(v484, v488);
    v493 = vzip2q_s64(v485, v489);
    v494 = vdupq_n_s32(0xC7Cu);
    v495 = vdupq_n_s32(0xFFFFDC72);
    v496 = vdupq_n_s32(0x3537u);
    v497 = vdupq_n_s32(0x3EC5u);
    v498 = vmlsl_high_s32(vmull_s32(*v487.i8, *v494.i8), v493, v497);
    v499 = vmlal_high_s32(vmull_s32(*v489.i8, *v496.i8), v491, v495);
    v500 = vmlsl_s32(vmull_s32(*v491.i8, *v496.i8), *v485.i8, *v495.i8);
    v501 = vmlsl_s32(vmull_high_s32(v491, v496), *v489.i8, *v495.i8);
    v502 = vmlal_s32(vmull_s32(*v493.i8, *v494.i8), *v483.i8, *v497.i8);
    v503 = vmlal_high_s32(vmull_s32(*v487.i8, *v497.i8), v493, v494);
    *v493.i8 = vrshrn_n_s64(vmlsl_s32(vmull_s32(*v483.i8, *v494.i8), *v493.i8, *v497.i8), 0xEuLL);
    *v491.i8 = vrshrn_n_s64(vmlal_s32(vmull_s32(*v485.i8, *v496.i8), *v491.i8, *v495.i8), 0xEuLL);
    v504 = vdupq_n_s32(0x2D41u);
    v505 = vdupq_n_s32(0x187Eu);
    v506 = vmlal_s32(vmull_s32(*v484.i8, *v504.i8), *v482.i8, *v504.i8);
    v1652 = a1[14];
    v507 = vmlal_s32(vmull_s32(*v488.i8, *v504.i8), *v486.i8, *v504.i8);
    v508 = vmlsl_s32(vmull_s32(*v482.i8, *v504.i8), *v484.i8, *v504.i8);
    v509 = vdupq_n_s32(0x3B21u);
    v510 = vmlsl_s32(vmull_s32(*v486.i8, *v504.i8), *v488.i8, *v504.i8);
    v511 = vmlsl_s32(vmull_s32(*v490.i8, *v505.i8), *v492.i8, *v509.i8);
    v512 = vmlsl_high_s32(vmull_high_s32(v490, v505), v492, v509);
    v513 = vmlal_s32(vmull_s32(*v492.i8, *v505.i8), *v490.i8, *v509.i8);
    v514 = vmlal_high_s32(vmull_high_s32(v492, v505), v490, v509);
    *v490.i8 = vsub_s32(*v493.i8, *v491.i8);
    *v500.i8 = vrshrn_n_s64(v500, 0xEuLL);
    *v486.i8 = vrshrn_n_s64(v502, 0xEuLL);
    v515 = vrshrn_high_n_s64(vrshrn_n_s64(v506, 0xEuLL), v507, 0xEuLL);
    *v502.i8 = vsub_s32(*v486.i8, *v500.i8);
    v516 = vrshrn_high_n_s64(vrshrn_n_s64(v508, 0xEuLL), v510, 0xEuLL);
    v517 = vrshrn_high_n_s64(vrshrn_n_s64(v511, 0xEuLL), v512, 0xEuLL);
    v518 = vrshrn_high_n_s64(vrshrn_n_s64(v513, 0xEuLL), v514, 0xEuLL);
    v519 = vaddq_s32(vrshrn_high_n_s64(*v491.i8, v499, 0xEuLL), vrshrn_high_n_s64(*v493.i8, v498, 0xEuLL));
    v520 = vaddq_s32(vrshrn_high_n_s64(*v486.i8, v503, 0xEuLL), vrshrn_high_n_s64(*v500.i8, v501, 0xEuLL));
    v521 = vaddq_s32(v518, v515);
    v522 = vaddq_s32(v517, v516);
    v523 = vsubq_s32(v516, v517);
    v524 = vsubq_s32(v515, v518);
    *v501.i8 = vsub_s32(vrshrn_n_s64(v503, 0xEuLL), vrshrn_n_s64(v501, 0xEuLL));
    v525 = vmull_s32(*v490.i8, *v504.i8);
    v526 = vmlsl_s32(vmull_s32(*v502.i8, *v504.i8), *v490.i8, *v504.i8);
    *v498.i8 = vsub_s32(vrshrn_n_s64(v498, 0xEuLL), vrshrn_n_s64(v499, 0xEuLL));
    v527 = vmlal_s32(vmull_s32(*v498.i8, *v504.i8), *v501.i8, *v504.i8);
    v528 = vrshrn_high_n_s64(vrshrn_n_s64(v526, 0xEuLL), vmlsl_s32(vmull_s32(*v501.i8, *v504.i8), *v498.i8, *v504.i8), 0xEuLL);
    v529 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v525, *v502.i8, *v504.i8), 0xEuLL), v527, 0xEuLL);
    v530 = vaddq_s32(v521, v520);
    v531 = vaddq_s32(v529, v522);
    v532 = vaddq_s32(v528, v523);
    v533 = vaddq_s32(v524, v519);
    v1625 = vsubq_s32(v523, v528);
    v1630 = vsubq_s32(v524, v519);
    v1637 = vsubq_s32(v521, v520);
    v1644 = vsubq_s32(v522, v529);
    v534 = vtrn1q_s32(v1656, v15);
    v535 = vtrn2q_s32(v1656, v15);
    v536 = vtrn1q_s32(v13, v14);
    v537 = vtrn2q_s32(v13, a1[11]);
    v538 = vtrn1q_s32(v17, v1652);
    v539 = a1[15];
    v540 = vtrn2q_s32(v17, v1652);
    v541 = vtrn1q_s32(v16, v539);
    v542 = vtrn2q_s32(v16, v539);
    v543 = vzip2q_s64(v534, v538);
    v544 = vzip2q_s64(v535, v540);
    v545 = vzip2q_s64(v536, v541);
    v546 = vzip2q_s64(v537, v542);
    v547 = vmull_s32(*v544.i8, *v496.i8);
    v548 = vmull_high_s32(v544, v496);
    v549 = vmull_s32(*v540.i8, *v497.i8);
    v550 = vmlsl_high_s32(vmull_s32(*v540.i8, *v494.i8), v546, v497);
    v551 = vmlal_s32(vmull_s32(*v537.i8, *v496.i8), *v544.i8, *v495.i8);
    v552 = vmlal_high_s32(vmull_s32(*v542.i8, *v496.i8), v544, v495);
    v553 = vmlsl_s32(v547, *v537.i8, *v495.i8);
    v554 = vmlsl_s32(v548, *v542.i8, *v495.i8);
    v555 = vmlal_s32(vmull_s32(*v546.i8, *v494.i8), *v535.i8, *v497.i8);
    v556 = vmlal_high_s32(v549, v546, v494);
    *v542.i8 = vrshrn_n_s64(vmlsl_s32(vmull_s32(*v535.i8, *v494.i8), *v546.i8, *v497.i8), 0xEuLL);
    *v546.i8 = vrshrn_n_s64(v550, 0xEuLL);
    *v544.i8 = vrshrn_n_s64(v551, 0xEuLL);
    *v551.i8 = vrshrn_n_s64(v552, 0xEuLL);
    *v495.i8 = vrshrn_n_s64(v553, 0xEuLL);
    *v535.i8 = vrshrn_n_s64(v554, 0xEuLL);
    *v497.i8 = vrshrn_n_s64(v555, 0xEuLL);
    *v494.i8 = vrshrn_n_s64(v556, 0xEuLL);
    *v555.i8 = vsub_s32(*v542.i8, *v544.i8);
    v557 = vrshrn_high_n_s64(*v542.i8, v550, 0xEuLL);
    v558 = vrshrn_high_n_s64(*v544.i8, v552, 0xEuLL);
    *v552.i8 = vsub_s32(*v497.i8, *v495.i8);
    v559 = vrshrn_high_n_s64(*v495.i8, v554, 0xEuLL);
    v560 = vrshrn_high_n_s64(*v497.i8, v556, 0xEuLL);
    v561 = vmull_s32(*v534.i8, *v504.i8);
    v1598 = *v505.i8;
    v562 = vmlal_s32(vmull_s32(*v536.i8, *v504.i8), *v534.i8, *v504.i8);
    v563 = vmlal_s32(vmull_s32(*v541.i8, *v504.i8), *v538.i8, *v504.i8);
    v564 = vmlsl_s32(vmull_s32(*v538.i8, *v504.i8), *v541.i8, *v504.i8);
    v565 = vmlsl_s32(vmull_s32(*v543.i8, *v505.i8), *v545.i8, *v509.i8);
    v566 = vmlsl_high_s32(vmull_high_s32(v543, v505), v545, v509);
    v567 = vmlal_s32(vmull_s32(*v545.i8, *v505.i8), *v543.i8, *v509.i8);
    v568 = vmlal_high_s32(vmull_high_s32(v545, v505), v543, v509);
    v569 = vrshrn_high_n_s64(vrshrn_n_s64(v562, 0xEuLL), v563, 0xEuLL);
    v570 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v561, *v536.i8, *v504.i8), 0xEuLL), v564, 0xEuLL);
    v571 = vrshrn_high_n_s64(vrshrn_n_s64(v565, 0xEuLL), v566, 0xEuLL);
    v572 = vrshrn_high_n_s64(vrshrn_n_s64(v567, 0xEuLL), v568, 0xEuLL);
    v573 = vaddq_s32(v558, v557);
    v574 = vaddq_s32(v560, v559);
    v575 = vaddq_s32(v572, v569);
    v576 = vaddq_s32(v571, v570);
    v577 = vsubq_s32(v570, v571);
    v578 = vsubq_s32(v569, v572);
    *v571.i8 = vsub_s32(*v494.i8, *v535.i8);
    *v551.i8 = vsub_s32(*v546.i8, *v551.i8);
    v579 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(vmull_s32(*v552.i8, *v504.i8), *v555.i8, *v504.i8), 0xEuLL), vmlsl_s32(vmull_s32(*v571.i8, *v504.i8), *v551.i8, *v504.i8), 0xEuLL);
    v580 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(vmull_s32(*v555.i8, *v504.i8), *v552.i8, *v504.i8), 0xEuLL), vmlal_s32(vmull_s32(*v551.i8, *v504.i8), *v571.i8, *v504.i8), 0xEuLL);
    v581 = vaddq_s32(v575, v574);
    v582 = vaddq_s32(v580, v576);
    v583 = vaddq_s32(v579, v577);
    v584 = vaddq_s32(v578, v573);
    v1601 = vsubq_s32(v578, v573);
    v585 = vsubq_s32(v577, v579);
    v1607 = vsubq_s32(v575, v574);
    v1613 = vsubq_s32(v576, v580);
    v586 = vtrn1q_s32(v530, v531);
    v587 = vtrn2q_s32(v530, v531);
    v588 = vtrn1q_s32(v581, v582);
    v589 = vtrn2q_s32(v581, v582);
    v590 = vtrn1q_s32(v532, v533);
    v591 = vtrn2q_s32(v532, v533);
    v592 = vtrn1q_s32(v583, v584);
    v593 = vtrn2q_s32(v583, v584);
    v594 = vzip2q_s64(v586, v590);
    v595 = vzip2q_s64(v587, v591);
    v596 = vzip2q_s64(v588, v592);
    v597 = vzip2q_s64(v589, v593);
    v598 = vdupq_n_s32(0x3FB1u);
    v599 = vdupq_n_s32(0x646u);
    v600 = vmlal_s32(vmull_s32(*v586.i8, *v599.i8), *v597.i8, *v598.i8);
    v601 = vmlsl_s32(vmull_s32(*v597.i8, *v599.i8), *v586.i8, *v598.i8);
    v602 = vmlal_high_s32(vmull_s32(*v590.i8, *v599.i8), v597, v598);
    v603 = vmlsl_s32(vmull_high_s32(v597, v599), *v590.i8, *v598.i8);
    v604 = vdupq_n_s32(0x3871u);
    v605 = vdupq_n_s32(0x1E2Bu);
    v606 = vmull_s32(*v593.i8, *v605.i8);
    v607 = vmlal_s32(vmull_s32(*v594.i8, *v605.i8), *v589.i8, *v604.i8);
    v608 = vmlsl_s32(vmull_s32(*v589.i8, *v605.i8), *v594.i8, *v604.i8);
    v609 = vmlal_high_s32(vmull_s32(*v593.i8, *v604.i8), v594, v605);
    v610 = vdupq_n_s32(0x289Au);
    v611 = vmlsl_high_s32(v606, v594, v604);
    v612 = vdupq_n_s32(0x3179u);
    v613 = vmlsl_s32(vmull_s32(*v595.i8, *v612.i8), *v588.i8, *v610.i8);
    v614 = vmlal_s32(vmull_s32(*v588.i8, *v612.i8), *v595.i8, *v610.i8);
    v615 = vmlal_high_s32(vmull_s32(*v592.i8, *v612.i8), v595, v610);
    v616 = vmlsl_s32(vmull_high_s32(v595, v612), *v592.i8, *v610.i8);
    v617 = vdupq_n_s32(0x1294u);
    v618 = vdupq_n_s32(0x3D3Fu);
    v619 = vmlal_s32(vmull_s32(*v596.i8, *v618.i8), *v587.i8, *v617.i8);
    v620 = vmlsl_s32(vmull_s32(*v587.i8, *v618.i8), *v596.i8, *v617.i8);
    v621 = vmlal_high_s32(vmull_s32(*v591.i8, *v617.i8), v596, v618);
    v622 = vmlsl_high_s32(vmull_s32(*v591.i8, *v618.i8), v596, v617);
    v623 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v614, v600), 0xEuLL), vaddq_s64(v615, v602), 0xEuLL);
    v624 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v613, v601), 0xEuLL), vaddq_s64(v616, v603), 0xEuLL);
    v625 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v619, v607), 0xEuLL), vaddq_s64(v621, v609), 0xEuLL);
    v626 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v620, v608), 0xEuLL), vaddq_s64(v622, v611), 0xEuLL);
    *v614.i8 = vrshrn_n_s64(vsubq_s64(v600, v614), 0xEuLL);
    *v615.i8 = vrshrn_n_s64(vsubq_s64(v602, v615), 0xEuLL);
    *v602.i8 = vrshrn_n_s64(vsubq_s64(v601, v613), 0xEuLL);
    *v600.i8 = vrshrn_n_s64(vsubq_s64(v603, v616), 0xEuLL);
    *v619.i8 = vrshrn_n_s64(vsubq_s64(v607, v619), 0xEuLL);
    *v621.i8 = vrshrn_n_s64(vsubq_s64(v609, v621), 0xEuLL);
    v627 = vsubq_s64(v611, v622);
    *v611.i8 = vrshrn_n_s64(vsubq_s64(v608, v620), 0xEuLL);
    *v627.i8 = vrshrn_n_s64(v627, 0xEuLL);
    v628 = vmlal_s32(vmull_s32(*v602.i8, v1598), *v614.i8, *v509.i8);
    v629 = vmlsl_s32(vmull_s32(*v614.i8, v1598), *v602.i8, *v509.i8);
    v630 = vmlal_s32(vmull_s32(*v600.i8, v1598), *v615.i8, *v509.i8);
    v631 = vmlsl_s32(vmull_s32(*v615.i8, v1598), *v600.i8, *v509.i8);
    v632 = vmlal_s32(vmull_s32(*v619.i8, *v509.i8), *v611.i8, v1598);
    v633 = vmlsl_s32(vmull_s32(*v611.i8, *v509.i8), *v619.i8, v1598);
    v634 = vmlal_s32(vmull_s32(*v621.i8, *v509.i8), *v627.i8, v1598);
    v635 = vmlsl_s32(vmull_s32(*v627.i8, *v509.i8), *v621.i8, v1598);
    v1657 = vaddq_s32(v625, v623);
    v636 = vsubq_s32(v623, v625);
    v1619 = vaddq_s32(v624, v626);
    v637 = vsubq_s32(v624, v626);
    v638 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v633, v628), 0xEuLL), vaddq_s64(v635, v630), 0xEuLL);
    v1651 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v632, v629), 0xEuLL), vaddq_s64(v634, v631), 0xEuLL);
    v639 = vsubq_s64(v630, v635);
    *v630.i8 = vrshrn_n_s64(vsubq_s64(v628, v633), 0xEuLL);
    *v639.i8 = vrshrn_n_s64(v639, 0xEuLL);
    *v633.i8 = vrshrn_n_s64(vsubq_s64(v629, v632), 0xEuLL);
    *v631.i8 = vrshrn_n_s64(vsubq_s64(v631, v634), 0xEuLL);
    v640 = vaddq_s32(v637, v636);
    v641 = vsubq_s32(v636, v637);
    v642 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v640.i8, *v504.i8), 0xEuLL), vmull_high_s32(v640, v504), 0xEuLL);
    v643 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v641.i8, *v504.i8), 0xEuLL), vmull_high_s32(v641, v504), 0xEuLL);
    v644 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v633.i8, *v630.i8), *v504.i8), 0xEuLL), vmull_s32(vadd_s32(*v631.i8, *v639.i8), *v504.i8), 0xEuLL);
    v645 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v630.i8, *v633.i8), *v504.i8), 0xEuLL), vmull_s32(vsub_s32(*v639.i8, *v631.i8), *v504.i8), 0xEuLL);
    v646 = vtrn1q_s32(v1630, v1625);
    v647 = vtrn2q_s32(v1630, v1625);
    v648 = vtrn1q_s32(v1601, v585);
    v649 = vtrn2q_s32(v1601, v585);
    v650 = vtrn1q_s32(v1644, v1637);
    v651 = vtrn2q_s32(v1644, v1637);
    v652 = vtrn1q_s32(v1613, v1607);
    v653 = vtrn2q_s32(v1613, v1607);
    v654 = vzip2q_s64(v646, v650);
    v655 = vzip2q_s64(v647, v651);
    v656 = vzip2q_s64(v649, v653);
    v657 = vmlsl_s32(vmull_s32(*v656.i8, *v599.i8), *v646.i8, *v598.i8);
    v658 = vmlal_s32(vmull_s32(*v646.i8, *v599.i8), *v656.i8, *v598.i8);
    v659 = vmlal_high_s32(vmull_s32(*v650.i8, *v599.i8), v656, v598);
    v660 = vzip2q_s64(v648, v652);
    v661 = vmlsl_s32(vmull_high_s32(v656, v599), *v650.i8, *v598.i8);
    v662 = vmlal_s32(vmull_s32(*v654.i8, *v605.i8), *v649.i8, *v604.i8);
    v663 = vmlsl_s32(vmull_s32(*v649.i8, *v605.i8), *v654.i8, *v604.i8);
    v664 = vmlal_high_s32(vmull_s32(*v653.i8, *v604.i8), v654, v605);
    v665 = vmlsl_high_s32(vmull_s32(*v653.i8, *v605.i8), v654, v604);
    v666 = vmlal_s32(vmull_s32(*v648.i8, *v612.i8), *v655.i8, *v610.i8);
    v667 = vmlsl_s32(vmull_s32(*v655.i8, *v612.i8), *v648.i8, *v610.i8);
    v668 = vmlal_high_s32(vmull_s32(*v652.i8, *v612.i8), v655, v610);
    v669 = vmlsl_s32(vmull_high_s32(v655, v612), *v652.i8, *v610.i8);
    v670 = vmull_s32(*v651.i8, *v617.i8);
    v671 = vmull_s32(*v651.i8, *v618.i8);
    v672 = vmlal_s32(vmull_s32(*v660.i8, *v618.i8), *v647.i8, *v617.i8);
    v673 = vmlsl_s32(vmull_s32(*v647.i8, *v618.i8), *v660.i8, *v617.i8);
    v674 = vmlal_high_s32(v670, v660, v618);
    v325 = v644;
    v675 = vmlsl_high_s32(v671, v660, v617);
    v676 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v666, v658), 0xEuLL), vaddq_s64(v668, v659), 0xEuLL);
    v677 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v667, v657), 0xEuLL), vaddq_s64(v669, v661), 0xEuLL);
    v678 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v672, v662), 0xEuLL), vaddq_s64(v674, v664), 0xEuLL);
    v679 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v673, v663), 0xEuLL), vaddq_s64(v675, v665), 0xEuLL);
    v333 = v643;
    v680 = vsubq_s64(v663, v673);
    *v663.i8 = vrshrn_n_s64(vsubq_s64(v658, v666), 0xEuLL);
    *v668.i8 = vrshrn_n_s64(vsubq_s64(v659, v668), 0xEuLL);
    *v657.i8 = vrshrn_n_s64(vsubq_s64(v657, v667), 0xEuLL);
    *v661.i8 = vrshrn_n_s64(vsubq_s64(v661, v669), 0xEuLL);
    *v658.i8 = vrshrn_n_s64(vsubq_s64(v662, v672), 0xEuLL);
    *v659.i8 = vrshrn_n_s64(vsubq_s64(v664, v674), 0xEuLL);
    *v680.i8 = vrshrn_n_s64(v680, 0xEuLL);
    *v675.i8 = vrshrn_n_s64(vsubq_s64(v665, v675), 0xEuLL);
    v681 = vmlal_s32(vmull_s32(*v657.i8, v1598), *v663.i8, *v509.i8);
    v682 = vmlsl_s32(vmull_s32(*v663.i8, v1598), *v657.i8, *v509.i8);
    v683 = vmlal_s32(vmull_s32(*v661.i8, v1598), *v668.i8, *v509.i8);
    v684 = vmlsl_s32(vmull_s32(*v668.i8, v1598), *v661.i8, *v509.i8);
    v685 = vmlal_s32(vmull_s32(*v658.i8, *v509.i8), *v680.i8, v1598);
    v686 = vmlsl_s32(vmull_s32(*v680.i8, *v509.i8), *v658.i8, v1598);
    v687 = vmlal_s32(vmull_s32(*v659.i8, *v509.i8), *v675.i8, v1598);
    v688 = vmlsl_s32(vmull_s32(*v675.i8, *v509.i8), *v659.i8, v1598);
    v344 = vaddq_s32(v678, v676);
    v689 = vaddq_s32(v677, v679);
    v690 = vsubq_s32(v676, v678);
    v691 = vsubq_s32(v677, v679);
    v692 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v686, v681), 0xEuLL), vaddq_s64(v688, v683), 0xEuLL);
    v349 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v685, v682), 0xEuLL), vaddq_s64(v687, v684), 0xEuLL);
    *v686.i8 = vrshrn_n_s64(vsubq_s64(v681, v686), 0xEuLL);
    *v683.i8 = vrshrn_n_s64(vsubq_s64(v683, v688), 0xEuLL);
    *v682.i8 = vrshrn_n_s64(vsubq_s64(v682, v685), 0xEuLL);
    *v684.i8 = vrshrn_n_s64(vsubq_s64(v684, v687), 0xEuLL);
    v693 = vaddq_s32(v691, v690);
    v694 = vsubq_s32(v690, v691);
    v695 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v693.i8, *v504.i8), 0xEuLL), vmull_high_s32(v693, v504), 0xEuLL);
    v346 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v694.i8, *v504.i8), 0xEuLL), vmull_high_s32(v694, v504), 0xEuLL);
    *v694.i8 = vadd_s32(*v682.i8, *v686.i8);
    *v686.i8 = vsub_s32(*v686.i8, *v682.i8);
    *v682.i8 = vadd_s32(*v684.i8, *v683.i8);
    *v683.i8 = vsub_s32(*v683.i8, *v684.i8);
    v696 = vmull_s32(*v682.i8, *v504.i8);
    v697 = vmull_s32(*v683.i8, *v504.i8);
    v348 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v694.i8, *v504.i8), 0xEuLL), v696, 0xEuLL);
    v698 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v686.i8, *v504.i8), 0xEuLL), v697, 0xEuLL);
    v302 = vnegq_s32(v638);
    v299 = vnegq_s32(v642);
    v301 = vnegq_s32(v645);
    v303 = vnegq_s32(v1619);
    v350 = vnegq_s32(v692);
    v345 = vnegq_s32(v695);
    v347 = vnegq_s32(v698);
    v351 = vnegq_s32(v689);
  }

  else
  {
    v1650 = a1[10];
    if (a4)
    {
      v1162 = vtrn1q_s32(v5, v7);
      v1163 = vtrn2q_s32(v5, v7);
      v1164 = vtrn1q_s32(v6, v8);
      v1165 = a1[13];
      v1166 = vtrn2q_s32(v6, v8);
      v1167 = a1[12];
      v1168 = vtrn1q_s32(v10, v12);
      v1169 = vtrn2q_s32(v10, v12);
      v1170 = vtrn1q_s32(v9, v11);
      v1171 = a1[15];
      v1172 = vtrn2q_s32(v9, v11);
      v1173 = a1[9];
      v1174 = vzip2q_s64(v1162, v1168);
      v1175 = vzip2q_s64(v1163, v1169);
      v1176 = vzip2q_s64(v1164, v1170);
      v1177 = vzip2q_s64(v1166, v1172);
      v1178 = vdupq_n_s32(0x3FB1u);
      v1179 = vdupq_n_s32(0x646u);
      v1180 = vmlal_s32(vmull_s32(*v1162.i8, *v1179.i8), *v1177.i8, *v1178.i8);
      v1181 = vmlsl_s32(vmull_s32(*v1177.i8, *v1179.i8), *v1162.i8, *v1178.i8);
      v1182 = vmlal_high_s32(vmull_s32(*v1168.i8, *v1179.i8), v1177, v1178);
      v1183 = vmlsl_s32(vmull_high_s32(v1177, v1179), *v1168.i8, *v1178.i8);
      v1184 = vdupq_n_s32(0x3871u);
      v1185 = vdupq_n_s32(0x1E2Bu);
      v1186 = vmull_s32(*v1172.i8, *v1185.i8);
      v1187 = vmlal_s32(vmull_s32(*v1174.i8, *v1185.i8), *v1166.i8, *v1184.i8);
      v1188 = vmlsl_s32(vmull_s32(*v1166.i8, *v1185.i8), *v1174.i8, *v1184.i8);
      v1189 = vmlal_high_s32(vmull_s32(*v1172.i8, *v1184.i8), v1174, v1185);
      v1190 = vdupq_n_s32(0x289Au);
      v1633 = vdupq_n_s32(0x3179u);
      v1640 = v1185;
      v1191 = vmlsl_high_s32(v1186, v1174, v1184);
      v1192 = vmlal_s32(vmull_s32(*v1164.i8, *v1633.i8), *v1175.i8, *v1190.i8);
      v1193 = vmlsl_s32(vmull_s32(*v1175.i8, *v1633.i8), *v1164.i8, *v1190.i8);
      v1647 = v1190;
      v1194 = vmlal_high_s32(vmull_s32(*v1170.i8, *v1633.i8), v1175, v1190);
      v1195 = vmlsl_s32(vmull_high_s32(v1175, v1633), *v1170.i8, *v1190.i8);
      v1196 = vdupq_n_s32(0x1294u);
      v1197 = vdupq_n_s32(0x3D3Fu);
      v1198 = vmlal_s32(vmull_s32(*v1176.i8, *v1197.i8), *v1163.i8, *v1196.i8);
      v1199 = vmlsl_s32(vmull_s32(*v1163.i8, *v1197.i8), *v1176.i8, *v1196.i8);
      v1200 = vmlal_high_s32(vmull_s32(*v1169.i8, *v1196.i8), v1176, v1197);
      v1201 = vmlsl_high_s32(vmull_s32(*v1169.i8, *v1197.i8), v1176, v1196);
      v1202 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1192, v1180), 0xEuLL), vaddq_s64(v1194, v1182), 0xEuLL);
      v1203 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1193, v1181), 0xEuLL), vaddq_s64(v1195, v1183), 0xEuLL);
      v1204 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1198, v1187), 0xEuLL), vaddq_s64(v1200, v1189), 0xEuLL);
      v1205 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1199, v1188), 0xEuLL), vaddq_s64(v1201, v1191), 0xEuLL);
      *v1192.i8 = vrshrn_n_s64(vsubq_s64(v1180, v1192), 0xEuLL);
      *v1194.i8 = vrshrn_n_s64(vsubq_s64(v1182, v1194), 0xEuLL);
      *v1182.i8 = vrshrn_n_s64(vsubq_s64(v1181, v1193), 0xEuLL);
      *v1183.i8 = vrshrn_n_s64(vsubq_s64(v1183, v1195), 0xEuLL);
      *v1198.i8 = vrshrn_n_s64(vsubq_s64(v1187, v1198), 0xEuLL);
      *v1200.i8 = vrshrn_n_s64(vsubq_s64(v1189, v1200), 0xEuLL);
      *v1199.i8 = vrshrn_n_s64(vsubq_s64(v1188, v1199), 0xEuLL);
      *v1180.i8 = vdup_n_s32(0x3B21u);
      *v1181.i8 = vdup_n_s32(0x187Eu);
      *v1188.i8 = vrshrn_n_s64(vsubq_s64(v1191, v1201), 0xEuLL);
      v1206 = vmlal_s32(vmull_s32(*v1182.i8, *v1181.i8), *v1192.i8, *v1180.i8);
      v1207 = vmlsl_s32(vmull_s32(*v1192.i8, *v1181.i8), *v1182.i8, *v1180.i8);
      v1208 = vmlal_s32(vmull_s32(*v1183.i8, *v1181.i8), *v1194.i8, *v1180.i8);
      v1209 = vmlsl_s32(vmull_s32(*v1194.i8, *v1181.i8), *v1183.i8, *v1180.i8);
      v1210 = vmlal_s32(vmull_s32(*v1198.i8, *v1180.i8), *v1199.i8, *v1181.i8);
      v1211 = vmlsl_s32(vmull_s32(*v1199.i8, *v1180.i8), *v1198.i8, *v1181.i8);
      v1212 = vmlal_s32(vmull_s32(*v1200.i8, *v1180.i8), *v1188.i8, *v1181.i8);
      v1213 = vmlsl_s32(vmull_s32(*v1188.i8, *v1180.i8), *v1200.i8, *v1181.i8);
      v1214 = vaddq_s32(v1204, v1202);
      v1611 = vaddq_s32(v1203, v1205);
      v1215 = vsubq_s32(v1202, v1204);
      v1216 = vsubq_s32(v1203, v1205);
      v1217 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1211, v1206), 0xEuLL), vaddq_s64(v1213, v1208), 0xEuLL);
      v1218 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1210, v1207), 0xEuLL), vaddq_s64(v1212, v1209), 0xEuLL);
      *v1211.i8 = vrshrn_n_s64(vsubq_s64(v1206, v1211), 0xEuLL);
      *v1213.i8 = vrshrn_n_s64(vsubq_s64(v1208, v1213), 0xEuLL);
      v1219 = vsubq_s64(v1209, v1212);
      *v1212.i8 = vrshrn_n_s64(vsubq_s64(v1207, v1210), 0xEuLL);
      *v1219.i8 = vrshrn_n_s64(v1219, 0xEuLL);
      v1220 = vaddq_s32(v1216, v1215);
      v1221 = vsubq_s32(v1215, v1216);
      v1222 = vdupq_n_s32(0x2D41u);
      v1223 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1220.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1220, v1222), 0xEuLL);
      v1224 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1221.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1221, v1222), 0xEuLL);
      v1225 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v1212.i8, *v1211.i8), *v1222.i8), 0xEuLL), vmull_s32(vadd_s32(*v1219.i8, *v1213.i8), *v1222.i8), 0xEuLL);
      v1604 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v1211.i8, *v1212.i8), *v1222.i8), 0xEuLL), vmull_s32(vsub_s32(*v1213.i8, *v1219.i8), *v1222.i8), 0xEuLL);
      v1226 = vtrn1q_s32(v1656, v1650);
      v1227 = vtrn2q_s32(v1656, v1650);
      v1228 = vtrn1q_s32(v1173, v14);
      v1229 = vtrn2q_s32(v1173, v14);
      v1230 = vtrn1q_s32(v1167, v19);
      v1231 = vtrn2q_s32(v1167, v19);
      v1232 = vtrn1q_s32(v1165, v1171);
      v1233 = vtrn2q_s32(v1165, v1171);
      v1234 = vzip2q_s64(v1226, v1230);
      v1235 = vzip2q_s64(v1229, v1233);
      v1616 = v1179;
      v1622 = v1178;
      v1211.i64[0] = v1178.i64[0];
      v1236 = vmlal_s32(vmull_s32(*v1226.i8, *v1179.i8), *v1235.i8, *v1178.i8);
      v1237 = vmlsl_s32(vmull_s32(*v1235.i8, *v1179.i8), *v1226.i8, *v1178.i8);
      v1238 = vmlal_high_s32(vmull_s32(*v1230.i8, *v1179.i8), v1235, v1178);
      v1239 = vmlsl_s32(vmull_high_s32(v1235, v1179), *v1230.i8, *v1211.i8);
      v1628 = v1184;
      v1240 = vmlal_s32(vmull_s32(*v1234.i8, *v1640.i8), *v1229.i8, *v1184.i8);
      v1241 = vmlsl_s32(vmull_s32(*v1229.i8, *v1640.i8), *v1234.i8, *v1184.i8);
      v1242 = vmlal_high_s32(vmull_s32(*v1233.i8, *v1184.i8), v1234, v1640);
      v1243 = vmlsl_high_s32(vmull_s32(*v1233.i8, *v1640.i8), v1234, v1184);
      v1244 = vzip2q_s64(v1227, v1231);
      v1245 = vmlsl_s32(vmull_s32(*v1244.i8, *v1633.i8), *v1228.i8, *v1647.i8);
      v1246 = vzip2q_s64(v1228, v1232);
      v1247 = vmlal_s32(vmull_s32(*v1228.i8, *v1633.i8), *v1244.i8, *v1647.i8);
      v1248 = vmlal_high_s32(vmull_s32(*v1232.i8, *v1633.i8), v1244, v1647);
      v1249 = vmlsl_s32(vmull_high_s32(v1244, v1633), *v1232.i8, *v1647.i8);
      v1250 = vmlal_s32(vmull_s32(*v1246.i8, *v1197.i8), *v1227.i8, *v1196.i8);
      v1251 = vmlsl_s32(vmull_s32(*v1227.i8, *v1197.i8), *v1246.i8, *v1196.i8);
      v1252 = vmlal_high_s32(vmull_s32(*v1231.i8, *v1196.i8), v1246, v1197);
      v1253 = vmlsl_high_s32(vmull_s32(*v1231.i8, *v1197.i8), v1246, v1196);
      v1254 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1247, v1236), 0xEuLL), vaddq_s64(v1248, v1238), 0xEuLL);
      v1255 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1245, v1237), 0xEuLL), vaddq_s64(v1249, v1239), 0xEuLL);
      v1256 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1250, v1240), 0xEuLL), vaddq_s64(v1252, v1242), 0xEuLL);
      v1257 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1251, v1241), 0xEuLL), vaddq_s64(v1253, v1243), 0xEuLL);
      v1258 = vsubq_s64(v1242, v1252);
      *v1242.i8 = vrshrn_n_s64(vsubq_s64(v1236, v1247), 0xEuLL);
      *v1248.i8 = vrshrn_n_s64(vsubq_s64(v1238, v1248), 0xEuLL);
      *v1238.i8 = vrshrn_n_s64(vsubq_s64(v1237, v1245), 0xEuLL);
      *v1249.i8 = vrshrn_n_s64(vsubq_s64(v1239, v1249), 0xEuLL);
      *v1240.i8 = vrshrn_n_s64(vsubq_s64(v1240, v1250), 0xEuLL);
      *v1258.i8 = vrshrn_n_s64(v1258, 0xEuLL);
      *v1251.i8 = vrshrn_n_s64(vsubq_s64(v1241, v1251), 0xEuLL);
      *v1253.i8 = vrshrn_n_s64(vsubq_s64(v1243, v1253), 0xEuLL);
      v1259 = vmlal_s32(vmull_s32(*v1238.i8, *v1181.i8), *v1242.i8, *v1180.i8);
      v1260 = vmlsl_s32(vmull_s32(*v1242.i8, *v1181.i8), *v1238.i8, *v1180.i8);
      v1261 = vmlal_s32(vmull_s32(*v1249.i8, *v1181.i8), *v1248.i8, *v1180.i8);
      v1262 = vmlsl_s32(vmull_s32(*v1248.i8, *v1181.i8), *v1249.i8, *v1180.i8);
      v1263 = vmlal_s32(vmull_s32(*v1240.i8, *v1180.i8), *v1251.i8, *v1181.i8);
      v1264 = vmlsl_s32(vmull_s32(*v1251.i8, *v1180.i8), *v1240.i8, *v1181.i8);
      v1265 = vmlal_s32(vmull_s32(*v1258.i8, *v1180.i8), *v1253.i8, *v1181.i8);
      v1266 = vmlsl_s32(vmull_s32(*v1253.i8, *v1180.i8), *v1258.i8, *v1181.i8);
      v1267 = vaddq_s32(v1256, v1254);
      v1268 = vsubq_s32(v1254, v1256);
      v1269 = vaddq_s32(v1255, v1257);
      v1270 = vsubq_s32(v1255, v1257);
      v1271 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1264, v1259), 0xEuLL), vaddq_s64(v1266, v1261), 0xEuLL);
      v1272 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1263, v1260), 0xEuLL), vaddq_s64(v1265, v1262), 0xEuLL);
      v1273 = vsubq_s64(v1259, v1264);
      v1274 = vnegq_s32(v1217);
      v1275 = vnegq_s32(v1223);
      v1276 = vsubq_s64(v1261, v1266);
      *v1261.i8 = vrshrn_n_s64(v1273, 0xEuLL);
      *v1276.i8 = vrshrn_n_s64(v1276, 0xEuLL);
      *v1260.i8 = vrshrn_n_s64(vsubq_s64(v1260, v1263), 0xEuLL);
      *v1273.i8 = vrshrn_n_s64(vsubq_s64(v1262, v1265), 0xEuLL);
      v1277 = vaddq_s32(v1270, v1268);
      v1278 = vsubq_s32(v1268, v1270);
      v1279 = vmull_high_s32(v1277, v1222);
      *v1270.i8 = vrshrn_n_s64(vmull_s32(*v1277.i8, *v1222.i8), 0xEuLL);
      v1280 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1278.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1278, v1222), 0xEuLL);
      v1281 = vmull_s32(vadd_s32(*v1260.i8, *v1261.i8), *v1222.i8);
      v1282 = vmull_s32(vsub_s32(*v1261.i8, *v1260.i8), *v1222.i8);
      v1283 = vmull_s32(vadd_s32(*v1273.i8, *v1276.i8), *v1222.i8);
      v1284 = vmull_s32(vsub_s32(*v1276.i8, *v1273.i8), *v1222.i8);
      v1285 = vrshrn_high_n_s64(vrshrn_n_s64(v1281, 0xEuLL), v1283, 0xEuLL);
      v1286 = vrshrn_high_n_s64(vrshrn_n_s64(v1282, 0xEuLL), v1284, 0xEuLL);
      v1287 = vnegq_s32(v1271);
      v1288 = vnegq_s32(vrshrn_high_n_s64(*v1270.i8, v1279, 0xEuLL));
      v1289 = vtrn1q_s32(v1214, v1274);
      v1290 = vtrn2q_s32(v1214, v1274);
      v1291 = vtrn1q_s32(v1267, v1287);
      v1292 = vtrn2q_s32(v1267, v1287);
      v1293 = vtrn1q_s32(v1225, v1275);
      v1294 = vtrn2q_s32(v1225, v1275);
      v1295 = vtrn1q_s32(v1285, v1288);
      v1296 = vtrn2q_s32(v1285, v1288);
      v1297 = vzip2q_s64(v1289, v1293);
      v1298 = vzip2q_s64(v1292, v1296);
      v1299 = vmlal_s32(vmull_s32(*v1289.i8, *v1616.i8), *v1298.i8, *v1622.i8);
      v1300 = vmlsl_s32(vmull_s32(*v1298.i8, *v1616.i8), *v1289.i8, *v1622.i8);
      v1301 = vmlal_high_s32(vmull_s32(*v1293.i8, *v1616.i8), v1298, v1622);
      v1302 = vmlsl_s32(vmull_high_s32(v1298, v1616), *v1293.i8, *v1622.i8);
      v1303 = vmlal_s32(vmull_s32(*v1297.i8, *v1640.i8), *v1292.i8, *v1628.i8);
      v1304 = vmlsl_s32(vmull_s32(*v1292.i8, *v1640.i8), *v1297.i8, *v1628.i8);
      v1305 = vmlal_high_s32(vmull_s32(*v1296.i8, *v1628.i8), v1297, v1640);
      v1306 = vmlsl_high_s32(vmull_s32(*v1296.i8, *v1640.i8), v1297, v1628);
      v1307 = vzip2q_s64(v1290, v1294);
      v1308 = vmlsl_s32(vmull_s32(*v1307.i8, *v1633.i8), *v1291.i8, *v1647.i8);
      v1309 = vzip2q_s64(v1291, v1295);
      v1310 = vmlal_s32(vmull_s32(*v1291.i8, *v1633.i8), *v1307.i8, *v1647.i8);
      v1311 = vmlal_high_s32(vmull_s32(*v1295.i8, *v1633.i8), v1307, v1647);
      v1312 = vmlsl_s32(vmull_high_s32(v1307, v1633), *v1295.i8, *v1647.i8);
      v1313 = vmlal_s32(vmull_s32(*v1309.i8, *v1197.i8), *v1290.i8, *v1196.i8);
      v1314 = vmlsl_s32(vmull_s32(*v1290.i8, *v1197.i8), *v1309.i8, *v1196.i8);
      v1315 = vmlal_high_s32(vmull_s32(*v1294.i8, *v1196.i8), v1309, v1197);
      v1316 = vmlsl_high_s32(vmull_s32(*v1294.i8, *v1197.i8), v1309, v1196);
      v1317 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1310, v1299), 0xEuLL), vaddq_s64(v1311, v1301), 0xEuLL);
      v1318 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1308, v1300), 0xEuLL), vaddq_s64(v1312, v1302), 0xEuLL);
      v1319 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1313, v1303), 0xEuLL), vaddq_s64(v1315, v1305), 0xEuLL);
      v1320 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1314, v1304), 0xEuLL), vaddq_s64(v1316, v1306), 0xEuLL);
      *v1299.i8 = vrshrn_n_s64(vsubq_s64(v1299, v1310), 0xEuLL);
      *v1310.i8 = vrshrn_n_s64(vsubq_s64(v1301, v1311), 0xEuLL);
      *v1300.i8 = vrshrn_n_s64(vsubq_s64(v1300, v1308), 0xEuLL);
      *v1302.i8 = vrshrn_n_s64(vsubq_s64(v1302, v1312), 0xEuLL);
      *v1312.i8 = vrshrn_n_s64(vsubq_s64(v1303, v1313), 0xEuLL);
      *v1311.i8 = vrshrn_n_s64(vsubq_s64(v1305, v1315), 0xEuLL);
      *v1304.i8 = vrshrn_n_s64(vsubq_s64(v1304, v1314), 0xEuLL);
      *v1313.i8 = vrshrn_n_s64(vsubq_s64(v1306, v1316), 0xEuLL);
      v1321 = vmlal_s32(vmull_s32(*v1300.i8, *v1181.i8), *v1299.i8, *v1180.i8);
      v1322 = vmlsl_s32(vmull_s32(*v1299.i8, *v1181.i8), *v1300.i8, *v1180.i8);
      v1323 = vmlal_s32(vmull_s32(*v1302.i8, *v1181.i8), *v1310.i8, *v1180.i8);
      v1324 = vmlsl_s32(vmull_s32(*v1310.i8, *v1181.i8), *v1302.i8, *v1180.i8);
      v1325 = vmlal_s32(vmull_s32(*v1312.i8, *v1180.i8), *v1304.i8, *v1181.i8);
      v1326 = vmlsl_s32(vmull_s32(*v1304.i8, *v1180.i8), *v1312.i8, *v1181.i8);
      v1327 = vmlal_s32(vmull_s32(*v1311.i8, *v1180.i8), *v1313.i8, *v1181.i8);
      v1328 = vmlsl_s32(vmull_s32(*v1313.i8, *v1180.i8), *v1311.i8, *v1181.i8);
      v1657 = vaddq_s32(v1319, v1317);
      v1329 = vsubq_s32(v1317, v1319);
      v1330 = vaddq_s32(v1318, v1320);
      v1331 = vsubq_s32(v1318, v1320);
      v1332 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1326, v1321), 0xEuLL), vaddq_s64(v1328, v1323), 0xEuLL);
      v1651 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1325, v1322), 0xEuLL), vaddq_s64(v1327, v1324), 0xEuLL);
      v1333 = vnegq_s32(v1604);
      v1334 = vnegq_s32(v1611);
      v1335 = vnegq_s32(v1286);
      v1336 = vnegq_s32(v1269);
      v1337 = vsubq_s64(v1323, v1328);
      *v1328.i8 = vrshrn_n_s64(vsubq_s64(v1321, v1326), 0xEuLL);
      *v1337.i8 = vrshrn_n_s64(v1337, 0xEuLL);
      *v1325.i8 = vrshrn_n_s64(vsubq_s64(v1322, v1325), 0xEuLL);
      *v1324.i8 = vrshrn_n_s64(vsubq_s64(v1324, v1327), 0xEuLL);
      v1338 = vaddq_s32(v1331, v1329);
      v1339 = vsubq_s32(v1329, v1331);
      v1340 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1338.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1338, v1222), 0xEuLL);
      v1341 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1339.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1339, v1222), 0xEuLL);
      v1342 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vadd_s32(*v1325.i8, *v1328.i8), *v1222.i8), 0xEuLL), vmull_s32(vadd_s32(*v1324.i8, *v1337.i8), *v1222.i8), 0xEuLL);
      v1343 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(vsub_s32(*v1328.i8, *v1325.i8), *v1222.i8), 0xEuLL), vmull_s32(vsub_s32(*v1337.i8, *v1324.i8), *v1222.i8), 0xEuLL);
      v1344 = vtrn1q_s32(v1224, v1333);
      v1345 = vtrn2q_s32(v1224, v1333);
      v1346 = vtrn1q_s32(v1280, v1335);
      v1347 = vtrn2q_s32(v1280, v1335);
      v1348 = vtrn1q_s32(v1218, v1334);
      v1349 = vtrn2q_s32(v1218, v1334);
      v1350 = vtrn1q_s32(v1272, v1336);
      v1351 = vtrn2q_s32(v1272, v1336);
      v1352 = vzip2q_s64(v1344, v1348);
      v1353 = vzip2q_s64(v1345, v1349);
      v1354 = vzip2q_s64(v1347, v1351);
      v1355 = vmlsl_s32(vmull_s32(*v1354.i8, *v1616.i8), *v1344.i8, *v1622.i8);
      v1356 = vmlal_s32(vmull_s32(*v1344.i8, *v1616.i8), *v1354.i8, *v1622.i8);
      v1357 = vmlal_high_s32(vmull_s32(*v1348.i8, *v1616.i8), v1354, v1622);
      v1358 = vzip2q_s64(v1346, v1350);
      v1359 = vmlsl_s32(vmull_high_s32(v1354, v1616), *v1348.i8, *v1622.i8);
      v1360 = vmlal_s32(vmull_s32(*v1352.i8, *v1640.i8), *v1347.i8, *v1628.i8);
      v1361 = vmlsl_s32(vmull_s32(*v1347.i8, *v1640.i8), *v1352.i8, *v1628.i8);
      v1362 = vmlal_high_s32(vmull_s32(*v1351.i8, *v1628.i8), v1352, v1640);
      v1363 = vmlsl_high_s32(vmull_s32(*v1351.i8, *v1640.i8), v1352, v1628);
      v1364 = vmlal_s32(vmull_s32(*v1346.i8, *v1633.i8), *v1353.i8, *v1647.i8);
      v1365 = vmlsl_s32(vmull_s32(*v1353.i8, *v1633.i8), *v1346.i8, *v1647.i8);
      v1366 = vmlal_high_s32(vmull_s32(*v1350.i8, *v1633.i8), v1353, v1647);
      v1367 = vmlsl_s32(vmull_high_s32(v1353, v1633), *v1350.i8, *v1647.i8);
      v1368 = vmull_s32(*v1345.i8, *v1197.i8);
      v1369 = vmlal_s32(vmull_s32(*v1358.i8, *v1197.i8), *v1345.i8, *v1196.i8);
      v333 = v1341;
      v1370 = vmlsl_s32(v1368, *v1358.i8, *v1196.i8);
      v1371 = vmlal_high_s32(vmull_s32(*v1349.i8, *v1196.i8), v1358, v1197);
      v1372 = vmlsl_high_s32(vmull_s32(*v1349.i8, *v1197.i8), v1358, v1196);
      v1373 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1364, v1356), 0xEuLL), vaddq_s64(v1366, v1357), 0xEuLL);
      v1374 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1365, v1355), 0xEuLL), vaddq_s64(v1367, v1359), 0xEuLL);
      v1375 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1369, v1360), 0xEuLL), vaddq_s64(v1371, v1362), 0xEuLL);
      v1376 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1370, v1361), 0xEuLL), vaddq_s64(v1372, v1363), 0xEuLL);
      v1377 = vsubq_s64(v1355, v1365);
      v1378 = vsubq_s64(v1359, v1367);
      v325 = v1342;
      v1379 = vsubq_s64(v1361, v1370);
      *v1370.i8 = vrshrn_n_s64(vsubq_s64(v1356, v1364), 0xEuLL);
      *v1366.i8 = vrshrn_n_s64(vsubq_s64(v1357, v1366), 0xEuLL);
      *v1377.i8 = vrshrn_n_s64(v1377, 0xEuLL);
      *v1378.i8 = vrshrn_n_s64(v1378, 0xEuLL);
      *v1359.i8 = vrshrn_n_s64(vsubq_s64(v1360, v1369), 0xEuLL);
      *v1357.i8 = vrshrn_n_s64(vsubq_s64(v1362, v1371), 0xEuLL);
      *v1379.i8 = vrshrn_n_s64(v1379, 0xEuLL);
      *v1363.i8 = vrshrn_n_s64(vsubq_s64(v1363, v1372), 0xEuLL);
      v1380 = vmlal_s32(vmull_s32(*v1377.i8, *v1181.i8), *v1370.i8, *v1180.i8);
      v1381 = vmlsl_s32(vmull_s32(*v1370.i8, *v1181.i8), *v1377.i8, *v1180.i8);
      v1382 = vmlal_s32(vmull_s32(*v1378.i8, *v1181.i8), *v1366.i8, *v1180.i8);
      v1383 = vmlsl_s32(vmull_s32(*v1366.i8, *v1181.i8), *v1378.i8, *v1180.i8);
      v1384 = vmlal_s32(vmull_s32(*v1359.i8, *v1180.i8), *v1379.i8, *v1181.i8);
      v1385 = vmlsl_s32(vmull_s32(*v1379.i8, *v1180.i8), *v1359.i8, *v1181.i8);
      v1386 = vmlal_s32(vmull_s32(*v1357.i8, *v1180.i8), *v1363.i8, *v1181.i8);
      v1387 = vmlsl_s32(vmull_s32(*v1363.i8, *v1180.i8), *v1357.i8, *v1181.i8);
      v344 = vaddq_s32(v1375, v1373);
      v1388 = vaddq_s32(v1374, v1376);
      v1389 = vsubq_s32(v1373, v1375);
      v1390 = vsubq_s32(v1374, v1376);
      v1391 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1385, v1380), 0xEuLL), vaddq_s64(v1387, v1382), 0xEuLL);
      v349 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v1384, v1381), 0xEuLL), vaddq_s64(v1386, v1383), 0xEuLL);
      v1392 = vsubq_s64(v1382, v1387);
      *v1387.i8 = vrshrn_n_s64(vsubq_s64(v1380, v1385), 0xEuLL);
      *v1392.i8 = vrshrn_n_s64(v1392, 0xEuLL);
      *v1384.i8 = vrshrn_n_s64(vsubq_s64(v1381, v1384), 0xEuLL);
      *v1383.i8 = vrshrn_n_s64(vsubq_s64(v1383, v1386), 0xEuLL);
      v1393 = vaddq_s32(v1390, v1389);
      v1394 = vsubq_s32(v1389, v1390);
      v346 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1394.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1394, v1222), 0xEuLL);
      *v1394.i8 = vadd_s32(*v1384.i8, *v1387.i8);
      *v1384.i8 = vsub_s32(*v1387.i8, *v1384.i8);
      *v1387.i8 = vadd_s32(*v1383.i8, *v1392.i8);
      *v1392.i8 = vsub_s32(*v1392.i8, *v1383.i8);
      v1395 = vmull_s32(*v1387.i8, *v1222.i8);
      v1396 = vmull_s32(*v1392.i8, *v1222.i8);
      v348 = vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1394.i8, *v1222.i8), 0xEuLL), v1395, 0xEuLL);
      v302 = vnegq_s32(v1332);
      v299 = vnegq_s32(v1340);
      v301 = vnegq_s32(v1343);
      v303 = vnegq_s32(v1330);
      v350 = vnegq_s32(v1391);
      v345 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1393.i8, *v1222.i8), 0xEuLL), vmull_high_s32(v1393, v1222), 0xEuLL));
      v347 = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vmull_s32(*v1384.i8, *v1222.i8), 0xEuLL), v1396, 0xEuLL));
      v351 = vnegq_s32(v1388);
    }

    else
    {
      v160 = a1[11];
      v161 = vtrn1q_s32(v5, v7);
      v162 = vtrn2q_s32(v5, v7);
      v163 = vtrn1q_s32(v6, v8);
      v164 = vtrn2q_s32(v6, v8);
      v165 = vtrn1q_s32(v10, v12);
      v166 = vtrn2q_s32(v10, v12);
      v167 = vtrn1q_s32(v9, v11);
      v168 = vtrn2q_s32(v9, v11);
      v169.i64[0] = v161.i64[0];
      v169.i64[1] = v165.i64[0];
      v170 = vzip2q_s64(v161, v165);
      v171.i64[0] = v162.i64[0];
      v171.i64[1] = v166.i64[0];
      v172 = vzip2q_s64(v162, v166);
      v173.i64[0] = v163.i64[0];
      v173.i64[1] = v167.i64[0];
      v174 = vzip2q_s64(v163, v167);
      v175.i64[0] = v164.i64[0];
      v175.i64[1] = v168.i64[0];
      v176 = vzip2q_s64(v164, v168);
      if (a5 == 10)
      {
        v177 = vdupq_n_s32(0xC7Cu);
        v178 = vdupq_n_s32(0xFFFFDC72);
        v179 = vdupq_n_s32(0x3537u);
        v180 = vdupq_n_s32(0x3EC5u);
        v181 = vdupq_n_s32(0xFFFFC13B);
        v182 = vmlaq_s32(vmulq_s32(v171, v177), v176, v181);
        v183 = vdupq_n_s32(0x238Eu);
        v184 = vmlaq_s32(vmulq_s32(v172, v179), v175, v183);
        v185 = vmlaq_s32(vmulq_s32(v171, v180), v176, v177);
        v186 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v172, v178), v175, v179), 0xEuLL);
        v187 = vrshrq_n_s32(v185, 0xEuLL);
        v188 = vdupq_n_s32(0x2D41u);
        v189 = vmulq_s32(v169, v188);
        v190 = vdupq_n_s32(0x187Eu);
        v191 = vdupq_n_s32(0x3B21u);
        v192 = vmulq_s32(v170, v190);
        v193 = vmulq_s32(v170, v191);
        v194 = v191;
        v195 = vmulq_s32(v173, v188);
        v196 = vaddq_s32(v195, v189);
        v197 = vsubq_s32(v189, v195);
        v198 = vdupq_n_s32(0xFFFFC4DF);
        v199 = vrshrq_n_s32(vmlaq_s32(v192, v174, v198), 0xEuLL);
        v200 = vrshrq_n_s32(vmlaq_s32(v193, v174, v190), 0xEuLL);
        v201 = vsubq_s32(vrshrq_n_s32(v182, 0xEuLL), v186);
        v202 = vrsraq_n_s32(v186, v182, 0xEuLL);
        v203 = vsubq_s32(v187, vrshrq_n_s32(v184, 0xEuLL));
        v204 = vrsraq_n_s32(v187, v184, 0xEuLL);
        v205 = vsubq_s32(vrshrq_n_s32(v197, 0xEuLL), v199);
        v206 = vrsraq_n_s32(v199, v197, 0xEuLL);
        v207 = vsubq_s32(vrshrq_n_s32(v196, 0xEuLL), v200);
        v208 = vrsraq_n_s32(v200, v196, 0xEuLL);
        v209 = vmulq_s32(v203, v188);
        v210 = vmulq_s32(v201, v188);
        v211 = vsubq_s32(v209, v210);
        v212 = vaddq_s32(v209, v210);
        v213 = vaddq_s32(v208, v204);
        v214 = vaddq_s32(v207, v202);
        v215 = vsubq_s32(v205, vrshrq_n_s32(v211, 0xEuLL));
        v216 = vrsraq_n_s32(v205, v211, 0xEuLL);
        v1636 = vsubq_s32(v206, vrshrq_n_s32(v212, 0xEuLL));
        v1643 = vsubq_s32(v207, v202);
        v217 = vrsraq_n_s32(v206, v212, 0xEuLL);
        v218 = vsubq_s32(v208, v204);
        v219 = vtrn1q_s32(v1656, v1650);
        v220 = vtrn2q_s32(v1656, v1650);
        v221 = vtrn1q_s32(v13, v160);
        v222 = vtrn2q_s32(v13, a1[11]);
        v223 = vtrn1q_s32(v17, v19);
        v224 = vtrn2q_s32(v17, v19);
        v225 = vtrn1q_s32(v16, v18);
        v226 = vtrn2q_s32(v16, a1[15]);
        v227 = vzip2q_s64(v219, v223);
        v219.i64[1] = v223.i64[0];
        v228 = vzip2q_s64(v220, v224);
        v220.i64[1] = v224.i64[0];
        v229 = vzip2q_s64(v221, v225);
        v221.i64[1] = v225.i64[0];
        v230 = vzip2q_s64(v222, v226);
        v222.i64[1] = v226.i64[0];
        v231 = vmulq_s32(v228, v178);
        v232 = vmlaq_s32(vmulq_s32(v220, v177), v230, v181);
        v233 = vmlaq_s32(vmulq_s32(v228, v179), v222, v183);
        v234 = vrshrq_n_s32(vmlaq_s32(v231, v222, v179), 0xEuLL);
        v235 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v220, v180), v230, v177), 0xEuLL);
        v236 = vmulq_s32(v219, v188);
        v237 = v194;
        v238 = vmulq_s32(v221, v188);
        v239 = vaddq_s32(v238, v236);
        v240 = vsubq_s32(v236, v238);
        v241 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v227, v190), v229, v198), 0xEuLL);
        v242 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v227, v194), v229, v190), 0xEuLL);
        v243 = vsubq_s32(vrshrq_n_s32(v232, 0xEuLL), v234);
        v244 = vrsraq_n_s32(v234, v232, 0xEuLL);
        v245 = vsubq_s32(v235, vrshrq_n_s32(v233, 0xEuLL));
        v246 = vrsraq_n_s32(v235, v233, 0xEuLL);
        v247 = vsubq_s32(vrshrq_n_s32(v240, 0xEuLL), v241);
        v248 = vrsraq_n_s32(v241, v240, 0xEuLL);
        v249 = vsubq_s32(vrshrq_n_s32(v239, 0xEuLL), v242);
        v250 = vrsraq_n_s32(v242, v239, 0xEuLL);
        v251 = vmulq_s32(v245, v188);
        v252 = vmulq_s32(v243, v188);
        v253 = vsubq_s32(v251, v252);
        v254 = vaddq_s32(v251, v252);
        v255 = vaddq_s32(v250, v246);
        v256 = vaddq_s32(v249, v244);
        v257 = vsubq_s32(v249, v244);
        v258 = vsubq_s32(v247, vrshrq_n_s32(v253, 0xEuLL));
        v259 = vrsraq_n_s32(v247, v253, 0xEuLL);
        v260 = vsubq_s32(v248, vrshrq_n_s32(v254, 0xEuLL));
        v261 = vrsraq_n_s32(v248, v254, 0xEuLL);
        v262 = vsubq_s32(v250, v246);
        v263 = vtrn1q_s32(v213, v217);
        v264 = vtrn2q_s32(v213, v217);
        v265 = vtrn1q_s32(v255, v261);
        v266 = vtrn2q_s32(v255, v261);
        v267 = vtrn1q_s32(v216, v214);
        v268 = vtrn2q_s32(v216, v214);
        v269 = vtrn1q_s32(v259, v256);
        v270 = vtrn2q_s32(v259, v256);
        v271 = vzip2q_s64(v263, v267);
        v263.i64[1] = v267.i64[0];
        v272 = vzip2q_s64(v264, v268);
        v264.i64[1] = v268.i64[0];
        v273 = vzip2q_s64(v265, v269);
        v265.i64[1] = v269.i64[0];
        v274 = vzip2q_s64(v266, v270);
        v266.i64[1] = v270.i64[0];
        v275 = vmulq_s32(v272, v178);
        v276 = vmlaq_s32(vmulq_s32(v264, v177), v274, v181);
        v277 = vmlaq_s32(vmulq_s32(v272, v179), v266, v183);
        v278 = vrshrq_n_s32(vmlaq_s32(v275, v266, v179), 0xEuLL);
        v279 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v264, v180), v274, v177), 0xEuLL);
        v280 = vmulq_s32(v263, v188);
        v281 = v237;
        v282 = vmulq_s32(v265, v188);
        v283 = vaddq_s32(v282, v280);
        v284 = vsubq_s32(v280, v282);
        v285 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v271, v190), v273, v198), 0xEuLL);
        v286 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v271, v237), v273, v190), 0xEuLL);
        v287 = vsubq_s32(vrshrq_n_s32(v276, 0xEuLL), v278);
        v288 = vrsraq_n_s32(v278, v276, 0xEuLL);
        v289 = vsubq_s32(v279, vrshrq_n_s32(v277, 0xEuLL));
        v290 = vrsraq_n_s32(v279, v277, 0xEuLL);
        v291 = vsubq_s32(vrshrq_n_s32(v284, 0xEuLL), v285);
        v292 = vrsraq_n_s32(v285, v284, 0xEuLL);
        v293 = vsubq_s32(vrshrq_n_s32(v283, 0xEuLL), v286);
        v294 = vrsraq_n_s32(v286, v283, 0xEuLL);
        v295 = vmulq_s32(v289, v188);
        v296 = vmulq_s32(v287, v188);
        v297 = vsubq_s32(v295, v296);
        v298 = vaddq_s32(v295, v296);
        v1657 = vaddq_s32(v294, v290);
        v299 = vaddq_s32(v293, v288);
        v300 = vsubq_s32(v293, v288);
        v301 = vsubq_s32(v291, vrshrq_n_s32(v297, 0xEuLL));
        v1651 = vsubq_s32(v292, vrshrq_n_s32(v298, 0xEuLL));
        v302 = vrsraq_n_s32(v292, v298, 0xEuLL);
        v303 = vsubq_s32(v294, v290);
        v304 = vtrn1q_s32(v1643, v215);
        v305 = vtrn2q_s32(v1643, v215);
        v306 = vtrn1q_s32(v257, v258);
        v307 = vtrn2q_s32(v257, v258);
        v308 = vtrn1q_s32(v1636, v218);
        v309 = vtrn2q_s32(v1636, v218);
        v310 = v260;
        v311 = vtrn1q_s32(v260, v262);
        v312 = vtrn2q_s32(v310, v262);
        v313 = vzip2q_s64(v304, v308);
        v304.i64[1] = v308.i64[0];
        v314 = vzip2q_s64(v305, v309);
        v305.i64[1] = v309.i64[0];
        v315 = vzip2q_s64(v306, v311);
        v306.i64[1] = v311.i64[0];
        v316 = vzip2q_s64(v307, v312);
        v307.i64[1] = v312.i64[0];
        v317 = vmlaq_s32(vmulq_s32(v305, v177), v316, v181);
        v318 = vmlaq_s32(vmulq_s32(v314, v178), v307, v179);
        v319 = vmlaq_s32(vmulq_s32(v314, v179), v307, v183);
        v320 = vrshrq_n_s32(v318, 0xEuLL);
        v321 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v305, v180), v316, v177), 0xEuLL);
        v322 = vmulq_s32(v304, v188);
        v323 = vmulq_s32(v313, v190);
        v324 = vmulq_s32(v313, v281);
        v325 = vrsraq_n_s32(v291, v297, 0xEuLL);
        v326 = vmulq_s32(v306, v188);
        v327 = vaddq_s32(v326, v322);
        v328 = vsubq_s32(v322, v326);
        v329 = vrshrq_n_s32(vmlaq_s32(v323, v315, v198), 0xEuLL);
        v330 = vrshrq_n_s32(vmlaq_s32(v324, v315, v190), 0xEuLL);
        v331 = vsubq_s32(vrshrq_n_s32(v317, 0xEuLL), v320);
        v332 = vrsraq_n_s32(v320, v317, 0xEuLL);
        v333 = v300;
        v334 = vsubq_s32(v321, vrshrq_n_s32(v319, 0xEuLL));
        v335 = vrsraq_n_s32(v321, v319, 0xEuLL);
        v336 = vsubq_s32(vrshrq_n_s32(v328, 0xEuLL), v329);
        v337 = vrsraq_n_s32(v329, v328, 0xEuLL);
        v338 = vsubq_s32(vrshrq_n_s32(v327, 0xEuLL), v330);
        v339 = vrsraq_n_s32(v330, v327, 0xEuLL);
        v340 = vmulq_s32(v334, v188);
        v341 = vmulq_s32(v331, v188);
        v342 = vsubq_s32(v340, v341);
        v343 = vaddq_s32(v340, v341);
        v344 = vaddq_s32(v339, v335);
        v345 = vaddq_s32(v338, v332);
        v346 = vsubq_s32(v338, v332);
        v347 = vsubq_s32(v336, vrshrq_n_s32(v342, 0xEuLL));
        v348 = vrsraq_n_s32(v336, v342, 0xEuLL);
        v349 = vsubq_s32(v337, vrshrq_n_s32(v343, 0xEuLL));
        v350 = vrsraq_n_s32(v337, v343, 0xEuLL);
        v351 = vsubq_s32(v339, v335);
      }

      else
      {
        v1397 = vdupq_n_s32(0xC7Cu);
        v1398 = vdupq_n_s32(0xFFFFDC72);
        v1399 = vdupq_n_s32(0x3537u);
        v1400 = vdupq_n_s32(0x3EC5u);
        v1401 = vmlsl_s32(vmull_s32(*v162.i8, *v1397.i8), *v176.i8, *v1400.i8);
        v1402 = vmlsl_high_s32(vmull_high_s32(v171, v1397), v176, v1400);
        v1403 = vmlal_s32(vmull_s32(*v164.i8, *v1399.i8), *v172.i8, *v1398.i8);
        v1404 = vmlal_high_s32(vmull_high_s32(v175, v1399), v172, v1398);
        v1405 = vmlsl_s32(vmull_s32(*v172.i8, *v1399.i8), *v164.i8, *v1398.i8);
        v1406 = vmlsl_high_s32(vmull_high_s32(v172, v1399), v175, v1398);
        v1407 = vmlal_s32(vmull_s32(*v176.i8, *v1397.i8), *v162.i8, *v1400.i8);
        v1408 = vmlal_high_s32(vmull_high_s32(v176, v1397), v171, v1400);
        v1409 = vrshrn_n_s64(v1401, 0xEuLL);
        v1410 = vrshrn_n_s64(v1403, 0xEuLL);
        v1411 = vdupq_n_s32(0x2D41u);
        v1412 = vmull_s32(*v161.i8, *v1411.i8);
        v1413 = vdupq_n_s32(0x187Eu);
        v1414 = a1[9];
        v1415 = a1[14];
        v1416 = vmlal_s32(vmull_s32(*v163.i8, *v1411.i8), *v161.i8, *v1411.i8);
        v1417 = vmlal_high_s32(vmull_high_s32(v173, v1411), v169, v1411);
        v1418 = vdupq_n_s32(0x3B21u);
        v1419 = vmlsl_s32(v1412, *v163.i8, *v1411.i8);
        v1420 = vmlsl_high_s32(vmull_high_s32(v169, v1411), v173, v1411);
        v1421 = vmlsl_s32(vmull_s32(*v170.i8, *v1413.i8), *v174.i8, *v1418.i8);
        v1422 = vmlsl_high_s32(vmull_high_s32(v170, v1413), v174, v1418);
        v1423 = vmlal_s32(vmull_s32(*v174.i8, *v1413.i8), *v170.i8, *v1418.i8);
        v1424 = vmlal_high_s32(vmull_high_s32(v174, v1413), v170, v1418);
        v1425 = vsub_s32(v1409, v1410);
        v1426 = vrshrn_high_n_s64(v1409, v1402, 0xEuLL);
        v1427 = vrshrn_n_s64(v1402, 0xEuLL);
        v1428 = vrshrn_high_n_s64(v1410, v1404, 0xEuLL);
        *v1402.i8 = vrshrn_n_s64(v1404, 0xEuLL);
        *v1405.i8 = vrshrn_n_s64(v1405, 0xEuLL);
        *v1404.i8 = vrshrn_n_s64(v1407, 0xEuLL);
        v1429 = vrshrn_high_n_s64(vrshrn_n_s64(v1416, 0xEuLL), v1417, 0xEuLL);
        *v1417.i8 = vsub_s32(*v1404.i8, *v1405.i8);
        v1430 = vrshrn_high_n_s64(vrshrn_n_s64(v1419, 0xEuLL), v1420, 0xEuLL);
        v1431 = vrshrn_high_n_s64(vrshrn_n_s64(v1421, 0xEuLL), v1422, 0xEuLL);
        v1432 = vrshrn_high_n_s64(vrshrn_n_s64(v1423, 0xEuLL), v1424, 0xEuLL);
        v1433 = vaddq_s32(v1428, v1426);
        v1434 = vaddq_s32(vrshrn_high_n_s64(*v1404.i8, v1408, 0xEuLL), vrshrn_high_n_s64(*v1405.i8, v1406, 0xEuLL));
        v1435 = vaddq_s32(v1432, v1429);
        v1436 = vaddq_s32(v1431, v1430);
        v1437 = vsubq_s32(v1430, v1431);
        v1438 = vsubq_s32(v1429, v1432);
        *v1406.i8 = vsub_s32(vrshrn_n_s64(v1408, 0xEuLL), vrshrn_n_s64(v1406, 0xEuLL));
        v1439 = vmull_s32(v1425, *v1411.i8);
        v1440 = vmlsl_s32(vmull_s32(*v1417.i8, *v1411.i8), v1425, *v1411.i8);
        v1441 = vsub_s32(v1427, *v1402.i8);
        v1442 = vmlal_s32(v1439, *v1417.i8, *v1411.i8);
        v1443 = vrshrn_high_n_s64(vrshrn_n_s64(v1440, 0xEuLL), vmlsl_s32(vmull_s32(*v1406.i8, *v1411.i8), v1441, *v1411.i8), 0xEuLL);
        v1444 = vrshrn_high_n_s64(vrshrn_n_s64(v1442, 0xEuLL), vmlal_s32(vmull_s32(v1441, *v1411.i8), *v1406.i8, *v1411.i8), 0xEuLL);
        v1617 = vaddq_s32(v1435, v1434);
        v1623 = vaddq_s32(v1444, v1436);
        v1445 = vaddq_s32(v1443, v1437);
        v1605 = vaddq_s32(v1438, v1433);
        v1446 = vsubq_s32(v1437, v1443);
        v1648 = vsubq_s32(v1436, v1444);
        v1634 = vsubq_s32(v1438, v1433);
        v1641 = vsubq_s32(v1435, v1434);
        v1447 = vtrn1q_s32(v1656, v1650);
        v1448 = vtrn2q_s32(v1656, v1650);
        v1449 = vtrn1q_s32(v1414, v160);
        v1450 = vtrn2q_s32(v1414, v160);
        v1451 = vtrn1q_s32(v17, v1415);
        v1452 = vtrn2q_s32(v17, v1415);
        v1453 = vtrn1q_s32(v16, v18);
        v1454 = vtrn2q_s32(v16, v18);
        v1455 = vzip2q_s64(v1447, v1451);
        v1456 = vzip2q_s64(v1448, v1452);
        v1457 = vzip2q_s64(v1449, v1453);
        v1458 = vzip2q_s64(v1450, v1454);
        v1459 = vmlal_s32(vmull_s32(*v1450.i8, *v1399.i8), *v1456.i8, *v1398.i8);
        v1460 = vmlal_high_s32(vmull_s32(*v1454.i8, *v1399.i8), v1456, v1398);
        v1461 = vmlsl_high_s32(vmull_s32(*v1452.i8, *v1397.i8), v1458, v1400);
        v1462 = vmlsl_s32(vmull_s32(*v1456.i8, *v1399.i8), *v1450.i8, *v1398.i8);
        v1463 = vmlsl_s32(vmull_high_s32(v1456, v1399), *v1454.i8, *v1398.i8);
        v1464 = vmlal_s32(vmull_s32(*v1458.i8, *v1397.i8), *v1448.i8, *v1400.i8);
        v1465 = vmlal_high_s32(vmull_s32(*v1452.i8, *v1400.i8), v1458, v1397);
        *v1454.i8 = vrshrn_n_s64(vmlsl_s32(vmull_s32(*v1448.i8, *v1397.i8), *v1458.i8, *v1400.i8), 0xEuLL);
        *v1448.i8 = vrshrn_n_s64(v1459, 0xEuLL);
        v1466 = vmull_s32(*v1447.i8, *v1411.i8);
        v1467 = vmlal_s32(vmull_s32(*v1449.i8, *v1411.i8), *v1447.i8, *v1411.i8);
        v1468 = vmlal_s32(vmull_s32(*v1453.i8, *v1411.i8), *v1451.i8, *v1411.i8);
        v1469 = vmlsl_s32(v1466, *v1449.i8, *v1411.i8);
        v1470 = vmlsl_s32(vmull_s32(*v1451.i8, *v1411.i8), *v1453.i8, *v1411.i8);
        v1471 = vmlsl_s32(vmull_s32(*v1455.i8, *v1413.i8), *v1457.i8, *v1418.i8);
        v1472 = vmlsl_high_s32(vmull_high_s32(v1455, v1413), v1457, v1418);
        v1473 = vmlal_s32(vmull_s32(*v1457.i8, *v1413.i8), *v1455.i8, *v1418.i8);
        v1474 = vmlal_high_s32(vmull_high_s32(v1457, v1413), v1455, v1418);
        *v1455.i8 = vsub_s32(*v1454.i8, *v1448.i8);
        *v1462.i8 = vrshrn_n_s64(v1462, 0xEuLL);
        *v1464.i8 = vrshrn_n_s64(v1464, 0xEuLL);
        v1475 = vrshrn_high_n_s64(vrshrn_n_s64(v1467, 0xEuLL), v1468, 0xEuLL);
        *v1468.i8 = vsub_s32(*v1464.i8, *v1462.i8);
        v1476 = vrshrn_high_n_s64(vrshrn_n_s64(v1469, 0xEuLL), v1470, 0xEuLL);
        v1477 = vrshrn_high_n_s64(vrshrn_n_s64(v1471, 0xEuLL), v1472, 0xEuLL);
        v1478 = vrshrn_high_n_s64(vrshrn_n_s64(v1473, 0xEuLL), v1474, 0xEuLL);
        v1479 = vaddq_s32(vrshrn_high_n_s64(*v1448.i8, v1460, 0xEuLL), vrshrn_high_n_s64(*v1454.i8, v1461, 0xEuLL));
        v1480 = vaddq_s32(vrshrn_high_n_s64(*v1464.i8, v1465, 0xEuLL), vrshrn_high_n_s64(*v1462.i8, v1463, 0xEuLL));
        v1481 = vaddq_s32(v1478, v1475);
        v1482 = vaddq_s32(v1477, v1476);
        v1483 = vsubq_s32(v1476, v1477);
        v1484 = vsubq_s32(v1475, v1478);
        *v1465.i8 = vsub_s32(vrshrn_n_s64(v1465, 0xEuLL), vrshrn_n_s64(v1463, 0xEuLL));
        *v1461.i8 = vsub_s32(vrshrn_n_s64(v1461, 0xEuLL), vrshrn_n_s64(v1460, 0xEuLL));
        v1485 = vmlal_s32(vmull_s32(*v1461.i8, *v1411.i8), *v1465.i8, *v1411.i8);
        v1486 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(vmull_s32(*v1468.i8, *v1411.i8), *v1455.i8, *v1411.i8), 0xEuLL), vmlsl_s32(vmull_s32(*v1465.i8, *v1411.i8), *v1461.i8, *v1411.i8), 0xEuLL);
        v1487 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(vmull_s32(*v1455.i8, *v1411.i8), *v1468.i8, *v1411.i8), 0xEuLL), v1485, 0xEuLL);
        v1488 = vaddq_s32(v1481, v1480);
        v1489 = vaddq_s32(v1487, v1482);
        v1490 = vaddq_s32(v1486, v1483);
        v1491 = vaddq_s32(v1484, v1479);
        v1492 = vsubq_s32(v1484, v1479);
        v1493 = vsubq_s32(v1483, v1486);
        v1494 = vsubq_s32(v1482, v1487);
        v1495 = vsubq_s32(v1481, v1480);
        v1496 = vtrn2q_s32(v1617, v1623);
        v1497 = vtrn2q_s32(v1488, v1489);
        v1498 = vtrn2q_s32(v1445, v1605);
        v1499 = v1445;
        v1500 = vtrn2q_s32(v1490, v1491);
        v1501 = vzip2q_s64(v1496, v1498);
        v1502 = vzip2q_s64(v1497, v1500);
        v1503 = vmlal_s32(vmull_s32(*v1497.i8, *v1399.i8), *v1501.i8, *v1398.i8);
        v1504 = vmlsl_s32(vmull_s32(*v1501.i8, *v1399.i8), *v1497.i8, *v1398.i8);
        v1612 = vmlal_high_s32(vmull_s32(*v1500.i8, *v1399.i8), v1501, v1398);
        v1655 = vmlsl_s32(vmull_high_s32(v1501, v1399), *v1500.i8, *v1398.i8);
        v1505 = vmlal_s32(vmull_s32(*v1502.i8, *v1397.i8), *v1496.i8, *v1400.i8);
        v1506 = vmlsl_s32(vmull_s32(*v1496.i8, *v1397.i8), *v1502.i8, *v1400.i8);
        v1629 = vmlsl_high_s32(vmull_s32(*v1498.i8, *v1397.i8), v1502, v1400);
        v1660 = vmlal_high_s32(vmull_s32(*v1498.i8, *v1400.i8), v1502, v1397);
        v1507 = v1446;
        v1508 = vtrn2q_s32(v1634, v1446);
        v1509 = vtrn2q_s32(v1492, v1493);
        v1510 = vtrn2q_s32(v1648, v1641);
        v1511 = vzip2q_s64(v1508, v1510);
        v1600 = vmlal_s32(vmull_s32(*v1509.i8, *v1399.i8), *v1511.i8, *v1398.i8);
        v1512 = vtrn2q_s32(v1494, v1495);
        v1593 = vmlal_high_s32(vmull_s32(*v1512.i8, *v1399.i8), v1511, v1398);
        v1595 = vmlsl_s32(vmull_s32(*v1511.i8, *v1399.i8), *v1509.i8, *v1398.i8);
        v1513 = vmlsl_s32(vmull_high_s32(v1511, v1399), *v1512.i8, *v1398.i8);
        v1514 = vzip2q_s64(v1509, v1512);
        v1515 = vmlal_s32(vmull_s32(*v1514.i8, *v1397.i8), *v1508.i8, *v1400.i8);
        v1516 = vmlsl_s32(vmull_s32(*v1508.i8, *v1397.i8), *v1514.i8, *v1400.i8);
        v1517 = vmlsl_high_s32(vmull_s32(*v1510.i8, *v1397.i8), v1514, v1400);
        v1589 = vmlal_high_s32(vmull_s32(*v1510.i8, *v1400.i8), v1514, v1397);
        v1518 = vtrn1q_s32(v1617, v1623);
        v1519 = vtrn1q_s32(v1488, v1489);
        v1520 = vtrn1q_s32(v1499, v1605);
        v1521 = vtrn1q_s32(v1490, v1491);
        v1522 = vzip2q_s64(v1518, v1520);
        v1523 = vzip2q_s64(v1519, v1521);
        v1624 = vmlsl_s32(vmull_s32(*v1522.i8, *v1413.i8), *v1523.i8, *v1418.i8);
        v1618 = vmlsl_high_s32(vmull_high_s32(v1522, v1413), v1523, v1418);
        v1606 = vmlal_s32(vmull_s32(*v1523.i8, *v1413.i8), *v1522.i8, *v1418.i8);
        v1597 = vmlal_high_s32(vmull_high_s32(v1523, v1413), v1522, v1418);
        v1524 = vtrn1q_s32(v1634, v1507);
        v1525 = vtrn1q_s32(v1492, v1493);
        v1526 = vtrn1q_s32(v1648, v1641);
        v1527 = vtrn1q_s32(v1494, v1495);
        v1528 = vzip2q_s64(v1524, v1526);
        v1529 = vzip2q_s64(v1525, v1527);
        v1649 = vmlsl_s32(vmull_s32(*v1528.i8, *v1413.i8), *v1529.i8, *v1418.i8);
        v1642 = vmlsl_high_s32(vmull_high_s32(v1528, v1413), v1529, v1418);
        v1635 = vmlal_s32(vmull_s32(*v1529.i8, *v1413.i8), *v1528.i8, *v1418.i8);
        v1591 = vmlal_high_s32(vmull_high_s32(v1529, v1413), v1528, v1418);
        v1530 = vmlal_s32(vmull_s32(*v1519.i8, *v1411.i8), *v1518.i8, *v1411.i8);
        v1531 = vmlsl_s32(vmull_s32(*v1518.i8, *v1411.i8), *v1519.i8, *v1411.i8);
        v1532 = vmlal_s32(vmull_s32(*v1521.i8, *v1411.i8), *v1520.i8, *v1411.i8);
        v1533 = vmlsl_s32(vmull_s32(*v1520.i8, *v1411.i8), *v1521.i8, *v1411.i8);
        *v1418.i8 = vsub_s32(vrshrn_n_s64(v1660, 0xEuLL), vrshrn_n_s64(v1655, 0xEuLL));
        *v1528.i8 = vsub_s32(vrshrn_n_s64(v1629, 0xEuLL), vrshrn_n_s64(v1612, 0xEuLL));
        *v1518.i8 = vrshrn_n_s64(v1506, 0xEuLL);
        *v1519.i8 = vrshrn_n_s64(v1503, 0xEuLL);
        *v1400.i8 = vrshrn_n_s64(v1504, 0xEuLL);
        *v1512.i8 = vrshrn_n_s64(v1505, 0xEuLL);
        *v1503.i8 = vsub_s32(*v1512.i8, *v1400.i8);
        *v1506.i8 = vsub_s32(*v1518.i8, *v1519.i8);
        v1534 = vmlsl_s32(vmull_s32(*v1503.i8, *v1411.i8), *v1506.i8, *v1411.i8);
        v1535 = vmlal_s32(vmull_s32(*v1506.i8, *v1411.i8), *v1503.i8, *v1411.i8);
        v1536 = vmlsl_s32(vmull_s32(*v1418.i8, *v1411.i8), *v1528.i8, *v1411.i8);
        v1537 = vmlal_s32(vmull_s32(*v1528.i8, *v1411.i8), *v1418.i8, *v1411.i8);
        v1538 = vmlal_s32(vmull_s32(*v1525.i8, *v1411.i8), *v1524.i8, *v1411.i8);
        v1539 = vmlsl_s32(vmull_s32(*v1524.i8, *v1411.i8), *v1525.i8, *v1411.i8);
        v1540 = vmlal_s32(vmull_s32(*v1527.i8, *v1411.i8), *v1526.i8, *v1411.i8);
        v1541 = vmlsl_s32(vmull_s32(*v1526.i8, *v1411.i8), *v1527.i8, *v1411.i8);
        *v1527.i8 = vsub_s32(vrshrn_n_s64(v1589, 0xEuLL), vrshrn_n_s64(v1513, 0xEuLL));
        v1542 = v1517;
        *v1517.i8 = vsub_s32(vrshrn_n_s64(v1517, 0xEuLL), vrshrn_n_s64(v1593, 0xEuLL));
        *v1528.i8 = vrshrn_n_s64(v1516, 0xEuLL);
        *v1520.i8 = vrshrn_n_s64(v1600, 0xEuLL);
        *v1413.i8 = vrshrn_n_s64(v1595, 0xEuLL);
        *v1397.i8 = vrshrn_n_s64(v1515, 0xEuLL);
        *v1515.i8 = vsub_s32(*v1397.i8, *v1413.i8);
        *v1525.i8 = vsub_s32(*v1528.i8, *v1520.i8);
        v1543 = vmlsl_s32(vmull_s32(*v1515.i8, *v1411.i8), *v1525.i8, *v1411.i8);
        v1544 = vmlal_s32(vmull_s32(*v1525.i8, *v1411.i8), *v1515.i8, *v1411.i8);
        v1545 = vmlsl_s32(vmull_s32(*v1527.i8, *v1411.i8), *v1517.i8, *v1411.i8);
        v1546 = vmlal_s32(vmull_s32(*v1517.i8, *v1411.i8), *v1527.i8, *v1411.i8);
        v1547 = vrshrn_high_n_s64(vrshrn_n_s64(v1530, 0xEuLL), v1532, 0xEuLL);
        v1548 = vrshrn_high_n_s64(vrshrn_n_s64(v1531, 0xEuLL), v1533, 0xEuLL);
        v1549 = vrshrn_high_n_s64(vrshrn_n_s64(v1624, 0xEuLL), v1618, 0xEuLL);
        v1550 = vrshrn_high_n_s64(vrshrn_n_s64(v1606, 0xEuLL), v1597, 0xEuLL);
        v1551 = vaddq_s32(vrshrn_high_n_s64(*v1519.i8, v1612, 0xEuLL), vrshrn_high_n_s64(*v1518.i8, v1629, 0xEuLL));
        v1552 = vaddq_s32(vrshrn_high_n_s64(*v1512.i8, v1660, 0xEuLL), vrshrn_high_n_s64(*v1400.i8, v1655, 0xEuLL));
        v1553 = vaddq_s32(v1549, v1548);
        v1554 = vsubq_s32(v1548, v1549);
        v1555 = vaddq_s32(v1550, v1547);
        v1556 = vsubq_s32(v1547, v1550);
        v1557 = vrshrn_high_n_s64(vrshrn_n_s64(v1534, 0xEuLL), v1536, 0xEuLL);
        v1558 = vrshrn_high_n_s64(vrshrn_n_s64(v1535, 0xEuLL), v1537, 0xEuLL);
        v299 = vaddq_s32(v1556, v1551);
        v301 = vsubq_s32(v1554, v1557);
        v302 = vaddq_s32(v1558, v1553);
        v1651 = vsubq_s32(v1553, v1558);
        v1657 = vaddq_s32(v1555, v1552);
        v303 = vsubq_s32(v1555, v1552);
        v325 = vaddq_s32(v1557, v1554);
        v1559 = vrshrn_high_n_s64(*v1528.i8, v1542, 0xEuLL);
        v1560 = vrshrn_high_n_s64(vrshrn_n_s64(v1538, 0xEuLL), v1540, 0xEuLL);
        v1561 = vrshrn_high_n_s64(vrshrn_n_s64(v1539, 0xEuLL), v1541, 0xEuLL);
        v333 = vsubq_s32(v1556, v1551);
        v1562 = vrshrn_high_n_s64(vrshrn_n_s64(v1649, 0xEuLL), v1642, 0xEuLL);
        v1563 = vrshrn_high_n_s64(vrshrn_n_s64(v1635, 0xEuLL), v1591, 0xEuLL);
        v1564 = vaddq_s32(vrshrn_high_n_s64(*v1520.i8, v1593, 0xEuLL), v1559);
        v1565 = vaddq_s32(vrshrn_high_n_s64(*v1397.i8, v1589, 0xEuLL), vrshrn_high_n_s64(*v1413.i8, v1513, 0xEuLL));
        v1566 = vaddq_s32(v1562, v1561);
        v1567 = vsubq_s32(v1561, v1562);
        v1568 = vaddq_s32(v1563, v1560);
        v1569 = vsubq_s32(v1560, v1563);
        v1570 = vrshrn_high_n_s64(vrshrn_n_s64(v1543, 0xEuLL), v1545, 0xEuLL);
        v1571 = vrshrn_high_n_s64(vrshrn_n_s64(v1544, 0xEuLL), v1546, 0xEuLL);
        v345 = vaddq_s32(v1569, v1564);
        v346 = vsubq_s32(v1569, v1564);
        v348 = vaddq_s32(v1570, v1567);
        v347 = vsubq_s32(v1567, v1570);
        v350 = vaddq_s32(v1571, v1566);
        v349 = vsubq_s32(v1566, v1571);
        v344 = vaddq_s32(v1568, v1565);
        v351 = vsubq_s32(v1568, v1565);
      }
    }
  }

  v1154 = vrshrn_high_n_s32(vrshrn_n_s32(v1657, 5uLL), v344, 5uLL);
  v1155 = vrshrn_high_n_s32(vrshrn_n_s32(v302, 5uLL), v350, 5uLL);
  v1156 = vrshrn_high_n_s32(vrshrn_n_s32(v325, 5uLL), v348, 5uLL);
  v1157 = vrshrn_high_n_s32(vrshrn_n_s32(v299, 5uLL), v345, 5uLL);
  v1158 = vrshrn_high_n_s32(vrshrn_n_s32(v333, 5uLL), v346, 5uLL);
  v1159 = vrshrn_high_n_s32(vrshrn_n_s32(v301, 5uLL), v347, 5uLL);
  v1160 = vrshrn_high_n_s32(vrshrn_n_s32(v1651, 5uLL), v349, 5uLL);
  v1161 = vrshrn_high_n_s32(vrshrn_n_s32(v303, 5uLL), v351, 5uLL);
LABEL_21:
  v1572 = vdupq_n_s16(~(-1 << a5));
  v1573 = 2 * a3;
  v1574 = (a2 + v1573 + v1573);
  v1575 = (v1574 + v1573 + v1573);
  v1576 = (v1575 + v1573 + v1573);
  v1577 = vqaddq_s16(v1161, *(v1576 + v1573));
  v1578 = vminq_s16(vqaddq_s16(v1156, *v1574), v1572);
  v1579 = vminq_s16(vqaddq_s16(v1157, *(v1574 + v1573)), v1572);
  v1580 = vminq_s16(vqaddq_s16(v1158, *v1575), v1572);
  v1581 = vminq_s16(vqaddq_s16(v1159, *(v1575 + v1573)), v1572);
  v1582 = vminq_s16(vqaddq_s16(v1160, *v1576), v1572);
  v1583 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v1155, *(a2 + v1573)), v1572), 0);
  *a2 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v1154, *a2), v1572), 0);
  *(a2 + v1573) = v1583;
  *v1574 = vqshluq_n_s16(v1578, 0);
  *(v1574 + v1573) = vqshluq_n_s16(v1579, 0);
  *v1575 = vqshluq_n_s16(v1580, 0);
  *(v1575 + v1573) = vqshluq_n_s16(v1581, 0);
  result = vqshluq_n_s16(vminq_s16(v1577, v1572), 0);
  *v1576 = vqshluq_n_s16(v1582, 0);
  *(v1576 + v1573) = result;
  return result;
}

int8x8_t vp9_idct4x4_add(int16x8_t *a1, __int32 *a2, int a3, int a4)
{
  if (a4 >= 2)
  {
    return vpx_idct4x4_16_add_neon(a1, a2, a3);
  }

  v5 = vdupq_n_s16((((46340 * ((46340 * a1->i16[0] + 0x8000) >> 16) + 0x8000) >> 16) + 8) >> 4);
  v6.i32[0] = *a2;
  v7 = (a2 + a3);
  v6.i32[1] = *v7;
  v8 = (v7 + a3);
  v9 = vqmovun_s16(vaddw_u8(v5, v6));
  *a2 = v9.i32[0];
  *(a2 + a3) = v9.i32[1];
  v10 = (v8 + a3);
  v9.i32[0] = *v8;
  v9.i32[1] = *v10;
  result = vqmovun_s16(vaddw_u8(v5, v9));
  *v8 = result.i32[0];
  *v10 = result.i32[1];
  return result;
}

int *vp9_iwht4x4_add(int *a1, unsigned __int8 *a2, int a3, int a4)
{
  if (a4 < 2)
  {
    return vpx_iwht4x4_1_add_c(a1, a2, a3);
  }

  else
  {
    return vpx_iwht4x4_16_add_c(a1, a2, a3);
  }
}

int8x8_t vp9_idct8x8_add(int32x4_t *a1, uint8x8_t *a2, int a3, int a4)
{
  if (a4 == 1)
  {
    v4 = ((46340 * ((46340 * a1->i16[0] + 0x8000) >> 16) + 0x8000) >> 16) + 16;
    if ((v4 & 0x100000) != 0)
    {
      v13 = vqmovun_s16(vdupq_n_s16(-(v4 >> 5)));
      *a2 = vqsub_u8(*a2, v13);
      v14 = (a2 + a3);
      *v14 = vqsub_u8(*v14, v13);
      v15 = (v14 + a3);
      *v15 = vqsub_u8(*v15, v13);
      v16 = (v15 + a3);
      *v16 = vqsub_u8(*v16, v13);
      v17 = (v16 + a3);
      *v17 = vqsub_u8(*v17, v13);
      v18 = (v17 + a3);
      *v18 = vqsub_u8(*v18, v13);
      v11 = (v18 + a3);
      *v11 = vqsub_u8(*v11, v13);
      result = vqsub_u8(*(v11 + a3), v13);
    }

    else
    {
      v5 = vqmovun_s16(vdupq_n_s16(v4 >> 5));
      *a2 = vqadd_u8(*a2, v5);
      v6 = (a2 + a3);
      *v6 = vqadd_u8(*v6, v5);
      v7 = (v6 + a3);
      *v7 = vqadd_u8(*v7, v5);
      v8 = (v7 + a3);
      *v8 = vqadd_u8(*v8, v5);
      v9 = (v8 + a3);
      *v9 = vqadd_u8(*v9, v5);
      v10 = (v9 + a3);
      *v10 = vqadd_u8(*v10, v5);
      v11 = (v10 + a3);
      *v11 = vqadd_u8(*v11, v5);
      result = vqadd_u8(*(v11 + a3), v5);
    }

    *(v11 + a3) = result;
  }

  else if (a4 > 12)
  {
    return vpx_idct8x8_64_add_neon(a1, a2, a3);
  }

  else
  {
    return vpx_idct8x8_12_add_neon(a1, a2, a3);
  }

  return result;
}

void vp9_idct16x16_add(int16x8_t *a1, uint64_t a2, int a3, int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {

    vpx_idct16x16_1_add_neon(a1->i16, a2, a3);
  }

  else if (a4 > 10)
  {
    if (a4 > 0x26)
    {
      vpx_idct16x16_256_add_half1d(a1, &v7, a2, a3, 0);
      vpx_idct16x16_256_add_half1d(a1 + 32, v8, a2, a3, 0);
      vpx_idct16x16_256_add_half1d(&v7, 0, a2, a3, 0);
      vpx_idct16x16_256_add_half1d(v9, 0, (a2 + 8), a3, 0);
    }

    else
    {
      vpx_idct16x16_38_add_half1d(a1, &v7, a2, a3, 0);
      vpx_idct16x16_38_add_half1d(&v7, 0, a2, a3, 0);
      vpx_idct16x16_38_add_half1d(v9, 0, (a2 + 8), a3, 0);
    }
  }

  else
  {

    vpx_idct16x16_10_add_neon(a1, a2, a3);
  }
}

void vp9_idct32x32_add(int16x8_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {

    vpx_idct32x32_1_add_neon(a1->i16, a2, a3);
  }

  else if (a4 > 34)
  {
    if (a4 > 0x87)
    {

      vpx_idct32_32_neon(a1, a2, a3);
    }

    else
    {
      v8 = a3;
      vpx_idct32_12_neon(a1, &v9);
      vpx_idct32_12_neon(a1 + 64, v10);
      vpx_idct32_16_neon(&v9, a2, v8, 0);
      vpx_idct32_16_neon(v12, (a2 + 8), v8, 0);
      vpx_idct32_16_neon(v14, (a2 + 16), v8, 0);
      vpx_idct32_16_neon(v15, (a2 + 24), v8, 0);
    }
  }

  else
  {
    v5 = a3;
    vpx_idct32_6_neon(a1, &v9);
    vpx_idct32_8_neon(&v9, a2, v5, 0);
    vpx_idct32_8_neon(v11, (a2 + 8), v5, 0);
    vpx_idct32_8_neon(v12, (a2 + 16), v5, 0);
    vpx_idct32_8_neon(v13, (a2 + 24), v5, 0);
  }
}

void vp9_iht16x16_add(int a1, int16x8_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = &vp9_iht16x16_256_add_neon_IHT_16[2 * a1];
    v7 = *v6;
    v8 = v6[1];
    (v8)(a2, &v15, a3, a4, 0);
    (v8)(&a2[32], v16, a3, a4, 0);
    (v7)(&v15, 0, a3, a4, 0);
    (v7)(v17, 0, a3 + 8, a4, 0);
  }

  else if (a5 == 1)
  {

    vpx_idct16x16_1_add_neon(a2->i16, a3, a4);
  }

  else if (a5 > 10)
  {
    if (a5 > 0x26)
    {
      v14 = a4;
      vpx_idct16x16_256_add_half1d(a2, &v15, a3, a4, 0);
      vpx_idct16x16_256_add_half1d(a2 + 32, v16, a3, v14, 0);
      vpx_idct16x16_256_add_half1d(&v15, 0, a3, v14, 0);
      vpx_idct16x16_256_add_half1d(v17, 0, (a3 + 8), v14, 0);
    }

    else
    {
      v12 = a4;
      vpx_idct16x16_38_add_half1d(a2, &v15, a3, a4, 0);
      vpx_idct16x16_38_add_half1d(&v15, 0, a3, v12, 0);
      vpx_idct16x16_38_add_half1d(v17, 0, (a3 + 8), v12, 0);
    }
  }

  else
  {

    vpx_idct16x16_10_add_neon(a2, a3, a4);
  }
}

double vp9_highbd_idct4x4_add(int16x8_t *a1, uint64_t *a2, int a3, int a4, char a5)
{
  if (a4 < 2)
  {
    v6 = vdupq_n_s16(~(-1 << a5));
    v7 = vdupq_n_s16((((11585 * ((3036938240 * a1->i32[0] + 0x80000000) >> 32) + 0x2000) >> 14) + 8) >> 4);
    v8.i64[0] = *a2;
    v9 = 2 * a3;
    v8.i64[1] = *(a2 + v9);
    v10 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v7, v8), v6), 0);
    *a2 = v10.i64[0];
    *(a2 + v9) = vextq_s8(v10, v10, 8uLL).u64[0];
    v11 = (a2 + v9 + v9);
    v10.i64[0] = *v11;
    v10.i64[1] = *(v11 + v9);
    v12 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v7, v10), v6), 0);
    *v11 = v12.i64[0];
    *&result = vextq_s8(v12, v12, 8uLL).u64[0];
    *(v11 + v9) = result;
  }

  else
  {
    *&result = vpx_highbd_idct4x4_16_add_neon(a1, a2, a3, a5).u64[0];
  }

  return result;
}

int *vp9_highbd_iwht4x4_add(int *a1, unsigned __int16 *a2, int a3, int a4, int a5)
{
  if (a4 < 2)
  {
    return vpx_highbd_iwht4x4_1_add_c(a1, a2, a3, a5);
  }

  else
  {
    return vpx_highbd_iwht4x4_16_add_c(a1, a2, a3, a5);
  }
}

double vp9_highbd_idct8x8_add(int16x8_t *a1, int16x8_t *a2, int a3, int a4, char a5)
{
  if (a4 == 1)
  {
    vpx_highbd_idct8x8_1_add_neon(a1->i32, a2, a3, a5);
  }

  else if (a4 > 12)
  {
    *&result = vpx_highbd_idct8x8_64_add_neon(a1, a2, a3, a5).u64[0];
  }

  else
  {
    *&result = vpx_highbd_idct8x8_12_add_neon(a1, a2, a3, a5).u64[0];
  }

  return result;
}

void vp9_highbd_idct16x16_add(int16x8_t *a1, int16x8_t *a2, int a3, int a4, char a5)
{
  if (a4 == 1)
  {
    vpx_highbd_idct16x16_1_add_neon(a1->i32, a2, a3, a5);
  }

  else if (a4 > 10)
  {
    if (a4 > 0x26)
    {
      vpx_highbd_idct16x16_256_add_neon(a1, a2, a3, a5);
    }

    else
    {
      vpx_highbd_idct16x16_38_add_neon(a1, a2, a3, a5);
    }
  }

  else
  {
    vpx_highbd_idct16x16_10_add_neon(a1, a2, a3, a5);
  }
}

int16x8_t *vp9_highbd_idct32x32_add(int16x8_t *a1, int16x8_t *a2, uint64_t a3, int a4, char a5)
{
  if (a4 == 1)
  {
    return vpx_highbd_idct32x32_1_add_neon(a1->i32, a2, a3, a5);
  }

  if (a4 <= 34)
  {
    return vpx_highbd_idct32x32_34_add_neon(a1, a2, a3, a5);
  }

  if (a4 > 0x87)
  {
    return vpx_highbd_idct32x32_1024_add_neon(a1, a2, a3);
  }

  return vpx_highbd_idct32x32_135_add_neon(a1, a2, a3, a5);
}

void vp9_highbd_iht16x16_add(int a1, int16x8_t *a2, int16x8_t *a3, uint64_t a4, int a5, uint64_t a6)
{
  v22[64] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a6 == 8)
    {
      v8 = &vp9_highbd_iht16x16_256_add_neon_IHT_16[2 * a1];
      v9 = *v8;
      v10 = v8[1];
      (v10)(a2, v18, a3, a4, 1);
      (v10)(&a2[32], &v19, a3, a4, 1);
      (v9)(v18, 0, a3, a4, 1);
      (v9)(&v21, 0, &a3[1], a4, 1);
    }

    else
    {
      v13 = &vp9_highbd_iht16x16_256_add_neon_IHT_16_1[2 * a1];
      v14 = *v13;
      v15 = v13[1];
      (v15)(a2, v18, a3, a4, a6);
      (v15)(&a2[32], &v20, a3, a4, a6);
      (v14)(v18, 0, a3, a4, a6);
      (v14)(v22, 0, &a3[1], a4, a6);
    }
  }

  else if (a5 == 1)
  {

    vpx_highbd_idct16x16_1_add_neon(a2->i32, a3, a4, a6);
  }

  else if (a5 > 10)
  {
    if (a5 > 0x26)
    {

      vpx_highbd_idct16x16_256_add_neon(a2, a3, a4, a6);
    }

    else
    {

      vpx_highbd_idct16x16_38_add_neon(a2, a3, a4, a6);
    }
  }

  else
  {

    vpx_highbd_idct16x16_10_add_neon(a2, a3, a4, a6);
  }
}

uint64_t yuvconfig2image(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 120);
  v3 = *(a2 + 124);
  if (v3)
  {
    if (v4)
    {
      v5 = 258;
    }

    else
    {
      v5 = 263;
    }

    if (v4)
    {
      v6 = 2306;
    }

    else
    {
      v6 = 2311;
    }

    v7 = 12;
    v8 = 16;
  }

  else
  {
    if (v4)
    {
      v5 = 261;
    }

    else
    {
      v5 = 262;
    }

    if (v4)
    {
      v6 = 2309;
    }

    else
    {
      v6 = 2310;
    }

    v7 = 16;
    v8 = 24;
  }

  if (!v4)
  {
    v7 = v8;
  }

  *result = v5;
  *(result + 4) = *(a2 + 132);
  *(result + 20) = 8;
  v9 = *(a2 + 16);
  v10 = (*(a2 + 4) + 327) & 0xFFFFFFF8;
  *(result + 12) = v9;
  *(result + 16) = v10;
  *&v11 = *(a2 + 8);
  *(&v11 + 1) = *(a2 + 140);
  *(result + 24) = v11;
  *(result + 40) = v4;
  *(result + 44) = v3;
  *(result + 48) = *(a2 + 56);
  *(result + 56) = *(a2 + 64);
  *(result + 64) = *(a2 + 72);
  *(result + 72) = 0;
  *(result + 80) = v9;
  v12 = *(a2 + 36);
  *(result + 84) = v12;
  *(result + 88) = v12;
  v13 = *(a2 + 16);
  *(result + 92) = v13;
  if ((*(a2 + 152) & 8) != 0)
  {
    *result = v6;
    *(result + 20) = *(a2 + 128);
    *(result + 48) = 2 * *(a2 + 56);
    *(result + 56) = 2 * *(a2 + 64);
    *(result + 64) = 2 * *(a2 + 72);
    *(result + 72) = 0;
    *(result + 80) = 2 * v13;
    *(result + 84) = 2 * *(a2 + 36);
    *(result + 88) = 2 * *(a2 + 36);
    *(result + 92) = 2 * *(a2 + 16);
  }

  *(result + 96) = v7;
  v14 = *(a2 + 88);
  *(result + 104) = a3;
  *(result + 112) = v14;
  *(result + 120) = 0;
  return result;
}

uint64_t image2yuvconfig(int *a1, uint64_t a2)
{
  v2 = *(a1 + 6);
  *(a2 + 56) = v2;
  v3 = *(a1 + 7);
  *(a2 + 64) = v3;
  v4 = *(a1 + 8);
  *(a2 + 72) = v4;
  *(a2 + 140) = *(a1 + 4);
  v5 = *(a1 + 3);
  *&v6 = v5;
  *(&v6 + 1) = v5;
  *a2 = v6;
  v7 = a1[10];
  if (v7 == 1 || *a1 == 265)
  {
    v8 = (v5 + 1) / 2;
  }

  else
  {
    v8 = v5;
  }

  v9 = a1[11];
  v10 = HIDWORD(v5);
  if (v9 == 1)
  {
    v10 = (HIDWORD(v5) + 1) / 2;
  }

  *(a2 + 20) = v8;
  *(a2 + 24) = v10;
  *(a2 + 28) = v8;
  *(a2 + 32) = v10;
  v11 = a1[20];
  *(a2 + 16) = v11;
  v12 = a1[21];
  *(a2 + 36) = v12;
  *(a2 + 132) = *(a1 + 1);
  v13 = *a1;
  if ((*a1 & 0x800) != 0)
  {
    *(a2 + 56) = v2 >> 1;
    *(a2 + 64) = v3 >> 1;
    *(a2 + 72) = v4 >> 1;
    v11 >>= 1;
    *(a2 + 16) = v11;
    *(a2 + 36) = v12 >> 1;
    v14 = 8;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 152) = v14;
  *(a2 + 104) = (v11 - a1[3]) >> 1;
  *(a2 + 120) = v7;
  *(a2 + 124) = v9;
  if (v13 == 265)
  {
    *(a2 + 120) = 1;
  }

  return 0;
}

int16x8_t *vpx_iadst16x16_256_add_half1d(int16x8_t *result, int16x8_t *a2, int16x8_t *a3, int a4, int a5)
{
  if (a2)
  {
    v5 = vuzp1q_s16(*result, result[1]);
    v6 = vuzp1q_s16(result[2], result[3]);
    v7 = vuzp1q_s16(result[4], result[5]);
    v8 = vuzp1q_s16(result[6], result[7]);
    v9 = vuzp1q_s16(result[8], result[9]);
    v10 = vuzp1q_s16(result[10], result[11]);
    v11 = vuzp1q_s16(result[12], result[13]);
    v12 = vuzp1q_s16(result[14], result[15]);
    v13 = vuzp1q_s16(result[16], result[17]);
    v14 = vuzp1q_s16(result[18], result[19]);
    v15 = vuzp1q_s16(result[20], result[21]);
    v16 = vuzp1q_s16(result[22], result[23]);
    v17 = vuzp1q_s16(result[24], result[25]);
    v18 = vuzp1q_s16(result[26], result[27]);
    v19 = vuzp1q_s16(result[28], result[29]);
    v20 = vuzp1q_s16(result[30], result[31]);
  }

  else
  {
    v5 = *result;
    v6 = result[1];
    v7 = result[2];
    v8 = result[3];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = result[8];
    v14 = result[9];
    v15 = result[10];
    v16 = result[11];
    v17 = result[12];
    v18 = result[13];
    v19 = result[14];
    v20 = result[15];
  }

  v21 = vtrn1q_s16(v5, v7);
  v22 = vtrn2q_s16(v5, v7);
  v23 = vtrn1q_s16(v9, v11);
  v24 = vtrn2q_s16(v9, v11);
  v25 = vtrn1q_s16(v13, v15);
  v26 = vtrn2q_s16(v13, v15);
  v27 = vtrn1q_s16(v17, v19);
  v28 = vtrn2q_s16(v17, v19);
  v29 = vtrn1q_s32(v21, v23);
  v30 = vtrn2q_s32(v21, v23);
  v31 = vtrn1q_s32(v22, v24);
  v32 = vtrn2q_s32(v22, v24);
  v33 = vtrn1q_s32(v25, v27);
  v34 = vtrn2q_s32(v25, v27);
  v35 = vtrn1q_s32(v26, v28);
  v36 = vtrn2q_s32(v26, v28);
  v37 = vzip2q_s64(v29, v33);
  v38 = vzip2q_s64(v31, v35);
  v39 = vzip2q_s64(v30, v34);
  v40 = vzip2q_s64(v32, v36);
  v41 = vtrn1q_s16(v6, v8);
  v42 = vtrn2q_s16(v6, v8);
  v43 = vtrn1q_s16(v10, v12);
  v44 = vtrn2q_s16(v10, v12);
  v45 = vtrn1q_s16(v14, v16);
  v46 = vtrn2q_s16(v14, v16);
  v47 = vtrn1q_s16(v18, v20);
  v48 = vtrn2q_s16(v18, v20);
  v49 = vtrn1q_s32(v41, v43);
  v50 = vtrn2q_s32(v41, v43);
  v51 = vtrn1q_s32(v42, v44);
  v52 = vtrn2q_s32(v42, v44);
  v53 = vtrn1q_s32(v45, v47);
  v54 = vtrn2q_s32(v45, v47);
  v55 = vtrn1q_s32(v46, v48);
  v56 = vtrn2q_s32(v46, v48);
  v57 = vzip2q_s64(v49, v53);
  v58 = vzip2q_s64(v51, v55);
  v59 = vzip2q_s64(v52, v56);
  v60 = vdupq_n_s16(0x3FECu);
  v61 = vdupq_n_s16(0x324u);
  v62 = vmlal_s16(vmull_s16(*v29.i8, *v61.i8), *v59.i8, *v60.i8);
  v248 = vmlal_high_s16(vmull_s16(*v33.i8, *&vextq_s8(v61, v61, 8uLL)), v59, v60);
  v227 = vmlsl_s16(vmull_s16(*v59.i8, *v61.i8), *v29.i8, *v60.i8);
  v243 = vmlsl_s16(vmull_high_s16(v59, v61), *v33.i8, *&vextq_s8(v60, v60, 8uLL));
  v63 = vdupq_n_s16(0x3E15u);
  v64 = vdupq_n_s16(0xF8Du);
  v65 = vmull_s16(*v58.i8, *v64.i8);
  v66 = vmull_high_s16(v58, v64);
  v250 = vmlal_s16(vmull_s16(*v30.i8, *v64.i8), *v58.i8, *v63.i8);
  v67 = vmlal_high_s16(vmull_s16(*v34.i8, *&vextq_s8(v64, v64, 8uLL)), v58, v63);
  v68 = vmlsl_s16(v65, *v30.i8, *v63.i8);
  v252 = vmlsl_s16(v66, *v34.i8, *&vextq_s8(v63, v63, 8uLL));
  v254 = v67;
  v69 = vdupq_n_s16(0x39DBu);
  v70 = vdupq_n_s16(0x1B5Du);
  v221 = vmlal_s16(vmull_s16(*v37.i8, *v70.i8), *v52.i8, *v69.i8);
  v218 = vmlal_high_s16(vmull_s16(*v56.i8, *&vextq_s8(v69, v69, 8uLL)), v37, v70);
  v215 = vmlsl_s16(vmull_s16(*v52.i8, *v70.i8), *v37.i8, *v69.i8);
  v209 = vmlsl_high_s16(vmull_s16(*v56.i8, *&vextq_s8(v70, v70, 8uLL)), v37, v69);
  v71 = vdupq_n_s16(0x3368u);
  v72 = vdupq_n_s16(0x2620u);
  v246 = vmlal_high_s16(vmull_s16(*v55.i8, *&vextq_s8(v71, v71, 8uLL)), v39, v72);
  v247 = vmlal_s16(vmull_s16(*v39.i8, *v72.i8), *v51.i8, *v71.i8);
  v73 = vmlsl_s16(vmull_s16(*v51.i8, *v72.i8), *v39.i8, *v71.i8);
  v245 = vmlsl_high_s16(vmull_s16(*v55.i8, *&vextq_s8(v72, v72, 8uLL)), v39, v71);
  v74 = vdupq_n_s16(0x2AFBu);
  v75 = vdupq_n_s16(0x2F6Cu);
  v239 = v73;
  v241 = vmlal_s16(vmull_s16(*v49.i8, *v75.i8), *v40.i8, *v74.i8);
  v76 = vmlsl_s16(vmull_s16(*v40.i8, *v75.i8), *v49.i8, *v74.i8);
  v223 = vmlsl_s16(vmull_high_s16(v40, v75), *v53.i8, *&vextq_s8(v74, v74, 8uLL));
  v225 = vmlal_high_s16(vmull_s16(*v53.i8, *&vextq_s8(v75, v75, 8uLL)), v40, v74);
  v77 = vdupq_n_s16(0x1590u);
  v78 = vdupq_n_s16(0x3C42u);
  v79 = vmlal_s16(vmull_s16(*v57.i8, *v78.i8), *v32.i8, *v77.i8);
  v80 = vmull_s16(*v32.i8, *v78.i8);
  v81 = vmlal_high_s16(vmull_s16(*v36.i8, *&vextq_s8(v77, v77, 8uLL)), v57, v78);
  v82 = vdupq_n_s16(0x36E5u);
  v83 = vmlsl_s16(v80, *v57.i8, *v77.i8);
  v213 = vmlsl_high_s16(vmull_s16(*v36.i8, *&vextq_s8(v78, v78, 8uLL)), v57, v77);
  v84 = vmull_s16(*v38.i8, *v82.i8);
  v36.i64[0] = vextq_s8(v82, v82, 8uLL).u64[0];
  v85 = vmull_high_s16(v38, v82);
  v86 = vmull_s16(*v50.i8, *v82.i8);
  v87 = vdupq_n_s16(0x20E7u);
  v88 = vmlal_s16(v86, *v38.i8, *v87.i8);
  v89 = vmlal_high_s16(vmull_s16(*v54.i8, *v36.i8), v38, v87);
  v90 = vmlsl_s16(v84, *v50.i8, *v87.i8);
  v91 = vmlsl_s16(v85, *v54.i8, *&vextq_s8(v87, v87, 8uLL));
  v92 = vzip2q_s64(v50, v54);
  v93 = vdupq_n_s16(0x964u);
  v94 = vdupq_n_s16(0x3F4Fu);
  v95 = vmlal_s16(vmull_s16(*v92.i8, *v94.i8), *v31.i8, *v93.i8);
  v96 = vmlal_high_s16(vmull_s16(*v35.i8, *&vextq_s8(v93, v93, 8uLL)), v92, v94);
  v97 = vmlsl_s16(vmull_s16(*v31.i8, *v94.i8), *v92.i8, *v93.i8);
  v98 = vmlsl_high_s16(vmull_s16(*v35.i8, *&vextq_s8(v94, v94, 8uLL)), v92, v93);
  *v92.i8 = vrshrn_n_s32(vsubq_s32(v62, v241), 0xEuLL);
  *v93.i8 = vrshrn_n_s32(vsubq_s32(v227, v76), 0xEuLL);
  *v94.i8 = vdup_n_s16(0x3EC5u);
  *v54.i8 = vdup_n_s16(0xC7Cu);
  v233 = vmlal_s16(vmull_s16(*v93.i8, *v54.i8), *v92.i8, *v94.i8);
  v231 = vmlsl_s16(vmull_s16(*v92.i8, *v54.i8), *v93.i8, *v94.i8);
  *v92.i8 = vrshrn_n_s32(vsubq_s32(v248, v225), 0xEuLL);
  *v93.i8 = vrshrn_n_s32(vsubq_s32(v243, v223), 0xEuLL);
  v237 = vmlal_s16(vmull_s16(*v93.i8, *v54.i8), *v92.i8, *v94.i8);
  v235 = vmlsl_s16(vmull_s16(*v92.i8, *v54.i8), *v93.i8, *v94.i8);
  *v92.i8 = vrshrn_n_s32(vsubq_s32(v221, v79), 0xEuLL);
  *v93.i8 = vrshrn_n_s32(vsubq_s32(v218, v81), 0xEuLL);
  *v57.i8 = vrshrn_n_s32(vsubq_s32(v215, v83), 0xEuLL);
  *v77.i8 = vrshrn_n_s32(vsubq_s32(v209, v213), 0xEuLL);
  v204 = vmlal_s16(vmull_s16(*v92.i8, *v94.i8), *v57.i8, *v54.i8);
  v211 = vmlal_s16(vmull_s16(*v93.i8, *v94.i8), *v77.i8, *v54.i8);
  v99 = vmlsl_s16(vmull_s16(*v57.i8, *v94.i8), *v92.i8, *v54.i8);
  v100 = vmlsl_s16(vmull_s16(*v77.i8, *v94.i8), *v93.i8, *v54.i8);
  *v92.i8 = vrshrn_n_s32(vsubq_s32(v250, v88), 0xEuLL);
  *v93.i8 = vrshrn_n_s32(vsubq_s32(v68, v90), 0xEuLL);
  *v94.i8 = vdup_n_s16(0x238Eu);
  *v38.i8 = vdup_n_s16(0x3537u);
  v101 = vmlal_s16(vmull_s16(*v93.i8, *v38.i8), *v92.i8, *v94.i8);
  v102 = vmlsl_s16(vmull_s16(*v92.i8, *v38.i8), *v93.i8, *v94.i8);
  *v92.i8 = vrshrn_n_s32(vsubq_s32(v254, v89), 0xEuLL);
  *v93.i8 = vrshrn_n_s32(vsubq_s32(v252, v91), 0xEuLL);
  v103 = vmlal_s16(vmull_s16(*v93.i8, *v38.i8), *v92.i8, *v94.i8);
  v104 = vmlsl_s16(vmull_s16(*v92.i8, *v38.i8), *v93.i8, *v94.i8);
  *v57.i8 = vrshrn_n_s32(vsubq_s32(v247, v95), 0xEuLL);
  *v31.i8 = vrshrn_n_s32(vsubq_s32(v246, v96), 0xEuLL);
  *v93.i8 = vrshrn_n_s32(vsubq_s32(v239, v97), 0xEuLL);
  *v92.i8 = vrshrn_n_s32(vsubq_s32(v245, v98), 0xEuLL);
  v105 = vmlal_s16(vmull_s16(*v57.i8, *v94.i8), *v93.i8, *v38.i8);
  v106 = vmull_s16(*v93.i8, *v94.i8);
  v107 = vmull_s16(*v92.i8, *v94.i8);
  v108 = vmlal_s16(vmull_s16(*v31.i8, *v94.i8), *v92.i8, *v38.i8);
  v109 = vmlsl_s16(v106, *v57.i8, *v38.i8);
  v110 = vmlsl_s16(v107, *v31.i8, *v38.i8);
  v111 = vaddq_s32(v241, v62);
  v112 = vaddq_s32(v76, v227);
  v113 = vaddq_s32(v223, v243);
  v114 = vaddq_s32(v88, v250);
  v224 = vaddq_s32(v89, v254);
  v115 = vaddq_s32(v79, v221);
  v249 = vaddq_s32(v225, v248);
  v251 = vaddq_s32(v81, v218);
  v116 = vaddq_s32(v83, v215);
  v242 = v113;
  v244 = vaddq_s32(v213, v209);
  v117 = vaddq_s32(v95, v247);
  v229 = vaddq_s32(v91, v252);
  v230 = vaddq_s32(v96, v246);
  v118 = vaddq_s32(v97, v239);
  v240 = vaddq_s32(v98, v245);
  *v76.i8 = vsub_s16(vrshrn_n_s32(v249, 0xEuLL), vrshrn_n_s32(v251, 0xEuLL));
  *v97.i8 = vsub_s16(vrshrn_n_s32(v113, 0xEuLL), vrshrn_n_s32(v244, 0xEuLL));
  v220 = vrshrn_n_s32(v112, 0xEuLL);
  *v245.i8 = vrshrn_n_s32(v111, 0xEuLL);
  *v246.i8 = vrshrn_n_s32(v115, 0xEuLL);
  *v247.i8 = vrshrn_n_s32(v116, 0xEuLL);
  *v91.i8 = vdup_n_s16(0x3B21u);
  *v95.i8 = vsub_s16(*v245.i8, *v246.i8);
  *v112.i8 = vdup_n_s16(0x187Eu);
  *v98.i8 = vsub_s16(v220, *v247.i8);
  v206 = vmlal_s16(vmull_s16(*v98.i8, *v112.i8), *v95.i8, *v91.i8);
  v205 = vmlsl_s16(vmull_s16(*v95.i8, *v112.i8), *v98.i8, *v91.i8);
  v253 = vmlal_s16(vmull_s16(*v97.i8, *v112.i8), *v76.i8, *v91.i8);
  v255 = vmlsl_s16(vmull_s16(*v76.i8, *v112.i8), *v97.i8, *v91.i8);
  *v76.i8 = vsub_s16(vrshrn_n_s32(v229, 0xEuLL), vrshrn_n_s32(v240, 0xEuLL));
  *v95.i8 = vsub_s16(vrshrn_n_s32(v224, 0xEuLL), vrshrn_n_s32(v230, 0xEuLL));
  *v62.i8 = vrshrn_n_s32(v114, 0xEuLL);
  v217 = vrshrn_n_s32(vaddq_s32(v90, v68), 0xEuLL);
  *v221.i8 = vrshrn_n_s32(v117, 0xEuLL);
  v222 = vrshrn_n_s32(v118, 0xEuLL);
  *v113.i8 = vsub_s16(v217, v222);
  *v57.i8 = vsub_s16(*v62.i8, *v221.i8);
  v207 = vmlsl_s16(vmull_s16(*v113.i8, *v91.i8), *v57.i8, *v112.i8);
  v208 = vmlal_s16(vmull_s16(*v57.i8, *v91.i8), *v113.i8, *v112.i8);
  v202 = vmlsl_s16(vmull_s16(*v76.i8, *v91.i8), *v95.i8, *v112.i8);
  v203 = vmlal_s16(vmull_s16(*v95.i8, *v91.i8), *v76.i8, *v112.i8);
  *v113.i8 = vrshrn_n_s32(vsubq_s32(v233, v99), 0xEuLL);
  *v57.i8 = vrshrn_n_s32(vsubq_s32(v231, v204), 0xEuLL);
  v219 = vmlal_s16(vmull_s16(*v57.i8, *v112.i8), *v113.i8, *v91.i8);
  v216 = vmlsl_s16(vmull_s16(*v113.i8, *v112.i8), *v57.i8, *v91.i8);
  *v113.i8 = vrshrn_n_s32(vsubq_s32(v237, v100), 0xEuLL);
  *v57.i8 = vrshrn_n_s32(vsubq_s32(v235, v211), 0xEuLL);
  v226 = vmlsl_s16(vmull_s16(*v113.i8, *v112.i8), *v57.i8, *v91.i8);
  v228 = vmlal_s16(vmull_s16(*v57.i8, *v112.i8), *v113.i8, *v91.i8);
  *v113.i8 = vrshrn_n_s32(vsubq_s32(v101, v109), 0xEuLL);
  *v57.i8 = vrshrn_n_s32(vsubq_s32(v103, v110), 0xEuLL);
  *v118.i8 = vrshrn_n_s32(vsubq_s32(v102, v105), 0xEuLL);
  *v98.i8 = vrshrn_n_s32(vsubq_s32(v104, v108), 0xEuLL);
  v119 = vmlal_s16(vmull_s16(*v113.i8, *v91.i8), *v118.i8, *v112.i8);
  v120 = vmull_s16(*v118.i8, *v91.i8);
  v121 = vmull_s16(*v98.i8, *v91.i8);
  v122 = vmlal_s16(vmull_s16(*v57.i8, *v91.i8), *v98.i8, *v112.i8);
  v123 = vmlsl_s16(v120, *v113.i8, *v112.i8);
  v210 = vmlsl_s16(v121, *v57.i8, *v112.i8);
  v124 = vaddq_s32(v99, v233);
  v201 = vaddq_s32(v100, v237);
  v125 = vaddq_s32(v204, v231);
  v232 = vaddq_s32(v211, v235);
  v126 = vaddq_s32(v109, v101);
  v212 = vaddq_s32(v110, v103);
  v214 = v122;
  *v112.i8 = vrshrn_n_s32(vsubq_s32(v206, v207), 0xEuLL);
  *v113.i8 = vrshrn_n_s32(vsubq_s32(v205, v208), 0xEuLL);
  *v109.i8 = vdup_n_s16(0x2D41u);
  v236 = vmlsl_s16(vmull_s16(*v113.i8, *v109.i8), *v112.i8, *v109.i8);
  v238 = vmlal_s16(vmull_s16(*v112.i8, *v109.i8), *v113.i8, *v109.i8);
  *v112.i8 = vrshrn_n_s32(vsubq_s32(v253, v202), 0xEuLL);
  *v113.i8 = vrshrn_n_s32(vsubq_s32(v255, v203), 0xEuLL);
  v127 = vmlal_s16(vmull_s16(*v112.i8, *v109.i8), *v113.i8, *v109.i8);
  v234 = vmlsl_s16(vmull_s16(*v113.i8, *v109.i8), *v112.i8, *v109.i8);
  v128 = vaddq_s32(v108, v104);
  *v112.i8 = vsub_s16(vrshrn_n_s32(v232, 0xEuLL), vrshrn_n_s32(v128, 0xEuLL));
  *v113.i8 = vsub_s16(vrshrn_n_s32(v201, 0xEuLL), vrshrn_n_s32(v212, 0xEuLL));
  *v99.i8 = vrshrn_n_s32(v124, 0xEuLL);
  *v124.i8 = vrshrn_n_s32(v125, 0xEuLL);
  *v116.i8 = vrshrn_n_s32(v126, 0xEuLL);
  *v100.i8 = vrshrn_n_s32(vaddq_s32(v105, v102), 0xEuLL);
  *v78.i8 = vsub_s16(*v124.i8, *v100.i8);
  *v72.i8 = vsub_s16(*v99.i8, *v116.i8);
  v129 = vmlal_s16(vmull_s16(*v72.i8, *v109.i8), *v78.i8, *v109.i8);
  v130 = vmlsl_s16(vmull_s16(*v78.i8, *v109.i8), *v72.i8, *v109.i8);
  v131 = vmlal_s16(vmull_s16(*v113.i8, *v109.i8), *v112.i8, *v109.i8);
  v132 = vmlsl_s16(vmull_s16(*v112.i8, *v109.i8), *v113.i8, *v109.i8);
  v133 = vaddq_s16(vrshrn_high_n_s32(*v246.i8, v251, 0xEuLL), vrshrn_high_n_s32(*v245.i8, v249, 0xEuLL));
  v134 = vaddq_s16(vrshrn_high_n_s32(*v247.i8, v244, 0xEuLL), vrshrn_high_n_s32(v220, v242, 0xEuLL));
  v135 = vaddq_s16(vrshrn_high_n_s32(*v221.i8, v230, 0xEuLL), vrshrn_high_n_s32(*v62.i8, v224, 0xEuLL));
  v136 = vaddq_s16(vrshrn_high_n_s32(v222, v240, 0xEuLL), vrshrn_high_n_s32(v217, v229, 0xEuLL));
  v137 = vsubq_s16(v133, v135);
  v138 = vsubq_s16(v134, v136);
  v139 = vdupq_n_s16(0xD2BFu);
  v140 = vmlal_s16(vmull_s16(*v137.i8, *v139.i8), *v138.i8, *v139.i8);
  v141 = vmlal_high_s16(vmull_high_s16(v137, v139), v138, v139);
  v142 = vmlsl_s16(vmull_s16(*v138.i8, *v139.i8), *v137.i8, *v139.i8);
  v143 = vmlsl_high_s16(vmull_high_s16(v138, v139), v137, v139);
  *v137.i8 = vrshrn_n_s32(vsubq_s32(v219, v123), 0xEuLL);
  v144 = v119;
  *v103.i8 = vrshrn_n_s32(vsubq_s32(v216, v119), 0xEuLL);
  v145 = vmlal_s16(vmull_s16(*v137.i8, *v139.i8), *v103.i8, *v139.i8);
  v146 = vmlsl_s16(vmull_s16(*v103.i8, *v139.i8), *v137.i8, *v139.i8);
  *v137.i8 = vrshrn_n_s32(vsubq_s32(v228, v210), 0xEuLL);
  *v119.i8 = vrshrn_n_s32(vsubq_s32(v226, v214), 0xEuLL);
  v147 = vmlal_s16(vmull_s16(*v137.i8, *v139.i8), *v119.i8, *v139.i8);
  v148 = vmlsl_s16(vmull_s16(*v119.i8, *v139.i8), *v137.i8, *v139.i8);
  v149 = vrshrn_high_n_s32(*v124.i8, v232, 0xEuLL);
  v150 = vrshrn_high_n_s32(*v116.i8, v212, 0xEuLL);
  v151 = vrshrn_high_n_s32(*v100.i8, v128, 0xEuLL);
  v152 = vaddq_s16(v135, v133);
  v153 = vaddq_s16(v134, v136);
  v154 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v208, v205), 0xEuLL), vaddq_s32(v203, v255), 0xEuLL);
  v155 = vaddq_s16(vrshrn_high_n_s32(*v99.i8, v201, 0xEuLL), v150);
  v156 = vaddq_s16(v151, v149);
  v157 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v123, v219), 0xEuLL), vaddq_s32(v210, v228), 0xEuLL);
  v158 = vrshrn_high_n_s32(vrshrn_n_s32(v140, 0xEuLL), v141, 0xEuLL);
  v159 = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xEuLL), v143, 0xEuLL);
  v160 = vrshrn_high_n_s32(vrshrn_n_s32(v238, 0xEuLL), v127, 0xEuLL);
  v161 = vrshrn_high_n_s32(vrshrn_n_s32(v236, 0xEuLL), v234, 0xEuLL);
  v162 = vrshrn_high_n_s32(vrshrn_n_s32(v129, 0xEuLL), v131, 0xEuLL);
  v163 = vrshrn_high_n_s32(vrshrn_n_s32(v130, 0xEuLL), v132, 0xEuLL);
  v164 = vrshrn_high_n_s32(vrshrn_n_s32(v145, 0xEuLL), v147, 0xEuLL);
  v165 = vrshrn_high_n_s32(vrshrn_n_s32(v146, 0xEuLL), v148, 0xEuLL);
  v166 = vnegq_s16(v155);
  v167 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v207, v206), 0xEuLL), vaddq_s32(v202, v253), 0xEuLL));
  v168 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v144, v216), 0xEuLL), vaddq_s32(v214, v226), 0xEuLL));
  v169 = vnegq_s16(v153);
  if (a2)
  {
    *a2 = v152;
    a2[2] = v166;
    a2[4] = v157;
    a2[6] = v167;
    a2[8] = v160;
    a2[10] = v164;
    a2[12] = v162;
    a2[14] = v158;
    a2[16] = v159;
    a2[18] = v163;
    a2[20] = v165;
    a2[22] = v161;
    a2[24] = v154;
    a2[26] = v168;
    a2[28] = v156;
    a2[30] = v169;
  }

  else if (a5)
  {
    v170 = vrshrq_n_s16(v157, 6uLL);
    v171 = vrshrq_n_s16(v167, 6uLL);
    v172.i64[0] = 0xFF00FF00FF00FFLL;
    v172.i64[1] = 0xFF00FF00FF00FFLL;
    *a3 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v152, 6uLL), *a3), v172), 0);
    v173 = 2 * a4;
    *(a3 + v173) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v166, 6uLL), *(a3 + v173)), v172), 0);
    v174 = (a3 + v173 + v173);
    *v174 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v170, *v174), v172), 0);
    v175 = (v174 + v173);
    *v175 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v171, *v175), v172), 0);
    v176 = (v175 + v173);
    *v176 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v160, 6uLL), *v176), v172), 0);
    v177 = (v176 + v173);
    *v177 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v164, 6uLL), *v177), v172), 0);
    v178 = (v177 + v173);
    *v178 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v162, 6uLL), *v178), v172), 0);
    v179 = (v178 + v173);
    *v179 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v158, 6uLL), *v179), v172), 0);
    v180 = (v179 + v173);
    *v180 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v159, 6uLL), *v180), v172), 0);
    v181 = (v180 + v173);
    *v181 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v163, 6uLL), *v181), v172), 0);
    v182 = (v181 + v173);
    *v182 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v165, 6uLL), *v182), v172), 0);
    v183 = (v182 + v173);
    *v183 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v161, 6uLL), *v183), v172), 0);
    v184 = (v183 + v173);
    *v184 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v154, 6uLL), *v184), v172), 0);
    v185 = (v184 + v173);
    *v185 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v168, 6uLL), *v185), v172), 0);
    v186 = (v185 + v173);
    *v186 = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v156, 6uLL), *v186), v172), 0);
    *(v186 + v173) = vqshluq_n_s16(vminq_s16(vqaddq_s16(vrshrq_n_s16(v169, 6uLL), *(v186 + v173)), v172), 0);
  }

  else
  {
    *a3->i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a3->i8), v152, 6uLL));
    v187 = &a3->i8[a4];
    *v187 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v187), v166, 6uLL));
    v188 = (v187 + a4);
    *v188 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v188), v157, 6uLL));
    v189 = (v188 + a4);
    *v189 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v189), v167, 6uLL));
    v190 = (v189 + a4);
    *v190 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v190), v160, 6uLL));
    v191 = (v190 + a4);
    *v191 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v191), v164, 6uLL));
    v192 = (v191 + a4);
    *v192 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v192), v162, 6uLL));
    v193 = (v192 + a4);
    *v193 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v193), v158, 6uLL));
    v194 = (v193 + a4);
    *v194 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v194), v159, 6uLL));
    v195 = (v194 + a4);
    *v195 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v195), v163, 6uLL));
    v196 = (v195 + a4);
    *v196 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v196), v165, 6uLL));
    v197 = (v196 + a4);
    *v197 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v197), v161, 6uLL));
    v198 = (v197 + a4);
    *v198 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v198), v154, 6uLL));
    v199 = (v198 + a4);
    *v199 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v199), v168, 6uLL));
    v200 = (v199 + a4);
    *v200 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v200), v156, 6uLL));
    *(v200 + a4) = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v200 + a4)), v169, 6uLL));
  }

  return result;
}

int8x8_t vp9_iht4x4_16_add_neon(int16x8_t *a1, __int32 *a2, int a3, int a4)
{
  v4 = vuzp1q_s16(*a1, a1[1]);
  v5 = vuzp1q_s16(a1[2], a1[3]);
  v6 = vtrn1q_s32(v4, v5);
  v7 = vtrn2q_s32(v4, v5);
  v8 = vzip2q_s64(v6, v7);
  v9.i64[0] = v6.i64[0];
  v9.i64[1] = v7.i64[0];
  v10 = vtrn1q_s16(v9, v8);
  v11 = vtrn2q_s16(v9, v8);
  v12 = vextq_s8(v11, v11, 8uLL).u64[0];
  if (a4 == 2)
  {
    v55 = vdupq_n_s16(0x14A3u);
    v56 = vdup_n_s16(0x26C9u);
    v57 = vdup_n_s16(0x3441u);
    v58 = vdupq_n_s16(0x3B6Cu);
    v59 = vmlal_s16(vmlal_high_s16(vmull_s16(*v10.i8, *v55.i8), v10, v58), v12, v56);
    v60 = vmlsl_s16(vmlsl_high_s16(vmull_s16(*v10.i8, v56), v10, v55), v12, *v58.i8);
    v61 = vaddq_s32(vmlsl_s16(v59, *v11.i8, v57), v60);
    v62 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v59, *v11.i8, v57), 0xEuLL), vmlal_s16(v60, *v11.i8, v57), 0xEuLL);
    v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vaddw_s16(vsubw_high_s16(vmovl_s16(*v10.i8), v10), v12), vdupq_n_s32(0x3441u)), 0xEuLL), v61, 0xEuLL);
    v64 = vtrn1q_s32(v62, v63);
    v65 = vtrn2q_s32(v62, v63);
    v63.i64[0] = v64.i64[0];
    v63.i64[1] = v65.i64[0];
    v66 = vzip2q_s64(v64, v65);
    v67 = vtrn1q_s16(v63, v66);
    v68 = vtrn2q_s16(v63, v66);
    v69 = vdupq_n_s16(0x2D41u);
    v70 = vmull_s16(*v67.i8, *v69.i8);
    v71 = vmlsl_high_s16(v70, v67, v69);
    v72 = vdupq_n_s16(0x187Eu);
    v73 = vmlal_high_s16(v70, v67, v69);
    v74 = vdupq_n_s16(0x3B21u);
    v75 = vmlsl_high_s16(vmull_s16(*v68.i8, *v72.i8), v68, v74);
    v76 = vmlal_high_s16(vmull_s16(*v68.i8, *v74.i8), v68, v72);
    v33 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xEuLL), v75, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v73, 0xEuLL), v71, 0xEuLL));
    v34 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v71, 0xEuLL), v73, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v75, 0xEuLL), v76, 0xEuLL));
  }

  else if (a4 == 1)
  {
    v35 = vdupq_n_s16(0x2D41u);
    v36 = vmull_s16(*v10.i8, *v35.i8);
    v37 = vmlsl_high_s16(v36, v10, v35);
    v38 = vdup_n_s16(0x187Eu);
    v39 = vmlal_high_s16(v36, v10, v35);
    *v35.i8 = vdup_n_s16(0x3B21u);
    v40 = vmlsl_s16(vmull_s16(*v11.i8, v38), v12, *v35.i8);
    v41 = vmlal_s16(vmull_s16(v12, v38), *v11.i8, *v35.i8);
    v42 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xEuLL), v40, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xEuLL), v37, 0xEuLL));
    v43 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v37, 0xEuLL), v39, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xEuLL), v41, 0xEuLL));
    v44 = vtrn1q_s32(v42, v43);
    v45 = vtrn2q_s32(v42, v43);
    v46 = vzip2q_s64(v44, v45);
    v44.i64[1] = v45.i64[0];
    v47 = vtrn1q_s16(v44, v46);
    v48 = vtrn2q_s16(v44, v46);
    v49 = vdupq_n_s16(0x14A3u);
    v50 = vdupq_n_s16(0x26C9u);
    *v37.i8 = vdup_n_s16(0x3441u);
    v51 = vdupq_n_s16(0x3B6Cu);
    v52 = vmlal_high_s16(vmlal_high_s16(vmull_s16(*v47.i8, *v49.i8), v47, v51), v48, v50);
    v53 = vmlsl_high_s16(vmlsl_high_s16(vmull_s16(*v47.i8, *v50.i8), v47, v49), v48, v51);
    v54 = vmulq_s32(vaddw_high_s16(vsubw_high_s16(vmovl_s16(*v47.i8), v47), v48), vdupq_n_s32(0x3441u));
    v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v52, *v48.i8, *v37.i8), 0xEuLL), vmlal_s16(v53, *v48.i8, *v37.i8), 0xEuLL);
    v34 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xEuLL), vaddq_s32(vmlsl_s16(v52, *v48.i8, *v37.i8), v53), 0xEuLL);
  }

  else if (a4)
  {
    v77 = vdupq_n_s16(0x14A3u);
    v78 = vdupq_n_s16(0x26C9u);
    v79 = vdup_n_s16(0x3441u);
    v80 = vdupq_n_s16(0x3B6Cu);
    v81 = vaddw_s16(vsubw_high_s16(vmovl_s16(*v10.i8), v10), v12);
    v82 = vmlal_s16(vmlal_high_s16(vmull_s16(*v10.i8, *v77.i8), v10, v80), v12, *v78.i8);
    v83 = vmlsl_s16(vmlsl_high_s16(vmull_s16(*v10.i8, *v78.i8), v10, v77), v12, *v80.i8);
    v84 = vdupq_n_s32(0x3441u);
    v85 = vmulq_s32(v81, v84);
    v86 = vmlal_s16(v82, *v11.i8, v79);
    v87 = vaddq_s32(vmlsl_s16(v82, *v11.i8, v79), v83);
    v88 = vrshrn_high_n_s32(vrshrn_n_s32(v86, 0xEuLL), vmlal_s16(v83, *v11.i8, v79), 0xEuLL);
    v89 = vrshrn_high_n_s32(vrshrn_n_s32(v85, 0xEuLL), v87, 0xEuLL);
    v90 = vtrn1q_s32(v88, v89);
    v91 = vtrn2q_s32(v88, v89);
    v92 = vzip2q_s64(v90, v91);
    v90.i64[1] = v91.i64[0];
    v93 = vtrn1q_s16(v90, v92);
    v94 = vtrn2q_s16(v90, v92);
    v95 = vmlal_high_s16(vmlal_high_s16(vmull_s16(*v93.i8, *v77.i8), v93, v80), v94, v78);
    v96 = vmlsl_high_s16(vmlsl_high_s16(vmull_s16(*v93.i8, *v78.i8), v93, v77), v94, v80);
    v97 = vmulq_s32(vaddw_high_s16(vsubw_high_s16(vmovl_s16(*v93.i8), v93), v94), v84);
    v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(v95, *v94.i8, v79), 0xEuLL), vmlal_s16(v96, *v94.i8, v79), 0xEuLL);
    v34 = vrshrn_high_n_s32(vrshrn_n_s32(v97, 0xEuLL), vaddq_s32(vmlsl_s16(v95, *v94.i8, v79), v96), 0xEuLL);
  }

  else
  {
    v13 = vdupq_n_s16(0x2D41u);
    v14 = vmull_s16(*v10.i8, *v13.i8);
    v15 = vmlsl_high_s16(v14, v10, v13);
    v16 = vmlal_high_s16(v14, v10, v13);
    v17 = vdupq_n_s16(0x187Eu);
    v18 = vdupq_n_s16(0x3B21u);
    v19 = vmlsl_s16(vmull_s16(*v11.i8, *v17.i8), v12, *v18.i8);
    v20 = vmlal_s16(vmull_s16(v12, *v17.i8), *v11.i8, *v18.i8);
    v21 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xEuLL), v19, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v16, 0xEuLL), v15, 0xEuLL));
    v22 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xEuLL), v16, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v19, 0xEuLL), v20, 0xEuLL));
    v23 = vtrn1q_s32(v21, v22);
    v24 = vtrn2q_s32(v21, v22);
    v25 = vzip2q_s64(v23, v24);
    v23.i64[1] = v24.i64[0];
    v26 = vtrn1q_s16(v23, v25);
    v27 = vtrn2q_s16(v23, v25);
    v28 = vmull_s16(*v26.i8, *v13.i8);
    v29 = vmlsl_high_s16(v28, v26, v13);
    v30 = vmlal_high_s16(v28, v26, v13);
    v31 = vmlsl_high_s16(vmull_s16(*v27.i8, *v17.i8), v27, v18);
    v32 = vmlal_high_s16(vmull_s16(*v27.i8, *v18.i8), v27, v17);
    *v19.i8 = vrshrn_n_s32(v31, 0xEuLL);
    v33 = vaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v32, 0xEuLL), v31, 0xEuLL), vrshrn_high_n_s32(vrshrn_n_s32(v30, 0xEuLL), v29, 0xEuLL));
    v34 = vsubq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v29, 0xEuLL), v30, 0xEuLL), vrshrn_high_n_s32(*v19.i8, v32, 0xEuLL));
  }

  v98 = (a2 + a3);
  v99.i32[0] = *a2;
  v99.i32[1] = *v98;
  v100 = (a2 + 2 * a3);
  v101 = (v100 + a3);
  v102.i32[0] = *v100;
  v102.i32[1] = *v101;
  v103 = vrsraq_n_s16(vmovl_u8(v99), v33, 4uLL);
  v104 = vrsraq_n_s16(vmovl_u8(v102), v34, 4uLL);
  v105 = vqmovun_s16(v103);
  *a2 = v105.i32[0];
  *v98 = v105.i32[1];
  result = vqmovun_s16(v104);
  *v100 = result.i32[0];
  *v101 = result.i32[1];
  return result;
}

int8x8_t vp9_iht8x8_64_add_neon(int16x8_t *a1, uint8x8_t *a2, int a3, int a4)
{
  v4 = vuzp1q_s16(*a1, a1[1]);
  v5 = vuzp1q_s16(a1[2], a1[3]);
  v6 = vuzp1q_s16(a1[4], a1[5]);
  v7 = vuzp1q_s16(a1[6], a1[7]);
  v8 = vuzp1q_s16(a1[8], a1[9]);
  v9 = vuzp1q_s16(a1[10], a1[11]);
  v10 = vuzp1q_s16(a1[12], a1[13]);
  v11 = vuzp1q_s16(a1[14], a1[15]);
  v12 = vtrn1q_s16(v4, v5);
  v13 = vtrn2q_s16(v4, v5);
  v14 = vtrn1q_s16(v6, v7);
  v15 = vtrn2q_s16(v6, v7);
  v16 = vtrn1q_s16(v8, v9);
  v17 = vtrn2q_s16(v8, v9);
  v18 = vtrn1q_s16(v10, v11);
  v19 = vtrn2q_s16(v10, v11);
  v26 = vtrn1q_s32(v12, v14);
  v20 = vtrn2q_s32(v12, v14);
  v28 = vtrn1q_s32(v13, v15);
  v21 = vtrn2q_s32(v13, v15);
  v22 = vtrn1q_s32(v16, v18);
  v23 = vtrn2q_s32(v16, v18);
  v24 = vtrn1q_s32(v17, v19);
  v25 = vzip2q_s64(v26, v22);
  v26.i64[1] = v22.i64[0];
  v27 = vzip2q_s64(v28, v24);
  v28.i64[1] = v24.i64[0];
  v29 = vzip2q_s64(v20, v23);
  v30.i64[0] = v20.i64[0];
  v30.i64[1] = v23.i64[0];
  v31 = vtrn2q_s32(v17, v19);
  v32 = vzip2q_s64(v21, v31);
  v33.i64[0] = v21.i64[0];
  v33.i64[1] = v31.i64[0];
  if (a4 == 2)
  {
    v273 = vdupq_n_s16(0x3FB1u);
    v274 = vdupq_n_s16(0x646u);
    v275 = vmull_s16(*v32.i8, *v274.i8);
    v276 = vmull_high_s16(v32, v274);
    v277 = vmlal_s16(vmull_s16(*v26.i8, *v274.i8), *v32.i8, *v273.i8);
    v278 = vmlal_high_s16(vmull_high_s16(v26, v274), v32, v273);
    v279 = vmlsl_s16(v275, *v26.i8, *v273.i8);
    v280 = vmlsl_high_s16(v276, v26, v273);
    v281 = vdupq_n_s16(0x3871u);
    v282 = vdupq_n_s16(0x1E2Bu);
    v283 = vmull_s16(*v27.i8, *v282.i8);
    v284 = vmull_high_s16(v27, v282);
    v285 = vmlal_s16(vmull_s16(*v30.i8, *v282.i8), *v27.i8, *v281.i8);
    v286 = vmlal_high_s16(vmull_high_s16(v30, v282), v27, v281);
    v287 = vmlsl_s16(v283, *v30.i8, *v281.i8);
    v288 = vmlsl_high_s16(v284, v30, v281);
    v289 = vdupq_n_s16(0x289Au);
    v290 = vdupq_n_s16(0x3179u);
    v291 = vmull_s16(*v33.i8, *v290.i8);
    v292 = vmull_high_s16(v33, v290);
    v293 = vmlal_s16(vmull_s16(*v25.i8, *v290.i8), *v33.i8, *v289.i8);
    v294 = vmlal_high_s16(vmull_high_s16(v25, v290), v33, v289);
    v295 = vmlsl_s16(v291, *v25.i8, *v289.i8);
    v296 = vdupq_n_s16(0x1294u);
    v297 = vmlsl_high_s16(v292, v25, v289);
    v298 = vdupq_n_s16(0x3D3Fu);
    v299 = vmull_s16(*v28.i8, *v298.i8);
    v300 = vmull_high_s16(v28, v298);
    v301 = vmlal_s16(vmull_s16(*v29.i8, *v298.i8), *v28.i8, *v296.i8);
    v302 = vmlal_high_s16(vmull_high_s16(v29, v298), v28, v296);
    v303 = vmlsl_s16(v299, *v29.i8, *v296.i8);
    v304 = vmlsl_high_s16(v300, v29, v296);
    v305 = vaddq_s32(v294, v278);
    v306 = vrshrn_n_s32(vaddq_s32(v293, v277), 0xEuLL);
    *v296.i8 = vrshrn_n_s32(v305, 0xEuLL);
    v307 = vrshrn_n_s32(vaddq_s32(v301, v285), 0xEuLL);
    v308 = vsub_s16(v306, v307);
    v309 = vrshrn_high_n_s32(v306, v305, 0xEuLL);
    v310 = vaddq_s32(v297, v280);
    v311 = vrshrn_n_s32(vaddq_s32(v295, v279), 0xEuLL);
    *v305.i8 = vrshrn_n_s32(v310, 0xEuLL);
    v312 = vrshrn_n_s32(vaddq_s32(v303, v287), 0xEuLL);
    v313 = vsub_s16(v311, v312);
    v314 = vrshrn_high_n_s32(v311, v310, 0xEuLL);
    v315 = vaddq_s32(v302, v286);
    *v310.i8 = vrshrn_n_s32(v315, 0xEuLL);
    v316 = vrshrn_high_n_s32(v307, v315, 0xEuLL);
    v317 = vaddq_s32(v304, v288);
    *v315.i8 = vrshrn_n_s32(v317, 0xEuLL);
    v318 = vrshrn_high_n_s32(v312, v317, 0xEuLL);
    v319 = vsubq_s32(v277, v293);
    v320 = vsubq_s32(v278, v294);
    *v278.i8 = vrshrn_n_s32(v319, 0xEuLL);
    *v320.i8 = vrshrn_n_s32(v320, 0xEuLL);
    v321 = vsubq_s32(v279, v295);
    v322 = vsubq_s32(v280, v297);
    *v297.i8 = vrshrn_n_s32(v321, 0xEuLL);
    *v322.i8 = vrshrn_n_s32(v322, 0xEuLL);
    *v285.i8 = vrshrn_n_s32(vsubq_s32(v285, v301), 0xEuLL);
    *v286.i8 = vrshrn_n_s32(vsubq_s32(v286, v302), 0xEuLL);
    *v287.i8 = vrshrn_n_s32(vsubq_s32(v287, v303), 0xEuLL);
    *v288.i8 = vrshrn_n_s32(vsubq_s32(v288, v304), 0xEuLL);
    v323 = vdupq_n_s16(0x3B21u);
    v324 = vdupq_n_s16(0x187Eu);
    v325 = vmlal_s16(vmull_s16(*v297.i8, *v324.i8), *v278.i8, *v323.i8);
    v326 = vmlal_s16(vmull_s16(*v322.i8, *v324.i8), *v320.i8, *v323.i8);
    v327 = vmlsl_s16(vmull_s16(*v278.i8, *v324.i8), *v297.i8, *v323.i8);
    v328 = vmlsl_s16(vmull_s16(*v320.i8, *v324.i8), *v322.i8, *v323.i8);
    v329 = vmlal_s16(vmull_s16(*v285.i8, *v323.i8), *v287.i8, *v324.i8);
    v330 = vmlal_s16(vmull_s16(*v286.i8, *v323.i8), *v288.i8, *v324.i8);
    v331 = vmlsl_s16(vmull_s16(*v287.i8, *v323.i8), *v285.i8, *v324.i8);
    v332 = vmlsl_s16(vmull_s16(*v288.i8, *v323.i8), *v286.i8, *v324.i8);
    v333 = vaddq_s16(v316, v309);
    v334 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v331, v325), 0xEuLL), vaddq_s32(v332, v326), 0xEuLL);
    v335 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v329, v327), 0xEuLL), vaddq_s32(v330, v328), 0xEuLL);
    *v285.i8 = vrshrn_n_s32(vsubq_s32(v325, v331), 0xEuLL);
    *v325.i8 = vrshrn_n_s32(vsubq_s32(v326, v332), 0xEuLL);
    *v329.i8 = vrshrn_n_s32(vsubq_s32(v327, v329), 0xEuLL);
    *v327.i8 = vrshrn_n_s32(vsubq_s32(v328, v330), 0xEuLL);
    v336 = vdupq_n_s16(0x2D41u);
    *v296.i8 = vsub_s16(*v296.i8, *v310.i8);
    *v305.i8 = vsub_s16(*v305.i8, *v315.i8);
    v337 = vmlsl_s16(vmull_s16(*v296.i8, *v336.i8), *v305.i8, *v336.i8);
    v338 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v313, *v336.i8), v308, *v336.i8), 0xEuLL), vmlal_s16(vmull_s16(*v305.i8, *v336.i8), *v296.i8, *v336.i8), 0xEuLL);
    v339 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v308, *v336.i8), v313, *v336.i8), 0xEuLL), v337, 0xEuLL);
    v340 = vmlsl_s16(vmull_s16(*v285.i8, *v336.i8), *v329.i8, *v336.i8);
    v341 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v329.i8, *v336.i8), *v285.i8, *v336.i8), 0xEuLL), vmlal_s16(vmull_s16(*v327.i8, *v336.i8), *v325.i8, *v336.i8), 0xEuLL);
    v342 = vnegq_s16(v334);
    v343 = vnegq_s16(v338);
    v344 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v340, 0xEuLL), vmlsl_s16(vmull_s16(*v325.i8, *v336.i8), *v327.i8, *v336.i8), 0xEuLL));
    v345 = vnegq_s16(vaddq_s16(v314, v318));
    v346 = vtrn1q_s16(v333, v342);
    v347 = vtrn2q_s16(v333, v342);
    v348 = vtrn1q_s16(v341, v343);
    v349 = vtrn2q_s16(v341, v343);
    v350 = vtrn1q_s16(v339, v344);
    v351 = vtrn2q_s16(v339, v344);
    v352 = vtrn1q_s16(v335, v345);
    v353 = vtrn2q_s16(v335, v345);
    v354 = vtrn1q_s32(v346, v348);
    v355 = vtrn2q_s32(v346, v348);
    v356 = vtrn1q_s32(v347, v349);
    v357 = vtrn2q_s32(v347, v349);
    v358 = vtrn1q_s32(v350, v352);
    v359 = vtrn2q_s32(v350, v352);
    v360 = vtrn1q_s32(v351, v353);
    v361 = vtrn2q_s32(v351, v353);
    v362 = vzip2q_s64(v354, v358);
    v363 = vzip2q_s64(v356, v360);
    v364 = vzip2q_s64(v355, v359);
    v365 = vzip2q_s64(v357, v361);
    v366 = vdupq_n_s16(0xC7Cu);
    v367 = vdupq_n_s16(0xDC72u);
    v368 = vmull_s16(*v361.i8, *&vextq_s8(v367, v367, 8uLL));
    v369 = vdupq_n_s16(0x3537u);
    v370 = vmull_s16(*v361.i8, *&vextq_s8(v369, v369, 8uLL));
    v371 = vdupq_n_s16(0x3EC5u);
    v372 = vmlsl_high_s16(vmull_s16(*v360.i8, *&vextq_s8(v366, v366, 8uLL)), v365, v371);
    v373 = vmlal_s16(vmull_s16(*v363.i8, *v369.i8), *v357.i8, *v367.i8);
    v374 = vmlal_high_s16(v368, v363, v369);
    v375 = vmlsl_s16(vmull_s16(*v357.i8, *v369.i8), *v363.i8, *v367.i8);
    v376 = vmlsl_high_s16(v370, v363, v367);
    v377 = vmlal_s16(vmull_s16(*v365.i8, *v366.i8), *v356.i8, *v371.i8);
    v378 = vmlal_high_s16(vmull_s16(*v360.i8, *&vextq_s8(v371, v371, 8uLL)), v365, v366);
    *v356.i8 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v356.i8, *v366.i8), *v365.i8, *v371.i8), 0xEuLL);
    *v371.i8 = vrshrn_n_s32(v372, 0xEuLL);
    *v363.i8 = vrshrn_n_s32(v373, 0xEuLL);
    *v365.i8 = vsub_s16(*v356.i8, *v363.i8);
    v379 = vrshrn_high_n_s32(*v356.i8, v372, 0xEuLL);
    *v372.i8 = vrshrn_n_s32(v374, 0xEuLL);
    v380 = vrshrn_high_n_s32(*v363.i8, v374, 0xEuLL);
    *v374.i8 = vrshrn_n_s32(v375, 0xEuLL);
    *v375.i8 = vrshrn_n_s32(v376, 0xEuLL);
    *v377.i8 = vrshrn_n_s32(v377, 0xEuLL);
    *v366.i8 = vsub_s16(*v377.i8, *v374.i8);
    v381 = vrshrn_high_n_s32(*v374.i8, v376, 0xEuLL);
    *v376.i8 = vrshrn_n_s32(v378, 0xEuLL);
    v382 = vrshrn_high_n_s32(*v377.i8, v378, 0xEuLL);
    v383 = vmull_s16(*v354.i8, *v336.i8);
    v384 = vmull_s16(*v358.i8, *&vextq_s8(v336, v336, 8uLL));
    v385 = vmull_s16(*v359.i8, *&vextq_s8(v324, v324, 8uLL));
    v386 = vmull_s16(*v359.i8, *&vextq_s8(v323, v323, 8uLL));
    v387 = vmlal_s16(vmull_s16(*v362.i8, *v336.i8), *v354.i8, *v336.i8);
    v388 = vmlal_high_s16(v384, v362, v336);
    v389 = vmlsl_s16(v383, *v362.i8, *v336.i8);
    v390 = vmlsl_high_s16(v384, v362, v336);
    v391 = vmlsl_s16(vmull_s16(*v355.i8, *v324.i8), *v364.i8, *v323.i8);
    v392 = vmlsl_high_s16(v385, v364, v323);
    v393 = vmlal_s16(vmull_s16(*v364.i8, *v324.i8), *v355.i8, *v323.i8);
    v394 = vmlal_high_s16(v386, v364, v324);
    v395 = vrshrn_high_n_s32(vrshrn_n_s32(v387, 0xEuLL), v388, 0xEuLL);
    v396 = vrshrn_high_n_s32(vrshrn_n_s32(v389, 0xEuLL), v390, 0xEuLL);
    v397 = vrshrn_high_n_s32(vrshrn_n_s32(v391, 0xEuLL), v392, 0xEuLL);
    v398 = vrshrn_high_n_s32(vrshrn_n_s32(v393, 0xEuLL), v394, 0xEuLL);
    v399 = vaddq_s16(v380, v379);
    v400 = vaddq_s16(v382, v381);
    v401 = vaddq_s16(v398, v395);
    v402 = vaddq_s16(v397, v396);
    v403 = vsubq_s16(v396, v397);
    v404 = vsubq_s16(v395, v398);
    *v398.i8 = vsub_s16(*v376.i8, *v375.i8);
    *v391.i8 = vsub_s16(*v371.i8, *v372.i8);
    v405 = vmlal_s16(vmull_s16(*v391.i8, *v336.i8), *v398.i8, *v336.i8);
    v406 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v366.i8, *v336.i8), *v365.i8, *v336.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v398.i8, *v336.i8), *v391.i8, *v336.i8), 0xEuLL);
    v407 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v365.i8, *v336.i8), *v366.i8, *v336.i8), 0xEuLL), v405, 0xEuLL);
    v143 = vaddq_s16(v401, v400);
    v141 = vaddq_s16(v407, v402);
    v139 = vaddq_s16(v406, v403);
    v137 = vaddq_s16(v404, v399);
    v138 = vsubq_s16(v404, v399);
    v140 = vsubq_s16(v403, v406);
    v142 = vsubq_s16(v402, v407);
    v144 = vsubq_s16(v401, v400);
  }

  else if (a4 == 1)
  {
    v145 = vdupq_n_s16(0xC7Cu);
    v146 = vdupq_n_s16(0xDC72u);
    v147 = vdupq_n_s16(0x3537u);
    v148 = vmull_s16(*v33.i8, *v147.i8);
    v149 = vdupq_n_s16(0x3EC5u);
    v150 = vmull_high_s16(v33, v147);
    v151 = vmlsl_high_s16(vmull_high_s16(v28, v145), v32, v149);
    v152 = vmlal_s16(vmull_s16(*v27.i8, *v147.i8), *v33.i8, *v146.i8);
    v153 = vmlal_high_s16(vmull_high_s16(v27, v147), v33, v146);
    v154 = vmlsl_s16(v148, *v27.i8, *v146.i8);
    v155 = vmlsl_high_s16(v150, v27, v146);
    v156 = vmlal_s16(vmull_s16(*v32.i8, *v145.i8), *v28.i8, *v149.i8);
    v157 = vmlal_high_s16(vmull_high_s16(v32, v145), v28, v149);
    v158 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v28.i8, *v145.i8), *v32.i8, *v149.i8), 0xEuLL);
    *v145.i8 = vrshrn_n_s32(v151, 0xEuLL);
    v159 = vrshrn_n_s32(v152, 0xEuLL);
    v160 = vsub_s16(v158, v159);
    v161 = vrshrn_high_n_s32(v158, v151, 0xEuLL);
    *v146.i8 = vrshrn_n_s32(v153, 0xEuLL);
    v162 = vrshrn_high_n_s32(v159, v153, 0xEuLL);
    *v151.i8 = vrshrn_n_s32(v154, 0xEuLL);
    *v153.i8 = vrshrn_n_s32(v155, 0xEuLL);
    *v154.i8 = vrshrn_n_s32(v156, 0xEuLL);
    *v156.i8 = vsub_s16(*v154.i8, *v151.i8);
    v163 = vrshrn_high_n_s32(*v151.i8, v155, 0xEuLL);
    *v152.i8 = vrshrn_n_s32(v157, 0xEuLL);
    v164 = vrshrn_high_n_s32(*v154.i8, v157, 0xEuLL);
    v165 = vdupq_n_s16(0x2D41u);
    v166 = vdupq_n_s16(0x187Eu);
    v167 = vdupq_n_s16(0x3B21u);
    v168 = vmlal_s16(vmull_s16(*v25.i8, *v165.i8), *v26.i8, *v165.i8);
    v169 = vmlal_high_s16(vmull_high_s16(v25, v165), v26, v165);
    v170 = vmlsl_s16(vmull_s16(*v26.i8, *v165.i8), *v25.i8, *v165.i8);
    v171 = vmlsl_high_s16(vmull_high_s16(v26, v165), v25, v165);
    v172 = vmlsl_s16(vmull_s16(*v30.i8, *v166.i8), *v29.i8, *v167.i8);
    v173 = vmlsl_high_s16(vmull_high_s16(v30, v166), v29, v167);
    v174 = vmlal_s16(vmull_s16(*v29.i8, *v166.i8), *v30.i8, *v167.i8);
    v175 = vmlal_high_s16(vmull_high_s16(v29, v166), v30, v167);
    v176 = vrshrn_high_n_s32(vrshrn_n_s32(v168, 0xEuLL), v169, 0xEuLL);
    v177 = vrshrn_high_n_s32(vrshrn_n_s32(v170, 0xEuLL), v171, 0xEuLL);
    v178 = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xEuLL), v173, 0xEuLL);
    v179 = vrshrn_high_n_s32(vrshrn_n_s32(v174, 0xEuLL), v175, 0xEuLL);
    v180 = vaddq_s16(v162, v161);
    v181 = vaddq_s16(v164, v163);
    v182 = vaddq_s16(v179, v176);
    v183 = vaddq_s16(v178, v177);
    v184 = vsubq_s16(v177, v178);
    v185 = vsubq_s16(v176, v179);
    *v178.i8 = vsub_s16(*v152.i8, *v153.i8);
    *v145.i8 = vsub_s16(*v145.i8, *v146.i8);
    v186 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v156.i8, *v165.i8), v160, *v165.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v178.i8, *v165.i8), *v145.i8, *v165.i8), 0xEuLL);
    v187 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v160, *v165.i8), *v156.i8, *v165.i8), 0xEuLL), vmlal_s16(vmull_s16(*v145.i8, *v165.i8), *v178.i8, *v165.i8), 0xEuLL);
    v188 = vaddq_s16(v182, v181);
    v189 = vaddq_s16(v187, v183);
    v190 = vaddq_s16(v186, v184);
    v191 = vaddq_s16(v185, v180);
    v192 = vsubq_s16(v185, v180);
    v193 = vsubq_s16(v184, v186);
    v194 = vsubq_s16(v183, v187);
    v195 = vsubq_s16(v182, v181);
    v196 = vtrn1q_s16(v188, v189);
    v197 = vtrn2q_s16(v188, v189);
    v198 = vtrn1q_s16(v190, v191);
    v199 = vtrn2q_s16(v190, v191);
    v200 = vtrn1q_s16(v192, v193);
    v201 = vtrn2q_s16(v192, v193);
    v202 = vtrn1q_s16(v194, v195);
    v203 = vtrn2q_s16(v194, v195);
    v204 = vtrn1q_s32(v196, v198);
    v205 = vtrn2q_s32(v196, v198);
    v206 = vtrn1q_s32(v197, v199);
    v207 = vtrn2q_s32(v197, v199);
    v208 = vtrn1q_s32(v200, v202);
    v209 = vtrn2q_s32(v200, v202);
    v210 = vtrn1q_s32(v201, v203);
    v211 = vtrn2q_s32(v201, v203);
    v212 = vzip2q_s64(v204, v208);
    v213 = vzip2q_s64(v206, v210);
    v214 = vzip2q_s64(v205, v209);
    v215 = vdupq_n_s16(0x3FB1u);
    v216 = vzip2q_s64(v207, v211);
    v217 = vdupq_n_s16(0x646u);
    v218 = vmull_s16(*v216.i8, *v217.i8);
    v195.i64[0] = vextq_s8(v217, v217, 8uLL).u64[0];
    v219 = vmull_high_s16(v216, v217);
    v220 = vmlal_s16(vmull_s16(*v204.i8, *v217.i8), *v216.i8, *v215.i8);
    v221 = vmlal_high_s16(vmull_s16(*v208.i8, *v195.i8), v216, v215);
    v222 = vmlsl_s16(v218, *v204.i8, *v215.i8);
    v223 = vmlsl_s16(v219, *v208.i8, *&vextq_s8(v215, v215, 8uLL));
    v224 = vdupq_n_s16(0x3871u);
    v225 = vdupq_n_s16(0x1E2Bu);
    v226 = vmull_s16(*v213.i8, *v225.i8);
    v199.i64[0] = vextq_s8(v225, v225, 8uLL).u64[0];
    v227 = vmull_high_s16(v213, v225);
    v228 = vmlal_s16(vmull_s16(*v205.i8, *v225.i8), *v213.i8, *v224.i8);
    v229 = vmlal_high_s16(vmull_s16(*v209.i8, *v199.i8), v213, v224);
    v230 = vmlsl_s16(v226, *v205.i8, *v224.i8);
    v231 = vmlsl_s16(v227, *v209.i8, *&vextq_s8(v224, v224, 8uLL));
    v232 = vdupq_n_s16(0x289Au);
    v233 = vmull_s16(*v211.i8, *&vextq_s8(v232, v232, 8uLL));
    v234 = vdupq_n_s16(0x3179u);
    v235 = vmull_s16(*v211.i8, *&vextq_s8(v234, v234, 8uLL));
    v236 = vmlal_s16(vmull_s16(*v212.i8, *v234.i8), *v207.i8, *v232.i8);
    v237 = vmlal_high_s16(v233, v212, v234);
    v238 = vmlsl_s16(vmull_s16(*v207.i8, *v234.i8), *v212.i8, *v232.i8);
    v239 = vdupq_n_s16(0x1294u);
    v240 = vmlsl_high_s16(v235, v212, v232);
    v241 = vdupq_n_s16(0x3D3Fu);
    v242 = vmlal_s16(vmull_s16(*v214.i8, *v241.i8), *v206.i8, *v239.i8);
    v243 = vmlal_high_s16(vmull_s16(*v210.i8, *&vextq_s8(v239, v239, 8uLL)), v214, v241);
    v244 = vmlsl_s16(vmull_s16(*v206.i8, *v241.i8), *v214.i8, *v239.i8);
    v245 = vmlsl_high_s16(vmull_s16(*v210.i8, *&vextq_s8(v241, v241, 8uLL)), v214, v239);
    v246 = vaddq_s32(v237, v221);
    *v241.i8 = vrshrn_n_s32(vaddq_s32(v236, v220), 0xEuLL);
    *v206.i8 = vrshrn_n_s32(v246, 0xEuLL);
    *v239.i8 = vrshrn_n_s32(vaddq_s32(v242, v228), 0xEuLL);
    v247 = vsub_s16(*v241.i8, *v239.i8);
    v248 = vrshrn_high_n_s32(*v241.i8, v246, 0xEuLL);
    v249 = vaddq_s32(v240, v223);
    v250 = vrshrn_n_s32(vaddq_s32(v238, v222), 0xEuLL);
    *v241.i8 = vrshrn_n_s32(v249, 0xEuLL);
    v251 = vrshrn_n_s32(vaddq_s32(v244, v230), 0xEuLL);
    *v246.i8 = vsub_s16(v250, v251);
    v252 = vrshrn_high_n_s32(v250, v249, 0xEuLL);
    v253 = vaddq_s32(v243, v229);
    v254 = vrshrn_n_s32(v253, 0xEuLL);
    v255 = vrshrn_high_n_s32(*v239.i8, v253, 0xEuLL);
    v256 = vaddq_s32(v245, v231);
    *v220.i8 = vrshrn_n_s32(vsubq_s32(v220, v236), 0xEuLL);
    *v221.i8 = vrshrn_n_s32(vsubq_s32(v221, v237), 0xEuLL);
    *v222.i8 = vrshrn_n_s32(vsubq_s32(v222, v238), 0xEuLL);
    *v223.i8 = vrshrn_n_s32(vsubq_s32(v223, v240), 0xEuLL);
    *v228.i8 = vrshrn_n_s32(vsubq_s32(v228, v242), 0xEuLL);
    *v229.i8 = vrshrn_n_s32(vsubq_s32(v229, v243), 0xEuLL);
    *v230.i8 = vrshrn_n_s32(vsubq_s32(v230, v244), 0xEuLL);
    *v231.i8 = vrshrn_n_s32(vsubq_s32(v231, v245), 0xEuLL);
    v257 = vmull_s16(*v220.i8, *v166.i8);
    v258 = vmlal_s16(vmull_s16(*v222.i8, *v166.i8), *v220.i8, *v167.i8);
    v259 = vmlal_s16(vmull_s16(*v223.i8, *v166.i8), *v221.i8, *v167.i8);
    v260 = vmlsl_s16(v257, *v222.i8, *v167.i8);
    v261 = vmlsl_s16(vmull_s16(*v221.i8, *v166.i8), *v223.i8, *v167.i8);
    v262 = vmull_s16(*v230.i8, *v167.i8);
    v263 = vmull_s16(*v231.i8, *v167.i8);
    v264 = vmlal_s16(vmull_s16(*v228.i8, *v167.i8), *v230.i8, *v166.i8);
    v265 = vmlal_s16(vmull_s16(*v229.i8, *v167.i8), *v231.i8, *v166.i8);
    v266 = vmlsl_s16(v262, *v228.i8, *v166.i8);
    v267 = vmlsl_s16(v263, *v229.i8, *v166.i8);
    v143 = vaddq_s16(v255, v248);
    v268 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v266, v258), 0xEuLL), vaddq_s32(v267, v259), 0xEuLL);
    v142 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v264, v260), 0xEuLL), vaddq_s32(v265, v261), 0xEuLL);
    *v166.i8 = vrshrn_n_s32(vsubq_s32(v258, v266), 0xEuLL);
    *v266.i8 = vrshrn_n_s32(vsubq_s32(v259, v267), 0xEuLL);
    *v228.i8 = vrshrn_n_s32(vsubq_s32(v260, v264), 0xEuLL);
    *v265.i8 = vrshrn_n_s32(vsubq_s32(v261, v265), 0xEuLL);
    *v229.i8 = vsub_s16(*v206.i8, v254);
    *v261.i8 = vsub_s16(*v241.i8, vrshrn_n_s32(v256, 0xEuLL));
    v269 = vmlsl_s16(vmull_s16(*v229.i8, *v165.i8), *v261.i8, *v165.i8);
    v270 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v246.i8, *v165.i8), v247, *v165.i8), 0xEuLL), vmlal_s16(vmull_s16(*v261.i8, *v165.i8), *v229.i8, *v165.i8), 0xEuLL);
    v138 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v247, *v165.i8), *v246.i8, *v165.i8), 0xEuLL), v269, 0xEuLL);
    v271 = vmlsl_s16(vmull_s16(*v166.i8, *v165.i8), *v228.i8, *v165.i8);
    v139 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v228.i8, *v165.i8), *v166.i8, *v165.i8), 0xEuLL), vmlal_s16(vmull_s16(*v265.i8, *v165.i8), *v266.i8, *v165.i8), 0xEuLL);
    v272 = vrshrn_high_n_s32(vrshrn_n_s32(v271, 0xEuLL), vmlsl_s16(vmull_s16(*v266.i8, *v165.i8), *v265.i8, *v165.i8), 0xEuLL);
    v141 = vnegq_s16(v268);
    v137 = vnegq_s16(v270);
    v140 = vnegq_s16(v272);
    v144 = vnegq_s16(vaddq_s16(v252, vrshrn_high_n_s32(v251, v256, 0xEuLL)));
  }

  else if (a4)
  {
    v408 = vdupq_n_s16(0x3FB1u);
    v409 = vdupq_n_s16(0x646u);
    v410 = vmlal_s16(vmull_s16(*v26.i8, *v409.i8), *v32.i8, *v408.i8);
    v411 = vmlal_high_s16(vmull_high_s16(v26, v409), v32, v408);
    v412 = vmlsl_s16(vmull_s16(*v32.i8, *v409.i8), *v26.i8, *v408.i8);
    v413 = vdupq_n_s16(0x3871u);
    v414 = vdupq_n_s16(0x1E2Bu);
    v415 = vmlsl_high_s16(vmull_high_s16(v32, v409), v26, v408);
    v416 = vmlal_s16(vmull_s16(*v30.i8, *v414.i8), *v27.i8, *v413.i8);
    v417 = vmlal_high_s16(vmull_high_s16(v30, v414), v27, v413);
    v418 = vmlsl_s16(vmull_s16(*v27.i8, *v414.i8), *v30.i8, *v413.i8);
    v419 = vmlsl_high_s16(vmull_high_s16(v27, v414), v30, v413);
    v420 = vdupq_n_s16(0x289Au);
    v421 = vdupq_n_s16(0x3179u);
    v422 = vmlal_s16(vmull_s16(*v25.i8, *v421.i8), *v33.i8, *v420.i8);
    v423 = vmlal_high_s16(vmull_high_s16(v25, v421), v33, v420);
    v424 = vmlsl_s16(vmull_s16(*v33.i8, *v421.i8), *v25.i8, *v420.i8);
    v425 = vmlsl_high_s16(vmull_high_s16(v33, v421), v25, v420);
    v426 = vdupq_n_s16(0x1294u);
    v427 = vdupq_n_s16(0x3D3Fu);
    v428 = vmlal_s16(vmull_s16(*v29.i8, *v427.i8), *v28.i8, *v426.i8);
    v429 = vmlal_high_s16(vmull_high_s16(v29, v427), v28, v426);
    v430 = vmlsl_s16(vmull_s16(*v28.i8, *v427.i8), *v29.i8, *v426.i8);
    v431 = vmlsl_high_s16(vmull_high_s16(v28, v427), v29, v426);
    v543 = vaddq_s32(v423, v411);
    v432 = vrshrn_n_s32(vaddq_s32(v422, v410), 0xEuLL);
    v433 = vrshrn_n_s32(vaddq_s32(v428, v416), 0xEuLL);
    v434 = vsub_s16(v432, v433);
    v435 = vsubq_s32(v410, v422);
    v436 = vaddq_s32(v425, v415);
    v437 = vrshrn_n_s32(vaddq_s32(v424, v412), 0xEuLL);
    v438 = vsubq_s32(v411, v423);
    *v423.i8 = vrshrn_n_s32(vaddq_s32(v430, v418), 0xEuLL);
    v439 = vsubq_s32(v412, v424);
    *v412.i8 = vsub_s16(v437, *v423.i8);
    v440 = vsubq_s32(v415, v425);
    v441 = vaddq_s32(v429, v417);
    v442 = vrshrn_high_n_s32(v433, v441, 0xEuLL);
    v443 = vsubq_s32(v416, v428);
    v444 = vaddq_s32(v431, v419);
    *v416.i8 = vrshrn_n_s32(v435, 0xEuLL);
    *v438.i8 = vrshrn_n_s32(v438, 0xEuLL);
    *v439.i8 = vrshrn_n_s32(v439, 0xEuLL);
    *v435.i8 = vrshrn_n_s32(v440, 0xEuLL);
    v445 = vsubq_s32(v417, v429);
    *v417.i8 = vrshrn_n_s32(v443, 0xEuLL);
    *v429.i8 = vrshrn_n_s32(v445, 0xEuLL);
    *v418.i8 = vrshrn_n_s32(vsubq_s32(v418, v430), 0xEuLL);
    *v419.i8 = vrshrn_n_s32(vsubq_s32(v419, v431), 0xEuLL);
    *v445.i8 = vdup_n_s16(0x3B21u);
    *v443.i8 = vdup_n_s16(0x187Eu);
    v446 = vmlal_s16(vmull_s16(*v439.i8, *v443.i8), *v416.i8, *v445.i8);
    v447 = vmlsl_s16(vmull_s16(*v416.i8, *v443.i8), *v439.i8, *v445.i8);
    v448 = vmlal_s16(vmull_s16(*v435.i8, *v443.i8), *v438.i8, *v445.i8);
    v449 = vmlsl_s16(vmull_s16(*v438.i8, *v443.i8), *v435.i8, *v445.i8);
    v450 = vmlal_s16(vmull_s16(*v417.i8, *v445.i8), *v418.i8, *v443.i8);
    v451 = vmlsl_s16(vmull_s16(*v418.i8, *v445.i8), *v417.i8, *v443.i8);
    v452 = vmlal_s16(vmull_s16(*v429.i8, *v445.i8), *v419.i8, *v443.i8);
    v453 = vmlsl_s16(vmull_s16(*v419.i8, *v445.i8), *v429.i8, *v443.i8);
    v454 = vaddq_s16(v442, vrshrn_high_n_s32(v432, v543, 0xEuLL));
    v455 = vaddq_s16(vrshrn_high_n_s32(v437, v436, 0xEuLL), vrshrn_high_n_s32(*v423.i8, v444, 0xEuLL));
    v456 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v451, v446), 0xEuLL), vaddq_s32(v453, v448), 0xEuLL);
    v457 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v450, v447), 0xEuLL), vaddq_s32(v452, v449), 0xEuLL);
    v458 = vsubq_s32(v448, v453);
    *v423.i8 = vsub_s16(vrshrn_n_s32(v543, 0xEuLL), vrshrn_n_s32(v441, 0xEuLL));
    *v453.i8 = vdup_n_s16(0x2D41u);
    *v436.i8 = vsub_s16(vrshrn_n_s32(v436, 0xEuLL), vrshrn_n_s32(v444, 0xEuLL));
    v459 = vmlal_s16(vmull_s16(*v436.i8, *v453.i8), *v423.i8, *v453.i8);
    *v446.i8 = vrshrn_n_s32(vsubq_s32(v446, v451), 0xEuLL);
    *v458.i8 = vrshrn_n_s32(v458, 0xEuLL);
    *v447.i8 = vrshrn_n_s32(vsubq_s32(v447, v450), 0xEuLL);
    *v450.i8 = vrshrn_n_s32(vsubq_s32(v449, v452), 0xEuLL);
    v460 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v434, *v453.i8), *v412.i8, *v453.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v423.i8, *v453.i8), *v436.i8, *v453.i8), 0xEuLL);
    v461 = vmlal_s16(vmull_s16(*v447.i8, *v453.i8), *v446.i8, *v453.i8);
    v462 = vmlsl_s16(vmull_s16(*v446.i8, *v453.i8), *v447.i8, *v453.i8);
    v463 = vmlal_s16(vmull_s16(*v450.i8, *v453.i8), *v458.i8, *v453.i8);
    v464 = vmlsl_s16(vmull_s16(*v458.i8, *v453.i8), *v450.i8, *v453.i8);
    v465 = vrshrn_high_n_s32(vrshrn_n_s32(v461, 0xEuLL), v463, 0xEuLL);
    v466 = vrshrn_high_n_s32(vrshrn_n_s32(v462, 0xEuLL), v464, 0xEuLL);
    v467 = vnegq_s16(v456);
    v468 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v412.i8, *v453.i8), v434, *v453.i8), 0xEuLL), v459, 0xEuLL));
    v469 = vnegq_s16(v466);
    v470 = vnegq_s16(v455);
    v471 = vtrn1q_s16(v454, v467);
    v472 = vtrn2q_s16(v454, v467);
    v473 = vtrn1q_s16(v465, v468);
    v474 = vtrn2q_s16(v465, v468);
    v475 = vtrn1q_s16(v460, v469);
    v476 = vtrn2q_s16(v460, v469);
    v477 = vtrn1q_s16(v457, v470);
    v478 = vtrn2q_s16(v457, v470);
    v479 = vtrn1q_s32(v471, v473);
    v480 = vtrn2q_s32(v471, v473);
    v481 = vtrn1q_s32(v472, v474);
    v482 = vtrn2q_s32(v472, v474);
    v483 = vtrn1q_s32(v475, v477);
    v484 = vtrn2q_s32(v475, v477);
    v485 = vtrn1q_s32(v476, v478);
    v486 = vtrn2q_s32(v476, v478);
    v487 = vzip2q_s64(v482, v486);
    v488 = vmlal_s16(vmull_s16(*v479.i8, *v409.i8), *v487.i8, *v408.i8);
    v489 = vmlal_high_s16(vmull_s16(*v483.i8, *&vextq_s8(v409, v409, 8uLL)), v487, v408);
    v490 = vmlsl_s16(vmull_s16(*v487.i8, *v409.i8), *v479.i8, *v408.i8);
    v491 = vzip2q_s64(v479, v483);
    v492 = vmull_high_s16(v487, v409);
    v493 = vzip2q_s64(v481, v485);
    v494 = vmlsl_s16(v492, *v483.i8, *&vextq_s8(v408, v408, 8uLL));
    v495 = vmlal_s16(vmull_s16(*v480.i8, *v414.i8), *v493.i8, *v413.i8);
    v496 = vmlal_high_s16(vmull_s16(*v484.i8, *&vextq_s8(v414, v414, 8uLL)), v493, v413);
    v497 = vmlsl_s16(vmull_s16(*v493.i8, *v414.i8), *v480.i8, *v413.i8);
    v498 = vmlsl_s16(vmull_high_s16(v493, v414), *v484.i8, *&vextq_s8(v413, v413, 8uLL));
    v499 = vzip2q_s64(v480, v484);
    v500 = vmull_s16(*v486.i8, *&vextq_s8(v420, v420, 8uLL));
    v501 = vmull_s16(*v486.i8, *&vextq_s8(v421, v421, 8uLL));
    v502 = vmlal_s16(vmull_s16(*v491.i8, *v421.i8), *v482.i8, *v420.i8);
    v503 = vmlal_high_s16(v500, v491, v421);
    v504 = vmlsl_s16(vmull_s16(*v482.i8, *v421.i8), *v491.i8, *v420.i8);
    v505 = vmlsl_high_s16(v501, v491, v420);
    v506 = vmlal_s16(vmull_s16(*v499.i8, *v427.i8), *v481.i8, *v426.i8);
    v507 = vmlal_high_s16(vmull_s16(*v485.i8, *&vextq_s8(v426, v426, 8uLL)), v499, v427);
    v508 = vmlsl_s16(vmull_s16(*v481.i8, *v427.i8), *v499.i8, *v426.i8);
    v509 = vmlsl_high_s16(vmull_s16(*v485.i8, *&vextq_s8(v427, v427, 8uLL)), v499, v426);
    v510 = vaddq_s32(v503, v489);
    *v420.i8 = vrshrn_n_s32(vaddq_s32(v502, v488), 0xEuLL);
    v511 = vaddq_s32(v505, v494);
    *v493.i8 = vrshrn_n_s32(vaddq_s32(v504, v490), 0xEuLL);
    v512 = vsubq_s32(v488, v502);
    v513 = vaddq_s32(v507, v496);
    *v414.i8 = vrshrn_n_s32(vaddq_s32(v506, v495), 0xEuLL);
    v514 = vsubq_s32(v489, v503);
    v515 = vaddq_s32(v509, v498);
    *v427.i8 = vrshrn_n_s32(vaddq_s32(v508, v497), 0xEuLL);
    *v503.i8 = vrshrn_n_s32(v512, 0xEuLL);
    *v514.i8 = vrshrn_n_s32(v514, 0xEuLL);
    *v504.i8 = vrshrn_n_s32(vsubq_s32(v490, v504), 0xEuLL);
    *v489.i8 = vrshrn_n_s32(vsubq_s32(v494, v505), 0xEuLL);
    *v494.i8 = vrshrn_n_s32(vsubq_s32(v495, v506), 0xEuLL);
    *v505.i8 = vrshrn_n_s32(vsubq_s32(v496, v507), 0xEuLL);
    v516 = vsubq_s32(v498, v509);
    *v509.i8 = vrshrn_n_s32(vsubq_s32(v497, v508), 0xEuLL);
    *v507.i8 = vrshrn_n_s32(v516, 0xEuLL);
    v517 = vmlal_s16(vmull_s16(*v504.i8, *v443.i8), *v503.i8, *v445.i8);
    v518 = vmlal_s16(vmull_s16(*v489.i8, *v443.i8), *v514.i8, *v445.i8);
    v519 = vmlsl_s16(vmull_s16(*v503.i8, *v443.i8), *v504.i8, *v445.i8);
    v520 = vmlsl_s16(vmull_s16(*v514.i8, *v443.i8), *v489.i8, *v445.i8);
    v521 = vmull_s16(*v509.i8, *v445.i8);
    v522 = vmull_s16(*v507.i8, *v445.i8);
    v523 = vmlal_s16(vmull_s16(*v494.i8, *v445.i8), *v509.i8, *v443.i8);
    v524 = vmlal_s16(vmull_s16(*v505.i8, *v445.i8), *v507.i8, *v443.i8);
    v525 = vmlsl_s16(v521, *v494.i8, *v443.i8);
    v526 = vmlsl_s16(v522, *v505.i8, *v443.i8);
    *v443.i8 = vrshrn_n_s32(vsubq_s32(v517, v525), 0xEuLL);
    *v494.i8 = vrshrn_n_s32(vsubq_s32(v518, v526), 0xEuLL);
    *v503.i8 = vrshrn_n_s32(vsubq_s32(v519, v523), 0xEuLL);
    *v509.i8 = vrshrn_n_s32(vsubq_s32(v520, v524), 0xEuLL);
    *v504.i8 = vsub_s16(*v420.i8, *v414.i8);
    *v491.i8 = vsub_s16(vrshrn_n_s32(v510, 0xEuLL), vrshrn_n_s32(v513, 0xEuLL));
    *v481.i8 = vsub_s16(*v493.i8, *v427.i8);
    *v436.i8 = vsub_s16(vrshrn_n_s32(v511, 0xEuLL), vrshrn_n_s32(v515, 0xEuLL));
    v527 = vmlal_s16(vmull_s16(*v481.i8, *v453.i8), *v504.i8, *v453.i8);
    v528 = vmlsl_s16(vmull_s16(*v504.i8, *v453.i8), *v481.i8, *v453.i8);
    v529 = vmlal_s16(vmull_s16(*v436.i8, *v453.i8), *v491.i8, *v453.i8);
    v530 = vmlsl_s16(vmull_s16(*v491.i8, *v453.i8), *v436.i8, *v453.i8);
    v531 = vmlal_s16(vmull_s16(*v503.i8, *v453.i8), *v443.i8, *v453.i8);
    v532 = vmlsl_s16(vmull_s16(*v443.i8, *v453.i8), *v503.i8, *v453.i8);
    v533 = vmlal_s16(vmull_s16(*v509.i8, *v453.i8), *v494.i8, *v453.i8);
    v534 = vmlsl_s16(vmull_s16(*v494.i8, *v453.i8), *v509.i8, *v453.i8);
    v143 = vaddq_s16(vrshrn_high_n_s32(*v414.i8, v513, 0xEuLL), vrshrn_high_n_s32(*v420.i8, v510, 0xEuLL));
    v535 = vaddq_s16(vrshrn_high_n_s32(*v493.i8, v511, 0xEuLL), vrshrn_high_n_s32(*v427.i8, v515, 0xEuLL));
    v142 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v523, v519), 0xEuLL), vaddq_s32(v524, v520), 0xEuLL);
    v138 = vrshrn_high_n_s32(vrshrn_n_s32(v528, 0xEuLL), v530, 0xEuLL);
    v139 = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xEuLL), v533, 0xEuLL);
    v141 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v525, v517), 0xEuLL), vaddq_s32(v526, v518), 0xEuLL));
    v137 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v527, 0xEuLL), v529, 0xEuLL));
    v140 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v532, 0xEuLL), v534, 0xEuLL));
    v144 = vnegq_s16(v535);
  }

  else
  {
    v34 = vdupq_n_s16(0xC7Cu);
    v35 = vdupq_n_s16(0xDC72u);
    v36 = vdupq_n_s16(0x3537u);
    v37 = vdupq_n_s16(0x3EC5u);
    v38 = vmlsl_s16(vmull_s16(*v28.i8, *v34.i8), *v32.i8, *v37.i8);
    v39 = vmlsl_high_s16(vmull_high_s16(v28, v34), v32, v37);
    v40 = vmlal_s16(vmull_s16(*v27.i8, *v36.i8), *v33.i8, *v35.i8);
    v41 = vmlal_high_s16(vmull_high_s16(v27, v36), v33, v35);
    v42 = vmlsl_s16(vmull_s16(*v33.i8, *v36.i8), *v27.i8, *v35.i8);
    v43 = vmlsl_high_s16(vmull_high_s16(v33, v36), v27, v35);
    v44 = vmlal_s16(vmull_s16(*v32.i8, *v34.i8), *v28.i8, *v37.i8);
    v45 = vmlal_high_s16(vmull_high_s16(v32, v34), v28, v37);
    v46 = vdupq_n_s16(0x2D41u);
    v47 = vmull_s16(*v26.i8, *v46.i8);
    v48 = vmull_high_s16(v26, v46);
    v49 = vdupq_n_s16(0x187Eu);
    v50 = vmlal_s16(vmull_s16(*v25.i8, *v46.i8), *v26.i8, *v46.i8);
    v51 = vmlal_high_s16(vmull_high_s16(v25, v46), v26, v46);
    v52 = vdupq_n_s16(0x3B21u);
    v53 = vmlsl_s16(vmull_s16(*v30.i8, *v49.i8), *v29.i8, *v52.i8);
    v54 = vmlsl_high_s16(vmull_high_s16(v30, v49), v29, v52);
    v55 = vmlal_s16(vmull_s16(*v29.i8, *v49.i8), *v30.i8, *v52.i8);
    v56 = vmlal_high_s16(vmull_high_s16(v29, v49), v30, v52);
    v57 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xEuLL), v51, 0xEuLL);
    v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v47, *v25.i8, *v46.i8), 0xEuLL), vmlsl_high_s16(v48, v25, v46), 0xEuLL);
    v59 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xEuLL), v54, 0xEuLL);
    *v38.i8 = vrshrn_n_s32(v38, 0xEuLL);
    *v40.i8 = vrshrn_n_s32(v40, 0xEuLL);
    v60 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xEuLL), v56, 0xEuLL);
    *v54.i8 = vsub_s16(*v38.i8, *v40.i8);
    *v42.i8 = vrshrn_n_s32(v42, 0xEuLL);
    *v44.i8 = vrshrn_n_s32(v44, 0xEuLL);
    v61 = vaddq_s16(vrshrn_high_n_s32(*v40.i8, v41, 0xEuLL), vrshrn_high_n_s32(*v38.i8, v39, 0xEuLL));
    *v40.i8 = vsub_s16(*v44.i8, *v42.i8);
    v62 = vaddq_s16(vrshrn_high_n_s32(*v44.i8, v45, 0xEuLL), vrshrn_high_n_s32(*v42.i8, v43, 0xEuLL));
    v63 = vaddq_s16(v59, v58);
    v64 = vsubq_s16(v58, v59);
    v65 = vaddq_s16(v60, v57);
    v66 = vsubq_s16(v57, v60);
    *v58.i8 = vsub_s16(vrshrn_n_s32(v45, 0xEuLL), vrshrn_n_s32(v43, 0xEuLL));
    *v45.i8 = vsub_s16(vrshrn_n_s32(v39, 0xEuLL), vrshrn_n_s32(v41, 0xEuLL));
    v67 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v40.i8, *v46.i8), *v54.i8, *v46.i8), 0xEuLL), vmlsl_s16(vmull_s16(*v58.i8, *v46.i8), *v45.i8, *v46.i8), 0xEuLL);
    v68 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v54.i8, *v46.i8), *v40.i8, *v46.i8), 0xEuLL), vmlal_s16(vmull_s16(*v45.i8, *v46.i8), *v58.i8, *v46.i8), 0xEuLL);
    v69 = vaddq_s16(v65, v62);
    v70 = vaddq_s16(v66, v61);
    v71 = vsubq_s16(v66, v61);
    v72 = vaddq_s16(v67, v64);
    v73 = vsubq_s16(v64, v67);
    v74 = vaddq_s16(v68, v63);
    v75 = vsubq_s16(v63, v68);
    v76 = vsubq_s16(v65, v62);
    v77 = vtrn1q_s16(v69, v74);
    v78 = vtrn2q_s16(v69, v74);
    v79 = vtrn1q_s16(v72, v70);
    v80 = vtrn2q_s16(v72, v70);
    v81 = vtrn1q_s16(v71, v73);
    v82 = vtrn2q_s16(v71, v73);
    v83 = vtrn1q_s16(v75, v76);
    v84 = vtrn2q_s16(v75, v76);
    v85 = vtrn1q_s32(v77, v79);
    v86 = vtrn2q_s32(v77, v79);
    v87 = vtrn1q_s32(v78, v80);
    v88 = vtrn2q_s32(v78, v80);
    v89 = vtrn1q_s32(v81, v83);
    v90 = vtrn2q_s32(v81, v83);
    v91 = vtrn1q_s32(v82, v84);
    v92 = vtrn2q_s32(v82, v84);
    v93 = vzip2q_s64(v87, v91);
    v94 = vmlal_high_s16(vmull_s16(*v92.i8, *&vextq_s8(v35, v35, 8uLL)), v93, v36);
    v95 = vmlsl_s16(vmull_s16(*v88.i8, *v36.i8), *v93.i8, *v35.i8);
    v96 = vmlsl_high_s16(vmull_s16(*v92.i8, *&vextq_s8(v36, v36, 8uLL)), v93, v35);
    v97 = vmlal_s16(vmull_s16(*v93.i8, *v36.i8), *v88.i8, *v35.i8);
    v98 = vzip2q_s64(v88, v92);
    v99 = vzip2q_s64(v85, v89);
    v100 = vmull_s16(*v91.i8, *&vextq_s8(v34, v34, 8uLL));
    v101 = vmull_s16(*v91.i8, *&vextq_s8(v37, v37, 8uLL));
    v102 = vmlal_s16(vmull_s16(*v98.i8, *v34.i8), *v87.i8, *v37.i8);
    v103 = vmlsl_high_s16(v100, v98, v37);
    v104 = vzip2q_s64(v86, v90);
    v105 = vmlal_high_s16(v101, v98, v34);
    *v34.i8 = vrshrn_n_s32(vmlsl_s16(vmull_s16(*v87.i8, *v34.i8), *v98.i8, *v37.i8), 0xEuLL);
    *v37.i8 = vrshrn_n_s32(v97, 0xEuLL);
    *v97.i8 = vrshrn_n_s32(v95, 0xEuLL);
    v106 = vmull_s16(*v90.i8, *&vextq_s8(v49, v49, 8uLL));
    v107 = vmull_s16(*v90.i8, *&vextq_s8(v52, v52, 8uLL));
    v108 = vmlal_s16(vmull_s16(*v104.i8, *v49.i8), *v86.i8, *v52.i8);
    v109 = vmlsl_s16(vmull_s16(*v86.i8, *v49.i8), *v104.i8, *v52.i8);
    v110 = vmlsl_high_s16(v106, v104, v52);
    *v102.i8 = vrshrn_n_s32(v102, 0xEuLL);
    v111 = vmlal_high_s16(v107, v104, v49);
    v112 = vmull_s16(*v85.i8, *v46.i8);
    v113 = vmull_s16(*v89.i8, *&vextq_s8(v46, v46, 8uLL));
    v114 = vmlal_s16(vmull_s16(*v99.i8, *v46.i8), *v85.i8, *v46.i8);
    v115 = vmlal_high_s16(v113, v99, v46);
    v116 = vmlsl_s16(v112, *v99.i8, *v46.i8);
    v117 = vmlsl_high_s16(v113, v99, v46);
    *v99.i8 = vsub_s16(*v102.i8, *v97.i8);
    *v52.i8 = vsub_s16(vrshrn_n_s32(v105, 0xEuLL), vrshrn_n_s32(v96, 0xEuLL));
    *v87.i8 = vsub_s16(vrshrn_n_s32(v103, 0xEuLL), vrshrn_n_s32(v94, 0xEuLL));
    *v93.i8 = vsub_s16(*v34.i8, *v37.i8);
    v118 = vmlsl_s16(vmull_s16(*v99.i8, *v46.i8), *v93.i8, *v46.i8);
    v119 = vmlal_s16(vmull_s16(*v93.i8, *v46.i8), *v99.i8, *v46.i8);
    v120 = vmlsl_s16(vmull_s16(*v52.i8, *v46.i8), *v87.i8, *v46.i8);
    v121 = vmlal_s16(vmull_s16(*v87.i8, *v46.i8), *v52.i8, *v46.i8);
    v122 = vrshrn_high_n_s32(*v37.i8, v94, 0xEuLL);
    v123 = vrshrn_high_n_s32(*v97.i8, v96, 0xEuLL);
    v124 = vrshrn_high_n_s32(*v102.i8, v105, 0xEuLL);
    v125 = vrshrn_high_n_s32(vrshrn_n_s32(v114, 0xEuLL), v115, 0xEuLL);
    v126 = vrshrn_high_n_s32(vrshrn_n_s32(v116, 0xEuLL), v117, 0xEuLL);
    v127 = vrshrn_high_n_s32(vrshrn_n_s32(v109, 0xEuLL), v110, 0xEuLL);
    v128 = vrshrn_high_n_s32(vrshrn_n_s32(v108, 0xEuLL), v111, 0xEuLL);
    v129 = vaddq_s16(v122, vrshrn_high_n_s32(*v34.i8, v103, 0xEuLL));
    v130 = vaddq_s16(v124, v123);
    v131 = vaddq_s16(v127, v126);
    v132 = vsubq_s16(v126, v127);
    v133 = vaddq_s16(v128, v125);
    v134 = vsubq_s16(v125, v128);
    v135 = vrshrn_high_n_s32(vrshrn_n_s32(v118, 0xEuLL), v120, 0xEuLL);
    v136 = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xEuLL), v121, 0xEuLL);
    v137 = vaddq_s16(v134, v129);
    v138 = vsubq_s16(v134, v129);
    v139 = vaddq_s16(v135, v132);
    v140 = vsubq_s16(v132, v135);
    v141 = vaddq_s16(v136, v131);
    v142 = vsubq_s16(v131, v136);
    v143 = vaddq_s16(v133, v130);
    v144 = vsubq_s16(v133, v130);
  }

  *a2 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*a2), v143, 5uLL));
  v536 = (a2 + a3);
  *v536 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v536), v141, 5uLL));
  v537 = (v536 + a3);
  *v537 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v537), v139, 5uLL));
  v538 = (v537 + a3);
  *v538 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v538), v137, 5uLL));
  v539 = (v538 + a3);
  *v539 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v539), v138, 5uLL));
  v540 = (v539 + a3);
  *v540 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v540), v140, 5uLL));
  v541 = (v540 + a3);
  *v541 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v541), v142, 5uLL));
  result = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*(v541 + a3)), v144, 5uLL));
  *(v541 + a3) = result;
  return result;
}

void *vp9_lookahead_init(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040B07198D1uLL);
  v13 = v12;
  if (v12)
  {
    if (a6 >= 0x19)
    {
      v14 = 25;
    }

    else
    {
      v14 = a6;
    }

    if (a6 >= 1)
    {
      v15 = (v14 + 1);
    }

    else
    {
      v15 = 2;
    }

    *v12 = v15;
    v16 = malloc_type_calloc(v15, 0xC0uLL, 0x1010040F4874D52uLL);
    v13[3] = v16;
    *(v13 + 4) = 0;
    if (v16)
    {
      v17 = 0;
      while (1)
      {
        if (v16[12])
        {
          v18 = v16[11];
          if (v18)
          {
            v19 = v16;
            free(*(v18 - 8));
            v16 = v19;
          }
        }

        *(v16 + 8) = 0u;
        *(v16 + 9) = 0u;
        *(v16 + 6) = 0u;
        *(v16 + 7) = 0u;
        *(v16 + 4) = 0u;
        *(v16 + 5) = 0u;
        *(v16 + 2) = 0u;
        *(v16 + 3) = 0u;
        *v16 = 0u;
        *(v16 + 1) = 0u;
        if (vpx_realloc_frame_buffer(v16, a1, a2, a3, a4, a5, 160, 0, 0, 0, 0))
        {
          break;
        }

        if (!--v15)
        {
          return v13;
        }

        ++v17;
        v20 = v13[3];
        v16 = (v20 + 192 * v17);
        if (!v20)
        {
          goto LABEL_28;
        }
      }

      v21 = v13[3];
      if (v21)
      {
        v22 = *v13;
        if (*v13 >= 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0uLL;
          do
          {
            v26 = v13[3];
            if (v26)
            {
              v27 = (v26 + v23);
              if (*(v26 + v23 + 96))
              {
                v28 = *(v26 + v23 + 88);
                if (v28)
                {
                  free(*(v28 - 8));
                  v25 = 0uLL;
                }
              }

              v27[8] = v25;
              v27[9] = v25;
              v27[6] = v25;
              v27[7] = v25;
              v27[4] = v25;
              v27[5] = v25;
              v27[2] = v25;
              v27[3] = v25;
              *v27 = v25;
              v27[1] = v25;
              v22 = *v13;
            }

            ++v24;
            v23 += 192;
          }

          while (v24 < v22);
          v21 = v13[3];
        }

        free(v21);
      }
    }

LABEL_28:
    free(v13);
    return 0;
  }

  return v13;
}

uint64_t vp9_lookahead_push(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = *a1;
  v9 = a1[1];
  if (v9 + 2 > *a1)
  {
    return 1;
  }

  v49 = v6;
  v50 = v7;
  v15 = *(a2 + 8);
  v16 = *(a2 + 12);
  v18 = *(a2 + 28);
  v17 = *(a2 + 32);
  v19 = *(a2 + 120);
  v20 = *(a2 + 124);
  a1[1] = v9 + 1;
  v21 = a1[3];
  if (v21 + 1 < v8)
  {
    v8 = 0;
  }

  v22 = *(a1 + 3) + 192 * v21;
  a1[3] = v21 + 1 - v8;
  v23 = *(v22 + 8);
  if (v15 == v23 && v16 == *(v22 + 12) && v18 == *(v22 + 28))
  {
    v24 = v17 != *(v22 + 32);
    v25 = a3;
    v26 = a4;
    v27 = a1;
    v28 = a6;
    if (v15 > v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v24 = 1;
    v25 = a3;
    v26 = a4;
    v27 = a1;
    v28 = a6;
    if (v15 > v23)
    {
      goto LABEL_14;
    }
  }

  if (v16 <= *(v22 + 12) && v18 <= *(v22 + 28) && v17 <= *(v22 + 32))
  {
    if (v24)
    {
      *(v22 + 20) = *(a2 + 20);
      *v22 = *a2;
      *(v22 + 28) = *(a2 + 28);
      *(v22 + 120) = *(a2 + 120);
      v38 = (((v15 + 7) & 0xFFFFFFF8) + 2 * *(v22 + 104) + 31) & 0xFFFFFFE0;
      *(v22 + 16) = v38;
      *(v22 + 36) = v38 >> v19;
    }

    goto LABEL_20;
  }

LABEL_14:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (vpx_realloc_frame_buffer(&v39, v15, v16, v19, v20, a5, 160, 0, 0, 0, 0))
  {
    return 1;
  }

  if (*(v22 + 96))
  {
    v29 = *(v22 + 88);
    if (v29)
    {
      free(*(v29 - 8));
    }
  }

  *(v22 + 128) = 0u;
  *(v22 + 144) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v30 = v40;
  *v22 = v39;
  *(v22 + 16) = v30;
  v31 = v41;
  v32 = v42;
  v33 = v44;
  *(v22 + 64) = v43;
  *(v22 + 80) = v33;
  *(v22 + 32) = v31;
  *(v22 + 48) = v32;
  v34 = v45;
  v35 = v46;
  v36 = v48;
  *(v22 + 128) = v47;
  *(v22 + 144) = v36;
  *(v22 + 96) = v34;
  *(v22 + 112) = v35;
LABEL_20:
  vp9_copy_and_extend_frame(a2, v22);
  result = 0;
  *(v22 + 160) = v25;
  *(v22 + 168) = v26;
  *(v22 + 184) = v28;
  v37 = v27[4];
  *(v22 + 176) = v37;
  v27[4] = v37 + 1;
  return result;
}

uint64_t vp9_loop_filter_frame_init(uint64_t result, int a2)
{
  v2 = *(result + 4736);
  if (*(result + 4740) != v2)
  {
    v3 = v2 > 4;
    if (v2 > 0)
    {
      ++v3;
    }

    v4 = 0;
    if (v2 <= 0)
    {
      v11 = (result + 1584);
      v12 = 4;
      do
      {
        v13 = v4 >> v3;
        if ((v4 >> v3) <= 1)
        {
          LOBYTE(v13) = 1;
        }

        v14 = 0x101010101010101 * v13;
        *v11 = v14;
        v11[1] = v14;
        v15 = 0x101010101010101 * (v13 + v12);
        *(v11 - 2) = v15;
        *(v11 - 1) = v15;
        ++v4;
        v11 += 6;
        v12 += 2;
      }

      while (v4 != 64);
    }

    else
    {
      v5 = 9 - v2;
      v6 = (result + 1584);
      v7 = 4;
      do
      {
        v8 = v4 >> v3;
        if ((v4 >> v3) >= v5)
        {
          v8 = v5;
        }

        if (v8 <= 1)
        {
          LOBYTE(v8) = 1;
        }

        v9 = 0x101010101010101 * v8;
        *v6 = v9;
        v6[1] = v9;
        v10 = 0x101010101010101 * (v8 + v7);
        *(v6 - 2) = v10;
        *(v6 - 1) = v10;
        ++v4;
        v6 += 6;
        v7 += 2;
      }

      while (v4 != 64);
    }

    *(result + 4740) = *(result + 4736);
  }

  v16 = 0;
  v17 = 0;
  v18 = a2 >> 5;
  v19 = result + 4856;
  do
  {
    while (1)
    {
      v46 = a2;
      if (*(result + 4776))
      {
        v46 = a2;
        if ((*(v19 + 4 * v17) & 2) != 0)
        {
          if (*(result + 4779) == 1)
          {
            v47 = 0;
          }

          else
          {
            v47 = a2;
          }

          v48 = v47 + *(result + v16 + 4794);
          if (v48 >= 0x3F)
          {
            v49 = 63;
          }

          else
          {
            v49 = v47 + *(result + v16 + 4794);
          }

          if (v48 >= 0)
          {
            v46 = v49;
          }

          else
          {
            v46 = 0;
          }
        }
      }

      if (*(result + 4744))
      {
        break;
      }

      *(v19 + v16 - 216) = 0x101010101010101 * v46;
      ++v17;
      v16 += 8;
      if (v16 == 64)
      {
        return result;
      }
    }

    v20 = (*(result + 4746) << v18) + v46;
    if (v20 >= 0x3F)
    {
      LOBYTE(v21) = 63;
    }

    else
    {
      v21 = (*(result + 4746) << v18) + v46;
    }

    if (v20 >= 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v19 + v16;
    *(v19 + v16 - 216) = v22;
    v24 = *(result + 4747);
    v25 = ((*(result + 4754) + v24) << v18) + v46;
    if (v25 >= 0x3F)
    {
      LOBYTE(v26) = 63;
    }

    else
    {
      v26 = ((*(result + 4754) + v24) << v18) + v46;
    }

    if (v25 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    *(v23 - 214) = v27;
    v28 = ((*(result + 4755) + v24) << v18) + v46;
    if (v28 >= 0x3F)
    {
      v29 = 63;
    }

    else
    {
      v29 = v28;
    }

    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    *(v23 - 213) = v30;
    v31 = *(result + 4754);
    v32 = ((v31 + *(result + 4748)) << v18) + v46;
    if (v32 >= 0x3F)
    {
      LOBYTE(v33) = 63;
    }

    else
    {
      v33 = ((v31 + *(result + 4748)) << v18) + v46;
    }

    if (v32 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    *(v23 - 212) = v34;
    v35 = *(result + 4755);
    v36 = ((v35 + *(result + 4748)) << v18) + v46;
    if (v36 >= 0x3F)
    {
      LOBYTE(v37) = 63;
    }

    else
    {
      v37 = ((v35 + *(result + 4748)) << v18) + v46;
    }

    if (v36 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    *(v23 - 211) = v38;
    v39 = *(result + 4749);
    v40 = ((v39 + v31) << v18) + v46;
    if (v40 >= 0x3F)
    {
      v41 = 63;
    }

    else
    {
      v41 = v40;
    }

    if (v40 >= 0)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    *(v23 - 210) = v42;
    v43 = ((v39 + v35) << v18) + v46;
    if (v43 >= 0x3F)
    {
      v44 = 63;
    }

    else
    {
      v44 = v43;
    }

    if (v43 >= 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    *(v23 - 209) = v45;
    ++v17;
    v16 += 8;
  }

  while (v16 != 64);
  return result;
}

uint64_t vp9_adjust_mask(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16) | *(a4 + 24);
  v5 = *(a4 + 48) | *(a4 + 56);
  *(a4 + 48) = v5;
  v6 = *(a4 + 76) | *(a4 + 78);
  *(a4 + 76) = v6;
  v7 = *(a4 + 84) | *(a4 + 86);
  *(a4 + 84) = v7;
  v8 = *(a4 + 8) | *a4 & 0x1111111111111111;
  v9 = *a4 & 0xEEEEEEEEEEEEEEEELL;
  *(a4 + 8) = v8;
  *(a4 + 16) = v4;
  *a4 = v9;
  v10 = *(a4 + 32);
  v11 = *(a4 + 40) | v10 & 0xFF000000FFLL;
  v12 = v10 & 0xFFFFFF00FFFFFF00;
  *(a4 + 32) = v10 & 0xFFFFFF00FFFFFF00;
  *(a4 + 40) = v11;
  v13 = *(a4 + 72);
  v14 = *(a4 + 74) | v13 & 0x1111;
  *(a4 + 74) = v14;
  v15 = v13 & 0xEEEE;
  *(a4 + 72) = v15;
  v16 = *(a4 + 80);
  v17 = *(a4 + 82) | v16 & 0xF;
  *(a4 + 82) = v17;
  v18 = v16 & 0xFFF0;
  *(a4 + 80) = v18;
  v19 = *(a1 + 1312);
  if (a2 + 8 > v19)
  {
    v20 = v19 - a2;
    v21 = -1 << ((2 * v20 + 2) & 0xFC);
    v15 &= ~v21;
    *(a4 + 72) = v15;
    v18 &= ~v21;
    *(a4 + 80) = v18;
    v22 = -1 << (8 * v20);
    v9 &= ~v22;
    v8 &= ~v22;
    *a4 = v9;
    *(a4 + 8) = v8;
    v12 &= ~v22;
    v11 &= ~v22;
    *(a4 + 32) = v12;
    *(a4 + 40) = v11;
    v14 &= ~v21;
    *(a4 + 74) = v14;
    v17 &= ~v21;
    *(a4 + 82) = v17;
    v4 &= ~v22;
    *(a4 + 16) = v4;
    v5 &= ~v22;
    *(a4 + 48) = v5;
    v6 &= ~v21;
    *(a4 + 76) = v6;
    v7 &= ~v21;
    *(a4 + 84) = v7;
    *(a4 + 64) &= ~v22;
    *(a4 + 88) &= ~v21;
    if (v20 == 5)
    {
      v17 |= v7 & 0xFF00;
      *(a4 + 82) = v17;
      v7 = v7;
    }

    else
    {
      if (v20 != 1)
      {
        goto LABEL_7;
      }

      v17 |= v7;
      v7 = 0;
      *(a4 + 82) = v17;
    }

    *(a4 + 84) = v7;
  }

LABEL_7:
  result = *(a1 + 1320);
  if (a3 + 8 <= result)
  {
    goto LABEL_13;
  }

  result = (result - a3);
  v24 = (4369 << ((result + 1) >> 1)) - 4369;
  v15 &= v24;
  *(a4 + 72) = v15;
  *(a4 + 80) = ((4369 << ((result + 1) >> 1)) - 4369) & v18;
  v25 = 0x101010101010101 * ~(-1 << result);
  v9 &= v25;
  v8 &= v25;
  *a4 = v9;
  *(a4 + 8) = v8;
  *(a4 + 32) = v25 & v12;
  *(a4 + 40) = v25 & v11;
  v14 &= v24;
  *(a4 + 74) = v14;
  *(a4 + 82) = ((4369 << ((result + 1) >> 1)) - 4369) & v17;
  v4 &= v25;
  *(a4 + 16) = v4;
  *(a4 + 48) = v25 & v5;
  v6 &= v24;
  *(a4 + 76) = v6;
  *(a4 + 84) = ((4369 << ((result + 1) >> 1)) - 4369) & v7;
  *(a4 + 64) &= v25;
  *(a4 + 88) &= (4369 << (result >> 1)) - 4369;
  if (result == 5)
  {
    v14 |= v6 & 0xCCCC;
    *(a4 + 74) = v14;
    v6 &= 0x3333u;
  }

  else
  {
    if (result != 1)
    {
      goto LABEL_13;
    }

    v14 |= v6;
    v6 = 0;
    *(a4 + 74) = v14;
  }

  *(a4 + 76) = v6;
LABEL_13:
  if (!a3)
  {
    *(a4 + 72) = v15 & 0xEEEE;
    *a4 = v9 & 0xFEFEFEFEFEFEFEFELL;
    *(a4 + 8) = v8 & 0xFEFEFEFEFEFEFEFELL;
    *(a4 + 74) = v14 & 0xEEEE;
    *(a4 + 16) = v4 & 0xFEFEFEFEFEFEFEFELL;
    *(a4 + 76) = v6 & 0xEEEE;
  }

  return result;
}

uint64_t vp9_setup_mask(uint64_t result, int a2, int a3, unsigned __int8 **a4, int a5, _OWORD *a6)
{
  v6 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v7 = 4 * a5;
  v53[0] = 4;
  v53[1] = 4 * a5 - 4;
  v53[2] = 4;
  v53[3] = (4 * a5) ^ 0xFFFFFFFC;
  v52[0] = 2;
  v52[1] = 2 * a5 - 2;
  v52[2] = 2;
  v52[3] = (2 * a5) ^ 0xFFFFFFFE;
  v8 = *(result + 1312);
  if (a2 + 8 <= v8)
  {
    v9 = 8;
  }

  else
  {
    v9 = (v8 - a2);
  }

  v10 = *(result + 1320);
  if (a3 + 8 <= v10)
  {
    v11 = 8;
  }

  else
  {
    v11 = (v10 - a3);
  }

  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  v12 = *a4;
  v13 = **a4;
  v49 = result;
  if (v13 != 10)
  {
    if (v13 == 11)
    {
      result = build_masks(result + 1568, v12, 0, 0, a6);
      if (v9 < 5)
      {
        return result;
      }

      v12 = v6[v7];
      v17 = a6;
      v14 = v49 + 1568;
      v15 = 32;
      v16 = 8;
      goto LABEL_49;
    }

    if (v13 == 12)
    {
      v14 = result + 1568;
      v15 = 0;
      v16 = 0;
      v17 = a6;
      goto LABEL_49;
    }

    v18 = 0;
    v45 = a5;
    v43 = 2 * a5;
    v44 = ~a5;
    while (1)
    {
      v22 = 4 * (v18 & 1);
      v46 = v18;
      if (v22 >= v11)
      {
        goto LABEL_18;
      }

      v23 = 2 * v18;
      v51 = (2 * v18) & 4;
      if (v51 >= v9)
      {
        goto LABEL_18;
      }

      v24 = dword_273BD2400[v18];
      v25 = dword_273BD2420[v18];
      v26 = *v6;
      v27 = **v6;
      switch(v27)
      {
        case 7:
          v42 = dword_273BD2400[v18];
          result = build_masks(v49 + 1568, v26, v24, dword_273BD2420[v18], a6);
          if ((v22 | 2u) >= v11)
          {
            goto LABEL_18;
          }

          v26 = v6[2];
          v20 = v49 + 1568;
          LODWORD(v24) = v42 + 2;
          LOBYTE(v21) = v25 + 1;
          v19 = a6;
          break;
        case 8:
          v40 = dword_273BD2420[v18];
          v41 = dword_273BD2400[v18];
          result = build_masks(v49 + 1568, v26, v24, v40, a6);
          if ((v23 | 2u) >= v9)
          {
            goto LABEL_18;
          }

          v26 = v6[v43];
          v20 = v49 + 1568;
          LODWORD(v24) = v41 + 16;
          LOBYTE(v21) = v40 + 4;
          v19 = a6;
          break;
        case 9:
          v19 = a6;
          v20 = v49 + 1568;
          v21 = dword_273BD2420[v18];
          break;
        default:
          v47 = 4 * (v18 & 1);
          v48 = dword_273BD2420[v18];
          v28 = 0;
          v29 = 0;
          while (2)
          {
            v30 = v28 & 2 | v22;
            if (v30 >= v11)
            {
              goto LABEL_27;
            }

            v31 = v29 & 2 | v51;
            if (v31 >= v9)
            {
              goto LABEL_27;
            }

            v32 = v11;
            v33 = v9;
            v34 = v24;
            v35 = dword_273BD2410[v29] + v24;
            v36 = **v6;
            result = build_masks(v49 + 1568, *v6, v35, dword_273BD2430[v29] + v48, a6);
            if (v36 == 4)
            {
              if ((v30 | 1) < v32)
              {
                result = build_y_mask((v49 + 1568), v6[1], v35 + 1, a6);
              }
            }

            else if (v36 != 6)
            {
              v24 = v34;
              if (v36 == 5)
              {
                v9 = v33;
                if ((v31 | 1) < v33)
                {
                  result = build_y_mask((v49 + 1568), v6[v45], v35 + 8, a6);
                  v24 = v34;
                }
              }

              else
              {
                v37 = v6 + 1;
                v38 = v30 | 1;
                if ((v30 | 1) < v32)
                {
                  result = build_y_mask((v49 + 1568), *v37, v35 + 1, a6);
                  v24 = v34;
                }

                v39 = &v37[v45];
                v9 = v33;
                if ((v31 | 1) < v33)
                {
                  result = build_y_mask((v49 + 1568), *(v39 - 1), v35 + 8, a6);
                  v24 = v34;
                  if (v38 < v32)
                  {
                    result = build_y_mask((v49 + 1568), *v39, v35 + 9, a6);
                    v24 = v34;
                  }
                }

                v6 = &v39[v44];
              }

              v11 = v32;
LABEL_26:
              v22 = v47;
LABEL_27:
              v6 += v52[v29++];
              v28 += 2;
              if (v29 == 4)
              {
                goto LABEL_18;
              }

              continue;
            }

            break;
          }

          v9 = v33;
          v11 = v32;
          v24 = v34;
          goto LABEL_26;
      }

      result = build_masks(v20, v26, v24, v21, v19);
LABEL_18:
      v6 += v53[v46];
      v18 = v46 + 1;
      if (v46 == 3)
      {
        return result;
      }
    }
  }

  result = build_masks(result + 1568, v12, 0, 0, a6);
  if (v11 < 5)
  {
    return result;
  }

  v12 = v6[4];
  v17 = a6;
  v14 = v49 + 1568;
  v15 = 4;
  v16 = 2;
LABEL_49:

  return build_masks(v14, v12, v15, v16, v17);
}

uint64_t build_masks(uint64_t result, unsigned __int8 *a2, int a3, char a4, uint64_t a5)
{
  v5 = result + 8 * a2[4] + 2 * a2[8] + mode_lf_lut[a2[1]];
  v6 = *(v5 + 3072);
  if (*(v5 + 3072))
  {
    v8 = a3;
    v10 = *a2;
    v11 = a2[2];
    v12 = uv_txsize_lookup[16 * v10 + 3 + 4 * v11];
    v24 = a5 + 72;
    v22 = a5 + 32;
    v23 = a5 + 80;
    v13 = num_8x8_blocks_high_lookup[v10];
    v14 = num_8x8_blocks_wide_lookup[v10];
    v15 = (a5 + a3 + 90);
    do
    {
      memset(v15, v6, v14);
      v15 += 8;
      --v13;
    }

    while (v13);
    result = v22;
    v16 = *(v22 + 8 * v11) | (above_prediction_mask[v10] << v8);
    *(v22 + 8 * v11) = v16;
    v17 = *(v23 + 2 * v12) | (above_prediction_mask_uv[v10] << a4);
    *(v23 + 2 * v12) |= above_prediction_mask_uv[v10] << a4;
    v18 = *(a5 + 8 * v11) | (left_prediction_mask[v10] << v8);
    *(a5 + 8 * v11) = v18;
    v19 = *(v24 + 2 * v12) | (left_prediction_mask_uv[v10] << a4);
    *(v24 + 2 * v12) |= left_prediction_mask_uv[v10] << a4;
    if (!a2[3] || a2[8] <= 0)
    {
      v20 = size_mask[v10];
      *(v22 + 8 * v11) = ((above_64x64_txform_mask[v11] & v20) << v8) | v16;
      v21 = size_mask_uv[v10];
      *(v23 + 2 * v12) = v17 | ((above_64x64_txform_mask_uv[v12] & v21) << a4);
      *(a5 + 8 * v11) = ((left_64x64_txform_mask[v11] & v20) << v8) | v18;
      *(v24 + 2 * v12) = v19 | ((left_64x64_txform_mask_uv[v12] & v21) << a4);
      if (v11)
      {
        if (v12)
        {
          return result;
        }

LABEL_10:
        *(a5 + 88) |= v21 << a4;
        return result;
      }

      *(a5 + 64) |= v20 << v8;
      if (!v12)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *build_y_mask(void *result, unsigned __int8 *a2, int a3, uint64_t a4)
{
  v4 = result + 8 * a2[4] + 2 * a2[8] + mode_lf_lut[a2[1]];
  v5 = *(v4 + 3072);
  if (*(v4 + 3072))
  {
    v7 = a3;
    v9 = a2[2];
    v10 = a4 + 32;
    v11 = *a2;
    v12 = num_8x8_blocks_high_lookup[v11];
    v13 = num_8x8_blocks_wide_lookup[v11];
    v14 = (a4 + a3 + 90);
    do
    {
      result = memset(v14, v5, v13);
      v14 += 8;
      --v12;
    }

    while (v12);
    v15 = *(v10 + 8 * v9) | (above_prediction_mask[v11] << v7);
    *(v10 + 8 * v9) = v15;
    v16 = *(a4 + 8 * v9) | (left_prediction_mask[v11] << v7);
    *(a4 + 8 * v9) = v16;
    if (!a2[3] || a2[8] <= 0)
    {
      v17 = size_mask[v11];
      *(v10 + 8 * v9) = ((above_64x64_txform_mask[v9] & v17) << v7) | v15;
      *(a4 + 8 * v9) = ((left_64x64_txform_mask[v9] & v17) << v7) | v16;
      if (!v9)
      {
        *(a4 + 64) |= v17 << v7;
      }
    }
  }

  return result;
}

uint64_t vp9_filter_block_plane_non420(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v13 = a4;
  v14 = a2;
  v15 = 0;
  v109 = *MEMORY[0x277D85DE8];
  v17 = *(a2 + 8);
  v16 = *(a2 + 12);
  v18 = *(a2 + 16);
  v95 = v16;
  v19 = a1[331] << v16;
  v20 = 0uLL;
  memset(v108, 0, sizeof(v108));
  memset(v107, 0, sizeof(v107));
  v101 = a1 + 1160;
  v89 = ~(a5 == 0);
  memset(v106, 0, sizeof(v106));
  memset(v105, 0, sizeof(v105));
  memset(v104, 0, sizeof(v104));
  v100 = 1 << v17;
  v97 = 1 << v16;
  v98 = a1;
  v96 = a4;
  v102 = a5;
  v103 = (a1 + 392);
  v87 = -a5;
  v88 = 8 * v19;
  v86 = v18;
  v90 = v17;
  do
  {
    v21 = a1[328];
    if (v15 + v96 >= v21)
    {
      break;
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = a1[330];
    v27 = v21 - 1 != v15 + v96 || v95 == 0;
    v28 = 8 * v15;
    v29 = v97 & v15;
    v30 = v108 + 4 * v15;
    v31 = (v15 >> v95) & 3;
    v32 = v105 + v15;
    if (!v27)
    {
      v30 = v107 + 4 * v15;
    }

    while (v102 + v22 < v26)
    {
      v33 = *(a3 + 8 * v22);
      v34 = v33[3];
      if (v33[3])
      {
        v34 = v33[8] > 0;
      }

      v35 = *v33;
      if (v35 < 2)
      {
        v36 = 0;
        if ((v35 & 0xFFFFFFFD) != 0)
        {
LABEL_17:
          v37 = ((num_8x8_blocks_high_lookup[v35] - 1) & v15) != 0;
          goto LABEL_20;
        }
      }

      else
      {
        v36 = ((num_8x8_blocks_wide_lookup[v35] - 1) & v22) != 0;
        if ((v35 & 0xFFFFFFFD) != 0)
        {
          goto LABEL_17;
        }
      }

      v37 = 0;
LABEL_20:
      v38 = uv_txsize_lookup[16 * v35 + 4 * v33[2] + 2 * *(v14 + 8) + *(v14 + 12)];
      if (v17)
      {
        v39 = v87 + v26 - 1 == v22;
      }

      else
      {
        v39 = 0;
      }

      v40 = *(&v101[2 * v33[4]] + 2 * v33[8] + mode_lf_lut[v33[1]]);
      v41 = v39;
      v42 = v22 >> v17;
      *(v104 + (v22 >> v17) + v28) = v40;
      if (!v40)
      {
        goto LABEL_11;
      }

      v43 = v34 & v36;
      v44 = v34 & v37;
      if (v38 == 2)
      {
        if ((v42 | v43))
        {
          goto LABEL_41;
        }

        v48 = 1 << v42;
        if (v41)
        {
          v24 |= v48;
LABEL_41:
          if (v29)
          {
            v44 = 1;
          }

          v47 = v30;
          if (v44)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        v23 |= v48;
        if (v29)
        {
          v44 = 1;
        }

        v47 = v30;
        if (v44)
        {
          goto LABEL_11;
        }
      }

      else if (v38 == 3)
      {
        if ((v42 & 3) != 0)
        {
          v45 = 1;
        }

        else
        {
          v45 = v43;
        }

        if ((v45 & 1) == 0)
        {
          v46 = 1 << v42;
          if (v41)
          {
            v24 |= v46;
            if (v31)
            {
              v44 = 1;
            }

            v47 = v30;
            if (v44)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }

          v23 |= v46;
        }

        if (v31)
        {
          v44 = 1;
        }

        v47 = v30;
        if (v44)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v43)
        {
          if (v34 & v37)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v50 = 1 << v42;
          if ((v42 & 3) == 0 || v38 == 1)
          {
            v24 |= v50;
            if (v44)
            {
LABEL_47:
              if (v38)
              {
                LOBYTE(v34) = 1;
              }

              v49 = v34 | v41;
              v47 = v105 + v15;
              if (v49)
              {
                goto LABEL_11;
              }

              goto LABEL_10;
            }
          }

          else
          {
            v25 |= v50;
            if (v44)
            {
              goto LABEL_47;
            }
          }
        }

        if (v31)
        {
          v51 = v38 == 1;
        }

        else
        {
          v51 = 1;
        }

        if (v51)
        {
          v52 = v107 + 4 * v15;
        }

        else
        {
          v52 = v106 + 4 * v15;
        }

        *v52 |= 1 << v42;
        if (v38)
        {
          LOBYTE(v34) = 1;
        }

        v53 = v34 | v41;
        v47 = v105 + v15;
        if (v53)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      *v47 |= 1 << v42;
LABEL_11:
      v22 += v100;
      if (v22 >= 8)
      {
        break;
      }
    }

    v93 = v15;
    v94 = a3;
    v54 = *(v14 + 24);
    v55 = v23 & v89;
    v56 = v24 & v89;
    v57 = v25 & v89;
    v58 = *v32;
    v59 = v24 & v89 | v25 & v89 | v23 & v89;
    if (!a1[81])
    {
      v71 = v59 | v58;
      if (!(v59 | v58))
      {
        goto LABEL_2;
      }

      v72 = v104 + v28;
      while (2)
      {
        v74 = v103 + 48 * *v72;
        if (v71)
        {
          if (v55)
          {
            v20 = vpx_lpf_vertical_16_neon(v18, v54, (v103 + 48 * *v72), (v74 + 16), (v74 + 32));
          }

          else
          {
            if (v56)
            {
              v20 = vpx_lpf_vertical_8_neon(v18, v54, (v103 + 48 * *v72), (v74 + 16), (v74 + 32), v20, a7, a8, a9, a10, a11, a12, a13);
              if (v58)
              {
LABEL_103:
                *v20.i8 = vpx_lpf_vertical_4_neon(v18 + 4, v54, v74, (v74 + 16), (v74 + 32), *v20.i64, *a7.i64, *a8.i64, a9, a10, a11, a12, a13);
              }

LABEL_93:
              v55 >>= 1;
              v18 += 8;
              ++v72;
              v56 >>= 1;
              v57 >>= 1;
              v58 >>= 1;
              v73 = v71 > 1;
              v71 >>= 1;
              if (!v73)
              {
                goto LABEL_2;
              }

              continue;
            }

            if (v57)
            {
              *v20.i8 = vpx_lpf_vertical_4_neon(v18, v54, (v103 + 48 * *v72), (v74 + 16), (v74 + 32), *v20.i64, *a7.i64, *a8.i64, a9, a10, a11, a12, a13);
              if (v58)
              {
                goto LABEL_103;
              }

              goto LABEL_93;
            }
          }
        }

        break;
      }

      if (v58)
      {
        goto LABEL_103;
      }

      goto LABEL_93;
    }

    v60 = v59 | v58;
    if (v59 | v58)
    {
      v61 = v98[4540];
      v62 = v104 + v28;
      v63 = (2 * v18);
      v20 = vdupq_n_s16(v61 - 8);
      v99 = v20;
      do
      {
        v65 = (v103 + 48 * *v62);
        if (v60)
        {
          if (v55)
          {
            v66 = v65 + 16;
            v67 = v65 + 32;
            v68 = vld1_dup_s8(v65);
            v69 = vld1_dup_s8(v66);
            v70 = vld1_dup_s8(v67);
            v20 = lpf_vertical_16_kernel(v63, v54, v61, vshlq_u16(vmovl_u8(v68), v99), vshlq_u16(vmovl_u8(v69), v99), vshlq_u16(vmovl_u8(v70), v99));
          }

          else
          {
            if (v56)
            {
              vpx_highbd_lpf_vertical_8_neon(v63, v54, (v103 + 48 * *v62), v65 + 16, v65 + 32, v61);
              if ((v58 & 1) == 0)
              {
                goto LABEL_78;
              }

LABEL_88:
              v20 = vpx_highbd_lpf_vertical_4_neon(&v63->i64[1], v54, v65, v65 + 16, v65 + 32, v61);
              goto LABEL_78;
            }

            if (v57)
            {
              v20 = vpx_highbd_lpf_vertical_4_neon(v63, v54, (v103 + 48 * *v62), v65 + 16, v65 + 32, v61);
              if (v58)
              {
                goto LABEL_88;
              }

              goto LABEL_78;
            }
          }
        }

        if (v58)
        {
          goto LABEL_88;
        }

LABEL_78:
        v55 >>= 1;
        ++v63;
        ++v62;
        v56 >>= 1;
        v57 >>= 1;
        v58 >>= 1;
        v64 = v60 >= 2;
        v60 >>= 1;
      }

      while (v64);
    }

LABEL_2:
    v14 = a2;
    v13 = a4;
    v18 = *(a2 + 16) + 8 * *(a2 + 24);
    *(a2 + 16) = v18;
    a1 = v98;
    v15 = v93 + v97;
    a3 = v94 + v88;
    v17 = v90;
  }

  while (v93 + v97 < 8);
  v75 = 0;
  v76 = 0;
  result = v86;
  *(v14 + 16) = v86;
  do
  {
    v78 = v96 + v76;
    v79 = v98[328];
    if (v96 + v76 >= v79)
    {
      break;
    }

    if (v95 && v13 == v79 - 1)
    {
      v80 = 0;
      if (!v78)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v80 = *(v105 + v76);
      if (!v78)
      {
LABEL_113:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = v98;
        v85 = v104 + v75;
        if (v98[81])
        {
          goto LABEL_117;
        }

        goto LABEL_107;
      }
    }

    v81 = *(v108 + v76);
    v82 = *(v107 + v76);
    v83 = *(v106 + v76);
    v84 = v98;
    v85 = v104 + v75;
    if (v98[81])
    {
LABEL_117:
      highbd_filter_selectively_horiz((2 * result), *(v14 + 24), v81, v82, v83, v80, v103, v85, v84[4540]);
      goto LABEL_108;
    }

LABEL_107:
    filter_selectively_horiz(result, *(v14 + 24), v81, v82, v83, v80, v103, v85);
LABEL_108:
    result = *(v14 + 16) + 8 * *(v14 + 24);
    *(v14 + 16) = result;
    v76 += v97;
    v75 += 8 * v97;
    v13 += v97;
  }

  while (v76 < 8);
  return result;
}

void highbd_filter_selectively_horiz(int8x16_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned __int8 *a8, int a9)
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = a4 | a3 | a5 | a6;
  if (v13)
  {
    v15 = a2;
    v41 = a2;
    v42 = vdupq_n_s16(a9 - 8);
    v40 = a2;
    while (1)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      v24 = (a7 + 48 * *a8);
      if (v12)
      {
        v25 = v15;
        v27 = v24 + 16;
        v28 = v24 + 32;
        v29 = vld1_dup_s8(v24);
        v30 = vld1_dup_s8(v27);
        v31 = vld1_dup_s8(v28);
        v44 = vshlq_u16(vmovl_u8(v30), v42);
        v45 = vshlq_u16(vmovl_u8(v29), v42);
        v43 = vshlq_u16(vmovl_u8(v31), v42);
        lpf_horizontal_16_kernel(a1, v15, a9, v45, v44, v43);
        if ((~v12 & 3) != 0)
        {
          v23 = 1;
          goto LABEL_6;
        }

        lpf_horizontal_16_kernel(a1 + 1, v15, a9, v45, v44, v43);
        goto LABEL_16;
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if ((~v9 & 3) != 0)
      {
        v34 = a9;
        vpx_highbd_lpf_horizontal_8_neon(a1, v15, (a7 + 48 * *a8), v24 + 16, v24 + 32, a9);
        if (v11)
        {
          goto LABEL_24;
        }

        goto LABEL_5;
      }

      v32 = v15;
      v33 = (a7 + 48 * a8[1]);
      vpx_highbd_lpf_horizontal_8_neon(a1, v32, (a7 + 48 * *a8), v24 + 16, v24 + 32, a9);
      v46 = v33;
      vpx_highbd_lpf_horizontal_8_neon(a1[1].i64, v40, v33, v33 + 16, v33 + 32, a9);
      if ((~v11 & 3) != 0)
      {
        v35 = v33;
        v15 = v40;
        if (v11)
        {
          v36 = &a1->i64[v41];
          v37 = v24 + 16;
          v38 = v24 + 32;
          v39 = v40;
LABEL_34:
          v35 = v24;
          goto LABEL_35;
        }

        if ((v11 & 2) != 0)
        {
          v36 = &a1[1].i64[v41];
          v37 = v46 + 16;
          v38 = v46 + 32;
          v39 = v40;
          goto LABEL_35;
        }

        v23 = 2;
      }

      else
      {
        v15 = v40;
        vpx_highbd_lpf_horizontal_4_dual_neon(&a1->i64[v41], v40, v24, v24 + 16, v24 + 32, v46, v46 + 16, v46 + 32, a9);
        v23 = 2;
      }

LABEL_6:
      v12 >>= v23;
      a8 += v23;
      v9 >>= v23;
      v10 >>= v23;
      v11 >>= v23;
      v13 >>= v23;
      a1 += v23;
      if (!v13)
      {
        return;
      }
    }

    if (v10)
    {
      if ((~v10 & 3) == 0)
      {
        v25 = v15;
        v26 = (a7 + 48 * a8[1]);
        vpx_highbd_lpf_horizontal_4_dual_neon(a1, v25, v24, v24 + 16, v24 + 32, v26, v26 + 16, v26 + 32, a9);
        if ((~v11 & 3) != 0)
        {
          if (v11)
          {
            v36 = &a1->i64[v41];
            v37 = v24 + 16;
            v38 = v24 + 32;
            v15 = v25;
            v39 = v25;
            goto LABEL_34;
          }

          if ((v11 & 2) != 0)
          {
            v36 = &a1[1].i64[v41];
            v37 = v26 + 16;
            v38 = v26 + 32;
            v39 = v25;
            v35 = v26;
            v15 = v25;
LABEL_35:
            vpx_highbd_lpf_horizontal_4_neon(v36, v39, v35, v37, v38, a9);
            v23 = 2;
            goto LABEL_6;
          }
        }

        else
        {
          vpx_highbd_lpf_horizontal_4_dual_neon(&a1->i64[v41], v25, v24, v24 + 16, v24 + 32, v26, v26 + 16, v26 + 32, a9);
        }

LABEL_16:
        v23 = 2;
        v15 = v25;
        goto LABEL_6;
      }

      v34 = a9;
      vpx_highbd_lpf_horizontal_4_neon(a1, v15, (a7 + 48 * *a8), v24 + 16, v24 + 32, a9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_24:
      v17 = &a1->i64[v41];
      v18 = v24 + 16;
      v19 = v24 + 32;
      v20 = v15;
      v21 = v24;
      v22 = v34;
    }

    else
    {
      v17 = &a1->i64[v41];
      v18 = v24 + 16;
      v19 = v24 + 32;
      v20 = v15;
      v21 = (a7 + 48 * *a8);
      v22 = a9;
    }

    vpx_highbd_lpf_horizontal_4_neon(v17, v20, v21, v18, v19, v22);
LABEL_5:
    v23 = 1;
    goto LABEL_6;
  }
}

void filter_selectively_horiz(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned __int8 *a8)
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = a4 | a3 | a5 | a6;
  if (v12)
  {
    v14 = a7;
    v16 = a2;
    v334 = 4 * a2;
    v17.i64[0] = 0x8080808080808080;
    v17.i64[1] = 0x8080808080808080;
    v18.i64[0] = 0x404040404040404;
    v18.i64[1] = 0x404040404040404;
    v19.i64[0] = 0x303030303030303;
    v19.i64[1] = 0x303030303030303;
    v20 = -2 * a2;
    v335 = v20;
    while (1)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      v50 = (v14 + 48 * *a8);
      if (v11)
      {
        v114 = (v50 + 16);
        v115 = (v50 + 32);
        if ((~v11 & 3) != 0)
        {
          vpx_lpf_horizontal_16_neon(a1, a2, (v14 + 48 * *a8), v114, v115);
          v49 = 1;
        }

        else
        {
          vpx_lpf_horizontal_16_dual_neon(a1, a2, (v14 + 48 * *a8), v114, v115);
          v49 = 2;
        }

LABEL_20:
        v17.i64[0] = 0x8080808080808080;
        v17.i64[1] = 0x8080808080808080;
        v18.i64[0] = 0x404040404040404;
        v18.i64[1] = 0x404040404040404;
        v19.i64[0] = 0x303030303030303;
        v19.i64[1] = 0x303030303030303;
        v20 = -2 * a2;
        goto LABEL_6;
      }

      if (v8)
      {
        if ((~v8 & 3) == 0)
        {
          v116 = (v14 + 48 * a8[1]);
          vpx_lpf_horizontal_8_dual_neon(a1, a2, v50, v50 + 16, v50 + 32, v116, v116 + 16, v116 + 32);
          if ((~v10 & 3) == 0)
          {
            v118 = vld1_dup_s8(v116);
            *v119.i8 = vld1_dup_s8(v50);
            v119.u64[1] = v118;
            v117 = v116 + 16;
            v120 = vld1_dup_s8(v117);
            v122 = v50 + 16;
            v121 = v116 + 32;
            *v123.i8 = vld1_dup_s8(v122);
            v123.u64[1] = v120;
            v124 = vld1_dup_s8(v121);
            v125 = v50 + 32;
            *v126.i8 = vld1_dup_s8(v125);
            v126.u64[1] = v124;
            v16 = a2;
            v127 = (a1 + a2 + a2);
            v128 = *v127;
            v129 = (v127 + a2);
            v130 = *v129;
            v131 = (v129 + a2);
            v132 = *v131;
            v133 = &v131->i8[a2];
            v134 = vmaxq_u8(vabdq_u8(v128, v130), vabdq_u8(*v133, v132));
            v135 = vcgtq_u8(v134, v126);
            v136 = vabdq_u8(v130, v132);
            v137 = vandq_s8(vcgeq_u8(v119, vqaddq_u8(vqaddq_u8(v136, v136), vshrq_n_u8(vabdq_u8(v128, *v133), 1uLL))), vcgeq_u8(v123, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v134, vabdq_u8(*a1, *(a1 + a2))), vabdq_u8(*(a1 + a2), v128)), vabdq_u8(*(v133 + a2), *v133)), vabdq_u8(*(v133 + a2 + a2), *(v133 + a2)))));
            v17.i64[0] = 0x8080808080808080;
            v17.i64[1] = 0x8080808080808080;
            v138 = veorq_s8(v128, v17);
            v139 = veorq_s8(v130, v17);
            v140 = veorq_s8(v132, v17);
            v141 = veorq_s8(*v133, v17);
            v142 = vqsubq_s8(v140, v139);
            v143 = vandq_s8(vqaddq_s8(vqaddq_s8(vqaddq_s8(vandq_s8(vqsubq_s8(v138, v141), v135), v142), v142), v142), v137);
            v18.i64[0] = 0x404040404040404;
            v18.i64[1] = 0x404040404040404;
            v144 = vshrq_n_s8(vqaddq_s8(v143, v18), 3uLL);
            v19.i64[0] = 0x303030303030303;
            v19.i64[1] = 0x303030303030303;
            v145 = vbicq_s8(vrshrq_n_s8(v144, 1uLL), v135);
            v20 = -2 * a2;
            v146 = (a1 + v334 + v335);
            *v146 = veorq_s8(vqaddq_s8(v138, v145), v17);
            v147 = (v146 + a2);
            *v147 = veorq_s8(vqaddq_s8(v139, vshrq_n_s8(vqaddq_s8(v143, v19), 3uLL)), v17);
            v148 = (v147 + a2);
            *v148 = veorq_s8(vqsubq_s8(v140, v144), v17);
            *(v148 + a2) = veorq_s8(vqsubq_s8(v141, v145), v17);
LABEL_34:
            v49 = 2;
            v14 = a7;
            goto LABEL_6;
          }

          v17.i64[0] = 0x8080808080808080;
          v17.i64[1] = 0x8080808080808080;
          v18.i64[0] = 0x404040404040404;
          v18.i64[1] = 0x404040404040404;
          v19.i64[0] = 0x303030303030303;
          v19.i64[1] = 0x303030303030303;
          v20 = -2 * a2;
          if (v10)
          {
            v243 = vld1_dup_s8(v50);
            v244 = v50 + 16;
            v245 = vld1_dup_s8(v244);
            v246 = v50 + 32;
            v247 = vld1_dup_s8(v246);
            v16 = a2;
            v248 = (a1 + a2 + a2);
            v249 = *v248;
            v250 = (v248 + a2);
            v251 = *v250;
            v252 = (v250 + a2);
            v253 = *v252;
            v254 = (v252 + a2);
            v255 = vmax_u8(vabd_u8(v249, v251), vabd_u8(*v254, v253));
            v256 = vcgt_u8(v255, v247);
            v257 = vabd_u8(v251, v253);
            v258 = vand_s8(vcge_u8(v243, vqadd_u8(vqadd_u8(v257, v257), vshr_n_u8(vabd_u8(v249, *v254), 1uLL))), vcge_u8(v245, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v255, vabd_u8(*a1, *(a1 + a2))), vabd_u8(*(a1 + a2), v249)), vabd_u8(*(v254 + a2), *v254)), vabd_u8(*(v254 + a2 + a2), *(v254 + a2)))));
            v259 = veor_s8(v249, 0x8080808080808080);
            v260 = veor_s8(v251, 0x8080808080808080);
            v261 = veor_s8(v253, 0x8080808080808080);
            v262 = veor_s8(*v254, 0x8080808080808080);
            v263 = vqsub_s8(v261, v260);
            v264 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v259, v262), v256), v263), v263), v263), v258);
            v265 = vshr_n_s8(vqadd_s8(v264, 0x404040404040404), 3uLL);
            v266 = vbic_s8(vrshr_n_s8(v265, 1uLL), v256);
            v267 = vqadd_s8(v259, v266);
            v214 = veor_s8(vqsub_s8(v262, v266), 0x8080808080808080);
            v268 = (a1 + v334 + v335);
            *v268 = veor_s8(v267, 0x8080808080808080);
            v269 = (v268 + a2);
            *v269 = veor_s8(vqadd_s8(v260, vshr_n_s8(vqadd_s8(v264, 0x303030303030303), 3uLL)), 0x8080808080808080);
            v217 = (v269 + a2);
            *v217 = veor_s8(vqsub_s8(v261, v265), 0x8080808080808080);
          }

          else
          {
            v16 = a2;
            if ((v10 & 2) == 0)
            {
              goto LABEL_34;
            }

            v182 = vld1_dup_s8(v116);
            v183 = v116 + 16;
            v184 = vld1_dup_s8(v183);
            v185 = v116 + 32;
            v186 = vld1_dup_s8(v185);
            v187 = (a1 + 8 + a2);
            v188 = *v187;
            v189 = (v187 + a2);
            v190 = *v189;
            v191 = (v189 + a2);
            v192 = *v191;
            v193 = (v191 + a2);
            v194 = *v193;
            v195 = (v193 + a2);
            v196 = vmax_u8(vabd_u8(v190, v192), vabd_u8(*v195, v194));
            v197 = vcgt_u8(v196, v186);
            v198 = vmax_u8(vmax_u8(vmax_u8(vmax_u8(v196, vabd_u8(*(a1 + 8), v188)), vabd_u8(v188, v190)), vabd_u8(*(v195 + a2), *v195)), vabd_u8(*(v195 + a2 + a2), *(v195 + a2)));
            v199 = vabd_u8(v192, v194);
            v200 = vcge_u8(v184, v198);
            v201 = vcge_u8(v182, vqadd_u8(vqadd_u8(v199, v199), vshr_n_u8(vabd_u8(v190, *v195), 1uLL)));
            v202 = veor_s8(v190, 0x8080808080808080);
            v203 = veor_s8(v192, 0x8080808080808080);
            v204 = veor_s8(v194, 0x8080808080808080);
            v205 = veor_s8(*v195, 0x8080808080808080);
            v206 = vqsub_s8(v204, v203);
            v207 = vand_s8(vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v202, v205), v197), v206), v206), v206), v201), v200);
            v208 = vshr_n_s8(vqadd_s8(v207, 0x404040404040404), 3uLL);
            v209 = vqadd_s8(v203, vshr_n_s8(vqadd_s8(v207, 0x303030303030303), 3uLL));
            v210 = veor_s8(vqsub_s8(v204, v208), 0x8080808080808080);
            v211 = vbic_s8(vrshr_n_s8(v208, 1uLL), v197);
            v212 = vqsub_s8(v205, v211);
            v213 = vqadd_s8(v202, v211);
            v214 = veor_s8(v212, 0x8080808080808080);
            v215 = (a1 + 8 + v334 + v335);
            *v215 = veor_s8(v213, 0x8080808080808080);
            v216 = (v215 + a2);
            *v216 = veor_s8(v209, 0x8080808080808080);
            v217 = (v216 + a2);
            *v217 = v210;
          }

          *(v217 + v16) = v214;
          goto LABEL_34;
        }

        vpx_lpf_horizontal_8_neon(a1, a2, (v14 + 48 * *a8), v50 + 16, v50 + 32);
        if (v10)
        {
          v218 = vld1_dup_s8(v50);
          v149 = v50 + 16;
          v219 = vld1_dup_s8(v149);
          v150 = v50 + 32;
          v220 = vld1_dup_s8(v150);
          v16 = a2;
          v221 = (a1 + a2 + a2);
          v222 = *v221;
          v223 = (v221 + a2);
          v224 = *v223;
          v225 = (v223 + a2);
          v226 = *v225;
          v227 = (v225 + a2);
          v228 = vmax_u8(vabd_u8(v222, v224), vabd_u8(*v227, v226));
          v229 = vcgt_u8(v228, v220);
          v230 = vabd_u8(v224, v226);
          v231 = vand_s8(vcge_u8(v218, vqadd_u8(vqadd_u8(v230, v230), vshr_n_u8(vabd_u8(v222, *v227), 1uLL))), vcge_u8(v219, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v228, vabd_u8(*a1, *(a1 + a2))), vabd_u8(*(a1 + a2), v222)), vabd_u8(*(v227 + a2), *v227)), vabd_u8(*(v227 + a2 + a2), *(v227 + a2)))));
          v232 = veor_s8(v222, 0x8080808080808080);
          v233 = veor_s8(v224, 0x8080808080808080);
          v234 = veor_s8(v226, 0x8080808080808080);
          v235 = veor_s8(*v227, 0x8080808080808080);
          v236 = vqsub_s8(v234, v233);
          v237 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v232, v235), v229), v236), v236), v236), v231);
          v238 = vshr_n_s8(vqadd_s8(v237, 0x404040404040404), 3uLL);
          v239 = vbic_s8(vrshr_n_s8(v238, 1uLL), v229);
          v20 = -2 * a2;
          v240 = (a1 + v334 + v335);
          *v240 = veor_s8(vqadd_s8(v232, v239), 0x8080808080808080);
          v241 = (v240 + a2);
          *v241 = veor_s8(vqadd_s8(v233, vshr_n_s8(vqadd_s8(v237, 0x303030303030303), 3uLL)), 0x8080808080808080);
          v242 = (v241 + a2);
          *v242 = veor_s8(vqsub_s8(v234, v238), 0x8080808080808080);
          *(v242 + a2) = veor_s8(vqsub_s8(v235, v239), 0x8080808080808080);
          v49 = 1;
          v14 = a7;
          v17.i64[0] = 0x8080808080808080;
          v17.i64[1] = 0x8080808080808080;
          v18.i64[0] = 0x404040404040404;
          v18.i64[1] = 0x404040404040404;
          v19.i64[0] = 0x303030303030303;
          v19.i64[1] = 0x303030303030303;
          goto LABEL_6;
        }

        v49 = 1;
        v16 = a2;
        v14 = a7;
        goto LABEL_20;
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if ((~v9 & 3) != 0)
      {
        v151 = v50 + 16;
        v152 = vld1_dup_s8(v50);
        v153 = vld1_dup_s8(v151);
        v25 = v50 + 32;
        v154 = vld1_dup_s8(v25);
        v155 = (a1 - 4 * a2 + v16);
        v156 = *v155;
        v157 = (v155 + v16);
        v158 = *v157;
        v159 = (v157 + v16);
        v160 = *v159;
        v161 = (v159 + v16);
        v162 = *v161;
        v163 = (v161 + v16);
        v164 = vmax_u8(vabd_u8(v158, v160), vabd_u8(*v163, v162));
        v165 = vcgt_u8(v164, v154);
        v166 = vmax_u8(vmax_u8(vmax_u8(vmax_u8(v164, vabd_u8(*(a1 - 4 * a2), v156)), vabd_u8(v156, v158)), vabd_u8(*(v163 + v16), *v163)), vabd_u8(*(v163 + v16 + v16), *(v163 + v16)));
        v167 = vabd_u8(v160, v162);
        v168 = vcge_u8(v153, v166);
        v169 = vcge_u8(v152, vqadd_u8(vqadd_u8(v167, v167), vshr_n_u8(vabd_u8(v158, *v163), 1uLL)));
        v170 = veor_s8(v158, 0x8080808080808080);
        v171 = veor_s8(v160, 0x8080808080808080);
        v172 = veor_s8(v162, 0x8080808080808080);
        v173 = veor_s8(*v163, 0x8080808080808080);
        v174 = vqsub_s8(v172, v171);
        v175 = vand_s8(vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v170, v173), v165), v174), v174), v174), v169), v168);
        v176 = vshr_n_s8(vqadd_s8(v175, 0x404040404040404), 3uLL);
        v177 = vqadd_s8(v171, vshr_n_s8(vqadd_s8(v175, 0x303030303030303), 3uLL));
        v178 = veor_s8(vqsub_s8(v172, v176), 0x8080808080808080);
        v179 = vbic_s8(vrshr_n_s8(v176, 1uLL), v165);
        *(a1 + v20) = veor_s8(vqadd_s8(v170, v179), 0x8080808080808080);
        v180 = (a1 + v20 + v16);
        *v180 = veor_s8(v177, 0x8080808080808080);
        v181 = (v180 + v16);
        *v181 = v178;
        *(v181 + v16) = veor_s8(vqsub_s8(v173, v179), 0x8080808080808080);
        if (v10)
        {
          v23 = vld1_dup_s8(v50);
          v24 = vld1_dup_s8(v151);
          v21 = a1 + v334;
LABEL_4:
          v26 = vld1_dup_s8(v25);
          v27 = (a1 + v16 + v16);
          v28 = *v27;
          v29 = (v27 + v16);
          v30 = *v29;
          v31 = (v29 + v16);
          v32 = *v31;
          v33 = (v31 + v16);
          v34 = vmax_u8(vabd_u8(v28, v30), vabd_u8(*v33, v32));
          v35 = vcgt_u8(v34, v26);
          v36 = vabd_u8(v30, v32);
          v37 = vand_s8(vcge_u8(v23, vqadd_u8(vqadd_u8(v36, v36), vshr_n_u8(vabd_u8(v28, *v33), 1uLL))), vcge_u8(v24, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v34, vabd_u8(*a1, *(a1 + v16))), vabd_u8(*(a1 + v16), v28)), vabd_u8(*(v33 + v16), *v33)), vabd_u8(*(v33 + v16 + v16), *(v33 + v16)))));
          v38 = veor_s8(v28, 0x8080808080808080);
          v39 = veor_s8(v30, 0x8080808080808080);
          v40 = veor_s8(v32, 0x8080808080808080);
          v41 = veor_s8(*v33, 0x8080808080808080);
          v42 = vqsub_s8(v40, v39);
          v43 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v38, v41), v35), v42), v42), v42), v37);
          v44 = vshr_n_s8(vqadd_s8(v43, 0x404040404040404), 3uLL);
          v45 = vbic_s8(vrshr_n_s8(v44, 1uLL), v35);
          v46 = (v21 + v20);
          *v46 = veor_s8(vqadd_s8(v38, v45), 0x8080808080808080);
          v47 = (v46 + v16);
          *v47 = veor_s8(vqadd_s8(v39, vshr_n_s8(vqadd_s8(v43, 0x303030303030303), 3uLL)), 0x8080808080808080);
          v48 = (v47 + v16);
          *v48 = veor_s8(vqsub_s8(v40, v44), 0x8080808080808080);
          *(v48 + v16) = veor_s8(vqsub_s8(v41, v45), 0x8080808080808080);
        }

LABEL_5:
        v49 = 1;
        goto LABEL_6;
      }

      v51 = (v14 + 48 * a8[1]);
      v52 = v50 + 16;
      v53 = v50 + 32;
      v54 = v51 + 16;
      v55 = v51 + 32;
      v56 = vld1_dup_s8(v51);
      *v57.i8 = vld1_dup_s8(v50);
      v57.u64[1] = v56;
      v58 = vld1_dup_s8(v54);
      *v59.i8 = vld1_dup_s8(v52);
      v59.u64[1] = v58;
      v60 = vld1_dup_s8(v55);
      *v61.i8 = vld1_dup_s8(v53);
      v61.u64[1] = v60;
      v62 = (a1 - 4 * a2 + v16);
      v63 = *v62;
      v64 = &v62->i8[v16];
      v65 = *v64;
      v66 = (v64 + v16);
      v67 = *v66;
      v68 = (v66 + v16);
      v69 = *v68;
      v70 = &v68->i8[v16];
      v71 = vmaxq_u8(vabdq_u8(v65, v67), vabdq_u8(*v70, v69));
      v72 = vcgtq_u8(v71, v61);
      v73 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v71, vabdq_u8(*(a1 - 4 * a2), v63)), vabdq_u8(v63, v65)), vabdq_u8(*(v70 + v16), *v70)), vabdq_u8(*(v70 + v16 + v16), *(v70 + v16)));
      v74 = vabdq_u8(v67, v69);
      v75 = vandq_s8(vcgeq_u8(v57, vqaddq_u8(vqaddq_u8(v74, v74), vshrq_n_u8(vabdq_u8(v65, *v70), 1uLL))), vcgeq_u8(v59, v73));
      v76 = veorq_s8(v65, v17);
      v77 = veorq_s8(v67, v17);
      v78 = veorq_s8(v69, v17);
      v79 = veorq_s8(*v70, v17);
      v80 = vqsubq_s8(v78, v77);
      v81 = vandq_s8(vqaddq_s8(vqaddq_s8(vqaddq_s8(vandq_s8(vqsubq_s8(v76, v79), v72), v80), v80), v80), v75);
      v82 = vshrq_n_s8(vqaddq_s8(v81, v18), 3uLL);
      v83 = vbicq_s8(vrshrq_n_s8(v82, 1uLL), v72);
      *(a1 + v20) = veorq_s8(vqaddq_s8(v76, v83), v17);
      v84 = (a1 + v20 + v16);
      *v84 = veorq_s8(vqaddq_s8(v77, vshrq_n_s8(vqaddq_s8(v81, v19), 3uLL)), v17);
      v85 = (v84 + v16);
      *v85 = veorq_s8(vqsubq_s8(v78, v82), v17);
      *(v85 + v16) = veorq_s8(vqsubq_s8(v79, v83), v17);
      if ((~v10 & 3) != 0)
      {
        if (v10)
        {
          v270 = vld1_dup_s8(v50);
          v271 = v50 + 16;
          v272 = vld1_dup_s8(v271);
          v273 = v50 + 32;
          v274 = vld1_dup_s8(v273);
          v275 = (a1 + v16 + v16);
          v276 = *v275;
          v277 = (v275 + v16);
          v278 = *v277;
          v279 = (v277 + v16);
          v280 = *v279;
          v281 = (v279 + v16);
          v282 = vmax_u8(vabd_u8(v276, v278), vabd_u8(*v281, v280));
          v283 = vcgt_u8(v282, v274);
          v284 = vabd_u8(v278, v280);
          v285 = vand_s8(vcge_u8(v270, vqadd_u8(vqadd_u8(v284, v284), vshr_n_u8(vabd_u8(v276, *v281), 1uLL))), vcge_u8(v272, vmax_u8(vmax_u8(vmax_u8(vmax_u8(v282, vabd_u8(*a1, *(a1 + v16))), vabd_u8(*(a1 + v16), v276)), vabd_u8(*(v281 + v16), *v281)), vabd_u8(*(v281 + v16 + v16), *(v281 + v16)))));
          v286 = veor_s8(v276, 0x8080808080808080);
          v287 = veor_s8(v278, 0x8080808080808080);
          v288 = veor_s8(v280, 0x8080808080808080);
          v289 = veor_s8(*v281, 0x8080808080808080);
          v290 = vqsub_s8(v288, v287);
          v291 = vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v286, v289), v283), v290), v290), v290), v285);
          v292 = vshr_n_s8(vqadd_s8(v291, 0x404040404040404), 3uLL);
          v293 = vbic_s8(vrshr_n_s8(v292, 1uLL), v283);
          v294 = vqadd_s8(v286, v293);
          v295 = veor_s8(vqsub_s8(v289, v293), 0x8080808080808080);
          v296 = (a1 + v334 + v20);
          *v296 = veor_s8(v294, 0x8080808080808080);
          v297 = (v296 + v16);
          *v297 = veor_s8(vqadd_s8(v287, vshr_n_s8(vqadd_s8(v291, 0x303030303030303), 3uLL)), 0x8080808080808080);
          v298 = (v297 + v16);
          *v298 = veor_s8(vqsub_s8(v288, v292), 0x8080808080808080);
LABEL_37:
          *(v298 + v16) = v295;
          v49 = 2;
          goto LABEL_6;
        }

        if ((v10 & 2) != 0)
        {
          v299 = vld1_dup_s8(v51);
          v300 = v51 + 16;
          v301 = vld1_dup_s8(v300);
          v302 = v51 + 32;
          v303 = vld1_dup_s8(v302);
          v304 = (a1 + 8 + v16);
          v305 = *v304;
          v306 = (v304 + v16);
          v307 = *v306;
          v308 = (v306 + v16);
          v309 = *v308;
          v310 = (v308 + v16);
          v311 = *v310;
          v312 = (v310 + v16);
          v313 = vmax_u8(vabd_u8(v307, v309), vabd_u8(*v312, v311));
          v314 = vcgt_u8(v313, v303);
          v315 = vmax_u8(vmax_u8(vmax_u8(vmax_u8(v313, vabd_u8(*(a1 + 8), v305)), vabd_u8(v305, v307)), vabd_u8(*(v312 + v16), *v312)), vabd_u8(*(v312 + v16 + v16), *(v312 + v16)));
          v316 = vabd_u8(v309, v311);
          v317 = vcge_u8(v301, v315);
          v318 = vcge_u8(v299, vqadd_u8(vqadd_u8(v316, v316), vshr_n_u8(vabd_u8(v307, *v312), 1uLL)));
          v319 = veor_s8(v307, 0x8080808080808080);
          v320 = veor_s8(v309, 0x8080808080808080);
          v321 = veor_s8(v311, 0x8080808080808080);
          v322 = veor_s8(*v312, 0x8080808080808080);
          v323 = vqsub_s8(v321, v320);
          v324 = vand_s8(vand_s8(vqadd_s8(vqadd_s8(vqadd_s8(vand_s8(vqsub_s8(v319, v322), v314), v323), v323), v323), v318), v317);
          v325 = vshr_n_s8(vqadd_s8(v324, 0x404040404040404), 3uLL);
          v326 = vqadd_s8(v320, vshr_n_s8(vqadd_s8(v324, 0x303030303030303), 3uLL));
          v327 = veor_s8(vqsub_s8(v321, v325), 0x8080808080808080);
          v328 = vbic_s8(vrshr_n_s8(v325, 1uLL), v314);
          v329 = vqsub_s8(v322, v328);
          v330 = vqadd_s8(v319, v328);
          v295 = veor_s8(v329, 0x8080808080808080);
          v331 = (a1 + 8 + v334 + v20);
          *v331 = veor_s8(v330, 0x8080808080808080);
          v332 = (v331 + v16);
          *v332 = veor_s8(v326, 0x8080808080808080);
          v298 = (v332 + v16);
          *v298 = v327;
          goto LABEL_37;
        }

        v49 = 2;
      }

      else
      {
        v86 = vld1_dup_s8(v51);
        *v87.i8 = vld1_dup_s8(v50);
        v87.u64[1] = v86;
        v88 = vld1_dup_s8(v54);
        *v89.i8 = vld1_dup_s8(v52);
        v89.u64[1] = v88;
        v90 = vld1_dup_s8(v55);
        *v91.i8 = vld1_dup_s8(v53);
        v91.u64[1] = v90;
        v92 = (a1 + v16 + v16);
        v93 = *v92;
        v94 = (v92 + v16);
        v95 = *v94;
        v96 = (v94 + v16);
        v97 = *v96;
        v98 = &v96->i8[v16];
        v99 = vmaxq_u8(vabdq_u8(v93, v95), vabdq_u8(*v98, v97));
        v100 = vcgtq_u8(v99, v91);
        v101 = vabdq_u8(v95, v97);
        v102 = vandq_s8(vcgeq_u8(v87, vqaddq_u8(vqaddq_u8(v101, v101), vshrq_n_u8(vabdq_u8(v93, *v98), 1uLL))), vcgeq_u8(v89, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(v99, vabdq_u8(*a1, *(a1 + v16))), vabdq_u8(*(a1 + v16), v93)), vabdq_u8(*(v98 + v16), *v98)), vabdq_u8(*(v98 + v16 + v16), *(v98 + v16)))));
        v103 = veorq_s8(v93, v17);
        v104 = veorq_s8(v95, v17);
        v105 = veorq_s8(v97, v17);
        v106 = veorq_s8(*v98, v17);
        v107 = vqsubq_s8(v105, v104);
        v108 = vandq_s8(vqaddq_s8(vqaddq_s8(vqaddq_s8(vandq_s8(vqsubq_s8(v103, v106), v100), v107), v107), v107), v102);
        v109 = vshrq_n_s8(vqaddq_s8(v108, v18), 3uLL);
        v110 = vbicq_s8(vrshrq_n_s8(v109, 1uLL), v100);
        v111 = (a1 + v334 + v20);
        *v111 = veorq_s8(vqaddq_s8(v103, v110), v17);
        v112 = (v111 + v16);
        *v112 = veorq_s8(vqaddq_s8(v104, vshrq_n_s8(vqaddq_s8(v108, v19), 3uLL)), v17);
        v113 = (v112 + v16);
        *v113 = veorq_s8(vqsubq_s8(v105, v109), v17);
        *(v113 + v16) = veorq_s8(vqsubq_s8(v106, v110), v17);
        v49 = 2;
      }

LABEL_6:
      v11 >>= v49;
      a8 += v49;
      v8 >>= v49;
      v9 >>= v49;
      v10 >>= v49;
      v12 >>= v49;
      a1 += 8 * v49;
      if (!v12)
      {
        return;
      }
    }

    v21 = a1 + v334;
    v22 = v50 + 16;
    v23 = vld1_dup_s8(v50);
    v24 = vld1_dup_s8(v22);
    v25 = v50 + 32;
    goto LABEL_4;
  }
}