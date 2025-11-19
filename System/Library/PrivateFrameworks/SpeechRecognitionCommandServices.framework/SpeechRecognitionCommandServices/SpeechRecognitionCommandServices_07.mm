void sub_26B51EAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(va);
  v11 = *(v9 - 144);
  if (v11)
  {
    *(v9 - 136) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::ShortestDistance<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v13 = 0u;
  *__p = 0u;
  memset(v15, 0, sizeof(v15));
  a2[1] = *a2;
  fst::internal::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ShortestDistance(v6, *(a3 + 12));
  if (v15[20] == 1)
  {
    a2[1] = *a2;
    v4 = fst::TropicalWeightTpl<float>::NoWeight();
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, v4, v5);
  }

  if (__p[1])
  {
    *v15 = __p[1];
    operator delete(__p[1]);
  }

  if (v13[0])
  {
    operator delete(v13[0]);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void std::vector<fst::TropicalWeightTpl<float>>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<fst::TropicalWeightTpl<float>>::__append(a1, a2 - v4, a3, a4);
  }
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C090E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08888;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v3 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v4 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v8 = 0;
        __p[0] = v3;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v8;
        v6 = 0u;
        v7 = 0u;
        fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, __p);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26B51F85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  LogMessage::~LogMessage(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    MEMORY[0x26D6787B0](v30, 0x60C405BB7FD7CLL);
  }

  if (a10)
  {
    MEMORY[0x26D6787B0](a10, 0xC400A2AC0F1);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  (*(*a1 + 112))(a1, &v31);
  while (1)
  {
    result = v31;
    if (!v31)
    {
      if (v33 >= v32)
      {
        return result;
      }

LABEL_11:
      v15 = v33;
      goto LABEL_12;
    }

    v14 = (*(*v31 + 16))(v31);
    result = v31;
    if (v14)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_11;
    }

    v15 = (*(*v31 + 24))();
LABEL_12:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    (*(*a1 + 120))(a1, v15, &v28);
    while (1)
    {
      if (!v28)
      {
        if (v30 >= v29)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      if ((*(*v28 + 16))(v28))
      {
        break;
      }

      if (v28)
      {
        v16 = (*(*v28 + 24))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = *(&v28 + 1) + 16 * v30;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 12)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::TropicalWeightTpl<float>::One(), v20 = (v16 + 8), fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a4, (v16 + 8), v19)))
        {
          v21 = 1;
          goto LABEL_23;
        }

        if ((v18[v17] | 2) == 2)
        {
          v25 = fst::TropicalWeightTpl<float>::Zero();
          v35 = *v20;
          v34 = *v25;
          if (v35 == v34 || (v26 = fst::TropicalWeightTpl<float>::One(), v35 = *v20, v34 = *v26, v35 == v34))
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }

LABEL_23:
          v18[v17] = v21;
        }

        *a5 = 0;
      }

      v22 = fst::TropicalWeightTpl<float>::Zero();
      v35 = *(v16 + 8);
      v34 = *v22;
      v23.n128_f32[0] = v35;
      if (v35 != v34)
      {
        v24 = fst::TropicalWeightTpl<float>::One();
        v35 = *(v16 + 8);
        v34 = *v24;
        v23.n128_f32[0] = v35;
        if (v35 != v34)
        {
          *a6 = 0;
        }
      }

      if (v28)
      {
        (*(*v28 + 32))(v28, v23);
      }

      else
      {
        ++v30;
      }
    }

    if (v28)
    {
      (*(*v28 + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (*(&v29 + 1))
    {
      --**(&v29 + 1);
    }

LABEL_40:
    if (v31)
    {
      (*(*v31 + 32))(v31);
    }

    else
    {
      ++v33;
    }
  }

  if (v31)
  {
    return (*(*v31 + 8))();
  }

  return result;
}

void sub_26B51FE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = 0;
  v1 = a1 + 24;
  v2 = &v4;
  v3 = 0;
  fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_26B520018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B520868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v72 = a1 + 140;
LABEL_114:
    *v72 = 1;
    return result;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 16))();
  }

  v4 = a2;
  while (1)
  {
    v5 = a1[1];
    if (v4 < (v5[1] - *v5) >> 2)
    {
      break;
    }

    v6 = fst::TropicalWeightTpl<float>::Zero();
    v7 = v5[1];
    if (v7 >= v5[2])
    {
      v8 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v5, v6);
    }

    else
    {
      *v7 = *v6;
      v8 = (v7 + 1);
    }

    v5[1] = v8;
    v9 = *fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v73) = v9;
    v10 = a1[6];
    if (v10 >= a1[7])
    {
      v11 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v73);
    }

    else
    {
      *v10 = v9;
      v11 = (v10 + 1);
    }

    a1[6] = v11;
    v12 = *fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v73) = v12;
    v13 = a1[9];
    if (v13 >= a1[10])
    {
      v14 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v73);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[9] = v14;
    LOBYTE(v73) = 0;
    std::vector<BOOL>::push_back((a1 + 11), &v73);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v4 >= (a1[15] - i) >> 2; i = a1[14])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
    }

    *(i + 4 * v4) = *(a1 + 34);
  }

  *(*a1[1] + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  v16 = a1[5];
  *(v16 + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  v17 = a1[8];
  *(v17 + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  *(a1[11] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v4);
  v72 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_113;
    }

    v19 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v20 = a1[1];
      if (v19 < ((v20[1] - *v20) >> 2))
      {
        break;
      }

      v21 = fst::TropicalWeightTpl<float>::Zero();
      v22 = v20[1];
      if (v22 >= v20[2])
      {
        v23 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v20, v21);
      }

      else
      {
        *v22 = *v21;
        v23 = (v22 + 1);
      }

      v20[1] = v23;
      v24 = *fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v24;
      v25 = a1[6];
      if (v25 >= a1[7])
      {
        v26 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v73);
      }

      else
      {
        *v25 = v24;
        v26 = (v25 + 1);
      }

      a1[6] = v26;
      v27 = *fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v27;
      v28 = a1[9];
      if (v28 >= a1[10])
      {
        v29 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v73);
      }

      else
      {
        *v28 = v27;
        v29 = (v28 + 1);
      }

      a1[9] = v29;
      LOBYTE(v73) = 0;
      std::vector<BOOL>::push_back((a1 + 11), &v73);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 24))(&v76);
      v30 = fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v76;
      HIDWORD(v76) = *v30;
      v18.n128_u32[0] = v76;
      if (*&v76 != *(&v76 + 1))
      {
LABEL_113:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v18);
        if (!result)
        {
          return result;
        }

        goto LABEL_114;
      }
    }

    *(a1[11] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19);
    v31 = a1[8];
    v32 = *(v31 + 4 * v19);
    *(v31 + 4 * v19) = *fst::TropicalWeightTpl<float>::Zero();
    v33 = *a1;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    (*(*v33 + 120))(v33, v19, &v73);
    while (1)
    {
      if (v73)
      {
        if ((*(*v73 + 16))(v73))
        {
          goto LABEL_103;
        }

        if (v73)
        {
          v34 = (*(*v73 + 24))(v73);
          goto LABEL_45;
        }
      }

      else if (v75 >= v74)
      {
LABEL_103:
        v70 = 1;
        goto LABEL_105;
      }

      v34 = *(&v73 + 1) + 16 * v75;
LABEL_45:
      v35 = a1[1];
      v36 = v35 + 1;
      for (j = *(v34 + 12); j >= (v35[1] - *v35) >> 2; j = *(v34 + 12))
      {
        v38 = fst::TropicalWeightTpl<float>::Zero();
        v39 = *v36;
        if (*v36 >= v35[2])
        {
          v40 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v35, v38);
        }

        else
        {
          *v39 = *v38;
          v40 = (v39 + 1);
        }

        *v36 = v40;
        v41 = *fst::TropicalWeightTpl<float>::Zero();
        HIDWORD(v76) = v41;
        v42 = a1[6];
        if (v42 >= a1[7])
        {
          v43 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v76 + 1);
        }

        else
        {
          *v42 = v41;
          v43 = (v42 + 1);
        }

        a1[6] = v43;
        v44 = *fst::TropicalWeightTpl<float>::Zero();
        HIDWORD(v76) = v44;
        v45 = a1[9];
        if (v45 >= a1[10])
        {
          v46 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v76 + 1);
        }

        else
        {
          *v45 = v44;
          v46 = (v45 + 1);
        }

        a1[9] = v46;
        BYTE4(v76) = 0;
        std::vector<BOOL>::push_back((a1 + 11), &v76 + 4);
        v35 = a1[1];
        v36 = v35 + 1;
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v47 = a1[14];
          LODWORD(j) = *(v34 + 12);
          if (j < ((a1[15] - v47) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
        }

        if (*(v47 + 4 * j) != *(a1 + 34))
        {
          v48 = fst::TropicalWeightTpl<float>::Zero();
          v49 = *(v34 + 12);
          *(*a1[1] + 4 * v49) = *v48;
          v50 = a1[5];
          *(v50 + 4 * v49) = *fst::TropicalWeightTpl<float>::Zero();
          v51 = *(v34 + 12);
          v52 = a1[8];
          *(v52 + 4 * v51) = *fst::TropicalWeightTpl<float>::Zero();
          v53 = *(v34 + 12);
          *(a1[11] + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v53);
          *(a1[14] + 4 * v53) = *(a1 + 34);
          LODWORD(j) = *(v34 + 12);
        }
      }

      v54 = *a1[1];
      v55 = a1[5];
      v56 = a1[8];
      if (v32 == -INFINITY || (v57 = *(v34 + 8), v57 >= -INFINITY) && v57 <= -INFINITY)
      {
        v58 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v59 = v57 == INFINITY || v32 == INFINITY;
        v60 = v32 + v57;
        v58 = v59 ? INFINITY : v60;
      }

      v61 = *(v54 + 4 * j);
      if (v61 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
      {
        v62 = *fst::TropicalWeightTpl<float>::NoWeight();
        v61 = *(v54 + 4 * j);
      }

      else
      {
        v62 = v61 >= v58 ? v58 : *(v54 + 4 * j);
      }

      v63 = *(a1 + 7);
      v64 = v62 + v63;
      v65 = v63 + v61;
      if (v61 > v64 || v62 > v65)
      {
        break;
      }

LABEL_100:
      if (v73)
      {
        (*(*v73 + 32))(v73);
      }

      else
      {
        ++v75;
      }
    }

    v67 = *(v55 + 4 * j);
    if (v67 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
    {
      v67 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v67 >= v58)
    {
      v67 = v58;
    }

    *(v55 + 4 * j) = v67;
    *(v54 + 4 * j) = v67;
    v68 = *(v56 + 4 * j);
    if (v68 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
    {
      v68 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v68 >= v58)
    {
      v68 = v58;
    }

    *(v56 + 4 * j) = v68;
    if (*(v54 + 4 * j) != -INFINITY && v68 != -INFINITY)
    {
      v69 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v34 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v34 + 12)))
      {
        (*(v69 + 40))();
      }

      else
      {
        (*(v69 + 24))();
        *(a1[11] + ((*(v34 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v34 + 12);
      }

      goto LABEL_100;
    }

    v70 = 0;
    *v72 = 1;
LABEL_105:
    result = v73;
    if (v73)
    {
      result = (*(*v73 + 8))(v73);
    }

    else if (*(&v74 + 1))
    {
      --**(&v74 + 1);
    }
  }

  while ((v70 & 1) != 0);
  return result;
}

void sub_26B521338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void *fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ShortestDistanceState(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_26B52147C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ImplToMutableFst(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = &unk_287C08FC0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_287C08E98;
  return a1;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C090E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

float fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Final@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 56) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 64) - *(v2 + 56)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 56) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,0>();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 80) = a2;
  result = (*(*v4 + 16))(v4);
  *(v4 + 8) = result & 0xCCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

float fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetFinal(v6, a2, &v8);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x806A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    v2 = *(a1 + 8);
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    _ZNSt3__115allocate_sharedB8ne200100IN3fst8internal13VectorFstImplINS1_11VectorStateINS1_10ReverseArcINS1_6ArcTplINS1_17TropicalWeightTplIfEEEEEENS_9allocatorISA_EEEEEENSB_ISE_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v5);
  result = (*(*v5 + 16))(v5);
  v5[1] = (*(v5 + 2) | result) & 4 | 0x956A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(*(v6[7] + 8 * a2), a3);
  result = (*(*v6 + 16))(v6);
  v6[1] = v6[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[7] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 56);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 56) + 8 * a2) + 24);

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

void *_ZNSt3__120__shared_ptr_emplaceIN3fst8internal13VectorFstImplINS1_11VectorStateINS1_10ReverseArcINS1_6ArcTplINS1_17TropicalWeightTplIfEEEEEENS_9allocatorISA_EEEEEENSB_ISE_EEEC2B8ne200100IJESF_Li0EEESF_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08D78;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C08D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C08DC8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x956A5A950003;
  return a1;
}

