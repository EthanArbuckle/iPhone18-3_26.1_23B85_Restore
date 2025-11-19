void **std::deque<int>::~deque[abi:sn200100](void **result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v3 == v2)
  {
    v4 = result + 5;
  }

  else
  {
    v4 = result + 5;
    v5 = result[4];
    v6 = &v2[v5 >> 10];
    v7 = *v6;
    v8 = *v6 + 4 * (v5 & 0x3FF);
    while (v8 != *(v2 + (((result[5] + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((result[5] + v5) & 0x3FF))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 4;
      if (v8 - v7 == 4096)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = v1[2];
      v2 = (v1[1] + 8);
      v1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 512;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 1024;
  }

  v1[4] = v11;
LABEL_15:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = v1[1];
    v13 = v1[2];
    if (v13 != v14)
    {
      v1[2] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  if (*v1)
  {
    operator delete(*v1);
  }

  return v1;
}

void webrtc::QualityConvergenceMonitor::AddSample(webrtc::QualityConvergenceMonitor *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0)
  {
    v25 = *(this + 6);
    v26 = *(this + 7) - v25;
    if (v26)
    {
      v27 = (this + 80);
      v28 = *(this + 9);
      v29 = &v25[v28 >> 10];
      v30 = *v29;
      v31 = *v29 + 4 * (v28 & 0x3FF);
      while (v31 != *(v25 + (((*(this + 10) + v28) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 10) + v28) & 0x3FF))
      {
        if (!v31)
        {
          goto LABEL_63;
        }

        v31 += 4;
        if (v31 - v30 == 4096)
        {
          v32 = v29[1];
          ++v29;
          v30 = v32;
          v31 = v32;
        }
      }
    }

    else
    {
      v27 = (this + 80);
    }

    *v27 = 0;
    v41 = v26 >> 3;
    if (v41 >= 3)
    {
      do
      {
        operator delete(*v25);
        v42 = *(this + 7);
        v25 = (*(this + 6) + 8);
        *(this + 6) = v25;
        v41 = (v42 - v25) >> 3;
      }

      while (v41 > 2);
    }

LABEL_37:
    if (v41 == 1)
    {
      v44 = 512;
    }

    else
    {
      if (v41 != 2)
      {
LABEL_42:
        *(this + 32) = 0;
        return;
      }

      v44 = 1024;
    }

    *(this + 9) = v44;
    goto LABEL_42;
  }

  if (*this >= a2)
  {
LABEL_57:
    *(this + 32) = 1;
    return;
  }

  if (!a3 || (*(this + 4) & 1) == 0)
  {
    v33 = *(this + 6);
    v34 = *(this + 7) - v33;
    if (v34)
    {
      v35 = (this + 80);
      v36 = *(this + 9);
      v37 = &v33[v36 >> 10];
      v38 = *v37;
      v39 = *v37 + 4 * (v36 & 0x3FF);
      while (v39 != *(v33 + (((*(this + 10) + v36) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 10) + v36) & 0x3FF))
      {
        if (!v39)
        {
          goto LABEL_63;
        }

        v39 += 4;
        if (v39 - v38 == 4096)
        {
          v40 = v37[1];
          ++v37;
          v38 = v40;
          v39 = v40;
        }
      }
    }

    else
    {
      v35 = (this + 80);
    }

    *v35 = 0;
    v41 = v34 >> 3;
    if (v41 >= 3)
    {
      do
      {
        operator delete(*v33);
        v43 = *(this + 7);
        v33 = (*(this + 6) + 8);
        *(this + 6) = v33;
        v41 = (v43 - v33) >> 3;
      }

      while (v41 > 2);
    }

    goto LABEL_37;
  }

  if (*(this + 32))
  {
    return;
  }

  v13 = *(this + 6);
  v14 = *(this + 7);
  if (v14 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((v14 - v13) << 7) - 1;
  }

  v16 = *(this + 10);
  if (v15 == v16 + *(this + 9))
  {
    v17 = a2;
    std::deque<int>::__add_back_capacity(this + 5);
    a2 = v17;
    v16 = *(this + 10);
    v13 = *(this + 6);
    v14 = *(this + 7);
  }

  if (v14 == v13 || (v18 = *(this + 9) + v16, (v19 = *(v13 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8))) == 0))
  {
LABEL_63:
    __break(1u);
    return;
  }

  *(v19 + 4 * (v18 & 0x3FF)) = a2;
  v20 = v16 + 1;
  *(this + 10) = v16 + 1;
  v21 = *(this + 1);
  if (v16 + 1 > *(this + 2) + v21)
  {
    std::deque<int>::pop_front(this + 5);
    v20 = *(this + 10);
    v21 = *(this + 1);
  }

  if (v20 <= v21)
  {
    if (!*(this + 32))
    {
      return;
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/quality_convergence_monitor.cc", 176, "at_target_quality_ == false", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v63);
  }

  else
  {
    v9 = *(this + 9);
    v8 = *(this + 6);
    v10 = *(this + 7);
    v11 = (v8 + 8 * (v9 >> 10));
    if (v10 != v8)
    {
      v22 = &(*v11)[*(this + 9) & 0x3FFLL];
      v23 = (v8 + 8 * ((v9 + v20) >> 10));
      v24 = *v23 + 4 * ((v9 + v20) & 0x3FF);
      goto LABEL_46;
    }
  }

  v22 = 0;
  v24 = 0;
  v23 = (v8 + 8 * ((v9 + v20) >> 10));
LABEL_46:
  std::__deque_iterator<int,int *,int &,int **,long,1024l>::operator-[abi:sn200100](v23, v24, v21);
  v46 = 0.0;
  if (v22 != v45)
  {
    v52 = *v11;
    do
    {
      v54 = *v22++;
      v53 = v54;
      if (v22 - v52 == 4096)
      {
        v55 = v11[1];
        ++v11;
        v52 = v55;
        v22 = v55;
      }

      v46 = v46 + v53;
    }

    while (v22 != v45);
  }

  v47 = v46 / (v20 - v21);
  v48 = (v8 + 8 * ((v20 + v9) >> 10));
  if (v10 == v8)
  {
    v50 = std::__deque_iterator<int,int *,int &,int **,long,1024l>::operator-[abi:sn200100](v48, 0, v21);
    v49 = 0;
  }

  else
  {
    v49 = *v48 + 4 * ((v20 + v9) & 0x3FF);
    v50 = std::__deque_iterator<int,int *,int &,int **,long,1024l>::operator-[abi:sn200100](v48, v49, v21);
  }

  v56 = v47;
  v57 = 0.0;
  if (v51 != v49)
  {
    v59 = *v50;
    do
    {
      v61 = *v51++;
      v60 = v61;
      if (v51 - v59 == 4096)
      {
        v62 = v50[1];
        ++v50;
        v59 = v62;
        v51 = v62;
      }

      v57 = v57 + v60;
    }

    while (v51 != v49);
  }

  if (v56 <= *(this + 6))
  {
    v58 = v57 / v21;
    if (v56 <= v58)
    {
      goto LABEL_57;
    }
  }
}

void std::deque<int>::pop_front(void *a1)
{
  v1 = a1[5];
  if (v1 && (v3 = a1[1], v4 = a1[4], *(v3 + ((v4 >> 7) & 0x1FFFFFFFFFFFFF8))))
  {
    v5 = v4 + 1;
    a1[4] = v5;
    a1[5] = v1 - 1;
    if (v5 >= 0x800)
    {
      operator delete(*v3);
      a1[1] += 8;
      a1[4] -= 1024;
    }
  }

  else
  {
    __break(1u);
  }
}

void *std::__deque_iterator<int,int *,int &,int **,long,1024l>::operator-[abi:sn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = ((a2 - *result) >> 2) - a3;
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
    }

    else
    {
      result += v3 >> 10;
    }
  }

  return result;
}

void webrtc::QualityConvergenceMonitor::Create(uint64_t a1, int a2)
{
  v3 = 0x3FAEB851E0000000;
  v4 = 0x600000006;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 == 1)
      {
        LOBYTE(v2) = 1;
        operator new();
      }

      operator new();
    }

    LOBYTE(v2) = 1;
    operator new();
  }

  LOBYTE(v2) = 1;
  operator new();
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<long long *>::emplace_back<long long *&>(a1, &v11);
}

uint64_t webrtc::QualityLimitationReasonTracker::QualityLimitationReasonTracker(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 8) = 0;
  v3 = (*(*a2 + 16))(a2);
  v4 = v3 / 0x3E8uLL;
  if (v3 % 0x3E8uLL > 0x1F3)
  {
    ++v4;
  }

  if (-v3 % 0x3E8uLL <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < 0)
  {
    v4 = v5 - -v3 / 0x3E8uLL;
  }

  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  v9 = xmmword_273BA13A0;
  v10 = unk_273BA13B0;
  v11 = xmmword_273BA13C0;
  *v12 = unk_273BA13D0;
  *(a1 + 40) = 0;
  if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>((a1 + 24), (a1 + 32), &v8, &v7, &v9))
  {
    operator new();
  }

  if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>((a1 + 24), (a1 + 32), &v8, &v7, &v10))
  {
    operator new();
  }

  if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>((a1 + 24), (a1 + 32), &v8, &v7, &v11))
  {
    operator new();
  }

  if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>((a1 + 24), (a1 + 32), &v8, &v7, v12))
  {
    operator new();
  }

  return a1;
}

uint64_t webrtc::QualityLimitationReasonTracker::SetReason(uint64_t result, int a2)
{
  if (*(result + 8) != a2)
  {
    v3 = result;
    result = (*(**result + 16))(*result);
    v4 = result / 0x3E8uLL;
    if (result % 0x3E8uLL > 0x1F3)
    {
      ++v4;
    }

    if (-result % 0x3E8uLL <= 0x1F4)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    if (result < 0)
    {
      v6 = v5 - -result / 0x3E8uLL;
    }

    else
    {
      v6 = v4;
    }

    v7 = *(v3 + 32);
    if (!v7)
    {
LABEL_16:
      operator new();
    }

    v8 = *(v3 + 8);
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 32);
        if (v8 >= v10)
        {
          break;
        }

        v7 = *v9;
        if (!*v9)
        {
          goto LABEL_16;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    v9[5] += v6 - *(v3 + 16);
    *(v3 + 8) = a2;
    *(v3 + 16) = v6;
  }

  return result;
}

unint64_t webrtc::QualityLimitationReasonTracker::DurationsMs@<X0>(webrtc::QualityLimitationReasonTracker *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = *(this + 3);
  v5 = this + 32;
  if (v4 == (this + 32))
  {
    goto LABEL_20;
  }

  do
  {
    if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(a2, v3, &v17, &v16, v4 + 8))
    {
      operator new();
    }

    v7 = *(v4 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v4 + 2);
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
  }

  while (v8 != v5);
  v10 = *v3;
  if (!*v3)
  {
    goto LABEL_20;
  }

  v11 = *(this + 2);
  v12 = v3;
  do
  {
    if (*(v10 + 32) >= v11)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < v11));
  }

  while (v10);
  if (v12 == v3 || v11 < *(v12 + 32))
  {
LABEL_20:
    v12 = v3;
  }

  result = (*(**this + 16))();
  v14 = result / 0x3E8;
  if (result % 0x3E8 > 0x1F3)
  {
    ++v14;
  }

  if (-result % 0x3E8uLL <= 0x1F4)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v14 = v15 - -result / 0x3E8uLL;
  }

  *(v12 + 40) += v14 - *(this + 2);
  return result;
}

void webrtc::QualityScaler::QualityScaler(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_288299F30;
  a1[1] = 0;
  a1[2] = a2;
  a1[3] = a3;
  webrtc::QualityScalerSettings::QualityScalerSettings(&v3);
}

void webrtc::QualityScaler::~QualityScaler(webrtc::QualityScaler *this)
{
  *this = &unk_288299F30;
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C40361F1193);
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1000C40361F1193);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    *(v7 + 24) = 0;
    v8 = *(v7 + 16);
    if (v8)
    {
      *v8 = 0;
      if (atomic_fetch_add((v8 + 4), 0xFFFFFFFF) == 1)
      {
        v9 = v7;
        MEMORY[0x2743DA540](v8, 0x1000C404A09149ALL);
        v7 = v9;
      }

      *(v7 + 16) = 0;
    }

    MEMORY[0x2743DA540]();
  }
}

