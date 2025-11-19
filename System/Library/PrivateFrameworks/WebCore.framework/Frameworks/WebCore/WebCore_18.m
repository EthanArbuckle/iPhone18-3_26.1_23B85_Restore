uint64_t std::vector<short>::__insert_with_size[abi:sn200100]<short *,short *>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 1)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 1);
    if (v11 >= 0)
    {
      v12 = v8 - v10;
      if (v12 > v11)
      {
        v11 = v12;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v46 = 2 * ((__dst - v10) >> 1);
      v47 = 2 * a5;
      v48 = v46 + 2 * a5;
      for (i = v46; i; ++i)
      {
        v50 = *v6;
        v6 += 2;
        *i = v50;
        v47 -= 2;
        if (!v47)
        {
          v51 = *(a1 + 8) - __dst;
          memcpy((v46 + 2 * a5), __dst, v51);
          v52 = v48 + v51;
          *(a1 + 8) = v5;
          v53 = *a1;
          v54 = v5 - *a1;
          v55 = v46 - v54;
          memcpy((v46 - v54), *a1, v54);
          *a1 = v55;
          *(a1 + 8) = v52;
          *(a1 + 16) = 0;
          if (v53)
          {
            operator delete(v53);
          }

          return v46;
        }
      }

      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 1;
  if (v15 >= a5)
  {
    v14 = 2 * a5;
    v33 = &__dst[2 * a5];
    v34 = (v9 - 2 * a5);
    if (v34 >= v9)
    {
      v38 = *(a1 + 8);
    }

    else
    {
      v35 = v34 + 1;
      if (v9 > (v34 + 1))
      {
        v35 = *(a1 + 8);
      }

      v36 = v35 + v14 + ~v9;
      v37 = v36 >= 0x1E && a5 > 0xF;
      v38 = *(a1 + 8);
      if (!v37)
      {
        goto LABEL_59;
      }

      v39 = (v36 >> 1) + 1;
      v40 = 2 * (v39 & 0xFFFFFFFFFFFFFFF0);
      v34 = (v34 + v40);
      v38 = (v9 + v40);
      v41 = (v9 + 16);
      v42 = (v9 + 16 - v14);
      v43 = v39 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v44 = *v42;
        *(v41 - 1) = *(v42 - 1);
        *v41 = v44;
        v41 += 2;
        v42 += 2;
        v43 -= 16;
      }

      while (v43);
      if (v39 != (v39 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_59:
        do
        {
          v45 = *v34++;
          *v38++ = v45;
        }

        while (v34 < v9);
      }
    }

    *(a1 + 8) = v38;
    if (v9 != v33)
    {
      memmove(&__dst[2 * a5], __dst, v9 - v33);
    }

    goto LABEL_52;
  }

  v16 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v18;
    a5 = v17;
  }

  v19 = (v9 + v16);
  *(a1 + 8) = v9 + v16;
  if (v15 >= 1)
  {
    v20 = 2 * a5;
    v21 = (v5 + 2 * a5);
    v22 = &v19[-2 * a5];
    if (v22 >= v9)
    {
      v25 = (v9 + v16);
    }

    else
    {
      v23 = &a4[v5] - &v6[v20] + 2;
      if (v9 > v23)
      {
        v23 = v9;
      }

      v24 = &v6[v20 + ~v5 + v23] - a4;
      v25 = (v9 + v16);
      if (v24 < 0x1E)
      {
        goto LABEL_60;
      }

      if (a5 <= 0xF)
      {
        goto LABEL_60;
      }

      v26 = (v24 >> 1) + 1;
      v27 = 2 * (v26 & 0xFFFFFFFFFFFFFFF0);
      v22 += v27;
      v25 = &v19[v27];
      v28 = (&a4[v5] - v6 + 16);
      v29 = (v28 - v20);
      v30 = v26 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v31 = *v29;
        *(v28 - 1) = *(v29 - 1);
        *v28 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 16;
      }

      while (v30);
      if (v26 != (v26 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_60:
        do
        {
          v32 = *v22;
          v22 += 2;
          *v25 = v32;
          v25 += 2;
        }

        while (v22 < v9);
      }
    }

    *(a1 + 8) = v25;
    if (v19 != v21)
    {
      memmove((v5 + 2 * a5), v5, v19 - v21);
    }

    if (v9 != v5)
    {
LABEL_52:
      memmove(v5, v6, v14);
    }
  }

  return v5;
}

uint64_t webrtc::EchoPathDelayEstimator::EchoPathDelayEstimator(uint64_t a1, uint64_t a2, uint64_t a3, std::vector<int>::size_type __n)
{
  *a1 = a2;
  v6 = *(a3 + 24);
  *(a1 + 8) = v6;
  if (v6)
  {
    v7 = 0x40 / v6;
  }

  else
  {
    v7 = 64;
  }

  v8 = *(a3 + 100);
  v9 = *(a3 + 101);
  v10 = *(a3 + 104);
  v11 = *(a3 + 108);
  *(a1 + 64) = 0;
  v12 = (a1 + 64);
  *(a1 + 16) = v7;
  *(a1 + 24) = __n;
  *(a1 + 32) = 1.0 / __n;
  *(a1 + 36) = v10 * 64.0;
  *(a1 + 40) = v11;
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v8)
  {
    v13 = 0;
  }

  if (__n == 1)
  {
    v13 = 2;
  }

  *(a1 + 44) = v13;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (v13 == 1)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    if (__n)
    {
      std::vector<float>::__append(v12, __n);
      v14 = *(a1 + 64);
      v15 = *(a1 + 72) - v14;
      if (v15 >= 1)
      {
        bzero(v14, v15);
      }
    }
  }

  *(a1 + 112) = 0;
  v16 = *(a1 + 8);
  *(a1 + 104) = v16;
  if (v16 == 4)
  {
  }

  else
  {
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v18 = *v17;
  v30 = *(v17 + 4);
  v29 = v18;
  v32 = 0;
  v31 = 0;
  std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100]((a1 + 112), &v29);
  v29 = *(v17 + 20);
  v30 = *(v17 + 9);
  v32 = 0;
  v31 = 0;
  std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100]((a1 + 112), &v29);
  v29 = *(v17 + 40);
  v30 = *(v17 + 14);
  v32 = 0;
  v31 = 0;
  std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100]((a1 + 112), &v29);
  if (v16 != 4)
  {
    v29 = *(v17 + 60);
    v30 = *(v17 + 19);
    v32 = 0;
    v31 = 0;
    std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100]((a1 + 112), &v29);
    v29 = v17[5];
    v30 = *(v17 + 24);
    v32 = 0;
    v31 = 0;
    std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100]((a1 + 112), &v29);
  }

  *(a1 + 136) = 0;
  v19 = *(a1 + 104);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v20 = v19 == 8;
  v21 = v19 != 8;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
  }

  if (!v20)
  {
    v23 = 4 * v21 || 16 * v21;
    do
    {
      v24 = *v22;
      v30 = *(v22 + 4);
      v29 = v24;
      v32 = 0;
      v31 = 0;
      std::vector<webrtc::CascadedBiQuadFilter::BiQuad>::push_back[abi:sn200100]((a1 + 136), &v29);
      v22 = (v22 + 20);
      v23 -= 20;
    }

    while (v23);
  }

  v25 = 320;
  if (*(a3 + 24) == 8)
  {
    v25 = 324;
  }

  result = webrtc::MatchedFilter::MatchedFilter(a1 + 160, *a1, 0, *(a1 + 16), 32, *(a3 + 32), 24, *(a3 + 112), *(a3 + v25), *(a3 + 64), *(a3 + 68), *(a3 + 72));
  v27 = *(a1 + 192);
  v28 = *(a1 + 200) - v27;
  if (v28)
  {
    webrtc::MatchedFilterLagAggregator::MatchedFilterLagAggregator(a1 + 384, *a1, 0xAAAAAAAAAAAAAAABLL * (v28 >> 3) * *(a1 + 184) + ((v27[1] - *v27) >> 2), a3 + 16);
    *(a1 + 1448) = 0;
    *(a1 + 1480) = 0;
    *(a1 + 1488) = 0u;
    *(a1 + 1504) = 0u;
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void webrtc::EchoPathDelayEstimator::~EchoPathDelayEstimator(webrtc::EchoPathDelayEstimator *this)
{
  v2 = *(this + 180);
  *(this + 180) = 0;
  if (v2)
  {
    v3 = *(v2 + 1008);
    if (v3)
    {
      *(v2 + 1016) = v3;
      operator delete(v3);
    }

    MEMORY[0x2743DA540](v2, 0x1010C40BB29770BLL);
  }

  v4 = *(this + 51);
  if (v4)
  {
    *(this + 52) = v4;
    operator delete(v4);
  }

  webrtc::MatchedFilter::~MatchedFilter((this + 160));
  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }
}

void webrtc::EchoPathDelayEstimator::Reset(webrtc::EchoPathDelayEstimator *this, int a2)
{
  v4 = *(this + 51);
  v5 = *(this + 52) - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  bzero(this + 432, 0x3ECuLL);
  v6 = *(this + 180);
  if (v6)
  {
    v7 = v6[126];
    v8 = v6[127] - v7;
    if (v8 >= 1)
    {
      bzero(v7, v8);
    }

    memset(v6 + 4, 255, 0x3E8uLL);
    v6[129] = 0;
  }

  if (a2)
  {
    *(this + 392) = 0;
  }

  v9 = *(this + 24);
  v10 = *(this + 25);
  while (v9 != v10)
  {
    v11 = *(v9 + 8) - *v9;
    if (v11 >= 1)
    {
      bzero(*v9, v11);
    }

    v9 += 24;
  }

  if (*(this + 320) == 1)
  {
    *(this + 320) = 0;
    if (*(this + 304) != 1)
    {
LABEL_16:
      v12 = *(this + 27);
      v13 = *(this + 28);
      if (v12 == v13)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if (*(this + 304) != 1)
  {
    goto LABEL_16;
  }

  *(this + 304) = 0;
  v12 = *(this + 27);
  v13 = *(this + 28);
  if (v12 == v13)
  {
    goto LABEL_24;
  }

  do
  {
LABEL_22:
    v14 = *(v12 + 8) - *v12;
    if (v14 >= 1)
    {
      memset_pattern16(*v12, &memset_pattern_17, v14);
    }

    v12 += 24;
  }

  while (v12 != v13);
LABEL_24:
  *(this + 90) = 0;
  if (*(this + 1480) == 1)
  {
    *(this + 1480) = 0;
  }

  *(this + 186) = 0;
}

void webrtc::EchoPathDelayEstimator::EstimateDelay(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 44);
  if (v8 == 2)
  {
    v41 = 0;
LABEL_16:
    memmove(&__dst, (v41 + *(a3 + 8)), 0x100uLL);
    goto LABEL_18;
  }

  if (v8)
  {
    v42 = a3;
    v43 = webrtc::AlignmentMixer::SelectChannel(a1 + 24, a3);
    a3 = v42;
    v41 = 4 * (v43 << 6);
    goto LABEL_16;
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = v10 - v9;
  if (v10 == v9)
  {
LABEL_82:
    __break(1u);
    return;
  }

  v12 = *v9;
  v13 = v9[1];
  v14 = v9[3];
  v72 = v9[2];
  v73 = v14;
  __dst = v12;
  v71 = v13;
  v15 = v9[4];
  v16 = v9[5];
  v17 = v9[7];
  v76 = v9[6];
  v77 = v17;
  v74 = v15;
  v75 = v16;
  v18 = v9[8];
  v19 = v9[9];
  v20 = v9[11];
  v80 = v9[10];
  v81 = v20;
  v78 = v18;
  v79 = v19;
  v21 = v9[12];
  v22 = v9[13];
  v23 = v9[15];
  v84 = v9[14];
  v85 = v23;
  v82 = v21;
  v83 = v22;
  v24 = *(a1 + 24);
  if (v24 >= 2)
  {
    v25 = 0;
    v26 = v11 >> 2;
    v27 = 16;
    for (i = 1; i != v24; ++i)
    {
      v38 = (i << 6);
      if (v26 <= v38)
      {
        goto LABEL_82;
      }

      v39 = 4 * ((v25 << 6) + 64);
      if (&__dst >= (&v9[16] + v39) || (v9 + v39) >= v86)
      {
        v29 = (v9 + 4 * v38);
        v30 = vaddq_f32(v29[1], v71);
        __dst = vaddq_f32(*v29, __dst);
        v71 = v30;
        v31 = vaddq_f32(v29[3], v73);
        v72 = vaddq_f32(v29[2], v72);
        v73 = v31;
        v32 = vaddq_f32(v29[5], v75);
        v74 = vaddq_f32(v29[4], v74);
        v75 = v32;
        v33 = vaddq_f32(v29[7], v77);
        v76 = vaddq_f32(v29[6], v76);
        v77 = v33;
        v34 = vaddq_f32(v29[9], v79);
        v78 = vaddq_f32(v29[8], v78);
        v79 = v34;
        v35 = vaddq_f32(v29[11], v81);
        v80 = vaddq_f32(v29[10], v80);
        v81 = v35;
        v36 = vaddq_f32(v29[13], v83);
        v82 = vaddq_f32(v29[12], v82);
        v83 = v36;
        v37 = vaddq_f32(v29[15], v85);
        v84 = vaddq_f32(v29[14], v84);
        v85 = v37;
      }

      else
      {
        for (j = 0; j != 64; ++j)
        {
          __dst.f32[j] = v9[v27].f32[j] + __dst.f32[j];
        }
      }

      ++v25;
      v27 += 16;
    }
  }

  v44 = *(a1 + 32);
  __dst = vmulq_n_f32(__dst, v44);
  v71 = vmulq_n_f32(v71, v44);
  v72 = vmulq_n_f32(v72, v44);
  v73 = vmulq_n_f32(v73, v44);
  v74 = vmulq_n_f32(v74, v44);
  v75 = vmulq_n_f32(v75, v44);
  v76 = vmulq_n_f32(v76, v44);
  v77 = vmulq_n_f32(v77, v44);
  v78 = vmulq_n_f32(v78, v44);
  v79 = vmulq_n_f32(v79, v44);
  v80 = vmulq_n_f32(v80, v44);
  v81 = vmulq_n_f32(v81, v44);
  v82 = vmulq_n_f32(v82, v44);
  v83 = vmulq_n_f32(v83, v44);
  v84 = vmulq_n_f32(v84, v44);
  v85 = vmulq_n_f32(v85, v44);
LABEL_18:
  if (v7)
  {
    v45 = v86;
  }

  else
  {
    v45 = 0;
  }

  webrtc::Decimator::Decimate((a1 + 104), __dst.f32, 64, v45, v7);
  webrtc::MatchedFilter::Update(a1 + 160, a2, v45, v7, *(a1 + 392), v46);
  LOBYTE(v68) = 0;
  v69 = 0;
  if (*(a1 + 304) == 1)
  {
    v68 = *(a1 + 288);
    v69 = 1;
  }

  webrtc::MatchedFilterLagAggregator::Aggregate(a1 + 384, &v68, a4);
  if (*(a4 + 32) == 1 && *a4 == 1)
  {
    v47 = *(a1 + 1436);
    v48 = *(a1 + 1496);
    v49 = v48 - v47;
    if (v48 == v47)
    {
      v50 = *(a1 + 1512) + 1;
      *(a1 + 1512) = v50;
      if (v50 >= 0x1D4D)
      {
        *(a1 + 1508) = 0;
      }

      goto LABEL_62;
    }

    *(a1 + 1512) = 0;
    v52 = *(a1 + 1500);
    v53 = v52 - v47;
    v54 = *(a1 + 1504) - v47;
    if (v49 == -1 && v53 == -2)
    {
      v55 = v54 == -3;
      v56 = 1;
    }

    else
    {
      v56 = v49 == -2 && v53 == -1;
      v55 = v54 == -3 && v56;
      if (v49 == 1 && v53 == 2)
      {
        if (v54 != 3)
        {
LABEL_60:
          if (*(a1 + 1508))
          {
            goto LABEL_61;
          }

          v61 = 1;
LABEL_59:
          *(a1 + 1508) = v61;
LABEL_61:
          *(a1 + 1504) = v52;
          *(a1 + 1500) = v48;
          *(a1 + 1496) = v47;
          goto LABEL_62;
        }

LABEL_58:
        v61 = 2;
        goto LABEL_59;
      }
    }

    v58 = v49 == 2 && v53 == 1;
    v59 = v54 == 3 && v58;
    if (!v55 && !v59)
    {
      if (!v56 && !v58)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    goto LABEL_58;
  }

  if (!*(a4 + 32))
  {
    v51 = a1 + 1448;
    goto LABEL_65;
  }

LABEL_62:
  v62 = *(a4 + 8) * *(a1 + 8);
  *(a4 + 8) = v62;
  v51 = a1 + 1448;
  if ((*(a1 + 1480) & 1) != 0 && *(a1 + 1456) == v62)
  {
    ++*(a1 + 1488);
    goto LABEL_66;
  }

LABEL_65:
  *(a1 + 1488) = 0;
LABEL_66:
  v63 = *a4;
  v64 = *(a4 + 16);
  *(v51 + 32) = *(a4 + 32);
  *v51 = v63;
  *(v51 + 16) = v64;
  if (*(a1 + 1488) < 0x7EuLL)
  {
    return;
  }

  v65 = *(a1 + 192);
  v66 = *(a1 + 200);
  while (v65 != v66)
  {
    v67 = *(v65 + 8) - *v65;
    if (v67 >= 1)
    {
      bzero(*v65, v67);
    }

    v65 += 24;
  }

  if (*(a1 + 320) != 1)
  {
    if (*(a1 + 304) != 1)
    {
      goto LABEL_74;
    }

LABEL_79:
    *(a1 + 304) = 0;
    if (*(a1 + 1480) != 1)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  *(a1 + 320) = 0;
  if (*(a1 + 304) == 1)
  {
    goto LABEL_79;
  }

LABEL_74:
  if (*(a1 + 1480) == 1)
  {
LABEL_75:
    *(a1 + 1480) = 0;
  }

LABEL_76:
  *(a1 + 1488) = 0;
}

void webrtc::anonymous namespace::EchoRemoverImpl::~EchoRemoverImpl(webrtc::_anonymous_namespace_::EchoRemoverImpl *this)
{
  v2 = *(this + 1205);
  if (v2)
  {
    *(this + 1206) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1202);
  if (v3)
  {
    *(this + 1203) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1199);
  if (v4)
  {
    *(this + 1200) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1196);
  if (v5)
  {
    *(this + 1197) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1193);
  if (v6)
  {
    *(this + 1194) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1190);
  if (v7)
  {
    *(this + 1191) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1187);
  if (v8)
  {
    *(this + 1188) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1184);
  if (v9)
  {
    *(this + 1185) = v9;
    operator delete(v9);
  }

  v10 = *(this + 1181);
  if (v10)
  {
    *(this + 1182) = v10;
    operator delete(v10);
  }

  v11 = *(this + 1178);
  if (v11)
  {
    *(this + 1179) = v11;
    operator delete(v11);
  }

  v12 = *(this + 1175);
  if (v12)
  {
    *(this + 1176) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1170);
  if (v13)
  {
    *(this + 1171) = v13;
    operator delete(v13);
  }

  v14 = *(this + 1167);
  if (v14)
  {
    *(this + 1168) = v14;
    operator delete(v14);
  }

  webrtc::AecState::~AecState((this + 6216));
  v15 = *(this + 530);
  if (v15)
  {
    v16 = *(this + 531);
    v17 = *(this + 530);
    if (v16 != v15)
    {
      v18 = *(this + 531);
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v16 - 16) = v19;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v15);
      v17 = *(this + 530);
    }

    *(this + 531) = v15;
    operator delete(v17);
  }

  v21 = *(this + 523);
  if (v21)
  {
    *(this + 524) = v21;
    operator delete(v21);
  }

  v22 = *(this + 520);
  if (v22)
  {
    *(this + 521) = v22;
    operator delete(v22);
  }

  v23 = *(this + 519);
  *(this + 519) = 0;
  if (v23)
  {
    v24 = *v23;
    if (*v23)
    {
      *(v23 + 8) = v24;
      operator delete(v24);
    }

    MEMORY[0x2743DA540](v23, 0x20C40960023A9);
  }

  webrtc::SuppressionGain::~SuppressionGain((this + 1552));
  webrtc::Subtractor::~Subtractor((this + 664));
  v25 = *(this + 78);
  *(this + 78) = 0;
  if (v25)
  {
    MEMORY[0x2743DA540](v25, 0xC400A2AC0F1);
  }
}

{

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::EchoRemoverImpl::GetMetrics(uint64_t a1, double *a2)
{
  *a2 = log10f(*(a1 + 7544)) * -10.0;
  v4 = *(a1 + 7600);
  v5 = *(a1 + 7608) - v4;
  if (v5)
  {
    v6 = v5 >> 2;
    v7 = *v4;
    if (v6 >= 2)
    {
      v8 = v6 - 1;
      v9 = v4 + 1;
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v10 < v7)
        {
          v7 = v11;
        }

        --v8;
      }

      while (v8);
    }

    v12 = v7 * 3.01029996;
    a2[1] = v12;
  }

  else
  {
    __break(1u);
  }
}

void webrtc::anonymous namespace::EchoRemoverImpl::ProcessCapture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v251 = v4;
  v252 = v5;
  ++*(v3 + 9384);
  v11 = (**v8 + *(*v8 + 36)) % **v8;
  v12 = *(*v8 + 8);
  if (v11 >= (*(*v8 + 16) - v12) >> 5)
  {
    goto LABEL_184;
  }

  v13 = v10;
  v14 = v8;
  v15 = v3;
  v16 = *(v3 + 648);
  v237 = 0;
  if (v16)
  {
    v17 = &v250;
  }

  else
  {
    v17 = 0;
  }

  v236 = 0;
  if (v16)
  {
    v18 = &v249;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = &v248;
  }

  else
  {
    v19 = 0;
  }

  v235 = 0uLL;
  if (v16)
  {
    v20 = &v247;
  }

  else
  {
    v20 = 0;
  }

  v238 = 0;
  v21 = &v246;
  if (!v16)
  {
    v21 = 0;
  }

  v239 = 0uLL;
  v22 = &v245;
  if (!v16)
  {
    v22 = 0;
  }

  v223 = v22;
  v240 = 0;
  if (v16)
  {
    v23 = &v244;
  }

  else
  {
    v23 = 0;
  }

  v24 = &v243;
  if (!v16)
  {
    v24 = 0;
  }

  v222 = v24;
  if (v16)
  {
    v25 = &v242;
  }

  else
  {
    v25 = 0;
  }

  if (v16)
  {
    v26 = &v241;
  }

  else
  {
    v26 = 0;
  }

  if (v16)
  {
    v27 = &v234;
  }

  else
  {
    v27 = 0;
  }

  v221 = v27;
  if (v16 >= 3)
  {
    v17 = *(v3 + 9400);
    v18 = *(v3 + 9424);
    v19 = *(v3 + 9448);
    v20 = *(v3 + 9472);
    v21 = *(v3 + 9496);
    v223 = *(v3 + 9520);
    v23 = *(v3 + 9544);
    v222 = *(v3 + 9568);
    v25 = *(v3 + 9592);
    v26 = *(v3 + 9616);
    v221 = *(v3 + 9640);
  }

  if (*(v10 + 16) == *(v10 + 8) || *(v12 + 32 * v11 + 16) == *(v12 + 32 * v11 + 8))
  {
LABEL_184:
    __break(1u);
    return;
  }

  __src = v17;
  v206 = v26;
  v207 = v25;
  v204 = (v12 + 32 * v11);
  v205 = v9;
  v28 = (v3 + 6209);
  *(v3 + 8216) = v6;
  v202 = v21;
  v203 = v20;
  v209 = v7;
  if (v4)
  {
    if (*(v3 + 9392))
    {
      LOBYTE(v251) = 0;
    }

    else
    {
      *(v3 + 9392) = 3;
      if (*(v3 + 93))
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }

      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/echo_remover.cc");
      }
    }
  }

  else if (!HIDWORD(v4))
  {
    goto LABEL_50;
  }

  webrtc::Subtractor::HandleEchoPathChange(v15 + 664, &v251);
  webrtc::AecState::HandleEchoPathChange(v15 + 6216, &v251, v30);
  if (HIDWORD(v251))
  {
    *(v15 + 2500) = 1;
    *(v15 + 2504) = *(v15 + 2184);
  }

