__n128 HGTextureManager::_getQueuedTotalTextureUsage@<Q0>(int64x2_t *a1@<X8>)
{
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v2 = *qword_27FE4B570;
  v3 = qword_27FE4B570 + 8;
  if (*qword_27FE4B570 == qword_27FE4B570 + 8)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
    do
    {
      v7 = v2[5];
      if (v7)
      {
        (*(v7->i64[0] + 16))(v2[5]);
      }

      v16 = v7[2];
      v17 = v7[1];
      v9 = v7[3].i64[0];
      v8 = v7[3].i64[1];
      v10 = v7[4].i64[0];
      (*(v7->i64[0] + 24))(v7);
      v11 = v2[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v6 += v9;
      v18 = vaddq_s64(v16, v18);
      v19 = vaddq_s64(v17, v19);
      v5 += v8;
      v4 += v10;
      v2 = v12;
    }

    while (v12 != v3);
  }

  pthread_mutex_unlock(&stru_280C5C480);
  result = v19;
  *a1 = v19;
  a1[1] = v18;
  a1[2].i64[0] = v6;
  a1[2].i64[1] = v5;
  a1[3].i64[0] = v4;
  return result;
}

uint64_t HGTextureManager::_poolWaitForQueuedTexture(HGTextureManager *this)
{
  HGTextureManager::_getQueuedTotalTextureUsage(*(this + 2), v3);
  if ((*(this + 18) * 0.8) >= v4)
  {
    return (*(**(this + 20) + 56))(*(this + 20));
  }

  else
  {
    return 1;
  }
}

uint64_t std::pair<void *,HGRef<HGTextureManager::TexturePool>>::~pair(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(*(result + 8));
    return v2;
  }

  return result;
}

uint64_t std::pair<void *,HGRef<TextureDeleteQueue>>::~pair(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(*(result + 8));
    return v2;
  }

  return result;
}

void HGTextureManager::_dumpMaxUsage(HGTextureManager *this, unint64_t a2)
{
  v4 = atomic_load(HGLogger::_enabled);
  if ((v4 & 1) == 0 || HGLogger::getLevel("texManager", *(this + 1)) < 1)
  {
    return;
  }

  HGTraceGuard::HGTraceGuard(v25, "texManager", 1, "------ HGTextureManager::_dumpMaxUsage(shareGroup) ------");
  v7 = *this;
  v8 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    if (v8)
    {
      HGLogger::log("texManager", 1, "  tex recycling : %d re-used / %d new  (%d%% re-usage)\n", v5, v6, *(this + 1), *this, ((*(this + 1) * 100.0) / *this));
    }
  }

  else if (v8)
  {
    HGLogger::log("texManager", 1, "  tex recycling : %d re-used / %d new\n", v5, v6, *(this + 1), *this);
  }

  pthread_mutex_lock(&stru_280C5C4C0);
  if (!qword_27FE4B578)
  {
    operator new();
  }

  v11 = *(qword_27FE4B578 + 8);
  if (v11)
  {
    v12 = qword_27FE4B578 + 8;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 != qword_27FE4B578 + 8 && *(v12 + 32) <= a2)
    {
      v16 = *(v12 + 40);
      v17 = atomic_load(HGLogger::_enabled);
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  v16 = *(qword_27FE4B578 + 48);
  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
LABEL_21:
    HGLogger::log("texManager", 1, "  max total   : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(*v16, 0x14uLL));
  }

LABEL_22:
  v19 = atomic_load(HGLogger::_enabled);
  if (v19)
  {
    HGLogger::log("texManager", 1, "  max used    : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(v16[1], 0x14uLL));
  }

  v20 = atomic_load(HGLogger::_enabled);
  if (v20)
  {
    HGLogger::log("texManager", 1, "  max active  : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(v16[2], 0x14uLL));
  }

  v21 = atomic_load(HGLogger::_enabled);
  if (v21)
  {
    HGLogger::log("texManager", 1, "  max shared  : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(v16[3], 0x14uLL));
  }

  v22 = atomic_load(HGLogger::_enabled);
  if (v22)
  {
    HGLogger::log("texManager", 1, "  max unowned : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(v16[4], 0x14uLL));
  }

  v23 = atomic_load(HGLogger::_enabled);
  if (v23)
  {
    HGLogger::log("texManager", 1, "  max free    : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(v16[5], 0x14uLL));
  }

  v24 = atomic_load(HGLogger::_enabled);
  if (v24)
  {
    HGLogger::log("texManager", 1, "  max queued  : %3.1f mb\n", v9, v10, vcvts_n_f32_u64(v16[6], 0x14uLL));
  }

  pthread_mutex_unlock(&stru_280C5C4C0);
  HGTraceGuard::~HGTraceGuard(v25);
}

void sub_25FCD489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD48B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD48C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::_printTextureList(HGTextureManager *this, char *a2, void *a3, HGTextureManager::TextureUsage *a4)
{
  v7 = HGTraceGuard::HGTraceGuard(v46, "texManager", a2, "HGTextureManager::_printTextureList()");
  v10 = atomic_load(HGLogger::_enabled);
  if (a3)
  {
    if (v10)
    {
      HGLogger::log("texManager", a2, "dumping ALL textures from share group %p\n", v8, v9, a3);
    }
  }

  else if (v10)
  {
    HGLogger::log("texManager", a2, "dumping ALL textures from ALL share groups\n", v8, v9);
  }

  v11 = atomic_load(HGLogger::_enabled);
  if (v11)
  {
    HGLogger::log("texManager", a2, "\n", v8, v9);
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v12 = HGTextureManager::_printUsedTextures(v7, a2, a3, v44, v9);
  v15 = atomic_load(HGLogger::_enabled);
  if (v15)
  {
    HGLogger::log("texManager", a2, "\n", v13, v14);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v16 = HGTextureManager::_printFreeTextures(v12, a2, a3, &v40, v14);
  v19 = atomic_load(HGLogger::_enabled);
  if (v19)
  {
    HGLogger::log("texManager", a2, "\n", v17, v18);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  HGTextureManager::_printQueuedTextures(v16, a2, a3, &v36, v18);
  v22 = atomic_load(HGLogger::_enabled);
  if (v22)
  {
    HGLogger::log("texManager", a2, "\n", v20, v21);
  }

  v23 = atomic_load(HGLogger::_enabled);
  if (v23)
  {
    HGLogger::log("texManager", a2, "ALL TEXTURES :\n", v20, v21);
  }

  HGLogger::indent(1);
  v24 = atomic_load(HGLogger::_enabled);
  if (v24)
  {
    HGLogger::log("texManager", a2, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", *(&v37 + 1), v38, vcvts_n_f32_u64(*(&v40 + 1) + v44[0].i64[1] + *(&v36 + 1), 0x14uLL), vcvts_n_f32_u64(v41 + v44[1].i64[0] + v37, 0x14uLL), vcvts_n_f32_u64(*(&v41 + 1) + v44[1].i64[1] + *(&v37 + 1), 0x14uLL), vcvts_n_f32_u64(v42 + v44[2].i64[0] + v38, 0x14uLL), vcvts_n_f32_u64(v40 + v44[0].i64[0] + v36, 0x14uLL));
  }

  HGLogger::indent(0xFFFFFFFFLL);
  v27 = atomic_load(HGLogger::_enabled);
  if (v27)
  {
    HGLogger::log("texManager", a2, "\n", v25, v26);
  }

  v28 = *(&v40 + 1);
  v29 = *(&v36 + 1);
  v30 = v40 + v44[0].i64[0] + v36;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = v30;
  v31 = *(&v44[1] + 8);
  v32 = *(a4 + 5) + v28;
  *(a4 + 8) = vaddq_s64(*(a4 + 8), *(v44 + 8));
  *(a4 + 24) = vaddq_s64(*(a4 + 24), v31);
  *(a4 + 5) = v32;
  *(a4 + 6) = 0;
  *(a4 + 6) = v29;
  HGTextureManager::TextureUsage::logSummary(a4, 3, 1, v25, v26);
  v35 = atomic_load(HGLogger::_enabled);
  if (v35)
  {
    HGLogger::log("texManager", a2, "\n", v33, v34);
  }

  HGTraceGuard::~HGTraceGuard(v46);
}

uint64_t HGTextureManager::_printUsageSummary(HGTextureManager *this, const char *a2, void *a3, HGTextureManager::TextureUsage *a4)
{
  pthread_mutex_lock(&stru_280C5C440);
  if (a3)
  {
    if (!qword_27FE4B568)
    {
      operator new();
    }

    v7 = *qword_27FE4B568;
    v8 = *(qword_27FE4B568 + 8);
    if (*qword_27FE4B568 == v8)
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
    }

    else
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = 0uLL;
      do
      {
        if (*(*v7 + 16) == a3)
        {
          v12 = *(*v7 + 32);
          v9 += *(v12 + 128);
          v11 = vaddq_s64(*(v12 + 152), v11);
          v10 = vaddq_s64(*(v12 + 136), v10);
        }

        v7 += 8;
      }

      while (v7 != v8);
    }

    v34 = v11;
    v36 = v10;
    pthread_mutex_unlock(&stru_280C5C440);
    HGTextureManager::_getFreeTotalTextureUsage(a3, v39);
    HGTextureManager::_getQueuedTotalTextureUsage(a3, v38);
    v20 = v39[0].i64[1];
    v21 = v38[0].i64[1];
    *a4 += v39[0].i64[0] + v9 + v38[0].i64[0];
    v22 = *(a4 + 6);
    v23 = *(a4 + 5) + v20;
    v24 = vaddq_s64(*(a4 + 24), v34);
    *(a4 + 8) = vaddq_s64(*(a4 + 8), v36);
    *(a4 + 24) = v24;
    v25 = v22 + v21;
  }

  else
  {
    if (!qword_27FE4B568)
    {
      operator new();
    }

    v13 = *qword_27FE4B568;
    v14 = *(qword_27FE4B568 + 8);
    if (*qword_27FE4B568 == v14)
    {
      v15 = 0;
      v16 = 0uLL;
      v17 = 0uLL;
    }

    else
    {
      v15 = 0;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = *v13++;
        v19 = *(v18 + 32);
        v15 += *(v19 + 128);
        v17 = vaddq_s64(*(v19 + 152), v17);
        v16 = vaddq_s64(*(v19 + 136), v16);
      }

      while (v13 != v14);
    }

    v35 = v17;
    v37 = v16;
    pthread_mutex_unlock(&stru_280C5C440);
    HGTextureManager::_getFreeTotalTextureUsage(v39);
    HGTextureManager::_getQueuedTotalTextureUsage(v38);
    v26 = v39[0].i64[1];
    v27 = v38[0].i64[1];
    *a4 += v39[0].i64[0] + v38[0].i64[0] + v15;
    v28 = *(a4 + 6);
    v23 = *(a4 + 5) + v26;
    v29 = vaddq_s64(*(a4 + 24), v35);
    *(a4 + 8) = vaddq_s64(*(a4 + 8), v37);
    *(a4 + 24) = v29;
    v25 = v28 + v27;
  }

  *(a4 + 5) = v23;
  *(a4 + 6) = v25;
  HGLogger::indent(1);
  v32 = atomic_load(HGLogger::_enabled);
  if (v32)
  {
    HGLogger::log("texManager", a2, "total : %4.1f mb  |  used : %4.1f mb  |  active : %4.1f mb  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  free : %4.1f mb  |  queued : %4.1f mb\n", v30, v31, vcvts_n_f32_u64(*a4, 0x14uLL), vcvts_n_f32_u64(*(a4 + 1), 0x14uLL), vcvts_n_f32_u64(*(a4 + 2), 0x14uLL), vcvts_n_f32_u64(*(a4 + 3), 0x14uLL), vcvts_n_f32_u64(*(a4 + 4), 0x14uLL), vcvts_n_f32_u64(*(a4 + 5), 0x14uLL), vcvts_n_f32_u64(*(a4 + 6), 0x14uLL));
  }

  return HGLogger::indent(0xFFFFFFFFLL);
}

uint64_t HGTextureManager::_printUsedTextures(HGTextureManager *this, char *a2, void *a3, HGTextureManager::TextureUsage *a4, char *a5)
{
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("texManager", a2, "USED textures :\n", a4, a5);
  }

  pthread_mutex_lock(&stru_280C5C440);
  if (a3)
  {
    if (!qword_27FE4B568)
    {
      operator new();
    }

    v12 = *qword_27FE4B568;
    v15 = *(qword_27FE4B568 + 8);
    v24 = a2;
    v25 = a4;
    while (v12 != v15)
    {
      if (*(*v12 + 16) == a3)
      {
      }

      ++v12;
    }
  }

  else
  {
    if (!qword_27FE4B568)
    {
      operator new();
    }

    v13 = *qword_27FE4B568;
    v14 = *(qword_27FE4B568 + 8);
    v24 = a2;
    v25 = a4;
    while (v13 != v14)
    {
      v16 = *v13++;
    }
  }

  pthread_mutex_unlock(&stru_280C5C440);
  v19 = atomic_load(HGLogger::_enabled);
  if (v19)
  {
    HGLogger::log("texManager", a2, "all pools : \n", v17, v18);
  }

  HGLogger::indent(1);
  v22 = atomic_load(HGLogger::_enabled);
  if (v22)
  {
    HGLogger::log("texManager", a2, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", v20, v21, vcvts_n_f32_u64(*(a4 + 1), 0x14uLL), vcvts_n_f32_u64(*(a4 + 2), 0x14uLL), vcvts_n_f32_u64(*(a4 + 3), 0x14uLL), vcvts_n_f32_u64(*(a4 + 4), 0x14uLL), vcvts_n_f32_u64(*a4, 0x14uLL));
  }

  return HGLogger::indent(0xFFFFFFFFLL);
}

uint64_t HGTextureManager::_printFreeTextures(HGTextureManager *this, char *a2, unint64_t a3, HGTextureManager::TextureUsage *a4, char *a5)
{
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("texManager", a2, "FREE textures :\n", a4, a5);
  }

  LODWORD(v31[0]) = a2;
  v31[1] = a4;
  if (a3)
  {
    {
      operator new();
    }

    if (!v12)
    {
      goto LABEL_21;
    }

    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= a3;
      v16 = v14 < a3;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    {
LABEL_21:
      v34 = v17;
      if (!v17)
      {
LABEL_15:
        if (v17)
        {
          (*(*v17 + 24))(v17);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v17 = *(v13 + 40);
      v33 = *(v13 + 32);
      v34 = v17;
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    (*(*v17 + 16))(v17);
    goto LABEL_15;
  }

  {
    operator new();
  }

  v33 = v31[0];
  v34 = a4;
  {
    do
    {
      v23 = v18[5];
      v32[0] = v18[4];
      v32[1] = v23;
      if (v23)
      {
        (*(*v23 + 16))(v23);
      }

      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      v24 = v18[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v18[2];
          v26 = *v25 == v18;
          v18 = v25;
        }

        while (!v26);
      }

      v18 = v25;
    }

    while (v25 != v19);
  }

LABEL_24:
  if (!a3)
  {
    v27 = atomic_load(HGLogger::_enabled);
    if (v27)
    {
      HGLogger::log("texManager", a2, "all pools : \n", v21, v22);
    }

    HGLogger::indent(1);
    v30 = atomic_load(HGLogger::_enabled);
    if (v30)
    {
      HGLogger::log("texManager", a2, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", v28, v29, vcvts_n_f32_u64(*(a4 + 1), 0x14uLL), vcvts_n_f32_u64(*(a4 + 2), 0x14uLL), vcvts_n_f32_u64(*(a4 + 3), 0x14uLL), vcvts_n_f32_u64(*(a4 + 4), 0x14uLL), vcvts_n_f32_u64(*a4, 0x14uLL));
    }

    return HGLogger::indent(0xFFFFFFFFLL);
  }

  return result;
}

void sub_25FCD5494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::pair<void *,HGRef<HGTextureManager::TexturePool>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_25FCD54AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::pair<void *,HGRef<HGTextureManager::TexturePool>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::_printQueuedTextures(HGTextureManager *this, char *a2, unint64_t a3, HGTextureManager::TextureUsage *a4, char *a5)
{
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("texManager", a2, "QUEUED for deletion :\n", a4, a5);
  }

  LODWORD(v31[0]) = a2;
  v31[1] = a4;
  pthread_mutex_lock(&stru_280C5C480);
  if (a3)
  {
    if (!qword_27FE4B570)
    {
      operator new();
    }

    v12 = *(qword_27FE4B570 + 8);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = qword_27FE4B570 + 8;
    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= a3;
      v16 = v14 < a3;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 == qword_27FE4B570 + 8 || *(v13 + 32) > a3)
    {
LABEL_21:
      v17 = *(qword_27FE4B570 + 48);
      v33 = *(qword_27FE4B570 + 40);
      v34 = v17;
      if (!v17)
      {
LABEL_15:
        if (v17)
        {
          (*(*v17 + 24))(v17);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v17 = *(v13 + 40);
      v33 = *(v13 + 32);
      v34 = v17;
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    (*(*v17 + 16))(v17);
    goto LABEL_15;
  }

  if (!qword_27FE4B570)
  {
    operator new();
  }

  v18 = *qword_27FE4B570;
  v19 = qword_27FE4B570 + 8;
  v33 = v31[0];
  v34 = a4;
  if (v18 != (qword_27FE4B570 + 8))
  {
    do
    {
      v23 = v18[5];
      v32[0] = v18[4];
      v32[1] = v23;
      if (v23)
      {
        (*(*v23 + 16))(v23);
      }

      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      v24 = v18[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v18[2];
          v26 = *v25 == v18;
          v18 = v25;
        }

        while (!v26);
      }

      v18 = v25;
    }

    while (v25 != v19);
  }

LABEL_24:
  result = pthread_mutex_unlock(&stru_280C5C480);
  if (!a3)
  {
    v27 = atomic_load(HGLogger::_enabled);
    if (v27)
    {
      HGLogger::log("texManager", a2, "all pools : \n", v21, v22);
    }

    HGLogger::indent(1);
    v30 = atomic_load(HGLogger::_enabled);
    if (v30)
    {
      HGLogger::log("texManager", a2, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", v28, v29, vcvts_n_f32_u64(*(a4 + 1), 0x14uLL), vcvts_n_f32_u64(*(a4 + 2), 0x14uLL), vcvts_n_f32_u64(*(a4 + 3), 0x14uLL), vcvts_n_f32_u64(*(a4 + 4), 0x14uLL), vcvts_n_f32_u64(*a4, 0x14uLL));
    }

    return HGLogger::indent(0xFFFFFFFFLL);
  }

  return result;
}

void sub_25FCD5818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::pair<void *,HGRef<TextureDeleteQueue>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_25FCD5830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::pair<void *,HGRef<TextureDeleteQueue>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::FreeTexturesPrinter::operator()(unsigned int *a1, void *a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = a2[1];
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("texManager", *a1, "texture pool %p (group : %p) :\n", a4, a5, a2[1], *a2);
  }

  HGLogger::indent(1);
  v8 = *a1;
  pthread_mutex_lock((v6 + 16));
  v12 = *(v6 + 88);
  if (*(v6 + 96) != v12)
  {
    v13 = *(v6 + 112);
    v14 = (v12 + 8 * (v13 / 0x2A));
    v15 = (*v14 + 96 * (v13 % 0x2A));
    v16 = *(v12 + 8 * ((*(v6 + 120) + v13) / 0x2A)) + 96 * ((*(v6 + 120) + v13) % 0x2A);
    while (v15 != v16)
    {
      HGTextureManager::TextureEntry::log(v15, v8, v9);
      v15 = (v15 + 96);
      if ((v15 - *v14) == 4032)
      {
        v17 = v14[1];
        ++v14;
        v15 = v17;
      }
    }
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    HGLogger::log("texManager", *a1, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", v10, v11, vcvts_n_f32_u64(*(v6 + 136), 0x14uLL), vcvts_n_f32_u64(*(v6 + 144), 0x14uLL), vcvts_n_f32_u64(*(v6 + 152), 0x14uLL), vcvts_n_f32_u64(*(v6 + 160), 0x14uLL), vcvts_n_f32_u64(*(v6 + 128), 0x14uLL));
  }

  HGLogger::indent(0xFFFFFFFFLL);
  v19 = *(a1 + 1);
  v20 = *(v6 + 176);
  v21 = vaddq_s64(v19[1], *(v6 + 144));
  v22 = *(v6 + 160);
  *v19 = vaddq_s64(*v19, *(v6 + 128));
  v19[1] = v21;
  v19[2] = vaddq_s64(v19[2], v22);
  v19[3].i64[0] += v20;
  return pthread_mutex_unlock((v6 + 16));
}

uint64_t anonymous namespace::QueuedTexturesPrinter::operator()(unsigned int *a1, void *a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = a2[1];
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("texManager", *a1, "finish queue %p (group : %p) :\n", a4, a5, a2[1], *a2);
  }

  HGLogger::indent(1);
  v8 = *a1;
  pthread_mutex_lock((v6 + 128));
  v12 = *(v6 + 88);
  if (*(v6 + 96) != v12)
  {
    v13 = *(v6 + 112);
    v14 = (v12 + 8 * (v13 / 0x1E));
    v15 = *v14 + 136 * (v13 % 0x1E);
    v16 = *(v12 + 8 * ((*(v6 + 120) + v13) / 0x1E)) + 136 * ((*(v6 + 120) + v13) % 0x1E);
    while (v15 != v16)
    {
      HGTextureManager::TextureEntry::log((v15 + 8), v8, v9);
      v15 += 136;
      if (v15 - *v14 == 4080)
      {
        v17 = v14[1];
        ++v14;
        v15 = v17;
      }
    }
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    HGLogger::log("texManager", *a1, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", v10, v11, vcvts_n_f32_u64(*(v6 + 24), 0x14uLL), vcvts_n_f32_u64(*(v6 + 32), 0x14uLL), vcvts_n_f32_u64(*(v6 + 40), 0x14uLL), vcvts_n_f32_u64(*(v6 + 48), 0x14uLL), vcvts_n_f32_u64(*(v6 + 16), 0x14uLL));
  }

  HGLogger::indent(0xFFFFFFFFLL);
  v19 = *(a1 + 1);
  v20 = *(v6 + 64);
  v21 = vaddq_s64(v19[1], *(v6 + 32));
  v22 = *(v6 + 48);
  *v19 = vaddq_s64(*v19, *(v6 + 16));
  v19[1] = v21;
  v19[2] = vaddq_s64(v19[2], v22);
  v19[3].i64[0] += v20;
  return pthread_mutex_unlock((v6 + 128));
}

void *std::deque<HGTextureManager::TextureEntry>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FCD5F74(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<TextureDeleteQueue::DeleteRequest>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 15;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 30;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::deque<TextureDeleteQueue::DeleteRequest>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1E;
  v3 = v1 - 30;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FCD6408(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<HGTextureManager::TextureEntry>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 21;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 42;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_42;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * (&a6[-v13] >> 5);
      if ((0xAAAAAAAAAAAAAAABLL * ((v14 - a2) >> 5)) < v15)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - a2) >> 5);
      }

      v14 -= 96 * v15;
      a6 -= 96 * v15;
      if (v15)
      {
        result = memmove(a6, v14, 96 * v15);
      }

      if (v14 == a2)
      {
        break;
      }

      v17 = *--v8;
      v13 = v17;
      a6 = (v17 + 4032);
    }

    goto LABEL_40;
  }

  v19 = *a3;
  if (*a3 != a4)
  {
    v20 = *a5;
    v21 = a4;
    while (1)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (&a6[-v20] >> 5);
      if ((0xAAAAAAAAAAAAAAABLL * ((v21 - v19) >> 5)) < v22)
      {
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v19) >> 5);
      }

      v21 -= 96 * v22;
      a6 -= 96 * v22;
      if (v22)
      {
        result = memmove(a6, v21, 96 * v22);
      }

      if (v21 == v19)
      {
        break;
      }

      v23 = *--v8;
      v20 = v23;
      a6 = (v23 + 4032);
    }

    if (*v8 + 4032 == a6)
    {
      v24 = v8[1];
      ++v8;
      a6 = v24;
    }
  }

  v25 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v26 = *v8;
    do
    {
      while (1)
      {
        v27 = *v25;
        v28 = *v25 + 4032;
        while (1)
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * ((a6 - v26) >> 5);
          if ((0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 5)) < v29)
          {
            v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 5);
          }

          v28 -= 96 * v29;
          a6 -= 96 * v29;
          if (v29)
          {
            result = memmove(a6, v28, 96 * v29);
          }

          if (v28 == v27)
          {
            break;
          }

          v30 = *--v8;
          v26 = v30;
          a6 = v30 + 4032;
        }

        v26 = *v8;
        if (*v8 + 4032 == a6)
        {
          break;
        }

        if (--v25 == a1)
        {
          goto LABEL_32;
        }
      }

      v31 = v8[1];
      ++v8;
      v26 = v31;
      a6 = v31;
      --v25;
    }

    while (v25 != a1);
  }

LABEL_32:
  v32 = *v25 + 4032;
  if (v32 != a2)
  {
    v33 = *v8;
    while (1)
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * (&a6[-v33] >> 5);
      if ((0xAAAAAAAAAAAAAAABLL * ((v32 - a2) >> 5)) < v34)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v32 - a2) >> 5);
      }

      v32 -= 96 * v34;
      a6 -= 96 * v34;
      if (v34)
      {
        result = memmove(a6, v32, 96 * v34);
      }

      if (v32 == a2)
      {
        break;
      }

      v35 = *--v8;
      v33 = v35;
      a6 = (v35 + 4032);
    }

LABEL_40:
    if (*v8 + 4032 == a6)
    {
      v36 = v8[1];
      ++v8;
      a6 = v36;
    }
  }

LABEL_42:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

const void **std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>>>(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8 + 4032) >> 5);
        if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v7) >> 5)) < v12)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v7) >> 5);
        }

        v13 = 96 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 96 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4032 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v15 = result;
  v16 = *result + 4032;
  v17 = *a5;
  v8 = *(a5 + 8);
  if (v16 == __len)
  {
    goto LABEL_20;
  }

  v19 = *v17++;
  v18 = v19;
  while (1)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v8 + 4032) >> 5);
    if ((0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 5)) < v20)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 5);
    }

    v21 = 96 * v20;
    if (v20)
    {
      result = memmove(v8, v7, 96 * v20);
    }

    v7 += v21;
    if (v7 == v16)
    {
      break;
    }

    v22 = *v17++;
    v18 = v22;
    v8 = v22;
  }

  v8 += v21;
  if (*(v17 - 1) + 4032 != v8)
  {
    --v17;
LABEL_20:
    *a5 = v17;
    *(a5 + 8) = v8;
    for (i = v15 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v24 = 0;
        v25 = *i;
        v27 = *v17++;
        v26 = v27;
        while (1)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v8 + 4032) >> 5);
          if ((0xAAAAAAAAAAAAAAABLL * ((4032 - v24) >> 5)) < v28)
          {
            v28 = 0xAAAAAAAAAAAAAAABLL * ((4032 - v24) >> 5);
          }

          v29 = 96 * v28;
          if (v28)
          {
            result = memmove(v8, &v25[v24], 96 * v28);
          }

          v24 += v29;
          if (v24 == 4032)
          {
            break;
          }

          v30 = *v17++;
          v26 = v30;
          v8 = v30;
        }

        v8 += v29;
        v31 = v17 - 1;
        if (*(v17 - 1) + 4032 != v8)
        {
          break;
        }

        v8 = *v17;
        *a5 = v17;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v17;
      *a5 = v31;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v17;
  *a5 = v17;
  *(a5 + 8) = v8;
  i = v15 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v32 = *i;
  if (*i != a4)
  {
    v34 = *v17++;
    v33 = v34;
    while (1)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v8 + 4032) >> 5);
      if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v32) >> 5)) < v35)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v32) >> 5);
      }

      v36 = 96 * v35;
      if (v35)
      {
        result = memmove(v8, v32, 96 * v35);
      }

      v32 += v36;
      if (v32 == a4)
      {
        break;
      }

      v37 = *v17++;
      v33 = v37;
      v8 = v37;
    }

    v8 += v36;
    if (*(v17 - 1) + 4032 == v8)
    {
      v8 = *v17;
    }

    else
    {
      --v17;
    }
  }

  *a5 = v17;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

uint64_t anonymous namespace::UsedTexturesPrinter::operator()(unsigned int *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = *(a2 + 32);
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("texManager", *a1, "texture pool %p (rnd : %p, group : %p) :\n", a4, a5, v6, a2, *(a2 + 16));
  }

  HGLogger::indent(1);
  v8 = *a1;
  pthread_mutex_lock((v6 + 16));
  v12 = *(v6 + 88);
  if (*(v6 + 96) != v12)
  {
    v13 = *(v6 + 112);
    v14 = (v12 + 8 * (v13 / 0x2A));
    v15 = (*v14 + 96 * (v13 % 0x2A));
    v16 = *(v12 + 8 * ((*(v6 + 120) + v13) / 0x2A)) + 96 * ((*(v6 + 120) + v13) % 0x2A);
    while (v15 != v16)
    {
      HGTextureManager::TextureEntry::log(v15, v8, v9);
      v15 = (v15 + 96);
      if ((v15 - *v14) == 4032)
      {
        v17 = v14[1];
        ++v14;
        v15 = v17;
      }
    }
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    HGLogger::log("texManager", *a1, "used : %4.1f mb (active : %4.1f mb)  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  (total : %4.1f mb)\n", v10, v11, vcvts_n_f32_u64(*(v6 + 136), 0x14uLL), vcvts_n_f32_u64(*(v6 + 144), 0x14uLL), vcvts_n_f32_u64(*(v6 + 152), 0x14uLL), vcvts_n_f32_u64(*(v6 + 160), 0x14uLL), vcvts_n_f32_u64(*(v6 + 128), 0x14uLL));
  }

  HGLogger::indent(0xFFFFFFFFLL);
  v19 = *(a1 + 1);
  v20 = *(v6 + 176);
  v21 = vaddq_s64(v19[1], *(v6 + 144));
  v22 = *(v6 + 160);
  *v19 = vaddq_s64(*v19, *(v6 + 128));
  v19[1] = v21;
  v19[2] = vaddq_s64(v19[2], v22);
  v19[3].i64[0] += v20;
  return pthread_mutex_unlock((v6 + 16));
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(RenderbufferCache::~RenderbufferCache, a2, a3);
}

void HGTextureManager::createRenderbuffer()
{
  v0 = __cxa_guard_acquire(&_MergedGlobals_174);
  if (v0)
  {

    __cxa_guard_release(&_MergedGlobals_174);
  }
}

{
  v0 = __cxa_guard_acquire(&qword_27FE4B558);
  if (v0)
  {
    qword_27FE4B588 = 0;
    unk_27FE4B590 = 0;
    qword_27FE4B580 = 0;
    OUTLINED_FUNCTION_1_4(v0, &qword_27FE4B580, &dword_25F8F0000);

    __cxa_guard_release(&qword_27FE4B558);
  }
}

void sub_25FCD6FFC(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v2);
  HGRenderContext::~HGRenderContext(v1);
  _Unwind_Resume(a1);
}

void sub_25FCD7020(_Unwind_Exception *a1)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v2);
  HGRenderContext::~HGRenderContext(v1);
  _Unwind_Resume(a1);
}

void HGCPURenderContext::~HGCPURenderContext(HGCPURenderContext *this)
{
  *this = &unk_28721F188;
  v1 = *(this + 18);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  HGRenderContext::~HGRenderContext(this);
}

{
  *this = &unk_28721F188;
  v1 = *(this + 18);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    HGRenderContext::~HGRenderContext(this);
  }

  else
  {
    HGRenderContext::~HGRenderContext(this);
  }

  HGObject::operator delete(v2);
}

uint64_t HGCPURenderContext::DumpContext(HGCPURenderContext *this)
{
  puts("-----------------------------------------");
  printf("Dumping HGCPURenderContext: %p\n", this);
  printf("    _state                    : %d\n", *(this + 8));
  printf("    _type                     : %d\n", *(this + 9));
  printf("    _numPhysicalCores         : %u\n", *(*(this + 17) + 88));
  printf("    _numLogicalCores          : %u\n", *(*(this + 17) + 92));
  printf("    _defaultFilteringMode     : %d\n", *(this + 21));
  printf("    _intermediateBufferFormat : %d\n", *(this + 20));
  printf("    _numCPURenderThreads      : %lu\n", *(this + 19));
  printf("    _cpuRendererTileSizeX     : %lu\n", *(this + 20));
  printf("    _cpuRendererTileSizeY     : %lu\n", *(this + 21));
  printf("    _renderer                 : %p\n", *(this + 9));
  printf("    _renderQueue              : %p\n", *(this + 6));
  printf("    _renderGraphDumpLevel     : %d\n", *(this + 22));
  printf("    _renderStatsFlag          : %d\n", *(this + 92));
  printf("    _renderStatsWarmUp        : %lu\n", *(this + 12));
  printf("    _renderStatsMaxVals       : %lu\n", *(this + 13));

  return puts("-----------------------------------------");
}

