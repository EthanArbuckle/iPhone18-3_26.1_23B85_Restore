uint64_t gcl::ArithmeticEncoder::start(uint64_t this)
{
  v1 = 0;
  *&v2 = 0xFFFF00000000;
  *(&v2 + 1) = 0xFFFF00000000;
  *(this + 24) = v2;
  *(this + 16) = 0;
  *(this + 40) = 0;
  v3 = 0x217u;
  do
  {
    *(this + v1 * 2 + 48) = gcl::ArithmeticEncoder::probUpdateLut[v1];
    *(this + v3 * 2) = gcl::ArithmeticEncoder::probUpdateLut[v3 - 280];
    --v3;
    ++v1;
  }

  while (v1 != 256);
  return this;
}

void *gcl::ArithmeticDecoder::start(gcl::ArithmeticDecoder *this)
{
  *&v1 = 0xFFFF000000000000;
  *(&v1 + 1) = 0xFFFF000000000000;
  *(this + 24) = v1;
  *(this + 5) = 16;
  v2 = *(this + 2);
  if (!v2)
  {
    v4 = -16777216;
    goto LABEL_7;
  }

  v3 = *(this + 2);
  v4 = *v3 << 24;
  *(this + 8) = v4;
  if (v2 == 1)
  {
LABEL_7:
    v5 = v4 | 0xFF0000;
    goto LABEL_8;
  }

  v5 = v4 | (v3[1] << 16);
  *(this + 8) = v5;
  if (v2 <= 2)
  {
LABEL_8:
    v6 = v5 | 0xFF00;
    goto LABEL_9;
  }

  v6 = v5 | (v3[2] << 8);
  *(this + 8) = v6;
  if (v2 == 3)
  {
LABEL_9:
    v7 = 255;
    goto LABEL_10;
  }

  v7 = v3[3];
LABEL_10:
  *(this + 8) = v7 | v6;
  *this = 3;
  return memcpy(this + 48, &gcl::ArithmeticDecoder::probUpdateLutInterleaved, 0x400uLL);
}

unsigned int *gcl::motion::EncoderImpl::encodeResidual(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6, void *a7)
{
  v10 = result;
  if (!*a6)
  {
    if (a5 < 1)
    {
      return result;
    }

    v21 = 0;
    v22 = a5;
    while (1)
    {
      v23 = *(a3 + 4 * v21);
      v24 = *(a4 + 4 * v21);
      v25 = (*a7 + 2 * v21);
      v26 = v10 + 8;
      v27 = v23 - v24;
      if (v23 == v24)
      {
        break;
      }

      gcl::ArithmeticEncoder::encode(v26, 1, v25);
      v28 = (a7[3] + 2 * v21);
      v29 = v10 + 8;
      if ((v27 & 0x80000000) != 0)
      {
        gcl::ArithmeticEncoder::encode(v29, 0, v28);
        v27 = -v27;
      }

      else
      {
        gcl::ArithmeticEncoder::encode(v29, 1, v28);
      }

      v31 = v27 - 1;
      v32 = a7[6];
      v33 = (v32 + 2 * (v21 << 6));
      if (v27 <= 0x3F)
      {
        gcl::ArithmeticEncoder::encode(v10 + 8, (v31 >> 5) & 1, (v32 + 2 * (v21 << 6)));
        gcl::ArithmeticEncoder::encode(v10 + 8, (v31 >> 4) & 1, &v33[(v31 >> 5) + 1]);
        gcl::ArithmeticEncoder::encode(v10 + 8, (v31 >> 3) & 1, &v33[(v31 >> 4) + 3]);
        gcl::ArithmeticEncoder::encode(v10 + 8, (v31 >> 2) & 1, &v33[(v31 >> 3) + 7]);
        gcl::ArithmeticEncoder::encode(v10 + 8, (v31 >> 1) & 1, &v33[(v31 >> 2) + 15]);
        v26 = v10 + 8;
        v30 = v31 & 1;
        v25 = (v33 + (v31 & 0xFFFFFFFE) + 62);
        goto LABEL_29;
      }

      gcl::ArithmeticEncoder::encode(v10 + 8, 1, (v32 + 2 * (v21 << 6)));
      gcl::ArithmeticEncoder::encode(v10 + 8, 1, v33 + 2);
      gcl::ArithmeticEncoder::encode(v10 + 8, 1, v33 + 6);
      gcl::ArithmeticEncoder::encode(v10 + 8, 1, v33 + 14);
      gcl::ArithmeticEncoder::encode(v10 + 8, 1, v33 + 30);
      gcl::ArithmeticEncoder::encode(v10 + 8, 1, v33 + 62);
      v34 = a7[12];
      result = gcl::ArithmeticEncoder::encodeExpGolomb(v10 + 8, v27 - 64, *(v34 + 4 * v21), (a7[9] + 2 * v21));
      v35 = *(v34 + 4 * v21);
      v36 = v31 >> v35;
      if (v35 && !v36)
      {
        v37 = v35 - 1;
LABEL_35:
        *(v34 + 4 * v21) = v37;
        goto LABEL_36;
      }

      if (v36 >= 2)
      {
        v37 = v35 + 1;
        goto LABEL_35;
      }

LABEL_36:
      if (++v21 == v22)
      {
        return result;
      }
    }

    v30 = 0;
LABEL_29:
    result = gcl::ArithmeticEncoder::encode(v26, v30, v25);
    goto LABEL_36;
  }

  if (*a6 == 1 && a5 >= 1)
  {
    v12 = 0;
    v13 = a5;
    while (1)
    {
      v14 = *(a3 + 4 * v12) - *(a4 + 4 * v12);
      v15 = a7[12];
      result = gcl::ArithmeticEncoder::encodeSignedExpGolomb(v10 + 8, v14, *(v15 + 4 * v12), (a7[3] + 2 * v12), (a7[9] + 2 * v12));
      v16 = v14 >= 0 ? v14 : -v14;
      v17 = *(v15 + 4 * v12);
      v18 = v16 >> v17;
      if (v17 && v18 == 0)
      {
        break;
      }

      if (v18 >= 2)
      {
        v20 = 1;
LABEL_17:
        *(v15 + 4 * v12) = v17 + v20;
      }

      if (++v12 == v13)
      {
        return result;
      }
    }

    v20 = -1;
    goto LABEL_17;
  }

  return result;
}

unsigned int *gcl::ArithmeticEncoder::encode(unsigned int *result, int a2, _WORD *a3)
{
  v3 = *a3;
  v4 = result[7];
  v5 = (v4 * v3) >> 16;
  if (a2)
  {
    result[6] += v5;
    v5 = v4 - v5;
    v6 = v3 - *(result + ((v3 >> 7) & 0x1FE) + 48);
  }

  else
  {
    v6 = *(result + (~(*a3 >> 7) & 0x1FE) + 48) + *a3;
  }

  result[7] = v5;
  *a3 = v6;
  if (v5 <= 0x4000)
  {
    v7 = result[6];
    v8 = result[10];
    while (1)
    {
      v7 *= 2;
      v5 *= 2;
      result[6] = v7;
      result[7] = v5;
      result[10] = ++v8;
      if (v8 == 8)
      {
        break;
      }

LABEL_18:
      if (v5 > 0x4000)
      {
        return result;
      }
    }

    v9 = *(result + 2);
    v10 = result[11];
    if (v9 + v10 + 1 > *result)
    {
      return result;
    }

    if (HIBYTE(v7))
    {
      ++*(*(result + 1) + v9 - 1);
      v9 = *(result + 2);
      if (result[11])
      {
        do
        {
          *(*(result + 1) + v9) = 0;
          v11 = result[11];
          v9 = *(result + 2) + 1;
          *(result + 2) = v9;
          result[11] = --v11;
        }

        while (v11);
      }
    }

    else
    {
      if ((v7 + v5) >> 24)
      {
        result[11] = v10 + 1;
LABEL_17:
        v8 = 0;
        v7 = v7;
        result[6] = v7;
        result[10] = 0;
        goto LABEL_18;
      }

      if (v10)
      {
        do
        {
          *(*(result + 1) + v9) = -1;
          v12 = result[11];
          v9 = *(result + 2) + 1;
          *(result + 2) = v9;
          result[11] = --v12;
        }

        while (v12);
      }
    }

    *(*(result + 1) + v9) = *(result + 13);
    ++*(result + 2);
    LOWORD(v7) = *(result + 12);
    v5 = result[7];
    goto LABEL_17;
  }

  return result;
}

unsigned int *gcl::ArithmeticEncoder::encodeExpGolomb(unsigned int *a1, int a2, int a3, _WORD *a4)
{
  if ((a3 | a2) < 0)
  {
    gcl::ArithmeticEncoder::encodeExpGolomb();
  }

  v5 = a3;
  v6 = a2;
  for (i = 1 << a3; v6 >= 1 << v5; i = 1 << v5)
  {
    gcl::ArithmeticEncoder::encode(a1, 1, a4);
    ++v5;
    v6 -= i;
  }

  result = gcl::ArithmeticEncoder::encode(a1, 0, a4);
  if (v5)
  {
    v10 = v5 - 1;
    do
    {
      v11 = 0x8000;
      result = gcl::ArithmeticEncoder::encode(a1, (v6 >> v10--) & 1, &v11);
    }

    while (v10 != -1);
  }

  return result;
}

unsigned int *gcl::ArithmeticEncoder::encodeSignedExpGolomb(unsigned int *a1, int a2, int a3, _WORD *a4, _WORD *a5)
{
  if (a3 < 0)
  {
    gcl::ArithmeticEncoder::encodeSignedExpGolomb();
  }

  v6 = a2;
  if (a2 < 0)
  {
    a2 = -a2;
  }

  result = gcl::ArithmeticEncoder::encodeExpGolomb(a1, a2, a3, a5);
  if (v6)
  {

    return gcl::ArithmeticEncoder::encode(a1, v6 >= 0, a4);
  }

  return result;
}

uint64_t gcl::motion::EncoderImpl::encodeSequenceParameterSet(gcl::motion::EncoderImpl *this, int a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, unint64_t *a6)
{
  result = 5;
  if (a3 <= 0xFF && a4 && a5 >= 8)
  {
    *a4 = 3;
    a4[2] = 3;
    *(a4 + 3) = 0;
    *(a4 + 5) = a2;
    a4[7] = a3;
    *a6 = 8;
    *(this + 3) = 0;
    *this = a2;
    *(this + 1) = a3;
    v8 = a2 * a3;
    std::vector<int>::resize(this + 49, v8);
    std::vector<int>::resize(this + 48, v8);
    v9 = *(this + 144);
    v10 = *(this + 145) - v9;
    if (v10 >= 1)
    {
      bzero(v9, v10);
    }

    return 0;
  }

  return result;
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

uint64_t gcl::motion::EncoderImpl::encodeSequenceParameterSetFromSliceList(std::vector<int> *this, unsigned __int8 *a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = 1431655767 * ((this[46].__end_ - this[46].__begin_) >> 2) + 9;
    if (v8 <= a3)
    {
      *(a2 + 1) = 1;
      a2[8] = -85 * ((LODWORD(this[46].__end_) - LODWORD(this[46].__begin_)) >> 2);
      begin = this[46].__begin_;
      end = this[46].__end_;
      if (begin == end)
      {
        v13 = 0;
        v14 = 9;
      }

      else
      {
        v13 = 0;
        v14 = 9;
        do
        {
          if (*begin)
          {
            v15 = *(begin + 4);
            v16 = *(begin + 5);
            v17 = *(begin + 2);
            v18 = *(begin + 2);
            v19 = *(begin + 3);
            v20 = *(begin + 1);
            a2[v14++] = *(begin + 6);
            v21 = 1;
            do
            {
              v22 = v21;
              a2[v14++] = v18;
              v18 = v19;
              v21 = 0;
            }

            while ((v22 & 1) != 0);
            v23 = 1;
            do
            {
              v24 = v23;
              a2[v14++] = v15;
              v15 = v16;
              v23 = 0;
            }

            while ((v24 & 1) != 0);
            v13 += v20 * v17;
          }

          else
          {
            v25 = begin[2];
            a2[v14] = -1;
            *&a2[v14 + 1] = v25;
            v14 += 5;
            *a6 += v25;
          }

          begin += 3;
        }

        while (begin != end);
      }

      *a4 = v14;
      *a2 = bswap32(v14 & 0xFFFFFF | 0x3000000);
      *a5 = v13;
      HIDWORD(this->__end_) = 0;
      LODWORD(this->__end_cap_.__value_) = v13;
      std::vector<int>::resize(this + 49, v13);
      std::vector<int>::resize(this + 48, v13);
      v26 = this[48].__begin_;
      v27 = this[48].__end_ - v26;
      if (v27 >= 1)
      {
        bzero(v26, v27);
      }

      result = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = this[1].__begin_;
        v29 = 134218496;
        v30 = v9;
        v31 = 2048;
        v32 = a3;
        v33 = 1024;
        v34 = v8;
        _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc - %llu buffer too small %zu %u", &v29, 0x1Cu);
      }

      result = 10;
    }
  }

  else
  {
    result = 5;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gcl::motion::EncoderImpl::addCompressibleStreamFormat(gcl::motion::EncoderImpl *this, __int16 a2, __int16 a3, char a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 139) - *(this + 138)) >> 2);
  if (v5 > 0xFE)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = *(this + 3);
      v9 = 134218240;
      v10 = v7;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc - %llu MSCEnc too manh slices %zu", &v9, 0x16u);
    }

    result = 13;
  }

  else
  {
    LOBYTE(v9) = 1;
    HIWORD(v9) = a2;
    LOWORD(v10) = a3;
    BYTE2(v10) = a4;
    HIDWORD(v10) = 0;
    std::vector<gcl::motion::SliceInfo>::push_back[abi:ne200100](this + 1104, &v9);
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<gcl::motion::SliceInfo>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<gcl::motion::SliceInfo>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[12 * v8];
    v14 = &v12[12 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    v7 = v13 + 12;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = (v5 + 12);
  }

  *(a1 + 8) = v7;
}