{
  webrtc::QualityScaler::~QualityScaler(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::QualityScaler::ReportQp(webrtc::QualityScaler *this, int a2, uint64_t a3)
{
  v3 = *(this + 11) + 1;
  *(this + 11) = v3;
  v4 = *(this + 13);
  v5 = (*(this + 14) - v4) >> 2;
  v6 = v3 % v5;
  if (v3 <= v5)
  {
    v7 = *(this + 12);
  }

  else
  {
    v7 = *(this + 12) - *(v4 + 4 * v6);
  }

  *(this + 12) = v7;
  *(v4 + 4 * v6) = 0;
  v8 = *(this + 16) + 1;
  *(this + 16) = v8;
  v9 = *(this + 18);
  v10 = (*(this + 19) - v9) >> 2;
  v11 = v8 % v10;
  if (v8 <= v10)
  {
    v12 = *(this + 17);
  }

  else
  {
    v12 = *(this + 17) - *(v9 + 4 * v11);
  }

  *(this + 17) = v12;
  *(v9 + 4 * v11) = 0;
  v13 = *(this + 6) + 1;
  *(this + 6) = v13;
  v14 = *(this + 8);
  v15 = (*(this + 9) - v14) >> 2;
  v16 = v13 % v15;
  if (v13 <= v15)
  {
    v17 = *(this + 7);
  }

  else
  {
    v17 = *(this + 7) - *(v14 + 4 * v16);
  }

  *(this + 7) = v17 + a2;
  *(v14 + 4 * v16) = a2;
  v18 = *(this + 23);
  if (v18)
  {
    v19 = a2;
    v20 = a3 / 1000;
    v21 = *(v18 + 20);
    if (v21 != -1.0)
    {
      v22 = v20 - *(v18 + 8);
      v23 = *(v18 + 16);
      if (v22 != 1)
      {
        v24 = a3;
        v25 = a2;
        v26 = this;
        v23 = powf(v23, v22);
        this = v26;
        a2 = v25;
        a3 = v24;
      }

      v19 = ((1.0 - v23) * v19) + (v23 * v21);
    }

    v27 = *(v18 + 24);
    if (v19 <= v27 || v27 == -1.0)
    {
      v27 = v19;
    }

    *(v18 + 20) = v27;
    *(v18 + 8) = v20;
  }

  v29 = *(this + 24);
  if (v29)
  {
    v30 = a2;
    v31 = a3 / 1000;
    v32 = *(v29 + 20);
    if (v32 != -1.0)
    {
      v33 = v31 - *(v29 + 8);
      v34 = *(v29 + 16);
      if (v33 != 1)
      {
        v34 = powf(v34, v33);
      }

      v30 = ((1.0 - v34) * v30) + (v34 * v32);
    }

    v35 = *(v29 + 24);
    if (v30 <= v35 || v35 == -1.0)
    {
      v35 = v30;
    }

    *(v29 + 20) = v35;
    *(v29 + 8) = v31;
  }
}

void **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::QualityScaler::CheckQpTask::StartDelayedTask(void)::{lambda(void)#1} &&>(void **result)
{
  v2 = *result;
  v3 = **result;
  if (!v3 || *v3 != 1 || !v2[1])
  {
    return result;
  }

  v4 = v2[2];
  v5 = *v4;
  v6 = 88;
  if (*(*v4 + 180))
  {
    v6 = 128;
  }

  v7 = (v5 + v6);
  v8 = (v7[3] - v7[2]) >> 2;
  if (v8 >= *v7)
  {
    v8 = *v7;
  }

  if (v8 >= *(v5 + 200))
  {
    if (*v7 && (v7[1] / v8) >= 60)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/quality_scaler.cc");
      }

      goto LABEL_38;
    }

    v16 = *(v5 + 184);
    if (v16)
    {
      v17 = *(v16 + 20);
      if (v17 == -1.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17 | 0x100000000;
      }
    }

    else
    {
      v19 = *(v5 + 48);
      if (v19)
      {
        if ((*(v5 + 72) - *(v5 + 64)) >> 2 < v19)
        {
          v19 = (*(v5 + 72) - *(v5 + 64)) >> 2;
        }

        v18 = (*(v5 + 56) / v19) | 0x100000000;
      }

      else
      {
        v18 = 0;
      }
    }

    v20 = *(v5 + 192);
    if (v20)
    {
      v21 = *(v20 + 20);
      if (v21 == -1.0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21 | 0x100000000;
      }

      if ((v18 & 0x100000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v23 = *(v5 + 48);
      if (!v23)
      {
        goto LABEL_43;
      }

      if ((*(v5 + 72) - *(v5 + 64)) >> 2 < v23)
      {
        v23 = (*(v5 + 72) - *(v5 + 64)) >> 2;
      }

      v22 = (*(v5 + 56) / v23) | 0x100000000;
      if ((v18 & 0x100000000) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((v22 & 0x100000000) != 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/quality_scaler.cc");
      }

      if (*(v5 + 28) < v18)
      {
LABEL_38:
        v4[7] = 257;
        v31 = *v4;
        *(v31 + 40) = 0;
        (*(**(v31 + 16) + 16))(*(v31 + 16));
        v32 = *v4;
        v32[11] = 0;
        v32[12] = 0;
        v32[16] = 0;
        v32[17] = 0;
        v32[6] = 0;
        v32[7] = 0;
        v33 = v32[23];
        if (!v33)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (*(v5 + 24) >= v22)
      {
        v4[7] = 257;
        (*(**(*v4 + 16) + 24))(*(*v4 + 16));
        v32 = *v4;
        v32[11] = 0;
        v32[12] = 0;
        v32[16] = 0;
        v32[17] = 0;
        v32[6] = 0;
        v32[7] = 0;
        v33 = v32[23];
        if (!v33)
        {
LABEL_40:
          v34 = v32[24];
          if (v34)
          {
            v34[4] = *v34;
            v34[5] = -1082130432;
          }

          goto LABEL_44;
        }

LABEL_39:
        v33[4] = *v33;
        v33[5] = -1082130432;
        goto LABEL_40;
      }
    }

LABEL_43:
    *(v4 + 14) = 1;
    goto LABEL_44;
  }

  *(v4 + 14) = 0;
LABEL_44:
  *(v4 + 2) = 2;
  v35 = *v4;

  return webrtc::QualityScaler::StartNextCheckQpTask(v35);
}

uint64_t *absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::QualityScaler::CheckQpTask::StartDelayedTask(void)::{lambda(void)#1}>(char a1, uint64_t **a2, uint64_t **a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v6 = *result;
      if (*result && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v6, 0x1000C404A09149ALL);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t webrtc::QualityScalerResource::OnFrameDropped(uint64_t result, int a2)
{
  v2 = *(result + 120);
  if (v2)
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return result;
      }

      v3 = v2[11] + 1;
      v2[11] = v3;
      v4 = v2[13];
      v5 = (v2[14] - v4) >> 2;
      v6 = v3 % v5;
      if (v3 <= v5)
      {
        v7 = v2[12];
      }

      else
      {
        v7 = v2[12] - *(v4 + 4 * v6);
      }

      v2[12] = v7 + 100;
      *(v4 + 4 * v6) = 100;
    }

    v8 = v2[16] + 1;
    v2[16] = v8;
    v9 = v2[18];
    v10 = (v2[19] - v9) >> 2;
    v11 = v8 % v10;
    if (v8 <= v10)
    {
      v12 = v2[17];
    }

    else
    {
      v12 = v2[17] - *(v9 + 4 * v11);
    }

    v2[17] = v12 + 100;
    *(v9 + 4 * v11) = 100;
  }

  return result;
}

uint64_t webrtc::QualityScalerResource::OnReportQpUsageHigh(webrtc::QualityScalerResource *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this + 13);
  if (v2)
  {
    v4 = this;
    (**this)(this);
    (*(*v2 + 16))(v2, &v4, 0);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t non-virtual thunk towebrtc::QualityScalerResource::OnReportQpUsageHigh(webrtc::QualityScalerResource *this)
{
  v2 = (this - 104);
  pthread_mutex_lock((this - 104));
  v3 = this;
  v4 = *(this - 1);
  if (v4)
  {
    v5 = *(v3 - 14);
    v7 = v3 - 112;
    (*v5)();
    (*(*v4 + 16))(v4, &v7, 0);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t webrtc::QualityScalerResource::OnReportQpUsageLow(webrtc::QualityScalerResource *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this + 13);
  if (v2)
  {
    v4 = this;
    (**this)(this);
    (*(*v2 + 16))(v2, &v4, 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t non-virtual thunk towebrtc::QualityScalerResource::OnReportQpUsageLow(webrtc::QualityScalerResource *this)
{
  v2 = (this - 104);
  pthread_mutex_lock((this - 104));
  v3 = this;
  v4 = *(this - 1);
  if (v4)
  {
    v5 = *(v3 - 14);
    v7 = v3 - 112;
    (*v5)();
    (*(*v4 + 16))(v4, &v7, 1);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return pthread_mutex_unlock(v2);
}

BOOL webrtc::RefCountedObject<webrtc::QualityScalerResource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 32, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::QualityScalerResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288299F50;
  v2 = *(a1 + 120);
  *(a1 + 112) = &unk_288299FA0;
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2882A3350;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  pthread_mutex_destroy((a1 + 8));
  return a1;
}

void webrtc::RefCountedObject<webrtc::QualityScalerResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288299F50;
  v2 = *(a1 + 120);
  *(a1 + 112) = &unk_288299FA0;
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2882A3350;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  pthread_mutex_destroy((a1 + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::RefCountedObject<webrtc::QualityScalerResource>::~RefCountedObject(void *a1)
{
  *(a1 - 14) = &unk_288299F50;
  v2 = a1[1];
  *a1 = &unk_288299FA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 - 14) = &unk_2882A3350;
  if (*(a1 - 17) < 0)
  {
    operator delete(*(a1 - 5));
    v3 = (a1 - 13);
  }

  else
  {
    v3 = (a1 - 13);
  }

  return pthread_mutex_destroy(v3);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::QualityScalerResource>::~RefCountedObject(void *a1)
{
  *(a1 - 14) = &unk_288299F50;
  v2 = a1[1];
  *a1 = &unk_288299FA0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 - 14) = &unk_2882A3350;
  if (*(a1 - 17) < 0)
  {
    operator delete(*(a1 - 5));
  }

  pthread_mutex_destroy((a1 - 13));

  JUMPOUT(0x2743DA540);
}

void webrtc::QualityScalerSettings::QualityScalerSettings(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288293910;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 55) = 18;
  if (a1 + 32 > "sampling_period_ms" || a1 + 50 <= "sampling_period_ms")
  {
    strcpy((a1 + 32), "sampling_period_ms");
    *(a1 + 56) = 0;
    *a1 = &unk_2882938B0;
    *(a1 + 60) = 0;
    *(a1 + 64) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 127) = 17;
    if (a1 + 104 > "average_qp_window" || a1 + 121 <= "average_qp_window")
    {
      strcpy((a1 + 104), "average_qp_window");
      *(a1 + 128) = 0;
      *(a1 + 72) = &unk_2882938B0;
      *(a1 + 132) = 0;
      *(a1 + 136) = 0;
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      *(a1 + 152) = 0;
      *(a1 + 199) = 10;
      if (a1 + 176 > "min_frames" || a1 + 186 <= "min_frames")
      {
        strcpy((a1 + 176), "min_frames");
        *(a1 + 200) = 0;
        *(a1 + 144) = &unk_2882938B0;
        *(a1 + 204) = 0;
        *(a1 + 208) = 0;
        *(a1 + 232) = 0;
        *(a1 + 240) = 0;
        *(a1 + 224) = 0;
        *(a1 + 271) = 20;
        if (a1 + 248 > "initial_scale_factor" || a1 + 268 <= "initial_scale_factor")
        {
          strcpy((a1 + 248), "initial_scale_factor");
          *(a1 + 272) = 0;
          *(a1 + 216) = &unk_288293880;
          *(a1 + 280) = 0;
          *(a1 + 288) = 0;
          *(a1 + 312) = 0;
          *(a1 + 320) = 0;
          *(a1 + 304) = 0;
          *(a1 + 351) = 12;
          if (a1 + 328 > "scale_factor" || a1 + 340 <= "scale_factor")
          {
            strcpy((a1 + 328), "scale_factor");
            *(a1 + 352) = 0;
            *(a1 + 296) = &unk_288293880;
            *(a1 + 360) = 0;
            *(a1 + 368) = 0;
            *(a1 + 376) = &unk_288293910;
            *(a1 + 384) = 0;
            *(a1 + 392) = 0;
            *(a1 + 400) = 0;
            operator new();
          }
        }
      }
    }
  }

  __break(1u);
}

uint64_t webrtc::QualityScalerSettings::InitialBitrateFactor(webrtc::QualityScalerSettings *this)
{
  if ((*(this + 520) & 1) == 0)
  {
    return *(this + 64);
  }

  if (*(this + 64) >= 0.01)
  {
    return *(this + 64);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v1, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/quality_scaler_settings.cc");
  }

  return 0;
}

uint64_t webrtc::QualityScalingExperiment::Enabled(uint64_t a1)
{
  (*(*a1 + 16))(v10, a1, "WebRTC-Video-QualityScaling", 27);
  v2 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v2 = v10[1];
  }

  if (v2 < 7)
  {
    goto LABEL_10;
  }

  v3 = v10[0];
  if ((v11 & 0x80u) == 0)
  {
    v3 = v10;
  }

  v4 = *v3;
  v5 = *(v3 + 3);
  if (v4 == 1650552389 && v5 == 1684368482)
  {
    v7 = 1;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_11:
      v18 = &unk_288293910;
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else
  {
LABEL_10:
    v7 = v17 & v23;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(v10[0]);
  v18 = &unk_288293910;
  if ((v22 & 0x80000000) == 0)
  {
LABEL_12:
    v8 = __p;
    if (!__p)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  operator delete(v21);
  v8 = __p;
  if (__p)
  {
LABEL_13:
    v20 = v8;
    operator delete(v8);
  }

LABEL_14:
  v12 = &unk_288293910;
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v7 & 1;
}

uint64_t webrtc::anonymous namespace::WebRTCH265QualityScaling::WebRTCH265QualityScaling(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 55) = 6;
  if (a1 + 32 <= "low_qp" && a1 + 38 > "low_qp" || (strcpy((a1 + 32), "low_qp"), *(a1 + 56) = 0, *a1 = &unk_2882938B0, *(a1 + 60) = 0, *(a1 + 64) = 0, *(a1 + 88) = 0, *(a1 + 96) = 0, *(a1 + 127) = 7, *(a1 + 80) = 0, a1 + 104 <= "high_qp") && a1 + 111 > "high_qp")
  {
    __break(1u);
  }

  strcpy((a1 + 104), "high_qp");
  *(a1 + 128) = 0;
  *(a1 + 72) = &unk_2882938B0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  v8[0] = a1;
  v8[1] = a1 + 72;
  (*(*a2 + 16))(__p, a2, "WebRTC-H265-QualityScaling", 26);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  webrtc::ParseFieldTrial(v8, 2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void webrtc::QualityScalingExperiment::ParseSettings(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 16))(v14);
  if (v15 >= 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = v14[0];
  }

  if (sscanf(v3, "Enabled-%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d", &v12, &v12 + 4, &v12 + 8, &v12 + 12, v13, &v13[4], &v13[8], &v13[12], &v13[16], &v13[20], &v13[24]) == 11)
  {
    v4 = *v13;
    *a2 = v12;
    *(a2 + 16) = v4;
    *(a2 + 28) = *&v13[12];
    *(a2 + 44) = 1;
    if (v15 < 0)
    {
LABEL_11:
      operator delete(v14[0]);
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/quality_scaling_experiment.cc");
    }

    *a2 = 0;
    *(a2 + 44) = 0;
    if (v15 < 0)
    {
      goto LABEL_11;
    }
  }
}

unint64_t webrtc::QualityScalingExperiment::GetQpThresholds(int a1, uint64_t a2)
{
  if (a1 != 5)
  {
    goto LABEL_14;
  }

  v5 = v26 & v33;
  if (v26 & v33)
  {
    LOBYTE(v6) = v25;
    v2 = (v25 | (v32 << 32)) >> 8;
    v27 = &unk_288293910;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    v27 = &unk_288293910;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(__p);
LABEL_7:
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  v17 = &unk_288293910;
  if (v24 < 0)
  {
    operator delete(v22);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v5)
  {
    return v6 | (v2 << 8);
  }

LABEL_14:
  webrtc::QualityScalingExperiment::ParseSettings(a2, &v17);
  if (v23 != 1)
  {
    LOBYTE(v6) = 0;
    return v6 | (v2 << 8);
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      LOBYTE(v6) = 0;
      if (a1 == 4)
      {
        v7 = v19;
        v8 = HIDWORD(v19);
        v6 = 0;
        if (SHIDWORD(v19) < v19 || v19 < 1 || SHIDWORD(v19) > 51)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      return v6 | (v2 << 8);
    }

    v7 = v18;
    v8 = HIDWORD(v18);
LABEL_31:
    v6 = 0;
    if (v8 < v7 || v7 < 1 || v8 > 255)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (!a1)
  {
    v7 = v20;
    v8 = v21;
    goto LABEL_31;
  }

  LOBYTE(v6) = 0;
  if (a1 == 1)
  {
    v7 = v17;
    v8 = HIDWORD(v17);
    v6 = 0;
    if (SHIDWORD(v17) < v17 || v17 < 1 || SHIDWORD(v17) > 127)
    {
LABEL_37:
      v2 = v6 >> 8;
      return v6 | (v2 << 8);
    }

LABEL_34:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/quality_scaling_experiment.cc");
    }

    v6 = v7 & 0x7FFFFF00 | (v8 << 32) | v7;
    goto LABEL_37;
  }

  return v6 | (v2 << 8);
}

void *webrtc::QuantileNoiseEstimator::Estimate(uint64_t a1, uint32x4_t *a2, void *__dst)
{
  v5.i64[0] = 0x3400000034000000;
  v5.i64[1] = 0x3400000034000000;
  v6 = vdupq_n_s32(0xC2FDE2A9);
  v7 = vdupq_n_s32(0x3F317218u);
  v8 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[1]), v5), v6), v7);
  v9 = vcvtq_f32_u32(a2[2]);
  v10 = vcvtq_f32_u32(a2[3]);
  v118[0] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(*a2), v5), v6), v7);
  v118[1] = v8;
  v118[2] = vmulq_f32(vaddq_f32(vmulq_f32(v9, v5), v6), v7);
  v118[3] = vmulq_f32(vaddq_f32(vmulq_f32(v10, v5), v6), v7);
  v11 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[5]), v5), v6), v7);
  v118[4] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[4]), v5), v6), v7);
  v118[5] = v11;
  v12 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[7]), v5), v6), v7);
  v118[6] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[6]), v5), v6), v7);
  v118[7] = v12;
  v13 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[9]), v5), v6), v7);
  v118[8] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[8]), v5), v6), v7);
  v118[9] = v13;
  v14 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[11]), v5), v6), v7);
  v118[10] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[10]), v5), v6), v7);
  v118[11] = v14;
  v15 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[13]), v5), v6), v7);
  v118[12] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[12]), v5), v6), v7);
  v118[13] = v15;
  v16 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[15]), v5), v6), v7);
  v118[14] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[14]), v5), v6), v7);
  v118[15] = v16;
  v17 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[17]), v5), v6), v7);
  v118[16] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[16]), v5), v6), v7);
  v118[17] = v17;
  v18 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[19]), v5), v6), v7);
  v118[18] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[18]), v5), v6), v7);
  v118[19] = v18;
  v19 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[21]), v5), v6), v7);
  v118[20] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[20]), v5), v6), v7);
  v118[21] = v19;
  v20 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[23]), v5), v6), v7);
  v118[22] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[22]), v5), v6), v7);
  v118[23] = v20;
  v21 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[25]), v5), v6), v7);
  v118[24] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[24]), v5), v6), v7);
  v118[25] = v21;
  v22 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[27]), v5), v6), v7);
  v118[26] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[26]), v5), v6), v7);
  v118[27] = v22;
  v23 = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[29]), v5), v6), v7);
  v118[28] = vmulq_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[28]), v5), v6), v7);
  v118[29] = v23;
  v24 = vmulq_f32(vcvtq_f32_u32(a2[30]), v5);
  v25 = vaddq_f32(vmulq_f32(vcvtq_f32_u32(a2[31]), v5), v6);
  v118[30] = vmulq_f32(vaddq_f32(v24, v6), v7);
  v118[31] = vmulq_f32(v25, v7);
  v30.i32[1] = 872415232;
  v119 = ((a2[32].u32[0] * 0.00000011921) + -126.94) * 0.69315;
  v26 = *(a1 + 3612);
  v27 = -512;
  v28 = vdupq_n_s32(0x42200000u);
  v29 = vdupq_n_s32(0x3C23D70Au);
  *v30.i32 = v26;
  v31 = vdupq_lane_s32(v30, 0);
  __asm
  {
    FMOV            V0.4S, #1.0
    FMOV            V1.4S, #-0.75
    FMOV            V2.4S, #0.25
  }

  v39 = 1.0 / (v26 + 1.0);
  v40 = vdupq_n_s32(0x42480000u);
  do
  {
    v41 = *(a1 + v27 + 512);
    v42 = vmulq_n_f32(vbslq_s8(vcgtq_f32(v41, _Q0), vdivq_f32(v28, v41), v28), v39);
    v43 = v118[v27 / 0x10 + 32];
    v44 = (a1 + v27 + 2060);
    v45 = vbslq_s8(vcgtq_f32(v43, *v44), vmlaq_f32(*v44, _Q2, v42), vmlaq_f32(*v44, _Q1, v42));
    *v44 = v45;
    v46 = vmovn_s32(vcgtq_f32(v29, vabdq_f32(v43, v45)));
    v47 = vmlaq_f32(v40, v41, v31);
    if (v46.i8[0])
    {
      *(a1 + v27 + 512) = v39 * v47.f32[0];
      if ((v46.i8[2] & 1) == 0)
      {
LABEL_5:
        if (v46.i8[4])
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }

    else if ((v46.i8[2] & 1) == 0)
    {
      goto LABEL_5;
    }

    *(a1 + v27 + 516) = vmuls_lane_f32(v39, *v47.f32, 1);
    if (v46.i8[4])
    {
LABEL_10:
      *(a1 + v27 + 520) = vmuls_lane_f32(v39, v47, 2);
      if ((v46.i8[6] & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

LABEL_6:
    if ((v46.i8[6] & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_11:
    *(a1 + v27 + 524) = vmuls_lane_f32(v39, v47, 3);
LABEL_2:
    v27 += 16;
  }

  while (v27);
  v48 = *(a1 + 512);
  v49 = 40.0;
  if (v48 > 1.0)
  {
    v49 = 40.0 / v48;
  }

  v50 = v39 * v49;
  v51 = v119;
  v52 = *(a1 + 2060);
  v53 = v52 + (v50 * -0.75);
  v54 = v52 + (v50 * 0.25);
  if (v119 <= v52)
  {
    v54 = v53;
  }

  *(a1 + 2060) = v54;
  if (vabds_f32(v51, v54) < 0.01)
  {
    *(a1 + 512) = v39 * ((*v30.i32 * v48) + 50.0);
  }

  if (v26 < 200)
  {
    LODWORD(v55) = -1;
  }

  else
  {
    v26 = 0;
    if (*(a1 + 3624) >= 200)
    {
      LODWORD(v55) = 0;
    }

    else
    {
      LODWORD(v55) = -1;
    }
  }

  *(a1 + 3612) = v26 + 1;
  v56 = *(a1 + 3616);
  *v30.i32 = v56;
  v57 = vdupq_lane_s32(v30, 0);
  v58 = 1.0 / (v56 + 1.0);
  v59 = -512;
  v60 = vdupq_n_s32(0x42200000u);
  v61 = vdupq_n_s32(0x3C23D70Au);
  v62 = vdupq_n_s32(0x42480000u);
  while (2)
  {
    v63 = *(a1 + v59 + 1028);
    v64 = vmulq_n_f32(vbslq_s8(vcgtq_f32(v63, _Q0), vdivq_f32(v60, v63), v60), v58);
    v65 = v118[v59 / 0x10 + 32];
    v66 = vbslq_s8(vcgtq_f32(v65, *(a1 + v59 + 2576)), vmlaq_f32(*(a1 + v59 + 2576), _Q2, v64), vmlaq_f32(*(a1 + v59 + 2576), _Q1, v64));
    *(a1 + v59 + 2576) = v66;
    v67 = vmovn_s32(vcgtq_f32(v61, vabdq_f32(v65, v66)));
    v68 = vmlaq_f32(v62, v63, v57);
    if (v67.i8[0])
    {
      *(a1 + v59 + 1028) = v58 * v68.f32[0];
      if (v67.i8[2])
      {
        goto LABEL_31;
      }

LABEL_27:
      if ((v67.i8[4] & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      *(a1 + v59 + 1036) = vmuls_lane_f32(v58, v68, 2);
      if (v67.i8[6])
      {
LABEL_33:
        *(a1 + v59 + 1040) = vmuls_lane_f32(v58, v68, 3);
      }
    }

    else
    {
      if ((v67.i8[2] & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      *(a1 + v59 + 1032) = vmuls_lane_f32(v58, *v68.f32, 1);
      if (v67.i8[4])
      {
        goto LABEL_32;
      }

LABEL_28:
      if (v67.i8[6])
      {
        goto LABEL_33;
      }
    }

    v59 += 16;
    if (v59)
    {
      continue;
    }

    break;
  }

  v69 = *(a1 + 1028);
  v70 = 40.0;
  if (v69 > 1.0)
  {
    v70 = 40.0 / v69;
  }

  v71 = v58 * v70;
  v72 = v119;
  v73 = *(a1 + 2576);
  v74 = v73 + (v71 * -0.75);
  v75 = v73 + (v71 * 0.25);
  if (v119 <= v73)
  {
    v75 = v74;
  }

  *(a1 + 2576) = v75;
  if (vabds_f32(v72, v75) < 0.01)
  {
    *(a1 + 1028) = v58 * ((*v30.i32 * v69) + 50.0);
  }

  if (v56 >= 200)
  {
    v56 = 0;
    if (*(a1 + 3624) > 199)
    {
      LODWORD(v55) = 129;
    }
  }

  *(a1 + 3616) = v56 + 1;
  v76 = *(a1 + 3620);
  *v30.i32 = v76;
  v77 = vdupq_lane_s32(v30, 0);
  v78 = 1.0 / (v76 + 1.0);
  v79 = -512;
  v80 = vdupq_n_s32(0x42200000u);
  v81 = vdupq_n_s32(0x3C23D70Au);
  v82 = vdupq_n_s32(0x42480000u);
  while (2)
  {
    v83 = *(a1 + v79 + 1544);
    v84 = vmulq_n_f32(vbslq_s8(vcgtq_f32(v83, _Q0), vdivq_f32(v80, v83), v80), v78);
    v85 = v118[v79 / 0x10 + 32];
    v86 = (a1 + v79 + 3092);
    v87 = vbslq_s8(vcgtq_f32(v85, *v86), vmlaq_f32(*v86, _Q2, v84), vmlaq_f32(*v86, _Q1, v84));
    *v86 = v87;
    v88 = vmovn_s32(vcgtq_f32(v81, vabdq_f32(v85, v87)));
    v89 = vmlaq_f32(v82, v83, v77);
    if (v88.i8[0])
    {
      *(a1 + v79 + 1544) = v78 * v89.f32[0];
      if (v88.i8[2])
      {
        goto LABEL_51;
      }

LABEL_47:
      if ((v88.i8[4] & 1) == 0)
      {
        goto LABEL_48;
      }

LABEL_52:
      *(a1 + v79 + 1552) = vmuls_lane_f32(v78, v89, 2);
      if (v88.i8[6])
      {
LABEL_53:
        *(a1 + v79 + 1556) = vmuls_lane_f32(v78, v89, 3);
      }
    }

    else
    {
      if ((v88.i8[2] & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_51:
      *(a1 + v79 + 1548) = vmuls_lane_f32(v78, *v89.f32, 1);
      if (v88.i8[4])
      {
        goto LABEL_52;
      }

LABEL_48:
      if (v88.i8[6])
      {
        goto LABEL_53;
      }
    }

    v79 += 16;
    if (v79)
    {
      continue;
    }

    break;
  }

  v90 = *(a1 + 1544);
  v91 = 40.0;
  if (v90 > 1.0)
  {
    v91 = 40.0 / v90;
  }

  v92 = v78 * v91;
  v93 = v119;
  v94 = *(a1 + 3092);
  v95 = v94 + (v92 * -0.75);
  v96 = v94 + (v92 * 0.25);
  if (v119 <= v94)
  {
    v96 = v95;
  }

  *(a1 + 3092) = v96;
  if (vabds_f32(v93, v96) < 0.01)
  {
    *(a1 + 1544) = v78 * ((*v30.i32 * v90) + 50.0);
  }

  v97 = *(a1 + 3624);
  if (v97 <= 199 || v76 <= 199)
  {
    v55 = v55;
  }

  else
  {
    v55 = 258;
  }

  if (v76 <= 199)
  {
    v99 = v76 + 1;
  }

  else
  {
    v99 = 1;
  }

  *(a1 + 3620) = v99;
  if (v97 <= 199)
  {
    *(a1 + 3624) = v97 + 1;
    v55 = 258;
    goto LABEL_72;
  }

  if ((v55 & 0x80000000) == 0)
  {
LABEL_72:
    v100 = 4 * v55;
    v101 = a1 + 1548 + v100;
    v102 = a1 + 3096;
    if ((v100 - 1533) >= 0x10)
    {
      v104 = 0;
      v112 = vdupq_n_s32(0x4053AAE0u);
      v113 = vdupq_n_s32(0x3EDE5BD9u);
      v103 = 128;
      do
      {
        v117 = vmulq_f32(vmulq_f32(*(v101 + v104), v113), v112);
        v114 = exp2f(v117.f32[1]);
        *&v105 = exp2f(v117.f32[0]);
        *(&v105 + 1) = v114;
        v115 = v105;
        v106 = exp2f(v117.f32[2]);
        v107 = v115;
        *(&v107 + 2) = v106;
        v116 = v107;
        v108 = exp2f(v117.f32[3]);
        v109 = v116;
        *(&v109 + 3) = v108;
        *(v102 + v104) = v109;
        v104 += 16;
      }

      while (v104 != 512);
    }

    else
    {
      v103 = 0;
    }

    v110 = 4 * v103;
    do
    {
      *(v102 + v110) = exp2f((*(v101 + v110) * 0.43429) * 3.3073);
      v110 += 4;
    }

    while (v110 != 516);
  }

  return memmove(__dst, (a1 + 3096), 0x204uLL);
}

uint64_t webrtc::rtcp::RapidResyncRequest::Create(unsigned int *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -123;
    *(a2 + *a3 + 1) = -51;
    *(a2 + *a3 + 2) = (v13 - 4) >> 10;
    *(a2 + *a3 + 3) = (v13 - 4) >> 2;
    v14 = *a3 + 4;
    *a3 = v14;
    v15 = (a2 + v14);
    *v15 = bswap32(a1[2]);
    v15[1] = bswap32(a1[3]);
    *a3 += 8;
    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

void webrtc::RateControlSettings::RateControlSettings(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 16843009;
  *(a1 + 80) = 0;
  (*(*a2 + 16))(&v3, a2, "WebRTC-CongestionWindow", 23);
  if ((v3.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v3.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v3.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::__assign_external(&v3, "QueueSize:350,MinBitrate:30000,DropFrame:true", 0x2DuLL);
  }

  operator new();
}

uint64_t webrtc::RateControlSettings::LibvpxVp8QpMax(webrtc::RateControlSettings *this)
{
  if (*(this + 64) != 1 || *(this + 15) < 0x40u)
  {
    return *(this + 60);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v1, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/rate_control_settings.cc");
  }

  return 0;
}

uint64_t webrtc::RateLimiter::TryUseRate(webrtc::RateLimiter *this, uint64_t a2)
{
  pthread_mutex_lock((this + 8));
  v4 = (*(**this + 16))();
  v5 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v5;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 < 0)
  {
    v7 = v6 - -v4 / 0x3E8uLL;
  }

  else
  {
    v7 = v5;
  }

  v8 = webrtc::RateStatistics::Rate((this + 72), v7);
  if ((v9 & 1) != 0 && (8000 * a2) / *(this + 21) + v8 > *(this + 44))
  {
    v10 = 0;
  }

  else
  {
    webrtc::RateStatistics::Update((this + 72), a2, v7);
    v10 = 1;
  }

  pthread_mutex_unlock((this + 8));
  return v10;
}

void webrtc::RateStatistics::Reset(webrtc::RateStatistics *this)
{
  *(this + 64) = 0;
  *(this + 17) = 0;
  *(this + 6) = 0;
  *(this + 7) = -1;
  *(this + 11) = *(this + 10);
  v2 = *(this + 1);
  v3 = *(this + 2) - v2;
  if (v3)
  {
    v4 = (this + 40);
    v5 = *(this + 4);
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    while (v8 != v2[(*(this + 5) + v5) / 0xAA] + 24 * ((*(this + 5) + v5) % 0xAA))
    {
      if (!v8)
      {
        __break(1u);
        return;
      }

      v8 += 24;
      if (v8 - v7 == 4080)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  else
  {
    v4 = (this + 40);
  }

  *v4 = 0;
  v10 = v3 >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = *(this + 2);
      v2 = (*(this + 1) + 8);
      *(this + 1) = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 170;
  }

  *(this + 4) = v12;
}

void webrtc::RateStatistics::Update(webrtc::RateStatistics *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(this + 11);
    v8 = *(this + 4);
    v9 = *(this + 1);
    v10 = *(v9[(v6 + v8 - 1) / 0xAA] + 3 * ((v6 + v8 - 1) % 0xAA) + 2) > a3 - (v7 * 1.5);
    v11 = a3 - v7;
    do
    {
      v12 = v9[v8 / 0xAA] + 24 * (v8 % 0xAA);
      if (*(v12 + 16) > v11)
      {
        break;
      }

      *(this + 6) -= *v12;
      *(this + 17) -= *(v12 + 8);
      --v6;
      *(this + 4) = ++v8;
      *(this + 5) = v6;
      if (v8 >= 0x154)
      {
        operator delete(*v9);
        v9 = (*(this + 1) + 8);
        *(this + 1) = v9;
        v6 = *(this + 5);
        v8 = *(this + 4) - 170;
        *(this + 4) = v8;
      }
    }

    while (v6);
  }

  else
  {
    v10 = 0;
  }

  if (*(this + 7) == -1 || *(this + 17) == 0 && !v10)
  {
    *(this + 7) = v3;
  }

  v13 = *(this + 1);
  v14 = *(this + 4);
  if (!v6)
  {
    goto LABEL_19;
  }

  v15 = v6 + v14 - 1;
  v16 = v15 / 0xAA;
  v17 = *&v13[8 * (v15 / 0xAA)];
  v18 = v15 % 0xAA;
  v19 = *(v17 + 24 * v18 + 16);
  if (v19 != v3)
  {
    if (v19 > v3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        if (!*(this + 5))
        {
          goto LABEL_40;
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/rate_statistics.cc");
      }

      v6 = *(this + 5);
      if (!v6)
      {
        goto LABEL_40;
      }

      v14 = *(this + 4);
      v13 = *(this + 1);
      v3 = *(*&v13[8 * ((v6 + v14 - 1) / 0xAA)] + 24 * ((v6 + v14 - 1) % 0xAA) + 16);
    }

LABEL_19:
    v27 = *(this + 2);
    v28 = 170 * ((v27 - v13) >> 3) - 1;
    if (v27 == v13)
    {
      v28 = 0;
    }

    if (v28 == v14 + v6)
    {
      if (v14 < 0xAA)
      {
        v29 = *(this + 3);
        v30 = &v29[-*this];
        if (v27 - v13 < v30)
        {
          if (v29 != v27)
          {
            operator new();
          }

          operator new();
        }

        v31 = v30 >> 2;
        if (v29 == *this)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        if (!(v32 >> 61))
        {
          operator new();
        }

LABEL_41:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      *(this + 4) = v14 - 170;
      v38 = *v13;
      *(this + 1) = v13 + 8;
      std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(this, &v38);
      v14 = *(this + 4);
      v6 = *(this + 5);
      v13 = *(this + 1);
      v27 = *(this + 2);
    }

    if (v27 != v13)
    {
      v33 = v6 + v14;
      v16 = v33 / 0xAA;
      v34 = *&v13[8 * (v33 / 0xAA)];
      if (v34)
      {
        v18 = v33 % 0xAA;
        v35 = v34 + 24 * (v33 % 0xAA);
        *v35 = 0;
        *(v35 + 8) = 0;
        *(v35 + 16) = v3;
        *(this + 5) = v6 + 1;
        if (v6 != -1)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_35:
  v36 = *&v13[8 * v16] + 24 * v18;
  *v36 += a2;
  ++*(v36 + 8);
  v37 = *(this + 6);
  if ((v37 ^ 0x7FFFFFFFFFFFFFFFLL) <= a2)
  {
    *(this + 64) = 1;
  }

  else
  {
    *(this + 6) = v37 + a2;
  }

  ++*(this + 17);
}

unint64_t webrtc::RateStatistics::Rate(webrtc::RateStatistics *this, uint64_t a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    v5 = a2 - *(this + 11);
    v6 = *(this + 1);
    v7 = *(this + 4);
    do
    {
      v8 = v6[v7 / 0xAA] + 24 * (v7 % 0xAA);
      if (*(v8 + 16) > v5)
      {
        break;
      }

      *(this + 6) -= *v8;
      *(this + 17) -= *(v8 + 8);
      --v4;
      *(this + 4) = ++v7;
      *(this + 5) = v4;
      if (v7 >= 0x154)
      {
        operator delete(*v6);
        v6 = (*(this + 1) + 8);
        *(this + 1) = v6;
        v4 = *(this + 5);
        v7 = *(this + 4) - 170;
        *(this + 4) = v7;
      }
    }

    while (v4);
  }

  v9 = *(this + 7);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = *(this + 11);
  v11 = v9 > a2 - v10 ? (a2 - v9 + 1) : v10;
  v12 = *(this + 17);
  v13 = !v12 || v11 < 2;
  if (v13 || v12 <= 1 && v10 > v11)
  {
    return 0;
  }

  if (*(this + 64))
  {
    return 0;
  }

  v14 = (*(this + 6) * (*(this + 18) / v11)) + 0.5;
  if (v14 > 9.2234e18)
  {
    return 0;
  }

  else
  {
    return v14 & 0xFFFFFFFFFFFFFF00 | v14;
  }
}

uint64_t webrtc::RateStatistics::SetWindowSize(webrtc::RateStatistics *this, uint64_t a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (*(this + 10) < a2)
  {
    return 0;
  }

  v5 = *(this + 7);
  v6 = a3 - a2;
  if (v5 != -1)
  {
    if (v5 <= v6 + 1)
    {
      v5 = v6 + 1;
    }

    *(this + 7) = v5;
  }

  *(this + 11) = a2;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = *(this + 4);
    do
    {
      v10 = v8[v9 / 0xAA] + 24 * (v9 % 0xAA);
      if (*(v10 + 16) > v6)
      {
        break;
      }

      *(this + 6) -= *v10;
      *(this + 17) -= *(v10 + 8);
      --v7;
      *(this + 4) = ++v9;
      *(this + 5) = v7;
      if (v9 >= 0x154)
      {
        operator delete(*v8);
        v8 = (*(this + 1) + 8);
        *(this + 1) = v8;
        v7 = *(this + 5);
        v9 = *(this + 4) - 170;
        *(this + 4) = v9;
      }
    }

    while (v7);
  }

  return 1;
}

void *std::deque<webrtc::RateStatistics::Bucket>::__append_with_size[abi:sn200100]<std::__deque_iterator<webrtc::RateStatistics::Bucket,webrtc::RateStatistics::Bucket const*,webrtc::RateStatistics::Bucket const&,webrtc::RateStatistics::Bucket const* const*,long,170l>>(void *result, void *a2, __int128 *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  v10 = (v9 - v8) >> 3;
  v11 = 170 * v10 - 1;
  if (v9 == v8)
  {
    v11 = 0;
  }

  v13 = result[4];
  v12 = result[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    if (v9 == v8)
    {
      ++v17;
    }

    if (v17 % 0xAA)
    {
      v18 = v17 / 0xAA + 1;
    }

    else
    {
      v18 = v17 / 0xAA;
    }

    if (v18 >= v13 / 0xAA)
    {
      v19 = v13 / 0xAA;
    }

    else
    {
      v19 = v18;
    }

    if (v18 <= v13 / 0xAA)
    {
      for (result[4] = v13 - 170 * v19; v19; --v19)
      {
        v24 = v7[1];
        v37 = *v24;
        v7[1] = v24 + 1;
        result = std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(v7, &v37);
      }
    }

    else
    {
      v20 = v18 - v19;
      v21 = result[3] - *result;
      if (v18 - v19 > (v21 >> 3) - v10)
      {
        v22 = v21 >> 2;
        if (v22 <= v20 + v10)
        {
          v23 = v20 + v10;
        }

        else
        {
          v23 = v22;
        }

        if (!v23)
        {
          operator new();
        }

        if (!(v23 >> 61))
        {
          operator new();
        }

LABEL_55:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v20)
      {
        if (result[3] != result[2])
        {
          operator new();
        }

        operator new();
      }

      for (result[4] = v13 - 170 * v19; v19; --v19)
      {
        v25 = v7[1];
        v37 = *v25;
        v7[1] = v25 + 1;
        result = std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(v7, &v37);
      }
    }

    v12 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v14 = v7[4] + v12;
  }

  v26 = (v8 + 8 * (v14 / 0xAA));
  if (v9 != v8)
  {
    v27 = *v26 + 24 * (v14 % 0xAA);
    v28 = v27;
    if (a4)
    {
      goto LABEL_34;
    }

LABEL_38:
    v30 = v26;
    if (v27 == v28)
    {
      return result;
    }

    goto LABEL_41;
  }

  v27 = 0;
  v28 = 0;
  if (!a4)
  {
    goto LABEL_38;
  }

LABEL_34:
  v29 = a4 - 0x5555555555555555 * ((v28 - *v26) >> 3);
  if (v29 < 1)
  {
    v31 = 169 - v29;
    v30 = &v26[-(v31 / 0xAA)];
    v28 = *v30 + 24 * (170 * (v31 / 0xAA) - v31) + 4056;
    if (v27 == v28)
    {
      return result;
    }
  }

  else
  {
    v30 = &v26[v29 / 0xAAuLL];
    v28 = *v30 + 24 * (v29 % 0xAAuLL);
    if (v27 == v28)
    {
      return result;
    }
  }

  do
  {
LABEL_41:
    v32 = v28;
    if (v26 != v30)
    {
      v32 = *v26 + 4080;
    }

    if (v27 == v32)
    {
      v7[5] = v12;
      if (v26 != v30)
      {
        goto LABEL_52;
      }

      return result;
    }

    v33 = v27;
    do
    {
      if (!v33)
      {
        __break(1u);
        goto LABEL_55;
      }

      v34 = *a3;
      *(v33 + 16) = *(a3 + 2);
      *v33 = v34;
      a3 = (a3 + 24);
      if ((a3 - *a2) == 4080)
      {
        v35 = a2[1];
        ++a2;
        a3 = v35;
      }

      v33 += 24;
    }

    while (v33 != v32);
    v12 = v7[5] - 0x5555555555555555 * ((v32 - v27) >> 3);
    v7[5] = v12;
    if (v26 == v30)
    {
      return result;
    }

LABEL_52:
    v36 = v26[1];
    ++v26;
    v27 = v36;
  }

  while (v36 != v28);
  return result;
}

void webrtc::RateTracker::~RateTracker(webrtc::RateTracker *this)
{
  *this = &unk_28829A088;
  if (*(this + 3))
  {
    MEMORY[0x2743DA520](*(this + 3), 0x1000C8000313F17);
  }
}

{
  *this = &unk_28829A088;
  if (*(this + 3))
  {
    MEMORY[0x2743DA520](*(this + 3), 0x1000C8000313F17);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

double webrtc::RateTracker::ComputeRateForInterval(webrtc::RateTracker *this, uint64_t a2)
{
  if (*(this + 6) == -1)
  {
    return 0.0;
  }

  v4 = (*(*this + 16))(this);
  v5 = *(this + 1);
  v6 = *(this + 2);
  if ((v6 * v5) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6 * v5;
  }

  v8 = *(this + 7);
  if (v4 <= v7 + v8)
  {
    v7 = v4 - v8;
    if (v4 - v8 >= v5)
    {
      v11 = 0;
      v10 = v6 - *(this + 5);
      if (v10 <= v6 && v4 != v8)
      {
        goto LABEL_17;
      }
    }

    return 0.0;
  }

  v9 = v6 * v5 + v4 - *(this + 6) - v7;
  v10 = v9 / v5;
  v11 = v9 % v5;
  if (v9 / v5 > v6 || v7 == 0)
  {
    return 0.0;
  }

LABEL_17:
  v15 = *(this + 5) + 1;
  v16 = v15 + v10;
  v17 = v6 + 1;
  v18 = v16 % (v6 + 1);
  v19 = *(this + 3);
  v20 = *(v19 + 8 * v18) * (v5 - v11) + (v5 >> 1);
  if (v18 == v6)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  for (i = v20 / v5; v21 != v15 % v17; v21 = (v21 + 1) % v17)
  {
    i += *(v19 + 8 * v21);
  }

  return (1000 * i) / v7;
}

uint64_t webrtc::RateTracker::Time(webrtc::RateTracker *this)
{
  if (webrtc::g_clock)
  {
    v1 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v1 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  return v1 / 1000000;
}

void webrtc::RateUtilizationTracker::OnDataRateChanged(webrtc::RateUtilizationTracker *a1, TimeDelta a2, Timestamp a3)
{
  var0 = a3.var0;
  *(a1 + 2) = a2;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return;
  }

  v4 = *(a1 + 7);
  v5 = *(a1 + 4);
  v6 = *(v5 + 8 * ((v3 + v4 - 1) / 0xAAuLL)) + 24 * ((v3 + v4 - 1) % 0xAAuLL);
  if (*v6 > a3.var0)
  {
    webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, a2, &v24);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v22, &v24);
    v23 = &v21;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v24.__r_.__value_.__l.__data_);
    webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(v6, v16, &v27);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v24, &v27);
    v25 = &v22;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v27.__r_.__value_.__l.__data_);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rate_utilization_tracker.cc", 43, "time >= last_data_point.time", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v17, v18, v19, v20, v25);
    goto LABEL_17;
  }

  if (*v6 != a3.var0)
  {
    v7 = *(a1 + 5);
    v8 = 170 * ((v7 - v5) >> 3) - 1;
    if (v7 == v5)
    {
      v8 = 0;
    }

    if (v8 == v4 + v3)
    {
      v9 = a1;
      v10 = a3.var0;
      v11 = a2.var0;
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::__add_back_capacity(a1 + 3);
      a2.var0 = v11;
      a1 = v9;
      a3.var0 = v10;
      v5 = *(v9 + 4);
      v7 = *(v9 + 5);
    }

    if (v7 != v5)
    {
      v12 = *(a1 + 8) + *(a1 + 7);
      v13 = *(v5 + 8 * (v12 / 0xAA));
      if (v13)
      {
        v14 = (v13 + 24 * (v12 % 0xAA));
        v14->var0 = a3.var0;
        v14[1].var0 = a2.var0;
        v14[2].var0 = 0;
        ++*(a1 + 8);
        goto LABEL_13;
      }
    }

LABEL_17:
    __break(1u);
    return;
  }

  *(v6 + 8) = a2;
LABEL_13:
  v15.var0 = a3.var0;

  webrtc::RateUtilizationTracker::CullOldData(a1, v15);
}

void webrtc::RateUtilizationTracker::CullOldData(webrtc::RateUtilizationTracker *this, Timestamp a2)
{
  v3 = a2.var0 / 0x3E8;
  if (a2.var0 % 0x3E8 > 0x1F3)
  {
    ++v3;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 - -a2.var0 / 0x3E8uLL;
  if (a2.var0 >= 0)
  {
    v5 = v3;
  }

  v6 = *(this + 1);
  v7 = v6 / 0x3E8uLL;
  if (v6 % 0x3E8uLL > 0x1F3)
  {
    ++v7;
  }

  if (-v6 % 0x3E8uLL <= 0x1F4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 - -v6 / 0x3E8uLL;
  if (v6 >= 0)
  {
    v9 = v7;
  }

  if (v5 <= v9)
  {
    v13 = 0;
    v14 = *(this + 8);
    if (!v14)
    {
      return;
    }

    goto LABEL_30;
  }

  v10 = a2.var0 - v6;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
  {
    v10 = 0x8000000000000000;
  }

  if (v6 == 0x8000000000000000)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(this + 8);
  if (v14)
  {
LABEL_30:
    v15 = *(this + 4);
    v16 = *(this + 7);
    do
    {
      v17 = (v15[v16 / 0xAA] + 24 * (v16 % 0xAA));
      if (*v17 >= v13 && v14 <= *this && v17[2])
      {
        break;
      }

      --v14;
      *(this + 7) = ++v16;
      *(this + 8) = v14;
      if (v16 >= 0x154)
      {
        operator delete(*v15);
        v15 = (*(this + 4) + 8);
        *(this + 4) = v15;
        v14 = *(this + 8);
        v16 = *(this + 7) - 170;
        *(this + 7) = v16;
      }
    }

    while (v14);
  }
}

void webrtc::RateUtilizationTracker::OnDataProduced(webrtc::RateUtilizationTracker *a1, TimeDelta x1_0, Timestamp a3)
{
  var0 = a3.var0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4);
  if (v3)
  {
    v5 = *(a1 + 7);
    v6 = *(v4 + 8 * ((v3 + v5 - 1) / 0xAAuLL)) + 24 * ((v3 + v5 - 1) % 0xAAuLL);
    if (*v6 > a3.var0)
    {
LABEL_33:
      webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, x1_0, &v35);
      webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v33, &v35);
      v34 = &v32;
      webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v35.__r_.__value_.__l.__data_);
      webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(v6, v26, &v38);
      webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v35, &v38);
      v36 = &v33;
      webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v38.__r_.__value_.__l.__data_);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rate_utilization_tracker.cc", 62, "time >= last_data_point.time", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v27, v28, v29, v30, v36);
      webrtc::RateUtilizationTracker::GetRateUtilizationFactor(v31, v40);
      return;
    }

    if (*v6 == a3.var0)
    {
      v7 = *(v6 + 16);
      v8 = 0x8000000000000000;
      if (x1_0.var0 != 0x8000000000000000 && v7 != 0x8000000000000000)
      {
        v8 = v7 + x1_0.var0;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL || x1_0.var0 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v8;
      }

      *(v6 + 16) = v11;
      goto LABEL_29;
    }

    v17 = *(a1 + 5);
    v18 = 170 * ((v17 - v4) >> 3) - 1;
    v6 = *(a1 + 2);
    if (v17 == v4)
    {
      v18 = 0;
    }

    if (v18 == v5 + v3)
    {
      v19 = a1;
      v20 = a3.var0;
      v21 = x1_0.var0;
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::__add_back_capacity(a1 + 3);
      x1_0.var0 = v21;
      a1 = v19;
      a3.var0 = v20;
      v4 = *(v19 + 4);
      v17 = *(v19 + 5);
    }

    if (v17 == v4)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v12 = *(a1 + 5);
    v13 = 170 * ((v12 - v4) >> 3) - 1;
    v6 = *(a1 + 2);
    if (v12 == v4)
    {
      v13 = 0;
    }

    if (v13 == *(a1 + 7))
    {
      v14 = a1;
      v15 = a3.var0;
      v16 = x1_0.var0;
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::__add_back_capacity(a1 + 3);
      x1_0.var0 = v16;
      a1 = v14;
      a3.var0 = v15;
      v4 = *(v14 + 4);
      v12 = *(v14 + 5);
    }

    if (v12 == v4)
    {
      goto LABEL_32;
    }
  }

  v22 = *(a1 + 8) + *(a1 + 7);
  v23 = *(v4 + 8 * (v22 / 0xAA));
  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = (v23 + 24 * (v22 % 0xAA));
  v24->var0 = a3.var0;
  v24[1].var0 = v6;
  v24[2].var0 = x1_0.var0;
  ++*(a1 + 8);
LABEL_29:
  v25.var0 = a3.var0;

  webrtc::RateUtilizationTracker::CullOldData(a1, v25);
}

void *webrtc::RateUtilizationTracker::GetRateUtilizationFactor(webrtc::RateUtilizationTracker *this, Timestamp a2)
{
  var0 = a2.var0;
  v2 = *(this + 8);
  if (!v2)
  {
    v12 = 0.0;
    return *&v12;
  }

  v3 = *(this + 7);
  v4 = *(this + 4);
  v5 = (*(v4 + 8 * ((v2 + v3 - 1) / 0xAA)) + 24 * ((v2 + v3 - 1) % 0xAA));
  v6 = *v5;
  v7 = a2.var0 - *v5;
  if (a2.var0 >= *v5)
  {
    v8 = *(*(v4 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA) + 16);
    v9 = v2 - 1;
    if (v9)
    {
      v13 = 0;
      v10 = 0;
      v11 = *(*(v4 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA) + 16);
      do
      {
        v14 = v3 / 0xAA;
        v15 = v3 % 0xAA;
        ++v3;
        v16 = (*(v4 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA));
        v17 = v16[2];
        v18 = v17 == 0x8000000000000000 || v8 == 0x8000000000000000;
        v19 = v17 + v8;
        if (v18)
        {
          v19 = 0x8000000000000000;
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = (*(v4 + 8 * v14) + 24 * v15);
        v21 = *v16;
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v19;
        }

        v23 = *v20;
        v22 = v20[1];
        v24 = v21 - v23;
        if (v23 == 0x7FFFFFFFFFFFFFFFLL || v21 == 0x8000000000000000)
        {
          v24 = 0x8000000000000000;
        }

        if (v21 == 0x7FFFFFFFFFFFFFFFLL || v23 == 0x8000000000000000)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v24;
        }

        v28 = ((v22 * v27 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
        v29 = (v28 >> 21) + (v28 >> 63);
        v30 = v29 + v13;
        if (v13 == 0x8000000000000000)
        {
          v30 = 0x8000000000000000;
        }

        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v30;
        }

        v31 = v29 + v10;
        if (v10 == 0x8000000000000000)
        {
          v31 = 0x8000000000000000;
        }

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v31;
        }

        if (v10 >= v11)
        {
          v10 = v11;
        }

        if (v17)
        {
          v10 = 0;
          v11 = v17;
        }

        --v9;
      }

      while (v9);
      if (v13)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(*(v4 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA) + 16);
    }

    v13 = 0;
    v12 = 0.0;
    if (*(this + 2))
    {
LABEL_43:
      if (v6 == 0x7FFFFFFFFFFFFFFFLL || a2.var0 == 0x8000000000000000)
      {
        v7 = 0x8000000000000000;
      }

      if (v6 == 0x8000000000000000)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v7;
      }

      if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v34 = ((v5[1] * v33 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
      v35 = (v34 >> 21) + (v34 >> 63);
      v36 = v11 - v10;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x8000000000000000)
      {
        v36 = 0x8000000000000000;
      }

      if (v11 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x8000000000000000)
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v35 <= v36)
      {
        v35 = v36;
      }

      v40 = v13 == 0x7FFFFFFFFFFFFFFFLL || v36 == 0x7FFFFFFFFFFFFFFFLL;
      v41 = v35 + v13;
      if (v13 == 0x8000000000000000)
      {
        v41 = 0x8000000000000000;
      }

      v42 = v41;
      v43 = INFINITY;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = v8;
      }

      if (v8 == 0x8000000000000000)
      {
        v43 = -INFINITY;
      }

      if (v40)
      {
        v42 = 9.22337204e18;
      }

      v12 = v43 / v42;
    }

    return *&v12;
  }

  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&var0, a2.var0, &v56);
  webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v54, &v56);
  v55 = &v53;
  webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v56.__r_.__value_.__l.__data_);
  v46 = std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::back(this + 3);
  webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(v46, v47, &v59);
  webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v56, &v59);
  v57 = &v54;
  webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v59.__r_.__value_.__l.__data_);
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rate_utilization_tracker.cc", 80, "time >= data_points_.back().time", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v48, v49, v50, v51, v57);
  return std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::back(v52);
}