void HGStackPage::~HGStackPage(HGStackPage *this)
{
  v2 = *this;
  if (v2)
  {
    HGFree(v2);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void HGExecUnitStack::HGExecUnitStack(HGExecUnitStack *this)
{
  *(this + 8) = 0u;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 14) = 0;
  *(this + 38) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  operator new();
}

void sub_25FCD748C(_Unwind_Exception *a1)
{
  HGStackPage::~HGStackPage(v2);
  HGStackPage::~HGStackPage(v1);
  _Unwind_Resume(a1);
}

void HGExecUnitStack::~HGExecUnitStack(uint64_t **this)
{
  HGExecUnitStack::resetStack(this);
  v2 = *this;
  v3 = **this;
  for (i = (*this)[1]; v3 != i; i = v2[1])
  {
    v5 = *(i - 8);
    v2[1] = i - 8;
    if (v5)
    {
      if (*v5)
      {
        HGFree(*v5);
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      MEMORY[0x2666E9F00](v5, 0x1080C40347F1BC8);
      v2 = *this;
      v3 = **this;
    }
  }

  v6 = this[15];
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v6[1] = v7;
      operator delete(v7);
    }

    MEMORY[0x2666E9F00](v6, 0x80C40D6874129);
  }

  v8 = this[16];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v8[1] = v9;
      operator delete(v9);
    }

    MEMORY[0x2666E9F00](v8, 0x80C40D6874129);
  }

  v10 = *this;
  if (*this)
  {
    v11 = *v10;
    if (*v10)
    {
      v10[1] = v11;
      operator delete(v11);
    }

    MEMORY[0x2666E9F00](v10, 0x80C40D6874129);
  }

  *this = 0;
  v12 = this[8];
  *(this + 15) = 0u;
  *(this + 17) = 0u;
  if (v12)
  {
    HGFree(v12);
    this[8] = 0;
    this[9] = 0;
    this[10] = 0;
  }

  v13 = this[1];
  if (v13)
  {
    HGFree(v13);
    this[1] = 0;
    this[2] = 0;
    this[3] = 0;
  }
}

void HGExecUnitStack::resetStack(HGExecUnitStack *this)
{
  v2 = *(this + 15);
  v3 = v2[1];
  for (i = **v2; *v2 != v3; v3 = v2[1])
  {
    v7 = *(v3 - 1);
    v5 = v3 - 1;
    v6 = v7;
    if (v7 == i)
    {
      break;
    }

    v20 = v6;
    v2[1] = v5;
    *(v6 + 16) = 0;
    *(v6 + 48) = *(this + 22);
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](*this, &v20);
    *(this + 20) -= 16 * *(v20 + 8);
  }

  *(i + 16) = 0;
  v8 = *(this + 16);
  v10 = *v8;
  v9 = v8[1];
  v11 = **v8;
  if (*v8 != v9)
  {
    do
    {
      v14 = *(v9 - 1);
      v12 = v9 - 1;
      v13 = v14;
      if (v14 == v11)
      {
        break;
      }

      v20 = v13;
      v8[1] = v12;
      *(v13 + 16) = 0;
      *(v13 + 48) = *(this + 22);
      std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](*this, &v20);
      *(this + 20) -= 16 * *(v20 + 8);
      v9 = v8[1];
    }

    while (*v8 != v9);
    v10 = **(this + 16);
  }

  *(v11 + 16) = 0;
  *(this + 17) = ***(this + 15);
  *(this + 18) = *v10;
  *(this + 20) = 0;
  *(this + 21) = 0;
  v15 = **this;
  v17 = (*this + 8);
  for (j = *v17; v15 != *v17; j = *v17)
  {
    v18 = *v15;
    if ((*(this + 22) - (*v15)[6]) < 0x15)
    {
      break;
    }

    v19 = j - (v15 + 1);
    if (j != v15 + 1)
    {
      memmove(v15, v15 + 1, j - (v15 + 1));
    }

    *v17 = (v15 + v19);
    if (*v18)
    {
      HGFree(*v18);
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    MEMORY[0x2666E9F00](v18, 0x1080C40347F1BC8);
    v15 = **this;
    v17 = (*this + 8);
  }
}

char *HGExecUnitStack::getStack(char ***this, unint64_t a2)
{
  v4 = (this + 17);
  v5 = this[*(this + 38) + 17];
  if (!*v5 || v5[1] - v5[2] < a2)
  {
    if (a2 >= 0x2401)
    {
      v6 = 9216 * ((a2 - 1) / 0x2400) + 9216;
    }

    else
    {
      v6 = 9216;
    }

    v7 = *this;
    v9 = **this;
    v8 = (*this)[1];
    if (v9 == v8)
    {
      goto LABEL_19;
    }

    v10 = (*this)[1];
    v11 = **this;
    do
    {
      v12 = *v11;
      v11 += 8;
      v13 = *(v12 + 8);
      if (v13 <= 2 * v6 && v13 >= v6)
      {
        v10 = v9;
      }

      v9 = v11;
    }

    while (v11 != v8);
    if (v10 == v8)
    {
      goto LABEL_19;
    }

    v15 = *v10;
    v21 = *v10;
    v16 = v8 - (v10 + 8);
    if (v8 != v10 + 8)
    {
      memmove(v10, v10 + 8, v8 - (v10 + 8));
    }

    v7[1] = &v10[v16];
    if (!v15)
    {
LABEL_19:
      operator new();
    }

    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this[*(this + 38) + 15], &v21);
    v5 = v21;
    *&v4[8 * *(this + 38)] = v21;
    v17 = this[21];
    v18 = &this[20][2 * v5[1]];
    this[20] = v18;
    if (v18 > v17)
    {
      this[21] = v18;
    }
  }

  if (a2)
  {
    v19 = &v5[4][a2];
    v5[3] = a2;
    v5[4] = v19;
    ++*(v5 + 10);
  }

  return &(*v5)[16 * v5[2]];
}

void HGExecUnitStack::setStackState(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 136) = *a2;
  v5 = a2[1];
  *(a1 + 144) = v5;
  *(a1 + 152) = *(a2 + 8);
  v6 = *(a1 + 120);
  v7 = v6[1];
  if (*v6 != v7)
  {
    do
    {
      v10 = *(v7 - 8);
      v8 = v7 - 8;
      v9 = v10;
      if (v10 == v4)
      {
        break;
      }

      v17 = v9;
      v6[1] = v8;
      *(v9 + 16) = 0;
      *(v9 + 48) = *(a1 + 176);
      std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](*a1, &v17);
      *(a1 + 160) -= 16 * *(v17 + 8);
      v7 = v6[1];
    }

    while (*v6 != v7);
    v5 = *(a1 + 144);
  }

  *(v4 + 16) = 0;
  v11 = *(a1 + 128);
  v12 = v11[1];
  v13 = v5;
  if (*v11 != v12)
  {
    do
    {
      v16 = *(v12 - 8);
      v14 = v12 - 8;
      v15 = v16;
      if (v16 == v5)
      {
        break;
      }

      v17 = v15;
      v11[1] = v14;
      *(v15 + 16) = 0;
      *(v15 + 48) = *(a1 + 176);
      std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](*a1, &v17);
      *(a1 + 160) -= 16 * *(v17 + 8);
      v12 = v11[1];
    }

    while (*v11 != v12);
    v13 = *(a1 + 144);
  }

  *(v5 + 16) = 0;
  *(*(a1 + 136) + 16) += a2[2];
  *(v13 + 16) += a2[3];
}

void sub_25FCD7BF4(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x20C4093837F09);
  HGSampler::~HGSampler(v1);
  _Unwind_Resume(a1);
}

double HGExecutionUnit::ClearStats(HGExecutionUnit *this)
{
  v1 = *(this + 52);
  *(v1 + 96) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

void HGExecutionUnit::~HGExecutionUnit(HGExecutionUnit *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    pthread_cancel(v2);
    pthread_cond_signal(this + 5);
    pthread_join(*(this + 21), 0);
  }

  pthread_cond_destroy(this + 5);
  pthread_mutex_destroy((this + 176));
  v3 = *(this + 53);
  if (v3)
  {
    HGStats::UnitStats::~UnitStats(v3);
    MEMORY[0x2666E9F00]();
  }

  *(this + 53) = 0;
  v4 = *(this + 18);
  if (v4)
  {
    HGExecUnitStack::~HGExecUnitStack(v4);
    MEMORY[0x2666E9F00]();
  }

  *(this + 18) = 0;
  v5 = *(this + 54);
  if (v5)
  {
    HGFree(v5);
  }

  v6 = *(this + 37);
  if (v6)
  {
    dispatch_release(v6);
  }

  HGSampler::~HGSampler(this);
}

uint64_t HGExecutionUnit::GetStackState@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 144);
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = *(v4 + 16);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 24) = v5;
  *(a2 + 32) = *(v2 + 152);
  return this;
}

void HGExecutionUnit::SetStackState(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v3;
  v5 = *(a2 + 32);
  HGExecUnitStack::setStackState(v2, v4);
}

uint64_t HGExecutionUnit::CommitStack(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 144) + 8 * *(*(result + 144) + 152) + 136);
  v4 = v3[2];
  if (*v3 + 16 * v4 == a2)
  {
    v3[2] = v4 + a3;
  }

  return result;
}

void HGExecutionUnit::Execute(HGExecutionUnit *this)
{
  v2 = *(this + 19);
  ++*(*(this + 18) + 176);
  v3 = *(v2 + 272);
  v36 = v3[1];
  v37 = *v3;
  v34 = v3[3];
  v35 = v3[2];
  v4 = *(v2 + 592);
  v5 = *(v2 + 588);
  v40 = 0;
  v39 = 0;
  v6 = 0;
  v7 = *(this + 40);
  v8 = -v7 < 0;
  v9 = -v7 & 7;
  v10 = v7 & 7;
  if (!v8)
  {
    v10 = -v9;
  }

  v33 = hg_eu_color[v10];
  v11 = *(v3 + 3);
  if (!*(v11 + 192) && (*(v11 + 16) & 0x80) != 0)
  {
    IsNull = HGRect::IsNull(v3);
    v23 = *(this + 19);
    Stack = 0;
    if (IsNull)
    {
      v17 = 0;
    }

    else
    {
      v17 = v23[149];
    }

    v38 = 1;
    v15 = 1;
    if (!(*(*v23 + 128))(v23, 28))
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v12 = 4 * *(v2 + 596);
  v13 = HGFormatUtils::tileWidthFactorRequirement(*(*(v3 + 2) + 16));
  v14 = (v35 - v37);
  v5 = v5 / (4 * v13) * 4 * v13;
  v15 = vcvtps_s32_f32(v14 / v5);
  v16 = (v34 - v36);
  v17 = v15 * vcvtps_s32_f32(v16 / v4);
  if (v17 < v12)
  {
    v18 = v4 > 1;
    for (i = v5 > 1; v5 > 1 || v4 >= 2; i = v5 > 1)
    {
      if (v4 >= v5)
      {
        v4 = v4 >> v18;
      }

      else
      {
        if ((v5 >> 1) % v13)
        {
          break;
        }

        v5 = v5 >> i;
      }

      v15 = vcvtps_s32_f32(v14 / v5);
      v17 = vcvtps_s32_f32(v16 / v4) * v15;
      if (v17 >= v12)
      {
        break;
      }

      v18 = v4 > 1;
    }
  }

  Stack = HGExecUnitStack::getStack(*(this + 18), v4 * v5);
  v38 = 0;
  if ((*(**(this + 19) + 128))(*(this + 19), 28))
  {
LABEL_18:
    if (!*(this + 54))
    {
      *(this + 54) = HGMalloc(0x100000);
    }
  }

LABEL_24:
  for (j = atomic_fetch_add(*(*(this + 19) + 280), 1u); j < v17; j = atomic_fetch_add(*(*(this + 19) + 280), 1u))
  {
    if (v38)
    {
      v25 = *(v3 + 2);
      HGRenderer::RenderTile(*(this + 19), this, *(v25 + 80), *(v25 + 20), *(v25 + 28), *(v3 + 3), (*(v25 + 64) / *(v25 + 56)) - *(v25 + 28) + *(v25 + 20));
      v26 = *(*(this + 52) + 100);
      v27 = *(this + 19);
      if (v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = (v37 + j % v15 * v5);
      v29 = (v36 + j / v15 * v4);
      LODWORD(v30) = v29 + v4;
      LODWORD(v31) = v28 + v5;
      if (v29 + v4 >= v34)
      {
        v30 = v34;
      }

      else
      {
        v30 = v30;
      }

      if (v31 >= v35)
      {
        v31 = v35;
      }

      else
      {
        v31 = v31;
      }

      v6 = v31 | (v30 << 32);
      v40 = v37 + j % v15 * v5;
      HGRenderer::RenderTile(*(this + 19), this, Stack, v28 | (v29 << 32), v6, *(v3 + 3), 0);
      v39 = (v36 + j / v15 * v4);
      v26 = *(*(this + 52) + 100);
      v27 = *(this + 19);
      if (v26)
      {
LABEL_37:
        v32 = *(v27 + 167);
        if (v32 != 2 && (v26 < 0 || v32 == 1))
        {
          return;
        }
      }
    }

    if (HGRenderer::RenderCheckPoint(v27))
    {
      return;
    }

    *(*(this + 52) + 96) = j / (v17 - 1);
    if (Stack)
    {
      if (*(*(this + 19) + 608))
      {
        *Stack = v33;
      }

      HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v41, *(this + 53), 2, (HIDWORD(v6) - v39) * (v6 - v40), *(*(v3 + 2) + 56) * (HIDWORD(v6) - v39) * (v6 - v40));
      (*(**(v3 + 2) + 80))(*(v3 + 2), Stack, v40 | (v39 << 32), v6);
      HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v41);
    }
  }

  *(*(this + 52) + 96) = 1065353216;
}

void sub_25FCD822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGExecutionUnit::BgnExec(HGExecutionUnit *this)
{
  HGExecUnitStack::resetStack(*(this + 18));
  if (*(this + 40))
  {
    v2 = (this + 168);
    if (*(this + 21))
    {
      goto LABEL_7;
    }
  }

  else
  {
    atomic_store(0, *(*(this + 19) + 280));
    v2 = (this + 168);
    if (*(this + 21))
    {
      goto LABEL_7;
    }
  }

  result = pthread_create(v2, 0, hg_pthread_loop, this);
  if (result)
  {
    *(*(this + 19) + 596) = *(this + 40);
    return result;
  }

LABEL_7:
  pthread_mutex_lock((this + 176));
  *(this + 288) = 1;
  pthread_cond_signal(this + 5);

  return pthread_mutex_unlock((this + 176));
}

void hg_pthread_loop(char *a1)
{
  snprintf(__str, 0x200uLL, "com.apple.helium-unit.%d.%d", *(*(a1 + 19) + 1016), *(a1 + 40));
  pthread_setname_np(__str);
  v2 = MEMORY[0x277D85F48];
  while (1)
  {
    pthread_mutex_lock((a1 + 176));
    if ((a1[288] & 1) == 0)
    {
      do
      {
        pthread_cond_wait(a1 + 5, (a1 + 176));
        pthread_testcancel();
      }

      while (!a1[288]);
    }

    v4 = (*(**(a1 + 19) + 128))(*(a1 + 19), 6);
    global_queue = 0;
    if (v4 <= 1)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      if (v4 == 1)
      {
        v6 = -2;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v6 = 0;
          goto LABEL_16;
        case 3:
          v6 = 2;
LABEL_16:
          global_queue = dispatch_get_global_queue(v6, 0);
          break;
        case 4:
          v3 = MEMORY[0x2666EAC10]();
          get_default = 0;
          policy_infoCnt = 4;
          thread_policy_get(v3, 2u, policy_info, &policy_infoCnt, &get_default);
          thread_policy_set(v3, 2u, policy_info, policy_infoCnt);
          mach_port_deallocate(*v2, v3);
LABEL_4:
          HGExecutionUnit::Execute(a1);
          goto LABEL_5;
      }
    }

    dispatch_group_async_f(*(a1 + 37), global_queue, a1, ExecuteUnitGCD);
    dispatch_group_wait(*(a1 + 37), 0xFFFFFFFFFFFFFFFFLL);
LABEL_5:
    a1[288] = 0;
    pthread_cond_signal(a1 + 5);
    pthread_mutex_unlock((a1 + 176));
  }
}

uint64_t HGExecutionUnit::EndExec(HGExecutionUnit *this)
{
  pthread_mutex_lock((this + 176));
  if (*(this + 288) == 1)
  {
    do
    {
      pthread_cond_wait(this + 5, (this + 176));
    }

    while ((*(this + 288) & 1) != 0);
  }

  return pthread_mutex_unlock((this + 176));
}

void HGExecutionUnit::RenderTile(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, HGNode *a5, uint64_t a6)
{
  HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v12, *(a1 + 424), 0);
  HGRenderer::RenderTile(*(a1 + 152), a1, a2, a3, a4, a5, a6);
  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v12);
}

{
  HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v12, *(a1 + 424), 0);
  HGRenderer::RenderTile(*(a1 + 152), a1, a2, a3, a4, a5, a6);
  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v12);
}

int64x2_t *HGExecutionUnit::PopStats(HGExecutionUnit *this)
{
  result = *(this + 52);
  v3 = result[6].i64[1];
  if (v3)
  {
    v4 = v3[1];
    *v3 = vaddq_s64(*v3, *result);
    v3[1] = vaddq_s64(v4, result[1]);
    v5 = v3[3];
    v3[2] = vaddq_s64(v3[2], result[2]);
    v3[3] = vaddq_s64(v5, result[3]);
    v3[5] = vaddq_s64(v3[5], result[5]);
    v6 = result[6].i32[1];
    if (v6)
    {
      v3[6].i32[1] = v6;
    }

    result = MEMORY[0x2666E9F00]();
    *(this + 52) = v3;
  }

  return result;
}

float timeDiff@<S0>(const uint64_t *a1@<X0>, const uint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = localtime(a1);
  tm_sec = v5->tm_sec;
  v7 = *&v5->tm_min;
  v8 = localtime(a2);
  v9 = v8->tm_sec;
  v10 = *&v8->tm_min;
  a3[1] = 0;
  a3[2] = 0;
  v11 = vmul_s32(vsub_s32(v10, v7), 0xE100000003CLL);
  v12 = v9 - tm_sec + v11.i32[0] + v11.i32[1];
  v13 = v12;
  __y = 0.0;
  if (v12 >= 3601)
  {
    v13 = modf(v13 / 3600.0, &__y) * 3600.0;
    v14 = __y;
    a3[2] = llroundf(v14);
  }

  if (v13 > 60.0)
  {
    v13 = modf(v13 / 60.0, &__y) * 60.0;
    v15 = __y;
    a3[1] = llroundf(v15);
  }

  result = v13;
  *a3 = llroundf(result);
  return result;
}

void ROIStatIO::~ROIStatIO(void ***this, void ***a2)
{
  v4 = *a2;
  *this = *a2;
  v5 = a2[5];
  *(*(v4 - 3) + this) = v5;
  ROIStatIO::open(v5);
  ROIStatIO::writeList(this);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((*(*this - 3) + this), *(*(*this - 3) + this + 32) | 4);
  }

  v6 = this[52];
  if (v6)
  {
    v7 = this[53];
    v8 = this[52];
    if (v7 == v6)
    {
LABEL_13:
      this[53] = v6;
      operator delete(v8);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 9;
        if (*(v7 - 49) < 0)
        {
LABEL_11:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 9;
        if (*(v7 - 49) < 0)
        {
          goto LABEL_11;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = this[52];
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v10 = a2[1];
  *this = v10;
  *(*(v10 - 3) + this) = a2[4];
  MEMORY[0x2666E9A90](this + 1);

  std::ostream::~ostream();
}

uint64_t ROIStatIO::open(ROIStatIO *this)
{
  v1 = getenv("ROI_DATA_PATH");
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = "./ROIData.txt";
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = v3;
  if (!v3)
  {
    LOBYTE(__dst) = 0;
    if (ROIStatIO::_pThis)
    {
      goto LABEL_8;
    }

LABEL_13:
    operator new();
  }

  memmove(&__dst, v2, v3);
  *(&__dst + v4) = 0;
  if (!ROIStatIO::_pThis)
  {
    goto LABEL_13;
  }

LABEL_8:
  std::ofstream::open();
  v5 = ROIStatIO::_pThis;
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return v5;
}

void ROIStatIO::writeList(ROIStatIO *this)
{
  if (ROIStatIO::_pThis)
  {
    if (!*(ROIStatIO::_pThis + *(*ROIStatIO::_pThis - 24) + 32))
    {
      if (*(ROIStatIO::_pThis + 128))
      {
        v9[1] = v4;
        v9[2] = v3;
        v9[5] = v1;
        v9[6] = v2;
        v9[0] = time(0);
        timeDiff(this + 55, v9, &v8);
        for (i = *(this + 52); i != *(this + 53); i += 72)
        {
          if ((*(i + 28) & 0x80000000) != 0)
          {
            v6 = ROIStatIO::writePassValue(v6, i, &v8);
          }

          else if (*(i + 40) / *(i + 32) >= 1.0)
          {
            v6 = ROIStatIO::writeOverValue(v6, i, &v8);
          }

          else
          {
            v6 = ROIStatIO::writeUnderValue(v6, i, &v8);
          }
        }
      }
    }
  }
}

void ROIStatIO::~ROIStatIO(void ***this)
{
  MEMORY[0x2666E9E10](v1 + 448);
}

{
  MEMORY[0x2666E9E10](v1 + 448);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toROIStatIO::~ROIStatIO(ROIStatIO *this)
{

  JUMPOUT(0x2666E9E10);
}

{
  v1 = (this + *(*this - 24));
  MEMORY[0x2666E9E10](v1 + 56);

  JUMPOUT(0x2666E9F00);
}

uint64_t ROIStatIO::writeUnderValue(ROIStatIO *this, const ROIStatIO::ROITestSet *a2, const tm *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "under ", 6);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "name ", 5);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " frame ", 7);
  v12 = MEMORY[0x2666E9B50](v11, *(a2 + 6));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " input ", 7);
  v14 = MEMORY[0x2666E9B50](v13, *(a2 + 7));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " time ", 6);
  v16 = MEMORY[0x2666E9B50](v15, a3->tm_hour);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "H", 1);
  v18 = MEMORY[0x2666E9B50](v17, a3->tm_min);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "M", 1);
  v20 = MEMORY[0x2666E9B50](v19, a3->tm_sec);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "S", 1);
  std::stringbuf::str();
  if ((v29 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  puts(v21);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = ROIStatIO::_pThis;
  std::stringbuf::str();
  if ((v29 & 0x80u) == 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v24 = v29;
  }

  else
  {
    v24 = __p[1];
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v35);
  std::ostream::put();
  std::ostream::flush();
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v34);
}

void sub_25FCD915C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCD9170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCD9184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::locale::~locale((v16 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t ROIStatIO::writeOverValue(ROIStatIO *this, const ROIStatIO::ROITestSet *a2, const tm *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "over ", 5);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "name ", 5);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " frame ", 7);
  v12 = MEMORY[0x2666E9B50](v11, *(a2 + 6));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " input ", 7);
  v14 = MEMORY[0x2666E9B50](v13, *(a2 + 7));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ratio ", 7);
  v16 = MEMORY[0x2666E9B30](v15, *(a2 + 5) / *(a2 + 8));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " time ", 6);
  v18 = MEMORY[0x2666E9B50](v17, a3->tm_hour);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "H", 1);
  v20 = MEMORY[0x2666E9B50](v19, a3->tm_min);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "M", 1);
  v22 = MEMORY[0x2666E9B50](v21, a3->tm_sec);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "S", 1);
  std::stringbuf::str();
  if ((v31 & 0x80u) == 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  puts(v23);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = ROIStatIO::_pThis;
  std::stringbuf::str();
  if ((v31 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v26 = v31;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v32 = *MEMORY[0x277D82828];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
  v33 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v36);
}

void sub_25FCD94EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCD9500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCD9514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::locale::~locale((v16 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t ROIStatIO::writePassValue(ROIStatIO *this, const ROIStatIO::ROITestSet *a2, const tm *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "pass ", 5);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "name ", 5);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " frame ", 7);
  v12 = MEMORY[0x2666E9B50](v11, *(a2 + 6));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " time ", 6);
  v14 = MEMORY[0x2666E9B50](v13, a3->tm_hour);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "H", 1);
  v16 = MEMORY[0x2666E9B50](v15, a3->tm_min);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "M", 1);
  v18 = MEMORY[0x2666E9B50](v17, a3->tm_sec);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "S", 1);
  std::stringbuf::str();
  if ((v27 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  puts(v19);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = ROIStatIO::_pThis;
  std::stringbuf::str();
  if ((v27 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v22 = v27;
  }

  else
  {
    v22 = __p[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v32);
}

void sub_25FCD983C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCD9850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCD9864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::locale::~locale((v16 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void ROIStatIO::currNode(ROIStatIO *this, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *v20 = a3;
  *&v20[4] = 0xFFFFFFFFLL;
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v5 = *(this + 52);
  v6 = *(this + 53);
  if (v5 != v6)
  {
    if (*(v5 + 24) == a3)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (v5 != &__p)
      {
        v9 = *(v5 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v5 + 8);
        }

        if (v9 == size)
        {
          v11 = v10 >= 0 ? v5 : *v5;
          if (!memcmp(v11, p_p, size) && *(v5 + 24) == a3)
          {
            break;
          }
        }

        v5 += 72;
        if (v5 == v6)
        {
          goto LABEL_25;
        }
      }

LABEL_35:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_36;
    }

    ROIStatIO::writeList(this);
    v12 = *(this + 52);
    v13 = *(this + 53);
    if (v13 == v12)
    {
LABEL_24:
      *(this + 53) = v12;
      goto LABEL_25;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v16 = v13 - 9;
        if (*(v13 - 49) < 0)
        {
LABEL_33:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v13 - 9;
        if (*(v13 - 49) < 0)
        {
          goto LABEL_33;
        }
      }

      v13 = v16;
      if (v16 == v12)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  *(this + 55) = time(0);
  v14 = *(this + 53);
  if (v14 >= *(this + 54))
  {
    std::vector<ROIStatIO::ROITestSet>::__emplace_back_slow_path<ROIStatIO::ROITestSet const&>(this + 416, &__p);
    *(this + 53) = v17;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(this + 53), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = *&__p.__r_.__value_.__l.__data_;
      *(v14 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v14 = v15;
    }

    v18 = v21;
    *(v14 + 24) = *v20;
    *(v14 + 32) = *&v20[8];
    *(v14 + 40) = v18;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    *(v14 + 48) = 0;
    *(this + 53) = v14 + 72;
    *(this + 53) = v14 + 72;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  operator delete(v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_36:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25FCD9AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 424) = v10;
  ROIStatIO::ROITestSet::~ROITestSet(&a9);
  _Unwind_Resume(a1);
}

void ROIStatIO::ROITestSet::~ROITestSet(void **this)
{
  if ((*(this + 71) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*this);
    return;
  }

  operator delete(this[6]);
  if (*(this + 23) < 0)
  {
    goto LABEL_5;
  }
}

void ROIStatIO::failed(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  v22 = __PAIR64__(a4, a3);
  v23 = 0;
  v24 = 0xBFF0000000000000;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v8 = a1[52];
  v7 = a1[53];
  if (v8 != v7 && *(v8 + 24) == a3)
  {
    while (1)
    {
      while (v8 != &v21)
      {
        v9 = *(v8 + 23);
        if (v9 >= 0)
        {
          v10 = *(v8 + 23);
        }

        else
        {
          v10 = *(v8 + 8);
        }

        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v21.__r_.__value_.__l.__size_;
        }

        if (v10 == size)
        {
          v12 = v9 >= 0 ? v8 : *v8;
          v13 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
          if (!memcmp(v12, v13, v10) && *(v8 + 24) == v22)
          {
            break;
          }
        }

        v8 += 72;
        if (v8 == v7)
        {
          goto LABEL_37;
        }
      }

      if ((v8 + 72) == v7)
      {
        v16 = v7;
        v7 = v8;
        if (v16 != v8)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v14 = v8;
      do
      {
        std::string::operator=(v14, (v14 + 72));
        *(v14 + 24) = *(v14 + 96);
        *(v14 + 32) = *(v14 + 104);
        *(v14 + 40) = *(v14 + 112);
        v14 += 72;
        v15 = v14;
      }

      while ((v14 + 72) != v7);
      v16 = a1[53];
      v7 = v15;
      if (v16 != v15)
      {
        break;
      }

LABEL_29:
      a1[53] = v7;
      if (v8 == v7)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
LABEL_32:
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        v17 = v16 - 9;
        if (*(v16 - 49) < 0)
        {
LABEL_36:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = v16 - 9;
        if (*(v16 - 49) < 0)
        {
          goto LABEL_36;
        }
      }

      v16 = v17;
      if (v17 == v7)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_37:
  if (v7 >= a1[54])
  {
    std::vector<ROIStatIO::ROITestSet>::__emplace_back_slow_path<ROIStatIO::ROITestSet const&>((a1 + 52), &v21);
    a1[53] = v19;
    if (SHIBYTE(v27) < 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = *&v21.__r_.__value_.__l.__data_;
      v7[2] = v21.__r_.__value_.__r.__words[2];
      *v7 = v18;
    }

    v20 = v24;
    v7[3] = v22;
    *(v7 + 8) = v23;
    v7[5] = v20;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = 0;
    a1[53] = v7 + 9;
    a1[53] = v7 + 9;
    if (SHIBYTE(v27) < 0)
    {
LABEL_45:
      operator delete(__p);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_46;
      }

      return;
    }
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_46:
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_25FCD9DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 424) = v10;
  ROIStatIO::ROITestSet::~ROITestSet(&a9);
  _Unwind_Resume(a1);
}

void ROIStatIO::over(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, double a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a2, *(a2 + 8));
  }

  else
  {
    v32 = *a2;
  }

  v33 = __PAIR64__(a4, a3);
  v34 = 1;
  v35 = a5;
  v37 = 0;
  v38 = 0;
  __p = 0;
  v10 = a1[52];
  v9 = a1[53];
  if (v10 == v9 || *(v10 + 24) != a3)
  {
LABEL_43:
    if (v9 >= a1[54])
    {
      std::vector<ROIStatIO::ROITestSet>::__emplace_back_slow_path<ROIStatIO::ROITestSet const&>((a1 + 52), &v32);
    }

    else
    {
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v9, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      }

      else
      {
        v29 = *&v32.__r_.__value_.__l.__data_;
        *(v9 + 16) = *(&v32.__r_.__value_.__l + 2);
        *v9 = v29;
      }

      v31 = v35;
      *(v9 + 24) = v33;
      *(v9 + 32) = v34;
      *(v9 + 40) = v31;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      v30 = v9 + 72;
      a1[53] = v9 + 72;
    }

    a1[53] = v30;
  }

  else
  {
    v11 = 0;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v32;
    }

    else
    {
      v13 = v32.__r_.__value_.__r.__words[0];
    }

    do
    {
      v14 = v10 + v11;
      if ((v10 + v11) == &v32)
      {
        goto LABEL_23;
      }

      v15 = *(v14 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v14 + 8);
      }

      if (v15 == size)
      {
        v17 = v16 >= 0 ? (v10 + v11) : *v14;
        if (!memcmp(v17, v13, size) && *(v10 + v11 + 24) == a3 && *(v10 + v11 + 28) == a4)
        {
LABEL_23:
          v18 = *(v14 + 40);
          if (v18 > 0.0)
          {
            ++*(v10 + v11 + 32);
            *(v14 + 40) = v18 + a5;
          }

          goto LABEL_50;
        }
      }

      v11 += 72;
    }

    while (v10 + v11 != v9);
    v19 = 0;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v32.__r_.__value_.__l.__size_;
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v32;
    }

    else
    {
      v21 = v32.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v22 = v10 + v19;
      if ((v10 + v19) == &v32)
      {
        break;
      }

      v23 = *(v22 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v22 + 8);
      }

      if (v20 == v23)
      {
        v25 = v24 >= 0 ? (v10 + v19) : *v22;
        if (!memcmp(v21, v25, v20))
        {
          v26 = v10 + v19;
          if (*(v10 + v19 + 24) == a3)
          {
            if (*(v26 + 28) == -1)
            {
              std::string::operator=((v10 + v19), &v32);
              v27 = v35;
              *(v26 + 24) = v33;
              v28 = v10 + v19;
              *(v28 + 32) = v34;
              *(v28 + 40) = v27;
              goto LABEL_50;
            }

            goto LABEL_56;
          }
        }
      }

      v19 += 72;
      if (v10 + v19 == v9)
      {
        goto LABEL_43;
      }
    }

    if (*(v22 + 28) == -1)
    {
      goto LABEL_50;
    }

LABEL_56:
    std::vector<ROIStatIO::ROITestSet>::insert((a1 + 52), (v10 + v19), &v32);
  }

LABEL_50:
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_54:
    operator delete(v32.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }
}

void sub_25FCDA12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 424) = v10;
  ROIStatIO::ROITestSet::~ROITestSet(&a9);
  _Unwind_Resume(a1);
}

