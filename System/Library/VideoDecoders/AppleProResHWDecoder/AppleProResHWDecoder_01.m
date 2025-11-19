uint64_t decodeSliceTask(int *a1)
{
  if (a1[7] >= 1)
  {
    v2 = a1[6];
    v3 = *a1;
    v4 = *(a1 + 2);
    do
    {
      v5 = a1[16];
      v6 = *(a1 + 68);
      decodeSlice(v3, *(a1 + 1), v4);
      v4 = *(a1 + 2);
      v3 += *(*(v4 + 40) + 2 * v2++);
    }

    while (v2 < a1[7] + a1[6]);
  }

  pthread_mutex_lock(*(a1 + 7));
  v7 = *(a1 + 5);
  v8 = *v7 + 1;
  *v7 = v8;
  if (v8 == a1[8])
  {
    pthread_cond_signal(*(a1 + 6));
  }

  pthread_mutex_unlock(*(a1 + 7));
  MEMORY[0x277CAF790](a1, 0x1030C40C3C8D92FLL);
  return 0;
}

void ProResHWAnalyzer::ProResHWAnalyzer(ProResHWAnalyzer *this, int a2, int a3)
{
  *(this + 1) = 0;
  *(this + 6) = a3;
  *(this + 7) = a2;
  operator new[]();
}

void ProResHWAnalyzer::~ProResHWAnalyzer(ProResHWAnalyzer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    ThreadPool::~ThreadPool(v2);
    MEMORY[0x277CAF790]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x277CAF770](v3, 0x1000C8077774924);
  }
}

uint64_t ProResHWAnalyzer::parseProResPicture(int *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  v8 = 0;
  v37 = *MEMORY[0x277D85DE8];
  *a4 = *a2 >> 3;
  *(a4 + 1) = bswap32(*(a2 + 1));
  v9 = (*(a2 + 7) >> 4) & 3;
  a4[8] = (*(a2 + 7) >> 4) & 3;
  v10 = *(a3 + 8) >> (*(a3 + 11) != 0);
  v11 = (*(a3 + 6) + 15) >> 4;
  *(a4 + 3) = v10;
  *(a4 + 4) = v11;
  *(a4 + 5) = (v10 + 15) >> 4;
  v12 = 1 << v9;
  do
  {
    if (v11 >= v12)
    {
      v13 = &a4[v8 + 48];
      do
      {
        *v13++ = v12;
        v11 -= v12;
        ++v8;
      }

      while (v11 >= v12);
    }

    v12 >>= 1;
  }

  while (v11);
  *(a4 + 6) = v8;
  v14 = a2 + *a4;
  v15 = a1[6];
  if (v15)
  {
    v16 = *(a4 + 5);
    v17 = a1[6];
    v18 = (a2 + *a4);
    do
    {
      v19 = *v18++;
      *v16++ = bswap32(v19) >> 16;
      --v17;
    }

    while (v17);
  }

  if (a5)
  {
    v20 = v14 + (2 * v15);
    if (*(a1 + 1))
    {
      pthread_cond_init(&v36, 0);
      pthread_mutex_init(&v35, 0);
      if (a1[6])
      {
        operator new();
      }

      pthread_mutex_lock(&v35);
      gettimeofday(&v29, 0);
      v30.tv_sec = v29.tv_sec + 3;
      v30.tv_nsec = 1000 * v29.tv_usec;
      if (*(a4 + 5))
      {
        do
        {
          v21 = pthread_cond_timedwait(&v36, &v35, &v30);
          if (*(a4 + 5))
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 0;
          }
        }

        while (v22);
        v23 = v21;
        pthread_mutex_unlock(&v35);
        if (v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v24 = *a1;
          *buf = 67109378;
          v32 = v24;
          v33 = 2080;
          v34 = "parseProResPicture";
          _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: threadpool couldn't complete task", buf, 0x12u);
        }
      }

      else
      {
        pthread_mutex_unlock(&v35);
      }

      pthread_cond_destroy(&v36);
      pthread_mutex_destroy(&v35);
    }

    else if (v15)
    {
      v25 = 0;
      do
      {
        v26 = a1[7];
        decodeSlice(v20, a3, a4);
        v20 += *(*(a4 + 5) + 2 * v25++);
      }

      while (v25 < a1[6]);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ProResHWAnalyzer::parseProResFrame(int *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a3 = bswap32(*a2);
  v4 = bswap32(*(a2 + 8)) >> 16;
  *(a3 + 4) = v4;
  *(a3 + 6) = bswap32(*(a2 + 16)) >> 16;
  *(a3 + 8) = bswap32(*(a2 + 18)) >> 16;
  *(a3 + 10) = *(a2 + 20) >> 6;
  *(a3 + 11) = (*(a2 + 20) >> 2) & 3;
  v5 = *(a2 + 27);
  *(a3 + 12) = (v5 & 2) != 0;
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 + 28);
  }

  else
  {
    v6 = 4;
  }

  *(a3 + 13) = v6;
  ProResHWAnalyzer::parseProResPicture(a1, a2 + 8 + v4, a3, (a3 + 16), a4);
  return 0;
}

uint64_t findIndexPow3below(unsigned int a1, unsigned __int16 *a2)
{
  if (a2[1] >= a1)
  {
    return 0;
  }

  if (a2[2] >= a1)
  {
    return 1;
  }

  if (a2[3] >= a1)
  {
    return 2;
  }

  if (a2[4] >= a1)
  {
    return 3;
  }

  if (a2[5] >= a1)
  {
    return 4;
  }

  if (a2[6] >= a1)
  {
    return 5;
  }

  return 6;
}

uint64_t extractEstSizeFromIndex(_WORD *a1, int a2)
{
  v2 = 0;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = a1[8] + *a1;
        v4 = a1[16];
        return (v3 + v4);
      case 1:
        v3 = a1[9] + a1[1];
        v4 = a1[17];
        return (v3 + v4);
      case 2:
        v3 = a1[10] + a1[2];
        v4 = a1[18];
        return (v3 + v4);
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = a1[11] + a1[3];
        v4 = a1[19];
      }

      else
      {
        v3 = a1[12] + a1[4];
        v4 = a1[20];
      }

      return (v3 + v4);
    }

    if (a2 == 5)
    {
      v3 = a1[13] + a1[5];
      v4 = a1[21];
      return (v3 + v4);
    }

    if (a2 == 6)
    {
      v3 = a1[14] + a1[6];
      v4 = a1[22];
      return (v3 + v4);
    }
  }

  return v2;
}