void sub_26B52212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_287C08E38;
  v3 = a1 + 7;
  v2 = a1[7];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[7];
    }

    while (v4 < (a1[8] - v2) >> 3);
  }

  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);
}

void fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_287C08E68;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write stream method for ", 39);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write filename method for ", 41);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_26B522430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B522530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v12, __p);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "TestProperties: stored FST properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (stored: props1, computed: props2)", 35);
      LogMessage::~LogMessage(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, a3, 1);
  }
}

void sub_26B5226F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v45 = 0;
  v46 = v9;
  v43 = 0;
  v44 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v38 = &v43;
    *&v39 = 0;
    *(&v39 + 1) = &v46;
    v41 = 0u;
    v42 = 0u;
    fst::DfsVisit<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, &v38);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v33 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v46 = v13;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  (*(*a1 + 112))(a1, &v33);
  v14 = 0;
LABEL_13:
  if (!v33)
  {
    if (v35 >= v34)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v33 + 16))(v33))
  {
    if (v33)
    {
      v15 = (*(*v33 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      (*(*a1 + 120))(a1, v15, &v38);
      v16 = 1;
      while (v38)
      {
        if ((*(*v38 + 16))(v38))
        {
          if (v38)
          {
            (*(*v38 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v39 + 1))
          {
            --**(&v39 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          (*(*a1 + 24))(&v47, a1, v15);
          v27 = fst::TropicalWeightTpl<float>::Zero();
          LODWORD(v38) = v47;
          HIDWORD(v47) = *v27;
          if (*&v47 == *(&v47 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v47) != 1)
            {
              v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v28 = fst::TropicalWeightTpl<float>::One();
            LODWORD(v38) = v47;
            HIDWORD(v47) = *v28;
            v29.n128_u32[0] = v47;
            if (*&v47 != *(&v47 + 1))
            {
              v46 = v46 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }

            ++v14;
          }

          if (v33)
          {
            (*(*v33 + 32))(v33, v29);
          }

          else
          {
            ++v35;
          }

          goto LABEL_13;
        }

        if (!v38)
        {
          goto LABEL_29;
        }

        v17 = (*(*v38 + 24))();
LABEL_30:
        if (v37 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v37, v17))
        {
          v46 = v46 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        if (v36 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v36, v17 + 1))
        {
          v46 = v46 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
        }

        v18 = *v17;
        v19 = *v17;
        if (*v17 != v17[1])
        {
          v46 = v46 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v19 = v17[1];
        }

        if (v18 | v19)
        {
          if (v18)
          {
            if (!v19)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v20 = v46;
        }

        else
        {
          v20 = v46 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v46 = v20 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v19)
        {
LABEL_46:
          v46 = v46 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v16)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v16)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v18 < v11)
        {
          v46 = v46 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v19 < SHIDWORD(v11))
        {
          v46 = v46 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v21 = fst::TropicalWeightTpl<float>::One();
        HIDWORD(v47) = v17[2];
        LODWORD(v47) = *v21;
        v22.n128_u32[0] = HIDWORD(v47);
        if (*(&v47 + 1) != *&v47)
        {
          v23 = fst::TropicalWeightTpl<float>::Zero();
          HIDWORD(v47) = v17[2];
          LODWORD(v47) = *v23;
          v22.n128_u32[0] = HIDWORD(v47);
          if (*(&v47 + 1) != *&v47)
          {
            v24 = v46;
            v25 = v46 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            v46 = v25;
            if ((v24 & 0x800000000000) != 0 && v43[v15] == v43[v17[3]])
            {
              v46 = v25 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v26 = v17[3];
        if (v26 <= v15)
        {
          v46 = v46 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v26 != v15 + 1)
        {
          v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v17;
        if (v37)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v37, v17);
        }

        if (v36)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v36, v17 + 1);
        }

        if (v38)
        {
          (*(*v38 + 32))(v38, v22);
          v16 = 0;
        }

        else
        {
          v16 = 0;
          ++v40;
        }
      }

      if (v40 >= v39)
      {
        goto LABEL_69;
      }

LABEL_29:
      v17 = (*(&v38 + 1) + 16 * v40);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v35;
    goto LABEL_19;
  }

  if (v33)
  {
    (*(*v33 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v36)
  {
    v30 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
    MEMORY[0x26D6787B0](v30, 0x10A0C408EF24B1CLL);
  }

  if (v37)
  {
    v31 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v37);
    MEMORY[0x26D6787B0](v31, 0x10A0C408EF24B1CLL);
  }

  v9 = v46;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9;
}

void sub_26B522F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va, 0);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va1, 0);
  v9 = *(v7 - 128);
  if (v9)
  {
    *(v7 - 120) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_26B523874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 16))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_26B523C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 24))(&v20);
  result = fst::TropicalWeightTpl<float>::Zero();
  v21 = v20;
  HIDWORD(v20) = *result;
  if (*&v20 != *(&v20 + 1))
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_16;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    result = v16 >> 6;
    v17 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * result) |= v17;
    *(v15 + 8 * result) &= ~v17;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_15;
    }

LABEL_13:
    --v11;
  }

  *(v15 + 8 * result) &= ~v17;
  if (v16 != a2)
  {
    goto LABEL_13;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v18 = **(a1 + 16);
    if ((*(v18 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v18 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v19 = *(v7 + 4 * a2);
    if (v19 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v19;
    }
  }

  return result;
}

void *fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *std::deque<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(a1, &v10);
}

void sub_26B52418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  v6 = -1;
  v33 = 0;
  v34 = 0;
  v32 = -1;
  v32 = (*(*a1 + 16))(a1);
  v33 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v33 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1);
    goto LABEL_5;
  }

  v26 = a2 + *(*a2 - 24);
  if ((v26[32] & 5) == 0)
  {
    (*(**(v26 + 5) + 32))(__p);
    v6 = v36;
    if (v36 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v27 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v27, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v27;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v27, __p);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
LABEL_29:
    LogMessage::~LogMessage(&v27);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v33 == v11)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v27, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v33 = v11;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v27 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    operator delete(v28[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return updated;
}

uint64_t fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7);
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 96))(a1);
    (*(*v17 + 144))(v17, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 104))(a1) + 144);

    return v19();
  }

  return result;
}

uint64_t fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  MEMORY[0x26D678620](v27);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    __p = 0u;
    v30 = 0u;
    v37 = a8;
    (*(*v17 + 40))(v28);
    if (v28[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x26D678630](v27);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(v28, &__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }
  }

  else
  {
    fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v28, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v22 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x26D678620](v28, a2);
      v23 = a2 + *(*a2 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(&__p);
        if (v37 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x26D678630](v28);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        result = 1;
        goto LABEL_31;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v28, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v24 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  LogMessage::~LogMessage(v28);
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p);
  }

  result = 0;
LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFile(uint64_t a1, uint64_t a2)
{
  v29[19] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::ofstream::basic_ofstream(&v23, a2);
    if ((v28[*(v23.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(&v22, &__p);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: Can't open file: ", 29);
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      goto LABEL_31;
    }

    v10 = FLAGS_fst_align;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v18 = 257;
    v19 = 1;
    v20 = v10;
    v21 = 0;
    v12 = (*(*a1 + 80))(a1, &v23, &__p);
    v13 = v12;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      v11 = 1;
LABEL_34:
      v23.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
      *(v23.__r_.__value_.__r.__words + *(v23.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82810] + 24);
      MEMORY[0x26D6785E0](&v23.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x26D678750](v29);
      goto LABEL_35;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(&v22, &__p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write failed: ", 19);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v14 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

LABEL_31:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    LogMessage::~LogMessage(&v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = 0;
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v9 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  v24 = 257;
  v25 = 1;
  v26 = v9;
  v27 = 0;
  v11 = (*(*a1 + 80))(a1, MEMORY[0x277D82678], &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08D78;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C08DC8;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(result, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B5258FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  v13 = 16 * v2 + 16;
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26B525AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1 || *(v1 + 8))
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> &,0>();
  }

  return result;
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> &,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08D78;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

float fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetFinal(void *a1, int a2, float *a3)
{
  v9 = **(a1[7] + 8 * a2);
  v6 = (*(*a1 + 16))(a1);
  v7 = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v6, &v9, a3);
  result = *a3;
  **(a1[7] + 8 * a2) = *a3;
  a1[1] = a1[1] & 4 | v7;
  return result;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[7] + 8 * a2) + 32);
  if (v6 == *(*(a1[7] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 16))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[7] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(v9, a3);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 56);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 64) - *(a1 + 56)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 56);
    }

    while (v11 < (*(a1 + 64) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, v13);
  v14 = *(a1 + 56);
  if (*(a1 + 64) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      v19 = *(v16 + 8);
      v21 = v18 - v17;
      v20 = v18 == v17;
      if (v18 == v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v16 + 24);
      }

      if (v20)
      {
        v24 = 0;
        v31 = v21 >> 4;
        v32 = *(v16 + 16);
        v33 = *(v16 + 8);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = (v22 + 12);
        do
        {
          v26 = *(__p[0] + *v25);
          if (v26 == -1)
          {
            v28 = *(v25 - 3);
            v29.i64[0] = v28;
            v29.i64[1] = HIDWORD(v28);
            v19 = vaddq_s64(v19, vceqzq_s64(v29));
          }

          else
          {
            *v25 = v26;
            if (v23 != v24)
            {
              v27 = v22 + 16 * v24;
              *v27 = *(v25 - 3);
              *(v27 + 8) = *(v25 - 1);
              *(v27 + 12) = v26;
              v14 = *v4;
            }

            ++v24;
          }

          v16 = *(v14 + 8 * v15);
          ++v23;
          v30 = *(v16 + 32) - *(v16 + 24);
          v25 += 4;
        }

        while (v23 < v30 >> 4);
        v31 = v30 >> 4;
        v32 = v19.i64[1];
        v33 = v19.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(v16, v31 - v24);
      v14 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(v14 + 8 * v15);
      *(v35 + 8) = v33;
      *(v35 + 16) = v32;
      ++v15;
    }

    while (v15 < (v34 - v14) >> 3);
  }

  v36 = *(a1 + 80);
  if (v36 == -1)
  {
    v37 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v37 = __p[0];
    *(a1 + 80) = *(__p[0] + v36);
  }

  __p[1] = v37;
  operator delete(v37);
}

void sub_26B525F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 24) + 16 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  if (*(v4 + 8) != *fst::TropicalWeightTpl<float>::Zero() && *(v4 + 8) != *fst::TropicalWeightTpl<float>::One())
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v10 = *a2;
  v11 = *(a2 + 4);
  if (*a2 != v11)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v10)
  {
    if (!v11)
    {
      v12 = *(a1 + 16);
      v13 = *v12;
LABEL_19:
      *v12 = v13 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v14 = *v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v12 = v14;
    if (!v11)
    {
      v13 = v14 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v12 = v13;
      goto LABEL_19;
    }
  }

  result = fst::TropicalWeightTpl<float>::Zero();
  if (*(a2 + 8) != *result)
  {
    result = fst::TropicalWeightTpl<float>::One();
    if (*(a2 + 8) != *result)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= 0x30FC30007uLL;
  return result;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08888;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v3 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v4 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v8 = 0;
        __p[0] = v3;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v8;
        v6 = 0u;
        v7 = 0u;
        fst::DfsVisit<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a2, __p);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26B526CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  LogMessage::~LogMessage(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    MEMORY[0x26D6787B0](v30, 0x60C405BB7FD7CLL);
  }

  if (a10)
  {
    MEMORY[0x26D6787B0](a10, 0xC400A2AC0F1);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  (*(*a1 + 112))(a1, &v31);
  while (1)
  {
    result = v31;
    if (!v31)
    {
      if (v33 >= v32)
      {
        return result;
      }

LABEL_11:
      v15 = v33;
      goto LABEL_12;
    }

    v14 = (*(*v31 + 16))(v31);
    result = v31;
    if (v14)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_11;
    }

    v15 = (*(*v31 + 24))();
LABEL_12:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    (*(*a1 + 120))(a1, v15, &v28);
    while (1)
    {
      if (!v28)
      {
        if (v30 >= v29)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      if ((*(*v28 + 16))(v28))
      {
        break;
      }

      if (v28)
      {
        v16 = (*(*v28 + 24))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = *(&v28 + 1) + 16 * v30;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 12)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::TropicalWeightTpl<float>::One(), v20 = (v16 + 8), fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a4, (v16 + 8), v19)))
        {
          v21 = 1;
          goto LABEL_23;
        }

        if ((v18[v17] | 2) == 2)
        {
          v25 = fst::TropicalWeightTpl<float>::Zero();
          v35 = *v20;
          v34 = *v25;
          if (v35 == v34 || (v26 = fst::TropicalWeightTpl<float>::One(), v35 = *v20, v34 = *v26, v35 == v34))
          {
            v21 = 2;
          }

          else
          {
            v21 = 3;
          }

LABEL_23:
          v18[v17] = v21;
        }

        *a5 = 0;
      }

      v22 = fst::TropicalWeightTpl<float>::Zero();
      v35 = *(v16 + 8);
      v34 = *v22;
      v23.n128_f32[0] = v35;
      if (v35 != v34)
      {
        v24 = fst::TropicalWeightTpl<float>::One();
        v35 = *(v16 + 8);
        v34 = *v24;
        v23.n128_f32[0] = v35;
        if (v35 != v34)
        {
          *a6 = 0;
        }
      }

      if (v28)
      {
        (*(*v28 + 32))(v28, v23);
      }

      else
      {
        ++v30;
      }
    }

    if (v28)
    {
      (*(*v28 + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (*(&v29 + 1))
    {
      --**(&v29 + 1);
    }

LABEL_40:
    if (v31)
    {
      (*(*v31 + 32))(v31);
    }

    else
    {
      ++v33;
    }
  }

  if (v31)
  {
    return (*(*v31 + 8))();
  }

  return result;
}

void sub_26B5272C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = 0;
  v1 = a1 + 24;
  v2 = &v4;
  v3 = 0;
  fst::DfsVisit<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>();
}

