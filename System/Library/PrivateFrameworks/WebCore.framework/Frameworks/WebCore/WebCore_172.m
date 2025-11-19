uint64_t enc_row_mt_worker_hook_0(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1 + 628032;
  v5 = *(a1 + 452);
  v6 = *(*a1 + 628048);
  v7 = a1 + 24;
  v8 = *(a1 + 432);
  *(v3 + 11152) = a1 + 24;
  v9 = v2 + 59764;
  v110 = v2 + 59764;
  v107 = v2;
  if (!v2[159200])
  {
    v109 = 0;
    if (!setjmp((a1 + 236)))
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  if (!v2[65520])
  {
    v109 = v2[65521] != 0;
    if (!setjmp((a1 + 236)))
    {
      goto LABEL_22;
    }

LABEL_6:
    v103 = v9;
    v104 = v8;
    *(v1 + 232) = 0;
    pthread_mutex_lock(v6);
    *(v4 + 12) = 1;
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(v6);
    v102 = v107 + 263736;
    v99 = *(v107 + 263764);
    v100 = *(v107 + 263760);
    if (v99 >= 1 && *(v107 + 263760) >= 1)
    {
      v12 = *(*v102 + 32);
      v13 = 0;
      do
      {
        v14 = 0;
        v97 = v13 * v100;
        v98 = v13;
        do
        {
          v15 = (*(v107 + 456880) + 23824 * v14 + 23824 * v97);
          v16 = *v15;
          if (*v15 < v15[1])
          {
            v17 = 0;
            v18 = ((v15[3] + (1 << *(*v102 + 36)) + ~v15[2]) >> *(*v102 + 36));
            do
            {
              v19 = v16;
              (*(v4 + 40))(v15 + 5942, v17, (v18 - 1), v18);
              v16 = v19 + v12;
              v17 = (v17 + 1);
            }

            while (v19 + v12 < v15[1]);
          }

          ++v14;
        }

        while (v14 != v100);
        v13 = v98 + 1;
      }

      while (v98 + 1 != v99);
    }

    if (v109)
    {
      pthread_mutex_lock(*(v104 + 96));
      *(v104 + 120) = 1;
      pthread_mutex_unlock(*(v104 + 96));
      av1_set_vert_loop_filter_done(v103, v104, *(*v102 + 36));
    }

    return 0;
  }

  v109 = 1;
  if (setjmp((a1 + 236)))
  {
    goto LABEL_6;
  }

LABEL_22:
  *(v1 + 232) = 1;
  v106 = *(*(v110 + 3085) + 36);
  v20 = *(v107 + 4 * v5 + 627776);
  if (!*(v107 + 389712))
  {
    v24 = *(v1 + 8);
    *(v24 + 152736) = 0;
    goto LABEL_28;
  }

  v21 = *(*(v110 + 3085) + 28);
  v22 = malloc_type_malloc(0x6FuLL, 0x5F484EBFuLL);
  if (v22)
  {
    v23 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v23 - 1) = v22;
    if (v23)
    {
      *(((v22 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0;
      *(((v22 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((v22 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v22 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((v22 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *v23 = 0u;
      *v23 = 0;
      *(((v22 + 23) & 0xFFFFFFFFFFFFFFF0) + 1) = v21;
      v24 = *(v1 + 8);
      *(v24 + 152736) = v23;
LABEL_28:
      v25 = v24;
      goto LABEL_29;
    }
  }

  *(*(v1 + 8) + 152736) = 0;
  aom_internal_error(*(v3 + 11152), 2, "Failed to allocate PC_TREE");
  v25 = *(v1 + 8);
LABEL_29:
  *(v25 + 11064) = *(v110 + 3086);
  pthread_mutex_lock(v6);
  if (*(v4 + 12))
  {
LABEL_30:
    pthread_mutex_unlock(v6);
    goto LABEL_93;
  }

  v105 = v7;
  v108 = v1;
  while (1)
  {
    v26 = *(v107 + 456880);
    v27 = v26 + 23824 * v20;
    v28 = *(v27 + 4);
    v29 = (v27 + 23804);
    v30 = *v29;
    if (*v29 < v28)
    {
      v31 = v20;
      v32 = *(v110 + 3085);
      v33 = v20;
LABEL_62:
      v20 = v33;
      v68 = *(v32 + 32);
      v69 = v31;
      ++*(v26 + 23824 * v31 + 23808);
      *v29 = v68 + v30;
      goto LABEL_64;
    }

    v34 = v110[6177];
    if (v34 < 1 || v110[6176] < 1)
    {
      break;
    }

    v36 = *(v107 + 456880);
    v37 = v110[6176];
    v32 = *(v110 + 3085);
    v38 = *(v32 + 36);
    v39 = 1 << v38;
    v40 = (v26 + 23808);
    v41 = 23824 * v37;
    v42 = 0x7FFFFFFFLL;
    v43 = 0xFFFFFFFFLL;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = v43;
      v48 = v36;
      v49 = v40;
      v50 = v45;
      v51 = v110[6176];
      v52 = v44;
      v53 = v42;
      do
      {
        v55 = v53;
        v56 = v52;
        v57 = v47;
        v58 = v48[1];
        v59 = (((v39 + v48[3] + ~v48[2]) >> v38) + 1) >> 1;
        if (v59 >= (v58 + v39 + ~*v48) >> v38)
        {
          v59 = (v58 + v39 + ~*v48) >> v38;
        }

        v60 = *v49;
        if (*v49 < v59)
        {
          v61 = v58 - *(v49 - 1);
          if (v61 >= 1)
          {
            v62 = v60 < v55;
            if (v60 >= v55)
            {
              v55 = v55;
            }

            else
            {
              v55 = v60;
            }

            if (v62)
            {
              LODWORD(v56) = 0;
              v63 = 1;
            }

            else
            {
              v63 = 0;
            }

            v64 = v61 > v56;
            if ((v63 & v64) != 0)
            {
              v56 = v61;
            }

            else
            {
              v56 = v56;
            }

            if ((v63 & v64) != 0)
            {
              v57 = v50;
            }

            else
            {
              v57 = v57;
            }
          }
        }

        v54 = v55;
        v44 = v56;
        v42 = v54;
        ++v50;
        v49 += 5956;
        v48 += 5956;
        v47 = v57;
        v52 = v44;
        v53 = v42;
        --v51;
      }

      while (v51);
      ++v46;
      v45 += v37;
      v40 = (v40 + v41);
      v36 = (v36 + v41);
      v43 = v57;
    }

    while (v46 != v34);
    if (v57 == -1)
    {
      break;
    }

    v31 = v57;
    v65 = v26 + 23824 * v57;
    v66 = *(v65 + 4);
    v67 = (v65 + 23804);
    v30 = *v67;
    if (*v67 < v66)
    {
      v29 = v67;
      v33 = v57;
      goto LABEL_62;
    }

    v30 = -1;
    v69 = v57;
    v20 = v57;
LABEL_64:
    v70 = v69;
    v71 = v6;
    pthread_mutex_unlock(v6);
    v72 = *(v107 + 456880) + 23824 * v70;
    v73 = *(v72 + 20);
    v74 = *(v72 + 16);
    v75 = *(v72 + 21296);
    v76 = *(v1 + 8);
    v77 = v76 + 18317;
    v78 = v76[18552];
    v76[1383] = v78;
    v76[2097] = v72 + 32;
    v76[18544] = 0;
    if (!v75 || (v76[2096] = *(v72 + 21280), v30 == *v72))
    {
      memcpy(v78, (v72 + 32), 0x52FCuLL);
    }

    v79 = *(*(v110 + 3085) + 77);
    v76[1048] = *(*(v110 + 3164) + 8 * v74);
    if (!v79)
    {
      v76[1049] = *(*(v110 + 3165) + 8 * v74);
      v76[1050] = *(*(v110 + 3166) + 8 * v74);
    }

    v76[1063] = *(*(v110 + 3163) + 8 * v74);
    v76[1068] = *(*(v110 + 3167) + 8 * v74);
    if (*v77)
    {
      av1_crc32c_calculator_init((*v77 + 16968));
    }

    av1_encode_sb_row(v107, v76, v74, v73, v30);
    v6 = v71;
    pthread_mutex_lock(v71);
    *(v72 + 21288) += v76[18544];
    --*(v72 + 23808);
    ++*(*v4 + 4 * (v30 >> v106));
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(v71);
    pthread_mutex_lock(v71);
    v1 = v108;
    if (*(v4 + 12))
    {
      goto LABEL_30;
    }
  }

  pthread_mutex_unlock(v6);
  if (v109)
  {
    v80 = *(v108 + 432);
    v81 = v110[133];
    v82 = *(*(v110 + 3085) + 36);
    v83 = *(v4 + 16);
    pthread_mutex_lock(*(v80 + 96));
    v1 = v108;
    if ((*(v80 + 120) & 1) == 0)
    {
      v101 = ((v81 + (1 << v82) - 1) >> v82) - 1;
      do
      {
        v85 = *(v80 + 116);
        if (v85 >= *(v80 + 112))
        {
          break;
        }

        *(v80 + 116) = v85 + 1;
        v86 = *(v80 + 104);
        pthread_mutex_unlock(*(v80 + 96));
        if (!v86)
        {
          goto LABEL_89;
        }

        v87 = (v86 + 16 * v85);
        v88 = *(v1 + 440);
        v89 = v87[3];
        v90 = *v87;
        pthread_mutex_lock(v83);
        if (*(v4 + 12))
        {
LABEL_87:
          v84 = v83;
          v1 = v108;
          goto LABEL_88;
        }

        v96 = v89;
        if (v101 >= (v90 >> v106) + 1)
        {
          v91 = (v90 >> v106) + 1;
        }

        else
        {
          v91 = v101;
        }

        v92 = v90 >> v106;
        v93 = v91;
        while (1)
        {
          v94 = v110[6176];
          if (*(*v4 + 4 * v92) >= v94 && *(*v4 + 4 * v93) >= v94)
          {
            break;
          }

          pthread_cond_wait(*(v4 + 24), v83);
          if (*(v4 + 12))
          {
            goto LABEL_87;
          }
        }

        pthread_mutex_unlock(v83);
        av1_thread_loop_filter_rows(*v88, *(v88 + 8), v88 + 16, *(v88 + 7840), *v87, v87[1], v87[2], v96, v80, v105, (v88 + 7848), (v88 + 8360), v106);
        pthread_mutex_lock(*(v80 + 96));
        v1 = v108;
      }

      while ((*(v80 + 120) & 1) == 0);
    }

    v84 = *(v80 + 96);
LABEL_88:
    pthread_mutex_unlock(v84);
  }

LABEL_89:
  if (*(*(v110 + 3085) + 77))
  {
    v95 = 1;
  }

  else
  {
    v95 = 3;
  }

  av1_free_pc_tree_recursive(*(*(v1 + 8) + 152736), v95, 0, 0, *(v107 + 388856));
  *(*(v1 + 8) + 152736) = 0;
LABEL_93:
  *(v1 + 232) = 0;
  return 1;
}

void av1_calc_mb_wiener_var_mt(uint64_t a1, int a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v58 = (a1 + 239104);
  v3 = *a1 + 81920;
  v4 = *(a1 + 239588);
  v5 = v4 << 6;
  if (v5 <= 0x1FFFFFFE9 && (v6 = malloc_type_malloc(v5 | 0x17, 0x5F484EBFuLL)) != 0)
  {
    v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v7 - 8) = v6;
    *(v3 + 3112) = v7;
    if (v7)
    {
      if (v4 < 1)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else
  {
    *(v3 + 3112) = 0;
  }

  aom_internal_error(*v58, 2, "Failed to allocate row_mt_sync->mutex_");
  if (v4 >= 1 && *(v3 + 3112) != 0)
  {
LABEL_11:
    v9 = 0;
    v10 = v4;
    do
    {
      pthread_mutex_init((*(v3 + 3112) + v9), 0);
      v9 += 64;
      --v10;
    }

    while (v10);
  }

LABEL_13:
  v11 = (a1 + 627736);
  if ((48 * v4) <= 0x1FFFFFFE9 && (v12 = malloc_type_malloc(48 * v4 + 23, 0x5F484EBFuLL)) != 0)
  {
    v13 = (v3 + 3120);
    v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v14 - 8) = v12;
    *(v3 + 3120) = v14;
    if (v14)
    {
      if (v4 < 1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v13 = (v3 + 3120);
    *(v3 + 3120) = 0;
  }

  aom_internal_error(*v58, 2, "Failed to allocate row_mt_sync->cond_");
  if (v4 >= 1 && *v13)
  {
LABEL_21:
    v15 = 0;
    v16 = v4;
    do
    {
      pthread_cond_init((*v13 + v15), 0);
      v15 += 48;
      --v16;
    }

    while (v16);
  }

LABEL_23:
  v17 = 4 * v4;
  if (v17 > 0x1FFFFFFE9 || (v18 = malloc_type_malloc(v17 + 23, 0x5F484EBFuLL)) == 0)
  {
    v21 = (v3 + 3128);
    *(v3 + 3128) = 0;
    goto LABEL_28;
  }

  v19 = v18;
  v20 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v20 - 1) = v19;
  *(v3 + 3128) = v20;
  if (!v20)
  {
    v21 = (v3 + 3128);
LABEL_28:
    aom_internal_error(*v58, 2, "Failed to allocate row_mt_sync->num_finished_cols");
    v20 = *v21;
  }

  *(v3 + 3144) = v4;
  *(v3 + 3136) = 1;
  *(v3 + 3152) = a2;
  *(v3 + 3148) = 0;
  memset(v20, 255, v17);
  *(a1 + 628046) = 0;
  if (a2 < 1)
  {
    goto LABEL_45;
  }

  v22 = a1;
  v23 = (a1 + 86064);
  v24 = a2;
  v25 = a2 - 1;
  v26 = *v11;
  v27 = *(a1 + 627744);
  v28 = (*v11 + 56 * v25);
  v29 = v27 + 456 * v25;
  v28[3] = cal_mb_wiener_var_hook;
  v28[4] = v29;
  v28[5] = 0;
  *(v29 + 452) = v25;
  *(v29 + 448) = 0;
  *v29 = a1;
  if (a2 == 1)
  {
    *(v29 + 8) = v23;
    *(v26 + 48) = 0;
    goto LABEL_44;
  }

  v30 = 1 - a2;
  v57 = a2;
  v31 = a2 - 2;
  v32 = 56 * v24 - 88;
  v56 = v24;
  v33 = 456 * v24;
  v34 = v25;
  do
  {
    v38 = *(v29 + 16);
    *(v29 + 8) = v38;
    if (v38 != v23)
    {
      memcpy(v38, v23, 0x23D00uLL);
      v39 = *(v29 + 8);
      v40 = malloc_type_malloc(0x4027uLL, 0x5F484EBFuLL);
      if (v40)
      {
        v41 = (v40 + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v41 - 8) = v40;
        *(v39 + 148376) = v41;
        if (v41)
        {
          goto LABEL_34;
        }
      }

      else
      {
        *(v39 + 148376) = 0;
      }

      aom_internal_error(*v58, 2, "Failed to allocate td->wiener_tmp_pred_buf");
LABEL_34:
      v26 = *v11;
      v27 = *(a1 + 627744);
      v22 = a1;
    }

    --v34;
    v35 = (v27 + v33 - 912);
    v36 = (v26 + v32);
    *v36 = cal_mb_wiener_var_hook;
    v36[1] = v35;
    v29 = v27 + 456 * v34;
    v36[2] = 0;
    *(v27 + v33 - 460) = v31;
    *(v27 + v33 - 464) = 0;
    *v35 = v22;
    --v31;
    v32 -= 56;
    v33 -= 456;
  }

  while (!__CFADD__(v30++, 1));
  *(v27 + v33 - 448) = v23;
  v42 = (v26 + 56 * v25);
  v42[12] = 0;
  v43 = 56 * v56 - 64;
  do
  {
    (off_28100B668[0])(v42);
    v44 = *v11;
    *(v44 + v43) = 0;
    v43 -= 56;
    --v25;
    v42 = (v44 + 56 * v25);
  }

  while (v25);
  v26 = v44 + v43 + 8;
  a2 = v57;
LABEL_44:
  off_28100B670(v26);
LABEL_45:
  v45 = *v11;
  v46 = *(*v11 + 48);
  memset(__dst, 0, 404);
  if (v46)
  {
    memcpy(__dst, (*(v45 + 32) + 24), 0x194uLL);
  }

  v47 = a2;
  if (a2 >= 2)
  {
    v48 = a2 + 1;
    v49 = 56 * a2 - 24;
    do
    {
      v50 = *v11;
      off_28100B660[0]();
      if (!v51)
      {
        memcpy(__dst, (*(v50 + v49) + 24), 0x194uLL);
        v46 = 1;
      }

      --v48;
      v49 -= 56;
    }

    while (v48 > 2);
  }

  if (v46)
  {
    v52 = *v58;
    if (DWORD1(__dst[0]))
    {
      aom_internal_error(v52, __dst[0], "%s");
    }

    else
    {
      aom_internal_error(v52, __dst[0], 0);
    }
  }

  *(*(*(v45 + 32) + 8) + 11152) = *v58;
  av1_row_mt_sync_mem_dealloc((*a1 + 85032));
  if (a2 >= 1)
  {
    v53 = 8;
    do
    {
      v54 = *(*(a1 + 627744) + v53);
      if (v54 != a1 + 86064)
      {
        v55 = *(v54 + 148376);
        if (v55)
        {
          free(*(v55 - 8));
        }

        *(v54 + 148376) = 0;
      }

      v53 += 456;
      --v47;
    }

    while (v47);
  }
}

uint64_t cal_mb_wiener_var_hook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  STACK[0x3858] = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v4 = v3[1];
  v32 = *v3;
  v6 = *v3 + 628046;
  v7 = (*v3)[78506];
  v8 = *v3 + 59897;
  v9 = mi_size_wide_15[*(*v3 + 638064)];
  v10 = **v3;
  *(v4 + 11152) = v3 + 3;
  if (setjmp(v3 + 59))
  {
    *(v3 + 58) = 0;
    pthread_mutex_lock(v7);
    *v6 = 1;
    pthread_mutex_unlock(v7);
    v11 = *(v5 + 59898);
    v13 = v11 + 8;
    v12 = v11 < -8;
    v14 = v11 + 23;
    if (!v12)
    {
      v14 = v13;
    }

    if (*v8 < 1)
    {
      return 0;
    }

    else
    {
      v15 = 0;
      v16 = mi_size_wide_15[*(v5 + 638064)];
      v17 = (v14 >> 4);
      v18 = *v32;
      v19 = 0;
      do
      {
        v20 = v19;
        (*(v6 + 58))(v18 + 85032, v15, (v17 - 1), v17);
        v19 = v20 + v16;
        v15 = (v15 + 1);
      }

      while (v20 + v16 < *v8);
      return 0;
    }
  }

  else
  {
    *(v3 + 58) = 1;
    v33 = 0;
    v34 = 0;
    pthread_mutex_lock(v7);
    if ((*v6 & 1) == 0)
    {
      v22 = v10 + 81920;
      do
      {
        v23 = *(v22 + 3148);
        if (v23 >= *v8)
        {
          break;
        }

        v24 = *(v22 + 3148);
        ++*(v22 + 3152);
        *(v22 + 3148) = v23 + v9;
        pthread_mutex_unlock(v7);
        av1_calc_mb_wiener_var_row(v32, v4, v4 + 416, v24, &STACK[0x3040], &STACK[0x2040], &STACK[0x1040], &v35, v25, v26, v27, v28, v29, v30, v31, &v34, &v33, v3[1][18547]);
        pthread_mutex_lock(v7);
        --*(v22 + 3152);
        pthread_mutex_unlock(v7);
        pthread_mutex_lock(v7);
      }

      while (*v6 != 1);
    }

    pthread_mutex_unlock(v7);
    *(v3 + 58) = 0;
    return 1;
  }
}

void av1_write_tile_obu_mt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, void *a10, unsigned int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3);
  v13 = v12;
  v15 = v14;
  v114 = v16;
  v18 = v17;
  v20 = v19;
  v116 = v21;
  v118 = v22;
  v136 = *MEMORY[0x277D85DE8];
  v119 = (v11 + 627736);
  v120 = v11 + 636600;
  v113 = (v11 + 263760);
  v121 = v11;
  v111 = (v11 + 388404);
  v112 = v11 + 239104;
  v23 = v123;
  bzero(v123, 0x800uLL);
  for (i = 0; i != 5632; i += 22)
  {
    v25 = &v124[i];
    v25[3] = v23;
    v25[14] = v23 + 4;
    v23 += 8;
  }

  v109 = v15;
  v110 = v13;
  v26 = (v113[1] * *v113);
  LODWORD(v13) = *(v120 + 916);
  bzero(v135, 0x800uLL);
  v27 = (v26 - 1 + v13) / v13;
  if (v26 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = *(v121 + 456880) + 8;
    v32 = 1;
    do
    {
      v33 = &v124[v28];
      v34 = (*(v31 - 4) - *(v31 - 8)) * (*(v31 + 4) - *v31);
      v35 = 11 * (v26 - 1) == v28 || v30 + 1 == v27;
      *(v33 + 21) = v32;
      v32 = v35;
      *(v33 + 56) = v18;
      *v33 = v20;
      *(v33 + 15) = 0;
      *(v33 + 16) = 0;
      *(v33 + 20) = v32;
      v36 = v135[v29];
      v33[9] = *(v31 + 8);
      *(v33 + 17) = v34;
      v135[v29] = v36 + v34;
      if (v35)
      {
        ++v29;
        v30 = 0;
      }

      else
      {
        ++v30;
      }

      v28 += 11;
      v31 += 23824;
    }

    while (11 * v26 != v28);
  }

  bzero(v134, 0x1000uLL);
  v37 = *(v120 + 1248);
  v117 = v37;
  v38 = v118;
  if (v13 >= 1)
  {
    v39 = 0;
    v40 = 0;
    v115 = *(v112 + 484) * *(v112 + 488);
    v41 = v124;
    v38 = v118;
    v42 = *(v120 + 1248);
    do
    {
      if (v40 == v13 - 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v42 - v117 * v135[v40] / v115;
        v42 = v117 * v135[v40] / v115;
      }

      v41[4] = v38;
      v41[5] = v38;
      av1_write_obu_tg_tile_headers(v121, v121 + 86480, v41, v39);
      v38 = (v38 + v42);
      v134[v40++] = v42 - *(v41 + 16);
      v13 = *(v120 + 916);
      v39 += v27;
      v41 += 11 * v27;
      v42 = v37;
    }

    while (v40 < v13);
  }

  v43 = v117;
  if (v26 >= 1)
  {
    v44 = 0;
    v45 = &v127;
    v46 = v118;
    while (1)
    {
      v47 = *(v45 + 9);
      v48 = v37;
      if (v47)
      {
        v48 = v134[v44];
        v43 = v48;
      }

      v49 = *(v45 + 8);
      if (v49)
      {
        v37 = 0;
        *v45 = v48;
        if (!v47)
        {
          goto LABEL_23;
        }

LABEL_32:
        v51 = *(v45 - 2);
        v46 = *(v45 - 1);
        v52 = v48 + *(v45 + 4);
        *v45 = v52;
        v45 += 11;
        if (v49)
        {
          ++v44;
        }

        v38 = (v51 + v52);
        if (!--v26)
        {
          break;
        }
      }

      else
      {
        v50 = v43 * *(v45 + 5) / v135[v44];
        v37 = v48 - v50;
        v48 = v50;
        *v45 = v50;
        if (v47)
        {
          goto LABEL_32;
        }

LABEL_23:
        *(v45 - 2) = v38;
        *(v45 - 1) = v46;
        v45 += 11;
        if (v49)
        {
          ++v44;
        }

        v38 = (v38 + v48);
        if (!--v26)
        {
          break;
        }
      }
    }
  }

  if (a11 >= 1)
  {
    v53 = (v121 + 86064);
    v54 = a11;
    v55 = 456 * a11 - 456;
    v56 = 56 * a11 - 24;
    v57 = 0uLL;
    do
    {
      v61 = *v119;
      v62 = v119[1];
      v63 = v62 + v55;
      if (v55)
      {
        v58 = *(v63 + 16);
        *(v63 + 8) = v58;
        if (v58 != v53)
        {
          memcpy(v58, v53, 0x23D00uLL);
          v57 = 0u;
          v58 = *(v63 + 8);
        }
      }

      else
      {
        *(v63 + 8) = v53;
        v58 = v121 + 86064;
      }

      v59 = v62 + v55;
      *v59 = v121;
      *(v59 + 448) = v54 - 1;
      *(v59 + 452) = v54 - 1;
      *(v58 + 148392) = v57;
      *(v58 + 148408) = 0;
      --v54;
      v60 = (v61 + v56);
      *(v60 - 1) = pack_bs_worker_hook;
      *v60 = v63;
      v60[1] = v124;
      v55 -= 456;
      v56 -= 56;
    }

    while ((v54 + 1) > 1);
  }

  v64 = *v113 * v113[1];
  *v120 = 0;
  *(v120 + 4) = 0;
  v65 = v64;
  bzero((v121 + 628408), 16 * v65);
  if (v65)
  {
    v66 = *(v121 + 456880);
    if (v65 == 1)
    {
      v67 = 0;
LABEL_48:
      v72 = (v121 + 16 * v67 + 628416);
      v73 = (v66 + 23824 * v67 + 21288);
      do
      {
        *(v72 - 1) = *v73;
        *v72 = v67;
        v72 += 8;
        ++v67;
        v73 += 2978;
      }

      while (v65 != v67);
      goto LABEL_50;
    }

    v68 = 0;
    v67 = v65 & 0xFFFE;
    v69 = v119 + 87;
    v70 = *(v121 + 456880);
    do
    {
      v71 = *(v70 + 45112);
      *(v69 - 3) = *(v70 + 21288);
      *(v69 - 1) = v71;
      *(v69 - 8) = v68;
      *v69 = v68 | 1;
      v69 += 16;
      v68 += 2;
      v70 += 47648;
    }

    while (v67 != v68);
    if (v67 != v65)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  qsort((v121 + 628408), v65, 0x10uLL, compare_tile_order);
  if (a11 >= 1)
  {
    v74 = a11 - 1;
    v75 = (*v119 + 56 * v74);
    v75[12] = 0;
    if (a11 != 1)
    {
      v76 = 56 * a11 - 64;
      do
      {
        off_28100B668(v75);
        v77 = *v119;
        *(v77 + v76) = 0;
        v76 -= 56;
        --v74;
        v75 = (v77 + 56 * v74);
      }

      while (v74);
      v75 = (v77 + v76 + 8);
    }

    off_28100B670(v75);
  }

  v78 = *v119;
  v79 = *(*v119 + 48);
  memset(v134, 0, 404);
  if (v79)
  {
    memcpy(v134, (*(v78 + 32) + 24), 0x194uLL);
  }

  if (a11 >= 2)
  {
    v80 = a11 + 1;
    v81 = 56 * a11 - 24;
    do
    {
      v82 = *v119;
      off_28100B660[0]();
      if (!v83)
      {
        memcpy(v134, (*(v82 + v81) + 24), 0x194uLL);
        v79 = 1;
      }

      --v80;
      v81 -= 56;
    }

    while (v80 > 2);
  }

  if (v79)
  {
    v84 = *v112;
    if (HIDWORD(v134[0]))
    {
      aom_internal_error(v84, v134[0], "%s");
    }

    else
    {
      aom_internal_error(v84, v134[0], 0);
    }
  }

  *(*(*(v78 + 32) + 8) + 11152) = *v112;
  v85 = (v113[1] * *v113);
  v135[0] = 1;
  if (v85 >= 1)
  {
    if (v132)
    {
      v86 = &v118[*v116];
      v87 = v130;
      v88 = v129;
      *a10 += v130;
      *a9 = v88;
    }

    else
    {
      v87 = 0;
      v86 = v118;
    }

    v89 = v125;
    v90 = v131;
    v134[0] = v125 + v87 + 4 * (v131 == 0);
    if (v125 > *v110)
    {
      *v109 = 0;
      *v110 = v89;
    }

    v91 = *v126 + v89;
    v122 = v91;
    if (v90)
    {
      av1_write_last_tile_info(v121, v114, v124[0], v134, v86, &v122, a10, v109, v135, *a9, v128);
      v91 = v122;
    }

    v92 = v127;
    v93 = *v116 + v91;
    *v116 = v93;
    if (v85 != 1)
    {
      v101 = v91;
      v102 = &v133;
      for (j = 1; j != v85; ++j)
      {
        if (*v102)
        {
          v86 = &v118[v93];
          v104 = *(v102 - 6);
          v105 = *(v102 - 5);
          *a10 += v105;
          *a9 = v104;
        }

        else
        {
          v105 = v134[0];
        }

        v106 = *(v102 - 17);
        v134[0] = v106 + v105 + 4 * (*(v102 - 1) == 0);
        if (v106 > *v110)
        {
          *v109 = j;
          *v110 = v106;
        }

        v107 = **(v102 - 15);
        v108 = (v107 + v106);
        v122 = v107 + v106;
        memmove(&v118[v101], &v118[v92], v108);
        if (*(v102 - 1))
        {
          av1_write_last_tile_info(v121, v114, *(v102 - 21), v134, v86, &v122, a10, v109, v135, *a9, *(v102 - 28));
          v108 = v122;
        }

        v92 += *(v102 - 9);
        v101 += v108;
        v93 = *v116 + v108;
        *v116 = v93;
        v102 += 22;
      }
    }
  }

  if (a11 >= 1)
  {
    v94 = *(v120 + 1424);
    v95 = *(v112 + 184);
    v96 = a11 + 1;
    v97 = v119[1] + 456 * a11 - 448;
    do
    {
      v98 = (*v97 + 147456);
      *v111 += *(*v97 + 148392);
      if (v111[153])
      {
        v99 = v94 == 0;
      }

      else
      {
        v99 = 1;
      }

      if (!v99)
      {
        v100 = v111[407];
        if (v100 <= v98[235])
        {
          v100 = v98[235];
        }

        v111[407] = v100;
      }

      v95[363] += v98[236];
      v95[364] += v98[237];
      v95[365] += v98[238];
      v95[366] += v98[239];
      --v96;
      v97 -= 456;
    }

    while (v96 > 1);
  }
}

uint64_t pack_bs_worker_hook(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*a1 + 636600);
  v6 = *(*a1 + 263760);
  v7 = *(*a1 + 263764);
  v8 = *(*a1 + 628400);
  *(*(a1 + 8) + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v8);
    *(v5 + 4) = 1;
    pthread_mutex_unlock(v8);
    return 0;
  }

  else
  {
    *(a1 + 232) = 1;
    pthread_mutex_lock(v8);
    if ((v5[1] & 1) == 0)
    {
      v10 = v7 * v6;
      do
      {
        v11 = *v5;
        if (v11 == v10)
        {
          break;
        }

        *v5 = v11 + 1;
        v12 = *(v4 + 628408 + 16 * v11 + 8);
        pthread_mutex_unlock(v8);
        v13 = *(a1 + 8);
        *(v13 + 11064) = *(v4 + 456880) + 23824 * v12 + 32;
        av1_pack_tile_info(v4, v13, a2 + 88 * v12);
        pthread_mutex_lock(v8);
      }

      while ((v5[1] & 1) == 0);
    }

    pthread_mutex_unlock(v8);
    *(a1 + 232) = 0;
    return 1;
  }
}

void av1_cdef_mse_calc_frame_mt(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1 + 636712;
  v3 = a1 + 627708;
  v4 = *(a1 + 627708);
  v5 = *(a1 + 636712);
  if (v5)
  {
    pthread_mutex_init(v5, 0);
  }

  *(a1 + 636733) = 0;
  *(a1 + 636728) = 0;
  if (v4 >= 1)
  {
    v6 = *(v3 + 28);
    v7 = *(v3 + 36);
    v8 = v4;
    if (v4 == 1)
    {
      goto LABEL_8;
    }

    v8 = v4 & 1;
    v9 = (v7 + 456 * v4 - 912);
    v10 = (v6 + 56 * v4 - 32);
    v11 = v4 & 0x7FFFFFFE;
    do
    {
      v9[57] = a1;
      *v9 = a1;
      *v10 = cdef_filter_block_worker_hook;
      v10[1] = v9 + 57;
      *(v10 - 7) = cdef_filter_block_worker_hook;
      *(v10 - 6) = v9;
      v9 -= 114;
      v10[2] = v2;
      *(v10 - 5) = v2;
      v10 -= 14;
      v11 -= 2;
    }

    while (v11);
    if ((v4 & 0x7FFFFFFE) != v4)
    {
LABEL_8:
      v12 = v8 + 1;
      v13 = (v7 + 456 * v8 - 456);
      v14 = (v6 + 56 * v8 - 16);
      do
      {
        *v13 = a1;
        *(v14 - 2) = cdef_filter_block_worker_hook;
        *(v14 - 1) = v13;
        *v14 = v2;
        v14 -= 7;
        --v12;
        v13 -= 57;
      }

      while (v12 > 1);
    }

    v15 = v4 - 1;
    v16 = (v6 + 56 * (v4 - 1));
    v16[12] = 0;
    if (v4 != 1)
    {
      v17 = 56 * v4 - 64;
      do
      {
        off_28100B668(v16);
        v18 = *(v3 + 28);
        *(v18 + v17) = 0;
        v17 -= 56;
        --v15;
        v16 = (v18 + 56 * v15);
      }

      while (v15);
      v16 = (v18 + v17 + 8);
    }

    off_28100B670(v16);
  }

  v19 = *(v3 + 28);
  v20 = *(v19 + 48);
  memset(__dst, 0, sizeof(__dst));
  if (v20)
  {
    memcpy(__dst, (*(v19 + 32) + 24), sizeof(__dst));
  }

  if (v4 >= 2)
  {
    v21 = v4 + 1;
    v22 = 56 * v4 - 24;
    do
    {
      v23 = *(v3 + 28);
      off_28100B660[0]();
      if (!v24)
      {
        memcpy(__dst, (*(v23 + v22) + 24), sizeof(__dst));
        v20 = 1;
      }

      --v21;
      v22 -= 56;
    }

    while (v21 > 2);
  }

  if (v20)
  {
    v25 = *(a1 + 239104);
    if (*&__dst[4])
    {
      aom_internal_error(v25, *__dst, "%s");
    }

    else
    {
      aom_internal_error(v25, *__dst, 0);
    }
  }

  *(*(*(v19 + 32) + 8) + 11152) = *(a1 + 239104);
}

int8x16_t *av1_compute_num_workers_for_mt(int8x16_t *result)
{
  v1 = 0;
  v2 = &result[16483].i64[1];
  v3 = &result[14944].i32[3];
  v4 = result + 16505;
  v5 = result + 16489;
  v6.i64[0] = 0x100000001;
  v6.i64[1] = 0x100000001;
  do
  {
    if (v1 > 5)
    {
      if (v1 > 8)
      {
        if (v1 == 9)
        {
          v7 = result[16597].i32[3];
          if (v7 < 2)
          {
            goto LABEL_2;
          }

          v170 = result[16485].i32[1] * result[16485].i32[0];
        }

        else
        {
          if (v1 == 10)
          {
            v7 = *(result->i64[0] + 74268);
            goto LABEL_3;
          }

          if (result[16600].i32[2])
          {
LABEL_196:
            v7 = 0;
            goto LABEL_3;
          }

          v7 = result[16597].i32[3];
          if (v7 < 2 || result[16602].i8[1] != 1)
          {
LABEL_2:
            v7 = 1;
            goto LABEL_3;
          }

          result[39879].i8[0] = 3;
          v170 = result[14974].i32[1] / 2;
        }

        goto LABEL_189;
      }

      if (v1 != 6)
      {
        if (v1 == 7)
        {
          v7 = result[16597].i32[3];
          if (v7 < 2)
          {
            goto LABEL_2;
          }

          v8 = result[16485].u32[0];
          v9 = result[16485].u32[1];
          if (result[16602].i8[1] != 1)
          {
            goto LABEL_188;
          }

          v10 = 0;
          if (v9 < 1 || v8 < 1)
          {
            goto LABEL_192;
          }

          v21 = 0;
          v10 = 0;
          v22 = *(*v2 + 36);
          v23 = result[14974].i32[2];
          v24 = 1 << v22;
          v25 = result[16505].i32[0];
          v26 = vdupq_n_s32(result[16488].u32[3]);
          v27 = vdupq_n_s32(v22);
          v28 = vdupq_n_s32(v23);
          v29 = vdupq_n_s32(1 << v22);
          while (1)
          {
            v30 = v25 << v22;
            v25 = v4->i32[++v21];
            v31 = v25 << v22;
            if (v25 << v22 >= result[14974].i32[1])
            {
              v31 = result[14974].i32[1];
            }

            v32 = (v24 + ~v30 + v31) >> v22;
            if (v8 < 8)
            {
              break;
            }

            v35 = v10;
            v36 = 0uLL;
            v37 = vdupq_n_s32(v32);
            v38 = v8 & 0x7FFFFFF8;
            v39 = result + 16490;
            v40 = v26;
            do
            {
              v41 = v39[-1];
              v42 = vextq_s8(v40, v41, 0xCuLL);
              v43 = *v39;
              v39 += 2;
              v40 = v43;
              v44 = vshlq_u32(vextq_s8(v41, v43, 0xCuLL), v27);
              v45 = vaddq_s32(vaddq_s32(v29, vminq_s32(vshlq_u32(v41, v27), v28)), vmvnq_s8(vshlq_u32(v42, v27)));
              v46 = vaddq_s32(vaddq_s32(v29, vminq_s32(vshlq_u32(v43, v27), v28)), vmvnq_s8(v44));
              v47 = vnegq_s32(v27);
              v35 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v45, v47), v6), 1uLL), v37), v35);
              v36 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v46, v47), v6), 1uLL), v37), v36);
              v38 -= 8;
            }

            while (v38);
            v10 = vaddvq_s32(vaddq_s32(v36, v35));
            if ((v8 & 0x7FFFFFF8) != v8)
            {
              v34 = v40.i32[3];
              v33 = v8 & 0x7FFFFFF8;
LABEL_31:
              v48 = &v5->i32[v33];
              v49 = v8 - v33;
              do
              {
                v50 = v34 << v22;
                v51 = *v48++;
                v34 = v51;
                v52 = v51 << v22;
                if (v51 << v22 >= v23)
                {
                  v52 = result[14974].i32[2];
                }

                v53 = (((v24 + ~v50 + v52) >> v22) + 1) >> 1;
                if (v53 >= v32)
                {
                  v53 = v32;
                }

                v10 += v53;
                --v49;
              }

              while (v49);
            }

            if (v21 == v9)
            {
              goto LABEL_192;
            }
          }

          v33 = 0;
          v34 = result[16488].i32[3];
          goto LABEL_31;
        }

        v7 = result[16597].i32[3];
        if (v7 < 2)
        {
          goto LABEL_2;
        }

        v8 = result[16485].u32[0];
        v9 = result[16485].u32[1];
        if (result[16602].i8[1] != 1)
        {
          goto LABEL_188;
        }

        v10 = 0;
        if (v9 < 1 || v8 < 1)
        {
          goto LABEL_192;
        }

        v204 = 0;
        v10 = 0;
        v205 = *(*v2 + 36);
        v206 = result[14974].i32[2];
        v207 = 1 << v205;
        v208 = result[16505].i32[0];
        v209 = vdupq_n_s32(result[16488].u32[3]);
        v210 = vdupq_n_s32(v205);
        v211 = vdupq_n_s32(v206);
        v212 = vdupq_n_s32(1 << v205);
        while (1)
        {
          v213 = v208 << v205;
          v208 = v4->i32[++v204];
          v214 = v208 << v205;
          if (v208 << v205 >= result[14974].i32[1])
          {
            v214 = result[14974].i32[1];
          }

          v215 = (v207 + ~v213 + v214) >> v205;
          if (v8 < 8)
          {
            break;
          }

          v218 = v10;
          v219 = 0uLL;
          v220 = vdupq_n_s32(v215);
          v221 = v8 & 0x7FFFFFF8;
          v222 = result + 16490;
          v223 = v209;
          do
          {
            v224 = v222[-1];
            v225 = vextq_s8(v223, v224, 0xCuLL);
            v226 = *v222;
            v222 += 2;
            v223 = v226;
            v227 = vshlq_u32(vextq_s8(v224, v226, 0xCuLL), v210);
            v228 = vaddq_s32(vaddq_s32(v212, vminq_s32(vshlq_u32(v224, v210), v211)), vmvnq_s8(vshlq_u32(v225, v210)));
            v229 = vaddq_s32(vaddq_s32(v212, vminq_s32(vshlq_u32(v226, v210), v211)), vmvnq_s8(v227));
            v230 = vnegq_s32(v210);
            v218 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v228, v230), v6), 1uLL), v220), v218);
            v219 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v229, v230), v6), 1uLL), v220), v219);
            v221 -= 8;
          }

          while (v221);
          v10 = vaddvq_s32(vaddq_s32(v219, v218));
          if ((v8 & 0x7FFFFFF8) != v8)
          {
            v217 = v223.i32[3];
            v216 = v8 & 0x7FFFFFF8;
LABEL_160:
            v231 = &v5->i32[v216];
            v232 = v8 - v216;
            do
            {
              v233 = v217 << v205;
              v234 = *v231++;
              v217 = v234;
              v235 = v234 << v205;
              if (v234 << v205 >= v206)
              {
                v235 = result[14974].i32[2];
              }

              v236 = (((v207 + ~v233 + v235) >> v205) + 1) >> 1;
              if (v236 >= v215)
              {
                v236 = v215;
              }

              v10 += v236;
              --v232;
            }

            while (v232);
          }

          if (v204 == v9)
          {
            goto LABEL_192;
          }
        }

        v216 = 0;
        v217 = result[16488].i32[3];
        goto LABEL_160;
      }

      v7 = result[16597].i32[3];
      if (v7 < 2)
      {
        goto LABEL_2;
      }

      v8 = result[16485].u32[0];
      v9 = result[16485].u32[1];
      if (result[16602].i8[1] != 1)
      {
        goto LABEL_188;
      }

      v10 = 0;
      if (v9 < 1 || v8 < 1)
      {
        goto LABEL_192;
      }

      v137 = 0;
      v10 = 0;
      v138 = *(*v2 + 36);
      v139 = result[14974].i32[2];
      v140 = 1 << v138;
      v141 = result[16505].i32[0];
      v142 = vdupq_n_s32(result[16488].u32[3]);
      v143 = vdupq_n_s32(v138);
      v144 = vdupq_n_s32(v139);
      v145 = vdupq_n_s32(1 << v138);
      while (1)
      {
        v146 = v141 << v138;
        v141 = v4->i32[++v137];
        v147 = v141 << v138;
        if (v141 << v138 >= result[14974].i32[1])
        {
          v147 = result[14974].i32[1];
        }

        v148 = (v140 + ~v146 + v147) >> v138;
        if (v8 < 8)
        {
          break;
        }

        v151 = v10;
        v152 = 0uLL;
        v153 = vdupq_n_s32(v148);
        v154 = v8 & 0x7FFFFFF8;
        v155 = result + 16490;
        v156 = v142;
        do
        {
          v157 = v155[-1];
          v158 = vextq_s8(v156, v157, 0xCuLL);
          v159 = *v155;
          v155 += 2;
          v156 = v159;
          v160 = vshlq_u32(vextq_s8(v157, v159, 0xCuLL), v143);
          v161 = vaddq_s32(vaddq_s32(v145, vminq_s32(vshlq_u32(v157, v143), v144)), vmvnq_s8(vshlq_u32(v158, v143)));
          v162 = vaddq_s32(vaddq_s32(v145, vminq_s32(vshlq_u32(v159, v143), v144)), vmvnq_s8(v160));
          v163 = vnegq_s32(v143);
          v151 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v161, v163), v6), 1uLL), v153), v151);
          v152 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v162, v163), v6), 1uLL), v153), v152);
          v154 -= 8;
        }

        while (v154);
        v10 = vaddvq_s32(vaddq_s32(v152, v151));
        if ((v8 & 0x7FFFFFF8) != v8)
        {
          v150 = v156.i32[3];
          v149 = v8 & 0x7FFFFFF8;
LABEL_116:
          v164 = &v5->i32[v149];
          v165 = v8 - v149;
          do
          {
            v166 = v150 << v138;
            v167 = *v164++;
            v150 = v167;
            v168 = v167 << v138;
            if (v167 << v138 >= v139)
            {
              v168 = result[14974].i32[2];
            }

            v169 = (((v140 + ~v166 + v168) >> v138) + 1) >> 1;
            if (v169 >= v148)
            {
              v169 = v148;
            }

            v10 += v169;
            --v165;
          }

          while (v165);
        }

        if (v137 == v9)
        {
          goto LABEL_192;
        }
      }

      v149 = 0;
      v150 = result[16488].i32[3];
      goto LABEL_116;
    }

    if (v1 > 2)
    {
      if (v1 == 3)
      {
        goto LABEL_2;
      }

      if (v1 == 4)
      {
        v7 = result[16597].i32[3];
        if (v7 < 2)
        {
          goto LABEL_2;
        }

        v8 = result[16485].u32[0];
        v9 = result[16485].u32[1];
        if (result[16602].i8[1] != 1)
        {
          goto LABEL_188;
        }

        v10 = 0;
        if (v9 < 1 || v8 < 1)
        {
          goto LABEL_192;
        }

        v54 = 0;
        v10 = 0;
        v55 = *(*v2 + 36);
        v56 = result[14974].i32[2];
        v57 = 1 << v55;
        v58 = result[16505].i32[0];
        v59 = vdupq_n_s32(result[16488].u32[3]);
        v60 = vdupq_n_s32(v55);
        v61 = vdupq_n_s32(v56);
        v62 = vdupq_n_s32(1 << v55);
        while (1)
        {
          v63 = v58 << v55;
          v58 = v4->i32[++v54];
          v64 = v58 << v55;
          if (v58 << v55 >= result[14974].i32[1])
          {
            v64 = result[14974].i32[1];
          }

          v65 = (v57 + ~v63 + v64) >> v55;
          if (v8 < 8)
          {
            break;
          }

          v68 = v10;
          v69 = 0uLL;
          v70 = vdupq_n_s32(v65);
          v71 = v8 & 0x7FFFFFF8;
          v72 = result + 16490;
          v73 = v59;
          do
          {
            v74 = v72[-1];
            v75 = vextq_s8(v73, v74, 0xCuLL);
            v76 = *v72;
            v72 += 2;
            v73 = v76;
            v77 = vshlq_u32(vextq_s8(v74, v76, 0xCuLL), v60);
            v78 = vaddq_s32(vaddq_s32(v62, vminq_s32(vshlq_u32(v74, v60), v61)), vmvnq_s8(vshlq_u32(v75, v60)));
            v79 = vaddq_s32(vaddq_s32(v62, vminq_s32(vshlq_u32(v76, v60), v61)), vmvnq_s8(v77));
            v80 = vnegq_s32(v60);
            v68 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v78, v80), v6), 1uLL), v70), v68);
            v69 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v79, v80), v6), 1uLL), v70), v69);
            v71 -= 8;
          }

          while (v71);
          v10 = vaddvq_s32(vaddq_s32(v69, v68));
          if ((v8 & 0x7FFFFFF8) != v8)
          {
            v67 = v73.i32[3];
            v66 = v8 & 0x7FFFFFF8;
LABEL_54:
            v81 = &v5->i32[v66];
            v82 = v8 - v66;
            do
            {
              v83 = v67 << v55;
              v84 = *v81++;
              v67 = v84;
              v85 = v84 << v55;
              if (v84 << v55 >= v56)
              {
                v85 = result[14974].i32[2];
              }

              v86 = (((v57 + ~v83 + v85) >> v55) + 1) >> 1;
              if (v86 >= v65)
              {
                v86 = v65;
              }

              v10 += v86;
              --v82;
            }

            while (v82);
          }

          if (v54 == v9)
          {
            goto LABEL_192;
          }
        }

        v66 = 0;
        v67 = result[16488].i32[3];
        goto LABEL_54;
      }

      v7 = result[16597].i32[3];
      if (v7 < 2)
      {
        goto LABEL_2;
      }

      v8 = result[16485].u32[0];
      v9 = result[16485].u32[1];
      if (result[16602].i8[1] != 1)
      {
        goto LABEL_188;
      }

      v10 = 0;
      if (v9 < 1 || v8 < 1)
      {
        goto LABEL_192;
      }

      v237 = 0;
      v10 = 0;
      v238 = *(*v2 + 36);
      v239 = result[14974].i32[2];
      v240 = 1 << v238;
      v241 = result[16505].i32[0];
      v242 = vdupq_n_s32(result[16488].u32[3]);
      v243 = vdupq_n_s32(v238);
      v244 = vdupq_n_s32(v239);
      v245 = vdupq_n_s32(1 << v238);
      while (1)
      {
        v246 = v241 << v238;
        v241 = v4->i32[++v237];
        v247 = v241 << v238;
        if (v241 << v238 >= result[14974].i32[1])
        {
          v247 = result[14974].i32[1];
        }

        v248 = (v240 + ~v246 + v247) >> v238;
        if (v8 < 8)
        {
          break;
        }

        v251 = v10;
        v252 = 0uLL;
        v253 = vdupq_n_s32(v248);
        v254 = v8 & 0x7FFFFFF8;
        v255 = result + 16490;
        v256 = v242;
        do
        {
          v257 = v255[-1];
          v258 = vextq_s8(v256, v257, 0xCuLL);
          v259 = *v255;
          v255 += 2;
          v256 = v259;
          v260 = vshlq_u32(vextq_s8(v257, v259, 0xCuLL), v243);
          v261 = vaddq_s32(vaddq_s32(v245, vminq_s32(vshlq_u32(v257, v243), v244)), vmvnq_s8(vshlq_u32(v258, v243)));
          v262 = vaddq_s32(vaddq_s32(v245, vminq_s32(vshlq_u32(v259, v243), v244)), vmvnq_s8(v260));
          v263 = vnegq_s32(v243);
          v251 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v261, v263), v6), 1uLL), v253), v251);
          v252 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v262, v263), v6), 1uLL), v253), v252);
          v254 -= 8;
        }

        while (v254);
        v10 = vaddvq_s32(vaddq_s32(v252, v251));
        if ((v8 & 0x7FFFFFF8) != v8)
        {
          v250 = v256.i32[3];
          v249 = v8 & 0x7FFFFFF8;
LABEL_181:
          v264 = &v5->i32[v249];
          v265 = v8 - v249;
          do
          {
            v266 = v250 << v238;
            v267 = *v264++;
            v250 = v267;
            v268 = v267 << v238;
            if (v267 << v238 >= v239)
            {
              v268 = result[14974].i32[2];
            }

            v269 = (((v240 + ~v266 + v268) >> v238) + 1) >> 1;
            if (v269 >= v248)
            {
              v269 = v248;
            }

            v10 += v269;
            --v265;
          }

          while (v265);
        }

        if (v237 == v9)
        {
          goto LABEL_192;
        }
      }

      v249 = 0;
      v250 = result[16488].i32[3];
      goto LABEL_181;
    }

    if (!v1)
    {
      if (result[16600].i32[2] > 1u)
      {
        goto LABEL_196;
      }

      v7 = result[16597].i32[3];
      if (v7 < 2)
      {
        goto LABEL_2;
      }

      v8 = result[16485].u32[0];
      v9 = result[16485].u32[1];
      if (result[16602].i8[1] != 1)
      {
        goto LABEL_188;
      }

      v10 = 0;
      if (v9 < 1 || v8 < 1)
      {
        goto LABEL_192;
      }

      v107 = 0;
      v10 = 0;
      v108 = *(*v2 + 36);
      v109 = result[14974].i32[2];
      v110 = 1 << v108;
      v111 = result[16505].i32[0];
      v112 = vdupq_n_s32(result[16488].u32[3]);
      v113 = vdupq_n_s32(v108);
      v114 = vdupq_n_s32(v109);
      v115 = vdupq_n_s32(1 << v108);
      v116 = vnegq_s32(v113);
      while (1)
      {
        v117 = v111 << v108;
        v111 = v4->i32[++v107];
        v118 = v111 << v108;
        if (v111 << v108 >= result[14974].i32[1])
        {
          v118 = result[14974].i32[1];
        }

        v119 = (v110 + ~v117 + v118) >> v108;
        if (v8 < 8)
        {
          break;
        }

        v122 = v10;
        v123 = 0uLL;
        v124 = vdupq_n_s32(v119);
        v125 = v8 & 0x7FFFFFF8;
        v126 = result + 16490;
        v127 = v112;
        do
        {
          v128 = v126[-1];
          v129 = vextq_s8(v127, v128, 0xCuLL);
          v130 = *v126;
          v126 += 2;
          v127 = v130;
          v122 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v115, vminq_s32(vshlq_u32(v128, v113), v114)), vmvnq_s8(vshlq_u32(v129, v113))), v116), v6), 1uLL), v124), v122);
          v123 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v115, vminq_s32(vshlq_u32(v130, v113), v114)), vmvnq_s8(vshlq_u32(vextq_s8(v128, v130, 0xCuLL), v113))), v116), v6), 1uLL), v124), v123);
          v125 -= 8;
        }

        while (v125);
        v10 = vaddvq_s32(vaddq_s32(v123, v122));
        if ((v8 & 0x7FFFFFF8) != v8)
        {
          v121 = v127.i32[3];
          v120 = v8 & 0x7FFFFFF8;
LABEL_95:
          v131 = &v5->i32[v120];
          v132 = v8 - v120;
          do
          {
            v133 = v121 << v108;
            v134 = *v131++;
            v121 = v134;
            v135 = v134 << v108;
            if (v134 << v108 >= v109)
            {
              v135 = result[14974].i32[2];
            }

            v136 = (((v110 + ~v133 + v135) >> v108) + 1) >> 1;
            if (v136 >= v119)
            {
              v136 = v119;
            }

            v10 += v136;
            --v132;
          }

          while (v132);
        }

        if (v107 == v9)
        {
          goto LABEL_192;
        }
      }

      v120 = 0;
      v121 = result[16488].i32[3];
      goto LABEL_95;
    }

    if (v1 != 1)
    {
      v7 = result[16597].i32[3];
      if (v7 < 2)
      {
        goto LABEL_2;
      }

      v8 = result[16485].u32[0];
      v9 = result[16485].u32[1];
      if (result[16602].i8[1] == 1)
      {
        v10 = 0;
        if (v9 >= 1 && v8 >= 1)
        {
          v171 = 0;
          v10 = 0;
          v172 = *(*v2 + 36);
          v173 = result[14974].i32[2];
          v174 = 1 << v172;
          v175 = result[16505].i32[0];
          v176 = vdupq_n_s32(result[16488].u32[3]);
          v177 = vdupq_n_s32(v172);
          v178 = vdupq_n_s32(v173);
          v179 = vdupq_n_s32(1 << v172);
          while (1)
          {
            v180 = v175 << v172;
            v175 = v4->i32[++v171];
            v181 = v175 << v172;
            if (v175 << v172 >= result[14974].i32[1])
            {
              v181 = result[14974].i32[1];
            }

            v182 = (v174 + ~v180 + v181) >> v172;
            if (v8 < 8)
            {
              break;
            }

            v185 = v10;
            v186 = 0uLL;
            v187 = vdupq_n_s32(v182);
            v188 = v8 & 0x7FFFFFF8;
            v189 = result + 16490;
            v190 = v176;
            do
            {
              v191 = v189[-1];
              v192 = vextq_s8(v190, v191, 0xCuLL);
              v193 = *v189;
              v189 += 2;
              v190 = v193;
              v194 = vshlq_u32(vextq_s8(v191, v193, 0xCuLL), v177);
              v195 = vaddq_s32(vaddq_s32(v179, vminq_s32(vshlq_u32(v191, v177), v178)), vmvnq_s8(vshlq_u32(v192, v177)));
              v196 = vaddq_s32(vaddq_s32(v179, vminq_s32(vshlq_u32(v193, v177), v178)), vmvnq_s8(v194));
              v197 = vnegq_s32(v177);
              v185 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v195, v197), v6), 1uLL), v187), v185);
              v186 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(v196, v197), v6), 1uLL), v187), v186);
              v188 -= 8;
            }

            while (v188);
            v10 = vaddvq_s32(vaddq_s32(v186, v185));
            if ((v8 & 0x7FFFFFF8) != v8)
            {
              v184 = v190.i32[3];
              v183 = v8 & 0x7FFFFFF8;
LABEL_139:
              v198 = &v5->i32[v183];
              v199 = v8 - v183;
              do
              {
                v200 = v184 << v172;
                v201 = *v198++;
                v184 = v201;
                v202 = v201 << v172;
                if (v201 << v172 >= v173)
                {
                  v202 = result[14974].i32[2];
                }

                v203 = (((v174 + ~v200 + v202) >> v172) + 1) >> 1;
                if (v203 >= v182)
                {
                  v203 = v182;
                }

                v10 += v203;
                --v199;
              }

              while (v199);
            }

            if (v171 == v9)
            {
              goto LABEL_192;
            }
          }

          v183 = 0;
          v184 = result[16488].i32[3];
          goto LABEL_139;
        }