uint64_t ProResHWAnalyzer::interpolateSize(uint64_t a1, __int128 *a2, int a3, int a4, int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v27[0] = a3;
  for (i = 1; i != 7; ++i)
  {
    a3 *= 3;
    v27[i] = a3;
  }

  v8 = qScale[a4];
  if (v27[1] >= v8)
  {
    v9 = 0;
  }

  else if (v27[2] >= v8)
  {
    v9 = 1;
  }

  else if (v27[3] >= v8)
  {
    v9 = 2;
  }

  else if (v27[4] >= v8)
  {
    v9 = 3;
  }

  else if (v27[5] >= v8)
  {
    v9 = 4;
  }

  else if (v27[6] >= v8)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = v9 + 1;
  v11 = a2[1];
  v24 = *a2;
  v25 = v11;
  v26 = a2[2];
  v12 = extractEstSizeFromIndex(&v24, v9);
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  v26 = a2[2];
  v14 = extractEstSizeFromIndex(&v24, v9 + 1);
  switch(a5)
  {
    case 0:
      v22 = v27[v9];
      v21 = v12 + ((-(v12 - v14) / (v22 - v27[v10])) * (v22 - v8));
      goto LABEL_23;
    case 1:
      v17 = (v12 - v14);
      LOWORD(v15) = v27[v9];
      *&v18 = log(v15);
      v19 = *&v18;
      LOWORD(v18) = v27[v10];
      v20 = v19 - log(v18);
      v21 = v12 - (v17 / v20) * (v19 - log(v8));
LABEL_23:
      result = v21;
      break;
    case 2:
      result = v12;
      break;
    default:
      result = 0;
      break;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProResHWAnalyzer::getEstimatedSizeForSlice(ProResHWAnalyzer *this, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v5 = &a2[48 * a3];
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = v5[2];
  return ProResHWAnalyzer::interpolateSize(this, v8, a4, a5, 1);
}

void ProResHWAnalyzer::findMinMaxlastNZPos(ProResHWAnalyzer *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5)
{
  if ((a5 & 7) != 0)
  {
    ProResHWAnalyzer::findMinMaxlastNZPos();
  }

  *a3 = -1;
  *a4 = 0;
  if (a5)
  {
    v5 = a5 >> 3;
    if (a5 >> 3 <= 1)
    {
      v5 = 1;
    }

    v6 = vdupq_n_s64(0x3FuLL);
    do
    {
      v7 = *a3;
      v8 = *a2;
      v9 = (*a2 >> 6) & 0x3FLL;
      if ((*a2 & 0x3FuLL) < v9)
      {
        v9 = *a2 & 0x3FLL;
      }

      if (((v8 >> 12) & 0x3F) >= ((v8 >> 18) & 0x3F))
      {
        v10 = (v8 >> 18) & 0x3F;
      }

      else
      {
        v10 = (v8 >> 12) & 0x3F;
      }

      if (v9 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      v12 = vdupq_n_s64(v8);
      v13 = vandq_s8(vshlq_u64(v12, xmmword_277819A00), v6);
      v14 = vandq_s8(vshlq_u64(v12, xmmword_277819A10), v6);
      v15 = vbslq_s8(vcgtq_u64(v14, v13), v13, v14);
      if (v15.i64[0] >= v15.i64[1])
      {
        v16 = v15.u64[1];
        if (v11 >= v15.i64[1])
        {
LABEL_16:
          if (v16 > v7)
          {
            goto LABEL_30;
          }

          if (v9 < v10)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v16 = v15.i64[0];
        if (v11 >= v15.i64[0])
        {
          goto LABEL_16;
        }
      }

      if (v9 < v10)
      {
        if (v9 > v7)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      if (v10 > v7)
      {
        goto LABEL_30;
      }

LABEL_24:
      v9 = v10;
LABEL_25:
      if (v15.i64[0] >= v15.i64[1])
      {
        LOBYTE(v7) = v15.i8[8];
        if (v9 >= v15.i64[1])
        {
          goto LABEL_30;
        }

LABEL_29:
        LOBYTE(v7) = v11;
        goto LABEL_30;
      }

      LOBYTE(v7) = v15.i8[0];
      if (v9 < v15.i64[0])
      {
        goto LABEL_29;
      }

LABEL_30:
      *a3 = v7;
      v17 = *a4;
      v18 = *a2;
      v19 = (*a2 >> 6) & 0x3FLL;
      if ((*a2 & 0x3FuLL) > v19)
      {
        v19 = *a2 & 0x3FLL;
      }

      if (((v18 >> 12) & 0x3F) <= ((v18 >> 18) & 0x3F))
      {
        v20 = (v18 >> 18) & 0x3F;
      }

      else
      {
        v20 = (v18 >> 12) & 0x3F;
      }

      if (v19 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      v22 = vdupq_n_s64(v18);
      v23 = vdupq_n_s64(0x3FuLL);
      v24 = vandq_s8(vshlq_u64(v22, xmmword_277819A00), v23);
      v25 = vandq_s8(vshlq_u64(v22, xmmword_277819A10), v23);
      v26 = vbslq_s8(vcgtq_u64(v24, v25), v24, v25);
      if (v26.i64[0] <= v26.i64[1])
      {
        v27 = v26.u64[1];
        if (v21 > v26.i64[1])
        {
LABEL_44:
          if (v19 > v20)
          {
            if (v19 < v17)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          }

          if (v20 < v17)
          {
            goto LABEL_54;
          }

LABEL_48:
          v19 = v20;
          goto LABEL_49;
        }
      }

      else
      {
        v27 = v26.i64[0];
        if (v21 > v26.i64[0])
        {
          goto LABEL_44;
        }
      }

      if (v27 < v17)
      {
        goto LABEL_54;
      }

      if (v19 <= v20)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v26.i64[0] > v26.i64[1])
      {
        LOBYTE(v17) = v26.i8[0];
        if (v19 <= v26.i64[0])
        {
          goto LABEL_54;
        }

LABEL_53:
        LOBYTE(v17) = v21;
        goto LABEL_54;
      }

      LOBYTE(v17) = v26.i8[8];
      if (v19 > v26.i64[1])
      {
        goto LABEL_53;
      }

LABEL_54:
      *a4 = v17;
      a2 += 6;
      --v5;
    }

    while (v5);
  }
}

void ProResHWAnalyzer::parseHWStats(ProResHWAnalyzer *a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, int a6, int a7, int a8, char a9, char a10)
{
  v14 = 0;
  *(a2 + 4) = 148;
  *(a2 + 6) = a7;
  *(a2 + 8) = a8;
  *(a2 + 10) = a9;
  *(a2 + 11) = 256;
  *(a2 + 13) = 4;
  *(a2 + 16) = 8;
  *(a2 + 24) = a10;
  v15 = (a7 + 15) >> 4;
  *(a2 + 28) = a8;
  *(a2 + 32) = v15;
  v16 = 1 << a10;
  *(a2 + 36) = (a8 + 15) >> 4;
  do
  {
    if (v15 >= v16)
    {
      v17 = (a2 + 64 + v14);
      do
      {
        *v17++ = v16;
        v15 -= v16;
        ++v14;
      }

      while (v15 >= v16);
    }

    v16 >>= 1;
  }

  while (v15);
  *(a2 + 40) = v14;
  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = a4;
    do
    {
      v21 = ((*a3 >> 34) & 0x1FFF) + ((*(a3 + 20) >> 34) & 0x1FFF) + ((a3[5] >> 34) & 0x1FFF) + 6;
      v22 = *(a2 + 48);
      *(*(a2 + 56) + 2 * v18) = v21;
      v19 += v21;
      *(v22 + v18) = *(a5 + v18);
      v23 = *v20;
      v20 += 56;
      *(*(a2 + 336) + v18) = ((v23 + (v23 >> 15)) >> 8) ^ 0x80;
      ProResHWAnalyzer::findMinMaxlastNZPos(a1, a4 + 2, (*(a2 + 320) + v18), (*(a2 + 328) + v18), 0x20u);
      a3 = (a3 + 60);
      ++v18;
      a4 = v20;
    }

    while (a6 != v18);
  }

  v24 = v19 + 2 * a6;
  *(a2 + 20) = v24 + 8;
  *a2 = v24 + 164;
}

uint64_t ProResHWAnalyzer::analyzeProResFrame(uint64_t a1, uint64_t a2, SliceList *this, unsigned __int8 *a4)
{
  v8 = 0;
  v9 = *(a1 + 16);
  LOBYTE(v10) = 1;
  do
  {
    v11 = v10;
    v12 = (this + 72 * v8 + 8);
    v10 = 3;
    do
    {
      *v12 = *(v12 - 1);
      v12 += 3;
      --v10;
    }

    while (v10);
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  if (*(a2 + 28) == 16 * *(a2 + 36))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  if (*(a1 + 24) == v13)
  {
    LODWORD(v14) = 0;
    v15 = 0;
    goto LABEL_42;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(a2 + 40);
    v17 = v14 / v16;
    v18 = v14 % v16;
    if ((v14 / v16) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14 / v16;
    }

    if (*(a2 + 36) - 1 > v17)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = *(a2 + 36) - 1;
    }

    if (v18 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v14 % v16;
    }

    if (v16 - 1 > v18)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = v16 - 1;
    }

    if (*(a1 + 28) == 1)
    {
      v23 = *(a2 + 344);
      v24 = *(v23 + 2 * v14);
      if (v24 < 0x7D0)
      {
        goto LABEL_25;
      }

      if (v24 > 0xF9F)
      {
        goto LABEL_39;
      }

      if (*(v23 + 2 * (v18 + (v19 - 1) * v16)) < 0x190u || *(v23 + 2 * (v18 + v20 * v16)) < 0x190u || (v28 = v17 * v16, *(v23 + 2 * (v21 + v28 - 1)) < 0x190u))
      {
LABEL_25:
        v25 = 1;
      }

      else
      {
        v25 = *(v23 + 2 * (v28 + v22)) < 0x190u;
      }

      if (*(*(a2 + 48) + v14) > *a4 && v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(*(a2 + 320) + v14);
      if (v26 <= 7)
      {
        v24 = *(*(a2 + 328) + v14) - v26;
        if (v24 >= 33 && *(*(a2 + 336) + v14) >= 0x81u && *(*(a2 + 48) + v14) > *a4)
        {
LABEL_33:
          *(v9 + v14) = 1;
          SliceList::add(this, v14, v24, 0, 0);
          v27 = (*(*(a2 + 56) + 2 * v14) - 6) * GAMMA[*(*(a2 + 48) + v14)] / GAMMA[*a4] + 6;
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    *(v9 + v14) = 0;
    v27 = *(*(a2 + 56) + 2 * v14);
LABEL_40:
    v15 += v27;
    ++v14;
  }

  while (v14 < *(a1 + 24) - v13);
  v13 = *(a1 + 24);
LABEL_42:
  if (v14 >= v13)
  {
    v30 = v13;
  }

  else
  {
    v29 = v14;
    do
    {
      *(v9 + v29) = 0;
      v15 += *(*(a2 + 56) + 2 * v29++);
      v30 = *(a1 + 24);
    }

    while (v29 < v30);
    v13 = *(a1 + 24);
  }

  v31 = v15 + 2 * v13 + 8;
  memcpy((*(a1 + 16) + v30), *(a1 + 16), v30);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (v33)
  {
    v34 = 0;
    while (1)
    {
      v35 = *(a2 + 40);
      v36 = v34 / v35;
      v37 = v34 % v35;
      if ((v34 / v35) <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v34 / v35;
      }

      if (*(a2 + 36) - 1 > v36)
      {
        v39 = v36 + 1;
      }

      else
      {
        v39 = *(a2 + 36) - 1;
      }

      if (v37 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v34 % v35;
      }

      if (v35 - 1 > v37)
      {
        v41 = v37 + 1;
      }

      else
      {
        v41 = v35 - 1;
      }

      if (!v32[v34])
      {
        v42 = v37 + (v38 - 1) * v35;
        v43 = v37 + v39 * v35;
        v44 = v36 * v35;
        v45 = v40 + v44 - 1;
        v46 = v44 + v41;
        if (*(a1 + 28) == 1)
        {
          if ((v32[v43] + v32[v42] + v32[v45]) | v32[v46])
          {
            v47 = *(*(a2 + 344) + 2 * v34);
            if (v47 >> 3 <= 0x270)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v47 = *(*(a2 + 328) + v34) - *(*(a2 + 320) + v34);
          if (v47 >= 9 && *(*(a2 + 336) + v34) >= 0x21u && (v32[v43] + v32[v42] + v32[v45]) | v32[v46])
          {
LABEL_71:
            if (*(*(a2 + 48) + v34) > *a4)
            {
              SliceList::add(this, v34, v47, 0, 1u);
              v48 = *(*(a2 + 56) + 2 * v34);
              v31 = (v31 - v48 + (v48 - 6) * GAMMA[*(*(a2 + 48) + v34)] / GAMMA[*a4] + 6);
              v32[(v34 + *(a1 + 24))] = 1;
              v33 = *(a1 + 24);
            }
          }
        }
      }

      if (++v34 >= v33)
      {
        v32 = *(a1 + 16);
        goto LABEL_74;
      }
    }
  }

  v33 = 0;
LABEL_74:
  memcpy(v32, &v32[v33], v33);
  v49 = *(a1 + 24);
  if (!v49)
  {
    return v31;
  }

  v50 = 0;
  v51 = *(a1 + 16);
  while (2)
  {
    if (!*(v51 + v50))
    {
      v52 = *(a2 + 40);
      v53 = *(a2 + 36) - 1;
      v54 = v50 / v52;
      if (v53 > v50 / v52)
      {
        v53 = v54 + 1;
      }

      if (v54 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v50 / v52;
      }

      v56 = *(v51 + (v50 % v52 + v53 * v52)) | *(v51 + (v50 % v52 + (v55 - 1) * v52));
      if (v56)
      {
        v56 = *(*(a2 + 48) + v50) >= *a4;
      }

      if (*(a1 + 28) == 1)
      {
        v57 = *(*(a2 + 344) + 2 * v50);
        if (!v56)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v57 = *(*(a2 + 328) + v50) - *(*(a2 + 320) + v50);
        if (!v56)
        {
          goto LABEL_89;
        }
      }

      SliceList::add(this, v50, v57, 0, 1u);
      v58 = *(*(a2 + 56) + 2 * v50);
      v31 = (v31 - v58 + (v58 - 6) * GAMMA[*(*(a2 + 48) + v50)] / GAMMA[*a4] + 6);
      *(v51 + (v50 + *(a1 + 24))) = 1;
      v49 = *(a1 + 24);
    }

LABEL_89:
    if (++v50 < v49)
    {
      continue;
    }

    break;
  }

  if (v49)
  {
    v59 = 0;
    v60 = *(a1 + 16) + v49;
    do
    {
      if (!*(v60 + v59))
      {
        if (*(a1 + 28) == 1)
        {
          v61 = *(*(a2 + 344) + 2 * v59);
        }

        else
        {
          v61 = *(*(a2 + 328) + v59) - *(*(a2 + 320) + v59);
        }

        SliceList::add(this, v59, v61, 0, 2u);
        v49 = *(a1 + 24);
      }

      ++v59;
    }

    while (v59 < v49);
  }

  return v31;
}

void SliceList::add(SliceList *this, int a2, int a3, int a4, unsigned int a5)
{
  v5 = this + 72 * a4 + 24 * a5;
  v6 = a3 | (a2 << 16);
  v8 = *(v5 + 1);
  v7 = *(v5 + 2);
  if (v8 >= v7)
  {
    v10 = (v8 - *v5) >> 2;
    if ((v10 + 1) >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *v5;
    v12 = v11 >> 1;
    if (v11 >> 1 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(this + 72 * a4 + 24 * a5, v13);
    }

    v14 = (4 * v10);
    *v14 = v6;
    v9 = 4 * v10 + 4;
    v15 = *(v5 + 1) - *v5;
    v16 = v14 - v15;
    memcpy(v14 - v15, *v5, v15);
    v17 = *v5;
    *v5 = v16;
    *(v5 + 1) = v9;
    *(v5 + 2) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(v5 + 1) = v9;
}

uint64_t ProResHWAnalyzer::getSliceToFix(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  *a6 = 0;
  v12 = *a3;
  bzero(*(a1 + 16), (2 * *(a1 + 24)));
  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = 0;
    v15 = *(a1 + 16);
    do
    {
      v16 = *(a5 + 2 * v14);
      v17 = *(*(a4 + 56) + 2 * v16) - *(*(a3 + 7) + 2 * v16);
      if (v17 >= 1)
      {
        v18 = (v17 + v12);
        if (v18 > a2)
        {
          return v12;
        }

        *(v15 + v16) = 1;
        ++*a6;
        v13 = *(a1 + 24);
        v12 = v18;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return v12;
}

uint64_t ProResHWAnalyzer::stitchProResFrame(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(unsigned __int8 *a1, unsigned int a2, unsigned int a3, void *a4), void *a8)
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = dummyCallback;
  }

  v55[0] = a3;
  v55[1] = a5;
  v52 = 0;
  v49 = v12;
  v47 = *(a1 + 16);
  v13 = *(a2 + 4);
  v14 = v13 + 8;
  if (v12(a3, 0, v13 + 8, a8))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "frame header";
    __cxa_throw(exception, MEMORY[0x277D82740], 0);
  }

  if (*(a2 + 11) != *(a4 + 11))
  {
    __assert_rtn("stitchProResFrame", "AppleProResHWAnalyzer.cpp", 1010, "frm[0]->interlace_mode == frm[1]->interlace_mode");
  }

  v15 = *(a4 + 4);
  v16 = (a2 + 16);
  v17 = (a4 + 16);
  v53[0] = a2 + 16;
  v53[1] = a4 + 16;
  v18 = *(a2 + 40) * *(a2 + 36);
  if (v18 != *(a4 + 40) * *(a4 + 36))
  {
    v32 = "numSlicesP0 == pic[1]->height_in_mb * pic[1]->number_of_slices_per_mb_row";
    v33 = 1021;
    goto LABEL_23;
  }

  if (v18 != *(a1 + 24))
  {
    v32 = "numSlicesP0 == m_numSlices";
    v33 = 1022;
LABEL_23:
    __assert_rtn("stitchProResFrame", "AppleProResHWAnalyzer.cpp", v33, v32);
  }

  v19 = *v16 + 2 * v18;
  if (v49(&a3[v14], v13 + 8, v19, a8))
  {
    v36 = __cxa_allocate_exception(8uLL);
    *v36 = "picture header and slice table";
    __cxa_throw(v36, MEMORY[0x277D82740], 0);
  }

  v41 = (a2 + 16);
  v42 = v13;
  v44 = v13 + 8;
  v20 = *v16 + v14;
  v21 = *(a1 + 24);
  v22 = v15 + 8 + 2 * v21 + *v17;
  v54[0] = v20 + 2 * v21;
  v54[1] = v22;
  v43 = a3;
  v40 = v20;
  if (v21)
  {
    v23 = 0;
    v24 = 0;
    v25 = v19 + v13 + 8;
    v45 = &a3[v20];
    do
    {
      v26 = *(v47 + v24);
      v27 = *(*(v53[v26] + 40) + v23);
      v28 = v54[v26];
      if (v49((v55[v26] + v28), v25, *(*(v53[v26] + 40) + v23), a8))
      {
        v34 = __cxa_allocate_exception(8uLL);
        *v34 = "slice data";
        __cxa_throw(v34, MEMORY[0x277D82740], 0);
      }

      v54[v26] = v28 + v27;
      if (a7 && v26)
      {
        *&v45[v23] = __rev16(v27);
      }

      v25 = v25 + v27;
      v19 += v27;
      v54[(1 - v26)] += *(*(v53[(1 - v26)] + 40) + v23);
      ++v24;
      v23 += 2;
    }

    while (*(a1 + 24) > v24);
  }

  v51 = bswap32(v19);
  if (v49(&v51, v42 + 9, 4u, a8))
  {
    v37 = __cxa_allocate_exception(8uLL);
    *v37 = "picture size";
    __cxa_throw(v37, MEMORY[0x277D82740], 0);
  }

  if (v49(&v43[v40], v44 + *v41, 2 * *(a1 + 24), a8))
  {
    v38 = __cxa_allocate_exception(8uLL);
    *v38 = "slice table";
    __cxa_throw(v38, MEMORY[0x277D82740], 0);
  }

  v29 = v44 + v19;
  *a6 = v29;
  v52 = bswap32(v29);
  if (v49(&v52, 0, 4u, a8))
  {
    v39 = __cxa_allocate_exception(8uLL);
    *v39 = "frame size";
    __cxa_throw(v39, MEMORY[0x277D82740], 0);
  }

  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

void SliceList::sort(SliceList *this, unsigned __int16 *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = this + 72 * v6;
    do
    {
      v12 = &v11[24 * v9];
      if (a3)
      {
        v13 = v12[1];
        v14 = 126 - 2 * __clz((v13 - *v12) >> 2);
        if (v13 == *v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(*v12, v13, &v22, v15, 1);
      }

      else
      {
        v16 = v12[1];
        v17 = 126 - 2 * __clz((v16 - *v12) >> 2);
        if (v16 == *v12)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(v16, v12[1], *v12, *v12, &v23, v18, 1);
      }

      v19 = *v12;
      v20 = v12[1];
      if (*v12 != v20)
      {
        v21 = &a2[v7];
        do
        {
          *v21++ = v19[1];
          v19 += 2;
          ++v7;
        }

        while (v19 != v20);
      }

      ++v9;
    }

    while (v9 != 3);
    v8 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
}

unsigned int *RiceExpComboCode<unsigned int>::decodeUnsigned(unsigned int *result, int *a2, unsigned int a3, int a4)
{
  v4 = RiceExpComboCodeCatalog[a4];
  v5 = v4 & 3;
  v6 = v4 >> 5;
  v7 = __clz(a3);
  if (v7 <= v5)
  {
    v10 = v7 + 1;
    if (v4 > 0x1F)
    {
      *a2 = v10 + v6;
      *result = (a3 << v10 >> -v6) + (v7 << v6);
    }

    else
    {
      *a2 = v10;
      *result = v7;
    }
  }

  else
  {
    v8 = (v4 >> 2) & 7;
    v9 = v8 + 2 * (v7 - (v5 + 1)) + 1;
    *a2 = v9;
    *result = ((v5 + 1) << v6) + (-1 << v8) + (a3 >> ((v5 ^ 0x1F) - v9));
    *a2 += v5 + 1;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unsigned __int16 *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 2;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < v89 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= v92 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= v109 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        LOWORD(v110) = v10[3];
      }

      *v10 = v91;
      v10[2] = v92;
      v111 = v10[1];
      v10[3] = v111;
      v10[1] = v110;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (v16 >= v17 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (v27 >= v28 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (v47 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (v64 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  LODWORD(v70) = *v15;
                  v71 = *v39;
                  if (v70 >= v71 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (v75 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      LOWORD(v76) = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    *v55 = v70;
                    v15[1] = v77;
                    v70 = v15 + 1;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      LOWORD(v70) = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v80 = *v73;
                    *v73 = *v70;
                    *v70 = v80;
                    LOWORD(v70) = *v15;
LABEL_104:
                    v81 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v81;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (v72 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v78 = v15[1];
                    if (v55[1] < v78)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v70 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    LOWORD(v78) = v15[1];
                  }

                  *v39 = v70;
                  *v15 = v71;
                  v79 = v39[1];
                  v15[1] = v79;
                  v39[1] = v78;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v79))
                  {
                    LOWORD(v70) = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                LOWORD(v66) = v55[1];
              }

              v10[4] = v56;
              *v55 = v58;
              v67 = v10[5];
              v10[5] = v66;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            LOWORD(v49) = *(v14 - 1);
          }

          v10[2] = v40;
          *v39 = v41;
          v52 = v10[3];
          v10[3] = v49;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        LOWORD(v34) = v14[1];
      }

      *v10 = v16;
      *v14 = v17;
      v36 = v10[1];
      v10[1] = v34;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (v20 < v21 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        LOWORD(v35) = v10[1];
LABEL_59:
        *v15 = v20;
        *v10 = v21;
        v50 = v15[1];
        v15[1] = v35;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v82 = *v23;
      *v23 = *v30;
      *v30 = v82;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (v32 < v33 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v83 = *(v10 - 2);
      v84 = *v10;
      if (v83 >= v84 && (v84 < v83 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v100) = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[6] = v99;
    v10[5] = v101;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v103) = v10[3];
    }

    v10[2] = v98;
    v10[4] = v102;
    v10[3] = v101;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= v104)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v105) = v10[1];
    }

    *v10 = v98;
    v10[2] = v104;
    v10[1] = v101;
    v10[3] = v105;
  }

  return result;
}

unsigned __int16 *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = *result;
  if (v4 < v5 || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (v6 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (v14 >= v5 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (v8 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (v11 < v12 || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (v16 < v17 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (v19 < v20 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (v22 < v23 || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < v7 || v7 >= v6 && v5[3] < v5[1])
        {
          v8 = *(v5 + 1);
          v5[2] = v7;
          v4[1] = v5[1];
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            do
            {
              v11 = *(result + v10 - 4);
              if (v11 <= v8)
              {
                if (v11 < v8)
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                v9 = (result + v10);
                v12 = *(result + v10 - 2);
                if (v12 <= HIWORD(v8))
                {
                  goto LABEL_17;
                }
              }

              else
              {
                LOWORD(v12) = *(result + v10 - 2);
              }

              v5 -= 2;
              v13 = (result + v10);
              *v13 = v11;
              v13[1] = v12;
              v10 -= 4;
            }

            while (v10);
            v9 = result;
          }

LABEL_17:
          *v9 = v8;
        }

        v2 = v4 + 2;
        v3 += 4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < v6 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = *result;
          for (i = v3; ; i -= 2)
          {
            i[1] = v6;
            i[2] = *i;
            v6 = *(i - 3);
            if (v6 <= v8 && (v6 < v8 || *(i - 2) <= HIWORD(v7)))
            {
              break;
            }
          }

          *(i - 1) = v8;
          *i = HIWORD(v7);
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = HIWORD(*a1);
  v4 = *(a2 - 2);
  if (v4 > v2 || v4 >= v2 && *(a2 - 1) > v3)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v2 && (v6 < v2 || i[1] <= v3));
  }

  else
  {
    for (i = a1 + 2; i < a2; i += 2)
    {
      v16 = *i;
      if (v16 > v2 || v16 >= v2 && i[1] > v3)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v2 || v4 >= v2 && a2[1] > v3; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    LOWORD(v9) = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v2 && (v9 < v2 || i[1] <= v3));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v2;
        }

        while (v13 > v2);
      }

      while (v14 && a2[1] > v3);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

_WORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(_WORD *a1, _WORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIWORD(*a1);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    LOWORD(v12) = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          LOWORD(v5) = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = (a2 - a1) >> 2;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v13) = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[6] = v12;
      a1[5] = v14;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v16) = a1[3];
      }

      a1[2] = v11;
      a1[4] = v15;
      a1[3] = v14;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= v17)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v18) = a1[1];
      }

      *a1 = v11;
      a1[2] = v17;
      a1[1] = v14;
      result = 1;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= v21 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= v33 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOWORD(v38) = a1[3];
    }

    *a1 = v20;
    a1[2] = v21;
    v40 = a1[1];
    a1[3] = v40;
    a1[1] = v38;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < v6 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < v27 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (v28 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOWORD(v39) = a1[3];
    }

    *a1 = v26;
    a1[2] = v27;
    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    a1[1] = v39;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (v34 < v26)
  {
    LOWORD(v35) = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (v48 >= v49 && (v49 < v48 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v50 = *v45;
    v51 = *v45;
    *v45 = v49;
    v45[1] = v25[1];
    v52 = v46;
    while (1)
    {
      v53 = a1 + v52;
      v54 = *(a1 + v52 + 4);
      if (v54 <= v51)
      {
        break;
      }

      LOWORD(v55) = *(v53 + 3);
LABEL_74:
      *(v53 + 4) = v54;
      *(a1 + v52 + 10) = v55;
      v52 -= 4;
      if (v52 == -8)
      {
        v56 = a1;
        goto LABEL_80;
      }
    }

    if (v54 >= v51)
    {
      v55 = *(a1 + v52 + 6);
      if (v55 > HIWORD(v50))
      {
        goto LABEL_74;
      }
    }

    v56 = (a1 + v52 + 8);
LABEL_80:
    *v56 = v51;
    v56[1] = HIWORD(v50);
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 4;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned __int16 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 2;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (v13 < v14 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v17 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8);
        if (v16 == v18)
        {
          *v18 = v17;
        }

        else
        {
          *v18 = *v16;
          v18[1] = v16[1];
          *v16 = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 2);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8;
        if (v11 < v10 || v10 >= v11 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      if (v12 >= v13 && (v13 < v12 || v8[1] >= a4[1]))
      {
        v14 = *a4;
        v15 = HIWORD(*a4);
        *a4 = v12;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 4 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[2];
              v20 = *v16;
              if (v20 < v19 || v19 >= v20 && v16[1] < v16[3])
              {
                v16 += 2;
                v7 = v18;
              }
            }

            v21 = *v16;
            if (v21 < v14 || v21 <= v14 && v16[1] < v15)
            {
              break;
            }

            *v8 = v21;
            v8[1] = v16[1];
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v16 = v8;
LABEL_13:
        *v16 = v14;
        v16[1] = v15;
      }
    }
  }

  return result;
}

_WORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(_WORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 4);
    if (v7 < v8 || v8 >= v7 && v6[1] < *(a2 - 2))
    {
      v9 = *(a2 - 4);
      v10 = HIWORD(*(a2 - 4));
      *(a2 - 4) = v7;
      *(a2 - 2) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 4 * v5);
          v13 = *v11;
          if (v13 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            LOWORD(v14) = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 4 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, char a7)
{
  while (2)
  {
    while (2)
    {
      while (2)
      {
        for (i = 1 - a6; ; ++i)
        {
          v14 = (a2 - a4) >> 2;
          if (v14 <= 2)
          {
            if (v14 < 2)
            {
              return;
            }

            if (v14 == 2)
            {
              v105 = *a4;
              v106 = *(a2 - 2);
              if (v105 < v106 || v106 >= v105 && a4[1] < *(a2 - 1))
              {
                *(a2 - 2) = v105;
                *a4 = v106;
                v107 = *(a2 - 1);
                *(a2 - 1) = a4[1];
                a4[1] = v107;
              }

              return;
            }

            goto LABEL_9;
          }

          switch(v14)
          {
            case 3:
              v108 = *(a2 - 2);
              v109 = *(a2 - 4);
              if (v109 < v108 || v108 >= v109 && *(a2 - 3) < *(a2 - 1))
              {
                v110 = *a4;
                if (v110 >= v109 && (v109 < v110 || a4[1] >= *(a2 - 3)))
                {
                  *(a2 - 2) = v109;
                  *(a2 - 4) = v108;
                  v117 = *(a2 - 1);
                  *(a2 - 1) = *(a2 - 3);
                  *(a2 - 3) = v117;
                  v118 = *a4;
                  if (v118 >= v108 && (v108 < v118 || a4[1] >= v117))
                  {
                    return;
                  }

                  v116 = a2 - 3;
                  *(a2 - 4) = v118;
                  *a4 = v108;
                  v111 = a4 + 1;
LABEL_175:
                  v119 = *v116;
                  *v116 = *v111;
                  *v111 = v119;
                  return;
                }

                *(a2 - 2) = v110;
                *a4 = v108;
                v111 = a4 + 1;
              }

              else
              {
                v112 = *a4;
                if (v112 >= v109 && (v109 < v112 || a4[1] >= *(a2 - 3)))
                {
                  return;
                }

                *(a2 - 4) = v112;
                *a4 = v109;
                v113 = *(a2 - 3);
                *(a2 - 3) = a4[1];
                a4[1] = v113;
                v114 = *(a2 - 4);
                v115 = *(a2 - 2);
                if (v114 >= v115 && (v115 < v114 || *(a2 - 3) >= *(a2 - 1)))
                {
                  return;
                }

                v111 = a2 - 3;
                *(a2 - 2) = v114;
                *(a2 - 4) = v115;
              }

              v116 = a2 - 1;
              goto LABEL_175;
            case 4:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), a3, (a4 + 2));
              return;
            case 5:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), (a2 - 6), (a2 - 6));
              v94 = *a4;
              v95 = *(a2 - 8);
              if (v94 < v95 || v95 >= v94 && a4[1] < *(a2 - 7))
              {
                *(a2 - 8) = v94;
                *a4 = v95;
                v96 = *(a2 - 7);
                *(a2 - 7) = a4[1];
                a4[1] = v96;
                v97 = *(a2 - 8);
                v98 = *(a2 - 6);
                if (v97 < v98 || v98 >= v97 && *(a2 - 7) < *(a2 - 5))
                {
                  *(a2 - 6) = v97;
                  *(a2 - 8) = v98;
                  v99 = *(a2 - 5);
                  *(a2 - 5) = *(a2 - 7);
                  *(a2 - 7) = v99;
                  v100 = *(a2 - 6);
                  v101 = *(a2 - 4);
                  if (v100 < v101 || v101 >= v100 && *(a2 - 5) < *(a2 - 3))
                  {
                    *(a2 - 4) = v100;
                    *(a2 - 6) = v101;
                    v102 = *(a2 - 3);
                    *(a2 - 3) = *(a2 - 5);
                    *(a2 - 5) = v102;
                    v103 = *(a2 - 2);
                    if (v100 < v103 || v103 >= v100 && *(a2 - 3) < *(a2 - 1))
                    {
                      *(a2 - 2) = v100;
                      *(a2 - 4) = v103;
                      v104 = *(a2 - 1);
                      *(a2 - 1) = *(a2 - 3);
                      *(a2 - 3) = v104;
                    }
                  }
                }
              }

              return;
          }

LABEL_9:
          if (v14 <= 23)
          {
            if (a7)
            {
              std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a3, a4);
            }

            else
            {
              std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a3, a4);
            }

            return;
          }

          if (i == 1)
          {
            if (a2 != a4)
            {
              std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a3, a4, a3, a4, a5);
            }

            return;
          }

          v15 = (a2 - a4) & 0xFFFFFFFFFFFFFFFCLL;
          v16 = (a2 - v15);
          if (v14 >= 0x81)
          {
            v17 = *(v16 - 2);
            v18 = *(a2 - 2);
            if (v17 < v18 || v18 >= v17 && *(v16 - 1) < *(a2 - 1))
            {
              v19 = *a4;
              if (v19 < v17 || v17 >= v19 && a4[1] < *(v16 - 1))
              {
                *(a2 - 2) = v19;
                *a4 = v18;
                v20 = a2 - 1;
              }

              else
              {
                *(a2 - 2) = v17;
                v20 = v16 - 1;
                v35 = *(v16 - 1);
                *(v16 - 2) = v18;
                v36 = *(a2 - 1);
                *(a2 - 1) = v35;
                *(v16 - 1) = v36;
                v37 = *a4;
                v38 = *(v16 - 2);
                if (v37 >= v38 && (v38 < v37 || a4[1] >= v36))
                {
                  goto LABEL_34;
                }

                *(v16 - 2) = v37;
                *a4 = v38;
              }

              v27 = a4 + 1;
            }

            else
            {
              v25 = *a4;
              if (v25 >= v17 && (v17 < v25 || a4[1] >= *(v16 - 1)))
              {
                goto LABEL_34;
              }

              *(v16 - 2) = v25;
              *a4 = v17;
              v27 = v16 - 1;
              v26 = *(v16 - 1);
              *(v16 - 1) = a4[1];
              a4[1] = v26;
              v28 = *(v16 - 2);
              v29 = *(a2 - 2);
              if (v28 >= v29 && (v29 < v28 || *v27 >= *(a2 - 1)))
              {
LABEL_34:
                v40 = *v16;
                v41 = *(a2 - 4);
                if (v40 < v41 || v41 >= v40 && v16[1] < *(a2 - 3))
                {
                  v42 = a4[2];
                  if (v42 < v40 || v40 >= v42 && a4[3] < v16[1])
                  {
                    *(a2 - 4) = v42;
                    a4[2] = v41;
                    v43 = a2 - 3;
                  }

                  else
                  {
                    *(a2 - 4) = v40;
                    v43 = v16 + 1;
                    v53 = v16[1];
                    *v16 = v41;
                    v54 = *(a2 - 3);
                    *(a2 - 3) = v53;
                    v16[1] = v54;
                    v55 = a4[2];
                    v56 = *v16;
                    if (v55 >= v56 && (v56 < v55 || a4[3] >= v54))
                    {
                      goto LABEL_53;
                    }

                    *v16 = v55;
                    a4[2] = v56;
                  }

                  v46 = a4 + 3;
                }

                else
                {
                  v44 = a4[2];
                  if (v44 >= v40 && (v40 < v44 || a4[3] >= v16[1]))
                  {
                    goto LABEL_53;
                  }

                  *v16 = v44;
                  a4[2] = v40;
                  v46 = v16 + 1;
                  v45 = v16[1];
                  v16[1] = a4[3];
                  a4[3] = v45;
                  v47 = *v16;
                  v48 = *(a2 - 4);
                  if (v47 >= v48 && (v48 < v47 || *v46 >= *(a2 - 3)))
                  {
LABEL_53:
                    v58 = a2 - v15 - 4;
                    v59 = *(v58 - 2);
                    v60 = *(a2 - 6);
                    if (v59 < v60 || v60 >= v59 && *(v58 - 1) < *(a2 - 5))
                    {
                      v61 = a4[4];
                      if (v61 < v59 || v59 >= v61 && a4[5] < *(v58 - 1))
                      {
                        *(a2 - 6) = v61;
                        a4[4] = v60;
                        v62 = a2 - 5;
                      }

                      else
                      {
                        *(a2 - 6) = v59;
                        v62 = (v58 - 2);
                        v68 = *(v58 - 1);
                        *(v58 - 2) = v60;
                        v69 = *(a2 - 5);
                        *(a2 - 5) = v68;
                        *(v58 - 1) = v69;
                        v70 = a4[4];
                        v71 = *(v58 - 2);
                        if (v70 >= v71 && (v71 < v70 || a4[5] >= v69))
                        {
                          goto LABEL_67;
                        }

                        *(v58 - 2) = v70;
                        a4[4] = v71;
                      }

                      v65 = a4 + 5;
                    }

                    else
                    {
                      v63 = a4[4];
                      if (v63 >= v59 && (v59 < v63 || a4[5] >= *(v58 - 1)))
                      {
                        goto LABEL_67;
                      }

                      *(v58 - 2) = v63;
                      a4[4] = v59;
                      v65 = (v58 - 2);
                      v64 = *(v58 - 1);
                      *(v58 - 1) = a4[5];
                      a4[5] = v64;
                      v66 = *(v58 - 2);
                      v67 = *(a2 - 6);
                      if (v66 >= v67 && (v67 < v66 || *v65 >= *(a2 - 5)))
                      {
LABEL_67:
                        v73 = *(v16 - 2);
                        v74 = *v16;
                        if (v73 < v74 || v74 >= v73 && *(v16 - 1) < v16[1])
                        {
                          v75 = *(v58 - 2);
                          if (v75 < v73 || v73 >= v75 && *(v58 - 1) < *(v16 - 1))
                          {
                            *v16 = v75;
                            *(v58 - 2) = v74;
                            v76 = v16 + 1;
                          }

                          else
                          {
                            *v16 = v73;
                            v76 = v16 - 1;
                            v81 = *(v16 - 1);
                            *(v16 - 2) = v74;
                            v82 = v16[1];
                            v16[1] = v81;
                            *(v16 - 1) = v82;
                            v83 = *(v58 - 2);
                            v73 = *(v16 - 2);
                            if (v83 >= v73 && (v73 < v83 || *(v58 - 1) >= v82))
                            {
                              goto LABEL_81;
                            }

                            *(v16 - 2) = v83;
                            *(v58 - 2) = v73;
                          }

                          v79 = (v58 - 2);
                        }

                        else
                        {
                          v77 = *(v58 - 2);
                          if (v77 >= v73 && (v73 < v77 || *(v58 - 1) >= *(v16 - 1)))
                          {
                            goto LABEL_81;
                          }

                          *(v16 - 2) = v77;
                          *(v58 - 2) = v73;
                          v79 = v16 - 1;
                          v78 = *(v16 - 1);
                          *(v16 - 1) = *(v58 - 1);
                          *(v58 - 1) = v78;
                          v73 = *(v16 - 2);
                          v80 = *v16;
                          if (v73 >= v80 && (v80 < v73 || *v79 >= v16[1]))
                          {
LABEL_81:
                            v85 = *(a2 - 2);
                            *(a2 - 2) = v73;
                            *(v16 - 2) = v85;
                            v24 = a2 - 1;
                            v32 = v16 - 1;
                            goto LABEL_82;
                          }

                          *v16 = v73;
                          *(v16 - 2) = v80;
                          v76 = v16 + 1;
                        }

                        v84 = *v76;
                        *v76 = *v79;
                        *v79 = v84;
                        LOWORD(v73) = *(v16 - 2);
                        goto LABEL_81;
                      }

                      *(a2 - 6) = v66;
                      *(v58 - 2) = v67;
                      v62 = a2 - 5;
                    }

                    v72 = *v62;
                    *v62 = *v65;
                    *v65 = v72;
                    goto LABEL_67;
                  }

                  *(a2 - 4) = v47;
                  *v16 = v48;
                  v43 = a2 - 3;
                }

                v57 = *v43;
                *v43 = *v46;
                *v46 = v57;
                goto LABEL_53;
              }

              *(a2 - 2) = v28;
              *(v16 - 2) = v29;
              v20 = a2 - 1;
            }

            v39 = *v20;
            *v20 = *v27;
            *v27 = v39;
            goto LABEL_34;
          }

          v21 = *(a2 - 2);
          v22 = *(v16 - 2);
          if (v21 < v22 || v22 >= v21 && *(a2 - 1) < *(v16 - 1))
          {
            v23 = *a4;
            if (v23 < v21 || v21 >= v23 && a4[1] < *(a2 - 1))
            {
              *(v16 - 2) = v23;
              *a4 = v22;
              v24 = v16 - 1;
LABEL_46:
              v32 = a4 + 1;
              goto LABEL_82;
            }

            *(v16 - 2) = v21;
            v24 = a2 - 1;
            v49 = *(a2 - 1);
            *(a2 - 2) = v22;
            v50 = *(v16 - 1);
            *(v16 - 1) = v49;
            *(a2 - 1) = v50;
            v51 = *a4;
            v52 = *(a2 - 2);
            if (v51 < v52 || v52 >= v51 && a4[1] < v50)
            {
              *(a2 - 2) = v51;
              *a4 = v52;
              goto LABEL_46;
            }
          }

          else
          {
            v30 = *a4;
            if (v30 < v21 || v21 >= v30 && a4[1] < *(a2 - 1))
            {
              *(a2 - 2) = v30;
              *a4 = v21;
              v32 = a2 - 1;
              v31 = *(a2 - 1);
              *(a2 - 1) = a4[1];
              a4[1] = v31;
              v33 = *(a2 - 2);
              v34 = *(v16 - 2);
              if (v33 < v34 || v34 >= v33 && *v32 < *(v16 - 1))
              {
                *(v16 - 2) = v33;
                *(a2 - 2) = v34;
                v24 = v16 - 1;
LABEL_82:
                v86 = *v24;
                *v24 = *v32;
                *v32 = v86;
              }
            }
          }

          if (a7)
          {
            break;
          }

          v87 = *a2;
          v88 = *(a2 - 2);
          if (v87 < v88 || v88 >= v87 && a2[1] < *(a2 - 1))
          {
            break;
          }

          std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(a1, a2, a3, a4);
          a1 = v89;
          a2 = v90;
          a7 = 0;
        }

        std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(a2, a4, &v121);
        v91 = v121;
        v92 = v122;
        a6 = -i;
        if (v123 != 1)
        {
LABEL_139:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(a1, a2, v91, v92, a5, -i, a7 & 1);
          a7 = 0;
          a2 = v92 - 2;
          a1 = v91;
          continue;
        }

        break;
      }

      v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, v121, v122);
      if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>((v92 - 2), (v92 - 2), a3, a4))
      {
        if (v93)
        {
          a1 = v91;
          a2 = v92 - 2;
          continue;
        }

        goto LABEL_139;
      }

      break;
    }

    a3 = v91;
    a4 = v92;
    if ((v93 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 - 4);
  v9 = *(a2 - 4);
  if (v8 < v9 || v9 >= v8 && *(a4 - 2) < *(a2 - 2))
  {
    v10 = *(a6 - 4);
    if (v10 < v8 || v8 >= v10 && *(a6 - 2) < *(a4 - 2))
    {
      *(a2 - 4) = v10;
      *(a6 - 4) = v9;
      v11 = (a2 - 2);
    }

    else
    {
      *(a2 - 4) = v8;
      v11 = (a4 - 2);
      v17 = *(a4 - 2);
      *(a4 - 4) = v9;
      v18 = *(a2 - 2);
      *(a2 - 2) = v17;
      *(a4 - 2) = v18;
      v19 = *(a6 - 4);
      v20 = *(a4 - 4);
      if (v19 >= v20 && (v20 < v19 || *(a6 - 2) >= v18))
      {
        goto LABEL_15;
      }

      *(a4 - 4) = v19;
      *(a6 - 4) = v20;
    }

    v14 = (a6 - 2);
    goto LABEL_14;
  }

  v12 = *(a6 - 4);
  if (v12 < v8 || v8 >= v12 && *(a6 - 2) < *(a4 - 2))
  {
    *(a4 - 4) = v12;
    *(a6 - 4) = v8;
    v14 = (a4 - 2);
    v13 = *(a4 - 2);
    *(a4 - 2) = *(a6 - 2);
    *(a6 - 2) = v13;
    v15 = *(a4 - 4);
    v16 = *(a2 - 4);
    if (v15 < v16 || v16 >= v15 && *v14 < *(a2 - 2))
    {
      *(a2 - 4) = v15;
      *(a4 - 4) = v16;
      v11 = (a2 - 2);
LABEL_14:
      v21 = *v11;
      *v11 = *v14;
      *v14 = v21;
    }
  }

LABEL_15:
  v22 = *(a8 - 4);
  v23 = *(a6 - 4);
  if (v22 < v23 || v23 >= v22 && *(a8 - 2) < *(a6 - 2))
  {
    *(a6 - 4) = v22;
    *(a8 - 4) = v23;
    v24 = *(a6 - 2);
    *(a6 - 2) = *(a8 - 2);
    *(a8 - 2) = v24;
    v25 = *(a6 - 4);
    v26 = *(a4 - 4);
    if (v25 < v26 || v26 >= v25 && *(a6 - 2) < *(a4 - 2))
    {
      *(a4 - 4) = v25;
      *(a6 - 4) = v26;
      v27 = *(a4 - 2);
      *(a4 - 2) = *(a6 - 2);
      *(a6 - 2) = v27;
      v28 = *(a4 - 4);
      v29 = *(a2 - 4);
      if (v28 < v29 || v29 >= v28 && *(a4 - 2) < *(a2 - 2))
      {
        *(a2 - 4) = v28;
        *(a4 - 4) = v29;
        v30 = *(a2 - 2);
        *(a2 - 2) = *(a4 - 2);
        *(a4 - 2) = v30;
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 == a4)
  {
    return;
  }

  v4 = a2 - 2;
  if (a2 - 2 == a4)
  {
    return;
  }

  v5 = 0;
  v6 = a2 - 2;
  do
  {
    v7 = v4 + 2;
    v8 = *v4;
    v10 = *(v6 - 2);
    v6 -= 2;
    v9 = v10;
    if (v10 >= v8)
    {
      if (v8 < v9)
      {
        goto LABEL_17;
      }

      v11 = v4[1];
      if (*(v4 - 1) >= v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LOWORD(v11) = v4[1];
    }

    v12 = *(v4 - 1);
    *(v4 - 2) = v8;
    *(v4 - 1) = v11;
    if (v7 == a2)
    {
LABEL_13:
      v7 = a2;
      goto LABEL_14;
    }

    v13 = v5;
    while (1)
    {
      v14 = *(a2 + v13);
      if (v14 <= v12)
      {
        break;
      }

      LOWORD(v15) = *(a2 + v13 + 2);
LABEL_12:
      v7 += 2;
      v16 = a2 + v13;
      *(v16 - 4) = v14;
      *(v16 - 2) = v15;
      v13 += 4;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_14;
    }

    v15 = *(a2 + v13 + 2);
    if (v15 > HIWORD(v12))
    {
      goto LABEL_12;
    }

    v7 = (a2 + v13);
LABEL_14:
    *(v7 - 1) = v12;
LABEL_17:
    v5 -= 4;
    v4 = v6;
  }

  while (v6 != a4);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 != a4)
  {
    v4 = a2 - 2;
    while (v4 != a4)
    {
      v5 = v4;
      v7 = v4 + 2;
      v6 = *v4;
      v9 = *(v4 - 2);
      v4 -= 2;
      v8 = v9;
      if (v9 < v6 || v6 >= v8 && *(v5 - 1) < v5[1])
      {
        v10 = *v4;
        v11 = *v4;
        do
        {
          do
          {
            v12 = v7;
            *(v5 - 2) = v6;
            *(v5 - 1) = *(v7 - 1);
            v7 += 2;
            v6 = *v12;
            v5 = v12;
          }

          while (v6 > v11);
          if (v6 < v11)
          {
            break;
          }

          v5 = v12;
        }

        while (v12[1] > HIWORD(v10));
        *(v12 - 2) = v11;
        *(v12 - 1) = HIWORD(v10);
      }
    }
  }
}

void std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a2 - 2;
  v5 = *(a2 - 1);
  v6 = v5;
  v7 = HIWORD(v5);
  v8 = *a4;
  if (v8 <= v5 && (v8 < v5 || a4[1] <= v7))
  {
    while (v4 > a4)
    {
      v12 = *(v4 - 2);
      if (v12 > v5 || v12 >= v5 && *(v4 - 1) > v7)
      {
        break;
      }

      v4 -= 2;
    }
  }

  else
  {
    v9 = *(a2 - 4);
    if (v9 <= v6)
    {
      v10 = a2 - 6;
      do
      {
        if (v9 >= v6 && v10[3] > v7)
        {
          break;
        }

        v11 = *v10;
        v10 -= 2;
        v9 = v11;
      }

      while (v11 <= v6);
      v4 = v10 + 4;
    }
  }

  if (v4 > a4)
  {
    do
    {
      do
      {
        a4 += 2;
        v13 = *(a4 - 2);
      }

      while (v13 > v6);
    }

    while (v13 >= v6 && *(a4 - 1) > v7);
  }

  if (a4 >= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = v4;
    do
    {
      v15 = *(v14 - 2);
      v14 -= 2;
      *v14 = *(a4 - 2);
      *(a4 - 2) = v15;
      v16 = v14[1];
      v14[1] = *(a4 - 1);
      *(a4 - 1) = v16;
      v17 = *(v14 - 2);
      if (v17 <= v6)
      {
        v18 = v4 - 6;
        do
        {
          if (v17 >= v6 && v18[3] > v7)
          {
            break;
          }

          v19 = *v18;
          v18 -= 2;
          v17 = v19;
        }

        while (v19 <= v6);
        v14 = v18 + 4;
      }

      do
      {
        do
        {
          a4 += 2;
          v20 = *(a4 - 2);
        }

        while (v20 > v6);
      }

      while (v20 >= v6 && *(a4 - 1) > v7);
      v4 = v14;
    }

    while (a4 < v14);
  }

  if (a2 != v14 + 2)
  {
    *(a2 - 2) = *v14;
    *(a2 - 1) = v14[1];
  }

  *v14 = v6;
  v14[1] = v7;
}

void std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(unint64_t a1@<X1>, unsigned __int16 *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = a1 - 4;
  v4 = *(a1 - 4);
  v5 = HIWORD(*(a1 - 4));
  for (i = a1; ; i -= 4)
  {
    v7 = *(v3 - 4);
    if (v7 >= v4 && (v7 > v4 || *(v3 - 2) >= v5))
    {
      break;
    }

    v3 -= 4;
  }

  if (a1 == i)
  {
    if (v3 > a2)
    {
      while (1)
      {
        v9 = *a2;
        a2 += 2;
        v8 = v9;
        if (v9 < v4)
        {
          break;
        }

        if (v8 <= v4)
        {
          if (*(a2 - 1) < v5 || a2 >= v3)
          {
            break;
          }
        }

        else if (a2 >= v3)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v12 = *a2;
      a2 += 2;
      v11 = v12;
    }

    while (v12 >= v4 && (v11 > v4 || *(a2 - 1) >= v5));
  }

  if (a2 < v3)
  {
    v13 = v3;
    v14 = a2;
    do
    {
      v15 = *(v13 - 4);
      *(v13 - 4) = *(v14 - 2);
      *(v14 - 2) = v15;
      v16 = *(v13 - 2);
      *(v13 - 2) = *(v14 - 1);
      *(v14 - 1) = v16;
      i = v13;
      for (v13 -= 4; ; v13 -= 4)
      {
        v17 = *(v13 - 4);
        if (v17 >= v4 && (v17 > v4 || *(v13 - 2) >= v5))
        {
          break;
        }

        i -= 4;
      }

      do
      {
        v19 = *v14;
        v14 += 2;
        v18 = v19;
      }

      while (v19 >= v4 && (v18 > v4 || *(v14 - 1) >= v5));
    }

    while (v14 < v13);
  }

  if (a1 != i)
  {
    *(a1 - 4) = *(i - 4);
    *(a1 - 2) = *(i - 2);
  }

  *(i - 4) = v4;
  *(i - 2) = v5;
  *a3 = i;
  *(a3 + 8) = i;
  *(a3 + 16) = a2 >= v3;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v6 = (a2 - a4) >> 2;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, a2 - 4, a2 - 4, a2 - 8, a2 - 8, a2 - 12, a2 - 12);
          v10 = *a4;
          v11 = *(a2 - 16);
          if (v10 < v11 || v11 >= v10 && a4[1] < *(a2 - 14))
          {
            *(a2 - 16) = v10;
            *a4 = v11;
            v12 = *(a2 - 14);
            *(a2 - 14) = a4[1];
            a4[1] = v12;
            v13 = *(a2 - 16);
            v14 = *(a2 - 12);
            if (v13 < v14 || v14 >= v13 && *(a2 - 14) < *(a2 - 10))
            {
              *(a2 - 12) = v13;
              *(a2 - 16) = v14;
              v15 = *(a2 - 10);
              *(a2 - 10) = *(a2 - 14);
              *(a2 - 14) = v15;
              v16 = *(a2 - 12);
              v17 = *(a2 - 8);
              if (v16 < v17 || v17 >= v16 && *(a2 - 10) < *(a2 - 6))
              {
                *(a2 - 8) = v16;
                *(a2 - 12) = v17;
                v18 = *(a2 - 6);
                *(a2 - 6) = *(a2 - 10);
                *(a2 - 10) = v18;
                v19 = *(a2 - 4);
                if (v16 < v19 || v19 >= v16 && *(a2 - 6) < *(a2 - 2))
                {
                  *(a2 - 4) = v16;
                  *(a2 - 8) = v19;
                  v20 = *(a2 - 2);
                  *(a2 - 2) = *(a2 - 6);
                  *(a2 - 6) = v20;
                }
              }
            }
          }

          goto LABEL_43;
        }

        goto LABEL_17;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, a2 - 4, a2 - 4, a2 - 8, a2 - 8, a3, (a4 + 2));
