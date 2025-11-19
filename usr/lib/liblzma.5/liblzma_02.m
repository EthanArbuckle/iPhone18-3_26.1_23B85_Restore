void stream_decoder_mt_end(uint64_t *a1, uint64_t a2)
{
  threads_end(a1, a2);
  lzma_outq_end(a1 + 61, a2);
  lzma_next_end((a1 + 1), a2);
  lzma_filters_free(a1 + 37, a2);
  lzma_index_hash_end(a1[54], a2, v4);

  lzma_free(a1, a2);
}

uint64_t stream_decoder_mt_memconfig(uint64_t a1, unint64_t *a2, void *a3, unint64_t a4)
{
  pthread_mutex_lock((a1 + 552));
  *a2 = *(a1 + 696) + *(a1 + 688) + *(a1 + 704) + *(a1 + 520);
  pthread_mutex_unlock((a1 + 552));
  if (!(*a2 >> 15))
  {
    *a2 = 0x8000;
  }

  *a3 = *(a1 + 680);
  if (!a4)
  {
    return 0;
  }

  if (*a2 > a4)
  {
    return 6;
  }

  result = 0;
  *(a1 + 680) = a4;
  return result;
}

uint64_t stream_decoder_mt_get_progress(uint64_t a1, void *a2, void *a3)
{
  pthread_mutex_lock((a1 + 552));
  *a2 = *(a1 + 736);
  *a3 = *(a1 + 744);
  if (*(a1 + 456))
  {
    v6 = 0;
    v7 = 400;
    do
    {
      pthread_mutex_lock((*(a1 + 464) + v7));
      v8 = (*(a1 + 464) + v7);
      *a2 += *&v8[-6].__opaque[48];
      *a3 += v8[-5].__sig;
      pthread_mutex_unlock(v8);
      ++v6;
      v7 += 528;
    }

    while (v6 < *(a1 + 456));
  }

  return pthread_mutex_unlock((a1 + 552));
}

double threads_end(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 456))
  {
    v4 = 0;
    v5 = 400;
    do
    {
      pthread_mutex_lock((*(a1 + 464) + v5));
      v6 = *(a1 + 464) + v5;
      *(v6 - 400) = 2;
      pthread_cond_signal((v6 + 64));
      pthread_mutex_unlock((*(a1 + 464) + v5));
      ++v4;
      v7 = *(a1 + 456);
      v5 += 528;
    }

    while (v4 < v7);
    if (v7)
    {
      v8 = 0;
      v9 = 520;
      do
      {
        pthread_join(*(*(a1 + 464) + v9), 0);
        ++v8;
        v9 += 528;
      }

      while (v8 < *(a1 + 456));
    }
  }

  lzma_free(*(a1 + 464), a2);
  *(a1 + 456) = 0;
  result = 0.0;
  *(a1 + 464) = 0u;
  *(a1 + 696) = 0u;
  return result;
}

uint64_t threads_stop(uint64_t result)
{
  if (*(result + 456))
  {
    v1 = result;
    v2 = 0;
    v3 = 400;
    do
    {
      pthread_mutex_lock((*(v1 + 464) + v3));
      v4 = (*(v1 + 464) + v3);
      *&v4[-7].__opaque[40] = 0;
      result = pthread_mutex_unlock(v4);
      ++v2;
      v3 += 528;
    }

    while (v2 < *(v1 + 456));
  }

  return result;
}

uint64_t read_output_and_wait(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6, int a7, int64x2_t *a8, _BYTE *a9)
{
  pthread_mutex_lock((a1 + 552));
  v17.i64[0] = 999999999;
  v26 = v17;
  while (1)
  {
    v18 = *a4;
    while (1)
    {
      v19 = lzma_outq_read((a1 + 488), a2, a3, a4, a5, 0, 0);
      if (v19 != 1)
      {
        break;
      }

      lzma_outq_enable_partial_output((a1 + 488), worker_enable_partial_update);
    }

    v20 = v19;
    if (v19)
    {
      break;
    }

    if (*a4 == a5 && *a4 != v18)
    {
      *(a1 + 759) = 1;
    }

    v20 = *(a1 + 444);
    if (v20)
    {
      if (*(a1 + 757))
      {
        break;
      }

      *(a1 + 448) = 11;
    }

    if (a6 && *(a1 + 672) - (*(a1 + 696) + *(a1 + 528)) >= *(a1 + 728) && *(a1 + 536) < *(a1 + 544) && (*(a1 + 456) < *(a1 + 452) || *(a1 + 472)))
    {
      v20 = 0;
      *a6 = 1;
      goto LABEL_35;
    }

    if (!a7 || !*(a1 + 536) || (lzma_outq_is_readable((a1 + 488)) & 1) != 0 || (v22 = *(a1 + 480)) != 0 && *(v22 + 88) && *(*(v22 + 64) + 32) == *(v22 + 24))
    {
      v20 = 0;
      goto LABEL_35;
    }

    v23 = *(a1 + 440);
    if (v23)
    {
      if ((*a9 & 1) == 0)
      {
        *a9 = 1;
        a8->i64[0] = v23 / 0x3E8uLL;
        a8->i64[1] = 1000000 * (v23 % 0x3E8);
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(*(a1 + 664), &__tp);
        v24 = vaddq_s64(*a8, __tp);
        *a8 = vaddq_s64(v24, vandq_s8(vdupq_lane_s64(vcgtq_s64(vdupq_laneq_s64(v24, 1), v26).i64[0], 0), xmmword_2990C1050));
      }

      if (pthread_cond_timedwait((a1 + 616), (a1 + 552), a8))
      {
        v20 = 101;
LABEL_35:
        pthread_mutex_unlock((a1 + 552));
        return v20;
      }
    }

    else
    {
      pthread_cond_wait((a1 + 616), (a1 + 552));
    }
  }

  pthread_mutex_unlock((a1 + 552));
  if (v20 != 101)
  {
    threads_stop(a1);
  }

  return v20;
}