LABEL_192:
        if (v10 < v7)
        {
          v7 = v10;
        }

        goto LABEL_3;
      }

LABEL_188:
      v170 = v9 * v8;
LABEL_189:
      if (v170 < v7)
      {
        v7 = v170;
      }

      goto LABEL_3;
    }

    v7 = result[16597].i32[3];
    if (result[16600].i32[2] <= 1u)
    {
      if (v7 < 2)
      {
        goto LABEL_2;
      }

      v8 = result[16485].u32[0];
      v9 = result[16485].u32[1];
      if (result[16602].i8[1] == 1)
      {
        v10 = 0;
        if (v9 >= 1 && v8 >= 1)
        {
          v11 = 0;
          v10 = 0;
          v12 = *(*v2 + 36);
          v13 = result[14974].i32[2];
          v14 = 1 << v12;
          v15 = result[16505].i32[0];
          v16 = vdupq_n_s32(result[16488].u32[3]);
          v17 = vdupq_n_s32(v12);
          v18 = vdupq_n_s32(v13);
          v19 = vdupq_n_s32(1 << v12);
          v20 = vnegq_s32(v17);
          while (1)
          {
            v87 = v15 << v12;
            v15 = v4->i32[++v11];
            v88 = v15 << v12;
            if (v15 << v12 >= result[14974].i32[1])
            {
              v88 = result[14974].i32[1];
            }

            v89 = (v14 + ~v87 + v88) >> v12;
            if (v8 < 8)
            {
              break;
            }

            v92 = v10;
            v93 = 0uLL;
            v94 = vdupq_n_s32(v89);
            v95 = v8 & 0x7FFFFFF8;
            v96 = result + 16490;
            v97 = v16;
            do
            {
              v98 = v96[-1];
              v99 = vextq_s8(v97, v98, 0xCuLL);
              v100 = *v96;
              v96 += 2;
              v97 = v100;
              v92 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v19, vminq_s32(vshlq_u32(v98, v17), v18)), vmvnq_s8(vshlq_u32(v99, v17))), v20), v6), 1uLL), v94), v92);
              v93 = vaddq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vshlq_s32(vaddq_s32(vaddq_s32(v19, vminq_s32(vshlq_u32(v100, v17), v18)), vmvnq_s8(vshlq_u32(vextq_s8(v98, v100, 0xCuLL), v17))), v20), v6), 1uLL), v94), v93);
              v95 -= 8;
            }

            while (v95);
            v10 = vaddvq_s32(vaddq_s32(v93, v92));
            if ((v8 & 0x7FFFFFF8) != v8)
            {
              v91 = v97.i32[3];
              v90 = v8 & 0x7FFFFFF8;
LABEL_73:
              v101 = &v5->i32[v90];
              v102 = v8 - v90;
              do
              {
                v103 = v91 << v12;
                v104 = *v101++;
                v91 = v104;
                v105 = v104 << v12;
                if (v104 << v12 >= v13)
                {
                  v105 = result[14974].i32[2];
                }

                v106 = (((v14 + ~v103 + v105) >> v12) + 1) >> 1;
                if (v106 >= v89)
                {
                  v106 = v89;
                }

                v10 += v106;
                --v102;
              }

              while (v102);
            }

            if (v11 == v9)
            {
              goto LABEL_192;
            }
          }

          v90 = 0;
          v91 = result[16488].i32[3];
          goto LABEL_73;
        }

        goto LABEL_192;
      }

      goto LABEL_188;
    }

    if (v7 < 2)
    {
      goto LABEL_2;
    }

    v270 = *v3 + 62;
    if (*v3 >= -31)
    {
      v270 = *v3 + 31;
    }

    v271 = v270 >> 5;
    if (v7 >= v271)
    {
      v7 = v271;
    }

LABEL_3:
    *(result->i64[0] + 4 * v1++ + 74228) = v7;
  }

  while (v1 != 12);
  return result;
}

uint64_t compare_tile_order(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 1;
  if (v2)
  {
    if (*(a1 + 8) > *(a2 + 8))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unsigned __int8 *av1_copy_and_extend_frame(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  v5 = (*a1 + 63) & 0xFFFFFFC0;
  if (*a1 + v4 > v5)
  {
    v5 = *a1 + v4;
  }

  v6 = *(a1 + 16);
  v7 = v5 - v6;
  v8 = *(a1 + 8);
  v9 = v8 + v4;
  v10 = (v8 + 63) & 0xFFFFFFC0;
  if (v9 > v10)
  {
    v10 = v9;
  }

  v11 = *(a1 + 24);
  v12 = v10 - v11;
  v13 = *(a1 + 128);
  v14 = *(a1 + 132);
  v15 = v4 >> v14;
  v16 = v4 >> v13;
  v17 = v12 >> v14;
  v18 = v7 >> v13;
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = *(a2 + 40);
  v22 = *(a2 + 32);
  if ((*(a1 + 176) & 8) != 0)
  {
    result = highbd_copy_and_extend_plane_0(v19, v20, v21, v22, v6, v11, v4, v4, v12, v7);
    if (!*(a1 + 152))
    {
      highbd_copy_and_extend_plane_0(*(a1 + 48), *(a1 + 36), *(a2 + 48), *(a2 + 36), *(a1 + 20), *(a1 + 28), v15, v16, v17, v18);
      return highbd_copy_and_extend_plane_0(*(a1 + 56), *(a1 + 36), *(a2 + 56), *(a2 + 36), *(a1 + 20), *(a1 + 28), v15, v16, v17, v18);
    }
  }

  else
  {
    result = copy_and_extend_plane_1(v19, v20, v21, v22, v6, v11, v4, v4, v12, v7, 1);
    if (!*(a1 + 152))
    {
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      if (v25)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25)
      {
        v27 = *(a1 + 56);
      }

      else
      {
        v27 = v24 + 1;
      }

      copy_and_extend_plane_1(v24, *(a1 + 36), *(a2 + 48), *(a2 + 36), *(a1 + 20), *(a1 + 28), v15, v16, v17, v18, v26);
      return copy_and_extend_plane_1(v27, *(a1 + 36), *(a2 + 56), *(a2 + 36), *(a1 + 20), *(a1 + 28), v15, v16, v17, v18, v26);
    }
  }

  return result;
}

uint64_t highbd_copy_and_extend_plane_0(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6, int a7, signed int a8, int a9, unsigned int a10)
{
  v11 = a8;
  __dst = (2 * a3);
  __src = (2 * a3 - 2 * a8);
  v85 = a6 - 1;
  if (a6 >= 1)
  {
    v12 = (2 * result);
    v13 = 2 * a5;
    v14 = (2 * result + v13 - 2);
    v15 = &__dst[v13];
    v98 = v13;
    v95 = a2;
    if (a8)
    {
      v94 = a8 & 0xFFFFFFFFFFFFFFF0;
      v84 = 2 * v94;
      v86 = a8 & 0xCLL;
      v16 = a8 & 0xFFFFFFFFFFFFFFFCLL;
      v92 = 2 * v16;
      v93 = v16;
      v17 = 0;
      if (a10)
      {
        v18 = &__dst[-2 * a8 + 16];
        v19 = 2 * a4;
        v90 = -v16;
        v20 = &__dst[v13 + 16];
        v21 = 2 * a3 - 2 * a8;
        while (1)
        {
          v22 = *v12;
          if (a8 < 4)
          {
            v23 = 0;
            v24 = v21;
            goto LABEL_19;
          }

          if (a8 >= 0x10)
          {
            v26 = vdupq_n_s16(v22);
            v27 = v94;
            v28 = v18;
            do
            {
              *(v28 - 1) = v26;
              *v28 = v26;
              v28 += 2;
              v27 -= 16;
            }

            while (v27);
            if (v94 == v11)
            {
              goto LABEL_21;
            }

            v25 = v94;
            if (!v86)
            {
              v24 = (v21 + v84);
              v23 = v94;
LABEL_19:
              v32 = v11 - v23;
              do
              {
                *v24++ = v22;
                --v32;
              }

              while (v32);
              goto LABEL_21;
            }
          }

          else
          {
            v25 = 0;
          }

          v24 = (v21 + v92);
          v29 = vdup_n_s16(v22);
          v30 = 2 * v25;
          v31 = v90 + v25;
          do
          {
            *(v21 + v30) = v29;
            v30 += 8;
            v31 += 4;
          }

          while (v31);
          v23 = v93;
          if (v93 != v11)
          {
            goto LABEL_19;
          }

LABEL_21:
          result = memcpy((v21 + 2 * v11), v12, v98);
          v33 = *v14;
          if (a10 >= 4)
          {
            if (a10 < 0x10)
            {
              v36 = 0;
LABEL_29:
              v35 = &v15[2 * (a10 & 0xFFFFFFFFFFFFFFFCLL)];
              v40 = vdup_n_s16(v33);
              v41 = 2 * v36;
              v42 = v36 - (a10 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v15[v41] = v40;
                v41 += 8;
                v42 += 4;
              }

              while (v42);
              v34 = a10 & 0xFFFFFFFFFFFFFFFCLL;
              if (v34 == a10)
              {
                goto LABEL_5;
              }

              goto LABEL_34;
            }

            v37 = vdupq_n_s16(v33);
            v38 = a10 & 0xFFFFFFFFFFFFFFF0;
            v39 = v20;
            do
            {
              *(v39 - 1) = v37;
              *v39 = v37;
              v39 += 2;
              v38 -= 16;
            }

            while (v38);
            if ((a10 & 0xFFFFFFFFFFFFFFF0) == a10)
            {
              goto LABEL_5;
            }

            v36 = a10 & 0xFFFFFFFFFFFFFFF0;
            if ((a10 & 0xCLL) != 0)
            {
              goto LABEL_29;
            }

            v35 = &v15[2 * (a10 & 0xFFFFFFFFFFFFFFF0)];
            v34 = a10 & 0xFFFFFFFFFFFFFFF0;
          }

          else
          {
            v34 = 0;
            v35 = v15;
          }

LABEL_34:
          v43 = a10 - v34;
          do
          {
            *v35 = v33;
            v35 += 2;
            --v43;
          }

          while (v43);
LABEL_5:
          v12 += v95;
          v14 += v95;
          v21 += v19;
          v15 += v19;
          ++v17;
          v18 += v19;
          v20 += v19;
          if (v17 == a6)
          {
            goto LABEL_76;
          }
        }
      }

      v60 = &__dst[-2 * a8 + 16];
      v61 = 2 * a4;
      v62 = -v16;
      v63 = 2 * a3 - 2 * a8;
      while (1)
      {
        v64 = *v12;
        if (a8 >= 4)
        {
          if (a8 < 0x10)
          {
            v67 = 0;
LABEL_66:
            v66 = (v63 + v92);
            v71 = vdup_n_s16(v64);
            v72 = 2 * v67;
            v73 = v62 + v67;
            do
            {
              *(v63 + v72) = v71;
              v72 += 8;
              v73 += 4;
            }

            while (v73);
            v65 = v93;
            if (v93 == v11)
            {
              goto LABEL_57;
            }

            goto LABEL_71;
          }

          v68 = vdupq_n_s16(v64);
          v69 = v94;
          v70 = v60;
          do
          {
            *(v70 - 1) = v68;
            *v70 = v68;
            v70 += 2;
            v69 -= 16;
          }

          while (v69);
          if (v94 == v11)
          {
            goto LABEL_57;
          }

          v67 = v94;
          if (v86)
          {
            goto LABEL_66;
          }

          v66 = (v63 + v84);
          v65 = v94;
        }

        else
        {
          v65 = 0;
          v66 = v63;
        }

LABEL_71:
        v74 = v11 - v65;
        do
        {
          *v66++ = v64;
          --v74;
        }

        while (v74);
LABEL_57:
        result = memcpy((v63 + 2 * v11), v12, v98);
        v12 += v95;
        v63 += v61;
        ++v17;
        v60 += v61;
        if (v17 == a6)
        {
          goto LABEL_76;
        }
      }
    }

    if (a10)
    {
      v44 = 0;
      v45 = &__dst[v13 + 16];
      v46 = 2 * a4;
      v47 = 2 * a2;
      v48 = 2 * a3 - 2 * a8;
      while (1)
      {
        result = memcpy((v48 + 2 * v11), v12, v98);
        v49 = *v14;
        if (a10 >= 4)
        {
          if (a10 < 0x10)
          {
            v52 = 0;
LABEL_48:
            v51 = &v15[2 * (a10 & 0xFFFFFFFFFFFFFFFCLL)];
            v56 = vdup_n_s16(v49);
            v57 = 2 * v52;
            v58 = v52 - (a10 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v15[v57] = v56;
              v57 += 8;
              v58 += 4;
            }

            while (v58);
            v50 = a10 & 0xFFFFFFFFFFFFFFFCLL;
            if (v50 == a10)
            {
              goto LABEL_39;
            }

            goto LABEL_53;
          }

          v53 = vdupq_n_s16(v49);
          v54 = a10 & 0xFFFFFFFFFFFFFFF0;
          v55 = v45;
          do
          {
            *(v55 - 1) = v53;
            *v55 = v53;
            v55 += 2;
            v54 -= 16;
          }

          while (v54);
          if ((a10 & 0xFFFFFFFFFFFFFFF0) == a10)
          {
            goto LABEL_39;
          }

          v52 = a10 & 0xFFFFFFFFFFFFFFF0;
          if ((a10 & 0xCLL) != 0)
          {
            goto LABEL_48;
          }

          v51 = &v15[2 * (a10 & 0xFFFFFFFFFFFFFFF0)];
          v50 = a10 & 0xFFFFFFFFFFFFFFF0;
        }

        else
        {
          v50 = 0;
          v51 = v15;
        }

LABEL_53:
        v59 = a10 - v50;
        do
        {
          *v51 = v49;
          v51 += 2;
          --v59;
        }

        while (v59);
LABEL_39:
        v12 = (v12 + v47);
        v14 = (v14 + v47);
        v48 += 2 * a4;
        v15 += v46;
        ++v44;
        v45 += v46;
        if (v44 == a6)
        {
          goto LABEL_76;
        }
      }
    }

    v75 = 2 * a2;
    v76 = a6;
    v77 = (2 * a3);
    do
    {
      result = memcpy(v77, v12, v98);
      v77 += 2 * a4;
      v12 = (v12 + v75);
      --v76;
    }

    while (v76);
  }

LABEL_76:
  v78 = -v11;
  v79 = a9;
  v80 = a8 + a5 + a10;
  if (a7 >= 1)
  {
    v81 = &__dst[2 * v78 + -2 * a4 * a7];
    do
    {
      result = memcpy(v81, __src, 2 * v80);
      v81 += 2 * a4;
      --a7;
    }

    while (a7);
  }

  if (a9 >= 1)
  {
    v82 = 2 * v78;
    v83 = &__dst[2 * a6 * a4 + 2 * v78];
    do
    {
      result = memcpy(v83, &__dst[2 * v85 * a4 + v82], 2 * v80);
      v83 += 2 * a4;
      --v79;
    }

    while (v79);
  }

  return result;
}

unsigned __int8 *copy_and_extend_plane_1(unsigned __int8 *result, int a2, unint64_t a3, int a4, unsigned int a5, int a6, int a7, int a8, int a9, int a10, int a11)
{
  v12 = a8;
  v63 = -a8;
  __b = (a3 - a8);
  v13 = (a6 - 1);
  if (a6 >= 1)
  {
    v14 = result;
    v15 = ((a5 - 1) * a11);
    v64 = a2;
    if (a11 == 1)
    {
      v16 = a6;
      v17 = a3;
      do
      {
        memset(&v17[v63], *v14, v12);
        memcpy(v17, v14, a5);
        result = memset(&v17[a5], v14[v15], a10);
        v14 += v64;
        v17 += a4;
        --v16;
      }

      while (v16);
      goto LABEL_37;
    }

    if (a5 > 0)
    {
      v18 = 0;
      v19 = &result[v15];
      v20 = a3;
      v21 = (a3 + a5);
      v24 = &result[2 * a5 - 1 + a2 * v13] > a3 && a3 + a4 * v13 + a5 > result || (a4 | a2) < 0;
      v58 = v24;
      v25 = a5 & 0x1F;
      if ((a5 & 0x1F) == 0)
      {
        v25 = 32;
      }

      v50 = v25;
      v57 = a5 - v25;
      v26 = a5 & 7;
      if (!v26)
      {
        v26 = 8;
      }

      v54 = a5 - v26;
      v27 = (result + 32);
      v62 = (a3 + 16);
      v53 = v26 - a5;
      v28 = (a3 - a8);
      while (1)
      {
        v61 = v18;
        memset(v28, *v14, v12);
        if (a5 < 9 || v58)
        {
          v29 = 0;
          v30 = a10;
        }

        else
        {
          v30 = a10;
          if (a5 >= 0x21)
          {
            v32 = v57;
            v33 = v62;
            v34 = v27;
            do
            {
              v35 = v34 - 32;
              v36 = vld2q_s8(v35);
              v37 = vld2q_s8(v34);
              *(v33 - 1) = v36;
              *v33 = v37;
              v34 += 64;
              v33 += 2;
              v32 -= 32;
            }

            while (v32);
            v29 = v57;
            v31 = v57;
            if (v50 < 9)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v31 = 0;
          }

          v38 = 2 * v31;
          v39 = (v20 + v31);
          v40 = v53 + v31;
          do
          {
            v41 = &v14[v38];
            v42 = *vld2_s8(v41).val;
            *v39++ = v42;
            v38 += 16;
            v40 += 8;
          }

          while (v40);
          v29 = v54;
        }

LABEL_31:
        v43 = 2 * v29;
        do
        {
          *(v20 + v29++) = v14[v43];
          v43 += 2;
        }

        while (a5 != v29);
        result = memset(v21, *v19, v30);
        v14 += v64;
        v19 += v64;
        v28 += a4;
        v21 += a4;
        v18 = v61 + 1;
        v27 += v64;
        v62 = (v62 + a4);
        v20 += a4;
        if (v61 + 1 == a6)
        {
          goto LABEL_37;
        }
      }
    }

    v44 = a6;
    v45 = a3;
    do
    {
      memset((v45 + v63), *v14, v12);
      result = memset((v45 + a5), v14[v15], a10);
      v14 += v64;
      v45 += a4;
      --v44;
    }

    while (v44);
  }

LABEL_37:
  v46 = a9;
  v47 = a8 + a5 + a10;
  if (a7 >= 1)
  {
    v48 = (a3 + -(a4 * a7) + v63);
    do
    {
      result = memcpy(v48, __b, v47);
      v48 += a4;
      --a7;
    }

    while (a7);
  }

  if (a9 >= 1)
  {
    v49 = (a3 + a6 * a4 + v63);
    do
    {
      result = memcpy(v49, (a3 + (a6 - 1) * a4 + v63), v47);
      v49 += a4;
      --v46;
    }

    while (v46);
  }

  return result;
}

uint64_t av1_get_frame_buffer(unsigned int *a1, unint64_t a2, unint64_t *a3)
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
    if (v10[1] >= a2)
    {
LABEL_17:
      result = 0;
      v21 = v8 + 24 * v9;
      v22 = *(v21 + 8);
      *a3 = v11;
      a3[1] = v22;
      *(v21 + 16) = 1;
      a3[2] = v21;
      return result;
    }

    v12 = a3;
    if (v11)
    {
      v13 = *(v11 - 8);
      v14 = a1;
      v15 = a2;
      free(v13);
      a1 = v14;
      a2 = v15;
    }

    if (a2 <= 0x1FFFFFFE9)
    {
      v16 = a1;
      v17 = a2;
      v18 = malloc_type_malloc(a2 + 23, 0x5F484EBFuLL);
      a1 = v16;
      if (v18)
      {
        v11 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v11 - 8) = v18;
        if (v11)
        {
          v19 = a1;
          bzero(((v18 + 23) & 0xFFFFFFFFFFFFFFF0), v17);
          v8 = *(v19 + 1);
          v20 = (v8 + 24 * v9);
          *v20 = v11;
          v20[1] = v17;
          a3 = v12;
          goto LABEL_17;
        }
      }
    }

    v23 = (*(a1 + 1) + 24 * v9);
    *v23 = 0;
    v23[1] = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t av1_release_frame_buffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    *(v2 + 16) = 0;
  }

  return 0;
}