LABEL_43:
      v42 = 1;
      return v42 & 1;
    }

    v21 = *(a2 - 4);
    v22 = *(a2 - 8);
    if (v22 < v21 || v21 >= v22 && *(a2 - 6) < *(a2 - 2))
    {
      v23 = *a4;
      if (v23 >= v22 && (v22 < v23 || a4[1] >= *(a2 - 6)))
      {
        *(a2 - 4) = v22;
        *(a2 - 8) = v21;
        v39 = *(a2 - 2);
        *(a2 - 2) = *(a2 - 6);
        *(a2 - 6) = v39;
        v40 = *a4;
        if (v40 >= v21 && (v21 < v40 || a4[1] >= v39))
        {
          goto LABEL_43;
        }

        v34 = (a2 - 6);
        *(a2 - 8) = v40;
        *a4 = v21;
        v24 = (a4 + 1);
        goto LABEL_42;
      }

      *(a2 - 4) = v23;
      *a4 = v21;
      v24 = (a4 + 1);
    }

    else
    {
      v30 = *a4;
      if (v30 >= v22 && (v22 < v30 || a4[1] >= *(a2 - 6)))
      {
        goto LABEL_43;
      }

      *(a2 - 8) = v30;
      *a4 = v22;
      v31 = *(a2 - 6);
      *(a2 - 6) = a4[1];
      a4[1] = v31;
      v32 = *(a2 - 8);
      v33 = *(a2 - 4);
      if (v32 >= v33 && (v33 < v32 || *(a2 - 6) >= *(a2 - 2)))
      {
        goto LABEL_43;
      }

      v24 = (a2 - 6);
      *(a2 - 4) = v32;
      *(a2 - 8) = v33;
    }

    v34 = (a2 - 2);
LABEL_42:
    v41 = *v34;
    *v34 = *v24;
    *v24 = v41;
    goto LABEL_43;
  }

  if (v6 < 2)
  {
    goto LABEL_43;
  }

  if (v6 == 2)
  {
    v7 = *a4;
    v8 = *(a2 - 4);
    if (v7 < v8 || v8 >= v7 && a4[1] < *(a2 - 2))
    {
      *(a2 - 4) = v7;
      *a4 = v8;
      v9 = *(a2 - 2);
      *(a2 - 2) = a4[1];
      a4[1] = v9;
    }

    goto LABEL_43;
  }