uint64_t get_thread(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 552));
  v4 = *(a1 + 472);
  if (v4)
  {
    v5 = *(v4 + 384);
    *(a1 + 472) = *(v4 + 392);
    *(a1 + 480) = v4;
    *(a1 + 704) -= v5;
  }

  pthread_mutex_unlock((a1 + 552));
  v6 = *(a1 + 480);
  if (v6)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 464);
  if (v8 || (v8 = lzma_alloc(528 * *(a1 + 452), a2), (*(a1 + 464) = v8) != 0))
  {
    v6 = &v8[528 * *(a1 + 456)];
    if (!pthread_mutex_init((v6 + 400), 0))
    {
      *(v6 + 128) = 0;
      if (!pthread_cond_init((v6 + 464), 0))
      {
        *v6 = 0;
        *(v6 + 1) = 0;
        *(v6 + 2) = 0;
        *(v6 + 6) = a1;
        *(v6 + 7) = a2;
        *(v6 + 8) = 0;
        *(v6 + 12) = 0;
        *(v6 + 13) = -1;
        *(v6 + 7) = 0u;
        *(v6 + 8) = 0u;
        *(v6 + 9) = 0u;
        *(v6 + 10) = 0u;
        *(v6 + 48) = 0;
        v10 = -1;
        v11 = 0;
        pthread_sigmask(3, &v10, &v11);
        v9 = pthread_create(v6 + 65, 0, worker_decoder, v6);
        pthread_sigmask(3, &v11, 0);
        if (!v9)
        {
          ++*(a1 + 456);
          *(a1 + 480) = v6;
LABEL_4:
          result = 0;
          *(v6 + 3) = 0;
          *(v6 + 4) = 0;
          *(v6 + 5) = 0;
          *(v6 + 9) = 0;
          *(v6 + 10) = 0;
          *(v6 + 22) = 0;
          return result;
        }

        pthread_cond_destroy((v6 + 464));
      }

      pthread_mutex_destroy((v6 + 400));
    }
  }

  return 5;
}

uint64_t worker_enable_partial_update(uint64_t a1)
{
  pthread_mutex_lock((a1 + 400));
  *(a1 + 88) = 1;
  pthread_cond_signal((a1 + 464));

  return pthread_mutex_unlock((a1 + 400));
}

uint64_t worker_decoder(uint64_t a1)
{
LABEL_1:
  pthread_mutex_lock((a1 + 400));
  while (1)
  {
    if (!*a1)
    {
      goto LABEL_8;
    }

    if (*a1 == 2)
    {
      break;
    }

    v2 = *(a1 + 32);
    *(a1 + 72) = v2;
    v3 = *(a1 + 24);
    v4 = *(a1 + 88);
    if (v3 != v2 || v4 == 1)
    {
      pthread_mutex_unlock((a1 + 400));
      v6 = *(a1 + 32);
      v7 = v3 - v6;
      v8 = v6 + 0x4000;
      if (v7 <= 0x4000)
      {
        v9 = v3;
      }

      else
      {
        v9 = v8;
      }

      v10 = (*(a1 + 120))(*(a1 + 96), *(a1 + 56), *(a1 + 8), a1 + 32, v9, *(a1 + 64) + 64, a1 + 40, *(*(a1 + 64) + 16), 0);
      if (v10)
      {
        v11 = v10;
        pthread_mutex_lock((a1 + 400));
        if (v11 == 1)
        {
          if (*(a1 + 24) == *(a1 + 16))
          {
            v11 = 1;
          }

          else
          {
            v11 = 11;
          }
        }

        if (*a1 != 2)
        {
          *a1 = 0;
        }

        pthread_mutex_unlock((a1 + 400));
        if (v11 == 1)
        {
          lzma_free(*(a1 + 8), *(a1 + 56));
          *(a1 + 8) = 0;
        }

        pthread_mutex_lock((*(a1 + 48) + 552));
        v12 = *(a1 + 48);
        v13 = *(a1 + 32);
        *(v12 + 736) = vaddq_s64(*(v12 + 736), v13);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        v14 = *(a1 + 64);
        *(v14 + 24) = v13.i64[1];
        *(v14 + 32) = *(a1 + 32);
        *(v14 + 40) = 1;
        *(v14 + 44) = v11;
        *(a1 + 64) = 0;
        if (v11 == 1)
        {
          v15 = *(a1 + 384);
          *(v12 + 696) -= *(a1 + 16) + v15;
          *(v12 + 704) += v15;
          *(a1 + 392) = *(v12 + 472);
          *(v12 + 472) = a1;
        }

        else if (!*(v12 + 444))
        {
          *(v12 + 444) = v11;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_1;
        }

        *(a1 + 88) = 2;
        pthread_mutex_lock((*(a1 + 48) + 552));
        v16 = *(a1 + 64);
        v12 = *(a1 + 48);
        *(v16 + 24) = *(a1 + 40);
        *(v16 + 32) = *(a1 + 32);
      }

      pthread_cond_signal((v12 + 616));
      pthread_mutex_unlock((*(a1 + 48) + 552));
      goto LABEL_1;
    }

LABEL_8:
    pthread_cond_wait((a1 + 464), (a1 + 400));
  }

  pthread_mutex_unlock((a1 + 400));
  lzma_free(*(a1 + 8), *(a1 + 56));
  lzma_next_end(a1 + 96, *(a1 + 56));
  pthread_mutex_destroy((a1 + 400));
  pthread_cond_destroy((a1 + 464));
  return 0;
}

uint64_t lzma_delta_coder_init(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    v6 = lzma_alloc(0x160uLL, a2);
    if (!v6)
    {
      return 5;
    }

    *a1 = v6;
    a1[4] = delta_coder_end;
    *v6 = 0;
    *(v6 + 1) = -1;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
  }

  v7 = *(a3 + 16);
  if (!v7)
  {
    return 8;
  }

  if (*v7)
  {
    return 8;
  }

  v8 = v7[1];
  if ((v8 - 257) < 0xFFFFFF00)
  {
    return 8;
  }

  *(v6 + 10) = v8;
  v6[88] = 0;
  *(v6 + 105) = 0u;
  *(v6 + 121) = 0u;
  *(v6 + 137) = 0u;
  *(v6 + 153) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 185) = 0u;
  *(v6 + 201) = 0u;
  *(v6 + 217) = 0u;
  *(v6 + 233) = 0u;
  *(v6 + 249) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 265) = 0u;
  *(v6 + 281) = 0u;
  *(v6 + 297) = 0u;
  *(v6 + 313) = 0u;
  *(v6 + 329) = 0u;

  return lzma_next_filter_init(v6, a2, (a3 + 24), 0);
}

void delta_coder_end(void *a1, uint64_t a2)
{
  lzma_next_end(a1, a2);

  lzma_free(a1, a2);
}

uint64_t lzma_delta_coder_memusage(_DWORD *a1)
{
  if (!a1 || *a1)
  {
    return -1;
  }

  if ((a1[1] - 257) < 0xFFFFFF00)
  {
    return -1;
  }

  return 352;
}

uint64_t lzma_delta_encoder_init(char **a1, uint64_t a2, uint64_t a3)
{
  a1[3] = delta_encode;
  a1[8] = delta_encoder_update;
  return lzma_delta_coder_init(a1, a2, a3);
}