uint64_t av1_add_film_grain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 12);
  v7 = *a2;
  if (*a2 <= 261)
  {
    v9 = 0;
    v8 = 0;
    v866 = 1;
    v10 = 1;
    v11 = 1;
    if (v7 == 258)
    {
      goto LABEL_13;
    }

    v836 = 1;
    v12 = 1;
    if (v7 == 260)
    {
      goto LABEL_18;
    }

    if (v7 != 261)
    {
LABEL_14:
      fwrite("Film grain error: input format is not supported!", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return 0xFFFFFFFFLL;
    }

    v8 = 0;
    v9 = 0;
    v836 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  if (v7 <= 2308)
  {
    if (v7 != 262)
    {
      if (v7 == 2306)
      {
        v866 = 0;
        v8 = 1;
        v9 = 1;
        v10 = 1;
        v11 = 1;
LABEL_13:
        v836 = 1;
        v12 = 1;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v836 = 0;
    v12 = 0;
LABEL_16:
    v866 = 1;
    goto LABEL_18;
  }

  if (v7 != 2309)
  {
    if (v7 == 2310)
    {
      v866 = 0;
      v10 = 0;
      v11 = 0;
      v836 = 0;
      v12 = 0;
      v8 = 1;
      v9 = 1;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v866 = 0;
  v836 = 0;
  v12 = 0;
  v8 = 1;
  v9 = 1;
  v10 = 1;
  v11 = 1;
LABEL_18:
  v875 = v9;
  v886 = v11;
  v832 = v10;
  v873 = v6 == 0;
  *a3 = v7;
  *(a3 + 52) = *(a2 + 52);
  v14 = *(a2 + 36);
  *(a3 + 36) = v14;
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = v6;
  *(a3 + 16) = *(a2 + 16);
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 116) = *(a2 + 116);
  v15 = DWORD1(v14);
  v16 = BYTE4(v14) & 1;
  v17 = DWORD2(v14);
  v18 = BYTE8(v14) & 1;
  v878 = v12;
  if (DWORD2(v14))
  {
    v879 = BYTE4(v14) & 1;
    v19 = *(a3 + 88);
    v20 = *(a3 + 64);
    v21 = *(a2 + 88);
    v22 = *(a2 + 64);
    v883 = DWORD1(v14);
    v887 = v8;
    v23 = SDWORD1(v14) << v8;
    v24 = DWORD2(v14);
    do
    {
      memcpy(v20, v22, v23);
      v22 += v21;
      v20 += v19;
      --v24;
    }

    while (v24);
    v26 = *(a2 + 40);
    v25 = *(a2 + 44);
    v27 = v26 & 1;
    v5 = a1;
    v15 = v883;
    LOBYTE(v12) = v878;
    v16 = v879;
    v8 = v887;
    v28 = (v18 + v17);
    if (((v26 | v25) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v25 = 0;
    v27 = BYTE4(v14) & 1;
    v26 = DWORD1(v14);
    v28 = BYTE8(v14) & 1;
    if ((BYTE4(v14) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v29 = *(a3 + 64);
  v30 = *(a3 + 88);
  if (v866)
  {
    if (v27 && v25 >= 1)
    {
      v31 = v25;
      v32 = (v29 + v26);
      if (v30 == 1)
      {
        v33 = *(v32 - 1);
        do
        {
          *v32 = v33;
          v32 += v30;
          --v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          *v32 = *(v32 - 1);
          v32 += v30;
          --v31;
        }

        while (v31);
      }
    }

    if (v25)
    {
      v34 = (v29 + v30 * v25);
      v35 = (v29 + v30 * (v25 - 1));
      v36 = ((v26 + 1) & 0xFFFFFFFE);
LABEL_43:
      v43 = v15;
      memcpy(v34, v35, v36);
      v15 = v43;
    }
  }

  else
  {
    v37 = v30 / 2;
    if (v27 && v25 >= 1)
    {
      v38 = v25;
      v39 = v30 & 0xFFFFFFFE;
      v40 = 2 * v37;
      v41 = (v29 + 2 * v26);
      if (v39 == 2)
      {
        v42 = *(v29 + 2 * v26 - 2);
        do
        {
          *v41 = v42;
          v41 = (v41 + v40);
          --v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          *v41 = *(v41 - 1);
          v41 = (v41 + v40);
          --v38;
        }

        while (v38);
      }
    }

    if (v25)
    {
      v34 = (v29 + 2 * v37 * v25);
      v35 = (v29 + 2 * v37 * (v25 - 1));
      v36 = 2 * ((v26 + 1) & 0xFFFFFFFE);
      goto LABEL_43;
    }
  }

LABEL_44:
  v858 = v16 + v15;
  v44 = v28 >> v12;
  if (*(a2 + 16))
  {
    v45 = 1;
  }

  else
  {
    v45 = v44 == 0;
  }

  if (!v45)
  {
    v844 = v28;
    v46 = *(a3 + 92);
    v47 = *(a3 + 72);
    v48 = *(a2 + 92);
    v49 = v8;
    v50 = *(a2 + 72);
    v51 = (v858 >> v886) << v49;
    v52 = v44;
    do
    {
      memcpy(v47, v50, v51);
      v50 += v48;
      v47 += v46;
      --v52;
    }

    while (v52);
    v53 = *(a3 + 96);
    v54 = *(a3 + 80);
    v55 = *(a2 + 96);
    v56 = *(a2 + 80);
    v5 = a1;
    v28 = v844;
    do
    {
      memcpy(v54, v56, v51);
      v56 += v55;
      v54 += v53;
      --v44;
    }

    while (v44);
  }

  v848 = *(a3 + 64);
  v847 = *(a3 + 72);
  v846 = *(a3 + 80);
  v58 = *(a3 + 88);
  v57 = *(a3 + 92);
  _MergedGlobals_7[0] = *(v5 + 644);
  v59 = 0x20u >> v12;
  v60 = 0x20u >> v886;
  _MergedGlobals_1 = 0x20u >> v12;
  dword_28100B684 = 0x20u >> v886;
  v872 = *(v5 + 624);
  v61 = *(v5 + 632);
  v62 = 128 << (v61 - 8);
  dword_2808D4FDC = -v62;
  dword_2808D4FE0 = v62 - 1;
  bzero(&xmmword_2808D4FE4, 0x400uLL);
  bzero(&xmmword_2808D53E4, 0x400uLL);
  bzero(&xmmword_2808D57E4, 0x400uLL);
  v63 = *(v5 + 296) + *(v5 + 296) * *(v5 + 296);
  v64 = (2 * v63);
  v65 = *(v5 + 120) > 0;
  if (v64 > 0x3FFFFFFD)
  {
    return 0xFFFFFFFFLL;
  }

  v859 = v61;
  v66 = malloc_type_malloc(8 * (2 * v63) + 23, 0x5F484EBFuLL);
  if (!v66)
  {
    return 0xFFFFFFFFLL;
  }

  v845 = v28;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v67 - 8) = v66;
  if (!v67)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(((v66 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * (2 * v63));
  if (v64)
  {
    v68 = v67;
    while (1)
    {
      v69 = malloc_type_malloc(0x23uLL, 0x5F484EBFuLL);
      if (!v69)
      {
        break;
      }

      v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v70 - 8) = v69;
      *v68 = v70;
      if (!v70)
      {
        goto LABEL_74;
      }

      ++v68;
      if (!--v64)
      {
        goto LABEL_60;
      }
    }

LABEL_75:
    v88 = a1;
    v67 = 0;
    v819 = 0;
    v86 = 0;
    v850 = 0;
    v841 = 0;
    v852 = 0;
    v843 = 0;
    v87 = 0;
    v840 = 0;
    __dst = 0;
    v831 = 0;
    *v68 = 0;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_76;
  }

LABEL_60:
  v71 = v65 | (2 * v63);
  v72 = malloc_type_malloc(8 * v71 + 23, 0x5F484EBFuLL);
  if (!v72 || (v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF0, *(v73 - 8) = v72, !v73))
  {
LABEL_74:
    v67 = 0;
    v819 = 0;
    v86 = 0;
    v850 = 0;
    v841 = 0;
    v852 = 0;
    v843 = 0;
    v87 = 0;
    v840 = 0;
    __dst = 0;
    v831 = 0;
    v13 = 0xFFFFFFFFLL;
    v88 = a1;
    goto LABEL_76;
  }

  v807 = v67;
  bzero(((v72 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v71);
  if (v71 >= 1)
  {
    v68 = v73;
    do
    {
      v74 = malloc_type_malloc(0x23uLL, 0x5F484EBFuLL);
      if (!v74)
      {
        goto LABEL_75;
      }

      v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v75 - 8) = v74;
      *v68 = v75;
      if (!v75)
      {
        goto LABEL_74;
      }

      ++v68;
    }

    while (--v71);
  }

  v76 = *(a1 + 296);
  if (v76 < 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = 0;
    v78 = -v76;
    do
    {
      if ((v76 & 0x80000000) == 0)
      {
        v79 = -v76;
        v80 = 8 * v77;
        v81 = (v73 + v80);
        v82 = (v67 + v80);
        do
        {
          v83 = *v82++;
          *v83 = v78;
          v83[1] = v79;
          v83[2] = 0;
          v84 = *v81++;
          *v84 = v78;
          v84[1] = v79;
          v84[2] = 0;
          v76 = *(a1 + 296);
          ++v77;
        }

        while (v79++ < v76);
      }

      v157 = __CFADD__(v78++, 1);
    }

    while (!v157);
    if (v76 >= 1)
    {
      v97 = -v76;
      v98 = 8 * v77;
      v99 = (v73 + v98);
      v100 = (v67 + v98);
      v77 += v76;
      do
      {
        v101 = *v100++;
        *v101 = 0;
        v101[1] = v97;
        v101[2] = 0;
        v102 = *v99++;
        *v102 = 0;
        v102[1] = v97;
        v102[2] = 0;
        v157 = __CFADD__(v97++, 1);
      }

      while (!v157);
    }
  }

  v842 = v58 >> v875;
  if (*(a1 + 120) > 0)
  {
    v103 = *(v73 + 8 * v77);
    *v103 = 0;
    *(v103 + 8) = 1;
  }

  v874 = 2u >> v878;
  v104 = v57 >> v875;
  v105 = 8 * v842;
  if (v105 <= 0x1FFFFFFE9)
  {
    v107 = malloc_type_malloc(v105 + 23, 0x5F484EBFuLL);
    if (v107)
    {
      v852 = (v107 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v852 - 8) = v107;
    }

    else
    {
      v852 = 0;
    }

    v106 = v886;
  }

  else
  {
    v852 = 0;
    v106 = v886;
  }

  v108 = 2u >> v106;
  v109 = 4 * v874 * v104;
  v863 = 2u >> v106;
  v817 = v104;
  if (v109 <= 0x1FFFFFFE9)
  {
    v111 = malloc_type_malloc(v109 + 23, 0x5F484EBFuLL);
    if (v111)
    {
      v843 = (v111 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v843 - 8) = v111;
    }

    else
    {
      v843 = 0;
    }

    v112 = malloc_type_malloc(v109 + 23, 0x5F484EBFuLL);
    if (v112)
    {
      v110 = (v112 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v110 - 8) = v112;
    }

    else
    {
      v110 = 0;
    }

    v108 = v863;
  }

  else
  {
    v843 = 0;
    v110 = 0;
  }

  v857 = v110;
  v113 = 3 * v108;
  v114 = malloc_type_malloc(0x127uLL, 0x5F484EBFuLL);
  if (v114)
  {
    v840 = (v114 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v840 - 8) = v114;
  }

  else
  {
    v840 = 0;
  }

  v828 = v113 + 3;
  v869 = v113;
  v115 = v113 & 0xFFFFFF9F | (32 * ((v60 >> 4) & 3));
  v806 = (4 * v863);
  v116 = (_MergedGlobals_1 + v874) * v806;
  if (v116 <= 0x1FFFFFFE9 && (v117 = malloc_type_malloc(v116 + 23, 0x5F484EBFuLL)) != 0)
  {
    v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v118 - 8) = v117;
  }

  else
  {
    v118 = 0;
  }

  __dst = v118;
  v876 = v115 + v828;
  v119 = v59 >> 4;
  v827 = 3 * v874 + 3;
  v120 = v806 * (_MergedGlobals_1 + v874);
  if (v120 <= 0x1FFFFFFE9)
  {
    v121 = malloc_type_malloc(v120 + 23, 0x5F484EBFuLL);
    v87 = v857;
    v88 = a1;
    if (v121)
    {
      v831 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v831 - 1) = v121;
    }

    else
    {
      v831 = 0;
    }
  }

  else
  {
    v831 = 0;
    v87 = v857;
    v88 = a1;
  }

  v851 = (v876 + 3);
  v122 = v827 & 0xFFFFFF9F | (32 * (v119 & 3));
  v123 = malloc_type_malloc(0x5D9FuLL, 0x5F484EBFuLL);
  if (v123)
  {
    v86 = ((v123 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v86 - 1) = v123;
  }

  else
  {
    v86 = 0;
  }

  v124 = (4 * v851 * v122);
  v125 = malloc_type_malloc(v124 + 23, 0x5F484EBFuLL);
  if (v125)
  {
    v850 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v850 - 1) = v125;
  }

  else
  {
    v850 = 0;
  }

  v126 = malloc_type_malloc(v124 + 23, 0x5F484EBFuLL);
  v819 = v73;
  if (v126)
  {
    v129 = (v126 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v129 - 8) = v126;
  }

  else
  {
    v129 = 0;
  }

  v130 = v886;
  v13 = 0xFFFFFFFFLL;
  v841 = v129;
  if (!v852 || !v843 || !v87 || !v840 || !__dst || !v831 || !v86 || !v850 || !v129)
  {
LABEL_76:
    v89 = *(v88 + 296) + *(v88 + 296) * *(v88 + 296);
    v90 = 2 * v89;
    v91 = *(v88 + 120) > 0;
    if (v67)
    {
      v92 = v87;
      if (v90 >= 1)
      {
        v93 = v67;
        v94 = (2 * v89);
        do
        {
          if (*v93)
          {
            free(*(*v93 - 8));
          }

          ++v93;
          --v94;
        }

        while (v94);
      }

      free(*(v67 - 8));
      v87 = v92;
    }

    if (v819)
    {
      if ((v91 | (2 * v89)) >= 1)
      {
        v95 = (v90 + v91);
        v96 = v819;
        do
        {
          if (*v96)
          {
            free(*(*v96 - 8));
          }

          ++v96;
          --v95;
        }

        while (v95);
      }

      free(*(v819 - 1));
    }

    if (v852)
    {
      free(*(v852 - 8));
    }

    if (v843)
    {
      free(*(v843 - 8));
    }

    if (v87)
    {
      free(*(v87 - 8));
    }

    if (v840)
    {
      free(*(v840 - 8));
    }

    if (__dst)
    {
      free(*(__dst - 1));
    }

    if (v831)
    {
      free(*(v831 - 1));
    }

    if (v86)
    {
      free(*(v86 - 1));
    }

    if (v850)
    {
      free(*(v850 - 1));
    }

    if (v841)
    {
      free(*(v841 - 1));
    }

    return v13;
  }

  if (*(v88 + 120))
  {
    v131 = 0;
    v132 = *(v88 + 640) - *(v88 + 632) + 12;
    v133 = *(v88 + 296);
    v134 = (v88 + 596);
    v135 = *(v88 + 596);
    v136 = 1 << (*(v88 + 640) - *(v88 + 632) + 12) >> 1;
    v137 = _MergedGlobals_7[0];
    v138 = v86;
    do
    {
      for (i = 0; i != 328; i += 4)
      {
        v140 = (v137 >> 1) | (((v137 >> 12) ^ (v137 >> 3) ^ v137 ^ (v137 >> 1)) << 15);
        v137 = ((v137 >> 1) | ((((v137 >> 12) ^ (v137 >> 3)) ^ (v137 ^ (v137 >> 1))) << 15));
        *(v138 + i) = (gaussian_sequence[v140 >> 5] + v136) >> v132;
      }

      ++v131;
      v138 += 41;
    }

    while (v131 != 73);
    v141 = v135 - 1;
    v142 = (2 * (v133 + v133 * v133));
    v143 = 1 << v141;
    _MergedGlobals_7[0] = v137;
    v144 = dword_2808D4FDC;
    v145 = dword_2808D4FE0;
    if (v142 <= 0)
    {
      v157 = v86 + 996 >= a1 + 600 || v134 >= v86 + 5983;
      v127 = vdupq_n_s32(dword_2808D4FDC);
      v128 = vdupq_n_s32(dword_2808D4FE0);
      v158 = !v157;
      v159 = vdupq_n_s32(v143);
      v160 = (v86 + 123);
      for (j = 3; j != 73; ++j)
      {
        if (v158)
        {
          v162 = 3;
        }

        else
        {
          v163 = vld1q_dup_f32(v134);
          v164 = vshlq_s32(v159, vnegq_s32(v163));
          v165 = &v86[41 * j];
          v166 = vaddq_s32(v164, *(v165 + 12));
          v167 = vaddq_s32(v164, *(v165 + 28));
          *(v165 + 12) = vbslq_s8(vcgtq_s32(v127, v166), v127, vminq_s32(v166, v128));
          *(v165 + 28) = vbslq_s8(vcgtq_s32(v127, v167), v127, vminq_s32(v167, v128));
          v168 = vaddq_s32(v164, *(v165 + 44));
          v169 = vaddq_s32(v164, *(v165 + 60));
          *(v165 + 44) = vbslq_s8(vcgtq_s32(v127, v168), v127, vminq_s32(v168, v128));
          *(v165 + 60) = vbslq_s8(vcgtq_s32(v127, v169), v127, vminq_s32(v169, v128));
          v170 = vaddq_s32(v164, *(v165 + 76));
          v171 = vaddq_s32(v164, *(v165 + 92));
          *(v165 + 76) = vbslq_s8(vcgtq_s32(v127, v170), v127, vminq_s32(v170, v128));
          *(v165 + 92) = vbslq_s8(vcgtq_s32(v127, v171), v127, vminq_s32(v171, v128));
          v172 = vaddq_s32(v164, *(v165 + 108));
          v173 = vaddq_s32(v164, *(v165 + 124));
          *(v165 + 108) = vbslq_s8(vcgtq_s32(v127, v172), v127, vminq_s32(v172, v128));
          *(v165 + 124) = vbslq_s8(vcgtq_s32(v127, v173), v127, vminq_s32(v173, v128));
          v174 = vaddq_s32(v164, *(v165 + 140));
          v175 = vaddq_s32(v164, *(v165 + 156));
          *(v165 + 140) = vbslq_s8(vcgtq_s32(v127, v174), v127, vminq_s32(v174, v128));
          *(v165 + 156) = vbslq_s8(vcgtq_s32(v127, v175), v127, vminq_s32(v175, v128));
          v176 = vld1q_dup_f32(v134);
          v177 = vshlq_s32(v159, vnegq_s32(v176));
          v178 = vaddq_s32(v177, *(v165 + 172));
          v179 = vaddq_s32(v177, *(v165 + 188));
          *(v165 + 172) = vbslq_s8(vcgtq_s32(v127, v178), v127, vminq_s32(v178, v128));
          *(v165 + 188) = vbslq_s8(vcgtq_s32(v127, v179), v127, vminq_s32(v179, v128));
          v180 = vld1q_dup_f32(v134);
          v181 = vshlq_s32(v159, vnegq_s32(v180));
          v182 = vaddq_s32(v181, *(v165 + 204));
          v183 = vaddq_s32(v181, *(v165 + 220));
          *(v165 + 204) = vbslq_s8(vcgtq_s32(v127, v182), v127, vminq_s32(v182, v128));
          *(v165 + 220) = vbslq_s8(vcgtq_s32(v127, v183), v127, vminq_s32(v183, v128));
          v184 = vld1q_dup_f32(v134);
          v185 = vshlq_s32(v159, vnegq_s32(v184));
          v186 = vaddq_s32(v185, *(v165 + 236));
          v187 = vaddq_s32(v185, *(v165 + 252));
          *(v165 + 236) = vbslq_s8(vcgtq_s32(v127, v186), v127, vminq_s32(v186, v128));
          *(v165 + 252) = vbslq_s8(vcgtq_s32(v127, v187), v127, vminq_s32(v187, v128));
          v188 = (v165 + 268);
          v165 += 284;
          v189 = vld1q_dup_f32(v134);
          v190 = vshlq_s32(v159, vnegq_s32(v189));
          v191 = vaddq_s32(v190, *v188);
          v192 = vaddq_s32(v190, *v165);
          *v188 = vbslq_s8(vcgtq_s32(v127, v191), v127, vminq_s32(v191, v128));
          *v165 = vbslq_s8(vcgtq_s32(v127, v192), v127, vminq_s32(v192, v128));
          v162 = 75;
        }

        v193 = 4 * v162;
        do
        {
          v194 = (v143 >> *v134) + *&v160[v193];
          if (v194 >= v145)
          {
            v195 = v145;
          }

          else
          {
            v195 = (v143 >> *v134) + *&v160[v193];
          }

          if (v194 >= v144)
          {
            v196 = v195;
          }

          else
          {
            v196 = v144;
          }

          *&v160[v193] = v196;
          v193 += 4;
        }

        while (v193 != 316);
        v160 += 328;
      }
    }

    else
    {
      for (k = 3; k != 73; ++k)
      {
        v147 = &v86[41 * k];
        for (m = 3; m != 79; ++m)
        {
          v149 = 0;
          v150 = 0;
          v151 = v142;
          v152 = v67 + 8;
          v153 = (a1 + 304);
          do
          {
            v149 += *(&v86[41 * **(v152 - 8) + 41 * k] + *(*(v152 - 8) + 4) + m) * *(v153 - 1);
            v150 += *(&v86[41 * **v152 + 41 * k] + *(*v152 + 4) + m) * *v153;
            v153 += 2;
            v152 += 16;
            v151 -= 2;
          }

          while (v151);
          v154 = ((v150 + v149 + v143) >> *v134) + *&v147[4 * m];
          if (v154 >= v145)
          {
            v155 = v145;
          }

          else
          {
            v155 = v154;
          }

          if (v154 >= v144)
          {
            v156 = v155;
          }

          else
          {
            v156 = v144;
          }

          *&v147[4 * m] = v156;
        }
      }
    }
  }

  else
  {
    bzero(v86, 0x5D88uLL);
    v130 = v886;
  }

  v197 = a1;
  v198 = v197[160] - v197[158] + 12;
  v199 = v197[74] + v197[74] * v197[74];
  v200 = *(a1 + 120) > 0;
  v201 = *(a1 + 596);
  if (*(a1 + 204) || *(a1 + 636))
  {
    v202 = 0;
    v203 = *(a1 + 644) ^ 0xB524;
    v204 = v850;
    v205 = v863;
    do
    {
      v206 = v204;
      v207 = (v876 + 3);
      do
      {
        LOWORD(v203) = (v203 >> 1) | ((((v203 >> 12) ^ (v203 >> 3)) ^ (v203 ^ (v203 >> 1))) << 15);
        *v206++ = (gaussian_sequence[v203 >> 5] + (1 << v198 >> 1)) >> v198;
        --v207;
      }

      while (v207);
      ++v202;
      v204 += v851;
    }

    while (v202 != v122);
    _MergedGlobals_7[0] = v203;
    v208 = v201 - 1;
    v209 = v200 | (2 * v199);
    v210 = a1;
    v211 = v841;
    if (*(a1 + 288))
    {
      goto LABEL_210;
    }
  }

  else
  {
    v213 = *(a1 + 296) + *(a1 + 296) * *(a1 + 296);
    bzero(v850, v124);
    v130 = v886;
    v205 = v863;
    v208 = v201 - 1;
    v209 = v200 | (2 * v213);
    v210 = a1;
    v211 = v841;
    if (*(a1 + 288))
    {
      goto LABEL_210;
    }
  }

  if (!*(v210 + 636))
  {
    v212 = v208;
    bzero(v211, v124);
    v208 = v212;
    v205 = v863;
    v130 = v886;
    v87 = v857;
    goto LABEL_215;
  }

LABEL_210:
  v214 = 0;
  v215 = *(v210 + 644) ^ 0x49D8;
  v216 = v211;
  v87 = v857;
  do
  {
    v217 = v216;
    v218 = (v876 + 3);
    do
    {
      LOWORD(v215) = (v215 >> 1) | ((((v215 >> 12) ^ (v215 >> 3)) ^ (v215 ^ (v215 >> 1))) << 15);
      *v217++ = (gaussian_sequence[v215 >> 5] + (1 << v198 >> 1)) >> v198;
      --v218;
    }

    while (v218);
    ++v214;
    v216 += v851;
  }

  while (v214 != v122);
  _MergedGlobals_7[0] = v215;
LABEL_215:
  v219 = 1 << v208;
  v220 = dword_2808D4FDC;
  v221 = dword_2808D4FE0;
  v88 = a1;
  v67 = v807;
  v222 = v817;
  v854 = 2 * v60;
  if (v209 <= 0)
  {
    v272 = 12 * v851 + 12;
    v273 = (v850 + v272);
    v274 = 4 * v851;
    v275 = (v841 + v272);
    v276 = 3;
    do
    {
      v277 = 2 * v60 + 6 * v205 + 2 - 2;
      v278 = v275;
      v279 = v273;
      do
      {
        if (*(a1 + 204) || *(a1 + 636))
        {
          v283 = (v219 >> *(a1 + 596)) + *v279;
          if (v283 >= v221)
          {
            v284 = v221;
          }

          else
          {
            v284 = (v219 >> *(a1 + 596)) + *v279;
          }

          if (v283 >= v220)
          {
            v285 = v284;
          }

          else
          {
            v285 = v220;
          }

          *v279 = v285;
        }

        if (*(a1 + 288) || *(a1 + 636))
        {
          v280 = (v219 >> *(a1 + 596)) + *v278;
          if (v280 >= v221)
          {
            v281 = v221;
          }

          else
          {
            v281 = (v219 >> *(a1 + 596)) + *v278;
          }

          if (v280 >= v220)
          {
            v282 = v281;
          }

          else
          {
            v282 = v220;
          }

          *v278 = v282;
        }

        ++v279;
        ++v278;
        --v277;
      }

      while (v277);
      ++v276;
      v273 = (v273 + v274);
      v275 = (v275 + v274);
    }

    while (v276 != v122);
LABEL_260:
    v265 = *(v88 + 120);
    v266 = &qword_2808D4000;
    if (!v265)
    {
      goto LABEL_324;
    }

    v267 = v88 + 8;
    v268 = *(v88 + 8);
    if (v268 >= 1)
    {
      v269 = *(v88 + 12);
      if (v268 > 7)
      {
        v270 = v268 & 0x7FFFFFF8;
        v127 = vdupq_n_s32(v269);
        v286 = &unk_2808D4FF4;
        v287 = v270;
        do
        {
          v286[-1] = v127;
          *v286 = v127;
          v286 += 2;
          v287 -= 8;
        }

        while (v287);
        if (v270 == v268)
        {
          goto LABEL_294;
        }
      }

      else
      {
        v270 = 0;
      }

      v288 = v268 - v270;
      v289 = &_MergedGlobals_7[2 * v270 + 6];
      do
      {
        *v289 = v269;
        v289 += 2;
        --v288;
      }

      while (v288);
    }

LABEL_294:
    v290 = __OFSUB__(v265, 1);
    v291 = (v265 - 1);
    if (!((v291 < 0) ^ v290 | (v291 == 0)))
    {
      v292 = 0;
      v293 = *(v88 + 12);
      do
      {
        ++v292;
        v295 = *(v267 + 8 * v292);
        v294 = *(v267 + 8 * v292 + 4);
        v296 = (v295 - v268);
        if (v296 >= 1)
        {
          v297 = ((v296 >> 1) + 0x10000) / v296 * (v294 - v293);
          if (v296 != 1 && (v295 - 1 >= v268 ? (v298 = (v296 - 1) >> 32 == 0) : (v298 = 0), v298))
          {
            v299 = v296 & 0x7FFFFFFE;
            v303 = v268;
            v304 = v299;
            v305 = 0x8000;
            do
            {
              *(&xmmword_2808D4FE4 + v303) = v293 + (v305 >> 16);
              *(&xmmword_2808D4FE4 + v303 + 1) = v293 + ((v297 + v305) >> 16);
              v305 += 2 * v297;
              v303 += 2;
              v304 -= 2;
            }

            while (v304);
            if (v299 == v296)
            {
              goto LABEL_296;
            }
          }

          else
          {
            v299 = 0;
          }

          v300 = v296 - v299;
          v301 = v268 + v299;
          v302 = v299 * v297 + 0x8000;
          do
          {
            *&_MergedGlobals_7[2 * v301++ + 6] = v293 + (v302 >> 16);
            v302 += v297;
            --v300;
          }

          while (v300);
        }

LABEL_296:
        LODWORD(v268) = v295;
        v293 = v294;
      }

      while (v292 != v291);
    }

    v306 = (v267 + 8 * v291);
    v307 = *v306;
    v266 = &qword_2808D4000;
    if (v307 <= 255)
    {
      v308 = v306[1];
      v309 = 257 - (v307 + 1);
      if (v309 <= 0xB)
      {
        goto LABEL_321;
      }

      if (-2 - v307 < (255 - v307) || (256 - (v307 + 1)) >> 32 != 0)
      {
        goto LABEL_321;
      }

      v311 = (v309 & 0xFFFFFFFFFFFFFFF8) + v307;
      v127 = vdupq_n_s32(v308);
      v312 = &_MergedGlobals_7[2 * v307 + 14];
      v313 = v309 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *(v312 - 1) = v127;
        *v312 = v127;
        v312 += 16;
        v313 -= 8;
      }

      while (v313);
      v307 = v311;
      if (v309 != (v309 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_321:
        v314 = v307 + 1;
        v315 = &_MergedGlobals_7[2 * v307 + 6];
        do
        {
          *v315 = v308;
          v315 += 2;
          v45 = v314++ == 256;
        }

        while (!v45);
      }
    }

LABEL_324:
    if (*(v88 + 636))
    {
      memcpy(&xmmword_2808D53E4, &xmmword_2808D4FE4, 0x400uLL);
      memcpy(&xmmword_2808D57E4, &xmmword_2808D4FE4, 0x400uLL);
      v266 = &qword_2808D4000;
      v205 = v863;
      v130 = v886;
      v316 = __dst;
      goto LABEL_326;
    }

    v694 = *(v88 + 204);
    v316 = __dst;
    if (!v694)
    {
      goto LABEL_799;
    }

    v695 = v88 + 124;
    v696 = *(v88 + 124);
    if (v696 >= 1)
    {
      v697 = *(v88 + 128);
      if (v696 > 7)
      {
        v698 = v696 & 0x7FFFFFF8;
        v127 = vdupq_n_s32(v697);
        v699 = &unk_2808D53F4;
        v700 = v698;
        do
        {
          v699[-1] = v127;
          *v699 = v127;
          v699 += 2;
          v700 -= 8;
        }

        while (v700);
        if (v698 == v696)
        {
          goto LABEL_769;
        }
      }

      else
      {
        v698 = 0;
      }

      v701 = v696 - v698;
      v702 = &_MergedGlobals_7[2 * v698 + 518];
      do
      {
        *v702 = v697;
        v702 += 2;
        --v701;
      }

      while (v701);
    }

LABEL_769:
    v290 = __OFSUB__(v694, 1);
    v703 = (v694 - 1);
    if (!((v703 < 0) ^ v290 | (v703 == 0)))
    {
      v704 = 0;
      v705 = *(v88 + 128);
      do
      {
        ++v704;
        v707 = *(v695 + 8 * v704);
        v706 = *(v695 + 8 * v704 + 4);
        v708 = (v707 - v696);
        if (v708 >= 1)
        {
          v709 = ((v708 >> 1) + 0x10000) / v708 * (v706 - v705);
          if (v708 != 1 && (v707 - 1 >= v696 ? (v710 = (v708 - 1) >> 32 == 0) : (v710 = 0), v710))
          {
            v711 = v708 & 0x7FFFFFFE;
            v715 = v696;
            v716 = v711;
            v717 = 0x8000;
            do
            {
              *(&xmmword_2808D53E4 + v715) = v705 + (v717 >> 16);
              *(&xmmword_2808D53E4 + v715 + 1) = v705 + ((v709 + v717) >> 16);
              v717 += 2 * v709;
              v715 += 2;
              v716 -= 2;
            }

            while (v716);
            if (v711 == v708)
            {
              goto LABEL_771;
            }
          }

          else
          {
            v711 = 0;
          }

          v712 = v708 - v711;
          v713 = v696 + v711;
          v714 = v711 * v709 + 0x8000;
          do
          {
            *&_MergedGlobals_7[2 * v713++ + 518] = v705 + (v714 >> 16);
            v714 += v709;
            --v712;
          }

          while (v712);
        }

LABEL_771:
        LODWORD(v696) = v707;
        v705 = v706;
      }

      while (v704 != v703);
    }

    v718 = (v695 + 8 * v703);
    v719 = *v718;
    v316 = __dst;
    v266 = &qword_2808D4000;
    if (v719 <= 255)
    {
      v720 = v718[1];
      v721 = 257 - (v719 + 1);
      if (v721 <= 0xB)
      {
        goto LABEL_796;
      }

      if (-2 - v719 < (255 - v719) || (256 - (v719 + 1)) >> 32 != 0)
      {
        goto LABEL_796;
      }

      v723 = (v721 & 0xFFFFFFFFFFFFFFF8) + v719;
      v127 = vdupq_n_s32(v720);
      v724 = &_MergedGlobals_7[2 * v719 + 518];
      v725 = v721 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *v724 = v127;
        *(v724 + 1) = v127;
        v724 += 16;
        v725 -= 8;
      }

      while (v725);
      v719 = v723;
      if (v721 != (v721 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_796:
        v726 = v719 + 1;
        v727 = &_MergedGlobals_7[2 * v719 + 518];
        do
        {
          *v727 = v720;
          v727 += 2;
          v45 = v726++ == 256;
        }

        while (!v45);
      }
    }

LABEL_799:
    v728 = *(v88 + 288);
    if (!v728)
    {
      goto LABEL_326;
    }

    v729 = v88 + 208;
    v730 = *(v88 + 208);
    if (v730 >= 1)
    {
      v731 = *(v88 + 212);
      if (v730 > 7)
      {
        v732 = v730 & 0x7FFFFFF8;
        v127 = vdupq_n_s32(v731);
        v733 = &unk_2808D57F4;
        v734 = v732;
        do
        {
          v733[-1] = v127;
          *v733 = v127;
          v733 += 2;
          v734 -= 8;
        }

        while (v734);
        if (v732 == v730)
        {
          goto LABEL_808;
        }
      }

      else
      {
        v732 = 0;
      }

      v735 = v730 - v732;
      v736 = &_MergedGlobals_7[2 * v732 + 1030];
      do
      {
        *v736 = v731;
        v736 += 2;
        --v735;
      }

      while (v735);
    }

LABEL_808:
    v290 = __OFSUB__(v728, 1);
    v737 = (v728 - 1);
    if (!((v737 < 0) ^ v290 | (v737 == 0)))
    {
      v738 = 0;
      v739 = *(v88 + 212);
      do
      {
        ++v738;
        v741 = *(v729 + 8 * v738);
        v740 = *(v729 + 8 * v738 + 4);
        v742 = (v741 - v730);
        if (v742 >= 1)
        {
          v743 = ((v742 >> 1) + 0x10000) / v742 * (v740 - v739);
          if (v742 != 1 && (v741 - 1 >= v730 ? (v744 = (v742 - 1) >> 32 == 0) : (v744 = 0), v744))
          {
            v745 = v742 & 0x7FFFFFFE;
            v749 = v730;
            v750 = v745;
            v751 = 0x8000;
            do
            {
              *(&xmmword_2808D57E4 + v749) = v739 + (v751 >> 16);
              *(&xmmword_2808D57E4 + v749 + 1) = v739 + ((v743 + v751) >> 16);
              v751 += 2 * v743;
              v749 += 2;
              v750 -= 2;
            }

            while (v750);
            if (v745 == v742)
            {
              goto LABEL_810;
            }
          }

          else
          {
            v745 = 0;
          }

          v746 = v742 - v745;
          v747 = v730 + v745;
          v748 = v745 * v743 + 0x8000;
          do
          {
            *&_MergedGlobals_7[2 * v747++ + 1030] = v739 + (v748 >> 16);
            v748 += v743;
            --v746;
          }

          while (v746);
        }

LABEL_810:
        LODWORD(v730) = v741;
        v739 = v740;
      }

      while (v738 != v737);
    }

    v752 = (v729 + 8 * v737);
    v753 = *v752;
    v316 = __dst;
    v266 = &qword_2808D4000;
    if (v753 <= 255)
    {
      v754 = v752[1];
      v755 = 257 - (v753 + 1);
      if (v755 <= 0xB)
      {
        goto LABEL_835;
      }

      if (-2 - v753 < (255 - v753) || (256 - (v753 + 1)) >> 32 != 0)
      {
        goto LABEL_835;
      }

      v757 = (v755 & 0xFFFFFFFFFFFFFFF8) + v753;
      v127 = vdupq_n_s32(v754);
      v758 = &_MergedGlobals_7[2 * v753 + 1030];
      v759 = v755 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        *v758 = v127;
        *(v758 + 1) = v127;
        v758 += 16;
        v759 -= 8;
      }

      while (v759);
      v753 = v757;
      if (v755 != (v755 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_835:
        v760 = v753 + 1;
        v761 = &_MergedGlobals_7[2 * v753 + 1030];
        do
        {
          *v761 = v754;
          v761 += 2;
          v45 = v760++ == 256;
        }

        while (!v45);
      }
    }

LABEL_326:
    if (v845 < 2)
    {
      v13 = 0;
      goto LABEL_76;
    }

    v317 = 0;
    v772 = v845 >> 1;
    v816 = (v86 + 1681);
    v826 = 2 * v842;
    v825 = v878 ^ 1;
    v812 = 2 - v130;
    v319 = dword_2808D4FDC;
    v318 = dword_2808D4FE0;
    v881 = v130 ^ 1;
    v320 = 4 * (_MergedGlobals_1 << (v130 ^ 1));
    __src = &v831[v320];
    v805 = v316 + v320;
    v786 = ((2 * v869) | v854) + 6;
    v818 = v222;
    v321 = 4 * v222;
    v765 = v87 + v321 + 4;
    v322 = v87;
    v323 = 4 * v851;
    v767 = v841 + 4 * v851 + 12;
    v768 = v843 + v321 + 4;
    v777 = v850 + 4 * v851 + 12;
    v324 = 0;
    v325 = vdupq_n_s32(dword_2808D4FDC);
    v326 = vdupq_n_s32(dword_2808D4FE0);
    v838 = 2 * v869 + v854 + 6;
    v830 = dword_28100B684;
    v327 = 4 * dword_28100B684 + 12;
    v802 = v841 + v327;
    v803 = v850 + v327;
    v328.i64[0] = 0x1B0000001BLL;
    v328.i64[1] = 0x1B0000001BLL;
    v329.i64[0] = 0x1100000011;
    v329.i64[1] = 0x1100000011;
    v330.i64[0] = 0x1000000010;
    v330.i64[1] = 0x1000000010;
    v331 = 4 * v205;
    v815 = _MergedGlobals_1;
    v764 = _MergedGlobals_1 + v874;
    v769 = v322 + 4;
    v821 = v841 + 12;
    v785 = (v841 + 2);
    v766 = v322 + v321;
    v781 = v843 + 4;
    v822 = v850 + 12;
    v800 = (v850 + 2);
    v823 = v321;
    v776 = v843 + v321;
    v801 = v86 + 2988;
    v779 = v86 + 3316;
    v780 = (v86 + 374);
    v778 = (v86 + 415);
    v763 = v86 + 2996;
    v784 = v316 + 1;
    v762 = v322 + 16;
    v332 = v845;
    v814 = v86;
    v833 = v326;
    v834 = v325;
    while (1)
    {
      v774 = v332;
      v775 = v324;
      if (v332 >= 34)
      {
        v332 = 34;
      }

      v333 = v845 - 32 * v324;
      if (v333 >= 34)
      {
        v333 = 34;
      }

      v334 = *(v88 + 644);
      v839 = v317;
      v335 = (((9472 * (v317 >> 4)) | (105 - 83 * (v317 >> 4))) - 19968) ^ v334;
      *(v266 + 2028) = (((9472 * (v317 >> 4)) | (105 - 83 * (v317 >> 4))) - 19968) ^ v334;
      if (v858 >= 2)
      {
        break;
      }

LABEL_328:
      v317 = v839 + 16;
      v324 = v775 + 1;
      v332 = v774 - 32;
      v88 = a1;
      if (v839 + 16 >= v772)
      {
        v13 = 0;
        v67 = v807;
        v87 = v857;
        goto LABEL_76;
      }
    }

    v771 = ((v332 - 1) + 1) & 0x1FFFFFFFCLL;
    v336 = (v333 - 1);
    v773 = v336 + 1;
    v337 = 2 * v317;
    v338 = v845 - 2 * v317;
    if (v338 >= 34)
    {
      v339 = 34;
    }

    else
    {
      v339 = v845 - 2 * v317;
    }

    if (v772 - v317 >= 16)
    {
      v340 = 16;
    }

    else
    {
      v340 = v772 - v317;
    }

    if (v317)
    {
      v341 = v317 + 1;
    }

    else
    {
      v341 = 0;
    }

    v342 = v341 * v826;
    v783 = v840 + 8 + 8 * v336;
    v343 = v338 >> v878;
    v344 = v341 << v825;
    v345 = 2 - v878;
    if (!v317)
    {
      v345 = 0;
    }

    v792 = v848 + 2 * v342;
    v346 = 2 * v344 * v222;
    v791 = v847 + v346;
    v790 = v847 + v344 * v222;
    v789 = v846 + v346;
    v811 = (v840 + 16 * (v317 != 0));
    v347 = 4 * (v345 * v812);
    v348 = 0;
    if (v317)
    {
      v349 = v872 != 0;
    }

    else
    {
      v349 = 0;
    }

    v820 = v349;
    v824 = v340;
    v809 = v340 - (v317 != 0);
    v788 = v846 + v344 * v222;
    v829 = 2 * v317;
    v350 = 2 * (v317 << v825) * v222;
    v798 = v846 + v350;
    v799 = v847 + v350;
    v797 = v848 + v337 * v842;
    v795 = v846 + (v317 << v825) * v222;
    v796 = v847 + (v317 << v825) * v222;
    if (v764 < v343)
    {
      v343 = v764;
    }

    v865 = v343;
    v810 = v347;
    v808 = &v831[v347];
    v782 = &v763[328 * v336];
    v787 = v848 + v342;
    v813 = v339;
    v770 = v339 - (v773 & 0xFFFFFFFC);
    v793 = v336;
    v794 = v848 + 2 * v337 * v842;
    while (1)
    {
      v351 = v335;
      v352 = v335;
      v353 = v335 >> 1;
      v354 = ((v335 >> 3) ^ (v352 >> 12) ^ v352 ^ v353) << 15;
      v355 = v354 & 0xFFFF8000 | (v351 >> 1);
      *(v266 + 2028) = v354 & 0x8000 | (v351 >> 1);
      v356 = (v354 & 0x8000 | (v351 >> 1)) >> 12;
      v357 = (v351 >> 9) & 0xF;
      v868 = 2 * v357 + 9;
      v877 = (2 * v356 + 9);
      v885 = v827 + v357 * v874;
      v870 = v828 + v356 * v205;
      v358 = !v872 || v348 == 0;
      v359 = !v358;
      v861 = v359;
      v889 = v348;
      v849 = v355;
      v855 = v353;
      v853 = v354;
      v837 = v357;
      if (!v358)
      {
        break;
      }

      v363 = v839;
      if (!v820)
      {
        v364 = 0;
        v365 = 0;
        v366 = 0;
        v367 = 0;
        if (v866)
        {
          goto LABEL_649;
        }

LABEL_475:
        v447 = 0;
        v448 = 0;
        if (v858 / 2 - v348 >= 16)
        {
          v449 = 16;
        }

        else
        {
          v449 = v858 / 2 - v348;
        }

        v366 = v364;
        v450 = v878;
        v451 = v842;
        v452 = v859;
        v453 = a1;
        v454 = v873;
        goto LABEL_656;
      }

LABEL_440:
      v414 = (v852 + 8 * v348);
      if (v348)
      {
        v415 = (17 * *v840 + 27 * v414->i32[0] + 16) >> 5;
        if (v415 >= v318)
        {
          v416 = v318;
        }

        else
        {
          v416 = (17 * *v840 + 27 * v414->i32[0] + 16) >> 5;
        }

        if (v415 >= v319)
        {
          v417 = v416;
        }

        else
        {
          v417 = v319;
        }

        v414->i32[0] = v417;
        v418 = v842;
        v419 = (17 * v414->i32[v842] + 27 * *(v840 + 8) + 16) >> 5;
        if (v419 >= v318)
        {
          v420 = v318;
        }

        else
        {
          v420 = (17 * v414->i32[v842] + 27 * *(v840 + 8) + 16) >> 5;
        }

        if (v419 >= v319)
        {
          v421 = v420;
        }

        else
        {
          v421 = v319;
        }

        v414->i32[v842] = v421;
        v422 = &v414->i32[1];
        v423 = (17 * *(v840 + 4) + 27 * v414->i32[1] + 16) >> 5;
        if (v423 >= v318)
        {
          v424 = v318;
        }

        else
        {
          v424 = (17 * *(v840 + 4) + 27 * v414->i32[1] + 16) >> 5;
        }

        if (v423 >= v319)
        {
          v425 = v424;
        }

        else
        {
          v425 = v319;
        }

        *v422 = v425;
        v426 = (17 * v422[v842] + 27 * *(v840 + 12) + 16) >> 5;
        if (v426 >= v318)
        {
          v427 = v318;
        }

        else
        {
          v427 = (17 * v422[v842] + 27 * *(v840 + 12) + 16) >> 5;
        }

        if (v426 >= v319)
        {
          v428 = v427;
        }

        else
        {
          v428 = v319;
        }

        v422[v842] = v428;
        v429 = v863;
        v430 = v843;
        v431 = (v843 + 4 * v348 * v863);
        v432 = v836;
        v433 = __dst;
        v434 = v818;
        v436 = v833;
        v435 = v834;
        v437.i64[0] = 0x1B0000001BLL;
        v437.i64[1] = 0x1B0000001BLL;
        v438.i64[0] = 0x1100000011;
        v438.i64[1] = 0x1100000011;
        v439.i64[0] = 0x1000000010;
        v439.i64[1] = 0x1000000010;
        v440.i64[0] = 0x1700000017;
        v440.i64[1] = 0x1700000017;
        v441.i64[0] = 0x1600000016;
        v441.i64[1] = 0x1600000016;
        if (v836)
        {
          v442 = v863;
          do
          {
            v443 = *v433;
            v433 = (v433 + 4);
            v444 = (22 * v443 + 23 * *v431 + 16) >> 5;
            if (v444 >= v318)
            {
              v445 = v318;
            }

            else
            {
              v445 = v444;
            }

            if (v444 >= v319)
            {
              v446 = v445;
            }

            else
            {
              v446 = v319;
            }

            *v431++ = v446;
            --v442;
          }

          while (v442);
        }

        else
        {
          v457 = __dst;
          v458 = v863;
          do
          {
            v459 = (17 * *v457 + 27 * *v431 + 16) >> 5;
            if (v459 >= v318)
            {
              v460 = v318;
            }

            else
            {
              v460 = (17 * *v457 + 27 * *v431 + 16) >> 5;
            }

            if (v459 >= v319)
            {
              v461 = v460;
            }

            else
            {
              v461 = v319;
            }

            *v431 = v461;
            v462 = (17 * v431[v818] + 27 * v457[v331 / 4] + 16) >> 5;
            if (v462 >= v318)
            {
              v463 = v318;
            }

            else
            {
              v463 = (17 * v431[v818] + 27 * v457[v331 / 4] + 16) >> 5;
            }

            if (v462 >= v319)
            {
              v464 = v463;
            }

            else
            {
              v464 = v319;
            }

            v431[v818] = v464;
            ++v431;
            ++v457;
            --v458;
          }

          while (v458);
        }

        v465 = (v857 + 4 * v348 * v863);
        if (v836)
        {
          v466 = v863;
          v467 = v831;
          do
          {
            v468 = *v467++;
            v469 = (22 * v468 + 23 * *v465 + 16) >> 5;
            if (v469 >= v318)
            {
              v470 = v318;
            }

            else
            {
              v470 = v469;
            }

            if (v469 >= v319)
            {
              v471 = v470;
            }

            else
            {
              v471 = v319;
            }

            *v465++ = v471;
            --v466;
          }

          while (v466);
        }

        else
        {
          v472 = v831;
          v473 = v863;
          do
          {
            v474 = (17 * *v472 + 27 * *v465 + 16) >> 5;
            if (v474 >= v318)
            {
              v475 = v318;
            }

            else
            {
              v475 = (17 * *v472 + 27 * *v465 + 16) >> 5;
            }

            if (v474 >= v319)
            {
              v476 = v475;
            }

            else
            {
              v476 = v319;
            }

            *v465 = v476;
            v477 = (17 * v465[v818] + 27 * v472[v331 / 4] + 16) >> 5;
            if (v477 >= v318)
            {
              v478 = v318;
            }

            else
            {
              v478 = (17 * v465[v818] + 27 * v472[v331 / 4] + 16) >> 5;
            }

            if (v477 >= v319)
            {
              v479 = v478;
            }

            else
            {
              v479 = v319;
            }

            v465[v818] = v479;
            ++v465;
            ++v472;
            --v473;
          }

          while (v473);
        }

        v456 = 30;
        v455 = 2;
      }

      else
      {
        v455 = 0;
        v456 = 32;
        v432 = v836;
        v430 = v843;
        v429 = v863;
        v418 = v842;
        v434 = v818;
        v436 = v833;
        v435 = v834;
        v437.i64[0] = 0x1B0000001BLL;
        v437.i64[1] = 0x1B0000001BLL;
        v438.i64[0] = 0x1100000011;
        v438.i64[1] = 0x1100000011;
        v439.i64[0] = 0x1000000010;
        v439.i64[1] = 0x1000000010;
        v440.i64[0] = 0x1700000017;
        v440.i64[1] = 0x1700000017;
        v441.i64[0] = 0x1600000016;
        v441.i64[1] = 0x1600000016;
      }

      v480 = v348 != 0;
      if (v348)
      {
        v481 = v348 + 1;
      }

      else
      {
        v481 = 0;
      }

      v482 = 2 * v481;
      v483 = v858 - 2 * v481;
      if (v858 != 2 * v481)
      {
        if (v456 >= v483)
        {
          v456 = v858 - 2 * v481;
        }

        v484 = v86 + 82 * v868 + v877 + v455;
        v485 = (v852 + 4 * v482);
        v486 = (v456 - 1);
        if (v486 >= 7)
        {
          v488 = 4 * v482;
          v489 = 4 * (v456 - 1);
          v490 = v852 + 4 + v488 + v489;
          v491 = v852 + 4 * v842 + v488;
          v492 = v852 + 4 + 4 * v842 + v488 + v489;
          v493 = (((v855 | v853) >> 9) & 0x78) + 656 * ((v352 >> 9) & 0xF) + 4 * v455;
          v494 = &v801[v493];
          v495 = v493 + v489;
          v496 = &v780[v495];
          v497 = &v779[v493];
          v498 = &v778[v495];
          v500 = v485 < &v780[v495] && v494 < v490;
          v502 = v485 < v498 && v497 < v490;
          v504 = v491 < v496 && v494 < v492;
          v506 = v491 < v498 && v497 < v492;
          if (v491 >= v490 || v485 >= v492)
          {
            v429 = v863;
            v418 = v842;
            v434 = v818;
            if (v500 || v502 || v504 || v506)
            {
              v487 = v485;
            }

            else
            {
              v508 = v486 + 1;
              v509 = (v486 + 1) & 0x1FFFFFFFCLL;
              v487 = (v485 + 4 * v509);
              v484 += v509;
              v456 -= v509;
              v510 = &v801[656 * ((v352 >> 9) & 0xF) + 8 * ((v855 + v853) >> 12) + 4 * v455];
              v511 = v509;
              do
              {
                v512 = (v510 + 328);
                v513 = *v510++;
                v514 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v513, v438), *v485, v437), v439), 5uLL);
                *v485 = vbslq_s8(vcgtq_s32(v435, v514), v435, vminq_s32(v514, v436));
                v515 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*v512, v437), *(v485 + 4 * v842), v438), v439), 5uLL);
                v128 = vcgtq_s32(v435, v515);
                v127 = vbslq_s8(v128, v435, vminq_s32(v515, v436));
                *(v485++ + 4 * v842) = v127;
                v511 -= 4;
              }

              while (v511);
              if (v508 == v509)
              {
                goto LABEL_578;
              }
            }
          }

          else
          {
            v487 = v485;
            v429 = v863;
            v418 = v842;
            v434 = v818;
          }
        }

        else
        {
          v487 = (v852 + 4 * v482);
        }

        do
        {
          v516 = (17 * *v484 + 27 * v487->i32[0] + 16) >> 5;
          if (v516 >= v318)
          {
            v517 = v318;
          }

          else
          {
            v517 = (17 * *v484 + 27 * v487->i32[0] + 16) >> 5;
          }

          if (v516 >= v319)
          {
            v518 = v517;
          }

          else
          {
            v518 = v319;
          }

          v487->i32[0] = v518;
          v519 = (17 * v487->i32[v418] + 27 * v484[82] + 16) >> 5;
          if (v519 >= v318)
          {
            v520 = v318;
          }

          else
          {
            v520 = (17 * v487->i32[v418] + 27 * v484[82] + 16) >> 5;
          }

          if (v519 >= v319)
          {
            v521 = v520;
          }

          else
          {
            v521 = v319;
          }

          v487->i32[v418] = v521;
          v487 = (v487 + 4);
          ++v484;
          --v456;
        }

        while (v456);
      }

LABEL_578:
      v522 = v481 << v881;
      v523 = (v430 + 4 * v522);
      v524 = (v885 * v851);
      v525 = (v480 << v881);
      v526 = v850 + v524 + v870 + v525;
      LODWORD(v527) = v830 - v525;
      v528 = v483 >> v130;
      if (v830 - v525 >= v528)
      {
        v527 = v528;
      }

      else
      {
        v527 = v527;
      }

      if (v432)
      {
        if (!v527)
        {
          goto LABEL_644;
        }

        if (v527 < 8)
        {
          v529 = v527;
          do
          {
LABEL_607:
            v549 = *v526++;
            v550 = (22 * v549 + 23 * *v523 + 16) >> 5;
            if (v550 >= v318)
            {
              v551 = v318;
            }

            else
            {
              v551 = v550;
            }

            if (v550 >= v319)
            {
              v552 = v551;
            }

            else
            {
              v552 = v319;
            }

            *v523 = v552;
            v523 += 4;
            --v529;
          }

          while (v529);
          goto LABEL_614;
        }

        v538 = (v527 - 1);
        v539 = 4 * v525;
        v540 = (4 * v786 * v885);
        v541 = 4 * v429 * (((v855 | v853) >> 12) + 3);
        if (v523 < &v800[4 * v525 + 4 * v538 + v540 + v541])
        {
          v542 = v781 + 4 * (v522 + v538);
          v529 = v527;
          if (&v822[v539 + v540 + v541] < v542)
          {
            goto LABEL_607;
          }
        }

        v543 = 4 * (v527 & 0xFFFFFFF8);
        v523 += v543;
        v529 = v527 - (v527 & 0xFFFFFFF8);
        v526 = (v526 + v543);
        v544 = (v850 + 4 * v838 * v885 + 4 * v429 * (((v855 + v853) >> 12) + 3) + v539 + 28);
        v545 = (v843 + 16 + 4 * v522);
        v546 = v527 & 0xFFFFFFF8;
        do
        {
          v547 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v544[-1], v441), v545[-1], v440), v439), 5uLL);
          v548 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*v544, v441), *v545, v440), v439), 5uLL);
          v127 = vbslq_s8(vcgtq_s32(v435, v547), v435, vminq_s32(v547, v436));
          v128 = vbslq_s8(vcgtq_s32(v435, v548), v435, vminq_s32(v548, v436));
          v545[-1] = v127;
          *v545 = v128;
          v544 += 2;
          v545 += 2;
          v546 -= 8;
        }

        while (v546);
        if ((v527 & 0xFFFFFFF8) != v527)
        {
          goto LABEL_607;
        }
      }

      else
      {
        if (!v527)
        {
          goto LABEL_644;
        }

        if (v527 < 8)
        {
LABEL_587:
          v530 = (v430 + 4 * v522);
          v531 = v527;
          goto LABEL_588;
        }

        v638 = 4 * (v527 - 1);
        v639 = 4 * v522 + v638;
        v640 = v781 + v639;
        v641 = v776 + 4 * v522;
        v642 = v768 + v639;
        v643 = (4 * v786 * v885) + 4 * v525 + 4 * v429 * (((v855 | v853) >> 12) + 3);
        v644 = &v822[v643];
        v645 = v643 + v638;
        v646 = &v800[v645];
        v647 = &v777[v643];
        v648 = v850 + 4 * v851 + v645 + 16;
        v650 = v523 < &v800[v645] && v644 < v640;
        v652 = v523 < v648 && v647 < v640;
        v654 = v641 < v646 && v644 < v642;
        v656 = v641 < v648 && v647 < v642;
        if (v641 < v640 && v523 < v642)
        {
          v530 = (v430 + 4 * v522);
          v531 = v527;
          do
          {
LABEL_588:
            v532 = (17 * *v526 + 27 * *v530 + 16) >> 5;
            if (v532 >= v318)
            {
              v533 = v318;
            }

            else
            {
              v533 = (17 * *v526 + 27 * *v530 + 16) >> 5;
            }

            if (v532 >= v319)
            {
              v534 = v533;
            }

            else
            {
              v534 = v319;
            }

            *v530 = v534;
            v535 = (17 * v530[v434] + 27 * v526[v851] + 16) >> 5;
            if (v535 >= v318)
            {
              v536 = v318;
            }

            else
            {
              v536 = (17 * v530[v434] + 27 * v526[v851] + 16) >> 5;
            }

            if (v535 >= v319)
            {
              v537 = v536;
            }

            else
            {
              v537 = v319;
            }

            v530[v434] = v537;
            ++v530;
            ++v526;
            --v531;
          }

          while (v531);
          goto LABEL_614;
        }

        if (v650 || v652 || v654 || v656)
        {
          goto LABEL_587;
        }

        v658 = 0;
        v659 = 4 * (v527 & 0xFFFFFFFC);
        v530 = &v523[v659];
        v526 = (v526 + v659);
        v531 = v527 - (v527 & 0xFFFFFFFC);
        v660 = 4 * v525 + 4 * (v838 * v885) + 4 * v429 * (((v855 + v853) >> 12) + 3);
        v661 = &v822[v660];
        v662 = &v777[v660];
        v663 = v776 + 4 * v522;
        do
        {
          v664 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*&v661[v658], v438), *&v523[v658], v437), v439), 5uLL);
          *&v523[v658] = vbslq_s8(vcgtq_s32(v435, v664), v435, vminq_s32(v664, v436));
          v665 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*&v662[v658], v437), *(v663 + v658), v438), v439), 5uLL);
          v128 = vcgtq_s32(v435, v665);
          v127 = vbslq_s8(v128, v435, vminq_s32(v665, v436));
          *(v663 + v658) = v127;
          v658 += 16;
        }

        while (((4 * v527) & 0x3FFFFFFF0) != v658);
        if ((v527 & 0xFFFFFFFC) != v527)
        {
          goto LABEL_588;
        }
      }