uint64_t gcl::motion::EncoderImpl::addNonCompressibleStreamFormat(gcl::motion::EncoderImpl *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 139) - *(this + 138)) >> 2);
  if (v3 > 0xFE)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 3);
      *v7 = 134218240;
      *&v7[4] = v5;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc - %llu MSCEnc too manh slices %zu", v7, 0x16u);
    }

    result = 13;
  }

  else
  {
    v7[0] = 0;
    *&v7[2] = 0;
    v7[6] = -1;
    *&v7[8] = a2;
    std::vector<gcl::motion::SliceInfo>::push_back[abi:ne200100](this + 1104, v7);
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gcl::motion::EncoderImpl::encodeSequenceParameterSet(gcl::motion::EncoderImpl *this, int a2, unint64_t a3, int a4, unsigned __int8 *a5, unint64_t a6, unint64_t *a7)
{
  result = 5;
  if (a3 <= 0xFF && a5)
  {
    *a5 = 3;
    a5[2] = 3;
    *(a5 + 3) = 0;
    *(a5 + 5) = a2;
    a5[7] = a3;
    a5[8] = a4;
    *a7 = 9;
    *this = a2;
    *(this + 1) = a3;
    v9 = a2 * a3;
    *(this + 2) = a4;
    *(this + 3) = 0;
    std::vector<int>::resize(this + 49, v9);
    std::vector<int>::resize(this + 48, v9);
    v10 = *(this + 144);
    v11 = *(this + 145) - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    return 0;
  }

  return result;
}

uint64_t gcl::motion::EncoderImpl::encodeFrame(uint64_t a1, int *a2, int a3, unint64_t *a4, unint64_t a5, unint64_t *a6, uint64_t a7)
{
  if (!a2)
  {
    return 5;
  }

  v8 = *a1;
  if (!*a1)
  {
    return 5;
  }

  result = 5;
  if (a5 < 6)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  v12 = *(a1 + 4);
  if (!v12)
  {
    return result;
  }

  v14 = a2;
  if (v8 >= 2)
  {
    v15 = 1;
    v16 = *(a1 + 4);
    while (v12 < 1)
    {
LABEL_12:
      ++v15;
      v16 += v12 & ~(v12 >> 31);
      if (v15 == v8)
      {
        goto LABEL_13;
      }
    }

    v17 = &a2[v16];
    v18 = *(a1 + 4);
    while (1)
    {
      v19 = *v17++;
      if ((v19 - 0x10000000) < 0xE0000001)
      {
        return 5;
      }

      if (!--v18)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  if (a3)
  {
    if (a3 != 1)
    {
      return 5;
    }

    v20 = (a7 + 5);
    v21 = (a7 + 4);
    v22 = *(a7 + 4) | (16 * *(a7 + 5));
    v23 = (a1 + 12);
    v51 = *(a1 + 12);
    v24 = (v12 * v8);
    v52 = v12 * v8;
    if (v24 < 1)
    {
      v50 = 1;
    }

    else
    {
      v25 = *(a1 + 1152);
      v26 = *(a1 + 1176);
      v50 = 1;
      v27 = a2;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v30 = *v25++;
        *v26++ = v28 - v30;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    v20 = (a7 + 5);
    v21 = (a7 + 4);
    v22 = *(a7 + 4) | (16 * *(a7 + 5));
    v23 = (a1 + 12);
    v31 = (v12 * v8);
    v52 = v31;
    v51 = *(a1 + 12);
    if (v31 >= 1)
    {
      v32 = *(a1 + 1176);
      v33 = a2;
      do
      {
        v34 = *v33++;
        *v32++ = v34;
        --v31;
      }

      while (v31);
    }

    v50 = 0;
  }

  *(a1 + 32) = a5 - 8;
  *(a1 + 40) = a4 + 1;
  gcl::ArithmeticEncoder::start(a1 + 32);
  if (*v20 > 1u)
  {
    return 5;
  }

  v62 = 0;
  v60 = 0u;
  *v61 = 0u;
  *v58 = 0u;
  *v59 = 0u;
  *v56 = 0u;
  v57 = 0u;
  *v55 = 0u;
  gcl::motion::ACContext::init(v55, *(a1 + 4));
  v48 = v22;
  v49 = v23;
  v35 = *(a1 + 4);
  v53 = 0;
  std::vector<int>::vector[abi:ne200100](__p, v35, &v53);
  if (*a1 >= 1)
  {
    v37 = 0;
    v38 = *v20;
    v39 = *(a1 + 1176);
    LODWORD(v40) = *(a1 + 4);
    do
    {
      gcl::motion::EncoderImpl::encodeResidual(a1, v36, v39, __p[0], v40, v21, v55);
      if (v38 && *(a1 + 4) >= 1)
      {
        v41 = 0;
        v42 = __p[0];
        do
        {
          v42[v41] = *(v39 + 4 * v41);
          ++v41;
        }

        while (v41 < *(a1 + 4));
      }

      ++v37;
      v40 = *(a1 + 4);
      v39 += 4 * v40;
    }

    while (v37 < *a1);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  if (v59[1])
  {
    *&v60 = v59[1];
    operator delete(v59[1]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (v56[1])
  {
    *&v57 = v56[1];
    operator delete(v56[1]);
  }

  if (v55[0])
  {
    v55[1] = v55[0];
    operator delete(v55[0]);
  }

  v43 = gcl::ArithmeticEncoder::stop((a1 + 32));
  if (v43 >= 0xFFFFFF)
  {
    return 10;
  }

  v44 = v43 + 8;
  *a4 = bswap64(v43) & 0xFFFFFFFFFFFF00FFLL | (HIWORD(v43) << 40) | (v51 << 16) | (v48 << 8) | v50;
  if (v52 >= 1)
  {
    v45 = *(a1 + 1152);
    v46 = v52;
    do
    {
      v47 = *v14++;
      *v45++ = v47;
      --v46;
    }

    while (v46);
  }

  *a6 = v44;
  if (v44 > a5)
  {
    return 1;
  }

  result = 0;
  ++*v49;
  return result;
}

void gcl::motion::ACContext::init(std::vector<int> *this, int a2)
{
  v4 = a2;
  std::vector<gcl::ArithmeticContext>::resize(this, a2);
  std::vector<gcl::ArithmeticContext>::resize(&this[1].__begin_, v4);
  std::vector<gcl::ArithmeticContext>::resize(&this[2].__begin_, a2 << 6);
  std::vector<gcl::ArithmeticContext>::resize(&this[3].__begin_, v4);
  std::vector<int>::resize(this + 4, v4);
  begin = this[4].__begin_;
  v6 = this[4].__end_ - begin;
  if (v6 >= 1)
  {
    memset_pattern16(begin, &unk_2660803F0, v6);
  }

  end = this->__end_;
  if (this->__begin_ != end)
  {
    memset_pattern16(this->__begin_, &unk_266080400, end - this->__begin_);
  }

  v8 = this[1].__begin_;
  v9 = this[1].__end_;
  if (v8 != v9)
  {
    memset_pattern16(v8, &unk_266080400, v9 - v8);
  }

  v10 = this[2].__begin_;
  v11 = this[2].__end_;
  if (v10 != v11)
  {
    memset_pattern16(v10, &unk_266080400, v11 - v10);
  }

  v12 = this[3].__begin_;
  v13 = this[3].__end_;
  if (v12 != v13)
  {

    memset_pattern16(v12, &unk_266080400, v13 - v12);
  }
}

void gcl::motion::ACContext::~ACContext(gcl::motion::ACContext *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

unint64_t gcl::ArithmeticEncoder::stop(gcl::ArithmeticEncoder *this)
{
  v1 = *(this + 2);
  v2 = *(this + 11);
  if (v1 + v2 + 3 > *this)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(this + 10);
  v6 = *(this + 6);
  do
  {
    if ((v6 | ((2 << v4) - 1)) > *(this + 7) - 1)
    {
      break;
    }

    ++v4;
  }

  while (v4 != 16);
  v7 = v6 | ~(-1 << v4);
  *(this + 6) = v7;
  if (v5 <= 7)
  {
    v8 = v5 - 8;
    do
    {
      v7 = (2 * v7) | 1;
    }

    while (!__CFADD__(v8++, 1));
    *(this + 6) = v7;
    *(this + 10) = 8;
  }

  if (HIBYTE(v7))
  {
    ++*(*(this + 1) + v1 - 1);
    v1 = *(this + 2);
    if (*(this + 11))
    {
      do
      {
        *(*(this + 1) + v1) = 0;
        v10 = *(this + 11);
        v1 = *(this + 2) + 1;
        *(this + 2) = v1;
        *(this + 11) = --v10;
      }

      while (v10);
    }
  }

  else if (v2)
  {
    do
    {
      *(*(this + 1) + v1) = -1;
      v11 = *(this + 11);
      v1 = *(this + 2) + 1;
      *(this + 2) = v1;
      *(this + 11) = --v11;
    }

    while (v11);
  }

  *(*(this + 1) + v1) = *(this + 13);
  v12 = *(this + 1);
  v13 = *(this + 2) + 1;
  *(this + 2) = v13;
  *(v12 + v13) = BYTE1(*(this + 6));
  v3 = *(this + 2) + 1;
  *(this + 2) = v3;
  if (v5 >= 1)
  {
    *(*(this + 1) + v3) = *(this + 6);
    v3 = *(this + 2) + 1;
    *(this + 2) = v3;
  }

  if (v3 >= 2)
  {
    v14 = *(this + 1) - 1;
    while (*(v14 + v3) == 255)
    {
      *(this + 2) = --v3;
      if (v3 <= 1)
      {
        return 1;
      }
    }
  }

  return v3;
}

uint64_t gcl::motion::EncoderImpl::encodeFrame(std::vector<int> *this, char *__src, unsigned int a3, unsigned __int8 *a4, unint64_t a5, unint64_t *a6, _BYTE *a7)
{
  v7 = a5;
  v8 = a4;
  v9 = __src;
  v108 = *MEMORY[0x277D85DE8];
  v99 = 0;
  v100 = 0;
  v11 = a7[7];
  v98 = 0;
  if (!__src || !a4 || a5 <= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      begin = this[1].__begin_;
      *buf = 134218752;
      *&buf[4] = begin;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = v8;
      LOWORD(v102) = 2048;
      *(&v102 + 2) = v7;
      v16 = MEMORY[0x277D86220];
      v17 = "MSCEnc - %llu MSCEnc no input %p %p %zu";
      v18 = 42;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  end_high = HIDWORD(this->__end_);
  if (end_high)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (a3 && end_high && !v11)
  {
    v92 = 0;
    v14 = a4;
  }

  else
  {
    gcl::motion::EncoderImpl::encodeSequenceParameterSetFromSliceList(this, a4, a5, &v100, &v99, &v98);
    v92 = v100;
    v14 = (v8 + v100);
  }

  end = this[46].__end_;
  v22 = this[46].__begin_;
  if (end != v22)
  {
    v23 = 0;
    v24 = 0xAAAAAAAAAAAAAAABLL * (end - v22);
    v25 = this[48].__begin_;
    v26 = this[49].__begin_;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v27 = v9;
    do
    {
      v28 = &v22[3 * v23];
      if (*v28)
      {
        v29 = v9;
        v30 = *(v28 + 2);
        v31 = *(v28 + 1);
        if (*(v28 + 1))
        {
          v32 = v30 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v80 = this[1].__begin_;
            *buf = 134218496;
            *&buf[4] = v80;
            *&buf[12] = 1024;
            *&buf[14] = v31;
            *&buf[18] = 1024;
            *&buf[20] = v30;
            v16 = MEMORY[0x277D86220];
            v17 = "MSCEnc - %llu MSCEnc invalid counts %u %u";
            v18 = 24;
            goto LABEL_13;
          }

LABEL_14:
          result = 5;
          goto LABEL_15;
        }

        v88 = v14;
        v33 = v13;
        v34 = v8;
        v35 = v7;
        v36 = 0;
        v37 = *(v28 + 6);
        v38 = *(v28 + 1) * *(v28 + 2);
        v39 = (1 << v37);
        v40 = 4 * v30;
        v41 = v27;
        v42 = v25;
        v43 = v26;
        do
        {
          v44 = v30;
          v45 = v41;
          v46 = v42;
          v47 = v43;
          do
          {
            v48 = llroundf(*v45 * v39);
            v49 = v48;
            if (v33 == 1)
            {
              v49 = v48 - *v46;
            }

            *v47 = v49;
            if (v49 - 0x10000000 < 0xE0000001)
            {
              goto LABEL_14;
            }

            *v46++ = v48;
            ++v47;
            ++v45;
            --v44;
          }

          while (v44);
          ++v36;
          v43 = (v43 + v40);
          v42 = (v42 + v40);
          v41 = (v41 + v40);
        }

        while (v36 != v31);
        v50 = (4 * v38);
        if (4 * v38 != v50)
        {
          goto LABEL_78;
        }

        v26 += v38;
        v27 = (v27 + v50);
        v25 += v38;
        v7 = v35;
        v8 = v34;
        v13 = v33;
        v9 = v29;
        v14 = v88;
      }

      else
      {
        v51 = v28[2];
        if (v51)
        {
          v27 = (v27 + v51);
        }
      }

      ++v23;
    }

    while (v23 != v24);
  }

  if (v13 > 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v72 = this[1].__begin_;
      *buf = 134218240;
      *&buf[4] = v72;
      *&buf[12] = 256;
      buf[14] = v13;
      v16 = MEMORY[0x277D86220];
      v17 = "MSCEnc - %llu MSCEnc Unknown frame type %d";
      goto LABEL_84;
    }

    goto LABEL_14;
  }

  v52 = a7[4];
  v53 = a7[5];
  v54 = HIDWORD(this->__end_);
  v93 = (v14 + 4);
  if (end != v22)
  {
    v81 = a7[5];
    v82 = a7[4];
    v83 = HIDWORD(this->__end_);
    v84 = v13;
    v85 = v8;
    v55 = 0;
    LODWORD(v8) = 0;
    v56 = this[49].__begin_;
    v57 = 12;
    v87 = v7;
    v89 = v14;
    while (1)
    {
      v58 = &v22[3 * v55];
      v95 = *(v58 + 6);
      if (*v58)
      {
        v91 = v8;
        v59 = *(v58 + 2);
        v60 = *(v58 + 1);
        LODWORD(this[1].__end_) = v7 - (v92 + v57) - 4;
        this[1].__end_cap_.__value_ = (v93 + v57);
        gcl::ArithmeticEncoder::start(&this[1].__end_);
        v90 = v9;
        v61 = a7[5];
        if (v61 > 1)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v78 = this[1].__begin_;
          *buf = 134218240;
          *&buf[4] = v78;
          *&buf[12] = 256;
          buf[14] = v61;
          v16 = MEMORY[0x277D86220];
          v17 = "MSCEnc - %llu MSCEnc Unknown strategy type %d";
LABEL_84:
          v18 = 15;
LABEL_13:
          _os_log_impl(&dword_26606F000, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
          goto LABEL_14;
        }

        v107 = 0;
        v105 = 0u;
        v106 = 0u;
        *v103 = 0u;
        *v104 = 0u;
        v102 = 0u;
        memset(buf, 0, sizeof(buf));
        gcl::motion::ACContext::init(buf, v59);
        v96 = 0;
        std::vector<int>::vector[abi:ne200100](__p, v59, &v96);
        if (v60)
        {
          v63 = 0;
          if (v59)
          {
            v64 = a7[5] == 0;
          }

          else
          {
            v64 = 1;
          }

          v65 = !v64;
          do
          {
            gcl::motion::EncoderImpl::encodeResidual(this, v62, v56, __p[0], v59, a7 + 4, buf);
            if (v65)
            {
              v66 = 0;
              v67 = __p[0];
              do
              {
                v67[v66] = *(v56 + 4 * v66);
                ++v66;
              }

              while (v66 < v59);
            }

            ++v63;
            v56 += 4 * v59;
          }

          while (v63 != v60);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v7 = v87;
        v9 = v90;
        if (v106)
        {
          *(&v106 + 1) = v106;
          operator delete(v106);
        }

        if (v104[1])
        {
          *&v105 = v104[1];
          operator delete(v104[1]);
        }

        if (v103[0])
        {
          v103[1] = v103[0];
          operator delete(v103[0]);
        }

        if (*&buf[24])
        {
          *&v102 = *&buf[24];
          operator delete(*&buf[24]);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v68 = gcl::ArithmeticEncoder::stop(&this[1].__end_);
        v69 = 4 * (v60 * v59);
        v14 = v89;
        LODWORD(v8) = v91;
      }

      else
      {
        v68 = v58[2];
        memcpy(v93 + v57, v9, v68);
        v69 = v68;
      }

      if (v68 > 0xFFFFFE)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v75 = this[1].__begin_;
          *buf = 134218240;
          *&buf[4] = v75;
          *&buf[12] = 2048;
          *&buf[14] = v68;
          v76 = MEMORY[0x277D86220];
          v77 = "MSCEnc - %llu MSCEnc Large Slice payload %llu";
          goto LABEL_87;
        }

LABEL_88:
        result = 10;
        goto LABEL_15;
      }

      v9 = (v9 + v69);
      *&v14[v57] = bswap32(v68) | v95;
      v57 += v68 + 4;
      v8 = (v8 + v68);
      ++v55;
      v22 = this[46].__begin_;
      if (0xAAAAAAAAAAAAAAABLL * (this[46].__end_ - v22) <= v55)
      {
        v70 = v8;
        v8 = v85;
        LODWORD(v13) = v84;
        if (v57 <= 0xFFFFFE)
        {
          v71 = v70 << 32;
          v52 = v82;
          v54 = v83;
          v53 = v81;
          goto LABEL_75;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v79 = this[1].__begin_;
          *buf = 134218240;
          *&buf[4] = v79;
          *&buf[12] = 2048;
          *&buf[14] = v57;
          v76 = MEMORY[0x277D86220];
          v77 = "MSCEnc - %llu MSCEnc Large NAL payload %llu";
LABEL_87:
          _os_log_impl(&dword_26606F000, v76, OS_LOG_TYPE_ERROR, v77, buf, 0x16u);
        }

        goto LABEL_88;
      }
    }
  }

  v71 = 0;
  v57 = 12;
LABEL_75:
  *(v8 + v92) = bswap32(v57) | v13;
  *v93 = v71 | (v54 << 16) | (v52 | (16 * v53));
  v73 = v57 + v92;
  *a6 = v73;
  if (v73 <= v7)
  {
    result = 0;
    ++HIDWORD(this->__end_);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v74 = this[1].__begin_;
      *buf = 134218496;
      *&buf[4] = v74;
      *&buf[12] = 2048;
      *&buf[14] = v73;
      *&buf[22] = 2048;
      *&buf[24] = v7;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc - %llu MSCEnc encoded stream too large %zu %zu", buf, 0x20u);
    }

LABEL_78:
    result = 1;
  }

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

gcl::motion::Encoder *gcl::motion::Encoder::Encoder(gcl::motion::Encoder *this)
{
  v2 = operator new(0x4B0uLL);
  v2[3] = 0;
  v2[5] = 0;
  *v2 = 0;
  v2[1] = 0;
  *(v2 + 4) = 0;
  *(v2 + 69) = 0u;
  *(v2 + 70) = 0u;
  *(v2 + 71) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 74) = 0u;
  *this = v2;
  return this;
}

{
  v2 = operator new(0x4B0uLL);
  v2[3] = 0;
  v2[5] = 0;
  *v2 = 0;
  v2[1] = 0;
  *(v2 + 4) = 0;
  *(v2 + 69) = 0u;
  *(v2 + 70) = 0u;
  *(v2 + 71) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 74) = 0u;
  *this = v2;
  return this;
}

void gcl::motion::Encoder::~Encoder(gcl::motion::EncoderImpl **this)
{
  std::unique_ptr<gcl::motion::EncoderImpl>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<gcl::motion::EncoderImpl>::reset[abi:ne200100](this, 0);
}

void std::vector<gcl::ArithmeticContext>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<gcl::ArithmeticContext>::__append(a1, a2 - v2);
  }
}

void std::vector<gcl::ArithmeticContext>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      memset_pattern16(*(a1 + 8), &unk_266080400, 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<gcl::ArithmeticContext>>(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v9];
    v14 = &v12[2 * v11];
    memset_pattern16(v13, &unk_266080400, 2 * a2);
    memcpy(&v13[-2 * (v7 >> 1)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-2 * (v7 >> 1)];
    *(a1 + 8) = &v13[2 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279BC4BB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<gcl::ArithmeticContext>>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(2 * a2);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - begin;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
      begin = this->__begin_;
      v7 = this->__end_ - this->__begin_;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * v9];
    v14 = &v12[4 * v11];
    bzero(v13, 4 * __n);
    memcpy(&v13[-4 * (v7 >> 2)], begin, v7);
    v15 = this->__begin_;
    this->__begin_ = &v13[-4 * (v7 >> 2)];
    this->__end_ = &v13[4 * __n];
    this->__end_cap_.__value_ = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(4 * a2);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<gcl::motion::SliceInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(12 * a2);
}

void *std::vector<int>::vector[abi:ne200100](void *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
    v6 = 0;
    v7 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 4 * a2;
    v12 = *a3;
    v13 = v8 + 4;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_2660803E0)));
      if (vuzp1_s16(v16, *v9.i8).u8[0])
      {
        *(v14 - 2) = v12;
      }

      if (vuzp1_s16(v16, *&v9).i8[2])
      {
        *(v14 - 1) = v12;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_2660803D0)))).i32[1])
      {
        *v14 = v12;
        v14[1] = v12;
      }

      v6 += 4;
      v14 += 4;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_266072678(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<int>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * v4];
  return result;
}

void std::unique_ptr<gcl::motion::EncoderImpl>::reset[abi:ne200100](gcl::motion::EncoderImpl **a1, gcl::motion::EncoderImpl *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    gcl::motion::EncoderImpl::~EncoderImpl(v3);

    operator delete(v4);
  }
}

void gcl::motion::EncoderImpl::~EncoderImpl(gcl::motion::EncoderImpl *this)
{
  v2 = *(this + 147);
  if (v2)
  {
    *(this + 148) = v2;
    operator delete(v2);
  }

  v3 = *(this + 144);
  if (v3)
  {
    *(this + 145) = v3;
    operator delete(v3);
  }

  v4 = *(this + 141);
  if (v4)
  {
    *(this + 142) = v4;
    operator delete(v4);
  }

  v5 = *(this + 138);
  if (v5)
  {
    *(this + 139) = v5;
    operator delete(v5);
  }
}

void sub_266072AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_266072D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_266072E48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<gcl::ArithmeticContext>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