LABEL_50:
  v31 = *(v15 + 9392);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v33 < 0 == v32)
  {
    *(v15 + 9392) = v33;
  }

  *&v232[4] = *(v15 + 6904);
  v232[12] = 1;
  v212 = (v15 + 4264);
  webrtc::RenderSignalAnalyzer::Update((v15 + 4264), v14, &v232[4]);
  if (*(v15 + 6856) == 1)
  {
    webrtc::Subtractor::ExitInitialState(v15 + 664);
    *(v15 + 2500) = 0;
    *(v15 + 2504) = 0;
  }

  if (v16)
  {
    v34 = v221;
  }

  else
  {
    v34 = 0;
  }

  v210 = v14;
  v211 = v16;
  v213 = v15 + 6216;
  v208 = v34;
  webrtc::Subtractor::Process(v15 + 664, v14, v13, v212, v15 + 6216, v34);
  v218 = v23;
  v219 = v13;
  v217 = v19;
  if (*(v15 + 648))
  {
    v36 = 0;
    v37 = v222;
    v38 = v223;
    v39 = v23;
    v215 = v18;
    v216 = v15;
    v214 = (v15 + 6209);
    while (1)
    {
      v40 = &v221[2092 * v36];
      if ((*(v15 + 656) & 1) == 0)
      {
        break;
      }

      v41 = v40[519];
      v42 = v40[518];
      v43 = v40[520];
      v44 = v41 >= (v42 * 0.9) || v43 <= 57600.0;
      if (v44 || (v40[516] <= 230400.0 ? (v45 = v40[517] <= 230400.0) : (v45 = 0), v45))
      {
        v47 = v40 + 128;
        v51 = v40 + 192;
        if (v28[3187])
        {
          v48 = v47;
        }

        else
        {
          v48 = v51;
        }

        if (v43 >= v42 || v41 >= v42)
        {
          goto LABEL_83;
        }

        v46 = 0;
        v47 = v51;
        v230 = v36;
        v49 = &__src[256 * v36];
        if (v48 != v51)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v46 = 0;
        v47 = v40 + 192;
        if (v28[3187])
        {
          v48 = v40 + 128;
        }

        else
        {
          v48 = v40 + 192;
        }

        v230 = v36;
        v49 = &__src[256 * v36];
        if (v48 != v47)
        {
LABEL_84:
          v49->f32[0] = (*v48 * 0.96774) + (*v47 * 0.032258);
          v49->f32[1] = (v48[1] * 0.93548) + (v47[1] * 0.064516);
          v49->f32[2] = (v48[2] * 0.90323) + (v47[2] * 0.096774);
          v49->f32[3] = (v48[3] * 0.87097) + (v47[3] * 0.12903);
          v49[1].f32[0] = (v48[4] * 0.83871) + (v47[4] * 0.16129);
          v49[1].f32[1] = (v48[5] * 0.80645) + (v47[5] * 0.19355);
          v49[1].f32[2] = (v48[6] * 0.77419) + (v47[6] * 0.22581);
          v49[1].f32[3] = (v48[7] * 0.74194) + (v47[7] * 0.25806);
          v49[2].f32[0] = (v48[8] * 0.70968) + (v47[8] * 0.29032);
          v49[2].f32[1] = (v48[9] * 0.67742) + (v47[9] * 0.32258);
          v49[2].f32[2] = (v48[10] * 0.64516) + (v47[10] * 0.35484);
          v49[2].f32[3] = (v48[11] * 0.6129) + (v47[11] * 0.3871);
          v49[3].f32[0] = (v48[12] * 0.58065) + (v47[12] * 0.41935);
          v49[3].f32[1] = (v48[13] * 0.54839) + (v47[13] * 0.45161);
          v49[3].f32[2] = (v48[14] * 0.51613) + (v47[14] * 0.48387);
          v49[3].f32[3] = (v48[15] * 0.48387) + (v47[15] * 0.51613);
          v49[4].f32[0] = (v48[16] * 0.45161) + (v47[16] * 0.54839);
          v49[4].f32[1] = (v48[17] * 0.41935) + (v47[17] * 0.58065);
          v49[4].f32[2] = (v48[18] * 0.3871) + (v47[18] * 0.6129);
          v49[4].f32[3] = (v48[19] * 0.35484) + (v47[19] * 0.64516);
          v49[5].f32[0] = (v48[20] * 0.32258) + (v47[20] * 0.67742);
          v49[5].f32[1] = (v48[21] * 0.29032) + (v47[21] * 0.70968);
          v49[5].f32[2] = (v48[22] * 0.25806) + (v47[22] * 0.74194);
          v49[5].f32[3] = (v48[23] * 0.22581) + (v47[23] * 0.77419);
          v49[6].f32[0] = (v48[24] * 0.19355) + (v47[24] * 0.80645);
          v49[6].f32[1] = (v48[25] * 0.16129) + (v47[25] * 0.83871);
          v49[6].f32[2] = (v48[26] * 0.12903) + (v47[26] * 0.87097);
          v49[6].f32[3] = (v48[27] * 0.096774) + (v47[27] * 0.90323);
          v49[7].f32[0] = (v48[28] * 0.064516) + (v47[28] * 0.93548);
          v49[7].f32[1] = (v48[29] * 0.032258) + (v47[29] * 0.96774);
          v53 = (v49 + 120);
          v48 = v47 + 30;
          v54 = 136;
          goto LABEL_87;
        }
      }

LABEL_86:
      v53 = v49;
      v54 = 256;
LABEL_87:
      memmove(v53, v48, v54);
      v28[3187] = v46;
      v55 = (v230 << 6);
      v56 = *(v13 + 8);
      if (v55 >= (*(v13 + 16) - v56) >> 2)
      {
        goto LABEL_184;
      }

      v57 = *(v15 + 9360);
      if (v230 >= (*(v15 + 9368) - v57) >> 8)
      {
        goto LABEL_184;
      }

      v58 = (v56 + 4 * v55);
      v59 = &v23[65 * v230];
      v60 = (v57 + (v230 << 8));
      webrtc::Aec3Fft::PaddedFft((v15 + 616), v58, 64, v60, 64, 2, v59);
      memmove(v60, v58, 0x100uLL);
      v61 = *(v15 + 9336);
      if (v230 >= (*(v15 + 9344) - v61) >> 8)
      {
        goto LABEL_184;
      }

      v226 = v39;
      v227 = v37;
      v62 = v15;
      v63 = v223 + 260 * v230;
      v225 = 260 * v230;
      v224 = 260 * v230 + 260;
      v64 = v223 + v224;
      v65 = &v23[65 * v230];
      v66 = 520 * v230 + 520;
      v67 = v23 + v66;
      v68 = v222 + v66;
      v69 = (v61 + (v230 << 8));
      v70 = &v222[65 * v230];
      webrtc::Aec3Fft::PaddedFft((v62 + 616), v49, 64, v69, 64, 2, v70);
      memmove(v69, v49, 0x100uLL);
      v71 = v67;
      v72 = v65;
      v73 = v68;
      v74 = 0;
      v75 = (v59 + 260);
      v76 = (v70 + 260);
      v78 = v63 < v68 && &v222[65 * v230] < v64;
      if (v65 >= v64 || v63 >= v67)
      {
        v18 = v215;
        v19 = v217;
        v113 = v230;
        v115 = v226;
        v114 = v227;
        if (!v78)
        {
          v80 = (v223 + 260 * v230);
          v81 = vsubq_f32(*v59, *v70);
          v82 = vsubq_f32(*(v59 + 16), *(v70 + 16));
          v83 = vsubq_f32(*v75, *v76);
          v84 = vsubq_f32(*(v59 + 276), *(v70 + 276));
          *v80 = vmlaq_f32(vmulq_f32(v83, v83), v81, v81);
          v80[1] = vmlaq_f32(vmulq_f32(v84, v84), v82, v82);
          v85 = vsubq_f32(*(v59 + 32), *(v70 + 32));
          v86 = vsubq_f32(*(v59 + 48), *(v70 + 48));
          v87 = vsubq_f32(*(v59 + 292), *(v70 + 292));
          v88 = vsubq_f32(*(v59 + 308), *(v70 + 308));
          v80[2] = vmlaq_f32(vmulq_f32(v87, v87), v85, v85);
          v80[3] = vmlaq_f32(vmulq_f32(v88, v88), v86, v86);
          v89 = vsubq_f32(*(v59 + 64), *(v70 + 64));
          v90 = vsubq_f32(*(v59 + 80), *(v70 + 80));
          v91 = vsubq_f32(*(v59 + 324), *(v70 + 324));
          v92 = vsubq_f32(*(v59 + 340), *(v70 + 340));
          v80[4] = vmlaq_f32(vmulq_f32(v91, v91), v89, v89);
          v80[5] = vmlaq_f32(vmulq_f32(v92, v92), v90, v90);
          v93 = vsubq_f32(*(v59 + 96), *(v70 + 96));
          v94 = vsubq_f32(*(v59 + 112), *(v70 + 112));
          v95 = vsubq_f32(*(v59 + 356), *(v70 + 356));
          v96 = vsubq_f32(*(v59 + 372), *(v70 + 372));
          v80[6] = vmlaq_f32(vmulq_f32(v95, v95), v93, v93);
          v80[7] = vmlaq_f32(vmulq_f32(v96, v96), v94, v94);
          v97 = vsubq_f32(*(v59 + 128), *(v70 + 128));
          v98 = vsubq_f32(*(v59 + 144), *(v70 + 144));
          v99 = vsubq_f32(*(v59 + 388), *(v70 + 388));
          v100 = vsubq_f32(*(v59 + 404), *(v70 + 404));
          v80[8] = vmlaq_f32(vmulq_f32(v99, v99), v97, v97);
          v80[9] = vmlaq_f32(vmulq_f32(v100, v100), v98, v98);
          v101 = vsubq_f32(*(v59 + 160), *(v70 + 160));
          v102 = vsubq_f32(*(v59 + 176), *(v70 + 176));
          v103 = vsubq_f32(*(v59 + 420), *(v70 + 420));
          v104 = vsubq_f32(*(v59 + 436), *(v70 + 436));
          v80[10] = vmlaq_f32(vmulq_f32(v103, v103), v101, v101);
          v80[11] = vmlaq_f32(vmulq_f32(v104, v104), v102, v102);
          v105 = vsubq_f32(*(v59 + 192), *(v70 + 192));
          v106 = vsubq_f32(*(v59 + 208), *(v70 + 208));
          v107 = vsubq_f32(*(v59 + 452), *(v70 + 452));
          v108 = vsubq_f32(*(v59 + 468), *(v70 + 468));
          v80[12] = vmlaq_f32(vmulq_f32(v107, v107), v105, v105);
          v80[13] = vmlaq_f32(vmulq_f32(v108, v108), v106, v106);
          v109 = vsubq_f32(*(v59 + 224), *(v70 + 224));
          v110 = vsubq_f32(*(v59 + 240), *(v70 + 240));
          v111 = vsubq_f32(*(v59 + 484), *(v70 + 484));
          v112 = vsubq_f32(*(v59 + 500), *(v70 + 500));
          v80[14] = vmlaq_f32(vmulq_f32(v111, v111), v109, v109);
          v80[15] = vmlaq_f32(vmulq_f32(v112, v112), v110, v110);
          v74 = 64;
        }
      }

      else
      {
        v18 = v215;
        v19 = v217;
        v113 = v230;
        v115 = v226;
        v114 = v227;
      }

      v116 = v115 + v74;
      v117 = v114 + v74;
      v23 = v218;
      v13 = v219;
      do
      {
        *(v38 + v74++) = ((v116[65] - v117[65]) * (v116[65] - v117[65])) + ((*v116 - *v117) * (*v116 - *v117));
        ++v116;
        ++v117;
      }

      while (v74 != 65);
      v118 = &v18[260 * v113];
      v15 = v216;
      if (&v18[v225] >= v71 || v72 >= &v18[v224])
      {
        v120 = *v75;
        v75 = (v59 + 516);
        v121 = vmlaq_f32(vmulq_f32(*(v59 + 276), *(v59 + 276)), *(v59 + 16), *(v59 + 16));
        *v118 = vmlaq_f32(vmulq_f32(v120, v120), *v59, *v59);
        v118[1] = v121;
        v122 = vmlaq_f32(vmulq_f32(*(v59 + 308), *(v59 + 308)), *(v59 + 48), *(v59 + 48));
        v118[2] = vmlaq_f32(vmulq_f32(*(v59 + 292), *(v59 + 292)), *(v59 + 32), *(v59 + 32));
        v118[3] = v122;
        v123 = vmlaq_f32(vmulq_f32(*(v59 + 340), *(v59 + 340)), *(v59 + 80), *(v59 + 80));
        v118[4] = vmlaq_f32(vmulq_f32(*(v59 + 324), *(v59 + 324)), *(v59 + 64), *(v59 + 64));
        v118[5] = v123;
        v124 = vmlaq_f32(vmulq_f32(*(v59 + 372), *(v59 + 372)), *(v59 + 112), *(v59 + 112));
        v118[6] = vmlaq_f32(vmulq_f32(*(v59 + 356), *(v59 + 356)), *(v59 + 96), *(v59 + 96));
        v118[7] = v124;
        v125 = vmlaq_f32(vmulq_f32(*(v59 + 404), *(v59 + 404)), *(v59 + 144), *(v59 + 144));
        v118[8] = vmlaq_f32(vmulq_f32(*(v59 + 388), *(v59 + 388)), *(v59 + 128), *(v59 + 128));
        v118[9] = v125;
        v126 = vmlaq_f32(vmulq_f32(*(v59 + 436), *(v59 + 436)), *(v59 + 176), *(v59 + 176));
        v118[10] = vmlaq_f32(vmulq_f32(*(v59 + 420), *(v59 + 420)), *(v59 + 160), *(v59 + 160));
        v118[11] = v126;
        v127 = vmlaq_f32(vmulq_f32(*(v59 + 468), *(v59 + 468)), *(v59 + 208), *(v59 + 208));
        v118[12] = vmlaq_f32(vmulq_f32(*(v59 + 452), *(v59 + 452)), *(v59 + 192), *(v59 + 192));
        v118[13] = v127;
        v128 = vmlaq_f32(vmulq_f32(*(v59 + 500), *(v59 + 500)), *(v59 + 240), *(v59 + 240));
        v118[14] = vmlaq_f32(vmulq_f32(*(v59 + 484), *(v59 + 484)), *(v59 + 224), *(v59 + 224));
        v118[15] = v128;
        v118 += 16;
        v119 = 256;
      }

      else
      {
        v119 = 0;
      }

      do
      {
        v129 = v75->f32[0];
        v75 = (v75 + 4);
        v118->f32[0] = (v129 * v129) + (*(v115 + v119) * *(v115 + v119));
        v118 = (v118 + 4);
        v119 += 4;
      }

      while (v119 != 260);
      v130 = (v19 + 260 * v113);
      if (v19 + v225 >= v73 || &v222[65 * v230] >= (v19 + v224))
      {
        v132 = *v76;
        v76 = (v70 + 516);
        v133 = vmlaq_f32(vmulq_f32(*(v70 + 276), *(v70 + 276)), *(v70 + 16), *(v70 + 16));
        *v130 = vmlaq_f32(vmulq_f32(v132, v132), *v70, *v70);
        v130[1] = v133;
        v134 = vmlaq_f32(vmulq_f32(*(v70 + 308), *(v70 + 308)), *(v70 + 48), *(v70 + 48));
        v130[2] = vmlaq_f32(vmulq_f32(*(v70 + 292), *(v70 + 292)), *(v70 + 32), *(v70 + 32));
        v130[3] = v134;
        v135 = vmlaq_f32(vmulq_f32(*(v70 + 340), *(v70 + 340)), *(v70 + 80), *(v70 + 80));
        v130[4] = vmlaq_f32(vmulq_f32(*(v70 + 324), *(v70 + 324)), *(v70 + 64), *(v70 + 64));
        v130[5] = v135;
        v136 = vmlaq_f32(vmulq_f32(*(v70 + 372), *(v70 + 372)), *(v70 + 112), *(v70 + 112));
        v130[6] = vmlaq_f32(vmulq_f32(*(v70 + 356), *(v70 + 356)), *(v70 + 96), *(v70 + 96));
        v130[7] = v136;
        v137 = vmlaq_f32(vmulq_f32(*(v70 + 404), *(v70 + 404)), *(v70 + 144), *(v70 + 144));
        v130[8] = vmlaq_f32(vmulq_f32(*(v70 + 388), *(v70 + 388)), *(v70 + 128), *(v70 + 128));
        v130[9] = v137;
        v138 = vmlaq_f32(vmulq_f32(*(v70 + 436), *(v70 + 436)), *(v70 + 176), *(v70 + 176));
        v130[10] = vmlaq_f32(vmulq_f32(*(v70 + 420), *(v70 + 420)), *(v70 + 160), *(v70 + 160));
        v130[11] = v138;
        v139 = vmlaq_f32(vmulq_f32(*(v70 + 468), *(v70 + 468)), *(v70 + 208), *(v70 + 208));
        v130[12] = vmlaq_f32(vmulq_f32(*(v70 + 452), *(v70 + 452)), *(v70 + 192), *(v70 + 192));
        v130[13] = v139;
        v140 = vmlaq_f32(vmulq_f32(*(v70 + 500), *(v70 + 500)), *(v70 + 240), *(v70 + 240));
        v130[14] = vmlaq_f32(vmulq_f32(*(v70 + 484), *(v70 + 484)), *(v70 + 224), *(v70 + 224));
        v130[15] = v140;
        v130 += 16;
        v131 = 256;
      }

      else
      {
        v131 = 0;
      }

      v28 = v214;
      do
      {
        v141 = v76->f32[0];
        v76 = (v76 + 4);
        v130->f32[0] = (v141 * v141) + (*(v114 + v131) * *(v114 + v131));
        v130 = (v130 + 4);
        v131 += 4;
      }

      while (v131 != 260);
      v36 = v113 + 1;
      v142 = *(v216 + 648);
      v38 = (v38 + 260);
      v39 = v115 + 65;
      v37 = v114 + 65;
      if (v36 >= v142)
      {
        v143 = __src;
        if (v205 && v142)
        {
          v144 = 0;
          v145 = 0;
          do
          {
            memmove((*(v205 + 8) + 4 * v144), v143, 0x100uLL);
            ++v145;
            v144 += 64;
            v143 += 256;
          }

          while (v145 < *(v216 + 648));
        }

        goto LABEL_121;
      }
    }

    v47 = v40 + 128;
    v50 = v40 + 192;
    if (v28[3187])
    {
      v48 = v47;
    }

    else
    {
      v48 = v50;
    }

LABEL_83:
    v46 = 1;
    v230 = v36;
    v49 = &__src[256 * v36];
    if (v48 != v47)
    {
      goto LABEL_84;
    }

    goto LABEL_86;
  }

LABEL_121:
  v146 = *(v15 + 1488) - *(v15 + 1480);
  v147 = 0xAAAAAAAAAAAAAAABLL * (v146 >> 3);
  if (v146)
  {
    v148 = *(v15 + 1480);
  }

  else
  {
    v148 = 0;
  }

  v149 = *(v15 + 1512) - *(v15 + 1504);
  if (v149)
  {
    v150 = *(v15 + 1504);
  }

  else
  {
    v150 = 0;
  }

  if (v211)
  {
    v151 = v19;
  }

  else
  {
    v151 = 0;
  }

  if (v211)
  {
    v152 = v18;
  }

  else
  {
    v152 = 0;
  }

  webrtc::AecState::Update(v213, v209, v148, v147, v150, 0xAAAAAAAAAAAAAAABLL * (v149 >> 3), v210, v35, v151, v211, v152, v211, v208, v211);
  if (v28[752] == 1)
  {
    v154 = v28[249];
  }

  else
  {
    v154 = 0;
  }

  if (*(v13 + 16) == *(v13 + 8))
  {
    goto LABEL_184;
  }

  v229 = v151;
  v231 = v154;
  v155 = v211 ? v207 : 0;
  v156 = v211 ? v206 : 0;
  v157 = v155;
  v158 = v156;
  webrtc::ComfortNoiseGenerator::Compute(v15 + 4128, v28[2007], v152, v153, v211, v155, v211, v156);
  if (*v28 == 1)
  {
    v159 = (*(**(v15 + 4120) + 16))(*(v15 + 4120));
    if (v211)
    {
      v163 = v223;
    }

    else
    {
      v163 = 0;
    }

    v164 = v202;
    if (v211)
    {
      v165 = v203;
    }

    else
    {
      v165 = 0;
    }

    if (!v211)
    {
      v164 = 0;
    }

    v166 = v164;
    v228 = v163;
    webrtc::ResidualEchoEstimator::Estimate(v15 + 4792, v213, v210, v163, v211, v152, v211, v159, v160, v161, v162, v165, v211, v164, v211);
    if (v28[752] == 1)
    {
      v13 = v219;
      v168 = v204;
      if (v28[249])
      {
        v169 = *(v15 + 648);
        v170 = v158;
        v171 = v165;
        if (v169)
        {
          v172 = 0;
          v173 = v217 >= &v18[260 * v169] || v18 >= v217 + 260 * v169;
          v174 = !v173;
          v175 = v217;
          v176 = v228;
          v152 = v229;
          do
          {
            v177 = (v217 + 260 * v172);
            v178 = &v18[260 * v172];
            if (v174)
            {
              v179 = 0;
            }

            else
            {
              v180 = vbslq_s8(vcgtq_f32(v177[1], v178[1]), v178[1], v177[1]);
              *v177 = vbslq_s8(vcgtq_f32(*v177, *v178), *v178, *v177);
              v177[1] = v180;
              v181 = vbslq_s8(vcgtq_f32(v177[3], v178[3]), v178[3], v177[3]);
              v177[2] = vbslq_s8(vcgtq_f32(v177[2], v178[2]), v178[2], v177[2]);
              v177[3] = v181;
              v182 = vbslq_s8(vcgtq_f32(v177[5], v178[5]), v178[5], v177[5]);
              v177[4] = vbslq_s8(vcgtq_f32(v177[4], v178[4]), v178[4], v177[4]);
              v177[5] = v182;
              v183 = vbslq_s8(vcgtq_f32(v177[7], v178[7]), v178[7], v177[7]);
              v177[6] = vbslq_s8(vcgtq_f32(v177[6], v178[6]), v178[6], v177[6]);
              v177[7] = v183;
              v184 = vbslq_s8(vcgtq_f32(v177[9], v178[9]), v178[9], v177[9]);
              v177[8] = vbslq_s8(vcgtq_f32(v177[8], v178[8]), v178[8], v177[8]);
              v177[9] = v184;
              v185 = vbslq_s8(vcgtq_f32(v177[11], v178[11]), v178[11], v177[11]);
              v177[10] = vbslq_s8(vcgtq_f32(v177[10], v178[10]), v178[10], v177[10]);
              v177[11] = v185;
              v186 = vbslq_s8(vcgtq_f32(v177[13], v178[13]), v178[13], v177[13]);
              v177[12] = vbslq_s8(vcgtq_f32(v177[12], v178[12]), v178[12], v177[12]);
              v177[13] = v186;
              v187 = v178[14];
              v188 = v178[15];
              v178 += 16;
              v189 = vbslq_s8(vcgtq_f32(v177[15], v188), v188, v177[15]);
              v177[14] = vbslq_s8(vcgtq_f32(v177[14], v187), v187, v177[14]);
              v177[15] = v189;
              v177 += 16;
              v179 = 256;
            }

            do
            {
              v190 = *(v175 + v179);
              v191 = v178->f32[0];
              v178 = (v178 + 4);
              v192 = v191;
              if (v191 < v190)
              {
                v190 = v192;
              }

              v177->f32[0] = v190;
              v177 = (v177 + 4);
              v179 += 4;
            }

            while (v179 != 260);
            ++v172;
            v175 += 260;
          }

          while (v172 != v169);
          v193 = *(v15 + 340) | v252;
          *v232 = 0;
        }

        else
        {
          v193 = *(v15 + 340) | v252;
          *v232 = 0;
          v176 = v228;
          v152 = v229;
        }
      }

      else
      {
        v195 = *(v15 + 340);
        *v232 = 0;
        v193 = v195 | v252;
        v171 = v165;
        v176 = v165;
        v170 = v158;
      }
    }

    else
    {
      v193 = *(v15 + 340) | v252;
      *v232 = 0;
      v176 = v165;
      v13 = v219;
      v168 = v204;
      v170 = v158;
      v171 = v165;
    }

    v196 = *(v15 + 4184);
    v197 = 0xFC0FC0FC0FC0FC1 * ((*(v15 + 4192) - v196) >> 2);
    if (*(v15 + 4192) == v196)
    {
      v196 = 0;
    }

    v194 = v213;
    webrtc::SuppressionGain::GetGain(v15 + 1552, v152, v211, v176, v211, v171, v211, v167, v166, v211, v196, v197, v212, v213, v168, v193 & 1, v232, &v232[4]);
    LODWORD(v198) = *v232;
    v199 = v218;
    if (v231)
    {
      v199 = v222;
    }

    v200 = v211 ? v199 : 0;
    webrtc::SuppressionFilter::ApplyGain((v15 + 4216), v157, v198, v211, v170, v211, &v232[4], v200, v211, v13);
  }

  else
  {
    v233 = 0;
    memset(&v232[4], 0, 256);
    v194 = v213;
  }

  webrtc::EchoRemoverMetrics::Update(v15 + 9304, v194);
  if (*(v13 + 16) == *(v13 + 8))
  {
    goto LABEL_184;
  }

  v201 = v210[1];
  if (0xAAAAAAAAAAAAAAABLL * ((*(v201 + 16) - *(v201 + 8)) >> 3) <= (*(v201 + 36) + *(v15 + 6904) + *v201) % *v201)
  {
    goto LABEL_184;
  }
}