LABEL_614:
      v553 = (v857 + 4 * v522);
      v554 = v841 + v524 + v870 + v525;
      if (v432)
      {
        if (v527 < 8)
        {
          goto LABEL_841;
        }

        v555 = (v527 - 1);
        v556 = 4 * v525;
        v557 = (4 * v786 * v885);
        v558 = 4 * v429 * (((v855 | v853) >> 12) + 3);
        if (v553 < &v785[4 * v555 + v556 + v557 + v558] && &v821[v556 + v557 + v558] < v769 + 4 * (v522 + v555))
        {
          goto LABEL_841;
        }

        v559 = 4 * (v527 & 0xFFFFFFF8);
        v553 += v559;
        v554 = (v554 + v559);
        v560 = (v841 + 4 * v838 * v885 + 4 * v429 * (((v855 + v853) >> 12) + 3) + v556 + 28);
        v561 = (v762 + 4 * v522);
        v562 = v527 & 0xFFFFFFF8;
        do
        {
          v563 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v560[-1], v441), v561[-1], v440), v439), 5uLL);
          v564 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*v560, v441), *v561, v440), v439), 5uLL);
          v127 = vbslq_s8(vcgtq_s32(v435, v563), v435, vminq_s32(v563, v436));
          v128 = vbslq_s8(vcgtq_s32(v435, v564), v435, vminq_s32(v564, v436));
          v561[-1] = v127;
          *v561 = v128;
          v560 += 2;
          v561 += 2;
          v562 -= 8;
        }

        while (v562);
        v45 = (v527 & 0xFFFFFFF8) == v527;
        LODWORD(v527) = v527 - (v527 & 0xFFFFFFF8);
        if (!v45)
        {
LABEL_841:
          do
          {
            v565 = *v554++;
            v566 = (22 * v565 + 23 * *v553 + 16) >> 5;
            if (v566 >= v318)
            {
              v567 = v318;
            }

            else
            {
              v567 = v566;
            }

            if (v566 >= v319)
            {
              v568 = v567;
            }

            else
            {
              v568 = v319;
            }

            *v553 = v568;
            v553 += 4;
            LODWORD(v527) = v527 - 1;
          }

          while (v527);
        }

        goto LABEL_644;
      }

      if (v527 < 8)
      {
LABEL_630:
        v569 = (v857 + 4 * v522);
        v570 = v527;
        goto LABEL_631;
      }

      v666 = 4 * (v527 - 1);
      v667 = 4 * v522 + v666;
      v668 = v769 + v667;
      v669 = v766 + 4 * v522;
      v670 = v765 + v667;
      v671 = (4 * v786 * v885) + 4 * v525 + 4 * v429 * (((v855 | v853) >> 12) + 3);
      v672 = &v821[v671];
      v673 = v671 + v666;
      v674 = &v785[v673];
      v675 = &v767[v671];
      v676 = v841 + 4 * v851 + v673 + 16;
      v678 = v553 < &v785[v673] && v672 < v668;
      v680 = v553 < v676 && v675 < v668;
      v682 = v669 < v674 && v672 < v670;
      v684 = v669 < v676 && v675 < v670;
      if (v669 < v668 && v553 < v670)
      {
        v569 = (v857 + 4 * v522);
        v570 = v527;
        do
        {
LABEL_631:
          v571 = (17 * *v554 + 27 * *v569 + 16) >> 5;
          if (v571 >= v318)
          {
            v572 = v318;
          }

          else
          {
            v572 = (17 * *v554 + 27 * *v569 + 16) >> 5;
          }

          if (v571 >= v319)
          {
            v573 = v572;
          }

          else
          {
            v573 = v319;
          }

          *v569 = v573;
          v574 = (17 * v569[v434] + 27 * v554[v851] + 16) >> 5;
          if (v574 >= v318)
          {
            v575 = v318;
          }

          else
          {
            v575 = (17 * v569[v434] + 27 * v554[v851] + 16) >> 5;
          }

          if (v574 >= v319)
          {
            v576 = v575;
          }

          else
          {
            v576 = v319;
          }

          v569[v434] = v576;
          ++v569;
          ++v554;
          --v570;
        }

        while (v570);
        goto LABEL_644;
      }

      if (v678 || v680 || v682 || v684)
      {
        goto LABEL_630;
      }

      v686 = 0;
      v687 = 4 * (v527 & 0xFFFFFFFC);
      v569 = &v553[v687];
      v554 = (v554 + v687);
      v570 = v527 - (v527 & 0xFFFFFFFC);
      v688 = 4 * v525 + 4 * (v838 * v885) + 4 * v429 * (((v855 + v853) >> 12) + 3);
      v689 = &v821[v688];
      v690 = &v767[v688];
      v691 = v766 + 4 * v522;
      do
      {
        v692 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*&v689[v686], v438), *&v553[v686], v437), v439), 5uLL);
        *&v553[v686] = vbslq_s8(vcgtq_s32(v435, v692), v435, vminq_s32(v692, v436));
        v693 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(*&v690[v686], v437), *(v691 + v686), v438), v439), 5uLL);
        v128 = vcgtq_s32(v435, v693);
        v127 = vbslq_s8(v128, v435, vminq_s32(v693, v436));
        *(v691 + v686) = v127;
        v686 += 16;
      }

      while (((4 * v527) & 0x3FFFFFFF0) != v686);
      if ((v527 & 0xFFFFFFFC) != v527)
      {
        goto LABEL_631;
      }

LABEL_644:
      v577 = (v889 << v881);
      v578 = 4 * v577;
      if (v858 / 2 - v889 >= 16)
      {
        v579 = 16;
      }

      else
      {
        v579 = v858 / 2 - v889;
      }

      v366 = v861;
      if (v866)
      {
        v367 = 1;
        add_noise_to_block(a1, v797 + 2 * v889, v796 + v577, v795 + v577, v842, v222, v414, (v430 + v578), *v127.i64, *v128.i8, v857 + 4 * v577, v842, v222, 1, v579, v859, SHIWORD(v859), v878, v130, v873);
        v130 = v886;
        v365 = 2;
        v363 = v839;
        v348 = v889;
LABEL_649:
        v580 = v366 | v348;
        v581 = v848 + (v367 | v363) * v826 + (2 * (v366 | v348));
        v582 = (v367 | v363) << v825;
        v583 = 8;
        if (!v861)
        {
          v583 = 0;
        }

        v584 = 4 * (((v367 << v825) + v885) * v851);
        v585 = v348;
        v586 = 4 * (v366 << v881);
        v587 = v850 + v584 + v586;
        v588 = v841 + v584 + v586;
        v890 = v585;
        v589 = v858 / 2 - v585;
        if (v589 >= 16)
        {
          v589 = 16;
        }

        add_noise_to_block(a1, v581, v847 + v222 * v582 + (v580 << v881), v846 + v222 * v582 + (v580 << v881), v842, v222, (v86 + 328 * (v365 + v868) + 4 * v877 + v583), &v587[4 * v870], *v127.i64, *v128.i8, &v588[4 * v870], 82, v851, v824 - v367, v589 - v366, v859, SHIWORD(v859), v878, v130, v873);
        if (!v872)
        {
          goto LABEL_351;
        }

        goto LABEL_659;
      }

      v451 = v842;
      v590 = (v430 + v578);
      v591 = v579;
      add_noise_to_block_hbd(a1, (v794 + 4 * v889), (v799 + 2 * v577), (v798 + 2 * v577), v842, v222, v414, v590, (v857 + 4 * v577), v842, v222, 1, v579, v859, v878, v130, v873);
      v454 = v873;
      v452 = v859;
      v450 = v878;
      v449 = v591;
      v453 = a1;
      v448 = 1;
      v130 = v886;
      v447 = 2;
      v363 = v839;
      v348 = v889;
LABEL_656:
      v890 = v348;
      v592 = (v848 + 2 * (v448 | v363) * v826 + 2 * (2 * (v366 | v348)));
      v593 = 2 * ((v448 | v363) << v825) * v222;
      v594 = 2 * ((v366 | v348) << v881);
      v595 = 4 * (((v448 << v825) + v885) * v851);
      v596 = 4 * (v366 << v881);
      v597 = v850 + v595 + v596;
      v598 = v841 + v595 + v596;
      v599 = v847 + v594;
      v600 = v846 + v594;
      v601 = v86 + 328 * (v447 + v868) + 4 * v877;
      v602 = v449 - v366;
      v603 = 8;
      if (!v861)
      {
        v603 = 0;
      }

      add_noise_to_block_hbd(v453, v592, (v599 + v593), (v600 + v593), v451, v222, (v601 + v603), &v597[4 * v870], &v598[4 * v870], 82, v851, v824 - v448, v602, v452, v450, v130, v454);
      if (!v872)
      {
        goto LABEL_351;
      }

LABEL_659:
      v604 = v890;
      if (v890)
      {
        v605 = (v852 + 8 * v890);
        *v605 = *(v840 + 256);
        *(v605 + 4 * v842) = *(v840 + 264);
        v606 = (v890 << v881);
        v607 = (v843 + 4 * v606);
        v608 = v805;
        v609 = 2u >> v878;
        do
        {
          memcpy(v607, v608, v806);
          v608 += v331;
          v607 += v823;
          --v609;
        }

        while (v609);
        v610 = (v857 + 4 * v606);
        v611 = __src;
        v612 = 2u >> v878;
        do
        {
          memcpy(v610, v611, v806);
          v611 += v331;
          v610 += v823;
          --v612;
        }

        while (v612);
        v613 = v890 | 1;
        v614 = 2;
        v615 = v863;
        v604 = 2 * v890;
      }

      else
      {
        v613 = 0;
        v615 = 0;
        v614 = 0;
      }

      v616 = &v816[656 * v837 + 4 * v877 + 4 * v614];
      v617 = v858 - v604;
      if (v858 - v604 >= 32)
      {
        v618 = 32;
      }

      else
      {
        v618 = v858 - v604;
      }

      v619 = 4 * (v618 - v614);
      memcpy((v852 + 8 * v613), v616, v619);
      memcpy((v852 + 8 * v613 + 4 * v842), (v616 + 328), v619);
      v862 = v613 << v881;
      v620 = v617 >> v886;
      if (v830 < v617 >> v886)
      {
        v620 = v830;
      }

      v621 = (v843 + 4 * (v613 << v881));
      v622 = 4 * (v620 - v615);
      v871 = v863 * (((v855 + v853) >> 12) + 3);
      v623 = 4 * v615 + 4 * (v838 * (v885 + v815)) + 4 * v871;
      v624 = &v822[v623];
      v625 = 2u >> v878;
      do
      {
        memcpy(v621, v624, v622);
        v624 += v323;
        v621 += v823;
        --v625;
      }

      while (v625);
      v626 = (v857 + 4 * v862);
      v627 = &v821[v623];
      v628 = 2u >> v878;
      do
      {
        memcpy(v626, v627, v622);
        v627 += v323;
        v626 += v823;
        --v628;
      }

      while (v628);
      v222 = v817;
      v86 = v814;
      if (v829 != v845)
      {
        v629 = (v814 + 4 * (82 * v868) + 4 * v877 + 128);
        v630 = v813;
        v631 = v840;
        do
        {
          *v631++ = *v629;
          v629 += 41;
          --v630;
        }

        while (v630);
      }

      if (v865)
      {
        v632 = &v803[4 * v838 * v885 + 4 * v871];
        v633 = __dst;
        v634 = v865;
        do
        {
          memcpy(v633, v632, v331);
          v632 += v323;
          v633 = (v633 + v331);
          --v634;
        }

        while (v634);
        v635 = &v802[4 * v838 * v885 + 4 * v871];
        v636 = v831;
        v637 = v865;
        do
        {
          memcpy(v636, v635, v331);
          v635 += v323;
          v636 += v331;
          --v637;
        }

        while (v637);
      }