void sub_26B5274B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B527D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::internal::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v72 = a1 + 140;
LABEL_114:
    *v72 = 1;
    return result;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 16))();
  }

  v4 = a2;
  while (1)
  {
    v5 = a1[1];
    if (v4 < (v5[1] - *v5) >> 2)
    {
      break;
    }

    v6 = fst::TropicalWeightTpl<float>::Zero();
    v7 = v5[1];
    if (v7 >= v5[2])
    {
      v8 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v5, v6);
    }

    else
    {
      *v7 = *v6;
      v8 = (v7 + 1);
    }

    v5[1] = v8;
    v9 = *fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v73) = v9;
    v10 = a1[6];
    if (v10 >= a1[7])
    {
      v11 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v73);
    }

    else
    {
      *v10 = v9;
      v11 = (v10 + 1);
    }

    a1[6] = v11;
    v12 = *fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v73) = v12;
    v13 = a1[9];
    if (v13 >= a1[10])
    {
      v14 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v73);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[9] = v14;
    LOBYTE(v73) = 0;
    std::vector<BOOL>::push_back((a1 + 11), &v73);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v4 >= (a1[15] - i) >> 2; i = a1[14])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
    }

    *(i + 4 * v4) = *(a1 + 34);
  }

  *(*a1[1] + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  v16 = a1[5];
  *(v16 + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  v17 = a1[8];
  *(v17 + 4 * v4) = *fst::TropicalWeightTpl<float>::One();
  *(a1[11] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v4);
  v72 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_113;
    }

    v19 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v20 = a1[1];
      if (v19 < ((v20[1] - *v20) >> 2))
      {
        break;
      }

      v21 = fst::TropicalWeightTpl<float>::Zero();
      v22 = v20[1];
      if (v22 >= v20[2])
      {
        v23 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v20, v21);
      }

      else
      {
        *v22 = *v21;
        v23 = (v22 + 1);
      }

      v20[1] = v23;
      v24 = *fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v24;
      v25 = a1[6];
      if (v25 >= a1[7])
      {
        v26 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v73);
      }

      else
      {
        *v25 = v24;
        v26 = (v25 + 1);
      }

      a1[6] = v26;
      v27 = *fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v27;
      v28 = a1[9];
      if (v28 >= a1[10])
      {
        v29 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v73);
      }

      else
      {
        *v28 = v27;
        v29 = (v28 + 1);
      }

      a1[9] = v29;
      LOBYTE(v73) = 0;
      std::vector<BOOL>::push_back((a1 + 11), &v73);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 24))(&v76);
      v30 = fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v73) = v76;
      HIDWORD(v76) = *v30;
      v18.n128_u32[0] = v76;
      if (*&v76 != *(&v76 + 1))
      {
LABEL_113:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v18);
        if (!result)
        {
          return result;
        }

        goto LABEL_114;
      }
    }

    *(a1[11] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19);
    v31 = a1[8];
    v32 = *(v31 + 4 * v19);
    *(v31 + 4 * v19) = *fst::TropicalWeightTpl<float>::Zero();
    v33 = *a1;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    (*(*v33 + 120))(v33, v19, &v73);
    while (1)
    {
      if (v73)
      {
        if ((*(*v73 + 16))(v73))
        {
          goto LABEL_103;
        }

        if (v73)
        {
          v34 = (*(*v73 + 24))(v73);
          goto LABEL_45;
        }
      }

      else if (v75 >= v74)
      {
LABEL_103:
        v70 = 1;
        goto LABEL_105;
      }

      v34 = *(&v73 + 1) + 16 * v75;
LABEL_45:
      v35 = a1[1];
      v36 = v35 + 1;
      for (j = *(v34 + 12); j >= (v35[1] - *v35) >> 2; j = *(v34 + 12))
      {
        v38 = fst::TropicalWeightTpl<float>::Zero();
        v39 = *v36;
        if (*v36 >= v35[2])
        {
          v40 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v35, v38);
        }

        else
        {
          *v39 = *v38;
          v40 = (v39 + 1);
        }

        *v36 = v40;
        v41 = *fst::TropicalWeightTpl<float>::Zero();
        HIDWORD(v76) = v41;
        v42 = a1[6];
        if (v42 >= a1[7])
        {
          v43 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v76 + 1);
        }

        else
        {
          *v42 = v41;
          v43 = (v42 + 1);
        }

        a1[6] = v43;
        v44 = *fst::TropicalWeightTpl<float>::Zero();
        HIDWORD(v76) = v44;
        v45 = a1[9];
        if (v45 >= a1[10])
        {
          v46 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v76 + 1);
        }

        else
        {
          *v45 = v44;
          v46 = (v45 + 1);
        }

        a1[9] = v46;
        BYTE4(v76) = 0;
        std::vector<BOOL>::push_back((a1 + 11), &v76 + 4);
        v35 = a1[1];
        v36 = v35 + 1;
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v47 = a1[14];
          LODWORD(j) = *(v34 + 12);
          if (j < ((a1[15] - v47) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
        }

        if (*(v47 + 4 * j) != *(a1 + 34))
        {
          v48 = fst::TropicalWeightTpl<float>::Zero();
          v49 = *(v34 + 12);
          *(*a1[1] + 4 * v49) = *v48;
          v50 = a1[5];
          *(v50 + 4 * v49) = *fst::TropicalWeightTpl<float>::Zero();
          v51 = *(v34 + 12);
          v52 = a1[8];
          *(v52 + 4 * v51) = *fst::TropicalWeightTpl<float>::Zero();
          v53 = *(v34 + 12);
          *(a1[11] + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v53);
          *(a1[14] + 4 * v53) = *(a1 + 34);
          LODWORD(j) = *(v34 + 12);
        }
      }

      v54 = *a1[1];
      v55 = a1[5];
      v56 = a1[8];
      if (v32 == -INFINITY || (v57 = *(v34 + 8), v57 >= -INFINITY) && v57 <= -INFINITY)
      {
        v58 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v59 = v57 == INFINITY || v32 == INFINITY;
        v60 = v32 + v57;
        v58 = v59 ? INFINITY : v60;
      }

      v61 = *(v54 + 4 * j);
      if (v61 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
      {
        v62 = *fst::TropicalWeightTpl<float>::NoWeight();
        v61 = *(v54 + 4 * j);
      }

      else
      {
        v62 = v61 >= v58 ? v58 : *(v54 + 4 * j);
      }

      v63 = *(a1 + 7);
      v64 = v62 + v63;
      v65 = v63 + v61;
      if (v61 > v64 || v62 > v65)
      {
        break;
      }

LABEL_100:
      if (v73)
      {
        (*(*v73 + 32))(v73);
      }

      else
      {
        ++v75;
      }
    }

    v67 = *(v55 + 4 * j);
    if (v67 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
    {
      v67 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v67 >= v58)
    {
      v67 = v58;
    }

    *(v55 + 4 * j) = v67;
    *(v54 + 4 * j) = v67;
    v68 = *(v56 + 4 * j);
    if (v68 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
    {
      v68 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v68 >= v58)
    {
      v68 = v58;
    }

    *(v56 + 4 * j) = v68;
    if (*(v54 + 4 * j) != -INFINITY && v68 != -INFINITY)
    {
      v69 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v34 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v34 + 12)))
      {
        (*(v69 + 40))();
      }

      else
      {
        (*(v69 + 24))();
        *(a1[11] + ((*(v34 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v34 + 12);
      }

      goto LABEL_100;
    }

    v70 = 0;
    *v72 = 1;
LABEL_105:
    result = v73;
    if (v73)
    {
      result = (*(*v73 + 8))(v73);
    }

    else if (*(&v74 + 1))
    {
      --**(&v74 + 1);
    }
  }

  while ((v70 & 1) != 0);
  return result;
}

void sub_26B5287D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::TropicalWeightTpl<float>>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      a4.i32[0] = *a3;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = v6 + 4 * a2;
      v16 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v17 = (v6 + 8);
      do
      {
        v18 = vdupq_n_s64(v12);
        v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_26B548380)));
        if (vuzp1_s16(v19, a4).u8[0])
        {
          *(v17 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v19, a4).i8[2])
        {
          *(v17 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_26B548370)))).i32[1])
        {
          *v17 = a4.i32[0];
          v17[1] = a4.i32[0];
        }

        v12 += 4;
        v17 += 4;
      }

      while (v16 != v12);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
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

    v30 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v11);
    }

    v20 = 0;
    __p = 0;
    v27 = 4 * v9;
    v29 = 0;
    a4.i32[0] = *a3;
    v21 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = vdupq_n_s64(v21);
    v23 = (4 * v9 + 8);
    do
    {
      v24 = vdupq_n_s64(v20);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_26B548380)));
      if (vuzp1_s16(v25, a4).u8[0])
      {
        *(v23 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v25, a4).i8[2])
      {
        *(v23 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_26B548370)))).i32[1])
      {
        *v23 = a4.i32[0];
        v23[1] = a4.i32[0];
      }

      v20 += 4;
      v23 += 4;
    }

    while (v21 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4 != v20);
    v28 = 4 * v9 + 4 * a2;
    std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
    if (v28 != v27)
    {
      v28 += (v27 - v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_26B528AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float>>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26B528BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B528CB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 72);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(a1, *(v6 + 4 * v8), *a2))
      {
        break;
      }

      v9 = *(a1 + 48);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 24);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 72);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 48) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 48) + 4 * v8);
}

BOOL fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(uint64_t **a1, int a2, int a3)
{
  v5 = a2;
  v6 = **a1;
  if (a2 >= (((*a1)[1] - v6) >> 2))
  {
    v7 = fst::TropicalWeightTpl<float>::Zero();
  }

  else
  {
    v7 = (v6 + 4 * a2);
  }

  v8 = *v7;
  v9 = *a1[1];
  if (v5 >= (a1[1][1] - v9) >> 2)
  {
    v10 = fst::TropicalWeightTpl<float>::Zero();
  }

  else
  {
    v10 = (v9 + 4 * v5);
  }

  if (v8 == -INFINITY || (v11 = *v10, *v10 >= -INFINITY) && *v10 <= -INFINITY)
  {
    v12 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v13 = v11 == INFINITY || v8 == INFINITY;
    v12 = v8 + v11;
    if (v13)
    {
      v12 = INFINITY;
    }
  }

  v24 = v12;
  v14 = **a1;
  if (a3 >= (((*a1)[1] - v14) >> 2))
  {
    v15 = fst::TropicalWeightTpl<float>::Zero();
  }

  else
  {
    v15 = (v14 + 4 * a3);
  }

  v16 = *v15;
  v17 = *a1[1];
  if (a3 >= ((a1[1][1] - v17) >> 2))
  {
    v18 = fst::TropicalWeightTpl<float>::Zero();
  }

  else
  {
    v18 = (v17 + 4 * a3);
  }

  if (v16 == -INFINITY || (v19 = *v18, *v18 >= -INFINITY) && *v18 <= -INFINITY)
  {
    v20 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v21 = v19 == INFINITY || v16 == INFINITY;
    v20 = v16 + v19;
    if (v21)
    {
      v20 = INFINITY;
    }
  }

  v23 = v20;
  return fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()((a1 + 2), &v24, &v23);
}