char *std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(char *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<int>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_26607300C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MSCDecoderSessionInit(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t **a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CFPreferencesCopyAppValue(@"largeFrameThreshold", @"com.apple.SignalCompression");
  if (v9)
  {
    v10 = v9;
    IntValue = CFStringGetIntValue(v9);
    CFRelease(v10);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      LODWORD(v22) = IntValue;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCDec Frame size = %d", &v21, 8u);
    }
  }

  else
  {
    IntValue = 1300;
  }

  isCompressionEnabled();
  v12 = operator new(0x30uLL);
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  *(v12 + 8) = 1;
  *a5 = v12;
  *v12 = (a5 % 0x148192925) ^ 0x7070B07C;
  v13 = isCompressionEnabled();
  v14 = *a5;
  *(v14 + 8) = v13;
  v14[2] = a1;
  (*a5)[3] = a2;
  v15 = *a5;
  *(*a5 + 8) = a3;
  v16 = operator new(0x450uLL);
  MSCDecoderObject::MSCDecoderObject(v16, *v15);
  (*a5)[5] = v16;
  v17 = *a5;
  *(v17[5] + 1088) = IntValue;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = *v17;
    v21 = 134217984;
    v22 = v18;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCDec %llu Creating Decoder session", &v21, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL isCompressionEnabled(void)
{
  v0 = CFPreferencesCopyAppValue(@"scEnabled", @"com.apple.SignalCompression");
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  IntValue = CFStringGetIntValue(v0);
  CFRelease(v1);
  return IntValue != 0;
}

uint64_t MSCDecoderSessionDestroy(MSCDecoderSession *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v2 = *a1;
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Destroying session", &v6, 0xCu);
    }

    MSCDecoderSession::~MSCDecoderSession(a1);
    operator delete(v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t MSCDecoderSessionDecodeFrame(uint64_t a1, CMSampleBufferRef sbuf, __CFDictionary *a3, __CFDictionary **a4, opaqueCMSampleBuffer **a5)
{
  if (a1)
  {
    if (a4)
    {
      *a4 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    if (*(a1 + 8) == 1)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);

      return MSCDecoderObject::decodeFrameInternal(v10, sbuf, v11, v12, a3, a4, a5);
    }

    else
    {
      v14 = *(a1 + 16);

      return CMSampleBufferCreateCopy(v14, sbuf, a5);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec no session given", v15, 2u);
    }

    return 2;
  }
}

uint64_t MSCDecoderObject::decodeFrameInternal(MSCDecoderObject *this, CMSampleBufferRef sbuf, const __CFAllocator *a3, const __CFAllocator *a4, const __CFDictionary *a5, const __CFDictionary **a6, opaqueCMSampleBuffer **a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = *MEMORY[0x277CBECE8];
  }

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = *MEMORY[0x277CBECE8];
  }

  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v14 = totalLengthOut;
  if (totalLengthOut > *(this + 272) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = *(this + 137);
    *buf = 134218240;
    v33 = v15;
    v34 = 2048;
    v35 = v14;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Large Frame: %zu", buf, 0x16u);
    v14 = totalLengthOut;
  }

  v16 = (this + 1064);
  if (v14 > *(this + 134) - *(this + 133))
  {
    MSCDecoderObject::resizeBitstream(this, v14);
    v14 = totalLengthOut;
  }

  v27 = 0;
  v17 = gcl::motion::Decoder::decodeFrame(*(this + 132), dataPointerOut, v14, this + 1064, &v27);
  gcl::motion::Decoder::getDecoderInfo(*(this + 132), buf);
  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = *(this + 137);
      LODWORD(v31.duration.value) = 134218240;
      *(&v31.duration.value + 4) = v18;
      LOWORD(v31.duration.flags) = 1024;
      *(&v31.duration.flags + 2) = v17;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Unable to decode: %d\n", &v31, 0x12u);
    }

    if (v17 == 11)
    {
      v19 = 102;
    }

    else
    {
      v19 = 0;
    }

    if (v17 == 7)
    {
      result = 101;
    }

    else
    {
      result = v19;
    }
  }

  else
  {
    v21 = dataLength;
    destinationBuffer = 0;
    CMBlockBufferCreateWithMemoryBlock(v11, 0, dataLength, v12, 0, 0, dataLength, 1u, &destinationBuffer);
    CMBlockBufferReplaceDataBytes(*v16, destinationBuffer, 0, v21);
    v24 = 0;
    formatDescriptionOut = 0;
    CMFormatDescriptionCreate(v11, 0x6D657461u, 0x66616176u, 0, &formatDescriptionOut);
    CMSampleBufferGetSampleTimingInfo(sbuf, 0, &v31);
    CMSampleBufferCreate(v11, destinationBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &v31, 0, 0, &v24);
    v22 = formatDescriptionOut;
    *a7 = v24;
    if (v22)
    {
      CFRelease(v22);
    }

    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void MSCDecoderObject::MSCDecoderObject(MSCDecoderObject *this, uint64_t a2)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 13) = 0;
  *(this + 66) = 0u;
  *(this + 67) = 0u;
  *(this + 272) = 1300;
  *(this + 137) = 0;
  v4 = operator new(8uLL);
  gcl::motion::Decoder::Decoder(v4);
  *(this + 132) = v4;
  gcl::motion::Decoder::setDecoderUUID(v4, a2);
  *(this + 137) = a2;
}

void sub_2660737F0(_Unwind_Exception *a1)
{
  operator delete(v2);
  v4 = *(v1 + 1064);
  if (v4)
  {
    *(v1 + 1072) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t MSCDecoderObject::resizeBitstream(MSCDecoderObject *this, unint64_t a2)
{
  v2 = ceil(a2 / 500.0) * 500.0;
  v3 = *(this + 133);
  v4 = *(this + 134) - v3;
  if (v2 <= v4)
  {
    if (v2 < v4)
    {
      *(this + 134) = v3 + v2;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 1064, v2 - v4);
  }

  return 0;
}

void MSCDecoderSession::~MSCDecoderSession(MSCDecoderSession *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    MSCDecoderObject::~MSCDecoderObject(v2);
    operator delete(v3);
    *(this + 5) = 0;
  }
}

void MSCDecoderObject::~MSCDecoderObject(MSCDecoderObject *this)
{
  v2 = *(this + 132);
  if (v2)
  {
    gcl::motion::Decoder::~Decoder(v2);
    operator delete(v3);
    *(this + 132) = 0;
  }

  v4 = *(this + 133);
  if (v4)
  {
    *(this + 134) = v4;
    operator delete(v4);
  }
}

void sub_266073B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_266073EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_266073F90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    bzero(v4, 4 * a2);
    a1[1] = &v4[4 * a2];
  }

  return a1;
}

void sub_266074008(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MSCReadFrameHeader(int a1, OpaqueCMBlockBuffer *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (a1 == 1936287538)
  {
    v3 = CFPreferencesCopyAppValue(@"scEnabled", @"com.apple.SignalCompression");
    if (!v3 || (v4 = v3, IntValue = CFStringGetIntValue(v3), CFRelease(v4), IntValue))
    {
      CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
      *v18 = 0;
      MSCFrameHeaders = gcl::motion::Decoder::readMSCFrameHeaders(dataPointerOut, totalLengthOut, v18);
      if (MSCFrameHeaders)
      {
        v7 = MSCFrameHeaders;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v17 = v7;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCReadFrameHeader unable to decode frame %d", buf, 8u);
        }

        result = 101;
        goto LABEL_20;
      }

      v10 = *v18;
      result = 2;
      if ((*v18 - 11) < 0xFFFFFFF6)
      {
        goto LABEL_20;
      }

      v11 = 4;
      while (v18[v11])
      {
        if (v18[v11] == 1)
        {
          result = 1;
        }

        else
        {
          result = result;
        }

        v11 += 4;
        if (!--v10)
        {
          goto LABEL_20;
        }
      }
    }

    result = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v18 = 67109120;
    v19 = a1;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCReadFrameHeader unsupported codec type %d", v18, 8u);
  }

  result = 2;
LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gcl::computeCRC32(uint64_t this, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this;
  LODWORD(this) = -1;
  do
  {
    v3 = *v2++;
    this = (dword_266081040[v3 ^ BYTE3(this)] ^ (this << 8));
    --a2;
  }

  while (a2);
  return this;
}

void MSCInputFormatConfigurePersonaV2InputFormatArray(const __CFArray **a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 5, MEMORY[0x277CBF128]);
  MSCInputFormatAddStreamToInputFormatArray(Mutable, 77, 4, 12, 0);
  MSCInputFormatAddStreamToInputFormatArray(Mutable, 0, 0, 0, 40);
  MSCInputFormatAddStreamToInputFormatArray(Mutable, 77, 1, 8, 0);
  MSCInputFormatAddStreamToInputFormatArray(Mutable, 32, 3, 12, 0);
  MSCInputFormatAddStreamToInputFormatArray(Mutable, 0, 0, 0, 32);
  *a1 = Mutable;
}

void MSCInputFormatAddStreamToInputFormatArray(__CFArray *a1, int a2, int a3, int a4, int a5)
{
  v14 = a3;
  valuePtr = a2;
  v12 = a5;
  v13 = a4;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  v8 = CFNumberCreate(v6, kCFNumberIntType, &v14);
  v9 = CFNumberCreate(v6, kCFNumberIntType, &v13);
  v10 = CFNumberCreate(v6, kCFNumberIntType, &v12);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"NumberOfAttributes", v7);
  CFRelease(v7);
  CFDictionarySetValue(Mutable, @"NumberOfComponents", v8);
  CFRelease(v8);
  CFDictionarySetValue(Mutable, @"ForceQuantizationLevel", v9);
  CFRelease(v9);
  if (v12 >= 1)
  {
    CFDictionarySetValue(Mutable, @"NonCompressibleFixedLength", v10);
  }

  CFRelease(v10);
  CFArrayAppendValue(a1, Mutable);
  CFRelease(Mutable);
}

uint64_t MSCEncoderSessionInit(uint64_t a1, uint64_t a2, int a3, CFIndex Count, const __CFDictionary *a5, uint64_t **a6)
{
  v66 = *MEMORY[0x277D85DE8];
  BOOLean = 0;
  value = 0;
  v56 = -1;
  v57 = -1;
  *v55 = -1;
  *&v55[4] = 8;
  v53 = 0;
  theArray = 0;
  valuePtr = 0;
  v12 = CFPreferencesCopyAppValue(@"usageMode", @"com.apple.SignalCompression");
  v13 = v12;
  if (v12)
  {
    IntValue = CFStringGetIntValue(v12);
    HIDWORD(valuePtr) = IntValue;
    CFRelease(v13);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v61) = IntValue;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Default usageMode = %d", buf, 8u);
    }
  }

  v15 = CFPreferencesCopyAppValue(@"largeFrameThreshold", @"com.apple.SignalCompression");
  v16 = v15;
  if (v15)
  {
    v17 = CFStringGetIntValue(v15);
    CFRelease(v16);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v61) = v17;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc Frame size = %d", buf, 8u);
    }
  }

  else
  {
    v17 = 1300;
  }

  CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a5);
  v18 = operator new(0x30uLL);
  v18[1] = 0u;
  v18[2] = 0u;
  *v18 = 0u;
  *(v18 + 8) = 1;
  *(v18 + 5) = 0;
  *a6 = v18;
  *v18 = (a6 % 0x148192925) ^ 0x7070B07C;
  v19 = CFPreferencesCopyAppValue(@"scEnabled", @"com.apple.SignalCompression");
  v20 = v19;
  if (v19)
  {
    v21 = CFStringGetIntValue(v19);
    CFRelease(v20);
    v22 = v21 != 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *a6;
  *(v23 + 8) = v22;
  v23[2] = a1;
  (*a6)[3] = a2;
  *(*a6 + 8) = a3;
  if (Count)
  {
    theArray = Count;
    Count = CFArrayGetCount(Count);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v24 = **a6;
    *buf = 134217984;
    v61 = v24;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Creating Encoder session", buf, 0xCu);
  }

  v25 = operator new(0x88uLL);
  MSCEncoderObject::MSCEncoderObject(v25, **a6);
  (*a6)[5] = v25;
  *((*a6)[5] + 128) = v17;
  if (CFDictionaryGetValueIfPresent(a5, @"GOPLength", &value))
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = **a6;
      *buf = 134218240;
      v61 = v26;
      v62 = 1024;
      LODWORD(v63) = valuePtr;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received IFrame Period: %d", buf, 0x12u);
    }

    v27 = valuePtr;
    if ((valuePtr & 0x80000000) != 0)
    {
      v27 = 0;
      LODWORD(valuePtr) = 0;
    }

    *((*a6)[5] + 112) = v27;
  }

  v28 = CFPreferencesCopyAppValue(@"iFramePeriod", @"com.apple.SignalCompression");
  v29 = v28;
  if (v28)
  {
    v30 = CFStringGetIntValue(v28);
    CFRelease(v29);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v61) = v30;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Default iFrame Period = %d", buf, 8u);
    }

    *((*a6)[5] + 112) = v30;
  }

  v31 = v13 != 0;
  if (CFDictionaryGetValueIfPresent(a5, @"EncoderUsage", &value))
  {
    v32 = v31;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    goto LABEL_29;
  }

  CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr + 4);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v35 = **a6;
    *buf = 134218240;
    v61 = v35;
    v62 = 1024;
    LODWORD(v63) = HIDWORD(valuePtr);
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received Usage Mode: %d", buf, 0x12u);
  }

  v33 = HIDWORD(valuePtr);
  if (Count >= 1 && HIDWORD(valuePtr) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v36 = **a6;
    *buf = 134218496;
    v61 = v36;
    v62 = 2048;
    v63 = Count;
    v64 = 1024;
    v65 = v33;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc %llu inputDataFormat contains format description (%ld) with Usage mode (%u)", buf, 0x1Cu);
LABEL_29:
    v33 = HIDWORD(valuePtr);
  }

  if (v33 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v37 = **a6;
      *buf = 134218240;
      v61 = v37;
      v62 = 1024;
      LODWORD(v63) = 1;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu PersonaV2 Usage mode (%u)", buf, 0x12u);
    }

    MSCInputFormatConfigurePersonaV2InputFormatArray(&theArray);
    Count = CFArrayGetCount(theArray);
  }

  else if (!v33 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v34 = **a6;
    *buf = 134218240;
    v61 = v34;
    v62 = 1024;
    LODWORD(v63) = 0;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Default Usage mode (%u)", buf, 0x12u);
  }

  if (Count > 254)
  {
    v38 = 57;
    goto LABEL_78;
  }

  if (Count >= 1)
  {
    v39 = 0;
    v40 = MEMORY[0x277D86220];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
      if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"NumberOfAttributes", &value))
      {
        CFNumberGetValue(value, kCFNumberSInt32Type, &v57);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = **a6;
          *buf = 134218240;
          v61 = v42;
          v62 = 1024;
          LODWORD(v63) = v57;
          _os_log_impl(&dword_26606F000, v40, OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received number of Attributes: %d", buf, 0x12u);
        }
      }

      if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"NumberOfComponents", &value))
      {
        CFNumberGetValue(value, kCFNumberSInt32Type, &v56);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v43 = **a6;
          *buf = 134218240;
          v61 = v43;
          v62 = 1024;
          LODWORD(v63) = v56;
          _os_log_impl(&dword_26606F000, v40, OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received number of Components per Attribute: %d", buf, 0x12u);
        }
      }

      if (!CFDictionaryGetValueIfPresent(ValueAtIndex, @"ForceQuantizationLevel", &value))
      {
        goto LABEL_60;
      }

      CFNumberGetValue(value, kCFNumberSInt32Type, &v55[4]);
      v44 = *&v55[4];
      if (*&v55[4] > 255)
      {
        break;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v45 = **a6;
        *buf = 134218240;
        v61 = v45;
        v62 = 1024;
        LODWORD(v63) = v44;
        _os_log_impl(&dword_26606F000, v40, OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received forced scale: %d", buf, 0x12u);
      }

      v46 = 1;
LABEL_61:
      if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"Compressible", &BOOLean))
      {
        v46 = CFBooleanGetValue(BOOLean) != 0;
      }

      if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"NonCompressibleFixedLength", &value))
      {
        CFNumberGetValue(value, kCFNumberSInt32Type, v55);
        v46 = 0;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v48 = **a6;
          *buf = 134218240;
          v61 = v48;
          v62 = 1024;
          LODWORD(v63) = *v55;
          _os_log_impl(&dword_26606F000, v40, OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received non compressible stream frame length: %d", buf, 0x12u);
          v46 = 0;
        }
      }

      if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"ComponentDataType", &value))
      {
        CFNumberGetValue(value, kCFNumberIntType, &v53);
      }

      v49 = *(*a6)[5];
      if (v46)
      {
        gcl::motion::Encoder::addCompressibleStreamFormat(v49, v57, v56, v55[4]);
      }

      else
      {
        gcl::motion::Encoder::addNonCompressibleStreamFormat(v49, *v55);
      }

      if (v57 < 0 && v56 < 0)
      {
        v38 = 54;
        goto LABEL_78;
      }

      if (Count == ++v39)
      {
        goto LABEL_74;
      }
    }

    *&v55[4] = 255;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v47 = **a6;
      *buf = 134217984;
      v61 = v47;
      _os_log_impl(&dword_26606F000, v40, OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Received non compressible stream", buf, 0xCu);
    }

LABEL_60:
    v46 = 0;
    goto LABEL_61;
  }

LABEL_74:
  MSCEncoderObject::encodeSequenceParameterSetFromSliceList((*a6)[5]);
  if ((*a6)[5])
  {
    v38 = 0;
  }

  else
  {
    v38 = 53;
LABEL_78:
    MSCEncoderSessionDestroy(*a6);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t MSCEncoderObject::encodeSequenceParameterSetFromSliceList(MSCEncoderObject *this)
{
  gcl::motion::Encoder::encodeSequenceParameterSetFromSliceList(*this, *(this + 1), *(this + 2) - *(this + 1), this + 4, this + 12, this + 13);
  v2 = ((*(this + 13) + 4 * *(this + 12)) + 1020.0) / 500.0 * 500.0;
  v3 = *(this + 9);
  v4 = *(this + 10) - v3;
  if (v2 <= v4)
  {
    if (v2 < v4)
    {
      *(this + 10) = v3 + v2;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 72, v2 - v4);
  }

  return 0;
}

uint64_t MSCEncoderSessionDestroy(MSCEncoderSession *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v2 = *a1;
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc %llu Destroying session", &v6, 0xCu);
    }

    MSCEncoderSession::~MSCEncoderSession(a1);
    operator delete(v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t MSCEncoderSessionEncodeFrame(uint64_t a1, CMSampleBufferRef sbuf, __CFDictionary *a3, __CFDictionary **a4, opaqueCMSampleBuffer **a5)
{
  if (!a1 || !*(a1 + 40))
  {
    return 52;
  }

  if (a4)
  {
    *a4 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  if (*(a1 + 8) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);

    return MSCEncoderObject::encodeFrameInternal(v10, sbuf, v11, v12, a3, a4, a5);
  }

  else
  {
    v14 = *(a1 + 16);

    return CMSampleBufferCreateCopy(v14, sbuf, a5);
  }
}

uint64_t MSCEncoderObject::encodeFrameInternal(MSCEncoderObject *this, CMSampleBufferRef sbuf, const __CFAllocator *a3, const __CFAllocator *a4, const __CFDictionary *a5, const __CFDictionary **a6, opaqueCMSampleBuffer **a7)
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = *MEMORY[0x277CBECE8];
  }

  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = *MEMORY[0x277CBECE8];
  }

  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v15 = *(this + 13) + 4 * *(this + 12);
  v16 = totalLengthOut;
  if (totalLengthOut == v15)
  {
    v18 = *(this + 9);
    v17 = *(this + 10);
    v19 = v17 - v18;
    if (v17 == v18 || v15 <= v19)
    {
      v38 = 0;
      v39 = 257;
      value = 0;
      dataLength = 0;
      if (a5 && CFDictionaryGetValueIfPresent(a5, @"ForceKeyFrame", &value))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(this + 15);
          LODWORD(buf.duration.value) = 134217984;
          *(&buf.duration.value + 4) = v23;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu Force KeyFrame", &buf, 0xCu);
        }

        v24 = CFBooleanGetValue(value) != 0;
        HIBYTE(v39) = 1;
      }

      else
      {
        v24 = 0;
      }

      v26 = *(this + 28);
      v25 = *(this + 29);
      if (v26 >= 1 && v26 == v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(this + 15);
          LODWORD(buf.duration.value) = 134217984;
          *(&buf.duration.value + 4) = v27;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCEnc %llu GOP Force KeyFrame", &buf, 0xCu);
        }

        v25 = 0;
        v24 = 1;
      }

      *(this + 29) = v25 + 1;
      if (gcl::motion::Encoder::encodeFrame(*this, dataPointerOut, !v24, *(this + 9), *(this + 10) - *(this + 9), &dataLength, &v38))
      {
        *a7 = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v28 = *(this + 15);
          LODWORD(buf.duration.value) = 134218240;
          *(&buf.duration.value + 4) = v28;
          LOWORD(buf.duration.flags) = 1024;
          *(&buf.duration.flags + 2) = 0;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc %llu Unable to encode: %d", &buf, 0x12u);
        }

        result = 55;
      }

      else
      {
        destinationBuffer = 0;
        CMBlockBufferCreateWithMemoryBlock(v12, 0, dataLength, v13, 0, 0, dataLength, 1u, &destinationBuffer);
        CMBlockBufferReplaceDataBytes(*(this + 9), destinationBuffer, 0, dataLength);
        v29 = dataLength;
        if (dataLength > *(this + 32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v30 = *(this + 15);
          LODWORD(buf.duration.value) = 134218240;
          *(&buf.duration.value + 4) = v30;
          LOWORD(buf.duration.flags) = 2048;
          *(&buf.duration.flags + 2) = v29;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc %llu Large Frame: %zu", &buf, 0x16u);
        }

        v33 = 0;
        formatDescriptionOut = 0;
        CMFormatDescriptionCreate(v12, 0x6D657461u, 0x66616176u, 0, &formatDescriptionOut);
        CMSampleBufferGetSampleTimingInfo(sbuf, 0, &buf);
        CMSampleBufferCreate(v12, destinationBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &buf, 0, 0, &v33);
        v31 = formatDescriptionOut;
        *a7 = v33;
        CFRelease(v31);
        CFRelease(destinationBuffer);
        result = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v20 = *(this + 15);
        LODWORD(buf.duration.value) = 134218496;
        *(&buf.duration.value + 4) = v20;
        LOWORD(buf.duration.flags) = 2048;
        *(&buf.duration.flags + 2) = v15;
        HIWORD(buf.duration.epoch) = 2048;
        buf.presentationTimeStamp.value = v19;
        _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc %llu Output length too large %zu %zu", &buf, 0x20u);
      }

      result = 56;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v22 = *(this + 15);
      LODWORD(buf.duration.value) = 134218496;
      *(&buf.duration.value + 4) = v22;
      LOWORD(buf.duration.flags) = 2048;
      *(&buf.duration.flags + 2) = v16;
      HIWORD(buf.duration.epoch) = 2048;
      buf.presentationTimeStamp.value = v15;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc %llu Input frame size mismatch %zu %zu", &buf, 0x20u);
    }

    result = 57;
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSCEncoderSessionSetProperty(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    return 2;
  }

  *v3 = 0;
  v1 = 2;
  _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCEnc no session given", v3, 2u);
  return v1;
}