LABEL_351:
      v348 = v890 + 16;
      v130 = v886;
      v205 = v863;
      v266 = &qword_2808D4000;
      v326 = v833;
      v325 = v834;
      v328.i64[0] = 0x1B0000001BLL;
      v328.i64[1] = 0x1B0000001BLL;
      v329.i64[0] = 0x1100000011;
      v329.i64[1] = 0x1100000011;
      v330.i64[0] = 0x1000000010;
      v330.i64[1] = 0x1000000010;
      v335 = v849;
      if (v890 + 16 >= (v858 + (v858 >> 31)) >> 1)
      {
        goto LABEL_328;
      }
    }

    if (v829 != v845)
    {
      v360 = v86 + 82 * v868 + v877;
      if (v793 >= 7)
      {
        v368 = (((v353 | v354) >> 9) & 0x78) + 656 * ((v352 >> 9) & 0xF);
        v369 = v840 >= &v782[v368] || &v801[v368] >= v783;
        v361 = v840;
        v362 = v813;
        if (v369)
        {
          v360 += 82 * (v773 & 0x1FFFFFFFCLL);
          v370 = &v801[656 * ((v352 >> 9) & 0xF) + 8 * ((v353 + v354) >> 12)];
          v371 = v771;
          v372 = v840;
          do
          {
            v891 = vld2q_f32(v372);
            v373.i32[0] = *v370;
            v374.i32[0] = v370[1];
            v373.i32[1] = v370[82];
            v373.i32[2] = v370[164];
            v373.i32[3] = v370[246];
            v375 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v373, v329), v891.val[0], v328), v330), 5uLL);
            v892.val[0] = vbslq_s8(vcgtq_s32(v325, v375), v325, vminq_s32(v375, v326));
            v374.i32[1] = v370[83];
            v374.i32[2] = v370[165];
            v374.i32[3] = v370[247];
            v891.val[0] = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v374, v328), v891.val[1], v329), v330), 5uLL);
            v128 = vcgtq_s32(v325, v891.val[0]);
            v127 = vminq_s32(v891.val[0], v326);
            v892.val[1] = vbslq_s8(v128, v325, v127);
            vst2q_f32(v372, v892);
            v372 += 8;
            v370 += 328;
            v371 -= 4;
          }

          while (v371);
          v361 = (v840 + 8 * (v773 & 0x1FFFFFFFCLL));
          v362 = v770;
          if (v773 == (v773 & 0x1FFFFFFFCLL))
          {
            goto LABEL_386;
          }
        }
      }

      else
      {
        v361 = v840;
        v362 = v813;
      }

      do
      {
        v376 = v361[1];
        v377 = (17 * *v360 + 27 * *v361 + 16) >> 5;
        if (v377 >= v318)
        {
          v378 = v318;
        }

        else
        {
          v378 = (17 * *v360 + 27 * *v361 + 16) >> 5;
        }

        if (v377 >= v319)
        {
          v379 = v378;
        }

        else
        {
          v379 = v319;
        }

        *v361 = v379;
        v380 = (17 * v376 + 27 * v360[1] + 16) >> 5;
        if (v380 >= v318)
        {
          v381 = v318;
        }

        else
        {
          v381 = (17 * v376 + 27 * v360[1] + 16) >> 5;
        }

        if (v380 >= v319)
        {
          v382 = v381;
        }

        else
        {
          v382 = v319;
        }

        v361[1] = v382;
        v361 += 2;
        v360 += 82;
        --v362;
      }

      while (v362);
    }

LABEL_386:
    if (v832)
    {
      if (!v865)
      {
        goto LABEL_436;
      }

      v383 = &v822[4 * v838 * v885 + 4 * v205 * (((v353 + v354) >> 12) + 3)];
      v384 = __dst;
      v385 = v865;
      do
      {
        v386 = (22 * *v383 + 23 * *v384 + 16) >> 5;
        if (v386 >= v318)
        {
          v387 = v318;
        }

        else
        {
          v387 = (22 * *v383 + 23 * *v384 + 16) >> 5;
        }

        if (v386 >= v319)
        {
          v388 = v387;
        }

        else
        {
          v388 = v319;
        }

        *v384 = v388;
        v384 = (v384 + v331);
        v383 += v323;
        --v385;
      }

      while (v385);
    }

    else
    {
      if (!v865)
      {
        goto LABEL_436;
      }

      v389 = &v800[4 * v838 * v885 + 4 * v205 * (((v353 + v354) >> 12) + 3)];
      v390 = v784;
      v391 = v865;
      do
      {
        v392 = (17 * *(v389 - 1) + 27 * *(v390 - 1) + 16) >> 5;
        if (v392 >= v318)
        {
          v393 = v318;
        }

        else
        {
          v393 = (17 * *(v389 - 1) + 27 * *(v390 - 1) + 16) >> 5;
        }

        if (v392 >= v319)
        {
          v394 = v393;
        }

        else
        {
          v394 = v319;
        }

        *(v390 - 1) = v394;
        v395 = (17 * *v390 + 27 * *v389 + 16) >> 5;
        if (v395 >= v318)
        {
          v396 = v318;
        }

        else
        {
          v396 = (17 * *v390 + 27 * *v389 + 16) >> 5;
        }

        if (v395 >= v319)
        {
          v397 = v396;
        }

        else
        {
          v397 = v319;
        }

        *v390 = v397;
        v390 = (v390 + v331);
        v389 += v323;
        --v391;
      }

      while (v391);
    }

    if (v832)
    {
      v398 = &v821[4 * v838 * v885 + 4 * v205 * (((v353 + v354) >> 12) + 3)];
      v399 = v831;
      v400 = v865;
      do
      {
        v401 = (22 * *v398 + 23 * *v399 + 16) >> 5;
        if (v401 >= v318)
        {
          v402 = v318;
        }

        else
        {
          v402 = (22 * *v398 + 23 * *v399 + 16) >> 5;
        }

        if (v401 >= v319)
        {
          v403 = v402;
        }

        else
        {
          v403 = v319;
        }

        *v399 = v403;
        v399 = (v399 + v331);
        v398 += v323;
        --v400;
      }

      while (v400);
    }

    else
    {
      v404 = &v785[4 * v838 * v885 + 4 * v205 * (((v353 + v354) >> 12) + 3)];
      v405 = (v831 + 4);
      v406 = v865;
      do
      {
        v407 = (17 * *(v404 - 1) + 27 * *(v405 - 1) + 16) >> 5;
        if (v407 >= v318)
        {
          v408 = v318;
        }

        else
        {
          v408 = (17 * *(v404 - 1) + 27 * *(v405 - 1) + 16) >> 5;
        }

        if (v407 >= v319)
        {
          v409 = v408;
        }

        else
        {
          v409 = v319;
        }

        *(v405 - 1) = v409;
        v410 = (17 * *v405 + 27 * *v404 + 16) >> 5;
        if (v410 >= v318)
        {
          v411 = v318;
        }

        else
        {
          v411 = (17 * *v405 + 27 * *v404 + 16) >> 5;
        }

        if (v410 >= v319)
        {
          v412 = v411;
        }

        else
        {
          v412 = v319;
        }

        *v405 = v412;
        v405 = (v405 + v331);
        v404 += v323;
        --v406;
      }

      while (v406);
    }

LABEL_436:
    v413 = (v348 << v881);
    if (v866)
    {
      v366 = 1;
      add_noise_to_block(a1, v787 + 2 * v348, v790 + v413, v788 + v413, v842, v222, v811, (__dst + v810), *v127.i64, *v128.i8, v808, 2, v812, v809, 1u, v859, SHIWORD(v859), v878, v130, v873);
      v348 = v889;
      v130 = v886;
      v363 = v839;
      if (!v839)
      {
        v365 = 0;
        v367 = 0;
        goto LABEL_649;
      }
    }

    else
    {
      v364 = 1;
      add_noise_to_block_hbd(a1, (v792 + 4 * v348), (v791 + 2 * v413), (v789 + 2 * v413), v842, v222, v811, (__dst + v810), v808, 2, v812, v809, 1, v859, v878, v130, v873);
      v348 = v889;
      v130 = v886;
      v363 = v839;
      if (!v820)
      {
        goto LABEL_475;
      }
    }

    goto LABEL_440;
  }

  v856 = 0;
  v884 = v878 + v130;
  v880 = (1 << (v878 + v130)) >> 1;
  v223 = a1 + 396;
  v224 = a1 + 496;
  v225 = (v86 + 2);
  v226 = 3;
  while (1)
  {
    v227 = ((v226 - 3) << v878) + 3;
    v888 = v227;
    v228 = 4 * v226 * v851;
    v864 = v850 + v228;
    v860 = v841 + v228;
    v229 = v227 + v878 <= v227 ? ((v226 - 3) << v878) + 3 : v227 + v878;
    v230 = v229;
    v231 = &v225[328 * v227];
    v232 = &v86[41 * v227];
    v233 = 3;
    v867 = v231;
LABEL_221:
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v237 = ((v233 - 3) << v886) + 3;
    v238 = v237;
    v239 = v237 + v886;
    if (v237 + v886 <= v237)
    {
      v239 = ((v233 - 3) << v886) + 3;
    }

    v240 = v239 + 1;
    v241 = v240 - v237;
    v242 = v241 & 0xFFFFFFFFFFFFFFF8;
    v243 = &v231[4 * v237];
LABEL_225:
    v245 = v819[v234];
    v246 = v245[2];
    if (v246)
    {
      break;
    }

    v244 = 4 * (v245[1] + v233 + (*v245 + v226) * v851);
    v235 += *(v841 + v244) * *(v224 + 4 * v234);
    v236 += *(v850 + v244) * *(v223 + 4 * v234++);
    if (v234 != v209)
    {
      goto LABEL_225;
    }

LABEL_238:
    v88 = a1;
    if (*(a1 + 204) || *(a1 + 636))
    {
      v259 = ((v236 + v219) >> *(a1 + 596)) + *&v864[4 * v233];
      if (v259 >= v221)
      {
        v260 = v221;
      }

      else
      {
        v260 = ((v236 + v219) >> *(a1 + 596)) + *&v864[4 * v233];
      }

      if (v259 >= v220)
      {
        v261 = v260;
      }

      else
      {
        v261 = v220;
      }

      *&v864[4 * v233] = v261;
    }

    v231 = v867;
    if (*(a1 + 288) || *(a1 + 636))
    {
      v262 = ((v235 + v219) >> *(a1 + 596)) + *&v860[4 * v233];
      if (v262 >= v221)
      {
        v263 = v221;
      }

      else
      {
        v263 = ((v235 + v219) >> *(a1 + 596)) + *&v860[4 * v233];
      }

      if (v262 >= v220)
      {
        v264 = v263;
      }

      else
      {
        v264 = v220;
      }

      *&v860[4 * v233] = v264;
    }

    if (++v233 != v876)
    {
      goto LABEL_221;
    }

    v856 = ++v226 >= v122;
    v130 = v886;
    v87 = v857;
    v222 = v817;
    v205 = v863;
    v225 = (v86 + 2);
    if (v226 == v122)
    {
      goto LABEL_260;
    }
  }

  if (v246 == 1)
  {
    v247 = 0;
    v248 = v232;
    v249 = v243;
    v250 = v888;
    while (1)
    {
      if (v241 > 7)
      {
        v252 = 0uLL;
        v128 = v247;
        v253 = (v240 - v238) & 0xFFFFFFFFFFFFFFF8;
        v254 = v249;
        do
        {
          v128 = vaddq_s32(v254[-1], v128);
          v252 = vaddq_s32(*v254, v252);
          v254 += 2;
          v253 -= 8;
        }

        while (v253);
        v127 = vaddq_s32(v252, v128);
        v127.i32[0] = vaddvq_s32(v127);
        v247 = v127.i32[0];
        v251 = v242 + v238;
        if (v241 == v242)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v251 = v238;
      }

      v255 = v240 - v251;
      v256 = &v248[4 * v251];
      do
      {
        v257 = *v256;
        v256 += 4;
        v247 += v257;
        --v255;
      }

      while (v255);
LABEL_228:
      v249 = (v249 + 328);
      v248 += 328;
      v45 = v250++ == v230;
      if (v45)
      {
        v258 = (v247 + v880) >> v884;
        v67 = v807;
        v235 += *(v224 + 4 * v234) * v258;
        v236 += *(v223 + 4 * v234++) * v258;
        if (v234 == v209)
        {
          goto LABEL_238;
        }

        goto LABEL_225;
      }
    }
  }

  fwrite("Grain synthesis: prediction between two chroma components is not supported!", 0x4BuLL, 1uLL, *MEMORY[0x277D85DF8]);
  v88 = a1;
  v130 = v886;
  v87 = v857;
  v222 = v817;
  v205 = v863;
  if (v856)
  {
    goto LABEL_260;
  }

  return 0xFFFFFFFFLL;
}

uint64_t add_noise_to_block_hbd(_DWORD *a1, uint16x8_t *a2, _WORD *a3, _WORD *a4, int a5, int a6, int32x4_t *a7, _DWORD *a8, _DWORD *a9, int a10, int a11, int a12, int a13, int a14, char a15, int a16, int a17)
{
  v18 = a14 - 8;
  v19 = a1[73];
  v20 = a1[159];
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = a1[51] > 0;
  }

  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = a1[72] > 0;
  }

  if (v20)
  {
    v23 = 0;
    v107 = 0;
    v24 = 64;
    v105 = 64;
    v106 = 0;
  }

  else
  {
    HIDWORD(v107) = a1[150] - 128;
    v105 = a1[151] - 128;
    LODWORD(v107) = (a1[152] << v18) - (1 << a14);
    v106 = a1[153] - 128;
    v24 = a1[154] - 128;
    v23 = (a1[155] << v18) - (1 << a14);
  }

  v25 = 1 << (v19 - 1);
  v94 = a1[30];
  v26 = a1[157];
  result = ((256 << v18) - 1);
  v28 = 16 << v18;
  v29 = 240 << v18;
  if (a17)
  {
    v29 = 235 << v18;
  }

  if (v26)
  {
    v30 = 235 << v18;
  }

  else
  {
    v30 = (256 << v18) - 1;
  }

  if (v26)
  {
    v31 = v29;
  }

  else
  {
    v28 = 0;
    v31 = (256 << v18) - 1;
  }

  v98 = (a12 << (1 - a15));
  if (v98 >= 1 && a13 << (1 - a16) >= 1)
  {
    v32 = 0;
    v34 = ~(-1 << v18);
    v35 = 1 << (a14 - 9);
    v97 = a11;
    v96 = a6;
    do
    {
      v101 = v32;
      v102 = a3;
      v36 = (v32 << a15) * a5;
      v37 = a2 + v36;
      v38 = a3;
      v103 = a4;
      v104 = a8;
      v100 = a9;
      v39 = a9;
      v40 = (a13 << (1 - a16));
      do
      {
        if (a16)
        {
          v44 = (a2->u16[v36] + a2->u16[v36 + 1] + 1) >> 1;
          if (!v21)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v44 = *v37;
          if (!v21)
          {
LABEL_33:
            if (!v22)
            {
              goto LABEL_30;
            }

LABEL_51:
            v53 = *a4;
            v54 = v23 + ((v44 * v24 + v106 * v53) >> 6);
            if (v54 >= result)
            {
              v55 = (256 << v18) - 1;
            }

            else
            {
              v55 = v54;
            }

            if (v54 < 0)
            {
              v55 = 0;
            }

            v56 = &_MergedGlobals_7[2 * (v55 >> v18)];
            v57 = *(v56 + 515);
            if (a14 != 8 && v55 >> v18 != 255)
            {
              v57 += (v35 + (*(v56 + 516) - v57) * (v55 & v34)) >> v18;
            }

            v41 = ((v25 + *v39 * v57) >> v19) + v53;
            if (v41 >= v31)
            {
              v42 = v31;
            }

            else
            {
              v42 = v41;
            }

            if (v41 >= v28)
            {
              v43 = v42;
            }

            else
            {
              v43 = v28;
            }

            *a4 = v43;
            goto LABEL_30;
          }
        }

        v45 = *v38;
        v46 = v107 + ((v44 * v105 + HIDWORD(v107) * v45) >> 6);
        if (v46 >= result)
        {
          v47 = (256 << v18) - 1;
        }

        else
        {
          v47 = v107 + ((v44 * v105 + HIDWORD(v107) * v45) >> 6);
        }

        if (v46 < 0)
        {
          v47 = 0;
        }

        v48 = &_MergedGlobals_7[2 * (v47 >> v18)];
        v49 = *(v48 + 259);
        if (a14 != 8 && v47 >> v18 != 255)
        {
          v49 += (v35 + (*(v48 + 260) - v49) * (v47 & v34)) >> v18;
        }

        v50 = ((v25 + *a8 * v49) >> v19) + v45;
        if (v50 >= v31)
        {
          v51 = v31;
        }

        else
        {
          v51 = v50;
        }

        if (v50 >= v28)
        {
          v52 = v51;
        }

        else
        {
          v52 = v28;
        }

        *v38 = v52;
        if (v22)
        {
          goto LABEL_51;
        }

LABEL_30:
        ++v39;
        ++a4;
        ++a8;
        ++v38;
        ++v37;
        v36 += 2;
        --v40;
      }

      while (v40);
      v32 = v101 + 1;
      a9 = &v100[v97];
      a4 = &v103[v96];
      a8 = &v104[v97];
      a3 = &v102[v96];
    }

    while (v101 + 1 != v98);
  }

  v58 = a7;
  if (v94 >= 1)
  {
    v59 = (2 * a12);
    if (v59 >= 1)
    {
      v60 = (2 * a13);
      if (v60 >= 1)
      {
        if (a14 != 8)
        {
          v61 = 0;
          result = 4 * a10;
          do
          {
            v62 = a2;
            v63 = v58;
            v64 = (2 * a13);
            do
            {
              v69 = v62->u16[0];
              v70 = &_MergedGlobals_7[2 * (v69 >> v18)];
              v73 = *(v70 + 3);
              v72 = v70 + 6;
              v71 = v73;
              if (v69 >> v18 != 255)
              {
                v71 += ((1 << (a14 - 9)) + (*(v72 + 1) - v71) * (v69 & ~(-1 << v18))) >> v18;
              }

              v65 = v63->i32[0];
              v63 = (v63 + 4);
              v66 = ((v25 + v65 * v71) >> v19) + v69;
              if (v66 >= v30)
              {
                v67 = v30;
              }

              else
              {
                v67 = v66;
              }

              if (v66 >= v28)
              {
                v68 = v67;
              }

              else
              {
                v68 = v28;
              }

              v62->i16[0] = v68;
              v62 = (v62 + 2);
              --v64;
            }

            while (v64);
            ++v61;
            v58 = (v58 + result);
            a2 = (a2 + 2 * a5);
          }

          while (v61 != v59);
          return result;
        }

        v74 = 0;
        v75 = vdupq_n_s32(v25);
        v76 = vdupq_n_s32(v28);
        v77 = vdupq_n_s32(v30);
        result = _MergedGlobals_7;
        v78 = vnegq_s32(vdupq_n_s32(v19));
        while (v60 >= 8)
        {
          v80 = v60 & 0x7FFFFFF8;
          v81 = v58;
          v82 = a2;
          do
          {
            v83.i32[0] = *(&xmmword_2808D4FE4 + v82->i64[1]);
            v83.i32[1] = *(&xmmword_2808D4FE4 + WORD1(v82->i64[1]));
            v83.i32[2] = *(&xmmword_2808D4FE4 + WORD6(*v82));
            v83.i32[3] = *(&xmmword_2808D4FE4 + HIWORD(*v82));
            v84.i32[0] = *(&xmmword_2808D4FE4 + v82->u16[0]);
            v84.i32[1] = *(&xmmword_2808D4FE4 + HIWORD(v82->u32[0]));
            v84.i32[2] = *(&xmmword_2808D4FE4 + WORD2(v82->i64[0]));
            v84.i32[3] = *(&xmmword_2808D4FE4 + HIWORD(v82->i64[0]));
            v86 = *v81;
            v85 = v81[1];
            v81 += 2;
            v87 = vmlaq_s32(v75, v85, v83);
            v88 = vshlq_s32(vmlaq_s32(v75, v86, v84), v78);
            v89 = vaddw_high_u16(vshlq_s32(v87, v78), *v82);
            v90 = vaddw_u16(v88, *v82->i8);
            *v82++ = vuzp1q_s16(vbslq_s8(vcgtq_s32(v76, v90), v76, vminq_s32(v90, v77)), vbslq_s8(vcgtq_s32(v76, v89), v76, vminq_s32(v89, v77)));
            v80 -= 8;
          }

          while (v80);
          i = v60 & 0x7FFFFFF8;
          if (i != v60)
          {
            goto LABEL_82;
          }

LABEL_76:
          ++v74;
          a2 = (a2 + 2 * a5);
          v58 = (v58 + 4 * a10);
          if (v74 == v59)
          {
            return result;
          }
        }

        for (i = 0; i != v60; ++i)
        {
LABEL_82:
          v91 = ((v25 + v58->i32[i] * *&_MergedGlobals_7[2 * a2->u16[i] + 6]) >> v19) + a2->u16[i];
          if (v91 >= v30)
          {
            v92 = v30;
          }

          else
          {
            v92 = ((v25 + v58->i32[i] * *&_MergedGlobals_7[2 * a2->u16[i] + 6]) >> v19) + a2->i16[i];
          }

          if (v91 >= v28)
          {
            v93 = v92;
          }

          else
          {
            v93 = v28;
          }

          a2->i16[i] = v93;
        }

        goto LABEL_76;
      }
    }
  }

  return result;
}

uint64_t add_noise_to_block(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int32x4_t *a7, int32x4_t *a8, double a9, int32x2_t a10, unint64_t a11, int a12, int a13, int a14, unsigned int a15, char a16, __int16 a17, char a18, int a19, int a20)
{
  v32 = a18;
  v33 = (result + 292);
  v34 = 1 << (*(result + 292) - 1);
  v617 = *(result + 120);
  v35 = *(result + 636);
  v36 = *(result + 288) > 0;
  if (v35)
  {
    v37 = 1;
  }

  else
  {
    v37 = *(result + 204) > 0;
  }

  if (v35)
  {
    v36 = 1;
  }

  v615 = result;
  v38 = *(result + 628);
  if (a20)
  {
    v39 = 235;
  }

  else
  {
    v39 = 240;
  }

  v40 = v38 == 0;
  v41 = v38 != 0;
  if (v40)
  {
    v42 = 255;
  }

  else
  {
    v42 = 235;
  }

  v616 = v42;
  v43 = 16 * v41;
  if (v40)
  {
    v44 = 255;
  }

  else
  {
    v44 = v39;
  }

  v45 = (a14 << (1 - a18));
  if (v45 >= 1)
  {
    result = a15;
    v46 = a15 << (1 - a19);
    if (v46 >= 1)
    {
      v612 = a4;
      a10.i32[0] = 0;
      v47 = a11;
      v48.i32[0] = *(v615 + 608);
      v48.i32[1] = *(v615 + 620);
      v49 = vdup_lane_s32(vceq_s32((v35 | 0xFFFFFF0000000000), a10), 0);
      v50 = vand_s8(vadd_s32(v48, 0xFFFFFF00FFFFFF00), v49);
      v51 = vbsl_s8(v49, vadd_s32(*(v615 + 612), 0x7F0000007FLL), 0x4000000000);
      result = 256;
      v52 = (256 << (a16 - 8)) - 1;
      v624 = a15 << (1 - a19);
      if (v37)
      {
        v53 = vbsl_s8(v49, vadd_s32(*(v615 + 600), 0x7F0000007FLL), 0x4000000000);
        v636 = a6;
        if (v36)
        {
          v54 = 0;
          result = v51.u32[0];
          v625 = 4 * a13;
          v55 = a4;
          do
          {
            v56 = (v54 << v32) * a5;
            v57 = (a2 + v56);
            v639 = a3;
            v58 = a3;
            v59 = v55;
            v60 = v47;
            v631 = a8;
            v61 = v46;
            do
            {
              if (a19)
              {
                v62 = (*(a2 + v56) + *(a2 + v56 + 1) + 1) >> 1;
              }

              else
              {
                v62 = *v57;
              }

              v63 = *v58;
              v64 = v50.i32[0] + ((v62 * v53.i32[1] + v53.i32[0] * v63) >> 6);
              if (v64 >= v52)
              {
                v65 = (256 << (a16 - 8)) - 1;
              }

              else
              {
                v65 = v50.i32[0] + ((v62 * v53.i32[1] + v53.i32[0] * v63) >> 6);
              }

              if (v64 < 0)
              {
                v65 = 0;
              }

              v66 = a8->i32[0];
              a8 = (a8 + 4);
              v67 = ((v34 + v66 * *&_MergedGlobals_7[2 * v65 + 518]) >> *v33) + v63;
              if (v67 >= v44)
              {
                v68 = v44;
              }

              else
              {
                v68 = v67;
              }

              if (v67 >= v43)
              {
                v69 = v68;
              }

              else
              {
                v69 = v43;
              }

              *v58++ = v69;
              v70 = *v55;
              v71 = v50.i32[1] + ((v62 * v51.i32[1] + v51.i32[0] * v70) >> 6);
              if (v71 >= v52)
              {
                v72 = (256 << (a16 - 8)) - 1;
              }

              else
              {
                v72 = v71;
              }

              if (v71 >= 0)
              {
                v73 = v72;
              }

              else
              {
                v73 = 0;
              }

              v74 = v60->i32[0];
              v60 = (v60 + 4);
              v75 = ((v34 + v74 * *&_MergedGlobals_7[2 * v73 + 1030]) >> *v33) + v70;
              if (v75 >= v44)
              {
                v76 = v44;
              }

              else
              {
                v76 = v75;
              }

              if (v75 >= v43)
              {
                v77 = v76;
              }

              else
              {
                v77 = v43;
              }

              *v55++ = v77;
              ++v57;
              v56 += 2;
              --v61;
            }

            while (v61);
            ++v54;
            v46 = a15 << (1 - a19);
            v47 = (v47 + v625);
            a8 = (v631 + v625);
            v55 = &v59[a6];
            a3 = v639 + a6;
            v32 = a18;
          }

          while (v54 != a14 << (1 - a18));
          goto LABEL_315;
        }

        v201 = v615 + 296;
        v202 = 4 * a13;
        v641 = a3;
        if (a19)
        {
          v203 = 0;
          v204 = v46 - 1;
          v205 = a3 + (v45 - 1) * a6 + v46;
          v613 = a2 + 2 * v46;
          result = (2 * (v46 - 1));
          v208 = a8 + 4 * v46 + 4 * (v45 - 1) * a13 > a3 && v205 > a8 || (a6 | a13) < 0;
          v619 = a3 + (v45 - 1) * a6 + v46;
          v211 = v201 > a3 && v33 < v205 || a6 < 0 || v208;
          v622 = v46 & 0x7FFFFFF0;
          v212 = vdupq_n_s32(v52);
          v213 = vdupq_n_s32(v34);
          v214 = vdupq_n_s32(v43);
          v215 = vdupq_n_s32(v44);
          v216 = vdupq_lane_s32(v53, 0);
          v217 = vdupq_lane_s32(v53, 1);
          v627 = v46 & 0x7FFFFFF8;
          v218 = v53.i32[1];
          v219 = v53.i32[0];
          v220 = vdupq_lane_s32(v50, 0);
          v221 = v50.i32[0];
          v222 = HIDWORD(v204);
          v223 = &unk_273BEF000;
          v224 = &unk_273BEF000;
          v225 = a3;
          v606 = 2 * (v46 - 1);
          v600 = v211;
          v593 = v53;
          v589 = HIDWORD(v204);
          while (1)
          {
            v226 = (v203 << v32) * a5;
            if (v46 < 8 || (v226 + result >= v226 ? (v227 = v222 == 0) : (v227 = 0), !v227 || (v613 + v226 > a3 ? (v228 = a2 + v226 >= v619) : (v228 = 1), !v228 ? (v229 = 1) : (v229 = v211), (v229 & 1) != 0)))
            {
              v230 = 0;
LABEL_144:
              v231 = v226 + 2 * v230;
              do
              {
                v232 = *(v225 + v230);
                v233 = v221 + ((((*(a2 + v231) + *(a2 + v231 + 1) + 1) >> 1) * v218 + v219 * v232) >> 6);
                if (v233 >= v52)
                {
                  v234 = (256 << (a16 - 8)) - 1;
                }

                else
                {
                  v234 = v221 + ((((*(a2 + v231) + *(a2 + v231 + 1) + 1) >> 1) * v218 + v219 * v232) >> 6);
                }

                if (v233 >= 0)
                {
                  v235 = v234;
                }

                else
                {
                  v235 = 0;
                }

                v236 = ((v34 + a8->i32[v230] * *&_MergedGlobals_7[2 * v235 + 518]) >> *v33) + v232;
                if (v236 >= v44)
                {
                  v237 = v44;
                }

                else
                {
                  v237 = v236;
                }

                if (v236 >= v43)
                {
                  v238 = v237;
                }

                else
                {
                  v238 = v43;
                }

                *(v225 + v230++) = v238;
                v231 += 2;
              }

              while (v46 != v230);
              goto LABEL_158;
            }

            v239 = vdup_n_s32(v226);
            v610 = (v203 << v32) * a5;
            if (v46 >= 0x10)
            {
              v587 = v203;
              v271 = 0;
              v272 = vld1q_dup_f32(v33);
              v273 = vnegq_s32(v272);
              v274 = (v203 << v32) * a5;
              v633 = a8;
              do
              {
                *v20.i8 = vdup_n_s32(v271);
                *v20.i8 = vadd_s32(v239, vadd_s32(*v20.i8, *v20.i8));
                *v21.i8 = vadd_s32(*v20.i8, 0x600000004);
                *v22.i8 = vadd_s32(*v20.i8, v223[185]);
                *v23.i8 = vadd_s32(*v20.i8, v224[186]);
                *v275.i8 = vadd_s32(*v20.i8, 0x1200000010);
                v276 = vadd_s32(*v20.i8, 0x1600000014);
                v277 = vadd_s32(*v20.i8, 0x1A00000018);
                *v20.i8 = vadd_s32(*v20.i8, 0x1E0000001CLL);
                v278 = (a2 + v274);
                v279 = (a2 + v274 + 2);
                v280 = v21.i32[1];
                v281 = v21.i32[0];
                v282 = (a2 + v22.i32[0]);
                v283 = (a2 + v22.i32[1]);
                v284 = (a2 + v275.i32[0]);
                v285 = (a2 + v275.i32[1]);
                v286 = v223;
                v287 = (a2 + v277.i32[0]);
                v288 = (a2 + v277.i32[1]);
                v289 = (a2 + v20.i32[0]);
                v290 = (a2 + v20.i32[1]);
                v20.i8[0] = *v287;
                v20.i8[4] = *v288;
                v20.i8[8] = *v289;
                v20.i8[12] = *v290;
                v291 = (a2 + v276.i32[0]);
                v292 = (a2 + v276.i32[1]);
                v21.i8[0] = *v284;
                v21.i8[4] = *v285;
                v21.i8[8] = *v291;
                v21.i8[12] = *v292;
                v293 = (a2 + v23.i32[0]);
                v294 = (a2 + v23.i32[1]);
                v22.i8[0] = *v282;
                v22.i8[4] = *v283;
                v22.i8[8] = *v293;
                v22.i8[12] = *v294;
                v295 = (a2 + v281);
                v296 = (a2 + v280);
                v23.i8[0] = *v278;
                v23.i8[4] = *v279;
                v23.i8[8] = *v295;
                v23.i8[12] = *v296;
                v275.i8[0] = v278[1];
                v275.i8[1] = v279[1];
                v275.i8[2] = v295[1];
                v275.i8[3] = v296[1];
                v297 = v282 + 1;
                v224 = &unk_273BEF000;
                v275.i8[4] = *v297;
                v275.i8[5] = v283[1];
                v275.i8[6] = v293[1];
                v275.i8[7] = v294[1];
                v275.i8[8] = v284[1];
                v275.i8[9] = v285[1];
                v275.i8[10] = v291[1];
                v223 = v286;
                v275.i8[11] = v292[1];
                v275.i8[12] = v287[1];
                v275.i8[13] = v288[1];
                v275.i8[14] = v289[1];
                v275.i8[15] = v290[1];
                v298 = vrhaddq_u8(vuzp1q_s8(vuzp1q_s16(v23, v22), vuzp1q_s16(v21, v20)), v275);
                v299 = vmovl_high_u8(v298);
                v300 = *(v225 + v271);
                v301 = vqtbl1q_s8(v300, xmmword_273B8E7A0);
                v302 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(vmovl_high_u16(v299), v217), v216, v301), 6uLL), v220);
                v303 = vandq_s8(vcgezq_s32(v302), vminq_s32(v302, v212));
                v302.i32[0] = *(&xmmword_2808D53E4 + v303.i32[0]);
                v302.i32[1] = *(&xmmword_2808D53E4 + v303.i32[1]);
                v302.i32[2] = *(&xmmword_2808D53E4 + v303.i32[2]);
                LODWORD(v297) = v303.i32[3];
                v304 = vmovl_u16(*v299.i8);
                v305 = vqtbl1q_s8(v300, xmmword_273B8E7B0);
                v306 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v304, v217), v216, v305), 6uLL), v220);
                v302.i32[3] = *(&xmmword_2808D53E4 + v297);
                v307 = vandq_s8(vcgezq_s32(v306), vminq_s32(v306, v212));
                v306.i32[0] = *(&xmmword_2808D53E4 + v307.i32[0]);
                v306.i32[1] = *(&xmmword_2808D53E4 + v307.i32[1]);
                v306.i32[2] = *(&xmmword_2808D53E4 + v307.i32[2]);
                LODWORD(v297) = v307.i32[3];
                v308 = vmovl_u8(*v298.i8);
                v309 = vqtbl1q_s8(v300, xmmword_273B8E7C0);
                v310 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(vmovl_high_u16(v308), v217), v216, v309), 6uLL), v220);
                v306.i32[3] = *(&xmmword_2808D53E4 + v297);
                v311 = vandq_s8(vcgezq_s32(v310), vminq_s32(v310, v212));
                v312.i32[0] = *(&xmmword_2808D53E4 + v311.i32[0]);
                v312.i32[1] = *(&xmmword_2808D53E4 + v311.i32[1]);
                v312.i32[2] = *(&xmmword_2808D53E4 + v311.i32[2]);
                v313 = vqtbl1q_s8(v300, xmmword_273B8E7D0);
                v314 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(vmovl_u16(*v308.i8), v217), v216, v313), 6uLL), v220);
                v312.i32[3] = *(&xmmword_2808D53E4 + v311.i32[3]);
                v315 = vandq_s8(vcgezq_s32(v314), vminq_s32(v314, v212));
                v311.i32[0] = *(&xmmword_2808D53E4 + v315.i32[0]);
                v311.i32[1] = *(&xmmword_2808D53E4 + v315.i32[1]);
                v311.i32[2] = *(&xmmword_2808D53E4 + v315.i32[2]);
                v311.i32[3] = *(&xmmword_2808D53E4 + v315.i32[3]);
                v317 = a8[2];
                v316 = a8[3];
                v319 = *a8;
                v318 = a8[1];
                a8 += 4;
                v320 = vaddq_s32(vshlq_s32(vmlaq_s32(v213, v316, v302), v273), v301);
                v321 = vaddq_s32(vshlq_s32(vmlaq_s32(v213, v317, v306), v273), v305);
                v322 = vaddq_s32(vshlq_s32(vmlaq_s32(v213, v318, v312), v273), v309);
                v323 = vaddq_s32(vshlq_s32(vmlaq_s32(v213, v319, v311), v273), v313);
                v324 = vcgtq_s32(v214, v323);
                v325 = vcgtq_s32(v214, v322);
                v326 = vcgtq_s32(v214, v321);
                v21 = vminq_s32(v323, v215);
                v22 = vminq_s32(v322, v215);
                v23 = vminq_s32(v321, v215);
                v649.val[3] = vbslq_s8(vcgtq_s32(v214, v320), v214, vminq_s32(v320, v215));
                v649.val[2] = vbslq_s8(v326, v214, v23);
                v649.val[1] = vbslq_s8(v325, v214, v22);
                v649.val[0] = vbslq_s8(v324, v214, v21);
                v20 = vqtbl4q_s8(v649, xmmword_273B8E8C0);
                *(v225 + v271) = v20;
                v271 += 16;
                v274 += 32;
              }

              while (v622 != v271);
              v45 = (a14 << (1 - a18));
              v46 = a15 << (1 - a19);
              v32 = a18;
              a8 = v633;
              a3 = v641;
              v202 = 4 * a13;
              v203 = v587;
              v222 = v589;
              result = v606;
              v211 = v600;
              v219 = v593.i32[0];
              v218 = v593.i32[1];
              v226 = v610;
              if (v622 == v624)
              {
                goto LABEL_158;
              }

              v240 = v622;
              v230 = v622;
              if ((v624 & 8) == 0)
              {
                goto LABEL_144;
              }
            }

            else
            {
              v240 = 0;
            }

            v241 = vld1q_dup_f32(v33);
            v242 = 4 * v240;
            v243 = v226 + 2 * v240;
            v244 = vnegq_s32(v241);
            do
            {
              *v20.i8 = vdup_n_s32(v240);
              *v20.i8 = vadd_s32(v239, vadd_s32(*v20.i8, *v20.i8));
              *v21.i8 = vadd_s32(*v20.i8, 0x600000004);
              v245 = vadd_s32(*v20.i8, v223[185]);
              *v20.i8 = vadd_s32(*v20.i8, v224[186]);
              v246 = (a2 + v243);
              v247 = v21.i32[1];
              v248 = (a2 + v243 + 2);
              v249 = (a2 + v245.i32[0]);
              v250 = (a2 + v245.i32[1]);
              v251 = v20.i32[1];
              v252 = (a2 + v20.i32[0]);
              v20.i8[0] = *v249;
              v20.i8[4] = *v250;
              v20.i8[8] = *v252;
              v253 = (a2 + v21.i32[0]);
              v254 = (a2 + v251);
              v20.i8[12] = *v254;
              v21.i8[0] = *v246;
              v21.i8[4] = *v248;
              v21.i8[8] = *v253;
              v255 = (a2 + v247);
              v21.i8[12] = *v255;
              v245.i8[0] = v246[1];
              v245.i8[1] = v248[1];
              v245.i8[2] = v253[1];
              v245.i8[3] = v255[1];
              v245.i8[4] = v249[1];
              v245.i8[5] = v250[1];
              v245.i8[6] = v252[1];
              v245.i8[7] = v254[1];
              v256 = vmovl_u8(vrhadd_u8(vmovn_s16(vuzp1q_s16(v21, v20)), v245));
              v257 = vmovl_u16(*v256.i8);
              v258 = vmovl_high_u16(v256);
              v23.i64[0] = *(v225 + v240);
              v259 = vqtbl1q_s8(v23, xmmword_273B8E7D0);
              v260 = vqtbl1q_s8(v23, xmmword_273B8E7C0);
              v261 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v257, v217), v216, v259), 6uLL), v220);
              v262 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v258, v217), v216, v260), 6uLL), v220);
              v263 = vandq_s8(vcgezq_s32(v261), vminq_s32(v261, v212));
              v264 = vandq_s8(vcgezq_s32(v262), vminq_s32(v262, v212));
              LODWORD(v255) = v263.i32[3];
              LODWORD(v253) = v263.i32[0];
              v265 = &xmmword_2808D53E4 + v263.i32[1];
              v266 = &xmmword_2808D53E4 + v263.i32[2];
              v263.i32[0] = *(&xmmword_2808D53E4 + v264.i32[0]);
              v263.i32[1] = *(&xmmword_2808D53E4 + v264.i32[1]);
              v263.i32[2] = *(&xmmword_2808D53E4 + v264.i32[2]);
              v263.i32[3] = *(&xmmword_2808D53E4 + v264.i32[3]);
              v264.i32[0] = *(&xmmword_2808D53E4 + v253);
              v264.i32[1] = *v265;
              v264.i32[2] = *v266;
              v264.i32[3] = *(&xmmword_2808D53E4 + v255);
              v267 = vmlaq_s32(v213, *(&a8[1] + v242), v263);
              v268 = vshlq_s32(vmlaq_s32(v213, *(a8 + v242), v264), v244);
              v269 = vaddq_s32(vshlq_s32(v267, v244), v260);
              v270 = vaddq_s32(v268, v259);
              v21 = vcgtq_s32(v214, v270);
              v23 = vbslq_s8(vcgtq_s32(v214, v269), v214, vminq_s32(v269, v215));
              v22 = vbslq_s8(v21, v214, vminq_s32(v270, v215));
              v20 = vqtbl2q_s8(*v22.i8, xmmword_273B92ED0);
              *(v225 + v240) = v20.i64[0];
              v240 += 8;
              v242 += 32;
              v243 += 16;
            }

            while (v627 != v240);
            v230 = v627;
            result = v606;
            v211 = v600;
            v219 = v593.i32[0];
            v218 = v593.i32[1];
            v222 = v589;
            v202 = 4 * a13;
            v45 = (a14 << (1 - a18));
            v32 = a18;
            v226 = v610;
            if (v627 != v46)
            {
              goto LABEL_144;
            }