BOOL fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 96) || !(result = fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(v3, *(*(v3 + 72) + 4 * v4), *(*(v3 + 72) + 4 * a2))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 96))
    {
      result = fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(v3, *(*(v3 + 72) + 4 * v5), *(*(v3 + 72) + 4 * v4));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 48);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 24);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 72);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::~RmEpsilonState(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[35];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  a1[35] = 0;
  v5 = a1[32];
  if (v5)
  {
    operator delete(v5);
  }

  std::deque<int>::~deque[abi:ne200100](a1 + 26);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 20));
  v6 = a1[16];
  if (v6)
  {
    a1[17] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t fst::AutoQueue<int>::~AutoQueue(uint64_t a1)
{
  *a1 = &unk_287C08888;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 24);
  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B529168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B5291F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,(void *)0>(uint64_t a1, uint64_t a2, float **a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
    if (fst::internal::SingleShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a3, a4, &v13, &v10))
    {
      fst::internal::SingleShortestPathBacktrace<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v10, v13);
    }

    else
    {
      (*(*a2 + 168))(a2, 4, 4);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else if (v7 >= 1)
  {
    if ((*(a4 + 29) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a3, a4), a3[1] - *a3 != 4) || (v8 = **a3, v8 < -INFINITY) || v8 > -INFINITY)
    {
      fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFst();
    }

    v9 = *(*a2 + 168);

    v9(a2, 4, 4);
  }
}

void sub_26B5295E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v21 - 104) = &unk_287C090E8;
  v23 = *(v21 - 88);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::SingleShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  if ((*(*a1 + 16))(a1) == -1)
  {
    return 1;
  }

  memset(__p, 0, sizeof(__p));
  v9 = *a3;
  v10 = *(a3 + 3);
  if (v10 == -1)
  {
    v10 = (*(*a1 + 16))(a1);
  }

  v11 = *fst::TropicalWeightTpl<float>::Zero();
  a2[1] = *a2;
  (*(**(v9 + 16) + 56))(*(v9 + 16));
  while (v10 > ((a2[1] - *a2) >> 2))
  {
    v12 = fst::TropicalWeightTpl<float>::Zero();
    v13 = a2[1];
    if (v13 >= a2[2])
    {
      v14 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(a2, v12);
    }

    else
    {
      *v13 = *v12;
      v14 = (v13 + 1);
    }

    a2[1] = v14;
    LOBYTE(v49) = 0;
    std::vector<BOOL>::push_back(__p, &v49);
    v49 = xmmword_26B5483C0;
    std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v49);
  }

  v15 = fst::TropicalWeightTpl<float>::One();
  v16 = a2[1];
  if (v16 >= a2[2])
  {
    v17 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(a2, v15);
  }

  else
  {
    *v16 = *v15;
    v17 = (v16 + 1);
  }

  a2[1] = v17;
  v49 = xmmword_26B5483C0;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v49);
  (*(**(v9 + 16) + 24))(*(v9 + 16), v10);
  LOBYTE(v49) = 1;
  std::vector<BOOL>::push_back(__p, &v49);
  v47 = 0;
  v46 = a3;
LABEL_14:
  if ((*(**(v9 + 16) + 48))(*(v9 + 16)) & 1) != 0 || (v19 = (*(**(v9 + 16) + 16))(*(v9 + 16)), (*(**(v9 + 16) + 32))(*(v9 + 16)), *(__p[0] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19), v20 = *(*a2 + 4 * v19), (*(a3 + 30) & v47) && (LODWORD(v49) = *(*a2 + 4 * v19), *&v48 = v11, fst::internal::FirstPathSelect<int,fst::TropicalWeightTpl<float>,fst::AutoQueue<int>>::operator()(v53, v19, &v49, &v48)))
  {
    v18 = 1;
    goto LABEL_91;
  }

  (*(*a1 + 24))(v53, a1, v19);
  v21 = fst::TropicalWeightTpl<float>::Zero();
  *&v49 = v53[0];
  LODWORD(v48) = *v21;
  if (v53[0] == *&v48)
  {
    goto LABEL_36;
  }

  (*(*a1 + 24))(&v49, a1, v19, v53[0]);
  if (v20 == -INFINITY || *&v49 >= -INFINITY && *&v49 <= -INFINITY)
  {
    v22 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v23 = *&v49 == INFINITY || v20 == INFINITY;
    v22 = v20 + *&v49;
    if (v23)
    {
      v22 = INFINITY;
    }
  }

  if (v11 == -INFINITY || v22 >= -INFINITY && v22 <= -INFINITY)
  {
    v22 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else if (v11 < v22)
  {
    v22 = v11;
  }

  *&v49 = v11;
  *&v48 = v22;
  if (v11 != v22)
  {
    *a4 = v19;
    v11 = v22;
  }

  v18 = 0;
  v47 = 1;
  if (v11 != -INFINITY)
  {
LABEL_36:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    (*(*a1 + 120))(a1, v19, &v49);
    while (1)
    {
      if (v49)
      {
        v24 = (*(*v49 + 16))(v49);
        v25 = v49;
        if (v24)
        {
          v39 = 1;
LABEL_83:
          if (v25)
          {
            (*(*v25 + 8))(v25);
            a3 = v46;
            goto LABEL_88;
          }

LABEL_86:
          a3 = v46;
          if (*(&v50 + 1))
          {
            --**(&v50 + 1);
          }

LABEL_88:
          if ((v39 & 1) == 0)
          {
            v18 = 0;
            break;
          }

          goto LABEL_14;
        }

        if (v49)
        {
          v26 = (*(*v49 + 24))();
          goto LABEL_43;
        }
      }

      else if (v51 >= v50)
      {
        v39 = 1;
        goto LABEL_86;
      }

      v26 = *(&v49 + 1) + 16 * v51;
LABEL_43:
      while (1)
      {
        v27 = *a2;
        v28 = *(v26 + 12);
        if (v28 < (a2[1] - *a2) >> 2)
        {
          break;
        }

        v29 = fst::TropicalWeightTpl<float>::Zero();
        v30 = a2[1];
        if (v30 >= a2[2])
        {
          v31 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(a2, v29);
        }

        else
        {
          *v30 = *v29;
          v31 = (v30 + 1);
        }

        a2[1] = v31;
        LOBYTE(v48) = 0;
        std::vector<BOOL>::push_back(__p, &v48);
        v48 = xmmword_26B5483C0;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v48);
      }

      if (v20 == -INFINITY || (v32 = *(v26 + 8), v32 >= -INFINITY) && v32 <= -INFINITY)
      {
        v33 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v34 = v32 == INFINITY || v20 == INFINITY;
        v35 = v20 + v32;
        if (v34)
        {
          v33 = INFINITY;
        }

        else
        {
          v33 = v35;
        }
      }

      v36 = *(v27 + 4 * v28);
      if (v36 == -INFINITY || v33 >= -INFINITY && v33 <= -INFINITY)
      {
        v37 = *fst::TropicalWeightTpl<float>::NoWeight();
        v36 = *(v27 + 4 * v28);
      }

      else if (v36 >= v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = *(v27 + 4 * v28);
      }

      *&v48 = v36;
      v53[0] = v37;
      if (v36 != v37)
      {
        v38 = *(v27 + 4 * v28);
        if (v38 == -INFINITY || v33 >= -INFINITY && v33 <= -INFINITY)
        {
          v38 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else if (v38 >= v33)
        {
          v38 = v33;
        }

        v39 = 0;
        *(v27 + 4 * v28) = v38;
        v25 = v49;
        if (v38 == -INFINITY)
        {
          goto LABEL_83;
        }

        if (v49)
        {
          v40 = (*(*v49 + 40))();
        }

        else
        {
          v40 = v51;
        }

        v41 = *(v26 + 12);
        v42 = *a5 + 16 * v41;
        *v42 = v19;
        *(v42 + 8) = v40;
        v43 = **(v9 + 16);
        if ((*(__p[0] + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v41))
        {
          (*(v43 + 40))();
        }

        else
        {
          (*(v43 + 24))();
          *(__p[0] + ((*(v26 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v26 + 12);
        }
      }

      if (v49)
      {
        (*(*v49 + 32))(v49);
      }

      else
      {
        ++v51;
      }
    }
  }

LABEL_91:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v18;
}

void sub_26B529E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::SingleShortestPathBacktrace<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 200))(a2);
  v8 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v8);
  v9 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    v12 = -1;
    while (1)
    {
      v13 = (*(*a2 + 176))(a2);
      if (v10 != -1)
      {
        break;
      }

      (*(*a1 + 24))(&v22, a1, a4);
      (*(*a2 + 160))(a2, v13, &v22);
LABEL_15:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      v12 = v13;
      if (v11 == -1)
      {
        goto LABEL_18;
      }
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    (*(*a1 + 120))(a1, v11, &v22);
    v14 = *(*a3 + 16 * v10 + 8);
    if (v22)
    {
      (*(*v22 + 56))(v22, v14);
      if (v22)
      {
        v15 = (*(*v22 + 24))(v22);
        goto LABEL_11;
      }

      v14 = v24;
    }

    else
    {
      v24 = *(*a3 + 16 * v10 + 8);
    }

    v15 = *(&v22 + 1) + 16 * v14;
LABEL_11:
    v19 = *v15;
    v20 = *(v15 + 8);
    v21 = v12;
    (*(*a2 + 184))(a2, v13, &v19);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    else if (*(&v23 + 1))
    {
      --**(&v23 + 1);
    }

    goto LABEL_15;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_18:
  (*(*a2 + 152))(a2, v13);
  if ((*(*a1 + 56))(a1, 4, 0))
  {
    (*(*a2 + 168))(a2, 4, 4);
  }

  v16 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v17 = fst::ShortestPathProperties(v16, 1);
  return (*(*a2 + 168))(a2, v17, 0xFFFFFFFF0007);
}

void sub_26B52A384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<fst::TropicalWeightTpl<float>>::insert(uint64_t a1, char *a2, float *a3)
{
  v3 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v6 >= v5)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = a2 - v9;
    v12 = v5 - v9;
    if (v12 >> 1 > v10)
    {
      v10 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    v14 = v11 >> 2;
    v25 = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v13);
    }

    __p = 0;
    v22 = 4 * v14;
    v23 = 4 * v14;
    v24 = 0;
    std::__split_buffer<fst::TropicalWeightTpl<float>>::emplace_back<fst::TropicalWeightTpl<float> const&>(&__p, a3);
    v3 = std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p, v3);
    if (v23 != v22)
    {
      v23 += (v22 - v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 4;
  }

  else
  {
    v7 = v6 - 4;
    if (v6 < 4)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      *v6 = *v7;
      v8 = (v6 + 4);
    }

    *(a1 + 8) = v8;
    if (v6 != a2 + 4)
    {
      v15 = a2 - v6 + 4;
      v16 = v6 - 8;
      do
      {
        v17 = *v16;
        v16 -= 4;
        *v7 = v17;
        v7 -= 4;
        v15 += 4;
      }

      while (v15);
    }

    v18 = v8 <= a3 || a2 > a3;
    v19 = 1;
    if (v18)
    {
      v19 = 0;
    }

    *a2 = a3[v19];
  }

  return v3;
}