uint64_t delta_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = *a7;
    result = v12(*a1, a2, a3, a4, a5, a6, a7);
    v15 = *a7 - v13;
    if (*a7 != v13)
    {
      v16 = (a6 + v13);
      v17 = a1 + 89;
      v18 = *(a1 + 80);
      v19 = *(a1 + 88);
      do
      {
        v20 = *(v17 + (v19 + v18));
        v21 = *v16;
        v22 = v19--;
        *(v17 + v22) = *v16;
        *v16++ = v21 - v20;
        --v15;
      }

      while (v15);
      *(a1 + 88) = v19;
    }
  }

  else
  {
    v23 = *a4;
    v24 = a5 - *a4;
    v25 = *a7;
    if (v24 >= a8 - *a7)
    {
      v24 = a8 - *a7;
    }

    if (v24)
    {
      v26 = (a3 + v23);
      v27 = (a6 + v25);
      v28 = a1 + 89;
      v29 = *(a1 + 80);
      v30 = *(a1 + 88);
      v31 = v24;
      do
      {
        v32 = *(v28 + (v30 + v29));
        v33 = *v26++;
        v34 = v30--;
        *(v28 + v34) = v33;
        *v27++ = v33 - v32;
        --v31;
      }

      while (v31);
      *(a1 + 88) = v30;
    }

    v35 = v24 + v23;
    *a4 = v35;
    *a7 = v24 + v25;
    v36 = v35 == a5;
    return a9 && v36;
  }

  return result;
}

uint64_t lzma_delta_props_encode(uint64_t a1, _BYTE *a2)
{
  if (lzma_delta_coder_memusage(a1) == -1)
  {
    return 11;
  }

  result = 0;
  *a2 = *(a1 + 4) - 1;
  return result;
}

uint64_t delta_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = *a7;
  result = (*(a1 + 24))(*a1);
  v12 = *a7 - v10;
  if (*a7 != v10)
  {
    v13 = (a6 + v10);
    v14 = a1 + 89;
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    do
    {
      v17 = *v13 + *(v14 + (v16 + v15));
      *v13++ = v17;
      v18 = v16--;
      *(v14 + v18) = v17;
      --v12;
    }

    while (v12);
    *(a1 + 88) = v16;
  }

  return result;
}

uint64_t lzma_delta_props_decode(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return 8;
  }

  v6 = lzma_alloc(0x28uLL, a2);
  if (!v6)
  {
    return 5;
  }

  v7 = v6;
  result = 0;
  v9 = *a3 + 1;
  *v7 = 0;
  v7[1] = v9;
  *a1 = v7;
  return result;
}

uint64_t lzma_simple_coder_init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, char a8, __n128 a9)
{
  v13 = *a1;
  if (*a1)
  {
    goto LABEL_2;
  }

  v20 = 2 * a6;
  v21 = lzma_alloc(2 * a6 + 144, a2);
  if (!v21)
  {
    return 5;
  }

  v13 = v21;
  *a1 = v21;
  a1[3] = simple_code;
  a1[4] = simple_coder_end;
  a1[8] = simple_coder_update;
  *v21 = 0;
  v21[1] = -1;
  a9 = 0uLL;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  v21[11] = a4;
  v21[14] = v20;
  if (a5)
  {
    v22 = lzma_alloc(a5, a2);
    *(v13 + 96) = v22;
    if (!v22)
    {
      return 5;
    }
  }

  else
  {
    v21[12] = 0;
  }

LABEL_2:
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = *v14;
    *(v13 + 104) = v15;
    if ((v15 & (a7 - 1)) != 0)
    {
      return 8;
    }
  }

  else
  {
    *(v13 + 104) = 0;
  }

  *(v13 + 81) = a8;
  *(v13 + 80) = 0;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;

  return lzma_next_filter_init(v13, a2, (a3 + 24), a9);
}

uint64_t simple_code(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  if (a9 == 1)
  {
    return 8;
  }

  v19 = *(a1 + 120);
  v18 = *(a1 + 128);
  v20 = (a1 + 120);
  if (v19 < v18)
  {
    lzma_bufcpy(a1 + 144, v20, v18, a6, a7, a8);
    v19 = *(a1 + 120);
    if (v19 < *(a1 + 128))
    {
      return 0;
    }

    if (*(a1 + 80))
    {
      return 1;
    }
  }

  v34 = a5;
  v35 = a3;
  v32 = a6;
  v33 = a4;
  v21 = (a1 + 136);
  v22 = *(a1 + 136);
  *(a1 + 128) = 0;
  v23 = *a7;
  v24 = v22 - v19;
  if (v22 != v19 && a8 - *a7 <= v24)
  {
    if (v19)
    {
      memmove((a1 + 144), (a1 + 144 + v19), v22 - v19);
      v22 = *(a1 + 136) - *(a1 + 120);
      *(a1 + 136) = v22;
      *(a1 + 120) = 0;
    }

    v28 = v35;
    goto LABEL_19;
  }

  if (v22 != v19)
  {
    memcpy((v32 + v23), (a1 + v19 + 144), v24);
  }

  *a7 = v24 + v23;
  result = copy_or_code(a1, a2, v35, v33, v34, v32, a7, a8, a9);
  if (!result)
  {
    v26 = *a7 - v23;
    if (*a7 == v23)
    {
      v27 = 0;
    }

    else
    {
      v30 = *a7 - v23;
      v27 = (*(a1 + 88))(*(a1 + 96), *(a1 + 104), *(a1 + 81), v32 + v23, v30);
      v26 = v30;
      *(a1 + 104) += v27;
    }

    v28 = v35;
    v22 = v26 - v27;
    *(a1 + 120) = 0;
    *(a1 + 136) = v26 - v27;
    if (*(a1 + 80) == 1)
    {
      *v21 = 0;
      return *(a1 + 80) == 1 && *v20 == *v21;
    }

    if (v26 != v27)
    {
      v31 = *a7 - v22;
      *a7 = v31;
      memcpy((a1 + 144), (v32 + v31), v22);
    }

LABEL_19:
    if (v22)
    {
      result = copy_or_code(a1, a2, v28, v33, v34, a1 + 144, (a1 + 136), *(a1 + 112), a9);
      if (result)
      {
        return result;
      }

      v29 = (*(a1 + 88))(*(a1 + 96), *(a1 + 104), *(a1 + 81), a1 + 144, *(a1 + 136));
      *(a1 + 104) += v29;
      *(a1 + 128) = v29;
      if (*(a1 + 80) == 1)
      {
        v29 = *(a1 + 136);
        *(a1 + 128) = v29;
      }

      lzma_bufcpy(a1 + 144, v20, v29, v32, a7, a8);
    }

    return *(a1 + 80) == 1 && *v20 == *v21;
  }

  return result;
}

void simple_coder_end(void **a1, uint64_t a2)
{
  lzma_next_end(a1, a2);
  lzma_free(a1[12], a2);

  lzma_free(a1, a2);
}