LABEL_158:
            ++v203;
            v225 += v636;
            a8 = (a8 + v202);
            if (v203 == v45)
            {
              goto LABEL_315;
            }
          }
        }

        result = 0;
        *v426.i8 = v53;
        v426.u64[1] = v53;
        v427 = a3 + (v45 - 1) * a6;
        v428 = v427 + v46;
        v623 = a2 + v46;
        v431 = a8 + 4 * v46 + 4 * (v45 - 1) * a13 > a3 && v428 > a8 || (a6 | a13) < 0;
        v620 = v431;
        v629 = v427 + v46;
        v432 = v201 <= a3 || v33 >= v428;
        v433 = vdupq_n_s32(v52);
        v434 = vdupq_n_s32(v34);
        v435 = vdupq_n_s32(v43);
        v436 = !v432;
        v614 = v436;
        v437 = vdupq_n_s32(v44);
        *v438.i8 = v53;
        v438.u64[1] = v53;
        v598 = v46 & 0x7FFFFFF0;
        *v439.i8 = v53;
        v439.u64[1] = v53;
        v440 = vdupq_lane_s32(v50, 0);
        v441 = vrev64q_s32(v438);
        v442 = v53.i32[1];
        v443 = v53.i32[0];
        v444 = v50.i32[0];
        v445 = (a3 + 7);
        v582 = v46 & 0x7FFFFFF8;
        v446 = &unk_273B8E000;
        v447 = &unk_273B8E000;
        v448 = a3;
        v595 = v53.i32[1];
        v591 = v53.i32[0];
        v602 = a6;
        while (1)
        {
          v449 = (result << v32) * a5;
          v450 = a2 + v449;
          if (v46 < 8)
          {
            v451 = 0;
            goto LABEL_301;
          }

          v454 = v623 + v449 > a3 && v450 < v629 || a6 < 0 || v620;
          if ((v614 | v454))
          {
            v451 = 0;
            goto LABEL_301;
          }

          v635 = result;
          v608 = a2 + v449;
          v611 = v445;
          if (v46 < 0x10)
          {
            break;
          }

          v487 = vld1q_dup_f32(v33);
          v585 = (result << v32) * a5;
          v488 = (a2 + 7 + v449);
          v489 = vnegq_s32(v487);
          v490 = a8;
          v491 = v598;
          do
          {
            v24.i8[0] = v445[5];
            v24.i8[4] = v488[6];
            v24.i8[8] = v445[7];
            v24.i8[12] = v488[8];
            v25.i8[0] = *(v445 - 7);
            v25.i8[4] = *(v488 - 6);
            v25.i8[8] = *(v445 - 5);
            v25.i8[12] = *(v488 - 4);
            v26.i8[0] = *(v488 - 3);
            v26.i8[4] = *(v445 - 2);
            v26.i8[8] = *(v488 - 1);
            v26.i8[12] = *v445;
            v27.i8[0] = v445[1];
            v27.i8[4] = v488[2];
            v27.i8[8] = v445[3];
            v27.i8[12] = v488[4];
            v28.i8[0] = *(v445 - 3);
            v28.i8[4] = *(v488 - 2);
            v28.i8[8] = *(v445 - 1);
            v28.i8[12] = *v488;
            v29.i8[0] = v488[5];
            v29.i8[4] = v445[6];
            v29.i8[8] = v488[7];
            v29.i8[12] = v445[8];
            v30.i8[0] = *(v488 - 7);
            v30.i8[4] = *(v445 - 6);
            v30.i8[8] = *(v488 - 5);
            v30.i8[12] = *(v445 - 4);
            v31.i8[0] = v488[1];
            v31.i8[4] = v445[2];
            v31.i8[8] = v488[3];
            v31.i8[12] = v445[4];
            v492 = vtrn2q_s32(vrev64q_s32(v27), v31);
            v493 = vtrn2q_s32(vrev64q_s32(v25), v30);
            v494 = vtrn2q_s32(vrev64q_s32(v28), v26);
            v495 = vtrn2q_s32(vrev64q_s32(v24), v29);
            v496 = vmlaq_s32(vmulq_s32(v439, v28), v441, v26);
            v497 = vshrq_n_s32(vmlaq_s32(vmulq_s32(v439, v27), v441, v31), 6uLL);
            v498 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v439, v25), v441, v30), 6uLL), v440);
            v499 = vaddq_s32(vshrq_n_s32(v496, 6uLL), v440);
            v500 = vaddq_s32(v497, v440);
            v501 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v439, v24), v441, v29), 6uLL), v440);
            v502 = vandq_s8(vcgezq_s32(v498), vminq_s32(v498, v433));
            v503 = vandq_s8(vcgezq_s32(v499), vminq_s32(v499, v433));
            v504 = vandq_s8(vcgezq_s32(v500), vminq_s32(v500, v433));
            v505 = vandq_s8(vcgezq_s32(v501), vminq_s32(v501, v433));
            v506 = v502.i32[0];
            v507 = &xmmword_2808D53E4 + v502.i32[1];
            v508 = &xmmword_2808D53E4 + v502.i32[2];
            v509 = &xmmword_2808D53E4 + v502.i32[3];
            v510 = v504.i32[0];
            v511 = &xmmword_2808D53E4 + v504.i32[1];
            v512 = &xmmword_2808D53E4 + v504.i32[2];
            v513 = &xmmword_2808D53E4 + v504.i32[3];
            v505.i32[0] = *(&xmmword_2808D53E4 + v505.i32[0]);
            v505.i32[1] = *(&xmmword_2808D53E4 + v505.i32[1]);
            v505.i32[2] = *(&xmmword_2808D53E4 + v505.i32[2]);
            v505.i32[3] = *(&xmmword_2808D53E4 + v505.i32[3]);
            v502.i32[0] = *(&xmmword_2808D53E4 + v503.i32[0]);
            v502.i32[1] = *(&xmmword_2808D53E4 + v503.i32[1]);
            v502.i32[2] = *(&xmmword_2808D53E4 + v503.i32[2]);
            v502.i32[3] = *(&xmmword_2808D53E4 + v503.i32[3]);
            v504.i32[0] = *(&xmmword_2808D53E4 + v506);
            v504.i32[1] = *v507;
            v504.i32[2] = *v508;
            v504.i32[3] = *v509;
            v503.i32[0] = *(&xmmword_2808D53E4 + v510);
            v503.i32[1] = *v511;
            v503.i32[2] = *v512;
            v503.i32[3] = *v513;
            v31 = v490[2];
            v514 = vaddq_s32(vshlq_s32(vmlaq_s32(v434, v490[3], v505), v489), v495);
            v515 = vaddq_s32(vshlq_s32(vmlaq_s32(v434, v490[1], v502), v489), v494);
            v516 = vaddq_s32(vshlq_s32(vmlaq_s32(v434, *v490, v504), v489), v493);
            v517 = vaddq_s32(vshlq_s32(vmlaq_s32(v434, v31, v503), v489), v492);
            v24 = vcgtq_s32(v435, v517);
            v25 = vcgtq_s32(v435, v516);
            v26 = vcgtq_s32(v435, v515);
            v22 = vminq_s32(v516, v437);
            v30 = vbslq_s8(vcgtq_s32(v435, v514), v435, vminq_s32(v514, v437));
            v28 = vbslq_s8(v26, v435, vminq_s32(v515, v437));
            v27 = vbslq_s8(v25, v435, v22);
            v29 = vbslq_s8(v24, v435, vminq_s32(v517, v437));
            *(v445 - 7) = vqtbl4q_s8(*v27.i8, xmmword_273B8E8C0);
            v490 += 4;
            v445 += 16;
            v488 += 16;
            v491 -= 16;
          }

          while (v491);
          v45 = (a14 << (1 - a18));
          v46 = a15 << (1 - a19);
          a6 = v602;
          v32 = a18;
          a3 = v641;
          v202 = 4 * a13;
          v450 = v608;
          result = v635;
          v442 = v595;
          v443 = v591;
          v444 = v50.i32[0];
          v445 = v611;
          v446 = &unk_273B8E000;
          v447 = &unk_273B8E000;
          v449 = v585;
          if (v598 != v624)
          {
            v451 = v598;
            v455 = v598;
            if ((v624 & 8) == 0)
            {
              do
              {
LABEL_301:
                v518 = *(v448 + v451);
                v519 = v444 + ((v442 * *(v450 + v451) + v443 * v518) >> 6);
                if (v519 >= v52)
                {
                  v520 = (256 << (a16 - 8)) - 1;
                }

                else
                {
                  v520 = v444 + ((v442 * *(v450 + v451) + v443 * v518) >> 6);
                }

                if (v519 >= 0)
                {
                  v521 = v520;
                }

                else
                {
                  v521 = 0;
                }

                v522 = ((v34 + a8->i32[v451] * *&_MergedGlobals_7[2 * v521 + 518]) >> *v33) + v518;
                if (v522 >= v44)
                {
                  v523 = v44;
                }

                else
                {
                  v523 = v522;
                }

                if (v522 >= v43)
                {
                  v524 = v523;
                }

                else
                {
                  v524 = v43;
                }

                *(v448 + v451++) = v524;
              }

              while (v46 != v451);
              goto LABEL_259;
            }

LABEL_275:
            v456 = vld1q_dup_f32(v33);
            v457 = v455 - v582;
            v458 = 4 * v455;
            v459 = (v448 + v455);
            v460 = (a2 + 3 + v455 + v449);
            v461 = vnegq_s32(v456);
            do
            {
              v462 = vmovl_u8(*v459);
              *v22.i8 = vrev64_s16(*v459);
              v463 = v22;
              v463.i8[1] = v460[4];
              v463.i8[3] = v460[2];
              v463.i8[5] = *v460;
              v463.i8[7] = *(v460 - 2);
              v464 = v446[124];
              v465 = vqtbl1q_s8(v463, v464);
              v22.i8[0] = v460[3];
              v22.i8[2] = v460[1];
              v22.i8[4] = *(v460 - 1);
              v22.i8[6] = *(v460 - 3);
              v466 = vsraq_n_s32(v440, vmlaq_s32(vmulq_s32(v441, vqtbl1q_s8(v22, v447[125])), v426, vqtbl1q_s8(v463, v447[125])), 6uLL);
              v467 = vsraq_n_s32(v440, vmlaq_s32(vmulq_s32(v441, vqtbl1q_s8(v22, v464)), v426, v465), 6uLL);
              v468 = vextq_s8(v467, v467, 8uLL);
              v469 = vmovn_s16(vuzp1q_s16(vcltzq_s32(v466), vcltzq_s32(v467)));
              v470 = vminq_s32(vextq_s8(v466, v466, 8uLL), v433);
              v471 = vminq_s32(v468, v433);
              if (v469.i8[6])
              {
                v472 = 0;
              }

              else
              {
                v472 = v471.i32[0];
              }

              if (v469.i8[7])
              {
                v473 = 0;
              }

              else
              {
                v473 = v471.i32[1];
              }

              if (v469.i8[4])
              {
                v474 = 0;
              }

              else
              {
                v474 = v471.i32[2];
              }

              if (v469.i8[5])
              {
                v475 = 0;
              }

              else
              {
                v475 = v471.i32[3];
              }

              v446 = &unk_273B8E000;
              if (v469.i8[2])
              {
                v476 = 0;
              }

              else
              {
                v476 = v470.i32[0];
              }

              v447 = &unk_273B8E000;
              v477.i32[0] = v469.u8[0];
              v477.i32[1] = v469.u8[1];
              if (v469.i8[3])
              {
                v478 = 0;
              }

              else
              {
                v478 = v470.i32[1];
              }

              *v479.i8 = vand_s8(*&vextq_s8(v470, v470, 8uLL), vcgez_s32(vshl_n_s32(v477, 0x1FuLL)));
              v480 = &xmmword_2808D53E4 + v479.i32[0];
              v481 = &xmmword_2808D53E4 + v479.i32[1];
              v479.i32[0] = *(&xmmword_2808D53E4 + v476);
              v479.i32[1] = *(&xmmword_2808D53E4 + v478);
              v479.i32[2] = *v480;
              v479.i32[3] = *v481;
              v482.i32[0] = *(&xmmword_2808D53E4 + v472);
              v482.i32[1] = *(&xmmword_2808D53E4 + v473);
              v482.i32[2] = *(&xmmword_2808D53E4 + v474);
              v482.i32[3] = *(&xmmword_2808D53E4 + v475);
              v24 = *(&a8[1] + v458);
              v25 = vmlaq_s32(v434, v24, v479);
              v483 = vmlaq_s32(v434, *(a8 + v458), v482);
              v484 = vaddw_high_u16(vshlq_s32(v25, v461), v462);
              v485 = vaddw_u16(vshlq_s32(v483, v461), *v462.i8);
              v486 = vbslq_s8(vcgtq_s32(v435, v484), v435, vminq_s32(v484, v437));
              v22 = vbslq_s8(vcgtq_s32(v435, v485), v435, vminq_s32(v485, v437));
              *v459++ = vqtbl2q_s8(*v22.i8, xmmword_273B92ED0).u64[0];
              v458 += 32;
              v460 += 8;
              v457 += 8;
            }

            while (v457);
            v451 = v582;
            v46 = a15 << (1 - a19);
            a3 = v641;
            result = v635;
            v442 = v595;
            v443 = v591;
            v444 = v50.i32[0];
            v450 = v608;
            v445 = v611;
            if (v582 == v624)
            {
              goto LABEL_259;
            }

            goto LABEL_301;
          }

LABEL_259:
          ++result;
          a8 = (a8 + v202);
          v445 += v636;
          v448 += v636;
          if (result == v45)
          {
            goto LABEL_315;
          }
        }

        v455 = 0;
        goto LABEL_275;
      }

      v78 = a4;
      if (!v36)
      {
        goto LABEL_315;
      }

      v79 = a6;
      v80 = vdupq_n_s32(v52);
      v81 = v615 + 296;
      v82 = vdupq_n_s32(v44);
      v618 = a6;
      v621 = 4 * a13;
      if (a19)
      {
        v83 = 0;
        v84 = a4 + (v45 - 1) * a6 + v46;
        v85 = a2 + 2 * v46;
        v86 = 2 * (v46 - 1);
        v89 = a11 + 4 * (v46 + (v45 - 1) * a13) > a4 && v84 > a11 || (a6 | a13) < 0;
        v92 = v81 > a4 && v33 < v84 || a6 < 0 || v89;
        v626 = v46 & 0x7FFFFFF0;
        v93 = vdupq_n_s32(v34);
        v94 = vdupq_n_s32(v43);
        *v95.i8 = v51;
        v95.u64[1] = v51;
        *v96.i8 = v51;
        v96.u64[1] = v51;
        v97 = vrev64q_s32(v96);
        v98 = vdupq_lane_s32(v50, 1);
        v632 = v46 & 0x7FFFFFF8;
        v99 = v51.i32[1];
        v100 = v50.i32[1];
        v101 = v51.i32[0];
        v609 = (v46 - 1) >> 32;
        v102 = &unk_273BEF000;
        v596 = a2 + 2 * v46;
        v599 = a4 + (v45 - 1) * v79 + v46;
        v592 = 2 * (v46 - 1);
        v588 = v92;
        v586 = v51.i32[1];
        v583 = v50.i32[1];
        while (1)
        {
          LODWORD(result) = (v83 << v32) * a5;
          if (v46 < 8 || (result + v86 >= result ? (v103 = v609 == 0) : (v103 = 0), !v103))
          {
            v104 = 0;
            goto LABEL_76;
          }

          if (v85 + result <= v78 || a2 + result >= v84)
          {
            v114 = v92;
          }

          else
          {
            v114 = 1;
          }

          if (v114)
          {
            v104 = 0;
LABEL_76:
            v105 = result + 2 * v104;
            do
            {
              v106 = *(a4 + v104);
              v107 = v100 + ((v101 * v106 + ((*(a2 + v105) + *(a2 + v105 + 1) + 1) >> 1) * v99) >> 6);
              if (v107 >= v52)
              {
                v108 = (256 << (a16 - 8)) - 1;
              }

              else
              {
                v108 = v100 + ((v101 * v106 + ((*(a2 + v105) + *(a2 + v105 + 1) + 1) >> 1) * v99) >> 6);
              }

              if (v107 >= 0)
              {
                v109 = v108;
              }

              else
              {
                v109 = 0;
              }

              result = *v33;
              v110 = ((v34 + v47->i32[v104] * *&_MergedGlobals_7[2 * v109 + 1030]) >> result) + v106;
              if (v110 >= v44)
              {
                v111 = v44;
              }

              else
              {
                v111 = v110;
              }

              if (v110 >= v43)
              {
                v112 = v111;
              }

              else
              {
                v112 = v43;
              }

              *(a4 + v104++) = v112;
              v105 += 2;
            }

            while (v46 != v104);
            goto LABEL_90;
          }

          v115 = vdup_n_s32(result);
          v637 = v47;
          v603 = ((v83 << v32) * a5);
          v605 = v83;
          v116 = 0;
          if (v46 >= 0x10)
          {
            v152 = vld1q_dup_f32(v33);
            v153 = vnegq_s32(v152);
            v154 = (v83 << v32) * a5;
            v155 = v47;
            do
            {
              v156 = vdup_n_s32(v116);
              *v157.i8 = vadd_s32(v115, vadd_s32(v156, v156));
              v158 = vadd_s32(*v157.i8, 0x600000004);
              *v159.i8 = vadd_s32(*v157.i8, v102[185]);
              *v160.i8 = vadd_s32(*v157.i8, 0xE0000000CLL);
              *v161.i8 = vadd_s32(*v157.i8, 0x1200000010);
              v162 = vadd_s32(*v157.i8, 0x1600000014);
              v163 = *(a2 + v158.i32[0]) + *(a2 + v158.i32[0] + 1);
              v164 = *(a2 + v158.i32[1]) + *(a2 + v158.i32[1] + 1);
              v165 = *(a2 + v159.i32[0]) + *(a2 + v159.i32[0] + 1);
              v166 = *(a2 + v160.i32[0]) + *(a2 + v160.i32[0] + 1);
              v640 = *(a2 + v161.i32[0]) + *(a2 + v161.i32[0] + 1);
              v167 = *(a2 + v161.i32[1]) + *(a2 + v161.i32[1] + 1);
              v168 = *(a4 + v116);
              v169 = *(a2 + v162.i32[0]) + *(a2 + v162.i32[0] + 1);
              v161.i32[0] = v168.u8[0];
              v161.i32[1] = (*(a2 + v154 + 2) + *(a2 + v154 + 2 + 1) + 1) >> 1;
              v170 = *(a2 + v162.i32[1]) + *(a2 + v162.i32[1] + 1);
              v161.i32[2] = v168.u8[2];
              *v171.i8 = vadd_s32(*v157.i8, 0x1A00000018);
              v161.i32[3] = (v164 + 1) >> 1;
              v172.i32[0] = (*(a2 + v154) + *(a2 + v154 + 1) + 1) >> 1;
              v172.i32[1] = v168.u8[1];
              v172.i32[2] = (v163 + 1) >> 1;
              v172.i32[3] = v168.u8[3];
              v173 = *(a2 + v171.i32[0]) + *(a2 + v171.i32[0] + 1);
              v159.i32[0] = v168.u8[4];
              v159.i32[1] = (*(a2 + v159.i32[1]) + *(a2 + v159.i32[1] + 1) + 1) >> 1;
              v159.i32[2] = v168.u8[6];
              v159.i32[3] = (*(a2 + v160.i32[1]) + *(a2 + v160.i32[1] + 1) + 1) >> 1;
              v160.i32[0] = (v165 + 1) >> 1;
              v160.i32[1] = v168.u8[5];
              *v174.i8 = vadd_s32(*v157.i8, 0x1E0000001CLL);
              v160.i32[2] = (v166 + 1) >> 1;
              v160.i32[3] = v168.u8[7];
              v175 = *(a2 + v171.i32[1]) + *(a2 + v171.i32[1] + 1);
              v157.i32[0] = v168.u8[8];
              v157.i32[1] = (v167 + 1) >> 1;
              v176 = *(a2 + v174.i32[0]) + *(a2 + v174.i32[0] + 1);
              v157.i32[2] = v168.u8[10];
              v157.i32[3] = (v170 + 1) >> 1;
              v171.i32[0] = (v640 + 1) >> 1;
              v171.i32[1] = v168.u8[9];
              v171.i32[2] = (v169 + 1) >> 1;
              v171.i32[3] = v168.u8[11];
              v177.i32[0] = v168.u8[12];
              v177.i32[1] = (v175 + 1) >> 1;
              v177.i32[2] = v168.u8[14];
              v177.i32[3] = (*(a2 + v174.i32[1]) + *(a2 + v174.i32[1] + 1) + 1) >> 1;
              v174.i32[0] = (v173 + 1) >> 1;
              v174.i32[1] = v168.u8[13];
              v174.i32[2] = (v176 + 1) >> 1;
              v178 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v172, v97), v95, v161), 6uLL), v98);
              v174.i32[3] = v168.u8[15];
              v179 = vandq_s8(vcgezq_s32(v178), vminq_s32(v178, v80));
              v178.i32[0] = *(&xmmword_2808D57E4 + v179.i32[0]);
              v178.i32[1] = *(&xmmword_2808D57E4 + v179.i32[1]);
              v178.i32[2] = *(&xmmword_2808D57E4 + v179.i32[2]);
              v180 = v179.i32[3];
              v181 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v174, v97), v95, v177), 6uLL), v98);
              v182 = vandq_s8(vcgezq_s32(v181), vminq_s32(v181, v80));
              v178.i32[3] = *(&xmmword_2808D57E4 + v180);
              v181.i32[0] = *(&xmmword_2808D57E4 + v182.i32[0]);
              v181.i32[1] = *(&xmmword_2808D57E4 + v182.i32[1]);
              v181.i32[2] = *(&xmmword_2808D57E4 + v182.i32[2]);
              v183 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v171, v97), v95, v157), 6uLL), v98);
              v181.i32[3] = *(&xmmword_2808D57E4 + v182.i32[3]);
              v184 = vandq_s8(vcgezq_s32(v183), vminq_s32(v183, v80));
              v171.i32[0] = *(&xmmword_2808D57E4 + v184.i32[0]);
              v171.i32[1] = *(&xmmword_2808D57E4 + v184.i32[1]);
              v171.i32[2] = *(&xmmword_2808D57E4 + v184.i32[2]);
              v185 = v184.i32[3];
              v186 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v160, v97), v95, v159), 6uLL), v98);
              v187 = vandq_s8(vcgezq_s32(v186), vminq_s32(v186, v80));
              v171.i32[3] = *(&xmmword_2808D57E4 + v185);
              v159.i32[0] = *(&xmmword_2808D57E4 + v187.i32[0]);
              v159.i32[1] = *(&xmmword_2808D57E4 + v187.i32[1]);
              v159.i32[2] = *(&xmmword_2808D57E4 + v187.i32[2]);
              v159.i32[3] = *(&xmmword_2808D57E4 + v187.i32[3]);
              v188 = vmovl_high_u8(v168);
              v189 = vmovl_u8(*v168.i8);
              v191 = v155[2];
              v190 = v155[3];
              v192 = *v155;
              v193 = v155[1];
              v155 += 4;
              v194 = vmlaq_s32(v93, v192, v178);
              v195 = vmlaq_s32(v93, v190, v181);
              v196 = vshlq_s32(vmlaq_s32(v93, v191, v171), v153);
              v197 = vaddw_u16(vshlq_s32(v194, v153), *v189.i8);
              v198 = vaddw_high_u16(vshlq_s32(v195, v153), v188);
              v199 = vaddw_u16(v196, *v188.i8);
              v200 = vaddw_high_u16(vshlq_s32(vmlaq_s32(v93, v193, v159), v153), v189);
              v648.val[0] = vbslq_s8(vcgtq_s32(v94, v197), v94, vminq_s32(v197, v82));
              v648.val[3] = vbslq_s8(vcgtq_s32(v94, v198), v94, vminq_s32(v198, v82));
              v648.val[2] = vbslq_s8(vcgtq_s32(v94, v199), v94, vminq_s32(v199, v82));
              v648.val[1] = vbslq_s8(vcgtq_s32(v94, v200), v94, vminq_s32(v200, v82));
              *(a4 + v116) = vqtbl4q_s8(v648, xmmword_273B8E8C0);
              v116 += 16;
              v154 += 32;
            }

            while (v626 != v116);
            v45 = (a14 << (1 - a18));
            v78 = v612;
            result = v603;
            v83 = v605;
            v85 = v596;
            v84 = v599;
            v86 = v592;
            v92 = v588;
            v99 = v586;
            v100 = v583;
            if (v626 == v46)
            {
              goto LABEL_90;
            }

            v116 = v626;
            v104 = v626;
            if ((v46 & 8) == 0)
            {
              goto LABEL_76;
            }
          }

          v117 = vld1q_dup_f32(v33);
          v118 = 4 * v116;
          v119 = result + 2 * v116;
          v120 = vnegq_s32(v117);
          do
          {
            v121 = vdup_n_s32(v116);
            v122 = vadd_s32(v115, vadd_s32(v121, v121));
            *v123.i8 = vadd_s32(v122, 0x600000004);
            *v124.i8 = vadd_s32(v122, 0xA00000008);
            v125 = vadd_s32(v122, 0xE0000000CLL);
            v126 = (*(a2 + v123.i32[0]) + *(a2 + v123.i32[0] + 1) + 1) >> 1;
            v127 = (*(a2 + v123.i32[1]) + *(a2 + v123.i32[1] + 1) + 1) >> 1;
            v128 = (*(a2 + v124.i32[0]) + *(a2 + v124.i32[0] + 1) + 1) >> 1;
            v129 = (*(a2 + v124.i32[1]) + *(a2 + v124.i32[1] + 1) + 1) >> 1;
            v130 = (*(a2 + v125.i32[0]) + *(a2 + v125.i32[0] + 1) + 1) >> 1;
            v131 = *(a2 + v125.i32[1]) + *(a2 + v125.i32[1] + 1);
            v132 = *(a4 + v116);
            v133 = v132.u8[4];
            v134 = v132.u8[5];
            v135 = v132.u8[6];
            v136 = v132.u8[7];
            v123.i32[0] = v132.u8[0];
            v123.i32[1] = (*(a2 + v119 + 2) + *(a2 + v119 + 2 + 1) + 1) >> 1;
            v123.i32[2] = v132.u8[2];
            v123.i32[3] = v127;
            v124.i32[0] = (*(a2 + v119) + *(a2 + v119 + 1) + 1) >> 1;
            v124.i32[1] = v132.u8[1];
            v124.i32[2] = v126;
            v124.i32[3] = v132.u8[3];
            v137 = vmovl_u8(v132);
            v138 = vmlaq_s32(vmulq_s32(v124, v97), v95, v123);
            v123.i64[0] = __PAIR64__(v129, v133);
            v123.i32[2] = v135;
            v47 = v637;
            v123.i32[3] = (v131 + 1) >> 1;
            v139.i64[0] = __PAIR64__(v134, v128);
            v139.i64[1] = __PAIR64__(v136, v130);
            v140 = vaddq_s32(vshrq_n_s32(v138, 6uLL), v98);
            v141 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v139, v97), v95, v123), 6uLL), v98);
            v142 = vandq_s8(vcgezq_s32(v140), vminq_s32(v140, v80));
            v143 = vandq_s8(vcgezq_s32(v141), vminq_s32(v141, v80));
            v144 = v143.i32[3];
            v145 = v143.i32[0];
            v146 = &xmmword_2808D57E4 + v143.i32[1];
            v147 = &xmmword_2808D57E4 + v143.i32[2];
            v143.i32[0] = *(&xmmword_2808D57E4 + v142.i32[0]);
            v143.i32[1] = *(&xmmword_2808D57E4 + v142.i32[1]);
            v143.i32[2] = *(&xmmword_2808D57E4 + v142.i32[2]);
            v143.i32[3] = *(&xmmword_2808D57E4 + v142.i32[3]);
            v142.i32[0] = *(&xmmword_2808D57E4 + v145);
            v142.i32[1] = *v146;
            v142.i32[2] = *v147;
            v142.i32[3] = *(&xmmword_2808D57E4 + v144);
            v148 = vmlaq_s32(v93, *(v637 + v118), v143);
            v149 = vshlq_s32(vmlaq_s32(v93, *(&v637[1] + v118), v142), v120);
            v150 = vaddw_u16(vshlq_s32(v148, v120), *v137.i8);
            v151 = vaddw_high_u16(v149, v137);
            v646.val[0] = vbslq_s8(vcgtq_s32(v94, v150), v94, vminq_s32(v150, v82));
            v646.val[1] = vbslq_s8(vcgtq_s32(v94, v151), v94, vminq_s32(v151, v82));
            *(a4 + v116) = vqtbl2q_s8(v646, xmmword_273B92ED0).u64[0];
            v116 += 8;
            v118 += 32;
            v119 += 16;
          }

          while (v632 != v116);
          v104 = v632;
          v45 = (a14 << (1 - a18));
          v46 = a15 << (1 - a19);
          v32 = a18;
          v78 = v612;
          result = v603;
          v83 = v605;
          v85 = v596;
          v84 = v599;
          v86 = v592;
          v92 = v588;
          v99 = v586;
          v100 = v583;
          v102 = &unk_273BEF000;
          if (v632 != v624)
          {
            goto LABEL_76;
          }