void sub_26B52A554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::NShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, float *a5, int a6, float a7)
{
  v93 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    goto LABEL_12;
  }

  (*(*a2 + 200))(a2);
  v14 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v14);
  v15 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v15);
  __p = 0;
  v85 = 0;
  v86 = 0;
  if ((*(*a1 + 16))(a1) != -1)
  {
    v18 = *a3;
    v17 = a3[1];
    if ((*(*a1 + 16))(a1) < ((v17 - v18) >> 2))
    {
      v19 = (*(*a1 + 16))(a1);
      v20 = *a3;
      v21 = fst::TropicalWeightTpl<float>::Zero();
      LODWORD(v90) = *(v20 + 4 * v19);
      LODWORD(v87[0]) = *v21;
      v16.n128_u32[0] = v90;
      if (*&v90 != *v87)
      {
        v22 = fst::TropicalWeightTpl<float>::One();
        v23 = !fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v83, a5, v22);
        if (!a6)
        {
          LOBYTE(v23) = 0;
        }

        if (v23)
        {
          v25 = (*(*a2 + 176))(a2);
          (*(*a2 + 152))(a2, v25);
          v26 = (*(*a2 + 176))(a2);
          v82 = v26;
          LODWORD(v90) = *fst::TropicalWeightTpl<float>::One();
          (*(*a2 + 160))(a2, v26, &v90);
          if (v26 >= ((v85 - __p) >> 3))
          {
            do
            {
              v27 = fst::TropicalWeightTpl<float>::Zero();
              LODWORD(v90) = -1;
              v28 = *v27;
              DWORD1(v90) = *v27;
              v29 = v85;
              if (v85 >= v86)
              {
                v30 = std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(&__p, &v90);
              }

              else
              {
                *v85 = -1;
                *(v29 + 1) = v28;
                v30 = (v29 + 8);
              }

              v85 = v30;
            }

            while (v82 >= ((v30 - __p) >> 3));
          }

          v31 = (*(*a1 + 16))(a1);
          v32 = *fst::TropicalWeightTpl<float>::One();
          v33 = __p + 8 * v82;
          *v33 = v31;
          v33[1] = v32;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          std::vector<int>::push_back[abi:ne200100](&v79, &v82);
          v34 = *(*a3 + 4 * (*(*a1 + 16))(a1));
          v70 = a6;
          if (v34 == -INFINITY || (v35 = *a5, *a5 >= -INFINITY) && *a5 <= -INFINITY)
          {
            v36 = *fst::TropicalWeightTpl<float>::NoWeight();
          }

          else
          {
            v37 = v35 == INFINITY || v34 == INFINITY;
            v36 = v34 + v35;
            if (v37)
            {
              v36 = INFINITY;
            }
          }

          v78 = v36;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v39 = v79;
          v38 = v80;
          if (v79 == v80)
          {
            goto LABEL_99;
          }

          while (1)
          {
            *&v90 = &__p;
            *(&v90 + 1) = a3;
            LODWORD(v91) = -1;
            *(&v91 + 1) = a7;
            v40 = (v38 - v39) >> 2;
            if (v40 >= 2)
            {
              v41 = *v39;
              v42 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v39, &v90, v40);
              v43 = (v38 - 4);
              if (v38 - 4 == v42)
              {
                *v42 = v41;
              }

              else
              {
                *v42 = *v43;
                *v43 = v41;
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v39, (v42 + 1), &v90, v42 + 1 - v39);
              }
            }

            v44 = *(v80 - 1);
            v45 = (__p + 8 * v44);
            v46 = *v45;
            v47 = v45[1];
            --v80;
            if (v46 == -1)
            {
              v48 = fst::TropicalWeightTpl<float>::One();
            }

            else if (v46 >= (a3[1] - *a3) >> 2)
            {
              v48 = fst::TropicalWeightTpl<float>::Zero();
            }

            else
            {
              v48 = (*a3 + 4 * v46);
            }

            v49 = *v48;
            if (*v48 == -INFINITY || v47 >= -INFINITY && v47 <= -INFINITY)
            {
              v50 = *fst::TropicalWeightTpl<float>::NoWeight();
            }

            else
            {
              v51 = v49 == INFINITY || v47 == INFINITY;
              v50 = v47 + v49;
              if (v51)
              {
                v50 = INFINITY;
              }
            }

            *&v90 = v50;
            if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v83, &v78, &v90) || v70 != -1 && (*(*a2 + 136))(a2) >= v70)
            {
              goto LABEL_98;
            }

            v52 = v46 + 1;
            while (v52 >= (v76 - v75) >> 2)
            {
              LODWORD(v90) = 0;
              std::vector<int>::push_back[abi:ne200100](&v75, &v90);
            }

            v53 = *(v75 + v52);
            *(v75 + v52) = v53 + 1;
            if (v46 == -1)
            {
              v62 = (*(*a2 + 16))(a2);
              v63 = *fst::TropicalWeightTpl<float>::One();
              *&v90 = 0;
              *(&v90 + 1) = __PAIR64__(v44, v63);
              (*(*a2 + 184))(a2, v62, &v90);
              if (*v75 != a4)
              {
                goto LABEL_98;
              }

              goto LABEL_99;
            }

            if (v53 >= a4)
            {
              goto LABEL_98;
            }

            v92 = 0;
            v90 = 0u;
            v91 = 0u;
            (*(*a1 + 120))(a1, v46, &v90);
            while (1)
            {
              if (!v90)
              {
                if (v92 >= v91)
                {
                  goto LABEL_81;
                }

LABEL_60:
                v54 = *(&v90 + 1) + 16 * v92;
                goto LABEL_61;
              }

              if ((*(*v90 + 16))(v90))
              {
                break;
              }

              if (!v90)
              {
                goto LABEL_60;
              }

              v54 = (*(*v90 + 24))(v90);
LABEL_61:
              v55 = *(v54 + 8);
              v56 = *(v54 + 12);
              v72 = *v54;
              v73 = v55;
              v74 = v56;
              if (v47 == -INFINITY || v55 >= -INFINITY && v55 <= -INFINITY)
              {
                LODWORD(v57) = *fst::TropicalWeightTpl<float>::NoWeight();
              }

              else
              {
                v58 = v55 == INFINITY || v47 == INFINITY;
                v59 = v47 + v55;
                if (v58)
                {
                  v57 = INFINITY;
                }

                else
                {
                  v57 = v59;
                }
              }

              v71 = (*(*a2 + 176))(a2);
              v87[0] = __PAIR64__(LODWORD(v57), v74);
              v60 = v85;
              if (v85 >= v86)
              {
                v61 = std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(&__p, v87);
              }

              else
              {
                *v85 = v74;
                *(v60 + 1) = v57;
                v61 = (v60 + 8);
              }

              v85 = v61;
              v74 = v44;
              (*(*a2 + 184))(a2, v71, &v72);
              std::vector<int>::push_back[abi:ne200100](&v79, &v71);
              v87[0] = &__p;
              v87[1] = a3;
              v88 = -1;
              v89 = a7;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v79, v80, v87, (v80 - v79) >> 2);
              if (v90)
              {
                (*(*v90 + 32))(v90);
              }

              else
              {
                ++v92;
              }
            }

            if (v90)
            {
              (*(*v90 + 8))(v90);
            }

            else
            {
LABEL_81:
              if (*(&v91 + 1))
              {
                --**(&v91 + 1);
              }
            }

            (*(*a1 + 24))(&v90, a1, v46);
            LODWORD(v64) = v90;
            v65 = fst::TropicalWeightTpl<float>::Zero();
            *&v90 = v64;
            LODWORD(v87[0]) = *v65;
            if (v64 != *v87)
            {
              if (v47 == -INFINITY || v64 >= -INFINITY && v64 <= -INFINITY)
              {
                v66 = *fst::TropicalWeightTpl<float>::NoWeight();
              }

              else if (v64 == INFINITY || v47 == INFINITY)
              {
                v66 = INFINITY;
              }

              else
              {
                v66 = v47 + v64;
              }

              LODWORD(v87[0]) = (*(*a2 + 176))(a2);
              LODWORD(v90) = -1;
              *(&v90 + 1) = v66;
              v68 = v85;
              if (v85 >= v86)
              {
                v69 = std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(&__p, &v90);
              }

              else
              {
                *v85 = -1;
                *(v68 + 1) = v66;
                v69 = (v68 + 8);
              }

              v85 = v69;
              *&v90 = 0;
              *(&v90 + 1) = __PAIR64__(v44, LODWORD(v64));
              (*(*a2 + 184))(a2, LODWORD(v87[0]), &v90);
              std::vector<int>::push_back[abi:ne200100](&v79, v87);
              *&v90 = &__p;
              *(&v90 + 1) = a3;
              LODWORD(v91) = -1;
              *(&v91 + 1) = a7;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v79, v80, &v90, (v80 - v79) >> 2);
            }

LABEL_98:
            v39 = v79;
            v38 = v80;
            if (v79 == v80)
            {
LABEL_99:
              fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
            }
          }
        }
      }
    }
  }

  if ((*(*a1 + 56))(a1, 4, 0, v16))
  {
    (*(*a2 + 168))(a2, 4, 4);
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_26B52B19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFst(void *a1)
{
  *a1 = &unk_287C098C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL fst::internal::FirstPathSelect<int,fst::TropicalWeightTpl<float>,fst::AutoQueue<int>>::operator()(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v5 = *a3;
  if (*a3 == -INFINITY || (v6 = *a4, *a4 >= -INFINITY) && *a4 <= -INFINITY)
  {
    v5 = *fst::TropicalWeightTpl<float>::NoWeight();
    v6 = *a4;
  }

  else if (v5 >= v6)
  {
    v5 = *a4;
  }

  return v6 == v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float std::__split_buffer<fst::TropicalWeightTpl<float>>::emplace_back<fst::TropicalWeightTpl<float> const&>(void *a1, float *a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v8 = v2 - *a1;
      v7 = v8 == 0;
      v9 = v8 >> 1;
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1[4], v10);
    }

    v5 = &v4[-((((v4 - *a1) >> 2) + 1 + ((((v4 - *a1) >> 2) + 1) >> 63)) >> 1)];
    v3 = v5;
    if (v4 != v2)
    {
      v3 = &v4[-((((v4 - *a1) >> 2) + 1 + ((((v4 - *a1) >> 2) + 1) >> 63)) >> 1)];
      do
      {
        v6 = *v4++;
        *v3++ = v6;
      }

      while (v4 != v2);
    }

    a1[1] = v5;
  }

  result = *a2;
  *v3 = *a2;
  a1[2] = v3 + 1;
  return result;
}

uint64_t std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      v9 = *v7;
      v7 += 4;
      *v8++ = v9;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v10 = *a1;
  v11 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v12 = *a1;
    v13 = (result + *a1 - a3);
    do
    {
      v14 = *v12;
      v12 += 4;
      *v13++ = v14;
    }

    while (v12 != a3);
  }

  a2[1] = v11;
  v15 = *a1;
  *a1 = v11;
  a1[1] = v10;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26B52B6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a3, *v8, *(a2 - 4));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(uint64_t a1, int a2, int a3)
{
  v4 = **a1;
  v5 = v4 + 8 * a2;
  v6 = v4 + 8 * a3;
  fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::PWeight(a1, *v5, &v26);
  if (v26 == -INFINITY || (v7 = *(v5 + 4), v7 >= -INFINITY) && v7 <= -INFINITY)
  {
    v8 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v9 = v7 == INFINITY || v26 == INFINITY;
    v8 = v26 + v7;
    if (v9)
    {
      v8 = INFINITY;
    }
  }

  v27 = v8;
  fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::PWeight(a1, *v6, &v25);
  if (v25 == -INFINITY || (v10 = *(v6 + 4), v10 >= -INFINITY) && v10 <= -INFINITY)
  {
    v11 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v12 = v10 == INFINITY || v25 == INFINITY;
    v11 = v25 + v10;
    if (v12)
    {
      v11 = INFINITY;
    }
  }

  v26 = v11;
  v13 = *(a1 + 16);
  v14 = *v6;
  if (*v5 != v13 || v14 == v13)
  {
    v17 = *v5 == v13 || v14 != v13;
    v18 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a1 + 24, &v26, &v27);
    v19 = v17 && v18;
    if (!v17 && v18)
    {
      v20 = *(a1 + 20);
      v19 = v26 > (v20 + v27);
      if (v27 > (v20 + v26))
      {
        v19 = 1;
      }
    }
  }

  else if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a1 + 24, &v26, &v27))
  {
    v19 = 1;
  }

  else
  {
    v21 = *(a1 + 20);
    v23 = v27 > (v21 + v26);
    v22 = v21 + v27;
    v23 = v23 || v26 > v22;
    v19 = !v23;
  }

  return v19 & 1;
}

float fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::PWeight@<S0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  if (*(a1 + 16) == a2)
  {
    v4 = fst::TropicalWeightTpl<float>::One();
  }

  else
  {
    v5 = **(a1 + 8);
    if (a2 >= ((*(*(a1 + 8) + 8) - v5) >> 2))
    {
      v4 = fst::TropicalWeightTpl<float>::Zero();
    }

    else
    {
      v4 = (v5 + 4 * a2);
    }
  }

  result = *v4;
  *a3 = *v4;
  return result;
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  std::allocate_shared[abi:ne200100]<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>,std::allocator<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::vector<fst::TropicalWeightTpl<float>> const*&,std::vector<fst::TropicalWeightTpl<float>>*&,fst::DeterminizeFstOptions<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>> const&,0>();
}

void sub_26B52BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *v14 = v15;
  v17 = v14[2];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFst(void *a1)
{
  *a1 = &unk_287C098C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::ImplToFst<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

void std::__shared_ptr_emplace<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::vector<fst::TropicalWeightTpl<float>> const*&,std::vector<fst::TropicalWeightTpl<float>>*&,fst::DeterminizeFstOptions<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>> const&,std::allocator<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C093C0;
  fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::DeterminizeFsaImpl((a1 + 3), a2, *a3, *a4, a5);
}

void std::__shared_ptr_emplace<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C093C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

void sub_26B52C2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100]((v18 + 184));
  v20 = *(v18 + 176);
  *(v18 + 176) = 0;
  if (v20)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100](v18 + 176, v20);
  }

  fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_26B52C520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 136);
  *(v15 + 136) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v2);
    MEMORY[0x26D6787B0](v3, 0x10E0C404B1F5D25);
  }

  return a1;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_287C094C0;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(uint64_t a1)
{
  *a1 = &unk_287C09410;
  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100]((a1 + 184));
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100](a1 + 176, v2);
  }

  *a1 = &unk_287C094C0;
  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(uint64_t a1)
{
  *a1 = &unk_287C09410;
  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100]((a1 + 184));
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100](a1 + 176, v2);
  }

  *a1 = &unk_287C094C0;
  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 56))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, v4 + 5);
      v5 = v4[1];
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
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(&v8, v9[0]);
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  result = (*(**(a1 + 136) + 16))(*(a1 + 136));
  if (result != -1)
  {
    v2 = *fst::TropicalWeightTpl<float>::One();
    operator new();
  }

  return result;
}

