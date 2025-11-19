void sub_1B420C5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  a19 = v27 - 128;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void CRCHNetwork::storeAllLMContextDFSR(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v57 = *(a2[8] + 32);
  v9 = 0x6DB6DB6DB6DB6DB7 * ((a2[6] - a2[5]) >> 3);
  v11 = *a3;
  v10 = a3[1];
  v12 = v10 - *a3;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v9 >= v13;
  v15 = v9 - v13;
  if (v9 <= v13)
  {
    v20 = *(a2[8] + 32);
    if (!v14)
    {
      v21 = v11 + 0x4924924924924928 * ((a2[6] - a2[5]) >> 3);
      if (v10 != v21)
      {
        do
        {
          v22 = v10 - 24;
          std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(v10 - 16));
          v10 = v22;
        }

        while (v22 != v21);
      }

      a3[1] = v21;
    }
  }

  else
  {
    v16 = a3[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v10) >> 3) < v15)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v11) >> 3);
        v18 = 2 * v17;
        if (2 * v17 <= v9)
        {
          v18 = 0x6DB6DB6DB6DB6DB7 * ((a2[6] - a2[5]) >> 3);
        }

        if (v17 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v18;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<unsigned long long,unsigned long>>>(v19);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v23 = v10 + 24 * v15;
    v24 = 0x4924924924924928 * ((a2[6] - a2[5]) >> 3) - 8 * (v12 >> 3);
    v25 = (v10 + 8);
    do
    {
      *v25 = 0;
      v25[1] = 0;
      *(v25 - 1) = v25;
      v25 += 3;
      v24 -= 24;
    }

    while (v24);
    v20 = v57;
    a3[1] = v23;
  }

  v69 = a7;
  v70 = 0uLL;
  if (a7 >= 2)
  {
    v26 = a7 - 1;
    do
    {
      CRCHLMHistory::push(&v69, 0);
      --v26;
    }

    while (v26);
    a7 = v69;
  }

  if (a7 == 2)
  {
    v30 = v20 & 0xFFFFF | ((DWORD1(v70) & 0xFFFFFLL) << 20);
  }

  else if (a7 == 3)
  {
    v27 = vand_s8(*(&v70 + 4), 0xF0000000FLL);
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    v29 = vshlq_u64(v28, xmmword_1B42AF6B0);
    v30 = v29.i64[0] | v20 & 0xFFFFF | v29.i64[1];
  }

  else
  {
    v30 = 0;
  }

  v31 = a3;
  v32 = *a3 + 24 * v20;
  v33 = *(v32 + 8);
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = v32 + 8;
  do
  {
    v35 = *(v33 + 32);
    v14 = v35 >= v30;
    v36 = v35 < v30;
    if (v14)
    {
      v34 = v33;
    }

    v33 = *(v33 + 8 * v36);
  }

  while (v33);
  if (v34 != v32 + 8 && v30 >= *(v34 + 32))
  {
    v37 = 0;
  }

  else
  {
LABEL_34:
    v64 = v30;
    v65 = 0;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v32, v30);
    v37 = 1;
  }

  v38 = a2[5];
  if (*(v38 + 56 * v20 + 8))
  {
    v39 = 0;
    v40 = v20 & 0xFFFFF;
    do
    {
      v55 = v39;
      NetworkEdge::NetworkEdge(&v64, *(a2[14] + 8 * *(v38 + 56 * v20 + 24) + 8 * v39));
      v41 = v64;
      v42 = a2[5];
      if (!*(v42 + 56 * v64 + 8))
      {
        goto LABEL_47;
      }

      v43 = 0;
      do
      {
        NetworkEdge::NetworkEdge(&v59, *(a2[14] + 8 * *(v42 + 56 * v41 + 24) + 8 * v43));
        LODWORD(v58[0]) = 2;
        *(v58 + 4) = 0uLL;
        CRCHLMHistory::push(v58, v61);
        CRCHLMHistory::push(v58, v66);
        if (LODWORD(v58[0]) == 2)
        {
          v44 = v40 & 0xFFFFFF00000FFFFFLL | ((v58[1] & 0xFFFFFLL) << 20);
        }

        else
        {
          v44 = 0;
          if (LODWORD(v58[0]) == 3)
          {
            v45 = vand_s8(v58[1], 0xF0000000FLL);
            v46.i64[0] = v45.u32[0];
            v46.i64[1] = v45.u32[1];
            v47 = vshlq_u64(v46, xmmword_1B42AF6B0);
            v44 = vorrq_s8(vdupq_laneq_s64(v47, 1), v47).u64[0] | v40;
          }
        }

        v48 = std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(*v31 + 24 * v57, v44);
        if (__p)
        {
          v63 = __p;
          operator delete(__p);
        }

        v37 += v48 & 1;
        ++v43;
        v42 = a2[5];
        v49 = *(v42 + 56 * v41 + 8);
        v31 = a3;
      }

      while (v43 < v49);
      v20 = v57;
      if (!v49)
      {
LABEL_47:
        v59 = 2;
        v60 = 0uLL;
        CRCHLMHistory::push(&v59, 0);
        CRCHLMHistory::push(&v59, v66);
        if (v59 == 2)
        {
          v50 = v40 & 0xFFFFFF00000FFFFFLL | ((DWORD1(v60) & 0xFFFFFLL) << 20);
        }

        else
        {
          v50 = 0;
          if (v59 == 3)
          {
            v51 = vand_s8(*(&v60 + 4), 0xF0000000FLL);
            v52.i64[0] = v51.u32[0];
            v52.i64[1] = v51.u32[1];
            v53 = vshlq_u64(v52, xmmword_1B42AF6B0);
            v50 = vorrq_s8(vdupq_laneq_s64(v53, 1), v53).u64[0] | v40;
          }
        }

        v54 = *v31 + 24 * v20;
        v58[0] = v50;
        LODWORD(v58[1]) = v37;
        v37 += std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v54, v50) & 1;
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      v39 = v55 + 1;
      v38 = a2[5];
    }

    while ((v55 + 1) < *(v38 + 56 * v20 + 8));
  }
}

void sub_1B420CB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRCHNetwork::getEntryFromOldToNew(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2 + 24 * a3;
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    return -1;
  }

  v8 = v5;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a4;
    v11 = v9 < a4;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != v5 && *(v8 + 32) <= a4)
  {
    return *(v8 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t CRCHNetwork::rescoreWithCharacterLM(uint64_t result, uint64_t a2, void *a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(result + 88);
  if (*(result + 96) != v4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*a3 + 8 * *(v4 + v7));
      if ((v9 & 0xFFFFF) != 0)
      {
        CRCHNetwork::getSymbol(&__p, v6, v9 & 0xFFFFF);
        v10 = sh2i(&__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = 9218;
      }

      v11 = v9 & 0xFFFFF00000;
      if ((v9 & 0xFFFFF00000) != 0)
      {
        CRCHNetwork::getSymbol(&__p, v6, (v9 >> 20) & 0xFFFFF);
        v12 = sh2i(&__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v12 = 9218;
      }

      CRCHNetwork::getSymbol(&__p, v6, *(v4 + v7 + 24));
      sh2i(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (a4 == 3)
      {
        __p.__r_.__value_.__r.__words[0] = __PAIR64__(v12, v10);
      }

      else
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = v10;
      }

      result = LMLanguageModelConditionalProbability();
      v14 = v13 / 20.0;
      if (v11)
      {
        v15 = 2.0;
      }

      else
      {
        v15 = 0.8;
      }

      *(v4 + v7 + 32) = 1.0 - *(v4 + v7 + 32) + v15 * v14 + 0.0;
      ++v8;
      v4 = *(v6 + 88);
      v7 += 80;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 96) - v4) >> 4));
  }

  return result;
}

uint64_t **CRCHNetwork::makeFinalNodeTheLastNode(CRCHNetwork *this)
{
  v3 = *(this + 8);
  result = (this + 64);
  v4 = *(result - 3);
  v5 = *(v3 + 32);
  v6 = 0x6DB6DB6DB6DB6DB7 * ((*(result - 2) - v4) >> 3) - 1;
  if (v5 != v6)
  {
    v7 = *(this + 11);
    v8 = *(this + 12) - v7;
    if (v8)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v10 = (v7 + 8);
      do
      {
        v11 = *(v10 - 1);
        v12 = v6;
        if (v11 == v5 || (v12 = v5, v11 == v6))
        {
          *(v10 - 1) = v12;
        }

        v13 = v6;
        if (*v10 == v5 || (v13 = v5, *v10 == v6))
        {
          *v10 = v13;
        }

        v10 += 10;
        --v9;
      }

      while (v9);
    }

    v14 = 56 * v5;
    v15 = (v4 + 56 * v5);
    v16 = (v4 + 56 * v6);
    v17 = *v15;
    v18 = v15[1];
    v20 = v16[1];
    v19 = v16[2];
    v21 = *v16;
    *(v15 + 48) = *(v16 + 48);
    v15[1] = v20;
    v15[2] = v19;
    *v15 = v21;
    v22 = (*(this + 5) + 56 * v6);
    *v22 = v17;
    v22[1] = v18;
    std::__tree<unsigned long>::__erase_unique<unsigned long>(result, v5);
    *(*(this + 5) + v14 + 48) = 0;

    return CRCHNetwork::setFinal(this, v6);
  }

  return result;
}

void CRCHNetwork::unionNetwork(CRCHNetwork *this, const CRCHNetwork *a2, const CRCHNetwork *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 5);
  v6 = *(a2 + 6);
  v9 = *(a3 + 5);
  v8 = *(a3 + 6);
  std::set<unsigned long>::set[abi:ne200100](v36, a2 + 64);
  std::set<unsigned long>::set[abi:ne200100](v35, a3 + 64);
  v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3);
  std::vector<CRCHNetworkNode>::resize(this + 5, v10 + 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 3) - 2);
  CRCHSymbolMap::operator=(this + 136, a2 + 17);
  v11 = *(a2 + 11);
  if (*(a2 + 12) != v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      std::vector<NetworkEdge>::push_back[abi:ne200100](this + 88, (v11 + 80 * v12));
      v12 = v13;
      v11 = *(a2 + 11);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 12) - v11) >> 4) > v13++);
  }

  v15 = *(a3 + 11);
  if (*(a3 + 12) != v15)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      NetworkEdge::NetworkEdge(&v29, (v15 + v16));
      v18 = v29;
      v19 = *(v35[0] + 32);
      if (v29 == v19)
      {
        v29 = *(v36[0] + 32);
        v19 = v18;
      }

      else if (v29 != *(a3 + 4))
      {
        v20 = std::set<unsigned long>::set[abi:ne200100](&v37, a3 + 64);
        v21 = *(v37.__r_.__value_.__r.__words[0] + 32);
        std::__tree<CRCHuint128>::destroy(v20, v37.__r_.__value_.__l.__size_);
        if (v18 > v21)
        {
          v22 = -2;
        }

        else
        {
          v22 = -1;
        }

        v29 += v22 + v10;
        v19 = *(v35[0] + 32);
      }

      v23 = v30;
      if (v30 == v19)
      {
        break;
      }

      if (v30 != *(a3 + 4))
      {
        v25 = std::set<unsigned long>::set[abi:ne200100](&v37, a3 + 64);
        v26 = *(v37.__r_.__value_.__r.__words[0] + 32);
        std::__tree<CRCHuint128>::destroy(v25, v37.__r_.__value_.__l.__size_);
        if (v23 > v26)
        {
          v27 = -2;
        }

        else
        {
          v27 = -1;
        }

        v24 = v27 + v10 + v30;
        goto LABEL_20;
      }

LABEL_21:
      snprintf(__str, 0x13uLL, "0x%zx", v31);
      std::string::basic_string[abi:ne200100]<0>(&v37, __str);
      CRCHSymbolMap::store(this + 136, &v37.__r_.__value_.__l.__data_);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      CRCHNetwork::getSymbol(&v37, a3, v32);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = v37;
      }

      v32 = CRCHSymbolMap::store(this + 136, &v28.__r_.__value_.__l.__data_);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      std::vector<NetworkEdge>::push_back[abi:ne200100](this + 88, &v29);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      ++v17;
      v15 = *(a3 + 11);
      v16 += 80;
      if (v17 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 12) - v15) >> 4))
      {
        goto LABEL_33;
      }
    }

    v24 = *(v36[0] + 32);
LABEL_20:
    v30 = v24;
    goto LABEL_21;
  }

LABEL_33:
  CRCHNetwork::setFinal(this, *(v36[0] + 32));
  CRCHNetwork::prepareNetwork(this);
  std::__tree<CRCHuint128>::destroy(v35, v35[1]);
  std::__tree<CRCHuint128>::destroy(v36, v36[1]);
}

void sub_1B420D274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, char a31, void *a32)
{
  std::__tree<CRCHuint128>::destroy(&a28, a29);
  std::__tree<CRCHuint128>::destroy(&a31, a32);
  _Unwind_Resume(a1);
}

uint64_t CRCHNetwork::guaranteeThatEdgesAreNonNegative(CRCHNetwork *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12) - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 4);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 32);
    v5 = 1;
    do
    {
      if (*v4 < 0.000000999999997)
      {
        v5 = 0;
        *v4 = 0.000000999999997;
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void CRCHNetwork::convertAllEdgesToScores(CRCHNetwork *this)
{
  v1 = *(this + 11);
  v2 = *(this + 12) - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 4);
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = (v1 + 32);
    do
    {
      v6 = 2.22044605e-16;
      if (*v5 >= 2.22044605e-16)
      {
        v6 = *v5;
        if (*v5 > 1.0)
        {
          v6 = 1.0;
        }
      }

      *v5 = -log10(v6);
      v5 += 10;
      --v4;
    }

    while (v4);
  }
}

void CRCHNetwork::applyInsertionPenalty(CRCHNetwork *this, float a2)
{
  v6 = *(this + 11);
  if (*(this + 12) != v6)
  {
    v16 = v5;
    v17 = v4;
    v18 = v2;
    v19 = v3;
    v8 = 0;
    v9 = a2;
    do
    {
      CRCHNetwork::getSymbol(&__p, this, *(v6 + 80 * v8 + 24));
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v12 = 0;
        do
        {
          v13 = p_p->__r_.__value_.__s.__data_[0];
          p_p = (p_p + 1);
          if (v13 == 95)
          {
            ++v12;
          }

          --size;
        }

        while (size);
        v14 = (v12 + 1);
      }

      else
      {
        v14 = 1.0;
      }

      v6 = *(this + 11);
      *(v6 + 80 * v8 + 32) = fmax(v14 * v9 + *(v6 + 80 * v8 + 32), 0.000001);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v6 = *(this + 11);
      }

      ++v8;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 12) - v6) >> 4));
  }
}

uint64_t CRCHNetwork::applyDiscount(uint64_t this, float a2)
{
  v2 = *(this + 40);
  v3 = *v2;
  if (*v2)
  {
    v4 = a2;
    v5 = (*(this + 88) + 80 * v2[2] + 32);
    do
    {
      *v5 = fmax(*v5 + v4, 0.000001);
      v5 += 10;
      --v3;
    }

    while (v3);
  }

  return this;
}

void CRCHNetwork::composeTrimAndSimplify(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, CRCHNetwork *a6, int a7)
{
  CRCHNetwork::CRCHNetwork(v14);
  CRCHNetwork::compose(v14, a2, a3, a4, a5);
  CRCHNetwork::CRCHNetwork(v13);
  CRCHNetwork::trimDeadEdges(v14, v13);
  CRCHNetwork::removeEpsOutputEdges(v13, a6, a7);
}

void CRCHNetwork::composeTrimAndSimplify(CRCHNetwork *this, const CRCHNetwork *a2, CRCHNetwork *a3, CRCHNetwork *a4, int a5, char a6)
{
  CRCHNetwork::CRCHNetwork(v12);
  CRCHNetwork::compose(v12, a2, a3, a6);
  CRCHNetwork::CRCHNetwork(v11);
  CRCHNetwork::trimDeadEdges(v12, v11);
  CRCHNetwork::removeEpsOutputEdges(v11, a4, a5);
}

void sub_1B420E090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *a27, uint64_t a28, char a29, void *a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  std::__tree<CRCHuint128>::destroy(&a26, a27);
  std::__tree<CRCHuint128>::destroy(&a29, a30);
  _Unwind_Resume(a1);
}