std::string *std::vector<ROIStatIO::ROITestSet>::insert(uint64_t a1, std::string *this, unint64_t a3)
{
  v4 = this;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v14 = *a1;
    v15 = 0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) + 1;
    if (v15 > 0x38E38E38E38E38ELL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x8E38E38E38E38E39 * ((v6 - v14) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x1C71C71C71C71C7)
    {
      v17 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v17 = v15;
    }

    v34 = a1;
    if (v17)
    {
      if (v17 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = 0;
    v32 = 8 * ((this - v14) >> 3);
    v33 = v32;
    std::__split_buffer<ROIStatIO::ROITestSet>::emplace_back<ROIStatIO::ROITestSet const&>(&v31, a3);
    v19 = v32;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ROIStatIO::ROITestSet>,ROIStatIO::ROITestSet*>(a1, v4, *(a1 + 8), v33);
    v20 = *a1;
    v21 = v32;
    *&v33 = v33 + *(a1 + 8) - v4;
    *(a1 + 8) = v4;
    v22 = (v21 + v20 - v4);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ROIStatIO::ROITestSet>,ROIStatIO::ROITestSet*>(a1, v20, v4, v22);
    v23 = *a1;
    *a1 = v22;
    v24 = *(a1 + 16);
    *(a1 + 8) = v33;
    *&v33 = v23;
    *(&v33 + 1) = v24;
    v31 = v23;
    v32 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v19;
  }

  else if (this == v7)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a3, *(a3 + 8));
    }

    else
    {
      v18 = *a3;
      *(v7 + 16) = *(a3 + 16);
      *v7 = v18;
    }

    *(v7 + 24) = *(a3 + 24);
    *(v7 + 32) = *(a3 + 32);
    *(v7 + 40) = *(a3 + 40);
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 48) = 0;
    *(a1 + 8) = v7 + 72;
  }

  else
  {
    v8 = *(a1 + 8);
    if (v7 >= 0x48)
    {
      v9 = 0;
      do
      {
        v12 = (v7 + v9);
        v13 = (v7 + v9 - 72);
        if (*(v7 + v9 - 49) < 0)
        {
          std::string::__init_copy_ctor_external(v12, *v13, v12[-3].__r_.__value_.__l.__size_);
        }

        else
        {
          v10 = *v13;
          v12->__r_.__value_.__r.__words[2] = *(v7 + v9 - 56);
          *&v12->__r_.__value_.__l.__data_ = v10;
        }

        v11 = v7 + v9;
        *(v11 + 24) = *(v7 + v9 - 48);
        *(v11 + 32) = *(v7 + v9 - 40);
        *(v11 + 40) = *(v7 + v9 - 32);
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        *(v11 + 48) = 0;
        v9 += 72;
      }

      while (v7 + v9 - 72 < v7);
      v8 = v7 + v9;
    }

    *(a1 + 8) = v8;
    if (v7 != &v4[3])
    {
      v25 = 0;
      do
      {
        v26 = (v25 + v7);
        if (&v25[-3] + v7 != v25 + v7)
        {
          std::string::operator=((v25 + v7 - 72), v26 - 6);
          v26[-2].__r_.__value_.__r.__words[0] = v26[-5].__r_.__value_.__r.__words[0];
          LODWORD(v26[-2].__r_.__value_.__r.__words[1]) = v26[-5].__r_.__value_.__r.__words[1];
          v26[-2].__r_.__value_.__r.__words[2] = v26[-5].__r_.__value_.__r.__words[2];
        }

        v25 -= 3;
      }

      while ((&v4[3] - v7) != v25);
      v8 = *(a1 + 8);
    }

    v27 = v8 <= a3 || v4 > a3;
    v28 = 72;
    if (v27)
    {
      v28 = 0;
    }

    v29 = a3 + v28;
    if (v4 != (a3 + v28))
    {
      std::string::operator=(v4, (a3 + v28));
      v4[1].__r_.__value_.__r.__words[0] = *(v29 + 24);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v29 + 32);
      v4[1].__r_.__value_.__r.__words[2] = *(v29 + 40);
    }
  }

  return v4;
}

void sub_25FCDA484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ROIStatIO::ROITestSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void HGSampleRectStat::HGSampleRectStat(HGSampleRectStat *this, HGRect a2, HGRect a3, const HGNode *lpsrc, int a5)
{
  ActiveShaderNode = lpsrc;
  v7 = *&a3.var2;
  v8 = *&a3.var0;
  v9 = *&a2.var2;
  v10 = *&a2.var0;
  v12 = *(*(*lpsrc - 8) + 8);
  if (v12 == off_28720A738 || ((off_28720A738 & v12 & 0x8000000000000000) != 0) != __OFSUB__(v12, off_28720A738) && !strcmp((v12 & 0x7FFFFFFFFFFFFFFFLL), (off_28720A738 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    if (!v13)
    {
      __cxa_bad_cast();
    }

    ActiveShaderNode = HGRasterizer::getActiveShaderNode(v13);
  }

  *this = ActiveShaderNode;
  *(this + 1) = v10;
  *(this + 2) = v9;
  *(this + 3) = v8;
  *(this + 4) = v7;
  *(this + 10) = a5;
  *(this + 44) = xmmword_260816C30;
  *(this + 30) = 0;
}

void HGSampleRectStat::analyzeFull(HGSampleRectStat *this)
{
  v2 = (*(**this + 48))(*this);
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    v3 = memmove(__dst, v2, v3);
  }

  *(__dst + v4) = 0;
  v5 = v13;
  v6 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  if (v5 != 8)
  {
    goto LABEL_13;
  }

  v7 = __dst[0];
  if ((v13 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  if (*v7 != 0x656764456548694CLL)
  {
LABEL_13:
    v8 = ROIStatIO::open(v3);
    if (!MotionROIFrame::_pThis)
    {
      operator new();
    }

    ROIStatIO::currNode(v8, __dst, *MotionROIFrame::_pThis);
    v9 = *(this + 11);
    if (v9 != 999999)
    {
      if (*(this + 60) == 1)
      {
        if (!MotionROIFrame::_pThis)
        {
          operator new();
        }

        ROIStatIO::failed(v8, __dst, *MotionROIFrame::_pThis, *(this + 10));
      }

      else
      {
        v10 = (((*(this + 8) - *(this + 6)) / (*(this + 13) - v9)) * (*(this + 9) - *(this + 7))) / (*(this + 14) - *(this + 12));
        if (v10 > 1.0)
        {
          if (!MotionROIFrame::_pThis)
          {
            operator new();
          }

          ROIStatIO::over(v8, __dst, *MotionROIFrame::_pThis, *(this + 10), v10);
        }
      }
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((v8 + *(*v8 - 24)), *(v8 + *(*v8 - 24) + 32) | 4);
    }
  }

  if (v6 < 0)
  {
    v11 = __dst[0];

    operator delete(v11);
  }
}

void sub_25FCDA8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::ofstream::~ofstream(void *a1)
{
  *a1 = MEMORY[0x277D82860] + 24;
  v2 = a1 + 52;
  a1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x2666E9A90](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](v2);
  return a1;
}

void std::ofstream::~ofstream(void *a1)
{
  *a1 = MEMORY[0x277D82860] + 24;
  v1 = a1 + 52;
  a1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x2666E9A90](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](v1);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk tostd::ofstream::~ofstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = MEMORY[0x277D82860] + 24;
  v1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x2666E9A90](v1 + 1);
  std::ostream::~ostream();

  JUMPOUT(0x2666E9E10);
}

{
  v1 = (a1 + *(*a1 - 24));
  *v1 = MEMORY[0x277D82860] + 24;
  v1[52] = MEMORY[0x277D82860] + 64;
  MEMORY[0x2666E9A90](v1 + 1);
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](v1 + 52);

  JUMPOUT(0x2666E9F00);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[3];
  MEMORY[0x2666E9A80](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

double std::vector<ROIStatIO::ROITestSet>::__emplace_back_slow_path<ROIStatIO::ROITestSet const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0x38E38E38E38E38ELL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *(&v11 + 1) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *&v11 = v6 + 72;
  v7 = *(a1 + 8);
  v8 = (v6 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ROIStatIO::ROITestSet>,ROIStatIO::ROITestSet*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *&result = v6 + 72;
  *(a1 + 8) = v11;
  if (v9)
  {
    operator delete(v9);
    *&result = v6 + 72;
  }

  return result;
}

void sub_25FCDAF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ROIStatIO::ROITestSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ROIStatIO::ROITestSet>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 49) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 49) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ROIStatIO::ROITestSet>,ROIStatIO::ROITestSet*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v10 = this;
  if (a2 != a3)
  {
    v4 = this;
    v6 = a2;
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v7, *(v7 + 1));
        v9 = v10;
      }

      else
      {
        v8 = *v7;
        v4->__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
        v9 = v4;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v7 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v7 + 8);
      v4[1].__r_.__value_.__r.__words[2] = *(v7 + 5);
      v4[2].__r_.__value_.__l.__size_ = 0;
      v4[2].__r_.__value_.__r.__words[2] = 0;
      v4[2].__r_.__value_.__r.__words[0] = 0;
      v7 = (v7 + 72);
      v4 = v9 + 3;
      v10 = v9 + 3;
    }

    while (v7 != a3);
    while (1)
    {
      if (v6 == a3)
      {
        return;
      }

      if (*(v6 + 71) < 0)
      {
        operator delete(*(v6 + 6));
        if ((*(v6 + 23) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else if ((*(v6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*v6);
LABEL_7:
      v6 = (v6 + 72);
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ROIStatIO::ROITestSet>,ROIStatIO::ROITestSet*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v7 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

double std::__split_buffer<ROIStatIO::ROITestSet>::emplace_back<ROIStatIO::ROITestSet const&>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v10 = 0x1C71C71C71C71C72 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0x38E38E38E38E38FLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3) + 1;
    v7 = v6 / -2;
    if (v5 == v4)
    {
      v4 = v5 - 72 * (v6 / 2);
    }

    else
    {
      v8 = 72 * v7;
      do
      {
        if (v8)
        {
          v9 = v5 + v8;
          std::string::operator=((v5 + v8), v5);
          *(v9 + 24) = *(v5 + 24);
          *(v9 + 32) = *(v5 + 32);
          *(v9 + 40) = *(v5 + 40);
        }

        v5 += 72;
      }

      while (v5 != v4);
      v4 = v5 + 72 * v7;
      v5 = a1[1];
    }

    a1[1] = v5 + 72 * v7;
    a1[2] = v4;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v11;
  }

  *(v4 + 24) = *(a2 + 3);
  *(v4 + 32) = *(a2 + 8);
  result = *(a2 + 5);
  *(v4 + 40) = result;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 0;
  a1[2] += 72;
  return result;
}

void sub_25FCDB474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  a12 = v13 + v12;
  std::__split_buffer<ROIStatIO::ROITestSet>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}

void HGAnisotropicSampler::~HGAnisotropicSampler(void **this)
{
  *this = &unk_28721F318;
  if (this[63])
  {
    v2 = this;
    free(this[63]);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HGAnisotropicSampler::~HGAnisotropicSampler(HGNode *this)
{
  *this = &unk_28721F318;
  v2 = *(this + 63);
  if (v2)
  {
    free(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGAnisotropicSampler::Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v16 = a6 - a5 + 1;
  if (*(a1 + 500) <= a6 - a5)
  {
    *(a1 + 504) = malloc_type_realloc(*(a1 + 504), 32 * v16, 0x1000040E0EAB150uLL);
  }

  *(a1 + 480) = a3;
  *(a1 + 488) = a4;
  *(a1 + 496) = a5;
  *(a1 + 500) = v16;
  v17 = (*(*a2 + 128))(a2, 27);
  if (a6 >= a5)
  {
    v19 = v17;
    v34 = a3;
    v20 = 0;
    v21 = 0;
    v35 = HIDWORD(a8) - HIDWORD(a7);
    v36 = a8 - a7;
    v33 = a6 + 1;
    v22 = ~a6 + a5;
    while (1)
    {
      v18 = a5 + v21;
      v23 = (*(*a4 + 584))(a4, a2, (a5 + v21));
      if (!v23)
      {
        break;
      }

      v24 = v23;
      (*(*a4 + 600))(v37, a4, (a5 + v21), 0);
      MatrixPtr = HGTransform::GetMatrixPtr(v37);
      *&v26 = *MatrixPtr;
      *&v27 = *(MatrixPtr + 40);
      *(*(a1 + 504) + v20) = __PAIR64__(v27, v26);
      v28 = *(MatrixPtr + 96);
      *&v28.f64[0] = vcvt_f32_f64(v28);
      *(*(a1 + 504) + v20 + 16) = v28;
      (*(*a1 + 120))(a1, v21, v24);
      if (v35 >> v18 > v19 || v36 >> v18 > v19)
      {
        v30 = 25;
      }

      else
      {
        v30 = 17;
      }

      (*(*a1 + 136))(a1, v21, v30);
      HGTransform::~HGTransform(v37);
      v21 = (v21 + 1);
      v20 += 32;
      if (!(v22 + v21))
      {
        a3 = v34;
        v18 = v33;
        goto LABEL_16;
      }
    }

    a3 = v34;
  }

  else
  {
    v18 = a5;
  }

LABEL_16:
  *(a1 + 500) = v18 - a5;
  v31 = (*(**(a3 + 448) + 272))(*(a3 + 448));
  *(a1 + 416) = vcvt_hight_f32_f64(vcvt_f32_f64(*v31), v31[1]);
  *(a1 + 432) = vcvt_hight_f32_f64(vcvt_f32_f64(v31[2]), v31[3]);
  *(a1 + 448) = vcvt_hight_f32_f64(vcvt_f32_f64(v31[4]), v31[5]);
  *(a1 + 464) = vcvt_hight_f32_f64(vcvt_f32_f64(v31[6]), v31[7]);
  (*(*a1 + 136))(a1, 0xFFFFFFFFLL, 32);
  return (v18 - 1);
}

void sub_25FCDB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGTransform::~HGTransform(va);
  _Unwind_Resume(a1);
}

uint64_t HGAnisotropicSampler::GetDOD(HGAnisotropicSampler *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (*(this + 125) <= a3)
  {
    return 0;
  }

  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v9 = *(*(this + 61) + 740);
  v10 = *(*(this + 61) + 748);
  if ((*(*this + 312))(this) >= 1)
  {
    v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v5 = HGRectGrow(v5, v4, v11);
    v4 = v12;
    v13 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v9 = HGRectGrow(v9, v10, v13);
    v10 = v14;
  }

  v15 = *(this + 61);
  v16 = *(this + 124);
  v17 = (*(*a2 + 304))(a2);
  v18 = (*(*v15 + 592))(v15, (v16 + a3), v5, v4, 0, 0, v17);
  v20 = HGRectIntersection(v18, v19, v9, v10);
  v22 = v21;
  *&v29.var0 = v20;
  *&v29.var2 = v22;
  result = hg_dod(*(*(this + 60) + 456), v29, 0.0, v23);
  if (*(*(this + 60) + 436) > 1)
  {
    v26 = result;
    v27 = v25;
    v28 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v26, v27, v28);
  }

  return result;
}

uint64_t hg_dod(HGTransform *a1, HGRect a2, double a3, float a4)
{
  v4 = *&a3;
  v64 = *MEMORY[0x277D85DE8];
  v52 = a2.var0 - *&a3;
  v53 = a2.var1 - *&a3;
  v54 = 0x3F80000000000000;
  v55 = a2.var2 + *&a3;
  v56 = v53;
  v57 = 0x3F80000000000000;
  v58 = v55;
  v59 = a2.var3 + *&a3;
  v60 = 0x3F80000000000000;
  v61 = v52;
  v62 = v59;
  v63 = 0x3F80000000000000;
  (*(*a1 + 208))(a1, v47, &v52, 4);
  v6.n128_u32[0] = 897988541;
  v7.n128_f32[0] = v50;
  v8.n128_f32[0] = v51;
  v9 = (v48 < 0.000001) | (2 * (v49 < 0.000001)) | (4 * (v50 < 0.000001)) | (8 * (v51 < 0.000001));
  if (v9 == 15)
  {
    return 0;
  }

  v11 = (*(*a1 + 272))(a1, v6, v7, v8);
  v12 = 0;
  v13 = *(v11 + 24);
  v14 = *(v11 + 120) + -0.000000999999997;
  v41 = *(v11 + 56);
  v42 = v13;
  v16.f64[1] = v41;
  v40 = v16;
  *&v15 = 0x7F0000007FLL;
  *&v16.f64[0] = vneg_f32(0x7F0000007FLL);
  v17 = vdup_n_s32(0x358637BDu);
  do
  {
    if (((v9 >> v12) & 1) == 0)
    {
      v21 = &v47[16 * v12];
      v24 = (v21 + 12);
      v25 = vld1_dup_f32(v24);
      v26 = vdiv_f32(*v21, v25);
      *v21 = v26;
      *&v16.f64[0] = vminnm_f32(*&v16.f64[0], v26);
      *&v15 = vmaxnm_f32(*&v15, v26);
      v23 = v12 + 1;
      goto LABEL_7;
    }

    v23 = v12 + 1;
    if ((v9 >> ((v12 + 1) & 3)))
    {
      v21 = (v12 - 1) & 3;
      if ((v9 >> v21))
      {
        goto LABEL_7;
      }

LABEL_18:
      v44 = v16;
      v46 = v15;
      v35 = *(&v52 + 4 * v12);
      v36 = vcvtq_f64_f32(v35);
      v37 = *(&v52 + 4 * v21);
      v38 = v14 + v42 * v36.f64[0] + vmuld_lane_f64(v41, v36, 1);
      v39 = vaddvq_f64(vmulq_f64(v40, vsubq_f64(v36, vcvtq_f64_f32(v37))));
      if (v39 == 0.0)
      {
        v18 = v38 < 0.0;
        v19 = INFINITY;
        if (v18)
        {
          v19 = -INFINITY;
        }
      }

      else
      {
        v19 = v38 / v39;
      }

      v20 = &v47[16 * v12];
      *v20 = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v37, v35)), v19), v36));
      v20[1] = 0x3F80000000000000;
      (*(*a1 + 208))(a1, v20, v20, 1);
      v20[1].i32[1] = 897988541;
      v22 = vdiv_f32(*v20, v17);
      *v20 = v22;
      v16.f64[1] = v44.f64[1];
      *(&v15 + 1) = *(&v46 + 1);
      *&v16.f64[0] = vminnm_f32(*&v44.f64[0], v22);
      *&v15 = vmaxnm_f32(*&v46, v22);
      goto LABEL_7;
    }

    v43 = v16;
    v45 = v15;
    v27 = *(&v52 + 4 * v12);
    v28 = vcvtq_f64_f32(v27);
    v29 = *(&v52 + 4 * (v23 & 3));
    v30 = v14 + v42 * v28.f64[0] + vmuld_lane_f64(v41, v28, 1);
    v31 = vaddvq_f64(vmulq_f64(v40, vsubq_f64(v28, vcvtq_f64_f32(v29))));
    if (v31 == 0.0)
    {
      v18 = v30 < 0.0;
      v32 = INFINITY;
      if (v18)
      {
        v32 = -INFINITY;
      }
    }

    else
    {
      v32 = v30 / v31;
    }

    v33 = &v47[16 * v12];
    *v33 = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v29, v27)), v32), v28));
    v33[1] = 0x3F80000000000000;
    (*(*a1 + 208))(a1, v33, v33, 1);
    v33[1].i32[1] = 897988541;
    v34 = vdiv_f32(*v33, v17);
    *v33 = v34;
    v16.f64[1] = v43.f64[1];
    *(&v15 + 1) = *(&v45 + 1);
    *&v16.f64[0] = vminnm_f32(*&v43.f64[0], v34);
    *&v15 = vmaxnm_f32(*&v45, v34);
    v21 = (v12 - 1) & 3;
    if (((v9 >> v21) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_7:
    v12 = v23;
  }

  while (v23 != 4);
  return HGRectMake4f(v21, *v16.f64 - v4, *(v16.f64 + 1) - v4, *&v15 + v4, *(&v15 + 1) + v4);
}

uint64_t HGAnisotropicSampler::GetROI(HGAnisotropicSampler *this, HGRenderer *a2, int a3, HGRect a4)
{
  v105 = *MEMORY[0x277D85DE8];
  if (*(this + 125) <= a3)
  {
    return 0;
  }

  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v7 = (*(*this + 312))(this);
  v8 = *(*(this + 60) + 448);
  v9 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v10 = HGRectGrow(v5, v4, v9);
  v13 = v12;
  v14 = *(this + 60);
  v16 = *(v14 + 464);
  v15 = *(v14 + 472);
  v80 = v7;
  v17 = v7 <= 0 ? 0.5 : 1.5;
  v18 = *(v14 + 424);
  HIDWORD(v19) = *(v14 + 436) >> 31;
  v20 = *(v14 + 436);
  v21 = *(v14 + 480);
  v22 = *(v14 + 484);
  {
    MaxTileArea = HGGPURenderer::GetMaxTileArea(v23);
  }

  else
  {
    MaxTileArea = 0x1000000;
  }

  *&v106.var0 = v10;
  *&v106.var2 = v13;
  *&v107.var0 = v16;
  *&v107.var2 = v15;
  *&v19 = v17;
  v25 = hg_clip(v8, v106, v107, v19, v18, v20, v11, v87, v21, v22, MaxTileArea);
  if (HGRectIsNull(v25, v26))
  {
    return 0;
  }

  v28 = a3;
  v29 = *(this + 124) + a3;
  if ((a3 != 7 || v29 >= v87[0]) && (v29 < v87[0] || v29 > v87[1]))
  {
    return 0;
  }

  v30 = *(this + 60);
  if (*(v30 + 436) >= 2)
  {
    v31 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v5 = HGRectGrow(v5, v4, v31);
    v4 = v32;
    v30 = *(this + 60);
  }

  v33 = *(v30 + 448);
  v93 = v5 + 0.5;
  v94 = SHIDWORD(v5) + 0.5;
  v95 = 0x3F80000000000000;
  v96 = v4 + -0.5;
  v97 = v94;
  v98 = 0x3F80000000000000;
  v99 = v96;
  v100 = SHIDWORD(v4) + -0.5;
  v101 = 0x3F80000000000000;
  v102 = v93;
  v103 = v100;
  v104 = 0x3F80000000000000;
  (*(*v33 + 208))(v33, v88, &v93, 4);
  v34.n128_u32[0] = 897988541;
  v35.n128_f32[0] = v91;
  v36.n128_f32[0] = v92;
  v37 = (v89 < 0.000001) | (2 * (v90 < 0.000001)) | (4 * (v91 < 0.000001)) | (8 * (v92 < 0.000001));
  if (v37 != 15 && (!v37 || v4 - v5 > 1 || (v4 >> 32) - (v5 >> 32) > 1))
  {
    v40 = (*(*v33 + 272))(v33, v34, v35, v36);
    v41 = 0;
    v42.f64[0] = *(v40 + 24);
    v43 = *(v40 + 120) + -0.000000999999997;
    v78 = *(v40 + 56);
    v79 = v42.f64[0];
    v42.f64[1] = v78;
    v77 = v42;
    *&v44 = 0x7F0000007FLL;
    *&v45 = vneg_f32(0x7F0000007FLL);
    v46 = vdup_n_s32(0x358637BDu);
    while (1)
    {
      if ((v37 >> v41))
      {
        v51 = v41 + 1;
        if (((v37 >> ((v41 + 1) & 3)) & 1) == 0)
        {
          v82 = v44;
          v84 = v45;
          v52 = *(&v93 + 4 * v41);
          v53 = vcvtq_f64_f32(v52);
          v54 = *(&v93 + 4 * (v51 & 3));
          v55 = v43 + v79 * v53.f64[0] + vmuld_lane_f64(v78, v53, 1);
          v56 = vaddvq_f64(vmulq_f64(v77, vsubq_f64(v53, vcvtq_f64_f32(v54))));
          if (v56 == 0.0)
          {
            v58 = v55 < 0.0;
            v57 = INFINITY;
            if (v58)
            {
              v57 = -INFINITY;
            }
          }

          else
          {
            v57 = v55 / v56;
          }

          v59 = &v88[16 * v41];
          *v59 = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v54, v52)), v57), v53));
          v59[1] = 0x3F80000000000000;
          (*(*v33 + 208))(v33, v59, v59, 1);
          v59[1].i32[1] = 897988541;
          v60 = vdiv_f32(*v59, v46);
          *v59 = v60;
          *(&v44 + 1) = *(&v82 + 1);
          *(&v45 + 1) = *(&v84 + 1);
          *&v45 = vminnm_f32(*&v84, v60);
          *&v44 = vmaxnm_f32(*&v82, v60);
          v47 = (v41 - 1) & 3;
          if ((v37 >> v47))
          {
            goto LABEL_25;
          }

LABEL_35:
          v83 = v44;
          v85 = v45;
          v61 = *(&v93 + 4 * v41);
          v62 = vcvtq_f64_f32(v61);
          v63 = *(&v93 + 4 * v47);
          v64 = v43 + v79 * v62.f64[0] + vmuld_lane_f64(v78, v62, 1);
          v65 = vaddvq_f64(vmulq_f64(v77, vsubq_f64(v62, vcvtq_f64_f32(v63))));
          if (v65 == 0.0)
          {
            v58 = v64 < 0.0;
            v66 = INFINITY;
            if (v58)
            {
              v66 = -INFINITY;
            }
          }

          else
          {
            v66 = v64 / v65;
          }

          v67 = &v88[16 * v41];
          *v67 = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v63, v61)), v66), v62));
          v67[1] = 0x3F80000000000000;
          (*(*v33 + 208))(v33, v67, v67, 1);
          v67[1].i32[1] = 897988541;
          v68 = vdiv_f32(*v67, v46);
          *v67 = v68;
          *(&v44 + 1) = *(&v83 + 1);
          *(&v45 + 1) = *(&v85 + 1);
          *&v45 = vminnm_f32(*&v85, v68);
          *&v44 = vmaxnm_f32(*&v83, v68);
          goto LABEL_25;
        }

        v47 = (v41 - 1) & 3;
        if (((v37 >> v47) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v47 = &v88[16 * v41];
        v48 = (v47 + 12);
        v49 = vld1_dup_f32(v48);
        v50 = vdiv_f32(*v47, v49);
        *v47 = v50;
        *&v45 = vminnm_f32(*&v45, v50);
        *&v44 = vmaxnm_f32(*&v44, v50);
        v51 = v41 + 1;
      }

LABEL_25:
      v41 = v51;
      if (v51 == 4)
      {
        v38 = HGRectMake4f(v47, *&v45, *(&v45 + 1), *&v44 + 0.0, *(&v44 + 1) + 0.0);
        v39 = v69;
        v28 = a3;
        goto LABEL_41;
      }
    }
  }

  v38 = 0;
  v39 = 0;
LABEL_41:
  v70 = *(this + 61);
  v71 = *(this + 124);
  v72 = (*(*a2 + 304))(a2, v34, v35, v36);
  result = (*(*v70 + 592))(v70, (v71 + v28), v38, v39, 1, 0, v72);
  if (v80 >= 1)
  {
    v74 = result;
    v75 = v73;
    v76 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v74, v75, v76);
  }

  return result;
}

uint64_t hg_clip(HGTransform *a1, HGRect a2, HGRect a3, double a4, float a5, double a6, double a7, int *a8, int a9, int a10, unsigned int a11)
{
  var2 = a3.var2;
  v15 = *&a2.var2;
  v17 = *&a4;
  v18 = *&a2.var0;
  v135 = *MEMORY[0x277D85DE8];
  var1 = a2.var1;
  var3 = a2.var3;
  v106 = a3.var1;
  var0 = a3.var0;
  v22 = a3.var3;
  v120 = xmmword_260346870;
  (*(*a1 + 208))(a1, &v124, &v120, 1);
  v104 = v22;
  v105 = var2;
  if (((v15 - v18) < 5 || (var3 - var1) <= 4) && a9 < a10)
  {
    v25 = (v22 - v106) * (var2 - var0);
    v23.i32[0] = *&v125[8];
    v26 = vmul_f32(*v125, *v125);
    *v24.i32 = sqrtf((((v124 * v124) + v26.f32[0]) + v26.f32[1]) + (*v23.i32 * *v23.i32));
    v27 = vmul_f32(*(&v120 + 4), vdiv_f32(vdiv_f32(*v125, vdup_lane_s32(v23, 0)), vdup_lane_s32(v24, 0)));
    if (fabsf(v27.f32[1] + (v27.f32[0] + (*&v120 * ((v124 / *&v125[8]) / *v24.i32)))) < 0.00000001 && v25 > a11)
    {
      if (a9 < a10)
      {
        do
        {
          ++a9;
          v25 = vcvtd_n_f64_u32(v25, 2uLL);
        }

        while (v25 > a11 && a9 < a10);
      }

      if (a9 >= a10)
      {
        a9 = a10 - 1;
      }
    }
  }

  v30 = a9 & ~(a9 >> 31);
  if ((a10 & ~(a10 >> 31)) >= 31)
  {
    v31 = 31;
  }

  else
  {
    v31 = a10 & ~(a10 >> 31);
  }

  v124 = v18 + 0.5;
  *v125 = var1 + 0.5;
  *&v125[4] = 0x3F80000000000000;
  v126 = v15 + -0.5;
  v127 = *v125;
  v128 = 0x3F80000000000000;
  v129 = v126;
  v130 = var3 + -0.5;
  v131 = 0x3F80000000000000;
  v132 = v124;
  v133 = v130;
  v134 = 0x3F80000000000000;
  (*(*a1 + 208))(a1, &v120, &v124, 4);
  v32.n128_u32[0] = 897988541;
  v33.n128_f32[0] = v122;
  v34.n128_f32[0] = v123;
  v35 = (*(&v120 + 3) < 0.000001) | (2 * (v121 < 0.000001)) | (4 * (v122 < 0.000001)) | (8 * (v123 < 0.000001));
  if (v30 >= 31)
  {
    v36 = 31;
  }

  else
  {
    v36 = v30;
  }

  if (v31 <= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v31;
  }

  if (v35 == 15)
  {
    return 0;
  }

  v38 = v35 && v15 - v18 <= 1;
  if (v38 && (v15 >> 32) - (v18 >> 32) <= 1)
  {
    return 0;
  }

  v103 = v17;
  v40 = (*(*a1 + 272))(a1, v32, v33, v34);
  v41 = v37;
  v42 = 0;
  v45.f64[0] = *(v40 + 24);
  v43 = *(v40 + 120) + -0.000000999999997;
  v44 = v36;
  v102 = v41;
  v108 = v41;
  v109 = a5;
  v111 = *(v40 + 56);
  v112 = v45.f64[0];
  v45.f64[1] = v111;
  v110 = v45;
  *&v46 = 0x7F0000007FLL;
  *&v47 = vneg_f32(0x7F0000007FLL);
  v48 = INFINITY;
  v49 = -INFINITY;
  v50 = v47;
  v51 = 0x7F0000007FLL;
  do
  {
    if ((v35 >> v42))
    {
      v53 = v42 + 1;
      if ((v35 >> ((v42 + 1) & 3)))
      {
        v54 = (v42 - 1) & 3;
        if ((v35 >> v54))
        {
          goto LABEL_36;
        }

LABEL_50:
        v78 = *&v125[16 * v42 - 4];
        v79 = vcvtq_f64_f32(v78);
        v80 = *&v125[16 * v54 - 4];
        v81 = v43 + v112 * v79.f64[0] + vmuld_lane_f64(v111, v79, 1);
        v82 = vaddvq_f64(vmulq_f64(v110, vsubq_f64(v79, vcvtq_f64_f32(v80))));
        v116 = v47;
        v119 = v46;
        if (v82 == 0.0)
        {
          v69 = v81 < 0.0;
          v83 = INFINITY;
          if (v69)
          {
            v83 = -INFINITY;
          }
        }

        else
        {
          v83 = v81 / v82;
        }

        v84 = (&v120 + v42);
        *v84 = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v80, v78)), v83), v79));
        v84[1] = 0x3F80000000000000;
        (*(*a1 + 208))(a1, v84, v84, 1);
        v84[1].i32[1] = 897988541;
        v85 = vdiv_f32(*v84, vdup_n_s32(0x358637BDu));
        *v84 = v85;
        LOBYTE(v86) = v36;
        v87 = v36;
        if (v30 < v31)
        {
          v88 = rho(&v120 + 4 * v42, v40, a6);
          v89 = log2(v88);
          HIDWORD(v45.f64[0]) = HIDWORD(v109);
          v90 = fmax(fmin(v89 + v109, v108), v44);
          v87 = fmax(v49, v90);
          v86 = rint(ceil(v90));
        }

        v49 = fmax(v87, v44);
        *(&v47 + 1) = *(&v116 + 1);
        *(&v46 + 1) = *(&v119 + 1);
        *&v47 = vminnm_f32(*&v116, v85);
        *&v87 = (1 << v86);
        v91 = vdup_lane_s32(*&v87, 0);
        *&v46 = vmaxnm_f32(*&v119, v85);
        v50 = vminnm_f32(v50, vsub_f32(v85, v91));
        v51 = vmaxnm_f32(v51, vadd_f32(v85, v91));
        v48 = v36;
        goto LABEL_36;
      }

      v63 = *&v125[16 * v42 - 4];
      v64 = vcvtq_f64_f32(v63);
      v65 = *&v125[16 * (v53 & 3) - 4];
      v66 = v43 + v112 * v64.f64[0] + vmuld_lane_f64(v111, v64, 1);
      v67 = vaddvq_f64(vmulq_f64(v110, vsubq_f64(v64, vcvtq_f64_f32(v65))));
      v115 = v47;
      v118 = v46;
      if (v67 == 0.0)
      {
        v69 = v66 < 0.0;
        v68 = INFINITY;
        if (v69)
        {
          v68 = -INFINITY;
        }
      }

      else
      {
        v68 = v66 / v67;
      }

      v70 = (&v120 + v42);
      *v70 = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(v65, v63)), v68), v64));
      v70[1] = 0x3F80000000000000;
      (*(*a1 + 208))(a1, v70, v70, 1);
      v70[1].i32[1] = 897988541;
      v71 = vdiv_f32(*v70, vdup_n_s32(0x358637BDu));
      *v70 = v71;
      LOBYTE(v72) = v36;
      v73 = v36;
      if (v30 < v31)
      {
        v74 = rho(&v120 + 4 * v42, v40, a6);
        v75 = log2(v74);
        HIDWORD(v45.f64[0]) = HIDWORD(v109);
        v76 = fmax(fmin(v75 + v109, v108), v44);
        v73 = fmax(v49, v76);
        v72 = rint(ceil(v76));
      }

      v49 = fmax(v73, v44);
      *(&v47 + 1) = *(&v115 + 1);
      *(&v46 + 1) = *(&v118 + 1);
      *&v47 = vminnm_f32(*&v115, v71);
      *&v73 = (1 << v72);
      v77 = vdup_lane_s32(*&v73, 0);
      *&v46 = vmaxnm_f32(*&v118, v71);
      v50 = vminnm_f32(v50, vsub_f32(v71, v77));
      v51 = vmaxnm_f32(v51, vadd_f32(v71, v77));
      v48 = v36;
      v54 = (v42 - 1) & 3;
      if (((v35 >> v54) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v55 = (&v120 + v42);
      v58 = &v55[1] + 1;
      v56 = vld1_dup_f32(v58);
      v57 = vdiv_f32(*v55, v56);
      *v55 = v57;
      LOBYTE(v58) = v36;
      v59 = v36;
      v60 = v36;
      if (v30 < v31)
      {
        v114 = v47;
        v117 = v46;
        v61 = rho(v55, v40, a6);
        v62 = log2(v61);
        v47 = v114;
        v46 = v117;
        v45.f64[0] = fmax(fmin(v62 + v109, v108), v44);
        v59 = fmin(v48, v45.f64[0]);
        v60 = fmax(v49, v45.f64[0]);
        v45.f64[0] = rint(ceil(v45.f64[0]));
        v58 = v45.f64[0];
      }

      *&v47 = vminnm_f32(*&v47, v57);
      *&v46 = vmaxnm_f32(*&v46, v57);
      *v45.f64 = (1 << v58);
      v52 = vdup_lane_s32(*&v45.f64[0], 0);
      v50 = vminnm_f32(v50, vsub_f32(v57, v52));
      *&v45.f64[0] = vadd_f32(v57, v52);
      v51 = vmaxnm_f32(v51, *&v45.f64[0]);
      v53 = v42 + 1;
      v48 = v59;
      v49 = v60;
    }

LABEL_36:
    v42 = v53;
  }

  while (v53 != 4);
  v92 = v103;
  v93 = vsub_f32(*&v47, v50);
  v94 = fmax(v93.f32[0], 1.0) * v103;
  *(&v120 + 3) = v94;
  if (var0 != 0x80000000 && *&v46 < (var0 - v94))
  {
    return 0;
  }

  v96 = fmax(v93.f32[1], 1.0) * v92;
  v121 = v96;
  if (v106 != 0x80000000 && *(&v46 + 1) < (v106 - v96))
  {
    return 0;
  }

  v97 = vsub_f32(v51, *&v46);
  v98 = fmax(v97.f32[0], 1.0) * v92;
  v122 = v98;
  if (v105 != 0x7FFFFFFF && *&v47 > (v105 + v98))
  {
    return 0;
  }

  v99 = fmax(v97.f32[1], 1.0) * v92;
  v123 = v99;
  v100 = 0x7FFFFFFFLL;
  if (v104 != 0x7FFFFFFF && *(&v47 + 1) > (v104 + v99))
  {
    return 0;
  }

  if (a8)
  {
    v100 = rint(floor(v48));
    v101 = rint(ceil(v49));
    *a8 = v100;
    a8[1] = v101;
    if (v100 == v101)
    {
      if (v102 == v100)
      {
        v100 = (__PAIR64__(v102, v30) - v31) >> 32;
        *a8 = v100;
      }

      else
      {
        if (v102 <= v100)
        {
          v100 = v100;
        }

        else
        {
          v100 = (v100 + 1);
        }

        a8[1] = v100;
      }
    }
  }

  return HGRectMake4f(v100, floorf(*&v47), floorf(*(&v47 + 1)), ceilf(*&v46), ceilf(*(&v46 + 1)));
}