int *fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 112) + 8 * a2);
  result = fst::TropicalWeightTpl<float>::Zero();
  v7 = *result;
  for (i = *v5; i; i = *i)
  {
    v9 = *(i + 2);
    result = (*(**(a1 + 136) + 24))(&v13);
    v10 = i[3];
    if (v10 == -INFINITY || *&v13 >= -INFINITY && *&v13 <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight();
      v11 = *result;
    }

    else
    {
      v12 = *&v13 == INFINITY || v10 == INFINITY;
      v11 = v10 + *&v13;
      if (v12)
      {
        v11 = INFINITY;
      }
    }

    if (v7 == -INFINITY || v11 >= -INFINITY && v11 <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight();
      v7 = *result;
    }

    else if (v7 >= v11)
    {
      v7 = v11;
    }

    if (v7 >= -INFINITY && v7 <= -INFINITY)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  *a3 = v7;
  return result;
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_287C09510;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_287C09510;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_26B52CCD0(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10A0C40690396FALL);
  if (*v3)
  {
    operator delete(*v3);
  }

  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(uint64_t a1)
{
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorCacheStore(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void sub_26B52CE3C(_Unwind_Exception *a1)
{
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 10);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 9);
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(v2);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 7);
  v5 = *v3;
  if (*v3)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Destroy(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
}

uint64_t fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Destroy(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 24);
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((v3 + 48));
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>(*a2);
    *(v3 + 64) = *(result + 56);
    *(result + 56) = v3;
  }

  return result;
}

void std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::deallocate(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x4000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x801uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x8000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize((a1 + 16), 0x1001uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(uint64_t a1)
{
  *a1 = &unk_287C09510;
  if (*(a1 + 129) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorCacheStore(v2);
      MEMORY[0x26D6787B0](v3, 0x10A0C40690396FALL);
    }
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  return fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);
}

uint64_t *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorCacheStore(uint64_t *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Clear(a1);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 10);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 9);
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 7);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::unordered_set();
}

void sub_26B52EDD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

void *fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(void *a1)
{
  v4 = a1 + 14;
  v2 = a1[14];
  v3 = v4[1];
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *v6;
        if (*v6)
        {
          do
          {
            v8 = *v7;
            operator delete(v7);
            v7 = v8;
          }

          while (v8);
        }

        *v6 = 0;
        MEMORY[0x26D6787B0](v6, 0x1020C405F07FB98);
        v2 = a1[14];
        v3 = a1[15];
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((a1 + 5));
  v9 = a1[2];
  a1[2] = 0;
  if (v9)
  {
    MEMORY[0x26D6787B0](v9, 0xC400A2AC0F1);
  }

  v10 = a1[1];
  a1[1] = 0;
  if (v10)
  {
    MEMORY[0x26D6787B0](v10, 0xC400A2AC0F1);
  }

  return a1;
}

void std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x26D6787B0);
  }
}

void sub_26B52F2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100]((v18 + 184));
  v20 = *(v18 + 176);
  *(v18 + 176) = 0;
  if (v20)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100](v18 + 176, v20);
  }

  fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_26B52F464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 136);
  *(v15 + 136) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void sub_26B52F65C(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v3, 0x10A0C40690396FALL);
  if (*v2)
  {
    operator delete(*v2);
  }

  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::CopyStates(a1, a2);
    *(a1 + 64) = *(a1 + 40);
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 92);
    *(a1 + 92) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 96) = MutableState;
  }

  return a1;
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v13 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v12 = 0;
    std::vector<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, a2 + 1, &v12);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::allocate((a1 + 72), 1uLL);
  *v7 = *fst::TropicalWeightTpl<float>::Zero();
  v7[5] = 0;
  *(v7 + 3) = 0u;
  *(v7 + 1) = 0u;
  v8 = *(a1 + 80);
  v7[6] = v8;
  ++*(v8 + 8);
  v7[7] = 0;
  *(*(a1 + 8) + 8 * v3) = v7;
  if (*a1 == 1)
  {
    v9 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(a1 + 32, 0, 0, &v13);
    v10 = *(a1 + 32);
    *v9 = v10;
    v9[1] = a1 + 32;
    *(v10 + 8) = v9;
    *(a1 + 32) = v9;
    ++*(a1 + 48);
  }

  return v7;
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v23 = 0;
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::allocate(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,0>(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
        *(v7 + 14) = *(v6 + 56);
        *(v7 + 15) = 0;
        if (*a1 == 1)
        {
          v8 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>((a1 + 4), 0, 0, &v23);
          v9 = a1[4];
          *v8 = v9;
          v8[1] = a1 + 4;
          *(v9 + 8) = v8;
          a1[4] = v8;
          ++a1[6];
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = a1[2];
      v10 = a1[3];
      if (v11 >= v10)
      {
        v13 = a1[1];
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>((a1 + 1), v17);
        }

        v18 = (8 * v14);
        *v18 = v7;
        v12 = 8 * v14 + 8;
        v19 = a1[1];
        v20 = a1[2] - v19;
        v21 = v18 - v20;
        memcpy(v18 - v20, v19, v20);
        v22 = a1[1];
        a1[1] = v21;
        a1[2] = v12;
        a1[3] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v7;
        v12 = (v11 + 1);
      }

      a1[2] = v12;
      v5 = ++v23;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

void *fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<136ul>::Allocate((v2 + 8), 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<72ul>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 58))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<4104ul>::Allocate((v2 + 8), 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<2056ul>::Allocate((v2 + 8), 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<1032ul>::Allocate((v2 + 8), 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<520ul>::Allocate((v2 + 8), 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<264ul>::Allocate((v2 + 8), 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  *(v2 + 56) = v4;
  return result;
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(a1, a2, a3, (a3 - a2) >> 4);
  return a1;
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
      *(v7 + 12) = *(a2 + 12);
      a2 += 16;
      v7 += 16;
    }

    v6[1] = v7;
  }

  return result;
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  result = fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

void *fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<40ul>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<24ul>::Allocate((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 60))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1032ul>::Allocate((v2 + 8), 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<520ul>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<264ul>::Allocate((v2 + 8), 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<136ul>::Allocate((v2 + 8), 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<72ul>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  *(v2 + 56) = v4;
  return result;
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 112) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
      (*(*v7 + 120))(v7, v6, &v20);
      if (!v20)
      {
        break;
      }

      if (!(*(*v20 + 16))(v20))
      {
        if (v20)
        {
          v8 = (*(*v20 + 24))();
        }

        else
        {
LABEL_7:
          v8 = *(&v20 + 1) + 16 * v22;
        }

        v9 = *(v8 + 12);
        v10 = v5[3];
        if (v10 == -INFINITY || (v11 = *(v8 + 8), v11 >= -INFINITY) && v11 <= -INFINITY)
        {
          v12 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else
        {
          v13 = v11 == INFINITY || v10 == INFINITY;
          v12 = v10 + v11;
          if (v13)
          {
            v12 = INFINITY;
          }
        }

        v19[0] = v9;
        *&v19[1] = v12;
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FilterArc(a1[22], v8, (v5 + 2), v19, a3);
      }

      if (!v20)
      {
        goto LABEL_20;
      }

      (*(*v20 + 8))();
LABEL_22:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    if (v22 < v21)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (*(&v21 + 1))
    {
      --**(&v21 + 1);
    }

    goto LABEL_22;
  }

LABEL_23:
  v16 = *a3;
  v14 = a3 + 1;
  v15 = v16;
  if (v16 != v14)
  {
    do
    {
      fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v15 + 5));
      v17 = v15[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v15[2];
          v13 = *v18 == v15;
          v15 = v18;
        }

        while (!v13);
      }

      v15 = v18;
    }

    while (v18 != v14);
  }
}

void sub_26B530110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t *fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::AddArc(uint64_t a1, int a2, float ***a3)
{
  v5 = *a3;
  v6 = *(a3 + 1);
  State = fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::FindState(a1, a3[1]);
  v10[0] = v5;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = State;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(*(a1 + 120), a2);
  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::push_back[abi:ne200100](MutableState + 3, v10);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = MutableState[3];
  v6 = MutableState[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 64);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 64) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(a1, a2);
  *(MutableState + 14) |= 0xAu;
}

void fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = std::__tree<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2);
  if (*(v6 + 10) != -1)
  {
    v7 = *v6[6];
    operator new();
  }

  v8 = *a2;
  v9 = *fst::TropicalWeightTpl<float>::Zero();
  operator new();
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (*v4)
  {
    v6 = *v4;
    do
    {
      v7 = *(a2 + 4);
      if (v7 == -INFINITY || (v8 = *(v6 + 3), v8 >= -INFINITY) && v8 <= -INFINITY)
      {
        v7 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else if (v7 >= v8)
      {
        v7 = *(v6 + 3);
      }

      *(a2 + 4) = v7;
      if (v5 == v6 || *(v6 + 2) != *(v5 + 2))
      {
        v11 = *v6;
        v5 = v6;
      }

      else
      {
        v9 = *(v5 + 3);
        if (v9 == -INFINITY || (v10 = *(v6 + 3), v10 >= -INFINITY) && v10 <= -INFINITY)
        {
          v9 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else if (v9 >= v10)
        {
          v9 = *(v6 + 3);
        }

        *(v5 + 3) = v9;
        if (v9 >= -INFINITY && v9 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v11 = *v6;
        v12 = *v5;
        *v5 = **v5;
        operator delete(v12);
      }

      v6 = v11;
    }

    while (v11);
    for (i = *v4; i; i = *i)
    {
      v14 = *(i + 3);
      if (v14 == -INFINITY || (v15 = *(a2 + 4), v15 >= -INFINITY) && v15 <= -INFINITY)
      {
        v16 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v17 = v14 == INFINITY;
        v16 = v14 - v15;
        if (v17)
        {
          v16 = INFINITY;
        }

        if (v15 == INFINITY)
        {
          v16 = NAN;
        }
      }

      if ((LODWORD(v16) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v16 = *(a1 + 144) * floorf((v16 / *(a1 + 144)) + 0.5);
      }

      *(i + 3) = v16;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

void sub_26B53065C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::sort[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2;
    do
    {
      ++v3;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  result = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(v2, v3, &v6);
  *a1 = result;
  return result;
}

uint64_t *std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v4 = *result;
      if (*(*result + 8) < *(result + 2))
      {
        *v4 = result;
        *result = 0;
        return v4;
      }
    }

    else
    {
      v8 = a2 / 2;
      v9 = a2 - a2 / 2;
      v10 = result;
      if (a2 >= 4)
      {
        v11 = v8;
        v10 = result;
        do
        {
          --v11;
          v10 = *v10;
        }

        while (v11 > 1);
      }

      v12 = *v10;
      *v10 = 0;
      v13 = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(result, v8, a3);
      v14 = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(v12, v9, a3);

      return std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__merge<std::__less<void,void>>(v13, v14);
    }
  }

  return result;
}

uint64_t *std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__merge<std::__less<void,void>>(uint64_t *a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 2);
      if (*(a2 + 2) >= v2)
      {
        v3 = a2;
        a2 = a1;
      }

      else
      {
        v3 = a2;
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3 && *(v3 + 2) < v2);
        *v4 = a1;
      }

      v5 = *a1;
      v6 = v3 != 0;
      if (*a1)
      {
        v7 = v3 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        do
        {
          v8 = v5;
          v9 = *(v5 + 8);
          if (*(v3 + 2) < v9)
          {
            v10 = v3;
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10 && *(v10 + 2) < v9);
            *a1 = v3;
            v3 = *v11;
            *v11 = v8;
          }

          v5 = *v8;
          v6 = v3 != 0;
          if (*v8)
          {
            v12 = v3 == 0;
          }

          else
          {
            v12 = 1;
          }

          a1 = v8;
        }

        while (!v12);
        a1 = v8;
      }

      if (v6)
      {
        *a1 = v3;
      }
    }

    else
    {
      return a1;
    }
  }

  return a2;
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::FindState(uint64_t a1, float **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::FindState(*(a1 + 184), a2);
  v5 = State;
  if (*(a1 + 152))
  {
    v6 = *(a1 + 160);
    if (State >= ((v6[1] - *v6) >> 2))
    {
      fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v10);
      v7 = v6[1];
      if (v7 >= v6[2])
      {
        v8 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float>>(v6, &v10);
      }

      else
      {
        *v7 = v10;
        v8 = (v7 + 1);
      }

      v6[1] = v8;
    }
  }

  return v5;
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[15] - a1[14]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v8, 1);
  if (Id != v2)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v8;
      if (*v8)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *v4 = 0;
      MEMORY[0x26D6787B0](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

int *fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeDistance@<X0>(uint64_t a1@<X0>, float **a2@<X1>, float *a3@<X8>)
{
  result = fst::TropicalWeightTpl<float>::Zero();
  v7 = *result;
  for (i = *a2; i; i = *i)
  {
    v9 = *(i + 2);
    v10 = **(a1 + 152);
    if (v9 >= (*(*(a1 + 152) + 8) - v10) >> 2)
    {
      result = fst::TropicalWeightTpl<float>::Zero();
    }

    else
    {
      result = (v10 + 4 * v9);
    }

    v11 = i[3];
    if (v11 == -INFINITY || (v12 = *result, *result >= -INFINITY) && *result <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight();
      v13 = *result;
    }

    else
    {
      v14 = v11 == INFINITY || v12 == INFINITY;
      v13 = v12 + v11;
      if (v14)
      {
        v13 = INFINITY;
      }
    }

    if (v7 == -INFINITY || v13 >= -INFINITY && v13 <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight();
      v7 = *result;
    }

    else if (v7 >= v13)
    {
      v7 = v13;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[16] = a2;
  if (a3)
  {
    v5 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 4), &fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey, &fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
    if (v6)
    {
      v7 = a1[13];
      v8 = a1[14];
      v9 = a1[15];
      v10 = (v8 - v7) >> 3;
      *(v5 + 4) = v10;
      if (v8 >= v9)
      {
        v13 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v7;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>((a1 + 13), v15);
        }

        *(8 * v10) = *a2;
        v11 = 8 * v10 + 8;
        v16 = a1[13];
        v17 = a1[14] - v16;
        v18 = (8 * v10 - v17);
        memcpy(v18, v16, v17);
        v19 = a1[13];
        a1[13] = v18;
        a1[14] = v11;
        a1[15] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = *a2;
        v11 = (v8 + 1);
      }

      a1[14] = v11;
    }

    else
    {
      return *(v5 + 4);
    }
  }

  else
  {
    v12 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::find<int>(a1 + 4, &fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
    if (v12)
    {
      return *(v12 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v7 = fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()((a1 + 48), *a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()((a1 + 64), *(i + 4), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v15 = fst::PoolAllocator<std::__hash_node<int,void *>>::allocate((a1 + 32), 1uLL);
  v27[0] = v15;
  v27[1] = a1 + 32;
  v27[2] = 1;
  *v15 = 0;
  v15[1] = v8;
  *(v15 + 4) = *a3;
  v16 = (*(a1 + 40) + 1);
  v17 = *(a1 + 56);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(a1, v21);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 24);
    *(a1 + 24) = v24;
    *(v22 + 8 * v3) = a1 + 24;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v25 >= v9)
        {
          v25 %= v9;
        }
      }

      else
      {
        v25 &= v9 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  v27[0] = 0;
  ++*(a1 + 40);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](v27, 0);
  return i;
}

void sub_26B530E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

unint64_t fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(uint64_t *a1, int a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  if (a2 == -1)
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v3 = (*(v2 + 104) + 8 * a2);
  }

  v5 = *v3;
  for (result = *(v5 + 8); ; result ^= (2 * result) ^ (32 * *(v5 + 2)) ^ (*(v5 + 2) >> 59) ^ *(v5 + 3))
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }
  }

  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = (*(v5 + 104) + 8 * a2);
    }

    v7 = *v6;
    if (a3 == -1)
    {
      v8 = *(v5 + 128);
    }

    else
    {
      v8 = (*(v5 + 104) + 8 * a3);
    }

    if (*(*v8 + 8) == *(v7 + 8))
    {
      return std::operator==[abi:ne200100]<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,std::allocator<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(*v8, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,std::allocator<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(a1 + 6, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 104) == 1)
  {
    v5 = *(MutableState + 14);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 14) = v5 | 4;
      v6 = MutableState[4] - MutableState[3] + *(a1 + 128) + 64;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    return *(a1 + 96);
  }

  if (*(a1 + 88) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 92) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, 0);
      *(a1 + 96) = MutableState;
      *(MutableState + 14) |= 4u;
      std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::reserve(MutableState + 3, 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = *fst::TropicalWeightTpl<float>::Zero();
      *(v5 + 56) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 96);
      *(result + 14) |= 4u;
      return result;
    }

    *(v5 + 56) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  if (*(a1 + 120) != 1)
  {
    return;
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    LogMessage::LogMessage(v40, __p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore: Enter GC: object = ", 33);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(", 1);
    v10 = MEMORY[0x26D678650](v9, a1);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "), free recently cached = ", 26);
    v12 = MEMORY[0x26D678660](v11, a3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", cache size = ", 15);
    v14 = MEMORY[0x26D678690](v13, *(a1 + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache frac = ", 15);
    v15 = std::ostream::operator<<();
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", cache limit = ", 16);
    v17 = MEMORY[0x26D678690](v16, *(a1 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
    LogMessage::~LogMessage(v40);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = (*(a1 + 112) * a4);
  v19 = *(a1 + 40);
  *(a1 + 64) = v19;
  while (v19 != a1 + 32)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v20 - 1;
    }

    else
    {
      v21 = *(a1 + 92);
    }

    MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1, v21);
    v23 = *(a1 + 128);
    if (v23 <= v18 || *(MutableState + 15))
    {
LABEL_12:
      *(MutableState + 14) &= ~8u;
      v19 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v19;
    }

    else
    {
      if (a3)
      {
        if (MutableState == a2)
        {
          goto LABEL_12;
        }

        v24 = *(MutableState + 14);
      }

      else
      {
        v24 = *(MutableState + 14);
        if ((v24 & 8) != 0 || MutableState == a2)
        {
          goto LABEL_12;
        }
      }

      if ((v24 & 4) != 0)
      {
        v25 = MutableState[4] - MutableState[3] + 64;
        v26 = v23 > v25;
        v27 = v23 - v25;
        if (v26)
        {
          *(a1 + 128) = v27;
        }
      }

      fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Delete(a1);
      v19 = *(a1 + 64);
    }
  }

  if ((a3 & 1) != 0 || *(a1 + 128) <= v18)
  {
    v28 = *(a1 + 128);
    if (v18)
    {
      if (v28 > v18)
      {
        v29 = *(a1 + 112);
        do
        {
          v29 *= 2;
          v26 = v28 > 2 * v18;
          v18 *= 2;
        }

        while (v26);
        *(a1 + 112) = v29;
      }
    }

    else if (v28)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v43, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore:GC: Unable to free all cached states", 49);
      LogMessage::~LogMessage(&v43);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(a1, a2, 1, a4);
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v40, "INFO");
    LogMessage::LogMessage(&v42, v40);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore: Exit GC: object = ", 32);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(", 1);
    v32 = MEMORY[0x26D678650](v31, a1);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "), free recently cached = ", 26);
    v34 = MEMORY[0x26D678660](v33, a3);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", cache size = ", 15);
    v36 = MEMORY[0x26D678690](v35, *(a1 + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", cache frac = ", 15);
    v37 = std::ostream::operator<<();
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", cache limit = ", 16);
    v39 = MEMORY[0x26D678690](v38, *(a1 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
    LogMessage::~LogMessage(&v42);
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }
  }
}