uint64_t copy_or_code(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v12 = *(a1 + 24);
  if (v12)
  {
    result = v12(*a1, a2, a3, a4, a5);
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      *(a1 + 80) = 1;
    }

    return 0;
  }

  lzma_bufcpy(a3, a4, a5, a6, a7, a8);
  result = 0;
  if (a9 == 3 && (*(a1 + 81) & 1) != 0)
  {
    if (*a4 == a5)
    {
      result = 0;
      *(a1 + 80) = 1;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t lzma_simple_props_size(int *a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = 4 * (*a2 != 0);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return 0;
}

uint64_t lzma_simple_props_encode(_DWORD *a1, _DWORD *a2)
{
  if (a1 && *a1)
  {
    *a2 = *a1;
  }

  return 0;
}

uint64_t lzma_simple_props_decode(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a4 != 4)
  {
    return 8;
  }

  v7 = lzma_alloc(4uLL, a2);
  if (!v7)
  {
    return 5;
  }

  v8 = v7;
  v9 = *a3;
  *v7 = *a3;
  if (v9)
  {
    result = 0;
    *a1 = v8;
  }

  else
  {
    lzma_free(v7, a2);
    return 0;
  }

  return result;
}

double x86_coder_init(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  if (!lzma_simple_coder_init(a1, a2, a3, x86_code, 8uLL, 5, 1, a4, a5))
  {
    result = NAN;
    **(*a1 + 96) = 0xFFFFFFFB00000000;
  }

  return result;
}

unint64_t x86_code(unsigned int *a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  v5 = a5 - 5;
  if (a5 < 5)
  {
    return 0;
  }

  result = 0;
  v8 = *a1;
  if (a2 - a1[1] <= 5)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = a2 - 5;
  }

  do
  {
    v10 = (a4 + result);
    if (*(a4 + result) - 234 <= 0xFFFFFFFD)
    {
      ++result;
      continue;
    }

    v11 = result + a2;
    if (result + a2 - v9 <= 5)
    {
      if (v11 != v9)
      {
        if (v11 - v9 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11 - v9;
        }

        do
        {
          v8 = (2 * v8) & 0xEE;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = v10[4];
    if ((v13 - 255) > 0xFFFFFF01)
    {
      v15 = 1;
    }

    else
    {
      if (x86_code_MASK_TO_ALLOWED_STATUS[(v8 >> 1) & 7] == 1 && v8 <= 0x1F)
      {
        v16 = (v13 << 24) | (v10[3] << 16) | (v10[2] << 8) | v10[1];
        v17 = v11 + 5;
        if (!a3)
        {
          v17 = -5 - v11;
        }

        v18 = v16 + v17;
        if (v8)
        {
          v19 = 8 * x86_code_MASK_TO_BIT_NUMBER[v8 >> 1];
          v20 = 24 - v19;
          for (i = -1 << -v19; ; v18 = v17 + (v18 ^ ~i))
          {
            v22 = (v18 >> v20);
            if (v22 != 255 && v22 != 0)
            {
              break;
            }
          }
        }

        v8 = 0;
        v10[4] = (v18 << 7) >> 31;
        v10[3] = BYTE2(v18);
        *(v10 + 1) = v18;
        result += 5;
        goto LABEL_35;
      }

      v15 = 17;
    }

    ++result;
    v8 = v15 | v8;
LABEL_35:
    v9 = v11;
  }

  while (result <= v5);
  *a1 = v8;
  a1[1] = v9;
  return result;
}

uint64_t powerpc_code(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 4)
  {
    return 0;
  }

  v6 = 0;
  v7 = -a2;
  v8 = a4 + 1;
  do
  {
    v10 = v8 + v6;
    v11 = *(a4 + v6);
    if ((v11 & 0xFC) == 0x48)
    {
      v12 = *(v10 + 2);
      if ((v12 & 3) == 1)
      {
        v13 = (v11 & 3) << 24;
        v14 = (v8 + v6);
        v15 = *(v8 + v6 + 1);
        v16 = v12 & 0xFC;
        v17 = a2 + v6;
        if (!a3)
        {
          v17 = v7;
        }

        v18 = v13 + v17 + v16;
        v19 = v18 + (*(v8 + v6) << 16) + (v15 << 8);
        *(v10 - 1) = HIBYTE(v19) & 3 | 0x48;
        *v14 = BYTE2(v19);
        v14[1] = (v18 + (v15 << 8)) >> 8;
        *(v10 + 2) = v18 | 1;
      }
    }

    result = v6 + 4;
    v20 = v6 + 8;
    v7 -= 4;
    v6 += 4;
  }

  while (v20 <= a5);
  return result;
}

uint64_t ia64_code(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 0x10)
  {
    return 0;
  }

  result = 0;
  v6 = 16;
  v7 = vdupq_n_s64(6uLL);
  v8 = vdupq_n_s64(2uLL);
  v9 = a4;
  do
  {
    v10 = 0;
    v11 = *(a4 + result);
    v12 = result + a2;
    result = v6;
    v13 = ia64_code_BRANCH_TABLE[v11 & 0x1F];
    if (a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = -v12;
    }

    v15 = v14 >> 4;
    v16 = 5;
    do
    {
      if ((v13 >> v10))
      {
        v17 = 0;
        v18 = 0;
        v19 = (v9 + (v16 >> 3));
        v20 = v19;
        do
        {
          v21 = *v20++;
          v18 += v21 << v17;
          v17 += 8;
        }

        while (v17 != 48);
        v22 = v18 >> (v16 & 7);
        if ((v22 & 0x1E000000E00) == 0xA000000000)
        {
          v23 = v15 + ((v22 >> 13) & 0xFFFFF | (v22 >> 16) & 0x100000);
          v24 = ((v22 & 0xFFFFFEAE000011FFLL | ((v23 & 0xFFFFF) << 13) & 0xFFFFFFEFFFFFFFFFLL | ((((v23 & 0x100000) >> 20) & 1) << 36)) << (v16 & 7)) | v18 & ~(-1 << (v16 & 7));
          v25 = 8;
          v26 = xmmword_2990BEF90;
          do
          {
            if (vmovn_s64(vcgtq_u64(v7, v26)).u8[0])
            {
              *v19 = v24 >> (v25 - 8);
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v26)).i32[1])
            {
              v19[1] = v24 >> v25;
            }

            v26 = vaddq_s64(v26, v8);
            v25 += 16;
            v19 += 2;
          }

          while (v25 != 56);
        }
      }

      ++v10;
      v16 += 41;
    }

    while (v10 != 3);
    v6 = result + 16;
    v9 += 16;
  }

  while (result + 16 <= a5);
  return result;
}