void CRCHNetwork::scoreCandidateLatticeWithWordLM(int a1, uint64_t a2, int a3, int a4, void *a5, void *a6, int a7, int a8, uint64_t a9, std::vector<int> *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  CRCHNetwork::CRCHNetwork(v20);
  CRCHNetwork::CRCHNetwork(v19);
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  CRCHNetwork::composeTrimAndSimplify(v16, a2, a5, a6, &v17, v20, 0);
}

void sub_1B420EFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<CRCHuint128>::destroy(v66 + 224, a50);
  std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(v66 + 200, a47);
  CRCHSymbolMap::~CRCHSymbolMap((v66 + 136));
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  *(v67 - 112) = &a32;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100]((v67 - 112));
  std::__tree<CRCHuint128>::destroy(&a29, a30);
  if (a26)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a60)
  {
    operator delete(a60);
  }

  std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(a64);
  CRCHNetwork::~CRCHNetwork(&a66);
  CRCHNetwork::~CRCHNetwork(&STACK[0x2B8]);
  _Unwind_Resume(a1);
}

void CRCHNetwork::buildWordIDMap(uint64_t a1, uint64_t a2, std::vector<int> *this)
{
  std::vector<int>::resize(this, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 96) - *(a1 + 88)) >> 4));
  v6 = *(a1 + 88);
  if (*(a1 + 96) != v6)
  {
    v7 = 0;
    v8 = 24;
    do
    {
      CRCHNetwork::getSymbol(&__str, a1, *(v6 + v8));
      w2i32(&__str, &v14);
      __p = 0;
      v12 = 0;
      v13 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v14, v15, (v15 - v14) >> 2);
      v9 = isWordValid(a2, &__p);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      this->__begin_[v7] = v9;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v7;
      v6 = *(a1 + 88);
      v8 += 80;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 96) - v6) >> 4));
  }
}

void sub_1B420F1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

BOOL CRCHNetwork::pathsCoincide(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[8];
  v4 = a2[9] - v3;
  v5 = a3[8];
  if ((a3[9] - v5) >> 3 >= (v4 >> 3))
  {
    v6 = v4 >> 3;
  }

  else
  {
    v6 = (a3[9] - v5) >> 3;
  }

  if (!v6)
  {
    return 1;
  }

  if (*v3 != *v5)
  {
    return 0;
  }

  v7 = a2[11];
  v8 = a3[11];
  if (*v7 != *v8)
  {
    return 0;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (v6 == v9)
    {
      break;
    }

    if (v3[v9] != v5[v9])
    {
      break;
    }

    ++v9;
  }

  while (v7[v10] == v8[v10]);
  return v10 >= v6;
}

void CRCHNetwork::minPath(CRCHLatticePath **a1@<X1>, CRCHLatticePath *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 6));
  v9 = MinCompareEdgePaths;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,false>(v4, v5, &v9, v7, 1);
  v8 = *a1;

  CRCHLatticePath::CRCHLatticePath(a2, v8);
}

void CRCHNetwork::bestPath(CRCHNetwork *this)
{
  v1 = *(this + 6) - *(this + 5);
  if (v1)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * (v1 >> 3)) >> 59))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  operator new[]();
}

void sub_1B420F970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  CRCHLatticePath::~CRCHLatticePath(v19);
  if (a18)
  {
    MEMORY[0x1B8C73ED0](a18 - 16, 0x1020C805730B0C9);
  }

  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<unsigned long>::insert(void *a1, char *__src, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, a1[1] - __src);
    v20 = *a1;
    v21 = v16 + a1[1] - __src + 8;
    a1[1] = __src;
    v22 = (__src - v20);
    v23 = v16 - (__src - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || __src > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *__src = *&a3[v18];
  }
}

void sub_1B420FCB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CRCHNetwork::getTotalNumberOfStrokes(CRCHNetwork *this, unint64_t a2, unint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = a3;
  v6[1] = a2;
  v5[0] = 0;
  v5[1] = 0;
  v3[2] = 0;
  v4 = v5;
  v3[0] = v3;
  v3[1] = v3;
  *buf = v6;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v4, v6)[5] = 0;
  operator new();
}

void sub_1B421001C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  std::__list_imp<unsigned long>::clear(&a11);
  std::__tree<CRCHuint128>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

void CRCHNetwork::kBestPaths(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v12[2] = a2;
  v12[3] = a1;
  a4;
  a5;
  a9;
  a10;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[2] = 0;
  v11[3] = v12;
  v11[0] = v11;
  v11[1] = v11;
  operator new();
}

void sub_1B42112E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, uint64_t a32, void *__p)
{
  if (v33)
  {
    operator delete(v33);
  }

  std::__list_imp<unsigned long>::clear(&STACK[0x2C0]);
  if (STACK[0x2F0])
  {
    MEMORY[0x1B8C73ED0](STACK[0x2F0] - 16, 0x1020C805730B0C9);
  }

  std::__list_imp<unsigned long>::clear((v34 - 224));
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(v34 - 192));
  __p = a21;
  std::vector<CRCHLatticePath>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B42113F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  MEMORY[0x1B8C73EF0](v33, 0x10F0C4093C2D19BLL);
  if (a33)
  {
    JUMPOUT(0x1B42114ECLL);
  }

  JUMPOUT(0x1B42114F0);
}

void sub_1B4211418(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_1B4211454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  std::__list_imp<unsigned long>::clear(&STACK[0x2C0]);
  if (STACK[0x2F0])
  {
    MEMORY[0x1B8C73ED0](STACK[0x2F0] - 16, 0x1020C805730B0C9);
  }

  std::__list_imp<unsigned long>::clear((v34 - 224));
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(v34 - 192));
  __p = a21;
  std::vector<CRCHLatticePath>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B4211484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (v34)
  {
    v36 = (v33 - 448);
    do
    {
      CRCHLatticePath::~CRCHLatticePath(v36);
      v36 = (v37 - 448);
      v34 += 448;
    }

    while (v34);
  }

  std::__split_buffer<CRCHLatticePath>::~__split_buffer(v35 - 160);
  CRCHLatticePath::~CRCHLatticePath(&a33);
  JUMPOUT(0x1B42114F0);
}

uint64_t insertPathInHeap(void *a1, uint64_t a2, double a3)
{
  if (a1[2] != a1[1])
  {

    return CRCHFixedHeap<double,LatticePathPtr>::insert(a1, a2, a3);
  }

  v4 = a1[4];
  if (v4)
  {
    v5 = *(a1[3] + 16 * v4 + 8);
    result = CRCHFixedHeap<double,LatticePathPtr>::insert(a1, a2, a3);
    if (result)
    {
      if (v5)
      {
        v7 = v5;
        goto LABEL_12;
      }

      return result;
    }
  }

  else
  {
    result = CRCHFixedHeap<double,LatticePathPtr>::insert(a1, a2, a3);
    if (result)
    {
      return result;
    }
  }

  if (a2)
  {
    v7 = a2;
LABEL_12:
    CRCHLatticePath::~CRCHLatticePath(v7);

    JUMPOUT(0x1B8C73EF0);
  }

  return result;
}

uint64_t std::function<void ()(std::vector<unsigned long> const&,double,double,double,double,double,double)>::operator()(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v13 = a4;
  v14 = a3;
  v11 = a6;
  v12 = a5;
  v9 = a8;
  v10 = a7;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, a2, &v14, &v13, &v12, &v11, &v10, &v9);
}

void *CRCHLatticePath::getEdgePathInNetwork(void *this, void *a2)
{
  v2 = (a2[12] - a2[11]) >> 3;
  if (v2 < 2)
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  else
  {
    this = std::vector<unsigned long>::vector[abi:ne200100](this, v2 - 1);
    v4 = a2[8];
    v5 = ((a2[9] - v4) >> 3) - 1;
    if ((a2[9] - v4) >> 3 != 1)
    {
      v6 = *(a2[7] + 40);
      v7 = *this;
      v8 = (a2[11] + 8);
      do
      {
        v10 = *v4++;
        v9 = v10;
        v11 = *v8++;
        *v7++ = *(v6 + 56 * v9 + 16) + v11;
        --v5;
      }

      while (v5);
    }
  }

  return this;
}

void CRCHLatticePath::addEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, int a8, double a9, char a10)
{
  v66 = a3;
  v60 = a5;
  v61 = a6;
  v16 = a7;
  v17 = *(a1 + 56);
  v18 = *v17;
  v19 = log10(*(*v17 + 96));
  v20 = log10(*(v18 + 104));
  if (a10)
  {
    CRCHLatticePath::updateWordSegmentationScoreAtNode(a1, a2, 0);
  }

  v21 = v16[2](v16, a1);
  *(a1 + 112) = v21;
  if (v21 <= a9)
  {
    v22 = (*(*(a1 + 56) + 88) + 80 * *(*(*(a1 + 56) + 40) + 56 * a2 + 16) + 80 * v66);
    v65 = v22[1];
    std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 64), &v65);
    std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 88), &v66);
    v23 = *(a1 + 144);
    *(a1 + 144) = v23 + v61[2](v61, v22);
    *(a1 + 208) += v22[5];
    v24 = v16[2](v16, a1);
    *(a1 + 112) = v24;
    if (v24 <= a9)
    {
      v25 = v16[2](v16, a1);
      *(a1 + 112) = v25;
      if (v25 <= a9)
      {
        CRCHNetwork::getSymbol(&__p, *(a1 + 56), v22[3]);
        w2i32(&__p, &v63);
        v57 = v22;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v26 = (v64 - v63) >> 2;
        if (!a8)
        {
          v26 = 1;
        }

        v56 = v26;
        if (v26)
        {
          v27 = 0;
          v28 = 0.0;
          v29 = 0.0;
          while (1)
          {
            v30 = *(v63 + v27);
            v31 = [CRCHCharacterSetRules characterType:v30];
            v32 = CH_unicodeToNSString(v30);
            v33 = *(a1 + 232);
            v59 = v32;
            if (v33)
            {
              v34 = [CRCHPatternNetwork cursorByAdvancingWithString:v32 fromCursor:v33 inNetwork:v60];
              v35 = *(a1 + 232);
              *(a1 + 232) = v34;
            }

            v36 = (v31 & 7) == 0;
            v37 = *(a1 + 224);
            if (v37 && (v38 = LXCursorCreateByAdvancing(), CFRelease(v37), (*(a1 + 224) = v38) != 0))
            {
              v39 = *(a1 + 216);
              v40 = v39 == 0;
              v41 = v39 != 0;
              if (v40)
              {
                v28 = -v19;
              }

              v36 = (v31 & 7) == 0 && v41;
              v42 = 1;
            }

            else
            {
              v42 = 0;
            }

            if (!*(a1 + 232))
            {
              if (*(*a1 + 4 * *(a1 + 16) - 4) == 1)
              {
                v42 = 1;
              }

              if ((v42 & 1) == 0)
              {
                *(a1 + 192) = *(**(a1 + 56) + 64);
                v43 = *(a1 + 216);
                if (v43)
                {
                  CFRelease(v43);
                  *(a1 + 216) = 0;
                }
              }
            }

            v44 = v16[2](v16, a1);
            *(a1 + 112) = v44;
            if (v44 > a9)
            {
              goto LABEL_71;
            }

            v45 = *(a1 + 216);
            if (v45)
            {
              v46 = LXCursorCreateByAdvancing();
              CFRelease(v45);
              *(a1 + 216) = v46;
              if (v46)
              {
                LXCursorConditionalProbability();
                if (v47 < 0.0)
                {
                  v28 = -v47;
                }
              }

              else
              {
                v28 = -*(**(a1 + 56) + 64);
              }
            }

            if (v36)
            {
              v28 = -v20;
            }

            if ((v31 & 8) == 0)
            {
              v48 = *(a1 + 272);
              v49 = *(a1 + 16);
              v50 = *(a1 + 40);
              if (v48 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v48 = v49 - v50;
                *(a1 + 272) = v49 - v50;
              }

              *(a1 + 280) = v49 - (v50 + v48) + 1;
            }

            v51 = v28 > 0.0 || *(a1 + 216) || *(a1 + 224) ? *(a1 + 128) + v28 * v57[5] : *(**(a1 + 56) + 64) + *(a1 + 128);
            *(a1 + 128) = v51;
            v52 = v16[2](v16, a1);
            *(a1 + 112) = v52;
            if (v52 > a9)
            {
LABEL_71:

              goto LABEL_72;
            }

            if (a4)
            {
              break;
            }

LABEL_69:
            CRCHLatticePath::expandPathStringWithCharacter(a1, v30);

            if (v56 == ++v27)
            {
              goto LABEL_72;
            }
          }

          if (*(*(*(a1 + 56) + 40) + 56 * v57[1] + 48) != 1)
          {
            goto LABEL_56;
          }

          if (*(a1 + 216))
          {
            if ((v31 & 8) == 0)
            {
              goto LABEL_56;
            }
          }

          else if ((v31 & 8) == 0 || !*(a1 + 224))
          {
            goto LABEL_56;
          }

          if (!LXCursorIsRoot())
          {
            if (*(a1 + 216))
            {
              LXCursorTerminationProbability();
              if (fabs(v54) == INFINITY)
              {
                v29 = v20;
              }

              else
              {
                v29 = v54;
              }
            }

            if (*(a1 + 224))
            {
              v29 = v19;
            }

LABEL_68:
            *(a1 + 176) = *(a1 + 176) - v29 * v57[5];
            v55 = v16[2](v16, a1);
            *(a1 + 112) = v55;
            if (v55 > a9)
            {
              goto LABEL_71;
            }

            goto LABEL_69;
          }

LABEL_56:
          v29 = v20;
          if (!v36)
          {
            if (*(a1 + 216) || (v29 = v19, !*(a1 + 224)))
            {
              CRCharacterNormalizer::normalizedCharacter(v30);
              LMLanguageModelConditionalProbability();
              v29 = v53;
            }
          }

          goto LABEL_68;
        }

LABEL_72:
        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }
      }
    }
  }
}

void sub_1B4211C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CRCHLatticePath::addWordAtNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, int a8, char a9, char a10)
{
  v15 = a5;
  v16 = a6;
  v17 = *(a1 + 56);
  v18 = *v17;
  v19 = log10(*(*v17 + 72));
  v20.n128_f64[0] = log10(*(v18 + 80));
  if (a7)
  {
    v21 = v20.n128_f64[0];
    if (!*(a1 + 224))
    {
      goto LABEL_5;
    }

    if (LXCursorHasChildren())
    {
      if (!*(a1 + 224))
      {
LABEL_5:
        if (*(a1 + 216))
        {
          if (LXCursorHasEntries())
          {
            LXCursorTerminationProbability();
            v19 = v20.n128_f64[0];
          }

          else
          {
            v19 = v21;
          }
        }
      }
    }

    else
    {
      v19 = 0.0;
    }

    v20.n128_f64[0] = *(a1 + 128) - v19;
    *(a1 + 128) = v20.n128_u64[0];
  }

  if (a9)
  {
    v20.n128_f64[0] = CRCHLatticePath::updateWordSegmentationScoreAtNode(a1, a2, 1);
  }

  if (a10)
  {
    v22 = *(a1 + 232);
    v23 = [CRCHPatternNetwork isFinalCursor:v22 inNetwork:v15, v20.n128_f64[0]];
    v20.n128_u64[0] = 0;
    if (v22 != 0 && !v23)
    {
      v20.n128_u64[0] = *(**(a1 + 56) + 64);
    }

    v20.n128_f64[0] = v20.n128_f64[0] + *(a1 + 192);
    *(a1 + 192) = v20.n128_u64[0];
  }

  *(a1 + 112) = v16[2](v16, a1, v20);
  v36 = v15;
  v24 = *(a1 + 296);
  if (v24 == *(a1 + 288))
  {
    v25 = 0;
    v26 = *(a1 + 16) - *(a1 + 40);
    v28 = ((*(a1 + 72) - *(a1 + 64)) >> 3) - 1;
    v27 = 1;
  }

  else
  {
    v25 = *(v24 - 16) + *(v24 - 8) + 1;
    v26 = *(a1 + 16) - *(a1 + 40) - v25;
    v27 = *(*(a1 + 320) - 8) + *(*(a1 + 320) - 16);
    v28 = ((*(a1 + 72) - *(a1 + 64)) >> 3) - v27;
  }

  *&v41 = v25;
  *(&v41 + 1) = v26;
  *&v40 = v27;
  *(&v40 + 1) = v28;
  std::vector<CGPoint>::push_back[abi:ne200100](a1 + 288, &v41);
  std::vector<CGPoint>::push_back[abi:ne200100](a1 + 312, &v40);
  v39 = *(a1 + 144) / *(a1 + 208);
  std::vector<double>::push_back[abi:ne200100]((a1 + 336), &v39);
  v29 = *(a1 + 224);
  if (*(a1 + 216))
  {
    HasEntries = LXCursorHasEntries();
    v31 = HasEntries != 0;
    if (!HasEntries && v29)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v29)
    {
LABEL_25:
      v31 = LXCursorHasEntries() != 0;
      goto LABEL_27;
    }

    v31 = 0;
  }