void sub_26B5315C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v3 = result;
    v4 = result[1] - *result;
    v5[4] = result + 3;
    v5[0] = fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(result + 3, a2);
    v5[1] = v5[0] + v4;
    v5[2] = v5[0] + v4;
    v5[3] = v5[0] + 16 * a2;
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(v3, v5);
    return std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(v5);
  }

  return result;
}

void sub_26B5316C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::deallocate(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Delete(void *a1)
{
  v1 = *(a1[8] + 16);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(void *a1)
{
  fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Destroy(*(a1[1] + 8 * *(a1[8] + 16)), a1 + 9);
  *(a1[1] + 8 * *(a1[8] + 16)) = 0;
  v2 = a1[8];
  v4 = *v2;
  v3 = v2[1];
  a1[8] = v3;
  *(v4 + 8) = v3;
  *v3 = v4;
  --a1[6];

  return std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100]((a1 + 4), v2);
}

uint64_t *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::push_back[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v11 = result + 3;
    v14[4] = v3 + 3;
    if (v10)
    {
      v12 = fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v7];
    v14[0] = v12;
    v14[1] = v13;
    v14[3] = &v12[2 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 8);
    *(v13 + 3) = *(a2 + 12);
    v14[2] = v13 + 2;
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(v3, v14);
    v6 = v3[1];
    result = std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(v14);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 12) = *(a2 + 12);
    v6 = v4 + 16;
  }

  v3[1] = v6;
  return result;
}

void sub_26B5318E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Start(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(*a1 + 24))(a1, 4))
    {
      *(a1 + 56) = 1;
    }

    else if ((*(a1 + 56) & 1) == 0)
    {
      v2 = (*(*a1 + 48))(a1);
      if (v2 != -1)
      {
        *(a1 + 60) = v2;
        *(a1 + 56) = 1;
        if (*(a1 + 64) <= v2)
        {
          *(a1 + 64) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 60);
}

float fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 56))(&v11, a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v11;
    MutableState[14] |= 9u;
  }

  v7 = a1[15];
  if (*(v7 + 92) == a2)
  {
    v8 = (v7 + 96);
  }

  else
  {
    v8 = (*(v7 + 8) + 8 * a2 + 8);
  }

  v9 = *v8;
  result = *v9;
  *a3 = *v9;
  return result;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 32))(v4);
    std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::shared_ptr[abi:ne200100]<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,0>(&v8, v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v6;
  *a1 = &unk_287C092F8;
  return a1;
}

void sub_26B531DA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::shared_ptr[abi:ne200100]<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_default_delete<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t std::__shared_ptr_pointer<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_default_delete<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_default_delete<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t fst::CacheStateIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 64);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 64) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 64);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

void *fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 15);
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

int *fst::ComputeTotalWeight<fst::ArcTpl<fst::TropicalWeightTpl<float>>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, float *a4@<X8>)
{
  if (a3)
  {
    if ((*(*a1 + 16))(a1) >= ((a2[1] - *a2) >> 2))
    {
      result = fst::TropicalWeightTpl<float>::Zero();
    }

    else
    {
      result = (*a2 + 4 * (*(*a1 + 16))(a1));
    }

    v8 = *result;
  }

  else
  {
    result = fst::TropicalWeightTpl<float>::Zero();
    v8 = *result;
    v9 = *a2;
    if (a2[1] != *a2)
    {
      v10 = 0;
      do
      {
        result = (*(*a1 + 24))(&v14, a1, v10);
        v11 = *(v9 + 4 * v10);
        if (v11 == -INFINITY || *&v14 >= -INFINITY && *&v14 <= -INFINITY)
        {
          result = fst::TropicalWeightTpl<float>::NoWeight();
          v12 = *result;
        }

        else
        {
          v13 = *&v14 == INFINITY || v11 == INFINITY;
          v12 = v11 + *&v14;
          if (v13)
          {
            v12 = INFINITY;
          }
        }

        if (v8 == -INFINITY || v12 >= -INFINITY && v12 <= -INFINITY)
        {
          result = fst::TropicalWeightTpl<float>::NoWeight();
          v8 = *result;
        }

        else if (v8 >= v12)
        {
          v8 = v12;
        }

        ++v10;
        v9 = *a2;
      }

      while (v10 < (a2[1] - *a2) >> 2);
    }
  }

  *a4 = v8;
  return result;
}