uint64_t arm_code(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 4)
  {
    return 0;
  }

  v6 = 0;
  v7 = -8 - a2;
  v8 = a4 + 1;
  do
  {
    v9 = (v8 + v6);
    if (*(v8 + v6 + 2) == 235)
    {
      v10 = *(v9 - 1);
      if (a3)
      {
        v11 = a2 + 8 + v6 + 4 * ((v9[1] << 16) | (*v9 << 8) | v10);
      }

      else
      {
        v11 = v7 + 4 * ((v9[1] << 16) + (*v9 << 8) + v10);
      }

      v9[1] = v11 >> 18;
      *(v8 + v6) = v11 >> 10;
      *(v9 - 1) = v11 >> 2;
    }

    result = v6 + 4;
    v12 = v6 + 8;
    v7 -= 4;
    v6 += 4;
  }

  while (v12 <= a5);
  return result;
}

uint64_t armthumb_code(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 4)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = (a4 + v6);
    v8 = *(a4 + v6 + 1);
    if ((v8 & 0xF8) == 0xF0)
    {
      v9 = v7[3];
      if ((~v9 & 0xF8) == 0)
      {
        v10 = ((v8 & 7) << 19) | (*(a4 + v6) << 11) | ((v9 & 7) << 8);
        v11 = v6 + 2;
        v12 = 2 * (v10 | *(a4 + v6 + 2));
        if (a3)
        {
          v13 = a2 + 4 + v6 + v12;
        }

        else
        {
          v13 = v12 - (v6 + a2) - 4;
        }

        v7[1] = (v13 >> 20) & 7 | 0xF0;
        *v7 = v13 >> 12;
        v7[3] = (v13 >> 9) | 0xF8;
        *(a4 + v11) = v13 >> 1;
        v6 = v11;
      }
    }

    result = v6 + 2;
    v14 = v6 + 6;
    v6 += 2;
  }

  while (v14 <= a5);
  return result;
}

uint64_t lzma_stream_encoder_mt(void *a1, _DWORD *a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = stream_encoder_mt_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 98) = 257;
      *(v5 + 100) = 1;
    }
  }

  return v4;
}

uint64_t stream_encoder_mt_init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 16) != stream_encoder_mt_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = stream_encoder_mt_init;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  v17 = 0;
  v15 = 0;
  result = get_options(a3, v18, &v17, &v16, &v15);
  if (!result)
  {
    if (lzma_raw_encoder_memusage(v17) == -1)
    {
      return 8;
    }

    v7 = a3[8];
    if (v7 > 0xF)
    {
      return 11;
    }

    if (!lzma_check_is_supported(v7))
    {
      return 3;
    }

    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 + 108);
LABEL_12:
      *v8 = 0;
      v10 = v15;
      *(v8 + 1) = v16;
      *(v8 + 51) = v10;
      *(v8 + 105) = 0;
      *(v8 + 56) = 0;
      if (v9 == a3[1])
      {
        threads_stop_0(v8, 1);
        v11 = a3[1];
      }

      else
      {
        threads_end_0(v8, a2);
        *(v8 + 53) = 0;
        *(v8 + 54) = 0;
        *(v8 + 55) = 0;
        v13 = lzma_alloc(568 * a3[1], a2);
        *(v8 + 53) = v13;
        if (!v13)
        {
          return 5;
        }

        v11 = a3[1];
        *(v8 + 108) = v11;
      }

      result = lzma_outq_init((v8 + 344), a2, v11);
      if (result)
      {
        return result;
      }

      *(v8 + 104) = a3[4];
      lzma_filters_free(v8 + 2, a2);
      lzma_filters_free(v8 + 12, a2);
      result = lzma_filters_copy(v17, v8 + 16, a2);
      if (result)
      {
        return result;
      }

      lzma_index_end(*(v8 + 22), a2);
      v14 = lzma_index_init(a2);
      *(v8 + 22) = v14;
      if (v14)
      {
        *(v8 + 66) = 0;
        *(v8 + 70) = a3[8];
        result = lzma_stream_header_encode(v8 + 66, (v8 + 320));
        if (!result)
        {
          *(v8 + 42) = 0;
          *(v8 + 57) = 0;
          *(v8 + 58) = 12;
        }

        return result;
      }

      return 5;
    }

    v12 = lzma_alloc(0x250uLL, a2);
    if (!v12)
    {
      return 5;
    }

    v8 = v12;
    *a1 = v12;
    if (!pthread_mutex_init((v12 + 472), 0))
    {
      *(v8 + 146) = 0;
      if (!pthread_cond_init((v8 + 536), 0))
      {
        v9 = 0;
        *(a1 + 24) = stream_encode_mt;
        *(a1 + 32) = stream_encoder_mt_end;
        *(a1 + 40) = get_progress;
        *(a1 + 64) = stream_encoder_mt_update;
        *(v8 + 2) = -1;
        *(v8 + 12) = -1;
        *(v8 + 24) = -1;
        *(v8 + 200) = 0u;
        *(v8 + 216) = 0u;
        *(v8 + 232) = 0u;
        *(v8 + 248) = 0u;
        *(v8 + 11) = 0u;
        *(v8 + 344) = 0u;
        *(v8 + 360) = 0u;
        *(v8 + 376) = 0u;
        *(v8 + 392) = 0u;
        *(v8 + 424) = 0u;
        goto LABEL_12;
      }

      pthread_mutex_destroy((v8 + 472));
    }

    lzma_free(v8, a2);
    *a1 = 0;
    return 5;
  }

  return result;
}