LABEL_27:
  v38 = v31;
  v37 = *(a1 + 232) != 0;
  std::vector<BOOL>::push_back(a1 + 384, &v38);
  std::vector<BOOL>::push_back(a1 + 408, &v37);
  *(a1 + 168) = *(a1 + 168) + *(a1 + 176);
  *(a1 + 152) = *(a1 + 152) + *(a1 + 160);
  *(a1 + 120) = *(a1 + 120) + *(a1 + 128);
  *(a1 + 184) = *(a1 + 184) + *(a1 + 192);
  *(a1 + 136) = *(a1 + 136) + *(a1 + 144);
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0;
  *(a1 + 192) = 0;
  *(a1 + 144) = 0;
  *(a1 + 208) = 0;
  if (a8)
  {
    v32 = *(a1 + 216);
    if (v32)
    {
      CFRelease(v32);
      *(a1 + 216) = 0;
    }

    *(a1 + 216) = LXLexiconCreateRootCursor();
    v33 = *(a1 + 224);
    if (v33)
    {
      CFRelease(v33);
      *(a1 + 224) = 0;
    }

    *(a1 + 224) = LXLexiconCreateRootCursor();
    v34 = [CRCHPatternNetwork rootCursorForContentType:*(a1 + 240) inNetwork:v36];
    v35 = *(a1 + 232);
    *(a1 + 232) = v34;

    CRCHLatticePath::expandPathStringWithCharacter(a1, 32);
  }

  std::vector<double>::push_back[abi:ne200100]((a1 + 360), (a1 + 112));
}

void std::vector<CRCHLatticePath *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t CRCHNetwork::deserialize(CRCHNetwork *this, const char *__filename)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = fopen(__filename, "rb");
  fread(__ptr, 4uLL, 3uLL, v4);
  if (__ptr[0] <= 1u && __ptr[1] < 3u)
  {
    v19 = 0;
    fread(&v19 + 4, 4uLL, 1uLL, v4);
    v7 = SHIDWORD(v19);
    std::vector<NetworkEdge>::resize(this + 11, SHIDWORD(v19));
    v8 = *(this + 14);
    v9 = *(this + 15);
    v10 = (v9 - v8) >> 3;
    if (v7 <= v10)
    {
      if (v7 >= v10)
      {
        goto LABEL_22;
      }

      v16 = v8 + 8 * v7;
    }

    else
    {
      v11 = v7 - v10;
      v12 = *(this + 16);
      if (v11 > (v12 - v9) >> 3)
      {
        if ((v7 & 0x80000000) == 0)
        {
          v13 = v12 - v8;
          v14 = v13 >> 2;
          if (v13 >> 2 <= v7)
          {
            v14 = v7;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge const*>>(this + 112, v15);
        }

        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(this + 15), 8 * v11);
      v16 = v9 + 8 * v11;
    }

    *(this + 15) = v16;
LABEL_22:
    fread(&v19, 4uLL, 1uLL, v4);
    std::vector<CRCHNetworkNode>::resize(this + 5, v19);
    HIDWORD(v18) = 0;
    fread(&v18 + 4, 4uLL, 1uLL, v4);
    operator new[]();
  }

  v6 = CROSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = __filename;
    _os_log_impl(&dword_1B40D2000, v6, OS_LOG_TYPE_ERROR, "Unsupported Network Version %s", buf, 0xCu);
  }

  return fclose(v4);
}

void sub_1B4212744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRCHNetwork::serialize(CRCHNetwork *this, const char *__filename)
{
  v3 = fopen(__filename, "wb");
  fwrite(&NETWORK_BINARY_FILE_VERSION_MAJOR, 4uLL, 1uLL, v3);
  fwrite(&NETWORK_BINARY_FILE_VERSION_MINOR, 4uLL, 1uLL, v3);
  fwrite(&NETWORK_BINARY_FILE_VERSION_REVISON, 4uLL, 1uLL, v3);
  __ptr = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 12) - *(this + 11)) >> 4);
  fwrite(&__ptr, 4uLL, 1uLL, v3);
  __ptr = 0x6DB6DB6DB6DB6DB7 * ((*(this + 6) - *(this + 5)) >> 3);
  fwrite(&__ptr, 4uLL, 1uLL, v3);
  __ptr = *(this + 10);
  fwrite(&__ptr, 4uLL, 1uLL, v3);
  v4 = *(this + 8);
  if (v4 != (this + 72))
  {
    do
    {
      __ptr = *(v4 + 4);
      fwrite(&__ptr, 4uLL, 1uLL, v3);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (this + 72));
  }

  __ptr = *(this + 192);
  fwrite(&__ptr, 4uLL, 1uLL, v3);
  v8 = *(this + 11);
  if (*(this + 12) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v8 + v9);
      v33 = vuzp1q_s32(*v11, v11[1]);
      v34 = v11[2].i64[0];
      fwrite(&v33, 0x18uLL, 1uLL, v3);
      ++v10;
      v8 = *(this + 11);
      v12 = *(this + 12);
      v9 += 80;
    }

    while (v10 < 0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 4));
    if (v12 != v8)
    {
      v13 = 0;
      do
      {
        v33.i32[0] = (*(*(this + 14) + 8 * v13) - v8) / 0x50;
        fwrite(&v33, 4uLL, 1uLL, v3);
        ++v13;
        v8 = *(this + 11);
      }

      while (v13 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 12) - v8) >> 4));
    }
  }

  v14 = *(this + 5);
  if (*(this + 6) != v14)
  {
    v15 = 0;
    v16 = 48;
    do
    {
      v17 = (v14 + v16);
      fwrite((v14 + v16 - 48), 4uLL, 1uLL, v3);
      fwrite(v17 - 40, 4uLL, 1uLL, v3);
      fwrite(v17 - 32, 4uLL, 1uLL, v3);
      fwrite(v17 - 24, 4uLL, 1uLL, v3);
      v33.i16[0] = *v17;
      fwrite(&v33, 2uLL, 1uLL, v3);
      ++v15;
      v14 = *(this + 5);
      v16 += 56;
    }

    while (v15 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 6) - v14) >> 3));
  }

  __ptr = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - *(this + 18)) >> 3);
  fwrite(&__ptr, 4uLL, 1uLL, v3);
  v19 = *(this + 18);
  v18 = *(this + 19);
  v20 = v18 - v19;
  if (v18 == v19)
  {
    v21 = 0;
  }

  else
  {
    LODWORD(v21) = 0;
    v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
    if (v22 <= 1)
    {
      v22 = 1;
    }

    v23 = (v19 + 23);
    do
    {
      v24 = *v23;
      if (v24 < 0)
      {
        v24 = *(v23 - 15);
      }

      LODWORD(v21) = v21 + v24 + 1;
      v23 += 24;
      --v22;
    }

    while (v22);
    v21 = v21;
  }

  __ptr = v21;
  fwrite(&__ptr, 4uLL, 1uLL, v3);
  v25 = *(this + 18);
  if (*(this + 19) != v25)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = (v25 + v26);
      v29 = *(v28 + 23);
      if ((v29 & 0x8000000000000000) != 0)
      {
        v30 = *v28;
        v29 = v28[1];
      }

      else
      {
        v30 = v28;
      }

      fwrite(v30, v29, 1uLL, v3);
      v33.i8[0] = 0;
      fwrite(&v33, 1uLL, 1uLL, v3);
      ++v27;
      v25 = *(this + 18);
      v26 += 24;
    }

    while (v27 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v25) >> 3));
  }

  return fclose(v3);
}

BOOL std::less<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*a1, v2);
  }

  return a1;
}

void *std::set<unsigned long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *std::__list_imp<unsigned long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<unsigned long>::__erase_unique<unsigned long>(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

void *std::map<unsigned long,unsigned long>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = v2[4];
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (v5[4] < v3)
      {
LABEL_8:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = v4[4];
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void CRCHNetwork::CRCHNetwork(CRCHNetwork *this)
{
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  v2 = (this + 40);
  *(this + 9) = 0;
  *this = &latticePresets;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  CRCHSymbolMap::CRCHSymbolMap((this + 136));
  *(this + 26) = 0;
  *(this + 25) = this + 208;
  *(this + 192) = 0;
  *(this + 27) = 0;
  *(this + 29) = 0;
  *(this + 28) = this + 232;
  *(this + 30) = 0;
  v3 = *(this + 6);
  v4 = *(this + 7);
  if (v3 >= v4)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *v2) >> 3);
    v7 = v6 + 1;
    if ((v6 + 1) > 0x492492492492492)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRCHNetworkNode>>(v2, v9);
    }

    v10 = 56 * v6;
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    v5 = 56 * v6 + 56;
    v11 = *(this + 5);
    v12 = *(this + 6) - v11;
    v13 = (56 * v6 - v12);
    memcpy(v13, v11, v12);
    v14 = *(this + 5);
    *(this + 5) = v13;
    *(this + 6) = v5;
    *(this + 7) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    v5 = v3 + 56;
  }

  *(this + 6) = v5;
  *(*(this + 5) + 48) = 1;
}

void sub_1B4213594(_Unwind_Exception *a1, void **a2, ...)
{
  va_start(va, a2);
  v10 = v5;
  std::__tree<CRCHuint128>::destroy(v9, *v8);
  std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(v6, *v10);
  CRCHSymbolMap::~CRCHSymbolMap((v2 + 136));
  v12 = *(v2 + 112);
  if (v12)
  {
    *(v2 + 120) = v12;
    operator delete(v12);
  }

  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<CRCHuint128>::destroy(v4, *v7);
  v13 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v13;
    operator delete(v13);
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*a2);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CRCHNetworkNode>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t isWordValid(uint64_t a1, uint64_t *a2)
{
  LMLexiconGetRootCursor();
  v4 = *a2;
  v3 = a2[1];
  while (v4 != v3)
  {
    CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
    if (!CursorByAdvancingWithCharacters)
    {
      goto LABEL_8;
    }

    v4 += 4;
  }

  if (LMLexiconCursorHasEntries())
  {
    CursorByAdvancingWithCharacters = LMLexiconCursorFirstTokenID();
  }

  else
  {
    CursorByAdvancingWithCharacters = 0xFFFFFFFFLL;
  }

LABEL_8:
  LMLexiconResetCursors();
  return CursorByAdvancingWithCharacters;
}

uint64_t std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::destroy(*a1, v2);
  }

  return a1;
}

BOOL CRCHuint128::operator<(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = *a1 > *a2;
  }

  v3 = a1[2];
  v4 = a2[2];
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (!v5)
  {
    v6 = -1;
  }

  if (v2 == -1)
  {
    return 1;
  }

  if (v2)
  {
    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  v5 = v7 >= v8;
  v9 = v7 > v8;
  if (!v5)
  {
    v9 = -1;
  }

  if (v9 == -1)
  {
    return 1;
  }

  if (v9)
  {
    return 0;
  }

  if (v6 == -1)
  {
    return 1;
  }

  return !v6 && a1[3] < a2[3];
}

void CRCHLatticePath::CRCHLatticePath(CRCHLatticePath *this, const CRCHLatticePath *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 48) = *(a2 + 48);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = *(a2 + 12);
  *(this + 26) = *(a2 + 26);
  *(this + 216) = *(a2 + 216);
  v4 = *(a2 + 29);
  v5 = *(a2 + 60);
  *(this + 31) = 0;
  *(this + 29) = v4;
  *(this + 60) = v5;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(this + 248, *(a2 + 31), *(a2 + 32), (*(a2 + 32) - *(a2 + 31)) >> 3);
  *(this + 17) = *(a2 + 17);
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(this + 288, *(a2 + 36), *(a2 + 37), (*(a2 + 37) - *(a2 + 36)) >> 4);
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(this + 312, *(a2 + 39), *(a2 + 40), (*(a2 + 40) - *(a2 + 39)) >> 4);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 336, *(a2 + 42), *(a2 + 43), (*(a2 + 43) - *(a2 + 42)) >> 3);
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 360, *(a2 + 45), *(a2 + 46), (*(a2 + 46) - *(a2 + 45)) >> 3);
  std::vector<BOOL>::vector(this + 48, a2 + 384);
  std::vector<BOOL>::vector(this + 51, a2 + 408);
  *(this + 27) = xmmword_1B42AF6C0;
  if (*a2 && *(a2 + 1))
  {
    v6 = malloc_type_malloc(4 * *(this + 3), 0x100004052888210uLL);
    *this = v6;
    *(this + 17) = *(a2 + 17);
    memcpy(v6, *a2, 4 * *(this + 3));
    v7 = malloc_type_malloc(4 * *(this + 3), 0x100004052888210uLL);
    *(this + 1) = v7;
    memcpy(v7, *(a2 + 1), 4 * *(this + 3));
    v8 = *(this + 28);
    if (v8)
    {
      CFRetain(v8);
    }

    v9 = *(this + 27);
    if (v9)
    {
      CFRetain(v9);
    }
  }
}

void sub_1B4213A30(_Unwind_Exception *a1)
{
  v5 = *(v1 + 384);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v1 + 360);
  if (v6)
  {
    *(v1 + 368) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 336);
  if (v7)
  {
    *(v1 + 344) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 312);
  if (v8)
  {
    *(v1 + 320) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 288);
  if (v9)
  {
    *(v1 + 296) = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    *(v1 + 256) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 88);
  if (v11)
  {
    *(v1 + 96) = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t CRCHLatticePath::CRCHLatticePath(uint64_t a1, uint64_t a2, const void *a3, const void *a4, void *a5, int a6)
{
  v27 = a5;
  *(a1 + 248) = 0;
  *(a1 + 16) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 232) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 240) = a6;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = xmmword_1B42AF6C0;
  v13 = *(a2 + 248);
  v12 = *(a2 + 256);
  *(a1 + 32) = v12;
  *(a1 + 48) = v12 == 0;
  if (v12 <= **a2 - 1)
  {
    v14 = **a2 - 1;
  }

  else
  {
    v14 = v12;
  }

  *a1 = malloc_type_malloc(4 * v14 + 16, 0x100004052888210uLL);
  v15 = malloc_type_malloc(4 * (*(a1 + 440) + v14), 0x100004052888210uLL);
  *(a1 + 8) = v15;
  *(a1 + 40) = 0;
  v16 = ***(a1 + 56);
  v17 = *(a1 + 32);
  if (v16 <= v17 + 1)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v18 = v16 + ~v17;
  *(a1 + 40) = v18;
  if (!v18)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v19 = *a1;
  v20 = v18;
  do
  {
    *v19++ = 1;
    *v15++ = 1;
    --v20;
  }

  while (v20);
  v21 = v18;
LABEL_11:
  *(a1 + 272) = xmmword_1B42AF6D0;
  if (v14 != v18)
  {
    v22 = 0;
    v23 = 4 * v21;
    do
    {
      v24 = *(v13 + 4 * v22);
      *(*a1 + v23) = v24;
      *(*(a1 + 8) + v23) = CRCharacterNormalizer::normalizedCharacter(v24);
      if (([CRCHCharacterSetRules characterType:*(v13 + 4 * v22)]& 8) != 0)
      {
        ++v22;
      }

      else
      {
        if (*(a1 + 272) == 0x7FFFFFFFFFFFFFFFLL)
        {
          *(a1 + 272) = v22;
        }

        *(a1 + 280) = ++v22;
      }

      v23 += 4;
    }

    while (v14 - *(a1 + 40) > v22);
  }

  objc_storeStrong((a1 + 232), a5);
  v25 = *(a1 + 440) + v14;
  *(a1 + 16) = v14;
  *(a1 + 24) = v25;
  *(a1 + 224) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  *(a1 + 216) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  return a1;
}