LABEL_17:
  v25 = (a2 - 8);
  v26 = *(a2 - 8);
  v27 = *(a2 - 4);
  if (v26 < v27 || v27 >= v26 && *(a2 - 6) < *(a2 - 2))
  {
    v28 = *(a2 - 12);
    if (v28 < v26 || v26 >= v28 && *(a2 - 10) < *(a2 - 6))
    {
      *(a2 - 4) = v28;
      *(a2 - 12) = v27;
      v29 = (a2 - 2);
    }

    else
    {
      *(a2 - 4) = v26;
      *(a2 - 8) = v27;
      v44 = *(a2 - 2);
      *(a2 - 2) = *(a2 - 6);
      *(a2 - 6) = v44;
      v45 = *(a2 - 12);
      if (v45 >= v27 && (v27 < v45 || *(a2 - 10) >= v44))
      {
        goto LABEL_51;
      }

      v29 = (a2 - 6);
      *(a2 - 8) = v45;
      *(a2 - 12) = v27;
    }

    v38 = (a2 - 10);
  }

  else
  {
    v35 = *(a2 - 12);
    if (v35 >= v26 && (v26 < v35 || *(a2 - 10) >= *(a2 - 6)))
    {
      goto LABEL_51;
    }

    *(a2 - 8) = v35;
    *(a2 - 12) = v26;
    v36 = *(a2 - 6);
    *(a2 - 6) = *(a2 - 10);
    *(a2 - 10) = v36;
    v37 = *(a2 - 4);
    if (v35 >= v37 && (v37 < v35 || *(a2 - 6) >= *(a2 - 2)))
    {
      goto LABEL_51;
    }

    v38 = (a2 - 6);
    *(a2 - 4) = v35;
    *(a2 - 8) = v37;
    v29 = (a2 - 2);
  }

  v46 = *v29;
  *v29 = *v38;
  *v38 = v46;
LABEL_51:
  v47 = a2 - 12;
  if ((a2 - 12) == a4)
  {
LABEL_69:
    v59 = 1;
  }

  else
  {
    v48 = 0;
    v49 = (a2 - 12);
    while (1)
    {
      v51 = *(v49 - 2);
      v49 -= 2;
      v50 = v51;
      v52 = *(v25 - 2);
      if (v51 < v52 || v52 >= v50 && *(v47 - 2) < *(v25 - 1))
      {
        v53 = *(v47 - 4);
        *(v47 - 4) = v52;
        *(v47 - 2) = *(v25 - 1);
        if (v25 != a2)
        {
          v54 = v25;
          while (1)
          {
            v56 = *v54;
            v54 += 2;
            v55 = v56;
            v57 = v56 >= v53;
            if (v56 <= v53)
            {
              if (!v57)
              {
                break;
              }

              v58 = v25[1];
              if (v58 <= HIWORD(v53))
              {
                break;
              }
            }

            else
            {
              LOWORD(v58) = v25[1];
            }

            *(v25 - 2) = v55;
            *(v25 - 1) = v58;
            v25 = v54;
            if (v54 == a2)
            {
              goto LABEL_67;
            }
          }
        }

        v54 = v25;
LABEL_67:
        *(v54 - 1) = v53;
        if (++v48 == 8)
        {
          break;
        }
      }

      v25 = v47;
      v47 = v49;
      if (v49 == a4)
      {
        goto LABEL_69;
      }
    }

    v59 = 0;
    LOBYTE(v47) = v49 == a4;
  }

  v42 = v59 | v47;
  return v42 & 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a4;
  if (a2 != a4)
  {
    a5 = a3;
    v14 = v8 >> 2;
    v15 = __OFSUB__(v8 >> 2, 2);
    v16 = (v8 >> 2) - 2;
    if (v16 < 0 == v15)
    {
      v17 = v16 >> 1;
      v18 = v17 + 1;
      v19 = a2 - 4 * v17;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14, v19, v19);
        v19 += 4;
        --v18;
      }

      while (v18);
    }

    if (a4 != a6)
    {
      v20 = a4;
      v21 = a4;
      do
      {
        v23 = *(v21 - 4);
        v21 -= 4;
        v22 = v23;
        v24 = *(a2 - 4);
        if (v23 < v24 || v24 >= v22 && *(v20 - 2) < *(a2 - 2))
        {
          *(v20 - 4) = v24;
          *(a2 - 4) = v22;
          v25 = *(v20 - 2);
          *(v20 - 2) = *(a2 - 2);
          *(a2 - 2) = v25;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14, a1, a2);
        }

        v20 = v21;
      }

      while (v21 != a6);
    }

    if (v14 >= 2)
    {
      v26 = a4 + 4;
      do
      {
        v27 = *(a2 - 4);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14);
        if (v26 == v29)
        {
          *(v29 - 4) = v27;
        }

        else
        {
          *(v29 - 4) = *(v26 - 4);
          *(v29 - 2) = *(v26 - 2);
          *(v26 - 4) = v27;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, v28, (v29 - 4), a7, (a2 - (v29 - 4)) >> 2);
        }

        v26 += 4;
      }

      while (v14-- > 2);
    }
  }

  return a5;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a2 - a6;
    v7 = (a4 - 2) >> 1;
    if (v7 >= (a2 - a6) >> 2)
    {
      v8 = v6 >> 1;
      v9 = (v6 >> 1) | 1;
      v10 = a2 - 4 * v9;
      v11 = v8 + 2;
      if (v8 + 2 < a4 && ((v12 = v10 - 4, v13 = *(v10 - 4), v14 = *(v10 - 8), v13 < v14) || v14 >= v13 && *(v10 - 2) < *(v10 - 6)))
      {
        v9 = v11;
      }

      else
      {
        v12 = a2 - 4 * v9;
      }

      v15 = *(v12 - 4);
      v16 = *(a6 - 4);
      if (v15 >= v16 && (v16 < v15 || *(v12 - 2) >= *(a6 - 2)))
      {
        v17 = *(a6 - 4);
        v18 = HIWORD(*(a6 - 4));
        *(a6 - 4) = v15;
        *(a6 - 2) = *(v12 - 2);
        if (v7 >= v9)
        {
          while (1)
          {
            v20 = 2 * v9;
            v9 = (2 * v9) | 1;
            v21 = a2 - 4 * v9;
            v22 = v20 + 2;
            if (v20 + 2 < a4 && ((v19 = v21 - 4, v23 = *(v21 - 4), v24 = *(v21 - 8), v23 < v24) || v24 >= v23 && *(v21 - 2) < *(v21 - 6)))
            {
              v9 = v22;
            }

            else
            {
              v19 = a2 - 4 * v9;
            }

            v25 = *(v19 - 4);
            if (v25 < v17 || v25 <= v17 && *(v19 - 2) < v18)
            {
              break;
            }

            *(v12 - 4) = v25;
            *(v12 - 2) = *(v19 - 2);
            v12 = v19;
            if (v7 < v9)
            {
              goto LABEL_14;
            }
          }
        }

        v19 = v12;
LABEL_14:
        *(v19 - 4) = v17;
        *(v19 - 2) = v18;
      }
    }
  }
}

void std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2;
    a2 += 4 * ~v4;
    v6 = 2 * v4;
    v4 = (2 * v4) | 1;
    v7 = v6 + 2;
    if (v7 < a4)
    {
      v8 = *(a2 - 4);
      v9 = *(a2 - 8);
      if (v8 < v9 || v9 >= v8 && *(a2 - 2) < *(a2 - 6))
      {
        a2 -= 4;
        v4 = v7;
      }
    }

    *(v5 - 4) = *(a2 - 4);
    *(v5 - 2) = *(a2 - 2);
  }

  while (v4 <= (a4 - 2) / 2);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v7 = v6 >> 1;
    v8 = a2 - 4 * (v6 >> 1);
    v9 = *(v8 - 4);
    v10 = *a4;
    if (v9 < v10 || v10 >= v9 && *(v8 - 2) < a4[1])
    {
      v11 = *a4;
      v12 = HIWORD(*a4);
      *a4 = v9;
      a4[1] = *(v8 - 2);
      if (v6 >= 2)
      {
        v13 = a2 - 4 * (v6 >> 1);
        while (1)
        {
          v14 = v7 - 1;
          v7 = (v7 - 1) >> 1;
          v8 = a2 - 4 * v7;
          v15 = *(v8 - 4);
          if (v15 >= v11 && (v15 > v11 || *(v8 - 2) >= v12))
          {
            break;
          }

          *(v13 - 4) = v15;
          *(v13 - 2) = *(v8 - 2);
          v13 = a2 - 4 * v7;
          if (v14 <= 1)
          {
            goto LABEL_14;
          }
        }

        v8 = v13;
      }

LABEL_14:
      *(v8 - 4) = v11;
      *(v8 - 2) = v12;
    }
  }
}

uint64_t SetRAWAttachments(uint64_t a1, __CVBuffer *a2, int a3, char a4, int a5, double a6, uint8x8_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = 16 - a4;
  v23 = 0x100u >> (16 - a4);
  v12 = *(a1 + 17);
  *&a6 = (1 << a3);
  v19 = *&a6;
  v20 = *(a1 + 68);
  valuePtr = v12;
  a7.i32[0] = *(a1 + 12);
  *bytes = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a7))), vdupq_lane_s32(*&a6, 0));
  setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E88], bytes, 16, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EC0], kCFNumberSInt32Type, &valuePtr, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4E68], kCFNumberSInt32Type, &v23, a5);
  v22 = (*(a1 + 18) >> v11) + v23;
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EB0], kCFNumberSInt32Type, &v22, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EA8], kCFNumberFloat32Type, (a1 + 20), a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4E98], kCFNumberFloat32Type, (a1 + 24), a5);
  setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E70], (a1 + 28), 36, a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4E78], kCFNumberFloat32Type, (a1 + 64), a5);
  setCVBufferAttachmentNumber(a2, *MEMORY[0x277CC4EA0], kCFNumberSInt32Type, &v20, a5);
  setCVBufferAttachmentNumber(a2, @"ProResRAW_LargestDCQSS", kCFNumberSInt32Type, (a1 + 72), a5);
  v34[0] = -(0.5 / v19);
  v34[1] = v34[0];
  v34[2] = v34[0];
  v34[3] = 0.5 / v19;
  v34[4] = 0.5 / v19;
  v34[5] = 0.5 / v19;
  v35 = 0;
  v32[0] = 0.5 / v19;
  v32[1] = v34[0];
  v32[2] = 0.5 / v19;
  v32[3] = 0.5 / v19;
  v32[4] = v34[0];
  v32[5] = 0.5 / v19;
  v33 = 0;
  v30[0] = v34[0];
  v30[1] = 0.5 / v19;
  v30[2] = v34[0];
  v30[3] = v34[0];
  v30[4] = 0.5 / v19;
  v30[5] = v34[0];
  v31 = 0;
  v28[0] = 0.5 / v19;
  v28[1] = 0.5 / v19;
  v28[2] = 0.5 / v19;
  v28[3] = v34[0];
  v28[4] = v34[0];
  v28[5] = v34[0];
  v29 = 0;
  memset(v27, 0, sizeof(v27));
  if (!a3)
  {
    goto LABEL_12;
  }

  v13 = v34;
  if (valuePtr > 3)
  {
    if (valuePtr <= 5)
    {
      if (valuePtr == 4)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if (valuePtr == 6)
    {
      goto LABEL_16;
    }

    if (valuePtr == 7)
    {
LABEL_15:
      v13 = v28;
      goto LABEL_17;
    }

LABEL_12:
    v13 = v27;
    goto LABEL_17;
  }

  if (valuePtr <= 1)
  {
    if (!valuePtr)
    {
      goto LABEL_17;
    }

    if (valuePtr != 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = v32;
    goto LABEL_17;
  }

  if (valuePtr != 2)
  {
    goto LABEL_15;
  }

LABEL_16:
  v13 = v30;
LABEL_17:
  v14 = *(v13 + 1);
  *v24 = *v13;
  v25 = v14;
  setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E90], v24, 32, a5);
  v15 = *(a1 + 152);
  v16 = *(a1 + 160);
  if (v16 != v15)
  {
    setCVBufferAttachmentData(a2, *MEMORY[0x277CC4E80], v15, (v16 - v15), a5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

void setCVBufferAttachmentData(__CVBuffer *a1, const __CFString *a2, UInt8 *bytes, CFIndex length, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, length);
  if (v8)
  {
    v9 = v8;
    CVBufferSetAttachment(a1, a2, v8, kCVAttachmentMode_ShouldPropagate);
    v10 = *MEMORY[0x277D85DE8];

    CFRelease(v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109378;
      v12[1] = a5;
      v13 = 2080;
      v14 = "setCVBufferAttachmentData";
      _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Cannot create CFData\n", v12, 0x12u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

void setCVBufferAttachmentNumber(__CVBuffer *a1, const __CFString *a2, CFNumberType theType, const unsigned int *valuePtr, int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], theType, valuePtr);
  if (v8)
  {
    v9 = v8;
    CVBufferSetAttachment(a1, a2, v8, kCVAttachmentMode_ShouldPropagate);
    v10 = *MEMORY[0x277D85DE8];

    CFRelease(v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109378;
      v12[1] = a5;
      v13 = 2080;
      v14 = "setCVBufferAttachmentNumber";
      _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Cannot create CFNumber\n", v12, 0x12u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

uint64_t ProResDecoder_CreateInstance(int a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v7 = *&CFUUIDGetUUIDBytes(v6);
  CFRelease(v6);
  v8 = 0;
  if (a1 <= 1634755431)
  {
    if (a1 != 1634743400 && a1 != 1634743416)
    {
      goto LABEL_24;
    }
  }

  else if ((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0)
  {
    if (a1 == 1634759272 || a1 == 1634759278)
    {
      v8 = 1;
      goto LABEL_9;
    }

LABEL_24:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(keys) = 67109378;
      HIDWORD(keys) = v7;
      LOWORD(v40) = 2080;
      *(&v40 + 2) = "ProResDecoder_CreateInstance";
      _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): AppleProResHW decoder cannot decode unsupported codecType", &keys, 0x12u);
    }

    v9 = 4294954396;
LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      keys = -4227857662;
      LOWORD(v40) = 2080;
      *(&v40 + 2) = "ProResDecoder_CreateInstance";
      WORD5(v40) = 1024;
      HIDWORD(v40) = v9;
      v10 = MEMORY[0x277D86220];
LABEL_35:
      _os_log_impl(&dword_277780000, v10, OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): returning err = %d\n", &keys, 0x18u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

LABEL_9:
  kdebug_trace();
  VTVideoDecoderGetClassID();
  if (CMDerivedObjectCreate())
  {
    v9 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CreateInstance_cold_1();
    }

    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(DerivedStorage, 0x2C8uLL);
  *(DerivedStorage + 692) = 1;
  *(DerivedStorage + 452) = 24;
  *(DerivedStorage + 705) = 0;
  *(DerivedStorage + 700) = -1;
  *(DerivedStorage + 444) = v8;
  *(DerivedStorage + 432) = a1;
  v12 = (DerivedStorage + 708);
  *(DerivedStorage + 708) = v7;
  printCodecType(a1, v7);
  Connection = createConnection(*(DerivedStorage + 444), (DerivedStorage + 392), *(DerivedStorage + 708));
  if (Connection)
  {
    v9 = Connection;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CreateInstance_cold_2((DerivedStorage + 708));
    }
  }

  else
  {
    v14 = *MEMORY[0x277CE26E8];
    keys = *MEMORY[0x277CE26F0];
    *&v40 = v14;
    v15 = *MEMORY[0x277CE26A8];
    *(&v40 + 1) = *MEMORY[0x277CE26C8];
    v41 = v15;
    v16 = *MEMORY[0x277CE2648];
    v42 = *MEMORY[0x277CE26E0];
    v43 = v16;
    v17 = *MEMORY[0x277CE26B8];
    v44 = *MEMORY[0x277CE2710];
    v45 = v17;
    v18 = *MEMORY[0x277CE26A0];
    v46 = *MEMORY[0x277CE2690];
    v47 = v18;
    v48 = @"ProResHW_CheckValue";
    v49 = @"ProResHW_TestSettings";
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *values = 0u;
    v31 = 0u;
    v19 = *MEMORY[0x277CE2688];
    v50 = *MEMORY[0x277CE2650];
    v51 = v19;
    v20 = CFDictionaryCreate(v5, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = vdupq_n_s64(v20);
      do
      {
        *&values[v22] = v23;
        v22 += 2;
      }

      while (v22 != 14);
      v24 = CFDictionaryCreate(v5, &keys, values, 14, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 416) = v24;
      if (!v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_CreateInstance_cold_3();
      }

      CFRelease(v21);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CreateInstance_cold_4();
    }

    v9 = 0;
    *a3 = 0;
  }

  v25 = *(DerivedStorage + 444);
  kdebug_trace();
  if (v9)
  {
    v26 = *(DerivedStorage + 392);
    if (v26)
    {
      closeUserClient(v26, *v12);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = *v12;
      LODWORD(keys) = 67109634;
      HIDWORD(keys) = v27;
      LOWORD(v40) = 2080;
      *(&v40 + 2) = "ProResDecoder_CreateInstance";
      WORD5(v40) = 1024;
      HIDWORD(v40) = v9;
      v10 = MEMORY[0x277D86220];
      goto LABEL_35;
    }
  }

LABEL_36:
  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t ProResDecoder_SetTestCallback(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *a2;
    *(DerivedStorage + 592) = *(a2 + 2);
    *(DerivedStorage + 576) = v4;
  }

  return 0;
}

void ProResDecoder_ParseMetadataExtension(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a4 - 8;
  *&__len[1] = a3;
  a2[1] = *a2;
  MetadataExtensionPtr = getMetadataExtensionPtr(&__len[1], &v21);
  if (v21)
  {
    v12 = MetadataExtensionPtr;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    goto LABEL_25;
  }

  std::vector<unsigned char>::reserve(a2, v21);
  v13 = v21;
  if (v21 < 8)
  {
    goto LABEL_24;
  }

  v14 = MEMORY[0x277D86220];
  v15 = *&__len[1];
  while (1)
  {
    v16 = bswap32(*v15);
    v19 = bswap32(v15[1]);
    __len[0] = v16;
    MetadataSetTag = findMetadataSetTag(v15, v13, __len, &v19);
    if (MetadataSetTag <= 2)
    {
      break;
    }

    if (MetadataSetTag != 3 && MetadataSetTag != 4 && MetadataSetTag != 5)
    {
LABEL_29:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_ParseMetadataExtension();
      }

      goto LABEL_24;
    }

    checkGDCMetadataFromFrameMetaExt(__len[0], v19, *&__len[1], a7);
    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
LABEL_23:
    v15 = (*&__len[1] + __len[0]);
    *&__len[1] = v15;
    v13 = v21 - __len[0];
    v21 = v13;
    if (v13 <= 7)
    {
      goto LABEL_24;
    }
  }

  if (MetadataSetTag <= 0)
  {
    if (MetadataSetTag == -1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v23 = a7;
        v24 = 1024;
        v25 = 1057;
        v26 = 2080;
        v27 = "ProResDecoder_ParseMetadataExtension";
        v28 = 1024;
        v29 = a6;
        _os_log_impl(&dword_277780000, v14, OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): Invalid metadata present for frame %d in metadataExt\n", buf, 0x1Eu);
      }
    }

    else if (MetadataSetTag)
    {
      goto LABEL_29;
    }

    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
    goto LABEL_23;
  }

  if (MetadataSetTag == 2)
  {
    extractISPDebugMetadataFromFrameMetaExt(__len[0], v19, *&__len[1], v21, a2, (a1 + 176));
    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
    goto LABEL_23;
  }

  if (a2[1] - *a2 != 8)
  {
    copyMetadataSetToMetadataExt(*&__len[1], a2, __len[0]);
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_ParseMetadataExtension();
  }

LABEL_24:
  a2[1] = *a2;
LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

const __CFNumber *setBitstreamDepthFromFormatExtensions(const opaqueCMFormatDescription **a1, unsigned int *a2)
{
  result = CMFormatDescriptionGetExtension(*a1, *MEMORY[0x277CC02F8]);
  if (result)
  {

    return CFNumberGetValue(result, kCFNumberSInt32Type, a2);
  }

  else
  {
    *a2 = 24;
  }

  return result;
}

uint64_t ProResDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 96);
    if (v2)
    {
      HasHWError = ProResFrameReceiver::getHasHWError(v2);
    }

    else
    {
      HasHWError = 0;
    }

    ProResDecoder_Finalize();
    if ((*(v1 + 600) & 1) == 0 && *(v1 + 500) && (*(v1 + 705) & 1) == 0)
    {
      v5 = APR_ImgFmt_4CC(*(v1 + 436));
      getRtMpeStr(0, *(v1 + 692), *(v1 + 696), &__p);
      v6 = *(v1 + 476);
      v7 = *(v1 + 480);
      v8 = *(v1 + 432);
      v9 = *(v1 + 436);
      v10 = v5[1];
      v11 = *(v1 + 688);
      v12 = *(v1 + 500);
      v13 = *(v1 + 708);
      v14 = *(v1 + 704);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v15 = *(v1 + 476);
        std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v6 = v15;
      }

      else
      {
        v16 = __p;
      }

      reportDecodeSessionInfo(v6, v7, v8, v9, v10, v11, v12, v13, HasHWError, v14, &v16);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      *(v1 + 705) = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_Invalidate();
    }

    return 4294954385;
  }
}