uint64_t HGAnisotropicSampler::Bind(HGAnisotropicSampler *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 120))(a2, this + 416);
  return 0;
}

uint64_t HGAnisotropicSampler::BindTexture(HGAnisotropicSampler *this, HGHandler *a2, uint64_t a3)
{
  (*(*a2 + 72))(a2, a3, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 56))(a2, 0);
  }

  v5 = (*(*this + 312))(this, 0);
  (*(*a2 + 48))(a2, v5, v5);
  return 0;
}

const char *HGAnisotropicSampler::GetProgram(HGAnisotropicSampler *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  v5 = (*(*this + 312))(this, a2);
  v6 = *(this + 60);
  v7 = *(v6 + 436);
  v8 = (*(**(v6 + 448) + 272))();
  v9.n128_u64[0] = *(v8 + 24);
  if (v9.n128_f64[0] == 0.0)
  {
    v9.n128_u64[0] = *(v8 + 56);
    if (v9.n128_f64[0] == 0.0)
    {
      v9.n128_u64[0] = *(v8 + 88);
      if (v9.n128_f64[0] == 0.0)
      {
        v9.n128_u64[0] = *v8;
        if (*v8 == *(v8 + 40) && v9.n128_f64[0] == *(v8 + 80))
        {
          v9.n128_u64[0] = *(v8 + 8);
          if (v9.n128_f64[0] == 0.0)
          {
            v9.n128_u64[0] = *(v8 + 16);
            if (v9.n128_f64[0] == 0.0)
            {
              v9.n128_u64[0] = *(v8 + 32);
              if (v9.n128_f64[0] == 0.0)
              {
                v9.n128_u64[0] = *(v8 + 48);
                if (v9.n128_f64[0] == 0.0)
                {
                  v7 = 1.0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (Target <= 0x60B0F)
  {
    if (Target > 0x6043F || Target == 394016)
    {
      if (*(this + 125) == 1)
      {
        return "//GLfs2.0      \n//LEN=000000029c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nvarying highp vec4 hg_TexCoord0;\nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal9;\nvoid main()\n{\n\tif (hg_TexCoord0.w > hg_ProgramLocal9.y) {\n\t\thighp vec4 uv = hg_TexCoord0/hg_TexCoord0.w;\n\t\thighp vec2 coord = uv.xy*hg_ProgramLocal0.xy + hg_ProgramLocal0.zw;\n\t\tgl_FragColor = texture2D(hg_Texture0, coord);\n\t} else {\n\t\tgl_FragColor = vec4(0.);\n\t}\n}\n//MD5=a7f2e069:2714aa11:2f22558e:c6207705\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
      }

      else
      {
        if (v5)
        {
          v14 = "//GLfs2.0      \n"
                "//LEN=0000000e0a\n"
                "#ifndef GL_ES\n"
                "#define highp\n"
                "#define mediump\n"
                "#define lowp\n"
                "#endif\n"
                "#define defaultp mediump\n"
                "#extension GL_OES_standard_derivatives : require\n"
                "#define mediump highp\n"
                "varying highp vec4 hg_TexCoord0;\n"
                "uniform highp sampler2D hg_Texture0;\n"
                "uniform highp sampler2D hg_Texture1;\n"
                "uniform highp sampler2D hg_Texture2;\n"
                "uniform highp sampler2D hg_Texture3;\n"
                "uniform highp sampler2D hg_Texture4;\n"
                "uniform highp sampler2D hg_Texture5;\n"
                "uniform highp sampler2D hg_Texture6;\n"
                "uniform highp sampler2D hg_Texture7;\n"
                "uniform highp vec4 hg_ProgramLocal0;\n"
                "uniform highp vec4 hg_ProgramLocal1;\n"
                "uniform highp vec4 hg_ProgramLocal2;\n"
                "uniform highp vec4 hg_ProgramLocal3;\n"
                "uniform highp vec4 hg_ProgramLocal4;\n"
                "uniform highp vec4 hg_ProgramLocal5;\n"
                "uniform highp vec4 hg_ProgramLocal6;\n"
                "uniform highp vec4 hg_ProgramLocal7;\n"
                "uniform highp vec4 hg_ProgramLocal8;\n"
                "uniform highp vec4 hg_ProgramLocal9;\n"
                "void main()\n"
                "{\n"
                "highp vec4 uv = hg_TexCoord0/hg_TexCoord0.w;\n"
                "highp vec4 ddxy = vec4(dFdx(uv.xy), dFdy(uv.xy));\n"
                "if (hg_TexCoord0.w > hg_ProgramLocal9.y) {\n"
                "highp vec4 c;\n"
                "highp vec2 coord;\n"
                "highp float f = log2(max(length(ddxy.xy), length(ddxy.zw))) + hg_ProgramLocal9.x;\n"
                "f = min(max(f, hg_ProgramLocal8.x), hg_ProgramLocal8.y);\n"
                "highp float lod = min(f, hg_ProgramLocal8.y - 1.);\n"
                "lod = floor(lod);\n"
                "if (lod < hg_ProgramLocal8.z || lod >= hg_ProgramLocal8.w) {\n"
                "    discard;\n"
                "} else {\n"
                "f -= lod;\n"
                "lod -= hg_ProgramLocal8.z;\n"
                "if (lod < 4.) {\n"
                "    if (lod < 2.) {\n"
                "        if (lod < 1.) {\n"
                "            coord = uv.xy*hg_ProgramLocal0.xy + hg_ProgramLocal0.zw;\n"
                "            c = texture2D(hg_Texture0, coord);\n"
                "            coord = uv.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n"
                "            gl_FragColor = mix(c, texture2D(hg_Texture1, coord), f);\n"
                "        } else {\n"
                "            coord = uv.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n"
                "            c = texture2D(hg_Texture1, coord);\n"
                "            coord = uv.xy*hg_ProgramLocal2.xy + hg_ProgramLocal2.zw;\n"
                "            gl_FragColor = mix(c, texture2D(hg_Texture2, coord), f);\n"
                "        }\n"
                "    } else {\n"
                "        if (lod < 3.) {\n"
                "            coord = uv.xy*hg_ProgramLocal2.xy + hg_ProgramLocal2.zw;\n"
                "            c = texture2D(hg_Texture2, coord);\n"
                "            coord = uv.xy*hg_ProgramLocal3.xy + hg_ProgramLocal3.zw;\n"
                "            gl_FragColor = mix(c, texture2D(hg_Texture3, coord), f);\n"
                "        } else {\n"
                "            coord = uv.xy*hg_ProgramLocal3.xy + hg_ProgramLocal3.zw;\n"
                "            c = texture2D(hg_Texture3, coord);\n"
                "            coord = uv.xy*hg_ProgramLocal4.xy + hg_ProgramLocal4.zw;\n"
                "            gl_FragColor = mix(c, texture2D(hg_Texture4, coord), f);\n"
                "        }\n"
                "    }\n"
                "} else {\n"
                "    if (lod < 6.) {\n"
                "        if (lod < 5.) {\n"
                "            coord = uv.xy*hg_ProgramLocal4.xy + hg_ProgramLocal4.zw;\n"
                "            c = texture2D(hg_Texture4, coord);\n"
                "            coord = uv.xy*hg_ProgramLocal5.xy + hg_ProgramLocal5.zw;\n"
                "            gl_FragColor = mix(c, texture2D(hg_Texture5, coord), f);\n"
                "        } else {\n"
                "            coord = uv.xy*hg_ProgramLocal5.xy + hg_ProgramLocal5.zw;\n"
                "            c = texture2D(hg_Texture5, coord);\n"
                "            coord = uv.xy*hg_ProgramLocal6.xy + hg_ProgramLocal6.zw;\n"
                "            gl_FragColor = mix(c, texture2D(hg_Texture6, coord), f);\n"
                "        }\n"
                "    } else {\n"
                "        coord = uv.xy*hg_ProgramLocal6.xy + hg_ProgramLocal6.zw;\n"
                "        c = texture2D(hg_Texture6, coord);\n"
                "        coord = uv.xy*hg_ProgramLocal7.xy + hg_ProgramLocal7.zw;\n"
                "        gl_FragColor = mix(c, texture2D(hg_Texture7, coord), f);\n"
                "    }\n"
                "}\n"
                "}\n"
                "} else {\n"
                "gl_FragColor = vec4(0.);\n"
                "}\n"
                "}\n"
                "//MD5=8828affd:84a65bad:f77ba030:c9de33bc\n"
                "//SIG=00000000:00000000:00000000:00000000:0008:000a:0000:0000:0000:0000:0000:0000:0001:08:0:1:0\n";
          v15 = aGlfs20Len00000_135;
        }

        else
        {
          v14 = "//GLfs2.0      \n//LEN=0000000a6a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\n#extension GL_OES_standard_derivatives : require\nvarying highp vec4 hg_TexCoord0;\nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp sampler2D hg_Texture2;\nuniform highp sampler2D hg_Texture3;\nuniform highp sampler2D hg_Texture4;\nuniform highp sampler2D hg_Texture5;\nuniform highp sampler2D hg_Texture6;\nuniform highp sampler2D hg_Texture7;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvoid main()\n{\n\thighp vec4 uv = hg_TexCoord0/hg_TexCoord0.w;\n\thighp vec4 ddxy = vec4(dFdx(uv.xy), dFdy(uv.xy));\n\tif (hg_TexCoord0.w > hg_ProgramLocal9.y) {\n\thighp vec2 coord;\n\thighp float lod = log2(max(length(ddxy.xy), length(ddxy.zw))) + hg_ProgramLocal9.x;\n\tlod = min(max(lod, hg_ProgramLocal8.x), hg_ProgramLocal8.y);\n\tlod = ceil(lod);\n\t\n\tif (lod < hg_ProgramLocal8.z || lod > hg_ProgramLocal8.w) {\n\t   discard;\n\t} else {\n\tlod -= hg_ProgramLocal8.z;\n\t\tif (lod < 4.) {\n\t\t\tif (lod < 2.) {\n\t\t\t\tif (lod < 1.) {\n\t\t\t\t   coord = uv.xy*hg_ProgramLocal0.xy + hg_ProgramLocal0.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture0, coord);\n\t\t\t\t} else {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture1, coord);\n\t\t\t\t}\n\t\t\t} else {\n\t\t\t\tif (lod < 3.) {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal2.xy + hg_ProgramLocal2.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture2, coord);\n\t\t\t   } else {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal3.xy + hg_ProgramLocal3.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture3, coord);\n\t\t\t\t}\n\t\t\t}\n\t\t} else {\n\t\t\tif (lod < 6.) {\n\t\t\t\tif (lod < 5.) {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal4.xy + hg_ProgramLocal4.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture4, coord);\n\t\t\t\t} else {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal5.xy + hg_ProgramLocal5.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture5, coord);\n\t\t\t\t}\n\t\t\t} else {\n\t\t\t\tif (lod < 7.) {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal6.xy + hg_ProgramLocal6.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture6, coord);\n\t\t\t\t} else {\n\t\t\t\t\tcoord = uv.xy*hg_ProgramLocal7.xy + hg_ProgramLocal7.zw;\n\t\t\t\t\tgl_FragColor = texture2D(hg_Texture7, coord);\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\t} else {\n\t\tgl_FragColor = vec4(0.);\n\t}\n}\n//MD5=d39193e9:42f0582f:95174530:f40f17ba\n//SIG=00000000:00000000:00000000:00000000:0008:000a:0000:0000:0000:0000:0000:0000:0001:08:0:1:0\n";
          v15 = aGlfs20Len00000_133;
        }

        if (v7 <= 1.0)
        {
          return v14;
        }

        else
        {
          return v15;
        }
      }
    }

    else
    {
      return "!!ARBfp1.0     \n##LEN=000000072e\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nATTRIB $f2=fragment.texcoord[2];\nATTRIB $f3=fragment.texcoord[3];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={1.5,.5,0,0};\nPARAM $c1={.5,1.5,0,0};\nPARAM $c2={1.5,1.5,0,0};\nPARAM $c3={.5,.5,0,0};\n##%\nTEMP r0,r1,r2,r3,r4,r5,r6,r7;\n##@\n##3\nTXP r7,$f3,texture[3],2D;\nMAD r7.w,$p1.x,r7.w,$p1.w;\nSUB r6.w,r7,$p0.x;\nSUB r6.xyz,$p0.z,r7.w;\nKIL r6;\nSUB r7.w,$p0.y,r7;\nMOV_SAT r7.x,r7.w;\nMOV_SAT r7.w,-r7.w;\nADD r7.y,r7.x,r7.w;\nRCP r6.w,$f3.w;\nMAD r6.xy,$f1,r6.w,-$c3;\nFLR r5.xy,r6;\nSUB r6.xy,r6,r5;\nADD r0.xy,r5,$c3;\n##1\nTEX r0,r0,texture[1],RECT;\nADD r1.xy,r5,$c0;\n##1\nTEX r1,r1,texture[1],RECT;\nADD r2.xy,r5,$c1;\n##1\nTEX r2,r2,texture[1],RECT;\nADD r3.xy,r5,$c2;\n##1\nTEX r3,r3,texture[1],RECT;\nLRP r0,r6.x,r1,r0;\nLRP r2,r6.x,r3,r2;\nLRP r0,r6.y,r2,r0;\nMAD r4,-r7.y,r0,r0;\nMAD r6.xy,$f0,r6.w,-$c3;\nFLR r5,r6;\nSUB r6.xy,r6,r5;\nADD r0,r5,$c3;\n##0\nTEX r0,r0,texture[0],RECT;\nADD r1,r5,$c0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r2,r5,$c1;\n##0\nTEX r2,r2,texture[0],RECT;\nADD r3,r5,$c2;\n##0\nTEX r3,r3,texture[0],RECT;\nLRP r0,r6.x,r1,r0;\nLRP r2,r6.x,r3,r2;\nLRP r0,r6.y,r2,r0;\nMAD r4,r7.x,r0,r4;\nMAD r6.xy,$f2,r6.w,-$c3;\nFLR r5,r6;\nSUB r6.xy,r6,r5;\nADD r0,r5,$c3;\n##2\nTEX r0,r0,texture[2],RECT;\nADD r1,r5,$c0;\n##2\nTEX r1,r1,texture[2],RECT;\nADD r2,r5,$c1;\n##2\nTEX r2,r2,texture[2],RECT;\nADD r3,r5,$c2;\n##2\nTEX r3,r3,texture[2],RECT;\nLRP r0,r6.x,r1,r0;\nLRP r2,r6.x,r3,r2;\nLRP r0,r6.y,r2,r0;\nMAD r4,r7.w,r0,r4;\nCMP $o0,$f3.w,0.,r4;\nEND\n##MD5=ef0fd3e2:cb522fe7:1347379a:8991ea22\n##SIG=01000000:00000000:00000000:00000000:0004:0002:0008:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
    }
  }

  else
  {
    v10 = (*(*a2 + 128))(a2, 20, v9);
    if (*(this + 125) == 1)
    {
      v11 = "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut out;\n    \n    if (frag._texCoord0.w > hg_Params[9].y)\n    {\n        float4 uv = frag._texCoord0 / frag._texCoord0.w;\n        float2 coordinate = uv.xy * hg_Params[0].xy + hg_Params[0].zw;\n        out.color0 = hg_Texture0.sample(hg_Sampler0, coordinate);\n    }\n    else\n    {\n        out.color0 = float4(0.0f);\n    }\n    \n    return out;\n}\n//MD5=750a3032:b6067064:6a00a29b:b3c8c145\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
      v12 = "//Metal1.0     \n//LEN=0000000372\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut out;\n    \n    if (frag._texCoord0.w > hg_Params[9].y)\n    {\n        float4 uv = frag._texCoord0 / frag._texCoord0.w;\n        float2 coordinate = uv.xy * hg_Params[0].xy + hg_Params[0].zw;\n        out.color0 = (float4) hg_Texture0.sample(hg_Sampler0, coordinate);\n    }\n    else\n    {\n        out.color0 = float4(0.0f);\n    }\n    \n    return out;\n}\n//MD5=eb23f2ee:71cb8148:b382db79:f0fcba1b\n//SIG=00400000:00000000:00000000:00000001:0001:000a:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else if (v5)
    {
      if (v7 > 1.0)
      {
        v11 = aMetal10Len0000_400;
        v12 = aMetal10Len0000_399;
      }

      else
      {
        v11 = aMetal10Len0000_398;
        v12 = aMetal10Len0000_397;
      }
    }

    else if (v7 > 1.0)
    {
      v11 = aMetal10Len0000_396;
      v12 = aMetal10Len0000_395;
    }

    else
    {
      v11 = aMetal10Len0000_394;
      v12 = aMetal10Len0000_393;
    }

    if (v10 == 27)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }
}

void sub_25FCDDA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a43);
  std::vector<HGBinding>::~vector[abi:ne200100]((v48 - 144));
  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  _Unwind_Resume(a1);
}

HGRenderer *HGAnisotropicSampler::RenderPageGeneric(uint64_t a1, HGRenderer **a2, int a3)
{
  v6 = *a2;
  v7 = a2[2];
  v8 = a2[3];
  v9 = (*(*a1 + 312))(a1, *a2);
  v10 = a2[1];
  if (v10)
  {
    (*(*v10 + 16))(v10);
    if (a3 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    Input = HGRenderer::GetInput(v6, a1, 0);
    DOD = HGRenderer::GetDOD(v6, Input);
    HGAnisotropicSampler::GetPageMetal(a1, a2, v7, v8, DOD, v16, v9, 0xFFFFFFFF, v17, v18, v19, v20, 0);
    return a2[1];
  }

  *&v22.var0 = v7;
  *&v22.var2 = v8;
  a2[1] = HGGPURenderer::CreateBuffer(v6, v22, *(a2 + 8), a3, (*(a1 + 16) >> 12) & 1, *(a2 + 248));
  if (a3 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a3)
  {
    v11 = HGRenderer::GetInput(v6, a1, 0);
    v12 = HGRenderer::GetDOD(v6, v11);
    HGAnisotropicSampler::GetPage(a1, a2, v7, v8, v12, v13, v9, 0xFFFFFFFF, 0);
    return a2[1];
  }

  return 0;
}

uint64_t HGAnisotropicSampler::GetPage(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, int a9)
{
  v235 = *MEMORY[0x277D85DE8];
  v13 = *a2;
  Target = HGRenderer::GetTarget(*a2, 393216);
  v17 = *(a1 + 480);
  v18 = *(v17 + 436);
  v19 = *(v17 + 448);
  v220 = a7;
  v228 = Target;
  if (v18 < 2)
  {
    *&v26.var0 = *(v17 + 464);
    v38 = *(v17 + 472);
    if (a7 <= 0)
    {
      v27 = 0.5;
    }

    else
    {
      v27 = 1.5;
    }

    v28 = *(v17 + 424);
    v29 = v18;
    v30 = *(v17 + 480);
    v31 = *(v17 + 484);
    if (v13)
    {
      v39 = *(v17 + 464);
      if (v40)
      {
        MaxTileArea = HGGPURenderer::GetMaxTileArea(v40);
      }

      else
      {
        MaxTileArea = 0x1000000;
      }

      *&v26.var0 = v39;
    }

    else
    {
      MaxTileArea = 0x1000000;
    }

    v199 = MaxTileArea;
    v43 = v19;
    v42 = a3;
    *&v44.var0 = a3;
    *&v44.var2 = a4;
    *&v26.var2 = v38;
  }

  else
  {
    v20 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v21 = HGRectGrow(a3, a4, v20);
    v23 = v21;
    v24 = v22;
    v25 = *(a1 + 480);
    v26 = *(v25 + 464);
    if (a7 <= 0)
    {
      v27 = 0.5;
    }

    else
    {
      v27 = 1.5;
    }

    v28 = *(v25 + 424);
    v29 = v18;
    v30 = *(v25 + 480);
    v31 = *(v25 + 484);
    if (v13)
    {
      v208 = *(v25 + 472);
      v211 = *(v25 + 464);
      v214 = v19;
      v32 = a4;
      v33 = v18;
      v34 = v22;
      v35 = v21;
      if (v36)
      {
        v37 = HGGPURenderer::GetMaxTileArea(v36);
      }

      else
      {
        v37 = 0x1000000;
      }

      v23 = v35;
      v24 = v34;
      v18 = v33;
      a4 = v32;
      *&v26.var0 = v211;
      v19 = v214;
      *&v26.var2 = v208;
    }

    else
    {
      v37 = 0x1000000;
    }

    v42 = a3;
    v199 = v37;
    v43 = v19;
    *&v44.var0 = v23;
    *&v44.var2 = v24;
  }

  *&v15 = v27;
  v45 = hg_clip(v43, v44, v26, v15, v28, v29, v16, &v233, v30, v31, v199);
  v47 = v46;
  result = HGRectIsNull(v45, v46);
  if (result)
  {
    goto LABEL_23;
  }

  v52 = HIDWORD(v42);
  v53 = HIDWORD(a4);
  v54 = v233;
  v55 = a8;
  v56 = fmax((v47 - v45) * (1.0 / (1 << v54)) / a8, (SHIDWORD(v47) - SHIDWORD(v45)) * (1.0 / (1 << v54)) / a8);
  v232 = a1;
  v212 = v42;
  v57 = v45;
  if (a4 - v42 == 1 && HIDWORD(a4) - HIDWORD(v42) == 1 && v56 > 1.0)
  {
    v205 = a4;
    v58 = *(a1 + 480);
    v59 = *(v58 + 448);
    v60 = *(v58 + 464);
    v61 = *(v58 + 472);
    if (v220 <= 0)
    {
      v62 = 0.5;
    }

    else
    {
      v62 = 1.5;
    }

    v63 = *(v58 + 424);
    v64 = *(v58 + 480);
    v65 = *(v58 + 484);
    if (v13)
    {
      v67 = v42;
      if (v66)
      {
        v68 = HGGPURenderer::GetMaxTileArea(v66);
      }

      else
      {
        v68 = 0x1000000;
      }
    }

    else
    {
      v68 = 0x1000000;
      v67 = v42;
    }

    *&v237.var0 = v67;
    *&v237.var2 = v205;
    *&v240.var0 = v60;
    *&v240.var2 = v61;
    *&v56 = v62;
    a4 = v205;
    v90 = hg_clip(v59, v237, v240, v56, v63, 1.0, v55, &v233, v64, v65, v68);
    v47 = v91;
    result = HGRectIsNull(v90, v91);
    a1 = v232;
    if (result)
    {
LABEL_23:
      (*(*v13 + 144))(v13, *(a2 + 8));
      *&v236.var0 = v42;
      *&v236.var2 = a4;
      return HGGPURenderer::Clear(v13, v236, v50, v51);
    }

    v85 = 0;
    v54 = v234;
    v233 = v234;
    v18 = 1;
    if (v228 > 0x6043F)
    {
      v57 = v90;
    }

    else
    {
      v57 = v90;
      if (v228 != 394016)
      {
        v84 = 0;
        v92 = 1;
        goto LABEL_66;
      }
    }

    v77 = v42;
  }

  else
  {
    if (v56 > 2.0)
    {
      if (SHIDWORD(a4) > SHIDWORD(v42) && a4 > v42)
      {
        v69 = rint(fmax(sqrt((a4 - v42) * (SHIDWORD(a4) - SHIDWORD(v42)) / v56), 1.0));
        do
        {
          v70 = v52 + v69;
          v215 = v52 + v69;
          if (v52 + v69 >= v53)
          {
            v70 = v53;
          }

          v229 = v70;
          LODWORD(result) = v42;
          do
          {
            v71 = (result + v69);
            if (v71 >= a4)
            {
              v72 = a4;
            }

            else
            {
              v72 = result + v69;
            }

            v73 = v52;
            v74 = v69;
            v75 = HGRectMake4i(result, v52, v72, v229);
            HGAnisotropicSampler::GetPage(v232, a2, v75, v76, a5, a6, v220, a8, a9 + 1);
            v69 = v74;
            v52 = v73;
            result = v71;
          }

          while (v71 < a4);
          v52 = v215;
          LODWORD(v53) = HIDWORD(a4);
          LODWORD(v42) = v212;
        }

        while (v215 < SHIDWORD(a4));
      }

      return result;
    }

    v77 = v42;
    if (v56 > 1.0)
    {
      v78 = a9 + 1;
      if (HIDWORD(a4) - HIDWORD(v42) <= (a4 - v42))
      {
        v88 = HGRectMake4i(v42, HIDWORD(v42), (v42 + a4) >> 1, HIDWORD(a4));
        HGAnisotropicSampler::GetPage(a1, a2, v88, v89, a5, a6, v220, a8, v78);
        v81 = HGRectMake4i((v42 + a4) >> 1, HIDWORD(v42), a4, HIDWORD(a4));
      }

      else
      {
        v79 = HGRectMake4i(v42, HIDWORD(v42), a4, (HIDWORD(v42) + HIDWORD(a4)) >> 1);
        HGAnisotropicSampler::GetPage(a1, a2, v79, v80, a5, a6, v220, a8, v78);
        v81 = HGRectMake4i(v42, (HIDWORD(v42) + HIDWORD(a4)) >> 1, a4, HIDWORD(a4));
      }

      return HGAnisotropicSampler::GetPage(a1, a2, v81, v82, a5, a6, v220, a8, v78);
    }

    v205 = a4;
    if (v228 <= 0x6043F && v228 != 394016)
    {
      if (v220 >= 1)
      {
        v209 = v18;
        v83 = v57;
        result = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        v84 = result;
        v57 = v83;
        v218 = 2;
        v54 = v233;
        goto LABEL_68;
      }

      v92 = v18;
      v84 = 0;
      if (v220)
      {
        v209 = v92;
        v93 = 2;
LABEL_67:
        v218 = v93;
LABEL_68:
        v94 = v234;
        if (v54 <= v234)
        {
          v95 = 0;
          v96 = *(*(a1 + 480) + 424);
          v49.f32[0] = v57;
          v49.f32[1] = SHIDWORD(v57);
          v226 = v49;
          v49.f32[0] = v47;
          v49.f32[1] = SHIDWORD(v47);
          v223 = v49;
          v97 = v54;
          v230 = v54;
          v203 = v54 - 1;
          v204 = v54;
          v98 = 32 * v54;
          v99 = v54;
          v206 = v84;
          do
          {
            v100 = v97 + v95;
            v101 = *(a1 + 496);
            if (v97 + v95 - v101 < *(a1 + 500) && v100 <= v94)
            {
              v104 = *(a1 + 504) - 32 * v101 + v98;
              v105 = *(v104 + 16);
              v106 = vaddq_f32(vmulq_f32(v226, *v104), v105).u64[0];
              v105.i64[0] = vaddq_f32(vmulq_f32(v223, *v104), v105).u64[0];
              v107 = HGRectIntegral(v104, *&v106, *(&v106 + 1), v105.f32[0], v105.f32[1]);
              *(a2 + 36) = HGRectGrow(v107, v108, v84);
              *(a2 + 44) = v109;
              Input = HGRenderer::GetInput(v13, a1, v230 + v95 - *(a1 + 496));
              *(a2 + 168) = HGGPURenderer::GetNodeTexture(v13, Input, *(a2 + 36), 0, 1u);
            }

            else
            {
              *(a2 + 36) = *(a2 + 20);
              v103 = *(a2 + 160);
              *(a2 + 168) = v103;
              if (v103)
              {
                (*(*v103 + 16))(v103);
              }
            }

            v111 = *(a1 + 496);
            if (v97 + v95 - v111 + 1 >= *(a1 + 500) || v100 >= v234)
            {
              *(a2 + 52) = *(a2 + 36);
              v120 = *(a2 + 168);
              *(a2 + 176) = v120;
              if (v120)
              {
                (*(*v120 + 16))(v120);
              }
            }

            else
            {
              v112 = *(a1 + 504) - 32 * v111 + v98;
              v113 = *(v112 + 32);
              v114 = *(v112 + 48);
              v115 = vaddq_f32(vmulq_f32(v226, v113), v114).u64[0];
              v114.i64[0] = vaddq_f32(vmulq_f32(v223, v113), v114).u64[0];
              v116 = HGRectIntegral(v112, *&v115, *(&v115 + 1), v114.f32[0], v114.f32[1]);
              *(a2 + 52) = HGRectGrow(v116, v117, v84);
              *(a2 + 60) = v118;
              v119 = HGRenderer::GetInput(v13, a1, v230 + v95 - *(a1 + 496) + 1);
              *(a2 + 176) = HGGPURenderer::GetNodeTexture(v13, v119, *(a2 + 52), 0, 1u);
            }

            v121 = v97 + v95 + 2;
            v122 = *(a1 + 496);
            if (v121 - v122 >= *(a1 + 500) || v121 > v234)
            {
              *(a2 + 68) = *(a2 + 52);
              v131 = *(a2 + 176);
              *(a2 + 184) = v131;
              if (v131)
              {
                (*(*v131 + 16))(v131);
              }
            }

            else
            {
              v123 = *(a1 + 504) - 32 * v122 + v98;
              v124 = *(v123 + 64);
              v125 = *(v123 + 80);
              v126 = vaddq_f32(vmulq_f32(v226, v124), v125).u64[0];
              v125.i64[0] = vaddq_f32(vmulq_f32(v223, v124), v125).u64[0];
              v127 = HGRectIntegral(v123, *&v126, *(&v126 + 1), v125.f32[0], v125.f32[1]);
              *(a2 + 68) = HGRectGrow(v127, v128, v84);
              *(a2 + 76) = v129;
              v130 = HGRenderer::GetInput(v13, a1, v230 + v95 - *(a1 + 496) + 2);
              *(a2 + 184) = HGGPURenderer::GetNodeTexture(v13, v130, *(a2 + 68), 0, 1u);
            }

            (*(*v13 + 144))(v13, *(a2 + 8));
            (*(*v13 + 152))(v13, 0, *(a2 + 168), 0, 0);
            (*(*v13 + 152))(v13, 1, *(a2 + 176), 0, 0);
            (*(*v13 + 152))(v13, 2, *(a2 + 184), 0, 0);
            v132 = (*(*v13 + 368))(v13, *(a1 + 64), a1);
            if (v132)
            {
              v133 = v132;
              v134 = *(a2 + 168);
              if (v134)
              {
                v135 = v234;
                if (v230 + v95 < v234)
                {
                  v135 = v230 + v95;
                }

                v136 = v135 - *(v232 + 496);
                v137 = *(v232 + 500);
                if (v136 >= v137)
                {
                  v138 = v137 - 1;
                }

                else
                {
                  v138 = v136;
                }

                v200[0] = -v134[5];
                v200[1] = -v134[6];
                (*(*v132 + 32))(v132, v134[40], 0, 0, 0, 0, 0, 0, *v200);
                HGHandler::TexCoord(v133, 0, 0, 0, 0);
                v139 = 32 * v138;
                (*(*v133 + 96))(v133, COERCE_FLOAT(*(*(v232 + 504) + v139 + 16)), COERCE_FLOAT(HIDWORD(*(*(v232 + 504) + v139 + 16))), 0.0);
                (*(*v133 + 104))(v133, COERCE_FLOAT(*(*(v232 + 504) + v139)), COERCE_FLOAT(HIDWORD(*(*(v232 + 504) + v139))), 1.0);
                (*(*v133 + 120))(v133, v232 + 416);
              }

              v140 = *(a2 + 176);
              if (v140)
              {
                v141 = v234;
                if (v230 + v95 + 1 < v234)
                {
                  v141 = v230 + v95 + 1;
                }

                v142 = v141 - *(v232 + 496);
                v143 = *(v232 + 500);
                if (v142 >= v143)
                {
                  v144 = v143 - 1;
                }

                else
                {
                  v144 = v142;
                }

                v201[0] = -v140[5];
                v201[1] = -v140[6];
                (*(*v133 + 32))(v133, v140[40], 0, 0, 0, 0, 0, 0, *v201);
                HGHandler::TexCoord(v133, 1, 0, 0, 0);
                v145 = 32 * v144;
                (*(*v133 + 96))(v133, COERCE_FLOAT(*(*(v232 + 504) + v145 + 16)), COERCE_FLOAT(HIDWORD(*(*(v232 + 504) + v145 + 16))), 0.0);
                (*(*v133 + 104))(v133, COERCE_FLOAT(*(*(v232 + 504) + v145)), COERCE_FLOAT(HIDWORD(*(*(v232 + 504) + v145))), 1.0);
                (*(*v133 + 120))(v133, v232 + 416);
              }

              v221 = v97 + v95 + 2;
              v146 = *(a2 + 184);
              if (v146)
              {
                v147 = v99 + 2;
                v148 = v234;
                if (v230 + v95 + 2 < v234)
                {
                  v148 = v230 + v95 + 2;
                }

                v149 = v232;
                v150 = v148 - *(v232 + 496);
                v151 = *(v232 + 500);
                if (v150 >= v151)
                {
                  v152 = v151 - 1;
                }

                else
                {
                  v152 = v150;
                }

                v202[0] = -v146[5];
                v202[1] = -v146[6];
                (*(*v133 + 32))(v133, v146[40], 0, 0, 0, 0, 0, 0, *v202);
                HGHandler::TexCoord(v133, 2, 0, 0, 0);
                v153 = 32 * v152;
                (*(*v133 + 96))(v133, COERCE_FLOAT(*(*(v232 + 504) + v153 + 16)), COERCE_FLOAT(HIDWORD(*(*(v232 + 504) + v153 + 16))), 0.0);
                (*(*v133 + 104))(v133, COERCE_FLOAT(*(*(v232 + 504) + v153)), COERCE_FLOAT(HIDWORD(*(*(v232 + 504) + v153))), 1.0);
                (*(*v133 + 120))(v133, v232 + 416);
              }

              else
              {
                v147 = v230 + v95 + 2;
                v149 = v232;
              }

              v154 = v230 + v95;
              v155 = (*(*v13 + 424))(v13, 3, (v96 - (v203 + v95)), v209);
              (*(*v133 + 24))(v133, *(a2 + 16), *(a2 + 24), *(a2 + 16), *(a2 + 24), 0, 0);
              HGHandler::TexCoord(v133, 3, 0, 0, 0);
              (*(*v133 + 120))(v133, v149 + 416);
              v157.n128_f32[0] = (v230 + v95);
              if (v230 + v95 == v233)
              {
                v157.n128_f32[0] = -1000.0;
              }

              v156.n128_u32[0] = 1148846080;
              if (v221 < v234)
              {
                v156.n128_f32[0] = v147;
              }

              if (v154 + 1 < v234)
              {
                v158 = v154 + 1;
              }

              else
              {
                v158 = v234;
              }

              (*(*v133 + 136))(v133, 0, v157, v158, v156, 0.0);
              v159 = v154 + -1.0;
              (*(*v133 + 136))(v133, 1, v155, v155, v155, v159);
              (*(*v133 + 40))(v133);
              *&v238.var0 = v212;
              *&v238.var2 = v205;
              HGGPURenderer::Rect(v13, v133, v238, 4);
              (*(*v13 + 392))(v13, v133);
              v84 = v206;
              v97 = v204;
            }

            v160 = *(a2 + 168);
            if (v160)
            {
              (*(*v160 + 24))(v160);
            }

            v161 = *(a2 + 176);
            a1 = v232;
            if (v161)
            {
              (*(*v161 + 24))(v161);
            }

            result = *(a2 + 184);
            if (result)
            {
              result = (*(*result + 24))(result);
            }

            v99 += v218;
            v95 += v218;
            v98 += 32 * v218;
            v94 = v234;
          }

          while (v97 + v95 <= v234);
        }

        return result;
      }

LABEL_66:
      v209 = v92;
      v93 = 3;
      goto LABEL_67;
    }

    v85 = v220;
    if (v220 >= 1)
    {
      v86 = v18;
      v87 = v57;
      result = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      v225 = result;
      v57 = v87;
      v54 = v233;
      goto LABEL_128;
    }
  }

  v86 = v18;
  v220 = v85;
  v225 = 0;
LABEL_128:
  if (v54 <= v234)
  {
    v49.f32[0] = v57;
    v49.f32[1] = SHIDWORD(v57);
    v219 = v49;
    v49.f32[0] = v47;
    v49.f32[1] = SHIDWORD(v47);
    v216 = v49;
    if (v220)
    {
      v162 = 7;
    }

    else
    {
      v162 = 8;
    }

    v163 = (a2 + 168);
    v164 = v86;
    v165 = v54;
    v231 = v54;
    v166 = (32 * v54) | 0x10;
    v207 = 32 * v162;
    v210 = v162;
    do
    {
      v167 = 0;
      v168 = 0x1FFFFFFFFFFFFFF0;
      v213 = v166;
      v169 = v166;
      do
      {
        v170 = *(a1 + 496);
        if (v165 + v167 - v170 >= *(a1 + 500) || v165 + v167 > v234)
        {
          break;
        }

        v172 = (*(a1 + 504) - 32 * v170 + v169);
        v173 = v172[-1];
        v174 = vaddq_f32(vmulq_f32(v219, v173), *v172).u64[0];
        v175 = vaddq_f32(vmulq_f32(v216, v173), *v172).u64[0];
        v176 = HGRectIntegral(v172, *&v174, *(&v174 + 1), *&v175, *(&v175 + 1));
        v178 = &v163[v168];
        *(v178 - 4) = HGRectGrow(v176, v177, v225);
        *(v178 + 4) = v179;
        v180 = HGRenderer::GetInput(v13, a1, v231 + v167 - *(a1 + 496));
        v163[v167++] = HGGPURenderer::GetNodeTexture(v13, v180, *(&v163[v168 - 1] + 4), 0, 1u);
        v169 += 32;
        v168 += 2;
      }

      while (v167 != 8);
      (*(*v13 + 144))(v13, *(a2 + 8));
      if (v165 - *(a1 + 496) < *(a1 + 500) && v165 <= v234)
      {
        (*(*v13 + 152))(v13, 0, *v163, 0, 0);
        if (v165 - *(a1 + 496) + 1 < *(a1 + 500) && v165 < v234)
        {
          (*(*v13 + 152))(v13, 1, *(a2 + 176), 0, 0);
          if (v165 - *(a1 + 496) + 2 < *(a1 + 500) && v165 + 2 <= v234)
          {
            (*(*v13 + 152))(v13, 2, *(a2 + 184), 0, 0);
            if (v165 - *(a1 + 496) + 3 < *(a1 + 500) && v165 + 3 <= v234)
            {
              (*(*v13 + 152))(v13, 3, *(a2 + 192), 0, 0);
              if (v165 - *(a1 + 496) + 4 < *(a1 + 500) && v165 + 4 <= v234)
              {
                (*(*v13 + 152))(v13, 4, *(a2 + 200), 0, 0);
                if (v165 - *(a1 + 496) + 5 < *(a1 + 500) && v165 + 5 <= v234)
                {
                  (*(*v13 + 152))(v13, 5, *(a2 + 208), 0, 0);
                  if (v165 - *(a1 + 496) + 6 < *(a1 + 500) && v165 + 6 <= v234)
                  {
                    (*(*v13 + 152))(v13, 6, *(a2 + 216), 0, 0);
                    if (v165 - *(a1 + 496) + 7 < *(a1 + 500) && v165 + 7 <= v234)
                    {
                      (*(*v13 + 152))(v13, 7, *(a2 + 224), 0, 0);
                    }
                  }
                }
              }
            }
          }
        }
      }

      result = (*(*v13 + 368))(v13, *(a1 + 64), a1);
      if (result)
      {
        v183 = result;
        (*(*result + 32))(result, 3553, 0, 0, 0, 0, 0, 0, 0);
        v184 = 0;
        v185 = v213;
        do
        {
          if (v231 + v184 - *(a1 + 496) >= *(a1 + 500) || v165 + v184 > v234)
          {
            break;
          }

          if (v163[v184])
          {
            (*(*a1 + 208))(a1, v183, v184);
            (*(*v183 + 72))(v183, v184, 0);
            (*(*v183 + 48))(v183, v220, v220);
            result = v163[v184];
            if (!result)
            {
              return result;
            }

            if (!result)
            {
              return result;
            }

            TextureRect = HGGLTexture::GetTextureRect(result);
            v188 = 1.0 / (v187 - TextureRect);
            v190 = 1.0 / (v189 - HIDWORD(TextureRect));
            v191 = (*(a1 + 504) - 32 * *(a1 + 496) + v185);
            v192 = v188 * (COERCE_FLOAT(*v191) - TextureRect);
            v193 = v190 * (COERCE_FLOAT(HIDWORD(*v191)) - SHIDWORD(TextureRect));
            *&v188 = v188 * COERCE_FLOAT(*(v191 - 1));
            *&v190 = v190 * COERCE_FLOAT(HIDWORD(*(v191 - 2)));
            v194 = v192;
            *&v193 = v193;
            (*(*v183 + 136))(v183, v184, *&v188, *&v190, v194, *&v193);
          }

          ++v184;
          v185 += 32;
        }

        while (v184 != 8);
        (*(*v183 + 24))(v183, 0, 0, 0, 0, 0, 0);
        (*(*a1 + 200))(a1, v183);
        (*(*v183 + 136))(v183, 8, v233, v234, v165, (v165 + 7));
        (*(*v183 + 136))(v183, 9, *(*(a1 + 480) + 424), 0.000001, *(*(a1 + 480) + 424), v164);
        (*(*v183 + 40))(v183);
        *&v239.var0 = v77;
        *&v239.var2 = v205;
        HGGPURenderer::Rect(v13, v183, v239, 1);
        result = (*(*v13 + 392))(v13, v183);
        v196 = *(a1 + 496);
        v197 = *(a1 + 500);
        if (v165 - v196 < v197)
        {
          v198 = v234;
          if (v165 <= v234)
          {
            result = *v163;
            if (*v163)
            {
              result = (*(*result + 24))(result);
              v196 = *(a1 + 496);
              v197 = *(a1 + 500);
              v198 = v234;
            }

            if (v165 - v196 + 1 < v197 && v165 < v198)
            {
              result = *(a2 + 176);
              if (result)
              {
                result = (*(*result + 24))(result);
                v196 = *(a1 + 496);
                v197 = *(a1 + 500);
                v198 = v234;
              }

              if (v165 - v196 + 2 < v197 && v165 + 2 <= v198)
              {
                result = *(a2 + 184);
                if (result)
                {
                  result = (*(*result + 24))(result);
                  v196 = *(a1 + 496);
                  v197 = *(a1 + 500);
                  v198 = v234;
                }

                if (v165 - v196 + 3 < v197 && v165 + 3 <= v198)
                {
                  result = *(a2 + 192);
                  if (result)
                  {
                    result = (*(*result + 24))(result);
                    v196 = *(a1 + 496);
                    v197 = *(a1 + 500);
                    v198 = v234;
                  }

                  if (v165 - v196 + 4 < v197 && v165 + 4 <= v198)
                  {
                    result = *(a2 + 200);
                    if (result)
                    {
                      result = (*(*result + 24))(result);
                      v196 = *(a1 + 496);
                      v197 = *(a1 + 500);
                      v198 = v234;
                    }

                    if (v165 - v196 + 5 < v197 && v165 + 5 <= v198)
                    {
                      result = *(a2 + 208);
                      if (result)
                      {
                        result = (*(*result + 24))(result);
                        v196 = *(a1 + 496);
                        v197 = *(a1 + 500);
                        v198 = v234;
                      }

                      if (v165 - v196 + 6 < v197 && v165 + 6 <= v198)
                      {
                        result = *(a2 + 216);
                        if (result)
                        {
                          result = (*(*result + 24))(result);
                          v196 = *(a1 + 496);
                          v197 = *(a1 + 500);
                          v198 = v234;
                        }

                        if (v165 - v196 + 7 < v197 && v165 + 7 <= v198)
                        {
                          result = *(a2 + 224);
                          if (result)
                          {
                            result = (*(*result + 24))(result);
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

      v165 += v210;
      v231 += v210;
      v166 = v213 + v207;
    }

    while (v165 <= v234);
  }

  return result;
}

uint64_t HGAnisotropicSampler::GetPageMetal(uint64_t a1, HGBitmap **a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, double a9, double a10, double a11, double a12, int a13)
{
  v143 = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a1 + 480);
  v20 = *(v19 + 448);
  v134 = *(v19 + 436);
  if (v134 < 2)
  {
    v38 = *(v19 + 464);
    v37 = *(v19 + 472);
    if (a7 <= 0)
    {
      v39 = 0.5;
    }

    else
    {
      v39 = 1.5;
    }

    v40 = *(v19 + 424);
    v41 = *(v19 + 480);
    v42 = *(v19 + 484);
    if (v18)
    {
      v132 = *(v19 + 480);
      if (v43)
      {
        MaxTileArea = HGGPURenderer::GetMaxTileArea(v43);
      }

      else
      {
        MaxTileArea = 0x1000000;
      }

      v41 = v132;
    }

    else
    {
      MaxTileArea = 0x1000000;
    }

    *&v145.var0 = a3;
    *&v145.var2 = a4;
    *&v149.var0 = v38;
    *&v149.var2 = v37;
    *&a9 = v39;
    v45 = hg_clip(v20, v145, v149, a9, v40, v134, a12, &v141, v41, v42, MaxTileArea);
  }

  else
  {
    v131 = *(v19 + 448);
    v22 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v23 = HGRectGrow(a3, a4, v22);
    v27 = v26;
    v28 = *(a1 + 480);
    v30 = *(v28 + 464);
    *&v29.var2 = *(v28 + 472);
    if (a7 <= 0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = 1.5;
    }

    v32 = *(v28 + 424);
    v33 = *(v28 + 480);
    v34 = *(v28 + 484);
    if (v18)
    {
      v130 = *(v28 + 472);
      if (v35)
      {
        v36 = HGGPURenderer::GetMaxTileArea(v35);
      }

      else
      {
        v36 = 0x1000000;
      }

      *&v29.var2 = v130;
    }

    else
    {
      v36 = 0x1000000;
    }

    *&v144.var0 = v23;
    *&v144.var2 = v27;
    *&v29.var0 = v30;
    *&v24 = v31;
    v45 = hg_clip(v131, v144, v29, v24, v32, v134, v25, &v141, v33, v34, v36);
  }

  v47 = v45;
  v48 = v46;
  result = HGRectIsNull(v45, v46);
  if (result)
  {
    goto LABEL_23;
  }

  v53 = HIDWORD(a3);
  v54 = a4;
  v55 = HIDWORD(a4);
  v56 = v141;
  v57 = a8;
  v51.n128_f64[0] = fmax((v48 - v47) * (1.0 / (1 << v56)) / a8, (SHIDWORD(v48) - SHIDWORD(v47)) * (1.0 / (1 << v56)) / a8);
  if (a4 - a3 == 1 && HIDWORD(a4) - HIDWORD(a3) == 1 && v51.n128_f64[0] > 1.0)
  {
    v58 = *(a1 + 480);
    v59 = *(v58 + 448);
    v61 = *(v58 + 464);
    v60 = *(v58 + 472);
    if (a7 <= 0)
    {
      v62 = 0.5;
    }

    else
    {
      v62 = 1.5;
    }

    v63 = *(v58 + 424);
    v64 = *(v58 + 480);
    v65 = *(v58 + 484);
    {
      v67 = HGGPURenderer::GetMaxTileArea(v66);
      v54 = a4;
    }

    else
    {
      v67 = 0x1000000;
    }

    *&v146.var0 = a3;
    *&v146.var2 = v54;
    *&v150.var0 = v61;
    *&v150.var2 = v60;
    v51.n128_f32[0] = v62;
    v47 = hg_clip(v59, v146, v150, v51.n128_f64[0], v63, 1.0, v57, &v141, v64, v65, v67);
    v48 = v81;
    result = HGRectIsNull(v47, v81);
    if (result)
    {
LABEL_23:
      *&v148.var0 = a3;
      *&v148.var2 = a4;
      return HGGPURenderer::ClearMetal(v18, a2[1], v148, v50);
    }

    v127 = 0;
    v56 = v142;
    v141 = v142;
    v134 = 1;
    goto LABEL_60;
  }

  if (v51.n128_f64[0] <= 2.0)
  {
    if (v51.n128_f64[0] > 1.0)
    {
      v76 = a13 + 1;
      if (HIDWORD(a4) - HIDWORD(a3) <= (a4 - a3))
      {
        v82 = HGRectMake4i(a3, HIDWORD(a3), (a3 + a4) >> 1, HIDWORD(a4));
        HGAnisotropicSampler::GetPageMetal(a1, a2, v82, v83, a5, a6, a7, a8, v76);
        v79 = HGRectMake4i((a3 + a4) >> 1, HIDWORD(a3), a4, HIDWORD(a4));
      }

      else
      {
        v77 = HGRectMake4i(a3, HIDWORD(a3), a4, (HIDWORD(a3) + HIDWORD(a4)) >> 1);
        HGAnisotropicSampler::GetPageMetal(a1, a2, v77, v78, a5, a6, a7, a8, v76);
        v79 = HGRectMake4i(a3, (HIDWORD(a3) + HIDWORD(a4)) >> 1, a4, HIDWORD(a4));
      }

      return HGAnisotropicSampler::GetPageMetal(a1, a2, v79, v80, a5, a6, a7, a8, v76);
    }

    v127 = a7;
    if (a7 >= 1)
    {
      result = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      v133 = result;
      v56 = v141;
      if (v141 > v142)
      {
        return result;
      }

LABEL_61:
      v52.f32[0] = v47;
      v52.f32[1] = SHIDWORD(v47);
      v129 = v52;
      v51.n128_f32[0] = SHIDWORD(v48);
      if (v127)
      {
        v84 = 7;
      }

      else
      {
        v84 = 8;
      }

      v52.f32[1] = SHIDWORD(v48);
      v52.f32[0] = v48;
      v128 = v52;
      v85 = a2 + 21;
      v86 = v56;
      v138 = v56;
      v87 = (32 * v56) | 0x10;
      v124 = v84;
      v122 = (a2 + 28);
      v123 = 32 * v84;
      v88 = v134;
      do
      {
        v89 = 0;
        v90 = 0x1FFFFFFFFFFFFFF0;
        v125 = v87;
        v135 = v86;
        do
        {
          v91 = *(a1 + 496);
          if (v86 + v89 - v91 >= *(a1 + 500) || v86 + v89 > v142)
          {
            break;
          }

          v93 = (*(a1 + 504) - 32 * v91 + v87);
          v94 = v93[-1];
          v95 = vaddq_f32(vmulq_f32(v129, v94), *v93).u64[0];
          v96 = vaddq_f32(vmulq_f32(v128, v94), *v93).u64[0];
          v97 = HGRectIntegral(v93, *&v95, *(&v95 + 1), *&v96, *(&v96 + 1));
          *(&v85[v90 - 1] + 4) = HGRectGrow(v97, v98, v133);
          *(&v85[v90] + 4) = v99;
          Input = HGRenderer::GetInput(v18, a1, v138 + v89 - *(a1 + 496));
          NodeBitmap = HGGPURenderer::GetNodeBitmap(v18, Input, *(&v85[v90 - 1] + 4), 0, 1u);
          v102 = HGGPURenderer::ConvertToNonGLTexture(v18, NodeBitmap);
          v103 = HGObject::operator new(0x80uLL);
          *&v147.var0 = *(v102 + 20);
          *&v147.var2 = *(v102 + 28);
          HGTexture::HGTexture(v103, v147, v102);
          v85[v89] = v103;
          (*(*v102 + 24))(v102);
          (*(*NodeBitmap + 24))(NodeBitmap);
          ++v89;
          v87 += 32;
          v90 += 2;
          v86 = v135;
        }

        while (v89 != 8);
        result = (*(**a2 + 368))(*a2, *(a1 + 64), a1, v51);
        v104 = v135;
        if (result)
        {
          if (result)
          {
            v105 = result;
            v106 = (*(*a1 + 48))(a1);
            v107 = strlen(v106);
            if (v107 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v108 = v107;
            if (v107 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v107;
            if (v107)
            {
              memmove(&__dst, v106, v107);
            }

            __dst.__r_.__value_.__s.__data_[v108] = 0;
            HGMetalHandler::SetDebugLabel(v105, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            HGMetalHandler::BindBuffer(v105, a2[1]);
            v109 = 0;
            if (v135 - *(a1 + 496) < *(a1 + 500) && v135 <= v142 && (HGMetalHandler::BindTexture(v105, 0, *v85), v109 = 1, v135 - *(a1 + 496) + 1 < *(a1 + 500)) && v135 < v142 && (HGMetalHandler::BindTexture(v105, 1, a2[22]), v109 = 2, v135 - *(a1 + 496) + 2 < *(a1 + 500)) && v135 + 2 <= v142 && (HGMetalHandler::BindTexture(v105, 2, a2[23]), v109 = 3, v135 - *(a1 + 496) + 3 < *(a1 + 500)) && v135 + 3 <= v142 && (HGMetalHandler::BindTexture(v105, 3, a2[24]), v109 = 4, v135 - *(a1 + 496) + 4 < *(a1 + 500)) && v135 + 4 <= v142 && (HGMetalHandler::BindTexture(v105, 4, a2[25]), v109 = 5, v135 - *(a1 + 496) + 5 < *(a1 + 500)) && v135 + 5 <= v142 && (HGMetalHandler::BindTexture(v105, 5, a2[26]), v109 = 6, v135 - *(a1 + 496) + 6 < *(a1 + 500)) && v135 + 6 <= v142 && (HGMetalHandler::BindTexture(v105, 6, a2[27]), v109 = 7, v135 - *(a1 + 496) + 7 < *(a1 + 500)) && (v110 = a2 + 28, v135 + 7 <= v142) || (v111 = &v85[v109], v112 = *(v111 - 1), v110 = v111 - 1, v113 = HGMetalHandler::BindTexture(v105, v109, v112), v109 != 7) && (v113 = HGMetalHandler::BindTexture(v105, v109 + 1, *v110), v109 != 6) && (v113 = HGMetalHandler::BindTexture(v105, v109 + 2, *v110), v109 != 5) && (v113 = HGMetalHandler::BindTexture(v105, v109 + 3, *v110), v109 != 4) && (v113 = HGMetalHandler::BindTexture(v105, v109 + 4, *v110), v109 != 3) && (v113 = HGMetalHandler::BindTexture(v105, v109 + 5, *v110), v109 != 2) && (v113 = HGMetalHandler::BindTexture(v105, v109 + 6, *v110), v109 += 7, v109 != 8))
            {
              v113 = HGMetalHandler::BindTexture(v105, v109, *v110);
            }

            (*(v105->__r_.__value_.__r.__words[0] + 32))(v105, 3553, 0, 0, 0, 0, 0, 0, v113, 0);
            v114 = 0;
            v115 = v125;
            v116 = v135;
            do
            {
              if (v138 + v114 - *(a1 + 496) >= *(a1 + 500) || v116 + v114 > v142)
              {
                break;
              }

              if (v85[v114])
              {
                (*(*a1 + 208))(a1, v105, v114);
                (*(v105->__r_.__value_.__r.__words[0] + 72))(v105, v114, 0);
                (*(v105->__r_.__value_.__r.__words[0] + 48))(v105, v127, v127);
                v118 = (*(a1 + 504) - 32 * *(a1 + 496) + v115);
                (*(v105->__r_.__value_.__r.__words[0] + 136))(v105, v114, v118[-1], COERCE_FLOAT(HIDWORD(v118[-1].n128_u64[0])), COERCE_FLOAT(*v118) - *(v85[v114] + 5), COERCE_FLOAT(HIDWORD(v118->n128_u64[0])) - *(v85[v114] + 6));
                v116 = v135;
              }

              ++v114;
              v115 += 32;
            }

            while (v114 != 8);
            (*(v105->__r_.__value_.__r.__words[0] + 24))(v105, 0, 0, 0, 0, 0, 0);
            (*(*a1 + 200))(a1, v105);
            (*(v105->__r_.__value_.__r.__words[0] + 136))(v105, 8, v141, v142, v135, (v135 + 7));
            (*(v105->__r_.__value_.__r.__words[0] + 136))(v105, 9, *(*(a1 + 480) + 424), 0.000001, *(*(a1 + 480) + 424), v88);
            (*(v105->__r_.__value_.__r.__words[0] + 40))(v105);
            (*(v105->__r_.__value_.__r.__words[0] + 192))(v105, a3, a4, 1);
            result = (*(*v18 + 392))(v18, v105);
            v119 = *(a1 + 496);
            v104 = v135;
            v120 = *(a1 + 500);
            if (v135 - v119 < v120)
            {
              v121 = v142;
              if (v135 <= v142)
              {
                result = *v85;
                if (*v85)
                {
                  result = (*(*result + 24))(result);
                  v119 = *(a1 + 496);
                  v120 = *(a1 + 500);
                  v121 = v142;
                  v104 = v135;
                }

                if (v104 - v119 + 1 < v120 && v104 < v121)
                {
                  result = a2[22];
                  if (result)
                  {
                    result = (*(*result + 24))(result);
                    v119 = *(a1 + 496);
                    v120 = *(a1 + 500);
                    v121 = v142;
                    v104 = v135;
                  }

                  if (v104 - v119 + 2 < v120 && v104 + 2 <= v121)
                  {
                    result = a2[23];
                    if (result)
                    {
                      result = (*(*result + 24))(result);
                      v119 = *(a1 + 496);
                      v120 = *(a1 + 500);
                      v121 = v142;
                      v104 = v135;
                    }

                    if (v104 - v119 + 3 < v120 && v104 + 3 <= v121)
                    {
                      result = a2[24];
                      if (result)
                      {
                        result = (*(*result + 24))(result);
                        v119 = *(a1 + 496);
                        v120 = *(a1 + 500);
                        v121 = v142;
                        v104 = v135;
                      }

                      if (v104 - v119 + 4 < v120 && v104 + 4 <= v121)
                      {
                        result = a2[25];
                        if (result)
                        {
                          result = (*(*result + 24))(result);
                          v119 = *(a1 + 496);
                          v120 = *(a1 + 500);
                          v121 = v142;
                          v104 = v135;
                        }

                        if (v104 - v119 + 5 < v120 && v104 + 5 <= v121)
                        {
                          result = a2[26];
                          if (result)
                          {
                            result = (*(*result + 24))(result);
                            v119 = *(a1 + 496);
                            v120 = *(a1 + 500);
                            v121 = v142;
                            v104 = v135;
                          }

                          if (v104 - v119 + 6 < v120 && v104 + 6 <= v121)
                          {
                            result = a2[27];
                            if (result)
                            {
                              result = (*(*result + 24))(result);
                              v119 = *(a1 + 496);
                              v120 = *(a1 + 500);
                              v121 = v142;
                              v104 = v135;
                            }

                            if (v104 - v119 + 7 < v120 && v135 + 7 <= v121)
                            {
                              result = *v122;
                              if (*v122)
                              {
                                result = (*(*result + 24))(result);
                                v104 = v135;
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

        v86 = v104 + v124;
        v138 += v124;
        v87 = v125 + v123;
      }

      while (v86 <= v142);
      return result;
    }

LABEL_60:
    v133 = 0;
    if (v56 > v142)
    {
      return result;
    }

    goto LABEL_61;
  }

  if (SHIDWORD(a4) > SHIDWORD(a3) && a4 > a3)
  {
    v68 = rint(fmax(sqrt((a4 - a3) * (SHIDWORD(a4) - SHIDWORD(a3)) / v51.n128_f64[0]), 1.0));
    do
    {
      v69 = v53 + v68;
      if (v53 + v68 >= v55)
      {
        v70 = v55;
      }

      else
      {
        v70 = v53 + v68;
      }

      LODWORD(result) = a3;
      v71 = a4;
      do
      {
        v72 = (result + v68);
        if (v72 >= v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = result + v68;
        }

        v74 = HGRectMake4i(result, v53, v73, v70);
        HGAnisotropicSampler::GetPageMetal(a1, a2, v74, v75, a5, a6, a7, a8, a13 + 1);
        result = v72;
        v71 = a4;
      }

      while (v72 < a4);
      LODWORD(v53) = v53 + v68;
      LODWORD(v55) = HIDWORD(a4);
    }

    while (v69 < SHIDWORD(a4));
  }

  return result;
}

void sub_25FCE0DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGAnisotropicSampler::RenderTile(HGAnisotropicSampler *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *(a2 + 42);
  v7 = (*(a2 + 3) - *(a2 + 1)) * *(a2 + 6);
  Stack = HGExecutionUnit::GetStack(v6, v7);
  v9 = *(a2 + 2);
  if (Stack == v9)
  {
    HGExecutionUnit::CommitStack(v6, *(a2 + 2), v7);
    v9 = *(a2 + 2);
  }

  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = *(a2 + 6);
  v13 = (*(**(v6 + 152) + 128))(*(v6 + 152), 3);
  HGAnisotropicSampler::GetTile(this, a2, v10, v11, v9, v12, v5, v13, 0);
  return 0;
}

void HGAnisotropicSampler::GetTile(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, float32x4_t *a5, uint64_t a6, int a7, unsigned int a8, int a9)
{
  v13 = a2;
  v676[1] = *MEMORY[0x277D85DE8];
  v633 = HIDWORD(a3);
  v636 = HIDWORD(a4);
  v15 = HIDWORD(a4) - HIDWORD(a3);
  v16 = *(a1 + 480);
  v17 = *(v16 + 436);
  v669 = *(a2 + 336);
  v18 = *(v669 + 19);
  v649 = *(v16 + 448);
  v19 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v656 = a3;
  v21 = HGRectGrow(a3, a4, v19);
  v24 = v20;
  v25 = *(a1 + 480);
  v26 = *(v25 + 464);
  if (a7 <= 0)
  {
    v27 = 0.5;
  }

  else
  {
    v27 = 1.5;
  }

  v28 = *(v25 + 424);
  v630 = v17;
  v29 = v17;
  v30 = *(v25 + 480);
  v31 = *(v25 + 484);
  lpsrc = v18;
  if (v18)
  {
    v32 = v18;
    v639 = *(v25 + 480);
    v643 = *(v25 + 472);
    v33 = v13;
    v34 = a7;
    v35 = *(v25 + 464);
    v36 = v20;
    v37 = v21;
    if (v38)
    {
      MaxTileArea = HGGPURenderer::GetMaxTileArea(v38);
    }

    else
    {
      MaxTileArea = 0x1000000;
    }

    v40 = v649;
    v21 = v37;
    v24 = v36;
    *&v26.var0 = v35;
    a7 = v34;
    v13 = v33;
    *&v26.var2 = v643;
    v30 = v639;
  }

  else
  {
    MaxTileArea = 0x1000000;
    v40 = v649;
  }

  *v640 = a4;
  v41 = (a4 - v656);
  *&v677.var0 = v21;
  *&v677.var2 = v24;
  *&v22 = v27;
  v42 = hg_clip(v40, v677, v26, v22, v28, v29, v23, v676, v30, v31, MaxTileArea);
  v44 = v43;
  if (!HGRectIsNull(v42, v43))
  {
    v45 = v42;
    v46 = HIDWORD(v42);
    v47 = v676[0];
    v650 = v45;
    v48 = v46;
    v49 = (v44 - v45) * (1.0 / (1 << v47)) * ((SHIDWORD(v44) - v46) * (1.0 / (1 << v47))) / a8;
    v644 = v13;
    if (v41 == 1 && v15 == 1 && (v50 = 1.0, v49 > 1.0))
    {
      v51 = *(a1 + 480);
      v52 = *(v51 + 448);
      v54 = *(v51 + 464);
      v53 = *(v51 + 472);
      v55 = *(v51 + 424);
      v56 = *(v51 + 480);
      v57 = *(v51 + 484);
      {
        v59 = HGGPURenderer::GetMaxTileArea(v58);
      }

      else
      {
        v59 = 0x1000000;
      }

      *&v678.var0 = v656;
      *&v678.var2 = *v640;
      *&v679.var0 = v54;
      *&v679.var2 = v53;
      *&v50 = v27;
      v85 = hg_clip(v52, v678, v679, v50, v55, 1.0, v48, v676, v56, v57, v59);
      v87 = v86;
      if (HGRectIsNull(v85, v86))
      {
        goto LABEL_13;
      }

      v617 = v87;
      v81 = 0;
      v46 = HIDWORD(v85);
      v47 = HIDWORD(v676[0]);
      LODWORD(v676[0]) = HIDWORD(v676[0]);
      v80.f32[0] = v656 + 0.5;
      v80.f32[1] = v633 + 0.5;
      v80.i32[2] = 0;
      v80.i32[3] = 1.0;
      v84 = 1;
      v650 = v85;
      v13 = v644;
    }

    else
    {
      if (v49 > 2.0)
      {
        v675 = 0;
        v673 = 0u;
        v674 = 0u;
        HGExecutionUnit::GetStackState(v669, &v673);
        if (v636 > v633 && v640[0] > v656)
        {
          v60 = rint(fmax(sqrt((v640[0] - v656) * (v636 - v633) / v49), 1.0));
          v616 = v656;
          v61 = v656 >> 32;
          do
          {
            v657 = v61;
            v62 = v61 + v60;
            v631 = v62;
            if (v62 >= v636)
            {
              v63 = v636;
            }

            else
            {
              v63 = v62;
            }

            v651 = v63;
            v634 = a5;
            v64 = a5;
            v65 = v616;
            do
            {
              v66 = v65 + v60;
              if (v60 + v65 >= v640[0])
              {
                v67 = v640[0];
              }

              else
              {
                v67 = v60 + v65;
              }

              v68 = HGRectMake4i(v65, v657, v67, v651);
              HGAnisotropicSampler::GetTile(a1, v13, v68, v69, v64, a6, a7, a8, a9 + 1);
              v670 = v673;
              v671 = v674;
              v672 = v675;
              HGExecutionUnit::SetStackState(v669, &v670);
              v64 += v60;
              v65 = v66;
            }

            while (v66 < v640[0]);
            a5 = &v634[v60 * a6];
            v61 = v631;
          }

          while (v631 < *v640 >> 32);
        }

        return;
      }

      if (v49 > 1.0)
      {
        if (v15 <= v41)
        {
          v88 = (v656 + v640[0]) >> 1;
          v675 = 0;
          v673 = 0u;
          v674 = 0u;
          v71 = v669;
          HGExecutionUnit::GetStackState(v669, &v673);
          v89 = HGRectMake4i(v656, v633, v88, v636);
          v73 = a6;
          v74 = a8;
          HGAnisotropicSampler::GetTile(a1, v13, v89, v90, a5, a6, a7, a8, a9 + 1);
          v670 = v673;
          v671 = v674;
          v672 = v675;
          HGExecutionUnit::SetStackState(v669, &v670);
          v76 = HGRectMake4i(v88, v633, v640[0], v636);
          v78 = v91;
          v79 = v88 - v656;
        }

        else
        {
          v70 = (v633 + v636) >> 1;
          v675 = 0;
          v673 = 0u;
          v674 = 0u;
          v71 = v669;
          HGExecutionUnit::GetStackState(v669, &v673);
          v72 = HGRectMake4i(v656, v633, v640[0], v70);
          v73 = a6;
          v74 = a8;
          HGAnisotropicSampler::GetTile(a1, v13, v72, v75, a5, a6, a7, a8, a9 + 1);
          v670 = v673;
          v671 = v674;
          v672 = v675;
          HGExecutionUnit::SetStackState(v669, &v670);
          v76 = HGRectMake4i(v656, v70, v640[0], v636);
          v78 = v77;
          v79 = (v70 - v633) * a6;
        }

        HGAnisotropicSampler::GetTile(a1, v13, v76, v78, &a5[v79], v73, a7, v74, a9 + 1);
        v670 = v673;
        v671 = v674;
        v672 = v675;
        HGExecutionUnit::SetStackState(v71, &v670);
        return;
      }

      v617 = v44;
      v80.f32[0] = v656 + 0.5;
      v80.f32[1] = v633 + 0.5;
      v80.i32[2] = 0;
      v80.i32[3] = 1.0;
      v81 = a7;
      if (a7 >= 1)
      {
        v658 = v80;
        v82 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        v80 = v658;
        v641 = v82;
        v83 = 0;
        v47 = v676[0];
        v84 = v630;
LABEL_47:
        v92 = *(a1 + 464);
        v93 = vaddq_f32(vmulq_laneq_f32(v92, v80, 3), vaddq_f32(vmulq_laneq_f32(*(a1 + 448), v80, 2), vaddq_f32(vmulq_n_f32(*(a1 + 416), v80.f32[0]), vmulq_lane_f32(*(a1 + 432), *v80.f32, 1))));
        v600 = v93;
        v94 = HIDWORD(v676[0]);
        if (v47 == HIDWORD(v676[0]))
        {
          v95 = *(*(a1 + 504) + 32 * (v47 - *(a1 + 496)));
          v93.f32[0] = v650;
          v93.f32[1] = v46;
          v96 = vaddq_f32(v95, vmulq_f32(v93, v95)).u64[0];
          v92.f32[0] = v617;
          v92.f32[1] = SHIDWORD(v617);
          v97 = vaddq_f32(v95, vmulq_f32(v92, v95)).u64[0];
          v98 = HGRectIntegral(HIDWORD(v617), *&v96, *(&v96 + 1), *&v97, *(&v97 + 1));
          *(v13 + 208) = HGRectGrow(v98, v99, v641);
          *(v13 + 216) = v100;
          v659 = *(v13 + 208);
          HGRenderer::RenderInput(lpsrc, v669, a1, 0, v13 + 80, *(v13 + 208), v100, 0);
          if (v15 >= 1 && v41 >= 1)
          {
            v101 = 0;
            v102 = vaddq_f32(vmulq_f32(vcvtq_f32_s32(v659), xmmword_260345850), xmmword_260816C70);
            v103 = 0uLL;
            v104 = vdupq_n_s32(0x358637BDu);
            v105.i64[0] = 0x3F0000003F000000;
            v105.i64[1] = 0x3F0000003F000000;
            do
            {
              v106 = 0;
              v107 = vaddq_f32(v600, vmulq_f32(v103, *(a1 + 432)));
              v108 = 0uLL;
              do
              {
                v117 = vaddq_f32(v107, vmulq_f32(v108, *(a1 + 416)));
                v118 = vdupq_laneq_s32(v117, 3);
                v119 = vmvnq_s8(vcgtq_f32(v118, v104));
                *v119.i8 = vpmax_s32(*v119.i8, *&vextq_s8(v119, v119, 8uLL));
                v120 = vpmax_s32(*v119.i8, *v119.i8).u32[0];
                v111 = 0uLL;
                if (!v120)
                {
                  v121 = vrecpeq_f32(v118);
                  v122 = vmulq_f32(v121, vrecpsq_f32(v118, v121));
                  v123 = vaddq_f32(*(*(a1 + 504) + 16), vmulq_f32(vmulq_f32(v117, vmulq_f32(vrecpsq_f32(v118, v122), v122)), **(a1 + 504)));
                  v124 = *(v13 + 208);
                  v125 = vaddq_f32(v123, xmmword_260815950);
                  if (v83)
                  {
                    v126 = vaddq_f32(v125, v105);
                    v127 = vcvtq_s32_f32(v126);
                    v128 = vcgtq_f32(vcvtq_f32_s32(v127), v126);
                  }

                  else
                  {
                    v124 = vaddq_s32(v124, xmmword_260343AA0);
                    v127 = vcvtq_s32_f32(v125);
                    v128 = vcltzq_f32(v125);
                  }

                  v129 = vsraq_n_s32(v127, vshlq_n_s32(vmovl_u16(vmovn_s32(v128)), 0x1FuLL), 0x1FuLL);
                  v130 = vmovl_s16(vext_s8(vmovn_s32(vcgeq_s32(vextq_s8(v129, v129, 8uLL), v124)), vmovn_s32(vcgtq_s32(v124, v129)), 4uLL));
                  *v130.i8 = vpmin_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
                  if (!vpmin_s32(*v130.i8, *v130.i8).u32[0])
                  {
                    v131 = *(v13 + 80);
                    v132 = *(v13 + 88);
                    v133 = vsubq_f32(v123, v102);
                    if (v83)
                    {
                      v109 = vaddq_f32(v133, v105);
                      v110 = vcvtq_s32_f32(v109);
                      v109.i64[0] = vaddq_s32(v110, vcgtq_f32(vcvtq_f32_s32(v110), v109)).u64[0];
                      v111 = *(v131 + 16 * (v109.i32[0] + v109.i32[1] * v132));
                    }

                    else
                    {
                      v134 = vaddq_s32(vcvtq_s32_f32(v133), vcltzq_f32(v133));
                      v135 = vsubq_f32(v133, vcvtq_f32_s32(v134)).u64[0];
                      v136 = (v131 + 16 * (v134.i32[0] + v134.i32[1] * v132));
                      v137 = vaddq_f32(*v136, vmulq_n_f32(vsubq_f32(v136[1], *v136), v135.f32[0]));
                      v111 = vaddq_f32(v137, vmulq_lane_f32(vsubq_f32(vaddq_f32(v136[v132], vmulq_n_f32(vsubq_f32(v136[v132 + 1], v136[v132]), v135.f32[0])), v137), v135, 1));
                    }
                  }
                }

                a5[v106] = v111;
                __asm { FMOV            V7.4S, #1.0 }

                v108 = vaddq_f32(v108, _Q7);
                ++v106;
              }

              while (v41 != v106);
              v103 = vaddq_f32(v103, _Q7);
              ++v101;
              a5 += a6;
            }

            while (v101 != v15);
          }

          return;
        }

        v138 = (*(a1 + 480) + 424);
        v139 = vld1q_dup_f32(v138);
        v140 = *(a1 + 496);
        if (v47 <= v140)
        {
          v47 = *(a1 + 496);
        }

        v141 = v140 + *(a1 + 500) - 1;
        if (v47 >= v141)
        {
          v142 = v140 + *(a1 + 500) - 1;
        }

        else
        {
          v142 = v47;
        }

        if (SHIDWORD(v676[0]) <= v140)
        {
          v94 = *(a1 + 496);
        }

        if (v94 >= v141)
        {
          v143 = v140 + *(a1 + 500) - 1;
        }

        else
        {
          v143 = v94;
        }

        v676[0] = __PAIR64__(v143, v142);
        v93.f32[0] = v142;
        v144 = vdupq_lane_s32(*v93.f32, 0);
        v635 = v144;
        v637 = v139;
        *v144.i32 = v143;
        v145 = vdupq_lane_s32(*v144.i8, 0);
        v632 = v145;
        if (v83)
        {
          if (v84 <= 1)
          {
            if (v94 < v142)
            {
              return;
            }

            v145.f32[0] = v650;
            v145.f32[1] = v46;
            v660 = v145;
            v145.f32[0] = v617;
            v145.f32[1] = SHIDWORD(v617);
            *v652 = v145;
            v146 = (v13 + 208);
            v147 = v13 + 80;
            if (v47 >= v141)
            {
              v47 = v141;
            }

            v148 = v47;
            v149 = (32 * v47) | 0x10;
            v150 = 0uLL;
            v151.i64[0] = 0x7F0000007FLL;
            v151.i64[1] = 0x7F0000007FLL;
            v622 = v147;
            v626 = 16 * a6;
            v612 = vnegq_f32(v151);
            v618 = vdupq_n_s32(0x358637BDu);
            v605 = vdupq_n_s32(0xC2F4531A);
            v609 = vdupq_n_s32(0x3FD92000u);
            v601 = vdupq_n_s32(0xC0C9A634);
            while (1)
            {
              v645 = v150;
              v153 = 0;
              v154 = v146;
              v665 = v149;
              do
              {
                v155 = *(a1 + 496);
                if (v148 + v153 - v155 >= *(a1 + 500) || v148 + v153 > SHIDWORD(v676[0]))
                {
                  break;
                }

                v157 = (*(a1 + 504) - 32 * v155 + v149);
                v158 = v157[-1];
                v159 = vaddq_f32(vmulq_f32(v660, v158), *v157).u64[0];
                v160 = vaddq_f32(vmulq_f32(*v652, v158), *v157).u64[0];
                v161 = HGRectIntegral(v157, *&v159, *(&v159 + 1), *&v160, *(&v160 + 1));
                v154->i64[0] = HGRectGrow(v161, v162, v641);
                v154->i64[1] = v163;
                v164 = *v154;
                *(&v673 + v153) = vaddq_f32(vmulq_f32(vcvtq_f32_s32(*v154), xmmword_260345850), xmmword_260816C70);
                HGRenderer::RenderInput(lpsrc, v669, a1, v148 + v153++ - *(a1 + 496), v154[-8].i64, v164.u64[0], v163, 0);
                v149 += 32;
                ++v154;
              }

              while (v153 != 8);
              if (v15 < 1)
              {
                v152 = v665;
                v150 = v645;
              }

              else
              {
                v150 = v645;
                if (v41 > 0)
                {
                  v165 = 0;
                  v152 = v665;
                  v166.i64[0] = 0x3400000034000000;
                  v166.i64[1] = 0x3400000034000000;
                  v167.i64[0] = 0x80000000800000;
                  v167.i64[1] = 0x80000000800000;
                  v168.i64[0] = 0x3F0000003F000000;
                  v168.i64[1] = 0x3F0000003F000000;
                  while (1)
                  {
                    v170 = 0;
                    v171 = vaddq_f32(v600, vmulq_f32(v150, *(a1 + 432)));
                    v172 = 0uLL;
                    do
                    {
                      v174 = *(a1 + 416);
                      v175 = vaddq_f32(v171, vmulq_f32(v172, v174));
                      v176 = vdupq_laneq_s32(v175, 3);
                      v177 = vmvnq_s8(vcgtq_f32(v176, v618));
                      *v177.i8 = vpmax_s32(*v177.i8, *&vextq_s8(v177, v177, 8uLL));
                      v178 = vpmax_s32(*v177.i8, *v177.i8).u32[0];
                      v179 = 0uLL;
                      if (v178)
                      {
                        goto LABEL_92;
                      }

                      v180 = vrecpeq_f32(v176);
                      v181 = vmulq_f32(v180, vrecpsq_f32(v176, v180));
                      v182 = vmulq_f32(vrecpsq_f32(v176, v181), v181);
                      v183 = vmulq_f32(v175, v182);
                      v184 = vmulq_f32(v182, vsubq_f32(v174, vmulq_laneq_f32(v183, v174, 3)));
                      v185 = vmulq_f32(v182, vsubq_f32(*(a1 + 432), vmulq_laneq_f32(v183, *(a1 + 432), 3)));
                      v184.i64[0] = vmulq_f32(v184, v184).u64[0];
                      v185.i64[0] = vmulq_f32(v185, v185).u64[0];
                      v186 = vmaxq_f32(vaddq_f32(vdupq_lane_s32(*v184.f32, 0), vdupq_lane_s32(*v184.f32, 1)), vaddq_f32(vdupq_lane_s32(*v185.f32, 0), vdupq_lane_s32(*v185.f32, 1)));
                      v187 = vrsqrteq_f32(v186);
                      v188 = vmulq_f32(v187, vrsqrtsq_f32(vmulq_f32(v186, v187), v187));
                      v189 = vbicq_s8(vmulq_f32(v186, vmulq_f32(v188, vrsqrtsq_f32(vmulq_f32(v186, v188), v188))), vceqzq_f32(v186));
                      v190 = vmulq_f32(vcvtq_f32_s32(v189), v166);
                      v191 = vcvtq_f32_s32(vcvtq_s32_f32(v190));
                      v192 = vminq_f32(vmaxq_f32(vaddq_f32(v637, vaddq_f32(vaddq_f32(vsubq_f32(v191, vandq_s8(v612, vcgtq_f32(v167, v189))), v605), vmulq_f32(vrsqrteq_f32(vaddq_f32(vsubq_f32(v190, v191), v609)), v601))), v635), v632);
                      v193 = vcvtq_f32_s32(vcvtq_s32_f32(v192));
                      v194 = vcvtq_s32_f32(vsubq_f32(v193, vcvtq_f32_s32(vcgtq_f32(v192, v193)))).u32[0];
                      v195 = v194 - v148;
                      if (v194 >= v148 && v148 + 7 >= v194)
                      {
                        v197 = (*(a1 + 504) + 32 * (v194 - *(a1 + 496)));
                        v198 = vaddq_f32(v197[1], vmulq_f32(v183, *v197));
                        v199 = vaddq_f32(vaddq_f32(v198, xmmword_260815950), v168);
                        v200 = vcvtq_s32_f32(v199);
                        v201 = vaddq_s32(v200, vcgtq_f32(vcvtq_f32_s32(v200), v199));
                        v202 = vmovl_s16(vext_s8(vmovn_s32(vcgeq_s32(vextq_s8(v201, v201, 8uLL), v146[v195])), vmovn_s32(vcgtq_s32(v146[v195], v201)), 4uLL));
                        *v202.i8 = vpmin_s32(*v202.i8, *&vextq_s8(v202, v202, 8uLL));
                        v179 = 0uLL;
                        if (!vpmin_s32(*v202.i8, *v202.i8).u32[0])
                        {
                          v203 = 16 * v195;
                          v204 = vaddq_f32(vsubq_f32(v198, *(&v673 + v203)), v168);
                          v205 = vcvtq_s32_f32(v204);
                          v204.i64[0] = vaddq_s32(v205, vcgtq_f32(vcvtq_f32_s32(v205), v204)).u64[0];
                          v179 = *(*(v622 + v203) + 16 * (v204.i32[0] + v204.i32[1] * *(v622 + v203 + 8)));
                        }

LABEL_92:
                        a5[v170] = v179;
                        __asm { FMOV            V2.4S, #1.0 }

                        v172 = vaddq_f32(v172, _Q2);
                      }

                      ++v170;
                    }

                    while (v41 != v170);
                    __asm { FMOV            V0.4S, #1.0 }

                    v150 = vaddq_f32(v150, _Q0);
                    a5 = (a5 + v626);
                    if (++v165 == v15)
                    {
                      goto LABEL_79;
                    }
                  }
                }

                v206 = v15;
                v152 = v665;
                do
                {
                  __asm { FMOV            V0.4S, #1.0 }

                  v150 = vaddq_f32(v150, _Q0);
                  a5 = (a5 + v626);
                  --v206;
                }

                while (v206);
              }

LABEL_79:
              v148 += 8;
              v149 = v152 + 256;
              if (v148 > SHIDWORD(v676[0]))
              {
                return;
              }
            }
          }

          if (v94 < v142)
          {
            return;
          }

          *v144.i32 = v84;
          v293 = vdupq_lane_s32(*v144.i8, 0);
          v145.f32[0] = v650;
          v145.f32[1] = v46;
          *v654 = v145;
          v145.f32[0] = v617;
          v145.f32[1] = SHIDWORD(v617);
          v647 = v145;
          v294 = (v13 + 208);
          v295 = v13 + 80;
          if (v47 >= v141)
          {
            v47 = v141;
          }

          v296 = v47;
          v297 = (32 * v47) | 0x10;
          v298 = 0uLL;
          v299.i64[0] = 0x80000000800000;
          v299.i64[1] = 0x80000000800000;
          v300 = vnegq_f32(v299);
          __asm { FMOV            V11.4S, #1.0 }

          v299.i64[0] = 0x7F0000007FLL;
          v299.i64[1] = 0x7F0000007FLL;
          v607 = v293;
          v603 = v295;
          v620 = a6;
          v614 = 16 * a6;
          v598 = vdupq_n_s32(0x358637BDu);
          v592 = vdupq_n_s32(0xC2F4531A);
          v594 = vdupq_n_s32(0x3FD92000u);
          v662 = vnegq_f32(v299);
          v667 = vdupq_n_s32(0xC0C9A634);
          while (1)
          {
            v624 = v298;
            v303 = 0;
            v304 = v294;
            v628 = v297;
            do
            {
              v305 = *(a1 + 496);
              if (v296 + v303 - v305 >= *(a1 + 500) || v296 + v303 > SHIDWORD(v676[0]))
              {
                break;
              }

              v307 = (*(a1 + 504) - 32 * v305 + v297);
              v308 = v307[-1];
              v309 = vaddq_f32(vmulq_f32(*v654, v308), *v307).u64[0];
              v310 = vaddq_f32(vmulq_f32(v647, v308), *v307).u64[0];
              v311 = HGRectIntegral(v307, *&v309, *(&v309 + 1), *&v310, *(&v310 + 1));
              v304->i64[0] = HGRectGrow(v311, v312, v641);
              v304->i64[1] = v313;
              v314 = *v304;
              *(&v673 + v303) = vaddq_f32(vmulq_f32(vcvtq_f32_s32(*v304), xmmword_260345850), xmmword_260816C70);
              HGRenderer::RenderInput(lpsrc, v669, a1, v296 + v303++ - *(a1 + 496), v304[-8].i64, v314.u64[0], v313, 0);
              v297 += 32;
              ++v304;
            }

            while (v303 != 8);
            if (v15 < 1)
            {
              v302 = v628;
              v298 = v624;
            }

            else
            {
              v298 = v624;
              if (v41 > 0)
              {
                v315 = 0;
                v302 = v628;
                v316.i64[0] = 0x80000000800000;
                v316.i64[1] = 0x80000000800000;
                v317.i64[0] = 0x3400000034000000;
                v317.i64[1] = 0x3400000034000000;
                v318.i64[0] = 0x80000000800000;
                v318.i64[1] = 0x80000000800000;
                v320 = v662;
                v319 = v667;
                while (1)
                {
                  v321 = 0;
                  v322 = vaddq_f32(v600, vmulq_f32(v298, *(a1 + 432)));
                  v323 = 0uLL;
                  do
                  {
                    v335 = *(a1 + 416);
                    v336 = vaddq_f32(v322, vmulq_f32(v323, v335));
                    v337 = vdupq_laneq_s32(v336, 3);
                    v338 = vmvnq_s8(vcgtq_f32(v337, v598));
                    *v338.i8 = vpmax_s32(*v338.i8, *&vextq_s8(v338, v338, 8uLL));
                    v334 = 0uLL;
                    if (vpmax_s32(*v338.i8, *v338.i8).u32[0])
                    {
                      goto LABEL_155;
                    }

                    v339 = vrecpeq_f32(v337);
                    v340 = vmulq_f32(v339, vrecpsq_f32(v337, v339));
                    v341 = vmulq_f32(vrecpsq_f32(v337, v340), v340);
                    v342 = vmulq_f32(v336, v341);
                    v343 = vmulq_f32(v341, vsubq_f32(v335, vmulq_laneq_f32(v342, v335, 3)));
                    v340.i64[0] = vmulq_f32(v343, v343).u64[0];
                    v344 = vmulq_f32(v341, vsubq_f32(*(a1 + 432), vmulq_laneq_f32(v342, *(a1 + 432), 3)));
                    v341.i64[0] = vmulq_f32(v344, v344).u64[0];
                    v345 = vaddq_f32(vdupq_lane_s32(*v340.f32, 0), vdupq_lane_s32(*v340.f32, 1));
                    v346 = vaddq_f32(vdupq_lane_s32(*v341.f32, 0), vdupq_lane_s32(*v341.f32, 1));
                    v347 = vminq_f32(v345, v346);
                    v348 = vrsqrteq_f32(v347);
                    v349 = vmulq_f32(v348, vrsqrtsq_f32(vmulq_f32(v347, v348), v348));
                    v350 = vbicq_s8(vmulq_f32(v347, vmulq_f32(v349, vrsqrtsq_f32(vmulq_f32(v347, v349), v349))), vceqzq_f32(v347));
                    v351 = vmaxq_f32(v345, v346);
                    v352 = vrsqrteq_f32(v351);
                    v353 = vmulq_f32(v352, vrsqrtsq_f32(vmulq_f32(v351, v352), v352));
                    v354 = vbicq_s8(vmulq_f32(v351, vmulq_f32(v353, vrsqrtsq_f32(vmulq_f32(v351, v353), v353))), vceqzq_f32(v351));
                    v355 = vminq_f32(vmaxq_f32(v350, v316), v300);
                    v356 = vminq_f32(vmaxq_f32(vrecpeq_f32(v355), v316), v300);
                    v357 = vminq_f32(vmaxq_f32(vmulq_f32(v356, vrecpsq_f32(v355, v356)), v316), v300);
                    v358 = vmaxq_f32(vminq_f32(vmulq_f32(v354, vmulq_f32(v357, vrecpsq_f32(v355, v357))), v607), _Q11);
                    v359 = vminq_f32(vmaxq_f32(v358, v316), v300);
                    v360 = vminq_f32(vmaxq_f32(vrecpeq_f32(v359), v316), v300);
                    v361 = vminq_f32(vmaxq_f32(vmulq_f32(v360, vrecpsq_f32(v359, v360)), v316), v300);
                    v362 = vmulq_f32(v361, vrecpsq_f32(v359, v361));
                    v363 = vmulq_f32(v354, v362);
                    v364 = vmulq_f32(vcvtq_f32_s32(v363), v317);
                    v365 = vcvtq_f32_s32(vcvtq_s32_f32(v364));
                    v366 = vminq_f32(vmaxq_f32(vaddq_f32(v637, vaddq_f32(vaddq_f32(vsubq_f32(v365, vandq_s8(v320, vcgtq_f32(v318, v363))), v592), vmulq_f32(vrsqrteq_f32(vaddq_f32(vsubq_f32(v364, v365), v594)), v319))), v635), v632);
                    v367 = vcvtq_f32_s32(vcvtq_s32_f32(v366));
                    v368 = vcvtq_s32_f32(vsubq_f32(v367, vcvtq_f32_s32(vcgtq_f32(v366, v367)))).u32[0];
                    v369 = v368 - v296;
                    if (v368 >= v296 && v296 + 7 >= v368)
                    {
                      v371 = *(a1 + 504) + 32 * (v368 - *(a1 + 496));
                      v373 = *v371;
                      v372 = *(v371 + 16);
                      v374 = vaddq_f32(v372, vmulq_f32(v342, *v371));
                      v375.i64[0] = 0x3F0000003F000000;
                      v375.i64[1] = 0x3F0000003F000000;
                      v376 = vaddq_f32(vaddq_f32(v374, xmmword_260815950), v375);
                      v377 = vcvtq_s32_f32(v376);
                      v378 = vaddq_s32(v377, vcgtq_f32(vcvtq_f32_s32(v377), v376));
                      v379 = vmovl_s16(vext_s8(vmovn_s32(vcgeq_s32(vextq_s8(v378, v378, 8uLL), v294[v369])), vmovn_s32(vcgtq_s32(v294[v369], v378)), 4uLL));
                      *v379.i8 = vpmin_s32(*v379.i8, *&vextq_s8(v379, v379, 8uLL));
                      LODWORD(v371) = vpmin_s32(*v379.i8, *v379.i8).u32[0];
                      v334 = 0uLL;
                      if (!v371)
                      {
                        v380 = vbslq_s8(vcgtq_f32(v346, v345), v344, v343);
                        v381 = vcvtq_f32_s32(vcvtq_s32_f32(v358));
                        v382 = vaddq_f32(v381, vcvtq_f32_s32(vcgtq_f32(v381, v358)));
                        v383 = vcvtq_s32_f32(v382).u32[0];
                        v384 = vminq_f32(vmaxq_f32(v382, v316), v300);
                        v385 = vminq_f32(vmaxq_f32(vrecpeq_f32(v384), v316), v300);
                        v386 = vminq_f32(vmaxq_f32(vmulq_f32(v385, vrecpsq_f32(v384, v385)), v316), v300);
                        v387 = vmulq_f32(vmulq_f32(v380, vmulq_f32(v362, v382)), vmulq_f32(v386, vrecpsq_f32(v384, v386)));
                        v388 = 16 * v369;
                        v389 = *(&v673 + v388);
                        v390 = v603 + v388;
                        v391 = *(v603 + v388);
                        LODWORD(v390) = *(v390 + 8);
                        v392.i64[0] = 0x3F0000003F000000;
                        v392.i64[1] = 0x3F0000003F000000;
                        v393 = vaddq_f32(vsubq_f32(v374, v389), v392);
                        v394 = vcvtq_s32_f32(v393);
                        v393.i64[0] = vaddq_s32(v394, vcgtq_f32(vcvtq_f32_s32(v394), v393)).u64[0];
                        v395 = *(v391 + 16 * (v393.i32[0] + v393.i32[1] * v390));
                        v396 = vdup_n_s32(v390);
                        if (v383 < 3)
                        {
                          v324 = v342;
                        }

                        else
                        {
                          v397 = v383 + 2;
                          v324 = v342;
                          do
                          {
                            v342 = vaddq_f32(v387, v342);
                            v324 = vsubq_f32(v324, v387);
                            v398 = vaddq_f32(vsubq_f32(vaddq_f32(v372, vmulq_f32(v373, v342)), v389), v392);
                            v399 = vcvtq_s32_f32(v398);
                            v400 = vaddq_f32(vsubq_f32(vaddq_f32(v372, vmulq_f32(v373, v324)), v389), v392);
                            v401 = vcvtq_s32_f32(v400);
                            *v400.f32 = vadd_s32(*v401.i8, *&vcgtq_f32(vcvtq_f32_s32(v401), v400));
                            v392.i64[0] = 0x3F0000003F000000;
                            v392.i64[1] = 0x3F0000003F000000;
                            *v398.f32 = vadd_s32(*v399.i8, *&vcgtq_f32(vcvtq_f32_s32(v399), v398));
                            *v398.f32 = vmla_s32(vzip1_s32(*v398.f32, *v400.f32), vzip2_s32(*v398.f32, *v400.f32), v396);
                            v395 = vaddq_f32(vaddq_f32(v395, *(v391 + 16 * v398.i32[0])), *(v391 + 16 * v398.i32[1]));
                            v397 -= 2;
                          }

                          while (v397 > 4);
                        }

                        v325 = vaddq_f32(v387, v342);
                        v326 = vsubq_f32(v324, v387);
                        v327 = vaddq_f32(vsubq_f32(vaddq_f32(v372, vmulq_f32(v373, v325)), v389), v392);
                        v328 = vcvtq_s32_f32(v327);
                        v329 = vaddq_f32(vsubq_f32(vaddq_f32(v372, vmulq_f32(v373, v326)), v389), v392);
                        v330 = vcvtq_s32_f32(v329);
                        *v329.f32 = vadd_s32(*v330.i8, *&vcgtq_f32(vcvtq_f32_s32(v330), v329));
                        *v327.f32 = vadd_s32(*v328.i8, *&vcgtq_f32(vcvtq_f32_s32(v328), v327));
                        *v327.f32 = vmla_s32(vzip1_s32(*v327.f32, *v329.f32), vzip2_s32(*v327.f32, *v329.f32), v396);
                        v331 = vmulq_f32(vaddq_f32(v382, _Q11), v392);
                        v332 = vcvtq_f32_s32(vcvtq_s32_f32(v331));
                        v333 = vaddq_f32(vmulq_f32(vsubq_f32(v358, v382), v392), vsubq_f32(v331, vaddq_f32(v332, vcvtq_f32_s32(vcgtq_f32(v332, v331)))));
                        v334 = vmulq_f32(v362, vaddq_f32(vaddq_f32(v395, vmulq_f32(v333, *(v391 + 16 * v327.i32[0]))), vmulq_f32(v333, *(v391 + 16 * v327.i32[1]))));
                        v320 = v662;
                        v319 = v667;
                      }

LABEL_155:
                      a5[v321] = v334;
                      v323 = vaddq_f32(v323, _Q11);
                    }

                    ++v321;
                  }

                  while (v321 != v41);
                  v298 = vaddq_f32(v298, _Q11);
                  a5 += v620;
                  if (++v315 == v15)
                  {
                    goto LABEL_140;
                  }
                }
              }

              v402 = v15;
              v302 = v628;
              do
              {
                v298 = vaddq_f32(v298, _Q11);
                a5 = (a5 + v614);
                --v402;
              }

              while (v402);
            }

LABEL_140:
            v296 += 8;
            v297 = v302 + 256;
            if (v296 > SHIDWORD(v676[0]))
            {
              return;
            }
          }
        }

        if (v84 <= 1)
        {
          if (v94 < v142)
          {
            return;
          }

          v92.f32[0] = v650;
          v92.f32[1] = v46;
          v661 = v92;
          v92.f32[0] = v617;
          v92.f32[1] = SHIDWORD(v617);
          *v653 = v92;
          v208 = (v13 + 208);
          v209 = v13 + 80;
          __asm { FMOV            V0.4S, #-1.0 }

          v211 = vaddq_f32(v145, _Q0);
          if (v47 >= v141)
          {
            v47 = v141;
          }

          v212 = v47;
          v213 = (32 * v47) | 0x10;
          v214 = 0uLL;
          v215.i64[0] = 0x7F0000007FLL;
          v215.i64[1] = 0x7F0000007FLL;
          v623 = v209;
          v613 = vdupq_n_s32(0x358637BDu);
          v619 = v211;
          v627 = 16 * a6;
          v606 = vnegq_f32(v215);
          v610 = vdupq_n_s32(0x3FD92000u);
          v602 = vdupq_n_s32(0xC2F4531A);
          v597 = vdupq_n_s32(0xC0C9A634);
          while (1)
          {
            v646 = v214;
            v217 = 0;
            v218 = v208;
            v666 = v213;
            do
            {
              v219 = *(a1 + 496);
              if (v212 + v217 - v219 >= *(a1 + 500) || v212 + v217 > SHIDWORD(v676[0]))
              {
                break;
              }

              v221 = (*(a1 + 504) - 32 * v219 + v213);
              v222 = v221[-1];
              v223 = vaddq_f32(vmulq_f32(v661, v222), *v221).u64[0];
              v224 = vaddq_f32(vmulq_f32(*v653, v222), *v221).u64[0];
              v225 = HGRectIntegral(v221, *&v223, *(&v223 + 1), *&v224, *(&v224 + 1));
              v218->i64[0] = HGRectGrow(v225, v226, v641);
              v218->i64[1] = v227;
              v228 = *v218;
              *(&v673 + v217) = vaddq_f32(vmulq_f32(vcvtq_f32_s32(*v218), xmmword_260345850), xmmword_260816C70);
              HGRenderer::RenderInput(lpsrc, v669, a1, v212 + v217++ - *(a1 + 496), v218[-8].i64, v228.u64[0], v227, 0);
              v213 += 32;
              ++v218;
            }

            while (v217 != 8);
            if (v15 < 1)
            {
              v216 = v666;
              v214 = v646;
            }

            else
            {
              v214 = v646;
              if (v41 > 0)
              {
                v229 = 0;
                v216 = v666;
                v230.i64[0] = 0x3400000034000000;
                v230.i64[1] = 0x3400000034000000;
                v231.i64[0] = 0x80000000800000;
                v231.i64[1] = 0x80000000800000;
                while (1)
                {
                  v233 = 0;
                  v234 = vaddq_f32(v600, vmulq_f32(v214, *(a1 + 432)));
                  v235 = 0uLL;
                  do
                  {
                    v237 = *(a1 + 416);
                    v238 = vaddq_f32(v234, vmulq_f32(v235, v237));
                    v239 = vdupq_laneq_s32(v238, 3);
                    v240 = vmvnq_s8(vcgtq_f32(v239, v613));
                    *v240.i8 = vpmax_s32(*v240.i8, *&vextq_s8(v240, v240, 8uLL));
                    v241 = 0uLL;
                    if (vpmax_s32(*v240.i8, *v240.i8).u32[0])
                    {
                      goto LABEL_123;
                    }

                    v242 = vrecpeq_f32(v239);
                    v243 = vmulq_f32(v242, vrecpsq_f32(v239, v242));
                    v244 = vmulq_f32(vrecpsq_f32(v239, v243), v243);
                    v245 = vmulq_f32(v238, v244);
                    v246 = vmulq_f32(v244, vsubq_f32(v237, vmulq_laneq_f32(v245, v237, 3)));
                    v246.i64[0] = vmulq_f32(v246, v246).u64[0];
                    v247 = vmulq_f32(v244, vsubq_f32(*(a1 + 432), vmulq_laneq_f32(v245, *(a1 + 432), 3)));
                    v247.i64[0] = vmulq_f32(v247, v247).u64[0];
                    v248 = vmaxq_f32(vaddq_f32(vdupq_lane_s32(*v246.f32, 0), vdupq_lane_s32(*v246.f32, 1)), vaddq_f32(vdupq_lane_s32(*v247.f32, 0), vdupq_lane_s32(*v247.f32, 1)));
                    v249 = vrsqrteq_f32(v248);
                    v250 = vmulq_f32(v249, vrsqrtsq_f32(vmulq_f32(v248, v249), v249));
                    v251 = vbicq_s8(vmulq_f32(v248, vmulq_f32(v250, vrsqrtsq_f32(vmulq_f32(v248, v250), v250))), vceqzq_f32(v248));
                    v252 = vmulq_f32(vcvtq_f32_s32(v251), v230);
                    v253 = vcvtq_f32_s32(vcvtq_s32_f32(v252));
                    v254 = vminq_f32(vmaxq_f32(vaddq_f32(v637, vaddq_f32(vaddq_f32(vsubq_f32(v253, vandq_s8(v606, vcgtq_f32(v231, v251))), v602), vmulq_f32(vrsqrteq_f32(vaddq_f32(vsubq_f32(v252, v253), v610)), v597))), v635), v632);
                    v255 = vminq_f32(v254, v619);
                    v256 = vcvtq_f32_s32(vcvtq_s32_f32(v255));
                    v257 = vaddq_f32(v256, vcvtq_f32_s32(vcgtq_f32(v256, v255)));
                    v258 = vcvtq_s32_f32(v257).u32[0];
                    if (v212 <= v258 && v212 + 6 >= v258)
                    {
                      v260 = v258;
                      v261 = (*(a1 + 504) + 32 * (v258 - *(a1 + 496)));
                      v262 = vaddq_f32(v261[3], vmulq_f32(v245, v261[2]));
                      v263 = v260 - v212;
                      v264 = vaddq_f32(v262, xmmword_260815950);
                      v265 = vaddq_s32(v208[v263 + 1], xmmword_260343AA0);
                      v266 = vaddq_s32(vcvtq_s32_f32(v264), vcltzq_f32(v264));
                      v267 = vmovl_s16(vext_s8(vmovn_s32(vcgeq_s32(vextq_s8(v266, v266, 8uLL), v265)), vmovn_s32(vcgtq_s32(v265, v266)), 4uLL));
                      *v267.i8 = vpmin_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
                      v268 = vpmin_s32(*v267.i8, *v267.i8).u32[0];
                      v241 = 0uLL;
                      if (!v268)
                      {
                        v269 = vsubq_f32(v254, v257);
                        v270 = 16 * (v263 + 1);
                        v271 = *(&v673 + v270);
                        v272 = (v623 + v270);
                        v273 = *v272;
                        v274 = *(v272 + 2);
                        v275 = vsubq_f32(v262, v271);
                        v276 = vaddq_s32(vcvtq_s32_f32(v275), vcltzq_f32(v275));
                        v275.i64[0] = vsubq_f32(v275, vcvtq_f32_s32(v276)).u64[0];
                        v277 = (v273 + 16 * (v276.i32[0] + v276.i32[1] * v274));
                        v278 = vaddq_f32(*v277, vmulq_n_f32(vsubq_f32(v277[1], *v277), v275.f32[0]));
                        v279 = vaddq_f32(v278, vmulq_lane_f32(vsubq_f32(vaddq_f32(v277[v274], vmulq_n_f32(vsubq_f32(v277[v274 + 1], v277[v274]), v275.f32[0])), v278), *v275.f32, 1));
                        v280 = vaddq_f32(v261[1], vmulq_f32(v245, *v261));
                        v281 = 16 * v263;
                        v282 = (v623 + 16 * v263);
                        v283 = *(&v673 + v281);
                        v284 = *v282;
                        v285 = *(v282 + 2);
                        v286 = vsubq_f32(v280, v283);
                        v287 = vaddq_s32(vcvtq_s32_f32(v286), vcltzq_f32(v286));
                        v286.i64[0] = vsubq_f32(v286, vcvtq_f32_s32(v287)).u64[0];
                        v288 = (v284 + 16 * (v287.i32[0] + v287.i32[1] * v285));
                        v289 = vaddq_f32(*v288, vmulq_n_f32(vsubq_f32(v288[1], *v288), v286.f32[0]));
                        v290 = vaddq_f32(v289, vmulq_lane_f32(vsubq_f32(vaddq_f32(v288[v285], vmulq_n_f32(vsubq_f32(v288[v285 + 1], v288[v285]), v286.f32[0])), v289), *v286.f32, 1));
                        v241 = vaddq_f32(v290, vmulq_f32(v269, vsubq_f32(v279, v290)));
                      }

LABEL_123:
                      a5[v233] = v241;
                      __asm { FMOV            V2.4S, #1.0 }

                      v235 = vaddq_f32(v235, _Q2);
                    }

                    ++v233;
                  }

                  while (v41 != v233);
                  __asm { FMOV            V0.4S, #1.0 }

                  v214 = vaddq_f32(v214, _Q0);
                  a5 = (a5 + v627);
                  if (++v229 == v15)
                  {
                    goto LABEL_110;
                  }
                }
              }

              v291 = v15;
              v216 = v666;
              do
              {
                __asm { FMOV            V0.4S, #1.0 }

                v214 = vaddq_f32(v214, _Q0);
                a5 = (a5 + v627);
                --v291;
              }

              while (v291);
            }

LABEL_110:
            v212 += 7;
            v213 = v216 + 224;
            if (v212 > SHIDWORD(v676[0]))
            {
              return;
            }
          }
        }

        if (v94 < v142)
        {
          return;
        }

        *v144.i32 = v84;
        v403 = vdupq_lane_s32(*v144.i8, 0);
        v92.f32[0] = v650;
        v92.f32[1] = v46;
        v608 = v92;
        v92.f32[0] = v617;
        v92.f32[1] = SHIDWORD(v617);
        v604 = v92;
        v404 = (v13 + 208);
        __asm { FMOV            V0.4S, #-1.0 }

        v406 = vaddq_f32(v145, _Q0);
        v407 = a6;
        v408 = a6;
        if (v47 >= v141)
        {
          v47 = v141;
        }

        v409 = v47;
        v410 = (32 * v47) | 0x10;
        v411 = 0uLL;
        v412.i64[0] = 0x80000000800000;
        v412.i64[1] = 0x80000000800000;
        v413 = vnegq_f32(v412);
        __asm { FMOV            V12.4S, #1.0 }

        v412.i64[0] = 0x7F0000007FLL;
        v412.i64[1] = 0x7F0000007FLL;
        v663 = vdupq_n_s32(0x3FD92000u);
        v668 = vnegq_f32(v412);
        v648 = vdupq_n_s32(0xC0C9A634);
        v655 = vdupq_n_s32(0xC2F4531A);
        v621 = v406;
        v625 = v403;
        v595 = v408;
        v591 = v13 + 80;
        v593 = 16 * v407;
        v611 = v413;
        v615 = vdupq_n_s32(0x358637BDu);
        v629 = _Q12;
        while (1)
        {
          v596 = v411;
          v416 = 0;
          v417 = v404;
          v599 = v410;
          do
          {
            v418 = *(a1 + 496);
            if (v409 + v416 - v418 >= *(a1 + 500) || v409 + v416 > SHIDWORD(v676[0]))
            {
              break;
            }

            v420 = (*(a1 + 504) - 32 * v418 + v410);
            v421 = v420[-1];
            v422 = vaddq_f32(vmulq_f32(v608, v421), *v420).u64[0];
            v423 = vaddq_f32(vmulq_f32(v604, v421), *v420).u64[0];
            v424 = HGRectIntegral(v420, *&v422, *(&v422 + 1), *&v423, *(&v423 + 1));
            v417->i64[0] = HGRectGrow(v424, v425, v641);
            v417->i64[1] = v426;
            v427 = *v417;
            *(&v673 + v416) = vaddq_f32(vmulq_f32(vcvtq_f32_s32(*v417), xmmword_260345850), xmmword_260816C70);
            HGRenderer::RenderInput(lpsrc, v669, a1, v409 + v416++ - *(a1 + 496), v417[-8].i64, v427.u64[0], v426, 0);
            v410 += 32;
            ++v417;
          }

          while (v416 != 8);
          if (v15 < 1)
          {
            v415 = v599;
            v411 = v596;
          }

          else
          {
            v429 = v635;
            v428 = v637;
            v411 = v596;
            v430 = v629;
            if (v41 > 0)
            {
              v431 = 0;
              v432 = v632;
              v433 = v621;
              v434 = v625;
              v415 = v599;
              v436 = v611;
              v435 = v615;
              v437.i64[0] = 0x80000000800000;
              v437.i64[1] = 0x80000000800000;
              v438.i64[0] = 0x3400000034000000;
              v438.i64[1] = 0x3400000034000000;
              v439.i64[0] = 0x80000000800000;
              v439.i64[1] = 0x80000000800000;
              while (1)
              {
                v440 = 0;
                v441 = v411;
                v442 = vaddq_f32(v600, vmulq_f32(v411, *(a1 + 432)));
                v443 = 0uLL;
                do
                {
                  v475 = *(a1 + 416);
                  v476 = vaddq_f32(v442, vmulq_f32(v443, v475));
                  v477 = vdupq_laneq_s32(v476, 3);
                  v478 = vmvnq_s8(vcgtq_f32(v477, v435));
                  *v478.i8 = vpmax_s32(*v478.i8, *&vextq_s8(v478, v478, 8uLL));
                  v474 = 0uLL;
                  if (vpmax_s32(*v478.i8, *v478.i8).u32[0])
                  {
                    goto LABEL_190;
                  }

                  v479 = vrecpeq_f32(v477);
                  v480 = vmulq_f32(v479, vrecpsq_f32(v477, v479));
                  v481 = vmulq_f32(vrecpsq_f32(v477, v480), v480);
                  v482 = vmulq_f32(v476, v481);
                  v483 = vmulq_f32(v481, vsubq_f32(v475, vmulq_laneq_f32(v482, v475, 3)));
                  v484 = vmulq_f32(v481, vsubq_f32(*(a1 + 432), vmulq_laneq_f32(v482, *(a1 + 432), 3)));
                  v485 = vaddq_f32(v483, v484);
                  v486 = vmulq_f32(v483, v483).u64[0];
                  v487 = vsubq_f32(v483, v484);
                  v480.i64[0] = vmulq_f32(v484, v484).u64[0];
                  v488 = vdupq_lane_s32(*v480.f32, 0);
                  v489 = vaddq_f32(vdupq_lane_s32(v486, 0), vdupq_lane_s32(v486, 1));
                  v490 = vdupq_lane_s32(*v480.f32, 1);
                  v480.i64[0] = vmulq_f32(v485, v485).u64[0];
                  v491 = vaddq_f32(v488, v490);
                  v488.i64[0] = vmulq_f32(v487, v487).u64[0];
                  v492 = vaddq_f32(vdupq_lane_s32(*v480.f32, 0), vdupq_lane_s32(*v480.f32, 1));
                  v493 = vaddq_f32(vdupq_lane_s32(*v488.f32, 0), vdupq_lane_s32(*v488.f32, 1));
                  v494 = vcgtq_f32(vminq_f32(v489, v491), vminq_f32(v492, v493));
                  v495 = vbslq_s8(v494, v492, v489);
                  v496 = vbslq_s8(v494, v493, v491);
                  v497 = vminq_f32(v495, v496);
                  v498 = vrsqrteq_f32(v497);
                  v499 = vmulq_f32(v498, vrsqrtsq_f32(vmulq_f32(v497, v498), v498));
                  v500 = vbicq_s8(vmulq_f32(v497, vmulq_f32(v499, vrsqrtsq_f32(vmulq_f32(v497, v499), v499))), vceqzq_f32(v497));
                  v501 = vmaxq_f32(v495, v496);
                  v502 = vrsqrteq_f32(v501);
                  v503 = vmulq_f32(v502, vrsqrtsq_f32(vmulq_f32(v501, v502), v502));
                  v504 = vbicq_s8(vmulq_f32(v501, vmulq_f32(v503, vrsqrtsq_f32(vmulq_f32(v501, v503), v503))), vceqzq_f32(v501));
                  v505 = vminq_f32(vmaxq_f32(v500, v437), v436);
                  v506 = vminq_f32(vmaxq_f32(vrecpeq_f32(v505), v437), v436);
                  v507 = vminq_f32(vmaxq_f32(vmulq_f32(v506, vrecpsq_f32(v505, v506)), v437), v436);
                  v508 = vmaxq_f32(vminq_f32(vmulq_f32(v504, vmulq_f32(v507, vrecpsq_f32(v505, v507))), v434), v430);
                  v509 = vminq_f32(vmaxq_f32(v508, v437), v436);
                  v510 = vminq_f32(vmaxq_f32(vrecpeq_f32(v509), v437), v436);
                  v511 = vminq_f32(vmaxq_f32(vmulq_f32(v510, vrecpsq_f32(v509, v510)), v437), v436);
                  v512 = vmulq_f32(v511, vrecpsq_f32(v509, v511));
                  v513 = vmulq_f32(v504, v512);
                  v514 = vmulq_f32(vcvtq_f32_s32(v513), v438);
                  v515 = vcvtq_f32_s32(vcvtq_s32_f32(v514));
                  v516 = vminq_f32(vmaxq_f32(vaddq_f32(v428, vaddq_f32(vaddq_f32(vsubq_f32(v515, vandq_s8(v668, vcgtq_f32(v439, v513))), v655), vmulq_f32(vrsqrteq_f32(vaddq_f32(vsubq_f32(v514, v515), v663)), v648))), v429), v432);
                  v517 = vminq_f32(v516, v433);
                  v518 = vcvtq_f32_s32(vcvtq_s32_f32(v517));
                  v519 = vaddq_f32(v518, vcvtq_f32_s32(vcgtq_f32(v518, v517)));
                  v520 = vcvtq_s32_f32(v519).u32[0];
                  if (v409 <= v520 && v409 + 6 >= v520)
                  {
                    v522 = v520;
                    v523 = *(a1 + 504) + 32 * (v520 - *(a1 + 496));
                    v525 = *(v523 + 32);
                    v524 = *(v523 + 48);
                    v526 = vaddq_f32(v524, vmulq_f32(v482, v525));
                    v527 = v522 - v409;
                    v528 = vaddq_f32(v526, xmmword_260815950);
                    v529 = vaddq_s32(v404[v527 + 1], xmmword_260343AA0);
                    v530 = vaddq_s32(vcvtq_s32_f32(v528), vcltzq_f32(v528));
                    v531 = vmovl_s16(vext_s8(vmovn_s32(vcgeq_s32(vextq_s8(v530, v530, 8uLL), v529)), vmovn_s32(vcgtq_s32(v529, v530)), 4uLL));
                    *v531.i8 = vpmin_s32(*v531.i8, *&vextq_s8(v531, v531, 8uLL));
                    v532 = vpmin_s32(*v531.i8, *v531.i8).u32[0];
                    v474 = 0uLL;
                    if (!v532)
                    {
                      v533 = vbslq_s8(vcgtq_f32(v496, v495), vbslq_s8(v494, v487, v484), vbslq_s8(v494, v485, v483));
                      v534 = vcvtq_f32_s32(vcvtq_s32_f32(v508));
                      v535 = vaddq_f32(v534, vcvtq_f32_s32(vcgtq_f32(v534, v508)));
                      v536 = vcvtq_s32_f32(v535).u32[0];
                      v537 = vminq_f32(vmaxq_f32(v535, v437), v436);
                      v538 = vminq_f32(vmaxq_f32(vrecpeq_f32(v537), v437), v436);
                      v539 = vminq_f32(vmaxq_f32(vmulq_f32(v538, vrecpsq_f32(v537, v538)), v437), v436);
                      v540 = vmulq_f32(vmulq_f32(v533, vmulq_f32(v512, v535)), vmulq_f32(v539, vrecpsq_f32(v537, v539)));
                      v541 = 16 * (v527 + 1);
                      v542 = *(&v673 + v541);
                      v543 = v591 + v541;
                      v544 = *(v591 + v541);
                      v545 = *(v543 + 8);
                      v546 = vsubq_f32(v526, v542);
                      v547 = vaddq_s32(vcvtq_s32_f32(v546), vcltzq_f32(v546));
                      v546.i64[0] = vsubq_f32(v546, vcvtq_f32_s32(v547)).u64[0];
                      v548 = (v544 + 16 * (v547.i32[0] + v547.i32[1] * v545));
                      v549 = vaddq_f32(*v548, vmulq_n_f32(vsubq_f32(v548[1], *v548), v546.f32[0]));
                      v550 = vaddq_f32(v549, vmulq_lane_f32(vsubq_f32(vaddq_f32(v548[v545], vmulq_n_f32(vsubq_f32(v548[v545 + 1], v548[v545]), v546.f32[0])), v549), *v546.f32, 1));
                      v552 = *v523;
                      v551 = *(v523 + 16);
                      v553 = (v591 + 16 * v527);
                      v554 = *(&v673 + v527);
                      v555 = *v553;
                      v556 = *(v553 + 2);
                      v557 = vsubq_f32(vaddq_f32(v551, vmulq_f32(v482, *v523)), v554);
                      v558 = vaddq_s32(vcvtq_s32_f32(v557), vcltzq_f32(v557));
                      v557.i64[0] = vsubq_f32(v557, vcvtq_f32_s32(v558)).u64[0];
                      v559 = (*v553 + 16 * (v558.i32[0] + v558.i32[1] * v556));
                      v560 = vaddq_f32(*v559, vmulq_n_f32(vsubq_f32(v559[1], *v559), v557.f32[0]));
                      v561 = vaddq_f32(v560, vmulq_lane_f32(vsubq_f32(vaddq_f32(v559[v556], vmulq_n_f32(vsubq_f32(v559[v556 + 1], v559[v556]), v557.f32[0])), v560), *v557.f32, 1));
                      v562 = v545;
                      if (v536 < 3)
                      {
                        v444 = v482;
                      }

                      else
                      {
                        v563 = vdup_n_s32(v556);
                        v564 = vdup_n_s32(v545);
                        v565 = v536 + 2;
                        v444 = v482;
                        do
                        {
                          v444 = vaddq_f32(v540, v444);
                          v482 = vsubq_f32(v482, v540);
                          v566 = vsubq_f32(vaddq_f32(v551, vmulq_f32(v552, v444)), v554);
                          v567 = vaddq_s32(vcvtq_s32_f32(v566), vcltzq_f32(v566));
                          v568 = vsubq_f32(vaddq_f32(v551, vmulq_f32(v552, v482)), v554);
                          v569 = vaddq_s32(vcvtq_s32_f32(v568), vcltzq_f32(v568));
                          v570 = vsubq_f32(v566, vcvtq_f32_s32(v567)).u64[0];
                          *v567.i8 = vmla_s32(vzip1_s32(*v567.i8, *v569.i8), vzip2_s32(*v567.i8, *v569.i8), v563);
                          v571 = v567.i32[1];
                          v566.i64[0] = vsubq_f32(v568, vcvtq_f32_s32(v569)).u64[0];
                          v572 = (v555 + 16 * v567.i32[0]);
                          v573 = vaddq_f32(*v572, vmulq_n_f32(vsubq_f32(v572[1], *v572), v570.f32[0]));
                          v574 = (v555 + 16 * v571);
                          v575 = vsubq_f32(vaddq_f32(v524, vmulq_f32(v525, v444)), v542);
                          v576 = vaddq_f32(*v574, vmulq_n_f32(vsubq_f32(v574[1], *v574), v566.f32[0]));
                          v577 = vaddq_s32(vcvtq_s32_f32(v575), vcltzq_f32(v575));
                          v575.i64[0] = vsubq_f32(v575, vcvtq_f32_s32(v577)).u64[0];
                          v578 = vsubq_f32(vaddq_f32(v524, vmulq_f32(v525, v482)), v542);
                          v579 = vaddq_s32(vcvtq_s32_f32(v578), vcltzq_f32(v578));
                          v580 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v572[v556], vmulq_n_f32(vsubq_f32(v572[v556 + 1], v572[v556]), v570.f32[0])), v573), v570, 1);
                          v581 = vsubq_f32(v578, vcvtq_f32_s32(v579)).u64[0];
                          *v577.i8 = vmla_s32(vzip1_s32(*v577.i8, *v579.i8), vzip2_s32(*v577.i8, *v579.i8), v564);
                          v582 = vsubq_f32(vaddq_f32(v574[v556], vmulq_n_f32(vsubq_f32(v574[v556 + 1], v574[v556]), v566.f32[0])), v576);
                          v583 = (v544 + 16 * v577.i32[0]);
                          v584 = vaddq_f32(v573, v580);
                          v585 = vaddq_f32(*v583, vmulq_n_f32(vsubq_f32(v583[1], *v583), v575.f32[0]));
                          v586 = vaddq_f32(v561, v584);
                          v587 = vaddq_f32(v585, vmulq_lane_f32(vsubq_f32(vaddq_f32(v583[v545], vmulq_n_f32(vsubq_f32(v583[v545 + 1], v583[v545]), v575.f32[0])), v585), *v575.f32, 1));
                          v588 = (v544 + 16 * v577.i32[1]);
                          v589 = vaddq_f32(*v588, vmulq_n_f32(vsubq_f32(v588[1], *v588), v581.f32[0]));
                          v561 = vaddq_f32(v586, vaddq_f32(v576, vmulq_lane_f32(v582, *v566.f32, 1)));
                          v550 = vaddq_f32(vaddq_f32(v550, v587), vaddq_f32(v589, vmulq_lane_f32(vsubq_f32(vaddq_f32(v588[v545], vmulq_n_f32(vsubq_f32(v588[v545 + 1], v588[v545]), v581.f32[0])), v589), v581, 1)));
                          v565 -= 2;
                        }

                        while (v565 > 4);
                      }

                      v445 = vsubq_f32(v516, v519);
                      v430 = v629;
                      v446.i64[0] = 0x3F0000003F000000;
                      v446.i64[1] = 0x3F0000003F000000;
                      v447 = vmulq_f32(vaddq_f32(v535, v629), v446);
                      v448 = vcvtq_f32_s32(vcvtq_s32_f32(v447));
                      v449 = vsubq_f32(v447, vaddq_f32(v448, vcvtq_f32_s32(vcgtq_f32(v448, v447))));
                      v450 = vmulq_f32(vsubq_f32(v508, v535), v446);
                      v451 = vaddq_f32(v540, v444);
                      v452 = vsubq_f32(v482, v540);
                      v453 = vsubq_f32(vaddq_f32(v551, vmulq_f32(v552, v451)), v554);
                      v454 = vaddq_s32(vcvtq_s32_f32(v453), vcltzq_f32(v453));
                      v455 = vsubq_f32(vaddq_f32(v551, vmulq_f32(v552, v452)), v554);
                      v456 = vaddq_s32(vcvtq_s32_f32(v455), vcltzq_f32(v455));
                      v457 = vmla_s32(vzip1_s32(*v454.i8, *v456.i8), vzip2_s32(*v454.i8, *v456.i8), vdup_n_s32(v556));
                      v458 = vaddq_f32(v450, v449);
                      v459 = (v555 + 16 * v457.i32[0]);
                      v453.i64[0] = vsubq_f32(v453, vcvtq_f32_s32(v454)).u64[0];
                      v455.i64[0] = vsubq_f32(v455, vcvtq_f32_s32(v456)).u64[0];
                      v460 = vaddq_f32(*v459, vmulq_n_f32(vsubq_f32(v459[1], *v459), v453.f32[0]));
                      v461 = vaddq_f32(v561, vmulq_f32(v458, vaddq_f32(v460, vmulq_lane_f32(vsubq_f32(vaddq_f32(v459[v556], vmulq_n_f32(vsubq_f32(v459[v556 + 1], v459[v556]), v453.f32[0])), v460), *v453.f32, 1))));
                      v462 = (v555 + 16 * v457.i32[1]);
                      v463 = vaddq_f32(*v462, vmulq_n_f32(vsubq_f32(v462[1], *v462), v455.f32[0]));
                      v464 = vaddq_f32(v461, vmulq_f32(v458, vaddq_f32(v463, vmulq_lane_f32(vsubq_f32(vaddq_f32(v462[v556], vmulq_n_f32(vsubq_f32(v462[v556 + 1], v462[v556]), v455.f32[0])), v463), *v455.f32, 1))));
                      v465 = vsubq_f32(vaddq_f32(v524, vmulq_f32(v525, v451)), v542);
                      v466 = vaddq_s32(vcvtq_s32_f32(v465), vcltzq_f32(v465));
                      v465.i64[0] = vsubq_f32(v465, vcvtq_f32_s32(v466)).u64[0];
                      v467 = vsubq_f32(vaddq_f32(v524, vmulq_f32(v525, v452)), v542);
                      v468 = vaddq_s32(vcvtq_s32_f32(v467), vcltzq_f32(v467));
                      v467.i64[0] = vsubq_f32(v467, vcvtq_f32_s32(v468)).u64[0];
                      *v468.i8 = vmla_s32(vzip1_s32(*v466.i8, *v468.i8), vzip2_s32(*v466.i8, *v468.i8), vdup_n_s32(v545));
                      v469 = v468.i32[1];
                      v470 = (v544 + 16 * v468.i32[0]);
                      v471 = vaddq_f32(*v470, vmulq_n_f32(vsubq_f32(v470[1], *v470), v465.f32[0]));
                      v472 = (v544 + 16 * v469);
                      v473 = vaddq_f32(*v472, vmulq_n_f32(vsubq_f32(v472[1], *v472), v467.f32[0]));
                      v474 = vmulq_f32(v512, vaddq_f32(v464, vmulq_f32(v445, vsubq_f32(vaddq_f32(vaddq_f32(v550, vmulq_f32(v458, vaddq_f32(v471, vmulq_lane_f32(vsubq_f32(vaddq_f32(v470[v562], vmulq_n_f32(vsubq_f32(v470[v562 + 1], v470[v562]), v465.f32[0])), v471), *v465.f32, 1)))), vmulq_f32(v458, vaddq_f32(v473, vmulq_lane_f32(vsubq_f32(vaddq_f32(v472[v562], vmulq_n_f32(vsubq_f32(v472[v562 + 1], v472[v562]), v467.f32[0])), v473), *v467.f32, 1)))), v464))));
                      v429 = v635;
                      v428 = v637;
                      v432 = v632;
                      v433 = v621;
                      v434 = v625;
                      v436 = v611;
                      v435 = v615;
                      v437.i64[0] = 0x80000000800000;
                      v437.i64[1] = 0x80000000800000;
                      v438.i64[0] = 0x3400000034000000;
                      v438.i64[1] = 0x3400000034000000;
                      v439.i64[0] = 0x80000000800000;
                      v439.i64[1] = 0x80000000800000;
                    }

LABEL_190:
                    a5[v440] = v474;
                    v443 = vaddq_f32(v443, v430);
                  }

                  ++v440;
                }

                while (v440 != v41);
                v411 = vaddq_f32(v441, v430);
                a5 += v595;
                if (++v431 == v15)
                {
                  goto LABEL_175;
                }
              }
            }

            v590 = v15;
            v415 = v599;
            do
            {
              v411 = vaddq_f32(v411, v629);
              a5 = (a5 + v593);
              --v590;
            }

            while (v590);
          }

LABEL_175:
          v409 += 7;
          v410 = v415 + 224;
          if (v409 > SHIDWORD(v676[0]))
          {
            return;
          }
        }
      }

      v84 = v630;
    }

    v641 = 0;
    v83 = v81 == 0;
    goto LABEL_47;
  }

  if (v15 >= 1 && v41 >= 1)
  {
    do
    {
LABEL_13:
      bzero(a5, 16 * (v640[0] + ~v656) + 16);
      a5 += a6;
      --v15;
    }

    while (v15);
  }
}

void HGAnisotropicXForm::HGAnisotropicXForm(HGAnisotropicXForm *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28721F568;
  v3 = HGObject::operator new(0x300uLL);
  HGMipmap::HGMipmap(v3);
  *(this + 51) = v3;
  HGMipmap::SetLodFilter(v3, 3, v4);
  v5 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v5);
  *(this + 55) = v5;
  v6 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v6);
  *(this + 57) = v6;
  v7 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v7);
  *(this + 56) = v7;
  v8 = HGObject::operator new(0x210uLL);
  HGNode::HGNode(v8);
  *v8 = &unk_28721F318;
  *(v8 + 63) = 0;
  *(v8 + 125) = 0;
  *(v8 + 512) = 0;
  *(v8 + 4) |= 0x600u;
  *(this + 52) = v8;
  *(this + 53) = 0;
  *(this + 54) = 0x141800000;
}

void sub_25FCE3524(_Unwind_Exception *a1)
{
  v3 = v2;
  HGObject::operator delete(v3);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGAnisotropicXForm::~HGAnisotropicXForm(HGAnisotropicXForm *this)
{
  *this = &unk_28721F568;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 55) = 0;
  }

  v3 = *(this + 57);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 57) = 0;
  }

  v4 = *(this + 56);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 56) = 0;
  }

  (*(**(this + 52) + 24))(*(this + 52));
  (*(**(this + 51) + 24))(*(this + 51));

  HGNode::~HGNode(this);
}

{
  HGAnisotropicXForm::~HGAnisotropicXForm(this);

  HGObject::operator delete(v1);
}

uint64_t HGAnisotropicXForm::SetParameter(HGAnisotropicXForm *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 106) != a3)
  {
    *(this + 106) = a3;
    v8 = 1;
    if (*(this + 107) == a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (*(this + 107) != a4)
  {
LABEL_5:
    *(this + 107) = a4;
    v8 = 1;
  }

LABEL_6:
  if (*(this + 108) != a5)
  {
    *(this + 108) = a5;
    if (a6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a6;
    }

    if (*(this + 109) == v9)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = a6;
  if (a6 <= 1)
  {
    v9 = 1;
  }

  if (*(this + 109) != v9)
  {
LABEL_19:
    *(this + 109) = v9;
    goto LABEL_20;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_20:
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HGAnisotropicXForm::SetInput(HGNode *this, int a2, HGNode *a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = HGNode::SetInput(this, a2, a3);
  (*(**(this + 51) + 120))(*(this + 51), 0, a3);
  return v6;
}

uint64_t HGAnisotropicXForm::SetTransform(HGAnisotropicXForm *this, HGTransform *a2)
{
  v3 = **(this + 55);
  if (a2)
  {
    if ((*(v3 + 232))())
    {
      return 0;
    }

    else
    {
      (*(**(this + 55) + 96))(*(this + 55), a2);
      HGNode::ClearBits(this, v6, v7);
      return 1;
    }
  }

  else if ((*(v3 + 224))())
  {
    return 0;
  }

  else
  {
    (*(**(this + 55) + 56))(*(this + 55));
    HGNode::ClearBits(this, v8, v9);
    return 1;
  }
}

BOOL HGAnisotropicXForm::setup(uint64_t a1, const void *a2, HGRect a3, HGRect a4, int *a5, int a6, double a7, double a8, double a9, double a10)
{
  *(a1 + 464) = a4;
  v13 = *(a1 + 448);
  LODWORD(a7) = 0.5;
  if (a6 > 0)
  {
    *&a7 = 1.5;
  }

  LODWORD(a10) = *(a1 + 432);
  v14 = hg_clip(v13, a3, a4, a7, *(a1 + 424), *(a1 + 436), a10, a5, *(a1 + 428), *&a10, 0xFFFFFFFF);
  v16 = HIDWORD(v14);
  if (a2)
  {
    v17 = v15;
    v18 = v14;
    if (v19)
    {
      MaxTileArea = HGGPURenderer::GetMaxTileArea(v19);
    }

    else
    {
      MaxTileArea = 0x1000000;
    }

    v14 = v18;
    v15 = v17;
  }

  else
  {
    MaxTileArea = 0x1000000;
  }

  v21 = a5[1];
  v22 = *(a1 + 432);
  for (i = (HIDWORD(v15) - v16) * (v15 - v14); MaxTileArea < i && v21 < v22; i = vcvtd_n_f64_u32(i, 2uLL))
  {
    ++v21;
  }

  a5[1] = v21;
  return !HGRectIsNull(v14, v15);
}

HGNode *HGAnisotropicXForm::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(**(this + 57) + 96))(*(this + 57), *(this + 55));
  (*(**(this + 57) + 184))(*(this + 57));
  if ((*(**(this + 57) + 224))(*(this + 57)))
  {
    return Input;
  }

  (*(**(this + 56) + 96))(*(this + 56), *(this + 57));
  (*(**(this + 56) + 168))(*(this + 56));
  DOD = HGRenderer::GetDOD(a2, Input);
  v8 = v7;
  LODWORD(v9) = 1.5;
  *&v20.var0 = DOD;
  *&v20.var2 = v8;
  v11 = hg_dod(*(this + 57), v20, v9, v10);
  v13 = v12;
  v14 = (*(*this + 312))(this, a2);
  *&v21.var0 = v11;
  *&v21.var2 = v13;
  *&v22.var0 = DOD;
  *&v22.var2 = v8;
  if (HGAnisotropicXForm::setup(this, a2, v21, v22, this + 120, v15, v14, v16, v17, v18))
  {
    (*(**(this + 51) + 576))(*(this + 51), *(this + 57), *(this + 56), *(this + 109));
    v19 = HGAnisotropicSampler::Init(*(this + 52), a2, this, *(this + 51), *(this + 120), *(this + 121), DOD, v8);
    if (*(this + 121) > v19)
    {
      *(this + 121) = v19;
    }

    return *(this + 52);
  }

  else
  {
    *(this + 60) = -1;
    return this;
  }
}

uint64_t HGAnisotropicXForm::SetLodFilter(uint64_t a1, uint64_t a2, char *a3)
{
  if (HGMipmap::SetLodFilter(*(a1 + 408), a2, a3) != 1)
  {
    return 0;
  }

  HGNode::ClearBits(a1, v4, v5);
  return 1;
}

double rho(float *a1, const double *a2, double a3)
{
  v3 = *a1;
  v4 = a2[3];
  v5 = a1[3];
  v6 = (*a2 - v4 * v3) / v5;
  v7 = a1[1];
  v8 = (a2[1] - v4 * v7) / v5;
  v9 = a2[7];
  v10 = (a2[4] - v9 * v3) / v5;
  v11 = (a2[5] - v9 * v7) / v5;
  v12 = v8 + v11;
  v13 = v8 - v11;
  v14 = v6 * v6 + v8 * v8;
  v15 = v10 * v10 + v11 * v11;
  v16 = (v6 + v10) * (v6 + v10) + v12 * v12;
  v17 = (v6 - v10) * (v6 - v10) + v13 * v13;
  if (a3 <= 1.0)
  {
    v24 = fmax(v14, v15);
    v25 = fmax(v16, v17);
    return sqrtf(fminf(v24, v25));
  }

  else
  {
    v18 = fmin(v14, v15);
    v19 = fmin(v16, v17);
    v20 = a3;
    if (v19 >= v18)
    {
      v26 = sqrt(fmax(v14, v15));
      v27 = v26 / sqrt(v18);
      return v26 / fminf(v27, v20);
    }

    else
    {
      v21 = sqrt(fmax(v16, v17));
      v22 = v21 / sqrt(v19);
      return v21 / fminf(v22, v20);
    }
  }
}

uint64_t HGApply1DLUT::Init(HGApply1DLUT *this, int a2, float a3, float a4, char a5, char a6, char a7, char a8, char a9, char a10)
{
  *(this + 440) = 1;
  *(this + 112) = a3;
  *(this + 113) = a4;
  *(this + 456) = a5;
  *(this + 457) = a6;
  *(this + 458) = a7;
  *(this + 459) = a8;
  *(this + 111) = a2;
  *(this + 461) = a10;
  *(this + 460) = a9;
  v12 = *(this + 52);
  if (v12)
  {
    (*(*v12 + 24))(v12);
    *(this + 52) = 0;
  }

  v13 = *(this + 51);
  if (v13)
  {
    (*(*v13 + 24))(v13);
    *(this + 51) = 0;
  }

  v14 = HGRectMake4i(0, 0, *(this + 111) + 1, 1u);
  *(this + 53) = v14;
  *(this + 54) = v15;
  if ((v15 - v14) >= 0x801)
  {
    *(this + 53) = HGRectMake4i(0, 0, 0x800u, ((v15 - v14) >> 11) + 1);
    *(this + 54) = v16;
  }

  v17 = HGObject::operator new(0x1F0uLL);
  HGNode::HGNode(v17);
  *v17 = &unk_28721FA68;
  *(v17 + 480) = a9;
  HGNode::SetFlags(v17, 1, 4);
  *(v17 + 4) |= 0x600u;
  *(this + 51) = v17;
  *(v17 + 29) = *(this + 424);
  v18 = (*(this + 111) - 1);
  v19 = *(this + 112);
  v20 = v18 / v19;
  v21 = -(v18 * *(this + 113)) / v19;
  v22.n128_u64[0] = 0x4500000045000000;
  v23.n128_u64[0] = 0x3A0000003A000000;
  (*(**(this + 51) + 96))(*(this + 51), 0, v20, v21, v22, v23);
  (*(**(this + 51) + 96))(*(this + 51), 1, (*(this + 111) - 1), (*(this + 111) - 1), (*(this + 111) - 1), (*(this + 111) - 1));
  v24.n128_f32[0] = -(*(this + 456) ^ 1);
  v25.n128_f32[0] = -(*(this + 457) ^ 1);
  v26.n128_f32[0] = -(*(this + 458) ^ 1);
  v27.n128_f32[0] = -(*(this + 459) ^ 1);
  v28 = *(**(this + 51) + 96);

  return v28(v24, v25, v26, v27);
}

void sub_25FCE40FC(_Unwind_Exception *a1)
{
  HGNode::~HGNode(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void HGApply1DLUT::HGApply1DLUT(HGApply1DLUT *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28721F800;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 460) = 1;
  HGApply1DLUT::Init(v1, 256, 1.0, 0.0, 1, 1, 1, 0, 1, 1);
}

void HGApply1DLUT::HGApply1DLUT(HGApply1DLUT *this, int a2, float a3, float a4, char a5, char a6, char a7, char a8, char a9, char a10)
{
  HGNode::HGNode(this);
  *v19 = &unk_28721F800;
  *(v19 + 51) = 0;
  *(v19 + 52) = 0;
  HGApply1DLUT::Init(v19, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void HGApply1DLUT::~HGApply1DLUT(HGNode *this)
{
  *this = &unk_28721F800;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28721F800;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGApply1DLUT::CreateBitmap(int32x2_t *this)
{
  v2 = this[52];
  if (v2)
  {
    (*(**&v2 + 24))(v2);
  }

  if (this[57].i8[5])
  {
    v3 = 27;
  }

  else
  {
    v3 = 28;
  }

  v4 = vsub_s32(this[54], this[53]);
  v5 = vmul_lane_s32(v4, v4, 1).u32[0] * HGFormatUtils::bytesPerPixel(v3);
  v6 = HGObject::operator new(0x20uLL);
  HGMemory::StorageObject::StorageObject(v6, v5);
  v7 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v7, *&this[53], *&this[54], v3, *(v6 + 2));
  this[52] = v7;
  HGBitmap::SetStorage(v7, v6);
  v8 = *(*v6 + 24);

  return v8(v6);
}

uint64_t HGApply1DLUT::SetLUT(HGApply1DLUT *this, uint64_t (*a2)(void *, unsigned int *, unsigned int *, char *, uint64_t *, float), void *a3, double a4, double a5, double a6, int32x4_t a7)
{
  v54 = 0;
  *v55 = 0;
  v11 = *(this + 112);
  v12 = *(this + 111) + -1.0;
  v7.i32[0] = *(this + 113);
  *(this + 440) = 1;
  v53 = v7;
  if (!*(this + 52))
  {
    HGApply1DLUT::CreateBitmap(this);
    v7 = v53;
  }

  v13 = *(*(this + 52) + 80);
  v14 = *(this + 111);
  v15 = v11 / v12;
  if (*(this + 461) == 1)
  {
    if (a2)
    {
      if (v14 >= 1)
      {
        v16 = 0;
        v51 = vdupq_n_s32(0x47800000u);
        v52 = vdupq_n_s32(0xC7800000);
        v50 = vdupq_n_s32(0x7800000u);
        while (1)
        {
          result = a2(a3, &v55[1], v55, &v54 + 4, &v54, *v7.i32 + (v15 * v16));
          if (result)
          {
            return result;
          }

          v18.i64[0] = __PAIR64__(v55[0], v55[1]);
          v18.i64[1] = __PAIR64__(v54, HIDWORD(v54));
          v19 = vbslq_s8(vcgtq_f32(v52, v18), v52, v18);
          v20 = vmulq_f32(vbslq_s8(vcgtq_f32(v19, v51), v51, v19), v50);
          *v13 = vmovn_s32(vorrq_s8(vandq_s8(vshlq_u32(v20, xmmword_260816CB0), xmmword_260816CC0), vandq_s8(vshlq_u32(v20, xmmword_260816CD0), xmmword_260816CE0)));
          v13 += 4;
          ++v16;
          v15 = v11 / v12;
          v7.i32[0] = v53.i32[0];
          if (v16 >= *(this + 111))
          {
            goto LABEL_38;
          }
        }
      }
    }

    else if (v14 >= 1)
    {
      if (v14 > 7)
      {
        v25 = v14 & 0x7FFFFFF8;
        v29 = vdupq_lane_s32(v7, 0);
        v30 = &v13[4 * v25];
        v31 = xmmword_260816CF0;
        v32 = xmmword_260343780;
        a7 = vdupq_n_s32(0xC7800000);
        v33 = vdupq_n_s32(0x47800000u);
        v34 = vdupq_n_s32(0x7800000u);
        v35.i64[0] = 0x7F0000007FLL;
        v35.i64[1] = 0x7F0000007FLL;
        v36.i64[0] = 0x800000008000;
        v36.i64[1] = 0x800000008000;
        v37.i64[0] = 0x800000008;
        v37.i64[1] = 0x800000008;
        v38 = v25;
        do
        {
          v39 = vaddq_f32(v29, vmulq_n_f32(vcvtq_f32_u32(v32), v15));
          v40 = vaddq_f32(v29, vmulq_n_f32(vcvtq_f32_u32(v31), v15));
          v41 = vbslq_s8(vcgtq_f32(a7, v39), a7, v39);
          v42 = vbslq_s8(vcgtq_f32(a7, v40), a7, v40);
          v43 = vmulq_f32(vbslq_s8(vcgtq_f32(v42, v33), v33, v42), v34);
          v44 = vmulq_f32(vbslq_s8(vcgtq_f32(v41, v33), v33, v41), v34);
          v56.val[0] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v44, 0xDuLL), v35), vandq_s8(vshrq_n_u32(v44, 0x10uLL), v36)), vorrq_s8(vandq_s8(vshrq_n_u32(v43, 0xDuLL), v35), vandq_s8(vshrq_n_u32(v43, 0x10uLL), v36)));
          v56.val[1] = v56.val[0];
          v56.val[2] = v56.val[0];
          v56.val[3] = v56.val[0];
          vst4q_s16(v13, v56);
          v13 += 32;
          v32 = vaddq_s32(v32, v37);
          v31 = vaddq_s32(v31, v37);
          v38 -= 8;
        }

        while (v38);
        if (v25 == v14)
        {
          v18 = vdupq_laneq_s32(v40, 3);
          v13 = v30;
          goto LABEL_38;
        }

        v13 = v30;
      }

      else
      {
        LODWORD(v25) = 0;
      }

      do
      {
        *a7.i32 = *v7.i32 + (v15 * v25);
        if (*a7.i32 >= -65536.0)
        {
          v45 = *v7.i32 + (v15 * v25);
        }

        else
        {
          v45 = -65536.0;
        }

        if (v45 > 65536.0)
        {
          v45 = 65536.0;
        }

        *v13 = vdup_n_s16(HIWORD(COERCE_UNSIGNED_INT(v45 * 1.9259e-34)) & 0x8000 | (COERCE_UNSIGNED_INT(v45 * 1.9259e-34) >> 13) & 0x7FFF);
        v13 += 4;
        LODWORD(v25) = v25 + 1;
      }

      while (v14 != v25);
      v18 = vdupq_lane_s32(*a7.i8, 0);
      goto LABEL_38;
    }

    v18 = 0uLL;
LABEL_38:
    result = 0;
    v46 = vdupq_n_s32(0xC7800000);
    v47 = vdupq_n_s32(0x47800000u);
    v48 = vbslq_s8(vcgtq_f32(v46, v18), v46, v18);
    v49 = vmulq_f32(vbslq_s8(vcgtq_f32(v48, v47), v47, v48), vdupq_n_s32(0x7800000u));
    *v13 = vmovn_s32(vorrq_s8(vandq_s8(vshlq_u32(v49, xmmword_260816CB0), xmmword_260816CC0), vandq_s8(vshlq_u32(v49, xmmword_260816CD0), xmmword_260816CE0)));
    return result;
  }

  if (!a2)
  {
    if (v14 >= 1)
    {
      v26 = 0;
      do
      {
        *v55 = *v7.i32 + (v15 * v26);
        v55[1] = v55[0];
        *&v54 = *v55;
        *(&v54 + 1) = *v55;
        *v13 = v55[0];
        v27 = HIDWORD(v54);
        *(v13 + 1) = v55[0];
        *(v13 + 2) = v27;
        *(v13 + 3) = v54;
        v13 += 8;
        ++v26;
      }

      while (v14 != v26);
      v23 = v55[1];
      goto LABEL_25;
    }

LABEL_24:
    v23 = 0;
LABEL_25:
    result = 0;
    *v13 = v23;
    v28 = HIDWORD(v54);
    *(v13 + 1) = v55[0];
    *(v13 + 2) = v28;
    *(v13 + 3) = v54;
    return result;
  }

  if (v14 < 1)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = *(*(this + 52) + 80);
  while (1)
  {
    result = a2(a3, &v55[1], v55, &v54 + 4, &v54, *v7.i32 + (v15 * v21));
    if (result)
    {
      return result;
    }

    v23 = v55[1];
    *v22 = v55[1];
    v24 = HIDWORD(v54);
    v22[1] = v55[0];
    v22[2] = v24;
    v13 = (v22 + 4);
    v22[3] = v54;
    ++v21;
    v22 += 4;
    v15 = v11 / v12;
    v7.i32[0] = v53.i32[0];
    if (v21 >= *(this + 111))
    {
      goto LABEL_25;
    }
  }
}

uint64_t HGApply1DLUT::SetLUTBitmap(HGApply1DLUT *this, HGBitmap *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!HGRect::IsEqual((a2 + 20), *(this + 424)) || (*(a2 + 4) - 27) > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 52);
  if (v4 != a2)
  {
    *(this + 440) = 1;
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    *(this + 52) = a2;
    (*(*a2 + 16))(a2);
  }

  return 0;
}

uint64_t HGApply1DLUT::GetOutput(HGNode *this, HGRenderer *a2, double a3, double a4, double a5, int32x4_t a6)
{
  if (!*(this + 52))
  {
    HGApply1DLUT::SetLUT(this, 0, 0, a3, a4, a5, a6);
  }

  v8 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v8 + 120))(v8, 0, Input);
  if (*(this + 440) == 1)
  {
    *(this + 440) = 0;
    v10 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v10, *(this + 52));
    if (((*(*a2 + 304))(a2) & 1) != 0 || *(this + 460) != 1)
    {
      (*(**(this + 51) + 120))(*(this + 51), 1, v10);
    }

    else
    {
      v11 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v11);
      HGTextureWrap::SetTextureWrapMode(v11, 2, v12);
      (*(*v11 + 120))(v11, 0, v10);
      (*(*v10 + 24))(v10);
      (*(**(this + 51) + 120))(*(this + 51), 1, v11);
      v10 = v11;
    }

    (*(*v10 + 24))(v10);
  }

  return *(this + 51);
}

void HgcApply1DLUT::~HgcApply1DLUT(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply1DLUT::SetParameter(HGNode *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 <= 2)
  {
    v7 = (this + (16 * a2));
    v7[104] = a3;
    v7[105] = a4;
    v7[106] = a5;
    v7[107] = a6;
  }

  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply1DLUT::Bind(HgcApply1DLUT *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, this + 416, 1);
  (*(*a2 + 144))(a2, 1, this + 432, 1);
  (*(*a2 + 144))(a2, 2, this + 448, 1);
  return 0;
}

uint64_t HgcApply1DLUT::BindTexture(HgcApply1DLUT *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, *(this + 480), *(this + 480));
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v7.n128_u64[0] = 0;
      v8.n128_u64[0] = 0;
      v9.n128_u32[0] = 1.0;
      v10.n128_u32[0] = 1.0;
    }

    else
    {
      v7.n128_f32[0] = *(a2 + 60);
      v8.n128_f32[0] = *(a2 + 61);
      v9.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v10.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    (*(*a2 + 136))(a2, 3, v7, v8, v9, v10);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply1DLUT::GetDOD(HgcApply1DLUT *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply1DLUT::GetROI(HgcApply1DLUT *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  v7 = *(this + 58);
  if (((*(*a2 + 304))(a2) & 1) == 0)
  {
    v8 = *(this + 58);
    v9 = *(this + 59);
    v10 = HGRectMake4i(0, 0, 1u, 0);
    v7 = HGRectGrow(v8, v9, v10);
  }

  if (!a3)
  {
    return v4;
  }

  if (a3 != 1)
  {
    return 0;
  }

  return v7;
}

void HGApply3DLUT::Init(uint64_t a1, int a2, unsigned int a3, char a4, int a5, char a6, char a7, char a8, float a9, float a10, float a11, float a12, float a13, float a14, char a15)
{
  v18 = 1;
  *(a1 + 464) = 1;
  *(a1 + 465) = a4;
  *(a1 + 516) = a5;
  *(a1 + 476) = a9;
  *(a1 + 480) = a10;
  *(a1 + 484) = a11;
  *(a1 + 488) = a12;
  *(a1 + 492) = a13;
  *(a1 + 496) = a14;
  if (a11 != 0.0 || a12 != 1.0 || a13 != 0.0 || a14 != 0.0)
  {
    v18 = 0;
  }

  *(a1 + 500) = v18;
  *(a1 + 512) = a6;
  *(a1 + 513) = a7;
  *(a1 + 514) = a8;
  *(a1 + 515) = a15;
  v19 = *(a1 + 416);
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  v20 = *(a1 + 424);
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  v21 = *(a1 + 408);
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  if (a3 <= 0x1C && ((1 << a3) & 0x1B3A0000) != 0)
  {
    *(a1 + 468) = a3;
  }

  *(a1 + 472) = a2;
  *(a1 + 432) = HGRectMake4i(0, 0, a2 * a2 + 1, a2 + 1);
  *(a1 + 440) = v22;
  *(a1 + 448) = HGRectMake4i(0, 0, *(a1 + 472), 1u);
  *(a1 + 456) = v23;
  if (*(a1 + 516))
  {
    if (*(a1 + 500))
    {
      v24 = HGObject::operator new(0x1B0uLL);
      HgcApply3DLUTTetrahedralUniform_basekernel::HgcApply3DLUTTetrahedralUniform_basekernel(v24);
    }

    v26 = *(a1 + 465);
    v27 = HGObject::operator new(0x1B0uLL);
    if (v26 == 1)
    {
      HgcApply3DLUTTetrahedralFast_basekernel::HgcApply3DLUTTetrahedralFast_basekernel(v27);
    }

    HgcApply3DLUTTetrahedral_basekernel::HgcApply3DLUTTetrahedral_basekernel(v27);
  }

  if (*(a1 + 500))
  {
    v25 = HGObject::operator new(0x1B0uLL);
    HgcApply3DLUTTrilinearUniform_basekernel::HgcApply3DLUTTrilinearUniform_basekernel(v25);
  }

  v28 = *(a1 + 465);
  v29 = HGObject::operator new(0x1B0uLL);
  if (v28 == 1)
  {
    HgcApply3DLUTTrilinearFast_basekernel::HgcApply3DLUTTrilinearFast_basekernel(v29);
  }

  HgcApply3DLUTTrilinear_basekernel::HgcApply3DLUTTrilinear_basekernel(v29);
}

void sub_25FCE5A60(_Unwind_Exception *a1)
{
  HgcApply3DLUTTrilinear_basekernel::~HgcApply3DLUTTrilinear_basekernel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCE5A78(_Unwind_Exception *a1)
{
  HgcApply3DLUTTrilinearFast_basekernel::~HgcApply3DLUTTrilinearFast_basekernel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCE5AB8(_Unwind_Exception *a1)
{
  HgcApply3DLUTTetrahedral_basekernel::~HgcApply3DLUTTetrahedral_basekernel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCE5AD0(_Unwind_Exception *a1)
{
  HgcApply3DLUTTetrahedralFast_basekernel::~HgcApply3DLUTTetrahedralFast_basekernel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCE5AFC(_Unwind_Exception *a1)
{
  HgcApply3DLUTTrilinearUniform_basekernel::~HgcApply3DLUTTrilinearUniform_basekernel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCE5B14(_Unwind_Exception *a1)
{
  HGObject::~HGObject(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCE5B2C(_Unwind_Exception *a1)
{
  HgcApply3DLUTTetrahedralUniform_basekernel::~HgcApply3DLUTTetrahedralUniform_basekernel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void HGApply3DLUT::HGApply3DLUT(HGNode *a1, int a2, unsigned int a3, char a4, int a5, char a6, char a7, char a8, float a9, float a10, float a11, float a12, float a13, float a14, char a15)
{
  HGNode::HGNode(a1);
  *v28 = &unk_28721FCD0;
  v28[52] = 0;
  v28[53] = 0;
  v28[51] = 0;
  HGApply3DLUT::Init(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void HGApply3DLUT::~HGApply3DLUT(HGNode *this)
{
  *this = &unk_28721FCD0;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 51);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28721FCD0;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 51);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v5);
}

float HGApply3DLUT::InvCubic(HGApply3DLUT *this, float a2)
{
  result = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
    v5 = *(this + 118) + -1.0;
    result = 1.0;
    if (v5 != v4)
    {
      v6 = *(this + 124);
      v7 = ((*(this + 121) - v4 / v5) * 27.0 / v6 + *(this + 127)) / 27.0;
      v8 = v7 * -0.5;
      v9 = sqrt((*(this + 126) * (*(this + 126) * *(this + 126))) / 27.0 + (v7 * v7) * 0.25);
      v11 = cbrt(v8 + v9);
      v12 = cbrt(v8 - v9);
      return (v11 + v12) + *(this + 123) / (v6 * -3.0);
    }
  }

  return result;
}

uint64_t HGApply3DLUT::SetLUT(HGApply3DLUT *this, uint64_t (*a2)(void *, char *, unint64_t *, char *, unint64_t *, float, float, float), void *a3)
{
  v5 = 0;
  v70 = 0;
  v71 = 0;
  *(this + 464) = 1;
  v6 = *(this + 117);
  if (v6 - 17 <= 0xB)
  {
    v5 = dword_260816DF4[v6 - 17];
  }

  v7 = *(this + 118);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 2 * v5;
  v69 = v5;
  v10 = 3 * v5;
  v67 = 4 * v5;
  v11 = *(*(this + 53) + 80);
  do
  {
    v65 = v8;
    if (v7 < 1)
    {
      goto LABEL_119;
    }

    v12 = 0;
    v13 = 4 * v8;
    v14 = (*(*(this + 52) + 80) + *(*(this + 52) + 64) * v8);
    v15 = v7;
    while (2)
    {
      while (v15 > 0)
      {
        v16 = 0;
        v66 = v12;
        v17 = 4 * v12;
        v18 = v11;
        do
        {
          v20 = *(this + 119);
          v21 = *(this + 120);
          v22 = (v20 * *v18) + v21;
          v23 = v21 + (v20 * v11[v17]);
          v24 = v21 + (v20 * v11[v13]);
          if (a2)
          {
            result = a2(a3, &v71 + 4, &v71, &v70 + 4, &v70, v22, v23, v24);
            v6 = *(this + 117);
            if (v6 <= 0x19 && ((1 << v6) & 0x30A0000) != 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            result = 0;
            v71 = __PAIR64__(LODWORD(v22), LODWORD(v23));
            *(&v70 + 1) = v24;
            LODWORD(v70) = 1065353216;
            if (v6 <= 0x19 && ((1 << v6) & 0x30A0000) != 0)
            {
LABEL_16:
              v27 = *(this + 120);
              v28 = *(this + 119);
              *&v71 = (*&v71 - v27) / v28;
              *(&v71 + 1) = (*(&v71 + 1) - v27) / v28;
              *&v70 = (*&v70 - v27) / v28;
              *(&v70 + 1) = (*(&v70 + 1) - v27) / v28;
            }
          }

          if (result)
          {
            return result;
          }

          v29 = *(&v71 + 1);
          if (v6 <= 20)
          {
            switch(v6)
            {
              case 0x11u:
                v48 = fminf(*(&v71 + 1) * 255.0, 255.0);
                if ((*(&v71 + 1) * 255.0) >= 0.0)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = 0.0;
                }

                v50 = fminf(*&v71 * 255.0, 255.0);
                if ((*&v71 * 255.0) >= 0.0)
                {
                  v51 = v50;
                }

                else
                {
                  v51 = 0.0;
                }

                v71 = __PAIR64__(LODWORD(v49), LODWORD(v51));
                v52 = fminf(*(&v70 + 1) * 255.0, 255.0);
                if ((*(&v70 + 1) * 255.0) < 0.0)
                {
                  v52 = 0.0;
                }

                *(&v70 + 1) = v52;
                *v14 = v49;
                v14[v69] = *&v71;
                v14[v9] = *(&v70 + 1);
                v6 = *(this + 117);
                if (v6 > 0x15)
                {
LABEL_9:
                  v19 = v67;
                  goto LABEL_10;
                }

                break;
              case 0x13u:
                v60 = fminf(*(&v71 + 1) * 65535.0, 65535.0);
                if ((*(&v71 + 1) * 65535.0) >= 0.0)
                {
                  v61 = v60;
                }

                else
                {
                  v61 = 0.0;
                }

                v62 = fminf(*&v71 * 65535.0, 65535.0);
                if ((*&v71 * 65535.0) >= 0.0)
                {
                  v63 = v62;
                }

                else
                {
                  v63 = 0.0;
                }

                v71 = __PAIR64__(LODWORD(v61), LODWORD(v63));
                v64 = fminf(*(&v70 + 1) * 65535.0, 65535.0);
                if ((*(&v70 + 1) * 65535.0) < 0.0)
                {
                  v64 = 0.0;
                }

                *(&v70 + 1) = v64;
                *v14 = v61;
                *&v14[v69] = v63;
                *&v14[v9] = v64;
                v6 = *(this + 117);
                if (v6 > 0x15)
                {
                  goto LABEL_9;
                }

                break;
              case 0x14u:
                if (*(&v71 + 1) < -65536.0)
                {
                  v29 = -65536.0;
                }

                if (v29 > 65536.0)
                {
                  v29 = 65536.0;
                }

                v37 = v29 * 1.9259e-34;
                *v14 = HIWORD(v37) & 0x8000 | (COERCE_UNSIGNED_INT(v29 * 1.9259e-34) >> 13) & 0x7FFF;
                v38 = *&v71;
                if (*&v71 < -65536.0)
                {
                  v38 = -65536.0;
                }

                if (v38 > 65536.0)
                {
                  v38 = 65536.0;
                }

                *&v14[v69] = HIWORD(COERCE_UNSIGNED_INT(v38 * 1.9259e-34)) & 0x8000 | (COERCE_UNSIGNED_INT(v38 * 1.9259e-34) >> 13) & 0x7FFF;
                v39 = *(&v70 + 1);
                if (*(&v70 + 1) < -65536.0)
                {
                  v39 = -65536.0;
                }

                if (v39 > 65536.0)
                {
                  v39 = 65536.0;
                }

                v40 = v39 * 1.9259e-34;
                *&v14[v9] = HIWORD(v40) & 0x8000 | (LODWORD(v40) >> 13) & 0x7FFF;
                v6 = *(this + 117);
                if (v6 > 0x15)
                {
                  goto LABEL_9;
                }

                break;
              default:
                goto LABEL_88;
            }
          }

          else if (v6 > 24)
          {
            if (v6 == 25)
            {
              v53 = fminf(*(&v71 + 1) * 65535.0, 65535.0);
              if ((*(&v71 + 1) * 65535.0) >= 0.0)
              {
                v54 = v53;
              }

              else
              {
                v54 = 0.0;
              }

              v55 = fminf(*&v71 * 65535.0, 65535.0);
              if ((*&v71 * 65535.0) >= 0.0)
              {
                v56 = v55;
              }

              else
              {
                v56 = 0.0;
              }

              v71 = __PAIR64__(LODWORD(v54), LODWORD(v56));
              v57 = fminf(*(&v70 + 1) * 65535.0, 65535.0);
              if ((*(&v70 + 1) * 65535.0) >= 0.0)
              {
                v58 = v57;
              }

              else
              {
                v58 = 0.0;
              }

              v59 = fminf(*&v70 * 65535.0, 65535.0);
              if ((*&v70 * 65535.0) < 0.0)
              {
                v59 = 0.0;
              }

              v70 = __PAIR64__(LODWORD(v58), LODWORD(v59));
              *v14 = v54;
              *&v14[v69] = v56;
              *&v14[v9] = v58;
              *&v14[v10] = v59;
              v6 = *(this + 117);
              if (v6 > 0x15)
              {
                goto LABEL_9;
              }
            }

            else
            {
              if (v6 != 27)
              {
LABEL_88:
                *v14 = HIDWORD(v71);
                *&v14[v69] = v71;
                *&v14[v9] = HIDWORD(v70);
                *&v14[v10] = v70;
                v6 = *(this + 117);
                if (v6 > 0x15)
                {
                  goto LABEL_9;
                }

                goto LABEL_114;
              }

              if (*(&v71 + 1) < -65536.0)
              {
                v29 = -65536.0;
              }

              if (v29 > 65536.0)
              {
                v29 = 65536.0;
              }

              v42 = v29 * 1.9259e-34;
              *v14 = HIWORD(v42) & 0x8000 | (COERCE_UNSIGNED_INT(v29 * 1.9259e-34) >> 13) & 0x7FFF;
              v43 = *&v71;
              if (*&v71 < -65536.0)
              {
                v43 = -65536.0;
              }

              if (v43 > 65536.0)
              {
                v43 = 65536.0;
              }

              *&v14[v69] = HIWORD(COERCE_UNSIGNED_INT(v43 * 1.9259e-34)) & 0x8000 | (COERCE_UNSIGNED_INT(v43 * 1.9259e-34) >> 13) & 0x7FFF;
              v44 = *(&v70 + 1);
              if (*(&v70 + 1) < -65536.0)
              {
                v44 = -65536.0;
              }

              if (v44 > 65536.0)
              {
                v44 = 65536.0;
              }

              v45 = v44 * 1.9259e-34;
              *&v14[v9] = HIWORD(v45) & 0x8000 | (COERCE_UNSIGNED_INT(v44 * 1.9259e-34) >> 13) & 0x7FFF;
              v46 = *&v70;
              if (*&v70 < -65536.0)
              {
                v46 = -65536.0;
              }

              if (v46 > 65536.0)
              {
                v46 = 65536.0;
              }

              v47 = v46 * 1.9259e-34;
              *&v14[v10] = HIWORD(v47) & 0x8000 | (LODWORD(v47) >> 13) & 0x7FFF;
              v6 = *(this + 117);
              if (v6 > 0x15)
              {
                goto LABEL_9;
              }
            }
          }

          else if (v6 == 21)
          {
            *v14 = HIDWORD(v71);
            *&v14[v69] = v71;
            *&v14[v9] = HIDWORD(v70);
            v6 = *(this + 117);
            if (v6 > 0x15)
            {
              goto LABEL_9;
            }
          }

          else
          {
            if (v6 != 24)
            {
              goto LABEL_88;
            }

            v30 = fminf(*(&v71 + 1) * 255.0, 255.0);
            if ((*(&v71 + 1) * 255.0) >= 0.0)
            {
              v31 = v30;
            }

            else
            {
              v31 = 0.0;
            }

            v32 = fminf(*&v71 * 255.0, 255.0);
            if ((*&v71 * 255.0) >= 0.0)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0.0;
            }

            v71 = __PAIR64__(LODWORD(v31), LODWORD(v33));
            v34 = fminf(*(&v70 + 1) * 255.0, 255.0);
            if ((*(&v70 + 1) * 255.0) >= 0.0)
            {
              v35 = v34;
            }

            else
            {
              v35 = 0.0;
            }

            v36 = fminf(*&v70 * 255.0, 255.0);
            if ((*&v70 * 255.0) < 0.0)
            {
              v36 = 0.0;
            }

            v70 = __PAIR64__(LODWORD(v35), LODWORD(v36));
            *v14 = v31;
            v14[v69] = *&v71;
            v14[v9] = *(&v70 + 1);
            v14[v10] = *&v70;
            v6 = *(this + 117);
            if (v6 > 0x15)
            {
              goto LABEL_9;
            }
          }

LABEL_114:
          v19 = v10;
          if (((1 << v6) & 0x3A0000) == 0)
          {
            goto LABEL_9;
          }

LABEL_10:
          v14 += v19;
          ++v16;
          v7 = *(this + 118);
          v18 += 4;
        }

        while (v16 < v7);
        v15 = *(this + 118);
        v12 = v66 + 1;
        if (v66 + 1 >= v7)
        {
          goto LABEL_119;
        }
      }

      if (++v12 < v15)
      {
        continue;
      }

      break;
    }

LABEL_119:
    v8 = v65 + 1;
  }

  while (v65 + 1 < v7);
  return 0;
}