void sub_1B4213D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = *(v14 + 408);
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(v14 + 384);
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(v14 + 360);
  if (v19)
  {
    *(v14 + 368) = v19;
    operator delete(v19);
  }

  v20 = *(v14 + 336);
  if (v20)
  {
    *(v14 + 344) = v20;
    operator delete(v20);
  }

  v21 = *(v14 + 312);
  if (v21)
  {
    *(v14 + 320) = v21;
    operator delete(v21);
  }

  v22 = *a10;
  if (*a10)
  {
    *(v14 + 296) = v22;
    operator delete(v22);
  }

  v23 = *v15;
  if (*v15)
  {
    *(v14 + 256) = v23;
    operator delete(v23);
  }

  v24 = *(v14 + 88);
  if (v24)
  {
    *(v14 + 96) = v24;
    operator delete(v24);
  }

  v25 = *a11;
  if (*a11)
  {
    *(v14 + 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t CRCHFixedHeap<double,LatticePathPtr>::insert(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  if (*(a1 + 1) == 1 && (v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = (*(a1 + 24) + 24);
    v6 = 2;
    while (*(v5 - 1) != a3 || *v5 != a2)
    {
      ++v6;
      v5 += 2;
      if (v6 - v3 == 2)
      {
        goto LABEL_9;
      }
    }

    if (v6)
    {
      return 0;
    }
  }

LABEL_9:
  if (v3 == *(a1 + 8))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = v7 + 16 * v8;
    v10 = *v9;
    if (*a1 == 1)
    {
      if (v10 <= a3)
      {
        return 0;
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
      v20 = 0;
      if (v10 >= a3)
      {
        return v20;
      }
    }
  }

  else
  {
    v7 = *(a1 + 24);
    v8 = v3 + 1;
    *(a1 + 16) = v3 + 1;
    v9 = v7 + 16 * (v3 + 1);
    v11 = *a1;
  }

  *v9 = a3;
  *(v9 + 8) = a2;
  v12 = v7 + 16 * v8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = 2147483650.0;
  if (v11)
  {
    v15 = -2147483650.0;
  }

  *v7 = v15;
  *(v7 + 8) = 0;
  while (1)
  {
    v16 = v8;
    v8 >>= 1;
    v17 = *(v7 + 16 * v8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    if (v13 < v17)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (v16)
    {
      v18 = v7 + 16 * v16;
      *v18 = v17;
      *(v18 + 8) = *(v7 + 16 * v8 + 8);
    }
  }

  if (v13 >= v17)
  {
    goto LABEL_21;
  }

LABEL_23:
  v19 = v7 + 16 * v16;
  *v19 = v13;
  *(v19 + 8) = v14;
  CRCHFixedHeap<double,LatticePathPtr>::updateWorstKV(a1);
  return 1;
}

void *CRCHFixedHeap<double,LatticePathPtr>::updateWorstKV(void *result)
{
  v1 = result[2];
  result[4] = v1;
  if (v1)
  {
    v2 = v1 - 1;
    if (v1 - 1 > v1 >> 1)
    {
      v3 = v1 >> 1;
      v4 = *result;
      v5 = result[3];
      for (i = (v5 + 16 * v1 - 16); ; i -= 2)
      {
        v7 = *i;
        if (!v4)
        {
          break;
        }

        if (v7 > *(v5 + 16 * v1))
        {
          goto LABEL_6;
        }

LABEL_7:
        if (--v2 <= v3)
        {
          return result;
        }
      }

      if (v7 >= *(v5 + 16 * v1))
      {
        goto LABEL_7;
      }

LABEL_6:
      result[4] = v2;
      v1 = v2;
      goto LABEL_7;
    }
  }

  return result;
}

double CRCHLatticePath::updateWordSegmentationScoreAtNode(CRCHLatticePath *this, uint64_t a2, int a3)
{
  v4 = *(this + 7);
  result = *(v4[5] + 56 * a2 + 40);
  if (a3)
  {
    v6 = *v4;
    v7 = *(*v4 + 88);
    if (result >= v7)
    {
      v9 = *(this + 25);
    }

    else
    {
      v8 = exp(v7 - result) + -1.0;
      if (fabs(v8) == INFINITY)
      {
        v8 = 1.79769313e308;
      }

      v9 = v8 + *(this + 25);
    }

    v11 = *(v6 + 56);
LABEL_13:
    result = v9 + v11;
    *(this + 25) = result;
    return result;
  }

  if (*(this + 18) != 0.0)
  {
    v10 = *(*v4 + 112);
    if (result > v10)
    {
      v9 = exp(result - v10) + -1.0;
      if (fabs(v9) == INFINITY)
      {
        v9 = 1.79769313e308;
      }

      v11 = *(this + 25);
      goto LABEL_13;
    }
  }

  return result;
}

void CRCHLatticePath::expandPathStringWithCharacter(CRCHLatticePath *this, uint64_t a2)
{
  v4 = *(this + 2);
  v5 = *this;
  if (v4 != *(this + 3))
  {
    goto LABEL_13;
  }

  v6 = ***(this + 7) - 1;
  v7 = v6 + (v4 - v6) * *(this + 54);
  *(this + 3) = v7;
  v5 = malloc_type_realloc(v5, 4 * v7, 0x100004052888210uLL);
  v8 = malloc_type_realloc(*(this + 1), 4 * *(this + 3), 0x100004052888210uLL);
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    *this = v5;
    *(this + 1) = v8;
    v4 = *(this + 2);
LABEL_13:
    *(this + 2) = v4 + 1;
    *(v5 + v4) = a2;
    *(*(this + 1) + 4 * *(this + 2) - 4) = CRCharacterNormalizer::normalizedCharacter(a2);
    return;
  }

  v11 = CROSLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_ERROR, "Error: unable to reallocate memory for path expansion.", v12, 2u);
  }

  if (v9)
  {
    free(v9);
  }

  if (v5)
  {
    free(v5);
  }
}

void std::vector<CRCHNetworkNode>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 56 * a2;
      v11 = 56 * a2;
      v12 = (v5 + 48);
      do
      {
        *(v12 - 1) = 0;
        *v12 = 0;
        *(v12 - 3) = 0uLL;
        *(v12 - 2) = 0uLL;
        *(v12 - 16) = 0;
        v12 += 56;
        v11 -= 56;
      }

      while (v11);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    *(a1 + 8) = v10;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRCHNetworkNode>>(a1, v9);
    }

    v13 = 8 * ((v5 - *a1) >> 3);
    v14 = 56 * a2;
    v15 = v13 + 56 * a2;
    v16 = (v13 + 48);
    do
    {
      *(v16 - 1) = 0;
      *v16 = 0;
      *(v16 - 3) = 0uLL;
      *(v16 - 2) = 0uLL;
      *(v16 - 16) = 0;
      v16 += 56;
      v14 -= 56;
    }

    while (v14);
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<NetworkEdge>::__emplace_back_slow_path<NetworkEdge const&>(uint64_t a1, const NetworkEdge *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  NetworkEdge::NetworkEdge((80 * v2), a2);
  v15 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = (80 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NetworkEdge>,NetworkEdge*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<NetworkEdge>::~__split_buffer(&v13);
  return v12;
}

void sub_1B42145B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<NetworkEdge>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NetworkEdge>,NetworkEdge*>(uint64_t a1, NetworkEdge *a2, NetworkEdge *a3, NetworkEdge *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      NetworkEdge::NetworkEdge(this, v6);
      v6 = (v6 + 80);
      this = (v12 + 80);
      v12 = (v12 + 80);
    }

    while (v6 != a3);
    v10 = 1;
    do
    {
      v7 = *(v5 + 7);
      if (v7)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 = (v5 + 80);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NetworkEdge>,NetworkEdge*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NetworkEdge>,NetworkEdge*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<NetworkEdge>,NetworkEdge*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<NetworkEdge>,NetworkEdge*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 80;
  }
}

uint64_t std::__split_buffer<NetworkEdge>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<NetworkEdge>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<NetworkEdge>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 80;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 80;
    }
  }
}

void *std::deque<unsigned long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<unsigned long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<unsigned long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_1B4214A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,false>(NetworkEdge *a1, const NetworkEdge *a2, uint64_t (**a3)(NetworkEdge *, NetworkEdge *), uint64_t a4, char a5)
{
LABEL_1:
  v10 = a1;
  v87 = (a1 - 80);
  while (1)
  {
    v11 = a2 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 4);
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (!(*a3)((a2 - 80), v10))
        {
          return;
        }

        v51 = v10;
        v55 = a2 - 80;
LABEL_189:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v51, v55);
        return;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      v49 = (*a3)((v10 + 80), v10);
      v50 = (*a3)((a2 - 80), (v10 + 80));
      if (v49)
      {
        if (v50)
        {
          v51 = v10;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v10, v10 + 80);
          if (!(*a3)((a2 - 80), (v10 + 80)))
          {
            return;
          }

          v51 = (v10 + 80);
        }

        v55 = a2 - 80;
      }

      else
      {
        if (!v50)
        {
          return;
        }

        v52 = (v10 + 80);
        v53 = a2 - 80;
LABEL_175:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v52, v53);
        if (!(*a3)((v10 + 80), v10))
        {
          return;
        }

        v55 = v10 + 80;
        v51 = v10;
      }

      goto LABEL_189;
    }

    if (v12 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,0>(v10, (v10 + 80), (v10 + 160), a2 - 80, a3);
      return;
    }

    if (v12 == 5)
    {
      break;
    }

LABEL_9:
    if (v11 <= 1919)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v56 = (v10 + 80);
          if ((v10 + 80) != a2)
          {
            v57 = 0;
            v58 = v10;
            do
            {
              v59 = v58;
              v58 = v56;
              if ((*a3)(v56, v59))
              {
                NetworkEdge::NetworkEdge(v92, v58);
                v60 = v57;
                while (1)
                {
                  NetworkEdge::operator=(v10 + v60 + 80, v10 + v60);
                  if (!v60)
                  {
                    break;
                  }

                  v61 = (*a3)(v92, (v10 + v60 - 80));
                  v60 -= 80;
                  if ((v61 & 1) == 0)
                  {
                    v62 = v10 + v60 + 80;
                    goto LABEL_131;
                  }
                }

                v62 = v10;
LABEL_131:
                NetworkEdge::operator=(v62, v92);
                if (__p)
                {
                  v94 = __p;
                  operator delete(__p);
                }
              }

              v56 = (v58 + 80);
              v57 += 80;
            }

            while ((v58 + 80) != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v83 = (v10 + 80);
        while (v83 != a2)
        {
          v84 = v83;
          if ((*a3)(v83, v10))
          {
            NetworkEdge::NetworkEdge(v92, v84);
            do
            {
              NetworkEdge::operator=(v10 + 80, v10);
              v10 -= 80;
            }

            while (((*a3)(v92, v10) & 1) != 0);
            NetworkEdge::operator=(v10 + 80, v92);
            if (__p)
            {
              v94 = __p;
              operator delete(__p);
            }
          }

          v83 = (v84 + 80);
          v10 = v84;
        }
      }

      return;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v63 = (v12 - 2) >> 1;
        v85 = a2;
        v88 = v63;
        do
        {
          v64 = v63;
          if (v88 >= v63)
          {
            v65 = (2 * v63) | 1;
            v66 = v10 + 80 * v65;
            if (2 * v63 + 2 < v12 && (*a3)((v10 + 80 * v65), (v66 + 80)))
            {
              v66 += 80;
              v65 = 2 * v64 + 2;
            }

            v67 = v10 + 80 * v64;
            if (((*a3)(v66, v67) & 1) == 0)
            {
              NetworkEdge::NetworkEdge(v92, (v10 + 80 * v64));
              do
              {
                v68 = v66;
                NetworkEdge::operator=(v67, v66);
                if (v88 < v65)
                {
                  break;
                }

                v69 = (2 * v65) | 1;
                v66 = v10 + 80 * v69;
                v65 = 2 * v65 + 2;
                if (v65 >= v12)
                {
                  v65 = v69;
                }

                else if ((*a3)((v10 + 80 * v69), (v66 + 80)))
                {
                  v66 += 80;
                }

                else
                {
                  v65 = v69;
                }

                v67 = v68;
              }

              while (!(*a3)(v66, v92));
              NetworkEdge::operator=(v68, v92);
              a2 = v85;
              if (__p)
              {
                v94 = __p;
                operator delete(__p);
              }
            }
          }

          v63 = v64 - 1;
        }

        while (v64);
        v70 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 4);
        do
        {
          if (v70 >= 2)
          {
            v86 = a2;
            NetworkEdge::NetworkEdge(v89, v10);
            v71 = 0;
            v72 = v10;
            do
            {
              v73 = v72 + 80 * v71;
              v74 = (v73 + 80);
              v75 = 2 * v71;
              v71 = (2 * v71) | 1;
              v76 = v75 + 2;
              if (v75 + 2 < v70)
              {
                v77 = (v73 + 160);
                if ((*a3)((v73 + 80), (v73 + 160)))
                {
                  v74 = v77;
                  v71 = v76;
                }
              }

              NetworkEdge::operator=(v72, v74);
              v72 = v74;
            }

            while (v71 <= ((v70 - 2) >> 1));
            a2 = v86;
            if (v74 == (v86 - 80))
            {
              NetworkEdge::operator=(v74, v89);
            }

            else
            {
              NetworkEdge::operator=(v74, v86 - 80);
              NetworkEdge::operator=(v86 - 80, v89);
              v78 = v74 - v10 + 80;
              if (v78 >= 81)
              {
                v79 = (-2 - 0x3333333333333333 * (v78 >> 4)) >> 1;
                v80 = v10 + 80 * v79;
                if ((*a3)(v80, v74))
                {
                  NetworkEdge::NetworkEdge(v92, v74);
                  do
                  {
                    v81 = v80;
                    NetworkEdge::operator=(v74, v80);
                    if (!v79)
                    {
                      break;
                    }

                    v79 = (v79 - 1) >> 1;
                    v80 = v10 + 80 * v79;
                    v74 = v81;
                  }

                  while (((*a3)(v80, v92) & 1) != 0);
                  NetworkEdge::operator=(v81, v92);
                  if (__p)
                  {
                    v94 = __p;
                    operator delete(__p);
                  }
                }
              }
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }
          }

          a2 = (a2 - 80);
        }

        while (v70-- > 2);
      }

      return;
    }

    v13 = v10 + 80 * (v12 >> 1);
    v14 = (a2 - 80);
    v15 = *a3;
    if (v11 < 0x2801)
    {
      v19 = v15(v10, v13);
      v20 = (*a3)((a2 - 80), v10);
      if (v19)
      {
        if (v20)
        {
          v21 = v13;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v13, v10);
          if (!(*a3)((a2 - 80), v10))
          {
            goto LABEL_63;
          }

          v21 = v10;
        }

        v23 = a2 - 80;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_63;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v10, a2 - 80);
        if (!(*a3)(v10, v13))
        {
          goto LABEL_63;
        }

        v21 = v13;
        v23 = v10;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v21, v23);
      goto LABEL_63;
    }

    v16 = v15(v13, v10);
    v17 = (*a3)((a2 - 80), v13);
    if (v16)
    {
      if (v17)
      {
        v18 = v10;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v10, v13);
        if (!(*a3)((a2 - 80), v13))
        {
          goto LABEL_28;
        }

        v18 = v13;
      }

      v22 = a2 - 80;
      goto LABEL_27;
    }

    if (v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v13, a2 - 80);
      if ((*a3)(v13, v10))
      {
        v18 = v10;
        v22 = v13;
LABEL_27:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v18, v22);
      }
    }

LABEL_28:
    v24 = a2;
    v25 = a2 - 160;
    v26 = (*a3)((v13 - 80), (v10 + 80));
    v27 = (*a3)(v25, (v13 - 80));
    if (v26)
    {
      if (v27)
      {
        v28 = (v10 + 80);
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v10 + 80), v13 - 80);
        if (!(*a3)(v25, (v13 - 80)))
        {
          goto LABEL_42;
        }

        v28 = (v13 - 80);
      }

      v29 = v25;
      goto LABEL_41;
    }

    if (v27)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v13 - 80), v25);
      if ((*a3)((v13 - 80), (v10 + 80)))
      {
        v28 = (v10 + 80);
        v29 = v13 - 80;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v28, v29);
      }
    }

LABEL_42:
    v30 = (*a3)((v13 + 80), (v10 + 160));
    v31 = (*a3)((v24 - 240), (v13 + 80));
    if (v30)
    {
      if (v31)
      {
        v32 = (v10 + 160);
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v10 + 160), v13 + 80);
        if (!(*a3)((v24 - 240), (v13 + 80)))
        {
          goto LABEL_52;
        }

        v32 = (v13 + 80);
      }

      v33 = v24 - 240;
      goto LABEL_51;
    }

    if (v31)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v13 + 80), v24 - 240);
      if ((*a3)((v13 + 80), (v10 + 160)))
      {
        v32 = (v10 + 160);
        v33 = v13 + 80;
LABEL_51:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v32, v33);
      }
    }