void *std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::back(void *result)
{
  v1 = result[5];
  if (v1)
  {
    return (*(result[1] + 8 * ((v1 + result[4] - 1) / 0xAAuLL)) + 24 * ((v1 + result[4] - 1) % 0xAAuLL));
  }

  __break(1u);
  return result;
}

void *std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

unint64_t absl::container_internal::find_first_non_full<void>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  result = ((v2 >> 12) ^ (a2 >> 7)) & *a1;
  if (*(v2 + result) >= -1)
  {
    v5 = 0;
    for (i = *(v2 + result) & ~(*(v2 + result) << 7) & 0x8080808080808080; !i; i = *(v2 + result) & ~(*(v2 + result) << 7) & 0x8080808080808080)
    {
      v5 += 8;
      result = (v5 + result) & v3;
    }

    return (result + (__clz(__rbit64(i)) >> 3)) & v3;
  }

  return result;
}

unint64_t absl::container_internal::PrepareInsertNonSoo(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1[2] - 8);
  if (v5 <= 0)
  {
    v9 = a2;
    if (v5)
    {
      v11 = a1;
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        first_non = absl::container_internal::find_first_non_full<void>(a1, a2);
      }

      else
      {
      }
    }

    else
    {
      v10 = *a1;
      v11 = a1;
      (*(a5 + 40))();
      first_non = absl::container_internal::HashSetResizeHelper::FindFirstNonFullAfterResize(v11, v10, v9);
    }

    LOBYTE(a2) = v9;
    a3 = first_non;
    a1 = v11;
  }

  v6 = *a1;
  a1[1] += 2;
  *(a1[2] - 8) -= *(a1[2] + a3) == 128;
  v7 = a1[2];
  *(v7 + a3) = a2 & 0x7F;
  *(v7 + (v6 & (a3 - 7)) + (v6 & 7)) = a2 & 0x7F;
  return a3;
}

unint64_t absl::container_internal::HashSetResizeHelper::FindFirstNonFullAfterResize(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v4 = a1[2];
  result = ((v4 >> 12) ^ (a3 >> 7)) & *a1;
  if (v3 <= 8 && v3 > a2)
  {
    if (result + ~a2 >= a2)
    {
      return a2 >> 1;
    }
  }

  else if (*(v4 + result) >= -1)
  {
    v7 = 0;
    for (i = *(v4 + result) & ~(*(v4 + result) << 7) & 0x8080808080808080; !i; i = *(v4 + result) & ~(*(v4 + result) << 7) & 0x8080808080808080)
    {
      v7 += 8;
      result = (v7 + result) & v3;
    }

    return (result + (__clz(__rbit64(i)) >> 3)) & v3;
  }

  return result;
}

unint64_t absl::container_internal::anonymous namespace::FindInsertPositionWithGrowthOrRehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (*a1 < 9 || ((16 * a1[1]) & 0xFFFFFFFFFFFFFFE0) > 25 * v5)
  {
    (a3[5])(a1, (2 * v5) | 1);
    goto LABEL_37;
  }

  v7 = a1[2];
  v6 = a1[3];
  v8 = (v7 + v5);
  if (v5 >= 1)
  {
    v9 = (v5 + v7);
    if (v5 + v7 <= v7 + 8)
    {
      v9 = (v7 + 8);
    }

    v10 = v9 + ~v7;
    v11 = a1[2];
    if (v10 < 0x18)
    {
      goto LABEL_43;
    }

    v12 = (v10 >> 3) + 1;
    v11 = (v7 + 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL));
    v13 = (v7 + 16);
    v14.i64[0] = 0x202020202020202;
    v14.i64[1] = 0x202020202020202;
    v15.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
    v15.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
    v16.i64[0] = 0x8080808080808080;
    v16.i64[1] = 0x8080808080808080;
    v17 = v12 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = vorrq_s8(vaddq_s64(vandq_s8(vshrq_n_u64(*v13, 6uLL), v14), v15), v16);
      v13[-1] = vorrq_s8(vaddq_s64(vandq_s8(vshrq_n_u64(v13[-1], 6uLL), v14), v15), v16);
      *v13 = v18;
      v13 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_43:
      do
      {
        *v11 = (((*v11 >> 6) & 0x202020202020202) + 0x7E7E7E7E7E7E7E7ELL) | 0x8080808080808080;
        ++v11;
      }

      while (v11 < v8);
    }
  }

  v19 = *v7;
  *(v8 + 1) = *(v7 + 3);
  *(v8 + 1) = v19;
  *v8 = -1;
  v21 = (a3[1])(a1);
  v22 = 0;
  v23 = a3[2];
  v44 = v6;
  v45 = a3[3];
  v24 = -1;
  v25 = *a3;
  do
  {
    v27 = *(v7 + v22);
    if (v27 == 128)
    {
      goto LABEL_14;
    }

    if (v27 == 254)
    {
      v28 = v23(v21, v6);
      v29 = a1[2];
      v30 = *a1;
      v31 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
      if (*(v29 + v31) >= -1)
      {
        v33 = *(v29 + v31) & ~(*(v29 + v31) << 7) & 0x8080808080808080;
        if (v33)
        {
          v34 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
        }

        else
        {
          v35 = 8;
          v34 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
          do
          {
            v34 = (v34 + v35) & v30;
            v35 += 8;
            v33 = *(v29 + v34) & ~(*(v29 + v34) << 7) & 0x8080808080808080;
          }

          while (!v33);
        }

        v32 = (v34 + (__clz(__rbit64(v33)) >> 3)) & v30;
      }

      else
      {
        v32 = ((v29 >> 12) ^ (v28 >> 7)) & *a1;
      }

      if ((((v32 - v31) ^ (v22 - v31)) & v5) > 7)
      {
        v36 = *(v7 + v32);
        *(v29 + v32) = v28 & 0x7F;
        *(v29 + ((v32 - 7) & v30) + (v30 & 7)) = v28 & 0x7F;
        if (v36 == 128)
        {
          v45(a1, v44 + v32 * v25, v6);
          v26 = a1[2];
          *(v26 + v22) = 0x80;
          *(v26 + (*a1 & (v22 - 7)) + (*a1 & 7)) = 0x80;
LABEL_14:
          v24 = v22;
          goto LABEL_15;
        }

        if (v24 == -1)
        {
          v24 = v22 + 1;
          if (v22 + 1 >= v5)
          {
LABEL_32:
            v24 = -1;
          }

          else
          {
            while (*(v7 + v24) != 128)
            {
              if (v5 == ++v24)
              {
                goto LABEL_32;
              }
            }
          }
        }

        v43 = v44 + v32 * v25;
        (v45)(a1);
        v45(a1, v43, v6);
        v45(a1, v6, v44 + v24 * v25);
        --v22;
        v6 -= v25;
      }

      else
      {
        *(v29 + v22) = v28 & 0x7F;
        *(v29 + (v30 & (v22 - 7)) + (v30 & 7)) = v28 & 0x7F;
      }
    }

LABEL_15:
    ++v22;
    v6 += v25;
  }

  while (v22 != v5);
  v37 = 6;
  if (*a1 != 7)
  {
    v37 = *a1 - (*a1 >> 3);
  }

  *(a1[2] - 8) = v37 - (a1[1] >> 1);