LABEL_90:
          ++v83;
          a4 += v618;
          v47 = (v47 + v621);
          if (v83 == v45)
          {
            goto LABEL_315;
          }
        }
      }

      v327 = 0;
      *v328.i8 = v51;
      v328.u64[1] = v51;
      v329 = a4 + (v45 - 1) * a6;
      v330 = v329 + v46;
      v634 = a2 + v46;
      v333 = a11 + 4 * (v46 + (v45 - 1) * a13) > a4 && v330 > a11 || (a6 | a13) < 0;
      v628 = v333;
      v642 = v329 + v46;
      v335 = v81 > a4 && v33 < v330;
      v336 = vdupq_n_s32(v34);
      v597 = v46 & 0x7FFFFFF0;
      v337 = vdupq_n_s32(v43);
      *v338.i8 = v51;
      v338.u64[1] = v51;
      v339 = vrev64q_s32(v338);
      *v340.i8 = v51;
      v340.u64[1] = v51;
      v341 = vdupq_lane_s32(v50, 1);
      v342 = v51.i32[1];
      result = v51.u32[0];
      v343 = v50.i32[1];
      v344 = (v612 + 7);
      v581 = v46 & 0x7FFFFFF8;
      v345 = &unk_273B8E000;
      v346 = &unk_273B8E000;
      v347 = &xmmword_273B92000;
      v348 = v612;
      v594 = v51.i32[1];
      v590 = v51.i32[0];
      v601 = a6;
      while (1)
      {
        v349 = (v327 << v32) * a5;
        v350 = a2 + v349;
        if (v46 < 8)
        {
          v351 = 0;
          goto LABEL_229;
        }

        v354 = v634 + v349 > v78 && v350 < v642 || a6 < 0 || v628;
        if ((v335 | v354))
        {
          v351 = 0;
          goto LABEL_229;
        }

        v604 = a2 + v349;
        v607 = v344;
        if (v46 < 0x10)
        {
          break;
        }

        v387 = vld1q_dup_f32(v33);
        v584 = (v327 << v32) * a5;
        v388 = (a2 + 7 + v349);
        v389 = vnegq_s32(v387);
        v390 = v344;
        v391 = v47;
        v392 = v597;
        do
        {
          v24.i8[0] = v390[5];
          v24.i8[4] = v388[6];
          v24.i8[8] = v390[7];
          v24.i8[12] = v388[8];
          v25.i8[0] = *(v390 - 7);
          v25.i8[4] = *(v388 - 6);
          v25.i8[8] = *(v390 - 5);
          v25.i8[12] = *(v388 - 4);
          v26.i8[0] = *(v388 - 3);
          v26.i8[4] = *(v390 - 2);
          v26.i8[8] = *(v388 - 1);
          v26.i8[12] = *v390;
          v27.i8[0] = v390[1];
          v27.i8[4] = v388[2];
          v27.i8[8] = v390[3];
          v27.i8[12] = v388[4];
          v28.i8[0] = *(v390 - 3);
          v28.i8[4] = *(v388 - 2);
          v28.i8[8] = *(v390 - 1);
          v28.i8[12] = *v388;
          v29.i8[0] = v388[5];
          v29.i8[4] = v390[6];
          v29.i8[8] = v388[7];
          v29.i8[12] = v390[8];
          v30.i8[0] = *(v388 - 7);
          v30.i8[4] = *(v390 - 6);
          v30.i8[8] = *(v388 - 5);
          v30.i8[12] = *(v390 - 4);
          v31.i8[0] = v388[1];
          v31.i8[4] = v390[2];
          v31.i8[8] = v388[3];
          v31.i8[12] = v390[4];
          v393 = vtrn2q_s32(vrev64q_s32(v27), v31);
          v394 = vtrn2q_s32(vrev64q_s32(v25), v30);
          v395 = vtrn2q_s32(vrev64q_s32(v28), v26);
          v396 = vtrn2q_s32(vrev64q_s32(v24), v29);
          v397 = vmlaq_s32(vmulq_s32(v340, v28), v339, v26);
          v398 = vshrq_n_s32(vmlaq_s32(vmulq_s32(v340, v27), v339, v31), 6uLL);
          v399 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v340, v25), v339, v30), 6uLL), v341);
          v400 = vaddq_s32(vshrq_n_s32(v397, 6uLL), v341);
          v401 = vaddq_s32(v398, v341);
          v402 = vaddq_s32(vshrq_n_s32(vmlaq_s32(vmulq_s32(v340, v24), v339, v29), 6uLL), v341);
          v403 = vandq_s8(vcgezq_s32(v399), vminq_s32(v399, v80));
          v404 = vandq_s8(vcgezq_s32(v400), vminq_s32(v400, v80));
          v405 = vandq_s8(vcgezq_s32(v401), vminq_s32(v401, v80));
          v406 = vandq_s8(vcgezq_s32(v402), vminq_s32(v402, v80));
          v407 = v403.i32[0];
          v408 = &xmmword_2808D57E4 + v403.i32[1];
          v409 = &xmmword_2808D57E4 + v403.i32[2];
          v410 = &xmmword_2808D57E4 + v403.i32[3];
          v411 = v405.i32[0];
          v412 = &xmmword_2808D57E4 + v405.i32[1];
          v413 = &xmmword_2808D57E4 + v405.i32[2];
          v414 = &xmmword_2808D57E4 + v405.i32[3];
          v406.i32[0] = *(&xmmword_2808D57E4 + v406.i32[0]);
          v406.i32[1] = *(&xmmword_2808D57E4 + v406.i32[1]);
          v406.i32[2] = *(&xmmword_2808D57E4 + v406.i32[2]);
          v406.i32[3] = *(&xmmword_2808D57E4 + v406.i32[3]);
          v403.i32[0] = *(&xmmword_2808D57E4 + v404.i32[0]);
          v403.i32[1] = *(&xmmword_2808D57E4 + v404.i32[1]);
          v403.i32[2] = *(&xmmword_2808D57E4 + v404.i32[2]);
          v403.i32[3] = *(&xmmword_2808D57E4 + v404.i32[3]);
          v405.i32[0] = *(&xmmword_2808D57E4 + v407);
          v405.i32[1] = *v408;
          v405.i32[2] = *v409;
          v405.i32[3] = *v410;
          v404.i32[0] = *(&xmmword_2808D57E4 + v411);
          v404.i32[1] = *v412;
          v404.i32[2] = *v413;
          v404.i32[3] = *v414;
          v31 = v391[2];
          v415 = vaddq_s32(vshlq_s32(vmlaq_s32(v336, v391[3], v406), v389), v396);
          v416 = vaddq_s32(vshlq_s32(vmlaq_s32(v336, v391[1], v403), v389), v395);
          v417 = vaddq_s32(vshlq_s32(vmlaq_s32(v336, *v391, v405), v389), v394);
          v418 = vaddq_s32(vshlq_s32(vmlaq_s32(v336, v31, v404), v389), v393);
          v24 = vcgtq_s32(v337, v418);
          v25 = vcgtq_s32(v337, v417);
          v26 = vcgtq_s32(v337, v416);
          v22 = vminq_s32(v417, v82);
          v30 = vbslq_s8(vcgtq_s32(v337, v415), v337, vminq_s32(v415, v82));
          v28 = vbslq_s8(v26, v337, vminq_s32(v416, v82));
          v27 = vbslq_s8(v25, v337, v22);
          v29 = vbslq_s8(v24, v337, vminq_s32(v418, v82));
          *(v390 - 7) = vqtbl4q_s8(*v27.i8, xmmword_273B8E8C0);
          v391 += 4;
          v390 += 16;
          v388 += 16;
          v392 -= 16;
        }

        while (v392);
        v45 = (a14 << (1 - a18));
        v46 = a15 << (1 - a19);
        a6 = v601;
        v32 = a18;
        v78 = v612;
        v79 = v618;
        v342 = v594;
        result = v590;
        v343 = v50.i32[1];
        v350 = v604;
        v345 = &unk_273B8E000;
        v346 = &unk_273B8E000;
        v347 = &xmmword_273B92000;
        v349 = v584;
        if (v597 != v624)
        {
          v351 = v597;
          v355 = v597;
          if ((v624 & 8) == 0)
          {
            do
            {
LABEL_229:
              v419 = *(v348 + v351);
              v420 = v343 + ((v342 * *(v350 + v351) + result * v419) >> 6);
              if (v420 >= v52)
              {
                v421 = (256 << (a16 - 8)) - 1;
              }

              else
              {
                v421 = v343 + ((v342 * *(v350 + v351) + result * v419) >> 6);
              }

              if (v420 >= 0)
              {
                v422 = v421;
              }

              else
              {
                v422 = 0;
              }

              v423 = ((v34 + v47->i32[v351] * *&_MergedGlobals_7[2 * v422 + 1030]) >> *v33) + v419;
              if (v423 >= v44)
              {
                v424 = v44;
              }

              else
              {
                v424 = v423;
              }

              if (v423 >= v43)
              {
                v425 = v424;
              }

              else
              {
                v425 = v43;
              }

              *(v348 + v351++) = v425;
            }

            while (v46 != v351);
            goto LABEL_187;
          }

LABEL_203:
          v356 = vld1q_dup_f32(v33);
          v357 = v355 - v581;
          v358 = 4 * v355;
          v359 = (v348 + v355);
          v360 = (a2 + 3 + v355 + v349);
          v361 = vnegq_s32(v356);
          do
          {
            v362 = vmovl_u8(*v359);
            *v22.i8 = vrev64_s16(*v359);
            v363 = v22;
            v363.i8[1] = v360[4];
            v363.i8[3] = v360[2];
            v363.i8[5] = *v360;
            v363.i8[7] = *(v360 - 2);
            v364 = v345[124];
            v365 = vqtbl1q_s8(v363, v364);
            v22.i8[0] = v360[3];
            v22.i8[2] = v360[1];
            v22.i8[4] = *(v360 - 1);
            v22.i8[6] = *(v360 - 3);
            v366 = vsraq_n_s32(v341, vmlaq_s32(vmulq_s32(v339, vqtbl1q_s8(v22, v346[125])), v328, vqtbl1q_s8(v363, v346[125])), 6uLL);
            v367 = vsraq_n_s32(v341, vmlaq_s32(vmulq_s32(v339, vqtbl1q_s8(v22, v364)), v328, v365), 6uLL);
            v368 = vextq_s8(v367, v367, 8uLL);
            v369 = vmovn_s16(vuzp1q_s16(vcltzq_s32(v366), vcltzq_s32(v367)));
            v370 = vminq_s32(vextq_s8(v366, v366, 8uLL), v80);
            v371 = vminq_s32(v368, v80);
            if (v369.i8[6])
            {
              v372 = 0;
            }

            else
            {
              v372 = v371.i32[0];
            }

            if (v369.i8[7])
            {
              v373 = 0;
            }

            else
            {
              v373 = v371.i32[1];
            }

            if (v369.i8[4])
            {
              v374 = 0;
            }

            else
            {
              v374 = v371.i32[2];
            }

            if (v369.i8[5])
            {
              v375 = 0;
            }

            else
            {
              v375 = v371.i32[3];
            }

            if (v369.i8[2])
            {
              v376 = 0;
            }

            else
            {
              v376 = v370.i32[0];
            }

            v345 = &unk_273B8E000;
            v377.i32[0] = v369.u8[0];
            v377.i32[1] = v369.u8[1];
            if (v369.i8[3])
            {
              v378 = 0;
            }

            else
            {
              v378 = v370.i32[1];
            }

            v346 = &unk_273B8E000;
            *v379.i8 = vand_s8(*&vextq_s8(v370, v370, 8uLL), vcgez_s32(vshl_n_s32(v377, 0x1FuLL)));
            v380 = &xmmword_2808D57E4 + v379.i32[0];
            v381 = &xmmword_2808D57E4 + v379.i32[1];
            v379.i32[0] = *(&xmmword_2808D57E4 + v376);
            v379.i32[1] = *(&xmmword_2808D57E4 + v378);
            v379.i32[2] = *v380;
            v379.i32[3] = *v381;
            v382.i32[0] = *(&xmmword_2808D57E4 + v372);
            v382.i32[1] = *(&xmmword_2808D57E4 + v373);
            v382.i32[2] = *(&xmmword_2808D57E4 + v374);
            v382.i32[3] = *(&xmmword_2808D57E4 + v375);
            v24 = *(&v47[1] + v358);
            v25 = vmlaq_s32(v336, v24, v379);
            v383 = vmlaq_s32(v336, *(v47 + v358), v382);
            v384 = vaddw_high_u16(vshlq_s32(v25, v361), v362);
            v385 = vaddw_u16(vshlq_s32(v383, v361), *v362.i8);
            v386 = vbslq_s8(vcgtq_s32(v337, v384), v337, vminq_s32(v384, v82));
            v22 = vbslq_s8(vcgtq_s32(v337, v385), v337, vminq_s32(v385, v82));
            *v359++ = vqtbl2q_s8(*v22.i8, v347[237]).u64[0];
            v358 += 32;
            v360 += 8;
            v357 += 8;
          }

          while (v357);
          v351 = v581;
          v46 = a15 << (1 - a19);
          v78 = v612;
          a6 = v601;
          v350 = v604;
          v79 = v618;
          v342 = v594;
          result = v590;
          v343 = v50.i32[1];
          v344 = v607;
          if (v581 == v624)
          {
            goto LABEL_187;
          }

          goto LABEL_229;
        }

LABEL_187:
        ++v327;
        v47 = (v47 + v621);
        v344 += v79;
        v348 += v79;
        if (v327 == v45)
        {
          goto LABEL_315;
        }
      }

      v355 = 0;
      goto LABEL_203;
    }
  }

LABEL_315:
  v525 = a7;
  if (v617 >= 1)
  {
    v526 = (2 * a14);
    if (v526 >= 1)
    {
      v527 = 2 * a15;
      if (v527 >= 1)
      {
        v528 = 0;
        v529 = a5;
        v530 = a2 + (v526 - 1) * a5 + v527;
        v533 = a7 + 4 * v527 + 4 * (v526 - 1) * a12 > a2 && v530 > a7 || (a5 | a12) < 0;
        v536 = v615 + 296 > a2 && v33 < v530 || a5 < 0 || v533;
        v537 = v527 & 0x7FFFFFF0;
        v538 = vdupq_n_s32(v34);
        v539 = vdupq_n_s32(v43);
        v540 = vdupq_n_s32(v616);
        result = v527 & 0x7FFFFFF8;
        v541 = 4 * a12;
        v638 = a5;
        v644 = v536;
        do
        {
          if ((v527 < 8) | v536 & 1)
          {
            for (i = 0; i != v527; ++i)
            {
LABEL_350:
              v578 = ((v34 + v525->i32[i] * *&_MergedGlobals_7[2 * *(a2 + i) + 6]) >> *v33) + *(a2 + i);
              if (v578 >= v616)
              {
                v579 = v616;
              }

              else
              {
                v579 = ((v34 + v525->i32[i] * *&_MergedGlobals_7[2 * *(a2 + i) + 6]) >> *v33) + *(a2 + i);
              }

              if (v578 >= v43)
              {
                v580 = v579;
              }

              else
              {
                v580 = v43;
              }

              *(a2 + i) = v580;
            }

            goto LABEL_337;
          }

          if (v527 >= 0x10)
          {
            v555 = vld1q_dup_f32(v33);
            v556 = vnegq_s32(v555);
            v557 = v537;
            v558 = v525;
            v559 = a2;
            do
            {
              v560 = vmovl_u8(*v559);
              v561 = vmovl_high_u8(*v559->i8);
              v562.i32[0] = *(&xmmword_2808D4FE4 + BYTE12(*v559->i8));
              v562.i32[1] = *(&xmmword_2808D4FE4 + (WORD6(*v559->i8) >> 8));
              v562.i32[2] = *(&xmmword_2808D4FE4 + BYTE14(*v559->i8));
              v562.i32[3] = *(&xmmword_2808D4FE4 + HIBYTE(*v559->i8));
              v563.i32[0] = *(&xmmword_2808D4FE4 + *&v559[1]);
              v563.i32[1] = *(&xmmword_2808D4FE4 + BYTE1(*&v559[1]));
              v563.i32[2] = *(&xmmword_2808D4FE4 + BYTE2(*&v559[1]));
              v563.i32[3] = *(&xmmword_2808D4FE4 + BYTE3(*&v559[1]));
              v564.i32[0] = *(&xmmword_2808D4FE4 + BYTE4(*v559));
              v564.i32[1] = *(&xmmword_2808D4FE4 + (WORD2(*v559) >> 8));
              v564.i32[2] = *(&xmmword_2808D4FE4 + BYTE6(*v559));
              v564.i32[3] = *(&xmmword_2808D4FE4 + HIBYTE(*v559));
              v565.i32[0] = *(&xmmword_2808D4FE4 + *v559->i8);
              v565.i32[1] = *(&xmmword_2808D4FE4 + BYTE1(*v559->i8));
              v565.i32[2] = *(&xmmword_2808D4FE4 + BYTE2(*v559->i8));
              v565.i32[3] = *(&xmmword_2808D4FE4 + BYTE3(*v559->i8));
              v567 = v558[2];
              v566 = v558[3];
              v569 = *v558;
              v568 = v558[1];
              v558 += 4;
              v570 = vmlaq_s32(v538, v566, v562);
              v571 = vmlaq_s32(v538, v567, v563);
              v572 = vmlaq_s32(v538, v568, v564);
              v573 = vshlq_s32(vmlaq_s32(v538, v569, v565), v556);
              v574 = vaddw_high_u16(vshlq_s32(v570, v556), v561);
              v575 = vaddw_u16(vshlq_s32(v571, v556), *v561.i8);
              v576 = vaddw_high_u16(vshlq_s32(v572, v556), v560);
              v577 = vaddw_u16(v573, *v560.i8);
              v647.val[3] = vbslq_s8(vcgtq_s32(v539, v574), v539, vminq_s32(v574, v540));
              v647.val[2] = vbslq_s8(vcgtq_s32(v539, v575), v539, vminq_s32(v575, v540));
              v647.val[1] = vbslq_s8(vcgtq_s32(v539, v576), v539, vminq_s32(v576, v540));
              v647.val[0] = vbslq_s8(vcgtq_s32(v539, v577), v539, vminq_s32(v577, v540));
              *v559->i8 = vqtbl4q_s8(v647, xmmword_273B8E8C0);
              v559 += 2;
              v557 -= 16;
            }

            while (v557);
            v537 = v527 & 0x7FFFFFF0;
            v529 = v638;
            v526 = (2 * a14);
            v536 = v644;
            v541 = 4 * a12;
            if (v537 == v527)
            {
              goto LABEL_337;
            }

            v543 = v527 & 0x7FFFFFF0;
            i = v543;
            if (((2 * a15) & 8) == 0)
            {
              goto LABEL_350;
            }
          }

          else
          {
            v543 = 0;
          }

          v544 = vld1q_dup_f32(v33);
          v545 = 4 * v543;
          v546 = vnegq_s32(v544);
          do
          {
            v547 = *(a2 + v543);
            v548.i32[0] = *(&xmmword_2808D4FE4 + v547.u8[4]);
            v548.i32[1] = *(&xmmword_2808D4FE4 + v547.u8[5]);
            v548.i32[2] = *(&xmmword_2808D4FE4 + v547.u8[6]);
            v548.i32[3] = *(&xmmword_2808D4FE4 + v547.u8[7]);
            v549.i32[0] = *(&xmmword_2808D4FE4 + v547.u8[0]);
            v549.i32[1] = *(&xmmword_2808D4FE4 + v547.u8[1]);
            v549.i32[2] = *(&xmmword_2808D4FE4 + v547.u8[2]);
            v549.i32[3] = *(&xmmword_2808D4FE4 + v547.u8[3]);
            v550 = vmovl_u8(v547);
            v551 = vmlaq_s32(v538, *(&v525[1] + v545), v548);
            v552 = vshlq_s32(vmlaq_s32(v538, *(v525 + v545), v549), v546);
            v553 = vaddw_high_u16(vshlq_s32(v551, v546), v550);
            v554 = vaddw_u16(v552, *v550.i8);
            v645.val[1] = vbslq_s8(vcgtq_s32(v539, v553), v539, vminq_s32(v553, v540));
            v645.val[0] = vbslq_s8(vcgtq_s32(v539, v554), v539, vminq_s32(v554, v540));
            *(a2 + v543) = vqtbl2q_s8(v645, xmmword_273B92ED0).u64[0];
            v543 += 8;
            v545 += 32;
          }

          while (result != v543);
          i = v527 & 0x7FFFFFF8;
          if (result != v527)
          {
            goto LABEL_350;
          }

LABEL_337:
          ++v528;
          a2 += v529;
          v525 = (v525 + v541);
        }

        while (v528 != v526);
      }
    }
  }

  return result;
}