LABEL_52:
    v34 = (*a3)(v13, (v13 - 80));
    v35 = (*a3)((v13 + 80), v13);
    a2 = v24;
    if (v34)
    {
      if (v35)
      {
        v36 = v13 + 80;
        v37 = (v13 - 80);
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v13 - 80), v13);
        if (!(*a3)((v13 + 80), v13))
        {
          goto LABEL_61;
        }

        v36 = v13 + 80;
        v37 = v13;
      }

      goto LABEL_60;
    }

    if (v35)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v13, v13 + 80);
      if ((*a3)(v13, (v13 - 80)))
      {
        v37 = (v13 - 80);
        v36 = v13;
LABEL_60:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v37, v36);
      }
    }

LABEL_61:
    NetworkEdge::NetworkEdge(v92, v10);
    NetworkEdge::operator=(v10, v13);
    NetworkEdge::operator=(v13, v92);
    if (__p)
    {
      v94 = __p;
      operator delete(__p);
    }

LABEL_63:
    --a4;
    if ((a5 & 1) == 0 && ((*a3)(v87, v10) & 1) == 0)
    {
      NetworkEdge::NetworkEdge(v92, v10);
      if ((*a3)(v92, v14))
      {
        a1 = v10;
        do
        {
          a1 = (a1 + 80);
        }

        while (((*a3)(v92, a1) & 1) == 0);
      }

      else
      {
        v46 = (v10 + 80);
        do
        {
          a1 = v46;
          if (v46 >= a2)
          {
            break;
          }

          v47 = (*a3)(v92, v46);
          v46 = (a1 + 80);
        }

        while (!v47);
      }

      v48 = a2;
      if (a1 < a2)
      {
        v48 = a2;
        do
        {
          v48 -= 80;
        }

        while (((*a3)(v92, v48) & 1) != 0);
      }

      while (a1 < v48)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a1, v48);
        do
        {
          a1 = (a1 + 80);
        }

        while (!(*a3)(v92, a1));
        do
        {
          v48 -= 80;
        }

        while (((*a3)(v92, v48) & 1) != 0);
      }

      if ((a1 - 80) != v10)
      {
        NetworkEdge::operator=(v10, a1 - 80);
      }

      NetworkEdge::operator=(a1 - 80, v92);
      if (__p)
      {
        v94 = __p;
        operator delete(__p);
      }

      a5 = 0;
      goto LABEL_1;
    }

    NetworkEdge::NetworkEdge(v92, v10);
    v38 = 0;
    do
    {
      v39 = (*a3)((v10 + v38 + 80), v92);
      v38 += 80;
    }

    while ((v39 & 1) != 0);
    v40 = v10 + v38;
    v41 = a2;
    if (v38 == 80)
    {
      v41 = a2;
      do
      {
        if (v40 >= v41)
        {
          break;
        }

        v41 = (v41 - 80);
      }

      while (((*a3)(v41, v92) & 1) == 0);
    }

    else
    {
      do
      {
        v41 = (v41 - 80);
      }

      while (!(*a3)(v41, v92));
    }

    if (v40 >= v41)
    {
      v44 = (v40 - 80);
    }

    else
    {
      v42 = (v10 + v38);
      v43 = v41;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v42, v43);
        do
        {
          v42 = (v42 + 80);
        }

        while (((*a3)(v42, v92) & 1) != 0);
        do
        {
          v43 -= 80;
        }

        while (!(*a3)(v43, v92));
      }

      while (v42 < v43);
      v44 = (v42 - 80);
    }

    if (v44 != v10)
    {
      NetworkEdge::operator=(v10, v44);
    }

    NetworkEdge::operator=(v44, v92);
    if (__p)
    {
      v94 = __p;
      operator delete(__p);
    }

    if (v40 < v41)
    {
      goto LABEL_90;
    }

    v45 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*>(v10, v44, a3);
    a1 = (v44 + 80);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*>(v44 + 80, a2, a3))
    {
      if (v45)
      {
        goto LABEL_1;
      }

LABEL_90:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,false>(v10, v44, a3, a4, a5 & 1);
      a5 = 0;
      a1 = (v44 + 80);
      goto LABEL_1;
    }

    a2 = v44;
    if (v45)
    {
      return;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,0>(v10, (v10 + 80), (v10 + 160), v10 + 240, a3);
  if ((*a3)((a2 - 80), (v10 + 240)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v10 + 240), a2 - 80);
    if ((*a3)((v10 + 240), (v10 + 160)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((v10 + 160), v10 + 240);
      if ((*a3)((v10 + 160), (v10 + 80)))
      {
        v52 = (v10 + 80);
        v53 = v10 + 160;
        goto LABEL_175;
      }
    }
  }
}