void sub_277793550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProResDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 708);
  ProResDecoder_WaitForAsynchronousFrames();
  DestroyFrameInfoQueue(DerivedStorage + 104);
  if (*(DerivedStorage + 408))
  {
    CVDataBufferPoolFlush();
    CFRelease(*(DerivedStorage + 408));
    *(DerivedStorage + 408) = 0;
  }

  v2 = *(DerivedStorage + 416);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 416) = 0;
  }

  v3 = *(DerivedStorage + 424);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 424) = 0;
  }

  if (*(DerivedStorage + 400))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 400) = 0;
  }

  v4 = *(DerivedStorage + 96);
  if (v4)
  {
    DestroyProResFrameReceiver(v4, (DerivedStorage + 16));
    *(DerivedStorage + 96) = 0;
  }

  v5 = *(DerivedStorage + 392);
  if (v5)
  {
    closeUserClient(v5, *(DerivedStorage + 708));
    *(DerivedStorage + 392) = 0;
  }

  pthread_cond_destroy((DerivedStorage + 344));
  pthread_mutex_destroy((DerivedStorage + 280));
  pthread_cond_destroy((DerivedStorage + 224));

  return pthread_mutex_destroy((DerivedStorage + 160));
}

__CFString *ProResDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleProResHWDecoder %p>", a1);
  return Mutable;
}

uint64_t ProResDecoder_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  v176 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v8 = DerivedStorage;
      if (CFDictionaryContainsKey(*(DerivedStorage + 416), a2))
      {
        if (CFEqual(a2, *MEMORY[0x277CE26F0]))
        {
          valuePtr = 0;
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v10 = Mutable;
            v11 = *(v8 + 432);
            if (v11 <= 1634755431)
            {
              if (v11 > 1634743399)
              {
                if (v11 == 1634743400 || v11 == 1634743416)
                {
                  if (*(v8 + 452) == 32)
                  {
                    valuePtr = 1932812659;
                    v54 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v54);
                    CFRelease(v54);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645084275;
                      v55 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v55);
                      CFRelease(v55);
                    }

                    valuePtr = 1949589875;
                    v56 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v56);
                    CFRelease(v56);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645149811;
                      v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v57);
                      CFRelease(v57);
                    }

                    valuePtr = 2016698739;
                    v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v58);
                    CFRelease(v58);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645411955;
                      v59 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v59);
                      CFRelease(v59);
                    }

                    valuePtr = 1983144248;
                    v60 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v60);
                    CFRelease(v60);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645280824;
                      v61 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v61);
                      CFRelease(v61);
                    }

                    valuePtr = 1937126452;
                    v62 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v62);
                    CFRelease(v62);
                    valuePtr = 645101108;
                    v63 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v63);
                    CFRelease(v63);
                    valuePtr = 1953903668;
                    v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v64);
                    CFRelease(v64);
                    valuePtr = 645166644;
                    v65 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v65);
                    CFRelease(v65);
                    valuePtr = 2016687156;
                    v66 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v66);
                    CFRelease(v66);
                    valuePtr = 645428788;
                    v67 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v67);
                    CFRelease(v67);
                    valuePtr = 875836534;
                    v68 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v68);
                    CFRelease(v68);
                    valuePtr = 641234484;
                    goto LABEL_31;
                  }

                  valuePtr = 1937126452;
                  v89 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v89);
                  CFRelease(v89);
                  valuePtr = 645101108;
                  v90 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v90);
                  CFRelease(v90);
                  valuePtr = 1953903668;
                  v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v91);
                  CFRelease(v91);
                  valuePtr = 645166644;
                  v92 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v92);
                  CFRelease(v92);
                  valuePtr = 2016687156;
                  v93 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v93);
                  CFRelease(v93);
                  valuePtr = 645428788;
                  v94 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v94);
                  CFRelease(v94);
                  valuePtr = 875836534;
                  v95 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v95);
                  CFRelease(v95);
                  valuePtr = 641234484;
                  v96 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v96);
                  CFRelease(v96);
                  valuePtr = 1932812659;
                  v97 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v97);
                  CFRelease(v97);
                  if (*(v8 + 600) == 1)
                  {
                    valuePtr = 645084275;
                    v98 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v98);
                    CFRelease(v98);
                  }

                  valuePtr = 1949589875;
                  v99 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v99);
                  CFRelease(v99);
                  if (*(v8 + 600) == 1)
                  {
                    valuePtr = 645149811;
                    v100 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v100);
                    CFRelease(v100);
                  }

                  valuePtr = 2016698739;
                  v101 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v101);
                  CFRelease(v101);
                  if (*(v8 + 600) == 1)
                  {
                    valuePtr = 645411955;
                    v102 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v102);
                    CFRelease(v102);
                  }

                  valuePtr = 1983144248;
                  v103 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v103);
                  CFRelease(v103);
                  if (*(v8 + 600) != 1)
                  {
                    goto LABEL_33;
                  }

                  v34 = 645280824;
                  goto LABEL_30;
                }
              }

              else
              {
                if (v11 == 1634742376)
                {
                  valuePtr = 1278226742;
                  v82 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v82);
                  CFRelease(v82);
                  valuePtr = 642527542;
                  v83 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v83);
                  CFRelease(v83);
                  valuePtr = 1278226738;
                  v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v84);
                  CFRelease(v84);
                  valuePtr = 642527538;
                  v85 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v85);
                  CFRelease(v85);
                  valuePtr = 1278226736;
                  v86 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v86);
                  CFRelease(v86);
                  valuePtr = 642527536;
                  v87 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v87);
                  CFRelease(v87);
                  valuePtr = 1278226488;
                  v88 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v88);
                  CFRelease(v88);
                  valuePtr = 642527288;
                  goto LABEL_31;
                }

                if (v11 == 1634742888)
                {
                  valuePtr = 1937125936;
                  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v39);
                  CFRelease(v39);
                  valuePtr = 645101104;
                  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v40);
                  CFRelease(v40);
                  valuePtr = 1953903152;
                  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v41);
                  CFRelease(v41);
                  valuePtr = 645166640;
                  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v42);
                  CFRelease(v42);
                  valuePtr = 2016686640;
                  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v43);
                  CFRelease(v43);
                  valuePtr = 645428784;
                  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v44);
                  CFRelease(v44);
                  if (*(v8 + 557) == 1)
                  {
                    valuePtr = 762869296;
                    v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v45);
                    CFRelease(v45);
                    valuePtr = 796423728;
                    v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v46);
                    CFRelease(v46);
                  }

                  valuePtr = 875704438;
                  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v47);
                  CFRelease(v47);
                  valuePtr = 641234480;
                  v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v48);
                  CFRelease(v48);
                  if (*(v8 + 557) != 1)
                  {
                    goto LABEL_33;
                  }

                  valuePtr = 758674992;
                  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v49);
                  CFRelease(v49);
                  v34 = 2084075056;
                  goto LABEL_30;
                }
              }
            }

            else
            {
              if ((v11 - 1634755432) <= 0xB && ((1 << (v11 - 104)) & 0x8C1) != 0)
              {
                valuePtr = 1937125938;
                v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v12);
                CFRelease(v12);
                valuePtr = 645101106;
                v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v13);
                CFRelease(v13);
                valuePtr = 1953903154;
                v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v14);
                CFRelease(v14);
                valuePtr = 645166642;
                v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v15);
                CFRelease(v15);
                valuePtr = 2016686642;
                v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v16);
                CFRelease(v16);
                valuePtr = 645428786;
                v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v17);
                CFRelease(v17);
                if (*(v8 + 557) == 1)
                {
                  valuePtr = 762869298;
                  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v18);
                  CFRelease(v18);
                  valuePtr = 796423730;
                  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v19);
                  CFRelease(v19);
                }

                valuePtr = 875704950;
                v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v20);
                CFRelease(v20);
                v21 = 641234484;
LABEL_29:
                v34 = v21 - 2;
LABEL_30:
                valuePtr = v34;
LABEL_31:
                v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v35);
LABEL_32:
                CFRelease(v35);
LABEL_33:
                result = 0;
                *a4 = v10;
                goto LABEL_53;
              }

              if (v11 == 1634759272 || v11 == 1634759278)
              {
                if (!*(v8 + 520))
                {
                  valuePtr = 1647392369;
                  v121 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v121);
                  CFRelease(v121);
                  if (*(v8 + 554) != 1)
                  {
                    goto LABEL_33;
                  }

                  valuePtr = 1651519798;
                  v122 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v122);
                  CFRelease(v122);
                  valuePtr = 1651798066;
                  v123 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v123);
                  CFRelease(v123);
                  v51 = 1650942776;
                  valuePtr = 1650946098;
                  v124 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v124);
                  CFRelease(v124);
                  valuePtr = 1919381552;
                  v125 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v125);
                  CFRelease(v125);
                  valuePtr = 1735553072;
                  v126 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v126);
                  CFRelease(v126);
                  valuePtr = 1734504496;
                  v127 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v127);
                  CFRelease(v127);
                  valuePtr = 1650946096;
                  v128 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v128);
                  CFRelease(v128);
                  valuePtr = 1919378232;
                  v129 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v129);
                  CFRelease(v129);
                  valuePtr = 1735549752;
                  v130 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v130);
                  CFRelease(v130);
                  valuePtr = 1734501176;
                  goto LABEL_109;
                }

LABEL_48:
                v51 = 1651520304;
                valuePtr = 1651521076;
LABEL_109:
                v131 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v131);
                CFRelease(v131);
                valuePtr = v51;
                goto LABEL_31;
              }
            }

            CFRelease(Mutable);
            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_53;
            }

            ProResDecoder_CopyProperty(v8);
LABEL_124:
            result = 0;
            goto LABEL_53;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v36 = *(v8 + 708);
            *buf = 67109378;
            v173 = v36;
            v174 = 2080;
            v175 = "ProResDecoder_CopyProperty";
            v37 = MEMORY[0x277D86220];
            v38 = "AppleProResHW (0x%x): %s(): CFArrayCreateMutable failed!";
LABEL_51:
            _os_log_impl(&dword_277780000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x12u);
          }

LABEL_52:
          result = 4294954392;
          goto LABEL_53;
        }

        if (CFEqual(a2, *MEMORY[0x277CE26E8]))
        {
          valuePtr = 0;
          v23 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (v23)
          {
            v10 = v23;
            v24 = *(v8 + 432);
            if (v24 <= 1634755431)
            {
              if (v24 > 1634743399)
              {
                if (v24 == 1634743400 || v24 == 1634743416)
                {
                  if (*(v8 + 452) == 32)
                  {
                    valuePtr = 1983144248;
                    v105 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v105);
                    CFRelease(v105);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645280824;
                      v106 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v106);
                      CFRelease(v106);
                    }

                    valuePtr = 2016698739;
                    v107 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v107);
                    CFRelease(v107);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645411955;
                      v108 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v108);
                      CFRelease(v108);
                    }

                    valuePtr = 1949589875;
                    v109 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v109);
                    CFRelease(v109);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645149811;
                      v110 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v110);
                      CFRelease(v110);
                    }

                    valuePtr = 1932812659;
                    v111 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v111);
                    CFRelease(v111);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645084275;
                      v112 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v112);
                      CFRelease(v112);
                    }

                    valuePtr = 875836534;
                    v113 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v113);
                    CFRelease(v113);
                    valuePtr = 641234484;
                    v114 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v114);
                    CFRelease(v114);
                    valuePtr = 2016687156;
                    v115 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v115);
                    CFRelease(v115);
                    valuePtr = 645428788;
                    v116 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v116);
                    CFRelease(v116);
                    valuePtr = 1953903668;
                    v117 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v117);
                    CFRelease(v117);
                    valuePtr = 645166644;
                    v118 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v118);
                    CFRelease(v118);
                    valuePtr = 1937126452;
                    v119 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v119);
                    CFRelease(v119);
                    v120 = 30260;
                  }

                  else
                  {
                    valuePtr = 875836534;
                    v140 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v140);
                    CFRelease(v140);
                    valuePtr = 641234484;
                    v141 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v141);
                    CFRelease(v141);
                    valuePtr = 2016687156;
                    v142 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v142);
                    CFRelease(v142);
                    valuePtr = 645428788;
                    v143 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v143);
                    CFRelease(v143);
                    valuePtr = 1953903668;
                    v144 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v144);
                    CFRelease(v144);
                    valuePtr = 645166644;
                    v145 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v145);
                    CFRelease(v145);
                    valuePtr = 1937126452;
                    v146 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v146);
                    CFRelease(v146);
                    valuePtr = 645101108;
                    v147 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v147);
                    CFRelease(v147);
                    valuePtr = 1983144248;
                    v148 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v148);
                    CFRelease(v148);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645280824;
                      v149 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v149);
                      CFRelease(v149);
                    }

                    valuePtr = 2016698739;
                    v150 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v150);
                    CFRelease(v150);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645411955;
                      v151 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v151);
                      CFRelease(v151);
                    }

                    valuePtr = 1949589875;
                    v152 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v152);
                    CFRelease(v152);
                    if (*(v8 + 600) == 1)
                    {
                      valuePtr = 645149811;
                      v153 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                      CFArrayAppendValue(v10, v153);
                      CFRelease(v153);
                    }

                    valuePtr = 1932812659;
                    v154 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v154);
                    CFRelease(v154);
                    if (*(v8 + 600) != 1)
                    {
                      goto LABEL_33;
                    }

                    v120 = 13427;
                  }

                  v34 = v120 | 0x26730000;
                  goto LABEL_30;
                }
              }

              else
              {
                if (v24 == 1634742376)
                {
                  valuePtr = 1278226488;
                  v133 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v133);
                  CFRelease(v133);
                  valuePtr = 642527288;
                  v134 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v134);
                  CFRelease(v134);
                  valuePtr = 1278226736;
                  v135 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v135);
                  CFRelease(v135);
                  valuePtr = 642527536;
                  v136 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v136);
                  CFRelease(v136);
                  valuePtr = 1278226738;
                  v137 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v137);
                  CFRelease(v137);
                  valuePtr = 642527538;
                  v138 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v138);
                  CFRelease(v138);
                  valuePtr = 1278226742;
                  v139 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v139);
                  CFRelease(v139);
                  v34 = 642527542;
                  goto LABEL_30;
                }

                if (v24 == 1634742888)
                {
                  if (*(v8 + 557) == 1)
                  {
                    valuePtr = 2084075056;
                    v69 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v69);
                    CFRelease(v69);
                    valuePtr = 758674992;
                    v70 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v70);
                    CFRelease(v70);
                  }

                  valuePtr = 875704438;
                  v71 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v71);
                  CFRelease(v71);
                  valuePtr = 641234480;
                  v72 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v72);
                  CFRelease(v72);
                  if (*(v8 + 557) == 1)
                  {
                    valuePtr = 796423728;
                    v73 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v73);
                    CFRelease(v73);
                    valuePtr = 762869296;
                    v74 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v74);
                    CFRelease(v74);
                  }

                  valuePtr = 2016686640;
                  v75 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v75);
                  CFRelease(v75);
                  valuePtr = 645428784;
                  v76 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v76);
                  CFRelease(v76);
                  valuePtr = 1953903152;
                  v77 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v77);
                  CFRelease(v77);
                  valuePtr = 645166640;
                  v78 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v78);
                  CFRelease(v78);
                  valuePtr = 1937125936;
                  v79 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v79);
                  CFRelease(v79);
                  v34 = 645101104;
                  goto LABEL_30;
                }
              }
            }

            else
            {
              if ((v24 - 1634755432) <= 0xB && ((1 << (v24 - 104)) & 0x8C1) != 0)
              {
                valuePtr = 875704950;
                v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v25);
                CFRelease(v25);
                valuePtr = 641234482;
                v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v26);
                CFRelease(v26);
                if (*(v8 + 557) == 1)
                {
                  valuePtr = 796423730;
                  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v27);
                  CFRelease(v27);
                  valuePtr = 762869298;
                  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v28);
                  CFRelease(v28);
                }

                valuePtr = 2016686642;
                v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v29);
                CFRelease(v29);
                valuePtr = 645428786;
                v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v30);
                CFRelease(v30);
                valuePtr = 1953903154;
                v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v31);
                CFRelease(v31);
                valuePtr = 645166642;
                v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v32);
                CFRelease(v32);
                valuePtr = 1937125938;
                v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                CFArrayAppendValue(v10, v33);
                CFRelease(v33);
                v21 = 645101108;
                goto LABEL_29;
              }

              if (v24 == 1634759272 || v24 == 1634759278)
              {
                if (*(v8 + 520))
                {
                  valuePtr = 1651520304;
                  v104 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                  CFArrayAppendValue(v10, v104);
                  CFRelease(v104);
                  v34 = 1651521076;
                }

                else
                {
                  if (*(v8 + 554) == 1)
                  {
                    valuePtr = 1919378232;
                    v155 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v155);
                    CFRelease(v155);
                    valuePtr = 1735549752;
                    v156 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v156);
                    CFRelease(v156);
                    valuePtr = 1734501176;
                    v157 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v157);
                    CFRelease(v157);
                    valuePtr = 1650942776;
                    v158 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v158);
                    CFRelease(v158);
                    valuePtr = 1919381552;
                    v159 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v159);
                    CFRelease(v159);
                    valuePtr = 1735553072;
                    v160 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v160);
                    CFRelease(v160);
                    valuePtr = 1734504496;
                    v161 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v161);
                    CFRelease(v161);
                    valuePtr = 1650946096;
                    v162 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v162);
                    CFRelease(v162);
                    valuePtr = 1650946098;
                    v163 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v163);
                    CFRelease(v163);
                    valuePtr = 1651798066;
                    v164 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v164);
                    CFRelease(v164);
                    valuePtr = 1651519798;
                    v165 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
                    CFArrayAppendValue(v10, v165);
                    CFRelease(v165);
                  }

                  v34 = 1647392369;
                }

                goto LABEL_30;
              }
            }

            CFRelease(v23);
            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_53;
            }

            ProResDecoder_CopyProperty(v8);
            goto LABEL_124;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        if (CFEqual(a2, *MEMORY[0x277CE26C8]))
        {
          v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v50 = CFNumberCreate(0, kCFNumberSInt32Type, (v8 + 528));
          CFDictionaryAddValue(v10, *MEMORY[0x277CE2770], v50);
          CFRelease(v50);
          v35 = CFNumberCreate(0, kCFNumberSInt32Type, (v8 + 536));
          CFDictionaryAddValue(v10, *MEMORY[0x277CE2768], v35);
          goto LABEL_32;
        }

        if (CFEqual(a2, *MEMORY[0x277CE26A8]))
        {
          valuePtr = 0;
          v80 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (v80)
          {
            v10 = v80;
            v81 = *(v8 + 432);
            if (v81 <= 1634755431)
            {
              if (v81 > 1634743399)
              {
                if (v81 == 1634743400 || v81 == 1634743416)
                {
                  v34 = 875836534;
                  goto LABEL_30;
                }
              }

              else
              {
                if (v81 == 1634742376)
                {
                  v34 = 1278226488;
                  goto LABEL_30;
                }

                if (v81 == 1634742888)
                {
                  v34 = 875704438;
                  goto LABEL_30;
                }
              }
            }

            else
            {
              if ((v81 - 1634755432) <= 0xB && ((1 << (v81 - 104)) & 0x8C1) != 0)
              {
                v34 = 875704950;
                goto LABEL_30;
              }

              if (v81 == 1634759272 || v81 == 1634759278)
              {
                goto LABEL_48;
              }
            }

            CFRelease(v80);
            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_53;
            }

            ProResDecoder_CopyProperty(v8);
            goto LABEL_124;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_52;
          }

LABEL_50:
          v52 = *(v8 + 708);
          *buf = 67109378;
          v173 = v52;
          v174 = 2080;
          v175 = "ProResDecoder_CopyProperty";
          v37 = MEMORY[0x277D86220];
          v38 = "AppleProResHW (0x%x): %s():  CFArrayCreateMutable failed!";
          goto LABEL_51;
        }

        if (CFEqual(a2, *MEMORY[0x277CE26E0]))
        {
          CFRetain(*(v8 + 424));
          result = 0;
          v132 = *(v8 + 424);
LABEL_159:
          *a4 = v132;
          goto LABEL_53;
        }

        if (CFEqual(a2, *MEMORY[0x277CE2648]))
        {
          result = 0;
          v166 = MEMORY[0x277CBED10];
LABEL_158:
          v132 = *v166;
          goto LABEL_159;
        }

        if (CFEqual(a2, *MEMORY[0x277CE2710]))
        {
LABEL_143:
          result = 0;
          v166 = MEMORY[0x277CBED28];
          goto LABEL_158;
        }

        if (CFEqual(a2, *MEMORY[0x277CE26B8]))
        {
          result = 0;
          if (*(v8 + 692))
          {
            v166 = MEMORY[0x277CBED28];
          }

          else
          {
            v166 = MEMORY[0x277CBED10];
          }

          goto LABEL_158;
        }

        if (CFEqual(a2, *MEMORY[0x277CE2690]))
        {
          result = 0;
          v167 = *(v8 + 696);
        }

        else
        {
          if (!CFEqual(a2, *MEMORY[0x277CE26A0]))
          {
            if (CFEqual(a2, *MEMORY[0x277CE2650]))
            {
              goto LABEL_143;
            }

            if (CFEqual(a2, *MEMORY[0x277CE2688]))
            {
              *buf = 53;
              v168 = buf;
              v169 = a3;
              v170 = kCFNumberSInt32Type;
            }

            else
            {
              if (!CFEqual(a2, @"ProResHW_CheckValue"))
              {
                result = CFEqual(a2, @"ProResHW_TestSettings");
                if (!result)
                {
                  goto LABEL_53;
                }

                result = 0;
                v167 = *(v8 + 600);
                goto LABEL_155;
              }

              v168 = (v8 + 512);
              v169 = a3;
              v170 = kCFNumberSInt64Type;
            }

            v132 = CFNumberCreate(v169, v170, v168);
            result = 0;
            goto LABEL_159;
          }

          result = 0;
          v167 = *(v8 + 472);
        }