LABEL_37:
  v38 = a1[2];
  v39 = *a1;
  result = ((v38 >> 12) ^ (a2 >> 7)) & *a1;
  if (*(v38 + result) >= -1)
  {
    v41 = 0;
    for (i = *(v38 + result) & ~(*(v38 + result) << 7) & 0x8080808080808080; !i; i = *(v38 + result) & ~(*(v38 + result) << 7) & 0x8080808080808080)
    {
      v41 += 8;
      result = (v41 + result) & v39;
    }

    return (result + (__clz(__rbit64(i)) >> 3)) & v39;
  }

  return result;
}

_DWORD *absl::raw_log_internal::RawLog(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = a1;
  v26 = *MEMORY[0x277D85DE8];
  *&__size[4] = __buf;
  *__size = 3000;
  v15 = *&__size[4];
  if (result)
  {
    if ((*__size & 0x80000000) != 0)
    {
      goto LABEL_10;
    }

    v16 = vsnprintf(*&__size[4], *__size, a4, &a9);
    v17 = *__size - 26;
    if (*__size < 0x1Au)
    {
      v17 = 0;
    }

    v18 = v16 >= 0 && v16 <= *__size;
    v19 = v16 >= 0 && v16 <= *__size ? v16 : v17;
    *__size -= v19;
    *&__size[4] += v19;
    if (!v18)
    {
LABEL_10:
      v23 = " ... (message truncated)\n";
      v20 = "%s";
    }

    else
    {
      v20 = "\n";
    }

    v21 = *&__size[4] - __buf;
    if (*&__size[4] != __buf)
    {
      v22 = *__error();
      write(2, __buf, v21);
      result = __error();
      *result = v22;
    }
  }

  if (v12 == 3)
  {
    abort();
  }

  return result;
}

_DWORD *absl::raw_log_internal::anonymous namespace::DefaultInternalLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    v8 = *(a4 + 8);
  }

  return absl::raw_log_internal::RawLog(a1, a2, a3, "%.*s", a5, a6, a7, a8, v8);
}

char **absl::raw_log_internal::anonymous namespace::DoRawLog(char **this, char **a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  if ((*a2 & 0x80000000) == 0)
  {
    v5 = this;
    this = vsnprintf(*this, *a2, a3, va);
    if ((this & 0x80000000) == 0 && *a2 >= this)
    {
      *a2 -= this;
      *v5 += this;
    }
  }

  return this;
}

uint64_t WebRtcSpl_RealForwardFFT(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v36[508] = *MEMORY[0x277D85DE8];
  v8 = *v3;
  v9 = 1 << *v3;
  if (*v3 != 31)
  {
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 1 << *v3;
    }

    if (v9 >= 4)
    {
      if (v9 >= 16)
      {
        v15 = v10 & 0x7FFFFFF0;
        v16 = &v7[2];
        v17 = v36;
        v18 = 0uLL;
        do
        {
          v19 = v16[-1];
          v40.val[0] = *v16;
          v20 = v17 - 16;
          vst2q_s16(v20, *(&v18 - 1));
          v40.val[1] = 0uLL;
          vst2q_s16(v17, v40);
          v16 += 2;
          v17 += 32;
          v15 -= 16;
        }

        while (v15);
      }

      else
      {
        v11 = v10 & 0x7FFFFFFC;
        v37.val[0] = *v7;
        v37.val[1] = 0;
        v12 = __src;
        vst2_s16(v12, v37);
        if (v11 != 4)
        {
          v38.val[0] = v7[1];
          v38.val[1] = 0;
          v13 = &v35;
          vst2_s16(v13, v38);
          if (v11 != 8)
          {
            v39.val[0] = v7[2];
            v39.val[1] = 0;
            v14 = v36;
            vst2_s16(v14, v39);
          }
        }
      }
    }

    else
    {
      __src[0] = v7->i16[0];
      __src[1] = 0;
      if (v9 >= 2)
      {
        __src[2] = v7->i16[1];
        __src[3] = 0;
        if (v8 != 1)
        {
          __src[4] = v7->i16[2];
          __src[5] = 0;
        }
      }
    }

    if ((v8 - 7) > 1)
    {
      if (v9 >= 2)
      {
        LODWORD(v28) = 0;
        v29 = 1;
        do
        {
          v30 = 1 << v8;
          do
          {
            LODWORD(v30) = v30 >> 1;
          }

          while (v30 > v9 + ~v28);
          v28 = ((v30 - 1) & v28) + v30;
          if (v29 < v28)
          {
            v31 = *&__src[2 * v29];
            *&__src[2 * v29] = *&__src[2 * v28];
            *&__src[2 * v28] = v31;
          }

          ++v29;
        }

        while (v29 != v9);
      }
    }

    else
    {
      v21 = 0;
      v22 = index_7;
      if (v8 == 8)
      {
        v22 = index_8;
      }

      v23 = 112;
      if (v8 == 8)
      {
        v23 = 240;
      }

      do
      {
        v24 = (v22 + 2 * v21);
        v25 = *v24;
        v26 = *&__src[2 * v25];
        v27 = v24[1];
        *&__src[2 * v25] = *&__src[2 * v27];
        *&__src[2 * v27] = v26;
        v21 += 2;
      }

      while (v21 < v23);
    }
  }

  v32 = WebRtcSpl_ComplexFFT(__src, v8, 1);
  memcpy(v5, __src, 2 * v9 + 4);
  return v32;
}

uint64_t WebRtcSpl_RealInverseFFT(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v54[508] = *MEMORY[0x277D85DE8];
  v8 = *v3;
  v9 = 1 << *v3;
  __memcpy_chk();
  v10 = 2 << v8;
  if (v9 + 2 < 2 << v8)
  {
    v11 = v9 + 2;
    v12 = v10 - v9 - 3;
    if (v12 < 0xE)
    {
      goto LABEL_6;
    }

    v13 = (v12 >> 1) + 1;
    v11 += 2 * (v13 & 0xFFFFFFFFFFFFFFF8);
    v14 = (v7 - 2 * v9 + 2 * v10 - 32);
    v15 = &v53.i16[v9 + 2];
    v16 = v13 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v55 = vld2q_s16(v14);
      v17 = vrev64q_s16(v55.val[0]);
      v56.val[0] = vextq_s8(v17, v17, 8uLL);
      v55.val[0] = vrev64q_s16(vnegq_s16(v55.val[1]));
      v56.val[1] = vextq_s8(v55.val[0], v55.val[0], 8uLL);
      vst2q_s16(v15, v56);
      v15 += 16;
      v14 -= 16;
      v16 -= 8;
    }

    while (v16);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_6:
      v18 = (v7 - 2 * v11 + 2 * v10 + 2);
      v19 = &v53.i16[v11 + 1];
      do
      {
        *(v19 - 1) = *(v18 - 1);
        v20 = *v18;
        v18 -= 2;
        *v19 = -v20;
        v19 += 2;
        v11 += 2;
      }

      while (v11 < v10);
    }
  }

  if (v8 - 7 > 1)
  {
    if (v9 >= 2)
    {
      LODWORD(v28) = 0;
      v29 = 1;
      do
      {
        v30 = 1 << v8;
        do
        {
          LODWORD(v30) = v30 >> 1;
        }

        while (v30 > v9 + ~v28);
        v28 = ((v30 - 1) & v28) + v30;
        if (v29 < v28)
        {
          v31 = v53.i32[v29];
          v53.i32[v29] = v53.i32[v28];
          v53.i32[v28] = v31;
        }

        ++v29;
      }

      while (v29 != v9);
    }
  }

  else
  {
    v21 = 0;
    v22 = index_7;
    if (v8 == 8)
    {
      v22 = index_8;
    }

    v23 = 112;
    if (v8 == 8)
    {
      v23 = 240;
    }

    do
    {
      v24 = (v22 + 2 * v21);
      v25 = *v24;
      v26 = v53.i32[v25];
      v27 = v24[1];
      v53.i32[v25] = v53.i32[v27];
      v53.i32[v27] = v26;
      v21 += 2;
    }

    while (v21 < v23);
  }

  result = WebRtcSpl_ComplexIFFT(&v53, v8, 1);
  if (v8 != 31)
  {
    if (v9 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v9;
    }

    if (v9 < 5)
    {
      v34 = 0;
      v35 = 0;
      goto LABEL_40;
    }

    if (v9 >= 17)
    {
      v36 = 16;
      if ((v33 & 0xF) != 0)
      {
        v36 = v33 & 0xF;
      }

      v35 = v33 - v36;
      v37 = (v5 + 16);
      v38 = v54;
      v39 = v33 - v36;
      do
      {
        v40 = v38 - 16;
        v41 = vld2q_s16(v40);
        v42 = vld2q_s16(v38);
        *(v37 - 1) = v41;
        *v37 = v42;
        v37 += 2;
        v38 += 32;
        v39 -= 16;
      }

      while (v39);
      if (v36 < 5)
      {
        v34 = 2 * v35;
LABEL_40:
        v49 = &v53.i16[v34];
        v50 = v33 - v35;
        v51 = (v5 + 2 * v35);
        do
        {
          v52 = *v49;
          v49 += 2;
          *v51++ = v52;
          --v50;
        }

        while (v50);
        return result;
      }
    }

    else
    {
      v35 = 0;
    }

    v43 = v33 & 3;
    if ((v33 & 3) == 0)
    {
      v43 = 4;
    }

    v44 = (v5 + 2 * v35);
    v45 = &v53.i16[2 * v35];
    v46 = v43 + v35;
    v35 = v33 - v43;
    v34 = 2 * (v33 - v43);
    v47 = v46 - v33;
    do
    {
      v48 = *vld2_s16(v45).val;
      v45 += 8;
      *v44++ = v48;
      v47 += 4;
    }

    while (v47);
    goto LABEL_40;
  }

  return result;
}

void dcsctp::ReassemblyQueue::ReassemblyQueue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5[8] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = (a4 * 0.9);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v5[0] = &unk_28829A0B0;
  v5[1] = a1;
  v5[3] = v5;
  if (a5)
  {
    operator new();
  }

  operator new();
}

void dcsctp::ReassemblyQueue::Add(uint64_t a1, unsigned int a2, unsigned __int16 *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 44) == 1)
  {
    v4 = *(a1 + 40);
    v5 = a2 >= v4;
    v6 = a2 - v4;
    v7 = v6 != 0 && v5;
    if (v6 != 0x80000000)
    {
      v7 = v6 >= 0;
    }

    if (!v7)
    {
      v6 |= 0xFFFFFFFF00000000;
    }

    v8 = v6 + *(a1 + 32);
  }

  else
  {
    v8 = a2;
  }

  *(a1 + 32) = v8;
  *(a1 + 40) = a2;
  *(a1 + 44) = 1;
  if (*(a1 + 152) == 1 && v8 > *(a1 + 96))
  {
    v9 = *(a1 + 104);
    v10 = *(a1 + 112);
    if (v10 != v9)
    {
      v11 = v10 - v9;
      v12 = *a3;
      do
      {
        v13 = v11 >> 1;
        v14 = &v9[v11 >> 1];
        v16 = *v14;
        v15 = v14 + 1;
        v11 += ~(v11 >> 1);
        if (v16 < v12)
        {
          v9 = v15;
        }

        else
        {
          v11 = v13;
        }
      }

      while (v11);
      if (v9 != v10 && v12 >= *v9)
      {
        *(a1 + 160) += *(a3 + 3) - *(a3 + 2);
        v26 = *a3;
        *(a3 + 2) = 0;
        *(a3 + 3) = 0;
        *(a3 + 4) = 0;
        v24 = a3[20];
        v25 = *(a3 + 42);
        operator new();
      }
    }
  }

  v17 = *(a1 + 168);
  v18 = *(a3 + 1);
  v19 = *a3;
  *__p = v18;
  v21 = *(a3 + 4);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  v22 = a3[20];
  v23 = *(a3 + 42);
  *(a1 + 160) += (*(*v17 + 16))(v17, v8, &v19);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void dcsctp::ReassemblyQueue::EnterDeferredReset(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 152) & 1) == 0)
  {
    if (*(a1 + 44) == 1)
    {
      v5 = *(a1 + 40);
      v6 = a2 >= v5;
      v7 = a2 - v5;
      v8 = v7 != 0 && v6;
      if (v7 != 0x80000000)
      {
        v8 = v7 >= 0;
      }

      if (!v8)
      {
        v7 |= 0xFFFFFFFF00000000;
      }

      v9 = v7 + *(a1 + 32);
      *(a1 + 32) = v9;
      *(a1 + 40) = a2;
      *(a1 + 44) = 1;
      if (a4)
      {
LABEL_11:
        if (((2 * a4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else
    {
      v9 = a2;
      *(a1 + 32) = a2;
      *(a1 + 40) = a2;
      *(a1 + 44) = 1;
      if (a4)
      {
        goto LABEL_11;
      }
    }

    v10.n128_f64[0] = std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(0, 0, 0, 0, 0);
    v11 = *(a1 + 152);
    *(a1 + 96) = v9;
    if (v11)
    {
      v12 = *(a1 + 104);
      if (v12)
      {
        *(a1 + 112) = v12;
        operator delete(v12);
      }

      v13 = (a1 + 128);
      v14 = *(a1 + 128);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      if (v14)
      {
        v15 = *(a1 + 136);
        v16 = v14;
        if (v15 != v14)
        {
          do
          {
            v17 = v15 - 4;
            (*(v15 - 2))(1, v17, v17, v10);
            v15 = v17;
          }

          while (v17 != v14);
          v16 = *v13;
        }

        *(a1 + 136) = v14;
        operator delete(v16);
      }

      *v13 = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 152) = 1;
    }
  }
}

void dcsctp::ReassemblyQueue::GetNextMessage(dcsctp::ReassemblyQueue *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 11))
  {
    v4 = *(*(this + 7) + ((*(this + 10) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(this + 10) & 0x7FLL);
    v5 = *v4;
    v6 = *(v4 + 8);
    v13 = *(v4 + 16);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    v7 = *(this + 11);
    if (v7 && (v8 = *(this + 10), (v9 = *(*(this + 7) + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8))) != 0))
    {
      v10 = v9 + 32 * (*(this + 10) & 0x7FLL);
      v11 = *(v10 + 8);
      if (v11)
      {
        *(v10 + 16) = v11;
        operator delete(v11);
        v8 = *(this + 10);
        v7 = *(this + 11);
      }

      v12 = v8 + 1;
      *(this + 10) = v12;
      *(this + 11) = v7 - 1;
      if (v12 >= 0x100)
      {
        operator delete(**(this + 7));
        *(this + 7) += 8;
        *(this + 10) -= 128;
      }

      *(this + 20) += v6 - v13;
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v13;
      *(a2 + 32) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }
}

uint64_t dcsctp::ReassemblyQueue::HandleForwardTsn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (*(a1 + 44) == 1)
  {
    v6 = *(a1 + 40);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    v9 = v8 != 0 && v7;
    if (v8 != 0x80000000)
    {
      v9 = v8 >= 0;
    }

    if (!v9)
    {
      v8 |= 0xFFFFFFFF00000000;
    }

    a2 = v8 + *(a1 + 32);
  }

  else
  {
    a2 = a2;
  }

  *(a1 + 32) = a2;
  *(a1 + 40) = v4;
  *(a1 + 44) = 1;
  if (*(a1 + 152) == 1 && a2 > *(a1 + 96))
  {
    if (a4)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((12 * a4) >> 2) < 0x1555555555555556)
      {
        operator new();
      }
    }

    else
    {
      v12 = *(a1 + 136);
      v11 = *(a1 + 144);
      if (v12 < v11)
      {
        if (v12)
        {
          operator new();
        }
      }

      else
      {
        v13 = *(a1 + 128);
        v14 = ((v12 - v13) >> 5) + 1;
        if (v14 >> 59)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v15 = v11 - v13;
        v16 = v15 >> 4;
        if (v15 >> 4 <= v14)
        {
          v16 = v14;
        }

        v7 = v15 >= 0x7FFFFFFFFFFFFFE0;
        v17 = 0x7FFFFFFFFFFFFFFLL;
        if (!v7)
        {
          v17 = v16;
        }

        if (v17)
        {
          if (!(v17 >> 59))
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = (*(**(a1 + 168) + 24))(*(a1 + 168));
  *(a1 + 160) -= result;
  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,dcsctp::ReassemblyQueue::HandleForwardTsn(webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::ArrayView<dcsctp::AnyForwardTsnChunk::SkippedStream const,-4711l>)::$_0 &>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 2);
  v4 = v1[2];
  v5 = v1[3] - v4;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return dcsctp::ReassemblyQueue::HandleForwardTsn(v2, v3, v6, 0xAAAAAAAAAAAAAAABLL * (v5 >> 2));
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<dcsctp::ReassemblyQueue::HandleForwardTsn(webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::ArrayView<dcsctp::AnyForwardTsnChunk::SkippedStream const,-4711l>)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        *(v3 + 24) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t std::__function::__func<dcsctp::ReassemblyQueue::ReassemblyQueue(std::string_view,unsigned long,BOOL)::$_0,std::allocator<dcsctp::ReassemblyQueue::ReassemblyQueue(std::string_view,unsigned long,BOOL)::$_0>,void ()(webrtc::ArrayView<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>> const,-4711l>,dcsctp::DcSctpMessage)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829A0B0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<dcsctp::ReassemblyQueue::ReassemblyQueue(std::string_view,unsigned long,BOOL)::$_0,std::allocator<dcsctp::ReassemblyQueue::ReassemblyQueue(std::string_view,unsigned long,BOOL)::$_0>,void ()(webrtc::ArrayView<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>> const,-4711l>,dcsctp::DcSctpMessage)>::operator()(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = a3[1];
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u64[1] = 0;
  v4 = a3->n128_u64[0];
  v5 = a3->n128_u64[1];
  a3->n128_u64[1] = 0;
  v6 = *(a1 + 8);
  v7 = v6[7];
  v8 = v6[8];
  v20 = v3;
  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 16 * (v8 - v7) - 1;
  }

  v6[20] += v3.n128_u64[0] - v5;
  v10 = v6[10];
  if (v9 == v6[11] + v10)
  {
    v11 = v10 >= 0x80;
    v12 = v10 - 128;
    if (!v11)
    {
      v13 = v6[9];
      v14 = v6[6];
      if (v8 - v7 < (v13 - v14))
      {
        operator new();
      }

      if (v13 == v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = (v13 - v14) >> 2;
      }

      if (!(v15 >> 61))
      {
        operator new();
      }

LABEL_19:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v6[10] = v12;
    v21 = *v7;
    v6[7] = v7 + 8;
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(v6 + 6, &v21);
    v7 = v6[7];
    v8 = v6[8];
  }

  if (v8 == v7 || (v16 = v6[11] + v6[10], (v17 = *&v7[(v16 >> 4) & 0xFFFFFFFFFFFFFF8]) == 0))
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = (v17 + 32 * (v16 & 0x7F));
  v18->n128_u64[0] = v4;
  v18->n128_u64[1] = v5;
  result = v20;
  v18[1] = v20;
  ++v6[11];
  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,dcsctp::ReassemblyQueue::Add(webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data)::$_0 &>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = v1[4];
  v3 = v1[5];
  *(v2 + 160) += &v4[-v3];
  v5 = *(v1 + 2);
  v7 = *(v1 + 1);
  __p = v4;
  v9 = v3;
  v10 = v1[6];
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 0;
  LOWORD(v3) = *(v1 + 28);
  v12 = *(v1 + 58);
  v11 = v3;
  dcsctp::ReassemblyQueue::Add(v2, v5);
  v6 = __p;
  if (__p)
  {

    operator delete(v6);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<dcsctp::ReassemblyQueue::Add(webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        *(v3 + 40) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return *&v22;
  }

  if (a3 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (v5 < v6)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return *&v22;
  }

  if (a3 <= 128)
  {
    if (a1 != a2)
    {
      v7 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          if (v12 < v11)
          {
            v13 = v8;
            do
            {
              *(a1 + v13 + 2) = v11;
              if (!v13)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v13 - 2);
              v13 -= 2;
            }

            while (v12 < v11);
            v10 = (a1 + v13 + 2);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 2;
        }

        while (v9 + 1 != a2);
      }
    }

    return *&v22;
  }

  v15 = a3 >> 1;
  v16 = a3 & 0x7FFFFFFFFFFFFFFELL;
  v17 = a3 - (a3 >> 1);
  v18 = (a1 + (a3 & 0x7FFFFFFFFFFFFFFELL));
  if (a3 > a5)
  {
    std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(a1, v18, a3 >> 1, a4, a5);
    std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(a1 + v16, a2, v17, a4, a5);

    *&v22 = std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(a1, (a1 + v16), a2, v15, v17, a4, a5);
    return *&v22;
  }

  std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(a1, v18, a3 >> 1, a4);
  v25 = &a4[2 * v15];
  std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>((a1 + v16), a2, v17, v25);
  v26 = 0;
  v27 = v25;
  v28 = a4;
  v29 = &a4[2 * a3];
  do
  {
    if (v27 == v29)
    {
      if (v28 == v25)
      {
        return *&v22;
      }

      v39 = &a1[v26];
      v40 = &a4[a3 & 0x7FFFFFFFFFFFFFFELL] - v28 - 2;
      if (v40 < 6)
      {
        v41 = v28;
        goto LABEL_57;
      }

      if ((a1 - v28 + v26 * 2) < 0x20)
      {
        v41 = v28;
        goto LABEL_57;
      }

      v42 = (v40 >> 1) + 1;
      if (v40 >= 0x1E)
      {
        v44 = v39 + 8;
        v43 = v42 & 0xFFFFFFFFFFFFFFF0;
        v45 = (v28 + 8);
        v46 = v42 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v22 = *(v45 - 1);
          v47 = *v45;
          *(v44 - 1) = v22;
          *v44 = v47;
          v44 += 2;
          v45 += 2;
          v46 -= 16;
        }

        while (v46);
        if (v42 == v43)
        {
          return *&v22;
        }

        if ((v42 & 0xC) == 0)
        {
          v39 = &a1[v26 + v43];
          v41 = &v28[v43];
          goto LABEL_57;
        }
      }

      else
      {
        v43 = 0;
      }

      v48 = v42 & 0xFFFFFFFFFFFFFFFCLL;
      v41 = &v28[v48];
      v39 = &a1[v26 + v48];
      v49 = v43;
      v50 = v43 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        *&v22 = *&v28[v49];
        *&a1[v49 + v26] = v22;
        v49 += 4;
        v50 += 4;
      }

      while (v50);
      if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return *&v22;
      }

      do
      {
LABEL_57:
        v59 = *v41++;
        *v39++ = v59;
      }

      while (v41 != v25);
      return *&v22;
    }

    v30 = v27;
    v31 = *v27;
    v32 = *v28;
    if (v31 >= v32)
    {
      v33 = *v28;
    }

    else
    {
      v33 = v31;
    }

    v28 += v31 >= v32;
    v34 = v31 < v32;
    v27 = &v30[v34];
    a1[v26++] = v33;
  }

  while (v28 != v25);
  if (v27 == v29)
  {
    return *&v22;
  }

  v35 = &a1[v26];
  v36 = v29 - v30 - v34 * 2 - 2;
  if (v36 < 6 || (a1 - v30 - v34 * 2 + v26 * 2) < 0x20)
  {
    goto LABEL_60;
  }

  v37 = (v36 >> 1) + 1;
  if (v36 >= 0x1E)
  {
    v51 = v35 + 8;
    v38 = v37 & 0xFFFFFFFFFFFFFFF0;
    v52 = &v30[v34 + 8];
    v53 = v37 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v22 = *(v52 - 1);
      v54 = *v52;
      *(v51 - 1) = v22;
      *v51 = v54;
      v51 += 2;
      v52 += 16;
      v53 -= 16;
    }

    while (v53);
    if (v37 == v38)
    {
      return *&v22;
    }

    if ((v37 & 0xC) != 0)
    {
      goto LABEL_52;
    }

    v35 = &a1[v38 + v26];
    v27 += v38;
    do
    {
LABEL_60:
      v60 = *v27++;
      *v35++ = v60;
    }

    while (v27 != v29);
    return *&v22;
  }

  v38 = 0;