uint64_t fst::Reweight<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t *a1, uint64_t *a2, int a3)
{
  result = (*(*a1 + 136))(a1);
  if (!result)
  {
    return result;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  (*(*a1 + 112))(a1, &v61);
LABEL_3:
  if (v61)
  {
    if ((*(*v61 + 16))(v61))
    {
      goto LABEL_90;
    }

    if (v61)
    {
      v7 = (*(*v61 + 24))(v61);
      goto LABEL_9;
    }
  }

  else if (v63 >= v62)
  {
    goto LABEL_90;
  }

  v7 = v63;
LABEL_9:
  v8 = v7;
  v9 = *a2;
  if (v7 != (a2[1] - *a2) >> 2)
  {
    v10 = fst::TropicalWeightTpl<float>::Zero();
    LODWORD(v57) = *(v9 + 4 * v8);
    LODWORD(v60) = *v10;
    v11.n128_u32[0] = v57;
    if (*&v57 == *&v60)
    {
      goto LABEL_49;
    }

    (*(*a1 + 272))(a1, v8, &v60, *&v57);
    while (1)
    {
      if ((*(*v60 + 16))(v60))
      {
        if (v60)
        {
          (*(*v60 + 8))(v60);
        }

        if (a3)
        {
LABEL_49:
          if (a3 == 1)
          {
            (*(*a1 + 24))(&v60, a1, v8, v11);
            v21 = *(v9 + 4 * v8);
            if (v21 == -INFINITY || *&v60 >= -INFINITY && *&v60 <= -INFINITY)
            {
              goto LABEL_57;
            }

            v24 = *&v60 == INFINITY || v21 == INFINITY;
            v23 = v21 + *&v60;
            if (v24)
            {
              v23 = INFINITY;
            }

            goto LABEL_68;
          }
        }

        else
        {
          (*(*a1 + 24))(&v60, a1, v8);
          if (*&v60 == -INFINITY || (v22 = *(v9 + 4 * v8), v22 >= -INFINITY) && v22 <= -INFINITY)
          {
LABEL_57:
            v23 = *fst::TropicalWeightTpl<float>::NoWeight();
          }

          else
          {
            v23 = *&v60 - v22;
            if (*&v60 == INFINITY)
            {
              v23 = INFINITY;
            }

            if (v22 == INFINITY)
            {
              v23 = NAN;
            }
          }

LABEL_68:
          *&v57 = v23;
          (*(*a1 + 160))(a1, v8, &v57);
        }

        if (v61)
        {
          (*(*v61 + 32))(v61);
        }

        else
        {
          ++v63;
        }

        goto LABEL_3;
      }

      v12 = (*(*v60 + 24))(v60);
      v57 = *v12;
      v58 = *(v12 + 8);
      v59 = *(v12 + 12);
      v13 = v59;
      v14 = *a2;
      if (v59 < ((a2[1] - *a2) >> 2))
      {
        v15 = fst::TropicalWeightTpl<float>::Zero();
        v65 = *(v14 + 4 * v13);
        v64 = *v15;
        if (v65 != v64)
        {
          break;
        }
      }

LABEL_45:
      (*(*v60 + 32))(v60);
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_44:
        (*(*v60 + 80))(v60, &v57);
        goto LABEL_45;
      }

      v16 = *(v9 + 4 * v8);
      if (v16 == -INFINITY || v58 >= -INFINITY && v58 <= -INFINITY)
      {
        v17 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v17 = INFINITY;
        if (v16 == INFINITY || v58 == INFINITY)
        {
LABEL_36:
          v19 = *(v14 + 4 * v13);
          if (v19 >= -INFINITY && v19 <= -INFINITY)
          {
            goto LABEL_38;
          }

LABEL_39:
          if (v19 == INFINITY)
          {
            v20 = NAN;
          }

          else
          {
            v20 = INFINITY;
            if (v17 != INFINITY)
            {
              v20 = v17 - v19;
            }
          }

          goto LABEL_43;
        }

        v17 = v16 + v58;
      }

      if (v17 != -INFINITY)
      {
        goto LABEL_36;
      }

LABEL_38:
      v20 = *fst::TropicalWeightTpl<float>::NoWeight();
LABEL_43:
      v58 = v20;
      goto LABEL_44;
    }

    if (v58 == -INFINITY || (v18 = *(v14 + 4 * v13), v18 >= -INFINITY) && v18 <= -INFINITY)
    {
      v17 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else
    {
      v17 = INFINITY;
      if (v58 == INFINITY || v18 == INFINITY)
      {
        goto LABEL_29;
      }

      v17 = v58 + v18;
    }

    if (v17 == -INFINITY)
    {
      goto LABEL_38;
    }

LABEL_29:
    v19 = *(v9 + 4 * v8);
    if (v19 >= -INFINITY && v19 <= -INFINITY)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  while (1)
  {
LABEL_90:
    if (!v61)
    {
      if (v63 >= v62)
      {
        break;
      }

      goto LABEL_75;
    }

    if ((*(*v61 + 16))(v61))
    {
      break;
    }

    if (v61)
    {
      v25 = (*(*v61 + 24))(v61);
      goto LABEL_76;
    }

LABEL_75:
    v25 = v63;
LABEL_76:
    if (a3 == 1)
    {
      v26 = fst::TropicalWeightTpl<float>::Zero();
      (*(*a1 + 24))(&v60, a1, v25);
      v27 = *v26;
      if (*v26 == -INFINITY || *&v60 >= -INFINITY && *&v60 <= -INFINITY)
      {
        v28 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v29 = *&v60 == INFINITY || v27 == INFINITY;
        v28 = v27 + *&v60;
        if (v29)
        {
          v28 = INFINITY;
        }
      }

      *&v57 = v28;
      (*(*a1 + 160))(a1, v25, &v57);
    }

    if (v61)
    {
      (*(*v61 + 32))(v61);
    }

    else
    {
      ++v63;
    }
  }

  if ((*(*a1 + 16))(a1) >= ((a2[1] - *a2) >> 2))
  {
    v30 = fst::TropicalWeightTpl<float>::Zero();
  }

  else
  {
    v30 = (*a2 + 4 * (*(*a1 + 16))(a1));
  }

  v31 = *v30;
  v32 = fst::TropicalWeightTpl<float>::One();
  *&v57 = v31;
  LODWORD(v60) = *v32;
  v33.n128_f32[0] = v31;
  if (v31 == *&v60)
  {
    goto LABEL_171;
  }

  v34 = fst::TropicalWeightTpl<float>::Zero();
  *&v57 = v31;
  LODWORD(v60) = *v34;
  v33.n128_f32[0] = v31;
  if (v31 == *&v60)
  {
    goto LABEL_171;
  }

  v35 = (*(*a1 + 56))(a1, 0x2000000000, 1, v31);
  v36 = *a1;
  if ((v35 & 0x2000000000) == 0)
  {
    v37 = (*(v36 + 176))(a1);
    if (a3)
    {
      v38 = *fst::TropicalWeightTpl<float>::One();
      if (v38 == -INFINITY || v31 >= -INFINITY && v31 <= -INFINITY)
      {
        v39 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else if (v31 == INFINITY)
      {
        v39 = NAN;
      }

      else
      {
        v39 = INFINITY;
        if (v38 != INFINITY)
        {
          v39 = v38 - v31;
        }
      }
    }

    else
    {
      v39 = v31;
    }

    v54 = (*(*a1 + 16))(a1);
    v57 = 0;
    v58 = v39;
    v59 = v54;
    (*(*a1 + 184))(a1, v37, &v57);
    (*(*a1 + 152))(a1, v37);
    goto LABEL_171;
  }

  v40 = (*(v36 + 16))(a1);
  (*(*a1 + 272))(a1, v40, &v60);
  while (2)
  {
    if (!(*(*v60 + 16))(v60))
    {
      v41 = (*(*v60 + 24))(v60);
      v57 = *v41;
      v42 = *(v41 + 8);
      v58 = v42;
      v59 = *(v41 + 12);
      if (a3)
      {
        v43 = *fst::TropicalWeightTpl<float>::One();
        if (v43 == -INFINITY || v31 >= -INFINITY && v31 <= -INFINITY)
        {
          v44 = *fst::TropicalWeightTpl<float>::NoWeight();
          goto LABEL_110;
        }

        if (v31 == INFINITY)
        {
          goto LABEL_117;
        }

        v44 = INFINITY;
        if (v43 != INFINITY)
        {
          v44 = v43 - v31;
LABEL_110:
          if (v44 == -INFINITY)
          {
            goto LABEL_117;
          }
        }

        if (v58 >= -INFINITY && v58 <= -INFINITY)
        {
LABEL_117:
          v45 = *fst::TropicalWeightTpl<float>::NoWeight();
        }

        else
        {
          v47 = v58 == INFINITY || v44 == INFINITY;
          v45 = v44 + v58;
          if (v47)
          {
            v45 = INFINITY;
          }
        }
      }

      else
      {
        if (v31 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
        {
          goto LABEL_117;
        }

        v46 = v42 == INFINITY || v31 == INFINITY;
        v45 = v31 + v42;
        if (v46)
        {
          v45 = INFINITY;
        }
      }

      v58 = v45;
      (*(*v60 + 80))(v60, &v57);
      (*(*v60 + 32))(v60);
      continue;
    }

    break;
  }

  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  if (a3)
  {
    v48 = *fst::TropicalWeightTpl<float>::One();
    if (v48 == -INFINITY || v31 >= -INFINITY && v31 <= -INFINITY)
    {
      v49 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else
    {
      v24 = v48 == INFINITY;
      v50 = v48 - v31;
      if (v24)
      {
        v50 = INFINITY;
      }

      if (v31 == INFINITY)
      {
        v49 = NAN;
      }

      else
      {
        v49 = v50;
      }
    }

    (*(*a1 + 24))(&v60, a1, v40);
    if (v49 == -INFINITY || *&v60 >= -INFINITY && *&v60 <= -INFINITY)
    {
LABEL_155:
      v51 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else
    {
      v52 = *&v60 == INFINITY || v49 == INFINITY;
      v51 = v49 + *&v60;
      if (v52)
      {
        v51 = INFINITY;
      }
    }
  }

  else
  {
    (*(*a1 + 24))(&v60, a1, v40);
    if (v31 == -INFINITY || *&v60 >= -INFINITY && *&v60 <= -INFINITY)
    {
      goto LABEL_155;
    }

    v53 = *&v60 == INFINITY || v31 == INFINITY;
    v51 = v31 + *&v60;
    if (v53)
    {
      v51 = INFINITY;
    }
  }

  *&v57 = v51;
  (*(*a1 + 160))(a1, v40, &v57);
LABEL_171:
  v55 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0, v33);
  v56 = fst::ReweightProperties(v55);
  (*(*a1 + 168))(a1, v56, 0xFFFFFFFF0007);
  result = v61;
  if (v61)
  {
    return (*(*v61 + 8))(v61);
  }

  return result;
}

void sub_26B533094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

int *fst::RemoveWeight<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, _DWORD *a2, int a3)
{
  result = fst::TropicalWeightTpl<float>::One();
  LODWORD(v22) = *a2;
  LODWORD(v20) = *result;
  if (*&v22 == *&v20)
  {
    return result;
  }

  result = fst::TropicalWeightTpl<float>::Zero();
  LODWORD(v22) = *a2;
  LODWORD(v20) = *result;
  v7 = *&v22;
  if (*&v22 == *&v20)
  {
    return result;
  }

  if (a3)
  {
    v22 = 0;
    v23 = 0.0;
    v25 = 0;
    (*(*a1 + 112))(a1, &v22, v7);
    while (1)
    {
      result = v22;
      if (!v22)
      {
        break;
      }

      v8 = (*(*v22 + 16))(v22);
      result = v22;
      if (v8)
      {
        if (v22)
        {
          return (*(*v22 + 8))();
        }

        return result;
      }

      if (!v22)
      {
        goto LABEL_11;
      }

      v9 = (*(*v22 + 24))();
      if (v22)
      {
        v10 = (*(*v22 + 24))(v22);
      }

      else
      {
        v10 = v25;
      }

LABEL_12:
      (*(*a1 + 24))(&v21, a1, v10);
      if (v21 == -INFINITY || (v11 = *a2, *a2 >= -INFINITY) && *a2 <= -INFINITY)
      {
        v12 = *fst::TropicalWeightTpl<float>::NoWeight();
      }

      else
      {
        v12 = v21 - v11;
        if (v21 == INFINITY)
        {
          v12 = INFINITY;
        }

        if (v11 == INFINITY)
        {
          v12 = NAN;
        }
      }

      *&v20 = v12;
      (*(*a1 + 160))(a1, v9, &v20);
      if (v22)
      {
        (*(*v22 + 32))(v22);
      }

      else
      {
        ++v25;
      }
    }

    if (v25 >= SLODWORD(v23))
    {
      return result;
    }

LABEL_11:
    v9 = v25;
    v10 = v25;
    goto LABEL_12;
  }

  v13 = (*(*a1 + 16))(a1, *&v22);
  (*(*a1 + 272))(a1, v13, &v20);
  while (!(*(*v20 + 16))(v20))
  {
    v14 = (*(*v20 + 24))(v20);
    v22 = *v14;
    v15 = *(v14 + 8);
    v23 = v15;
    v24 = *(v14 + 12);
    if (v15 == -INFINITY || (v16 = *a2, *a2 >= -INFINITY) && *a2 <= -INFINITY)
    {
      v17 = *fst::TropicalWeightTpl<float>::NoWeight();
    }

    else if (v16 == INFINITY)
    {
      v17 = NAN;
    }

    else
    {
      v17 = INFINITY;
      if (v15 != INFINITY)
      {
        v17 = v15 - v16;
      }
    }

    v23 = v17;
    (*(*v20 + 80))(v20, &v22);
    (*(*v20 + 32))(v20);
  }

  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  (*(*a1 + 24))(&v20, a1, v13);
  if (*&v20 == -INFINITY || (v18 = *a2, *a2 >= -INFINITY) && *a2 <= -INFINITY)
  {
    v19 = *fst::TropicalWeightTpl<float>::NoWeight();
  }

  else
  {
    v19 = *&v20 - v18;
    if (*&v20 == INFINITY)
    {
      v19 = INFINITY;
    }

    if (v18 == INFINITY)
    {
      v19 = NAN;
    }
  }

  *&v22 = v19;
  return (*(*a1 + 160))(a1, v13, &v22);
}