unint64_t webrtc::EchoRemoverMetrics::Update(unint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 29) = 0;
  v3 = (*result)++;
  if (v3 > 2496)
  {
    if (v3 != 2499)
    {
      if (v3 != 2498)
      {
        if (v3 != 2497)
        {
          return result;
        }

        v17 = &_MergedGlobals_12;
        result = atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire);
        if (result)
        {
          v18 = *(a2 + 688);

          return webrtc::metrics::HistogramAdd(result, v18);
        }

LABEL_64:
        v42 = 0;
        atomic_compare_exchange_strong(v17, &v42, 0);
        return result;
      }

      explicit = atomic_load_explicit(&qword_28100B958, memory_order_acquire);
      if (explicit)
      {
        v20 = (log10f(*(result + 4) + 1.0e-10) * 10.0) + 30.0;
        v21 = -v20;
        if (v20 <= -59.0)
        {
          v21 = 59.0;
        }

        if (v20 >= 0.0)
        {
          v21 = 0.0;
        }

        result = webrtc::metrics::HistogramAdd(explicit, v21);
        v22 = atomic_load_explicit(&qword_28100B960, memory_order_acquire);
        if (v22)
        {
LABEL_31:
          v23 = (log10f(*(v2 + 12) + 1.0e-10) * 10.0) + 30.0;
          v24 = -v23;
          if (v23 <= -59.0)
          {
            v24 = 59.0;
          }

          if (v23 >= 0.0)
          {
            v24 = 0.0;
          }

          result = webrtc::metrics::HistogramAdd(v22, v24);
          v17 = &qword_28100B968;
          v25 = atomic_load_explicit(&qword_28100B968, memory_order_acquire);
          if (!v25)
          {
            goto LABEL_64;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v40 = 0;
        atomic_compare_exchange_strong(&qword_28100B958, &v40, 0);
        v22 = atomic_load_explicit(&qword_28100B960, memory_order_acquire);
        if (v22)
        {
          goto LABEL_31;
        }
      }

      v41 = 0;
      atomic_compare_exchange_strong(&qword_28100B960, &v41, 0);
      v17 = &qword_28100B968;
      v25 = atomic_load_explicit(&qword_28100B968, memory_order_acquire);
      if (!v25)
      {
        goto LABEL_64;
      }

LABEL_36:
      v26 = (log10f(*(v2 + 8) + 1.0e-10) * 10.0) + 30.0;
      v27 = -v26;
      if (v26 <= -59.0)
      {
        v27 = 59.0;
      }

      if (v26 >= 0.0)
      {
        v27 = 0.0;
      }

      v18 = v27;
      result = v25;

      return webrtc::metrics::HistogramAdd(result, v18);
    }

    v28 = atomic_load_explicit(&qword_28100B970, memory_order_acquire);
    if (v28)
    {
      v29 = (log10f(*(result + 16) + 1.0e-10) * 10.0) + 0.0;
      v30 = 19.0;
      if (v29 < 19.0)
      {
        v30 = v29;
      }

      if (v29 > 0.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0.0;
      }

      result = webrtc::metrics::HistogramAdd(v28, v31);
      v32 = atomic_load_explicit(&qword_28100B978, memory_order_acquire);
      if (v32)
      {
LABEL_50:
        v33 = (log10f(*(v2 + 24) + 1.0e-10) * 10.0) + 0.0;
        v34 = 19.0;
        if (v33 < 19.0)
        {
          v34 = v33;
        }

        if (v33 > 0.0)
        {
          v35 = v34;
        }

        else
        {
          v35 = 0.0;
        }

        result = webrtc::metrics::HistogramAdd(v32, v35);
        v36 = atomic_load_explicit(&qword_28100B980, memory_order_acquire);
        if (v36)
        {
          goto LABEL_56;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v43 = 0;
      atomic_compare_exchange_strong(&qword_28100B970, &v43, 0);
      v32 = atomic_load_explicit(&qword_28100B978, memory_order_acquire);
      if (v32)
      {
        goto LABEL_50;
      }
    }

    v44 = 0;
    atomic_compare_exchange_strong(&qword_28100B978, &v44, 0);
    v36 = atomic_load_explicit(&qword_28100B980, memory_order_acquire);
    if (v36)
    {
LABEL_56:
      v37 = (log10f(*(v2 + 20) + 1.0e-10) * 10.0) + 0.0;
      v38 = 19.0;
      if (v37 < 19.0)
      {
        v38 = v37;
      }

      if (v37 > 0.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0.0;
      }

      result = webrtc::metrics::HistogramAdd(v36, v39);
      goto LABEL_68;
    }

LABEL_67:
    v45 = 0;
    atomic_compare_exchange_strong(&qword_28100B980, &v45, 0);
LABEL_68:
    *v2 = 0;
    *(v2 + 4) = xmmword_273B92BA0;
    *(v2 + 20) = 0x447A000000000000;
    *(v2 + 28) = 256;
    return result;
  }

  v4 = *(a2 + 1328);
  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5 > v4)
  {
    v5 = *(a2 + 1328);
  }

  *(result + 4) = v4;
  *(result + 8) = v5;
  if (v6 >= v4)
  {
    v4 = v6;
  }

  *(result + 12) = v4;
  v7 = *(a2 + 1384);
  v8 = *(a2 + 1392) - v7;
  if (v8)
  {
    v9 = v8 >> 2;
    v10 = *v7;
    if (v9 >= 2)
    {
      v11 = v9 - 1;
      v12 = v7 + 1;
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v13 < v10)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }

    v15 = *(result + 20);
    v16 = *(result + 24);
    if (v15 > v10)
    {
      v15 = v10;
    }

    *(result + 16) = v10;
    *(result + 20) = v15;
    if (v16 >= v10)
    {
      v10 = v16;
    }

    *(result + 24) = v10;
    *(result + 28) = (*(result + 28) | *(a2 + 2000)) & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void webrtc::anonymous namespace::MediaFactoryImpl::CreateCall(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v11 = v2;
  v3 = *(a2 + 24);
  v12 = *(a2 + 8);
  v13 = v3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  v16 = v4;
  v17 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a2 + 88) = 0;
  v18 = v5;
  v19 = v6;
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 144);
  v24 = *(a2 + 160);
  v23 = v10;
  v22 = v9;
  v20 = v7;
  v21 = v8;
  webrtc::Call::Create(&v11);
}

void webrtc::anonymous namespace::MediaFactoryImpl::CreateMediaEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 224);
  if (v3)
  {
    (*(*v3 + 16))(&v4);
  }

  operator new();
}

uint64_t webrtc::EncodeUsageResource::AdaptUp(webrtc::EncodeUsageResource *this)
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

uint64_t non-virtual thunk towebrtc::EncodeUsageResource::AdaptUp(webrtc::EncodeUsageResource *this)
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

uint64_t webrtc::EncodeUsageResource::AdaptDown(webrtc::EncodeUsageResource *this)
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

uint64_t non-virtual thunk towebrtc::EncodeUsageResource::AdaptDown(webrtc::EncodeUsageResource *this)
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

BOOL webrtc::RefCountedObject<webrtc::EncodeUsageResource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 38, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::EncodeUsageResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288293148;
  v2 = *(a1 + 120);
  *(a1 + 112) = &unk_288293198;
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

void webrtc::RefCountedObject<webrtc::EncodeUsageResource>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288293148;
  v2 = *(a1 + 120);
  *(a1 + 112) = &unk_288293198;
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

uint64_t non-virtual thunk towebrtc::RefCountedObject<webrtc::EncodeUsageResource>::~RefCountedObject(void *a1)
{
  *(a1 - 14) = &unk_288293148;
  v2 = a1[1];
  *a1 = &unk_288293198;
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

void non-virtual thunk towebrtc::RefCountedObject<webrtc::EncodeUsageResource>::~RefCountedObject(void *a1)
{
  *(a1 - 14) = &unk_288293148;
  v2 = a1[1];
  *a1 = &unk_288293198;
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

void webrtc::EncodedFrame::CopyCodecSpecific(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = *(a2 + 172);
  if (v2 > 2)
  {
    if (v2 == 3 || v2 == 4)
    {
      *(a1 + 424) = v2;
      return;
    }

    goto LABEL_32;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      if (*(a2 + 1936) == 2)
      {
        if (*(a1 + 424) != 2)
        {
          *(a1 + 437) = 0;
          *(a1 + 439) = 0;
          *(a1 + 424) = 2;
        }

        *(a1 + 433) = *(a2 + 296);
        *(a1 + 434) = *(a2 + 297);
        v3 = *(a2 + 313);
        *(a1 + 2048) = v3;
        if (v3)
        {
          v4 = 0;
          do
          {
            *(a1 + 2049 + v4) = *(a2 + 314 + v4);
            ++v4;
          }

          while (v4 < *(a2 + 313));
        }

        *(a1 + 435) = *(a2 + 300);
        v5 = *(a2 + 308);
        if (v5 != 255)
        {
          *(a1 + 437) = v5;
          *(a1 + 438) = *(a2 + 310);
        }

        if (*(a2 + 309) != 255)
        {
          *(a1 + 439) = *(a2 + 311);
          v6 = *(a2 + 309);
          *(a1 + 196) = 1;
          *(a1 + 192) = v6;
        }

        v7 = *(a2 + 312);
        if (v7 != 255)
        {
          *(a1 + 440) = v7;
        }

        if (*(a2 + 300) == 1)
        {
          *(a1 + 448) = *(a2 + 328);
          v8 = *(a2 + 344);
          *(a1 + 464) = v8;
          if (v8 == 1 && *(a2 + 328))
          {
            v9 = (a2 + 362);
            v10 = (a1 + 482);
            v11 = 173;
            do
            {
              *(v10 - 8) = *(v9 - 8);
              v12 = *v9++;
              *v10++ = v12;
              v13 = v11 - 172;
              ++v11;
            }

            while (v13 < *(a2 + 328));
          }

          v14 = *(a2 + 384);
          *(a1 + 504) = v14;
          if (v14)
          {
            v15 = 0;
            v16 = a1 + 1022;
            v17 = a2 + 1157;
            v18 = a1 + 1277;
            do
            {
              *(a1 + 512 + v15) = *(a2 + 392 + v15);
              *(a1 + 767 + v15) = *(a2 + 647 + v15);
              v19 = *(a2 + 902 + v15);
              *(v16 + v15) = v19;
              if (v19)
              {
                v20 = 0;
                do
                {
                  *(v18 + v20) = *(v17 + v20);
                  ++v20;
                }

                while (v20 < *(v16 + v15));
              }

              ++v15;
              v18 += 3;
              v17 += 3;
            }

            while (v15 < *(a1 + 504));
          }
        }

        return;
      }

LABEL_41:
      v23 = std::__throw_bad_variant_access[abi:sn200100]();
      webrtc::EncodedFrame::~EncodedFrame(v23);
      return;
    }

LABEL_32:
    *(a1 + 424) = 0;
    return;
  }

  if (*(a2 + 1936) != 1)
  {
    goto LABEL_41;
  }

  if (*(a1 + 424) != 1)
  {
    *(a1 + 433) = 0;
    *(a1 + 435) = -1;
    *(a1 + 424) = 1;
  }

  *(a1 + 432) = *(a2 + 296);
  v21 = *(a2 + 302);
  if (v21 != 255)
  {
    *(a1 + 433) = v21;
    *(a1 + 434) = *(a2 + 303);
  }

  v22 = *(a2 + 304);
  if (v22 != -1)
  {
    *(a1 + 435) = v22;
  }
}

void webrtc::EncodedFrame::~EncodedFrame(webrtc::EncodedFrame *this)
{
  *this = &unk_288293250;
  if (*(this + 2480) != 1)
  {
    if (*(this + 2408) != 1)
    {
      goto LABEL_3;
    }

LABEL_9:
    webrtc::FrameDependencyStructure::~FrameDependencyStructure((this + 2280));
    if (*(this + 2272) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v2 = *(this + 618);
  if (v2 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v2])(&v3, this + 2424);
  }

  *(this + 618) = -1;
  if (*(this + 2408) == 1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (*(this + 2272) == 1)
  {
LABEL_4:
    webrtc::GenericFrameInfo::~GenericFrameInfo((this + 2064));
  }

LABEL_5:
  webrtc::EncodedImage::~EncodedImage((this + 8));
}

{
  *this = &unk_288293250;
  if (*(this + 2480) == 1)
  {
    v2 = *(this + 618);
    if (v2 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v2])(&v3, this + 2424);
    }

    *(this + 618) = -1;
    if (*(this + 2408) != 1)
    {
LABEL_3:
      if (*(this + 2272) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (*(this + 2408) != 1)
  {
    goto LABEL_3;
  }

  webrtc::FrameDependencyStructure::~FrameDependencyStructure((this + 2280));
  if (*(this + 2272) != 1)
  {
LABEL_5:
    webrtc::EncodedImage::~EncodedImage((this + 8));

    JUMPOUT(0x2743DA540);
  }

LABEL_4:
  webrtc::GenericFrameInfo::~GenericFrameInfo((this + 2064));
  goto LABEL_5;
}

uint64_t webrtc::EncodedImageBuffer::data(webrtc::EncodedImageBuffer *this)
{
  return *(this + 3);
}

{
  return *(this + 3);
}

double webrtc::EncodedImage::EncodedImage(webrtc::EncodedImage *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 4;
  *(this + 32) = 0;
  *(this + 9) = -1;
  *(this + 40) = -1;
  *(this + 128) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 188) = 0;
  *(this + 192) = 0;
  *(this + 196) = 0;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 112) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 149) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 25) = this + 208;
  *(this + 224) = 0;
  *(this + 292) = 0;
  *(this + 296) = 0;
  *(this + 298) = 0;
  *(this + 38) = 0;
  *(this + 156) = 1;
  *(this + 314) = 0;
  *(this + 320) = 0;
  *(this + 336) = 0;
  return result;
}

webrtc::EncodedImage *webrtc::EncodedImage::EncodedImage(webrtc::EncodedImage *this, const webrtc::EncodedImage *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v6;
  *(this + 1) = v4;
  *(this + 2) = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  *(this + 128) = *(a2 + 128);
  *(this + 6) = v8;
  *(this + 7) = v9;
  *(this + 5) = v7;
  v10 = *(a2 + 17);
  *(this + 17) = v10;
  if (v10)
  {
    (**v10)(v10);
  }

  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  v13 = *(a2 + 11);
  v14 = *(a2 + 189);
  *(this + 26) = 0;
  *(this + 189) = v14;
  *(this + 10) = v12;
  *(this + 11) = v13;
  *(this + 9) = v11;
  *(this + 27) = 0;
  *(this + 25) = this + 208;
  v15 = *(a2 + 25);
  if (v15 != (a2 + 208))
  {
    do
    {
      v16 = *(v15 + 8);
      v17 = *(this + 26);
      v18 = this + 208;
      if (*(this + 25) == (this + 208))
      {
        goto LABEL_12;
      }

      v19 = *(this + 26);
      v20 = this + 208;
      if (v17)
      {
        do
        {
          v18 = v19;
          v19 = *(v19 + 1);
        }

        while (v19);
      }

      else
      {
        do
        {
          v18 = *(v20 + 2);
          v21 = *v18 == v20;
          v20 = v18;
        }

        while (v21);
      }

      if (*(v18 + 8) < v16)
      {
LABEL_12:
        if (v17)
        {
          v22 = v18 + 8;
        }

        else
        {
          v22 = (this + 208);
        }

        if (!*v22)
        {
LABEL_23:
          operator new();
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_23;
        }

        while (1)
        {
          while (1)
          {
            v23 = v17;
            v24 = *(v17 + 32);
            if (v24 <= v16)
            {
              break;
            }

            v17 = *v23;
            if (!*v23)
            {
              goto LABEL_23;
            }
          }

          if (v24 >= v16)
          {
            break;
          }

          v17 = v23[1];
          if (!v17)
          {
            goto LABEL_23;
          }
        }
      }

      v25 = *(v15 + 1);
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = *(v15 + 2);
          v21 = *v26 == v15;
          v15 = v26;
        }

        while (!v21);
      }

      v15 = v26;
    }

    while (v26 != (a2 + 208));
  }

  *(this + 224) = 0;
  *(this + 292) = 0;
  if (*(a2 + 292) == 1)
  {
    *(this + 14) = *(a2 + 14);
    v27 = *(a2 + 15);
    v28 = *(a2 + 16);
    v29 = *(a2 + 17);
    *(this + 288) = *(a2 + 288);
    *(this + 16) = v28;
    *(this + 17) = v29;
    *(this + 15) = v27;
    *(this + 292) = 1;
  }

  *(this + 74) = *(a2 + 74);
  v30 = *(a2 + 38);
  *(this + 38) = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
  }

  v31 = *(a2 + 312);
  *(this + 321) = *(a2 + 321);
  *(this + 312) = v31;
  return this;
}

void webrtc::EncodedImage::~EncodedImage(webrtc::EncodedImage *this)
{
  v2 = *(this + 38);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 96);
          if (v6)
          {
            *(v4 - 88) = v6;
            operator delete(v6);
          }

          v4 -= 104;
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40E72D6CFBLL);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 200, *(this + 26));
  v7 = *(this + 17);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