LABEL_52:
  v55 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = (v27 + v55 * 2);
  v35 = &a1[v55 + v26];
  v56 = v38;
  v57 = &v30[v34];
  v58 = v38 - (v37 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    *&v22 = *&v57[v56];
    *&a1[v56 + v26] = v22;
    v56 += 4;
    v58 += 4;
  }

  while (v58);
  if (v37 != (v37 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_60;
  }

  return *&v22;
}

unsigned __int16 *std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  switch(a3)
  {
    case 0:
      return result;
    case 2:
      v6 = *(a2 - 1);
      v4 = a2 - 1;
      v5 = v6;
      if (v6 >= *result)
      {
        if (!a4)
        {
          goto LABEL_46;
        }

        v5 = *result;
        result = v4;
      }

      else if (!a4)
      {
        goto LABEL_46;
      }

      *a4++ = v5;
LABEL_26:
      *a4 = *result;
      return result;
    case 1:
      if (!a4)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
  }

  if (a3 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    if (a4)
    {
      v7 = *result++;
      *a4 = v7;
      if (result != a2)
      {
        v8 = 0;
        v9 = a4;
        v10 = a4;
        do
        {
          while (1)
          {
            v12 = *v10++;
            v11 = v12;
            v13 = *result;
            if (v13 < v12)
            {
              break;
            }

            *v10 = v13;
            ++result;
            v8 += 2;
            v9 = v10;
            if (result == a2)
            {
              return result;
            }
          }

          v9[1] = v11;
          v14 = a4;
          if (v9 != a4)
          {
            v15 = v8;
            while (1)
            {
              v14 = (a4 + v15);
              v16 = *(a4 + v15 - 2);
              if (*result >= v16)
              {
                break;
              }

              *v14 = v16;
              v15 -= 2;
              if (!v15)
              {
                v14 = a4;
                break;
              }
            }
          }

          v17 = *result++;
          *v14 = v17;
          v8 += 2;
          v9 = v10;
        }

        while (result != a2);
      }

      return result;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  v18 = a3 >> 1;
  v19 = a3 & 0x7FFFFFFFFFFFFFFELL;
  v20 = (result + (a3 & 0x7FFFFFFFFFFFFFFELL));
  v21 = result;
  v24 = a4;
  (std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>)();
  result = std::__stable_sort<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(v20, a2, a3 - v18, &v24[v18], a3 - v18);
  if (v19)
  {
    v25 = v20;
    v26 = v24;
    v27 = v21;
    v28 = a2;
    while (v25 != a2)
    {
      v29 = *v25;
      v30 = *v27;
      if (v29 >= v30)
      {
        if (!v26)
        {
          goto LABEL_46;
        }

        *v26 = v30;
        ++v27;
      }

      else
      {
        if (!v26)
        {
          goto LABEL_46;
        }

        *v26 = v29;
        ++v25;
      }

      ++v26;
      if (v27 == v20)
      {
        goto LABEL_44;
      }
    }

    while (v27 != v20)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

      v31 = *v27++;
      *v26++ = v31;
    }
  }

  else
  {
    v25 = v20;
    v26 = v24;
    v28 = a2;
LABEL_44:
    while (v25 != v28)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

      v32 = *v25++;
      *v26++ = v32;
    }
  }

  return result;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return *&v60;
  }

  while (a4 > a7 && a5 > a7)
  {
    if (!a4)
    {
      return *&v60;
    }

    v9 = 0;
    v10 = *a2;
    v11 = -a4;
    while (1)
    {
      v12 = a1[v9 / 2];
      if (v10 < v12)
      {
        break;
      }

      v9 += 2;
      v91 = __CFADD__(v11++, 1);
      if (v91)
      {
        return *&v60;
      }
    }

    v13 = &a1[v9 / 2];
    if (-v11 < a5)
    {
      v14 = a5 + (a5 >> 63);
      v15 = a2 + (v14 & 0xFFFFFFFFFFFFFFFELL);
      v16 = a2;
      if (a2 - a1 != v9)
      {
        v17 = (a2 - a1 - v9) >> 1;
        v16 = &a1[v9 / 2];
        do
        {
          v18 = (v16 + (v17 & 0xFFFFFFFFFFFFFFFELL));
          v20 = *v18;
          v19 = v18 + 1;
          v21 = v17 >> 1;
          v17 += ~(v17 >> 1);
          if (*v15 < v20)
          {
            v17 = v21;
          }

          else
          {
            v16 = v19;
          }
        }

        while (v17);
      }

      v22 = a5 / 2;
      v23 = (v16 - a1 - v9) >> 1;
      v24 = (a2 + (v14 & 0xFFFFFFFFFFFFFFFELL));
      v25 = a2 - v16;
      if (a2 == v16)
      {
        goto LABEL_49;
      }

LABEL_27:
      v24 = v16;
      if (a2 != v15)
      {
        if (v16 + 1 == a2)
        {
          v105 = *v16;
          v32 = v15 - a2;
          v109 = a3;
          v111 = a1;
          v107 = a6;
          v33 = a5;
          v34 = &a1[v9 / 2];
          memmove(v16, a2, v15 - a2);
          v13 = v34;
          a5 = v33;
          a3 = v109;
          a1 = v111;
          a6 = v107;
          v24 = (v16 + v32);
          *v24 = v105;
        }

        else if (a2 + 1 == v15)
        {
          v35 = *(v15 - 1);
          v24 = v16 + 1;
          if (v15 - 2 != v16)
          {
            v110 = a3;
            v112 = a1;
            v106 = a5;
            v108 = a6;
            v36 = &a1[v9 / 2];
            memmove(v16 + 1, v16, v15 - 2 - v16);
            v13 = v36;
            a5 = v106;
            a6 = v108;
            a3 = v110;
            a1 = v112;
          }

          *v16 = v35;
        }

        else
        {
          v37 = v25 >> 1;
          v38 = (v15 - a2) >> 1;
          if (v25 >> 1 == v38)
          {
            v39 = v16 + 1;
            v40 = (a2 + 1);
            do
            {
              v41 = *(v39 - 1);
              *(v39 - 1) = *(v40 - 1);
              *(v40 - 1) = v41;
              if (v39 == a2)
              {
                break;
              }

              ++v39;
              v42 = v40 == v15;
              v40 += 2;
            }

            while (!v42);
            v24 = a2;
          }

          else
          {
            v43 = v25 >> 1;
            do
            {
              v44 = v43;
              v43 = v38;
              v38 = v44 % v38;
            }

            while (v38);
            v45 = &v16[v43];
            do
            {
              v47 = *--v45;
              v46 = v47;
              v48 = (v45 + v25);
              v49 = v45;
              do
              {
                v50 = v48;
                *v49 = *v48;
                v51 = (v15 - v48) >> 1;
                v52 = __OFSUB__(v37, v51);
                v54 = v37 - v51;
                v53 = (v54 < 0) ^ v52;
                v48 = &v16[v54];
                if (v53)
                {
                  v48 = &v50[v37];
                }

                v49 = v50;
              }

              while (v48 != v45);
              *v50 = v46;
            }

            while (v45 != v16);
            v24 = (v16 + v15 - a2);
          }
        }
      }

      goto LABEL_49;
    }

    if (v11 == -1)
    {
      a1[v9 / 2] = v10;
      *a2 = v12;
      return *&v60;
    }

    v26 = (v11 > 0) - v11;
    v16 = (&a1[v9 / 2] + (v26 & 0xFFFFFFFFFFFFFFFELL));
    v15 = a2;
    if (a2 != a3)
    {
      v27 = a3 - a2;
      v15 = a2;
      do
      {
        v28 = v27 >> 1;
        v29 = &v15[2 * (v27 >> 1)];
        v31 = *v29;
        v30 = v29 + 1;
        v27 += ~(v27 >> 1);
        if (v31 < *v16)
        {
          v15 = v30;
        }

        else
        {
          v27 = v28;
        }
      }

      while (v27);
    }

    v23 = v26 >> 1;
    v22 = (v15 - a2) >> 1;
    v24 = v15;
    v25 = a2 - v16;
    if (a2 != v16)
    {
      goto LABEL_27;
    }

LABEL_49:
    v55 = -(v23 + v11);
    v56 = a5 - v22;
    if (v23 + v22 >= a5 - (v23 + v22) - v11)
    {
      v61 = v13;
      std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(v24, v15, a3, v55, a5 - v22, a6, a7);
      a1 = v61;
      a2 = v16;
      a4 = v23;
      a3 = v24;
      a5 = v22;
      if (!v22)
      {
        return *&v60;
      }
    }

    else
    {
      v57 = v16;
      v58 = a3;
      v59 = v55;
      std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::flat_containers_internal::flat_tree<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::identity,std::less<void>,std::vector<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>>::value_compare &,std::__wrap_iter<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>*>>(&a1[v9 / 2], v57, v24, v23, v22, a6, a7);
      a4 = v59;
      a3 = v58;
      a1 = v24;
      a2 = v15;
      a5 = v56;
      if (!v56)
      {
        return *&v60;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v71 = a2 - a1 - 2;
      v72 = a6;
      v73 = a1;
      if (v71 < 0x1E)
      {
        goto LABEL_110;
      }

      v72 = a6;
      v73 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_110;
      }

      v74 = (v71 >> 1) + 1;
      v75 = v74 & 0xFFFFFFFFFFFFFFF0;
      v72 = &a6[v75 * 2];
      v73 = &a1[v75];
      v76 = (a1 + 8);
      v77 = a6 + 16;
      v78 = v74 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v60 = *(v76 - 1);
        v79 = *v76;
        *(v77 - 1) = v60;
        *v77 = v79;
        v76 += 2;
        v77 += 2;
        v78 -= 16;
      }

      while (v78);
      if (v74 != (v74 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_110:
        do
        {
          v80 = *v73++;
          *v72 = v80;
          v72 += 2;
        }

        while (v73 != a2);
      }

      while (a2 != a3)
      {
        v81 = *a2;
        v82 = *a6;
        v83 = v81 >= v82;
        v84 = v81 < v82;
        if (v81 >= v82)
        {
          LOWORD(v81) = *a6;
        }

        a2 += v84;
        a6 += 2 * v83;
        *a1++ = v81;
        if (a6 == v72)
        {
          return *&v60;
        }
      }

      memmove(a1, a6, v72 - a6);
    }
  }

  else
  {
    if (a2 == a3)
    {
      return *&v60;
    }

    v62 = a3 - a2 - 2;
    if (v62 < 0x1E)
    {
      v63 = a6;
      v64 = a2;
    }

    else
    {
      v63 = a6;
      v64 = a2;
      if ((a6 - a2) > 0x1F)
      {
        v65 = (v62 >> 1) + 1;
        v66 = v65 & 0xFFFFFFFFFFFFFFF0;
        v63 = &a6[v66 * 2];
        v64 = &a2[v66];
        v67 = (a2 + 8);
        v68 = a6 + 16;
        v69 = v65 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v60 = *(v67 - 1);
          v70 = *v67;
          *(v68 - 1) = v60;
          *v68 = v70;
          v67 += 2;
          v68 += 2;
          v69 -= 16;
        }

        while (v69);
        if (v65 == (v65 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_80;
        }
      }
    }

    do
    {
      v85 = *v64++;
      *v63 = v85;
      v63 += 2;
    }

    while (v64 != a3);
LABEL_80:
    v86 = 0;
    v87 = a3 - 8;
    v88 = a3;
    while (a2 != a1)
    {
      v89 = *(v63 - 1);
      v90 = *(a2 - 1);
      v91 = v89 >= v90;
      if (v89 <= v90)
      {
        LOWORD(v89) = *(a2 - 1);
      }

      if (v91)
      {
        v63 -= 2;
      }

      else
      {
        --a2;
      }

      *--v88 = v89;
      ++v86;
      --v87;
      if (v63 == a6)
      {
        return *&v60;
      }
    }

    if (v63 != a6)
    {
      v92 = v63 - a6 - 2;
      if (v92 < 6 || (v63 - a3 + 2 * v86) < 0x20)
      {
        v93 = v63;
        v94 = v88;
        goto LABEL_93;
      }

      v97 = (v92 >> 1) + 1;
      if (v92 >= 0x1E)
      {
        v98 = v97 & 0xFFFFFFFFFFFFFFF0;
        v99 = v63 - 16;
        v100 = v97 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v60 = *v99;
          *(v87 - 1) = *(v99 - 1);
          *v87 = v60;
          v87 -= 16;
          v99 -= 32;
          v100 -= 16;
        }

        while (v100);
        if (v97 != v98)
        {
          if ((v97 & 0xC) == 0)
          {
            v94 = &v88[-v98];
            v93 = &v63[-2 * v98];
            goto LABEL_93;
          }

          goto LABEL_102;
        }
      }

      else
      {
        v98 = 0;
LABEL_102:
        v101 = 2 * (v97 & 0xFFFFFFFFFFFFFFFCLL);
        v93 = &v63[-v101];
        v94 = &v88[v101 / 0xFFFFFFFFFFFFFFFELL];
        v102 = v98 - (v97 & 0xFFFFFFFFFFFFFFFCLL);
        v103 = -8 - 2 * v98;
        do
        {
          *&v60 = *&v63[v103];
          *(v88 + v103) = v60;
          v103 -= 8;
          v102 += 4;
        }

        while (v102);
        if (v97 != (v97 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_93:
          v95 = v94 - 1;
          do
          {
            v96 = *(v93 - 1);
            v93 -= 2;
            *v95-- = v96;
          }

          while (v93 != a6);
        }
      }
    }
  }

  return *&v60;
}

uint64_t webrtc::ReceiveSideCongestionController::OnRttUpdate(webrtc::ReceiveSideCongestionController *this, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((this + 776));
  (***(this + 105))(*(this + 105), a2, a3);

  return pthread_mutex_unlock((this + 776));
}

uint64_t webrtc::ReceiveSideCongestionController::PickEstimator(uint64_t this, int a2)
{
  v2 = this;
  if (a2)
  {
    if ((*(this + 848) & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/receive_side_congestion_controller.cc");
      }

      *(v2 + 848) = 1;
      operator new();
    }

    *(this + 852) = 0;
  }

  else if (*(this + 848))
  {
    v10 = *(this + 852) + 1;
    *(this + 852) = v10;
    if (v10 >= 0x1E)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/receive_side_congestion_controller.cc");
      }

      *(v2 + 848) = 0;
      operator new();
    }
  }

  return this;
}

void webrtc::ReceiveSideCongestionController::ReceiveSideCongestionController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829A0F8;
  v7 = *a2;
  *(a1 + 8) = *a2;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
  }

  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = v8;
  v9 = *(a4 + 24);
  if (v9)
  {
    if (v9 != a4)
    {
      v19 = *(a4 + 24);
      *(a4 + 24) = 0;
      v10 = *(a1 + 24);
      *(a1 + 48) = &unk_28829A4C0;
      goto LABEL_7;
    }

    v19 = v18;
    (*(*v9 + 24))(v9, v18);
    v9 = v19;
    v10 = *(a1 + 24);
    *(a1 + 48) = &unk_28829A4C0;
    if (v9)
    {
LABEL_7:
      if (v9 == v18)
      {
        *(a1 + 80) = a1 + 56;
        (*(*v9 + 24))(v9);
      }

      else
      {
        *(a1 + 80) = v9;
        v19 = 0;
      }

LABEL_12:
      *(a1 + 88) = v10;
      pthread_mutexattr_init(&v13);
      pthread_mutexattr_setpolicy_np(&v13, 3);
      pthread_mutex_init((a1 + 96), &v13);
      pthread_mutexattr_destroy(&v13);
      *(a1 + 160) = xmmword_273B94C20;
      *(a1 + 176) = 0x7FFFFFFFFFFFFFFFLL;
      if (v19 == v18)
      {
        (*(*v19 + 32))(v19);
        *(a1 + 185) = 0;
        v11 = *(a3 + 24);
        if (v11)
        {
LABEL_16:
          if (v11 == a3)
          {
            v17 = v16;
            (*(*v11 + 24))(v11, v16);
          }

          else
          {
            v17 = (*(*v11 + 16))(v11);
          }

LABEL_21:
          webrtc::TransportSequenceNumberFeedbackGenenerator::TransportSequenceNumberFeedbackGenenerator(a1 + 192, v16);
          if (v17 == v16)
          {
            (*(*v17 + 32))(v17);
            v12 = *(a3 + 24);
            if (v12)
            {
LABEL_25:
              if (v12 == a3)
              {
                v15 = v14;
                (*(*v12 + 24))(v12, v14);
              }

              else
              {
                v15 = (*(*v12 + 16))(v12);
              }

              goto LABEL_30;
            }
          }

          else
          {
            if (v17)
            {
              (*(*v17 + 40))(v17);
            }

            v12 = *(a3 + 24);
            if (v12)
            {
              goto LABEL_25;
            }
          }

          v15 = 0;
LABEL_30:
          webrtc::CongestionControlFeedbackGenerator::CongestionControlFeedbackGenerator(a1 + 392, a2, v14);
          if (v15 == v14)
          {
            (*(*v15 + 32))(v15);
          }

          else if (v15)
          {
            (*(*v15 + 40))();
          }

          pthread_mutexattr_init(&v13);
          pthread_mutexattr_setpolicy_np(&v13, 3);
          pthread_mutex_init((a1 + 776), &v13);
          pthread_mutexattr_destroy(&v13);
          operator new();
        }
      }

      else
      {
        if (v19)
        {
          (*(*v19 + 40))(v19);
        }

        *(a1 + 185) = 0;
        v11 = *(a3 + 24);
        if (v11)
        {
          goto LABEL_16;
        }
      }

      v17 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v19 = 0;
    v10 = *(a1 + 24);
    *(a1 + 48) = &unk_28829A4C0;
  }

  *(a1 + 80) = 0;
  goto LABEL_12;
}

void webrtc::ReceiveSideCongestionController::OnReceivedPacket(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 40) || (v4 = *(a2 + 56), v5 = *(a2 + 64), v4 == v5))
  {
LABEL_5:
    if (!*(a2 + 41) || (v6 = *(a2 + 56), v7 = *(a2 + 64), v6 == v7))
    {
LABEL_9:
      if (*(a1 + 185))
      {
        v8 = a1 + 392;

        webrtc::CongestionControlFeedbackGenerator::OnReceivedPacket(v8, a2);
      }

      else if (a3)
      {
        v11 = a2;
        pthread_mutex_lock((a1 + 776));
        v12 = *(v11 + 37);
        if (!*(v11 + 37) || (v14 = *(v11 + 56), v13 = *(v11 + 64), v14 == v13))
        {
          v17 = 0;
        }

        else
        {
          v15 = v14 + 4;
          do
          {
            v16 = *(v15 - 4);
            v17 = v16 == v12;
            v18 = v16 == v12 || v15 == v13;
            v15 += 4;
          }

          while (!v18);
        }

        webrtc::ReceiveSideCongestionController::PickEstimator(a1, v17);
        (*(**(a1 + 840) + 24))(*(a1 + 840), v11);

        pthread_mutex_unlock((a1 + 776));
      }

      return;
    }

    while (*v6 != *(a2 + 41))
    {
      v6 += 4;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    while (*v4 != *(a2 + 40))
    {
      v4 += 4;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }
  }

  if (*(a1 + 185))
  {
    v9 = a2;
    webrtc::CongestionControlFeedbackGenerator::OnReceivedPacket(a1 + 392, a2);
    v10 = a1 + 192;
    a2 = v9;
  }

  else
  {
    v10 = a1 + 192;
  }

  webrtc::TransportSequenceNumberFeedbackGenenerator::OnReceivedPacket(v10, a2);
}

uint64_t webrtc::ReceiveSideCongestionController::MaybeProcess(webrtc::ReceiveSideCongestionController *this)
{
  v2 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(this + 185) == 1)
  {
    v3.var0 = v2;
    v4 = webrtc::CongestionControlFeedbackGenerator::Process((this + 392), v3);
    pthread_mutex_lock((this + 240));
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (*(this + 384) != 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    pthread_mutex_lock((this + 776));
    v4 = (*(**(this + 105) + 48))(*(this + 105));
    pthread_mutex_unlock((this + 776));
    pthread_mutex_lock((this + 240));
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (*(this + 384) != 1)
    {
      goto LABEL_23;
    }
  }

  v6 = *(this + 47);
  v7 = *(this + 29);
  v8 = v6 == 0x8000000000000000 || v7 == 0x8000000000000000;
  v9 = v7 + v6;
  if (v8)
  {
    v9 = 0x8000000000000000;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v10 <= v2)
  {
    *(this + 29) = v2;
    webrtc::TransportSequenceNumberFeedbackGenenerator::SendPeriodicFeedbacks(this + 24);
    v5 = *(this + 47);
  }

  else if (v2 == 0x8000000000000000 || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v10 - v2;
  }

LABEL_23:
  pthread_mutex_unlock((this + 240));
  if (v5 >= v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  return v12 & ~(v12 >> 63);
}

uint64_t webrtc::StreamStatisticianImpl::StreamStatisticianImpl(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_28829A120;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v5 = (*(*a3 + 16))(a3);
  v6 = (*(*a3 + 24))(a3, v5);
  if (v5 % 0x3E8uLL <= 0x1F3)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 - v5 / 0x3E8uLL;
  v9 = -v5 / 0x3E8uLL;
  if (-v5 % 0x3E8uLL > 0x1F4)
  {
    ++v9;
  }

  if (v5 < 0)
  {
    v8 = v9;
  }

  *(a1 + 24) = 1000 * ((v6 / 4294967.3 + 0.5) + 1000 * HIDWORD(v6) + v8) - 2208988800000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0x45FA000000000000;
  *(a1 + 112) = vdupq_n_s64(0x3E8uLL);
  *(a1 + 128) = 50;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 186) = 0;
  *(a1 + 192) = -1;
  *(a1 + 200) = -1;
  *(a1 + 208) = 0;
  *(a1 + 210) = 0;
  *(a1 + 216) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 352) = -1;
  *(a1 + 360) = 0;
  return a1;
}

void webrtc::StreamStatisticianImpl::~StreamStatisticianImpl(void **this)
{
  *this = &unk_28829A120;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 4);
}

{
  *this = &unk_28829A120;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 4);

  JUMPOUT(0x2743DA540);
}