LABEL_155:
        if (v167)
        {
          v166 = MEMORY[0x277CBED28];
        }

        else
        {
          v166 = MEMORY[0x277CBED10];
        }

        goto LABEL_158;
      }

      result = 4294954396;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_CopyProperty();
      }

      result = 4294954385;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CopyProperty();
    }

    result = 4294954394;
  }

LABEL_53:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProResDecoder_SetProperty(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_SetProperty();
    }

    v8 = 4294954394;
    goto LABEL_84;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_SetProperty();
    }

    v8 = 4294954385;
    goto LABEL_84;
  }

  v6 = DerivedStorage;
  CFStringGetCString(a2, buffer, 100, 0);
  v7 = *(v6 + 416);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_SetProperty();
    }

    goto LABEL_21;
  }

  if (!CFDictionaryContainsKey(v7, a2))
  {
LABEL_21:
    v8 = 4294954396;
    goto LABEL_84;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26C8]))
  {
    LODWORD(valuePtr) = 0;
    v28 = 0;
    if (a3)
    {
      v8 = 3758097090;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CE2770]);
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v10 = CFDictionaryGetValue(a3, *MEMORY[0x277CE2768]);
      CFNumberGetValue(v10, kCFNumberSInt32Type, &v28);
      v11 = valuePtr;
      if (!valuePtr || (v12 = v28) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_SetProperty(v6);
        }

        goto LABEL_82;
      }

      v13 = *(v6 + 476) / valuePtr;
      if (v13 != (*(v6 + 480) / v28))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_SetProperty(v6);
        }

        goto LABEL_82;
      }

      if (v13 != 8.0 && v13 != 2.0 && v13 != 4.0)
      {
LABEL_82:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_84;
      }

      if (v13 == 4.0)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      if (v13 == 2.0)
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
      v11 = *(v6 + 476);
      LODWORD(valuePtr) = v11;
      v12 = *(v6 + 480);
      v28 = v12;
    }

    *(v6 + 520) = v14;
    v15 = v11;
    *(v6 + 528) = v11;
    *(v6 + 536) = v12;
    if (*v6 == 1)
    {
LABEL_81:
      v8 = 0;
      goto LABEL_82;
    }

    v16 = ((v11 + 15) & 0xFFFFFFF0) - v11;
    v17 = ((v12 + 15) & 0xFFFFFFF0) - v12;
    v18 = *(v6 + 444);
    if (v18)
    {
      if (v18 != 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_SetProperty(v6);
        }

        v8 = 4294954394;
        goto LABEL_82;
      }

      createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 1380013906, 1, 0, *(v6 + 600), (v6 + 552));
      goto LABEL_80;
    }

    v21 = *(v6 + 432);
    if (v21 <= 1634743415)
    {
      if (v21 == 1634742376)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 875573280, 0, 0, *(v6 + 600), (v6 + 552));
        goto LABEL_80;
      }

      if (v21 == 1634742888)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 875704352, 0, 0, *(v6 + 600), (v6 + 552));
        goto LABEL_80;
      }

      v23 = 13416;
    }

    else
    {
      if ((v21 - 1634755432) <= 0xB && ((1 << (v21 - 104)) & 0x8C1) != 0)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 875704864, 0, 0, *(v6 + 600), (v6 + 552));
LABEL_80:
        v24 = *v6;
        VTDecoderSessionSetPixelBufferAttributes();
        goto LABEL_81;
      }

      if (v21 == 1634759276)
      {
        createPixelBufferAttributesDictionary(&cf, v11, v12, v16, v17, 1634759276, 0, 0, *(v6 + 600), (v6 + 552));
        goto LABEL_80;
      }

      v23 = 13432;
    }

    if (v21 != (v23 | 0x61700000))
    {
      v8 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_SetProperty(v6);
      }

      goto LABEL_82;
    }

    createPixelBufferAttributesDictionary(&cf, v15, v12, v16, v17, 875836448, 0, 0, *(v6 + 600), (v6 + 552));
    goto LABEL_80;
  }

  if (CFEqual(a2, @"ProResHW_CheckValue"))
  {
    if (a3)
    {
      valuePtr = 0;
      CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
      v8 = 0;
      *(v6 + 512) = valuePtr;
    }

    else
    {
      v8 = 0;
      *(v6 + 512) = 0;
    }
  }

  else if (CFEqual(a2, @"ProResHW_TestSettings"))
  {
    v8 = 0;
    if (a3)
    {
      *(v6 + 600) = CFEqual(a3, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      *(v6 + 600) = 0;
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    v8 = 0;
    if (a3)
    {
      v22 = CFEqual(a3, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      v22 = 1;
    }

    *(v6 + 692) = v22;
  }

  else if (CFEqual(a2, *MEMORY[0x277CE2690]))
  {
    v8 = 0;
    if (a3)
    {
      *(v6 + 696) = CFEqual(a3, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      *(v6 + 696) = 0;
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CE26A0]))
  {
    v8 = 0;
    if (a3)
    {
      *(v6 + 472) = CFBooleanGetValue(a3) != 0;
    }

    else
    {
      *(v6 + 472) = 0;
    }
  }

  else
  {
    v8 = 4294954395;
  }

LABEL_84:
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void ProResDecoder_WaitForAsynchronousFrames()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    pthread_mutex_lock((DerivedStorage + 160));
    gettimeofday(&v9, 0);
    v2 = 1200;
    if (*(v1 + 600) == 1)
    {
      v3 = atomic_load((v1 + 152));
      v2 = 1200 * v3;
    }

    v10.tv_sec = v2 + v9.tv_sec;
    v10.tv_nsec = 1000 * v9.tv_usec;
    if (atomic_load((v1 + 152)))
    {
      do
      {
        v5 = pthread_cond_timedwait((v1 + 224), (v1 + 160), &v10);
        if (atomic_load((v1 + 152)))
        {
          v7 = v5 == 0;
        }

        else
        {
          v7 = 0;
        }
      }

      while (v7);
      v8 = v5;
      pthread_mutex_unlock((v1 + 160));
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_WaitForAsynchronousFrames();
        }
      }
    }

    else
    {

      pthread_mutex_unlock((v1 + 160));
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_WaitForAsynchronousFrames();
  }
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ProResDecoder_StartSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  outputStructCnt = 24;
  cf = 0;
  if (!a1 || !a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    DerivedStorage = 0;
    v15 = 4294954394;
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 444);
  v30 = *(DerivedStorage + 708);
  kdebug_trace();
  pthread_mutex_init((DerivedStorage + 280), 0);
  pthread_cond_init((DerivedStorage + 344), 0);
  *(DerivedStorage + 272) = 1;
  pthread_mutex_init((DerivedStorage + 160), 0);
  pthread_cond_init((DerivedStorage + 224), 0);
  atomic_store(0, (DerivedStorage + 152));
  *DerivedStorage = a2;
  if (*(DerivedStorage + 432) != CMFormatDescriptionGetMediaSubType(a3))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    v15 = 4294954578;
    goto LABEL_19;
  }

  v7 = *(DerivedStorage + 400);
  FigFormatDescriptionRelease();
  *(DerivedStorage + 400) = FigFormatDescriptionRetain();
  *(DerivedStorage + 504) = 0x400000000008;
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  v9 = Dimensions;
  v10 = HIDWORD(Dimensions);
  if (*(DerivedStorage + 444) == 1)
  {
    v11 = 16;
  }

  else
  {
    v11 = 8;
  }

  v12 = *(DerivedStorage + 708);
  NumSlices = getNumSlices(Dimensions, SHIDWORD(Dimensions), v11);
  v14 = NumSlices;
  if (NumSlices < 9 || NumSlices > *(DerivedStorage + 504) << 15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = *(DerivedStorage + 504) << 15;
      *buf = 67110914;
      v39 = v30;
      v40 = 0x8200000048D0400;
      v41 = "ProResDecoder_StartSession";
      v42 = 1024;
      v43 = v9;
      v44 = 1024;
      LODWORD(v45) = v10;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v14;
      WORD5(v45) = 1024;
      HIDWORD(v45) = 9;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v20;
      _os_log_error_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR AppleProResHW (0x%x): %d: %s(): %d x %d results in maxSlices %d Under %d or Over %d\n", buf, 0x36u);
    }

    v15 = 4294954386;
    goto LABEL_19;
  }

  if ((v9 - 65537) <= 0xFFFF000E)
  {
    v15 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  if ((v10 - 65537) <= 0xFFFF000E)
  {
    v15 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  v19 = v10 * v9;
  if ((v10 * v9) >= 0x10000001)
  {
    v15 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  *(DerivedStorage + 476) = v9;
  *(DerivedStorage + 480) = v10;
  *(DerivedStorage + 492) = ((v9 + 15) & 0x3FFF0) - v9;
  *(DerivedStorage + 496) = ((v10 + 15) & 0x3FFF0) - v10;
  *(DerivedStorage + 520) = 0;
  setBitstreamDepthFromFormatExtensions((DerivedStorage + 400), (DerivedStorage + 452));
  if ((v19 >> 10 < 0x7E9) | *(DerivedStorage + 696) & 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  *(DerivedStorage + 468) = v21;
  inputStruct[0] = *(DerivedStorage + 444);
  inputStruct[1] = v21;
  v34 = 0xFFFFFFFFLL;
  v35 = *(DerivedStorage + 708);
  if (IOConnectCallStructMethod(*(DerivedStorage + 392), 0, inputStruct, 0x14uLL, &outputStruct, &outputStructCnt))
  {
    v15 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession();
    }

    goto LABEL_19;
  }

  v29 = (DerivedStorage + 552);
  *(DerivedStorage + 552) = outputStruct;
  *(DerivedStorage + 568) = v32;
  if (v19 <= 0x870000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  *(DerivedStorage + 460) = v22;
  if (v19 > 0x870000)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  CreateFrameInfoQueue(DerivedStorage + 104, *(DerivedStorage + 552) << v23);
  *buf = *(DerivedStorage + 392);
  LOBYTE(v42) = 0;
  HIBYTE(v42) = *(DerivedStorage + 89);
  *&v45 = DerivedStorage + 104;
  *(&v45 + 1) = DerivedStorage + 152;
  v46 = DerivedStorage + 160;
  v47 = DerivedStorage + 224;
  v48 = DerivedStorage + 272;
  v49 = DerivedStorage + 280;
  v50 = DerivedStorage + 344;
  v40 = *DerivedStorage;
  v52 = 0;
  v51 = (*(DerivedStorage + 468) & 0xFFFFFFFE) == 2;
  v53 = *(DerivedStorage + 552);
  if (v40 == 1)
  {
    v52 = DerivedStorage + 576;
  }

  ProResFrameReceiver = CreateProResFrameReceiver((DerivedStorage + 96), buf, (DerivedStorage + 16), (DerivedStorage + 80), *(DerivedStorage + 444), *(DerivedStorage + 708));
  if (ProResFrameReceiver)
  {
    v15 = ProResFrameReceiver;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_StartSession((DerivedStorage + 708));
    }

    goto LABEL_19;
  }

  v25 = *(DerivedStorage + 444);
  if (!v25)
  {
    *(DerivedStorage + 448) = 3;
    v26 = *(DerivedStorage + 432);
    if (v26 <= 1634743415)
    {
      if (v26 != 1634742376)
      {
        if (v26 == 1634742888)
        {
          createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875704352, 0, 0, *(DerivedStorage + 600), v29);
          v27 = 1;
          goto LABEL_66;
        }

        v28 = 13416;
LABEL_62:
        if (v26 == (v28 | 0x61700000))
        {
          createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875836448, 0, *(DerivedStorage + 452) == 32, *(DerivedStorage + 600), v29);
          v27 = 3;
          goto LABEL_66;
        }

LABEL_73:
        v15 = 3758097084;
        *(DerivedStorage + 448) = 8;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_StartSession();
        }

        goto LABEL_19;
      }

      createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875573280, 0, 0, *(DerivedStorage + 600), v29);
    }

    else
    {
      if ((v26 - 1634755432) <= 0xB && ((1 << (v26 - 104)) & 0x8C1) != 0)
      {
        createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 875704864, 0, 0, *(DerivedStorage + 600), v29);
        v27 = 2;
LABEL_66:
        *(DerivedStorage + 440) = v27;
        goto LABEL_70;
      }

      if (v26 != 1634759276)
      {
        v28 = 13432;
        goto LABEL_62;
      }

      if (*(DerivedStorage + 555) != 1)
      {
        goto LABEL_73;
      }

      *(DerivedStorage + 448) = 1;
      createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 1634759276, 0, 0, *(DerivedStorage + 600), v29);
    }

    *(DerivedStorage + 440) = 0;
    goto LABEL_70;
  }

  if (v25 == 1)
  {
    *(DerivedStorage + 448) = 0;
    createPixelBufferAttributesDictionary(&cf, *(DerivedStorage + 476), *(DerivedStorage + 480), *(DerivedStorage + 492), *(DerivedStorage + 496), 1380013856, 1, 0, *(DerivedStorage + 600), v29);
LABEL_70:
    if (a2 != 1)
    {
      VTDecoderSessionSetPixelBufferAttributes();
    }

    createSuggestedQualityOfServiceTiers(*(DerivedStorage + 432), *(DerivedStorage + 476), *(DerivedStorage + 480), (DerivedStorage + 424));
    v15 = 0;
    goto LABEL_19;
  }

  v15 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_StartSession();
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  v16 = *(DerivedStorage + 444);
  kdebug_trace();
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t ProResDecoder_DecodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, _DWORD *a5)
{
  v188 = *MEMORY[0x277D85DE8];
  texture = 0;
  cf = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  v187 = 0;
  v186 = 0u;
  *__p = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  *v176 = 0u;
  v174 = 0;
  v173 = 0;
  v175 = 0;
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  *v157 = 0u;
  inputStruct = 0u;
  memset(v156, 0, sizeof(v156));
  v154 = 0;
  memset(v153, 0, sizeof(v153));
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v148 = 0;
  v146 = 0u;
  v147 = 0u;
  v145 = **&MEMORY[0x277CC08F0];
  v144 = v145;
  v143 = 24;
  FormatDescription = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 500);
  v9 = *(DerivedStorage + 444);
  v10 = *(DerivedStorage + 708);
  kdebug_trace();
  CMSampleBufferGetOutputDuration(&v141, a3);
  v11 = (DerivedStorage + 604);
  *(DerivedStorage + 604) = v141;
  if ((*(DerivedStorage + 616) & 0x1D) == 1)
  {
    if ((*(DerivedStorage + 640) & 0x1D) == 1)
    {
      CMSampleBufferGetDecodeTimeStamp(&v141, a3);
      v12 = DerivedStorage + 628;
      v145 = v141;
      lhs = v141;
      rhs = *(DerivedStorage + 628);
      CMTimeSubtract(&v141, &lhs, &rhs);
      *v11 = *&v141.value;
      *(DerivedStorage + 620) = v141.epoch;
      *(DerivedStorage + 628) = *&v145.value;
      epoch = v145.epoch;
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v141, a3);
      v144 = v141;
      lhs = v141;
      v12 = DerivedStorage + 652;
      rhs = *(DerivedStorage + 652);
      CMTimeSubtract(&v141, &lhs, &rhs);
      *v11 = *&v141.value;
      *(DerivedStorage + 620) = v141.epoch;
      *(DerivedStorage + 652) = *&v144.value;
      epoch = v144.epoch;
    }

    *(v12 + 16) = epoch;
    if (*v11 < 1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *(DerivedStorage + 612) / *v11;
    }

    *(DerivedStorage + 680) = v14;
  }

  else
  {
    v14 = *(DerivedStorage + 680);
  }

  v15 = (v14 + 0.5);
  if (v15 - 1025 < 0xFFFFFC00)
  {
    v15 = 1;
  }

  LODWORD(v161) = v15;
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v18 = (DerivedStorage + 708);
  *(DerivedStorage + 544) = DataLength;
  if (!DataBuffer)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

    goto LABEL_25;
  }

  if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, DataLength))
  {
    blockBufferOut = DataBuffer;
    CFRetain(DataBuffer);
  }

  else
  {
    CMBlockBufferCreateContiguous(*MEMORY[0x277CBECE8], DataBuffer, *MEMORY[0x277CBECE8], 0, 0, *(DerivedStorage + 544), 2u, &blockBufferOut);
  }

  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
  if (*(DerivedStorage + 544) <= 7uLL)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

LABEL_21:
    v19 = 0;
    IOSurface = 0;
LABEL_26:
    if (*DerivedStorage != 1)
    {
      v22 = *v18;
      ProResDecoder_WaitForAsynchronousFrames();
      v23 = *DerivedStorage;
      VTDecoderSessionEmitDecodedFrame();
    }

    if (texture)
    {
      CVPixelBufferRelease(texture);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v19)
    {
      bzero(v19, 0x320uLL);
    }

    v24 = *DerivedStorage;
    VTDecoderSessionCleanUpAfterDecode();
    goto LABEL_35;
  }

  FrameSize = getFrameSize(dataPointerOut);
  if (FrameSize > *(DerivedStorage + 544))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