BOOL webrtc::RefCountedObject<webrtc::EncodedImageBuffer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::EncodedImageBuffer>::~RefCountedObject(void *result)
{
  *result = &unk_288293288;
  v1 = result[3];
  result[3] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::EncodedImageBuffer>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288293288;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::EncoderBitrateAdjuster::~EncoderBitrateAdjuster(webrtc::EncoderBitrateAdjuster *this)
{
  v2 = *(this + 86);
  *(this + 86) = 0;
  if (v2)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v2 + 24));
    MEMORY[0x2743DA540](v2, 0x1080C40D009A8DELL);
  }

  v3 = *(this + 85);
  *(this + 85) = 0;
  if (v3)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v3 + 24));
    MEMORY[0x2743DA540](v3, 0x1080C40D009A8DELL);
  }

  v4 = *(this + 84);
  *(this + 84) = 0;
  if (v4)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v4 + 24));
    MEMORY[0x2743DA540](v4, 0x1080C40D009A8DELL);
  }

  v5 = *(this + 83);
  *(this + 83) = 0;
  if (v5)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v5 + 24));
    MEMORY[0x2743DA540](v5, 0x1080C40D009A8DELL);
  }

  v6 = *(this + 82);
  *(this + 82) = 0;
  if (v6)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v6 + 24));
    MEMORY[0x2743DA540](v6, 0x1080C40D009A8DELL);
  }

  v7 = *(this + 81);
  *(this + 81) = 0;
  if (v7)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v7);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v7 + 16));
    MEMORY[0x2743DA540](v7, 0x1080C407FFAD1B2);
  }

  v8 = *(this + 80);
  *(this + 80) = 0;
  if (v8)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v8);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v8 + 16));
    MEMORY[0x2743DA540](v8, 0x1080C407FFAD1B2);
  }

  v9 = *(this + 79);
  *(this + 79) = 0;
  if (v9)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v9);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v9 + 16));
    MEMORY[0x2743DA540](v9, 0x1080C407FFAD1B2);
  }

  v10 = *(this + 78);
  *(this + 78) = 0;
  if (v10)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v10);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v10 + 16));
    MEMORY[0x2743DA540](v10, 0x1080C407FFAD1B2);
  }

  v11 = *(this + 77);
  *(this + 77) = 0;
  if (v11)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v11);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v11 + 16));
    MEMORY[0x2743DA540](v11, 0x1080C407FFAD1B2);
  }

  v12 = *(this + 76);
  *(this + 76) = 0;
  if (v12)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v12);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v12 + 16));
    MEMORY[0x2743DA540](v12, 0x1080C407FFAD1B2);
  }

  v13 = *(this + 75);
  *(this + 75) = 0;
  if (v13)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v13);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v13 + 16));
    MEMORY[0x2743DA540](v13, 0x1080C407FFAD1B2);
  }

  v14 = *(this + 74);
  *(this + 74) = 0;
  if (v14)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v14);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v14 + 16));
    MEMORY[0x2743DA540](v14, 0x1080C407FFAD1B2);
  }

  v15 = *(this + 73);
  *(this + 73) = 0;
  if (v15)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v15);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v15 + 16));
    MEMORY[0x2743DA540](v15, 0x1080C407FFAD1B2);
  }

  v16 = *(this + 72);
  *(this + 72) = 0;
  if (v16)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v16);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v16 + 16));
    MEMORY[0x2743DA540](v16, 0x1080C407FFAD1B2);
  }

  v17 = *(this + 71);
  *(this + 71) = 0;
  if (v17)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v17);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v17 + 16));
    MEMORY[0x2743DA540](v17, 0x1080C407FFAD1B2);
  }

  v18 = *(this + 70);
  *(this + 70) = 0;
  if (v18)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v18);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v18 + 16));
    MEMORY[0x2743DA540](v18, 0x1080C407FFAD1B2);
  }

  v19 = *(this + 69);
  *(this + 69) = 0;
  if (v19)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v19);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v19 + 16));
    MEMORY[0x2743DA540](v19, 0x1080C407FFAD1B2);
  }

  v20 = *(this + 68);
  *(this + 68) = 0;
  if (v20)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v20);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v20 + 16));
    MEMORY[0x2743DA540](v20, 0x1080C407FFAD1B2);
  }

  v21 = *(this + 67);
  *(this + 67) = 0;
  if (v21)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v21);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v21 + 16));
    MEMORY[0x2743DA540](v21, 0x1080C407FFAD1B2);
  }

  v22 = *(this + 66);
  *(this + 66) = 0;
  if (v22)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v22);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v22 + 16));
    MEMORY[0x2743DA540](v22, 0x1080C407FFAD1B2);
  }

  v23 = *(this + 65);
  *(this + 65) = 0;
  if (v23)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v23);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v23 + 16));
    MEMORY[0x2743DA540](v23, 0x1080C407FFAD1B2);
  }

  v24 = *(this + 64);
  *(this + 64) = 0;
  if (v24)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v24);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v24 + 16));
    MEMORY[0x2743DA540](v24, 0x1080C407FFAD1B2);
  }

  v25 = *(this + 63);
  *(this + 63) = 0;
  if (v25)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v25);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v25 + 16));
    MEMORY[0x2743DA540](v25, 0x1080C407FFAD1B2);
  }

  v26 = *(this + 62);
  *(this + 62) = 0;
  if (v26)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v26);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v26 + 16));
    MEMORY[0x2743DA540](v26, 0x1080C407FFAD1B2);
  }

  if (*(this + 464))
  {
    operator delete(*(this + 59));
    if ((*(this + 440) & 1) == 0)
    {
LABEL_53:
      if ((*(this + 416) & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_59;
    }
  }

  else if ((*(this + 440) & 1) == 0)
  {
    goto LABEL_53;
  }

  operator delete(*(this + 56));
  if ((*(this + 416) & 1) == 0)
  {
LABEL_54:
    if ((*(this + 392) & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(*(this + 53));
  if ((*(this + 392) & 1) == 0)
  {
LABEL_55:
    if ((*(this + 368) & 1) == 0)
    {
      return;
    }

LABEL_61:
    operator delete(*(this + 47));
    return;
  }

LABEL_60:
  operator delete(*(this + 50));
  if (*(this + 368))
  {
    goto LABEL_61;
  }
}

void webrtc::EncoderBitrateAdjuster::AdjustRateAllocation(webrtc::EncoderBitrateAdjuster *this@<X0>, const webrtc::VideoEncoder::RateControlParameters *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = this;
  v52 = *MEMORY[0x277D85DE8];
  memcpy(this + 16, a2 + 8, 0x160uLL);
  v5 = (*(**(v4 + 91) + 16))(*(v4 + 91));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v45 = v5;
  v48 = v3;
  v49 = v4;
  while (1)
  {
    *(v50 + v7) = 0;
    v10 = v4 + v6;
    v11 = (v4 + v6 + 376);
    v47 = v3 + v8;
    if (*(v3 + v8 + 184) == 1)
    {
      if (*(v3 + v8 + 180))
      {
        v12 = *(v10 + 46);
        if (v12 >= 2)
        {
          v13 = v4 + v6 + 376;
          if (v12)
          {
            v13 = *v11;
          }

          if (*v13)
          {
            break;
          }
        }
      }
    }

    v15 = v4 + v8;
    v16 = *(v4 + v8 + 496);
    if (v16)
    {
      *(v15 + 62) = 0;
      webrtc::EncoderOvershootDetector::UpdateHistograms(v16);
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v16 + 16));
      MEMORY[0x2743DA540](v16, 0x1080C407FFAD1B2);
      v14 = 0;
      v4 = v49;
      *(v49 + 61) = 0;
      goto LABEL_14;
    }

    v14 = 0;
    v17 = v48;
    v4 = v49;
    v18 = v48 + v8;
    if (*(v48 + v8 + 192) != 1)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (*(v18 + 47))
    {
      v19 = *(v10 + 46);
      if (v19 >= 4)
      {
        v20 = v11;
        if (v19)
        {
          v20 = *v11;
        }

        if (v20[1])
        {
          *(v50 + v7) = ++v14;
          if (!*(v4 + v8 + 504))
          {
            operator new();
          }

          v21 = v48 + v8;
          if (*(v48 + v8 + 200) != 1)
          {
            goto LABEL_36;
          }

          goto LABEL_29;
        }
      }
    }

LABEL_25:
    v22 = v4 + v8;
    v23 = *(v4 + v8 + 504);
    if (v23)
    {
      *(v22 + 63) = 0;
      webrtc::EncoderOvershootDetector::UpdateHistograms(v23);
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v23 + 16));
      MEMORY[0x2743DA540](v23, 0x1080C407FFAD1B2);
      v4 = v49;
      *(v49 + 61) = 0;
      v21 = v17 + v8;
      if (v21[200] != 1)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v4 = v49;
      v21 = v17 + v8;
      if (v21[200] != 1)
      {
        goto LABEL_36;
      }
    }

LABEL_29:
    if (*(v21 + 49))
    {
      v24 = *(v10 + 46);
      if (v24 >= 6)
      {
        v25 = v11;
        if (v24)
        {
          v25 = *v11;
        }

        if (v25[2])
        {
          v26 = v11;
          *(v50 + v7) = ++v14;
          if (!*(v4 + v8 + 512))
          {
            operator new();
          }

LABEL_38:
          v29 = v48 + v8;
          if (*(v48 + v8 + 208) != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }
    }

LABEL_36:
    v26 = v11;
    v27 = v4 + v8;
    v28 = *(v4 + v8 + 512);
    if (v28)
    {
      *(v27 + 64) = 0;
      webrtc::EncoderOvershootDetector::UpdateHistograms(v28);
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v28 + 16));
      MEMORY[0x2743DA540](v28, 0x1080C407FFAD1B2);
      v4 = v49;
      *(v49 + 61) = 0;
      goto LABEL_38;
    }

    v4 = v49;
    v29 = v48 + v8;
    if (*(v48 + v8 + 208) != 1)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (!*(v29 + 51))
    {
      goto LABEL_48;
    }

    v30 = *(v10 + 46);
    if (v30 < 8)
    {
      goto LABEL_48;
    }

    if (v30)
    {
      v26 = *v26;
    }

    if (!*(v26 + 3))
    {
LABEL_48:
      v32 = v4 + v8;
      v31 = v4;
      v33 = *(v4 + v8 + 520);
      if (v33)
      {
        *(v32 + 65) = 0;
        webrtc::EncoderOvershootDetector::UpdateHistograms(v33);
        std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v33 + 16));
        MEMORY[0x2743DA540](v33, 0x1080C407FFAD1B2);
        v31 = v49;
        *(v49 + 61) = 0;
      }

      goto LABEL_50;
    }

    *(v50 + v7) = v14 + 1;
    v31 = v4;
    if (!*(v4 + v8 + 520))
    {
      operator new();
    }

LABEL_50:
    v4 = v31;
    if (*(v31 + 1) != 1)
    {
      goto LABEL_3;
    }

    if (v47[184] == 1)
    {
      v34 = *(v47 + 45);
    }

    else
    {
      v34 = 0;
    }

    if (v18[192] == 1)
    {
      v35 = *(v18 + 47);
      if (v21[200] != 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v35 = 0;
      if (v21[200] != 1)
      {
LABEL_56:
        v36 = 0;
        if (v29[208] != 1)
        {
          goto LABEL_57;
        }

        goto LABEL_62;
      }
    }

    v36 = *(v21 + 49);
    if (v29[208] != 1)
    {
LABEL_57:
      v37 = v35 + v34;
      v38 = v31 + v7;
      v39 = *(v31 + v7 + 656);
      v40.var0 = (v37 + v36);
      if (v37 + v36)
      {
        goto LABEL_58;
      }

      goto LABEL_63;
    }

LABEL_62:
    v41 = v35 + v34;
    v42 = v36 + *(v29 + 51);
    v38 = v31 + v7;
    v39 = *(v31 + v7 + 656);
    v40.var0 = (v41 + v42);
    if (v41 + v42)
    {
LABEL_58:
      if (!v39)
      {
        operator new();
      }

      v9.var0 = v45;
      webrtc::RateUtilizationTracker::OnDataRateChanged(v39, v40, v9);
      goto LABEL_3;
    }

LABEL_63:
    *(v38 + 82) = 0;
    if (v39)
    {
      v43 = v39;
      std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](v39 + 3);
      v44 = v43;
      v4 = v49;
      MEMORY[0x2743DA540](v44, 0x1080C40D009A8DELL);
    }

LABEL_3:
    v8 += 32;
    v7 += 8;
    v6 += 24;
    v3 = v48;
    if (v8 == 160)
    {
      *a3 = 0;
      *(a3 + 4) = 0;
      *(a3 + 8) = 0;
      *(a3 + 12) = 0;
      *(a3 + 16) = 0;
      *(a3 + 20) = 0;
      *(a3 + 24) = 0;
      *(a3 + 28) = 0;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      *(a3 + 40) = 0;
      *(a3 + 44) = 0;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      *(a3 + 60) = 0;
      *(a3 + 64) = 0;
      *(a3 + 68) = 0;
      *(a3 + 72) = 0;
      *(a3 + 76) = 0;
      *(a3 + 80) = 0;
      *(a3 + 84) = 0;
      *(a3 + 88) = 0;
      *(a3 + 92) = 0;
      *(a3 + 96) = 0;
      *(a3 + 100) = 0;
      *(a3 + 104) = 0;
      *(a3 + 108) = 0;
      *(a3 + 112) = 0;
      *(a3 + 116) = 0;
      *(a3 + 120) = 0;
      *(a3 + 124) = 0;
      *(a3 + 128) = 0;
      *(a3 + 132) = 0;
      *(a3 + 136) = 0;
      *(a3 + 140) = 0;
      *(a3 + 144) = 0;
      *(a3 + 148) = 0;
      *(a3 + 152) = 0;
      *(a3 + 156) = 0;
      *(a3 + 160) = 0;
      *(a3 + 164) = 0;
      operator new();
    }
  }

  *(v50 + v7) = 1;
  v14 = 1;
  if (!*(v4 + v8 + 496))
  {
    operator new();
  }

LABEL_14:
  v17 = v48;
  v18 = v48 + v8;
  if (*(v48 + v8 + 192) != 1)
  {
    goto LABEL_25;
  }

  goto LABEL_17;
}

void webrtc::EncoderBitrateAdjuster::OnEncoderInfo(webrtc::EncoderBitrateAdjuster *this, const webrtc::VideoEncoder::EncoderInfo *a2)
{
  v3 = (this + 368);
  if (v3 != (a2 + 56))
  {
    v5 = *(a2 + 7);
    if (v5)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = a2 + 64;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(v3, v6, v5 >> 1);
    v7 = *(a2 + 10);
    if (v7)
    {
      v8 = *(a2 + 11);
    }

    else
    {
      v8 = a2 + 88;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(this + 49, v8, v7 >> 1);
    v9 = *(a2 + 13);
    if (v9)
    {
      v10 = *(a2 + 14);
    }

    else
    {
      v10 = a2 + 112;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(this + 52, v10, v9 >> 1);
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = *(a2 + 17);
    }

    else
    {
      v12 = a2 + 136;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(this + 55, v12, v11 >> 1);
    v15 = *(a2 + 20);
    v14 = a2 + 160;
    v13 = v15;
    v16 = *(v14 - 1);
    if (v16)
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(this + 58, v17, v16 >> 1);
  }

  webrtc::EncoderBitrateAdjuster::AdjustRateAllocation(this, (this + 8), v18);
}

void webrtc::EncoderBitrateAdjuster::OnEncodedFrame(uint64_t a1, uint64_t a2, int a3, int a4)
{
  ++*(a1 + 488);
  v6 = a3;
  v7 = *(a1 + 32 * a3 + 8 * a4 + 496);
  if (v7)
  {
    if (webrtc::g_clock)
    {
      v8 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v8 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    webrtc::EncoderOvershootDetector::OnEncodedFrame(v7, a2, v8 / 1000000, v9, v10, v11);
  }

  v12 = *(a1 + 8 * v6 + 656);
  if (v12)
  {
    v13.var0 = (*(**(a1 + 728) + 16))(*(a1 + 728));
    v14.var0 = a2;

    webrtc::RateUtilizationTracker::OnDataProduced(v12, v14, v13);
  }
}

void webrtc::EncoderBitrateAdjuster::Reset(webrtc::EncoderBitrateAdjuster *this)
{
  v2 = *(this + 62);
  *(this + 62) = 0;
  if (v2)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v2);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v2 + 16));
    MEMORY[0x2743DA540](v2, 0x1080C407FFAD1B2);
  }

  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v3);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v3 + 16));
    MEMORY[0x2743DA540](v3, 0x1080C407FFAD1B2);
  }

  v4 = *(this + 64);
  *(this + 64) = 0;
  if (v4)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v4);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v4 + 16));
    MEMORY[0x2743DA540](v4, 0x1080C407FFAD1B2);
  }

  v5 = *(this + 65);
  *(this + 65) = 0;
  if (v5)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v5);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v5 + 16));
    MEMORY[0x2743DA540](v5, 0x1080C407FFAD1B2);
  }

  v6 = *(this + 82);
  *(this + 82) = 0;
  if (v6)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v6 + 24));
    MEMORY[0x2743DA540](v6, 0x1080C40D009A8DELL);
  }

  v7 = *(this + 66);
  *(this + 66) = 0;
  if (v7)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v7);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v7 + 16));
    MEMORY[0x2743DA540](v7, 0x1080C407FFAD1B2);
  }

  v8 = *(this + 67);
  *(this + 67) = 0;
  if (v8)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v8);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v8 + 16));
    MEMORY[0x2743DA540](v8, 0x1080C407FFAD1B2);
  }

  v9 = *(this + 68);
  *(this + 68) = 0;
  if (v9)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v9);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v9 + 16));
    MEMORY[0x2743DA540](v9, 0x1080C407FFAD1B2);
  }

  v10 = *(this + 69);
  *(this + 69) = 0;
  if (v10)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v10);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v10 + 16));
    MEMORY[0x2743DA540](v10, 0x1080C407FFAD1B2);
  }

  v11 = *(this + 83);
  *(this + 83) = 0;
  if (v11)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v11 + 24));
    MEMORY[0x2743DA540](v11, 0x1080C40D009A8DELL);
  }

  v12 = *(this + 70);
  *(this + 70) = 0;
  if (v12)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v12);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v12 + 16));
    MEMORY[0x2743DA540](v12, 0x1080C407FFAD1B2);
  }

  v13 = *(this + 71);
  *(this + 71) = 0;
  if (v13)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v13);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v13 + 16));
    MEMORY[0x2743DA540](v13, 0x1080C407FFAD1B2);
  }

  v14 = *(this + 72);
  *(this + 72) = 0;
  if (v14)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v14);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v14 + 16));
    MEMORY[0x2743DA540](v14, 0x1080C407FFAD1B2);
  }

  v15 = *(this + 73);
  *(this + 73) = 0;
  if (v15)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v15);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v15 + 16));
    MEMORY[0x2743DA540](v15, 0x1080C407FFAD1B2);
  }

  v16 = *(this + 84);
  *(this + 84) = 0;
  if (v16)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v16 + 24));
    MEMORY[0x2743DA540](v16, 0x1080C40D009A8DELL);
  }

  v17 = *(this + 74);
  *(this + 74) = 0;
  if (v17)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v17);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v17 + 16));
    MEMORY[0x2743DA540](v17, 0x1080C407FFAD1B2);
  }

  v18 = *(this + 75);
  *(this + 75) = 0;
  if (v18)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v18);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v18 + 16));
    MEMORY[0x2743DA540](v18, 0x1080C407FFAD1B2);
  }

  v19 = *(this + 76);
  *(this + 76) = 0;
  if (v19)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v19);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v19 + 16));
    MEMORY[0x2743DA540](v19, 0x1080C407FFAD1B2);
  }

  v20 = *(this + 77);
  *(this + 77) = 0;
  if (v20)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v20);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v20 + 16));
    MEMORY[0x2743DA540](v20, 0x1080C407FFAD1B2);
  }

  v21 = *(this + 85);
  *(this + 85) = 0;
  if (v21)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v21 + 24));
    MEMORY[0x2743DA540](v21, 0x1080C40D009A8DELL);
  }

  v22 = *(this + 78);
  *(this + 78) = 0;
  if (v22)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v22);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v22 + 16));
    MEMORY[0x2743DA540](v22, 0x1080C407FFAD1B2);
  }

  v23 = *(this + 79);
  *(this + 79) = 0;
  if (v23)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v23);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v23 + 16));
    MEMORY[0x2743DA540](v23, 0x1080C407FFAD1B2);
  }

  v24 = *(this + 80);
  *(this + 80) = 0;
  if (v24)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v24);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v24 + 16));
    MEMORY[0x2743DA540](v24, 0x1080C407FFAD1B2);
  }

  v25 = *(this + 81);
  *(this + 81) = 0;
  if (v25)
  {
    webrtc::EncoderOvershootDetector::UpdateHistograms(v25);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v25 + 16));
    MEMORY[0x2743DA540](v25, 0x1080C407FFAD1B2);
  }

  v26 = *(this + 86);
  *(this + 86) = 0;
  if (v26)
  {
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100]((v26 + 24));
    MEMORY[0x2743DA540](v26, 0x1080C40D009A8DELL);
  }

  webrtc::EncoderBitrateAdjuster::AdjustRateAllocation(this, (this + 8), v27);
}