void webrtc::StreamStatisticianImpl::UpdateCounters(uint64_t a1, int64x2_t *a2)
{
  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v5 = v4;
  v6 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v6;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v4 < 0)
  {
    v8 = v7 - -v4 / 0x3E8uLL;
  }

  else
  {
    v8 = v6;
  }

  webrtc::RateStatistics::Update((a1 + 32), a2[1].i64[1] + a2[1].i64[0] + a2->u8[2], v8);
  v13 = vdupq_n_s64(1uLL);
  v13.i64[0] = a2->u8[2];
  v14 = *(a1 + 224);
  *(a1 + 240) = vaddq_s64(*(a1 + 240), v13);
  v15 = a2[1];
  *(a1 + 224) = vaddq_s64(v14, v15);
  v16 = *(a1 + 140);
  v17 = v16 - 1;
  *(a1 + 140) = v16 - 1;
  v18 = a2->u16[2];
  v19 = *(a1 + 186);
  v20 = a2->u16[2];
  if (v19)
  {
    v21 = *(a1 + 184);
    v22 = v18 >= v21;
    LODWORD(v23) = v18 - v21;
    v24 = v23 != 0 && v22;
    v25 = (v23 & 0x8000u) == 0;
    if (v23 == 0x8000)
    {
      v25 = v24;
    }

    if (v25)
    {
      v23 = v23;
    }

    else
    {
      v23 |= 0xFFFFFFFFFFFF0000;
    }

    v20 = v23 + *(a1 + 176);
  }

  if (*(a1 + 160) != 1)
  {
    *(a1 + 352) = v20 - 1;
    *(a1 + 216) = v5;
    *(a1 + 140) = v16;
    *(a1 + 192) = v20;
    *(a1 + 200) = v20;
    v18 = a2->u16[2];
    if ((v19 & 1) == 0)
    {
LABEL_41:
      v32 = v18;
LABEL_42:
      *(a1 + 176) = v32;
      *(a1 + 184) = v18;
      *(a1 + 186) = 1;
      v35 = a2->i32[2];
      v36 = *(a1 + 168);
      v37 = v36 - v35;
      if (v36 == v35)
      {
        v38 = (a1 + 152);
        if (*(a1 + 160))
        {
LABEL_44:
          *v38 = v5;
          return;
        }

        goto LABEL_73;
      }

      v39 = *(a1 + 248) - *(a1 + 288);
      v40 = *(a1 + 160);
      if (v39 < 2)
      {
        *(a1 + 168) = v35;
        v38 = (a1 + 152);
        if (v40)
        {
          goto LABEL_44;
        }

LABEL_73:
        *(a1 + 160) = 1;
        *v38 = v5;
        return;
      }

      if (*(a1 + 160))
      {
        v41 = *(a1 + 152);
        v42 = 0x7FFFFFFFFFFFFFFFLL;
        if (v5 != 0x7FFFFFFFFFFFFFFFLL && v41 != 0x8000000000000000)
        {
          v42 = v5 - v41;
          if (v41 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x8000000000000000)
          {
            v42 = 0x8000000000000000;
          }
        }

        v44 = a2[7].i32[3];
        v45 = v42 * v44;
        v46 = v45 / 0xF4240uLL;
        if (v45 % 0xF4240uLL > 0x7A11F)
        {
          LODWORD(v46) = v46 + 1;
        }

        if (-v45 % 0xF4240uLL <= 0x7A120)
        {
          v47 = 0;
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 - -v45 / 0xF4240uLL;
        if (v45 < 0)
        {
          v49 = v48;
        }

        else
        {
          v49 = v46;
        }

        v50 = v37 + v49;
        if (v44)
        {
          v51 = *(a1 + 360);
          if (v51 != v44)
          {
            if (v51)
            {
              *(a1 + 136) = *(a1 + 136) * v44 / v51;
            }

            *(a1 + 360) = v44;
          }
        }

        if ((v50 + 449999) < 0xDBB9F)
        {
          if (v50 < 0)
          {
            v50 = -v50;
          }

          *(a1 + 136) += (((16 * v50) | 8) - *(a1 + 136)) >> 4;
        }

        *(a1 + 168) = v35;
        *(a1 + 152) = v5;
        return;
      }

      __break(1u);
LABEL_98:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/receive_statistics_impl.cc", 322, "frequency_hz > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v9, v10, v11, v12, v39);
      webrtc::StreamStatisticianImpl::SetMaxReorderingThreshold(v64, v65);
      return;
    }

LABEL_24:
    v28 = *(a1 + 184);
    v22 = v18 >= v28;
    LODWORD(v29) = v18 - v28;
    v30 = v29 != 0 && v22;
    v31 = (v29 & 0x8000u) == 0;
    if (v29 == 0x8000)
    {
      v31 = v30;
    }

    if (v31)
    {
      v29 = v29;
    }

    else
    {
      v29 |= 0xFFFFFFFFFFFF0000;
    }

    v32 = v29 + *(a1 + 176);
    goto LABEL_42;
  }

  if (*(a1 + 210) == 1)
  {
    v17 = v16 - 2;
    *(a1 + 140) = v16 - 2;
    v26 = *(a1 + 208) + 1;
    *(a1 + 210) = 0;
    if (v18 == v26)
    {
      *(a1 + 352) = v20 - 2;
      v27 = 2;
      goto LABEL_40;
    }
  }

  v33 = *(a1 + 200);
  v27 = v20 - v33;
  if (v20 - v33 >= 0)
  {
    v34 = v20 - v33;
  }

  else
  {
    v34 = v33 - v20;
  }

  if (v34 > *(a1 + 128))
  {
    *(a1 + 208) = v18;
    *(a1 + 210) = 1;
    *(a1 + 140) = v17 + 1;
    return;
  }

  if (v20 > v33)
  {
LABEL_40:
    *(a1 + 140) = v17 + v27;
    *(a1 + 200) = v20;
    if ((v19 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_24;
  }

  if (*(a1 + 132) != 1)
  {
    return;
  }

  v39 = a2[7].u32[3];
  if (v39 <= 0)
  {
    goto LABEL_98;
  }

  v52 = *(a1 + 152);
  v53 = v5 - v52;
  if (v52 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x8000000000000000)
  {
    v53 = 0x8000000000000000;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v52 == 0x8000000000000000)
  {
    v56 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v56 = v53;
  }

  v57 = sqrtf((*(a1 + 136) >> 4));
  v58 = ((v57 + v57) / v39) * 1000000.0;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  if (v58 != INFINITY)
  {
    v60 = 1000000 * (a2->i32[2] - *(a1 + 168)) / v39;
    v61 = v58;
    if (v58 <= 1000)
    {
      v61 = 1000;
    }

    if (v58 == -INFINITY)
    {
      v61 = 1000;
    }

    v62 = v60 + v61;
    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = v62;
    }
  }

  if (v56 > v59)
  {
    v63 = vaddq_s64(*(a1 + 280), v13);
    *(a1 + 264) = vaddq_s64(*(a1 + 264), v15);
    *(a1 + 280) = v63;
  }
}

__n128 webrtc::StreamStatisticianImpl::GetStats@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u8[8] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 0;
  v2 = this[8].n128_u32[2] >> 4;
  a2->n128_u32[0] = this[8].n128_u32[3];
  a2->n128_u32[1] = v2;
  v3 = this[22].n128_u32[2];
  if (v3 >= 1)
  {
    a2->n128_u64[1] = 1000000 * v2 / v3;
  }

  if (this[10].n128_u8[0] == 1)
  {
    v4 = this[1].n128_u64[1];
    v5 = this[9].n128_u64[1];
    v6 = 0x8000000000000000;
    if (v4 != 0x8000000000000000 && v5 != 0x8000000000000000)
    {
      v6 = v5 + v4;
    }

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    a2[1].n128_u8[8] = 1;
    a2[1].n128_u64[0] = v8;
  }

  result = this[14];
  v10 = this[15];
  a2[2] = result;
  a2[3] = v10;
  a2[4].n128_u64[0] = this[16].n128_u64[0];
  return result;
}

void webrtc::StreamStatisticianImpl::MaybeAppendReportBlockAndReset(uint64_t a1, void *a2)
{
  if (*(a1 + 160) != 1)
  {
    return;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if ((*(a1 + 160) & 1) == 0)
  {
    goto LABEL_41;
  }

  v5 = *(a1 + 152);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x8000000000000000)
  {
    return;
  }

  v7 = v4 == 0x8000000000000000 || v5 == 0x7FFFFFFFFFFFFFFFLL;
  if (!v7 && v4 - v5 > 7999999)
  {
    return;
  }

  v9 = a2[1];
  v10 = a2[2];
  if (v9 >= v10)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v9 - *a2) >> 2) + 1;
    if (v12 > 0x924924924924924)
    {
      goto LABEL_42;
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v10 - *a2) >> 2);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x492492492492492)
    {
      v12 = 0x924924924924924;
    }

    if (v12)
    {
      if (v12 <= 0x924924924924924)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_41:
    __break(1u);
LABEL_42:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v9)
  {
    goto LABEL_41;
  }

  *v9 = 0;
  *(v9 + 4) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v11 = v9 + 28;
  *(v9 + 24) = 0;
  a2[1] = v11;
  if (*a2 == v11)
  {
    goto LABEL_41;
  }

  *v9 = *(a1 + 8);
  v14 = *(a1 + 200) - *(a1 + 352);
  v15 = *(a1 + 140);
  v16 = v15 - *(a1 + 344);
  if (v14 >= 1 && v16 >= 1)
  {
    *(v11 - 24) = (255 * v16) / v14;
  }

  v18 = *(a1 + 144) + v15;
  if (v18 < 0)
  {
    v18 = 0;
    *(a1 + 144) = -v15;
  }

  else if (v18 >= 0x800000)
  {
    if ((*(a1 + 133) & 1) == 0)
    {
      *(a1 + 133) = 1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/receive_statistics_impl.cc");
      }
    }

    v18 = 0x7FFFFF;
  }

  v26 = *(a1 + 200);
  *(v11 - 20) = v18;
  *(v11 - 16) = v26;
  v27 = *(a1 + 140);
  *(v11 - 12) = *(a1 + 136) >> 4;
  *(a1 + 344) = v27;
  *(a1 + 352) = v26;
}

unint64_t webrtc::StreamStatisticianImpl::GetFractionLostInPercent(webrtc::StreamStatisticianImpl *this)
{
  if (*(this + 160) != 1)
  {
    return 0;
  }

  v1 = *(this + 25) - *(this + 24) + 1;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *(this + 35);
  if (v2 < 1)
  {
    return 0x100000000;
  }

  else
  {
    return (100 * v2 / v1) | 0x100000000 | (100 * v2 / v1) & 0xFFFFFF00;
  }
}

__n128 webrtc::StreamStatisticianImpl::GetReceiveStreamDataCounters@<Q0>(webrtc::StreamStatisticianImpl *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 232);
  *a2 = *(this + 216);
  *(a2 + 16) = v2;
  v3 = *(this + 296);
  v4 = *(this + 312);
  v5 = *(this + 264);
  *(a2 + 64) = *(this + 280);
  *(a2 + 80) = v3;
  v6 = *(this + 328);
  *(a2 + 96) = v4;
  *(a2 + 112) = v6;
  result = *(this + 248);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

uint64_t webrtc::StreamStatisticianImpl::BitrateReceived(webrtc::StreamStatisticianImpl *this)
{
  v2 = (*(**(this + 2) + 16))(*(this + 2));
  v3 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v3;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 < 0)
  {
    v5 = v4 - -v2 / 0x3E8uLL;
  }

  else
  {
    v5 = v3;
  }

  LODWORD(result) = webrtc::RateStatistics::Rate((this + 32), v5);
  if (v7)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::ReceiveStatisticsImpl::OnRtpPacket(webrtc::ReceiveStatisticsImpl *a1, uint64_t a2)
{
  v2 = *(*webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician(a1, *(a2 + 12)) + 72);

  return v2();
}

uint64_t webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician(webrtc::ReceiveStatisticsImpl *this, unsigned int a2)
{
  v41 = a2;
  v5 = *(this + 11);
  v4 = *(this + 12);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = *(this + 12);
  }

  else
  {
    v7 = v6 >> 4;
    v8 = *(this + 11);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[16 * (v7 >> 1)];
      v12 = *v10;
      v11 = v10 + 16;
      v7 += ~(v7 >> 1);
      if (v12 < a2)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
    if (v4 != v8 && *v8 <= a2)
    {
LABEL_32:
      v24 = v8;
      result = *(v8 + 1);
      if (result)
      {
        return result;
      }

      goto LABEL_44;
    }
  }

  v13 = *(this + 13);
  if (v4 < v13)
  {
    if (v8 != v4)
    {
      v14 = *(this + 12);
      if (v4 >= 0x10)
      {
        v14 = v4 + 16;
        *v4 = *(v4 - 16);
        v15 = *(v4 - 8);
        *(v4 - 8) = 0;
        *(v4 + 8) = v15;
      }

      *(this + 12) = v14;
      if (v4 != v8 + 16)
      {
        v16 = 0;
        do
        {
          v17 = &v16[v4];
          *(v17 - 4) = *&v16[v4 - 32];
          v18 = *&v16[v4 - 24];
          *(v17 - 3) = 0;
          v19 = *&v16[v4 - 8];
          *(v17 - 1) = v18;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          v16 -= 16;
        }

        while (&v8[-v4 + 16] != v16);
      }

      *v8 = a2;
      v23 = *(v8 + 1);
      *(v8 + 1) = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
        v24 = v8;
        result = *(v8 + 1);
        if (result)
        {
          return result;
        }

        goto LABEL_44;
      }

      goto LABEL_32;
    }

    if (v5)
    {
      *v4 = a2;
      *(v4 + 8) = 0;
      *(this + 12) = v4 + 16;
      v24 = v8;
      result = *(v8 + 1);
      if (result)
      {
        return result;
      }

LABEL_44:
      v33 = *(this + 2);
      v43 = v41;
      v42 = v33;
      v34 = *(this + 6);
      if (v34)
      {
        (*(*v34 + 48))(&v40);
        v35 = v40;
        v40 = 0;
        v36 = *(v24 + 8);
        *(v24 + 8) = v35;
        if (v36)
        {
          (*(*v36 + 8))(v36);
          v37 = v40;
          v40 = 0;
          if (v37)
          {
            (*(*v37 + 8))(v37);
          }
        }

        std::vector<unsigned int>::push_back[abi:sn200100](this + 8, &v41);
        return *(v24 + 8);
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    std::__throw_bad_function_call[abi:sn200100]();
LABEL_57:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v20 = (v6 >> 4) + 1;
  if (v20 >> 60)
  {
    goto LABEL_57;
  }

  v21 = v13 - v5;
  if (v21 >> 3 > v20)
  {
    v20 = v21 >> 3;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFF0)
  {
    v22 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 60))
    {
      operator new();
    }

    goto LABEL_58;
  }

  v26 = v8 - v5;
  v27 = (v8 - v5) >> 4;
  v24 = 16 * v27;
  if (!v27)
  {
    if (v26 < 1)
    {
      v38 = v26 >> 3;
      if (v8 == v5)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      if (!(v39 >> 60))
      {
        operator new();
      }

LABEL_58:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v24 -= ((v26 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0;
  }

  if (!v24)
  {
    goto LABEL_55;
  }

  *v24 = a2;
  *(v24 + 8) = 0;
  memcpy((v24 + 16), v8, *(this + 12) - v8);
  v28 = *(this + 11);
  v29 = v24 + 16 + *(this + 12) - v8;
  *(this + 12) = v8;
  v30 = v8 - v28;
  v31 = (v24 - (v8 - v28));
  memcpy(v31, v28, v30);
  v32 = *(this + 11);
  *(this + 11) = v31;
  *(this + 12) = v29;
  *(this + 13) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  result = *(v24 + 8);
  if (!result)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::ReceiveStatisticsImpl::OnRtpPacket(uint64_t a1, uint64_t a2)
{
  v2 = *(*webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician((a1 - 8), *(a2 + 12)) + 72);

  return v2();
}

uint64_t webrtc::ReceiveStatisticsImpl::GetStatistician(webrtc::ReceiveStatisticsImpl *this, unsigned int a2)
{
  v3 = *(this + 11);
  v2 = *(this + 12);
  if (v2 == v3)
  {
    v3 = *(this + 12);
    v9 = v3;
  }

  else
  {
    v4 = (v2 - v3) >> 4;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[4 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 4;
      v4 += ~(v4 >> 1);
      if (v8 < a2)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
    v9 = v3;
    if (v2 != v3)
    {
      v9 = v3 + 4;
      if (*v3 > a2)
      {
        v9 = v3;
      }
    }
  }

  if (v3 == v9)
  {
    v3 = *(this + 12);
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 1);
  }
}

uint64_t webrtc::ReceiveStatisticsImpl::SetMaxReorderingThreshold(webrtc::ReceiveStatisticsImpl *this, unsigned int a2)
{
  v2 = *(*webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician(this, a2) + 56);

  return v2();
}

uint64_t webrtc::ReceiveStatisticsImpl::EnableRetransmitDetection(webrtc::ReceiveStatisticsImpl *this, unsigned int a2)
{
  v2 = *(*webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician(this, a2) + 64);

  return v2();
}

void *webrtc::ReceiveStatisticsImpl::RtcpReportBlocks@<X0>(void *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = this;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = this[8];
  v7 = this[9];
  v8 = (v7 - v6) >> 2;
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    if (v8 < 0x924924924924925)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = v7 - v6;
  if (!v9)
  {
    v12 = 0;
LABEL_25:
    v4[7] = v12;
    return this;
  }

  if (a2)
  {
    v10 = 0;
    v11 = v9 >> 2;
    do
    {
      ++v10;
      v12 = (v4[7] + v10) % v11;
      v13 = *(v6 + 4 * v12);
      v15 = v4[11];
      v14 = v4[12];
      if (v14 == v15)
      {
        v15 = v4[12];
        v21 = v15;
      }

      else
      {
        v16 = (v14 - v15) >> 4;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[16 * (v16 >> 1)];
          v20 = *v18;
          v19 = v18 + 16;
          v16 += ~(v16 >> 1);
          if (v20 < v13)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        v21 = v15;
        if (v14 != v15)
        {
          v21 = v15 + 16;
          if (v13 < *v15)
          {
            v21 = v15;
          }
        }
      }

      if (v15 != v21)
      {
        v14 = v15;
      }

      this = (*(**(v14 + 1) + 48))(*(v14 + 1), a3);
      v6 = v4[8];
      v11 = (v4[9] - v6) >> 2;
    }

    while (v10 < v11 && 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 2) < a2);
    goto LABEL_25;
  }

  this[7] = 0;
  return this;
}

void webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl(webrtc::ReceiveStatisticsImpl *this)
{
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_28829A180;
  *(this + 1) = &unk_28829A1C8;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        *(v3 - 8) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 11);
    }

    *(this + 12) = v2;
    operator delete(v4);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7 == (this + 24))
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

void non-virtual thunk towebrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl(webrtc::ReceiveStatisticsImpl *this)
{
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl((this - 8));
}

{
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl((this - 8));

  JUMPOUT(0x2743DA540);
}

void webrtc::StreamStatisticianLocked::~StreamStatisticianLocked(webrtc::StreamStatisticianLocked *this)
{
  *this = &unk_28829A238;
  *(this + 9) = &unk_28829A120;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 13);
  pthread_mutex_destroy((this + 8));
}