void sub_1B4215B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(NetworkEdge *a1, uint64_t a2)
{
  NetworkEdge::NetworkEdge(v4, a1);
  NetworkEdge::operator=(a1, a2);
  NetworkEdge::operator=(a2, v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1B4215C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,0>(NetworkEdge *a1, NetworkEdge *a2, NetworkEdge *a3, uint64_t a4, uint64_t (**a5)(NetworkEdge *, NetworkEdge *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a3, a4);
    if ((*a5)(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a2, a3);
      if ((*a5)(a2, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a1, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*>(uint64_t a1, const NetworkEdge *a2, uint64_t (**a3)(NetworkEdge *, NetworkEdge *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = (a2 - 80);
        v13 = (*a3)((a1 + 80), a1);
        v14 = (*a3)(v12, (a1 + 80));
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a1, a1 + 80);
            if (!(*a3)(v12, (a1 + 80)))
            {
              return 1;
            }

            v7 = (a1 + 80);
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
          return 1;
        }

        v10 = (a1 + 80);
        v11 = v12;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,0>(a1, (a1 + 80), (a1 + 160), a2 - 80, a3);
        return 1;
      case 5:
        v9 = a2 - 80;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,0>(a1, (a1 + 80), (a1 + 160), a1 + 240, a3);
        if (!(*a3)(v9, (a1 + 240)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((a1 + 240), v9);
        if (!(*a3)((a1 + 240), (a1 + 160)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((a1 + 160), a1 + 240);
        if (!(*a3)((a1 + 160), (a1 + 80)))
        {
          return 1;
        }

        v10 = (a1 + 80);
        v11 = a1 + 160;
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v10, v11);
    if ((*a3)((a1 + 80), a1))
    {
      v8 = a1 + 80;
      v7 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)((a2 - 80), a1))
    {
      v7 = a1;
      v8 = a2 - 80;
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v15 = (a1 + 160);
  v16 = (*a3)((a1 + 80), a1);
  v17 = (*a3)((a1 + 160), (a1 + 80));
  if (v16)
  {
    if (v17)
    {
      v18 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(a1, a1 + 80);
      if (!(*a3)((a1 + 160), (a1 + 80)))
      {
        goto LABEL_35;
      }

      v18 = (a1 + 80);
    }

    v19 = a1 + 160;
    goto LABEL_34;
  }

  if (v17)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>((a1 + 80), a1 + 160);
    if ((*a3)((a1 + 80), a1))
    {
      v19 = a1 + 80;
      v18 = a1;
LABEL_34:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<NetworkEdge *&,NetworkEdge *&>(v18, v19);
    }
  }

LABEL_35:
  v20 = (a1 + 240);
  if ((a1 + 240) == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if ((*a3)(v20, v15))
    {
      NetworkEdge::NetworkEdge(v27, v20);
      v23 = v21;
      while (1)
      {
        NetworkEdge::operator=(a1 + v23 + 240, a1 + v23 + 160);
        if (v23 == -160)
        {
          break;
        }

        v24 = (*a3)(v27, (a1 + v23 + 80));
        v23 -= 80;
        if ((v24 & 1) == 0)
        {
          v25 = a1 + v23 + 240;
          goto LABEL_43;
        }
      }

      v25 = a1;
LABEL_43:
      NetworkEdge::operator=(v25, v27);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (++v22 == 8)
      {
        return (v20 + 80) == a2;
      }
    }

    v15 = v20;
    v21 += 80;
    v20 = (v20 + 80);
    if (v20 == a2)
    {
      return 1;
    }
  }
}

void sub_1B42160C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NetworkEdge::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 40) = *(a2 + 40);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v122 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v10->i64[0]);
      if (result)
      {
        v76 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_105:
        a2[-1].i64[1] = v76;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v79 = &v10->u64[1];
      v81 = v10 == a2 || v79 == a2;
      if (a5)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v10;
          do
          {
            v85 = *v83;
            v84 = v83[1];
            v83 = v79;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = *v83;
              v87 = v82;
              while (1)
              {
                *(&v10->i64[1] + v87) = *(v10->i64 + v87);
                if (!v87)
                {
                  break;
                }

                result = (*a3)(v86, *(&v10->i64[-1] + v87));
                v87 -= 8;
                if ((result & 1) == 0)
                {
                  v88 = (&v10->i64[1] + v87);
                  goto LABEL_127;
                }
              }

              v88 = v10;
LABEL_127:
              *v88 = v86;
            }

            v79 = (v83 + 1);
            v82 += 8;
          }

          while (v83 + 1 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v117 = v9->i64[0];
          v116 = v9->i64[1];
          v9 = v79;
          result = (*a3)(v116, v117);
          if (result)
          {
            v118 = v9->i64[0];
            v119 = v9;
            do
            {
              v120 = v119;
              v121 = *--v119;
              *v120 = v121;
              result = (*a3)(v118, *(v120 - 2));
            }

            while ((result & 1) != 0);
            *v119 = v118;
          }

          v79 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v89 = (v11 - 2) >> 1;
        v123 = v89;
        do
        {
          v90 = v89;
          if (v123 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v9->i64[v91];
            if (2 * v89 + 2 < v11 && (*a3)(*v92, v92[1]))
            {
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v93 = &v9->i64[v90];
            result = (*a3)(*v92, *v93);
            if ((result & 1) == 0)
            {
              v94 = *v93;
              do
              {
                v95 = v92;
                *v93 = *v92;
                if (v123 < v91)
                {
                  break;
                }

                v96 = (2 * v91) | 1;
                v92 = &v9->i64[v96];
                v97 = 2 * v91 + 2;
                if (v97 < v11 && (*a3)(*v92, v92[1]))
                {
                  ++v92;
                  v96 = v97;
                }

                result = (*a3)(*v92, v94);
                v93 = v95;
                v91 = v96;
              }

              while (!result);
              *v95 = v94;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v98 = v122;
        do
        {
          v99 = v98;
          v100 = 0;
          v124 = v9->i64[0];
          v101 = v9;
          do
          {
            v102 = &v101[v100];
            v103 = v102 + 1;
            v104 = (2 * v100) | 1;
            v105 = 2 * v100 + 2;
            if (v105 >= v11)
            {
              v100 = (2 * v100) | 1;
            }

            else
            {
              v107 = v102[2];
              v106 = v102 + 2;
              result = (*a3)(*(v106 - 1), v107);
              if (result)
              {
                v103 = v106;
                v100 = v105;
              }

              else
              {
                v100 = v104;
              }
            }

            *v101 = *v103;
            v101 = v103;
          }

          while (v100 <= ((v11 - 2) >> 1));
          v98 = v99 - 1;
          if (v103 == v99 - 1)
          {
            *v103 = v124;
          }

          else
          {
            *v103 = *v98;
            *v98 = v124;
            v108 = (v103 - v9 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = &v9->i64[v110 >> 1];
              result = (*a3)(*v112, *v103);
              if (result)
              {
                v113 = *v103;
                do
                {
                  v114 = v112;
                  *v103 = *v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v9->i64[v111];
                  result = (*a3)(*v112, v113);
                  v103 = v114;
                }

                while ((result & 1) != 0);
                *v114 = v113;
              }
            }
          }

          v109 = v11-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (v18)
        {
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
        }

        else
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v31 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[0], v9->i64[v12]))
        {
          v23 = v9->i64[v12];
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v9->i64[v12], v9->i64[0]);
    v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
    if (v14)
    {
      v16 = v9->i64[0];
      if (v15)
      {
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
      }

      else
      {
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v16;
        if ((*a3)(a2[-1].i64[1]))
        {
          v24 = v9->i64[v12];
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i64[v12];
      v9->i64[v12] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((*a3)(v9->i64[v12], v9->i64[0]))
      {
        v21 = v9->i64[0];
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
    if (v26)
    {
      v28 = v9->i64[1];
      if (v27)
      {
        v9->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v9->i64[v25];
          v9->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i64[v25];
      v9->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v9->i64[v25], v9->i64[1]))
      {
        v30 = v9->i64[1];
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
    v35 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
    if (v34)
    {
      v36 = v9[1].i64[0];
      if (v35)
      {
        v9[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v36;
      }

      else
      {
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v36;
        if ((*a3)(a2[-2].i64[1]))
        {
          v39 = v9->i64[v33];
          v9->i64[v33] = a2[-2].i64[1];
          a2[-2].i64[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i64[v33];
      v9->i64[v33] = a2[-2].i64[1];
      a2[-2].i64[1] = v37;
      if ((*a3)(v9->i64[v33], v9[1].i64[0]))
      {
        v38 = v9[1].i64[0];
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v38;
      }
    }

    v40 = (*a3)(v9->i64[v12], v9->i64[v25]);
    v41 = (*a3)(v9->i64[v33], v9->i64[v12]);
    if ((v40 & 1) == 0)
    {
      v43 = v9->i64[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v9->i64[v12] = v9->i64[v33];
      v9->i64[v33] = v43;
      v44 = (*a3)();
      v43 = v9->i64[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v9->i64[v25];
      v9->i64[v25] = v43;
      v9->i64[v12] = v45;
      goto LABEL_53;
    }

    v42 = v9->i64[v25];
    if (v41)
    {
      v9->i64[v25] = v9->i64[v33];
      v9->i64[v33] = v42;
      v43 = v9->i64[v12];
    }

    else
    {
      v9->i64[v25] = v9->i64[v12];
      v9->i64[v12] = v42;
      v46 = (*a3)(v9->i64[v33]);
      v43 = v9->i64[v12];
      if (v46)
      {
        v45 = v9->i64[v33];
        v9->i64[v12] = v45;
        v9->i64[v33] = v43;
LABEL_53:
        v43 = v45;
      }
    }

LABEL_54:
    v47 = v9->i64[0];
    v9->i64[0] = v43;
    v9->i64[v12] = v47;
LABEL_55:
    --a4;
    v48 = v9->i64[0];
    if (a5 & 1) != 0 || (v49 = (*a3)(v9[-1].i64[1], v9->i64[0]), v48 = v9->i64[0], (v49))
    {
      v50 = 0;
      do
      {
        v51 = (*a3)(v9->i64[++v50], v48);
      }

      while ((v51 & 1) != 0);
      v52 = (v9 + v50 * 8);
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (((*a3)(v55, v48) & 1) == 0);
      }

      else
      {
        do
        {
          v54 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (!(*a3)(v54, v48));
      }

      if (v52 >= v53)
      {
        v61 = (v52 - 8);
      }

      else
      {
        v56 = &v9->i64[v50];
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v59 = v56[1];
            ++v56;
          }

          while (((*a3)(v59, v48) & 1) != 0);
          do
          {
            v60 = *--v57;
          }

          while (!(*a3)(v60, v48));
        }

        while (v56 < v57);
        v61 = (v56 - 1);
        a2 = v122;
      }

      if (v61 != v9)
      {
        v9->i64[0] = v61->i64[0];
      }

      v61->i64[0] = v48;
      if (v52 < v53)
      {
        goto LABEL_78;
      }

      v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**>(v9, v61, a3);
      v10 = &v61->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**>(&v61->i64[1], a2, a3);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,false>(v9, v61, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v61->u64[1];
      }
    }

    else
    {
      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v63 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v48, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = &v9->u64[1];
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 = (v64 + 8);
          result = (*a3)(v48, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v48, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v48, v68));
        do
        {
          v69 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v48, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v70;
      }

      a5 = 0;
      *v70 = v48;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,0>(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v71;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v72;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v74 = v10->i64[1];
      v73 = v10[1].i64[0];
      v75 = v10->i64[0];
      v10->i64[1] = v73;
      v10[1].i64[0] = v74;
      result = (*a3)(v73, v75);
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v77 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v77 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v115 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v115;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_166:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v78 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v78;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v78;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v76 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_105;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,BOOL>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,BOOL>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,BOOL>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::__tree<std::__value_type<CRCHuint128,int>,std::__map_value_compare<CRCHuint128,std::__value_type<CRCHuint128,int>,std::less<CRCHuint128>,true>,std::allocator<std::__value_type<CRCHuint128,int>>>::__emplace_unique_key_args<CRCHuint128,std::piecewise_construct_t const&,std::tuple<CRCHuint128 const&>,std::tuple<>>(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!CRCHuint128::operator<(a2, v2 + 7))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!CRCHuint128::operator<(v4 + 7, a2))
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<NetworkEdge>::__assign_with_size[abi:ne200100]<NetworkEdge*,NetworkEdge*>(uint64_t *a1, NetworkEdge *a2, NetworkEdge *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      std::vector<NetworkEdge>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x199999999999999)
      {
        v12 = 0x333333333333333;
      }

      else
      {
        v12 = v11;
      }

      std::vector<NetworkEdge>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1];
  v14 = v13 - v9;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        NetworkEdge::operator=(v9, v6);
        v6 += 80;
        v9 += 80;
      }

      while (v6 != a3);
      v13 = a1[1];
    }

    while (v13 != v9)
    {
      v17 = *(v13 - 3);
      if (v17)
      {
        *(v13 - 2) = v17;
        operator delete(v17);
      }

      v13 = (v13 - 80);
    }

    a1[1] = v9;
  }

  else
  {
    if (v13 != v9)
    {
      v15 = v13 - v9;
      v16 = a2;
      do
      {
        NetworkEdge::operator=(v9, v16);
        v16 += 80;
        v9 += 80;
        v15 -= 80;
      }

      while (v15);
      v13 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NetworkEdge>,NetworkEdge*,NetworkEdge*,NetworkEdge*>(a1, &v14[v6], a3, v13);
  }
}

void std::vector<NetworkEdge>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

NetworkEdge *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NetworkEdge>,NetworkEdge*,NetworkEdge*,NetworkEdge*>(uint64_t a1, NetworkEdge *a2, NetworkEdge *a3, NetworkEdge *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      NetworkEdge::NetworkEdge(v4, v6);
      v6 = (v6 + 80);
      v4 = (v11 + 80);
      v11 = (v11 + 80);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NetworkEdge>,NetworkEdge*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void *std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__tree<CRCHuint128>::find<CRCHuint128>(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = CRCHuint128::operator<((v3 + 28), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || CRCHuint128::operator<(a2, (v5 + 28)))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tree<CRCHuint128>::__emplace_unique_key_args<CRCHuint128,CRCHuint128 const&>(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!CRCHuint128::operator<(a2, v2 + 7))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = CRCHuint128::operator<(v4 + 7, a2);
    if (!result)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__tree<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::__map_value_compare<CRCHNodeTuple<unsigned long,unsigned long>,std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::less<CRCHNodeTuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>>>::find<CRCHNodeTuple<unsigned long,unsigned long>>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 40) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 32);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 40) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

uint64_t std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::less<std::string>::operator()[abi:ne200100]((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::less<std::string>::operator()[abi:ne200100](a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!std::less<std::string>::operator()[abi:ne200100](a2, v2 + 4))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](v4 + 4, a2))
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<unsigned long long,unsigned long>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::map<unsigned long long,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return 0;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::set<int>::set[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 28);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
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
      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,false>(CRCHLatticePath *a1, const CRCHLatticePath *a2, uint64_t (**a3)(CRCHLatticePath *, CRCHLatticePath *), uint64_t a4, char a5)
{
LABEL_1:
  v10 = a1;
  v89 = (a1 - 448);
  while (1)
  {
    v11 = a2 - v10;
    v12 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v10) >> 6);
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (!(*a3)((a2 - 448), v10))
        {
          return;
        }

        v51 = v10;
        v55 = a2 - 448;
LABEL_183:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v51, v55);
        return;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      v49 = (*a3)((v10 + 448), v10);
      v50 = (*a3)((a2 - 448), (v10 + 448));
      if (v49)
      {
        if (v50)
        {
          v51 = v10;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v10, v10 + 448);
          if (!(*a3)((a2 - 448), (v10 + 448)))
          {
            return;
          }

          v51 = (v10 + 448);
        }

        v55 = a2 - 448;
      }

      else
      {
        if (!v50)
        {
          return;
        }

        v52 = (v10 + 448);
        v53 = a2 - 448;
LABEL_171:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v52, v53);
        if (!(*a3)((v10 + 448), v10))
        {
          return;
        }

        v55 = v10 + 448;
        v51 = v10;
      }

      goto LABEL_183;
    }

    if (v12 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,0>(v10, (v10 + 448), (v10 + 896), a2 - 448, a3);
      return;
    }

    if (v12 == 5)
    {
      break;
    }

LABEL_9:
    if (v11 <= 10751)
    {
      v56 = (v10 + 448);
      v58 = v10 == a2 || v56 == a2;
      if (a5)
      {
        if (!v58)
        {
          v59 = 0;
          v60 = v10;
          do
          {
            v61 = v60;
            v60 = v56;
            if ((*a3)(v56, v61))
            {
              CRCHLatticePath::CRCHLatticePath(v92, v60);
              v62 = v59;
              while (1)
              {
                CRCHLatticePath::operator=(v10 + v62 + 448, v10 + v62);
                if (!v62)
                {
                  break;
                }

                v63 = (*a3)(v92, (v10 + v62 - 448));
                v62 -= 448;
                if ((v63 & 1) == 0)
                {
                  v64 = v10 + v62 + 448;
                  goto LABEL_131;
                }
              }

              v64 = v10;
LABEL_131:
              CRCHLatticePath::operator=(v64, v92);
              CRCHLatticePath::~CRCHLatticePath(v92);
            }

            v56 = (v60 + 448);
            v59 += 448;
          }

          while ((v60 + 448) != a2);
        }
      }

      else if (!v58)
      {
        do
        {
          v86 = v56;
          if ((*a3)(v56, v10))
          {
            CRCHLatticePath::CRCHLatticePath(v92, v86);
            do
            {
              CRCHLatticePath::operator=(v10 + 448, v10);
              v10 -= 448;
            }

            while (((*a3)(v92, v10) & 1) != 0);
            CRCHLatticePath::operator=(v10 + 448, v92);
            CRCHLatticePath::~CRCHLatticePath(v92);
          }

          v56 = (v86 + 448);
          v10 = v86;
        }

        while ((v86 + 448) != a2);
      }

      return;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v65 = (v12 - 2) >> 1;
        v87 = a2;
        v90 = v65;
        do
        {
          v66 = v65;
          if (v90 >= v65)
          {
            v67 = (2 * v65) | 1;
            v68 = v10 + 448 * v67;
            if (2 * v65 + 2 < v12 && (*a3)((v10 + 448 * v67), (v68 + 448)))
            {
              v68 += 448;
              v67 = 2 * v66 + 2;
            }

            v69 = v10 + 448 * v66;
            if (((*a3)(v68, v69) & 1) == 0)
            {
              CRCHLatticePath::CRCHLatticePath(v92, (v10 + 448 * v66));
              do
              {
                v70 = v68;
                CRCHLatticePath::operator=(v69, v68);
                if (v90 < v67)
                {
                  break;
                }

                v71 = (2 * v67) | 1;
                v68 = v10 + 448 * v71;
                v67 = 2 * v67 + 2;
                if (v67 >= v12)
                {
                  v67 = v71;
                }

                else if ((*a3)((v10 + 448 * v71), (v68 + 448)))
                {
                  v68 += 448;
                }

                else
                {
                  v67 = v71;
                }

                v69 = v70;
              }

              while (!(*a3)(v68, v92));
              CRCHLatticePath::operator=(v70, v92);
              CRCHLatticePath::~CRCHLatticePath(v92);
            }
          }

          v65 = v66 - 1;
        }

        while (v66);
        v72 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 6);
        v73 = v87;
        do
        {
          if (v72 >= 2)
          {
            v88 = v73;
            CRCHLatticePath::CRCHLatticePath(v91, v10);
            v74 = 0;
            v75 = v10;
            do
            {
              v76 = v75 + 448 * v74;
              v77 = (v76 + 448);
              v78 = 2 * v74;
              v74 = (2 * v74) | 1;
              v79 = v78 + 2;
              if (v78 + 2 < v72)
              {
                v80 = (v76 + 896);
                if ((*a3)((v76 + 448), (v76 + 896)))
                {
                  v77 = v80;
                  v74 = v79;
                }
              }

              CRCHLatticePath::operator=(v75, v77);
              v75 = v77;
            }

            while (v74 <= ((v72 - 2) >> 1));
            v73 = v88;
            if (v77 == (v88 - 448))
            {
              CRCHLatticePath::operator=(v77, v91);
            }

            else
            {
              CRCHLatticePath::operator=(v77, v88 - 448);
              CRCHLatticePath::operator=(v88 - 448, v91);
              v81 = v77 - v10 + 448;
              if (v81 >= 449)
              {
                v82 = (0x6DB6DB6DB6DB6DB7 * (v81 >> 6) - 2) >> 1;
                v83 = v10 + 448 * v82;
                if ((*a3)(v83, v77))
                {
                  CRCHLatticePath::CRCHLatticePath(v92, v77);
                  do
                  {
                    v84 = v83;
                    CRCHLatticePath::operator=(v77, v83);
                    if (!v82)
                    {
                      break;
                    }

                    v82 = (v82 - 1) >> 1;
                    v83 = v10 + 448 * v82;
                    v77 = v84;
                  }

                  while (((*a3)(v83, v92) & 1) != 0);
                  CRCHLatticePath::operator=(v84, v92);
                  CRCHLatticePath::~CRCHLatticePath(v92);
                }
              }
            }

            CRCHLatticePath::~CRCHLatticePath(v91);
          }

          v73 = (v73 - 448);
        }

        while (v72-- > 2);
      }

      return;
    }

    v13 = v10 + 448 * (v12 >> 1);
    v14 = (a2 - 448);
    v15 = *a3;
    if (v11 > 0xE000)
    {
      v16 = v15(v13, v10);
      v17 = (*a3)((a2 - 448), v13);
      if (v16)
      {
        if (v17)
        {
          v18 = v10;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v10, v13);
          if (!(*a3)((a2 - 448), v13))
          {
            goto LABEL_28;
          }

          v18 = v13;
        }

        v22 = a2 - 448;
      }

      else
      {
        if (!v17 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v13, a2 - 448), !(*a3)(v13, v10)))
        {
LABEL_28:
          v24 = a2;
          v25 = a2 - 896;
          v26 = (*a3)((v13 - 448), (v10 + 448));
          v27 = (*a3)(v25, (v13 - 448));
          if (v26)
          {
            if (v27)
            {
              v28 = (v10 + 448);
            }

            else
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v10 + 448), v13 - 448);
              if (!(*a3)(v25, (v13 - 448)))
              {
                goto LABEL_42;
              }

              v28 = (v13 - 448);
            }

            v29 = v25;
          }

          else
          {
            if (!v27 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v13 - 448), v25), !(*a3)((v13 - 448), (v10 + 448))))
            {
LABEL_42:
              v30 = (*a3)((v13 + 448), (v10 + 896));
              v31 = (*a3)((v24 - 1344), (v13 + 448));
              if (v30)
              {
                if (v31)
                {
                  v32 = (v10 + 896);
                }

                else
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v10 + 896), v13 + 448);
                  if (!(*a3)((v24 - 1344), (v13 + 448)))
                  {
                    goto LABEL_52;
                  }

                  v32 = (v13 + 448);
                }

                v33 = v24 - 1344;
              }

              else
              {
                if (!v31 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v13 + 448), v24 - 1344), !(*a3)((v13 + 448), (v10 + 896))))
                {
LABEL_52:
                  v34 = (*a3)(v13, (v13 - 448));
                  v35 = (*a3)((v13 + 448), v13);
                  a2 = v24;
                  if (v34)
                  {
                    if (v35)
                    {
                      v36 = v13 + 448;
                      v37 = (v13 - 448);
                    }

                    else
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v13 - 448), v13);
                      if (!(*a3)((v13 + 448), v13))
                      {
LABEL_61:
                        CRCHLatticePath::CRCHLatticePath(v92, v10);
                        CRCHLatticePath::operator=(v10, v13);
                        CRCHLatticePath::operator=(v13, v92);
                        CRCHLatticePath::~CRCHLatticePath(v92);
                        goto LABEL_62;
                      }

                      v36 = v13 + 448;
                      v37 = v13;
                    }
                  }

                  else
                  {
                    if (!v35)
                    {
                      goto LABEL_61;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v13, v13 + 448);
                    if (!(*a3)(v13, (v13 - 448)))
                    {
                      goto LABEL_61;
                    }

                    v37 = (v13 - 448);
                    v36 = v13;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v37, v36);
                  goto LABEL_61;
                }

                v32 = (v10 + 896);
                v33 = v13 + 448;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v32, v33);
              goto LABEL_52;
            }

            v28 = (v10 + 448);
            v29 = v13 - 448;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v28, v29);
          goto LABEL_42;
        }

        v18 = v10;
        v22 = v13;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v18, v22);
      goto LABEL_28;
    }

    v19 = v15(v10, v13);
    v20 = (*a3)((a2 - 448), v10);
    if (v19)
    {
      if (v20)
      {
        v21 = v13;
LABEL_36:
        v23 = a2 - 448;
        goto LABEL_37;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v13, v10);
      if ((*a3)((a2 - 448), v10))
      {
        v21 = v10;
        goto LABEL_36;
      }
    }

    else if (v20)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v10, a2 - 448);
      if ((*a3)(v10, v13))
      {
        v21 = v13;
        v23 = v10;
LABEL_37:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v21, v23);
      }
    }