uint64_t lzma_stream_encoder_mt_memusage(uint64_t a1)
{
  memset(v14, 0, sizeof(v14));
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (get_options(a1, v14, &v13, &v12, &v11))
  {
    return -1;
  }

  v3 = *(a1 + 4);
  v4 = v12;
  result = lzma_raw_encoder_memusage(v13);
  if (result != -1)
  {
    v5 = result;
    result = lzma_outq_memusage(v11, v3);
    if (result != -1)
    {
      v6 = *(a1 + 4);
      if (-33361 - 568 * v6 < v4 * v3)
      {
        return -1;
      }

      v7 = v4 * v3 + 568 * v6 + 33360;
      if (__CFADD__(v7, v5 * v3))
      {
        return -1;
      }

      v8 = v7 + v5 * v3;
      v9 = __CFADD__(v8, result);
      v10 = v8 + result;
      if (v9)
      {
        return -1;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t get_options(uint64_t a1, uint64_t *a2, uint64_t **a3, unint64_t *a4, unint64_t *a5)
{
  if (!a1)
  {
    return 11;
  }

  if (*a1)
  {
    return 8;
  }

  if ((*(a1 + 4) - 16385) < 0xFFFFC000)
  {
    return 8;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    v11 = lzma_easy_preset(a2, *(a1 + 20));
    v9 = a2;
    if (v11)
    {
      return 8;
    }
  }

  *a3 = v9;
  v12 = *(a1 + 8);
  if (v12)
  {
    if (!(v12 >> 50))
    {
      *a4 = v12;
      goto LABEL_11;
    }

    return 8;
  }

  v12 = lzma_mt_block_size(v9);
  *a4 = v12;
  if (!v12)
  {
    return 8;
  }

LABEL_11:
  v14 = lzma_block_buffer_bound64(v12);
  *a5 = v14;
  if (v14)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t stream_encode_mt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8, int64x2_t a9, int a10)
{
  v14 = *a1;
  v15 = 11;
  if (*a1 > 1)
  {
    if (v14 == 2)
    {
      goto LABEL_88;
    }

    if (v14 == 3)
    {
      goto LABEL_7;
    }

    return v15;
  }

  if (v14)
  {
    if (v14 != 1)
    {
      return v15;
    }
  }

  else
  {
    lzma_bufcpy(a1 + 320, (a1 + 336), 12, a6, a7, a8);
    if (*(a1 + 336) < 0xCuLL)
    {
      return 0;
    }

    *(a1 + 336) = 0;
    *a1 = 1;
  }

  v44 = 0;
  v47 = 0;
  v48 = 0;
  v46.tv_sec = 0;
  v46.tv_nsec = 0;
  a9.i64[0] = 999999999;
  v43 = a9;
  while (1)
  {
    do
    {
      pthread_mutex_lock((a1 + 472));
      v15 = *(a1 + 420);
      if (!v15)
      {
        v15 = lzma_outq_read((a1 + 344), a2, a6, a7, a8, &v48, &v47);
      }

      pthread_mutex_unlock((a1 + 472));
      if (v15 != 1)
      {
        if (!v15)
        {
          goto LABEL_19;
        }

        goto LABEL_83;
      }

      v19 = lzma_index_append(*(a1 + 176), a2, v48, v47);
      if (v19)
      {
        v15 = v19;
LABEL_83:
        threads_stop_0(a1, 0);
        return v15;
      }
    }

    while (*a7 < a8);
    while (1)
    {
LABEL_19:
      v20 = *a4;
      v21 = *(a1 + 448);
      if (*a4 >= a5)
      {
        if (!a10 || !v21)
        {
          goto LABEL_61;
        }

        goto LABEL_37;
      }

      if (v21)
      {
        goto LABEL_37;
      }

      if (*(a1 + 392) >= *(a1 + 400))
      {
        goto LABEL_35;
      }

      v22 = lzma_outq_prealloc_buf(a1 + 344, a2, *(a1 + 408));
      if (v22 || *(a1 + 96) == -1 && (v22 = lzma_filters_copy((a1 + 16), (a1 + 96), a2), v22))
      {
        v15 = v22;
        goto LABEL_36;
      }

      pthread_mutex_lock((a1 + 472));
      v23 = *(a1 + 440);
      if (v23)
      {
        *(a1 + 448) = v23;
        *(a1 + 440) = *(v23 + 432);
      }

      pthread_mutex_unlock((a1 + 472));
      v24 = *(a1 + 448);
      if (v24)
      {
        goto LABEL_31;
      }

      v32 = *(a1 + 436);
      if (v32 == *(a1 + 432))
      {
        goto LABEL_35;
      }

      v24 = *(a1 + 424) + 568 * v32;
      v37 = lzma_alloc(*(a1 + 8), a2);
      *(v24 + 8) = v37;
      if (v37)
      {
        if (!pthread_mutex_init((v24 + 440), 0))
        {
          *(v24 + 552) = 0;
          if (!pthread_cond_init((v24 + 504), 0))
          {
            *v24 = 0;
            *(v24 + 32) = a1;
            *(v24 + 40) = a2;
            *(v24 + 48) = 0;
            *(v24 + 56) = 0;
            *(v24 + 64) = 0;
            *(v24 + 72) = -1;
            *(v24 + 80) = 0u;
            *(v24 + 96) = 0u;
            *(v24 + 112) = 0u;
            *(v24 + 128) = 0u;
            *(v24 + 352) = -1;
            *v49 = 0xFFFFFFFFLL;
            pthread_sigmask(3, v49, &v49[4]);
            v38 = pthread_create((v24 + 560), 0, worker_start, v24);
            pthread_sigmask(3, &v49[4], 0);
            if (!v38)
            {
              ++*(a1 + 436);
              *(a1 + 448) = v24;
LABEL_31:
              pthread_mutex_lock((v24 + 440));
              v25 = *(a1 + 448);
              *v25 = 1;
              *(v25 + 16) = 0;
              buf = lzma_outq_get_buf(a1 + 344, 0);
              v27 = *(a1 + 448);
              *(v27 + 24) = buf;
              lzma_filters_free((v27 + 352), a2);
              v28 = *(a1 + 448);
              v28[22] = *(a1 + 96);
              v29 = *(a1 + 112);
              v30 = *(a1 + 128);
              v31 = *(a1 + 160);
              v28[25] = *(a1 + 144);
              v28[26] = v31;
              v28[23] = v29;
              v28[24] = v30;
              *(a1 + 96) = -1;
              pthread_cond_signal((*(a1 + 448) + 504));
              pthread_mutex_unlock((*(a1 + 448) + 440));
LABEL_35:
              v15 = 0;
              goto LABEL_36;
            }

            pthread_cond_destroy((v24 + 504));
          }

          pthread_mutex_destroy((v24 + 440));
        }

        lzma_free(*(v24 + 8), a2);
      }

      v15 = 5;
LABEL_36:
      v21 = *(a1 + 448);
      if (!v21)
      {
        goto LABEL_59;
      }

LABEL_37:
      v33 = *(v21 + 8);
      *&v49[4] = *(v21 + 16);
      lzma_bufcpy(a3, a4, a5, v33, &v49[4], *(a1 + 8));
      if (*&v49[4] == *(a1 + 8))
      {
        v34 = 1;
      }

      else
      {
        v35 = a10 && *a4 == a5;
        v34 = v35;
      }

      pthread_mutex_lock((*(a1 + 448) + 440));
      v36 = *(a1 + 448);
      if (!*v36)
      {
        break;
      }

      *(v36 + 16) = *&v49[4];
      if (v34)
      {
        *v36 = 2;
        pthread_cond_signal((v36 + 504));
        pthread_mutex_unlock((*(a1 + 448) + 440));
        *(a1 + 448) = 0;
      }

      else
      {
        pthread_cond_signal((v36 + 504));
        pthread_mutex_unlock((*(a1 + 448) + 440));
      }
    }

    pthread_mutex_unlock((v36 + 440));
    pthread_mutex_lock((a1 + 472));
    v15 = *(a1 + 420);
    pthread_mutex_unlock((a1 + 472));
LABEL_59:
    if (v15)
    {
      goto LABEL_83;
    }

    v20 = *a4;
LABEL_61:
    if (v20 == a5)
    {
      break;
    }

LABEL_67:
    if (*a7 == a8)
    {
      return 0;
    }

    v39 = *(a1 + 416);
    if (!((v39 == 0) | v44 & 1))
    {
      v46.tv_sec = v39 / 0x3E8uLL;
      v46.tv_nsec = 1000000 * (v39 % 0x3E8);
      *&v49[4] = 0;
      *&v49[12] = 0;
      clock_gettime(*(a1 + 584), &v49[4]);
      v40 = vaddq_s64(v46, *&v49[4]);
      v46 = vaddq_s64(v40, vandq_s8(vdupq_lane_s64(vcgtq_s64(vdupq_laneq_s64(v40, 1), v43).i64[0], 0), xmmword_2990C1050));
      v44 = 1;
    }

    pthread_mutex_lock((a1 + 472));
LABEL_71:
    for (i = 0; (v20 >= a5 || !*(a1 + 440) || *(a1 + 392) >= *(a1 + 400)) && (lzma_outq_is_readable((a1 + 344)) & 1) == 0 && *(a1 + 420) == 0 && !i; i = pthread_cond_timedwait((a1 + 536), (a1 + 472), &v46) != 0)
    {
      if (!*(a1 + 416))
      {
        pthread_cond_wait((a1 + 536), (a1 + 472));
        goto LABEL_71;
      }
    }

    pthread_mutex_unlock((a1 + 472));
    if (i)
    {
      return 101;
    }
  }

  if (!a10)
  {
    return 0;
  }

  if (a10 == 4)
  {
    return 1;
  }

  if (*(a1 + 392))
  {
    goto LABEL_67;
  }

  if (a10 == 2)
  {
    return 1;
  }

  if (a10 != 3)
  {
    goto LABEL_67;
  }

  v15 = lzma_index_encoder_init(a1 + 184, a2, *(a1 + 176));
  if (!v15)
  {
    *a1 = 2;
    *(a1 + 464) += lzma_index_size(*(a1 + 176)) + 12;
LABEL_88:
    v15 = (*(a1 + 208))(*(a1 + 184), a2, 0, 0, 0, a6, a7, a8, 0);
    if (v15 == 1)
    {
      *(a1 + 272) = lzma_index_size(*(a1 + 176));
      if (lzma_stream_footer_encode(a1 + 264, a1 + 320))
      {
        return 11;
      }

      *a1 = 3;
LABEL_7:
      lzma_bufcpy(a1 + 320, (a1 + 336), 12, a6, a7, a8);
      return *(a1 + 336) > 0xBuLL;
    }
  }

  return v15;
}

void stream_encoder_mt_end(uint64_t a1, uint64_t a2)
{
  threads_end_0(a1, a2);
  lzma_outq_end((a1 + 344), a2);
  lzma_filters_free((a1 + 16), a2);
  lzma_filters_free((a1 + 96), a2);
  lzma_next_end(a1 + 184, a2);
  lzma_index_end(*(a1 + 176), a2);
  pthread_cond_destroy((a1 + 536));
  pthread_mutex_destroy((a1 + 472));

  lzma_free(a1, a2);
}

uint64_t get_progress(uint64_t a1, void *a2, void *a3)
{
  pthread_mutex_lock((a1 + 472));
  *a2 = *(a1 + 456);
  *a3 = *(a1 + 464);
  if (*(a1 + 436))
  {
    v6 = 0;
    v7 = 440;
    do
    {
      pthread_mutex_lock((*(a1 + 424) + v7));
      v8 = (*(a1 + 424) + v7);
      *a2 += *&v8[-7].__opaque[48];
      *a3 += v8[-6].__sig;
      pthread_mutex_unlock(v8);
      ++v6;
      v7 += 568;
    }

    while (v6 < *(a1 + 436));
  }

  return pthread_mutex_unlock((a1 + 472));
}

uint64_t stream_encoder_mt_update(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*a1 > 1u || *(a1 + 448))
  {
    v4 = 11;
  }

  else if (lzma_raw_encoder_memusage(a3) == -1)
  {
    v4 = 8;
  }

  else
  {
    v4 = lzma_filters_copy(a3, v11, a2);
    if (!v4)
    {
      lzma_filters_free((a1 + 16), a2);
      lzma_filters_free((a1 + 96), a2);
      v9 = v11[3];
      *(a1 + 48) = v11[2];
      *(a1 + 64) = v9;
      *(a1 + 80) = v11[4];
      v10 = v11[1];
      *(a1 + 16) = v11[0];
      *(a1 + 32) = v10;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void threads_end_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 436))
  {
    v4 = 0;
    v5 = 440;
    do
    {
      pthread_mutex_lock((*(a1 + 424) + v5));
      v6 = *(a1 + 424) + v5;
      *(v6 - 440) = 4;
      pthread_cond_signal((v6 + 64));
      pthread_mutex_unlock((*(a1 + 424) + v5));
      ++v4;
      v7 = *(a1 + 436);
      v5 += 568;
    }

    while (v4 < v7);
    if (v7)
    {
      v8 = 0;
      v9 = 560;
      do
      {
        pthread_join(*(*(a1 + 424) + v9), 0);
        ++v8;
        v9 += 568;
      }

      while (v8 < *(a1 + 436));
    }
  }

  v10 = *(a1 + 424);

  lzma_free(v10, a2);
}

uint64_t threads_stop_0(uint64_t result, int a2)
{
  if (*(result + 436))
  {
    v3 = result;
    v4 = 0;
    v5 = 440;
    do
    {
      pthread_mutex_lock((*(v3 + 424) + v5));
      v6 = *(v3 + 424) + v5;
      *(v6 - 440) = 3;
      pthread_cond_signal((v6 + 64));
      result = pthread_mutex_unlock((*(v3 + 424) + v5));
      ++v4;
      v7 = *(v3 + 436);
      v5 += 568;
    }

    while (v4 < v7);
    if (v7 && a2)
    {
      v8 = 0;
      do
      {
        pthread_mutex_lock((*(v3 + 424) + 568 * v8 + 440));
        v9 = *(v3 + 424);
        for (i = v9 + 568 * v8; *i; i = v9 + 568 * v8)
        {
          pthread_cond_wait((i + 504), (i + 440));
          v9 = *(v3 + 424);
        }

        result = pthread_mutex_unlock((v9 + 568 * v8++ + 440));
      }

      while (v8 < *(v3 + 436));
    }
  }

  return result;
}

uint64_t worker_start(uint64_t a1)
{
  v2 = (a1 + 352);
  v3 = a1 + 184;
  while (1)
  {
    pthread_mutex_lock((a1 + 440));
    while (1)
    {
      v4 = *a1;
      if (*a1 == 3)
      {
        *a1 = 0;
        pthread_cond_signal((a1 + 504));
        v4 = *a1;
      }

      if (v4)
      {
        break;
      }

      pthread_cond_wait((a1 + 504), (a1 + 440));
    }

    pthread_mutex_unlock((a1 + 440));
    v27 = 0;
    if (v4 < 3)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 280);
      v7 = *(*(a1 + 24) + 16);
      v8 = *(v5 + 8);
      *(a1 + 144) = 0;
      *(a1 + 152) = v6;
      *(a1 + 160) = v7;
      *(a1 + 168) = v8;
      *(a1 + 176) = v2;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 96) = 0u;
      *(v3 + 112) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 144) = 0u;
      *(v3 + 160) = 0;
      v9 = lzma_block_header_size(a1 + 144);
      if (v9 || (v9 = lzma_block_encoder_init(a1 + 64, *(a1 + 40), a1 + 144)) != 0)
      {
        worker_error(a1, v9);
        v4 = 3;
        goto LABEL_39;
      }

      v10 = 0;
      v27 = *(a1 + 148);
      v28 = 0;
      v11 = *(*(a1 + 24) + 16);
      do
      {
        pthread_mutex_lock((a1 + 440));
        v12 = v27;
        *(a1 + 48) = v28;
        *(a1 + 56) = v12;
        while (v10 == *(a1 + 16))
        {
          v4 = *a1;
          if (*a1 != 1)
          {
            goto LABEL_17;
          }

          pthread_cond_wait((a1 + 504), (a1 + 440));
        }

        v4 = *a1;
        v10 = *(a1 + 16);
LABEL_17:
        pthread_mutex_unlock((a1 + 440));
        if (v4 > 2)
        {
          goto LABEL_38;
        }

        if (v4 == 2)
        {
          v13 = 3;
        }

        else
        {
          v13 = 0;
        }

        if ((v10 - v28) <= 0x4000)
        {
          v14 = v10;
        }

        else
        {
          v13 = 0;
          v14 = v28 + 0x4000;
        }

        v15 = (*(a1 + 88))(*(a1 + 64), *(a1 + 40), *(a1 + 8), &v28, v14, *(a1 + 24) + 64, &v27, v11, v13);
        if (v15)
        {
          v16 = v15;
          if (v15 == 1)
          {
            v17 = lzma_block_header_encode(a1 + 144, (*(a1 + 24) + 64));
            if (!v17)
            {
              goto LABEL_37;
            }

            v16 = v17;
          }

          v18 = a1;
LABEL_33:
          worker_error(v18, v16);
          v4 = 3;
          goto LABEL_38;
        }
      }

      while (v27 < v11);
      pthread_mutex_lock((a1 + 440));
      while (1)
      {
        v4 = *a1;
        if (*a1 != 1)
        {
          break;
        }

        pthread_cond_wait((a1 + 504), (a1 + 440));
      }

      v19 = *(a1 + 16);
      pthread_mutex_unlock((a1 + 440));
      if (v4 <= 2)
      {
        v27 = 0;
        if (lzma_block_uncomp_encode(a1 + 144, *(a1 + 8), v19, *(a1 + 24) + 64, &v27, v11))
        {
          v18 = a1;
          v16 = 11;
          goto LABEL_33;
        }

LABEL_37:
        v20 = lzma_block_unpadded_size(a1 + 144);
        v21 = *(a1 + 24);
        *(v21 + 48) = v20;
        *(v21 + 56) = *(a1 + 168);
        v4 = 2;
      }
    }

LABEL_38:
    if (v4 == 4)
    {
      break;
    }

LABEL_39:
    pthread_mutex_lock((a1 + 440));
    if (*a1 != 4)
    {
      *a1 = 0;
      pthread_cond_signal((a1 + 504));
    }

    pthread_mutex_unlock((a1 + 440));
    pthread_mutex_lock((*(a1 + 32) + 472));
    v22 = *(a1 + 24);
    v23 = v27;
    if (v4 == 2)
    {
      *(v22 + 24) = v27;
      *(v22 + 40) = 1;
    }

    v24 = *(a1 + 32);
    v25 = *(v24 + 464);
    *(v24 + 456) += *(v22 + 56);
    *(v24 + 464) = v25 + v23;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 432) = *(v24 + 440);
    *(v24 + 440) = a1;
    pthread_cond_signal((v24 + 536));
    pthread_mutex_unlock((*(a1 + 32) + 472));
  }

  lzma_filters_free(v2, *(a1 + 40));
  pthread_mutex_destroy((a1 + 440));
  pthread_cond_destroy((a1 + 504));
  lzma_next_end(a1 + 64, *(a1 + 40));
  lzma_free(*(a1 + 8), *(a1 + 40));
  return 0;
}