{
  *this = &unk_28829A238;
  *(this + 9) = &unk_28829A120;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 13);
  pthread_mutex_destroy((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StreamStatisticianLocked::GetStats@<X0>(webrtc::StreamStatisticianLocked *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock((this + 8));
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 52) >> 4;
  *a2 = *(this + 53);
  *(a2 + 4) = v4;
  v5 = *(this + 108);
  if (v5 >= 1)
  {
    *(a2 + 8) = 1000000 * v4 / v5;
  }

  if (*(this + 232) == 1)
  {
    v6 = *(this + 12);
    v7 = *(this + 28);
    v8 = 0x8000000000000000;
    if (v6 != 0x8000000000000000 && v7 != 0x8000000000000000)
    {
      v8 = v7 + v6;
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(a2 + 24) = 1;
    *(a2 + 16) = v10;
  }

  *(a2 + 64) = *(this + 41);
  v11 = *(this + 312);
  *(a2 + 32) = *(this + 296);
  *(a2 + 48) = v11;

  return pthread_mutex_unlock((this + 8));
}

unint64_t webrtc::StreamStatisticianLocked::GetFractionLostInPercent(webrtc::StreamStatisticianLocked *this)
{
  pthread_mutex_lock((this + 8));
  if (*(this + 232) == 1 && (v2 = *(this + 34) - *(this + 33) + 1, v2 >= 1))
  {
    v3 = *(this + 53);
    if (v3 < 1)
    {
      v5 = 0;
      v4 = 0;
    }

    else
    {
      v5 = 100 * v3 / v2;
      v4 = v5 & 0xFFFFFF00;
      v5 = v5;
    }

    v6 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  v7 = v5 | v6;
  pthread_mutex_unlock((this + 8));
  return v7 | v4;
}

uint64_t webrtc::StreamStatisticianLocked::GetReceiveStreamDataCounters@<X0>(webrtc::StreamStatisticianLocked *this@<X0>, _OWORD *a2@<X8>)
{
  pthread_mutex_lock((this + 8));
  v4 = *(this + 23);
  a2[4] = *(this + 22);
  a2[5] = v4;
  v5 = *(this + 25);
  a2[6] = *(this + 24);
  a2[7] = v5;
  v6 = *(this + 19);
  *a2 = *(this + 18);
  a2[1] = v6;
  v7 = *(this + 21);
  a2[2] = *(this + 20);
  a2[3] = v7;

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::StreamStatisticianLocked::BitrateReceived(webrtc::StreamStatisticianLocked *this)
{
  pthread_mutex_lock((this + 8));
  v2 = (*(**(this + 11) + 16))(*(this + 11));
  v3 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v3;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 < 0)
  {
    v5 = v4 - -v2 / 0x3E8uLL;
  }

  else
  {
    v5 = v3;
  }

  v6 = webrtc::RateStatistics::Rate((this + 104), v5);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v8;
}

uint64_t webrtc::StreamStatisticianLocked::MaybeAppendReportBlockAndReset(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  webrtc::StreamStatisticianImpl::MaybeAppendReportBlockAndReset(a1 + 72, a2);

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::StreamStatisticianLocked::SetMaxReorderingThreshold(webrtc::StreamStatisticianLocked *this, int a2)
{
  pthread_mutex_lock((this + 8));
  *(this + 50) = a2;

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::StreamStatisticianLocked::EnableRetransmitDetection(webrtc::StreamStatisticianLocked *this, char a2)
{
  pthread_mutex_lock((this + 8));
  *(this + 204) = a2;

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::StreamStatisticianLocked::UpdateCounters(uint64_t a1, int64x2_t *a2)
{
  pthread_mutex_lock((a1 + 8));
  webrtc::StreamStatisticianImpl::UpdateCounters(a1 + 72, a2);

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::ReceiveStatisticsLocked::ReceiveStatisticsLocked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829A298;
  *(a1 + 8) = &unk_28829A2E0;
  pthread_mutexattr_init(&v11);
  pthread_mutexattr_setpolicy_np(&v11, 3);
  pthread_mutex_init((a1 + 16), &v11);
  pthread_mutexattr_destroy(&v11);
  v6 = *(a3 + 24);
  if (!v6)
  {
    v10 = 0;
    *(a1 + 80) = &unk_28829A180;
    *(a1 + 88) = &unk_28829A1C8;
    *(a1 + 96) = a2;
    goto LABEL_8;
  }

  if (v6 != a3)
  {
    v10 = *(a3 + 24);
    *(a3 + 24) = 0;
    *(a1 + 80) = &unk_28829A180;
    *(a1 + 88) = &unk_28829A1C8;
    *(a1 + 96) = a2;
    goto LABEL_5;
  }

  v10 = v9;
  (*(*v6 + 24))(v6, v9);
  v6 = v10;
  *(a1 + 80) = &unk_28829A180;
  *(a1 + 88) = &unk_28829A1C8;
  *(a1 + 96) = a2;
  if (!v6)
  {
LABEL_8:
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    return a1;
  }

LABEL_5:
  if (v6 == v9)
  {
    *(a1 + 128) = a1 + 104;
    (*(*v6 + 24))(v6);
    v8 = v10;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0;
    if (v8 == v9)
    {
      (*(*v8 + 32))(v8);
    }

    else if (v8)
    {
      (*(*v8 + 40))(v8);
    }
  }

  else
  {
    *(a1 + 128) = v6;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0;
  }

  return a1;
}

void webrtc::ReceiveStatisticsLocked::~ReceiveStatisticsLocked(webrtc::ReceiveStatisticsLocked *this)
{
  *this = &unk_28829A298;
  *(this + 1) = &unk_28829A2E0;
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl((this + 80));
  pthread_mutex_destroy((this + 16));
}

{
  *this = &unk_28829A298;
  *(this + 1) = &unk_28829A2E0;
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl((this + 80));
  pthread_mutex_destroy((this + 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::ReceiveStatisticsLocked::RtcpReportBlocks@<X0>(webrtc::ReceiveStatisticsLocked *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock((this + 16));
  webrtc::ReceiveStatisticsImpl::RtcpReportBlocks(this + 10, a2, a3);

  return pthread_mutex_unlock((this + 16));
}

uint64_t webrtc::ReceiveStatisticsLocked::GetStatistician(webrtc::ReceiveStatisticsLocked *this, unsigned int a2)
{
  pthread_mutex_lock((this + 16));
  v5 = *(this + 21);
  v4 = *(this + 22);
  if (v4 == v5)
  {
    v5 = *(this + 22);
    v11 = v5;
  }

  else
  {
    v6 = (v4 - v5) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[4 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 4;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = v5;
    if (v4 != v5)
    {
      v11 = v5 + 4;
      if (*v5 > a2)
      {
        v11 = v5;
      }
    }
  }

  if (v5 == v11)
  {
    v5 = *(this + 22);
  }

  if (v4 == v5)
  {
    pthread_mutex_unlock((this + 16));
    return 0;
  }

  else
  {
    v12 = *(v5 + 1);
    pthread_mutex_unlock((this + 16));
    return v12;
  }
}

uint64_t webrtc::ReceiveStatisticsLocked::SetMaxReorderingThreshold(webrtc::ReceiveStatisticsLocked *this, unsigned int a2, uint64_t a3)
{
  pthread_mutex_lock((this + 16));
  Statistician = webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician((this + 80), a2);
  (*(*Statistician + 56))(Statistician, a3);

  return pthread_mutex_unlock((this + 16));
}

uint64_t webrtc::ReceiveStatisticsLocked::EnableRetransmitDetection(webrtc::ReceiveStatisticsLocked *this, unsigned int a2, uint64_t a3)
{
  pthread_mutex_lock((this + 16));
  Statistician = webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician((this + 80), a2);
  (*(*Statistician + 64))(Statistician, a3);

  return pthread_mutex_unlock((this + 16));
}

uint64_t webrtc::ReceiveStatisticsLocked::OnRtpPacket(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 16));
  Statistician = webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician((a1 + 80), *(a2 + 12));
  (*(*Statistician + 72))(Statistician, a2);

  return pthread_mutex_unlock((a1 + 16));
}

void non-virtual thunk towebrtc::ReceiveStatisticsLocked::~ReceiveStatisticsLocked(webrtc::ReceiveStatisticsLocked *this)
{
  *(this - 1) = &unk_28829A298;
  *this = &unk_28829A2E0;
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl((this + 72));

  pthread_mutex_destroy((this + 8));
}

{
  *(this - 1) = &unk_28829A298;
  *this = &unk_28829A2E0;
  webrtc::ReceiveStatisticsImpl::~ReceiveStatisticsImpl((this + 72));
  pthread_mutex_destroy((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t non-virtual thunk towebrtc::ReceiveStatisticsLocked::OnRtpPacket(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  Statistician = webrtc::ReceiveStatisticsImpl::GetOrCreateStatistician((a1 + 72), *(a2 + 12));
  (*(*Statistician + 72))(Statistician, a2);

  return pthread_mutex_unlock((a1 + 8));
}

void webrtc::internal::ReceiveStatisticsProxy::ReceiveStatisticsProxy(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_28829A308;
  *(a1 + 8) = &unk_28829A360;
  *(a1 + 16) = &unk_28829A388;
  *(a1 + 24) = a3;
  v5 = (*(*a3 + 16))(a3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (-v5 % 0x3E8uLL <= 0x1F4)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }

    v6 = v7 - -v5 / 0x3E8uLL;
  }

  else
  {
    v6 = v5 / 0x3E8;
    if (v5 % 0x3E8 > 0x1F3)
    {
      ++v6;
    }
  }

  *(a1 + 32) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 10;
  *(a1 + 160) = -1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xFFFFFFFF00000000;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 309) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 336) = 0x7FFFFFFF;
  *(a1 + 392) = 0;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 369) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = a2;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 800) = -1;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0x447A000000000000;
  *(a1 + 824) = 1000;
  *(a1 + 832) = 1000;
  *(a1 + 888) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 896) = -1;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0x447A000000000000;
  *(a1 + 920) = 1000;
  *(a1 + 928) = 1000;
  *(a1 + 936) = &unk_28829A088;
  *(a1 + 944) = xmmword_273BA1B20;
  operator new[]();
}

void webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy(webrtc::internal::ReceiveStatisticsProxy *this)
{
  *this = &unk_28829A308;
  *(this + 1) = &unk_28829A360;
  *(this + 2) = &unk_28829A388;
  v2 = *(this + 209);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  std::deque<std::pair<long long,webrtc::TimingFrameInfo>>::~deque[abi:sn200100](this + 197);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1472, *(this + 185));
  *(this + 168) = &unk_2882A00F0;
  v3 = *(this + 174);
  *(this + 174) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 172);
  *(this + 172) = 0;
  if (v4)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v4 + 8, *(v4 + 16));
    MEMORY[0x2743DA540](v4, 0x1020C40C0D28DD2);
  }

  v5 = *(this + 171);
  *(this + 171) = 0;
  if (v5)
  {
    MEMORY[0x2743DA540](v5, 0x1000C407607B2BCLL);
  }

  std::__tree<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::__map_value_compare<webrtc::VideoContentType,std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>,std::less<webrtc::VideoContentType>,true>,std::allocator<std::__value_type<webrtc::VideoContentType,webrtc::internal::ReceiveStatisticsProxy::ContentSpecificStats>>>::destroy(this + 1320, *(this + 166));
  std::deque<webrtc::DecodeTimePercentileFilter::Sample>::~deque[abi:sn200100](this + 159);
  v6 = *(this + 157);
  *(this + 157) = 0;
  if (v6)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v6 + 240, *(v6 + 248));
    v7 = *(v6 + 192);
    if (v7)
    {
      *(v6 + 200) = v7;
      operator delete(v7);
    }

    v8 = *(v6 + 64);
    if (v8)
    {
      *(v6 + 72) = v8;
      operator delete(v8);
    }

    MEMORY[0x2743DA540](v6, 0x1030C4028B32989);
  }

  *(this + 125) = &unk_28829A088;
  v9 = *(this + 128);
  if (v9)
  {
    MEMORY[0x2743DA520](v9, 0x1000C8000313F17);
  }

  *(this + 117) = &unk_28829A088;
  v10 = *(this + 120);
  if (v10)
  {
    MEMORY[0x2743DA520](v10, 0x1000C8000313F17);
  }

  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 105);
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 93);
  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
    if (*(this + 80) != 1)
    {
      return;
    }
  }

  else if (*(this + 80) != 1)
  {
    return;
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

{
  webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy(webrtc::internal::ReceiveStatisticsProxy *this)
{
  webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy((this - 8));
}

{
  webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy((this - 16));
}

{
  webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::internal::ReceiveStatisticsProxy::~ReceiveStatisticsProxy((this - 16));

  JUMPOUT(0x2743DA540);
}

void webrtc::internal::ReceiveStatisticsProxy::UpdateHistograms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v314 = v4;
  v315 = v5;
  v7 = v6;
  v8 = v3;
  v352 = *MEMORY[0x277D85DE8];
  v349 = &v351;
  v350 = xmmword_273BA1B30;
  v351 = 0;
  v9 = (*(**(v3 + 24) + 16))(*(v3 + 24));
  v10 = v9 / 0x3E8uLL;
  if (v9 % 0x3E8uLL > 0x1F3)
  {
    ++v10;
  }

  if (-v9 % 0x3E8uLL <= 0x1F4)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 - -v9 / 0x3E8uLL;
  if (v9 < 0)
  {
    v10 = v12;
  }

  v13 = ((v10 - *(v8 + 32)) * 0x20C49BA5E353F7CFLL) >> 64;
  v14 = (v13 >> 7) + (v13 >> 63);
  if (*(v8 + 92) > 0 || *(v8 + 96) >= 1)
  {
    explicit = atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire);
    if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v16 = 0, atomic_compare_exchange_strong(&_MergedGlobals_18, &v16, explicit), explicit))
    {
      webrtc::metrics::HistogramAdd(explicit, v14);
    }

    if (v350 + ~*(&v350 + 1) >= 0x2CuLL)
    {
      v17 = 44;
    }

    else
    {
      v17 = v350 + ~*(&v350 + 1);
    }

    memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.ReceiveStreamLifetimeInSeconds ", v17);
    *(&v350 + 1) += v17;
    v349[*(&v350 + 1)] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v14);
    LOBYTE(__src) = 10;
    v18 = v350;
    v19 = *(&v350 + 1) + 1;
    memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
    v20 = *(&v350 + 1);
    if (v18 != v19)
    {
      v20 = *(&v350 + 1) + 1;
    }

    *(&v350 + 1) = v20;
    v349[v20] = 0;
  }

  if (v350 + ~*(&v350 + 1) >= 0xFuLL)
  {
    v21 = 15;
  }

  else
  {
    v21 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "Frames decoded ", v21);
  *(&v350 + 1) += v21;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%u", *(v8 + 172));
  LOBYTE(__src) = 10;
  v22 = v350;
  v23 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v24 = *(&v350 + 1);
  if (v22 != v23)
  {
    v24 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v24;
  v349[v24] = 0;
  if (*(v8 + 1628) == 1)
  {
    v25 = *(v8 + 1624) - *(v8 + 172);
    CountsLinear = atomic_load_explicit(&qword_28100BAA0, memory_order_acquire);
    if (CountsLinear || (CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear(), v27 = 0, atomic_compare_exchange_strong(&qword_28100BAA0, &v27, CountsLinear), CountsLinear))
    {
      webrtc::metrics::HistogramAdd(CountsLinear, v25);
    }

    if (v350 + ~*(&v350 + 1) >= 0x24uLL)
    {
      v28 = 36;
    }

    else
    {
      v28 = v350 + ~*(&v350 + 1);
    }

    memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.DroppedFrames.Receiver ", v28);
    *(&v350 + 1) += v28;
    v349[*(&v350 + 1)] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v25);
    LOBYTE(__src) = 10;
    v29 = v350;
    v30 = *(&v350 + 1) + 1;
    memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
    v31 = *(&v350 + 1);
    if (v29 != v30)
    {
      v31 = *(&v350 + 1) + 1;
    }

    *(&v350 + 1) = v31;
    v349[v31] = 0;
  }

  if ((v7 & 0x100000000) != 0 && v14 >= 10)
  {
    if (v350 + ~*(&v350 + 1) >= 0x2AuLL)
    {
      v32 = 42;
    }

    else
    {
      v32 = v350 + ~*(&v350 + 1);
    }

    memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.ReceivedPacketsLostInPercent ", v32);
    *(&v350 + 1) += v32;
    v349[*(&v350 + 1)] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v7);
    LOBYTE(__src) = 10;
    v33 = v350;
    v34 = *(&v350 + 1) + 1;
    memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
    v35 = *(&v350 + 1);
    if (v33 != v34)
    {
      v35 = *(&v350 + 1) + 1;
    }

    *(&v350 + 1) = v35;
    v349[v35] = 0;
  }

  if (*(v8 + 1528) == 1)
  {
    v36 = (*(**(v8 + 24) + 16))(*(v8 + 24));
    v37 = v36 / 0x3E8uLL;
    if (v36 % 0x3E8uLL > 0x1F3)
    {
      ++v37;
    }

    if (-v36 % 0x3E8uLL <= 0x1F4)
    {
      v38 = 0;
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 - -v36 / 0x3E8uLL;
    if (v36 < 0)
    {
      v37 = v39;
    }

    if ((*(v8 + 1528) & 1) == 0)
    {
      goto LABEL_510;
    }

    v40 = v37 - *(v8 + 1520);
    if (v40 >= 10000)
    {
      v41 = (((*(v8 + 172) * 1000.0) / v40) + 0.5);
      v42 = atomic_load_explicit(&qword_28100BAA8, memory_order_acquire);
      if (v42 || (v42 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v43 = 0, atomic_compare_exchange_strong(&qword_28100BAA8, &v43, v42), v42))
      {
        webrtc::metrics::HistogramAdd(v42, v41);
      }

      if (v350 + ~*(&v350 + 1) >= 0x24uLL)
      {
        v44 = 36;
      }

      else
      {
        v44 = v350 + ~*(&v350 + 1);
      }

      memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.DecodedFramesPerSecond ", v44);
      *(&v350 + 1) += v44;
      v349[*(&v350 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v41);
      LOBYTE(__src) = 10;
      v45 = v350;
      v46 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
      v47 = *(&v350 + 1);
      if (v45 != v46)
      {
        v47 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v47;
      v349[v47] = 0;
      if (*(v8 + 52))
      {
        if (*(v8 + 1552))
        {
          v48 = atomic_load_explicit(&qword_28100BAB0, memory_order_acquire);
          if (v48 || (v48 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v49 = 0, atomic_compare_exchange_strong(&qword_28100BAB0, &v49, v48), v48))
          {
            webrtc::metrics::HistogramAdd(v48, *(v8 + 1560) / *(v8 + 1552));
          }
        }
      }
    }
  }

  if (*(v8 + 968) >= 200)
  {
    v50 = 0.0;
    if (*(v8 + 984) != -1)
    {
      v51 = (*(*(v8 + 936) + 16))();
      v52 = *(v8 + 992);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      if (!((v54 < 0) ^ v53 | (v54 == 0)))
      {
        v50 = (1000 * *(v8 + 968)) / v54;
      }
    }

    v55 = llround(v50);
    v56 = atomic_load_explicit(&qword_28100BAB8, memory_order_acquire);
    if (v56 || (v56 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v57 = 0, atomic_compare_exchange_strong(&qword_28100BAB8, &v57, v56), v56))
    {
      webrtc::metrics::HistogramAdd(v56, v55);
    }

    if (v350 + ~*(&v350 + 1) >= 0x23uLL)
    {
      v58 = 35;
    }

    else
    {
      v58 = v350 + ~*(&v350 + 1);
    }

    memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.RenderFramesPerSecond ", v58);
    *(&v350 + 1) += v58;
    v349[*(&v350 + 1)] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v55);
    LOBYTE(__src) = 10;
    v59 = v350;
    v60 = *(&v350 + 1) + 1;
    memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
    v61 = *(&v350 + 1);
    if (v59 != v60)
    {
      v61 = *(&v350 + 1) + 1;
    }

    *(&v350 + 1) = v61;
    v349[v61] = 0;
    v62 = atomic_load_explicit(&qword_28100BAC0, memory_order_acquire);
    if (v62 || (v62 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v63 = 0, atomic_compare_exchange_strong(&qword_28100BAC0, &v63, v62), v62))
    {
      v64 = 0.0;
      if (*(v8 + 1048) != -1)
      {
        v65 = (*(*(v8 + 1000) + 16))();
        v66 = *(v8 + 1056);
        v53 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (!((v67 < 0) ^ v53 | (v67 == 0)))
        {
          v64 = (1000 * *(v8 + 1032)) / v67;
        }
      }

      webrtc::metrics::HistogramAdd(v62, llround(v64));
    }
  }

  v68 = *(v8 + 1072);
  if (v68 >= 200)
  {
    v69 = *(v8 + 1064);
    v70 = atomic_load_explicit(&qword_28100BAC8, memory_order_acquire);
    v71 = v69 / v68;
    if (v70 || (v70 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v72 = 0, atomic_compare_exchange_strong(&qword_28100BAC8, &v72, v70), v70))
    {
      webrtc::metrics::HistogramAdd(v70, v71);
    }

    if (v350 + ~*(&v350 + 1) >= 0x1EuLL)
    {
      v73 = 30;
    }

    else
    {
      v73 = v350 + ~*(&v350 + 1);
    }

    memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.AVSyncOffsetInMs ", v73);
    *(&v350 + 1) += v73;
    v349[*(&v350 + 1)] = 0;
    webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v71);
    LOBYTE(__src) = 10;
    v74 = v350;
    v75 = *(&v350 + 1) + 1;
    memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
    v76 = *(&v350 + 1);
    if (v74 != v75)
    {
      v76 = *(&v350 + 1) + 1;
    }

    *(&v350 + 1) = v76;
    v349[v76] = 0;
  }

  v77 = *(v8 + 1368);
  v80 = *(v77 + 16);
  v78 = (v77 + 16);
  v79 = v80;
  if (v80)
  {
    *(*(v8 + 1368) + 32) = (*(*(v8 + 1368) + 8) + v79 / 2) / v79;
  }

  v347 = *v78;
  v348 = *(v78 + 2);
  if (v347 < 1)
  {
    goto LABEL_113;
  }

  v81 = atomic_load_explicit(&qword_28100BAD0, memory_order_acquire);
  if (v81 || (v81 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v82 = 0, atomic_compare_exchange_strong(&qword_28100BAD0, &v82, v81), v81))
  {
    webrtc::metrics::HistogramAdd(v81, v348);
  }

  if (v350 + ~*(&v350 + 1) >= 0x25uLL)
  {
    v83 = 37;
  }

  else
  {
    v83 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.RtpToNtpFreqOffsetInKhz ", v83);
  *(&v350 + 1) += v83;
  v349[*(&v350 + 1)] = 0;
  webrtc::AggregatedStats::ToStringWithMultiplier(&v347, 1, v84, &__src);
  v85 = SBYTE7(v326);
  v86 = *(&__src + 1);
  v87 = __src;
  if ((SBYTE7(v326) & 0x80u) == 0)
  {
    p_src = &__src;
  }

  else
  {
    p_src = __src;
  }

  if ((SBYTE7(v326) & 0x80u) == 0)
  {
    v86 = SBYTE7(v326);
  }

  if (v86 >= v350 + ~*(&v350 + 1))
  {
    v89 = v350 + ~*(&v350 + 1);
  }

  else
  {
    v89 = v86;
  }

  memcpy(&v349[*(&v350 + 1)], p_src, v89);
  *(&v350 + 1) += v89;
  v349[*(&v350 + 1)] = 0;
  LOBYTE(__p) = 10;
  v90 = v350;
  v91 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__p, v350 != *(&v350 + 1) + 1);
  v92 = *(&v350 + 1);
  if (v90 != v91)
  {
    v92 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v92;
  v349[v92] = 0;
  if (v85 < 0)
  {
    operator delete(v87);
    v93 = *(v8 + 92);
    v94 = *(v8 + 96) + v93;
    if (v94 < 200)
    {
LABEL_114:
      v95 = *(v8 + 1440);
      if (v95 < 200)
      {
        goto LABEL_115;
      }

      goto LABEL_131;
    }
  }

  else
  {
LABEL_113:
    v93 = *(v8 + 92);
    v94 = *(v8 + 96) + v93;
    if (v94 < 200)
    {
      goto LABEL_114;
    }
  }

  v101 = atomic_load_explicit(&qword_28100BAD8, memory_order_acquire);
  v102 = (1000 * v93 + (v94 >> 1)) / v94;
  if (v101 || (v101 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v103 = 0, atomic_compare_exchange_strong(&qword_28100BAD8, &v103, v101), v101))
  {
    webrtc::metrics::HistogramAdd(v101, v102);
  }

  if (v350 + ~*(&v350 + 1) >= 0x29uLL)
  {
    v104 = 41;
  }

  else
  {
    v104 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.KeyFramesReceivedInPermille ", v104);
  *(&v350 + 1) += v104;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v102);
  LOBYTE(__src) = 10;
  v105 = v350;
  v106 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v107 = *(&v350 + 1);
  if (v105 != v106)
  {
    v107 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v107;
  v349[v107] = 0;
  v95 = *(v8 + 1440);
  if (v95 < 200)
  {
LABEL_115:
    v96 = *(v8 + 1104);
    if (v96 < 200)
    {
      goto LABEL_116;
    }

    goto LABEL_140;
  }

LABEL_131:
  v108 = *(v8 + 1432);
  v109 = atomic_load_explicit(&qword_28100BAE0, memory_order_acquire);
  v110 = v108 / v95;
  if (v109 || (v109 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v111 = 0, atomic_compare_exchange_strong(&qword_28100BAE0, &v111, v109), v109))
  {
    webrtc::metrics::HistogramAdd(v109, v110);
  }

  if (v350 + ~*(&v350 + 1) >= 0x1CuLL)
  {
    v112 = 28;
  }

  else
  {
    v112 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.Decoded.Vp8.Qp ", v112);
  *(&v350 + 1) += v112;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v110);
  LOBYTE(__src) = 10;
  v113 = v350;
  v114 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v115 = *(&v350 + 1);
  if (v113 != v114)
  {
    v115 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v115;
  v349[v115] = 0;
  v96 = *(v8 + 1104);
  if (v96 < 200)
  {
LABEL_116:
    v97 = *(v8 + 1136);
    if (v97 < 200)
    {
      goto LABEL_117;
    }

    goto LABEL_149;
  }

LABEL_140:
  v116 = *(v8 + 1096);
  v117 = atomic_load_explicit(&qword_28100BAE8, memory_order_acquire);
  v118 = v116 / v96;
  if (v117 || (v117 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v119 = 0, atomic_compare_exchange_strong(&qword_28100BAE8, &v119, v117), v117))
  {
    webrtc::metrics::HistogramAdd(v117, v118);
  }

  if (v350 + ~*(&v350 + 1) >= 0x1CuLL)
  {
    v120 = 28;
  }

  else
  {
    v120 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.DecodeTimeInMs ", v120);
  *(&v350 + 1) += v120;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v118);
  LOBYTE(__src) = 10;
  v121 = v350;
  v122 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v123 = *(&v350 + 1);
  if (v121 != v122)
  {
    v123 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v123;
  v349[v123] = 0;
  v97 = *(v8 + 1136);
  if (v97 < 200)
  {
LABEL_117:
    v98 = *(v8 + 1168);
    if (v98 < 200)
    {
      goto LABEL_118;
    }

    goto LABEL_158;
  }

LABEL_149:
  v124 = *(v8 + 1128);
  v125 = atomic_load_explicit(&qword_28100BAF0, memory_order_acquire);
  v126 = v124 / v97;
  if (v125 || (v125 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v127 = 0, atomic_compare_exchange_strong(&qword_28100BAF0, &v127, v125), v125))
  {
    webrtc::metrics::HistogramAdd(v125, v126);
  }

  if (v350 + ~*(&v350 + 1) >= 0x23uLL)
  {
    v128 = 35;
  }

  else
  {
    v128 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.JitterBufferDelayInMs ", v128);
  *(&v350 + 1) += v128;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v126);
  LOBYTE(__src) = 10;
  v129 = v350;
  v130 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v131 = *(&v350 + 1);
  if (v129 != v130)
  {
    v131 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v131;
  v349[v131] = 0;
  v98 = *(v8 + 1168);
  if (v98 < 200)
  {
LABEL_118:
    v99 = *(v8 + 1200);
    if (v99 < 200)
    {
      goto LABEL_119;
    }

    goto LABEL_167;
  }

LABEL_158:
  v132 = *(v8 + 1160);
  v133 = atomic_load_explicit(&qword_28100BAF8, memory_order_acquire);
  v134 = v132 / v98;
  if (v133 || (v133 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v135 = 0, atomic_compare_exchange_strong(&qword_28100BAF8, &v135, v133), v133))
  {
    webrtc::metrics::HistogramAdd(v133, v134);
  }

  if (v350 + ~*(&v350 + 1) >= 0x1DuLL)
  {
    v136 = 29;
  }

  else
  {
    v136 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.TargetDelayInMs ", v136);
  *(&v350 + 1) += v136;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v134);
  LOBYTE(__src) = 10;
  v137 = v350;
  v138 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v139 = *(&v350 + 1);
  if (v137 != v138)
  {
    v139 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v139;
  v349[v139] = 0;
  v99 = *(v8 + 1200);
  if (v99 < 200)
  {
LABEL_119:
    v100 = *(v8 + 1232);
    if (v100 < 200)
    {
      goto LABEL_179;
    }

    goto LABEL_176;
  }

LABEL_167:
  v140 = *(v8 + 1192);
  v141 = atomic_load_explicit(&qword_28100BB00, memory_order_acquire);
  v142 = v140 / v99;
  if (v141 || (v141 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v143 = 0, atomic_compare_exchange_strong(&qword_28100BB00, &v143, v141), v141))
  {
    webrtc::metrics::HistogramAdd(v141, v142);
  }

  if (v350 + ~*(&v350 + 1) >= 0x1EuLL)
  {
    v144 = 30;
  }

  else
  {
    v144 = v350 + ~*(&v350 + 1);
  }

  memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.CurrentDelayInMs ", v144);
  *(&v350 + 1) += v144;
  v349[*(&v350 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v142);
  LOBYTE(__src) = 10;
  v145 = v350;
  v146 = *(&v350 + 1) + 1;
  memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
  v147 = *(&v350 + 1);
  if (v145 != v146)
  {
    v147 = *(&v350 + 1) + 1;
  }

  *(&v350 + 1) = v147;
  v349[v147] = 0;
  v100 = *(v8 + 1232);
  if (v100 >= 200)
  {
LABEL_176:
    v148 = *(v8 + 1224);
    v149 = atomic_load_explicit(&qword_28100BB08, memory_order_acquire);
    if (v149 || (v149 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v150 = 0, atomic_compare_exchange_strong(&qword_28100BB08, &v150, v149), v149))
    {
      webrtc::metrics::HistogramAdd(v149, v148 / v100);
    }
  }

LABEL_179:
  v151 = *(v8 + 1320);
  v316 = v8;
  v317 = (v8 + 1328);
  if (v151 != (v8 + 1328))
  {
    while (1)
    {
      v318 = *(v151 + 32);
      v152 = *(v151 + 23);
      v333 = *(v151 + 21);
      v334 = v152;
      v335 = *(v151 + 25);
      v153 = v151[28];
      v336 = v151[27];
      v154 = *(v151 + 15);
      v329 = *(v151 + 13);
      v330 = v154;
      v155 = *(v151 + 19);
      v331 = *(v151 + 17);
      v332 = v155;
      v156 = *(v151 + 7);
      __src = *(v151 + 5);
      v326 = v156;
      v157 = *(v151 + 11);
      v327 = *(v151 + 9);
      v328 = v157;
      v338 = 0;
      v339 = 0;
      v337 = 0;
      v158 = v151[29];
      if (v158 != v153)
      {
        if (((v158 - v153) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v341[0] = 0;
      v341[1] = 0;
      v340 = v341;
      v159 = v151[31];
      if (v159 != v151 + 32)
      {
        if (v340 != v341)
        {
          v164 = v341;
          do
          {
            v165 = v164[2];
            v166 = *v165 == v164;
            v164 = v165;
          }

          while (v166);
        }

        operator new();
      }

      v342 = *(v151 + 17);
      v343 = v151[36];
      v160 = *(v151 + 41);
      v161 = *(v151 + 37);
      v345 = *(v151 + 39);
      v346 = v160;
      v344 = v161;
      if (v318)
      {
        v162 = "WebRTC.Video.Screenshare";
      }

      else
      {
        v162 = "WebRTC.Video";
      }

      if (v318)
      {
        v163 = 24;
      }

      else
      {
        v163 = 12;
      }

      if (v318)
      {
        operator new();
      }

      v324 = 12;
      if (&__p <= v162 && &v323 + 4 > v162)
      {
        goto LABEL_510;
      }

      memcpy(&__p, v162, v163);
      BYTE4(v323) = 0;
      v167 = *(&__src + 1);
      if (*(&__src + 1) < 200)
      {
        goto LABEL_274;
      }

      if (v324 >= 0)
      {
        v168 = v324;
      }

      else
      {
        v168 = v323;
      }

      if (v168 + 18 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_511;
      }

      v169 = __src;
      if (v168 + 18 >= 0x17)
      {
        operator new();
      }

      v320 = 0;
      v321 = 0;
      __dst = 0;
      HIBYTE(v321) = v168 + 18;
      if (v324 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v168 & 0x8000000000000000) != 0)
      {
        goto LABEL_510;
      }

      v171 = &__dst + v168;
      if (p_p >= &__dst && v171 > p_p)
      {
        goto LABEL_510;
      }

      if (v168)
      {
        memmove(&__dst, p_p, v168);
      }

      if (v171 <= ".EndToEndDelayInMs" && v171 + 18 > ".EndToEndDelayInMs")
      {
        goto LABEL_510;
      }

      strcpy(v171, ".EndToEndDelayInMs");
      v172 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if ((SHIBYTE(v321) & 0x80000000) == 0)
      {
        break;
      }

      v186 = v172;
      operator delete(__dst);
      v172 = v186;
      v173 = v169 / v167;
      if (v186)
      {
        goto LABEL_220;
      }

LABEL_221:
      v174 = v324;
      if (v324 >= 0)
      {
        v175 = &__p;
      }

      else
      {
        v175 = __p;
      }

      if (v324 < 0)
      {
        v174 = v323;
      }

      if (v174 >= v350 + ~*(&v350 + 1))
      {
        v176 = v350 + ~*(&v350 + 1);
      }

      else
      {
        v176 = v174;
      }

      memcpy(&v349[*(&v350 + 1)], v175, v176);
      *(&v350 + 1) += v176;
      v349[*(&v350 + 1)] = 0;
      if (v350 + ~*(&v350 + 1) >= 0x12uLL)
      {
        v177 = 18;
      }

      else
      {
        v177 = v350 + ~*(&v350 + 1);
      }

      memcpy(&v349[*(&v350 + 1)], ".EndToEndDelayInMs", v177);
      *(&v350 + 1) += v177;
      v349[*(&v350 + 1)] = 0;
      v178 = v350;
      v179 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], " ", v350 != *(&v350 + 1) + 1);
      v180 = *(&v350 + 1);
      if (v178 != v179)
      {
        v180 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v180;
      v349[v180] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v173);
      LOBYTE(__dst) = 10;
      v181 = v350;
      v182 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], &__dst, v350 != *(&v350 + 1) + 1);
      v183 = *(&v350 + 1);
      if (v181 != v182)
      {
        v183 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v183;
      v349[v183] = 0;
      v184 = v326;
      if ((v326 & 0x100000000) != 0)
      {
        if (v324 >= 0)
        {
          v185 = v324;
        }

        else
        {
          v185 = v323;
        }

        if (v185 + 21 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_511;
        }

        if (v185 + 21 >= 0x17)
        {
          operator new();
        }

        v320 = 0;
        v321 = 0;
        __dst = 0;
        HIBYTE(v321) = v185 + 21;
        if (v324 >= 0)
        {
          v187 = &__p;
        }

        else
        {
          v187 = __p;
        }

        if ((v185 & 0x8000000000000000) != 0)
        {
          goto LABEL_510;
        }

        v188 = &__dst + v185;
        if (v187 >= &__dst && v188 > v187)
        {
          goto LABEL_510;
        }

        if (v185)
        {
          memmove(&__dst, v187, v185);
        }

        if (v188 <= ".EndToEndDelayMaxInMs" && v188 + 21 > ".EndToEndDelayMaxInMs")
        {
          goto LABEL_510;
        }

        strcpy(v188, ".EndToEndDelayMaxInMs");
        v189 = webrtc::metrics::HistogramFactoryGetCountsLinear();
        if (SHIBYTE(v321) < 0)
        {
          v273 = v189;
          operator delete(__dst);
          v189 = v273;
          if (v273)
          {
LABEL_257:
            webrtc::metrics::HistogramAdd(v189, v184);
          }
        }

        else if (v189)
        {
          goto LABEL_257;
        }

        v190 = v324;
        if (v324 >= 0)
        {
          v191 = &__p;
        }

        else
        {
          v191 = __p;
        }

        if (v324 < 0)
        {
          v190 = v323;
        }

        if (v190 >= v350 + ~*(&v350 + 1))
        {
          v192 = v350 + ~*(&v350 + 1);
        }

        else
        {
          v192 = v190;
        }

        memcpy(&v349[*(&v350 + 1)], v191, v192);
        *(&v350 + 1) += v192;
        v349[*(&v350 + 1)] = 0;
        if (v350 + ~*(&v350 + 1) >= 0x15uLL)
        {
          v193 = 21;
        }

        else
        {
          v193 = v350 + ~*(&v350 + 1);
        }

        memcpy(&v349[*(&v350 + 1)], ".EndToEndDelayMaxInMs", v193);
        *(&v350 + 1) += v193;
        v349[*(&v350 + 1)] = 0;
        v194 = v350;
        v195 = *(&v350 + 1) + 1;
        memcpy(&v349[*(&v350 + 1)], " ", v350 != *(&v350 + 1) + 1);
        v196 = *(&v350 + 1);
        if (v194 != v195)
        {
          v196 = *(&v350 + 1) + 1;
        }

        *(&v350 + 1) = v196;
        v349[v196] = 0;
        webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v184);
        LOBYTE(__dst) = 10;
        v197 = v350;
        v198 = *(&v350 + 1) + 1;
        memcpy(&v349[*(&v350 + 1)], &__dst, v350 != *(&v350 + 1) + 1);
        v199 = *(&v350 + 1);
        if (v197 != v198)
        {
          v199 = *(&v350 + 1) + 1;
        }

        *(&v350 + 1) = v199;
        v349[v199] = 0;
      }

LABEL_274:
      v200 = *(&v327 + 1);
      if (*(&v327 + 1) < 200)
      {
        v201 = 0;
        goto LABEL_317;
      }

      if (v324 >= 0)
      {
        v202 = v324;
      }

      else
      {
        v202 = v323;
      }

      if (v202 + 20 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_511;
      }

      v203 = v327;
      if (v202 + 20 >= 0x17)
      {
        operator new();
      }

      v320 = 0;
      v321 = 0;
      __dst = 0;
      HIBYTE(v321) = v202 + 20;
      if (v324 >= 0)
      {
        v204 = &__p;
      }

      else
      {
        v204 = __p;
      }

      if ((v202 & 0x8000000000000000) != 0)
      {
        goto LABEL_510;
      }

      v205 = &__dst + v202;
      if (v204 >= &__dst && v205 > v204)
      {
        goto LABEL_510;
      }

      if (v202)
      {
        memmove(&__dst, v204, v202);
      }

      if (v205 <= ".InterframeDelayInMs" && v205 + 20 > ".InterframeDelayInMs")
      {
        goto LABEL_510;
      }

      strcpy(v205, ".InterframeDelayInMs");
      v206 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if ((SHIBYTE(v321) & 0x80000000) == 0)
      {
        v207 = v203 / v200;
        if (!v206)
        {
          goto LABEL_295;
        }

LABEL_294:
        webrtc::metrics::HistogramAdd(v206, v207);
        goto LABEL_295;
      }

      v228 = v206;
      operator delete(__dst);
      v206 = v228;
      v207 = v203 / v200;
      if (v228)
      {
        goto LABEL_294;
      }

LABEL_295:
      v208 = v324;
      if (v324 < 0)
      {
        v208 = v323;
      }

      v201 = v207 | 0x100000000;
      if (v324 >= 0)
      {
        v209 = &__p;
      }

      else
      {
        v209 = __p;
      }

      if (v208 >= v350 + ~*(&v350 + 1))
      {
        v210 = v350 + ~*(&v350 + 1);
      }

      else
      {
        v210 = v208;
      }

      memcpy(&v349[*(&v350 + 1)], v209, v210);
      *(&v350 + 1) += v210;
      v349[*(&v350 + 1)] = 0;
      if (v350 + ~*(&v350 + 1) >= 0x14uLL)
      {
        v211 = 20;
      }

      else
      {
        v211 = v350 + ~*(&v350 + 1);
      }

      memcpy(&v349[*(&v350 + 1)], ".InterframeDelayInMs", v211);
      *(&v350 + 1) += v211;
      v349[*(&v350 + 1)] = 0;
      v212 = v350;
      v213 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], " ", v350 != *(&v350 + 1) + 1);
      v214 = *(&v350 + 1);
      if (v212 != v213)
      {
        v214 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v214;
      v349[v214] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v207);
      LOBYTE(__dst) = 10;
      v215 = v350;
      v216 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], &__dst, v350 != *(&v350 + 1) + 1);
      v217 = *(&v350 + 1);
      if (v215 != v216)
      {
        v217 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v217;
      v349[v217] = 0;
      if ((v328 & 0x100000000) != 0)
      {
        if (v324 >= 0)
        {
          v218 = v324;
        }

        else
        {
          v218 = v323;
        }

        if (v218 + 23 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_511;
        }

        if (v218 < 0xFFFFFFFFFFFFFFE9)
        {
          operator new();
        }

LABEL_510:
        __break(1u);
        goto LABEL_511;
      }

LABEL_317:
      if (*(&v342 + 1))
      {
        v219 = fmaxf(ceilf(*(&v342 + 1) * 0.95) + -1.0, 0.0);
        if (*(&v342 + 1) <= v219)
        {
          v219 = *(&v342 + 1) - 1;
        }

        v220 = v219 - v343;
        if (v219 >= v343)
        {
          v224 = v340;
          if (v340 != v341)
          {
            while (1)
            {
              v225 = v224[5];
              v223 = v220 >= v225;
              v220 -= v225;
              if (!v223)
              {
                break;
              }

              v226 = v224[1];
              if (v226)
              {
                do
                {
                  v227 = v226;
                  v226 = *v226;
                }

                while (v226);
              }

              else
              {
                do
                {
                  v227 = v224[2];
                  v166 = *v227 == v224;
                  v224 = v227;
                }

                while (!v166);
              }

              v224 = v227;
              if (v227 == v341)
              {
                goto LABEL_342;
              }
            }

            if (v201 != 0x1FFFFFFFFLL)
            {
LABEL_456:
              if (v324 >= 0)
              {
                v272 = v324;
              }

              else
              {
                v272 = v323;
              }

              if (v272 + 32 <= 0x7FFFFFFFFFFFFFF7)
              {
                if (v272 + 32 >= 0x17)
                {
                  operator new();
                }

                goto LABEL_510;
              }

LABEL_511:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }
          }
        }

        else if (v342)
        {
          v221 = 0;
          while (1)
          {
            if ((v338 - v337) >> 3 == v221)
            {
              goto LABEL_510;
            }

            v222 = *(v337 + v221);
            v223 = v219 >= v222;
            v219 -= v222;
            if (!v223)
            {
              break;
            }

            if (v342 == ++v221)
            {
              goto LABEL_342;
            }
          }

          if (v201 != 0x1FFFFFFFFLL)
          {
            goto LABEL_456;
          }
        }
      }

LABEL_342:
      v229 = *(&v330 + 1);
      if (*(&v330 + 1) < 200)
      {
        goto LABEL_376;
      }

      if (v324 >= 0)
      {
        v230 = v324;
      }

      else
      {
        v230 = v323;
      }

      if (v230 + 22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_511;
      }

      v231 = v330;
      if (v230 + 22 > 0x16)
      {
        operator new();
      }

      v320 = 0;
      v321 = 0;
      __dst = 0;
      HIBYTE(v321) = v230 + 22;
      if ((v230 & 0x8000000000000000) != 0)
      {
        goto LABEL_510;
      }

      v232 = v324 >= 0 ? &__p : __p;
      v233 = &__dst + v230;
      if (v232 >= &__dst && v233 > v232)
      {
        goto LABEL_510;
      }

      if (v233 <= ".ReceivedWidthInPixels" && v233 + 22 > ".ReceivedWidthInPixels")
      {
        goto LABEL_510;
      }

      strcpy(v233, ".ReceivedWidthInPixels");
      v234 = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (SHIBYTE(v321) < 0)
      {
        v254 = v234;
        operator delete(__dst);
        v234 = v254;
        v235 = v231 / v229;
        if (!v254)
        {
          goto LABEL_360;
        }

LABEL_359:
        webrtc::metrics::HistogramAdd(v234, v235);
        goto LABEL_360;
      }

      v235 = v231 / v229;
      if (v234)
      {
        goto LABEL_359;
      }

LABEL_360:
      v236 = v324;
      if (v324 >= 0)
      {
        v237 = &__p;
      }

      else
      {
        v237 = __p;
      }

      if (v324 < 0)
      {
        v236 = v323;
      }

      if (v236 >= v350 + ~*(&v350 + 1))
      {
        v238 = v350 + ~*(&v350 + 1);
      }

      else
      {
        v238 = v236;
      }

      memcpy(&v349[*(&v350 + 1)], v237, v238);
      *(&v350 + 1) += v238;
      v349[*(&v350 + 1)] = 0;
      if (v350 + ~*(&v350 + 1) >= 0x16uLL)
      {
        v239 = 22;
      }

      else
      {
        v239 = v350 + ~*(&v350 + 1);
      }

      memcpy(&v349[*(&v350 + 1)], ".ReceivedWidthInPixels", v239);
      *(&v350 + 1) += v239;
      v349[*(&v350 + 1)] = 0;
      v240 = v350;
      v241 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], " ", v350 != *(&v350 + 1) + 1);
      v242 = *(&v350 + 1);
      if (v240 != v241)
      {
        v242 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v242;
      v349[v242] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v235);
      LOBYTE(__dst) = 10;
      v243 = v350;
      v244 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], &__dst, v350 != *(&v350 + 1) + 1);
      v245 = *(&v350 + 1);
      if (v243 != v244)
      {
        v245 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v245;
      v349[v245] = 0;
LABEL_376:
      if (*(&v332 + 1) >= 200)
      {
        if (v324 >= 0)
        {
          v246 = v324;
        }

        else
        {
          v246 = v323;
        }

        if (v246 + 23 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_511;
        }

        if (v246 < 0xFFFFFFFFFFFFFFE9)
        {
          operator new();
        }

        goto LABEL_510;
      }

      if (v344)
      {
        if (v324 >= 0)
        {
          v247 = v324;
        }

        else
        {
          v247 = v323;
        }

        if (v247 + 29 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_511;
        }

        if (v247 + 29 >= 0x17)
        {
          operator new();
        }

        goto LABEL_510;
      }

      if (v318)
      {
        v248 = v329 / 1000.0;
        if (v248 >= 10.0)
        {
          if (v324 >= 0)
          {
            v249 = v324;
          }

          else
          {
            v249 = v323;
          }

          if (v249 + 27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_511;
          }

          if (v249 + 27 >= 0x17)
          {
            operator new();
          }

          goto LABEL_510;
        }

        if (HIDWORD(v336) + v336 >= 200)
        {
          if (v324 >= 0)
          {
            v250 = v324;
          }

          else
          {
            v250 = v323;
          }

          if (v250 + 28 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_511;
          }

          if (v250 + 28 >= 0x17)
          {
            operator new();
          }

          goto LABEL_510;
        }

        v251 = *(&v334 + 1);
        if (*(&v334 + 1) >= 200)
        {
          if (v324 >= 0)
          {
            v252 = v324;
          }

          else
          {
            v252 = v323;
          }

          if (v252 + 15 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_511;
          }

          v253 = v334;
          if (v252 + 15 >= 0x17)
          {
            operator new();
          }

          v320 = 0;
          v321 = 0;
          __dst = 0;
          HIBYTE(v321) = v252 + 15;
          if (v324 >= 0)
          {
            v255 = &__p;
          }

          else
          {
            v255 = __p;
          }

          if ((v252 & 0x8000000000000000) != 0)
          {
            goto LABEL_510;
          }

          v256 = &__dst + v252;
          if (v255 >= &__dst && v256 > v255)
          {
            goto LABEL_510;
          }

          if (v252)
          {
            memmove(&__dst, v255, v252);
          }

          if (v256 <= ".Decoded.Vp8.Qp" && v256 + 15 > ".Decoded.Vp8.Qp")
          {
            goto LABEL_510;
          }

          strcpy(v256, ".Decoded.Vp8.Qp");
          v257 = webrtc::metrics::HistogramFactoryGetCountsLinear();
          if (SHIBYTE(v321) < 0)
          {
            v271 = v257;
            operator delete(__dst);
            v257 = v271;
            v258 = v253 / v251;
            if (v271)
            {
LABEL_426:
              webrtc::metrics::HistogramAdd(v257, v258);
            }
          }

          else
          {
            v258 = v253 / v251;
            if (v257)
            {
              goto LABEL_426;
            }
          }

          v259 = v324;
          if (v324 >= 0)
          {
            v260 = &__p;
          }

          else
          {
            v260 = __p;
          }

          if (v324 < 0)
          {
            v259 = v323;
          }

          if (v259 >= v350 + ~*(&v350 + 1))
          {
            v261 = v350 + ~*(&v350 + 1);
          }

          else
          {
            v261 = v259;
          }

          memcpy(&v349[*(&v350 + 1)], v260, v261);
          *(&v350 + 1) += v261;
          v349[*(&v350 + 1)] = 0;
          if (v350 + ~*(&v350 + 1) >= 0xFuLL)
          {
            v262 = 15;
          }

          else
          {
            v262 = v350 + ~*(&v350 + 1);
          }

          memcpy(&v349[*(&v350 + 1)], ".Decoded.Vp8.Qp", v262);
          *(&v350 + 1) += v262;
          v349[*(&v350 + 1)] = 0;
          v263 = v350;
          v264 = *(&v350 + 1) + 1;
          memcpy(&v349[*(&v350 + 1)], " ", v350 != *(&v350 + 1) + 1);
          v265 = *(&v350 + 1);
          if (v263 != v264)
          {
            v265 = *(&v350 + 1) + 1;
          }

          *(&v350 + 1) = v265;
          v349[v265] = 0;
          webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v258);
          LOBYTE(__dst) = 10;
          v266 = v350;
          v267 = *(&v350 + 1) + 1;
          memcpy(&v349[*(&v350 + 1)], &__dst, v350 != *(&v350 + 1) + 1);
          v268 = *(&v350 + 1);
          if (v266 != v267)
          {
            v268 = *(&v350 + 1) + 1;
          }

          *(&v350 + 1) = v268;
          v349[v268] = 0;
        }
      }

      if (v324 < 0)
      {
        operator delete(__p);
      }

      std::__tree<sigslot::_signal_base_interface *>::destroy(&v340, v341[0]);
      if (v337)
      {
        v338 = v337;
        operator delete(v337);
      }

      v269 = v151[1];
      if (v269)
      {
        do
        {
          v270 = v269;
          v269 = *v269;
        }

        while (v269);
      }

      else
      {
        do
        {
          v270 = v151[2];
          v166 = *v270 == v151;
          v151 = v270;
        }

        while (!v166);
      }

      v151 = v270;
      if (v270 == v317)
      {
        goto LABEL_464;
      }
    }

    v173 = v169 / v167;
    if (!v172)
    {
      goto LABEL_221;
    }