LABEL_25:
    v19 = 0;
    IOSurface = 0;
    goto LABEL_26;
  }

  v29 = dataPointerOut;
  if ((*(DerivedStorage + 432) | 0x10) == 0x61703478)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    setBitstreamDepthFromFormatExtensions(&FormatDescription, &v143);
    v30 = v143 != 32;
  }

  else
  {
    v30 = 1;
  }

  if (FrameSize <= 0x13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

    goto LABEL_21;
  }

  v132 = (v29 + 8);
  v31 = parseFrameHeader(v176, v29 + 4, v30, *(DerivedStorage + 444), *(DerivedStorage + 708));
  if (v31)
  {
    if (v31 != -536870191)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_21;
    }

    *(DerivedStorage + 704) = 1;
  }

  if (LOWORD(v176[2]) <= 0xFu)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

    goto LABEL_25;
  }

  if (HIWORD(v176[2]) <= 0xFu)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

    goto LABEL_25;
  }

  v157[0] = LOWORD(v176[2]);
  v157[1] = HIWORD(v176[2]);
  if (*(DerivedStorage + 444))
  {
    if (BYTE1(v177) >= 4u && (*(DerivedStorage + 565) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_21;
    }

    *(DerivedStorage + 688) = 0;
    ProResDecoder_ParseMetadataExtension(v176, &__p[1], v132, FrameSize, 0, *(DerivedStorage + 500), *(DerivedStorage + 708));
    v32 = *v18;
    if (ProResDecoder_GetLargestDCQSS(v176, v132, &dataPointerOut[FrameSize]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      v19 = 0;
      IOSurface = 0;
      goto LABEL_26;
    }

    DWORD2(v156[0]) = 0;
    BYTE12(v156[0]) = 0;
    HIDWORD(v160) = BYTE1(v177);
    BYTE6(v156[0]) = 0;
    HIBYTE(v156[0]) = *(DerivedStorage + 600) ^ 1;
    ProResDecoder_GetSubFramePictureSliceInfo(LOWORD(v176[2]), HIWORD(v176[2]), 1 << ((v29[79] >> 1) & 7), 0x8000u, &v149, 0);
    v34 = 0;
    v35 = (v29 + 8);
  }

  else
  {
    *(DerivedStorage + 688) = HIBYTE(v176[3]);
    if (LOWORD(v176[0]) + 8 > FrameSize)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_21;
    }

    v33 = v132 + LOWORD(v176[0]);
    v128 = *v18;
    ProResDecoder_ParsePictureHeader(&v173, v33);
    if (v33 + HIDWORD(v173) - v132 > FrameSize)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame();
      }

      goto LABEL_21;
    }

    if (ProResDecoder_GetYCbCrNumSlices(v176, &v173, 0) > *(DerivedStorage + 504) << 15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_21;
    }

    BYTE5(v156[0]) = 0;
    v48 = BYTE1(v176[3]);
    if (BYTE1(v176[3]))
    {
      v49 = v33 + HIDWORD(v173);
      if (v49 - v29 > FrameSize)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame((DerivedStorage + 708));
        }

        goto LABEL_21;
      }

      v130 = *v18;
      ProResDecoder_ParsePictureHeader(&v174 + 4, v49);
      if (v49 + v175 - v132 > FrameSize)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame();
        }

        goto LABEL_21;
      }

      if (ProResDecoder_GetYCbCrNumSlices(v176, &v174 + 4, 1) > *(DerivedStorage + 508))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame((DerivedStorage + 708));
        }

        goto LABEL_21;
      }

      BYTE5(v156[0]) = BYTE2(v174) != BYTE6(v175);
      if (BYTE2(v174) != BYTE6(v175))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame((DerivedStorage + 708));
        }

        goto LABEL_21;
      }

      v48 = BYTE1(v176[3]);
    }

    BYTE2(v156[0]) = v48;
    BYTE3(v156[0]) = v48 == 2;
    v71 = LOBYTE(v176[3]);
    DWORD1(v156[1]) = LOBYTE(v176[3]);
    if (!*(DerivedStorage + 500) && *(DerivedStorage + 600) == 1)
    {
      if (BYTE3(v177))
      {
        v76 = *(DerivedStorage + 440);
        if ((v76 & 0xFFFFFFFE) == 2)
        {
          if (*(DerivedStorage + 520))
          {
            v77 = *(DerivedStorage + 528);
            v78 = *(DerivedStorage + 536);
            v79 = ((v77 + 15) & 0xFFFFFFF0) - v77;
            v80 = ((v78 + 15) & 0xFFFFFFF0) - v78;
          }

          else
          {
            v77 = *(DerivedStorage + 476);
            v78 = *(DerivedStorage + 480);
            v79 = *(DerivedStorage + 492);
            v80 = *(DerivedStorage + 496);
          }

          v141.value = 0;
          if (v76 == 2)
          {
            v121 = 875704864;
          }

          else
          {
            v121 = 875836448;
          }

          createPixelBufferAttributesDictionary(&v141, v77, v78, v79, v80, v121, *(DerivedStorage + 444), 0, 1, (DerivedStorage + 552));
          v122 = *DerivedStorage;
          VTDecoderSessionSetPixelBufferAttributes();
          CFRelease(v141.value);
          v71 = LOBYTE(v176[3]);
        }
      }
    }

    if (*(DerivedStorage + 440) != v71)
    {
      if (*(DerivedStorage + 520))
      {
        v72 = *(DerivedStorage + 528);
        v73 = *(DerivedStorage + 536);
        v74 = ((v72 + 15) & 0xFFFFFFF0) - v72;
        v75 = ((v73 + 15) & 0xFFFFFFF0) - v73;
      }

      else
      {
        v72 = *(DerivedStorage + 476);
        v73 = *(DerivedStorage + 480);
        v74 = *(DerivedStorage + 492);
        v75 = *(DerivedStorage + 496);
      }

      v141.value = 0;
      if (v71 == 3)
      {
        createPixelBufferAttributesDictionary(&v141, v72, v73, v74, v75, 875836448, *(DerivedStorage + 444), 0, *(DerivedStorage + 600), (DerivedStorage + 552));
        v81 = 3;
      }

      else
      {
        if (v71 != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          v19 = 0;
          IOSurface = 0;
          goto LABEL_26;
        }

        createPixelBufferAttributesDictionary(&v141, v72, v73, v74, v75, 875704864, *(DerivedStorage + 444), 0, *(DerivedStorage + 600), (DerivedStorage + 552));
        v81 = 2;
      }

      *(DerivedStorage + 440) = v81;
      v82 = *DerivedStorage;
      VTDecoderSessionSetPixelBufferAttributes();
      CFRelease(v141.value);
    }

    if ((*(DerivedStorage + 432) | 0x10) == 0x61703478 && *(DerivedStorage + 452) != v143)
    {
      v83 = *(DerivedStorage + 400);
      FigFormatDescriptionRelease();
      *(DerivedStorage + 400) = FigFormatDescriptionRetain();
      if (*(DerivedStorage + 520))
      {
        v84 = *(DerivedStorage + 528);
        v85 = *(DerivedStorage + 536);
        v86 = ((v84 + 15) & 0xFFFFFFF0) - v84;
        v87 = ((v85 + 15) & 0xFFFFFFF0) - v85;
      }

      else
      {
        v84 = *(DerivedStorage + 476);
        v85 = *(DerivedStorage + 480);
        v86 = *(DerivedStorage + 492);
        v87 = *(DerivedStorage + 496);
      }

      v141.value = 0;
      createPixelBufferAttributesDictionary(&v141, v84, v85, v86, v87, 875836448, *(DerivedStorage + 444), v143 == 32, *(DerivedStorage + 600), (DerivedStorage + 552));
      *(DerivedStorage + 452) = v143;
      v88 = *DerivedStorage;
      VTDecoderSessionSetPixelBufferAttributes();
      CFRelease(v141.value);
    }

    ProResDecoder_GetSubFrameSliceInfo(v176, v132, &v173, &v149);
    v34 = &v173;
    v35 = (v29 + 8);
  }

  ProResDecoder_GetSubFrameInfo(v176, v34, v35, FrameSize, &v149);
  v36 = *(DerivedStorage + 444);
  v37 = *(DerivedStorage + 708);
  v38 = *(DerivedStorage + 500);
  kdebug_trace();
  v39 = *DerivedStorage;
  VTDecoderSessionCreatePixelBuffer();
  v40 = *(DerivedStorage + 444);
  v41 = *(DerivedStorage + 708);
  v42 = *(DerivedStorage + 500);
  kdebug_trace();
  *(DerivedStorage + 528) = CVPixelBufferGetWidth(texture);
  *(DerivedStorage + 536) = CVPixelBufferGetHeight(texture);
  *(DerivedStorage + 436) = CVPixelBufferGetPixelFormatType(texture);
  PlaneCount = CVPixelBufferGetPlaneCount(texture);
  IOSurface = CVPixelBufferGetIOSurface(texture);
  *&v160 = IOSurface;
  DWORD2(v159) = IOSurfaceGetID(IOSurface);
  IOSurfaceGetPixelFormat(IOSurface);
  v133 = (DerivedStorage + 436);
  v43 = APR_ImgFmt_4CC(*(DerivedStorage + 436));
  if (!v43)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

    goto LABEL_188;
  }

  if (*(DerivedStorage + 432) == 1634759276)
  {
    *(DerivedStorage + 697) = 1;
  }

  if (*(DerivedStorage + 444))
  {
    v167[6] = v182;
    v167[7] = v183;
    v167[8] = v184;
    v167[2] = v178;
    v167[3] = v179;
    v167[4] = v180;
    v167[5] = v181;
    v167[0] = *v176;
    v167[1] = v177;
    v168 = __p[0];
    v169 = 0;
    v170 = 0;
    v171 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v169, __p[1], v186, v186 - __p[1]);
    v172 = v187;
    SetRAWAttachments(v167, texture, *(DerivedStorage + 520), v43[1], *(DerivedStorage + 708), v44, v45);
    if (v169)
    {
      v170 = v169;
      operator delete(v169);
    }

    v46 = *v133;
    if (*v133 == 1651520304 || v46 == 1651521076)
    {
      if (!*(DerivedStorage + 520))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame((DerivedStorage + 708));
        }

        goto LABEL_107;
      }

      v47 = 1;
    }

    else
    {
      v47 = *(DerivedStorage + 520) != 0;
    }

    if (v47 && PlaneCount || v46 == 1647392369 && PlaneCount != 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

LABEL_107:
      v19 = 0;
      goto LABEL_26;
    }

    v55 = v43;
    if (v46 == 1651521076 || v46 == 1651520304)
    {
      v56 = 1;
      if (*(DerivedStorage + 561) != 1)
      {
        goto LABEL_121;
      }

      BYTE4(v156[0]) = 1;
    }

    v56 = 0;
LABEL_121:
    if (*(DerivedStorage + 554) != 1)
    {
      v127 = 0;
LABEL_153:
      v53 = v55;
      goto LABEL_154;
    }

    v57 = v56;
    if (v46 > 1734501175)
    {
      if (v46 > 1735553071)
      {
        if (v46 == 1735553072)
        {
          goto LABEL_224;
        }

        if (v46 != 1919378232)
        {
          v58 = 1919381552;
LABEL_223:
          if (v46 == v58)
          {
            goto LABEL_224;
          }

          goto LABEL_311;
        }

        goto LABEL_229;
      }

      if (v46 == 1734501176)
      {
        goto LABEL_229;
      }

      if (v46 == 1734504496)
      {
        goto LABEL_224;
      }

      v70 = 1735549752;
    }

    else
    {
      if (v46 <= 1651519797)
      {
        if (v46 != 1650942776)
        {
          if (v46 != 1650946096)
          {
            v58 = 1650946098;
            goto LABEL_223;
          }

LABEL_224:
          if (PlaneCount)
          {
            v47 = 1;
          }

          if (v47)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          v119 = HIDWORD(v160);
          if (v46 == 1919381552 && HIDWORD(v160))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          if (v46 == 1735553072 && HIDWORD(v160) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          if (v46 == 1734504496 && HIDWORD(v160) != 2)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          if (v46 == 1650946096 && HIDWORD(v160) != 3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          if (v46 == 1650946098 && HIDWORD(v160) != 3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          if (v46 == 1651798066 && HIDWORD(v160) >= 4)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ProResDecoder_DecodeFrame((DerivedStorage + 708));
            }

            goto LABEL_107;
          }

          *(&v156[1] + 12) = 0x100000001;
          goto LABEL_347;
        }

LABEL_229:
        if (PlaneCount)
        {
          v47 = 1;
        }

        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        v119 = HIDWORD(v160);
        if (v46 == 1919378232 && HIDWORD(v160))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        if (v46 == 1735549752 && HIDWORD(v160) != 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        if (v46 == 1734501176 && HIDWORD(v160) != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        if (v46 == 1650942776 && HIDWORD(v160) != 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        if (v46 == 1652056888 && HIDWORD(v160) >= 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        *&v156[2] = 0x200000001;
        goto LABEL_347;
      }

      if (v46 == 1651519798)
      {
        if (PlaneCount)
        {
          v47 = 1;
        }

        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        v119 = HIDWORD(v160);
        if (HIDWORD(v160) >= 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_DecodeFrame((DerivedStorage + 708));
          }

          goto LABEL_107;
        }

        LODWORD(v156[2]) = 1;
        goto LABEL_347;
      }

      if (v46 == 1651798066)
      {
        goto LABEL_224;
      }

      v70 = 1652056888;
    }

    if (v46 != v70)
    {
LABEL_311:
      v119 = HIDWORD(v160);
LABEL_347:
      v127 = 0;
      DWORD2(v156[2]) = v119;
      v56 = v57;
      goto LABEL_153;
    }

    goto LABEL_229;
  }

  CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
  BYTE13(v156[0]) = CompressionTypeOfPlane != 0;
  v51 = BYTE3(v177);
  v52 = *(v43 + 33);
  if (BYTE3(v177))
  {
    if (*(v43 + 33))
    {
      *(DerivedStorage + 448) = 3;
      DWORD2(v156[0]) = 3;
      BYTE12(v156[0]) = v52 != 1;
      if (*(DerivedStorage + 562))
      {
        v53 = v43;
        v127 = 0;
      }

      else
      {
        v53 = v43;
        v62 = v51 == 1 && v52 == 2 && CompressionTypeOfPlane == 0;
        v127 = v62;
      }

      goto LABEL_146;
    }

    if (*(DerivedStorage + 697) == 1 && !LOBYTE(v176[3]) && *(DerivedStorage + 555) == 1)
    {
      v53 = v43;
      v127 = 0;
      *(DerivedStorage + 448) = 1;
      DWORD2(v156[0]) = 1;
      v54 = v51 == 1;
      goto LABEL_131;
    }

LABEL_135:
    v53 = v43;
    v127 = 0;
    *(DerivedStorage + 448) = 2;
    DWORD2(v156[0]) = 2;
    BYTE12(v156[0]) = 0;
    goto LABEL_146;
  }

  if (!*(v43 + 33) || *(DerivedStorage + 562) != 1 || (a4 & 1) != 0 && !CompressionTypeOfPlane)
  {
    goto LABEL_135;
  }

  v53 = v43;
  v127 = 0;
  *(DerivedStorage + 448) = 3;
  DWORD2(v156[0]) = 3;
  v54 = v52 == 1;
LABEL_131:
  v59 = !v54;
  BYTE12(v156[0]) = v59;
LABEL_146:
  v56 = 0;
  if (*(DerivedStorage + 557) == 1 && CompressionTypeOfPlane)
  {
    v56 = 0;
    DWORD1(v156[2]) = *(v53 + 40);
    LODWORD(v156[2]) = DWORD1(v156[2]);
    HIDWORD(v156[1]) = 0;
  }

LABEL_154:
  v63 = *(v53 + 4) - 8;
  if (v63 < 9 && ((0x115u >> v63) & 1) != 0)
  {
    DWORD2(v156[1]) = dword_277819E48[v63];
  }

  else if (!*(DerivedStorage + 448) && !*(DerivedStorage + 520) && DWORD2(v156[1]) != 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

    goto LABEL_188;
  }

  BYTE7(v156[0]) = 1;
  LODWORD(v156[1]) = *(DerivedStorage + 520);
  v64 = *(DerivedStorage + 708);
  if (ProResDecoder_CheckDecodeCmd(v156, v176, *(DerivedStorage + 448), (DerivedStorage + 552), v53))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame((DerivedStorage + 708));
    }

LABEL_188:
    v19 = 0;
    goto LABEL_26;
  }

  v125 = v56;
  extraRowsOnTop = 0;
  extraColumnsOnLeft = 0;
  CVPixelBufferGetExtendedPixels(texture, &extraColumnsOnLeft, 0, &extraRowsOnTop, 0);
  *&v157[2] = extraColumnsOnLeft;
  if (*(DerivedStorage + 520))
  {
    *&v158 = extraRowsOnTop;
  }

  else
  {
    if (extraColumnsOnLeft + v157[0] > *(DerivedStorage + 528))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_188;
    }

    *&v158 = extraRowsOnTop;
    if (extraRowsOnTop + v157[1] > *(DerivedStorage + 536))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_188;
    }
  }

  if (!*(DerivedStorage + 408))
  {
    v68 = *(DerivedStorage + 708);
    ProResDecoder_GetInputMaxSize(v157[0], v157[1], *(DerivedStorage + 432), BYTE3(v177), (DerivedStorage + 456));
    LODWORD(v69) = *(DerivedStorage + 456);
    *(DerivedStorage + 456) = ((v69 * 1.5) / DWORD1(v149) + 127) & 0xFFFFFF80;
    if (CVDataBufferPoolCreate() || !*(DerivedStorage + 408))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_188;
    }
  }

  v65 = v150;
  if (*(DerivedStorage + 456) < v150)
  {
    v66 = *v18;
    ProResDecoder_WaitForAsynchronousFrames();
    v67 = *(DerivedStorage + 408);
    CVDataBufferPoolFlush();
    CFRelease(*(DerivedStorage + 408));
    *(DerivedStorage + 408) = 0;
    *(DerivedStorage + 456) = ((v65 * 1.5) + 127) & 0xFFFFFF80;
    if (CVDataBufferPoolCreate() || !*(DerivedStorage + 408))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_DecodeFrame((DerivedStorage + 708));
      }

      goto LABEL_188;
    }
  }

  if (*(DerivedStorage + 448) == 2 && CVPixelBufferGetPlaneCount(texture) == 3 && (BYTE13(v156[0]) & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(texture, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(texture, 2uLL);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(texture, 2uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(texture, 2uLL);
    memset(BaseAddressOfPlane, 255, BytesPerRowOfPlane * HeightOfPlane);
    CVPixelBufferUnlockBaseAddress(texture, 0);
  }

  DWORD2(v160) = 3;
  *&v146 = *(DerivedStorage + 120);
  HIDWORD(v146) = *(DerivedStorage + 460);
  *&v147 = DerivedStorage + 272;
  *(&v147 + 1) = DerivedStorage + 280;
  v148 = DerivedStorage + 344;
  if (DWORD1(v149))
  {
    v92 = DWORD1(v149);
    if ((a4 & 4) != 0)
    {
      v93 = 0;
    }

    else
    {
      v93 = 3;
    }

    v123 = v93;
    v124 = a4 & 1;
    v131 = v153 + 4;
    v134 = 0;
    while (1)
    {
      v94 = DWORD2(v149);
      if (!(*(DerivedStorage + 500) | DWORD2(v149)))
      {
        v95 = DWORD2(v149);
        v96 = *(DerivedStorage + 480) * *(DerivedStorage + 476);
        v97 = *(DerivedStorage + 696);
        if (v97)
        {
          v98 = 1;
        }

        else
        {
          v98 = 3;
        }

        v99 = v123;
        if (!*(DerivedStorage + 692))
        {
          v99 = v98;
        }

        *(DerivedStorage + 464) = v99;
        v100 = v96 >> 10;
        if (v92 <= 1 && v100 >= 0x7E9)
        {
          v102 = v97;
        }

        else
        {
          v102 = 1;
        }

        if (v102)
        {
          v103 = 1;
        }

        else
        {
          v103 = 3;
        }

        *(DerivedStorage + 468) = v103;
        v104 = *(DerivedStorage + 96);
        if (v104)
        {
          ProResFrameReceiver::SetOutOfOrderFrameProcessing(v104, v102 ^ 1);
        }

        v94 = v95;
        if ((v102 & 1) == 0)
        {
          v105 = *(DerivedStorage + 460) * *(DerivedStorage + 552);
          *(DerivedStorage + 460) = v105;
          HIDWORD(v146) = v105;
        }
      }

      *(&v161 + 4) = *(DerivedStorage + 464);
      v126 = __PAIR64__(v92, v94);
      DWORD2(v146) = *(DerivedStorage + 500) + v94;
      v106 = *(DerivedStorage + 708);
      EmptySpotInFrameInfoArray = GetEmptySpotInFrameInfoArray(&v146);
      if (EmptySpotInFrameInfoArray == -1)
      {
        break;
      }

      v108 = EmptySpotInFrameInfoArray;
      v109 = *(v131 + 1);
      v19 = *(DerivedStorage + 120) + 800 * EmptySpotInFrameInfoArray;
      if (ProResDecoder_prepareInputFrame(DerivedStorage, &v149))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame(v134, (DerivedStorage + 708));
        }

        goto LABEL_26;
      }

      *(v19 + 4) = *(DerivedStorage + 448);
      *(v19 + 24) = v124;
      *(v19 + 32) = *(DerivedStorage + 512);
      *(v19 + 16) = a2;
      v110 = texture;
      *(v19 + 40) = cf;
      *(v19 + 48) = v110;
      *(v19 + 28) = FrameSize;
      *(v19 + 56) = v126;
      LODWORD(v110) = *(DerivedStorage + 500);
      *(v19 + 8) = v110;
      *(v19 + 64) = v127;
      *(v19 + 65) = v125;
      *&inputStruct = __PAIR64__(v108, v110);
      LOWORD(v156[0]) = v110;
      v157[1] = *v131;
      *(&inputStruct + 1) = v126;
      DWORD2(v149) = v126 + 1;
      atomic_fetch_add((DerivedStorage + 152), 1u);
      if (!v134)
      {
        v111 = *(DerivedStorage + 444);
        v112 = *(DerivedStorage + 708);
        v113 = *(DerivedStorage + 500);
        kdebug_trace();
      }

      v114 = IOConnectCallStructMethod(*(DerivedStorage + 392), 2u, &inputStruct, 0xA8uLL, 0, 0);
      if (!v134)
      {
        v115 = *(DerivedStorage + 444);
        v116 = *(DerivedStorage + 708);
        v117 = *(DerivedStorage + 500);
        kdebug_trace();
      }

      if (v114)
      {
        atomic_fetch_add((DerivedStorage + 152), 0xFFFFFFFF);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_DecodeFrame((DerivedStorage + 708));
        }

        goto LABEL_26;
      }

      v118 = *v131;
      v131 += 40;
      *&v158 = v158 + (v118 >> *(DerivedStorage + 520));
      cf = 0;
      v92 = DWORD1(v149);
      if (++v134 >= DWORD1(v149))
      {
        goto LABEL_275;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_DecodeFrame(v134, (DerivedStorage + 708));
    }

    v19 = 0;
    goto LABEL_26;
  }

  v124 = a4 & 1;
LABEL_275:
  ++*(DerivedStorage + 500);
  if (v124)
  {
    *a5 |= 1u;
  }

  else
  {
    v120 = *v18;
    ProResDecoder_WaitForAsynchronousFrames();
  }

LABEL_35:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v186 != __p[1])
  {
    *&v186 = __p[1];
  }

  v25 = *(DerivedStorage + 444);
  v26 = *(DerivedStorage + 708);
  IOSurfaceGetWidth(IOSurface);
  IOSurfaceGetHeight(IOSurface);
  kdebug_trace();
  if (__p[1])
  {
    *&v186 = __p[1];
    operator delete(__p[1]);
  }

  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_277798878(_Unwind_Exception *a1)
{
  v2 = STACK[0x4D8];
  if (STACK[0x4D8])
  {
    STACK[0x4E0] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t ProResDecoder_CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 416);
    if (v5)
    {
      CFRetain(v5);
      result = 0;
      *a2 = *(v4 + 416);
    }

    else
    {
      *a2 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 708);
        v9[0] = 67109634;
        v9[1] = v7;
        v10 = 1024;
        v11 = 2836;
        v12 = 2080;
        v13 = "ProResDecoder_CopySupportedPropertyDictionary";
        _os_log_impl(&dword_277780000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): AppleProResHW property dictionary is NULL - decoder configuration may be incomplete\n", v9, 0x18u);
      }

      result = 4294954392;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CopySupportedPropertyDictionary();
    }

    result = 4294954385;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProResDecoder_CanAcceptFormatDescription(int a1, CMVideoFormatDescriptionRef videoDesc)
{
  v19 = videoDesc;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CanAcceptFormatDescription();
    }

    goto LABEL_12;
  }

  v5 = DerivedStorage;
  if (CMFormatDescriptionEqual(*(DerivedStorage + 400), videoDesc))
  {
LABEL_12:
    LOBYTE(v13) = 1;
    return v13 & 1;
  }

  if (*(v5 + 476) != Dimensions.width || *(v5 + 480) != Dimensions.height)
  {
LABEL_26:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(v5 + 400));
  v7 = CMFormatDescriptionGetMediaSubType(videoDesc);
  if ((MediaSubType & 0xFFFFFFEF) == 0x61703468 && (v7 & 0xFFFFFFEF) == 0x61703468)
  {
    v18 = 0;
    setBitstreamDepthFromFormatExtensions(&v19, &v18);
    v8 = *(v5 + 400);
    FigFormatDescriptionRelease();
    *(v5 + 400) = FigFormatDescriptionRetain();
    if (*(v5 + 452) != v18)
    {
      if (*(v5 + 520))
      {
        v9 = *(v5 + 528);
        v10 = *(v5 + 536);
        v11 = ((v9 + 15) & 0xFFFFFFF0) - v9;
        v12 = ((v10 + 15) & 0xFFFFFFF0) - v10;
      }

      else
      {
        v9 = *(v5 + 476);
        v10 = *(v5 + 480);
        v11 = *(v5 + 492);
        v12 = *(v5 + 496);
      }

      cf = 0;
      createPixelBufferAttributesDictionary(&cf, v9, v10, v11, v12, 875836448, *(v5 + 444), v18 == 32, *(v5 + 600), (v5 + 552));
      *(v5 + 452) = v18;
      v16 = *v5;
      VTDecoderSessionSetPixelBufferAttributes();
      CFRelease(cf);
    }

    goto LABEL_12;
  }

  if (MediaSubType - 1634755432 <= 0xB && ((1 << (MediaSubType - 104)) & 0x8C1) != 0)
  {
    if (v7 - 1634755432 < 0xC)
    {
      v13 = 0x8C1u >> (v7 - 104);
      return v13 & 1;
    }

    goto LABEL_26;
  }

  if (MediaSubType != 1634759272 && MediaSubType != 1634759278)
  {
    goto LABEL_26;
  }

  LOBYTE(v13) = v7 == 1634759278 || v7 == 1634759272;
  return v13 & 1;
}