void MSCEncoderObject::MSCEncoderObject(MSCEncoderObject *this, uint64_t a2)
{
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 1300;
  v4 = operator new(8uLL);
  gcl::motion::Encoder::Encoder(v4);
  *this = v4;
  *(this + 15) = a2;
  gcl::motion::Encoder::setEncoderUUID(v4, a2);
  v5 = *(this + 1);
  v6 = *(this + 2) - v5;
  if (v6 > 0x5DB)
  {
    if (v6 != 1500)
    {
      *(this + 2) = v5 + 1500;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this + 8, 1500 - v6);
  }
}

void sub_266075610(_Unwind_Exception *a1)
{
  operator delete(v2);
  v5 = v1[9];
  if (v5)
  {
    v1[10] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[7] = v6;
    operator delete(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void MSCEncoderSession::~MSCEncoderSession(MSCEncoderSession *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    MSCEncoderObject::~MSCEncoderObject(v2);
    operator delete(v3);
    *(this + 5) = 0;
  }
}

void MSCEncoderObject::~MSCEncoderObject(gcl::motion::EncoderImpl ***this)
{
  v2 = *this;
  if (v2)
  {
    gcl::motion::Encoder::~Encoder(v2);
    operator delete(v3);
    *this = 0;
  }

  v4 = this[9];
  if (v4)
  {
    this[10] = v4;
    operator delete(v4);
  }

  v5 = this[6];
  if (v5)
  {
    this[7] = v5;
    operator delete(v5);
  }

  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

uint64_t gcl::motion::DecoderImpl::setSequenceParameterSet(gcl::motion::DecoderImpl *this, const AttributeInfo *a2)
{
  *this = 0;
  v3 = 1;
  *(this + 1116) = 1;
  memcpy(this + 32, a2, 0x41CuLL);
  v4 = *(this + 10) * *(this + 11);
  if (v4 == v4)
  {
    v5 = *(this + 10) * *(this + 11);
    v6 = v4;
    std::vector<int>::resize((this + 2224), v4);
    std::vector<int>::resize((this + 2200), v6);
    v7 = *(this + 275);
    v8 = *(this + 276) - v7;
    if (v8 >= 1)
    {
      bzero(v7, v8);
    }

    return 0;
  }

  return v3;
}

uint64_t gcl::motion::DecoderImpl::setSPSFromSliceList(gcl::motion::DecoderImpl *this, const AttributeInfo *a2)
{
  *this = 0;
  *(this + 1116) = 1;
  memcpy(this + 32, a2, 0x41CuLL);
  componentCount = a2->componentCount;
  std::vector<int>::resize((this + 2224), componentCount);
  std::vector<int>::resize((this + 2200), componentCount);
  v5 = *(this + 275);
  v6 = *(this + 276) - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  return 0;
}

uint64_t gcl::motion::DecoderImpl::decodeSequenceParameterSet(gcl::motion::DecoderImpl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, AttributeInfo *a5)
{
  if (!a2 || a3 < 8 || *a2 != 3)
  {
    return 3;
  }

  a5->version = *(a2 + 1);
  a5->attributeCount = *(a2 + 5);
  a5->componentsPerAttribute = a2[7];
  *a4 = 8;
  return gcl::motion::DecoderImpl::setSequenceParameterSet(this, a5);
}

uint64_t gcl::motion::DecoderImpl::decodeSPS(gcl::motion::DecoderImpl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, AttributeInfo *a5)
{
  if (!a2 || !a3 || *a2 != 3)
  {
    return 3;
  }

  if (a3 < 2)
  {
    v5 = 1;
  }

  else
  {
    a5->version.major = a2[1];
    v5 = 2;
  }

  if (v5 < a3)
  {
    v7 = a2[v5++];
    a5->version.minor = v7;
  }

  v8 = v5 + 2;
  if (v5 + 2 <= a3)
  {
    v10 = 0;
    v11 = &v22;
    do
    {
      *v11 = a2[v5 + v10++];
      v11 = &v21;
    }

    while (v10 != 2);
    v12 = v21;
    LOBYTE(a5->version.revision) = v22;
    HIBYTE(a5->version.revision) = v12;
    v9 = v5 + 4;
  }

  else
  {
    v9 = v5 + 2;
    v8 = v5;
  }

  if (v9 <= a3)
  {
    v14 = &v24;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = a2[v8++];
      *v14 = v17;
      v14 = &v23;
      v15 = 0;
    }

    while ((v16 & 1) != 0);
    v13 = v24 | (v23 << 8);
  }

  else
  {
    v13 = 0;
  }

  a5->attributeCount = v13;
  if (v8 + 1 <= a3)
  {
    v18 = a2[v8];
    v19 = v8 + 2;
    ++v8;
  }

  else
  {
    v18 = 0;
    v19 = v8 + 1;
  }

  a5->componentsPerAttribute = v18;
  if (v19 <= a3)
  {
    v20 = a2[v8];
    v8 = v19;
  }

  else
  {
    v20 = 0;
  }

  a5->quatizationBits = v20;
  *a4 = v8;
  return gcl::motion::DecoderImpl::setSequenceParameterSet(this, a5);
}

uint64_t gcl::motion::DecoderImpl::decodeSPSFromSliceList(gcl::motion::DecoderImpl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, AttributeInfo *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = *(this + 140);
      *buf = 134218496;
      *&buf[4] = v13;
      v56 = 2048;
      *v57 = 0;
      *&v57[8] = 2048;
      v58 = 0;
      v11 = MEMORY[0x277D86220];
      v12 = "MSCDec %llu Decode slice list unable to decode Frame header (mj) %zu %llu";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v9 = *a2;
  a5->version.major = v9;
  if (a3 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = *(this + 140);
      *buf = 134218496;
      *&buf[4] = v10;
      v56 = 2048;
      *v57 = 1;
      *&v57[8] = 2048;
      v58 = 1;
      v11 = MEMORY[0x277D86220];
      v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (mn) %zu %llu";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  a5->version.minor = a2[1];
  if (a3 < 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = *(this + 140);
      *buf = 134218496;
      *&buf[4] = v15;
      v56 = 2048;
      *v57 = a3;
      *&v57[8] = 2048;
      v58 = 2;
      v11 = MEMORY[0x277D86220];
      v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (r) %zu %llu";
      goto LABEL_15;
    }

LABEL_16:
    result = 3;
  }

  else
  {
    a5->version.revision = *(a2 + 1);
    if (v9 == 1)
    {
      if (a3 == 4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v14 = *(this + 140);
          *buf = 134218496;
          *&buf[4] = v14;
          v56 = 2048;
          *v57 = 4;
          *&v57[8] = 2048;
          v58 = 4;
          v11 = MEMORY[0x277D86220];
          v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (ns) %zu %llu";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v23 = a2[4];
      *(this + 137) = *(this + 136);
      v50 = v23;
      if (v23)
      {
        v48 = a2 + 1;
        v53 = 0;
        v49 = 0;
        v24 = 0;
        v25 = 5;
        while (1)
        {
          v26 = v25 + 1;
          if (v25 + 1 > a3)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_16;
            }

            v44 = *(this + 140);
            *buf = 134218496;
            *&buf[4] = v44;
            v56 = 2048;
            *v57 = a3;
            *&v57[8] = 2048;
            v58 = v25;
            v11 = MEMORY[0x277D86220];
            v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (q) %zu %llu";
            goto LABEL_15;
          }

          v27 = a2[v25];
          v28 = v27 != 255;
          if (v27 == 255)
          {
            v41 = v25 + 5;
            if (v25 + 5 > a3)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_16;
              }

              v47 = *(this + 140);
              *buf = 134218496;
              *&buf[4] = v47;
              v56 = 2048;
              *v57 = a3;
              *&v57[8] = 2048;
              v58 = v25 + 1;
              v11 = MEMORY[0x277D86220];
              v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (fl) %zu %llu";
LABEL_15:
              _os_log_impl(&dword_26606F000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x20u);
              goto LABEL_16;
            }

            v42 = *&v48[v25];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v43 = *(this + 140);
              *buf = 134218240;
              *&buf[4] = v43;
              v56 = 1024;
              *v57 = v42;
              _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCDec %llu New Slice %d", buf, 0x12u);
            }

            buf[0] = v28;
            *&buf[2] = 0;
            buf[6] = -1;
            *&buf[8] = v42;
            std::vector<gcl::motion::SliceInfo>::push_back[abi:ne200100](this + 1088, buf);
            v49 += v42;
            v26 = v41;
          }

          else
          {
            if (v25 + 3 > a3)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_16;
              }

              v45 = *(this + 140);
              *buf = 134218496;
              *&buf[4] = v45;
              v56 = 2048;
              *v57 = a3;
              *&v57[8] = 2048;
              v58 = v25 + 1;
              v11 = MEMORY[0x277D86220];
              v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (na) %zu %llu";
              goto LABEL_15;
            }

            v29 = buf;
            v30 = 1;
            do
            {
              v31 = v30;
              v32 = a2[v26++];
              *v29 = v32;
              v29 = &v54;
              v30 = 0;
            }

            while ((v31 & 1) != 0);
            v33 = buf[0] | (v54 << 8);
            a5->attributeCount = v33;
            if (v26 + 2 > a3)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_16;
              }

              v46 = *(this + 140);
              *buf = 134218496;
              *&buf[4] = v46;
              v56 = 2048;
              *v57 = a3;
              *&v57[8] = 2048;
              v58 = v26;
              v11 = MEMORY[0x277D86220];
              v12 = "MSCDec %llu Decode slice list Unable to decode Frame header (nc) %zu %llu";
              goto LABEL_15;
            }

            v51 = v27 != 255;
            v34 = buf;
            v35 = 1;
            do
            {
              v36 = v35;
              v37 = a2[v26++];
              *v34 = v37;
              v34 = &v54;
              v35 = 0;
            }

            while ((v36 & 1) != 0);
            v38 = buf[0] | (v54 << 8);
            a5->componentsPerAttribute = v38;
            v39 = *(this + 10) * *(this + 11);
            if (v39 != v39)
            {
              result = 1;
              goto LABEL_17;
            }

            v52 = v27;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(this + 140);
              *buf = 134218752;
              *&buf[4] = v40;
              v56 = 1024;
              *v57 = v33;
              *&v57[4] = 1024;
              *&v57[6] = v38;
              LOWORD(v58) = 1024;
              *(&v58 + 2) = v52;
              _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCDec %llu New Slice %d %d %d", buf, 0x1Eu);
            }

            buf[0] = v51;
            *&buf[2] = v33;
            *&buf[4] = v38;
            buf[6] = v52;
            *&buf[8] = 0;
            std::vector<gcl::motion::SliceInfo>::push_back[abi:ne200100](this + 1088, buf);
            v53 += v39;
          }

          ++v24;
          v25 = v26;
          if (v24 >= v50)
          {
            goto LABEL_42;
          }
        }
      }

      v49 = 0;
      v53 = 0;
      v26 = 5;
LABEL_42:
      a5->componentCount = v53;
      a5->seiDataSize = v49;
      *a4 = v26;
      gcl::motion::DecoderImpl::setSPSFromSliceList(this, a5);
      result = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v18 = *(this + 140);
        v19 = *(this + 36);
        v20 = *(this + 37);
        v21 = *(this + 19);
        *buf = 134218752;
        *&buf[4] = v18;
        v56 = 1024;
        *v57 = v19;
        *&v57[4] = 1024;
        *&v57[6] = v20;
        LOWORD(v58) = 1024;
        *(&v58 + 2) = v21;
        _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Decode slice list Mismatched Version %d %d %d", buf, 0x1Eu);
      }

      result = 11;
    }
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gcl::motion::DecoderImpl::decodeResidual(uint64_t result, uint64_t a2, int *a3, int a4, _BYTE *a5, void *a6, _DWORD *a7)
{
  v10 = result;
  if (!*a5)
  {
    if (a4 < 1)
    {
      return result;
    }

    v19 = 0;
    v40 = a4;
    v20 = a4;
    while (1)
    {
      result = gcl::ArithmeticDecoder::decode((v10 + 1128), (*a6 + 2 * v19));
      if (result)
      {
        break;
      }

      v37 = 0;
LABEL_47:
      a7[v19++] = v37;
      if (v19 == v20)
      {
LABEL_48:
        v38 = v40;
        do
        {
          v39 = *a3++;
          *a7++ += v39;
          --v38;
        }

        while (v38);
        return result;
      }
    }

    v21 = gcl::ArithmeticDecoder::decode((v10 + 1128), (a6[3] + 2 * v19));
    v22 = (a6[6] + 2 * (v19 << 6));
    if (gcl::ArithmeticDecoder::decode((v10 + 1128), v22))
    {
      v23 = 32;
    }

    else
    {
      v23 = 0;
    }

    if (gcl::ArithmeticDecoder::decode((v10 + 1128), &v22[(v23 >> 5) + 1]))
    {
      v24 = 16;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24 | v23;
    if (gcl::ArithmeticDecoder::decode((v10 + 1128), &v22[(v25 >> 4) + 3]))
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 | v26;
    if (gcl::ArithmeticDecoder::decode((v10 + 1128), &v22[(v27 >> 3) + 7]))
    {
      v28 = 4;
    }

    else
    {
      v28 = 0;
    }

    v29 = v27 | v28;
    if (gcl::ArithmeticDecoder::decode((v10 + 1128), &v22[(v29 >> 2) + 15]))
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v31 = v29 | v30;
    result = gcl::ArithmeticDecoder::decode((v10 + 1128), (v22 + v31 + 62));
    v32 = v31 | result;
    if ((v31 | result) == 0x3F)
    {
      v33 = a6[12];
      result = gcl::ArithmeticDecoder::decodeExpGolomb((v10 + 1128), *(v33 + 4 * v19), (a6[9] + 2 * v19));
      v32 = result + 63;
      v34 = *(v33 + 4 * v19);
      v35 = (result + 63) >> v34;
      if (!v34 || v35)
      {
        if (v35 < 2)
        {
          goto LABEL_44;
        }

        v36 = 1;
      }

      else
      {
        v36 = -1;
      }

      *(v33 + 4 * v19) = v34 + v36;
    }

LABEL_44:
    if (v21)
    {
      v37 = v32 + 1;
    }

    else
    {
      v37 = ~v32;
    }

    goto LABEL_47;
  }

  if (*a5 != 1)
  {
    gcl::motion::DecoderImpl::decodeResidual();
  }

  if (a4 >= 1)
  {
    v11 = 0;
    v40 = a4;
    v12 = a4;
    while (1)
    {
      v13 = a6[12];
      result = gcl::ArithmeticDecoder::decodeSignedExpGolomb((v10 + 1128), *(v13 + 4 * v11), (a6[3] + 2 * v11), (a6[9] + 2 * v11));
      v14 = result >= 0 ? result : -result;
      v15 = *(v13 + 4 * v11);
      v16 = v14 >> v15;
      if (v15 && v16 == 0)
      {
        break;
      }

      if (v16 >= 2)
      {
        v18 = 1;
LABEL_15:
        *(v13 + 4 * v11) = v15 + v18;
      }

      a7[v11++] = result;
      if (v11 == v12)
      {
        goto LABEL_48;
      }
    }

    v18 = -1;
    goto LABEL_15;
  }

  return result;
}

BOOL gcl::ArithmeticDecoder::decode(unint64_t *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = *(a1 + 7);
  v4 = *(a1 + 8);
  if (v3 > 0x40000000)
  {
    v12 = *(a1 + 7);
  }

  else
  {
    v5 = *(a1 + 10);
    do
    {
      v4 *= 2;
      *(a1 + 10) = --v5;
      if (!v5)
      {
        v6 = *a1;
        v7 = *a1 + 1;
        *a1 = v7;
        v8 = *(a1 + 2);
        if (v7 >= v8)
        {
          v9 = 65280;
        }

        else
        {
          v9 = *(a1[2] + v7) << 8;
        }

        v10 = v6 + 2;
        *a1 = v10;
        if (v10 >= v8)
        {
          v11 = 255;
        }

        else
        {
          v11 = *(a1[2] + v10);
        }

        v4 |= v9 | v11;
        v5 = 16;
        *(a1 + 10) = 16;
      }

      v12 = 2 * v3;
      v13 = v3 >= 0x20000001;
      v3 *= 2;
    }

    while (!v13);
  }

  v14 = (HIWORD(v12) * v2) & 0xFFFF0000;
  v15 = (v2 >> 7) & 0x1FE;
  v16 = v12 - v14;
  v17 = v4 >= v14;
  if (v4 >= v14)
  {
    ++v15;
  }

  *a2 = *(a1 + v15 + 24) + v2;
  if (v4 < v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  if (v4 < v14)
  {
    v14 = 0;
  }

  *(a1 + 7) = v18;
  *(a1 + 8) = v4 - v14;
  return v17;
}

uint64_t gcl::ArithmeticDecoder::decodeExpGolomb(unint64_t *a1, unsigned int a2, _WORD *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    gcl::ArithmeticDecoder::decodeExpGolomb();
  }

  v4 = a2;
  if (gcl::ArithmeticDecoder::decode(a1, a3) && v4 <= 0x1E)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      v4 = v7 + 1;
      v6 |= 1 << v7;
      if (!gcl::ArithmeticDecoder::decode(a1, a3))
      {
        break;
      }
    }

    while (v7++ < 30);
  }

  else
  {
    v6 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  v10 = 0;
  v11 = v4 - 1;
  do
  {
    v12 = 0x8000;
    v10 |= gcl::ArithmeticDecoder::decode(a1, &v12) << v11--;
  }

  while (v11 != -1);
  return (v10 + v6);
}