LABEL_220:
    webrtc::metrics::HistogramAdd(v172, v173);
    goto LABEL_221;
  }

LABEL_464:
  v275 = *v314;
  v274 = v314[1];
  v276 = v314[2];
  v277 = v314[3];
  v278 = v314[6];
  v279 = v314[7];
  v280 = v314[8];
  if (v315)
  {
    v274 += v315[1];
    v276 += v315[2];
    v277 += v315[3];
    v278 += v315[6];
    v279 += v315[7];
    v280 += v315[8];
    if (*v315 < v275)
    {
      v275 = *v315;
    }
  }

  v281 = (*(**(v316 + 24) + 16))(*(v316 + 24));
  v282 = 0x7FFFFFFFFFFFFFFFLL;
  if (v275 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v275 == 0x8000000000000000 || v281 == 0x7FFFFFFFFFFFFFFFLL || ((v282 = v281 - v275, v281 != 0x8000000000000000) ? (v283 = v282 < 10000000) : (v283 = 1), !v283))
    {
      if (v282 % 0xF4240 <= 0x7A11F)
      {
        v284 = v282 / 0xF4240;
      }

      else
      {
        v284 = v282 / 0xF4240 + 1;
      }

      v285 = atomic_load_explicit(&qword_28100BB10, memory_order_acquire);
      if (v285 || (v285 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v286 = 0, atomic_compare_exchange_strong(&qword_28100BB10, &v286, v285), v285))
      {
        webrtc::metrics::HistogramAdd(v285, 8 * (v276 + v277 + v274) / v284 / 0x3E8);
      }

      v287 = 8 * (v314[2] - (v314[7] + v314[12])) / v284 / 0x3E8;
      v288 = atomic_load_explicit(&qword_28100BB18, memory_order_acquire);
      if (v288 || (v288 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v289 = 0, atomic_compare_exchange_strong(&qword_28100BB18, &v289, v288), v288))
      {
        webrtc::metrics::HistogramAdd(v288, v287);
      }

      if (v350 + ~*(&v350 + 1) >= 0x28uLL)
      {
        v290 = 40;
      }

      else
      {
        v290 = v350 + ~*(&v350 + 1);
      }

      memcpy(&v349[*(&v350 + 1)], "WebRTC.Video.MediaBitrateReceivedInKbps ", v290);
      *(&v350 + 1) += v290;
      v349[*(&v350 + 1)] = 0;
      webrtc::SimpleStringBuilder::AppendFormat(&v349, "%d", v287);
      LOBYTE(__src) = 10;
      v291 = v350;
      v292 = *(&v350 + 1) + 1;
      memcpy(&v349[*(&v350 + 1)], &__src, v350 != *(&v350 + 1) + 1);
      v293 = *(&v350 + 1);
      if (v291 != v292)
      {
        v293 = *(&v350 + 1) + 1;
      }

      *(&v350 + 1) = v293;
      v349[v293] = 0;
      v294 = atomic_load_explicit(&qword_28100BB20, memory_order_acquire);
      if (v294 || (v294 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v295 = 0, atomic_compare_exchange_strong(&qword_28100BB20, &v295, v294), v294))
      {
        webrtc::metrics::HistogramAdd(v294, 8 * v277 / v284 / 0x3E8);
      }

      v296 = atomic_load_explicit(&qword_28100BB28, memory_order_acquire);
      if (v296 || (v296 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v297 = 0, atomic_compare_exchange_strong(&qword_28100BB28, &v297, v296), v296))
      {
        webrtc::metrics::HistogramAdd(v296, 8 * (v279 + v278 + v280) / v284 / 0x3E8);
      }

      v298 = v315;
      if (v315)
      {
        v299 = atomic_load_explicit(&qword_28100BB30, memory_order_acquire);
        if (v299 || (v299 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v300 = 0, atomic_compare_exchange_strong(&qword_28100BB30, &v300, v299), v298 = v315, v299))
        {
          webrtc::metrics::HistogramAdd(v299, 8 * (v298[2] + v298[1] + v298[3]) / v284 / 0x3E8);
        }
      }

      v301 = atomic_load_explicit(&qword_28100BB38, memory_order_acquire);
      if (v301 || (v301 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v302 = 0, atomic_compare_exchange_strong(&qword_28100BB38, &v302, v301), v301))
      {
        webrtc::metrics::HistogramAdd(v301, (60 * *(v316 + 440)) / v284);
      }

      v303 = atomic_load_explicit(&qword_28100BB40, memory_order_acquire);
      if (v303 || (v303 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v304 = 0, atomic_compare_exchange_strong(&qword_28100BB40, &v304, v303), v303))
      {
        webrtc::metrics::HistogramAdd(v303, (60 * *(v316 + 444)) / v284);
      }

      v305 = atomic_load_explicit(&qword_28100BB48, memory_order_acquire);
      if (v305 || (v305 = webrtc::metrics::HistogramFactoryGetCountsLinear(), v306 = 0, atomic_compare_exchange_strong(&qword_28100BB48, &v306, v305), v305))
      {
        webrtc::metrics::HistogramAdd(v305, (60 * *(v316 + 448)) / v284);
      }
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v307, v308, v309, v310, v311, v312, v313, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/receive_statistics_proxy.cc");
  }

  webrtc::internal::VideoQualityObserver::UpdateHistograms(*(v316 + 1256), *(v316 + 1496) & 1);
}