LABEL_62:
    --a4;
    if ((a5 & 1) == 0 && ((*a3)(v89, v10) & 1) == 0)
    {
      CRCHLatticePath::CRCHLatticePath(v92, v10);
      if ((*a3)(v92, v14))
      {
        a1 = v10;
        do
        {
          a1 = (a1 + 448);
        }

        while (((*a3)(v92, a1) & 1) == 0);
      }

      else
      {
        v46 = (v10 + 448);
        do
        {
          a1 = v46;
          if (v46 >= a2)
          {
            break;
          }

          v47 = (*a3)(v92, v46);
          v46 = (a1 + 448);
        }

        while (!v47);
      }

      v48 = a2;
      if (a1 < a2)
      {
        v48 = a2;
        do
        {
          v48 -= 448;
        }

        while (((*a3)(v92, v48) & 1) != 0);
      }

      while (a1 < v48)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a1, v48);
        do
        {
          a1 = (a1 + 448);
        }

        while (!(*a3)(v92, a1));
        do
        {
          v48 -= 448;
        }

        while (((*a3)(v92, v48) & 1) != 0);
      }

      if ((a1 - 448) != v10)
      {
        CRCHLatticePath::operator=(v10, a1 - 448);
      }

      CRCHLatticePath::operator=(a1 - 448, v92);
      CRCHLatticePath::~CRCHLatticePath(v92);
      a5 = 0;
      goto LABEL_1;
    }

    CRCHLatticePath::CRCHLatticePath(v92, v10);
    v38 = 0;
    do
    {
      v39 = (*a3)((v10 + v38 + 448), v92);
      v38 += 448;
    }

    while ((v39 & 1) != 0);
    v40 = v10 + v38;
    v41 = a2;
    if (v38 == 448)
    {
      v41 = a2;
      do
      {
        if (v40 >= v41)
        {
          break;
        }

        v41 = (v41 - 448);
      }

      while (((*a3)(v41, v92) & 1) == 0);
    }

    else
    {
      do
      {
        v41 = (v41 - 448);
      }

      while (!(*a3)(v41, v92));
    }

    if (v40 >= v41)
    {
      v44 = (v40 - 448);
    }

    else
    {
      v42 = (v10 + v38);
      v43 = v41;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v42, v43);
        do
        {
          v42 = (v42 + 448);
        }

        while (((*a3)(v42, v92) & 1) != 0);
        do
        {
          v43 -= 448;
        }

        while (!(*a3)(v43, v92));
      }

      while (v42 < v43);
      v44 = (v42 - 448);
    }

    if (v44 != v10)
    {
      CRCHLatticePath::operator=(v10, v44);
    }

    CRCHLatticePath::operator=(v44, v92);
    CRCHLatticePath::~CRCHLatticePath(v92);
    if (v40 < v41)
    {
      goto LABEL_87;
    }

    v45 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*>(v10, v44, a3);
    a1 = (v44 + 448);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*>(v44 + 448, a2, a3))
    {
      if (v45)
      {
        goto LABEL_1;
      }

LABEL_87:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,false>(v10, v44, a3, a4, a5 & 1);
      a5 = 0;
      a1 = (v44 + 448);
      goto LABEL_1;
    }

    a2 = v44;
    if (v45)
    {
      return;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,0>(v10, (v10 + 448), (v10 + 896), v10 + 1344, a3);
  if ((*a3)((a2 - 448), (v10 + 1344)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v10 + 1344), a2 - 448);
    if ((*a3)((v10 + 1344), (v10 + 896)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((v10 + 896), v10 + 1344);
      if ((*a3)((v10 + 896), (v10 + 448)))
      {
        v52 = (v10 + 448);
        v53 = v10 + 896;
        goto LABEL_171;
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(CRCHLatticePath *a1, uint64_t a2)
{
  CRCHLatticePath::CRCHLatticePath(v4, a1);
  CRCHLatticePath::operator=(a1, a2);
  CRCHLatticePath::operator=(a2, v4);
  CRCHLatticePath::~CRCHLatticePath(v4);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,0>(CRCHLatticePath *a1, CRCHLatticePath *a2, CRCHLatticePath *a3, uint64_t a4, uint64_t (**a5)(CRCHLatticePath *, CRCHLatticePath *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a3, a4);
    if ((*a5)(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a2, a3);
      if ((*a5)(a2, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a1, a2);
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*>(uint64_t a1, const CRCHLatticePath *a2, uint64_t (**a3)(CRCHLatticePath *, CRCHLatticePath *))
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 6);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*a3)((a2 - 448), a1))
      {
        v7 = a1;
        v8 = a2 - 448;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v7, v8);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v15 = (a1 + 896);
    v16 = (*a3)((a1 + 448), a1);
    v17 = (*a3)((a1 + 896), (a1 + 448));
    if (v16)
    {
      if (v17)
      {
        v18 = a1;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a1, a1 + 448);
        if (!(*a3)((a1 + 896), (a1 + 448)))
        {
          goto LABEL_35;
        }

        v18 = (a1 + 448);
      }

      v19 = a1 + 896;
    }

    else
    {
      if (!v17 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((a1 + 448), a1 + 896), !(*a3)((a1 + 448), a1)))
      {
LABEL_35:
        v20 = (a1 + 1344);
        if ((a1 + 1344) != a2)
        {
          v21 = 0;
          v22 = 0;
          while (1)
          {
            if ((*a3)(v20, v15))
            {
              CRCHLatticePath::CRCHLatticePath(v28, v20);
              v23 = v21;
              while (1)
              {
                CRCHLatticePath::operator=(a1 + v23 + 1344, a1 + v23 + 896);
                if (v23 == -896)
                {
                  break;
                }

                v24 = (*a3)(v28, (a1 + v23 + 448));
                v23 -= 448;
                if ((v24 & 1) == 0)
                {
                  v25 = a1 + v23 + 1344;
                  goto LABEL_43;
                }
              }

              v25 = a1;
LABEL_43:
              CRCHLatticePath::operator=(v25, v28);
              if (++v22 == 8)
              {
                v26 = (v20 + 448) == a2;
                CRCHLatticePath::~CRCHLatticePath(v28);
                return v26;
              }

              CRCHLatticePath::~CRCHLatticePath(v28);
            }

            v15 = v20;
            v21 += 448;
            v20 = (v20 + 448);
            if (v20 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = a1 + 448;
      v18 = a1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v18, v19);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,0>(a1, (a1 + 448), (a1 + 896), a2 - 448, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v9 = a2 - 448;
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CRCHLatticePath const&,CRCHLatticePath const&),CRCHLatticePath*,0>(a1, (a1 + 448), (a1 + 896), a1 + 1344, a3);
    if (!(*a3)(v9, (a1 + 1344)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((a1 + 1344), v9);
    if (!(*a3)((a1 + 1344), (a1 + 896)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>((a1 + 896), a1 + 1344);
    if (!(*a3)((a1 + 896), (a1 + 448)))
    {
      return 1;
    }

    v10 = (a1 + 448);
    v11 = a1 + 896;
    goto LABEL_22;
  }

  v12 = (a2 - 448);
  v13 = (*a3)((a1 + 448), a1);
  v14 = (*a3)(v12, (a1 + 448));
  if (v13)
  {
    if (v14)
    {
      v7 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(a1, a1 + 448);
      if (!(*a3)(v12, (a1 + 448)))
      {
        return 1;
      }

      v7 = (a1 + 448);
    }

    v8 = v12;
    goto LABEL_30;
  }

  if (v14)
  {
    v10 = (a1 + 448);
    v11 = v12;
LABEL_22:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CRCHLatticePath *&,CRCHLatticePath *&>(v10, v11);
    if ((*a3)((a1 + 448), a1))
    {
      v8 = a1 + 448;
      v7 = a1;
      goto LABEL_30;
    }
  }

  return 1;
}

uint64_t CRCHLatticePath::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *a1;
    if (*a1)
    {
      free(v4);
      *a1 = 0;
    }

    if (*a2)
    {
      v5 = malloc_type_malloc(4 * *(a2 + 16), 0x100004052888210uLL);
      *a1 = v5;
      memcpy(v5, *a2, 4 * *(a2 + 24));
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      free(v6);
      *(a1 + 8) = 0;
    }

    if (*(a2 + 8))
    {
      v7 = malloc_type_malloc(4 * *(a2 + 16), 0x100004052888210uLL);
      *(a1 + 8) = v7;
      memcpy(v7, *(a2 + 8), 4 * *(a2 + 24));
    }

    v8 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 64), v8, *(a2 + 72), (*(a2 + 72) - v8) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    objc_storeStrong((a1 + 232), *(a2 + 232));
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    std::vector<_NSRange>::__assign_with_size[abi:ne200100]<_NSRange*,_NSRange*>((a1 + 288), *(a2 + 288), *(a2 + 296), (*(a2 + 296) - *(a2 + 288)) >> 4);
    std::vector<_NSRange>::__assign_with_size[abi:ne200100]<_NSRange*,_NSRange*>((a1 + 312), *(a2 + 312), *(a2 + 320), (*(a2 + 320) - *(a2 + 312)) >> 4);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 336), *(a2 + 336), *(a2 + 344), (*(a2 + 344) - *(a2 + 336)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 360), *(a2 + 360), *(a2 + 368), (*(a2 + 368) - *(a2 + 360)) >> 3);
    std::vector<BOOL>::operator=(a1 + 384, a2 + 384);
    std::vector<BOOL>::operator=(a1 + 408, a2 + 408);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 248), *(a2 + 248), *(a2 + 256), (*(a2 + 256) - *(a2 + 248)) >> 3);
  }

  return a1;
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t CRCHFixedHeap<double,NodePairPtr>::upheap(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a2 + 16 * a3;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = 2147483650.0;
  if (result)
  {
    v6 = -2147483650.0;
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  while (1)
  {
    v7 = a3;
    a3 >>= 1;
    v8 = *(a2 + 16 * a3);
    if ((result & 1) == 0)
    {
      break;
    }

    if (v4 > v8)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (v7)
    {
      v9 = a2 + 16 * v7;
      *v9 = v8;
      *(v9 + 8) = *(a2 + 16 * a3 + 8);
    }
  }

  if (v4 >= v8)
  {
    goto LABEL_8;
  }

LABEL_10:
  v10 = a2 + 16 * v7;
  *v10 = v4;
  *(v10 + 8) = v5;
  return result;
}

void *std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void CRCHFixedHeap<double,LatticePathPtr>::CRCHFixedHeap(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  operator new[]();
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(LatticePathPtr const&,LatticePathPtr const&),LatticePathPtr*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v130 = a2 - 1;
  v131 = a2;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = v8;
  while (1)
  {
    v8 = v11;
    v12 = a2 - v11;
    v13 = v12 - 2;
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v62 = v11 + 1;
        v73 = (*a3)(v11 + 1, v11);
        v72 = v130;
        result = (*a3)(v130, v11 + 1);
        if (v73)
        {
          v71 = *v11;
          if (result)
          {
LABEL_133:
            if (v11 == v72)
            {
              goto LABEL_241;
            }
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v71;
            result = (*a3)(v130, v11 + 1);
            if (!result)
            {
              return result;
            }

            v71 = *v62;
            v8 = v11 + 1;
            v72 = v130;
            if (v62 == v130)
            {
              goto LABEL_241;
            }
          }

LABEL_240:
          *v8 = *v72;
LABEL_241:
          *v72 = v71;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v113 = *v62;
        if (v62 != v130)
        {
          *v62 = *v130;
        }

        *v130 = v113;
LABEL_238:
        result = (*a3)(v62, v11);
        if ((result & 1) == 0)
        {
          return result;
        }

        v71 = *v11;
        v72 = v62;
        goto LABEL_240;
      }

      if (v12 != 4)
      {
        if (v12 != 5)
        {
          goto LABEL_10;
        }

        v62 = v11 + 1;
        v63 = v11 + 2;
        v64 = v11 + 3;
        v65 = (*a3)(v11 + 1, v11);
        v66 = (*a3)(v11 + 2, v11 + 1);
        if (v65)
        {
          v67 = *v11;
          if (v66)
          {
            v68 = v11 + 2;
            v69 = v11;
            v70 = v130;
LABEL_216:
            *v69 = *v68;
            *v68 = v67;
LABEL_217:
            if ((*a3)(v11 + 3, v11 + 2))
            {
              v121 = *v63;
              *v63 = *v64;
              *v64 = v121;
              if ((*a3)(v11 + 2, v11 + 1))
              {
                v122 = v11[1];
                v11[1] = v11[2];
                v11[2] = v122;
                if ((*a3)(v11 + 1, v11))
                {
                  v123 = *v11;
                  *v11 = v11[1];
                  v11[1] = v123;
                }
              }
            }

            result = (*a3)(v70, v11 + 3);
            if (!result)
            {
              return result;
            }

            v124 = *v64;
            if (v64 != v130)
            {
              *v64 = *v130;
            }

            *v130 = v124;
            result = (*a3)(v11 + 3, v11 + 2);
            if (!result)
            {
              return result;
            }

            v125 = *v63;
            *v63 = *v64;
            *v64 = v125;
            goto LABEL_236;
          }

          *v11 = v11[1];
          v11[1] = v67;
          v120 = (*a3)(v11 + 2, v11 + 1);
          v69 = v11 + 1;
          v68 = v11 + 2;
          v70 = v130;
          if (!v120)
          {
            goto LABEL_217;
          }
        }

        else
        {
          v70 = v130;
          if (!v66)
          {
            goto LABEL_217;
          }

          v111 = v11[1];
          v11[1] = v11[2];
          v11[2] = v111;
          v112 = (*a3)(v11 + 1, v11);
          v69 = v11;
          v68 = v11 + 1;
          if ((v112 & 1) == 0)
          {
            goto LABEL_217;
          }
        }

        v67 = *v69;
        goto LABEL_216;
      }

      v62 = v11 + 1;
      v63 = v11 + 2;
      v74 = (*a3)(v11 + 1, v11);
      v75 = (*a3)(v11 + 2, v11 + 1);
      if (v74)
      {
        v76 = *v11;
        v77 = v130;
        if (v75)
        {
          v78 = v11 + 2;
          v79 = v11;
LABEL_231:
          *v79 = *v78;
          *v78 = v76;
          goto LABEL_232;
        }

        *v11 = v11[1];
        v11[1] = v76;
        v126 = (*a3)(v11 + 2, v11 + 1);
        v79 = v11 + 1;
        v78 = v11 + 2;
        if (!v126)
        {
LABEL_232:
          result = (*a3)(v77, v11 + 2);
          if (!result)
          {
            return result;
          }

          v127 = *v63;
          if (v63 != v130)
          {
            *v63 = *v130;
          }

          *v130 = v127;
LABEL_236:
          result = (*a3)(v63, v62);
          if (!result)
          {
            return result;
          }

          v128 = v11[1];
          v11[1] = v11[2];
          v11[2] = v128;
          goto LABEL_238;
        }
      }

      else
      {
        v77 = v130;
        if (!v75)
        {
          goto LABEL_232;
        }

        v114 = v11[1];
        v11[1] = v11[2];
        v11[2] = v114;
        v115 = (*a3)(v11 + 1, v11);
        v79 = v11;
        v78 = v11 + 1;
        if ((v115 & 1) == 0)
        {
          goto LABEL_232;
        }
      }

      v76 = *v79;
      goto LABEL_231;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      break;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v80 = v11 + 1;
      v81 = v11 == a2 || v80 == a2;
      v82 = v81;
      if (a5)
      {
        if ((v82 & 1) == 0)
        {
          v83 = 0;
          v84 = v11;
          do
          {
            v85 = v84;
            v84 = v80;
            result = (*a3)(v80, v85);
            if (result)
            {
              v133 = *v84;
              v86 = v83;
              while (1)
              {
                *(v11 + v86 + 8) = *(v11 + v86);
                if (!v86)
                {
                  break;
                }

                v86 -= 8;
                result = (*a3)(&v133, (v11 + v86));
                if ((result & 1) == 0)
                {
                  v87 = (v11 + v86 + 8);
                  goto LABEL_153;
                }
              }

              v87 = v11;
LABEL_153:
              if (v87 != &v133)
              {
                *v87 = v133;
              }
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if ((v82 & 1) == 0)
      {
        do
        {
          v116 = v8;
          v8 = v80;
          result = (*a3)(v80, v116);
          if (result)
          {
            v133 = *v8;
            v117 = v8;
            do
            {
              v118 = v117;
              v119 = *--v117;
              *v118 = v119;
              result = (*a3)(&v133, v118 - 2);
            }

            while ((result & 1) != 0);
            if (v117 != &v133)
            {
              *v117 = v133;
            }
          }

          v80 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v88 = v13 >> 1;
        v89 = v13 >> 1;
        do
        {
          v90 = v89;
          if (v88 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v8[v91];
            if (2 * v89 + 2 < v12 && (*a3)(&v8[v91], v92 + 1))
            {
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v93 = &v8[v90];
            result = (*a3)(v92, v93);
            if ((result & 1) == 0)
            {
              v133 = *v93;
              do
              {
                v94 = v92;
                if (v93 != v92)
                {
                  *v93 = *v92;
                }

                if (v88 < v91)
                {
                  break;
                }

                v95 = (2 * v91) | 1;
                v92 = &v8[v95];
                v96 = 2 * v91 + 2;
                if (v96 < v12 && (*a3)(&v8[v95], v92 + 1))
                {
                  ++v92;
                  v95 = v96;
                }

                result = (*a3)(v92, &v133);
                v93 = v94;
                v91 = v95;
                a2 = v131;
              }

              while (!result);
              if (v94 != &v133)
              {
                *v94 = v133;
              }
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        do
        {
          v97 = a2;
          v98 = 0;
          v132 = *v8;
          v99 = v8;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = 2 * v98;
            v98 = (2 * v98) | 1;
            v103 = v102 + 2;
            if (v102 + 2 < v12)
            {
              v104 = v100 + 2;
              result = (*a3)(v100 + 1, v100 + 2);
              if (result)
              {
                v101 = v104;
                v98 = v103;
              }
            }

            if (v99 != v101)
            {
              *v99 = *v101;
            }

            v99 = v101;
          }

          while (v98 <= ((v12 - 2) >> 1));
          a2 = v97 - 1;
          if (v101 == v97 - 1)
          {
            *v101 = v132;
          }

          else
          {
            *v101 = *a2;
            *a2 = v132;
            v105 = (v101 - v8 + 8) >> 3;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v8[v107 >> 1];
              result = (*a3)(v109, v101);
              if (result)
              {
                v133 = *v101;
                do
                {
                  v110 = v109;
                  if (v101 != v109)
                  {
                    *v101 = *v109;
                  }

                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v8[v108];
                  result = (*a3)(v109, &v133);
                  v101 = v110;
                }

                while ((result & 1) != 0);
                if (v110 != &v133)
                {
                  *v110 = v133;
                }
              }
            }
          }

          v106 = v12-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = v10;
    v15 = v12 >> 1;
    v16 = &v11[v12 >> 1];
    if (v12 >= 0x81)
    {
      v17 = (*a3)(&v11[v12 >> 1], v11);
      v18 = (*a3)(v130, v16);
      if (v17)
      {
        v19 = *v11;
        if (v18)
        {
          v20 = v130;
          v21 = v11;
          if (v11 == v130)
          {
LABEL_35:
            *v20 = v19;
            goto LABEL_36;
          }
        }

        else
        {
          *v11 = *v16;
          *v16 = v19;
          if (!(*a3)(v130, v16))
          {
            goto LABEL_36;
          }

          v19 = *v16;
          v20 = v130;
          v21 = v16;
          if (v16 == v130)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        *v21 = *v20;
        goto LABEL_35;
      }

      if (v18)
      {
        v26 = *v16;
        if (v16 != v130)
        {
          *v16 = *v130;
        }

        *v130 = v26;
        if ((*a3)(v16, v11))
        {
          v19 = *v11;
          v20 = v16;
          v21 = v11;
          goto LABEL_34;
        }
      }

LABEL_36:
      v29 = v15;
      v30 = v11 + 1;
      v31 = &v8[v29 - 1];
      v32 = (*a3)(v31, v8 + 1);
      v33 = (*a3)(v9, v31);
      if (v32)
      {
        v34 = *v30;
        if (v33)
        {
          v35 = v9;
          if (v30 == v9)
          {
LABEL_51:
            *v35 = v34;
            goto LABEL_52;
          }
        }

        else
        {
          *v30 = *v31;
          *v31 = v34;
          if (!(*a3)(v9, &v8[v29 - 1]))
          {
            goto LABEL_52;
          }

          v34 = *v31;
          v35 = v9;
          v30 = &v8[v29 - 1];
          if (v31 == v9)
          {
            goto LABEL_51;
          }
        }

LABEL_50:
        *v30 = *v35;
        goto LABEL_51;
      }

      if (v33)
      {
        v36 = *v31;
        if (v31 != v9)
        {
          *v31 = *v9;
        }

        *v9 = v36;
        if ((*a3)(&v8[v29 - 1], v8 + 1))
        {
          v34 = *v30;
          v35 = &v8[v29 - 1];
          goto LABEL_50;
        }
      }

LABEL_52:
      v37 = v8 + 2;
      v38 = &v8[v29 + 1];
      v39 = (*a3)(v38, v8 + 2);
      v40 = (*a3)(v14, v38);
      if (v39)
      {
        v41 = *v37;
        if (v40)
        {
          v10 = v14;
          v42 = v14;
          if (v37 == v14)
          {
LABEL_64:
            *v42 = v41;
            goto LABEL_65;
          }
        }

        else
        {
          *v37 = *v38;
          *v38 = v41;
          v10 = v14;
          if (!(*a3)(v14, v38))
          {
            goto LABEL_65;
          }

          v41 = *v38;
          v42 = v14;
          v37 = v38;
          if (v38 == v14)
          {
            goto LABEL_64;
          }
        }

LABEL_63:
        *v37 = *v42;
        goto LABEL_64;
      }

      v10 = v14;
      if (v40)
      {
        v43 = *v38;
        if (v38 != v14)
        {
          *v38 = *v14;
        }

        *v14 = v43;
        if ((*a3)(v38, v8 + 2))
        {
          v41 = *v37;
          v42 = v38;
          goto LABEL_63;
        }
      }

LABEL_65:
      v44 = (*a3)(v16, v31);
      v45 = (*a3)(v38, v16);
      if (v44)
      {
        v46 = *v31;
        if ((v45 & 1) == 0)
        {
          *v31 = *v16;
          *v16 = v46;
          v31 = v16;
          if (!(*a3)(v38, v16))
          {
            goto LABEL_73;
          }

LABEL_71:
          v46 = *v31;
        }

        *v31 = *v38;
        *v38 = v46;
        goto LABEL_73;
      }

      if (v45)
      {
        v47 = *v16;
        *v16 = *v38;
        *v38 = v47;
        v38 = v16;
        if ((*a3)(v16, v31))
        {
          goto LABEL_71;
        }
      }

LABEL_73:
      v22 = v8;
      a2 = v131;
LABEL_74:
      v25 = *v22;
LABEL_75:
      *v22 = *v16;
      goto LABEL_76;
    }

    v22 = &v11[v12 >> 1];
    v23 = (*a3)(v8, &v8[v12 >> 1]);
    v24 = (*a3)(v130, v8);
    if ((v23 & 1) == 0)
    {
      v10 = v14;
      if (!v24)
      {
        goto LABEL_77;
      }

      v27 = *v8;
      if (v8 != v130)
      {
        *v8 = *v130;
      }

      *v130 = v27;
      v28 = (*a3)(v8, v16);
      v16 = v8;
      if ((v28 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_74;
    }

    v25 = *v16;
    v10 = v14;
    if (v24)
    {
      v81 = v16 == v130;
      v16 = v130;
      if (v81)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    *v16 = *v8;
    *v8 = v25;
    if (!(*a3)(v130, v8))
    {
      goto LABEL_77;
    }

    v25 = *v8;
    v16 = v130;
    v22 = v8;
    if (v8 != v130)
    {
      goto LABEL_75;
    }

LABEL_76:
    *v16 = v25;
LABEL_77:
    --a4;
    if (a5 & 1) != 0 || ((*a3)(v8 - 1, v8))
    {
      v48 = v9;
      v49 = 0;
      v133 = *v8;
      do
      {
        ++v49;
      }

      while (((*a3)(&v8[v49], &v133) & 1) != 0);
      v50 = &v8[v49];
      v51 = a2;
      v81 = v49 == 1;
      v9 = v48;
      if (v81)
      {
        v51 = a2;
        do
        {
          if (v50 >= v51)
          {
            break;
          }

          --v51;
        }

        while (((*a3)(v51, &v133) & 1) == 0);
      }

      else
      {
        do
        {
          --v51;
        }

        while (!(*a3)(v51, &v133));
      }

      if (v50 >= v51)
      {
        v55 = v50 - 1;
      }

      else
      {
        v52 = v50;
        v53 = v51;
        do
        {
          v54 = *v52;
          *v52 = *v53;
          *v53 = v54;
          do
          {
            ++v52;
          }

          while (((*a3)(v52, &v133) & 1) != 0);
          do
          {
            --v53;
          }

          while (!(*a3)(v53, &v133));
        }

        while (v52 < v53);
        v55 = v52 - 1;
      }

      if (v55 != v8)
      {
        *v8 = *v55;
      }

      if (v55 != &v133)
      {
        *v55 = v133;
      }

      v56 = v50 >= v51;
      v10 = v14;
      if (!v56)
      {
        goto LABEL_103;
      }

      v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(LatticePathPtr const&,LatticePathPtr const&),LatticePathPtr*>(v8, v55, a3);
      v11 = v55 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(LatticePathPtr const&,LatticePathPtr const&),LatticePathPtr*>(v55 + 1, a2, a3);
      if (result)
      {
        a2 = v55;
        if (!v57)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v57)
      {
LABEL_103:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(LatticePathPtr const&,LatticePathPtr const&),LatticePathPtr*,false>(v8, v55, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v55 + 1;
      }
    }

    else
    {
      v133 = *v8;
      result = (*a3)(&v133, v130);
      if (result)
      {
        v11 = v8;
        do
        {
          result = (*a3)(&v133, ++v11);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v58 = v8 + 1;
        do
        {
          v11 = v58;
          if (v58 >= a2)
          {
            break;
          }

          result = (*a3)(&v133, v58);
          v58 = v11 + 1;
        }

        while (!result);
      }

      v59 = a2;
      if (v11 < a2)
      {
        v59 = a2;
        do
        {
          result = (*a3)(&v133, --v59);
        }

        while ((result & 1) != 0);
      }

      while (v11 < v59)
      {
        v60 = *v11;
        *v11 = *v59;
        *v59 = v60;
        do
        {
          ++v11;
        }

        while (!(*a3)(&v133, v11));
        do
        {
          result = (*a3)(&v133, --v59);
        }

        while ((result & 1) != 0);
      }

      v61 = v11 - 1;
      if (v11 - 1 != v8)
      {
        *v8 = *v61;
      }

      if (v61 != &v133)
      {
        *v61 = v133;
      }

      a5 = 0;
    }
  }

  result = (*a3)(v130, v11);
  if (result)
  {
    v71 = *v11;
    v72 = v130;
    goto LABEL_133;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(LatticePathPtr const&,LatticePathPtr const&),LatticePathPtr*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v5 = a1;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 != 5)
        {
          goto LABEL_20;
        }

        v8 = a1 + 1;
        v9 = a1 + 2;
        v10 = a1 + 3;
        v11 = a2 - 1;
        v12 = (*a3)(a1 + 1, a1);
        v13 = (*a3)(v5 + 2, v5 + 1);
        if (v12)
        {
          v14 = *v5;
          if (v13)
          {
            v15 = v5 + 2;
            v16 = v5;
LABEL_62:
            *v16 = *v15;
            *v15 = v14;
LABEL_63:
            if ((*a3)(v5 + 3, v5 + 2))
            {
              v51 = *v9;
              *v9 = *v10;
              *v10 = v51;
              if ((*a3)(v5 + 2, v5 + 1))
              {
                v52 = v5[1];
                v5[1] = v5[2];
                v5[2] = v52;
                if ((*a3)(v5 + 1, v5))
                {
                  v53 = *v5;
                  *v5 = v5[1];
                  v5[1] = v53;
                }
              }
            }

            if (!(*a3)(v11, v5 + 3))
            {
              return 1;
            }

            v54 = *v10;
            if (v10 != v11)
            {
              *v10 = *v11;
            }

            *v11 = v54;
            if (!(*a3)(v5 + 3, v5 + 2))
            {
              return 1;
            }

            v55 = *v9;
            *v9 = *v10;
            *v10 = v55;
            goto LABEL_79;
          }

          *v5 = v5[1];
          v5[1] = v14;
          v50 = (*a3)(v5 + 2, v5 + 1);
          v16 = v5 + 1;
          v15 = v5 + 2;
          if (!v50)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_63;
          }

          v39 = v5[1];
          v5[1] = v5[2];
          v5[2] = v39;
          v40 = (*a3)(v5 + 1, v5);
          v16 = v5;
          v15 = v5 + 1;
          if ((v40 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        v14 = *v16;
        goto LABEL_62;
      }

      v8 = a1 + 1;
      v9 = a1 + 2;
      v30 = a2 - 1;
      v31 = (*a3)(a1 + 1, a1);
      v32 = (*a3)(v5 + 2, v5 + 1);
      if (v31)
      {
        v33 = *v5;
        if (v32)
        {
          v34 = v5 + 2;
          v35 = v5;
LABEL_74:
          *v35 = *v34;
          *v34 = v33;
          goto LABEL_75;
        }

        *v5 = v5[1];
        v5[1] = v33;
        v56 = (*a3)(v5 + 2, v5 + 1);
        v35 = v5 + 1;
        v34 = v5 + 2;
        if (!v56)
        {
LABEL_75:
          if (!(*a3)(v30, v5 + 2))
          {
            return 1;
          }

          v57 = *v9;
          if (v9 != v30)
          {
            *v9 = *v30;
          }

          *v30 = v57;
LABEL_79:
          if ((*a3)(v9, v8))
          {
            v58 = v5[1];
            v5[1] = v5[2];
            v5[2] = v58;
            if ((*a3)(v8, v5))
            {
              v59 = *v5;
              *v5 = v5[1];
              v5[1] = v59;
            }
          }

          return 1;
        }
      }

      else
      {
        if (!v32)
        {
          goto LABEL_75;
        }

        v41 = v5[1];
        v5[1] = v5[2];
        v5[2] = v41;
        v42 = (*a3)(v5 + 1, v5);
        v35 = v5;
        v34 = v5 + 1;
        if ((v42 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      v33 = *v35;
      goto LABEL_74;
    }

    v19 = a1 + 1;
    v20 = a2 - 1;
    v21 = (*a3)(a1 + 1, a1);
    v22 = (*a3)(v20, v5 + 1);
    if (v21)
    {
      v23 = *v5;
      if (v22)
      {
        if (v20 == v5)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v5 = v5[1];
        v5[1] = v23;
        if (!(*a3)(v20, v5 + 1))
        {
          return 1;
        }

        v23 = *v19;
        ++v5;
        if (v19 == v20)
        {
LABEL_43:
          *v20 = v23;
          return 1;
        }
      }
    }

    else
    {
      if (!v22)
      {
        return 1;
      }

      v36 = *v19;
      if (v19 != v20)
      {
        *v19 = *v20;
      }

      *v20 = v36;
      if (!(*a3)(v5 + 1, v5))
      {
        return 1;
      }

      v23 = *v5;
      v20 = v5 + 1;
    }

    *v5 = *v20;
    goto LABEL_43;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v17 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v18 = *v5;
      if (v17 != v5)
      {
        *v5 = *v17;
      }

      *v17 = v18;
    }

    return 1;
  }

LABEL_20:
  v24 = a1 + 2;
  v25 = a1 + 1;
  v26 = (*a3)(a1 + 1, a1);
  v27 = (*a3)(v5 + 2, v5 + 1);
  if (v26)
  {
    v28 = *v5;
    if (v27)
    {
      v25 = v5 + 2;
      v29 = v5;
LABEL_46:
      *v29 = *v25;
      *v25 = v28;
      goto LABEL_47;
    }

    *v5 = v5[1];
    v5[1] = v28;
    v43 = (*a3)(v5 + 2, v5 + 1);
    v29 = v5 + 1;
    v25 = v5 + 2;
    if (!v43)
    {
      goto LABEL_47;
    }

LABEL_45:
    v28 = *v29;
    goto LABEL_46;
  }

  if (v27)
  {
    v37 = v5[1];
    v5[1] = v5[2];
    v5[2] = v37;
    v38 = (*a3)(v5 + 1, v5);
    v29 = v5;
    if (v38)
    {
      goto LABEL_45;
    }
  }

LABEL_47:
  v44 = v5 + 3;
  if (v5 + 3 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    if ((*a3)(v44, v24))
    {
      v60 = *v44;
      v47 = v45;
      while (1)
      {
        v48 = v5 + v47;
        *(v5 + v47 + 24) = *(v5 + v47 + 16);
        if (v47 == -16)
        {
          break;
        }

        v47 -= 8;
        if (((*a3)(&v60, v48 + 1) & 1) == 0)
        {
          v49 = (v5 + v47 + 24);
          goto LABEL_55;
        }
      }

      v49 = v5;
LABEL_55:
      if (v49 != &v60)
      {
        *v49 = v60;
      }

      if (++v46 == 8)
      {
        return v44 + 1 == a2;
      }
    }

    v24 = v44;
    v45 += 8;
    if (++v44 == a2)
    {
      return 1;
    }
  }
}

double *CRCHFixedHeap<double,LatticePathPtr>::remove(double *result, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  if (!v3)
  {
    result[1] = 0.0;
    *result = *v2;
    if (v2 != result)
    {
      result[1] = v2[1];
    }

    return result;
  }

  result[1] = 0.0;
  v4 = v2[2];
  *result = v4;
  if (v2 + 2 != result)
  {
    result[1] = v2[3];
  }

  v5 = v3 - 1;
  a2[2] = v3 - 1;
  if (v3 == 1)
  {
    v6 = *(v2 + 3);
    goto LABEL_9;
  }

  v7 = &v2[2 * v3];
  v4 = *v7;
  v2[2] = *v7;
  v6 = *(v7 + 1);
  *(v2 + 3) = v6;
  if (v3 >= 3)
  {
    v10 = *a2;
    v8 = 1;
    while (1)
    {
      v11 = 2 * v8;
      if (2 * v8 >= v5)
      {
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = (16 * (v11 | 1));
        v12 = *(result + v2);
        v13 = v2[4 * v8];
        if (!v10)
        {
          if (v12 > v13)
          {
            v11 |= 1uLL;
          }

LABEL_23:
          v14 = v2[2 * v11];
          if (v14 <= v4)
          {
            goto LABEL_10;
          }

          goto LABEL_24;
        }

        if (v12 < v13)
        {
          v11 |= 1uLL;
        }
      }

      v14 = v2[2 * v11];
      if (v14 >= v4)
      {
        goto LABEL_10;
      }

LABEL_24:
      if (v8 != v11)
      {
        v15 = &v2[2 * v8];
        *v15 = v14;
        v15[1] = v2[2 * v11 + 1];
      }

      v8 = v11;
      if (v11 > v5 >> 1)
      {
        v8 = v11;
        goto LABEL_10;
      }
    }
  }

LABEL_9:
  v8 = 1;
LABEL_10:
  v9 = &v2[2 * v8];
  *v9 = v4;
  *(v9 + 1) = v6;
  if (a2[4] == v3)
  {
    return CRCHFixedHeap<double,LatticePathPtr>::updateWorstKV(a2);
  }

  return result;
}