void **std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](void **result)
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
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    while (v8 != v2[(result[5] + v5) / 0xAA] + 24 * ((result[5] + v5) % 0xAA))
    {
      if (!v8)
      {
        __break(1u);
        return result;
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
    v11 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 170;
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

void absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = a1 + 1;
    if (a3 <= 0x10)
    {
      goto LABEL_3;
    }

LABEL_21:
    operator new();
  }

  v5 = a1[1];
  if (a1[2] < a3)
  {
    goto LABEL_21;
  }

LABEL_3:
  v6 = v4 >> 1;
  v7 = a3 >= v4 >> 1;
  v8 = a3 - (v4 >> 1);
  if (!v7)
  {
    v8 = 0;
  }

  if (v6 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v11 = a2;
    if (v6 < a3)
    {
      goto LABEL_17;
    }

LABEL_27:
    v22 = *a1;
LABEL_40:
    *a1 = v22 & 1 | (2 * a3);
    return;
  }

  v10 = 0;
  if (v9 < 0x20)
  {
    goto LABEL_14;
  }

  if (v5 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFE0;
  v11 = (a2 + (v9 & 0x7FFFFFFFFFFFFFE0));
  v12 = v5 + 2;
  v13 = (a2 + 16);
  v14 = v9 & 0x7FFFFFFFFFFFFFE0;
  do
  {
    v15 = *v13;
    *(v12 - 1) = *(v13 - 1);
    *v12 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 32;
  }

  while (v14);
  v3 = (a2 + (v9 & 0x7FFFFFFFFFFFFFE0));
  if (v9 != v10)
  {
LABEL_14:
    v16 = v9 - v10;
    v17 = v5 + v10;
    v11 = v3;
    do
    {
      v18 = *v11++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  if (v6 >= a3)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v5)
  {
    v19 = v5 + v6;
    v20 = 0;
    if (v8 < 8 || (v19 - v11) < 0x20)
    {
      v21 = v11;
    }

    else
    {
      if (v8 < 0x20)
      {
        v20 = 0;
        goto LABEL_32;
      }

      v20 = v8 & 0xFFFFFFFFFFFFFFE0;
      v23 = v19 + 16;
      v24 = (v11 + 16);
      v25 = v8 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v26 = *v24;
        *(v23 - 1) = *(v24 - 1);
        *v23 = v26;
        v23 += 2;
        v24 += 2;
        v25 -= 32;
      }

      while (v25);
      if (v8 == v20)
      {
        goto LABEL_39;
      }

      if ((v8 & 0x18) != 0)
      {
LABEL_32:
        v27 = v20;
        v20 = v8 & 0xFFFFFFFFFFFFFFF8;
        v21 = &v11[v8 & 0xFFFFFFFFFFFFFFF8];
        v28 = &v19[v27];
        v29 = &v11[v27];
        v30 = v27 - (v8 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v31 = *v29++;
          *v28 = v31;
          v28 += 8;
          v30 += 8;
        }

        while (v30);
        if (v8 == v20)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v21 = &v11[v20];
    }

LABEL_37:
    v32 = v8 - v20;
    v33 = &v19[v20];
    do
    {
      v34 = *v21++;
      *v33++ = v34;
      --v32;
    }

    while (v32);
LABEL_39:
    v22 = *a1;
    goto LABEL_40;
  }

  __break(1u);
}

void webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>, __n128 a4@<Q0>)
{
  if ((a1 & 0x100000000) != 0 && a1 > 0)
  {
    v5 = a2[1];
    if (v5 != *a2)
    {
      if (((v5 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(0, 0, 0, 1, a4);
    *a3 = 0;
    a3[16] = 0;
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }
}

void webrtc::EncoderInfoSettings::EncoderInfoSettings(void *a1)
{
  *a1 = &unk_288293320;
  a1[1] = &unk_288293910;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new();
}

uint64_t webrtc::FieldTrialStructList<webrtc::EncoderInfoSettings::BitrateLimit>::~FieldTrialStructList(uint64_t a1)
{
  *a1 = &unk_2882933C0;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293760;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 64);
    }

    *(a1 + 72) = v3;
    operator delete(v5);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  return a1;
}

void webrtc::EncoderInfoSettings::~EncoderInfoSettings(webrtc::EncoderInfoSettings *this)
{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::SimulcastEncoderAdapterEncoderInfoSettings::~SimulcastEncoderAdapterEncoderInfoSettings(webrtc::SimulcastEncoderAdapterEncoderInfoSettings *this)
{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::LibvpxVp8EncoderInfoSettings::~LibvpxVp8EncoderInfoSettings(webrtc::LibvpxVp8EncoderInfoSettings *this)
{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::LibvpxVp9EncoderInfoSettings::~LibvpxVp9EncoderInfoSettings(webrtc::LibvpxVp9EncoderInfoSettings *this)
{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::LibaomAv1EncoderInfoSettings::~LibaomAv1EncoderInfoSettings(webrtc::LibaomAv1EncoderInfoSettings *this)
{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_288293320;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  *(this + 10) = &unk_288293910;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  *(this + 1) = &unk_288293910;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  for (i = a1; ; *(i - 3) = v100)
  {
LABEL_2:
    a1 = i;
    v13 = (a2 - i) >> 4;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v19 = (i + 4);
          v55 = i[4];
          v58 = a2[-1].n128_u32[0];
          v57 = a2 - 1;
          v56 = v58;
          if (v55 < *i)
          {
            if (v56 >= v55)
            {
              v124 = *i;
              *i = *v19;
              result = v124;
              *v19 = v124;
              if (v57->n128_u32[0] < i[4])
              {
                result = *v19;
                *v19 = *v57;
                *v57 = result;
              }

              return result;
            }

LABEL_120:
            v125 = *i;
            *i = *v57;
            result = v125;
            *v57 = v125;
            return result;
          }

          if (v56 >= v55)
          {
            return result;
          }

          result = *v19;
          *v19 = *v57;
          *v57 = result;
LABEL_201:
          if (*(a1 + 16) < *a1)
          {
            v133 = *a1;
            *a1 = *v19;
            result = v133;
            *v19 = v133;
          }

          return result;
        case 4:
          v19 = (i + 4);
          v60 = i[4];
          v39 = (i + 8);
          LODWORD(v38) = i[8];
          if (v60 >= *i)
          {
            if (v38 < v60)
            {
              result = *v19;
              *v19 = *v39;
              *v39 = result;
              if (i[4] < *i)
              {
                v130 = *i;
                *i = *v19;
                result = v130;
                *v19 = v130;
              }
            }
          }

          else
          {
            if (v38 < v60)
            {
              v126 = *i;
              *i = *v39;
              result = v126;
              goto LABEL_197;
            }

LABEL_195:
            v132 = *a1;
            *a1 = *v19;
            result = v132;
            *v19 = v132;
            if (v38 < *(a1 + 16))
            {
              result = *v19;
              *v19 = *v39;
LABEL_197:
              *v39 = result;
            }
          }

          if (v9->n128_u32[0] >= *v39)
          {
            return result;
          }

          result = *v39;
          *v39 = *v9;
          *v9 = result;
          if (*v39 >= *v19)
          {
            return result;
          }

          result = *v19;
          *v19 = *v39;
          *v39 = result;
          goto LABEL_201;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,0>(i, i + 1, i + 8, i + 3, a2[-1].n128_u64, result).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v59 = a2[-1].n128_i32[0];
        v57 = a2 - 1;
        if (v59 >= *i)
        {
          return result;
        }

        goto LABEL_120;
      }
    }

    if (v13 <= 23)
    {
      v38 = (i + 4);
      v62 = i == a2 || v38 == a2;
      if (a4)
      {
        if (v62)
        {
          return result;
        }

        v63 = 0;
        v64 = i;
        while (1)
        {
          v66 = v38;
          v67 = v64[1].n128_i32[0];
          if (v67 < v64->n128_u32[0])
          {
            v127 = *(v64[1].n128_i64 + 4);
            v134 = v64[1].n128_u32[3];
            v68 = v63;
            do
            {
              result = *(i + v68);
              *(i + v68 + 16) = result;
              if (!v68)
              {
                v65 = i;
                goto LABEL_134;
              }

              v69 = *(i + v68 - 16);
              v68 -= 16;
            }

            while (v67 < v69);
            v65 = i + v68 + 16;
LABEL_134:
            *v65 = v67;
            *(v65 + 12) = v134;
            *(v65 + 4) = v127;
          }

          v38 = v66 + 1;
          v63 += 16;
          v64 = v66;
          if (&v66[1] == a2)
          {
            return result;
          }
        }
      }

      if (v62)
      {
        return result;
      }

      v19 = 16;
      v39 = i;
      while (1)
      {
        LODWORD(v38) = v38->n128_u32[0];
        if (v38 < *v39)
        {
          v97 = 0;
          v131 = *(v39 + 20);
          v136 = *(v39 + 28);
          do
          {
            result = *(v39 + v97);
            *(v39 + v97 + 16) = result;
            if (!(v19 + v97))
            {
              goto LABEL_194;
            }

            v98 = *(v39 + v97 - 16);
            v97 -= 16;
          }

          while (v38 < v98);
          v96 = v39 + v97;
          *(v96 + 16) = v38;
          *(v96 + 28) = v136;
          *(v96 + 20) = v131;
        }

        v39 += 16;
        v19 += 16;
        v38 = (i + v19);
        if ((i + v19) == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = &i[4 * (v13 >> 1)];
    v15 = v14;
    v16 = v9->n128_u32[0];
    if (v13 < 0x81)
    {
      v18 = *i;
      if (*i >= *v14)
      {
        if (v16 < v18)
        {
          v109 = *i;
          *i = *v9;
          result = v109;
          *v9 = v109;
          if (*i < *v14)
          {
            v110 = *v14;
            *v14 = *i;
            result = v110;
            *i = v110;
            --a3;
            v19 = *i;
            if (a4)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v16 < v18)
        {
          v106 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v113 = *v14;
        *v14 = *i;
        result = v113;
        *i = v113;
        if (v9->n128_u32[0] < *i)
        {
          v106 = *i;
          *i = *v9;
LABEL_36:
          result = v106;
          *v9 = v106;
        }
      }

      --a3;
      v19 = *i;
      if (a4)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v17 = *v14;
    if (*v14 >= *i)
    {
      if (v16 < v17)
      {
        v107 = *v14;
        *v14 = *v9;
        *v9 = v107;
        if (*v14 < *i)
        {
          v108 = *i;
          *i = *v14;
          *v14 = v108;
        }
      }
    }

    else
    {
      if (v16 >= v17)
      {
        v111 = *i;
        *i = *v14;
        *v14 = v111;
        if (v9->n128_u32[0] >= *v14)
        {
          goto LABEL_28;
        }

        v105 = *v14;
        *v14 = *v9;
      }

      else
      {
        v105 = *i;
        *i = *v9;
      }

      *v9 = v105;
    }

LABEL_28:
    v20 = (i + 4);
    v21 = v14 - 4;
    v22 = *(v14 - 4);
    v23 = v10->n128_u32[0];
    if (v22 >= i[4])
    {
      if (v23 < v22)
      {
        v112 = *v21;
        *v21 = *v10;
        *v10 = v112;
        if (*v21 < v20->n128_u32[0])
        {
          v25 = *v20;
          *v20 = *v21;
          *v21 = v25;
        }
      }
    }

    else
    {
      if (v23 >= v22)
      {
        v26 = *v20;
        *v20 = *v21;
        *v21 = v26;
        if (v10->n128_u32[0] >= *v21)
        {
          goto LABEL_42;
        }

        v114 = *v21;
        *v21 = *v10;
        v24 = v114;
      }

      else
      {
        v24 = *v20;
        *v20 = *v10;
      }

      *v10 = v24;
    }

LABEL_42:
    v27 = (i + 8);
    v30 = v14[4];
    v28 = (v14 + 4);
    v29 = v30;
    v31 = v11->n128_u32[0];
    if (v30 >= i[8])
    {
      if (v31 < v29)
      {
        v115 = *v28;
        *v28 = *v11;
        *v11 = v115;
        if (v28->n128_u32[0] < v27->n128_u32[0])
        {
          v33 = *v27;
          *v27 = *v28;
          *v28 = v33;
        }
      }
    }

    else
    {
      if (v31 >= v29)
      {
        v34 = *v27;
        *v27 = *v28;
        *v28 = v34;
        if (v11->n128_u32[0] >= v28->n128_u32[0])
        {
          goto LABEL_51;
        }

        v116 = *v28;
        *v28 = *v11;
        v32 = v116;
      }

      else
      {
        v32 = *v27;
        *v27 = *v11;
      }

      *v11 = v32;
    }

LABEL_51:
    v35 = *v15;
    v36 = v28->n128_u32[0];
    if (*v15 >= *v21)
    {
      if (v36 < v35)
      {
        v118 = *v15;
        *v15 = *v28;
        *v28 = v118;
        if (*v15 < *v21)
        {
          v119 = *v21;
          *v21 = *v15;
          *v15 = v119;
        }
      }
    }

    else
    {
      if (v36 >= v35)
      {
        v120 = *v21;
        *v21 = *v15;
        *v15 = v120;
        if (v28->n128_u32[0] >= *v15)
        {
          goto LABEL_60;
        }

        v117 = *v15;
        *v15 = *v28;
      }

      else
      {
        v117 = *v21;
        *v21 = *v28;
      }

      *v28 = v117;
    }

LABEL_60:
    v121 = *i;
    *i = *v15;
    result = v121;
    *v15 = v121;
    --a3;
    v19 = *i;
    if (a4)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(i - 4) < v19)
    {
LABEL_62:
      v37 = 0;
      LODWORD(v38) = i[3];
      v102 = v38;
      v99 = *(i + 1);
      do
      {
        v39 = &i[v37 + 4];
        if (v39 == a2)
        {
          goto LABEL_194;
        }

        v37 += 4;
      }

      while (*v39 < v19);
      v39 = &i[v37];
      v38 = a2;
      if (v37 != 4)
      {
        while (v38 != i)
        {
          v40 = v38[-1].n128_i32[0];
          --v38;
          if (v40 < v19)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_194;
      }

      v38 = a2;
      do
      {
        if (v39 >= v38)
        {
          break;
        }

        v41 = v38[-1].n128_i32[0];
        --v38;
      }

      while (v41 >= v19);
LABEL_72:
      i = (i + v37 * 4);
      if (v39 < v38)
      {
        v42 = v38;
LABEL_74:
        v122 = *i;
        *i = *v42;
        result = v122;
        *v42 = v122;
        v43 = (i + 4);
        while (v43 != a2)
        {
          v44 = v43->n128_u32[0];
          ++v43;
          if (v44 >= v19)
          {
            i = &v43[-1];
            while (v42 != a1)
            {
              v45 = v42[-1].n128_i32[0];
              --v42;
              if (v45 < v19)
              {
                if (i < v42)
                {
                  goto LABEL_74;
                }

                goto LABEL_81;
              }
            }

            break;
          }
        }

LABEL_194:
        __break(1u);
        goto LABEL_195;
      }

LABEL_81:
      v46 = (i - 4);
      if (i - 4 != a1)
      {
        result = *v46;
        *a1 = *v46;
      }

      *(i - 4) = v19;
      *(i - 1) = v102;
      *(i - 3) = v99;
      if (v39 < v38)
      {
        goto LABEL_86;
      }

      v47 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*>(a1, (i - 4), result);
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*>(i, a2, v48))
      {
        if (v47)
        {
          goto LABEL_2;
        }

LABEL_86:
        std::__introsort<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,false>(a1, i - 4, a3, a4 & 1);
        a4 = 0;
        goto LABEL_2;
      }

      a2 = (i - 4);
      if (v47)
      {
        return result;
      }

      goto LABEL_1;
    }

    LODWORD(v38) = i[3];
    v103 = v38;
    v100 = *(i + 1);
    if (v19 >= v9->n128_u32[0])
    {
      v50 = i + 4;
      do
      {
        i = v50;
        if (v50 >= a2)
        {
          break;
        }

        v50 += 4;
        LODWORD(v38) = *i;
      }

      while (v19 >= *i);
    }

    else
    {
      v39 = (i + 4);
      do
      {
        if (v39 == a2)
        {
          goto LABEL_194;
        }

        v49 = *v39;
        v39 += 16;
        LODWORD(v38) = v49;
      }

      while (v19 >= v49);
      i = (v39 - 16);
    }

    v39 = a2;
    if (i < a2)
    {
      v39 = a2;
      while (v39 != a1)
      {
        v51 = *(v39 - 16);
        v39 -= 16;
        LODWORD(v38) = v51;
        if (v19 >= v51)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_194;
    }

LABEL_106:
    if (i < v39)
    {
      v123 = *i;
      *i = *v39;
      result = v123;
      *v39 = v123;
      v38 = (i + 4);
      while (v38 != a2)
      {
        v52 = v38->n128_u32[0];
        ++v38;
        if (v19 < v52)
        {
          i = &v38[-1];
          while (v39 != a1)
          {
            v53 = *(v39 - 16);
            v39 -= 16;
            LODWORD(v38) = v53;
            if (v19 >= v53)
            {
              goto LABEL_106;
            }
          }

          goto LABEL_194;
        }
      }

      goto LABEL_194;
    }

    v54 = (i - 4);
    if (i - 4 != a1)
    {
      result = *v54;
      *a1 = *v54;
    }

    a4 = 0;
    *(i - 4) = v19;
    *(i - 1) = v103;
  }

  if (i == a2)
  {
    return result;
  }

  v70 = (v13 - 2) >> 1;
  v71 = v70;
  while (2)
  {
    if (v70 >= v71)
    {
      v72 = (2 * (v71 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v73 = &i[4 * v72];
      if (2 * (v71 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v76 = &i[4 * v71];
        v77 = *v76;
        if (*v73 >= *v76)
        {
LABEL_154:
          v135 = v76[3];
          v128 = *(v76 + 1);
          while (1)
          {
            v80 = v76;
            v76 = v73;
            *v80 = *v73;
            if (v70 < v72)
            {
              break;
            }

            v81 = (2 * (v72 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v73 = &i[4 * v81];
            v72 = 2 * v72 + 2;
            if (v72 < v13)
            {
              v78 = *v73;
              v79 = v73[4];
              if (*v73 <= v79)
              {
                v78 = v73[4];
              }

              if (*v73 >= v79)
              {
                v72 = v81;
              }

              else
              {
                v73 += 4;
              }

              if (v78 < v77)
              {
                break;
              }
            }

            else
            {
              v72 = v81;
              if (*v73 < v77)
              {
                break;
              }
            }
          }

          *v76 = v77;
          v76[3] = v135;
          *(v76 + 1) = v128;
        }
      }

      else
      {
        v74 = v73[4];
        v75 = *v73 < v74;
        if (*v73 > v74)
        {
          v74 = *v73;
        }

        if (v75)
        {
          v73 += 4;
          v72 = 2 * (v71 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v76 = &i[4 * v71];
        v77 = *v76;
        if (v74 >= *v76)
        {
          goto LABEL_154;
        }
      }
    }

    v75 = v71-- <= 0;
    if (!v75)
    {
      continue;
    }

    break;
  }

  do
  {
    v82 = 0;
    v129 = *i;
    v83 = (v13 - 2) >> 1;
    v84 = i;
    do
    {
      while (1)
      {
        v88 = &v84[v82];
        v87 = v88 + 1;
        v89 = (2 * v82) | 1;
        v82 = 2 * v82 + 2;
        if (v82 < v13)
        {
          break;
        }

        v82 = v89;
        *v84 = *v87;
        v84 = v88 + 1;
        if (v89 > v83)
        {
          goto LABEL_174;
        }
      }

      v86 = v88[2].n128_i32[0];
      v85 = v88 + 2;
      if (v85[-1].n128_u32[0] >= v86)
      {
        v82 = v89;
      }

      else
      {
        v87 = v85;
      }

      *v84 = *v87;
      v84 = v87;
    }

    while (v82 <= v83);
LABEL_174:
    if (v87 == --a2)
    {
      result = v129;
      *v87 = v129;
    }

    else
    {
      *v87 = *a2;
      result = v129;
      *a2 = v129;
      v90 = (v87 - i + 16) >> 4;
      v75 = v90 < 2;
      v91 = v90 - 2;
      if (!v75)
      {
        v92 = v91 >> 1;
        v93 = &i[4 * v92];
        v94 = v87->n128_u32[0];
        if (v93->n128_u32[0] < v87->n128_u32[0])
        {
          v104 = v87->n128_u32[3];
          v101 = *(v87->n128_u64 + 4);
          do
          {
            v95 = v87;
            v87 = v93;
            result = *v93;
            *v95 = *v93;
            if (!v92)
            {
              break;
            }

            v92 = (v92 - 1) >> 1;
            v93 = &i[4 * v92];
          }

          while (v93->n128_u32[0] < v94);
          v87->n128_u32[0] = v94;
          v87->n128_u32[3] = v104;
          *(v87->n128_u64 + 4) = v101;
        }
      }
    }

    v75 = v13-- <= 2;
  }

  while (!v75);
  return result;
}

__n128 std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,0>(__n128 *a1, __n128 *a2, int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = *(a2 - 16);
      v4 = (a2 - 16);
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u32[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_48:
      if (*(a1 + 16) < *a1)
      {
        v42 = *a1;
        *a1 = *v7;
        *v7 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::EncoderInfoSettings::GetSinglecastBitrateLimitForResolutionWhenQpIsUntrusted(std::optional<int>,std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits> const&)::$_0 &,webrtc::VideoEncoder::ResolutionBitrateLimits*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = (a2 - 16);
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u32[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_45;
    }

    if (v20 >= v18)
    {
      v39 = *a1;
      *a1 = *v7;
      *v7 = v39;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_45;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_45:
    if (v21->n128_u32[0] >= v19->n128_u32[0])
    {
      return 1;
    }

    v40 = *v19;
    *v19 = *v21;
    *v21 = v40;
    if (v19->n128_u32[0] >= v7->n128_u32[0])
    {
      return 1;
    }

    v41 = *v7;
    *v7 = *v19;
    *v19 = v41;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 16);
    v4 = (a2 - 16);
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u32[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v36 = *v32;
    if (*v32 < v12->n128_u32[0])
    {
      v43 = *(v32 + 4);
      v44 = *(v32 + 12);
      v37 = v33;
      do
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          v35 = a1;
          goto LABEL_35;
        }

        v38 = *(a1 + v37 + 16);
        v37 -= 16;
      }

      while (v36 < v38);
      v35 = a1 + v37 + 48;
LABEL_35:
      *v35 = v36;
      *(v35 + 4) = v43;
      *(v35 + 12) = v44;
      if (++v34 == 8)
      {
        return v32 + 16 == a2;
      }
    }

    v12 = v32;
    v33 += 16;
    v32 += 16;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

void webrtc::FieldTrialStructList<webrtc::EncoderInfoSettings::BitrateLimit>::~FieldTrialStructList(uint64_t a1)
{
  *a1 = &unk_2882933C0;
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  *a1 = &unk_288293760;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 64);
    }

    *(a1 + 72) = v3;
    operator delete(v5);
  }

  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::FieldTrialStructList<webrtc::EncoderInfoSettings::BitrateLimit>::ParseDone(void *a1)
{
  v1 = a1[8];
  v2 = a1[9];
  if (v1 != v2)
  {
    v4 = -1;
    while ((*((*(**v1 + 24))() + 57) & 1) == 0)
    {
      if (*((*(**v1 + 24))() + 58) == 1)
      {
        v5 = (*(**v1 + 24))();
        v6 = (*(*v5 + 32))(v5);
        if (v4 == -1)
        {
          v4 = v6;
        }

        else if (v4 != v6)
        {
          return;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        if (v4 != -1)
        {
          if (v4)
          {
            if ((v4 & 0x80000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v7 = a1[8];
          v8 = a1[9];
          while (v7 != v8)
          {
            v9 = *v7++;
            (*(*v9 + 24))(v9);
          }

          v10 = a1[11];
          a1[11] = 0;
          a1[12] = 0;
          a1[13] = 0;
          if (v10)
          {

            operator delete(v10);
          }
        }

        return;
      }
    }
  }
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_0,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_0>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_0)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_0,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_0>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_0)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2882933F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_1,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_1>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_1)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_1,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_1>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_1)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288293438;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_2,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_2>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_2)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_2,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_2>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_2)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288293480;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_3,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_3>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_3)::{lambda(void *,int)#1},std::allocator<webrtc::FieldTrialListWrapper * webrtc::FieldTrialStructMember<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_3,webrtc::field_trial_list_impl::LambdaTypeTraits<webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_3>>(std::string_view,webrtc::EncoderInfoSettings::EncoderInfoSettings(webrtc::FieldTrialsView const&,std::string_view)::$_3)::{lambda(void *,int)#1}>,void ()(void *,int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2882934C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t webrtc::EncoderOvershootDetector::UpdateHistograms(uint64_t this)
{
  if (*(this + 120))
  {
    operator new();
  }

  return this;
}

void webrtc::EncoderOvershootDetector::SetTargetRate(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 8);
    if (v5 >= 1 && v6 != -1)
    {
      v8 = ((a3 - v6) * v5 * 0xDF3B645A1CAC0831) >> 64;
      v9 = (v8 >> 7) + (v8 >> 63);
      v10 = *(a1 + 88);
      v11 = -v10;
      if (v10 >= 5.0)
      {
        v11 = -5.0;
      }

      v12 = (v11 / v10 * v5);
      v13 = vaddq_s64(vdupq_n_s64(v9), *(a1 + 96));
      v14.i64[0] = 0;
      v14.i64[1] = v12;
      *(a1 + 96) = vbslq_s8(vcgtq_s64(v13, v14), v13, v14);
    }

    *(a1 + 8) = a3;
    goto LABEL_10;
  }

  if (!a2)
  {
LABEL_10:
    *(a1 + 80) = a2;
    *(a1 + 88) = a4;
    return;
  }

  *(a1 + 8) = a3;
  v15 = *(a1 + 24);
  v16 = *(a1 + 32) - v15;
  if (v16)
  {
    v17 = (a1 + 56);
    v18 = *(a1 + 48);
    v19 = &v15[v18 / 0xAA];
    v20 = *v19;
    v21 = *v19 + 24 * (v18 % 0xAA);
    while (v21 != v15[(*(a1 + 56) + v18) / 0xAA] + 24 * ((*(a1 + 56) + v18) % 0xAA))
    {
      if (!v21)
      {
        __break(1u);
        return;
      }

      v21 += 24;
      if (v21 - v20 == 4080)
      {
        v22 = v19[1];
        ++v19;
        v20 = v22;
        v21 = v22;
      }
    }
  }

  else
  {
    v17 = (a1 + 56);
  }

  *v17 = 0;
  v23 = v16 >> 3;
  if (v23 >= 3)
  {
    v24 = a2;
    v25 = a4;
    do
    {
      operator delete(*v15);
      v26 = *(a1 + 32);
      v15 = (*(a1 + 24) + 8);
      *(a1 + 24) = v15;
      v23 = (v26 - v15) >> 3;
    }

    while (v23 > 2);
    a4 = v25;
    a2 = v24;
  }

  if (v23 == 1)
  {
    v27 = 85;
    goto LABEL_27;
  }

  if (v23 == 2)
  {
    v27 = 170;
LABEL_27:
    *(a1 + 48) = v27;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a4;
}

int64x2_t webrtc::EncoderOvershootDetector::OnEncodedFrame(webrtc::EncoderOvershootDetector *this, uint64_t a2, uint64_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *(this + 1);
  if (v6 != -1)
  {
    v7 = *(this + 10);
    if (v7 >= 1)
    {
      v8 = (v7 * (a3 - v6) * 0xDF3B645A1CAC0831) >> 64;
      v9 = (v8 >> 7) + (v8 >> 63);
      v10 = *(this + 11);
      v11 = -v10;
      if (v10 >= 5.0)
      {
        v11 = -5.0;
      }

      v12 = (v11 / v10 * v7);
      result = vaddq_s64(vdupq_n_s64(v9), *(this + 6));
      v14.i64[0] = 0;
      v14.i64[1] = v12;
      a6 = vcgtq_s64(result, v14);
      *(this + 6) = vbslq_s8(a6, result, v14);
    }
  }

  *(this + 1) = a3;
  result.i64[0] = *(this + 11);
  if (*result.i64 > 0.0)
  {
    v15 = *(this + 10);
    if (v15)
    {
      *result.i64 = (*result.i64 * 0.5 + v15) / *result.i64;
      v16 = *result.i64;
      if (*result.i64)
      {
        v17 = 8 * a2;
        v18 = *(this + 12);
        v19 = *(this + 13);
        v20 = v18 + 8 * a2;
        if (v20 - v16 < v18)
        {
          v18 = v20 - v16;
        }

        if (v20 <= v16)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18;
        }

        v22 = v21 / v16 + 1.0;
        *a6.i64 = fmax(v17 / v16, 1.0);
        v24 = *(this + 6);
        v23 = *(this + 7);
        if (!v23)
        {
          v22 = *a6.i64;
        }

        v25 = v19 + v17;
        if (v19 + v17 - v16 < v19)
        {
          v19 = v19 + v17 - v16;
        }

        if (v25 <= v16)
        {
          v19 = 0;
        }

        if (v23)
        {
          *a6.i64 = v19 / v16 + 1.0;
        }

        v26 = *(this + 3);
        v27 = *(this + 4);
        v28 = v20 - v21;
        v29 = v25 - v19;
        if (v27 == v26)
        {
          v30 = 0;
        }

        else
        {
          v30 = 170 * ((v27 - v26) >> 3) - 1;
        }

        *(this + 12) = v28;
        *(this + 13) = v29;
        v41 = a6;
        v42 = v22;
        v31.f64[0] = v22;
        *&v31.f64[1] = a6.i64[0];
        *(this + 4) = vaddq_f64(v31, *(this + 4));
        v32 = ((v17 - v16) * 0x20C49BA5E353F7CFLL) >> 64;
        v33 = (v32 >> 7) + (v32 >> 63);
        *(this + 17) += 100000 * v33 / v16;
        *&v31.f64[0] = vdupq_n_s64(1uLL).u64[0];
        *&v31.f64[1] = v33 * v33;
        *(this + 120) = vaddq_s64(*(this + 120), v31);
        if (v30 == v24 + v23)
        {
          v34 = this;
          v35 = a3;
          if (v24 < 0xAA)
          {
            v36 = *(this + 5);
            v37 = *(this + 2);
            if (v27 - v26 < (v36 - v37))
            {
              operator new();
            }

            if (v36 == v37)
            {
              v38 = 1;
            }

            else
            {
              v38 = (v36 - v37) >> 2;
            }

            if (!(v38 >> 61))
            {
              operator new();
            }

            goto LABEL_40;
          }

          *(this + 6) = v24 - 170;
          v43 = *v26;
          *(this + 3) = v26 + 8;
          std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(this + 2, &v43);
          a3 = v35;
          this = v34;
          v24 = *(v34 + 6);
          v23 = *(v34 + 7);
          v26 = *(v34 + 3);
          v27 = *(v34 + 4);
        }

        if (v27 != v26)
        {
          v39 = *&v26[8 * ((v23 + v24) / 0xAA)];
          if (v39)
          {
            v40 = (v39 + 24 * ((v23 + v24) % 0xAA));
            result = v41;
            *v40 = v42;
            v40[1] = *v41.i64;
            *(v40 + 2) = a3;
            *(this + 7) = v23 + 1;
            return result;
          }
        }

        __break(1u);
LABEL_40:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }
  }

  return result;
}

uint64_t std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(char *a1, char **a2, char *__s)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  result = strlen(__s);
  v9 = v7 + result;
  if (v7 + result >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = result;
  if (v9 > 0x16)
  {
    operator new();
  }

  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  a1[23] = v9;
  if ((v6 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v12 = &a1[v7];
  if (v11 >= a1 && v12 > v11)
  {
    goto LABEL_25;
  }

  if (v7)
  {
    result = memmove(a1, v11, v7);
  }

  if ((v10 & 0x8000000000000000) != 0 || ((v14 = &v12[v10], v12 <= __s) ? (v15 = v14 > __s) : (v15 = 0), v15))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    result = memmove(v12, __s, v10);
  }

  *v14 = 0;
  return result;
}

void webrtc::EncoderRtcpFeedback::EncoderRtcpFeedback(uint64_t a1, uint64_t *a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_288293510;
  v10 = *a2;
  *(a1 + 8) = &unk_288293540;
  *(a1 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v11 = *(a2 + 1);
  *(a1 + 40) = *(a2 + 3);
  *(a1 + 24) = v11;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v12 = a4[1];
  if (v12 != *a4)
  {
    if (((v12 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 80) = a3;
  v13 = *(a6 + 24);
  if (v13)
  {
    if (v13 != a6)
    {
      *(a1 + 112) = v13;
      *(a6 + 24) = 0;
      *(a1 + 120) = a5;
      if ((a3 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_11:
      v15 = *a4;
      v14 = a4[1];
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      v16 = v14 - v15;
      if (!v16)
      {
        webrtc::KeyframeIntervalSettings::KeyframeIntervalSettings(&v17);
      }

      if ((v16 >> 2) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_16:
      operator new();
    }

    *(a1 + 112) = a1 + 88;
    (*(**(a6 + 24) + 24))(*(a6 + 24));
    *(a1 + 120) = a5;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = a5;
    if (a3)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  goto LABEL_16;
}

void webrtc::EncoderRtcpFeedback::OnReceivedIntraFrameRequest(webrtc::EncoderRtcpFeedback *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 7);
  v10 = *(this + 8);
  v11 = v9;
  if (v9 != v10)
  {
    while (*v11 != a2)
    {
      if (++v11 == v10)
      {
        v11 = *(this + 8);
        break;
      }
    }
  }

  if (v10 == v11)
  {
    goto LABEL_9;
  }

  if (*(this + 80))
  {
    v12 = v11 - v9;
    if (v12 > (*(this + 17) - *(this + 16)) >> 3)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/encoder_rtcp_feedback.cc", 75, "ssrc_index <= time_last_packet_delivery_queue_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v12);
LABEL_9:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/encoder_rtcp_feedback.cc");
      }

      return;
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = (*(**(this + 4) + 16))(*(this + 4));
  v21 = *(this + 16);
  if (v12 >= (*(this + 17) - v21) >> 3)
  {
    goto LABEL_34;
  }

  v22 = *(this + 19);
  v23 = *(v21 + 8 * v12);
  v24 = 0x8000000000000000;
  if (v22 != 0x8000000000000000 && v23 != 0x8000000000000000)
  {
    v24 = v23 + v22;
  }

  if (v23 == 0x7FFFFFFFFFFFFFFFLL || v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = v24;
  }

  if (v27 <= v20)
  {
    *(v21 + 8 * v12) = v20;
    v29 = *(this + 7);
    v28 = *(this + 8);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    if (v28 != v29)
    {
      if (((v28 - v29) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_35:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((*(this + 80) & 1) == 0)
    {
      v30 = *(this + 15);
      __p = 0;
      v32 = 0;
      v33 = 0;
      (*(*v30 + 56))(v30, &__p);
      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      return;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

void webrtc::EncoderRtcpFeedback::~EncoderRtcpFeedback(webrtc::EncoderRtcpFeedback *this)
{
  webrtc::EncoderRtcpFeedback::~EncoderRtcpFeedback(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_288293510;
  *(this + 1) = &unk_288293540;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3 == (this + 88))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 7);
    if (v4)
    {
LABEL_7:
      *(this + 8) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 7);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 8))(v5);
    }
  }
}

void non-virtual thunk towebrtc::EncoderRtcpFeedback::~EncoderRtcpFeedback(webrtc::EncoderRtcpFeedback *this)
{
  webrtc::EncoderRtcpFeedback::~EncoderRtcpFeedback((this - 8));
}

{
  webrtc::EncoderRtcpFeedback::~EncoderRtcpFeedback((this - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::VideoEncoder::EncoderInfo::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = v4;
  if (a1 == a2)
  {
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 200) = *(a2 + 200);
  }

  else
  {
    v5 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      if (v5 >= 0)
      {
        v7 = a2 + 24;
      }

      else
      {
        v7 = *(a2 + 3);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 47);
      }

      else
      {
        v8 = *(a2 + 4);
      }

      std::string::__assign_no_alias<false>((a1 + 24), v7, v8);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = *(a2 + 24);
    v9 = *(a2 + 7);
    if (v9)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = (a2 + 4);
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>((a1 + 56), v10, v9 >> 1);
    v11 = *(a2 + 10);
    if (v11)
    {
      v12 = *(a2 + 11);
    }

    else
    {
      v12 = a2 + 88;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>((a1 + 80), v12, v11 >> 1);
    v13 = *(a2 + 13);
    if (v13)
    {
      v14 = *(a2 + 14);
    }

    else
    {
      v14 = (a2 + 7);
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>((a1 + 104), v14, v13 >> 1);
    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = *(a2 + 17);
    }

    else
    {
      v16 = a2 + 136;
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>((a1 + 128), v16, v15 >> 1);
    v17 = *(a2 + 19);
    if (v17)
    {
      v18 = *(a2 + 20);
    }

    else
    {
      v18 = (a2 + 10);
    }

    absl::inlined_vector_internal::Storage<unsigned char,4ul,std::allocator<unsigned char>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<unsigned char>,unsigned char const*>>((a1 + 152), v18, v17 >> 1);
    std::vector<webrtc::VideoEncoder::ResolutionBitrateLimits>::__assign_with_size[abi:sn200100]<webrtc::VideoEncoder::ResolutionBitrateLimits*,webrtc::VideoEncoder::ResolutionBitrateLimits*>((a1 + 176), *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 4);
    *(a1 + 200) = *(a2 + 200);
    v19 = *(a2 + 26);
    if (v19)
    {
      v20 = *(a2 + 27);
    }

    else
    {
      v20 = a2 + 216;
    }

    absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::VideoFrameBuffer::Type>,webrtc::VideoFrameBuffer::Type const*>>((a1 + 208), v20, v19 >> 1);
  }

  v21 = *(a2 + 30);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 240) = v21;
  return a1;
}

uint64_t webrtc::VideoEncoderConfig::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = a1 + 40;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 32, *(a1 + 40));
  v7 = (a2 + 40);
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  v9 = *(a2 + 48);
  *(a1 + 48) = v9;
  if (v9)
  {
    *(v8 + 16) = v6;
    *(a2 + 32) = v7;
    *v7 = 0;
    *(a2 + 48) = 0;
    if (a1 == a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 32) = v6;
    if (a1 == a2)
    {
      goto LABEL_10;
    }
  }

  if (*(a1 + 56))
  {
    operator delete(*(a1 + 64));
  }

  *(a1 + 56) = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a2 + 56) = 0;
LABEL_10:
  v12 = *(a2 + 104);
  *(a2 + 104) = 0;
  v13 = *(a1 + 104);
  *(a1 + 104) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 112);
  if (v14)
  {
    *(a1 + 120) = v14;
    operator delete(v14);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v15 = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = v15;
  v16 = *(a2 + 144);
  *(a2 + 144) = 0;
  v17 = *(a1 + 144);
  *(a1 + 144) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 168);
  *(a1 + 152) = *(a2 + 152);
  if (v18)
  {
    *(a1 + 176) = v18;
    operator delete(v18);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::VideoFrameBuffer::Type>,webrtc::VideoFrameBuffer::Type const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 5;
    v6 = a1 + 1;
    if (a3 <= 5)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = 2 * v5;
    if (v19 <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = v19;
    }

    if (!(v20 >> 62))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 - (v4 >> 1);
  if (a3 < v4 >> 1)
  {
    v8 = 0;
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v4 >> 1;
  }

  if (!v9)
  {
    v11 = a2;
    if (v7 >= a3)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v10 = 0;
  if (v9 < 8)
  {
    goto LABEL_14;
  }

  if (v6 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFF8;
  v11 = (a2 + 4 * (v9 & 0x7FFFFFFFFFFFFFF8));
  v12 = (a2 + 16);
  v13 = v6 + 2;
  v14 = v9 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 8;
  }

  while (v14);
  v3 = (a2 + 4 * (v9 & 0x7FFFFFFFFFFFFFF8));
  if (v9 != v10)
  {
LABEL_14:
    v16 = v9 - v10;
    v17 = v6 + v10;
    v11 = v3;
    do
    {
      v18 = *v11++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  if (v7 < a3)
  {
LABEL_25:
    if (v6)
    {
      v21 = v6 + 4 * v7;
      v22 = 0;
      if (v8 < 8 || (v21 - v11) < 0x20)
      {
        v23 = v11;
      }

      else
      {
        v22 = v8 & 0xFFFFFFFFFFFFFFF8;
        v23 = &v11[v8 & 0xFFFFFFFFFFFFFFF8];
        v24 = (v11 + 4);
        v25 = v21 + 16;
        v26 = v8 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 8;
        }

        while (v26);
        if (v8 == v22)
        {
          goto LABEL_35;
        }
      }

      v28 = v8 - v22;
      v29 = &v21[4 * v22];
      do
      {
        v30 = *v23++;
        *v29 = v30;
        v29 += 4;
        --v28;
      }

      while (v28);
LABEL_35:
      v4 = *a1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_36:
  *a1 = v4 & 1 | (2 * a3);
}

void webrtc::EncoderStreamFactory::CreateEncoderStreams(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, unsigned int *a5@<X4>, void *a6@<X8>)
{
  webrtc::GetExperimentalMinVideoBitrate(a2, *a5);
  v12 = a3;
  v14 = v13;
  v15 = *(a5 + 24);
  v107 = a3;
  v106 = a4;
  if (v15 >= 2)
  {
    v16 = *(a5 + 21);
    v17 = *(a5 + 22) - v16;
    if (!v17)
    {
      goto LABEL_167;
    }

    if (*(v16 + 81) != 1)
    {
      goto LABEL_12;
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 5);
    if (v18 >= 2)
    {
      v19 = (v16 + 178);
      v20 = v18 - 1;
      while (1)
      {
        v21 = *v19;
        v19 += 96;
        if (v21)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_8;
        }
      }

LABEL_12:
      if (a5[34] == 1 && (a5[50] & 1) != 0)
      {
        v23 = *a5 == 4 || *a5 == 1;
        if (v23)
        {
          if (v15)
          {
            operator new();
          }

          goto LABEL_129;
        }
      }

      if (v15)
      {
        v30 = *(a5 + 21);
        v31 = (*(a5 + 22) - v30) >> 5;
        v32 = (v30 + 82);
        v33 = 0x5555555555555555 * v31;
        v34 = 1;
        while (v33 + v34 != 1)
        {
          if (*v32)
          {
            goto LABEL_33;
          }

          ++v34;
          v32 += 96;
          if (v34 - v15 == 1)
          {
            goto LABEL_32;
          }
        }

LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

LABEL_32:
      v34 = 0;
LABEL_33:
      v35 = *(a5 + 21);
      v36 = *(a5 + 22);
      if (v35 == v36)
      {
LABEL_37:
        v38 = a4;
        v39 = a2;
        v15 = webrtc::LimitSimulcastLayerCount(v34, v15, v12, v38, a2, *a5);
        v35 = *(a5 + 21);
        v36 = *(a5 + 22);
        if (v35 == v36)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v37 = *(a5 + 21);
        while ((*(v37 + 92) & 1) == 0)
        {
          v37 += 96;
          if (v37 == v36)
          {
            goto LABEL_37;
          }
        }

        v39 = a2;
        if (v35 == v36)
        {
LABEL_70:
          Base2Exponent = webrtc::NormalizeSimulcastSizeExperiment::GetBase2Exponent(v39);
          if (v107 < 16)
          {
            goto LABEL_124;
          }

          goto LABEL_71;
        }
      }

      v41 = v35;
      while (*(v41 + 92) != 1)
      {
        v41 += 96;
        if (v41 == v36)
        {
          goto LABEL_67;
        }
      }

      if (*(a1 + 64) == 1 && *(a1 + 24) == 1)
      {
        v42 = *(a1 + 16);
        *&v114 = 0;
        v43 = *(v35 + 92) ? (v35 + 84) : &v114;
        if (v15 >= 2)
        {
          v44 = 0;
          v45 = 0;
          v46 = HIDWORD(*v43) * *v43;
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 5) <= 1)
          {
            v47 = 1;
          }

          else
          {
            v47 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 5);
          }

          v48 = v35 + 180;
          v49 = 1;
          do
          {
            if (v47 == v49)
            {
              goto LABEL_167;
            }

            *&v114 = 0;
            if (*(v48 + 8))
            {
              v50 = v48;
            }

            else
            {
              v50 = &v114;
            }

            v51 = *(v50 + 1) * *v50;
            if (v51 < v46)
            {
              goto LABEL_67;
            }

            if (!(v44 & 1 | (v51 <= v42)))
            {
              v45 = v49;
            }

            ++v49;
            v44 |= (v44 | (v51 <= v42)) ^ 1;
            v48 += 96;
            v46 = v51;
          }

          while (v15 != v49);
          if (v44)
          {
            v15 = v45;
          }
        }
      }

LABEL_67:
      v52 = v35;
      do
      {
        if (*(v52 + 32) != -1.0)
        {
          while (1)
          {
            v56 = *(v35 + 32);
            if (v56 < 1.0)
            {
              v56 = 1.0;
            }

            v57 = v56;
            v58 = round(v56) != v56 || v57 < 1;
            if (v58 || ((v57 + 0x7FFFFFFF) & v57) != 0)
            {
              break;
            }

            v35 += 96;
            if (v35 == v36)
            {
              Base2Exponent = webrtc::NormalizeSimulcastSizeExperiment::GetBase2Exponent(v39);
              if (v107 < 16)
              {
LABEL_124:
                if (v106 < 16)
                {
                  goto LABEL_139;
                }

LABEL_128:
                webrtc::NormalizeSimulcastSizeExperiment::GetBase2Exponent(v39);
                if (!v15)
                {
LABEL_129:
                  if (a5[34] == 1)
                  {
                    v89 = *a5;
                    v91 = *a5 == 1 || v89 == 4;
                    v92 = *(a5 + 200) == 1 && v91;
                  }

                  else
                  {
                    v92 = 0;
                    v89 = *a5;
                  }

                  v94 = v89 == 5 || (v89 - 1) < 3;
                  webrtc::GetSimulcastConfig(0, 0, v92, v94, a2);
                }

LABEL_140:
                if (!(v15 >> 61))
                {
                  operator new();
                }

LABEL_168:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

LABEL_71:
              v54 = HIDWORD(Base2Exponent) & 1;
              v55 = 1;
LABEL_123:
              LOBYTE(v88) = v54;
              webrtc::NormalizeSimulcastSizeExperiment::GetBase2Exponent(v39);
              if (v55)
              {
                goto LABEL_124;
              }

LABEL_126:
              if (v106 >= 16 && (v88 & 1) != 0)
              {
                goto LABEL_128;
              }

LABEL_139:
              if (!v15)
              {
                goto LABEL_129;
              }

              goto LABEL_140;
            }
          }

          v87 = webrtc::NormalizeSimulcastSizeExperiment::GetBase2Exponent(v39);
          v88 = HIDWORD(v87) & 1;
          LOBYTE(v54) = 1;
          if (v107 >= 16 && (v87 & 0x100000000) != 0)
          {
            v55 = 0;
            goto LABEL_123;
          }

          goto LABEL_126;
        }

        v52 += 96;
      }

      while (v52 != v36);
      goto LABEL_70;
    }
  }

LABEL_8:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v22 = a5[34];
  if (v22 == 1 && *(a5 + 200) == 1 && (*a5 == 4 || *a5 == 1))
  {
    goto LABEL_12;
  }

  v24 = *(a5 + 21);
  v25 = *(a5 + 22);
  if (v25 == v24)
  {
    goto LABEL_167;
  }

  v26 = *(v24 + 28);
  if (v26 < 1)
  {
    v40 = a5[39];
    v27 = a1;
    if (v40 < 1)
    {
      v28 = 0;
      if ((v11 & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_25:
      v29 = (v14 < 0xFFFFFFFF80000000) | (2 * (v14 > 0x7FFFFFFF));
      if (v29 > 1 && v29 != 2)
      {
        webrtc::webrtc_checks_impl::UnreachableCodeReached(v27);
      }

LABEL_86:
      v60 = *(v24 + 16);
      v103 = v28;
      v113[0] = *(v24 + 85);
      *(v113 + 3) = *(v24 + 88);
      v61 = v24 + 96;
      do
      {
        if (*(v61 - 14))
        {
          break;
        }

        v23 = v61 == v25;
        v61 += 96;
      }

      while (!v23);
      v62 = v12;
      if (v60 <= 0)
      {
        v63 = 60;
      }

      else
      {
        v63 = v60;
      }

      v105 = v63;
      if (*(v24 + 92))
      {
        webrtc::EncoderStreamFactory::GetLayerResolutionFromScaleResolutionDownTo(v27, v12, a4, *(v24 + 84));
        if (*a5 != 2)
        {
          goto LABEL_165;
        }

LABEL_99:
        (*(**(a5 + 18) + 40))(*(a5 + 18), v111);
        v64 = a4;
        v65 = v107;
        v66 = 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 22) - *(a5 + 21)) >> 5);
        if (v66 <= 0x8E38E38E38E38E39 * ((*(a5 + 15) - *(a5 + 14)) >> 2))
        {
          v66 = 0x8E38E38E38E38E39 * ((*(a5 + 15) - *(a5 + 14)) >> 2);
        }

        if (v66 <= v112)
        {
          v66 = v112;
        }

        if (a4 * v107 < 1 || v111[0] <= 1u && v66 < 2)
        {
          goto LABEL_165;
        }

        v67 = v66;
        if (v22 == 1)
        {
          v68 = v66 << 32;
          if (v67 >= 3)
          {
            v69 = 3;
          }

          else
          {
            v69 = v67;
          }

          v108 = 0;
          v109 = 0;
          v110 = 0;
          if (!v68)
          {
            v81 = 0;
            if ((v103 & 1) == 0)
            {
              goto LABEL_163;
            }

            goto LABEL_162;
          }

          do
          {
            *&v114 = __PAIR64__(v64, v65);
            v74 = *v73++;
            v75 = v74;
            if (v74 > v105)
            {
              v75 = v105;
            }

            *(&v114 + 2) = v75;
            BYTE12(v114) = 1;
            v77 = *v72++;
            v76 = v77;
            v79 = *v71++;
            v78 = v79;
            v117 = v76;
            v118 = 0;
            v80 = *v70++;
            v115 = v78;
            v116 = v80;
            v119 = 1;
            std::vector<webrtc::SimulcastStream>::push_back[abi:sn200100](&v108, &v114);
            v64 = a4;
            v65 = v107;
            --v69;
          }

          while (v69);
          v81 = v108;
          v82 = v109;
          if (v108 != v109)
          {
LABEL_116:
            v83 = v82 - v81 - 36;
            v84 = 0;
            if (v83 > 0x23)
            {
              v95 = 0;
              v96 = v83 / 0x24 + 1;
              v85 = &v81[36 * (v96 & 0xFFFFFFFFFFFFFFELL)];
              v97 = (v81 + 52);
              v98 = v96 & 0xFFFFFFFFFFFFFFELL;
              do
              {
                v99 = *(v97 - 9);
                v100 = *v97;
                v97 += 18;
                v84 += v99;
                v95 += v100;
                v98 -= 2;
              }

              while (v98);
              v84 += v95;
              v23 = v96 == (v96 & 0xFFFFFFFFFFFFFFELL);
              v86 = v103;
              if (v23)
              {
LABEL_159:
                if ((v86 & 1) == 0)
                {
LABEL_163:
                  if (v81)
                  {
                    v109 = v81;
                    operator delete(v81);
                  }

                  goto LABEL_165;
                }

LABEL_162:
                v101 = *(a5 + 21);
                if (*(a5 + 22) == v101)
                {
                  goto LABEL_167;
                }

                goto LABEL_163;
              }
            }

            else
            {
              v85 = v81;
              v86 = v103;
            }

            do
            {
              v84 += *(v85 + 4);
              v85 += 36;
            }

            while (v85 != v82);
            goto LABEL_159;
          }
        }

        else
        {
          LOBYTE(v114) = 0;
          v120 = 0;
          webrtc::ConfigureSvcNormalVideo(v62, a4, 0, v66, v111[0], &v114, &v108, v105);
          v81 = v108;
          v82 = v109;
          if (v108 != v109)
          {
            goto LABEL_116;
          }
        }

        if ((v103 & 1) == 0)
        {
          goto LABEL_163;
        }

        goto LABEL_162;
      }

      if (*(v24 + 32) > 1.0 && a4 >= 17)
      {
        if (*a5 == 2)
        {
          goto LABEL_99;
        }
      }

      else if (*a5 == 2)
      {
        goto LABEL_99;
      }

LABEL_165:
      v102 = *(a5 + 21);
      if (*(a5 + 22) != v102)
      {
        operator new();
      }

      goto LABEL_167;
    }
  }

  else
  {
    v27 = a1;
    if (a5[39] <= 0)
    {
      v28 = 1;
      if ((v11 & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_25;
    }
  }

  v28 = 1;
  if ((v11 & 1) == 0)
  {
    goto LABEL_86;
  }

  goto LABEL_25;
}

uint64_t webrtc::EncoderStreamFactory::GetLayerResolutionFromScaleResolutionDownTo(uint64_t a1, int a2, int a3, unint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v68 = *MEMORY[0x277D85DE8];
  v7 = HIDWORD(a4);
  v8 = (a2 < a3) ^ (a4 >= SHIDWORD(a4));
  v9 = v8 == 0;
  if (v8)
  {
    v10 = a4;
  }

  else
  {
    v10 = HIDWORD(a4);
  }

  if (v9)
  {
    LODWORD(v7) = a4;
  }

  if (a2 >= 1 && a3 >= 1 && (v10 < a2 || v7 < a3))
  {
    v12 = v10 / a2;
    if (v7 / a3 < v12)
    {
      v12 = v7 / a3;
    }

    v5 = llround(v12 * a2);
    v4 = llround(v12 * a3);
  }

  v13 = *(a1 + 8);
  v44[0] = &unk_2882A19B8;
  v44[1] = 0;
  v45 = 0u;
  v46 = v13;
  v47 = v13;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0x8000000080000000;
  v59 = 0x7FFFFFFF;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0x7FEFFFFFFFFFFFFFLL;
  v65 = 0;
  v66 = 0;
  pthread_mutexattr_init(&v34);
  pthread_mutexattr_setpolicy_np(&v34, 3);
  pthread_mutex_init(&v67, &v34);
  pthread_mutexattr_destroy(&v34);
  v30 = v5 * v4;
  v31 = 1;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v34.__sig) = 0;
  v34.__opaque[0] = 0;
  LOBYTE(v32[0]) = 0;
  v33 = 0;
  if (v5 >= 1 && v4 >= 1)
  {
    if (v5 <= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = v5;
    }

    if (v4 >= v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = v4;
    }

    v34.__sig = v14 | (v15 << 32);
    v34.__opaque[0] = 1;
    *v32 = __ROR8__(v34.__sig, 32);
    v33 = 1;
  }

  webrtc::VideoAdapter::OnOutputFormatRequest(v44, &v34.__sig, &v30, v32, &v30, &v28);
  if (*(a1 + 64) == 1)
  {
    LOWORD(v34.__sig) = 0;
    v34.__opaque[0] = 0;
    v34.__opaque[4] = 0;
    v35 = 0x7FFFFFFF;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    __p = 0;
    v40 = 0;
    v42 = 1;
    if (*(a1 + 40))
    {
      *v34.__opaque = *(a1 + 32);
      v34.__opaque[4] = 1;
    }

    if (*(a1 + 24))
    {
      v16 = *(a1 + 16);
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    v43 = 256;
    v17 = *(a1 + 8);
    HIDWORD(v34.__sig) = v16;
    v36 = v17;
    webrtc::VideoAdapter::OnSinkWants(v44, &v34);
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }
  }

  LODWORD(v34.__sig) = 0;
  v32[0] = 0;
  v30 = 0;
  v28 = 0;
  if ((webrtc::VideoAdapter::AdaptFrameResolution(v44, v5, v4, 0, &v34, v32, &v30, &v28) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/config/encoder_stream_factory.cc");
  }

  v25 = v30;
  v26 = v28;
  v44[0] = &unk_2882A19B8;
  pthread_mutex_destroy(&v67);
  return v25 | (v26 << 32);
}

unint64_t *std::__stable_sort<std::_ClassicAlgPolicy,webrtc::anonymous namespace::OverrideStreamSettings(webrtc::VideoEncoderConfig const&,std::optional<webrtc::DataRate> const&,std::vector<webrtc::VideoStream> &)::$_0 &,std::__wrap_iter<unsigned long *>>@<X0>(unint64_t *result@<X0>, char *a2@<X1>, uint64_t **a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, int64_t a7@<X8>)
{
  if (a4 < 2)
  {
    return result;
  }

  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    v10 = **a3;
    v11 = 0xAAAAAAAAAAAAAAABLL * (((*a3)[1] - v10) >> 5);
    if (v11 > v9)
    {
      v12 = *result;
      if (v11 > *result)
      {
        if (*(v10 + 96 * v9 + 28) < *(v10 + 96 * v12 + 28))
        {
          *result = v9;
          *(a2 - 1) = v12;
        }

        return result;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v13 = result + 1;
    if (result + 1 == a2)
    {
      return result;
    }

    v9 = 0;
    v10 = **a3;
    v14 = 0xAAAAAAAAAAAAAAABLL * (((*a3)[1] - v10) >> 5);
    v15 = result;
    while (1)
    {
      v17 = v13;
      v18 = *v13;
      if (v14 <= v18)
      {
        goto LABEL_50;
      }

      v19 = *v15;
      if (v14 <= v19)
      {
        goto LABEL_50;
      }

      v20 = *(v10 + 96 * v18 + 28);
      if (v20 < *(v10 + 96 * v19 + 28))
      {
        v21 = v9;
        do
        {
          *(result + v21 + 8) = v19;
          if (!v21)
          {
            v16 = result;
            goto LABEL_13;
          }

          v19 = *(result + v21 - 8);
          if (v14 <= v19)
          {
            goto LABEL_50;
          }

          v21 -= 8;
        }

        while (v20 < *(v10 + 96 * v19 + 28));
        v16 = (result + v21 + 8);
LABEL_13:
        *v16 = v18;
      }

      v13 = v17 + 1;
      v9 += 8;
      v15 = v17;
      if (v17 + 1 == a2)
      {
        return result;
      }
    }
  }

  v23 = a4 >> 1;
  v24 = &result[a4 >> 1];
  v25 = a4 - (a4 >> 1);
  v26 = result;
  if (a4 > a6)
  {
  }

  v8 = a5;
  v7 = &v8[v23];
  v33 = *a3;
  v34 = v7;
  v9 = v26;
  v10 = &v8[a4];
  while (v34 != v10)
  {
    v35 = v34;
    v36 = *v34;
    v37 = *v33;
    v38 = 0xAAAAAAAAAAAAAAABLL * ((v33[1] - *v33) >> 5);
    if (v38 <= v36)
    {
      goto LABEL_50;
    }

    v39 = *v8;
    if (v38 <= *v8)
    {
      goto LABEL_50;
    }

    v40 = *(v37 + 96 * v36 + 28);
    v41 = *(v37 + 96 * v39 + 28);
    v42 = v40 < v41;
    v43 = v40 >= v41;
    v44 = v42;
    if (v42)
    {
      v39 = v36;
    }

    v8 += v43;
    v45 = v44;
    v34 = &v35[v45];
    *v9 = v39;
    v9 += 8;
    ++v26;
    if (v8 == v7)
    {
      if (v34 != v10)
      {
        v46 = v10 - v35 - v45 * 8 - 8;
        if (v46 <= 0x57)
        {
          goto LABEL_57;
        }

        if ((v26 - v35 - v45 * 8) < 0x20)
        {
          goto LABEL_57;
        }

        v47 = (v9 + 16);
        v48 = (v46 >> 3) + 1;
        v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFFCLL);
        v34 = (v34 + v49);
        v9 += v49;
        v50 = &v35[v45 + 2];
        v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v52 = *v50;
          *(v47 - 1) = *(v50 - 1);
          *v47 = v52;
          v47 += 2;
          v50 += 4;
          v51 -= 4;
        }

        while (v51);
        if (v48 != (v48 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_57:
          do
          {
            v53 = *v34++;
            *v9 = v53;
            v9 += 8;
          }

          while (v34 != v10);
        }
      }

      return result;
    }
  }

  if (v8 == v7)
  {
    return result;
  }

  v10 = v7 - v8 - 8;
  if (v10 < 0x38)
  {
    v54 = v8;
    goto LABEL_54;
  }

  if ((v26 - v8) < 0x20)
  {
    v54 = v8;
    goto LABEL_54;
  }

LABEL_51:
  v55 = (v9 + 16);
  v56 = (v10 >> 3) + 1;
  v57 = v56 & 0x3FFFFFFFFFFFFFFCLL;
  v54 = &v8[v57];
  v9 += v57 * 8;
  v58 = (v8 + 2);
  v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v60 = *v58;
    *(v55 - 1) = *(v58 - 1);
    *v55 = v60;
    v55 += 2;
    v58 += 2;
    v59 -= 4;
  }

  while (v59);
  if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
  {
    do
    {
LABEL_54:
      v61 = *v54++;
      *v9 = v61;
      v9 += 8;
    }

    while (v54 != v7);
  }

  return result;
}

unint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,webrtc::anonymous namespace::OverrideStreamSettings(webrtc::VideoEncoderConfig const&,std::optional<webrtc::DataRate> const&,std::vector<webrtc::VideoStream> &)::$_0 &,std::__wrap_iter<unsigned long *>>@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, int64_t a6@<X8>)
{
  switch(a4)
  {
    case 0:
      return result;
    case 2:
      v10 = *(a2 - 1);
      v9 = a2 - 1;
      a6 = v10;
      v11 = **a3;
      v6 = 0xAAAAAAAAAAAAAAABLL * (((*a3)[1] - v11) >> 5);
      if (v6 <= v10 || v6 <= *result)
      {
        goto LABEL_52;
      }

      v6 = 96;
      if (*(v11 + 96 * a6 + 28) >= *(v11 + 96 * *result + 28))
      {
        if (!a5)
        {
          goto LABEL_52;
        }

        a6 = *result;
        result = v9;
      }

      else if (!a5)
      {
        goto LABEL_52;
      }

      *a5++ = a6;
      goto LABEL_49;
    case 1:
      if (!a5)
      {
        goto LABEL_52;
      }

LABEL_49:
      *a5 = *result;
      return result;
  }

  if (a4 > 8)
  {
    v24 = a4 >> 1;
    v25 = a4 >> 1;
    v26 = &result[v25];
    v27 = result;
    v7 = a2;
    v8 = a5;
    v30 = *a3;
    v31 = -v8;
    v6 = 0xAAAAAAAAAAAAAAABLL;
    a6 = v26;
    do
    {
      while (1)
      {
        if (a6 == v7)
        {
          while (v27 != v26)
          {
            if (!v8)
            {
              goto LABEL_52;
            }

            v36 = *v27++;
            a6 = v36;
            *v8 = v36;
            v8 += 8;
          }

          return result;
        }

        v32 = *a6;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v30[1] - *v30) >> 5);
        if (v33 <= *a6)
        {
          goto LABEL_52;
        }

        v34 = *v27;
        if (v33 <= *v27)
        {
          goto LABEL_52;
        }

        if (*(*v30 + 96 * v32 + 28) < *(*v30 + 96 * v34 + 28))
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_52;
        }

        *v8 = v34;
        v8 += 8;
        ++v27;
        v31 -= 8;
        if (v27 == v26)
        {
          goto LABEL_39;
        }
      }

      if (!v8)
      {
        goto LABEL_52;
      }

      *v8 = v32;
      v8 += 8;
      a6 += 8;
      v31 -= 8;
    }

    while (v27 != v26);
LABEL_39:
    if (a6 == v7)
    {
      return result;
    }

    v6 = &v7[-a6 - 8];
    if (v6 < 0x48)
    {
      v35 = a6;
      goto LABEL_56;
    }

    if ((-a6 - v31) < 0x20)
    {
      v35 = a6;
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (result == a2)
  {
    return result;
  }

  if (a5)
  {
    v12 = *a3;
    v13 = *result++;
    *a5 = v13;
    if (result == a2)
    {
      return result;
    }

    a6 = 0;
    v14 = *v12;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 5);
    v6 = 96;
    v16 = a5;
    while (1)
    {
      v17 = *result;
      if (v15 <= *result)
      {
        break;
      }

      v18 = v16 + 1;
      v19 = *v16;
      if (v15 <= *v16)
      {
        break;
      }

      if (*(v14 + 96 * v17 + 28) >= *(v14 + 96 * v19 + 28))
      {
        *v18 = v17;
        ++result;
        a6 += 8;
        ++v16;
        if (result == a2)
        {
          return result;
        }
      }

      else
      {
        v16[1] = v19;
        v20 = a5;
        if (v16 != a5)
        {
          v21 = a6;
          while (v15 > *result)
          {
            v22 = *(v21 + a5 - 8);
            if (v15 <= v22)
            {
              break;
            }

            if (*(v14 + 96 * *result + 28) >= *(v14 + 96 * v22 + 28))
            {
              v20 = (v21 + a5);
              goto LABEL_28;
            }

            *(v21-- + a5) = v22;
            if (!v21)
            {
              v20 = a5;
              goto LABEL_28;
            }
          }

          break;
        }

LABEL_28:
        v23 = *result++;
        *v20 = v23;
        a6 += 8;
        v16 = v18;
        if (result == a2)
        {
          return result;
        }
      }
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v37 = (v8 + 16);
  v38 = (v6 >> 3) + 1;
  v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
  v8 += v39;
  v35 = (a6 + v39);
  v40 = (a6 + 16);
  v41 = v38 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v42 = *v40;
    *(v37 - 1) = *(v40 - 1);
    *v37 = v42;
    v40 += 2;
    v37 += 2;
    v41 -= 4;
  }

  while (v41);
  if (v38 != (v38 & 0x3FFFFFFFFFFFFFFCLL))
  {
    do
    {
LABEL_56:
      v43 = *v35++;
      *v8 = v43;
      v8 += 8;
    }

    while (v35 != v7);
  }

  return result;
}

unint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,webrtc::anonymous namespace::OverrideStreamSettings(webrtc::VideoEncoderConfig const&,std::optional<webrtc::DataRate> const&,std::vector<webrtc::VideoStream> &)::$_0 &,std::__wrap_iter<unsigned long *>>(unint64_t *result, unint64_t *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    if (a5 > a8 && a6 > a8)
    {
      if (a5)
      {
        v8 = *a2;
        v9 = **a4;
        v10 = 0xAAAAAAAAAAAAAAABLL * (((*a4)[1] - v9) >> 5);
        if (v10 > *a2)
        {
          v11 = 0;
          v12 = -a5;
          while (1)
          {
            v13 = result[v11 / 8];
            if (v10 <= v13)
            {
              goto LABEL_118;
            }

            if (*(v9 + 96 * v8 + 28) < *(v9 + 96 * v13 + 28))
            {
              break;
            }

            v11 += 8;
            if (__CFADD__(v12++, 1))
            {
              return result;
            }
          }

          v15 = -v12;
          v16 = &result[v11 / 8];
          if (-v12 >= a6)
          {
            if (v12 == -1)
            {
              result[v11 / 8] = v8;
              *a2 = v13;
              return result;
            }

            v32 = v15 / 2;
            v19 = &result[v15 / 2 + v11 / 8];
            v18 = a2;
            if (a2 != a3)
            {
              v35 = (a3 - a2) >> 3;
              if (v10 > *v19)
              {
                v18 = a2;
                while (1)
                {
                  v36 = v35 >> 1;
                  v37 = &v18[v35 >> 1];
                  if (v10 <= *v37)
                  {
                    break;
                  }

                  v38 = *(v9 + 96 * *v37 + 28);
                  v39 = v37 + 1;
                  v35 += ~v36;
                  if (v38 < *(v9 + 96 * *v19 + 28))
                  {
                    v18 = v39;
                  }

                  else
                  {
                    v35 = v36;
                  }

                  if (!v35)
                  {
                    goto LABEL_38;
                  }
                }
              }

              goto LABEL_118;
            }

LABEL_38:
            v17 = v18 - a2;
            v33 = v18;
            v34 = a2 - v19;
            if (a2 == v19)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v17 = a6 / 2;
            v18 = &a2[a6 / 2];
            v19 = a2;
            v20 = a2 - result - v11;
            if (a2 - result != v11)
            {
              if (v10 <= *v18)
              {
                goto LABEL_118;
              }

              v21 = v20 >> 3;
              v22 = (v20 >> 3) >> 1;
              v23 = &result[v22 + v11 / 8];
              if (v10 <= *v23)
              {
                goto LABEL_118;
              }

              v24 = *(v9 + 96 * *v18 + 28);
              v25 = *(v9 + 96 * *v23 + 28);
              v26 = v23 + 1;
              v27 = v21 + ~v22;
              if (v24 >= v25)
              {
                v19 = v26;
              }

              else
              {
                v19 = &result[v11 / 8];
              }

              if (v24 >= v25)
              {
                v22 = v27;
              }

              while (v22)
              {
                v28 = v22 >> 1;
                v29 = &v19[v22 >> 1];
                if (v10 <= *v29)
                {
                  goto LABEL_118;
                }

                v30 = *(v9 + 96 * *v29 + 28);
                v31 = v29 + 1;
                v22 += ~v28;
                if (v24 < v30)
                {
                  v22 = v28;
                }

                else
                {
                  v19 = v31;
                }
              }
            }

            v32 = (v19 - result - v11) >> 3;
            v33 = &a2[a6 / 2];
            v34 = a2 - v19;
            if (a2 == v19)
            {
              goto LABEL_61;
            }
          }

          v33 = v19;
          if (a2 != v18)
          {
            if (v19 + 1 == a2)
            {
              v120 = *v19;
              v122 = v32;
              v40 = v18 - a2;
              v128 = a3;
              v130 = result;
              v41 = a6;
              v42 = a7;
              v124 = a4;
              v126 = &result[v11 / 8];
              v43 = a8;
              v44 = v17;
              memmove(v19, a2, v18 - a2);
              v17 = v44;
              a4 = v124;
              v16 = v126;
              a8 = v43;
              a7 = v42;
              v32 = v122;
              a6 = v41;
              a3 = v128;
              result = v130;
              v33 = (v19 + v40);
              *v33 = v120;
            }

            else if (a2 + 1 == v18)
            {
              v45 = *(v18 - 1);
              v33 = v19 + 1;
              if (v18 - 1 != v19)
              {
                v129 = a3;
                v131 = result;
                v121 = a6;
                v123 = v32;
                v46 = a7;
                v125 = a4;
                v127 = &result[v11 / 8];
                v47 = a8;
                v48 = v17;
                memmove(v19 + 1, v19, (v18 - 1) - v19);
                v17 = v48;
                a4 = v125;
                v16 = v127;
                a8 = v47;
                a7 = v46;
                a6 = v121;
                v32 = v123;
                a3 = v129;
                result = v131;
              }

              *v19 = v45;
            }

            else
            {
              v49 = v34 >> 3;
              v50 = v18 - a2;
              if (v34 >> 3 == v50)
              {
                v51 = v19 + 1;
                v52 = a2 + 1;
                do
                {
                  v53 = *(v51 - 1);
                  *(v51 - 1) = *(v52 - 1);
                  *(v52 - 1) = v53;
                  if (v51 == a2)
                  {
                    break;
                  }

                  ++v51;
                }

                while (v52++ != v18);
                v33 = a2;
              }

              else
              {
                v55 = v34 >> 3;
                do
                {
                  v56 = v55;
                  v55 = v50;
                  v50 = v56 % v50;
                }

                while (v50);
                v57 = &v19[v55];
                do
                {
                  v59 = *--v57;
                  v58 = v59;
                  v60 = (v57 + v34);
                  v61 = v57;
                  do
                  {
                    v62 = v60;
                    *v61 = *v60;
                    v63 = v18 - v60;
                    v64 = __OFSUB__(v49, v63);
                    v65 = v49 - v63;
                    v100 = (v65 < 0) ^ v64;
                    v60 = &v19[v65];
                    if (v100)
                    {
                      v60 = &v62[v49];
                    }

                    v61 = v62;
                  }

                  while (v60 != v57);
                  *v62 = v58;
                }

                while (v57 != v19);
                v33 = (v19 + v18 - a2);
              }
            }
          }

LABEL_61:
          v66 = a6 - v17;
          if (v32 + v17 >= a6 - (v32 + v17) - v12)
          {
            v69 = a4;
            v73 = v32;
            v71 = a7;
            v72 = a8;
            v74 = v16;
            v66 = v17;
            result = v74;
            a2 = v19;
            a5 = v73;
            a3 = v33;
          }

          else
          {
            v67 = &result[v11 / 8];
            v68 = a3;
            v69 = a4;
            v70 = -(v32 + v12);
            v71 = a7;
            v72 = a8;
            a5 = v70;
            a3 = v68;
            result = v33;
            a2 = v18;
          }

          a6 = v66;
          a7 = v71;
          a4 = v69;
          a8 = v72;
          if (v66)
          {
            continue;
          }

          return result;
        }

LABEL_118:
        __break(1u);
      }

      return result;
    }

    break;
  }

  if (a5 <= a6)
  {
    if (a2 != result)
    {
      v84 = a2 - result - 8;
      v85 = a7;
      v86 = result;
      if (v84 < 0x18)
      {
        goto LABEL_121;
      }

      v85 = a7;
      v86 = result;
      if ((a7 - result) <= 0x1F)
      {
        goto LABEL_121;
      }

      v87 = (v84 >> 3) + 1;
      v88 = v87 & 0x3FFFFFFFFFFFFFFCLL;
      v85 = &a7[v88];
      v86 = &result[v88];
      v89 = (result + 2);
      v90 = a7 + 2;
      v91 = v87 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v92 = *v89;
        *(v90 - 1) = *(v89 - 1);
        *v90 = v92;
        v89 += 2;
        v90 += 2;
        v91 -= 4;
      }

      while (v91);
      if (v87 != (v87 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_121:
        do
        {
          v93 = *v86++;
          *v85 = v93;
          v85 += 8;
        }

        while (v86 != a2);
      }

      v94 = *a4;
      while (a2 != a3)
      {
        v95 = *a2;
        v96 = *v94;
        v97 = 0xAAAAAAAAAAAAAAABLL * ((v94[1] - *v94) >> 5);
        if (v97 <= *a2 || v97 <= *a7)
        {
          goto LABEL_118;
        }

        v98 = *(v96 + 96 * v95 + 28);
        v99 = *(v96 + 96 * *a7 + 28);
        v100 = v98 < v99;
        v101 = v98 >= v99;
        if (v100)
        {
          v102 = 1;
        }

        else
        {
          v102 = 0;
        }

        if (!v100)
        {
          v95 = *a7;
        }

        a2 += v102;
        a7 += v101;
        *result++ = v95;
        if (a7 == v85)
        {
          return result;
        }
      }

      return memmove(result, a7, v85 - a7);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v75 = a3 - a2 - 8;
  if (v75 < 0x18)
  {
    v76 = a7;
    v77 = a2;
  }

  else
  {
    v76 = a7;
    v77 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v78 = (v75 >> 3) + 1;
      v79 = v78 & 0x3FFFFFFFFFFFFFFCLL;
      v76 = &a7[v79];
      v77 = &a2[v79];
      v80 = (a2 + 2);
      v81 = a7 + 2;
      v82 = v78 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v83 = *v80;
        *(v81 - 1) = *(v80 - 1);
        *v81 = v83;
        v80 += 2;
        v81 += 2;
        v82 -= 4;
      }

      while (v82);
      if (v78 == (v78 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_98;
      }
    }
  }

  do
  {
    v103 = *v77++;
    *v76 = v103;
    v76 += 8;
  }

  while (v77 != a3);
LABEL_98:
  v104 = *a4;
  v105 = a3;
  while (a2 != result)
  {
    v106 = *(v76 - 1);
    v107 = 0xAAAAAAAAAAAAAAABLL * ((v104[1] - *v104) >> 5);
    if (v107 <= v106)
    {
      goto LABEL_118;
    }

    v108 = *(a2 - 1);
    if (v107 <= v108)
    {
      goto LABEL_118;
    }

    if (*(*v104 + 96 * v106 + 28) >= *(*v104 + 96 * v108 + 28))
    {
      v76 -= 8;
    }

    else
    {
      v106 = *--a2;
    }

    *(a3 - 1) = v106;
    a3 -= 8;
    v105 -= 8;
    if (v76 == a7)
    {
      return result;
    }
  }

  v109 = v76 - a7;
  if (v76 != a7)
  {
    v110 = v109 - 8;
    if ((v109 - 8) >= 0x48 && (v76 - v105) >= 0x20)
    {
      v114 = a3 - 16;
      v115 = (v110 >> 3) + 1;
      v116 = 8 * (v115 & 0x3FFFFFFFFFFFFFFCLL);
      v111 = &v76[-v116];
      a3 -= v116;
      v117 = v76 - 16;
      v118 = v115 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v119 = *v117;
        *(v114 - 1) = *(v117 - 1);
        *v114 = v119;
        v114 -= 32;
        v117 -= 32;
        v118 -= 4;
      }

      while (v118);
      if (v115 == (v115 & 0x3FFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    else
    {
      v111 = v76;
    }

    v112 = a3 - 8;
    do
    {
      v113 = *(v111 - 1);
      v111 -= 8;
      *v112 = v113;
      v112 -= 8;
    }

    while (v111 != a7);
  }

  return result;
}

__n128 webrtc::EnvironmentFactory::CreateWithDefaults@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1[1])
  {
    operator new();
  }

  if (!a1[2])
  {
    {
      operator new();
    }

    if (webrtc::Clock::GetRealTimeClock(void)::clock)
    {
      a1[2] = webrtc::Clock::GetRealTimeClock(void)::clock;
    }
  }

  if (!a1[3])
  {
    operator new();
  }

  v4 = a1[4];
  if (!v4)
  {
    operator new();
  }

  v5 = *a1;
  *a1 = 0;
  v6 = a1[3];
  *a2 = v5;
  result = *(a1 + 1);
  *(a2 + 8) = result;
  *(a2 + 24) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t webrtc::EnvironmentFactory::Create@<X0>(webrtc::EnvironmentFactory *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  v3 = *(this + 24);
  v8 = *(this + 8);
  v9 = v3;
  v4 = webrtc::EnvironmentFactory::CreateWithDefaults(&v7, a2);
  result = v7;
  if (v7 && atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    v6 = *(*result + 8);

    return v6(v4);
  }

  return result;
}

void *webrtc::anonymous namespace::Store<webrtc::FieldTrialsView const>(std::unique_ptr<webrtc::FieldTrialsView const>,webrtc::scoped_refptr<webrtc::RefCountedBase const> &)::StorageNode::~StorageNode(void *a1)
{
  *a1 = &unk_288293568;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void webrtc::anonymous namespace::Store<webrtc::FieldTrialsView const>(std::unique_ptr<webrtc::FieldTrialsView const>,webrtc::scoped_refptr<webrtc::RefCountedBase const> &)::StorageNode::~StorageNode(void *a1)
{
  *a1 = &unk_288293568;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::anonymous namespace::Store<webrtc::TaskQueueFactory>(std::unique_ptr<webrtc::TaskQueueFactory>,webrtc::scoped_refptr<webrtc::RefCountedBase const> &)::StorageNode::~StorageNode(void *a1)
{
  *a1 = &unk_288293588;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void webrtc::anonymous namespace::Store<webrtc::TaskQueueFactory>(std::unique_ptr<webrtc::TaskQueueFactory>,webrtc::scoped_refptr<webrtc::RefCountedBase const> &)::StorageNode::~StorageNode(void *a1)
{
  *a1 = &unk_288293588;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::anonymous namespace::Store<webrtc::RtcEventLog>(std::unique_ptr<webrtc::RtcEventLog>,webrtc::scoped_refptr<webrtc::RefCountedBase const> &)::StorageNode::~StorageNode(void *a1)
{
  *a1 = &unk_2882935A8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void webrtc::anonymous namespace::Store<webrtc::RtcEventLog>(std::unique_ptr<webrtc::RtcEventLog>,webrtc::scoped_refptr<webrtc::RefCountedBase const> &)::StorageNode::~StorageNode(void *a1)
{
  *a1 = &unk_2882935A8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

double webrtc::ErlEstimator::ErlEstimator(webrtc::ErlEstimator *this, uint64_t a2)
{
  *this = a2;
  *(this + 66) = 0;
  v2 = vdupq_n_s32(0x447A0000u);
  *(this + 8) = v2;
  *(this + 24) = v2;
  *(this + 40) = v2;
  *(this + 56) = v2;
  *(this + 72) = v2;
  *(this + 88) = v2;
  *(this + 104) = v2;
  *(this + 120) = v2;
  *(this + 136) = v2;
  *(this + 152) = v2;
  *(this + 168) = v2;
  *(this + 184) = v2;
  *(this + 200) = v2;
  *(this + 216) = v2;
  *(this + 232) = v2;
  *(this + 248) = v2;
  *(this + 66) = 1148846080;
  result = 0.0;
  *(this + 504) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 268) = 0u;
  *(this + 65) = 1148846080;
  return result;
}

float webrtc::ErlEstimator::Update(uint64_t a1, unint64_t **a2, float *a3, unint64_t a4, char *__src, float result)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = *a2;
  v12 = v9;
  if (v9 < 0x40)
  {
LABEL_5:
    if (v12)
    {
      v13 = __clz(__rbit64(*v11 & (0xFFFFFFFFFFFFFFFFLL >> -v12)));
      if ((*v11 & (0xFFFFFFFFFFFFFFFFLL >> -v12)) != 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = a2[1];
    v11 = *a2;
    while (!*v11)
    {
      ++v11;
      v12 -= 64;
      if (v12 <= 0x3F)
      {
        goto LABEL_5;
      }
    }

    v14 = __clz(__rbit64(*v11));
  }

  v16 = &(*a2)[v9 >> 6] == v11 && (v9 & 0x3F) == v14;
  v17 = *(a1 + 528) + 1;
  *(a1 + 528) = v17;
  if (v17 >= *a1 && !v16)
  {
    memcpy(__dst, __src, 0x104uLL);
    if (v9 >= 2)
    {
      v19 = v14 + 8 * (v11 - v10);
      v20 = &__src[260 * v19];
      v22 = *v20;
      v21 = *(v20 + 1);
      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      v26 = *(v20 + 4);
      v25 = *(v20 + 5);
      v28 = *(v20 + 6);
      v27 = *(v20 + 7);
      v30 = *(v20 + 8);
      v29 = *(v20 + 9);
      v32 = *(v20 + 10);
      v31 = *(v20 + 11);
      v34 = *(v20 + 12);
      v33 = *(v20 + 13);
      v36 = *(v20 + 14);
      v35 = *(v20 + 15);
      v37 = *(v20 + 64);
      v38 = v19 + 1;
      if (v38 < v9)
      {
        v39 = &__src[260 * v14 + 2080 * v11 - 2080 * v10];
        do
        {
          if ((*&v10[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v38))
          {
            v35 = vbslq_s8(vcgtq_f32(*(v39 + 500), v35), *(v39 + 500), v35);
            v36 = vbslq_s8(vcgtq_f32(*(v39 + 484), v36), *(v39 + 484), v36);
            v33 = vbslq_s8(vcgtq_f32(*(v39 + 468), v33), *(v39 + 468), v33);
            v34 = vbslq_s8(vcgtq_f32(*(v39 + 452), v34), *(v39 + 452), v34);
            v31 = vbslq_s8(vcgtq_f32(*(v39 + 436), v31), *(v39 + 436), v31);
            v32 = vbslq_s8(vcgtq_f32(*(v39 + 420), v32), *(v39 + 420), v32);
            v29 = vbslq_s8(vcgtq_f32(*(v39 + 404), v29), *(v39 + 404), v29);
            v30 = vbslq_s8(vcgtq_f32(*(v39 + 388), v30), *(v39 + 388), v30);
            v27 = vbslq_s8(vcgtq_f32(*(v39 + 372), v27), *(v39 + 372), v27);
            v28 = vbslq_s8(vcgtq_f32(*(v39 + 356), v28), *(v39 + 356), v28);
            v25 = vbslq_s8(vcgtq_f32(*(v39 + 340), v25), *(v39 + 340), v25);
            v26 = vbslq_s8(vcgtq_f32(*(v39 + 324), v26), *(v39 + 324), v26);
            v23 = vbslq_s8(vcgtq_f32(*(v39 + 308), v23), *(v39 + 308), v23);
            v24 = vbslq_s8(vcgtq_f32(*(v39 + 292), v24), *(v39 + 292), v24);
            v21 = vbslq_s8(vcgtq_f32(*(v39 + 276), v21), *(v39 + 276), v21);
            v22 = vbslq_s8(vcgtq_f32(*(v39 + 260), v22), *(v39 + 260), v22);
            if (v37 < *(v39 + 129))
            {
              v37 = *(v39 + 129);
            }
          }

          ++v38;
          v39 += 260;
        }

        while (v38 < v9);
      }

      __dst[0] = v22;
      __dst[1] = v21;
      __dst[2] = v24;
      __dst[3] = v23;
      __dst[4] = v26;
      __dst[5] = v25;
      __dst[6] = v28;
      __dst[7] = v27;
      __dst[8] = v30;
      __dst[9] = v29;
      __dst[10] = v32;
      __dst[11] = v31;
      __dst[12] = v34;
      __dst[13] = v33;
      __dst[14] = v36;
      __dst[15] = v35;
      *&__dst[16] = v37;
    }

    if (a4 >= 2)
    {
      v40 = a3 + 65;
      memmove(&v106, a3, 0x104uLL);
      v42 = &v106 < &a3[65 * a4] && &v106 > a3;
      v43 = 1;
      do
      {
        if (v42)
        {
          v44 = 0;
        }

        else
        {
          v45 = &a3[65 * v43];
          v46 = vbslq_s8(vcgtq_f32(v45[1], v107), v45[1], v107);
          v106 = vbslq_s8(vcgtq_f32(*v45, v106), *v45, v106);
          v107 = v46;
          v47 = vbslq_s8(vcgtq_f32(v45[3], v109), v45[3], v109);
          v108 = vbslq_s8(vcgtq_f32(v45[2], v108), v45[2], v108);
          v109 = v47;
          v48 = vbslq_s8(vcgtq_f32(v45[5], v111), v45[5], v111);
          v110 = vbslq_s8(vcgtq_f32(v45[4], v110), v45[4], v110);
          v111 = v48;
          v49 = vbslq_s8(vcgtq_f32(v45[7], v113), v45[7], v113);
          v112 = vbslq_s8(vcgtq_f32(v45[6], v112), v45[6], v112);
          v113 = v49;
          v50 = vbslq_s8(vcgtq_f32(v45[9], v115), v45[9], v115);
          v114 = vbslq_s8(vcgtq_f32(v45[8], v114), v45[8], v114);
          v115 = v50;
          v51 = vbslq_s8(vcgtq_f32(v45[11], v117), v45[11], v117);
          v116 = vbslq_s8(vcgtq_f32(v45[10], v116), v45[10], v116);
          v117 = v51;
          v52 = vbslq_s8(vcgtq_f32(v45[13], v119), v45[13], v119);
          v118 = vbslq_s8(vcgtq_f32(v45[12], v118), v45[12], v118);
          v119 = v52;
          v53 = vbslq_s8(vcgtq_f32(v45[14], v120), v45[14], v120);
          v54 = vbslq_s8(vcgtq_f32(v45[15], v121), v45[15], v121);
          v44 = 64;
          v120 = v53;
          v121 = v54;
        }

        v55 = v44;
        do
        {
          v56 = v106.i32[v55];
          if (*&v56 < v40[v55])
          {
            v56 = SLODWORD(v40[v55]);
          }

          v106.i32[v55++] = v56;
        }

        while (v55 != 65);
        ++v43;
        v40 += 65;
      }

      while (v43 != a4);
      a3 = &v106;
    }

    v57 = 0;
    v58 = (a1 + 268);
    do
    {
      v59 = a3[v57 + 1];
      if (v59 > 44015000.0)
      {
        v60 = *(__dst + v57 * 4 + 4) / v59;
        v61 = a1 + v57 * 4;
        v62 = *(a1 + v57 * 4 + 12);
        if (v60 < v62)
        {
          *(v61 + 268) = 1000;
          v63 = v62 + ((v60 - v62) * 0.1);
          if (v63 < 0.01)
          {
            v63 = 0.01;
          }

          *(v61 + 12) = v63;
        }
      }

      ++v57;
    }

    while (v57 != 63);
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v65 = vaddq_s32(*(a1 + 284), v64);
    *v58 = vaddq_s32(*v58, v64);
    *(a1 + 284) = v65;
    v66 = vaddq_s32(*(a1 + 316), v64);
    *(a1 + 300) = vaddq_s32(*(a1 + 300), v64);
    *(a1 + 316) = v66;
    v67 = vaddq_s32(*(a1 + 348), v64);
    *(a1 + 332) = vaddq_s32(*(a1 + 332), v64);
    *(a1 + 348) = v67;
    v68 = vaddq_s32(*(a1 + 380), v64);
    *(a1 + 364) = vaddq_s32(*(a1 + 364), v64);
    *(a1 + 380) = v68;
    v69 = vaddq_s32(*(a1 + 412), v64);
    *(a1 + 396) = vaddq_s32(*(a1 + 396), v64);
    *(a1 + 412) = v69;
    v70 = vaddq_s32(*(a1 + 444), v64);
    *(a1 + 428) = vaddq_s32(*(a1 + 428), v64);
    *(a1 + 444) = v70;
    v71 = vaddq_s32(*(a1 + 476), v64);
    *(a1 + 460) = vaddq_s32(*(a1 + 460), v64);
    *(a1 + 476) = v71;
    *(a1 + 492) = vaddq_s32(*(a1 + 492), v64);
    *(a1 + 508) = vadd_s32(*(a1 + 508), -1);
    --*(a1 + 516);
    v72 = vdupq_n_s32(0x447A0000u);
    v73 = vbslq_s8(vcgtzq_s32(*(a1 + 284)), *(a1 + 28), vminnmq_f32(vaddq_f32(*(a1 + 28), *(a1 + 28)), v72));
    *(a1 + 12) = vbslq_s8(vcgtzq_s32(*v58), *(a1 + 12), vminnmq_f32(vaddq_f32(*(a1 + 12), *(a1 + 12)), v72));
    *(a1 + 28) = v73;
    v74 = vbslq_s8(vcgtzq_s32(*(a1 + 316)), *(a1 + 60), vminnmq_f32(vaddq_f32(*(a1 + 60), *(a1 + 60)), v72));
    *(a1 + 44) = vbslq_s8(vcgtzq_s32(*(a1 + 300)), *(a1 + 44), vminnmq_f32(vaddq_f32(*(a1 + 44), *(a1 + 44)), v72));
    *(a1 + 60) = v74;
    v75 = vbslq_s8(vcgtzq_s32(*(a1 + 348)), *(a1 + 92), vminnmq_f32(vaddq_f32(*(a1 + 92), *(a1 + 92)), v72));
    *(a1 + 76) = vbslq_s8(vcgtzq_s32(*(a1 + 332)), *(a1 + 76), vminnmq_f32(vaddq_f32(*(a1 + 76), *(a1 + 76)), v72));
    *(a1 + 92) = v75;
    v76 = vbslq_s8(vcgtzq_s32(*(a1 + 380)), *(a1 + 124), vminnmq_f32(vaddq_f32(*(a1 + 124), *(a1 + 124)), v72));
    *(a1 + 108) = vbslq_s8(vcgtzq_s32(*(a1 + 364)), *(a1 + 108), vminnmq_f32(vaddq_f32(*(a1 + 108), *(a1 + 108)), v72));
    *(a1 + 124) = v76;
    v77 = vbslq_s8(vcgtzq_s32(*(a1 + 412)), *(a1 + 156), vminnmq_f32(vaddq_f32(*(a1 + 156), *(a1 + 156)), v72));
    *(a1 + 140) = vbslq_s8(vcgtzq_s32(*(a1 + 396)), *(a1 + 140), vminnmq_f32(vaddq_f32(*(a1 + 140), *(a1 + 140)), v72));
    *(a1 + 156) = v77;
    v78 = vbslq_s8(vcgtzq_s32(*(a1 + 444)), *(a1 + 188), vminnmq_f32(vaddq_f32(*(a1 + 188), *(a1 + 188)), v72));
    *(a1 + 172) = vbslq_s8(vcgtzq_s32(*(a1 + 428)), *(a1 + 172), vminnmq_f32(vaddq_f32(*(a1 + 172), *(a1 + 172)), v72));
    *(a1 + 188) = v78;
    v79 = *(a1 + 204);
    v80 = vminnmq_f32(vaddq_f32(v79, v79), v72);
    v81 = vbslq_s8(vcgtzq_s32(*(a1 + 476)), *(a1 + 220), vminnmq_f32(vaddq_f32(*(a1 + 220), *(a1 + 220)), v72));
    *(a1 + 204) = vbslq_s8(vcgtzq_s32(*(a1 + 460)), v79, v80);
    *(a1 + 220) = v81;
    v82 = *(a1 + 236);
    v83 = *(a1 + 240);
    v84 = fminf(v82 + v82, 1000.0);
    if (*(a1 + 492) <= 0)
    {
      v82 = v84;
    }

    v85 = fminf(v83 + v83, 1000.0);
    if (*(a1 + 496) <= 0)
    {
      v83 = v85;
    }

    *(a1 + 236) = v82;
    *(a1 + 240) = v83;
    v86 = *(a1 + 244);
    v87 = *(a1 + 248);
    v88 = fminf(v86 + v86, 1000.0);
    if (*(a1 + 500) <= 0)
    {
      v86 = v88;
    }

    v89 = fminf(v87 + v87, 1000.0);
    if (*(a1 + 504) <= 0)
    {
      v87 = v89;
    }

    *(a1 + 244) = v86;
    *(a1 + 248) = v87;
    v90 = *(a1 + 252);
    v91 = *(a1 + 256);
    v92 = fminf(v90 + v90, 1000.0);
    if (*(a1 + 508) <= 0)
    {
      v90 = v92;
    }

    v93 = fminf(v91 + v91, 1000.0);
    if (*(a1 + 512) <= 0)
    {
      v91 = v93;
    }

    *(a1 + 252) = v90;
    *(a1 + 256) = v91;
    v94 = *(a1 + 260);
    v95 = fminf(v94 + v94, 1000.0);
    if (*(a1 + 516) <= 0)
    {
      v94 = v95;
    }

    *(a1 + 260) = v94;
    *(a1 + 8) = *(a1 + 12);
    *(a1 + 264) = v94;
    v96 = ((((((((((((((((((((((((((((((((((((((((((*a3 + 0.0) + a3[1]) + a3[2]) + a3[3]) + a3[4]) + a3[5]) + a3[6]) + a3[7]) + a3[8]) + a3[9]) + a3[10]) + a3[11]) + a3[12]) + a3[13]) + a3[14]) + a3[15]) + a3[16]) + a3[17]) + a3[18]) + a3[19]) + a3[20]) + a3[21]) + a3[22]) + a3[23]) + a3[24]) + a3[25]) + a3[26]) + a3[27]) + a3[28]) + a3[29]) + a3[30]) + a3[31]) + a3[32]) + a3[33]) + a3[34]) + a3[35]) + a3[36]) + a3[37]) + a3[38]) + a3[39]) + a3[40]) + a3[41]) + a3[42];
    v97 = (((((((((((((((((((((v96 + a3[43]) + a3[44]) + a3[45]) + a3[46]) + a3[47]) + a3[48]) + a3[49]) + a3[50]) + a3[51]) + a3[52]) + a3[53]) + a3[54]) + a3[55]) + a3[56]) + a3[57]) + a3[58]) + a3[59]) + a3[60]) + a3[61]) + a3[62]) + a3[63]) + a3[64];
    if (v97 > 2861000000.0)
    {
      v98 = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((*__dst + 0.0) + *(__dst + 1)) + *(__dst + 2)) + *(__dst + 3)) + *&__dst[1]) + *(&__dst[1] + 1)) + *(&__dst[1] + 2)) + *(&__dst[1] + 3)) + *&__dst[2]) + *(&__dst[2] + 1)) + *(&__dst[2] + 2)) + *(&__dst[2] + 3)) + *&__dst[3]) + *(&__dst[3] + 1)) + *(&__dst[3] + 2)) + *(&__dst[3] + 3)) + *&__dst[4]) + *(&__dst[4] + 1)) + *(&__dst[4] + 2)) + *(&__dst[4] + 3)) + *&__dst[5]) + *(&__dst[5] + 1)) + *(&__dst[5] + 2)) + *(&__dst[5] + 3)) + *&__dst[6]) + *(&__dst[6] + 1)) + *(&__dst[6] + 2)) + *(&__dst[6] + 3)) + *&__dst[7]) + *(&__dst[7] + 1)) + *(&__dst[7] + 2)) + *(&__dst[7] + 3)) + *&__dst[8]) + *(&__dst[8] + 1)) + *(&__dst[8] + 2)) + *(&__dst[8] + 3)) + *&__dst[9]) + *(&__dst[9] + 1)) + *(&__dst[9] + 2)) + *(&__dst[9] + 3)) + *&__dst[10]) + *(&__dst[10] + 1)) + *(&__dst[10] + 2)) + *(&__dst[10] + 3)) + *&__dst[11]) + *(&__dst[11] + 1)) + *(&__dst[11] + 2)) + *(&__dst[11] + 3)) + *&__dst[12]) + *(&__dst[12] + 1)) + *(&__dst[12] + 2)) + *(&__dst[12] + 3)) + *&__dst[13]) + *(&__dst[13] + 1)) + *(&__dst[13] + 2)) + *(&__dst[13] + 3)) + *&__dst[14]) + *(&__dst[14] + 1)) + *(&__dst[14] + 2)) + *(&__dst[14] + 3)) + *&__dst[15]) + *(&__dst[15] + 1)) + *(&__dst[15] + 2)) + *(&__dst[15] + 3)) + *&__dst[16]) / v97;
      v99 = *(a1 + 520);
      if (v98 < v99)
      {
        *(a1 + 524) = 1000;
        v100 = v99 + ((v98 - v99) * 0.1);
        if (v100 < 0.01)
        {
          v100 = 0.01;
        }

        *(a1 + 520) = v100;
      }
    }

    v101 = *(a1 + 524);
    v102 = (a1 + 520);
    v103 = (a1 + 520);
    v104 = __OFSUB__(v101--, 1);
    *(a1 + 524) = v101;
    if ((v101 < 0) ^ v104 | (v101 == 0))
    {
      v105 = *v102 + *v102;
      if (v105 < 1000.0)
      {
        v103 = &v105;
      }
    }

    result = *v103;
    *v102 = *v103;
  }

  return result;
}