uint64_t worker_error(uint64_t a1, int a2)
{
  pthread_mutex_lock((*(a1 + 32) + 472));
  v4 = *(a1 + 32);
  if (!*(v4 + 420))
  {
    *(v4 + 420) = a2;
  }

  pthread_cond_signal((v4 + 536));
  v5 = (*(a1 + 32) + 472);

  return pthread_mutex_unlock(v5);
}

uint64_t sparc_code(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 >= 4)
  {
    v6 = 0;
    v7 = -a2;
    v8 = a4 + 1;
    while (1)
    {
      v9 = *(a4 + v6);
      if (v9 == 127)
      {
        v10 = *(v8 + v6);
        if (v10 >= 0xC0)
        {
          v11 = v6 | 1;
          goto LABEL_10;
        }
      }

      else if (v9 == 64)
      {
        v10 = *(v8 + v6);
        if (v10 < 0x40)
        {
          v11 = v6 + 1;
LABEL_10:
          v12 = (v9 << 24) | (v10 << 16);
          v13 = v8 + v6;
          v14 = v12 | (*(v8 + v6 + 1) << 8) | *(v8 + v6 + 2);
          v15 = a2 + v6;
          if (!a3)
          {
            v15 = v7;
          }

          v16 = v15 + 4 * v14;
          v17 = (v16 << 7) >> 9;
          *(a4 + v6) = HIBYTE(v17) & 0x3F | 0x40;
          *(a4 + v11) = (v17 & 0x3FC00000 | (v16 >> 2) & 0x3FFFFF) >> 16;
          *(v13 + 1) = v16 >> 10;
          *(v13 + 2) = v16 >> 2;
        }
      }

      result = v6 + 4;
      v18 = v6 + 8;
      v7 -= 4;
      v6 += 4;
      if (v18 > a5)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t lzma_encode(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*(a2 + 104) == 1)
  {
    return 8;
  }

  else
  {
    return lzma_lzma_encode(a1, a2, a3, a4, a5, 0xFFFFFFFF);
  }
}