int16x8_t aom_hadamard_lp_8x8_neon(int16x8_t *a1, uint64_t a2, int16x8_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = *(a1 + 4 * a2);
  v5 = *(a1 + 6 * a2);
  v6 = *(a1 + 8 * a2);
  v7 = *(a1 + 10 * a2);
  v8 = *(a1 + 12 * a2);
  v9 = *(a1 + 14 * a2);
  v10 = vaddq_s16(v3, *a1);
  v11 = vsubq_s16(*a1, v3);
  v12 = vaddq_s16(v5, v4);
  v13 = vsubq_s16(v4, v5);
  v14 = vaddq_s16(v7, v6);
  v15 = vsubq_s16(v6, v7);
  v16 = vaddq_s16(v9, v8);
  v17 = vsubq_s16(v8, v9);
  v18 = vaddq_s16(v12, v10);
  v19 = vaddq_s16(v13, v11);
  v20 = vsubq_s16(v10, v12);
  v21 = vsubq_s16(v11, v13);
  v22 = vaddq_s16(v16, v14);
  v23 = vaddq_s16(v17, v15);
  v24 = vsubq_s16(v14, v16);
  v25 = vsubq_s16(v15, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v20, v24);
  v28 = vsubq_s16(v18, v22);
  v29 = vaddq_s16(v24, v20);
  v30 = vaddq_s16(v25, v21);
  v31 = vsubq_s16(v21, v25);
  v32 = vsubq_s16(v19, v23);
  v33 = vaddq_s16(v23, v19);
  v34 = vtrn1q_s16(v26, v27);
  v35 = vtrn2q_s16(v26, v27);
  v36 = vtrn1q_s16(v28, v29);
  v37 = vtrn2q_s16(v28, v29);
  v38 = vtrn1q_s16(v30, v31);
  v39 = vtrn2q_s16(v30, v31);
  v40 = vtrn1q_s16(v32, v33);
  v41 = vtrn2q_s16(v32, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vtrn2q_s32(v39, v41);
  v50 = vzip2q_s64(v42, v46);
  v42.i64[1] = v46.i64[0];
  v51 = vzip2q_s64(v44, v48);
  v44.i64[1] = v48.i64[0];
  v52 = vzip2q_s64(v43, v47);
  v43.i64[1] = v47.i64[0];
  v53 = vzip2q_s64(v45, v49);
  v45.i64[1] = v49.i64[0];
  v54 = vaddq_s16(v44, v42);
  v55 = vsubq_s16(v42, v44);
  v56 = vaddq_s16(v45, v43);
  v57 = vsubq_s16(v43, v45);
  v58 = vaddq_s16(v51, v50);
  v59 = vsubq_s16(v50, v51);
  v60 = vaddq_s16(v53, v52);
  v61 = vsubq_s16(v52, v53);
  v62 = vaddq_s16(v56, v54);
  v63 = vaddq_s16(v57, v55);
  v64 = vsubq_s16(v54, v56);
  v65 = vsubq_s16(v55, v57);
  v66 = vaddq_s16(v60, v58);
  v67 = vaddq_s16(v61, v59);
  v68 = vsubq_s16(v58, v60);
  *a3 = vaddq_s16(v66, v62);
  a3[1] = vsubq_s16(v64, v68);
  v69 = vsubq_s16(v59, v61);
  a3[2] = vsubq_s16(v62, v66);
  a3[3] = vaddq_s16(v68, v64);
  a3[4] = vaddq_s16(v69, v65);
  a3[5] = vsubq_s16(v65, v69);
  result = vaddq_s16(v67, v63);
  a3[6] = vsubq_s16(v63, v67);
  a3[7] = result;
  return result;
}

int16x8_t aom_hadamard_lp_8x8_dual_neon(int16x8_t *a1, uint64_t a2, int16x8_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = *(a1 + 4 * a2);
  v5 = *(a1 + 6 * a2);
  v6 = *(a1 + 8 * a2);
  v7 = *(a1 + 10 * a2);
  v8 = *(a1 + 12 * a2);
  v9 = *(a1 + 14 * a2);
  v10 = vaddq_s16(v3, *a1);
  v11 = vsubq_s16(*a1, v3);
  v12 = vaddq_s16(v5, v4);
  v13 = vsubq_s16(v4, v5);
  v14 = vaddq_s16(v7, v6);
  v15 = vsubq_s16(v6, v7);
  v16 = vaddq_s16(v9, v8);
  v17 = vsubq_s16(v8, v9);
  v18 = vaddq_s16(v12, v10);
  v19 = vaddq_s16(v13, v11);
  v20 = vsubq_s16(v10, v12);
  v21 = vsubq_s16(v11, v13);
  v22 = vaddq_s16(v16, v14);
  v23 = vaddq_s16(v17, v15);
  v24 = vsubq_s16(v14, v16);
  v25 = vsubq_s16(v15, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v20, v24);
  v28 = vsubq_s16(v18, v22);
  v29 = vaddq_s16(v24, v20);
  v30 = vaddq_s16(v25, v21);
  v31 = vsubq_s16(v21, v25);
  v32 = vsubq_s16(v19, v23);
  v33 = vaddq_s16(v23, v19);
  v34 = vtrn1q_s16(v26, v27);
  v35 = vtrn2q_s16(v26, v27);
  v36 = vtrn1q_s16(v28, v29);
  v37 = vtrn2q_s16(v28, v29);
  v38 = vtrn1q_s16(v30, v31);
  v39 = vtrn2q_s16(v30, v31);
  v40 = vtrn1q_s16(v32, v33);
  v41 = vtrn2q_s16(v32, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vtrn2q_s32(v39, v41);
  v50 = vzip2q_s64(v42, v46);
  v42.i64[1] = v46.i64[0];
  v51 = vzip2q_s64(v44, v48);
  v44.i64[1] = v48.i64[0];
  v52 = vzip2q_s64(v43, v47);
  v43.i64[1] = v47.i64[0];
  v53 = vzip2q_s64(v45, v49);
  v45.i64[1] = v49.i64[0];
  v54 = vaddq_s16(v44, v42);
  v55 = vsubq_s16(v42, v44);
  v56 = vaddq_s16(v45, v43);
  v57 = vsubq_s16(v43, v45);
  v58 = vaddq_s16(v51, v50);
  v59 = vsubq_s16(v50, v51);
  v60 = vaddq_s16(v53, v52);
  v61 = vsubq_s16(v52, v53);
  v62 = vaddq_s16(v56, v54);
  v63 = vaddq_s16(v57, v55);
  v64 = vsubq_s16(v54, v56);
  v65 = vsubq_s16(v55, v57);
  v66 = vaddq_s16(v60, v58);
  v67 = vaddq_s16(v61, v59);
  v68 = vsubq_s16(v58, v60);
  v69 = vsubq_s16(v59, v61);
  *a3 = vaddq_s16(v66, v62);
  a3[1] = vsubq_s16(v64, v68);
  a3[2] = vsubq_s16(v62, v66);
  a3[3] = vaddq_s16(v68, v64);
  a3[4] = vaddq_s16(v69, v65);
  a3[5] = vsubq_s16(v65, v69);
  a3[6] = vsubq_s16(v63, v67);
  a3[7] = vaddq_s16(v67, v63);
  v71 = a1[1];
  v70 = a1 + 1;
  v72 = *(v70 + 2 * a2);
  v73 = *(v70 + 4 * a2);
  v74 = *(v70 + 6 * a2);
  v75 = *(v70 + 8 * a2);
  v76 = *(v70 + 10 * a2);
  v77 = *(v70 + 12 * a2);
  v78 = *(v70 + 14 * a2);
  v79 = vaddq_s16(v72, v71);
  v80 = vsubq_s16(v71, v72);
  v81 = vaddq_s16(v74, v73);
  v82 = vsubq_s16(v73, v74);
  v83 = vaddq_s16(v76, v75);
  v84 = vsubq_s16(v75, v76);
  v85 = vaddq_s16(v78, v77);
  v86 = vsubq_s16(v77, v78);
  v87 = vaddq_s16(v81, v79);
  v88 = vaddq_s16(v82, v80);
  v89 = vsubq_s16(v79, v81);
  v90 = vsubq_s16(v80, v82);
  v91 = vaddq_s16(v85, v83);
  v92 = vaddq_s16(v86, v84);
  v93 = vsubq_s16(v83, v85);
  v94 = vsubq_s16(v84, v86);
  v95 = vaddq_s16(v91, v87);
  v96 = vsubq_s16(v89, v93);
  v97 = vsubq_s16(v87, v91);
  v98 = vaddq_s16(v93, v89);
  v99 = vaddq_s16(v94, v90);
  v100 = vsubq_s16(v90, v94);
  v101 = vsubq_s16(v88, v92);
  v102 = vaddq_s16(v92, v88);
  v103 = vtrn1q_s16(v95, v96);
  v104 = vtrn2q_s16(v95, v96);
  v105 = vtrn1q_s16(v97, v98);
  v106 = vtrn2q_s16(v97, v98);
  v107 = vtrn1q_s16(v99, v100);
  v108 = vtrn2q_s16(v99, v100);
  v109 = vtrn1q_s16(v101, v102);
  v110 = vtrn2q_s16(v101, v102);
  v111 = vtrn1q_s32(v103, v105);
  v112 = vtrn2q_s32(v103, v105);
  v113 = vtrn1q_s32(v104, v106);
  v114 = vtrn2q_s32(v104, v106);
  v115 = vtrn1q_s32(v107, v109);
  v116 = vtrn2q_s32(v107, v109);
  v117 = vtrn1q_s32(v108, v110);
  v118 = vtrn2q_s32(v108, v110);
  v119 = vzip2q_s64(v111, v115);
  v111.i64[1] = v115.i64[0];
  v120 = vzip2q_s64(v113, v117);
  v113.i64[1] = v117.i64[0];
  v121 = vzip2q_s64(v112, v116);
  v112.i64[1] = v116.i64[0];
  v122 = vzip2q_s64(v114, v118);
  v114.i64[1] = v118.i64[0];
  v123 = vaddq_s16(v113, v111);
  v124 = vsubq_s16(v111, v113);
  v125 = vaddq_s16(v114, v112);
  v126 = vsubq_s16(v112, v114);
  v127 = vaddq_s16(v120, v119);
  v128 = vsubq_s16(v119, v120);
  v129 = vaddq_s16(v122, v121);
  v130 = vsubq_s16(v121, v122);
  v131 = vaddq_s16(v125, v123);
  v132 = vaddq_s16(v126, v124);
  v133 = vsubq_s16(v123, v125);
  v134 = vsubq_s16(v124, v126);
  v135 = vaddq_s16(v129, v127);
  v136 = vaddq_s16(v130, v128);
  v137 = vsubq_s16(v127, v129);
  a3[8] = vaddq_s16(v135, v131);
  a3[9] = vsubq_s16(v133, v137);
  v138 = vsubq_s16(v128, v130);
  a3[10] = vsubq_s16(v131, v135);
  a3[11] = vaddq_s16(v137, v133);
  a3[12] = vaddq_s16(v138, v134);
  a3[13] = vsubq_s16(v134, v138);
  result = vaddq_s16(v136, v132);
  a3[14] = vsubq_s16(v132, v136);
  a3[15] = result;
  return result;
}

int16x8_t aom_hadamard_lp_16x16_neon(int16x8_t *a1, uint64_t a2, int16x8_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = *(a1 + 4 * a2);
  v5 = *(a1 + 6 * a2);
  v6 = *(a1 + 8 * a2);
  v7 = *(a1 + 10 * a2);
  v8 = *(a1 + 12 * a2);
  v9 = *(a1 + 14 * a2);
  v10 = vaddq_s16(v3, *a1);
  v11 = vsubq_s16(*a1, v3);
  v12 = vaddq_s16(v5, v4);
  v13 = vsubq_s16(v4, v5);
  v14 = vaddq_s16(v7, v6);
  v15 = vsubq_s16(v6, v7);
  v16 = vaddq_s16(v9, v8);
  v17 = vsubq_s16(v8, v9);
  v18 = vaddq_s16(v12, v10);
  v19 = vaddq_s16(v13, v11);
  v20 = vsubq_s16(v10, v12);
  v21 = vsubq_s16(v11, v13);
  v22 = vaddq_s16(v16, v14);
  v23 = vaddq_s16(v17, v15);
  v24 = vsubq_s16(v14, v16);
  v25 = vsubq_s16(v15, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v20, v24);
  v28 = vsubq_s16(v18, v22);
  v29 = vaddq_s16(v24, v20);
  v30 = vaddq_s16(v25, v21);
  v31 = vsubq_s16(v21, v25);
  v32 = vsubq_s16(v19, v23);
  v33 = vaddq_s16(v23, v19);
  v34 = vtrn1q_s16(v26, v27);
  v35 = vtrn2q_s16(v26, v27);
  v36 = vtrn1q_s16(v28, v29);
  v37 = vtrn2q_s16(v28, v29);
  v38 = vtrn1q_s16(v30, v31);
  v39 = vtrn2q_s16(v30, v31);
  v40 = vtrn1q_s16(v32, v33);
  v41 = vtrn2q_s16(v32, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vzip2q_s64(v42, v46);
  v42.i64[1] = v46.i64[0];
  v50 = vzip2q_s64(v44, v48);
  v44.i64[1] = v48.i64[0];
  v51 = vzip2q_s64(v43, v47);
  v43.i64[1] = v47.i64[0];
  v52 = vtrn2q_s32(v39, v41);
  v53 = vzip2q_s64(v45, v52);
  v45.i64[1] = v52.i64[0];
  v54 = vaddq_s16(v44, v42);
  v55 = vsubq_s16(v42, v44);
  v56 = vaddq_s16(v45, v43);
  v57 = vsubq_s16(v43, v45);
  v58 = vaddq_s16(v50, v49);
  v59 = vsubq_s16(v49, v50);
  v60 = vaddq_s16(v53, v51);
  v61 = vsubq_s16(v51, v53);
  v62 = vaddq_s16(v56, v54);
  v63 = vaddq_s16(v57, v55);
  v64 = vsubq_s16(v54, v56);
  v65 = vsubq_s16(v55, v57);
  v66 = vaddq_s16(v60, v58);
  v67 = vaddq_s16(v61, v59);
  v68 = vsubq_s16(v58, v60);
  v69 = vsubq_s16(v59, v61);
  v70 = vaddq_s16(v66, v62);
  v71 = vsubq_s16(v64, v68);
  v72 = vsubq_s16(v62, v66);
  v73 = vaddq_s16(v68, v64);
  v74 = vaddq_s16(v69, v65);
  v350 = vsubq_s16(v65, v69);
  v351 = vsubq_s16(v63, v67);
  v352 = vaddq_s16(v67, v63);
  *a3 = v70;
  a3[1] = v71;
  a3[2] = v72;
  a3[3] = v73;
  a3[4] = v74;
  a3[5] = v350;
  a3[6] = v351;
  a3[7] = v352;
  v75 = a1[1];
  v76 = *(a1 + 2 * a2 + 16);
  v77 = *(a1 + 4 * a2 + 16);
  v78 = *(a1 + 6 * a2 + 16);
  v79 = *(a1 + 8 * a2 + 16);
  v80 = *(a1 + 10 * a2 + 16);
  v81 = *(a1 + 12 * a2 + 16);
  v82 = *(a1 + 14 * a2 + 16);
  v83 = &a1[a2];
  v84 = vaddq_s16(v76, v75);
  v85 = vsubq_s16(v75, v76);
  v86 = vaddq_s16(v78, v77);
  v87 = vsubq_s16(v77, v78);
  v88 = vaddq_s16(v80, v79);
  v89 = vsubq_s16(v79, v80);
  v90 = vaddq_s16(v82, v81);
  v91 = vsubq_s16(v81, v82);
  v92 = vaddq_s16(v86, v84);
  v93 = vaddq_s16(v87, v85);
  v94 = vsubq_s16(v84, v86);
  v95 = vsubq_s16(v85, v87);
  v96 = vaddq_s16(v90, v88);
  v97 = vaddq_s16(v91, v89);
  v98 = vsubq_s16(v88, v90);
  v99 = vsubq_s16(v89, v91);
  v100 = vaddq_s16(v96, v92);
  v101 = vsubq_s16(v94, v98);
  v102 = vsubq_s16(v92, v96);
  v103 = vaddq_s16(v98, v94);
  v104 = vaddq_s16(v99, v95);
  v105 = vsubq_s16(v95, v99);
  v106 = vsubq_s16(v93, v97);
  v107 = vaddq_s16(v97, v93);
  v108 = vtrn1q_s16(v100, v101);
  v109 = vtrn2q_s16(v100, v101);
  v110 = vtrn1q_s16(v102, v103);
  v111 = vtrn2q_s16(v102, v103);
  v112 = vtrn1q_s16(v104, v105);
  v113 = vtrn2q_s16(v104, v105);
  v114 = vtrn1q_s16(v106, v107);
  v115 = vtrn2q_s16(v106, v107);
  v116 = vtrn1q_s32(v108, v110);
  v117 = vtrn2q_s32(v108, v110);
  v118 = vtrn1q_s32(v109, v111);
  v119 = vtrn2q_s32(v109, v111);
  v120 = vtrn1q_s32(v112, v114);
  v121 = vtrn2q_s32(v112, v114);
  v122 = vtrn1q_s32(v113, v115);
  v123 = vzip2q_s64(v116, v120);
  v116.i64[1] = v120.i64[0];
  v124 = vzip2q_s64(v118, v122);
  v118.i64[1] = v122.i64[0];
  v125 = vtrn2q_s32(v113, v115);
  v126 = vzip2q_s64(v117, v121);
  v117.i64[1] = v121.i64[0];
  v127 = vzip2q_s64(v119, v125);
  v119.i64[1] = v125.i64[0];
  v128 = vaddq_s16(v118, v116);
  v129 = vsubq_s16(v116, v118);
  v130 = vaddq_s16(v119, v117);
  v131 = vsubq_s16(v117, v119);
  v132 = vaddq_s16(v124, v123);
  v133 = vsubq_s16(v123, v124);
  v134 = vaddq_s16(v127, v126);
  v135 = vsubq_s16(v126, v127);
  v136 = vaddq_s16(v130, v128);
  v137 = vaddq_s16(v131, v129);
  v138 = vsubq_s16(v128, v130);
  v139 = vsubq_s16(v129, v131);
  v140 = vaddq_s16(v134, v132);
  v141 = vaddq_s16(v135, v133);
  v142 = vsubq_s16(v132, v134);
  v143 = vsubq_s16(v133, v135);
  v144 = vaddq_s16(v140, v136);
  v145 = vsubq_s16(v138, v142);
  v146 = vsubq_s16(v136, v140);
  v147 = vaddq_s16(v142, v138);
  v148 = vaddq_s16(v143, v139);
  v149 = vsubq_s16(v139, v143);
  v150 = vsubq_s16(v137, v141);
  v151 = vaddq_s16(v141, v137);
  a3[8] = v144;
  a3[9] = v145;
  a3[10] = v146;
  a3[11] = v147;
  a3[12] = v148;
  a3[13] = v149;
  a3[14] = v150;
  a3[15] = v151;
  v152 = *(v83 + 2 * a2);
  v153 = *(v83 + 4 * a2);
  v154 = *(v83 + 6 * a2);
  v155 = *(v83 + 8 * a2);
  v156 = *(v83 + 10 * a2);
  v157 = *(v83 + 12 * a2);
  v158 = *(v83 + 14 * a2);
  v159 = vaddq_s16(v152, *v83);
  v160 = vsubq_s16(*v83, v152);
  v161 = vaddq_s16(v154, v153);
  v162 = vsubq_s16(v153, v154);
  v163 = vaddq_s16(v156, v155);
  v164 = vsubq_s16(v155, v156);
  v165 = vaddq_s16(v158, v157);
  v166 = vsubq_s16(v157, v158);
  v167 = vaddq_s16(v161, v159);
  v168 = vaddq_s16(v162, v160);
  v169 = vsubq_s16(v159, v161);
  v170 = vsubq_s16(v160, v162);
  v171 = vaddq_s16(v165, v163);
  v172 = vaddq_s16(v166, v164);
  v173 = vsubq_s16(v163, v165);
  v174 = vsubq_s16(v164, v166);
  v175 = vaddq_s16(v171, v167);
  v176 = vsubq_s16(v169, v173);
  v177 = vsubq_s16(v167, v171);
  v178 = vaddq_s16(v173, v169);
  v179 = vaddq_s16(v174, v170);
  v180 = vsubq_s16(v170, v174);
  v181 = vsubq_s16(v168, v172);
  v182 = vaddq_s16(v172, v168);
  v183 = vtrn1q_s16(v175, v176);
  v184 = vtrn2q_s16(v175, v176);
  v185 = vtrn1q_s16(v177, v178);
  v186 = vtrn2q_s16(v177, v178);
  v187 = vtrn1q_s16(v179, v180);
  v188 = vtrn2q_s16(v179, v180);
  v189 = vtrn1q_s16(v181, v182);
  v190 = vtrn2q_s16(v181, v182);
  v191 = vtrn1q_s32(v183, v185);
  v192 = vtrn2q_s32(v183, v185);
  v193 = vtrn1q_s32(v184, v186);
  v194 = vtrn2q_s32(v184, v186);
  v195 = vtrn1q_s32(v187, v189);
  v196 = vtrn2q_s32(v187, v189);
  v197 = vtrn1q_s32(v188, v190);
  v198 = vtrn2q_s32(v188, v190);
  v199 = vzip2q_s64(v191, v195);
  v191.i64[1] = v195.i64[0];
  v200 = vzip2q_s64(v193, v197);
  v193.i64[1] = v197.i64[0];
  v201 = vzip2q_s64(v192, v196);
  v192.i64[1] = v196.i64[0];
  v202 = vzip2q_s64(v194, v198);
  v194.i64[1] = v198.i64[0];
  v203 = vaddq_s16(v193, v191);
  v204 = vsubq_s16(v191, v193);
  v205 = vaddq_s16(v194, v192);
  v206 = vsubq_s16(v192, v194);
  v207 = vaddq_s16(v200, v199);
  v208 = vsubq_s16(v199, v200);
  v209 = vaddq_s16(v202, v201);
  v210 = vsubq_s16(v201, v202);
  v211 = vaddq_s16(v205, v203);
  v212 = vaddq_s16(v206, v204);
  v213 = vsubq_s16(v203, v205);
  v214 = vsubq_s16(v204, v206);
  v215 = vaddq_s16(v209, v207);
  v216 = vaddq_s16(v210, v208);
  v217 = vsubq_s16(v207, v209);
  v218 = vsubq_s16(v208, v210);
  v219 = vaddq_s16(v215, v211);
  v220 = vsubq_s16(v213, v217);
  v221 = vsubq_s16(v211, v215);
  v222 = vaddq_s16(v217, v213);
  v223 = vaddq_s16(v218, v214);
  v224 = vsubq_s16(v214, v218);
  v225 = vsubq_s16(v212, v216);
  v226 = vaddq_s16(v216, v212);
  a3[16] = v219;
  a3[17] = v220;
  a3[18] = v221;
  a3[19] = v222;
  a3[20] = v223;
  a3[21] = v224;
  a3[22] = v225;
  a3[23] = v226;
  v227 = &a1[a2 + 1];
  v228 = *(v227 + 2 * a2);
  v229 = *(v227 + 4 * a2);
  v230 = *(v227 + 6 * a2);
  v231 = *(v227 + 8 * a2);
  v232 = *(v227 + 10 * a2);
  v233 = *(v227 + 12 * a2);
  v234 = vaddq_s16(v228, *v227);
  v235 = vsubq_s16(*v227, v228);
  v236 = vaddq_s16(v230, v229);
  v237 = vsubq_s16(v229, v230);
  v238 = vaddq_s16(v232, v231);
  v239 = vsubq_s16(v231, v232);
  v240 = *(v227 + 14 * a2);
  v241 = vaddq_s16(v240, v233);
  v242 = vsubq_s16(v233, v240);
  v243 = vaddq_s16(v236, v234);
  v244 = vsubq_s16(v234, v236);
  v245 = vaddq_s16(v237, v235);
  v246 = vsubq_s16(v235, v237);
  v247 = vaddq_s16(v241, v238);
  v248 = vsubq_s16(v238, v241);
  v249 = vaddq_s16(v242, v239);
  v250 = vsubq_s16(v239, v242);
  v251 = vaddq_s16(v247, v243);
  v252 = vsubq_s16(v243, v247);
  v253 = vsubq_s16(v244, v248);
  v254 = vaddq_s16(v248, v244);
  v255 = vaddq_s16(v250, v246);
  v256 = vsubq_s16(v246, v250);
  v257 = vsubq_s16(v245, v249);
  v258 = vaddq_s16(v249, v245);
  v259 = vtrn1q_s16(v251, v253);
  v260 = vtrn2q_s16(v251, v253);
  v261 = vtrn1q_s16(v252, v254);
  v262 = vtrn2q_s16(v252, v254);
  v263 = vtrn1q_s16(v255, v256);
  v264 = vtrn2q_s16(v255, v256);
  v265 = vtrn1q_s16(v257, v258);
  v266 = vtrn2q_s16(v257, v258);
  v267 = vtrn1q_s32(v259, v261);
  v268 = vtrn2q_s32(v259, v261);
  v269 = vtrn1q_s32(v260, v262);
  v270 = vtrn2q_s32(v260, v262);
  v271 = vtrn1q_s32(v263, v265);
  v272 = vtrn2q_s32(v263, v265);
  v273 = vtrn1q_s32(v264, v266);
  v274 = vtrn2q_s32(v264, v266);
  v275 = vzip2q_s64(v267, v271);
  v267.i64[1] = v271.i64[0];
  v276 = vzip2q_s64(v269, v273);
  v269.i64[1] = v273.i64[0];
  v277 = vzip2q_s64(v268, v272);
  v268.i64[1] = v272.i64[0];
  v278 = vzip2q_s64(v270, v274);
  v270.i64[1] = v274.i64[0];
  v279 = vaddq_s16(v269, v267);
  v280 = vsubq_s16(v267, v269);
  v281 = vaddq_s16(v270, v268);
  v282 = vsubq_s16(v268, v270);
  v283 = vaddq_s16(v276, v275);
  v284 = vsubq_s16(v275, v276);
  v285 = vaddq_s16(v278, v277);
  v286 = vsubq_s16(v277, v278);
  v287 = vaddq_s16(v281, v279);
  v288 = vsubq_s16(v279, v281);
  v289 = vaddq_s16(v282, v280);
  v290 = vsubq_s16(v280, v282);
  v291 = vaddq_s16(v285, v283);
  v292 = vsubq_s16(v283, v285);
  v293 = vaddq_s16(v286, v284);
  v294 = vsubq_s16(v284, v286);
  v295 = vaddq_s16(v291, v287);
  v296 = vsubq_s16(v287, v291);
  v297 = vsubq_s16(v288, v292);
  v298 = vaddq_s16(v292, v288);
  v299 = vaddq_s16(v294, v290);
  v300 = vsubq_s16(v290, v294);
  v301 = vsubq_s16(v289, v293);
  v302 = vaddq_s16(v293, v289);
  v303 = vhaddq_s16(v70, v144);
  v304 = vhsubq_s16(v70, v144);
  v305 = vhaddq_s16(v219, v295);
  v306 = vhsubq_s16(v219, v295);
  v307 = vaddq_s16(v305, v303);
  v308 = vsubq_s16(v303, v305);
  v309 = vaddq_s16(v306, v304);
  v310 = vsubq_s16(v304, v306);
  v311 = vhaddq_s16(v71, v145);
  v312 = vhsubq_s16(v71, v145);
  v313 = vhaddq_s16(v220, v297);
  v314 = vhsubq_s16(v220, v297);
  *a3 = v307;
  a3[1] = vaddq_s16(v313, v311);
  a3[8] = v309;
  a3[9] = vaddq_s16(v314, v312);
  a3[16] = v308;
  a3[17] = vsubq_s16(v311, v313);
  a3[24] = v310;
  a3[25] = vsubq_s16(v312, v314);
  v315 = vhaddq_s16(v72, v146);
  v316 = vhsubq_s16(v72, v146);
  v317 = vhaddq_s16(v221, v296);
  v318 = vhsubq_s16(v221, v296);
  v319 = vaddq_s16(v317, v315);
  v320 = vsubq_s16(v315, v317);
  v321 = vaddq_s16(v318, v316);
  v322 = vsubq_s16(v316, v318);
  v323 = vhaddq_s16(v73, v147);
  v324 = vhsubq_s16(v73, v147);
  v325 = vhaddq_s16(v222, v298);
  v326 = vhsubq_s16(v222, v298);
  a3[2] = v319;
  a3[3] = vaddq_s16(v325, v323);
  a3[10] = v321;
  a3[11] = vaddq_s16(v326, v324);
  a3[18] = v320;
  a3[19] = vsubq_s16(v323, v325);
  a3[26] = v322;
  a3[27] = vsubq_s16(v324, v326);
  v327 = vhaddq_s16(v74, v148);
  v328 = vhsubq_s16(v74, v148);
  v329 = vhaddq_s16(v223, v299);
  v330 = vhsubq_s16(v223, v299);
  v331 = vaddq_s16(v329, v327);
  v332 = vsubq_s16(v327, v329);
  v333 = vhaddq_s16(v350, v149);
  v334 = vhsubq_s16(v350, v149);
  v335 = vhaddq_s16(v224, v300);
  a3[4] = v331;
  a3[5] = vaddq_s16(v335, v333);
  v336 = vhsubq_s16(v224, v300);
  a3[12] = vaddq_s16(v330, v328);
  a3[13] = vaddq_s16(v336, v334);
  a3[20] = v332;
  a3[21] = vsubq_s16(v333, v335);
  a3[28] = vsubq_s16(v328, v330);
  a3[29] = vsubq_s16(v334, v336);
  v337 = vhaddq_s16(v351, v150);
  v338 = vhsubq_s16(v351, v150);
  v339 = vhaddq_s16(v225, v301);
  v340 = vhsubq_s16(v225, v301);
  v341 = vaddq_s16(v339, v337);
  v342 = vaddq_s16(v340, v338);
  v343 = vsubq_s16(v337, v339);
  v344 = vsubq_s16(v338, v340);
  v345 = vhaddq_s16(v352, v151);
  v346 = vhsubq_s16(v352, v151);
  v347 = vhaddq_s16(v226, v302);
  a3[6] = v341;
  a3[7] = vaddq_s16(v347, v345);
  v348 = vhsubq_s16(v226, v302);
  a3[14] = v342;
  a3[15] = vaddq_s16(v348, v346);
  a3[22] = v343;
  a3[23] = vsubq_s16(v345, v347);
  result = vsubq_s16(v346, v348);
  a3[30] = v344;
  a3[31] = result;
  return result;
}

int32x4_t aom_hadamard_16x16_neon(int16x8_t *a1, uint64_t a2, int32x4_t *a3)
{
  v3 = *(a1 + 2 * a2);
  v4 = vaddq_s16(v3, *a1);
  v5 = vsubq_s16(*a1, v3);
  v6 = *(a1 + 4 * a2);
  v7 = *(a1 + 6 * a2);
  v8 = vaddq_s16(v7, v6);
  v9 = vsubq_s16(v6, v7);
  v10 = *(a1 + 8 * a2);
  v11 = *(a1 + 10 * a2);
  v12 = vaddq_s16(v11, v10);
  v13 = vsubq_s16(v10, v11);
  v14 = *(a1 + 12 * a2);
  v15 = *(a1 + 14 * a2);
  v16 = vaddq_s16(v15, v14);
  v17 = vsubq_s16(v14, v15);
  v18 = vaddq_s16(v8, v4);
  v19 = vaddq_s16(v9, v5);
  v20 = vsubq_s16(v4, v8);
  v21 = vsubq_s16(v5, v9);
  v22 = vaddq_s16(v16, v12);
  v23 = vaddq_s16(v17, v13);
  v24 = vsubq_s16(v12, v16);
  v25 = vsubq_s16(v13, v17);
  v26 = vaddq_s16(v22, v18);
  v27 = vsubq_s16(v20, v24);
  v28 = vsubq_s16(v18, v22);
  v29 = vaddq_s16(v24, v20);
  v30 = vaddq_s16(v25, v21);
  v31 = vsubq_s16(v21, v25);
  v32 = vsubq_s16(v19, v23);
  v33 = vaddq_s16(v23, v19);
  v34 = vtrn1q_s16(v26, v27);
  v35 = vtrn2q_s16(v26, v27);
  v36 = vtrn1q_s16(v28, v29);
  v37 = vtrn2q_s16(v28, v29);
  v38 = vtrn1q_s16(v30, v31);
  v39 = vtrn2q_s16(v30, v31);
  v40 = vtrn1q_s16(v32, v33);
  v41 = vtrn2q_s16(v32, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vtrn1q_s32(v38, v40);
  v47 = vtrn2q_s32(v38, v40);
  v48 = vtrn1q_s32(v39, v41);
  v49 = vzip2q_s64(v42, v46);
  v42.i64[1] = v46.i64[0];
  v50 = vzip2q_s64(v44, v48);
  v44.i64[1] = v48.i64[0];
  v51 = vzip2q_s64(v43, v47);
  v43.i64[1] = v47.i64[0];
  v52 = vtrn2q_s32(v39, v41);
  v53 = vzip2q_s64(v45, v52);
  v45.i64[1] = v52.i64[0];
  v54 = vaddq_s16(v44, v42);
  v55 = vsubq_s16(v42, v44);
  v56 = vaddq_s16(v45, v43);
  v57 = vsubq_s16(v43, v45);
  v58 = vaddq_s16(v50, v49);
  v59 = vsubq_s16(v49, v50);
  v60 = vaddq_s16(v53, v51);
  v61 = vsubq_s16(v51, v53);
  v62 = vaddq_s16(v56, v54);
  v63 = vaddq_s16(v57, v55);
  v64 = vsubq_s16(v54, v56);
  v65 = vsubq_s16(v55, v57);
  v66 = vaddq_s16(v60, v58);
  v67 = vaddq_s16(v61, v59);
  v68 = vsubq_s16(v58, v60);
  v69 = vsubq_s16(v59, v61);
  v70 = vaddq_s16(v66, v62);
  v71 = vsubq_s16(v64, v68);
  v72 = vsubq_s16(v62, v66);
  v73 = vaddq_s16(v68, v64);
  v74 = vaddq_s16(v69, v65);
  v75 = vsubq_s16(v65, v69);
  v76 = vsubq_s16(v63, v67);
  v77 = vaddq_s16(v67, v63);
  v413 = vmovl_s16(*v70.i8);
  v78 = vmovl_high_s16(v70);
  *a3 = v413;
  a3[1] = v78;
  v416 = v78;
  v417 = vmovl_s16(*v71.i8);
  v79 = vmovl_high_s16(v71);
  a3[2] = v417;
  a3[3] = v79;
  v418 = v79;
  v419 = vmovl_s16(*v72.i8);
  v420 = v72;
  v421 = vmovl_high_s16(v72);
  a3[4] = v419;
  a3[5] = v421;
  v422 = vmovl_s16(*v73.i8);
  v423 = v73;
  v80 = vmovl_high_s16(v73);
  a3[6] = v422;
  a3[7] = v80;
  v424 = v80;
  v425 = vmovl_s16(*v74.i8);
  v426 = v74;
  v427 = vmovl_high_s16(v74);
  a3[8] = v425;
  a3[9] = v427;
  v428 = vmovl_s16(*v75.i8);
  v429 = v75;
  v430 = vmovl_high_s16(v75);
  v431 = v77;
  a3[10] = v428;
  a3[11] = v430;
  v432 = v76;
  v433 = vmovl_s16(*v76.i8);
  v436 = vmovl_high_s16(v76);
  a3[12] = v433;
  a3[13] = v436;
  v434 = vmovl_s16(*v77.i8);
  v435 = vmovl_high_s16(v77);
  a3[14] = v434;
  a3[15] = v435;
  v81 = a1[1];
  v82 = *(a1 + 2 * a2 + 16);
  v83 = *(a1 + 4 * a2 + 16);
  v84 = *(a1 + 6 * a2 + 16);
  v85 = *(a1 + 8 * a2 + 16);
  v86 = *(a1 + 10 * a2 + 16);
  v87 = *(a1 + 12 * a2 + 16);
  v88 = vaddq_s16(v82, v81);
  v89 = vsubq_s16(v81, v82);
  v90 = vaddq_s16(v84, v83);
  v91 = vsubq_s16(v83, v84);
  v92 = vaddq_s16(v86, v85);
  v93 = vsubq_s16(v85, v86);
  v94 = *(a1 + 14 * a2 + 16);
  v95 = vaddq_s16(v94, v87);
  v96 = vsubq_s16(v87, v94);
  v97 = vaddq_s16(v90, v88);
  v98 = vsubq_s16(v88, v90);
  v99 = vaddq_s16(v91, v89);
  v100 = vsubq_s16(v89, v91);
  v101 = vaddq_s16(v95, v92);
  v102 = vsubq_s16(v92, v95);
  v103 = vaddq_s16(v96, v93);
  v104 = vsubq_s16(v93, v96);
  v105 = vaddq_s16(v101, v97);
  v106 = vsubq_s16(v97, v101);
  v107 = vsubq_s16(v98, v102);
  v108 = vaddq_s16(v102, v98);
  v109 = vaddq_s16(v104, v100);
  v110 = vsubq_s16(v100, v104);
  v111 = vsubq_s16(v99, v103);
  v112 = vaddq_s16(v103, v99);
  v113 = vtrn1q_s16(v105, v107);
  v114 = vtrn2q_s16(v105, v107);
  v115 = vtrn1q_s16(v106, v108);
  v116 = vtrn2q_s16(v106, v108);
  v117 = vtrn1q_s16(v109, v110);
  v118 = vtrn2q_s16(v109, v110);
  v119 = vtrn1q_s16(v111, v112);
  v120 = vtrn2q_s16(v111, v112);
  v121 = vtrn1q_s32(v113, v115);
  v122 = vtrn2q_s32(v113, v115);
  v123 = vtrn1q_s32(v114, v116);
  v124 = vtrn2q_s32(v114, v116);
  v125 = vtrn1q_s32(v117, v119);
  v126 = vtrn2q_s32(v117, v119);
  v127 = vtrn1q_s32(v118, v120);
  v128 = vtrn2q_s32(v118, v120);
  v129 = vzip2q_s64(v121, v125);
  v121.i64[1] = v125.i64[0];
  v130 = vzip2q_s64(v123, v127);
  v123.i64[1] = v127.i64[0];
  v131 = vzip2q_s64(v122, v126);
  v122.i64[1] = v126.i64[0];
  v132 = vzip2q_s64(v124, v128);
  v124.i64[1] = v128.i64[0];
  v133 = vaddq_s16(v123, v121);
  v134 = vsubq_s16(v121, v123);
  v135 = vaddq_s16(v124, v122);
  v136 = vsubq_s16(v122, v124);
  v137 = vaddq_s16(v130, v129);
  v138 = vsubq_s16(v129, v130);
  v139 = vaddq_s16(v132, v131);
  v140 = vsubq_s16(v131, v132);
  v141 = vaddq_s16(v135, v133);
  v142 = vsubq_s16(v133, v135);
  v143 = vaddq_s16(v136, v134);
  v144 = vsubq_s16(v134, v136);
  v145 = vaddq_s16(v139, v137);
  v146 = vsubq_s16(v137, v139);
  v147 = vaddq_s16(v140, v138);
  v148 = vsubq_s16(v138, v140);
  v149 = vaddq_s16(v145, v141);
  v150 = vsubq_s16(v141, v145);
  v151 = vsubq_s16(v142, v146);
  v152 = vaddq_s16(v146, v142);
  v153 = vaddq_s16(v148, v144);
  v154 = vsubq_s16(v144, v148);
  v411 = vaddq_s16(v147, v143);
  v155 = &a1[a2];
  v389 = vmovl_s16(*v149.i8);
  v390 = vmovl_high_s16(v149);
  a3[16] = v389;
  a3[17] = v390;
  v392 = vmovl_s16(*v151.i8);
  v393 = vmovl_high_s16(v151);
  a3[18] = v392;
  a3[19] = v393;
  v397 = v150;
  v395 = vmovl_s16(*v150.i8);
  v156 = vmovl_high_s16(v150);
  a3[20] = v395;
  a3[21] = v156;
  v399 = v156;
  v400 = vmovl_s16(*v152.i8);
  v401 = v152;
  v402 = vmovl_high_s16(v152);
  a3[22] = v400;
  a3[23] = v402;
  v403 = vmovl_s16(*v153.i8);
  v404 = v153;
  v405 = vmovl_high_s16(v153);
  a3[24] = v403;
  a3[25] = v405;
  v406 = vmovl_s16(*v154.i8);
  v407 = v154;
  v408 = vmovl_high_s16(v154);
  v409 = vsubq_s16(v143, v147);
  a3[26] = v406;
  a3[27] = v408;
  v410 = vmovl_s16(*v409.i8);
  v415 = vmovl_high_s16(v409);
  a3[28] = v410;
  a3[29] = v415;
  v412 = vmovl_s16(*v411.i8);
  v414 = vmovl_high_s16(v411);
  a3[30] = v412;
  a3[31] = v414;
  v157 = *(v155 + 2 * a2);
  v158 = vaddq_s16(v157, *v155);
  v159 = vsubq_s16(*v155, v157);
  v160 = *(v155 + 4 * a2);
  v161 = *(v155 + 6 * a2);
  v162 = vaddq_s16(v161, v160);
  v163 = vsubq_s16(v160, v161);
  v164 = *(v155 + 8 * a2);
  v165 = *(v155 + 10 * a2);
  v166 = vaddq_s16(v165, v164);
  v167 = vsubq_s16(v164, v165);
  v168 = *(v155 + 12 * a2);
  v169 = *(v155 + 14 * a2);
  v170 = vaddq_s16(v169, v168);
  v171 = vsubq_s16(v168, v169);
  v172 = vaddq_s16(v162, v158);
  v173 = vsubq_s16(v158, v162);
  v174 = vaddq_s16(v163, v159);
  v175 = vsubq_s16(v159, v163);
  v176 = vaddq_s16(v170, v166);
  v177 = vsubq_s16(v166, v170);
  v178 = vaddq_s16(v171, v167);
  v179 = vsubq_s16(v167, v171);
  v180 = vaddq_s16(v176, v172);
  v181 = vsubq_s16(v172, v176);
  v182 = vsubq_s16(v173, v177);
  v183 = vaddq_s16(v177, v173);
  v184 = vaddq_s16(v179, v175);
  v185 = vsubq_s16(v175, v179);
  v186 = vsubq_s16(v174, v178);
  v187 = vaddq_s16(v178, v174);
  v188 = vtrn1q_s16(v180, v182);
  v189 = vtrn2q_s16(v180, v182);
  v190 = vtrn1q_s16(v181, v183);
  v191 = vtrn2q_s16(v181, v183);
  v192 = vtrn1q_s16(v184, v185);
  v193 = vtrn2q_s16(v184, v185);
  v194 = vtrn1q_s16(v186, v187);
  v195 = vtrn2q_s16(v186, v187);
  v196 = vtrn1q_s32(v188, v190);
  v197 = vtrn2q_s32(v188, v190);
  v198 = vtrn1q_s32(v189, v191);
  v199 = vtrn2q_s32(v189, v191);
  v200 = vtrn1q_s32(v192, v194);
  v201 = vtrn2q_s32(v192, v194);
  v202 = vtrn1q_s32(v193, v195);
  v203 = vtrn2q_s32(v193, v195);
  v204 = vzip2q_s64(v196, v200);
  v196.i64[1] = v200.i64[0];
  v205 = vzip2q_s64(v198, v202);
  v198.i64[1] = v202.i64[0];
  v206 = vzip2q_s64(v197, v201);
  v197.i64[1] = v201.i64[0];
  v207 = vzip2q_s64(v199, v203);
  v199.i64[1] = v203.i64[0];
  v208 = vaddq_s16(v198, v196);
  v209 = vsubq_s16(v196, v198);
  v210 = vaddq_s16(v199, v197);
  v211 = vsubq_s16(v197, v199);
  v212 = vaddq_s16(v205, v204);
  v213 = vsubq_s16(v204, v205);
  v214 = vaddq_s16(v207, v206);
  v215 = vsubq_s16(v206, v207);
  v216 = vaddq_s16(v210, v208);
  v217 = vsubq_s16(v208, v210);
  v218 = vaddq_s16(v211, v209);
  v219 = vsubq_s16(v209, v211);
  v220 = vaddq_s16(v214, v212);
  v221 = vsubq_s16(v212, v214);
  v222 = vaddq_s16(v215, v213);
  v223 = vsubq_s16(v213, v215);
  v224 = vaddq_s16(v220, v216);
  v225 = vsubq_s16(v216, v220);
  v226 = vsubq_s16(v217, v221);
  v227 = vaddq_s16(v221, v217);
  v228 = vaddq_s16(v223, v219);
  v229 = vsubq_s16(v219, v223);
  v230 = vsubq_s16(v218, v222);
  v231 = vaddq_s16(v222, v218);
  v232 = vmovl_s16(*v224.i8);
  v233 = vmovl_high_s16(v224);
  a3[32] = v232;
  a3[33] = v233;
  v234 = vmovl_s16(*v226.i8);
  v235 = vmovl_high_s16(v226);
  a3[34] = v234;
  a3[35] = v235;
  v236 = vmovl_s16(*v225.i8);
  v237 = vmovl_high_s16(v225);
  a3[36] = v236;
  a3[37] = v237;
  v383 = vmovl_s16(*v227.i8);
  v384 = vmovl_high_s16(v227);
  a3[38] = v383;
  a3[39] = v384;
  v385 = vmovl_s16(*v228.i8);
  v386 = vmovl_high_s16(v228);
  a3[40] = v385;
  a3[41] = v386;
  v387 = vmovl_s16(*v229.i8);
  v388 = vmovl_high_s16(v229);
  a3[42] = v387;
  a3[43] = v388;
  v391 = vmovl_s16(*v230.i8);
  v398 = vmovl_high_s16(v230);
  a3[44] = v391;
  a3[45] = v398;
  v394 = vmovl_s16(*v231.i8);
  v396 = vmovl_high_s16(v231);
  a3[46] = v394;
  a3[47] = v396;
  v238 = &a1[a2 + 1];
  v239 = *(v238 + 2 * a2);
  v240 = vaddq_s16(v239, *v238);
  v241 = vsubq_s16(*v238, v239);
  v242 = *(v238 + 4 * a2);
  v243 = *(v238 + 6 * a2);
  v244 = vaddq_s16(v243, v242);
  v245 = vsubq_s16(v242, v243);
  v246 = *(v238 + 8 * a2);
  v247 = *(v238 + 10 * a2);
  v248 = vaddq_s16(v247, v246);
  v249 = vsubq_s16(v246, v247);
  v250 = *(v238 + 12 * a2);
  v251 = *(v238 + 14 * a2);
  v252 = vaddq_s16(v251, v250);
  v253 = vsubq_s16(v250, v251);
  v254 = vaddq_s16(v244, v240);
  v255 = vsubq_s16(v240, v244);
  v256 = vaddq_s16(v245, v241);
  v257 = vsubq_s16(v241, v245);
  v258 = vaddq_s16(v252, v248);
  v259 = vsubq_s16(v248, v252);
  v260 = vaddq_s16(v253, v249);
  v261 = vsubq_s16(v249, v253);
  v262 = vaddq_s16(v258, v254);
  v263 = vsubq_s16(v254, v258);
  v264 = vsubq_s16(v255, v259);
  v265 = vaddq_s16(v259, v255);
  v266 = vaddq_s16(v261, v257);
  v267 = vsubq_s16(v257, v261);
  v268 = vsubq_s16(v256, v260);
  v269 = vaddq_s16(v260, v256);
  v270 = vtrn1q_s16(v262, v264);
  v271 = vtrn2q_s16(v262, v264);
  v272 = vtrn1q_s16(v263, v265);
  v273 = vtrn2q_s16(v263, v265);
  v274 = vtrn1q_s16(v266, v267);
  v275 = vtrn2q_s16(v266, v267);
  v276 = vtrn1q_s16(v268, v269);
  v277 = vtrn2q_s16(v268, v269);
  v278 = vtrn1q_s32(v270, v272);
  v279 = vtrn2q_s32(v270, v272);
  v280 = vtrn1q_s32(v271, v273);
  v281 = vtrn2q_s32(v271, v273);
  v282 = vtrn1q_s32(v274, v276);
  v283 = vtrn2q_s32(v274, v276);
  v284 = vtrn1q_s32(v275, v277);
  v285 = vtrn2q_s32(v275, v277);
  v286 = vzip2q_s64(v278, v282);
  v278.i64[1] = v282.i64[0];
  v287 = vzip2q_s64(v280, v284);
  v280.i64[1] = v284.i64[0];
  v288 = vzip2q_s64(v279, v283);
  v279.i64[1] = v283.i64[0];
  v289 = vzip2q_s64(v281, v285);
  v281.i64[1] = v285.i64[0];
  v290 = vaddq_s16(v280, v278);
  v291 = vsubq_s16(v278, v280);
  v292 = vaddq_s16(v281, v279);
  v293 = vsubq_s16(v279, v281);
  v294 = vaddq_s16(v287, v286);
  v295 = vsubq_s16(v286, v287);
  v296 = vaddq_s16(v289, v288);
  v297 = vsubq_s16(v288, v289);
  v298 = vaddq_s16(v292, v290);
  v299 = vsubq_s16(v290, v292);
  v300 = vaddq_s16(v293, v291);
  v301 = vsubq_s16(v291, v293);
  v302 = vaddq_s16(v296, v294);
  v303 = vsubq_s16(v294, v296);
  v304 = vaddq_s16(v297, v295);
  v305 = vsubq_s16(v295, v297);
  v306 = vaddq_s16(v302, v298);
  v307 = vsubq_s16(v298, v302);
  v308 = vsubq_s16(v299, v303);
  v309 = vaddq_s16(v303, v299);
  v310 = vaddq_s16(v305, v301);
  v311 = vsubq_s16(v301, v305);
  v312 = vsubq_s16(v300, v304);
  v313 = vaddq_s16(v304, v300);
  v314 = vhsubq_s32(v413, v389);
  v315 = vhsubq_s32(v232, vmovl_s16(*v306.i8));
  *v300.i8 = vhadd_s16(*v70.i8, *v149.i8);
  *v232.i8 = vhadd_s16(*v224.i8, *v306.i8);
  v316 = vaddl_s16(*v232.i8, *v300.i8);
  v317 = vsubl_s16(*v300.i8, *v232.i8);
  v318 = vaddq_s32(v315, v314);
  v319 = vsubq_s32(v314, v315);
  *v315.i8 = vhadd_s16(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v149, v149, 8uLL));
  v320 = vhsubq_s32(v416, v390);
  *v224.i8 = vhadd_s16(*&vextq_s8(v224, v224, 8uLL), *&vextq_s8(v306, v306, 8uLL));
  v321 = vhsubq_s32(v233, vmovl_high_s16(v306));
  v322 = vaddl_s16(*v224.i8, *v315.i8);
  v323 = vsubl_s16(*v315.i8, *v224.i8);
  v324 = vaddq_s32(v321, v320);
  v325 = vsubq_s32(v320, v321);
  v326 = vhsubq_s32(v417, v392);
  v327 = vhsubq_s32(v234, vmovl_s16(*v308.i8));
  *v70.i8 = vhadd_s16(*v71.i8, *v151.i8);
  *v314.i8 = vhadd_s16(*v226.i8, *v308.i8);
  v328 = vaddl_s16(*v314.i8, *v70.i8);
  v329 = vsubl_s16(*v70.i8, *v314.i8);
  v330 = vaddq_s32(v327, v326);
  v331 = vsubq_s32(v326, v327);
  *v326.i8 = vhadd_s16(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v151, v151, 8uLL));
  v332 = vhsubq_s32(v418, v393);
  *v226.i8 = vhadd_s16(*&vextq_s8(v226, v226, 8uLL), *&vextq_s8(v308, v308, 8uLL));
  v333 = vhsubq_s32(v235, vmovl_high_s16(v308));
  *a3 = v316;
  a3[1] = v328;
  a3[2] = v322;
  a3[3] = vaddl_s16(*v226.i8, *v326.i8);
  a3[16] = v318;
  a3[17] = v330;
  a3[18] = v324;
  a3[19] = vaddq_s32(v333, v332);
  a3[32] = v317;
  a3[33] = v329;
  a3[34] = v323;
  a3[35] = vsubl_s16(*v326.i8, *v226.i8);
  a3[48] = v319;
  a3[49] = v331;
  a3[50] = v325;
  a3[51] = vsubq_s32(v332, v333);
  v334 = vhsubq_s32(v419, v395);
  v335 = vhsubq_s32(v236, vmovl_s16(*v307.i8));
  *v323.i8 = vhadd_s16(*v420.i8, *v397.i8);
  *v316.i8 = vhadd_s16(*v225.i8, *v307.i8);
  v336 = vaddl_s16(*v316.i8, *v323.i8);
  v337 = vsubl_s16(*v323.i8, *v316.i8);
  v338 = vaddq_s32(v335, v334);
  v339 = vsubq_s32(v334, v335);
  *v335.i8 = vhadd_s16(*&vextq_s8(v420, v420, 8uLL), *&vextq_s8(v397, v397, 8uLL));
  v340 = vhsubq_s32(v421, v399);
  *v319.i8 = vhadd_s16(*&vextq_s8(v225, v225, 8uLL), *&vextq_s8(v307, v307, 8uLL));
  v341 = vhsubq_s32(v237, vmovl_high_s16(v307));
  v342 = vaddl_s16(*v319.i8, *v335.i8);
  v343 = vsubl_s16(*v335.i8, *v319.i8);
  v344 = vaddq_s32(v341, v340);
  v345 = vsubq_s32(v340, v341);
  v346 = vhsubq_s32(v422, v400);
  v347 = vhsubq_s32(v383, vmovl_s16(*v309.i8));
  *v318.i8 = vhadd_s16(*v423.i8, *v401.i8);
  *v226.i8 = vhadd_s16(*v227.i8, *v309.i8);
  v348 = vaddl_s16(*v226.i8, *v318.i8);
  v349 = vsubl_s16(*v318.i8, *v226.i8);
  v350 = vaddq_s32(v347, v346);
  v351 = vsubq_s32(v346, v347);
  *v347.i8 = vhadd_s16(*&vextq_s8(v423, v423, 8uLL), *&vextq_s8(v401, v401, 8uLL));
  v352 = vhsubq_s32(v424, v402);
  *v227.i8 = vhadd_s16(*&vextq_s8(v227, v227, 8uLL), *&vextq_s8(v309, v309, 8uLL));
  v353 = vhsubq_s32(v384, vmovl_high_s16(v309));
  a3[4] = v336;
  a3[5] = v348;
  a3[6] = v342;
  a3[7] = vaddl_s16(*v227.i8, *v347.i8);
  a3[20] = v338;
  a3[21] = v350;
  a3[22] = v344;
  a3[23] = vaddq_s32(v353, v352);
  a3[36] = v337;
  a3[37] = v349;
  a3[38] = v343;
  a3[39] = vsubl_s16(*v347.i8, *v227.i8);
  a3[52] = v339;
  a3[53] = v351;
  a3[54] = v345;
  a3[55] = vsubq_s32(v352, v353);
  v354 = vhsubq_s32(v425, v403);
  v355 = vhsubq_s32(v385, vmovl_s16(*v310.i8));
  *v345.i8 = vhadd_s16(*v426.i8, *v404.i8);
  *v337.i8 = vhadd_s16(*v228.i8, *v310.i8);
  v356 = vaddl_s16(*v337.i8, *v345.i8);
  v357 = vsubl_s16(*v345.i8, *v337.i8);
  v358 = vaddq_s32(v355, v354);
  v359 = vsubq_s32(v354, v355);
  *v355.i8 = vhadd_s16(*&vextq_s8(v426, v426, 8uLL), *&vextq_s8(v404, v404, 8uLL));
  v360 = vhsubq_s32(v427, v405);
  *v351.i8 = vhadd_s16(*&vextq_s8(v228, v228, 8uLL), *&vextq_s8(v310, v310, 8uLL));
  v361 = vhsubq_s32(v386, vmovl_high_s16(v310));
  v362 = vaddl_s16(*v351.i8, *v355.i8);
  v363 = vsubl_s16(*v355.i8, *v351.i8);
  v364 = vaddq_s32(v361, v360);
  v365 = vsubq_s32(v360, v361);
  v366 = vhsubq_s32(v428, v406);
  v367 = vhsubq_s32(v387, vmovl_s16(*v311.i8));
  *v342.i8 = vhadd_s16(*v429.i8, *v407.i8);
  *v347.i8 = vhadd_s16(*v229.i8, *v311.i8);
  v368 = vaddl_s16(*v347.i8, *v342.i8);
  v369 = vsubl_s16(*v342.i8, *v347.i8);
  v370 = vaddq_s32(v367, v366);
  v371 = vsubq_s32(v366, v367);
  *v367.i8 = vhadd_s16(*&vextq_s8(v429, v429, 8uLL), *&vextq_s8(v407, v407, 8uLL));
  v372 = vhsubq_s32(v430, v408);
  *v348.i8 = vhadd_s16(*&vextq_s8(v229, v229, 8uLL), *&vextq_s8(v311, v311, 8uLL));
  v373 = vhsubq_s32(v388, vmovl_high_s16(v311));
  a3[8] = v356;
  a3[9] = v368;
  a3[10] = v362;
  a3[11] = vaddl_s16(*v348.i8, *v367.i8);
  a3[24] = v358;
  a3[25] = v370;
  a3[26] = v364;
  a3[27] = vaddq_s32(v373, v372);
  a3[40] = v357;
  a3[41] = v369;
  a3[42] = v363;
  a3[43] = vsubl_s16(*v367.i8, *v348.i8);
  a3[56] = v359;
  a3[57] = v371;
  a3[58] = v365;
  a3[59] = vsubq_s32(v372, v373);
  *v357.i8 = vhadd_s16(*v432.i8, *v409.i8);
  v374 = vhsubq_s32(v433, v410);
  v375 = vhsubq_s32(v391, vmovl_s16(*v312.i8));
  *v358.i8 = vhadd_s16(*&vextq_s8(v432, v432, 8uLL), *&vextq_s8(v409, v409, 8uLL));
  *v365.i8 = vhadd_s16(*&vextq_s8(v230, v230, 8uLL), *&vextq_s8(v312, v312, 8uLL));
  *v371.i8 = vhadd_s16(*v431.i8, *v411.i8);
  *v367.i8 = vhadd_s16(*v230.i8, *v312.i8);
  v376 = vhsubq_s32(v434, v412);
  *v373.i8 = vhadd_s16(*v231.i8, *v313.i8);
  *v356.i8 = vhadd_s16(*&vextq_s8(v431, v431, 8uLL), *&vextq_s8(v411, v411, 8uLL));
  a3[12] = vaddl_s16(*v367.i8, *v357.i8);
  a3[13] = vaddl_s16(*v373.i8, *v371.i8);
  *v362.i8 = vhadd_s16(*&vextq_s8(v231, v231, 8uLL), *&vextq_s8(v313, v313, 8uLL));
  a3[14] = vaddl_s16(*v365.i8, *v358.i8);
  a3[15] = vaddl_s16(*v362.i8, *v356.i8);
  v377 = vhsubq_s32(v394, vmovl_s16(*v313.i8));
  a3[28] = vaddq_s32(v375, v374);
  a3[29] = vaddq_s32(v377, v376);
  v378 = vhsubq_s32(v436, v415);
  v379 = vhsubq_s32(v398, vmovl_high_s16(v312));
  v380 = vhsubq_s32(v435, v414);
  v381 = vhsubq_s32(v396, vmovl_high_s16(v313));
  a3[30] = vaddq_s32(v379, v378);
  a3[31] = vaddq_s32(v381, v380);
  a3[44] = vsubl_s16(*v357.i8, *v367.i8);
  a3[45] = vsubl_s16(*v371.i8, *v373.i8);
  a3[46] = vsubl_s16(*v358.i8, *v365.i8);
  a3[47] = vsubl_s16(*v356.i8, *v362.i8);
  a3[60] = vsubq_s32(v374, v375);
  a3[61] = vsubq_s32(v376, v377);
  result = vsubq_s32(v378, v379);
  a3[62] = result;
  a3[63] = vsubq_s32(v380, v381);
  return result;
}