uint64_t webrtc::ErleEstimator::ErleEstimator(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, unint64_t a5)
{
  *a1 = a3;
  webrtc::FullBandErleEstimator::FullBandErleEstimator((a1 + 8), a4 + 30, a5);
  webrtc::SubbandErleEstimator::SubbandErleEstimator(a1 + 112, a2, a4, a5, v9, v10);
  v11 = (a1 + 624);
  *(a1 + 624) = 0u;
  if (*&a4[32] >= 2uLL)
  {
    operator new();
  }

  webrtc::FullBandErleEstimator::Reset((a1 + 8), 0);
  webrtc::SubbandErleEstimator::Reset(a1 + 112, v12, v13, v14);
  if (*v11)
  {
    webrtc::SignalDependentErleEstimator::Reset(*v11, v15);
  }

  *(a1 + 632) = 0;
  return a1;
}

void webrtc::ErleEstimator::~ErleEstimator(webrtc::ErleEstimator *this)
{
  v2 = *(this + 78);
  *(this + 78) = 0;
  if (v2)
  {
    webrtc::SignalDependentErleEstimator::~SignalDependentErleEstimator(v2);
    MEMORY[0x2743DA540]();
  }

  webrtc::SubbandErleEstimator::~SubbandErleEstimator((this + 112));
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}