uint64_t gcl::ArithmeticDecoder::decodeSignedExpGolomb(unint64_t *a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    gcl::ArithmeticDecoder::decodeSignedExpGolomb();
  }

  result = gcl::ArithmeticDecoder::decodeExpGolomb(a1, a2, a4);
  if (result)
  {
    v7 = result;
    if (gcl::ArithmeticDecoder::decode(a1, a3))
    {
      return v7;
    }

    else
    {
      return -v7;
    }
  }

  return result;
}

uint64_t gcl::motion::DecoderImpl::decodeFrame(gcl::motion::DecoderImpl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, int *a5)
{
  result = 5;
  if (a3 >= 6)
  {
    if (a2)
    {
      v8 = a5;
      if (a5)
      {
        if (*a2 == 3)
        {
          v78[0] = 0;
          gcl::motion::DecoderImpl::decodeSPSFromSliceList(this, a2, 9uLL, v78, (this + 32));
          v11 = v78[0];
        }

        else
        {
          v11 = 0;
        }

        if (*(this + 36))
        {
          return 11;
        }

        v12 = *(this + 37);
        if (v12 >= 3)
        {
          v13 = v11 + 8;
          if (v11 + 8 > a3)
          {
            return 3;
          }

          v14 = *&a2[v11];
          *(this + 1) = v14;
          v15 = WORD1(v14);
          *(this + 3) = WORD1(v14);
          if ((*(this + 1116) & 1) == 0 && v14 == 1)
          {
            v16 = *(this + 14);
            if (v16 > WORD1(v14) && (v16 - WORD1(v14)) < 0x8000 || v16 < WORD1(v14) && (WORD1(v14) - v16) > 0x8000)
            {
              return 8;
            }

LABEL_29:
            *(this + 4) = 1;
            if (!WORD1(v14) || *(this + 14) + 1 == WORD1(v14))
            {
              if (*(this + 278))
              {
                return 10;
              }

              v24 = 0;
LABEL_34:
              v25 = BYTE1(v14);
              v86[0] = BYTE1(v14) & 1;
              if ((v14 & 0x800) != 0)
              {
                v40 = 0;
                while (1)
                {
                  v26 = v13 + 4;
                  if (v13 + 4 > a3)
                  {
                    break;
                  }

                  if ((a2[v13] & 0x80) != 0)
                  {
                    v13 += 4;
                    if (v40++ < 0xF)
                    {
                      continue;
                    }
                  }

                  goto LABEL_36;
                }
              }

              else
              {
                v26 = v13;
LABEL_36:
                v27 = (v14 >> 40) & 0xFF00 | (v14 >> 24) & 0xFF0000 | HIBYTE(v14);
                if (a3 - v26 == v27)
                {
                  v74 = v24;
                  *(this + 284) = v27;
                  *(this + 143) = &a2[v26];
                  gcl::ArithmeticDecoder::start((this + 1128));
                  v85 = 0;
                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  *v78 = 0u;
                  gcl::motion::ACContext::init(v78, *(this + 11));
                  v28 = *(this + 11);
                  v75 = 0;
                  std::vector<int>::vector[abi:ne200100](&__p, v28, &v75);
                  if (*(this + 10) >= 1)
                  {
                    v30 = 0;
                    v31 = *(this + 278);
                    LODWORD(v32) = *(this + 11);
                    do
                    {
                      gcl::motion::DecoderImpl::decodeResidual(this, v29, __p, v32, v86, v78, v31);
                      if ((v25 & 0x10) != 0 && *(this + 11) >= 1)
                      {
                        v33 = 0;
                        v34 = __p;
                        do
                        {
                          v34[v33] = v31[v33];
                          ++v33;
                        }

                        while (v33 < *(this + 11));
                      }

                      ++v30;
                      v32 = *(this + 11);
                      v31 += v32;
                    }

                    while (v30 < *(this + 10));
                  }

                  if (__p)
                  {
                    v77 = __p;
                    operator delete(__p);
                  }

                  gcl::motion::ACContext::~ACContext(v78);
                  v35 = *(this + 10) * *(this + 11);
                  if (v35 == v35)
                  {
                    if (v74)
                    {
                      if (v35 >= 1)
                      {
                        v36 = *(this + 278);
                        v37 = v35;
                        v38 = v8;
                        do
                        {
                          v39 = *v36++;
                          *v38++ = v39;
                          --v37;
                        }

                        while (v37);
LABEL_81:
                        v66 = *(this + 275);
                        v35 = v35;
                        do
                        {
                          v67 = *v8++;
                          *v66++ = v67;
                          --v35;
                        }

                        while (v35);
                      }
                    }

                    else if (v35 >= 1)
                    {
                      v59 = *(this + 278);
                      v60 = *(this + 275);
                      v61 = v35;
                      v62 = v8;
                      do
                      {
                        v64 = *v59++;
                        v63 = v64;
                        v65 = *v60++;
                        *v62++ = v65 + v63;
                        --v61;
                      }

                      while (v61);
                      goto LABEL_81;
                    }

                    *a4 = v26 + v27;
                    *(this + 14) = v15;
                    goto LABEL_90;
                  }

                  return 1;
                }
              }

              return 3;
            }

            return 7;
          }

          if (!v14)
          {
            *(this + 4) = 0;
            v24 = 1;
            goto LABEL_34;
          }

          if (v14 == 1)
          {
            goto LABEL_29;
          }

          return 5;
        }

        if (v12 != 1)
        {
          return 11;
        }

        if (v11 + 2 > a3)
        {
          return 3;
        }

        p_p = v78;
        v18 = 1;
        v19 = v11;
        do
        {
          v20 = v18;
          v21 = a2[v19++];
          *p_p = v21;
          p_p = &__p;
          v18 = 0;
        }

        while ((v20 & 1) != 0);
        v22 = LOBYTE(v78[0]);
        v23 = __p;
        if (LOBYTE(v78[0]))
        {
          if (LOBYTE(v78[0]) != 1)
          {
            return 5;
          }

          if (*(this + 4))
          {
            return 7;
          }

          *(this + 4) = 1;
        }

        else
        {
          *(this + 4) = 0;
        }

        v86[0] = v23 & 1;
        if (v19 + 4 > a3)
        {
          return 3;
        }

        v42 = *&a2[v19];
        v43 = v11 + 6;
        *(this + 284) = v42;
        *(this + 143) = &a2[v11 + 6];
        gcl::ArithmeticDecoder::start((this + 1128));
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        *v78 = 0u;
        gcl::motion::ACContext::init(v78, *(this + 11));
        v44 = *(this + 11);
        v75 = 0;
        std::vector<int>::vector[abi:ne200100](&__p, v44, &v75);
        if (*(this + 10) >= 1)
        {
          v46 = 0;
          v47 = *(this + 278);
          LODWORD(v48) = *(this + 11);
          do
          {
            gcl::motion::DecoderImpl::decodeResidual(this, v45, __p, v48, v86, v78, v47);
            if ((v23 & 0x10) != 0 && *(this + 11) >= 1)
            {
              v49 = 0;
              v50 = __p;
              do
              {
                v50[v49] = v47[v49];
                ++v49;
              }

              while (v49 < *(this + 11));
            }

            ++v46;
            v48 = *(this + 11);
            v47 += v48;
          }

          while (v46 < *(this + 10));
        }

        if (__p)
        {
          v77 = __p;
          operator delete(__p);
        }

        gcl::motion::ACContext::~ACContext(v78);
        v51 = *(this + 10) * *(this + 11);
        if (v51 != v51)
        {
          return 1;
        }

        if (v22)
        {
          if (v51 >= 1)
          {
            v52 = *(this + 278);
            v53 = *(this + 275);
            v54 = v51;
            v55 = v8;
            do
            {
              v57 = *v52++;
              v56 = v57;
              v58 = *v53++;
              *v55++ = v58 + v56;
              --v54;
            }

            while (v54);
LABEL_87:
            v72 = *(this + 275);
            v51 = v51;
            do
            {
              v73 = *v8++;
              *v72++ = v73;
              --v51;
            }

            while (v51);
          }
        }

        else if (v51 >= 1)
        {
          v68 = *(this + 278);
          v69 = v51;
          v70 = v8;
          do
          {
            v71 = *v68++;
            *v70++ = v71;
            --v69;
          }

          while (v69);
          goto LABEL_87;
        }

        *a4 = v43 + v42;
LABEL_90:
        ++*this;
        result = 0;
        if (*(this + 1116))
        {
          *(this + 1116) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t gcl::motion::DecoderImpl::decodeFrame(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0;
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 1120);
      *buf = 134217984;
      v36 = v26;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu No input", buf, 0xCu);
    }

    result = 5;
    goto LABEL_34;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_34;
  }

  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x277D86220];
  while (1)
  {
    v13 = v11 + 4;
    v14 = a3 - (v11 + 4);
    if (a3 < v11 + 4)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v27 = *(a1 + 1120);
      *buf = 134218752;
      v36 = v27;
      v37 = 2048;
      *v38 = a3;
      *&v38[8] = 2048;
      *v39 = a3;
      *&v39[8] = 2048;
      *v40 = v11;
      v28 = MEMORY[0x277D86220];
      v29 = "MSCDec %llu Unable to decode nal header %llu %zu %llu";
      v30 = 42;
      goto LABEL_32;
    }

    v15 = *(a2 + v11);
    *(a1 + 24) = v15;
    if (v15 < 2u)
    {
      result = gcl::motion::DecoderImpl::handleCompressedFrame(a1, (a2 + v13), v14, v15 != 0, *a4, a5, *(a4 + 8) - *a4);
      if (result)
      {
        goto LABEL_34;
      }

      v17 = *a5;
      goto LABEL_22;
    }

    if (v15 == 3)
    {
      result = gcl::motion::DecoderImpl::decodeSPSFromSliceList(a1, (a2 + v13), a3, &v34, (a1 + 32));
      if (result)
      {
        goto LABEL_34;
      }

      v18 = *(a1 + 56) + 4 * *(a1 + 48);
      v19 = *(a4 + 8) - *a4;
      if (v18 > v19)
      {
        v20 = (v18 + 1020.0) / 500.0 * 500.0;
        v21 = v20;
        if (v20 <= v19)
        {
          if (v20 < v19)
          {
            *(a4 + 8) = *a4 + v21;
          }
        }

        else
        {
          std::vector<unsigned char>::__append(a4, v20 - v19);
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 1120);
          *buf = 134218240;
          v36 = v24;
          v37 = 2048;
          *v38 = v21;
          _os_log_impl(&dword_26606F000, v12, OS_LOG_TYPE_DEFAULT, "MSCDec %llu Size %zu", buf, 0x16u);
        }
      }

      v17 = v34;
      goto LABEL_22;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 1120);
      *buf = 134218240;
      v36 = v22;
      v37 = 1024;
      *v38 = v15;
      _os_log_impl(&dword_26606F000, v12, OS_LOG_TYPE_DEFAULT, "MSCDec %llu Decode Unknown Frame %d", buf, 0x12u);
    }

    v23 = (v15 << 8) & 0xFF0000 | (v15 >> 8) & 0xFF00 | HIBYTE(v15);
    if (v23 < 4)
    {
      break;
    }

    v17 = v23 - 4;
LABEL_22:
    result = 0;
    v11 = v17 + v13;
    if (v17 + v13 < a3 && v10++ < 9)
    {
      continue;
    }

    goto LABEL_34;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v32 = *(a1 + 1120);
    v33 = *(a1 + 24);
    *buf = 134219264;
    v36 = v32;
    v37 = 1024;
    *v38 = v33;
    *&v38[4] = 1024;
    *&v38[6] = (v15 << 8) & 0xFF0000 | (v15 >> 8) & 0xFF00 | HIBYTE(v15);
    *v39 = 2048;
    *&v39[2] = a3;
    *v40 = 2048;
    *&v40[2] = a3;
    v41 = 2048;
    v42 = v13;
    v28 = MEMORY[0x277D86220];
    v29 = "MSCDec %llu Decode Invalid nal format (%d) %d %llu %zu %llu";
    v30 = 54;
LABEL_32:
    _os_log_impl(&dword_26606F000, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
  }

LABEL_33:
  result = 3;
LABEL_34:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gcl::motion::DecoderImpl::handleCompressedFrame(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned int a4, char *__dst, uint64_t *a6, unint64_t a7)
{
  v7 = __dst;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v107 = *MEMORY[0x277D85DE8];
  if (a3 < 6 || !a2 || !__dst)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = *(v10 + 1120);
      *buf = 134218752;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      *&buf[24] = v9;
      LOWORD(v101) = 2048;
      *(&v101 + 2) = v7;
      v24 = MEMORY[0x277D86220];
      v25 = "MSCDec %llu Unexpected input %zu %p %p";
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 42;
LABEL_26:
      _os_log_impl(&dword_26606F000, v24, v26, v25, buf, v27);
    }

LABEL_27:
    result = 5;
    goto LABEL_28;
  }

  if (a4 > 1)
  {
    v28 = *a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v10 + 1120);
      *buf = 134218240;
      *&buf[4] = v29;
      *&buf[12] = 1024;
      *&buf[14] = v28;
      v24 = MEMORY[0x277D86220];
      v25 = "MSCDec %llu Unknown Frame %d";
      v26 = OS_LOG_TYPE_DEFAULT;
      v27 = 18;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v12 = *(a1 + 36);
  if (v12 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = *(v10 + 1120);
      v32 = *(v10 + 37);
      v33 = *(v10 + 38);
      *buf = 134218752;
      *&buf[4] = v31;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 1024;
      *&buf[20] = v32;
      *&buf[24] = 1024;
      *&buf[26] = v33;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Mismatched Version %d %d %d", buf, 0x1Eu);
    }

    result = 11;
    goto LABEL_28;
  }

  if (a3 < 8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v34 = *(v10 + 1120);
      *buf = 134218752;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      *&buf[24] = v8;
      LOWORD(v101) = 2048;
      *(&v101 + 2) = 0;
      v35 = MEMORY[0x277D86220];
      v36 = "MSCDec %llu Unable to decode Frame header %llu %zu %llu";
LABEL_86:
      _os_log_impl(&dword_26606F000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x2Au);
    }