void createSuggestedQualityOfServiceTiers(int a1, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v29 = a3;
  valuePtr = a2;
  v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
  v12 = *MEMORY[0x277CE2770];
  CFDictionaryAddValue(v10, *MEMORY[0x277CE2770], v11);
  CFRelease(v11);
  v13 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
  v14 = *MEMORY[0x277CE2768];
  CFDictionaryAddValue(v10, *MEMORY[0x277CE2768], v13);
  CFRelease(v13);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v10);
  if (a1 <= 1634755431)
  {
    if (a1 > 1634743399)
    {
      if (a1 != 1634743400)
      {
        v15 = 13432;
        goto LABEL_11;
      }
    }

    else if (a1 != 1634742376)
    {
      v15 = 12904;
      goto LABEL_11;
    }

LABEL_12:
    v29 = a3 >> 1;
    valuePtr = a2 >> 1;
    v16 = MEMORY[0x277CBF138];
    v17 = MEMORY[0x277CBF150];
    v18 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v28 = a4;
    v19 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v18, v12, v19);
    CFRelease(v19);
    v20 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
    CFDictionaryAddValue(v18, v14, v20);
    CFRelease(v20);
    CFArrayAppendValue(Mutable, v18);
    CFRelease(v18);
    v29 = a3 >> 2;
    valuePtr = a2 >> 2;
    v21 = CFDictionaryCreateMutable(v8, 0, v16, v17);
    v22 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v21, v12, v22);
    CFRelease(v22);
    v23 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
    CFDictionaryAddValue(v21, v14, v23);
    CFRelease(v23);
    CFArrayAppendValue(Mutable, v21);
    CFRelease(v21);
    v29 = a3 >> 3;
    valuePtr = a2 >> 3;
    v24 = CFDictionaryCreateMutable(v8, 0, v16, v17);
    v25 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v24, v12, v25);
    CFRelease(v25);
    v26 = CFNumberCreate(v8, kCFNumberSInt32Type, &v29);
    CFDictionaryAddValue(v24, v14, v26);
    CFRelease(v26);
    CFArrayAppendValue(Mutable, v24);
    v27 = v24;
    a4 = v28;
    CFRelease(v27);
    goto LABEL_13;
  }

  if ((a1 - 1634755432) <= 0xB && ((1 << (a1 - 104)) & 0x8C1) != 0 || a1 == 1634759278)
  {
    goto LABEL_12;
  }

  v15 = 29288;
LABEL_11:
  if (a1 == (v15 | 0x61700000))
  {
    goto LABEL_12;
  }

LABEL_13:
  *a4 = Mutable;
}

uint64_t ProResDecoder_ParsePictureHeader(uint64_t result, uint64_t a2)
{
  *result = *a2 >> 3;
  *(result + 4) = bswap32(*(a2 + 1));
  *(result + 8) = bswap32(*(a2 + 5)) >> 16;
  *(result + 10) = (*(a2 + 7) >> 4) & 3;
  return result;
}

uint64_t ProResDecoder_GetYCbCrNumSlices(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 13);
  v5 = *(a1 + 10);
  if (*(a1 + 13))
  {
    if (a3 || v4 != 1)
    {
      if (v4 == 2 && a3 == 1)
      {
        v7 = v5 + 1;
      }

      else
      {
        v7 = *(a1 + 10);
      }

      v5 = v7 >> 1;
    }

    else
    {
      v5 = (v5 + 1) >> 1;
    }
  }

  return getNumSlices(*(a1 + 8), v5, (1 << *(a2 + 10)));
}

uint64_t ProResDecoder_GetSubFrameSliceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 10);
  if (!a3)
  {
    v8 = 1 << ((*(a2 + 71) >> 1) & 7);
    goto LABEL_6;
  }

  v8 = 1 << *(a3 + 10);
  if (!*(a1 + 13))
  {
LABEL_6:
    v11 = *(a1 + 8);
    v12 = v8;
    v13 = 0x8000;
    v14 = a4;
    v15 = 0;
    goto LABEL_7;
  }

  v9 = v7 >> 1;
  result = ProResDecoder_GetSubFramePictureSliceInfo(*(a1 + 8), v7 >> 1, 1 << *(a3 + 10), 0x4000u, a4, 0);
  if (*(a4 + 4) < 2u)
  {
    return result;
  }

  v11 = v6;
  v7 = v9;
  v12 = v8;
  v13 = 0x4000;
  v14 = a4;
  v15 = 1;
LABEL_7:

  return ProResDecoder_GetSubFramePictureSliceInfo(v11, v7, v12, v13, v14, v15);
}

unsigned __int16 *ProResDecoder_GetSubFrameInfo(unsigned __int16 *result, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = *(a5 + 4);
  if (v5 == 1)
  {
    *a5 = 1;
    *(a5 + 16) = a4;
    *(a5 + 68) = result[5];
    *(a5 + 72) = a4;
  }

  else
  {
    v6 = *result;
    v33 = a3 + v6;
    v34 = 0;
    v31 = v6;
    v32 = 0;
    if (a2)
    {
      *(a5 + 20) = v6;
      v7 = *a2;
      v8 = v7 + v6;
      v31 = v7 + v6;
      v33 = a3 + v6 + v7;
      if (*(result + 13))
      {
        v9 = *(a2 + 1) + v6;
        *(a5 + 24) = v9;
        v10 = a2[12];
        v11 = (v9 + v10);
        v32 = v11;
        v34 = a3 + v11;
        LODWORD(v6) = v8 + v10;
        v12 = 2;
      }

      else
      {
        v12 = 1;
        LODWORD(v6) = v7 + v6;
      }
    }

    else
    {
      v12 = 1;
    }

    v30 = 0;
    *(a5 + 16) = 0;
    if (v5)
    {
      v13 = 0;
      v14 = 0;
      v15 = v6 + 8;
      v16 = a5 + 36;
      result = &v31;
      do
      {
        v17 = 0;
        v18 = v16 + 40 * v13;
        *(v18 + 36) = v15;
        v19 = v15;
        do
        {
          v20 = *(&v30 + v17);
          v21 = (v18 + 16 * v17);
          v22 = *v21;
          *(&v30 + v17) = *v21 + v20;
          v23 = 2 * v20;
          if (v20 >= v22 + v20)
          {
            v24 = 0;
          }

          else
          {
            v24 = 0;
            v25 = (*(&v33 + v17) + v23);
            v26 = v22;
            do
            {
              v27 = *v25++;
              v24 += bswap32(v27) >> 16;
              --v26;
            }

            while (v26);
          }

          v28 = *(&v31 + v17);
          v21[3] = v24;
          v21[1] = v28 + v23;
          v19 += v24 + 2 * v22;
          *(v18 + 36) = v19;
          if (v13)
          {
            v21[2] = *(v18 - 40 + 16 * v17 + 12) + *(v18 - 40 + 16 * v17 + 8);
          }

          else
          {
            *(v16 + 16 * v17 + 8) = v28 + 2 * *(a5 + 28 + 4 * v17);
          }

          ++v17;
        }

        while (v17 != v12);
        if (v19 > v14)
        {
          *(a5 + 16) = v19;
          v14 = v19;
        }

        ++v13;
      }

      while (v13 != v5);
    }

    *a5 = 1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProResDecoder_GetLargestDCQSS(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (a2 + v3 > a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

  v4 = (a1[4] + 15) >> 4;
  v5 = *(a1 + 70);
  v6 = v4 & ~(-1 << v5);
  if (v6 >= 0x10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

  v7 = ((a1[5] + 15) >> 4) * (dword_277819E08[v6] + (v4 >> v5));
  v8 = a2 + v3 + 2 * v7;
  if (v8 > a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

  v9 = 0;
  if (v7)
  {
    v10 = v3 + a2 + 1;
    while (v10 <= a3 && v8 + 1 <= a3)
    {
      v11 = __rev16(*(v10 - 1));
      if (v9 <= *(v8 + 1))
      {
        v9 = *(v8 + 1);
      }

      v8 += v11;
      v10 += 2;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_GetLargestDCQSS();
    }

    return 4294954387;
  }

LABEL_17:
  v12 = 0;
  *(a1 + 18) = v9 * *(a1 + 71);
  return v12;
}

uint64_t ProResDecoder_CheckDecodeCmd(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if ((a3 - 1) >= 3)
  {
    if (!a3)
    {
      return a3;
    }

    v7 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  v6 = *(a1 + 8);
  if (v6 == 1)
  {
    if (a2[19])
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (v6 != 3)
  {
    goto LABEL_11;
  }

  if ((a4[10] & 1) == 0 && !a2[19])
  {
LABEL_26:
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (!*(a5 + 33))
  {
    goto LABEL_14;
  }

LABEL_11:
  v8 = *(a1 + 12);
  if (v8 == 1 && v6 != 1 && *(a5 + 33) != 2)
  {
LABEL_14:
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (*(a1 + 5) == 1 && !a2[13])
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  v9 = a2[13];
  if (!*(a1 + 3))
  {
    if (v9 != 2)
    {
      goto LABEL_20;
    }

LABEL_29:
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (v9 != 2)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (*(a1 + 5) && *(a1 + 16))
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (*(a1 + 13) == 1 && *(a1 + 16))
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }

    return v7;
  }

  if (*(a1 + 20) == a2[12])
  {
    if (a4[3] == 1)
    {
      if (v6 == 1)
      {
        if ((((*(a5 + 4) == 8) ^ v8) & 1) == 0)
        {
          v7 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_CheckDecodeCmd();
          }

          return v7;
        }

        if (a2[12] || !a2[19])
        {
          v7 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ProResDecoder_CheckDecodeCmd(a2);
          }

          return v7;
        }
      }

      else if (!a2[12] && a2[19])
      {
        v7 = 3758097084;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }
    }

    else if (v6 == 1)
    {
      v7 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ProResDecoder_CheckDecodeCmd();
      }

      return v7;
    }

    if (a4[5] != 1)
    {
      return 0;
    }

    v10 = *(a1 + 36);
    if (v10 == *(a1 + 32))
    {
      v11 = *(a1 + 24);
      if (v10 == 2 && !v11)
      {
        v7 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }

      if (v10 == 3 && v11 == 1)
      {
        v7 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }

      if (*(a1 + 28))
      {
        v7 = 3758097090;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ProResDecoder_CheckDecodeCmd();
        }

        return v7;
      }

      return 0;
    }

    v7 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }
  }

  else
  {
    v7 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ProResDecoder_CheckDecodeCmd();
    }
  }

  return v7;
}

void ProResDecoder_GetInputMaxSize(int a1, int a2, int a3, int a4, unsigned int *a5)
{
  if (a3 == 1634759278 || a3 == 1634759272)
  {
    v7 = 16386 * ((a1 + 255) >> 8) * ((a2 + 15) >> 4) + 160;
LABEL_7:
    *a5 = v7;
    return;
  }

  *v12 = 0;
  v9 = a2 * a1;
  if (!GetCompressedFrameSize(a3, a2 * a1, 1.0, 1.125, &v12[1], v12, 0))
  {
    if (a4)
    {
      v7 = v12[1] + (v9 << (a4 == 2));
    }

    else
    {
      LODWORD(v11) = v12[1];
      v7 = (v11 * 1.1);
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_GetInputMaxSize();
  }
}

uint64_t ProResDecoder_prepareInputFrame(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 8))
  {
    v4 = *(a1 + 444);
    v5 = *(a1 + 708);
    v6 = *(a1 + 500);
    kdebug_trace();
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = *(a1 + 408);
  CVDataBufferPoolCreateDataBuffer();
  if (!*(a2 + 8))
  {
    v9 = *(a1 + 444);
    v10 = *(a1 + 708);
    v11 = *(a1 + 500);
    kdebug_trace();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResDecoder_prepareInputFrame(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 3758097085;
}

uint64_t ProResDecoder_GetSubFramePictureSliceInfo(int a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v9 = (a2 + 15) >> 4;
  result = numSlicesPerRow(a3, (a1 + 15) >> 4);
  v11 = result * v9;
  if (result * v9 <= a4)
  {
    *(a5 + 4) = 1;
  }

  else
  {
    v12 = (a4 / result) & 0xFFFFFFFC;
    v13 = v12 * result;
    v14 = (v11 - 1 + v13) / v13;
    *(a5 + 4) = v14;
    if (!__CFADD__(v11 - 1, v12 * result))
    {
      v15 = 0;
      v16 = a5 + 36;
      v17 = 16 * v12;
      v18 = result * v9;
      do
      {
        v19 = v18 - v13;
        if (v18 <= v13)
        {
          *(v16 + 16 * a6) = v18;
          v20 = 16 * v18 / result;
        }

        else
        {
          *(v16 + 16 * a6) = v13;
          v20 = v17;
        }

        *(v16 + 32) += v20;
        ++v15;
        v16 += 40;
        v18 = v19;
      }

      while (v15 < v14);
    }
  }

  *(a5 + 4 * a6 + 28) = v11;
  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_277799FCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

unsigned int *OUTLINED_FUNCTION_10@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 708);
  return result;
}

char *getResolutionTier(int a1, int a2, char *a3)
{
  v3 = a2 * a1;
  if ((a2 * a1) > 0xE1000)
  {
    if (v3 >> 10 > 0x7E8)
    {
      if (v3 > 0x1FE000)
      {
        if (v3 >= 0x240001)
        {
          if (v3 >= 0x7E9000)
          {
            if (v3 == 8294400)
            {
              a3[2] = 0;
              v6 = 19252;
            }

            else
            {
              if (v3 < 0x1FA4001)
              {
                v4 = 4929596;
                goto LABEL_11;
              }

              if (v3 >= 0x21C0001)
              {
                v4 = 4929598;
                goto LABEL_11;
              }

              a3[2] = 0;
              v6 = 19256;
            }

            *a3 = v6;
            return a3;
          }

          v4 = 4928572;
        }

        else
        {
          a3[4] = 0;
          v4 = 1261583676;
        }
      }

      else
      {
        *(a3 + 2) = 112;
        v4 = 808988721;
      }
    }

    else
    {
      *(a3 + 3) = 7352376;
      v4 = 942682428;
    }
  }

  else
  {
    *(a3 + 3) = 7352370;
    v4 = 842480956;
  }

LABEL_11:
  *a3 = v4;
  return a3;
}

void reportEncodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, char a7, int a8, int a9, int a10, int a11, char a12, int a13, int a14, char a15, char a16, uint64_t a17)
{
  v19 = a3;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  v29 = a7;
  v23 = a4;
  v24 = a13;
  v30 = a6;
  v31 = a15;
  v32 = a16;
  if (*(a17 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a17, *(a17 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a17;
    __p.__r_.__value_.__r.__words[2] = *(a17 + 16);
  }

  v25 = a10;
  v26 = a11;
  v33 = a12;
  v27 = a8;
  v28 = a9;
  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27779A318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportEncodeSessionInfojjjjjhbjjjjbjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v8[0] = HIBYTE(v4);
  v8[1] = BYTE2(v4);
  v8[2] = BYTE1(v4);
  v8[3] = v4;
  v8[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResEncoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v10);
  xpc_dictionary_set_string(v2, "resolution", v10);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_BOOL(v2, "doubleEncode", *(a1 + 96));
  xpc_dictionary_set_string(v2, "pixelFormat", v8);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 97));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 98));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 99));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  xpc_dictionary_set_uint64(v2, "percentFramesOverTarget", *(a1 + 80));
  xpc_dictionary_set_uint64(v2, "avgTargetOvershootPercent", *(a1 + 84));
  if (*(a1 + 96) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "logCapture", *(a1 + 100));
    xpc_dictionary_set_uint64(v2, "DEFramePercentage", *(a1 + 88));
    xpc_dictionary_set_uint64(v2, "SkipP2Toggled", *(a1 + 92));
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void reportDecodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, int a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v16 = a5;
  v17 = a7;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a11, *(a11 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a11;
    __p.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27779A65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportDecodeSessionInfojjjjjhjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v8[0] = HIBYTE(v4);
  v8[1] = BYTE2(v4);
  v8[2] = BYTE1(v4);
  v8[3] = v4;
  v8[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResDecoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v10);
  xpc_dictionary_set_string(v2, "resolution", v10);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_string(v2, "pixelFormat", v8);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 80));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 81));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 82));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t ProResFrameReceiver::MakeCurrentThreadTimeConstraintThread(ProResFrameReceiver *this)
{
  mach_timebase_info(&info);
  LODWORD(v2) = info.numer;
  LODWORD(v1) = info.denom;
  *policy_info = vmovn_s64(vcvtq_u64_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(v1 / v2 * 1000000000.0), 0), xmmword_277819E90)));
  v8 = policy_info[0];
  v9 = 1;
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  return thread_policy_set(v4, 2u, policy_info, 4u);
}

void ProResFrameReceiver::ProResFrameReceiver(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = *a2;
  *(a1 + 120) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 112) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 40);
  *(a1 + 88) = *(a2 + 56);
  *(a1 + 130) = 0;
  *(a1 + 66) = *(a2 + 25);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 129) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 240) = *(a2 + 128);
  *(a1 + 256) = *(a2 + 144);
  *(a1 + 264) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = a4;
  *(a1 + 316) = a3;
  *(a1 + 192) = 0;
  *(a1 + 132) = 4 * *(a2 + 120);
  *(a1 + 208) = *(a2 + 96);
  operator new[]();
}

void ProResFrameReceiver::~ProResFrameReceiver(ThreadPool **this)
{
  if (*this)
  {
    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
  }

  v2 = this[29];
  if (v2)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v2);
    MEMORY[0x277CAF790]();
    this[29] = 0;
  }

  v3 = this[27];
  if (v3)
  {
    freeProResFrame(v3);
    this[27] = 0;
  }

  v4 = this[28];
  if (v4)
  {
    freeProResFrame(v4);
    this[28] = 0;
  }

  v5 = this[34];
  if (v5)
  {
    MEMORY[0x277CAF770](v5, 0x1000C80BDFB0063);
    this[34] = 0;
    *(this + 70) = 0;
  }

  v6 = this[25];
  if (v6)
  {
    MEMORY[0x277CAF770](v6, 0x1020C80E121CA55);
    this[25] = 0;
  }

  v7 = this[17];
  if (v7)
  {
    ThreadPool::~ThreadPool(v7);
    MEMORY[0x277CAF790]();
  }
}

void ProResFrameReceiver::RemoveIODispatcherFromRunLoop(ProResFrameReceiver *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRunLoopRemoveSource(*this, v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 1));
    *(this + 1) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v4, 1u, -1);
    *(this + 4) = 0;
  }
}

void freeProResFrame(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x277CAF770](v2, 0x1000C8077774924);
  }

  v3 = a1[7];
  if (v3)
  {
    MEMORY[0x277CAF770](v3, 0x1000C80BDFB0063);
  }

  v4 = a1[40];
  if (v4)
  {
    MEMORY[0x277CAF770](v4, 0x1000C8077774924);
  }

  v5 = a1[41];
  if (v5)
  {
    MEMORY[0x277CAF770](v5, 0x1000C8077774924);
  }

  v6 = a1[42];
  if (v6)
  {
    MEMORY[0x277CAF770](v6, 0x1000C8077774924);
  }

  v7 = a1[43];
  if (v7)
  {
    MEMORY[0x277CAF770](v7, 0x1000C80BDFB0063);
  }

  v8 = a1[44];
  if (v8)
  {
    MEMORY[0x277CAF770](v8, 0x1000C80BDFB0063);
  }

  free(a1);
}

uint64_t ProResFrameReceiver::InitializeDoubleEncode(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 284) >= a2)
  {
    return 1;
  }

  *(a1 + 264) = 0;
  v4 = *(a1 + 232);
  if (v4)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v4);
    MEMORY[0x277CAF790]();
    *(a1 + 232) = 0;
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    freeProResFrame(v5);
    *(a1 + 216) = 0;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    freeProResFrame(v6);
    *(a1 + 224) = 0;
  }

  v7 = *(a1 + 272);
  if (v7)
  {
    MEMORY[0x277CAF770](v7, 0x1000C80BDFB0063);
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  if (a2 < 0x4651)
  {
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::InitializeDoubleEncode(a1);
  }

  v8 = *(a1 + 232);
  if (v8)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v8);
    MEMORY[0x277CAF790]();
    *(a1 + 232) = 0;
  }

  v9 = *(a1 + 216);
  if (v9)
  {
    freeProResFrame(v9);
    *(a1 + 216) = 0;
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    freeProResFrame(v10);
    *(a1 + 224) = 0;
  }

  result = *(a1 + 272);
  if (result)
  {
    MEMORY[0x277CAF770](result, 0x1000C80BDFB0063);
    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  return result;
}