LABEL_87:
    result = 3;
    goto LABEL_28;
  }

  v15 = *a2;
  *(a1 + 16) = *a2;
  v16 = WORD1(v15);
  *(a1 + 6) = WORD1(v15);
  if (!WORD1(v15) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v10 + 1120);
    v18 = *(v10 + 28);
    *buf = 134218240;
    *&buf[4] = v17;
    *&buf[12] = 1024;
    *&buf[14] = v18;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSCDec %llu Received First Frame %d", buf, 0x12u);
  }

  if ((*(v10 + 1116) & 1) == 0 && *(v10 + 24) == 1)
  {
    if ((v19 = *(v10 + 28), v19 > v16) && (v19 - v16) < 0x8000 || v19 < v16 && (v16 - v19) > 0x8000)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v74 = *(v10 + 1120);
        *buf = 134218496;
        *&buf[4] = v74;
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 1024;
        *&buf[20] = v19;
        _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Old frame %d %d", buf, 0x18u);
      }

      result = 8;
      goto LABEL_28;
    }
  }

  if (a4)
  {
    *(v10 + 4) = 1;
    if (v16)
    {
      v20 = *(v10 + 28);
      if (v20 + 1 != v16)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v21 = *(v10 + 1120);
          *buf = 134218496;
          *&buf[4] = v21;
          *&buf[12] = 1024;
          *&buf[14] = v16;
          *&buf[18] = 1024;
          *&buf[20] = v20;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Invalid Sequence %d %d", buf, 0x18u);
        }

        result = 7;
        goto LABEL_28;
      }
    }
  }

  else
  {
    *(v10 + 4) = 0;
  }

  v89 = a7;
  v37 = *(v10 + 16);
  v91 = v37 & 1;
  v79 = v37;
  if ((v37 & 8) != 0)
  {
    v67 = 0;
    v68 = 8;
    while (1)
    {
      v38 = v68 + 4;
      if (v68 + 4 > v8)
      {
        break;
      }

      if ((v9[v68] & 0x80) != 0)
      {
        v68 += 4;
        v66 = v67++ >= 0xF;
        if (!v66)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v69 = *(v10 + 1120);
      *buf = 134218752;
      *&buf[4] = v69;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      *&buf[24] = v8;
      LOWORD(v101) = 2048;
      *(&v101 + 2) = v68;
      v35 = MEMORY[0x277D86220];
      v36 = "MSCDec %llu Unable to decode Frame header (xh) %llu %zu %llu";
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v38 = 8;
LABEL_37:
  v75 = a6;
  v76 = v16;
  v39 = *(v10 + 1088);
  v86 = *(v10 + 1096);
  if (v39 == v86)
  {
    v40 = 0;
LABEL_81:
    *v75 = v38;
    *(v10 + 60) = v40;
    *(v10 + 28) = v76;
    ++*v10;
    if (*(v10 + 1116) == 1)
    {
      gcl::motion::DecoderImpl::handleCompressedFrame(v10, (v10 + 1116));
    }

    result = 0;
    goto LABEL_28;
  }

  v40 = 0;
  v41 = *(v10 + 2224);
  v42 = *(v10 + 2200);
  v80 = 3;
  v77 = v8;
  v81 = v9;
  while (1)
  {
    v43 = v38 + 4;
    if (v38 + 4 > v8)
    {
      break;
    }

    v44 = (*&v9[v38] >> 8) & 0xFF00 | HIBYTE(*&v9[v38]) | (BYTE1(*&v9[v38]) << 16);
    v45 = &v9[v43];
    if (v9[v38] != 0xFF)
    {
      v83 = v38 + 4;
      v84 = (*&v9[v38] >> 8) & 0xFF00 | HIBYTE(*&v9[v38]) | (BYTE1(*&v9[v38]) << 16);
      v88 = v40;
      v51 = *(v39 + 2);
      v52 = *(v39 + 4);
      v85 = v39;
      v53 = *(v39 + 6);
      *(v10 + 1136) = v44;
      *(v10 + 1144) = v45;
      gcl::ArithmeticDecoder::start((v10 + 1128));
      v106 = 0;
      v104 = 0u;
      *v105 = 0u;
      *v102 = 0u;
      *v103 = 0u;
      v101 = 0u;
      memset(buf, 0, sizeof(buf));
      gcl::motion::ACContext::init(buf, v52);
      *v92 = 0;
      std::vector<int>::vector[abi:ne200100](__p, v52, v92);
      v82 = (v88 + 4 * v51 * v52);
      v87 = 4 * v51 * v52;
      if (v82 >= v89)
      {
        v63 = MEMORY[0x277D86220];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v80 = 1;
          goto LABEL_58;
        }

        v64 = *(v10 + 1120);
        *v92 = 134218752;
        v93 = v64;
        v94 = 1024;
        v40 = v88;
        v95 = v88;
        v96 = 1024;
        v97 = v87;
        v98 = 2048;
        v65 = v89;
        v99 = v89;
        _os_log_impl(&dword_26606F000, v63, OS_LOG_TYPE_ERROR, "MSCDec %llu Cannot decode further %d %d %zu", v92, 0x22u);
        v80 = 1;
      }

      else
      {
        if (v51)
        {
          v55 = 0;
          v56 = (1 << v53);
          v57 = v7;
          v58 = 4 * v52;
          v78 = v57;
          do
          {
            gcl::motion::DecoderImpl::decodeResidual(v10, v54, __p[0], v52, &v91, buf, v41);
            if (((v52 != 0) & (v79 >> 4)) != 0)
            {
              v59 = 0;
              v60 = 0;
              v61 = __p[0];
              do
              {
                v62 = v41[v59 / 4];
                *&v61[v59] = v62;
                *&v57[v59] = v62;
                if (a4 == 1)
                {
                  v62 = v41[v59 / 4] + *(v42 + v59);
                  *&v57[v59] = v62;
                }

                *(v42 + v59) = v62;
                *&v57[v59] = *&v57[v59] / v56;
                ++v60;
                v59 += 4;
              }

              while (v60 < v52);
            }

            ++v55;
            v41 = (v41 + v58);
            v42 += v58;
            v57 += v58;
          }

          while (v55 != v51);
          v8 = v77;
          v7 = v78;
          v9 = v81;
        }

LABEL_58:
        v65 = v89;
        v40 = v88;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v105[0])
      {
        v105[1] = v105[0];
        operator delete(v105[0]);
      }

      if (v103[1])
      {
        *&v104 = v103[1];
        operator delete(v103[1]);
      }

      if (v102[0])
      {
        v102[1] = v102[0];
        operator delete(v102[0]);
      }

      if (*&buf[24])
      {
        *&v101 = *&buf[24];
        operator delete(*&buf[24]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v43 = v83;
      v66 = v82 >= v65;
      LODWORD(v44) = v84;
      v39 = v85;
      v50 = v87;
      if (v66)
      {
        goto LABEL_95;
      }

      goto LABEL_72;
    }

    if (v44)
    {
      if ((v44 + v40) >= v89)
      {
        v72 = (*&v9[v38] >> 8) & 0xFF00 | HIBYTE(*&v9[v38]) | (BYTE1(*&v9[v38]) << 16);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v73 = *(v10 + 1120);
          *buf = 134218496;
          *&buf[4] = v73;
          *&buf[12] = 1024;
          *&buf[14] = v72;
          *&buf[18] = 1024;
          *&buf[20] = v40;
          _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu slice length too large %d %u", buf, 0x18u);
        }

        v71 = 1;
        goto LABEL_94;
      }

      v46 = (*&v9[v38] >> 8) & 0xFF00 | HIBYTE(*&v9[v38]) | (BYTE1(*&v9[v38]) << 16);
      v47 = v8;
      v48 = v10;
      v49 = v43;
      memcpy(v7, v45, v44);
      v43 = v49;
      v10 = v48;
      v8 = v47;
      v9 = v81;
      LODWORD(v44) = v46;
      v50 = v46;
    }

    else
    {
      v50 = 0;
    }

LABEL_72:
    v38 = v43 + v44;
    v7 += v50;
    v40 += v50;
    v39 += 12;
    if (v39 == v86)
    {
      goto LABEL_81;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v70 = *(v10 + 1120);
    *buf = 134218752;
    *&buf[4] = v70;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    *&buf[24] = v8;
    LOWORD(v101) = 2048;
    *(&v101 + 2) = v38;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSCDec %llu Unable to decode Frame header (sh) %llu %zu %llu", buf, 0x2Au);
  }

  v71 = 3;
LABEL_94:
  v80 = v71;
LABEL_95:
  result = v80;
LABEL_28:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

gcl::motion::Decoder *gcl::motion::Decoder::Decoder(gcl::motion::Decoder *this)
{
  v2 = operator new(0x8C8uLL);
  *v2 = 0;
  v2[4] = -1;
  *(v2 + 3) = 0;
  *(v2 + 14) = 0;
  *(v2 + 7) = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 45) = 0;
  *(v2 + 136) = 0;
  *(v2 + 138) = 0;
  *(v2 + 137) = 0;
  *(v2 + 278) = 9;
  v2[1116] = 1;
  *(v2 + 140) = 0;
  *(v2 + 143) = 0;
  *(v2 + 2200) = 0u;
  *(v2 + 2216) = 0u;
  *(v2 + 2232) = 0u;
  *this = v2;
  return this;
}

{
  v2 = operator new(0x8C8uLL);
  *v2 = 0;
  v2[4] = -1;
  *(v2 + 3) = 0;
  *(v2 + 14) = 0;
  *(v2 + 7) = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 45) = 0;
  *(v2 + 136) = 0;
  *(v2 + 138) = 0;
  *(v2 + 137) = 0;
  *(v2 + 278) = 9;
  v2[1116] = 1;
  *(v2 + 140) = 0;
  *(v2 + 143) = 0;
  *(v2 + 2200) = 0u;
  *(v2 + 2216) = 0u;
  *(v2 + 2232) = 0u;
  *this = v2;
  return this;
}

void gcl::motion::Decoder::~Decoder(gcl::motion::DecoderImpl **this)
{
  std::unique_ptr<gcl::motion::DecoderImpl>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<gcl::motion::DecoderImpl>::reset[abi:ne200100](this, 0);
}

uint64_t gcl::motion::Decoder::decodeFrame(gcl::motion::DecoderImpl **this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, int *a5)
{
  result = gcl::motion::DecoderImpl::decodeFrame(*this, a2, a3, a4, a5);
  *(*this + 278) = result;
  return result;
}

uint64_t gcl::motion::Decoder::decodeFrame(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = gcl::motion::DecoderImpl::decodeFrame(*a1, a2, a3, a4, a5);
  *(*a1 + 1112) = result;
  return result;
}

uint64_t gcl::motion::Decoder::readMSCFrameHeaders(uint64_t a1, unint64_t a2, int *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "readMSCFrameHeaders no input\n", buf, 2u);
    }

    result = 5;
    goto LABEL_29;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  v6 = 0;
  v7 = 0;
  v8 = a3 + 1;
  v9 = MEMORY[0x277D86220];
  while (1)
  {
    if (v7 + 4 > a2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        *v20 = a2;
        *&v20[8] = 2048;
        *v21 = a2;
        *&v21[8] = 2048;
        *v22 = v7;
        v15 = MEMORY[0x277D86220];
        v16 = "readMSCFrameHeaders Unable to decode nal header %llu %zu %llu";
        v17 = 32;
LABEL_24:
        _os_log_impl(&dword_26606F000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
      }

LABEL_25:
      result = 3;
      goto LABEL_29;
    }

    v10 = *(a1 + v7);
    v11 = (BYTE2(v10) << 8) | (BYTE1(v10) << 16) | HIBYTE(v10);
    if (v11 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67110144;
        *v20 = v10;
        *&v20[4] = 1024;
        *&v20[6] = (BYTE2(v10) << 8) | (BYTE1(v10) << 16) | HIBYTE(v10);
        *v21 = 2048;
        *&v21[2] = a2;
        *v22 = 2048;
        *&v22[2] = a2;
        v23 = 2048;
        v24 = v7 + 4;
        v15 = MEMORY[0x277D86220];
        v16 = "readMSCFrameHeaders Invalid nal format (%d) %d %llu %zu %llu";
        v17 = 44;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v7 += v11;
    v12 = *a3;
    if (*a3 >= 10)
    {
      break;
    }

    v8[v12] = v10 & 0xFF000000 | (BYTE2(v10) << 16) | (BYTE1(v10) << 8) | v10;
    ++*a3;
    if ((v10 > 3u || v10 == 2) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v20 = v10;
      _os_log_impl(&dword_26606F000, v9, OS_LOG_TYPE_ERROR, "readMSCFrameHeaders Unknown Frame %d", buf, 8u);
    }

    if (v7 >= a2 || v6++ >= 9)
    {
      goto LABEL_28;
    }
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 67110144;
    *v20 = v12;
    *&v20[4] = 1024;
    *&v20[6] = v10;
    *v21 = 2048;
    *&v21[2] = a2;
    *v22 = 2048;
    *&v22[2] = a2;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&dword_26606F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "readMSCFrameHeaders Too many NAL units (%d) %d %llu %zu %llu", buf, 0x2Cu);
LABEL_28:
    result = 0;
  }

LABEL_29:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void std::unique_ptr<gcl::motion::DecoderImpl>::reset[abi:ne200100](gcl::motion::DecoderImpl **a1, gcl::motion::DecoderImpl *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    gcl::motion::DecoderImpl::~DecoderImpl(v3);

    operator delete(v4);
  }
}

void gcl::motion::DecoderImpl::~DecoderImpl(gcl::motion::DecoderImpl *this)
{
  v2 = *(this + 278);
  if (v2)
  {
    *(this + 279) = v2;
    operator delete(v2);
  }

  v3 = *(this + 275);
  if (v3)
  {
    *(this + 276) = v3;
    operator delete(v3);
  }

  v4 = *(this + 136);
  if (v4)
  {
    *(this + 137) = v4;
    operator delete(v4);
  }
}

uint64_t sub_266077DEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  sub_26607FB88();
  MEMORY[0x266778270](0x72615065726F6328, 0xED0000203A736D61);
  sub_266077F98(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E50, &unk_266081BD0);
  sub_26607A5F0();
  v5 = sub_26607FAE8();
  v7 = v6;

  MEMORY[0x266778270](v5, v7);

  MEMORY[0x266778270](0x203A7071202CLL, 0xE600000000000000);
  v8 = sub_26607FC88();
  MEMORY[0x266778270](v8);

  MEMORY[0x266778270](0x5474616D726F662CLL, 0xED0000203A657079);
  sub_26607FBC8();
  MEMORY[0x266778270](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_266077F98(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_26607ECDC(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_26607F9B8();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_26607F9D8();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_26607F9B8();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_26607F9D8();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      LOBYTE(v33) = v19;
      v20 = sub_26607FC88();
      v45 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        v28 = v20;
        v25 = v21;
        sub_26607ECDC((v22 > 1), v23 + 1, 1);
        v21 = v25;
        v20 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

LABEL_39:
  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2660782C0()
{
  v1 = 28785;
  if (*v0 != 1)
  {
    v1 = 0x795474616D726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6172615065726F63;
  }
}

uint64_t sub_266078314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26607A378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266078348(uint64_t a1)
{
  v2 = sub_266078688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266078384(uint64_t a1)
{
  v2 = sub_266078688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignalSessionParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059D28, &qword_266081460);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v18 = *(v1 + 16);
  HIDWORD(v14) = *(v1 + 20);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266078634(v8, v9);
  sub_266078688();
  sub_26607FD08();
  v16 = v8;
  v17 = v9;
  v19 = 0;
  sub_2660786DC();
  v11 = v15;
  sub_26607FC68();
  sub_266078730(v16, v17);
  if (!v11)
  {
    v12 = BYTE4(v14);
    LOBYTE(v16) = 1;
    sub_26607FC78();
    LOBYTE(v16) = v12;
    v19 = 2;
    sub_266078784();
    sub_26607FC58();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266078634(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_266078688()
{
  result = qword_280059D30;
  if (!qword_280059D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D30);
  }

  return result;
}

unint64_t sub_2660786DC()
{
  result = qword_280059D38;
  if (!qword_280059D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D38);
  }

  return result;
}

uint64_t sub_266078730(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_266078784()
{
  result = qword_280059D40;
  if (!qword_280059D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D40);
  }

  return result;
}

uint64_t SignalSessionParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059D48, &qword_266081468);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266078688();
  sub_26607FCF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_266078A68();
  sub_26607FC18();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v15[0]) = 1;
  v16 = sub_26607FC28();
  v17 = 2;
  sub_266078ABC();
  sub_26607FC08();
  (*(v6 + 8))(v9, v5);
  v13 = v15[0];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 20) = v13;
  sub_266078634(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_266078730(v12, v11);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_266078A68()
{
  result = qword_280059D50;
  if (!qword_280059D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D50);
  }

  return result;
}

unint64_t sub_266078ABC()
{
  result = qword_280059D58;
  if (!qword_280059D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D58);
  }

  return result;
}

uint64_t SignalSessionFormatType.description.getter()
{
  v1 = 0x363174616F6C66;
  if (*v0 != 1)
  {
    v1 = 0x38746E6975;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x323374616F6C66;
  }
}

uint64_t sub_266078BF4()
{
  v1 = 0x363174616F6C66;
  if (*v0 != 1)
  {
    v1 = 0x38746E6975;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x323374616F6C66;
  }
}

uint64_t sub_266078C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26607A498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266078C80(uint64_t a1)
{
  v2 = sub_266079214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266078CBC(uint64_t a1)
{
  v2 = sub_266079214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266078D04@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_266078D40(uint64_t a1)
{
  v2 = sub_2660792BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266078D7C(uint64_t a1)
{
  v2 = sub_2660792BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266078DB8(uint64_t a1)
{
  v2 = sub_266079310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266078DF4(uint64_t a1)
{
  v2 = sub_266079310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266078E30(uint64_t a1)
{
  v2 = sub_266079268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266078E6C(uint64_t a1)
{
  v2 = sub_266079268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignalSessionFormatType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059D60, &qword_266081470);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059D68, &qword_266081478);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059D70, &qword_266081480);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059D78, &qword_266081488);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266079214();
  sub_26607FD08();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_2660792BC();
      v12 = v26;
      sub_26607FC48();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_266079268();
      v12 = v29;
      sub_26607FC48();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_266079310();
    sub_26607FC48();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_266079214()
{
  result = qword_280059D80;
  if (!qword_280059D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D80);
  }

  return result;
}

unint64_t sub_266079268()
{
  result = qword_280059D88;
  if (!qword_280059D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D88);
  }

  return result;
}

unint64_t sub_2660792BC()
{
  result = qword_280059D90;
  if (!qword_280059D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D90);
  }

  return result;
}

unint64_t sub_266079310()
{
  result = qword_280059D98;
  if (!qword_280059D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059D98);
  }

  return result;
}

uint64_t SignalSessionFormatType.hashValue.getter()
{
  v1 = *v0;
  sub_26607FCC8();
  MEMORY[0x266778430](v1);
  return sub_26607FCE8();
}

uint64_t SignalSessionFormatType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059DA0, &qword_266081490);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059DA8, &qword_266081498);
  v41 = *(v44 - 8);
  v6 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059DB0, &qword_2660814A0);
  v46 = *(v9 - 8);
  v10 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059DB8, &qword_2660814A8);
  v48 = *(v13 - 8);
  v14 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266079214();
  v18 = v49;
  sub_26607FCF8();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_26607FC38();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_2660792BC();
          v33 = v40;
          sub_26607FBE8();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_266079268();
          v37 = v40;
          sub_26607FBE8();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_266079310();
        v35 = v40;
        sub_26607FBE8();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_26607FBA8();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059DC0, &qword_2660814B0) + 48);
  *v28 = &type metadata for SignalSessionFormatType;
  sub_26607FBF8();
  sub_26607FB98();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_266079998()
{
  v1 = *v0;
  sub_26607FCC8();
  MEMORY[0x266778430](v1);
  return sub_26607FCE8();
}

uint64_t sub_2660799E0()
{
  v1 = *v0;
  sub_26607FCC8();
  MEMORY[0x266778430](v1);
  return sub_26607FCE8();
}

unint64_t sub_266079A28()
{
  result = qword_280059DC8;
  if (!qword_280059DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059DC8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_266079ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 20);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 20);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_266079B30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 3;
    }
  }

  return result;
}

void sub_266079BD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_266079C78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_266079D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266079DCC()
{
  result = qword_280059DE0;
  if (!qword_280059DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059DE0);
  }

  return result;
}

unint64_t sub_266079E24()
{
  result = qword_280059DE8;
  if (!qword_280059DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059DE8);
  }

  return result;
}

void *sub_266079E78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266079E94()
{
  v2 = *v0;
  sub_26607FCC8();
  sub_26607FAD8();
  return sub_26607FCE8();
}

uint64_t sub_266079EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26607A5AC(&qword_280059E48);

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_266079F60()
{
  v2 = *v0;
  sub_26607FCC8();
  sub_26607FAD8();
  return sub_26607FCE8();
}

unint64_t sub_26607A00C()
{
  result = qword_280059DF8;
  if (!qword_280059DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059DF8);
  }

  return result;
}

unint64_t sub_26607A064()
{
  result = qword_280059E00;
  if (!qword_280059E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E00);
  }

  return result;
}

unint64_t sub_26607A0BC()
{
  result = qword_280059E08;
  if (!qword_280059E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E08);
  }

  return result;
}

unint64_t sub_26607A114()
{
  result = qword_280059E10;
  if (!qword_280059E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E10);
  }

  return result;
}

unint64_t sub_26607A16C()
{
  result = qword_280059E18;
  if (!qword_280059E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E18);
  }

  return result;
}

unint64_t sub_26607A1C4()
{
  result = qword_280059E20;
  if (!qword_280059E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E20);
  }

  return result;
}

unint64_t sub_26607A21C()
{
  result = qword_280059E28;
  if (!qword_280059E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E28);
  }

  return result;
}

unint64_t sub_26607A274()
{
  result = qword_280059E30;
  if (!qword_280059E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E30);
  }

  return result;
}

unint64_t sub_26607A2CC()
{
  result = qword_280059E38;
  if (!qword_280059E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E38);
  }

  return result;
}

unint64_t sub_26607A324()
{
  result = qword_280059E40;
  if (!qword_280059E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E40);
  }

  return result;
}

uint64_t sub_26607A378(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6172615065726F63 && a2 == 0xEA0000000000736DLL || (sub_26607FC98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28785 && a2 == 0xE200000000000000 || (sub_26607FC98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x795474616D726F66 && a2 == 0xEA00000000006570)
  {

    return 2;
  }

  else
  {
    v5 = sub_26607FC98();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26607A498(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x323374616F6C66 && a2 == 0xE700000000000000;
  if (v4 || (sub_26607FC98() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000 || (sub_26607FC98() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x38746E6975 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26607FC98();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26607A5AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SCPError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26607A5F0()
{
  result = qword_280059E58;
  if (!qword_280059E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280059E50, &unk_266081BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26607A6C8(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_26607ECDC(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_26607F9B8();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_26607F9D8();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_26607F9B8();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_26607F9D8();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E90, &qword_266081CA8);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_266081BE0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_26607FAF8();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_26607ECDC((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t SignalDecoder.__allocating_init(encoderParams:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SignalDecoder.init(encoderParams:)(a1, a2);
  return v7;
}

void SignalDecoder.init(encoderParams:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_26607FAC8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = (MEMORY[0x28223BE20])();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v55 - v13;
  v14 = sub_26607F968();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v2 + 48) = sub_26607F958();
  v17 = OBJC_IVAR____TtC17SignalCompression13SignalDecoder_logger;
  sub_26607FAB8();
  v18 = *(v2 + 48);
  sub_26607B1E0();

  sub_26607F948();
  v61 = v12;
  v56 = a2;
  v57 = a1;

  v19 = v68;
  v20 = v69;
  v62 = v70;
  v63 = v71;
  v21 = v66;
  v59 = v7[2];
  v60 = v7 + 2;
  v59(v66, v3 + v17, v6);
  sub_266078634(v19, v20);
  v22 = v6;
  v23 = sub_26607FAA8();
  v24 = sub_26607FB48();
  sub_266078730(v19, v20);
  v25 = os_log_type_enabled(v23, v24);
  v58 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v65 = v7;
    v28 = v27;
    v67 = v27;
    *v26 = 136315138;
    v68 = v19;
    v69 = v20;
    v70 = v62;
    v71 = v63;
    v64 = v22;
    v29 = sub_266077DEC();
    v31 = v19;
    v32 = sub_26607C5D4(v29, v30, &v67);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_26606F000, v23, v24, "Decoder Params: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2667789A0](v28, -1, -1);
    MEMORY[0x2667789A0](v26, -1, -1);

    v33 = v65[1];
    v34 = v21;
    v35 = v64;
    v33(v34, v64);
  }

  else
  {

    v31 = v19;
    v33 = v7[1];
    v33(v21, v22);
    v35 = v22;
  }

  v36 = 1 << v62;
  if (v62 > 0x1F)
  {
    v36 = 0;
  }

  *(v3 + 40) = v36;
  v37 = v63;
  if (v63 == 3)
  {
    v37 = 0;
  }

  *(v3 + 44) = v37;
  v68 = v31;
  v69 = v20;
  sub_266078634(v31, v20);
  sub_26607B234();
  v38 = objc_allocWithZone(MotionDecoderWrapper);
  v39 = sub_26607FA88();
  v40 = [v38 initWithEncoderSeqParams_];

  *(v3 + 16) = v40;
  v41 = v61;
  v59(v61, v3 + v58, v35);
  v42 = sub_26607FAA8();
  v43 = sub_26607FB48();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26606F000, v42, v43, "SC Decoder Session Init", v44, 2u);
    MEMORY[0x2667789A0](v44, -1, -1);
  }

  v33(v41, v35);
  v45 = [*(v3 + 16) getAttributeCount];
  v46 = [*(v3 + 16) getComponentPerAttributeCount];
  v47 = v46 * v45;
  if (v47 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v48 = v45;
  v49 = v46;
  if (v47)
  {
    v50 = sub_26607FB38();
    *(v50 + 16) = v47;
    bzero((v50 + 32), 4 * v47);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  *(v3 + 56) = v50;
  *(v3 + 24) = v48;
  *(v3 + 32) = v49;
  v51 = qword_266081CC8[*(v3 + 44)];
  v52 = v47 * v51;
  if ((v47 * v51) >> 64 != (v47 * v51) >> 63)
  {
    goto LABEL_21;
  }

  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v52)
  {
    v53 = sub_26607FB38();
    *(v53 + 16) = v52;
    bzero((v53 + 32), v52);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v54 = v56;
  sub_266078730(v31, v20);
  sub_266078730(v57, v54);
  sub_266078730(v68, v69);
  *(v3 + 64) = v53;
}

unint64_t sub_26607B1E0()
{
  result = qword_280059E60;
  if (!qword_280059E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E60);
  }

  return result;
}

void sub_26607B234()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_22;
    }
  }

  if ((sub_26607CC50() & 0x100) == 0)
  {
    return;
  }

  v8 = *v0;
  v9 = v0[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(v8 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v9);
    v12 = v8 >> 32;
    if (!v10)
    {
      v12 = v11;
    }
  }

  if (__OFSUB__(v12, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_26607CBA4(v12 - 1);
}

uint64_t sub_26607B2F8(float16x8_t *a1, unint64_t a2)
{
  swift_beginAccess();
  sub_26607B398(a1, a2, (v2 + 64));
  swift_endAccess();
  if (!v3)
  {
    v6 = *(v2 + 64);

    v2 = sub_26607CEE0(v7);
  }

  return v2;
}

uint64_t sub_26607B398(float16x8_t *a1, unint64_t a2, float16x8_t **a3)
{
  v6 = v4;
  v7 = v3;
  v53[3] = *MEMORY[0x277D85DE8];
  v52[0] = 0;
  v11 = *(v3 + 16);
  v12 = sub_26607FA88();
  swift_beginAccess();
  v13 = *(v7 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 56) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_26607C44C(0, *(v13 + 2), 0, v13);
  }

  *(v7 + 56) = v13;

  v15 = [v11 decodeFrameInternal:v12 decodedFrame:v13 + 32 decodeError:v52];
  swift_endAccess();

  if (v15 < 1 || v52[0] != 0)
  {
    sub_266078634(a1, a2);
    v17 = sub_26607FAA8();
    v18 = sub_26607FB58();
    sub_266078730(a1, a2);
    v51 = v15;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v53[0] = v20;
      *v19 = 136315138;
      v52[1] = sub_26607A6C8(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E50, &unk_266081BD0);
      sub_26607D1EC(&qword_280059E58, &qword_280059E50, &unk_266081BD0);
      v21 = sub_26607FAE8();
      v23 = v22;

      v24 = sub_26607C5D4(v21, v23, v53);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_26606F000, v17, v18, "Cannot decode input frame %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2667789A0](v20, -1, -1);
      MEMORY[0x2667789A0](v19, -1, -1);
    }

    v25 = sub_26607FAA8();
    v26 = sub_26607FB68();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53[0] = v28;
      *v27 = 136315394;
      swift_beginAccess();
      v29 = sub_26607B8D8(v52[0]);
      v31 = sub_26607C5D4(v29, v30, v53);

      *(v27 + 4) = v31;
      *(v27 + 12) = 1024;
      *(v27 + 14) = v51;
      _os_log_impl(&dword_26606F000, v25, v26, "Cannot decode inputs: %s len %d", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2667789A0](v28, -1, -1);
      MEMORY[0x2667789A0](v27, -1, -1);
    }

    swift_beginAccess();
    v32 = v52[0];
LABEL_18:
    type metadata accessor for SCPError(0);
    sub_26607CFBC();
    swift_allocError();
    *v42 = v32;
    result = swift_willThrow();
    goto LABEL_19;
  }

  v33 = *(v7 + 24);
  v34 = *(v7 + 32);
  v35 = v33 * v34;
  if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = qword_266081CC8[*(v7 + 44)];
  v5 = v35 * v36;
  if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    a1 = sub_26607CB7C(a1);
    goto LABEL_21;
  }

  v37 = a3;
  a3 = v4;
  v50 = v37;
  a1 = *v37;
  v38 = (*v37)[1].i64[0];
  if (v38 < v5)
  {
    v39 = sub_26607FAA8();
    v40 = sub_26607FB68();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134218240;
      *(v41 + 4) = v38;
      *(v41 + 12) = 2048;
      *(v41 + 14) = v5;
      _os_log_impl(&dword_26606F000, v39, v40, "output buffer does not match requirements %ld %ld", v41, 0x16u);
      MEMORY[0x2667789A0](v41, -1, -1);
    }

    v32 = 4;
    goto LABEL_18;
  }

  v6 = v15;
  LODWORD(v5) = *(v7 + 40);
  LOBYTE(v15) = *(v7 + 44);
  v45 = *v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  LOBYTE(v53[0]) = v15;
  v46 = *(v7 + 56);

  sub_26607BAB4(v47, a1 + 2, v49, v48, v33, v34, v5);

  *v50 = a1;
  if (!a3)
  {
    result = v6;
  }

LABEL_19:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26607B8D8(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000012;
      }

      if (a1 == 3)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000019;
    }

    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0xD000000000000019;
    }

    goto LABEL_22;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0xD00000000000001FLL;
      case 8:
        return 0xD000000000000014;
      case 9:
        return 0x727265206373694DLL;
    }

LABEL_22:
    result = sub_26607FBD8();
    __break(1u);
    return result;
  }

  if (a1 == 5)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_26607BAB4(unint64_t result, float16x8_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = result;
  if (*v7)
  {
    if (*v7 != 1)
    {
      v113 = result;
      if (!a2)
      {
        if (a5 < 0)
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (!a5)
        {
          return result;
        }

        if (a6 < 0)
        {
LABEL_185:
          __break(1u);
          return result;
        }

        v107 = 0;
        v108 = 0;
        v109 = result + 32;
        while ((v108 * a6) >> 64 == (v108 * a6) >> 63)
        {
          v110 = a6;
          v111 = v107;
          if (a6)
          {
            while ((v107 & 0x8000000000000000) == 0)
            {
              if (v111 >= *(v11 + 16))
              {
                goto LABEL_171;
              }

              if ((*(v109 + 4 * v111) & 0x80000000) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E88, &qword_266081CA0), result = swift_dynamicCast(), v11 = v113, !result))
              {
LABEL_155:
                type metadata accessor for SCPError(0);
                sub_26607CFBC();
                swift_allocError();
                *v112 = 8;
                return swift_willThrow();
              }

              ++v111;
              if (!--v110)
              {
                goto LABEL_146;
              }
            }

            goto LABEL_170;
          }

LABEL_146:
          ++v108;
          v107 += a6;
          if (v108 == a5)
          {
            return result;
          }
        }

        goto LABEL_176;
      }

      if (a5 < 0)
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      if (!a5)
      {
        return result;
      }

      if (a6 < 0)
      {
        goto LABEL_179;
      }

      v70 = 0;
      v71 = 0;
      v72 = result + 32;
      while ((v71 * a6) >> 64 == (v71 * a6) >> 63)
      {
        v73 = a6;
        v74 = v70;
        if (a6)
        {
          while ((v70 & 0x8000000000000000) == 0)
          {
            if (v74 >= *(v11 + 16))
            {
              goto LABEL_167;
            }

            if ((*(v72 + 4 * v74) & 0x80000000) != 0)
            {
              goto LABEL_155;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E88, &qword_266081CA0);
            result = swift_dynamicCast();
            if (!result)
            {
              goto LABEL_155;
            }

            a2->i8[v74++] = v114;
            --v73;
            v11 = v113;
            if (!v73)
            {
              goto LABEL_79;
            }
          }

          goto LABEL_166;
        }

LABEL_79:
        ++v71;
        v70 += a6;
        if (v71 == a5)
        {
          return result;
        }
      }

      goto LABEL_172;
    }

    if (a2)
    {
      if ((a5 & 0x8000000000000000) == 0)
      {
        if (!a5)
        {
          return result;
        }

        if ((a6 & 0x8000000000000000) == 0)
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *&a3 = a7;
          v15 = result + 32;
          v16 = 2 * a6;
          v17 = a6 - 1;
          v18 = 4 * a6;
          v19 = vdupq_lane_s32(*&a3, 0);
          v20 = a2 + 1;
          v21 = (result + 64);
          result = 16;
          while (1)
          {
            v22 = v14 * a6;
            if ((v14 * a6) >> 64 != (v14 * a6) >> 63)
            {
              __break(1u);
              goto LABEL_165;
            }

            if (a6)
            {
              break;
            }

LABEL_8:
            ++v14;
            v20 = (v20 + v16);
            v21 = (v21 + v18);
            v13 += a6;
            v12 -= a6;
            if (v14 == a5)
            {
              return result;
            }
          }

          v23 = *(v11 + 16);
          if (v23 <= v22)
          {
            v24 = v14 * a6;
          }

          else
          {
            v24 = *(v11 + 16);
          }

          v25 = v24 - v22;
          if (v25 >= v17)
          {
            v25 = a6 - 1;
          }

          v26 = v25 + 1;
          if (v26 <= 0x10)
          {
            goto LABEL_38;
          }

          if (v23 <= v22)
          {
            v27 = v14 * a6;
          }

          else
          {
            v27 = *(v11 + 16);
          }

          v28 = v27 - v22;
          if (v28 >= v17)
          {
            v28 = a6 - 1;
          }

          if (a2->u64 + v16 * v14 >= v11 + 36 + v18 * v14 + 4 * v28 || v15 + v18 * v14 >= a2->u64 + 2 * v28 + v16 * v14 + 2)
          {
            if ((v26 & 0xF) != 0)
            {
              v30 = v26 & 0xF;
            }

            else
            {
              v30 = 16;
            }

            v31 = v26 - v30;
            if (v23 <= v13)
            {
              v32 = v13;
            }

            else
            {
              v32 = *(v11 + 16);
            }

            v33 = v32 + v12;
            if (v33 >= v17)
            {
              v33 = a6 - 1;
            }

            v34 = v33 - v30 + 1;
            v35 = v21;
            v36 = v20;
            do
            {
              v38 = v35[-2];
              v37 = v35[-1];
              v40 = *v35;
              v39 = v35[1];
              v35 += 4;
              v36[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvtq_f32_s32(v38), v19)), vdivq_f32(vcvtq_f32_s32(v37), v19));
              *v36 = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvtq_f32_s32(v40), v19)), vdivq_f32(vcvtq_f32_s32(v39), v19));
              v36 += 2;
              v34 -= 16;
            }

            while (v34);
          }

          else
          {
LABEL_38:
            v31 = 0;
          }

          v41 = v31 + v13;
          v42 = a6 - v31;
          while (v41 < v23)
          {
            _S2 = *(v15 + 4 * v41) / *&a3;
            __asm { FCVT            H2, S2 }

            a2->i16[v41++] = LOWORD(_S2);
            if (!--v42)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_159;
        }

        goto LABEL_177;
      }

      goto LABEL_173;
    }

    if (a5 < 0)
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    if (!a5)
    {
      return result;
    }

    if (a6 < 0)
    {
      goto LABEL_183;
    }

    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = a6 - 1;
    while (1)
    {
      v79 = v77 * a6;
      if ((v77 * a6) >> 64 != (v77 * a6) >> 63)
      {
        break;
      }

      if (a6)
      {
        v80 = *(result + 16);
        if (v80 <= v79)
        {
          v81 = v77 * a6;
        }

        else
        {
          v81 = *(result + 16);
        }

        v82 = v81 - v79;
        if (v82 >= v78)
        {
          v82 = a6 - 1;
        }

        v83 = v82 + 1;
        if (v83 > 0x10)
        {
          v85 = v83 & 0xF;
          if ((v83 & 0xF) == 0)
          {
            v85 = 16;
          }

          v84 = v83 - v85;
          if (v80 <= v76)
          {
            v86 = v76;
          }

          else
          {
            v86 = *(result + 16);
          }

          v87 = v86 + v75;
          if (v87 >= v78)
          {
            v87 = a6 - 1;
          }

          v88 = v87 - v85 + 1;
          do
          {
            v88 -= 16;
          }

          while (v88);
        }

        else
        {
          v84 = 0;
        }

        v89 = v84 + v76;
        v90 = a6 - v84;
        while (v89 < v80)
        {
          ++v89;
          if (!--v90)
          {
            goto LABEL_92;
          }
        }

        goto LABEL_160;
      }

LABEL_92:
      ++v77;
      v76 += a6;
      v75 -= a6;
      if (v77 == a5)
      {
        return result;
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (!a2)
  {
    if (a5 < 0)
    {
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    if (!a5)
    {
      return result;
    }

    if (a6 < 0)
    {
      goto LABEL_184;
    }

    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = a6 - 1;
    while (1)
    {
      v95 = v93 * a6;
      if ((v93 * a6) >> 64 != (v93 * a6) >> 63)
      {
        goto LABEL_169;
      }

      if (a6)
      {
        v96 = *(result + 16);
        if (v96 <= v95)
        {
          v97 = v93 * a6;
        }

        else
        {
          v97 = *(result + 16);
        }

        v98 = v97 - v95;
        if (v98 >= v94)
        {
          v98 = a6 - 1;
        }

        v99 = v98 + 1;
        if (v99 > 8)
        {
          v101 = v99 & 7;
          if ((v99 & 7) == 0)
          {
            v101 = 8;
          }

          v100 = v99 - v101;
          if (v96 <= v92)
          {
            v102 = v92;
          }

          else
          {
            v102 = *(result + 16);
          }

          v103 = v102 + v91;
          if (v103 >= v94)
          {
            v103 = a6 - 1;
          }

          v104 = v103 - v101 + 1;
          do
          {
            v104 -= 8;
          }

          while (v104);
        }

        else
        {
          v100 = 0;
        }

        v105 = v100 + v92;
        v106 = a6 - v100;
        while (v105 < v96)
        {
          ++v105;
          if (!--v106)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_161;
      }

LABEL_119:
      ++v93;
      v92 += a6;
      v91 -= a6;
      if (v93 == a5)
      {
        return result;
      }
    }
  }

  if (a5 < 0)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (!a5)
  {
    return result;
  }

  if (a6 < 0)
  {
    goto LABEL_178;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  *&a3 = a7;
  v50 = &a2[-2] - result;
  v51 = a6 - 1;
  v52 = vdupq_lane_s32(*&a3, 0);
  v53 = &a2[1];
  v54 = 4 * a6;
  v55 = (result + 48);
  while (1)
  {
    result = v49 * a6;
    if ((v49 * a6) >> 64 != (v49 * a6) >> 63)
    {
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    if (a6)
    {
      break;
    }

LABEL_48:
    ++v49;
    v53 = (v53 + v54);
    v55 = (v55 + v54);
    v48 += a6;
    v47 -= a6;
    if (v49 == a5)
    {
      return result;
    }
  }

  v56 = *(v11 + 16);
  if (v56 <= result)
  {
    v57 = v49 * a6;
  }

  else
  {
    v57 = *(v11 + 16);
  }

  v58 = v57 - result;
  if (v58 >= v51)
  {
    v58 = a6 - 1;
  }

  v59 = v58 + 1;
  if (v59 >= 9 && v50 > 0x1F)
  {
    v62 = v59 & 7;
    if ((v59 & 7) == 0)
    {
      v62 = 8;
    }

    v61 = v59 - v62;
    if (v56 <= v48)
    {
      v63 = v48;
    }

    else
    {
      v63 = *(v11 + 16);
    }

    v64 = v63 + v47;
    if (v64 >= v51)
    {
      v64 = a6 - 1;
    }

    v65 = v64 - v62 + 1;
    v66 = v55;
    v67 = v53;
    do
    {
      v68 = vdivq_f32(vcvtq_f32_s32(*v66), v52);
      v67[-1] = vdivq_f32(vcvtq_f32_s32(v66[-1]), v52);
      *v67 = v68;
      v67 += 2;
      v66 += 2;
      v65 -= 8;
    }

    while (v65);
  }

  else
  {
    v61 = 0;
  }

  v69 = v61 + v48;
  result = a6 - v61;
  while (v69 < v56)
  {
    *&a2->i32[v69] = *(v11 + 32 + 4 * v69) / *&a3;
    ++v69;
    if (!--result)
    {
      goto LABEL_48;
    }
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t SignalDecoder.deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = OBJC_IVAR____TtC17SignalCompression13SignalDecoder_logger;
  v5 = sub_26607FAC8();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t SignalDecoder.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = OBJC_IVAR____TtC17SignalCompression13SignalDecoder_logger;
  v5 = sub_26607FAC8();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_26607C30C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_26607C358(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E80, &qword_266081C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26607C44C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E98, &qword_266081CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_26607C578(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26607C5D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26607C5D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26607C6A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26607D234(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26607C6A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26607C7AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26607FBB8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26607C7AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_26607C7F8(a1, a2);
  sub_26607C928(&unk_2877C09F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26607C7F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26607CA14(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26607FBB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26607FB28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26607CA14(v10, 0);
        result = sub_26607FB78();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26607C928(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26607C358(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26607CA14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E80, &qword_266081C98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **sub_26607CA88(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26607CA98(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26607CAB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE *sub_26607CAE8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26607EE08(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26607CDE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26607CE5C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26607CBA4(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    if (v5)
    {
      v6 = v3 >> 32;
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v6)
    {
      goto LABEL_14;
    }
  }

  result = sub_26607FA78();
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else if (v2 + 1 >= v2)
  {
    v8 = result;
    sub_26607FA58();
    return v8;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26607CC50()
{
  result = sub_26607CD38(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = result;
    v3 = *v0;
    v4 = *(v0 + 8);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v7 = v3 >> 32;
      }

      else
      {
        v7 = BYTE6(v4);
      }
    }

    sub_266078634(*v0, *(v0 + 8));
    result = sub_266078730(v3, v4);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }

    else if (v7 - 1 >= v6)
    {
      v8 = sub_26607FA68();
      v10 = v9;
      sub_266078730(v3, v4);
      *v0 = v8;
      *(v0 + 8) = v10;
      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26607CD38(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = sub_26607FA78();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_26607CDE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26607F9E8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26607F9A8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26607FA48();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26607CE5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26607F9E8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26607F9A8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26607CEE0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059EA0, &qword_266081CB8);
  v10 = sub_26607D1EC(&qword_280059EA8, &qword_280059EA0, &qword_266081CB8);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26607CAE8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_26607CFBC()
{
  result = qword_280059E68;
  if (!qword_280059E68)
  {
    type metadata accessor for SCPError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280059E68);
  }

  return result;
}

uint64_t type metadata accessor for SignalDecoder()
{
  result = qword_280059E70;
  if (!qword_280059E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26607D068()
{
  result = sub_26607FAC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26607D1EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26607D234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SignalEncoder.encoderParams.getter()
{
  v1 = *(v0 + 72);
  sub_266078634(v1, *(v0 + 80));
  return v1;
}

uint64_t SignalEncoder.FormatDescriptor.Semantic.hashValue.getter()
{
  v1 = *v0;
  sub_26607FCC8();
  MEMORY[0x266778430](v1);
  return sub_26607FCE8();
}

uint64_t SignalEncoder.EncodedFrame.data.getter()
{
  v1 = *v0;
  sub_266078634(*v0, *(v0 + 8));
  return v1;
}

uint64_t SignalEncoder.__allocating_init(formatDescriptor:options:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SignalEncoder.init(formatDescriptor:options:)(a1, a2);
  return v7;
}

void SignalEncoder.init(formatDescriptor:options:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v71 = sub_26607FAC8();
  v6 = *(v71 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v71);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 17);
  v17 = *a2;
  v18 = v13;
  *(v3 + 24) = 0;
  v19 = OBJC_IVAR____TtC17SignalCompression13SignalEncoder_logger;
  sub_26607FAB8();
  if (v18 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v14 > 0xFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (((v14 | v18 | v17) & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 > 0xFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v66 = v15;
  v67 = v10;
  v20 = objc_allocWithZone(MotionEncoderWrapper);
  v69 = v18;
  v70 = v14;
  v68 = v17;
  *(v3 + 16) = [v20 initWithAttributeCount:v18 componentCount:v14 quantization:v17];
  v21 = v6[2];
  v21(v12, v3 + v19, v71);
  v22 = sub_26607FAA8();
  v23 = sub_26607FB48();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v16;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26606F000, v22, v23, "SC Encoder Session Init", v25, 2u);
    v26 = v25;
    v16 = v24;
    MEMORY[0x2667789A0](v26, -1, -1);
  }

  v27 = v6[1];
  v28 = v71;
  v65 = v6 + 1;
  v27(v12, v71);
  v29 = v70;
  *(v3 + 32) = v69;
  *(v3 + 40) = v29;
  *(v3 + 48) = v66;
  v66 = v16;
  *(v3 + 49) = v16;
  v30 = v68;
  v31 = 1 << v68;
  if (v68 > 31)
  {
    v31 = 0;
  }

  *(v3 + 52) = v31;
  v32 = [*(v3 + 16) getEncoderParams];
  v33 = sub_26607FA98();
  v35 = v34;

  v36 = v67;
  v21(v67, v3 + v19, v28);
  sub_266078634(v33, v35);
  v37 = sub_26607FAA8();
  v38 = sub_26607FB48();
  if (!os_log_type_enabled(v37, v38))
  {
    sub_266078730(v33, v35);
    v42 = v70;
    goto LABEL_22;
  }

  v39 = swift_slowAlloc();
  v40 = v39;
  *v39 = 134217984;
  v41 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    v42 = v70;
    if (v41 != 2)
    {
      v43 = 0;
      goto LABEL_21;
    }

    v45 = *(v33 + 16);
    v44 = *(v33 + 24);
    v46 = __OFSUB__(v44, v45);
    v43 = v44 - v45;
    if (!v46)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    LODWORD(v43) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
LABEL_45:
      __break(1u);
      return;
    }

    v43 = v43;
    goto LABEL_21;
  }

  v42 = v70;
  if (v41)
  {
    goto LABEL_18;
  }

  v43 = BYTE6(v35);
LABEL_21:
  *(v39 + 4) = v43;
  sub_266078730(v33, v35);
  _os_log_impl(&dword_26606F000, v37, v38, "Encoder Params Length is %ld", v40, 0xCu);
  MEMORY[0x2667789A0](v40, -1, -1);
LABEL_22:

  v27(v36, v71);
  v47 = sub_26607F998();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_26607F988();
  v73[0] = v33;
  v73[1] = v35;
  v74 = v30;
  v75 = v66;
  v71 = v33;
  sub_266078634(v33, v35);
  sub_26607EC88();
  *(v3 + 72) = sub_26607F978();
  *(v3 + 80) = v50;

  v51 = sub_26607FAA8();
  v52 = sub_26607FB58();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *v53 = 136315138;
    v72 = sub_266077F98(*(v3 + 72), *(v3 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280059E50, &unk_266081BD0);
    sub_26607A5F0();
    v54 = sub_26607FAE8();
    v56 = v55;

    v57 = sub_26607C5D4(v54, v56, v73);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_26606F000, v51, v52, "Encoder Params encoded: %s", v53, 0xCu);
    v58 = v70;
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x2667789A0](v58, -1, -1);
    MEMORY[0x2667789A0](v53, -1, -1);
  }

  v59 = v69;
  v60 = v69 * v42;
  if ((v69 * v42) >> 64 != (v69 * v42) >> 63)
  {
    goto LABEL_40;
  }

  if (v60 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v60)
  {
    v61 = sub_26607FB38();
    *(v61 + 16) = v60;
    bzero((v61 + 32), 4 * v60);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

  *(v3 + 56) = v61;
  if ((v59 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_42;
  }

  v62 = 4 * v59 * v42;
  if ((4 * v59 * v42) >> 64 != v62 >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v62 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v62)
  {
    v63 = sub_26607FB38();
    *(v63 + 16) = v62;
    bzero((v63 + 32), 4 * v59 * v42);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  v64 = v71;
  sub_266078730(v71, v35);
  sub_266078730(v64, v35);

  *(v3 + 64) = v63;
}

uint64_t sub_26607DBD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a3;
  v20 = *a3;
  swift_beginAccess();
  v10 = sub_26607DD20(a1, a2, v4 + 64, &v20);
  result = swift_endAccess();
  if (!v5)
  {
    if (v10 <= 14)
    {
      result = sub_26607EE08((*(v4 + 64) + 32), (*(v4 + 64) + 32 + v10));
      v16 = v17 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = sub_26607F9E8();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      if (v10 >= 0x7FFFFFFF)
      {

        v18 = sub_26607F9A8();
        sub_26607FA48();
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = v10;

        result = v19;
        v16 = v18 | 0x8000000000000000;
      }

      else
      {
        v15 = sub_26607F9A8();
        result = v10 << 32;
        v16 = v15 | 0x4000000000000000;
      }
    }

    *a4 = result;
    a4[1] = v16;
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_26607DD20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58[3] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v10 = *(v4 + 32);
  v9 = *(v4 + 40);
  v11 = *(v4 + 52);
  v12 = *(v4 + 49);
  swift_beginAccess();
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v14 = v14;
LABEL_10:
  v18 = v10 * v9;
  if ((v10 * v9) >> 64 != (v10 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_52;
  }

  v19 = qword_266082028[v12];
  if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v14 != v18 * v19)
  {
    type metadata accessor for SCPError(0);
    a3 = v21;
    sub_26607A5AC(&qword_280059E68);
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_42;
  }

  v53 = v8;
  if (v13 <= 1)
  {
    if (!v13)
    {
      v57[0] = a1;
      LOWORD(v57[1]) = a2;
      BYTE2(v57[1]) = BYTE2(a2);
      BYTE3(v57[1]) = BYTE3(a2);
      BYTE4(v57[1]) = BYTE4(a2);
      BYTE5(v57[1]) = BYTE5(a2);
      v20 = v57 + BYTE6(a2);
      goto LABEL_41;
    }

    v52 = a3;
    v31 = a1;
    a3 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v25 = sub_26607F9B8();
      if (!v25)
      {
LABEL_32:
        v33 = sub_26607F9C8();
        if (v33 >= a3)
        {
          v34 = a3;
        }

        else
        {
          v34 = v33;
        }

        v35 = v34 + v25;
        if (v25)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_38;
      }

      v32 = sub_26607F9D8();
      if (!__OFSUB__(v31, v32))
      {
        v25 += v31 - v32;
        goto LABEL_32;
      }

LABEL_57:
      __break(1u);
    }

    goto LABEL_54;
  }

  if (v13 == 2)
  {
    v52 = a3;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    v25 = sub_26607F9B8();
    if (v25)
    {
      v26 = sub_26607F9D8();
      if (__OFSUB__(v23, v26))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v25 += v23 - v26;
    }

    v17 = __OFSUB__(v24, v23);
    a3 = v24 - v23;
    if (!v17)
    {
      v27 = sub_26607F9C8();
      if (v27 >= a3)
      {
        v28 = a3;
      }

      else
      {
        v28 = v27;
      }

      v29 = v28 + v25;
      if (v25)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

LABEL_38:
      sub_26607E3A4(v25, v30, v12, (v4 + 56), v10, v9, v11);
      if (!v54)
      {
        a3 = v52;
        goto LABEL_44;
      }

LABEL_42:
      swift_endAccess();
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  memset(v57, 0, 14);
  v20 = v57;
LABEL_41:
  sub_26607E3A4(v57, v20, v12, (v4 + 56), v10, v9, v11);
  if (v54)
  {
    goto LABEL_42;
  }

LABEL_44:
  swift_endAccess();
  v55 = v53;
  v56 = 0;
  v38 = *(v4 + 16);
  v39 = *a3;
  v40 = *(*a3 + 16);
  v41 = *(v4 + 56);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_26607C358(0, v40, 0, v39);
  }

  *a3 = v39;
  a3 = [v38 encodeFrameInternal:v41 + 32 outputEncodedBuffer:v39 + 32 outputBufferLength:v40 type:&v55 encodeError:&v56];

  if (a3 < 1 || v56)
  {
    v42 = sub_26607FAA8();
    v43 = sub_26607FB68();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58[0] = v45;
      *v44 = 136315138;
      swift_beginAccess();
      v46 = sub_26607B8D8(v56);
      v48 = sub_26607C5D4(v46, v47, v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_26606F000, v42, v43, "Cannot encode inputs: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x2667789A0](v45, -1, -1);
      MEMORY[0x2667789A0](v44, -1, -1);
    }

    swift_beginAccess();
    v49 = v56;
    type metadata accessor for SCPError(0);
    a3 = v50;
    sub_26607A5AC(&qword_280059E68);
    swift_allocError();
    *v51 = v49;
    swift_willThrow();
  }

LABEL_43:
  v36 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t SignalEncoder.deinit()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  sub_266078730(*(v0 + 72), *(v0 + 80));
  v3 = OBJC_IVAR____TtC17SignalCompression13SignalEncoder_logger;
  v4 = sub_26607FAC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SignalEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  sub_266078730(*(v0 + 72), *(v0 + 80));
  v3 = OBJC_IVAR____TtC17SignalCompression13SignalEncoder_logger;
  v4 = sub_26607FAC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_26607E3A4(uint64_t result, uint64_t a2, char a3, char **a4, unint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v8) = a7;
  i = a5;
  v12 = result;
  if (!a3)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    if (!a5)
    {
      return result;
    }

    if (a6 < 0)
    {
      goto LABEL_115;
    }

    v7 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_26607CB90(v7);
    }

    v29 = 0;
    v30 = 0;
    v31 = v8;
    v32 = 268440000.0 / v8;
    while (1)
    {
      if (v30 >= i)
      {
        goto LABEL_106;
      }

      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_107;
      }

      if ((v30 * a6) >> 64 != (v30 * a6) >> 63)
      {
        goto LABEL_110;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v7;
      if ((result & 1) == 0)
      {
        result = sub_26607CB90(v7);
        v7 = result;
      }

      *a4 = v7;
      v34 = a6;
      i = v29;
      if (a6)
      {
        break;
      }

LABEL_41:
      v29 += a6;
      v30 = v33;
      i = a5;
      if (v33 == a5)
      {
        return result;
      }
    }

    while (1)
    {
      v35 = *(v12 + 4 * i);
      if ((~LODWORD(v35) & 0x7F800000) == 0 && (LODWORD(v35) & 0x7FFFFF) != 0)
      {
LABEL_68:
        type metadata accessor for SCPError(0);
        sub_26607A5AC(&qword_280059E68);
        swift_allocError();
        *v38 = 3;
        return swift_willThrow();
      }

      if (v32 >= v35)
      {
        if (v35 >= -v32)
        {
          v37 = roundf(v35 * v31);
          if ((LODWORD(v37) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            goto LABEL_99;
          }

          if (v37 <= -2147500000.0)
          {
            goto LABEL_101;
          }

          if (v37 >= 2147500000.0)
          {
            goto LABEL_103;
          }

          LODWORD(v8) = v37;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v7;
          if ((result & 1) == 0)
          {
LABEL_61:
            result = sub_26607CB90(v7);
            v7 = result;
            *a4 = result;
            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_93;
            }

            goto LABEL_56;
          }
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v7;
          LODWORD(v8) = -268435453;
          if ((result & 1) == 0)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v7;
        LODWORD(v8) = 268435453;
        if ((result & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_93;
      }

LABEL_56:
      if (i >= *(v7 + 2))
      {
        goto LABEL_94;
      }

      *&v7[4 * i + 32] = v8;
      v7 = *a4;
      ++i;
      if (!--v34)
      {
        goto LABEL_41;
      }
    }
  }

  if (a3 == 1)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      goto LABEL_111;
    }

    if (a5)
    {
      if (a6 < 0)
      {
        goto LABEL_114;
      }

      v7 = *a4;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v7;
      if ((v13 & 1) == 0)
      {
        goto LABEL_117;
      }

      while (1)
      {
        v14 = 0;
        v15 = 0;
        v16 = v8;
        _S0 = 268440000.0 / v8;
        __asm { FCVT            H9, S0 }

        while (v15 < i)
        {
          v22 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_108;
          }

          if ((v15 * a6) >> 64 != (v15 * a6) >> 63)
          {
            goto LABEL_109;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v7;
          if ((result & 1) == 0)
          {
            result = sub_26607CB90(v7);
            v7 = result;
          }

          *a4 = v7;
          v24 = a6;
          i = v14;
          while (v24)
          {
            LOWORD(_S0) = *(v12 + 2 * i);
            if ((~_S0 & 0x7C00) == 0 && (*(v12 + 2 * i) & 0x3FF) != 0)
            {
              goto LABEL_68;
            }

            if (*&_S0 <= _H9)
            {
              if (*&_S0 >= -_H9)
              {
                __asm { FCVT            S0, H0 }

                v27 = roundf(v16 * _S0);
                if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                {
                  goto LABEL_100;
                }

                if (v27 <= -2147500000.0)
                {
                  goto LABEL_102;
                }

                if (v27 >= 2147500000.0)
                {
                  goto LABEL_104;
                }

                LODWORD(v8) = v27;
                result = swift_isUniquelyReferenced_nonNull_native();
                *a4 = v7;
                if ((result & 1) == 0)
                {
LABEL_28:
                  result = sub_26607CB90(v7);
                  v7 = result;
                  *a4 = result;
                  if ((v14 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_23;
                }
              }

              else
              {
                result = swift_isUniquelyReferenced_nonNull_native();
                *a4 = v7;
                LODWORD(v8) = -268435453;
                if ((result & 1) == 0)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              *a4 = v7;
              LODWORD(v8) = 268435453;
              if ((result & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_92;
            }

LABEL_23:
            if (i >= *(v7 + 2))
            {
              goto LABEL_95;
            }

            *&v7[4 * i + 32] = v8;
            v7 = *a4;
            ++i;
            --v24;
          }

          v14 += a6;
          v15 = v22;
          i = a5;
          if (v22 == a5)
          {
            return result;
          }
        }

LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v7 = sub_26607CB90(v7);
      }
    }
  }

  else
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      goto LABEL_113;
    }

    if (a5)
    {
      if (a6 < 0)
      {
        goto LABEL_116;
      }

      v7 = *a4;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v7;
      if ((v39 & 1) == 0)
      {
        v7 = sub_26607CB90(v7);
      }

      v40 = 0;
      v41 = 0;
      while (1)
      {
        if (v41 >= i)
        {
          goto LABEL_96;
        }

        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if ((v41 * a6) >> 64 != (v41 * a6) >> 63)
        {
          goto LABEL_98;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v7;
        if ((result & 1) == 0)
        {
          result = sub_26607CB90(v7);
          v7 = result;
        }

        *a4 = v7;
        v8 = a6;
        for (i = v40; v8; --v8)
        {
          v43 = *(v12 + i);
          result = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v7;
          if (result)
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_90;
            }
          }

          else
          {
            result = sub_26607CB90(v7);
            v7 = result;
            *a4 = result;
            if ((v40 & 0x8000000000000000) != 0)
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }
          }

          if (i >= *(v7 + 2))
          {
            goto LABEL_91;
          }

          *&v7[4 * i + 32] = v43;
          v7 = *a4;
          ++i;
        }

        v40 += a6;
        v41 = v42;
        i = a5;
        if (v42 == a5)
        {
          return result;
        }
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }
  }

  return result;
}