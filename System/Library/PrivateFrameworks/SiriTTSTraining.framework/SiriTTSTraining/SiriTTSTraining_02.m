void sub_252B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LogWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::LogWeightTpl<float>::Type(void)::type;
}

void sub_2539C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

BOOL fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *a3;
  if (*a2 != INFINITY)
  {
    v5 = *a2;
    if (v4 != INFINITY)
    {
      if (v3 <= v4)
      {
        v7 = expf(-(v4 - v3));
        v5 = v3 - logf(v7 + 1.0);
      }

      else
      {
        v6 = expf(-(v3 - v4));
        v5 = v4 - logf(v6 + 1.0);
      }
    }
  }

  return v5 == v3 && v3 != v4;
}

uint64_t fst::TopOrderQueue<int>::TopOrderQueue(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_271C20;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 2);
  std::vector<int>::vector[abi:ne200100]((a1 + 48), (a2[1] - *a2) >> 2);
  return a1;
}

void sub_25558(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::deque<int>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
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

void *fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = off_271E28;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::SccQueue<int,fst::QueueBase<int>>::~SccQueue(void *a1)
{
  *a1 = off_271E28;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Update_(uint64_t a1, int a2)
{
  result = *(**(a1 + 16) + 8 * *(**(a1 + 24) + 4 * a2));
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Head(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    while (1)
    {
      v4 = *(**(a1 + 16) + 8 * v2);
      if (v4)
      {
        v5 = (*(*v4 + 48))(v4);
        v3 = *(a1 + 32);
        if (v5)
        {
          goto LABEL_10;
        }

        v6 = v3;
        if (*(**(a1 + 16) + 8 * v3))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = v2;
        v3 = v2;
      }

      v7 = *(a1 + 40);
      if (v6 < (*(a1 + 48) - v7) >> 2 && *(v7 + 4 * v6) != -1)
      {
        goto LABEL_11;
      }

LABEL_10:
      v2 = v3 + 1;
      *(a1 + 32) = v3 + 1;
      if (v3++ >= *(a1 + 36))
      {
        goto LABEL_11;
      }
    }
  }

  v3 = *(a1 + 32);
LABEL_11:
  v9 = *(**(a1 + 16) + 8 * v3);
  if (!v9)
  {
    return *(*(a1 + 40) + 4 * v3);
  }

  v10 = *(*v9 + 16);

  return v10();
}

void fst::SccQueue<int,fst::QueueBase<int>>::Enqueue(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = **(a1 + 24);
  v7 = *(v6 + 4 * a2);
  if (v4 > v5)
  {
    *(a1 + 36) = v7;
LABEL_3:
    *(a1 + 32) = v7;
    goto LABEL_7;
  }

  if (v7 <= v5)
  {
    if (v7 < v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 36) = v7;
  }

LABEL_7:
  v8 = *(v6 + 4 * a2);
  v9 = *(**(a1 + 16) + 8 * v8);
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10();
  }

  else
  {
    for (i = *(a1 + 40); v8 >= (*(a1 + 48) - i) >> 2; v8 = *(**(a1 + 24) + 4 * a2))
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 40), &fst::kNoStateId);
      i = *(a1 + 40);
    }

    *(i + 4 * v8) = a2;
  }
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Dequeue(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(**(a1 + 16) + 8 * v2);
  if (result)
  {
    return (*(*result + 32))();
  }

  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (v2 < (*(v5 + 8) - v4) >> 2)
  {
    *(v4 + 4 * v2) = -1;
  }

  return result;
}

uint64_t fst::SccQueue<int,fst::QueueBase<int>>::Empty(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 32);
  if (v2 < v1)
  {
    return 0;
  }

  if (v2 > v1)
  {
    return 1;
  }

  v4 = *(**(a1 + 16) + 8 * v2);
  if (v4)
  {
    return (*(*v4 + 48))(*(**(a1 + 16) + 8 * v2));
  }

  v5 = *(a1 + 40);
  if (v2 >= (*(a1 + 48) - v5) >> 2)
  {
    return 1;
  }

  return *(v5 + 4 * v2) == -1;
}

double fst::SccQueue<int,fst::QueueBase<int>>::Clear(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    do
    {
      v3 = *(**(a1 + 16) + 8 * v2);
      if (v3)
      {
        (*(*v3 + 56))(v3);
      }

      else
      {
        v4 = *(a1 + 40);
        if (v2 < (*(a1 + 48) - v4) >> 2)
        {
          *(v4 + 4 * v2) = -1;
        }
      }
    }

    while (v2++ < *(a1 + 36));
  }

  result = NAN;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  return result;
}

void fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_100;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(&v51, __p);
    v5 = fst::cerr(v4);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Weight does not have the path property: ", 40);
    v42 = fst::LogWeightTpl<float>::Type();
    v43 = *(v42 + 23);
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = *(v42 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v44, v45);
    fst::LogMessage::~LogMessage(&v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_100:
    v46 = a1 + 116;
    goto LABEL_101;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v6 = a1[1];
  for (i = *v6; a2 >= ((v6[1] - *v6) >> 2); i = *v6)
  {
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](v6, __p);
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), __p);
    v6 = a1[1];
  }

  if (*(a1 + 33) == 1)
  {
    v8 = a1[11];
    if (a2 >= ((a1[12] - v8) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v8 = a1[11];
      }

      while (a2 >= ((a1[12] - v8) >> 2));
      i = *a1[1];
    }

    *(v8 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v46 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_89;
    }

    v9 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v10 = a1[1];
      if (v9 < ((v10[1] - *v10) >> 2))
      {
        break;
      }

      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](v10, __p);
      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), __p);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(__p[0]) = (*(**a1 + 32))(*a1, v9);
      v51 = 2139095040;
      if (*__p != INFINITY)
      {
LABEL_89:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_101:
        *v46 = 1;
        return;
      }
    }

    *(a1[8] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
    v11 = a1[5];
    v12 = *(v11 + 4 * v9);
    *(v11 + 4 * v9) = 2139095040;
    v13 = *a1;
    v50 = 0;
    (*(*v13 + 136))(v13, v9, __p);
    while (1)
    {
      if (__p[0])
      {
        if ((*(*__p[0] + 24))(__p[0]))
        {
          goto LABEL_81;
        }

        if (__p[0])
        {
          v14 = (*(*__p[0] + 32))(__p[0]);
          goto LABEL_32;
        }
      }

      else if (v50 >= v48)
      {
LABEL_81:
        v39 = 1;
        goto LABEL_83;
      }

      v14 = __p[1] + 16 * v50;
LABEL_32:
      v15 = a1[1];
      for (j = *(v14 + 3); j >= (v15[1] - *v15) >> 2; j = *(v14 + 3))
      {
        v51 = 2139095040;
        std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](v15, &v51);
        v51 = 2139095040;
        std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v51);
        LOBYTE(v51) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v51);
        v15 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v17 = a1[11];
          LODWORD(j) = *(v14 + 3);
          if (j < ((a1[12] - v17) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v15 = a1[1];
        if (*(v17 + 4 * j) != *(a1 + 28))
        {
          *(*v15 + 4 * j) = 2139095040;
          *(a1[5] + 4 * *(v14 + 3)) = 2139095040;
          j = *(v14 + 3);
          *(a1[8] + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << j);
          *(a1[11] + 4 * j) = *(a1 + 28);
          v15 = a1[1];
          LODWORD(j) = *(v14 + 3);
        }
      }

      v18 = *v15;
      v19 = a1[5];
      v20 = NAN;
      if (v12 != -INFINITY)
      {
        v21 = *(v14 + 2);
        v20 = NAN;
        if (v21 != -INFINITY)
        {
          v22 = v21 == INFINITY || v12 == INFINITY;
          v23 = v12 + v21;
          if (v22)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v23;
          }
        }
      }

      v24 = j;
      v25 = *(v18 + 4 * j);
      if (v25 != INFINITY)
      {
        break;
      }

      v26 = *(a1 + 7);
      v27 = v20 > (v26 + INFINITY) || (v20 + v26) < INFINITY;
      v25 = v20;
      if (v27)
      {
        goto LABEL_66;
      }

LABEL_78:
      if (__p[0])
      {
        (*(*__p[0] + 40))(__p[0]);
      }

      else
      {
        ++v50;
      }
    }

    v28 = *(v18 + 4 * j);
    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v30 = expf(-(v20 - v25));
        v28 = v25 - logf(v30 + 1.0);
      }

      else
      {
        v29 = expf(-(v25 - v20));
        v28 = v20 - logf(v29 + 1.0);
      }
    }

    v31 = *(a1 + 7);
    if (v28 <= (v25 + v31) && v25 <= (v28 + v31))
    {
      goto LABEL_78;
    }

    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v34 = expf(-(v20 - v25));
        v25 = v25 - logf(v34 + 1.0);
      }

      else
      {
        v33 = expf(-(v25 - v20));
        v25 = v20 - logf(v33 + 1.0);
      }
    }

LABEL_66:
    *(v18 + 4 * v24) = v25;
    v35 = *(v19 + 4 * v24);
    if (v35 != INFINITY)
    {
      if (v20 == INFINITY)
      {
        v20 = *(v19 + 4 * v24);
      }

      else if (v35 <= v20)
      {
        v37 = expf(-(v20 - v35));
        v20 = v35 - logf(v37 + 1.0);
      }

      else
      {
        v36 = expf(-(v35 - v20));
        v20 = v20 - logf(v36 + 1.0);
      }
    }

    *(v19 + 4 * v24) = v20;
    if (*(v18 + 4 * v24) != -INFINITY && (v20 < -INFINITY || v20 > -INFINITY))
    {
      v38 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v14 + 3)))
      {
        (*(v38 + 40))();
      }

      else
      {
        (*(v38 + 24))();
        *(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v14 + 3);
      }

      goto LABEL_78;
    }

    v39 = 0;
    *v46 = 1;
LABEL_83:
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }

    else if (v49)
    {
      --*v49;
    }
  }

  while ((v39 & 1) != 0);
}

void sub_26560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  fst::LogMessage::~LogMessage(&a20);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::ShortestDistanceState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ShortestDistanceState(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  return a1;
}

void *fst::AutoQueue<int>::~AutoQueue(void *a1)
{
  *a1 = off_271B40;
  v3 = a1[3];
  v2 = a1[4];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = a1[3];
        v2 = a1[4];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    a1[4] = v8;
    operator delete(v8);
  }

  return a1;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~ImplToFst(a1);

  operator delete();
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = off_272118;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = off_272068;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_27198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = off_2720E0;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::~VectorFstBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~FstImpl(a1);

  operator delete();
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  *a1 = off_272118;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
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

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Write(uint64_t a1)
{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_27440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2753C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_272118;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = off_272068;
  boost::filesystem::path::path(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
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

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 152);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
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

void sub_27D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::TransitionModel::Tuple>>((a1 + 3), v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      boost::filesystem::path::path(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a1, a2, a3, 1);
  }
}

void sub_27F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(a1, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}

void sub_2876C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_29008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitVisit(uint64_t a1, uint64_t a2)
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
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
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

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

uint64_t fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = off_272288;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = off_272288;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2722C8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_295A4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2722C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(a1, &v10);
}

void sub_298A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
    v11 = (*(*a2 + 40))(a2, a3);
    v12 = a5;
    if (!a4)
    {
      v12 = 0;
    }

    v13 = v11 + v12;
    if (*(a1 + 8) < (v11 + v12))
    {
      if (*a1)
      {
        free(*a1);
      }

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v6 = -1;
  v35 = 0;
  v36 = 0;
  v34 = -1;
  v34 = (*(*a1 + 24))(a1);
  v35 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v35 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v38;
    if (v38 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  boost::filesystem::path::path(__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v28, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_27:
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v35 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    boost::filesystem::path::path(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v28, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v35 = v12;
  boost::filesystem::path::path(__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30[0]);
  }

  return updated;
}

void sub_2A018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
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

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostream::sentry::sentry();
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    __p = 0u;
    v34 = 0u;
    v41 = a8;
    (*(*v17 + 40))(v32);
    if (v32[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v32, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      boost::filesystem::path::path(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v32, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      std::ostream::sentry::sentry();
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v41 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      std::ostream::sentry::~sentry();
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      boost::filesystem::path::path(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v32, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v32);
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void fst::FstHeader::~FstHeader(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>::Type(void)::type;
}

uint64_t fst::ArcTpl<fst::LogWeightTpl<float>>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::LogWeightTpl<float>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>::WriteFile(fst *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v4 = *a2;
LABEL_6:
      std::ofstream::basic_ofstream(&v21);
      if ((v25[*(v21.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        boost::filesystem::path::path(&__p, "ERROR");
        v5 = fst::LogMessage::LogMessage(&v20, &__p);
        v6 = fst::cerr(v5);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Fst::Write: Can't open file: ", 29);
        v8 = *(a2 + 23);
        if (v8 >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        if (v8 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        fst::LogMessage::~LogMessage(&v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v11 = 0;
      }

      else
      {
        v14 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v17 = 257;
        v18 = 1;
        v19 = v14;
        v11 = (*(*a1 + 96))(a1, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::filebuf::~filebuf();
      std::ostream::~ostream();
      std::ios::~ios();
      return v11;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_6;
  }

  v12 = fst::cout(a1);
  boost::filesystem::path::path(&__p, "standard output");
  v13 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = __p;
  }

  v22 = 257;
  v23 = 1;
  v24 = v13;
  v11 = (*(*a1 + 96))(a1, v12, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void (__cdecl ***std::ofstream::basic_ofstream(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_2ADDC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::SetFinal(void *a1, int a2, float a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *v5;
  *v5 = a3;
  v7 = (*(*a1 + 24))(a1);
  result = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v7, v6, a3);
  a1[1] = a1[1] & 4 | result;
  return result;
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
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

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
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
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v18 = *(v16 + 24);
      v17 = *(v16 + 32);
      v19 = *(v16 + 8);
      v20 = v17 - v18;
      if (v17 == v18)
      {
        v26 = 0;
        v27 = v20 >> 4;
        v28 = *(v16 + 16);
        v29 = *(v16 + 8);
      }

      else
      {
        v21 = 0;
        v26 = 0;
        v22 = *(v16 + 24);
        do
        {
          v23 = *(__p[0] + *(v22 + 12));
          if (v23 == -1)
          {
            v24.i64[0] = *v22;
            v24.i64[1] = HIDWORD(*v22);
            v19 = vaddq_s64(v19, vceqzq_s64(v24));
          }

          else
          {
            *(v22 + 12) = v23;
            if (v21 != v26)
            {
              *(v18 + 16 * v26) = *v22;
              v14 = *v4;
            }

            ++v26;
          }

          v16 = *(v14 + 8 * v15);
          ++v21;
          v25 = *(v16 + 32) - *(v16 + 24);
          v22 += 16;
        }

        while (v21 < v25 >> 4);
        v27 = v25 >> 4;
        v28 = v19.i64[1];
        v29 = v19.i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(v16, v27 - v26);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 8) = v29;
      *(v31 + 16) = v28;
      ++v15;
    }

    while (v15 < (v30 - v14) >> 3);
  }

  v32 = *(a1 + 88);
  if (v32 == -1)
  {
    v33 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v33 = __p[0];
    *(a1 + 88) = *(__p[0] + v32);
  }

  __p[1] = v33;
  operator delete(v33);
}

void sub_2B208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -16 * a2;
    v4 = (v2 - 16);
    v5 = (v2 - 16);
    do
    {
      v6 = *v5;
      v5 -= 4;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 64);
    }

    while (v3 < (*(a1 + 72) - v2) >> 3);
  }

  *(a1 + 72) = v2;
  *(a1 + 88) = -1;
}

void fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::SetValue(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = v4[3] + 16 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (*v6 != v8)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v7)
  {
    if (!v8)
    {
      v9 = *(a1 + 16);
      v10 = *v9;
LABEL_8:
      *v9 = v10 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v11 = *v9;
    *v9 &= ~0x1000000uLL;
    if (!v8)
    {
      v10 = v11 & 0xFFFFFFFFFEBFFFFFLL;
      *v9 = v10;
      goto LABEL_8;
    }
  }

  if (*(v6 + 8) != INFINITY && *(v6 + 8) != 0.0)
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v12 = 0x30FC30007;
  v13 = a2->n128_u32[0] == v7 && a2->n128_u32[1] == v8;
  if (v13 && a2->n128_u32[3] == *(v6 + 12))
  {
    v12 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetArc(v4, a2, v5);
  v14 = a2->n128_u32[0];
  v15 = a2->n128_u32[1];
  if (a2->n128_u32[0] != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14)
  {
    if (!v15)
    {
      v16 = *(a1 + 16);
      v17 = *v16;
LABEL_26:
      *v16 = v17 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v16 = *(a1 + 16);
    v18 = *v16 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v16 = v18;
    if (!v15)
    {
      v17 = v18 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v16 = v17;
      goto LABEL_26;
    }
  }

  if (a2->n128_f32[2] != INFINITY && a2->n128_f32[2] != 0.0)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  **(a1 + 16) &= v12;
}

__n128 fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::SetArc(void *a1, __n128 *a2, uint64_t a3)
{
  v3 = (a1[3] + 16 * a3);
  if (!v3->n128_u32[0])
  {
    --a1[1];
  }

  if (!v3->n128_u32[1])
  {
    --a1[2];
  }

  if (!a2->n128_u32[0])
  {
    ++a1[1];
  }

  if (!a2->n128_u32[1])
  {
    ++a1[2];
  }

  result = *a2;
  *v3 = *a2;
  return result;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = off_271B40;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_2BC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::NaturalLess<fst::LogWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v12 = *(a3 + 8) - *a3;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a3, 4 * v13);
  }

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v16 = v27;
      goto LABEL_12;
    }

    v15 = (*(*v25 + 16))(v25);
    result = v25;
    if (v15)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v16 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v16, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v17 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v17 = v22[1] + 16 * v24;
LABEL_19:
      v18 = *(*a2 + 4 * v16);
      if (v18 == *(*a2 + 4 * *(v17 + 12)))
      {
        v19 = *a3;
        if (!a4 || (v21 = 0, fst::NaturalLess<fst::LogWeightTpl<float>>::operator()(a4, (v17 + 8), &v21)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v19[v18] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v19[v18] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_2C0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_271C20;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = 0;
  v2 = a1 + 24;
  v3 = &v4;
  fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(a2);
}

void sub_2C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    operator new();
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_2CABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_100;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(&v51, __p);
    v5 = fst::cerr(v4);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Weight does not have the path property: ", 40);
    v42 = fst::LogWeightTpl<float>::Type();
    v43 = *(v42 + 23);
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = *(v42 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v44, v45);
    fst::LogMessage::~LogMessage(&v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_100:
    v46 = a1 + 116;
    goto LABEL_101;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v6 = a1[1];
  for (i = *v6; a2 >= ((v6[1] - *v6) >> 2); i = *v6)
  {
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](v6, __p);
    LODWORD(__p[0]) = 2139095040;
    std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), __p);
    v6 = a1[1];
  }

  if (*(a1 + 33) == 1)
  {
    v8 = a1[11];
    if (a2 >= ((a1[12] - v8) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v8 = a1[11];
      }

      while (a2 >= ((a1[12] - v8) >> 2));
      i = *a1[1];
    }

    *(v8 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v46 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_89;
    }

    v9 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v10 = a1[1];
      if (v9 < ((v10[1] - *v10) >> 2))
      {
        break;
      }

      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](v10, __p);
      LODWORD(__p[0]) = 2139095040;
      std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), __p);
      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), __p);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(__p[0]) = (*(**a1 + 32))(*a1, v9);
      v51 = 2139095040;
      if (*__p != INFINITY)
      {
LABEL_89:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_101:
        *v46 = 1;
        return;
      }
    }

    *(a1[8] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
    v11 = a1[5];
    v12 = *(v11 + 4 * v9);
    *(v11 + 4 * v9) = 2139095040;
    v13 = *a1;
    v50 = 0;
    (*(*v13 + 136))(v13, v9, __p);
    while (1)
    {
      if (__p[0])
      {
        if ((*(*__p[0] + 24))(__p[0]))
        {
          goto LABEL_81;
        }

        if (__p[0])
        {
          v14 = (*(*__p[0] + 32))(__p[0]);
          goto LABEL_32;
        }
      }

      else if (v50 >= v48)
      {
LABEL_81:
        v39 = 1;
        goto LABEL_83;
      }

      v14 = __p[1] + 16 * v50;
LABEL_32:
      v15 = a1[1];
      for (j = *(v14 + 3); j >= (v15[1] - *v15) >> 2; j = *(v14 + 3))
      {
        v51 = 2139095040;
        std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100](v15, &v51);
        v51 = 2139095040;
        std::vector<fst::LogWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v51);
        LOBYTE(v51) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v51);
        v15 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v17 = a1[11];
          LODWORD(j) = *(v14 + 3);
          if (j < ((a1[12] - v17) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v15 = a1[1];
        if (*(v17 + 4 * j) != *(a1 + 28))
        {
          *(*v15 + 4 * j) = 2139095040;
          *(a1[5] + 4 * *(v14 + 3)) = 2139095040;
          j = *(v14 + 3);
          *(a1[8] + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << j);
          *(a1[11] + 4 * j) = *(a1 + 28);
          v15 = a1[1];
          LODWORD(j) = *(v14 + 3);
        }
      }

      v18 = *v15;
      v19 = a1[5];
      v20 = NAN;
      if (v12 != -INFINITY)
      {
        v21 = *(v14 + 2);
        v20 = NAN;
        if (v21 != -INFINITY)
        {
          v22 = v21 == INFINITY || v12 == INFINITY;
          v23 = v12 + v21;
          if (v22)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v23;
          }
        }
      }

      v24 = j;
      v25 = *(v18 + 4 * j);
      if (v25 != INFINITY)
      {
        break;
      }

      v26 = *(a1 + 7);
      v27 = v20 > (v26 + INFINITY) || (v20 + v26) < INFINITY;
      v25 = v20;
      if (v27)
      {
        goto LABEL_66;
      }

LABEL_78:
      if (__p[0])
      {
        (*(*__p[0] + 40))(__p[0]);
      }

      else
      {
        ++v50;
      }
    }

    v28 = *(v18 + 4 * j);
    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v30 = expf(-(v20 - v25));
        v28 = v25 - logf(v30 + 1.0);
      }

      else
      {
        v29 = expf(-(v25 - v20));
        v28 = v20 - logf(v29 + 1.0);
      }
    }

    v31 = *(a1 + 7);
    if (v28 <= (v25 + v31) && v25 <= (v28 + v31))
    {
      goto LABEL_78;
    }

    if (v20 != INFINITY)
    {
      if (v25 <= v20)
      {
        v34 = expf(-(v20 - v25));
        v25 = v25 - logf(v34 + 1.0);
      }

      else
      {
        v33 = expf(-(v25 - v20));
        v25 = v20 - logf(v33 + 1.0);
      }
    }

LABEL_66:
    *(v18 + 4 * v24) = v25;
    v35 = *(v19 + 4 * v24);
    if (v35 != INFINITY)
    {
      if (v20 == INFINITY)
      {
        v20 = *(v19 + 4 * v24);
      }

      else if (v35 <= v20)
      {
        v37 = expf(-(v20 - v35));
        v20 = v35 - logf(v37 + 1.0);
      }

      else
      {
        v36 = expf(-(v35 - v20));
        v20 = v20 - logf(v36 + 1.0);
      }
    }

    *(v19 + 4 * v24) = v20;
    if (*(v18 + 4 * v24) != -INFINITY && (v20 < -INFINITY || v20 > -INFINITY))
    {
      v38 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v14 + 3)))
      {
        (*(v38 + 40))();
      }

      else
      {
        (*(v38 + 24))();
        *(a1[8] + ((*(v14 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v14 + 3);
      }

      goto LABEL_78;
    }

    v39 = 0;
    *v46 = 1;
LABEL_83:
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }

    else if (v49)
    {
      --*v49;
    }
  }

  while ((v39 & 1) != 0);
}

void sub_2D4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  fst::LogMessage::~LogMessage(&a20);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<fst::LogWeightTpl<float>>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_212100)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2120F0)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_212100)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_2120F0)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~ImplToFst(void *a1)
{
  *a1 = off_272150;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(a1);

  operator delete();
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v4;
  result = std::list<int>::list((a3 + 8), (v4 + 2));
  *(a3 + 32) = v4[8];
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 56);
  v4 = *v5;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 3);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void *fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  std::list<int>::list(v9, (a3 + 2));
  v10 = a3[8];
  fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetFinal(v6, a2, &v8);
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::AddArc(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteArcs(v4, a2);
}

void *fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = off_272640;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = off_272590;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_2E314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = off_272608;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorFstBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~FstImpl(a1);

  operator delete();
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~FstImpl(uint64_t a1)
{
  *a1 = off_272640;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
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

void fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 56);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](&v2);
    std::__list_imp<char *>::clear((a1 + 8));
    operator delete(a1);
  }
}

void std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 56;
        std::__list_imp<char *>::clear(v4 - 5);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Write(uint64_t a1)
{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_2E694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2E790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_272640;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = off_272590;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))(v9);
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 152);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
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

void sub_2EFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a10);
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  v4 = *(*(a1 + 64) + 8 * a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *v4 = v7;
  if (v4 != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v4 + 8), v8[1], v8);
    v5 = v9;
  }

  *(v4 + 32) = v5;
  return std::__list_imp<char *>::clear(v8);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero(void)::zero;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::StringWeight<int,(fst::StringType)0>::Zero()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)0>::Zero(void)::zero;
}

uint64_t fst::StringWeight<int,(fst::StringType)0>::StringWeight(uint64_t a1, int a2)
{
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *a1 = 0;
  fst::StringWeight<int,(fst::StringType)0>::PushBack(a1, a2);
  return a1;
}

_DWORD *fst::StringWeight<int,(fst::StringType)0>::PushBack(_DWORD *result, int a2)
{
  if (*result)
  {
    operator new();
  }

  *result = a2;
  return result;
}

void std::allocator<std::__list_node<int,void *>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 4) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<int>::erase(a1, i, a1);
  }
}

uint64_t std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_2F758(void *a1)
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

uint64_t *std::list<int>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2F8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      *(v9 + 40) = *(v6 + v7 + 40);
      *(v9 + 48) = *(v6 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 56;
    }
  }

  return result;
}

void sub_2FA30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__list_imp<char *>::clear((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  result = std::list<int>::list((v4 + 16), a2 + 16);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  std::list<int>::list((v7 + 16), a2 + 16);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~__split_buffer(&v14);
  return v13;
}

void sub_2FCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      boost::filesystem::path::path(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a1, a2, a3, 1);
  }
}

void sub_2FE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v93 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = &v93;
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(v7, &v86);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_179;
    }

    v12 = a2 & 0xC0000;
    v13 = 0x10425A810000;
    if ((a2 & 0xC0000) != 0)
    {
      v13 = 0x10425A850000;
    }

    v14 = v9 | v13;
    v15 = a2 & 0x300000;
    if ((a2 & 0x300000) != 0)
    {
      v14 |= 0x100000uLL;
    }

    v93 = v14;
    memset(&v85, 0, sizeof(v85));
    memset(&v84, 0, sizeof(v84));
    v83 = 0;
    (*(*v7 + 128))(v7, &v81);
    v16 = 0;
    v75 = v7;
LABEL_12:
    if (!v81)
    {
      if (v83 >= v82)
      {
        goto LABEL_171;
      }

      goto LABEL_17;
    }

    if (!(*(*v81 + 16))(v81))
    {
      if (v81)
      {
        v17 = (*(*v81 + 24))();
LABEL_18:
        v18 = (*(*v7 + 40))(v7, v17);
        v88 = &v88;
        v89 = &v88;
        v90 = 0;
        LODWORD(v87) = 0;
        v85.__end_ = v85.__begin_;
        v84.__end_ = v84.__begin_;
        if (v12)
        {
          std::vector<int>::reserve(&v85, v18);
        }

        if (v15)
        {
          std::vector<int>::reserve(&v84, v18);
        }

        v80 = 0;
        (*(*v7 + 136))(v7, v17, &v76);
        v19 = 1;
        while (1)
        {
          if (v76)
          {
            if ((*(*v76 + 24))(v76))
            {
              if (v76)
              {
                (*(*v76 + 8))();
                goto LABEL_104;
              }

LABEL_102:
              if (v79)
              {
                --*v79;
              }

LABEL_104:
              v7 = v75;
              if (!v12 || (std::__sort<std::__less<int,int> &,int *>(), v48 = v85.__end_ - v85.__begin_, v48 < 2))
              {
LABEL_109:
                if (!v15)
                {
                  goto LABEL_118;
                }

LABEL_110:
                std::__sort<std::__less<int,int> &,int *>();
                v51 = v84.__end_ - v84.__begin_;
                if (v51 >= 2)
                {
                  v52 = v51 - 1;
                  v53 = v84.__begin_ + 1;
                  while (*v53 != *(v53 - 1))
                  {
                    ++v53;
                    if (!--v52)
                    {
                      goto LABEL_118;
                    }
                  }

                  v93 = v93 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                }

                goto LABEL_118;
              }

              v49 = v48 - 1;
              v50 = v85.__begin_ + 1;
              while (*v50 != *(v50 - 1))
              {
                ++v50;
                if (!--v49)
                {
                  goto LABEL_109;
                }
              }

              v93 = v93 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
              if (v15)
              {
                goto LABEL_110;
              }

LABEL_118:
              if (v16 >= 1)
              {
                v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              (*(*v75 + 32))(&v76, v75, v17);
              v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
              if (v76)
              {
                v55 = v79 + 1;
              }

              else
              {
                v55 = 0;
              }

              if (*v54)
              {
                v56 = *(v54 + 24) + 1;
              }

              else
              {
                v56 = 0;
              }

              if (v55 != v56)
              {
                goto LABEL_141;
              }

              v57 = v78;
              v58 = (v54 + 16);
              v59 = v76 && v76 == *v54;
              v60 = !v59;
              v61 = 1;
              v62 = !v60;
              while (1)
              {
                v63 = *v58;
                if ((v61 & 1) != 0 && !v62)
                {
                  break;
                }

                if (v57 == &v77)
                {
                  goto LABEL_140;
                }

                if (*(v57 + 16) != *(v63 + 16))
                {
                  goto LABEL_141;
                }

                v61 = 0;
                v57 = *(v57 + 8);
                v58 = (v63 + 8);
              }

              if (v76)
              {
                goto LABEL_141;
              }

LABEL_140:
              v95 = *&v80;
              v94 = *(v54 + 32);
              if (*&v80 == v94)
              {
                if ((*(*v75 + 40))(v75, v17, *&v80) != 1)
                {
                  v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                }
              }

              else
              {
LABEL_141:
                v64 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
                if (v76)
                {
                  v65 = v79 + 1;
                }

                else
                {
                  v65 = 0;
                }

                if (*v64)
                {
                  v66 = *(v64 + 24) + 1;
                }

                else
                {
                  v66 = 0;
                }

                if (v65 != v66)
                {
                  goto LABEL_162;
                }

                v67 = v78;
                v68 = (v64 + 16);
                v69 = v76 && v76 == *v64;
                v70 = !v69;
                v71 = 1;
                v72 = !v70;
                while (1)
                {
                  v73 = *v68;
                  if ((v71 & 1) != 0 && !v72)
                  {
                    break;
                  }

                  if (v67 == &v77)
                  {
                    goto LABEL_161;
                  }

                  if (*(v67 + 16) != *(v73 + 16))
                  {
                    goto LABEL_162;
                  }

                  v71 = 0;
                  v67 = *(v67 + 8);
                  v68 = (v73 + 8);
                }

                if (v76)
                {
                  goto LABEL_162;
                }

LABEL_161:
                v95 = *&v80;
                v94 = *(v64 + 32);
                if (*&v80 != v94)
                {
LABEL_162:
                  v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }

                ++v16;
              }

              std::__list_imp<char *>::clear(&v77);
              std::__list_imp<char *>::clear(&v88);
              if (v81)
              {
                (*(*v81 + 32))(v81);
              }

              else
              {
                ++v83;
              }

              goto LABEL_12;
            }

            if (v76)
            {
              v20 = (*(*v76 + 32))();
              goto LABEL_29;
            }
          }

          else if (v80 >= v78)
          {
            goto LABEL_102;
          }

          v20 = v77 + 56 * v80;
LABEL_29:
          v21 = *v20;
          v22 = *v20;
          if (*v20 != *(v20 + 4))
          {
            v93 = v93 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
            v22 = *(v20 + 4);
          }

          if (v21 | v22)
          {
            if (v21)
            {
              if (v22)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }

            v23 = v93;
          }

          else
          {
            v23 = v93 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
          }

          v93 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
          if (v22)
          {
LABEL_35:
            if ((v19 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

LABEL_39:
          v93 = v93 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if ((v19 & 1) == 0)
          {
LABEL_40:
            if (v21 < v86)
            {
              v93 = v93 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
            }

            if (v22 < SHIDWORD(v86))
            {
              v93 = v93 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
            }
          }

LABEL_44:
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
          v25 = *(v20 + 8);
          if (v25)
          {
            v26 = *(v20 + 32) + 1;
          }

          else
          {
            v26 = 0;
          }

          if (*v24)
          {
            v27 = *(v24 + 24) + 1;
          }

          else
          {
            v27 = 0;
          }

          if (v26 != v27)
          {
            goto LABEL_65;
          }

          v28 = (v20 + 24);
          v29 = (v24 + 16);
          v30 = v25 && v25 == *v24;
          v31 = !v30;
          v32 = 1;
          v33 = !v31;
          while (1)
          {
            v34 = *v28;
            v35 = *v29;
            if ((v32 & 1) != 0 && !v33)
            {
              break;
            }

            if (v34 == v20 + 16)
            {
              goto LABEL_64;
            }

            if (*(v34 + 16) != *(v35 + 16))
            {
              goto LABEL_65;
            }

            v32 = 0;
            v28 = (v34 + 8);
            v29 = (v35 + 8);
          }

          if (v25)
          {
            goto LABEL_65;
          }

LABEL_64:
          v95 = *(v20 + 40);
          v94 = *(v24 + 32);
          if (v95 != v94)
          {
LABEL_65:
            v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
            v25 = *(v20 + 8);
            if (v25)
            {
              v37 = *(v20 + 32) + 1;
            }

            else
            {
              v37 = 0;
            }

            if (*v36)
            {
              v38 = *(v36 + 24) + 1;
            }

            else
            {
              v38 = 0;
            }

            if (v37 != v38)
            {
              goto LABEL_86;
            }

            v39 = (v20 + 24);
            v40 = (v36 + 16);
            v41 = v25 && v25 == *v36;
            v42 = !v41;
            v43 = 1;
            v44 = !v42;
            while (1)
            {
              v45 = *v39;
              v46 = *v40;
              if ((v43 & 1) != 0 && !v44)
              {
                break;
              }

              if (v45 == v20 + 16)
              {
                goto LABEL_85;
              }

              if (*(v45 + 16) != *(v46 + 16))
              {
                goto LABEL_86;
              }

              v43 = 0;
              v39 = (v45 + 8);
              v40 = (v46 + 8);
            }

            if (v25)
            {
              goto LABEL_86;
            }

LABEL_85:
            v95 = *(v20 + 40);
            v94 = *(v36 + 32);
            if (v95 != v94)
            {
LABEL_86:
              v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }
          }

          v47 = *(v20 + 48);
          if (v47 <= v17)
          {
            v93 = v93 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          }

          if (v47 != v17 + 1)
          {
            v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v86 = *v20;
          LODWORD(v87) = v25;
          if (&v86 != v20)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(&v88, *(v20 + 24), v20 + 16);
            v47 = *(v20 + 48);
          }

          v91 = *(v20 + 40);
          v92 = v47;
          if (v12)
          {
            std::vector<int>::push_back[abi:ne200100](&v85.__begin_, v20);
          }

          if (v15)
          {
            std::vector<int>::push_back[abi:ne200100](&v84.__begin_, (v20 + 4));
          }

          if (v76)
          {
            (*(*v76 + 40))(v76);
            v19 = 0;
          }

          else
          {
            v19 = 0;
            ++v80;
          }
        }
      }

LABEL_17:
      v17 = v83;
      goto LABEL_18;
    }

    if (v81)
    {
      (*(*v81 + 8))();
    }

LABEL_171:
    if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
    {
      v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    if (v84.__begin_)
    {
      v84.__end_ = v84.__begin_;
      operator delete(v84.__begin_);
    }

    if (v85.__begin_)
    {
      v85.__end_ = v85.__begin_;
      operator delete(v85.__begin_);
    }

    v9 = v93;
LABEL_179:
    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_308C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_31188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::InitVisit(uint64_t a1, uint64_t a2)
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
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

unint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  if (v33)
  {
    v7 = v34[2] + 1;
  }

  else
  {
    v7 = 0;
  }

  if (*v6)
  {
    v8 = *(v6 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v8)
  {
    v9 = v34[1];
    v10 = (v6 + 16);
    if (v33)
    {
      v11 = v33 == *v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v13 = 1;
    v14 = v12 ^ 1;
    while (1)
    {
      v15 = *v10;
      if ((v13 & 1) != 0 && !v14)
      {
        break;
      }

      if (v9 == v34)
      {
        goto LABEL_42;
      }

      if (*(v9 + 16) != *(v15 + 16))
      {
        goto LABEL_21;
      }

      v13 = 0;
      v9 = *(v9 + 8);
      v10 = (v15 + 8);
    }

    if (v33)
    {
      goto LABEL_21;
    }

LABEL_42:
    v37 = v35;
    v36 = *(v6 + 32);
    v31 = v35;
    v32 = v36;
    result = std::__list_imp<char *>::clear(v34);
    if (v31 == v32)
    {
      v17 = a2;
      goto LABEL_23;
    }
  }

  else
  {
LABEL_21:
    result = std::__list_imp<char *>::clear(v34);
  }

  v17 = a2;
  *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
LABEL_23:
  v18 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v17) != *(v18 + 4 * v17))
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = *(a1 + 80);
  v21 = **(a1 + 16);
  v22 = (*(v20 + 8) - 4);
  v23 = v22;
  do
  {
    v24 = *v23--;
    v19 |= *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
  }

  while (v24 != a2);
  v25 = *a1;
  v26 = **(a1 + 72);
  while (1)
  {
    v27 = *v22;
    if (v25)
    {
      *(*v25 + 4 * v27) = *(a1 + 48);
    }

    result = v27 >> 6;
    v28 = 1 << v27;
    if ((v19 & 1) == 0)
    {
      break;
    }

    *(v21 + 8 * result) |= v28;
    *(v26 + 8 * result) &= ~v28;
    if (v27 == a2)
    {
      *(v20 + 8) = v22;
      goto LABEL_35;
    }

LABEL_33:
    --v22;
  }

  *(v26 + 8 * result) &= ~v28;
  if (v27 != a2)
  {
    goto LABEL_33;
  }

  *(v20 + 8) = v22;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_35:
  ++*(a1 + 48);
LABEL_36:
  if (a3 != -1)
  {
    v29 = **(a1 + 16);
    if ((*(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
    {
      *(v29 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v30 = *(v18 + 4 * v17);
    if (v30 < *(v18 + 4 * a3))
    {
      *(v18 + 4 * a3) = v30;
    }
  }

  return result;
}

uint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 48) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

uint64_t fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~MemoryPool(void *a1)
{
  *a1 = off_2727B0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~MemoryPool(void *a1)
{
  *a1 = off_2727B0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2727F0;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_31920(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2727F0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> *,std::allocator<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(a1, &v10);
}

void sub_31C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::SetFromFst<fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v26);
  if (!v26 && (a4 & 1) == 0)
  {
    v10 = v27 + 56 * v28;
    *(a1 + 16) = v27;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v25 = 0x4000;
    if (v13 > 0x4000)
    {
      v25 = v13;
    }

    *(a1 + 8) = v25;
    v15 = malloc_type_malloc(56 * v25, 0x1020040540EBC04uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[7 * v13];
  v16 = v26;
  v17 = v27;
  v19 = v28;
  v18 = v29;
  if (v29)
  {
    ++*v29;
  }

  v20 = 0;
LABEL_13:
  v15 += 7;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    v24 = v15 - 7;
    *v24 = *v23;
    *(v24 + 2) = *(v23 + 8);
    if (v15 - 7 != v23)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v15 - 5, *(v23 + 24), v23 + 16);
    }

    *(v15 - 4) = *(v23 + 40);
    *(v15 - 2) = *(v23 + 48);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 7;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 56 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_31F1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::WriteFst<fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>(void *a1, void *a2, uint64_t a3)
{
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v6 = -1;
  v37 = 0;
  v38 = 0;
  v36 = -1;
  v36 = (*(*a1 + 24))(a1);
  v37 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v37 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  boost::filesystem::path::path(__p, "vector");
  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v28 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v29 = v7;
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v11);
      fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Write(__p);
      std::__list_imp<char *>::clear(&__p[0].__r_.__value_.__l.__size_);
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(a1[1] + 64) + 8 * v11);
      v15 = *(v13 + 56);
      v14 = *(v13 + 64);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v13 + 56);
      }

      if (v14 != v15)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3)) <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3);
        }

        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v16;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[1];
          std::ostream::write();
          fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Write(v16 + 2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[12];
          std::ostream::write();
          v16 += 14;
          --v17;
        }

        while (v17);
      }

      ++v11;
    }

    while (v11 != v12);
    v7 = v29;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v30, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_29:
    fst::LogMessage::~LogMessage(&v30);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v37 == v12)
    {
      updated = 1;
      goto LABEL_32;
    }

    boost::filesystem::path::path(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v30, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v37 = v12;
  boost::filesystem::path::path(__p, "vector");
  updated = fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v33[0]) < 0)
  {
    operator delete(v32[0]);
  }

  return updated;
}

void sub_32428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
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

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Write(_DWORD *a1)
{
  if (*a1)
  {
    v2 = a1[6] + 1;
  }

  std::ostream::write();
  v3 = (a1 + 4);
  for (i = 1; ; i = 0)
  {
    v5 = *v3;
    if (i)
    {
      if (!*a1)
      {
        break;
      }

      v7 = *a1;
      std::ostream::write();
    }

    if (v5 == a1 + 2)
    {
      break;
    }

    v8 = *(v5 + 16);
    std::ostream::write();
    v3 = (v5 + 8);
  }

  v9 = a1[8];
  return std::ostream::write();
}

uint64_t fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostream::sentry::sentry();
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    __p = 0u;
    v34 = 0u;
    v41 = a8;
    (*(*v17 + 40))(v32);
    if (v32[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v32, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      boost::filesystem::path::path(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v32, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      std::ostream::sentry::sentry();
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v41 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      std::ostream::sentry::~sentry();
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      boost::filesystem::path::path(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v32, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v32);
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::Type()
{
  {
    operator new();
  }

  return fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::Type(void)::type;
}

uint64_t fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::WriteFile(fst *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v4 = *a2;
LABEL_6:
      std::ofstream::basic_ofstream(&v21);
      if ((v25[*(v21.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        boost::filesystem::path::path(&__p, "ERROR");
        v5 = fst::LogMessage::LogMessage(&v20, &__p);
        v6 = fst::cerr(v5);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Fst::Write: Can't open file: ", 29);
        v8 = *(a2 + 23);
        if (v8 >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        if (v8 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        fst::LogMessage::~LogMessage(&v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v11 = 0;
      }

      else
      {
        v14 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v17 = 257;
        v18 = 1;
        v19 = v14;
        v11 = (*(*a1 + 96))(a1, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::filebuf::~filebuf();
      std::ostream::~ostream();
      std::ios::~ios();
      return v11;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_6;
  }

  v12 = fst::cout(a1);
  boost::filesystem::path::path(&__p, "standard output");
  v13 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = __p;
  }

  v22 = 257;
  v23 = 1;
  v24 = v13;
  v11 = (*(*a1 + 96))(a1, v12, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void *fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetFinal(void *a1, int a2, int *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v18 = *v6;
  std::list<int>::list(v19, (v6 + 2));
  v20 = v6[8];
  v15 = *a3;
  std::list<int>::list(v16, (a3 + 2));
  v17 = a3[8];
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetFinal(a1, a2, &v15);
  std::__list_imp<char *>::clear(v16);
  v7 = (*(*a1 + 24))(a1);
  v12 = v18;
  std::list<int>::list(v13, v19);
  v14 = v20;
  v9 = *a3;
  std::list<int>::list(v10, (a3 + 2));
  v11 = a3[8];
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_33148(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(unint64_t a1, int *a2, int *a3)
{
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (*v6)
  {
    v9 = *(v6 + 24) + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    goto LABEL_22;
  }

  v10 = (a2 + 4);
  v11 = (v6 + 16);
  v12 = v7 && v7 == *v6;
  v13 = !v12;
  v14 = 1;
  v15 = !v13;
  while (1)
  {
    v16 = *v10;
    v17 = *v11;
    if ((v14 & 1) != 0 && !v15)
    {
      break;
    }

    if (v16 == a2 + 2)
    {
      goto LABEL_21;
    }

    if (*(v16 + 16) != *(v17 + 16))
    {
      goto LABEL_22;
    }

    v14 = 0;
    v10 = (v16 + 8);
    v11 = (v17 + 8);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (*(a2 + 8) != *(v6 + 32))
  {
LABEL_22:
    v18 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v19 = *a2;
    if (*a2)
    {
      v20 = *(a2 + 3) + 1;
    }

    else
    {
      v20 = 0;
    }

    if (*v18)
    {
      v21 = *(v18 + 24) + 1;
    }

    else
    {
      v21 = 0;
    }

    if (v20 != v21)
    {
      goto LABEL_43;
    }

    v22 = (a2 + 4);
    v23 = (v18 + 16);
    v24 = v19 && v19 == *v18;
    v25 = !v24;
    v26 = 1;
    v27 = !v25;
    while (1)
    {
      v28 = *v22;
      v29 = *v23;
      if ((v26 & 1) != 0 && !v27)
      {
        break;
      }

      if (v28 == a2 + 2)
      {
        goto LABEL_42;
      }

      if (*(v28 + 16) != *(v29 + 16))
      {
        goto LABEL_43;
      }

      v26 = 0;
      v22 = (v28 + 8);
      v23 = (v29 + 8);
    }

    if (v19)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (*(a2 + 8) != *(v18 + 32))
    {
LABEL_43:
      a1 &= ~0x100000000uLL;
    }
  }

  v30 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v31 = *a3;
  if (*a3)
  {
    v32 = *(a3 + 3) + 1;
  }

  else
  {
    v32 = 0;
  }

  if (*v30)
  {
    v33 = *(v30 + 24) + 1;
  }

  else
  {
    v33 = 0;
  }

  if (v32 != v33)
  {
    goto LABEL_65;
  }

  v34 = (a3 + 4);
  v35 = (v30 + 16);
  v36 = v31 && v31 == *v30;
  v37 = !v36;
  v38 = 1;
  v39 = !v37;
  while (1)
  {
    v40 = *v34;
    v41 = *v35;
    if ((v38 & 1) != 0 && !v39)
    {
      break;
    }

    if (v40 == a3 + 2)
    {
      goto LABEL_64;
    }

    if (*(v40 + 16) != *(v41 + 16))
    {
      goto LABEL_65;
    }

    v38 = 0;
    v34 = (v40 + 8);
    v35 = (v41 + 8);
  }

  if (v31)
  {
    goto LABEL_65;
  }

LABEL_64:
  if (*(a3 + 8) != *(v30 + 32))
  {
LABEL_65:
    v42 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v43 = *a3;
    if (*a3)
    {
      v44 = *(a3 + 3) + 1;
    }

    else
    {
      v44 = 0;
    }

    if (*v42)
    {
      v45 = *(v42 + 24) + 1;
    }

    else
    {
      v45 = 0;
    }

    if (v44 != v45)
    {
      goto LABEL_86;
    }

    v46 = (a3 + 4);
    v47 = (v42 + 16);
    v48 = v43 && v43 == *v42;
    v49 = !v48;
    v50 = 1;
    v51 = !v49;
    while (1)
    {
      v52 = *v46;
      v53 = *v47;
      if ((v50 & 1) != 0 && !v51)
      {
        break;
      }

      if (v52 == a3 + 2)
      {
        goto LABEL_85;
      }

      if (*(v52 + 16) != *(v53 + 16))
      {
        goto LABEL_86;
      }

      v50 = 0;
      v46 = (v52 + 8);
      v47 = (v53 + 8);
    }

    if (v43)
    {
      goto LABEL_86;
    }

LABEL_85:
    if (*(a3 + 8) != *(v42 + 32))
    {
LABEL_86:
      a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  return a1 & 0x3FFFFFF0007;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddArc(void *a1, int a2, int *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 64);
  if (v6 == *(*(a1[8] + 8 * a2) + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 56);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(unint64_t a1, int a2, int *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v7)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v13 = a3[2];
  if (v13)
  {
    v14 = *(a3 + 4) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (*v12)
  {
    v15 = *(v12 + 24) + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v15)
  {
    goto LABEL_38;
  }

  v16 = (a3 + 6);
  v17 = (v12 + 16);
  v18 = v13 && v13 == *v12;
  v19 = !v18;
  v20 = 1;
  v21 = !v19;
  while (1)
  {
    v22 = *v16;
    v23 = *v17;
    if ((v20 & 1) != 0 && !v21)
    {
      break;
    }

    if (v22 == a3 + 4)
    {
      goto LABEL_37;
    }

    if (*(v22 + 16) != *(v23 + 16))
    {
      goto LABEL_38;
    }

    v20 = 0;
    v16 = (v22 + 8);
    v17 = (v23 + 8);
  }

  if (v13)
  {
    goto LABEL_38;
  }

LABEL_37:
  if (*(a3 + 10) != *(v12 + 32))
  {
LABEL_38:
    v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v25 = a3[2];
    if (v25)
    {
      v26 = *(a3 + 4) + 1;
    }

    else
    {
      v26 = 0;
    }

    if (*v24)
    {
      v27 = *(v24 + 24) + 1;
    }

    else
    {
      v27 = 0;
    }

    if (v26 != v27)
    {
      goto LABEL_59;
    }

    v28 = (a3 + 6);
    v29 = (v24 + 16);
    v30 = v25 && v25 == *v24;
    v31 = !v30;
    v32 = 1;
    v33 = !v31;
    while (1)
    {
      v34 = *v28;
      v35 = *v29;
      if ((v32 & 1) != 0 && !v33)
      {
        break;
      }

      if (v34 == a3 + 4)
      {
        goto LABEL_58;
      }

      if (*(v34 + 16) != *(v35 + 16))
      {
        goto LABEL_59;
      }

      v32 = 0;
      v28 = (v34 + 8);
      v29 = (v35 + 8);
    }

    if (v25)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (*(a3 + 10) != *(v24 + 32))
    {
LABEL_59:
      v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (a3[12] <= a2)
  {
    v36 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v36 = v10;
  }

  if ((v36 & 0x4000000000) != 0)
  {
    return v36 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v36 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v3 = a1;
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
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

  v10 = *(v3 + 64);
  if (*(v3 + 72) == v10)
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
        fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(*(v10 + 8 * v11));
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
      v10 = *(v3 + 64);
    }

    while (v11 < (*(v3 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(v3 + 64);
  if (*(v3 + 72) != v14)
  {
    v15 = 0;
    v35 = v3;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 40);
      v18 = *(v16 + 64) - *(v16 + 56);
      if (v18)
      {
        v19 = *(v16 + 56);
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 48);
        v23 = v19 + 16;
        do
        {
          v24 = *(__p[0] + *v22);
          if (v24 == -1)
          {
            v26 = *(v22 - 6);
            v27.i64[0] = v26;
            v27.i64[1] = HIDWORD(v26);
            v17 = vaddq_s64(v17, vceqzq_s64(v27));
          }

          else
          {
            *v22 = v24;
            if (v20 != v21)
            {
              v36 = v17;
              v25 = v19 + 56 * v21;
              *v25 = *(v22 - 6);
              *(v25 + 8) = *(v22 - 10);
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v25 + 16), *(v22 - 3), v23);
              *(v25 + 40) = *(v22 - 2);
              *(v25 + 48) = *v22;
              v14 = *v4;
              v17 = v36;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v28 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
          v23 += 56;
        }

        while (v20 < v28);
        v29 = v17.i64[1];
        v30 = v17.i64[0];
        v3 = v35;
      }

      else
      {
        v21 = 0;
        v28 = 0;
        v29 = *(v16 + 48);
        v30 = *(v16 + 40);
      }

      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteArcs(v16, v28 - v21);
      v14 = *(v3 + 64);
      v31 = *(v3 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 40) = v30;
      *(v32 + 48) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(v3 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(v3 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_339B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = result[8] - 56;
    do
    {
      if (!*v4)
      {
        --v3[5];
      }

      if (!*(v4 + 4))
      {
        --v3[6];
      }

      result = std::__list_imp<char *>::clear((v4 + 16));
      v3[8] = v4;
      v4 -= 56;
      --v2;
    }

    while (v2);
  }

  return result;
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 64);
    }

    while (v3 < (*(a1 + 72) - v2) >> 3);
  }

  *(a1 + 72) = v2;
  *(a1 + 88) = -1;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteArcs(void *a1, int a2)
{
  v3 = *(a1[8] + 8 * a2);
  v3[5] = 0;
  v3[6] = 0;
  v5 = v3[7];
  v4 = v3[8];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  v3[8] = v5;
  result = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::MutableArcIterator<fst::VectorFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 56) + 56 * *(a1 + 24);
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

  v10 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v11 = *(v4 + 8);
  if (v11)
  {
    v12 = *(v4 + 32) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (*v10)
  {
    v13 = *(v10 + 24) + 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 != v13)
  {
    goto LABEL_30;
  }

  v14 = (v4 + 24);
  v15 = (v10 + 16);
  v16 = v11 && v11 == *v10;
  v17 = !v16;
  v18 = 1;
  v19 = !v17;
  while (1)
  {
    v20 = *v14;
    v21 = *v15;
    if ((v18 & 1) != 0 && !v19)
    {
      break;
    }

    if (v20 == v4 + 16)
    {
      goto LABEL_29;
    }

    if (*(v20 + 16) != *(v21 + 16))
    {
      goto LABEL_30;
    }

    v18 = 0;
    v14 = (v20 + 8);
    v15 = (v21 + 8);
  }

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_29:
  if (*(v4 + 40) != *(v10 + 32))
  {
LABEL_30:
    v22 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v23 = *(v4 + 8);
    if (v23)
    {
      v24 = *(v4 + 32) + 1;
    }

    else
    {
      v24 = 0;
    }

    if (*v22)
    {
      v25 = *(v22 + 24) + 1;
    }

    else
    {
      v25 = 0;
    }

    if (v24 != v25)
    {
      goto LABEL_51;
    }

    v26 = (v4 + 24);
    v27 = (v22 + 16);
    v28 = v23 && v23 == *v22;
    v29 = !v28;
    v30 = 1;
    v31 = !v29;
    while (1)
    {
      v32 = *v26;
      v33 = *v27;
      if ((v30 & 1) != 0 && !v31)
      {
        break;
      }

      if (v32 == v4 + 16)
      {
        goto LABEL_50;
      }

      if (*(v32 + 16) != *(v33 + 16))
      {
        goto LABEL_51;
      }

      v30 = 0;
      v26 = (v32 + 8);
      v27 = (v33 + 8);
    }

    if (v23)
    {
      goto LABEL_51;
    }

LABEL_50:
    if (*(v4 + 40) != *(v22 + 32))
    {
LABEL_51:
      **(a1 + 16) &= ~0x100000000uLL;
    }
  }

  v34 = 0x30FC30007;
  if (*a2 == *v4 && *(a2 + 4) == *(v4 + 4) && *(a2 + 48) == *(v4 + 48))
  {
    v34 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v35 = *a2;
  v36 = *(a2 + 4);
  if (*a2 != v36)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v35)
  {
    if (!v36)
    {
      v37 = *(a1 + 16);
      v38 = *v37;
LABEL_63:
      *v37 = v38 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v37 = *(a1 + 16);
    v39 = *v37 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v37 = v39;
    if (!v36)
    {
      v38 = v39 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v37 = v38;
      goto LABEL_63;
    }
  }

  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v41 = *(a2 + 8);
  if (v41)
  {
    v42 = *(a2 + 32) + 1;
  }

  else
  {
    v42 = 0;
  }

  if (*result)
  {
    v43 = *(result + 24) + 1;
  }

  else
  {
    v43 = 0;
  }

  if (v42 != v43)
  {
    goto LABEL_85;
  }

  v44 = (a2 + 24);
  v45 = (result + 16);
  v46 = v41 && v41 == *result;
  v47 = !v46;
  v48 = 1;
  v49 = !v47;
  while (1)
  {
    v50 = *v44;
    v51 = *v45;
    if ((v48 & 1) != 0 && !v49)
    {
      break;
    }

    if (v50 == a2 + 16)
    {
      goto LABEL_84;
    }

    if (*(v50 + 16) != *(v51 + 16))
    {
      goto LABEL_85;
    }

    v48 = 0;
    v44 = (v50 + 8);
    v45 = (v51 + 8);
  }

  if (v41)
  {
    goto LABEL_85;
  }

LABEL_84:
  if (*(a2 + 40) != *(result + 32))
  {
LABEL_85:
    result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
    v52 = *(a2 + 8);
    if (v52)
    {
      v53 = *(a2 + 32) + 1;
    }

    else
    {
      v53 = 0;
    }

    if (*result)
    {
      v54 = *(result + 24) + 1;
    }

    else
    {
      v54 = 0;
    }

    if (v53 != v54)
    {
      goto LABEL_106;
    }

    v55 = (a2 + 24);
    v56 = (result + 16);
    v57 = v52 && v52 == *result;
    v58 = !v57;
    v59 = 1;
    v60 = !v58;
    while (1)
    {
      v61 = *v55;
      v62 = *v56;
      if ((v59 & 1) != 0 && !v60)
      {
        break;
      }

      if (v61 == a2 + 16)
      {
        goto LABEL_105;
      }

      if (*(v61 + 16) != *(v62 + 16))
      {
        goto LABEL_106;
      }

      v59 = 0;
      v55 = (v61 + 8);
      v56 = (v62 + 8);
    }

    if (v52)
    {
      goto LABEL_106;
    }

LABEL_105:
    if (*(a2 + 40) != *(result + 32))
    {
LABEL_106:
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= v34;
  return result;
}

uint64_t *fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArc(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[7] + 56 * a3;
  if (!*v4)
  {
    --result[5];
  }

  if (!*(v4 + 4))
  {
    --result[6];
  }

  if (!*a2)
  {
    ++result[5];
  }

  if (!*(a2 + 4))
  {
    ++result[6];
  }

  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  if (v4 != a2)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v4 + 16), *(a2 + 24), a2 + 16);
  }

  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  return result;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 216))(a2);
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 272))(a2, v4);
  (*(*a2 + 280))(a2, 0);
  v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v5 & 4) != 0)
    {
      v18 = *(*a2 + 184);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v7 = fst::CountStates<fst::ArcTpl<fst::LogWeightTpl<float>>>(a1) != 0;
    (*(*a2 + 240))(a2, v7);
  }

  LODWORD(v30[0]) = 0;
  (*(*a1 + 128))(a1, &v28);
  while (!v28)
  {
    if (SLODWORD(v30[0]) >= v29)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 192))(a2);
    if (v28)
    {
      (*(*v28 + 32))(v28);
    }

    else
    {
      ++LODWORD(v30[0]);
    }
  }

  if (!(*(*v28 + 16))(v28))
  {
    goto LABEL_9;
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

LABEL_14:
  v39 = 0;
  (*(*a1 + 128))(a1, &v37);
  while (2)
  {
    if (!v37)
    {
      if (v39 >= v38)
      {
        goto LABEL_53;
      }

      goto LABEL_20;
    }

    if (!(*(*v37 + 16))(v37))
    {
      if (v37)
      {
        v8 = (*(*v37 + 24))(v37);
        goto LABEL_21;
      }

LABEL_20:
      v8 = v39;
LABEL_21:
      if (v8 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 168))(a2, v8);
      }

      v9 = (*(*a1 + 40))(a1, v8);
      (*(*a2 + 248))(a2, v8, v9);
      v36 = 0;
      (*(*a1 + 136))(a1, v8, &v32);
LABEL_24:
      if (v32)
      {
        if ((*(*v32 + 24))(v32))
        {
          if (v32)
          {
            (*(*v32 + 8))(v32);
            goto LABEL_37;
          }

LABEL_35:
          if (v35)
          {
            --*v35;
          }

LABEL_37:
          *&v11 = (*(*a1 + 32))(a1, v8);
          v32 = 0;
          v33 = v11 | 0xFFFFFFFF00000000;
          fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v32, &v28);
          if (v28)
          {
            v12 = FLAGS_fst_error_fatal;
            if (FLAGS_fst_error_fatal == 1)
            {
              boost::filesystem::path::path(v25, "FATAL");
              v13 = fst::LogMessage::LogMessage(&v27, v25);
            }

            else
            {
              boost::filesystem::path::path(__p, "ERROR");
              v13 = fst::LogMessage::LogMessage(&v24, __p);
            }

            v14 = fst::cerr(v13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ArcMap: non-zero arc labels for superfinal arc", 46);
            if (v12)
            {
              fst::LogMessage::~LogMessage(&v27);
              if (v26 < 0)
              {
                v15 = v25[0];
                goto LABEL_46;
              }
            }

            else
            {
              fst::LogMessage::~LogMessage(&v24);
              if (v23 < 0)
              {
                v15 = __p[0];
LABEL_46:
                operator delete(v15);
              }
            }

            (*(*a2 + 184))(a2, 4, 4);
          }

          v19 = v29;
          std::list<int>::list(v20, v30);
          v21 = v31;
          (*(*a2 + 176))(a2, v8, &v19);
          std::__list_imp<char *>::clear(v20);
          std::__list_imp<char *>::clear(v30);
          if (v37)
          {
            (*(*v37 + 32))(v37);
          }

          else
          {
            ++v39;
          }

          continue;
        }

        if (v32)
        {
          v10 = (*(*v32 + 32))(v32);
          goto LABEL_30;
        }
      }

      else if (v36 >= v34)
      {
        goto LABEL_35;
      }

      v10 = (v33 + 16 * v36);
LABEL_30:
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(v10, &v28);
      (*(*a2 + 200))(a2, v8, &v28);
      std::__list_imp<char *>::clear(v30);
      if (v32)
      {
        (*(*v32 + 40))(v32);
      }

      else
      {
        ++v36;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

LABEL_53:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = fst::ProjectProperties(v5, 1);
  return (*(*a2 + 184))(a2, v17 & 0x3FFCFFFF0007 | v16, 0x3FFFFFFF0007);
}

void sub_34950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  std::__list_imp<char *>::clear((v35 + 16));
  v38 = *(v36 - 112);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()@<X0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 3) == -1)
  {
    v30 = a1[2];
    v29[8] = 2139095040;
    if (v30 == INFINITY)
    {
      v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      v23 = *v12;
      v7 = v24;
      std::list<int>::list(v24, (v12 + 2));
      v25 = v12[8];
      *a2 = 0;
      *(a2 + 8) = v23;
      std::list<int>::list((a2 + 16), v24);
      *(a2 + 40) = v25;
      *(a2 + 48) = -1;
      return std::__list_imp<char *>::clear(v7);
    }

    v8 = fst::StringWeight<int,(fst::StringType)0>::One();
    v26 = *v8;
    v7 = v27;
    std::list<int>::list(v27, (v8 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v28, &v26, a1[2]);
    *a2 = 0;
    *(a2 + 8) = v28;
    std::list<int>::list((a2 + 16), v29);
    *(a2 + 40) = v29[6];
    *(a2 + 48) = -1;
    v9 = v29;
    goto LABEL_7;
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  if (!v4)
  {
    v10 = fst::StringWeight<int,(fst::StringType)0>::One();
    v19 = *v10;
    v7 = v20;
    std::list<int>::list(v20, (v10 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v21, &v19, a1[2]);
    v11 = *(a1 + 3);
    *a2 = v5;
    *(a2 + 4) = v5;
    *(a2 + 8) = v21;
    std::list<int>::list((a2 + 16), v22);
    *(a2 + 40) = v22[6];
    *(a2 + 48) = v11;
    v9 = v22;
LABEL_7:
    std::__list_imp<char *>::clear(v9);
    return std::__list_imp<char *>::clear(v7);
  }

  fst::StringWeight<int,(fst::StringType)0>::StringWeight(&v14, v4);
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v16, &v14, a1[2]);
  v6 = *(a1 + 3);
  *a2 = v5;
  *(a2 + 4) = v5;
  *(a2 + 8) = v16;
  std::list<int>::list((a2 + 16), v17);
  *(a2 + 40) = v18;
  *(a2 + 48) = v6;
  std::__list_imp<char *>::clear(v17);
  v7 = &v15;
  return std::__list_imp<char *>::clear(v7);
}

uint64_t fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = *a3;
  v15 = *(a3 + 16);
  v16 = *(a3 + 20);
  v17 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, 29);
  v6 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v7 = v5 - 40;
      std::__list_imp<char *>::clear((v5 - 32));
      v5 = v7;
    }

    while (v7 != v6);
  }

  a2[1] = v6;
  v8 = *(a3 + 12);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::ShortestDistance(v14);
  if (BYTE12(v21[1]) == 1)
  {
    v10 = *a2;
    v9 = a2[1];
    if (v9 != *a2)
    {
      do
      {
        v11 = v9 - 40;
        std::__list_imp<char *>::clear((v9 - 32));
        v9 = v11;
      }

      while (v11 != v10);
    }

    a2[1] = v10;
    v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::NoWeight();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::resize(a2, 1uLL, v12);
  }

  return fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ShortestDistanceState(v14);
}

void sub_34DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 216))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 272))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 280))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a1);
    (*(*a2 + 240))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v103 = 0;
  v63 = v9;
  if (a3)
  {
    goto LABEL_56;
  }

  LODWORD(v93) = 0;
  (*(*a1 + 128))(a1, &v91);
  for (i = 0xFFFFFFFFLL; ; i = v13)
  {
    if (v91)
    {
      v11 = (*(*v91 + 16))(v91);
      v12 = v91;
      if (v11)
      {
        goto LABEL_34;
      }

      if (v91)
      {
        v13 = (*(*v91 + 24))();
        goto LABEL_11;
      }
    }

    else if (v93 >= v92)
    {
      goto LABEL_36;
    }

    v13 = v93;
LABEL_11:
    (*(*a1 + 32))(&p_p, a1, v13);
    v14 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    v15 = p_p ? v99 + 1 : 0;
    v16 = *v14 ? *(v14 + 24) + 1 : 0;
    if (v15 != v16)
    {
      break;
    }

    v17 = v98;
    v18 = (v14 + 16);
    for (j = 1; ; j = 0)
    {
      v20 = *v18;
      if (j)
      {
        if (!p_p)
        {
          break;
        }

        if (p_p != *v14)
        {
          goto LABEL_25;
        }
      }

      if (v17 == &v97)
      {
        break;
      }

      if (*(v17 + 16) != *(v20 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v17 + 8);
      v18 = (v20 + 8);
    }

    *&__p = v100;
    v74 = *(v14 + 32);
    v21 = v100;
    std::__list_imp<char *>::clear(&v97);
    if (v21 != v74)
    {
      goto LABEL_26;
    }

    v13 = i;
LABEL_27:
    if (v91)
    {
      (*(*v91 + 32))(v91);
    }

    else
    {
      LODWORD(v93) = v93 + 1;
    }
  }

LABEL_25:
  std::__list_imp<char *>::clear(&v97);
LABEL_26:
  if (i == -1)
  {
    goto LABEL_27;
  }

  i = 0xFFFFFFFFLL;
  v12 = v91;
LABEL_34:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_36:
  if (i == -1)
  {
LABEL_56:
    i = (*(*a2 + 192))(a2);
    v32 = 1;
    goto LABEL_57;
  }

  (*(*a1 + 32))(&p_p, a1, i);
  v22 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  if (p_p)
  {
    v23 = v99 + 1;
  }

  else
  {
    v23 = 0;
  }

  if (*v22)
  {
    v24 = *(v22 + 24) + 1;
  }

  else
  {
    v24 = 0;
  }

  if (v23 != v24)
  {
    goto LABEL_134;
  }

  v25 = v98;
  v26 = (v22 + 16);
  v27 = p_p && p_p == *v22;
  v28 = !v27;
  v29 = 1;
  v30 = !v28;
  while (1)
  {
    v31 = *v26;
    if ((v29 & 1) != 0 && !v30)
    {
      break;
    }

    if (v25 == &v97)
    {
      goto LABEL_136;
    }

    if (*(v25 + 16) != *(v31 + 16))
    {
      goto LABEL_134;
    }

    v29 = 0;
    v25 = *(v25 + 8);
    v26 = (v31 + 8);
  }

  if (p_p)
  {
LABEL_134:
    std::__list_imp<char *>::clear(&v97);
    goto LABEL_135;
  }

LABEL_136:
  *&v91 = v100;
  LODWORD(__p) = *(v22 + 32);
  v62 = v100;
  std::__list_imp<char *>::clear(&v97);
  if (v62 != *&__p)
  {
LABEL_135:
    __p = 0;
    v78 = 0;
    v79 = 0;
    p_p = &__p;
    v97 = 0;
    v98 = 0;
    v99 = &v103;
    fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a1, &p_p);
  }

  v32 = 0;
LABEL_57:
  v90 = 0;
  (*(*a1 + 128))(a1, &v88);
  while (2)
  {
    if (!v88)
    {
      if (v90 >= v89)
      {
        goto LABEL_127;
      }

      goto LABEL_63;
    }

    if (!(*(*v88 + 16))(v88))
    {
      if (v88)
      {
        v33 = (*(*v88 + 24))();
LABEL_64:
        v34 = v33 + v32;
        while ((*(*a2 + 152))(a2) <= v34)
        {
          (*(*a2 + 192))(a2);
        }

        if (v33 == v63)
        {
          v35 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
          v85 = *v35;
          std::list<int>::list(v86, (v35 + 2));
          v87 = v35[8];
          (*(*a2 + 176))(a2, (v33 + v32), &v85);
          std::__list_imp<char *>::clear(v86);
        }

        (*(*a1 + 32))(&v91, a1, v33);
        v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
        if (v91)
        {
          v37 = v94 + 1;
        }

        else
        {
          v37 = 0;
        }

        if (*v36)
        {
          v38 = *(v36 + 24) + 1;
        }

        else
        {
          v38 = 0;
        }

        if (v37 == v38)
        {
          v39 = v93;
          v40 = (v36 + 16);
          if (v91)
          {
            v41 = v91 == *v36;
          }

          else
          {
            v41 = 0;
          }

          v42 = !v41;
          v43 = 1;
          v44 = v42 ^ 1;
          while (1)
          {
            v45 = *v40;
            if ((v43 & 1) != 0 && !v44)
            {
              break;
            }

            if (v39 == &v92)
            {
              goto LABEL_90;
            }

            if (*(v39 + 16) != *(v45 + 16))
            {
              goto LABEL_89;
            }

            v43 = 0;
            v39 = *(v39 + 8);
            v40 = (v45 + 8);
          }

          if (v91)
          {
            goto LABEL_89;
          }

LABEL_90:
          LODWORD(p_p) = v95;
          LODWORD(__p) = *(v36 + 32);
          v46 = *&v95 != *&__p;
        }

        else
        {
LABEL_89:
          v46 = 1;
        }

        if ((v32 & v46) == 1)
        {
          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Reverse(&v91, &v82);
          p_p = 0;
          LODWORD(v97) = v82;
          std::list<int>::list(&v98, v83);
          v101 = v84;
          v102 = v33 + v32;
          std::__list_imp<char *>::clear(v83);
          (*(*a2 + 200))(a2, 0, &p_p);
          std::__list_imp<char *>::clear(&v98);
        }

        v81 = 0;
        (*(*a1 + 136))(a1, v33, &__p);
LABEL_94:
        if (__p)
        {
          if ((*(*__p + 24))(__p))
          {
            if (__p)
            {
              (*(*__p + 8))();
              goto LABEL_122;
            }

LABEL_120:
            if (v80)
            {
              --*v80;
            }

LABEL_122:
            std::__list_imp<char *>::clear(&v92);
            if (v88)
            {
              (*(*v88 + 32))(v88);
            }

            else
            {
              ++v90;
            }

            continue;
          }

          if (__p)
          {
            v47 = (*(*__p + 32))();
LABEL_100:
            v48 = *(v47 + 48);
            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Reverse((v47 + 8), &v74);
            v49 = (v48 + v32);
            if (v49 == i)
            {
              v50 = v32;
            }

            else
            {
              v50 = 1;
            }

            if ((v50 & 1) == 0)
            {
              (*(*a1 + 32))(&v69, a1, i);
              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Reverse(&v69, &v71);
              fst::Times<int,(fst::StringType)1>(&v71, &v74, &v104);
              v51 = NAN;
              if (v73 != -INFINITY)
              {
                v51 = NAN;
                if (v76 != -INFINITY)
                {
                  v51 = INFINITY;
                  if (v76 != INFINITY && v73 != INFINITY)
                  {
                    v51 = v73 + v76;
                  }
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&p_p, &v104, v51);
              std::__list_imp<char *>::clear(v105);
              v74 = *&p_p;
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v75, v98, &v97);
              v76 = v100;
              std::__list_imp<char *>::clear(&v97);
              std::__list_imp<char *>::clear(v72);
              std::__list_imp<char *>::clear(v70);
            }

            v53 = *v47;
            v66 = v74;
            std::list<int>::list(v67, v75);
            v68 = v76;
            p_p = v53;
            *&v97 = v66;
            std::list<int>::list(&v98, v67);
            v101 = v68;
            v102 = v34;
            std::__list_imp<char *>::clear(v67);
            while (1)
            {
              v54 = (*(*a2 + 152))(a2);
              v55 = *a2;
              if (v54 > v49)
              {
                break;
              }

              (*(v55 + 192))(a2);
            }

            (*(v55 + 200))(a2, v49, &p_p);
            std::__list_imp<char *>::clear(&v98);
            std::__list_imp<char *>::clear(v75);
            if (__p)
            {
              (*(*__p + 40))(__p);
            }

            else
            {
              ++v81;
            }

            goto LABEL_94;
          }
        }

        else if (v81 >= v79)
        {
          goto LABEL_120;
        }

        v47 = v78 + 56 * v81;
        goto LABEL_100;
      }

LABEL_63:
      v33 = v90;
      goto LABEL_64;
    }

    break;
  }

  if (v88)
  {
    (*(*v88 + 8))();
  }

LABEL_127:
  (*(*a2 + 168))(a2, i);
  if (i == v63)
  {
    v56 = v32;
  }

  else
  {
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    (*(*a1 + 32))(&p_p, a1, v63);
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Reverse(&p_p, v64);
    (*(*a2 + 176))(a2, v63, v64);
    std::__list_imp<char *>::clear(v65);
    std::__list_imp<char *>::clear(&v97);
  }

  v57 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v58 = v103;
  v59 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v60 = fst::ReverseProperties(v58 | v57, v32);
  return (*(*a2 + 184))(a2, v59 | v60, 0x3FFFFFFF0007);
}

void sub_35D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ShortestDistance<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = *a3;
  v14 = *(a3 + 16);
  v15 = *(a3 + 20);
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, 29);
  v6 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v7 = v5 - 40;
      std::__list_imp<char *>::clear((v5 - 32));
      v5 = v7;
    }

    while (v7 != v6);
  }

  a2[1] = v6;
  fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::ShortestDistance(v13, *(a3 + 12));
  if (BYTE12(v20[1]) == 1)
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8 != *a2)
    {
      do
      {
        v10 = v8 - 40;
        std::__list_imp<char *>::clear((v8 - 32));
        v8 = v10;
      }

      while (v10 != v9);
    }

    a2[1] = v9;
    v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::NoWeight();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::resize(a2, 1uLL, v11);
  }

  return fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ShortestDistanceState(v13);
}

void sub_35FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::resize(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__append(result, v7, a3);
  }

  else if (!v6)
  {
    v8 = *result + 40 * a2;
    if (v4 != v8)
    {
      do
      {
        v9 = v4 - 40;
        result = std::__list_imp<char *>::clear((v4 - 32));
        v4 = v9;
      }

      while (v9 != v8);
    }

    v3[1] = v8;
  }

  return result;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::NoWeight(void)::no_weight;
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = off_271B40;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_368B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
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

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v15 = v27;
      goto LABEL_12;
    }

    v14 = (*(*v25 + 16))(v25);
    result = v25;
    if (v14)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v15 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v15, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v16 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v22[1] + 56 * v24;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 48)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::operator()(a4, v16 + 8, v19)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v18[v17] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_36D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_271C20;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = 0;
  v2 = a1 + 24;
  v3 = &v4;
  fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::TopOrderVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a2);
}

void sub_36EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::TopOrderVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    operator new();
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_37738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type(void)::type;
}

BOOL fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::Plus<int>(a2, a3, &v28);
  v5 = *(a2 + 32);
  v6 = *(a3 + 32);
  if (v5 != INFINITY)
  {
    if (v6 == INFINITY)
    {
      v6 = *(a2 + 32);
    }

    else if (v5 <= v6)
    {
      v8 = expf(-(v6 - v5));
      v6 = v5 - logf(v8 + 1.0);
    }

    else
    {
      v7 = expf(-(v5 - v6));
      v6 = v6 - logf(v7 + 1.0);
    }
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v25, &v28, v6);
  std::__list_imp<char *>::clear(v29);
  if (v25)
  {
    v9 = v26[2] + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(a2 + 24) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    goto LABEL_36;
  }

  v12 = v26[1];
  v13 = *(a2 + 16);
  v14 = v13;
  if (v25)
  {
    if (v25 != v10)
    {
LABEL_36:
      v23 = 0;
      goto LABEL_37;
    }

    while (v12 != v26)
    {
      if (*(v12 + 16) != *(v14 + 16))
      {
        goto LABEL_36;
      }

      v12 = *(v12 + 8);
      v14 = *(v14 + 8);
    }
  }

  v28 = v27;
  v15 = *(a2 + 32);
  v30 = v15;
  if (v27 != v15)
  {
    goto LABEL_36;
  }

  if (*a3)
  {
    v16 = *(a3 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v9 == v16)
  {
    v17 = (a3 + 16);
    if (v10)
    {
      v18 = v10 == *a3;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
    v20 = 1;
    v21 = v19 ^ 1;
    while (1)
    {
      v22 = *v17;
      if ((v20 & 1) != 0 && !v21)
      {
        break;
      }

      if (v13 == a2 + 8)
      {
        goto LABEL_40;
      }

      if (*(v13 + 16) != *(v22 + 16))
      {
        goto LABEL_39;
      }

      v20 = 0;
      v13 = *(v13 + 8);
      v17 = (v22 + 8);
    }

    if (v10)
    {
      goto LABEL_39;
    }

LABEL_40:
    v28 = v15;
    v30 = *(a3 + 32);
    v23 = v15 != v30;
  }

  else
  {
LABEL_39:
    v23 = 1;
  }

LABEL_37:
  std::__list_imp<char *>::clear(v26);
  return v23;
}

void *fst::Plus<int>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 24) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 24) == 0) : (v7 = 0), v7))
  {
    v3 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)0>::Zero();
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 24) + 1;
    }

    else
    {
      v10 = 0;
    }

    if (*v8)
    {
      v11 = *(v8 + 24) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == v11)
    {
      v12 = (a1 + 16);
      v13 = (v8 + 16);
      for (i = 1; ; i = 0)
      {
        v15 = *v12;
        v16 = *v13;
        if (i)
        {
          if (!v9)
          {
            goto LABEL_26;
          }

          if (v9 != *v8)
          {
            break;
          }
        }

        if (v15 == a1 + 8)
        {
          goto LABEL_26;
        }

        if (*(v15 + 16) != *(v16 + 16))
        {
          break;
        }

        v12 = (v15 + 8);
        v13 = (v16 + 8);
      }
    }

    result = fst::StringWeight<int,(fst::StringType)0>::Zero();
    v18 = *v3;
    if (*v3)
    {
      v19 = *(v3 + 24) + 1;
    }

    else
    {
      v19 = 0;
    }

    if (*result)
    {
      v20 = result[3] + 1;
    }

    else
    {
      v20 = 0;
    }

    if (v19 != v20)
    {
      v21 = *(v3 + 16);
LABEL_44:
      *(a3 + 8) = a3 + 8;
      *(a3 + 16) = a3 + 8;
      *(a3 + 24) = 0;
      *a3 = 0;
      v26 = a1 + 8;
      v27 = (a1 + 16);
      v28 = v3 + 8;
      v29 = 1;
      while (1)
      {
        v30 = *v27;
        v32 = *v27 == v26 || v21 == v28;
        do
        {
          v33 = v29;
          if (v29)
          {
            if (*a1)
            {
              v34 = *v3 == 0;
            }

            else
            {
              v34 = 1;
            }

            if (v34)
            {
              return result;
            }
          }

          else if (v32)
          {
            return result;
          }

          if (v29)
          {
            v35 = a1;
          }

          else
          {
            v35 = (v30 + 16);
          }

          v36 = *v35;
          if (v33)
          {
            v37 = v3;
          }

          else
          {
            v37 = (v21 + 16);
          }

          if (v36 != *v37)
          {
            return result;
          }

          result = fst::StringWeight<int,(fst::StringType)0>::PushBack(a3, v36);
          v29 = 0;
        }

        while ((v33 & 1) != 0);
        v29 = 0;
        v27 = (v30 + 8);
        v21 = *(v21 + 8);
        v28 = v3 + 8;
        v26 = a1 + 8;
      }
    }

    v21 = *(v3 + 16);
    v22 = result + 2;
    v23 = 1;
    v24 = v21;
    while (1)
    {
      v25 = *v22;
      if (v23)
      {
        if (!v18)
        {
          break;
        }

        if (v18 != *result)
        {
          goto LABEL_44;
        }
      }

      if (v24 == v3 + 8)
      {
        break;
      }

      if (*(v24 + 16) != *(v25 + 16))
      {
        goto LABEL_44;
      }

      v23 = 0;
      v24 = *(v24 + 8);
      v22 = (v25 + 8);
    }

    v3 = a1;
  }

LABEL_26:
  *a3 = *v3;

  return std::list<int>::list((a3 + 8), v3 + 8);
}

{
  v3 = a2;
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 24) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 24) == 0) : (v7 = 0), v7))
  {
    v3 = fst::StringWeight<int,(fst::StringType)1>::NoWeight();
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)1>::Zero();
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 24) + 1;
    }

    else
    {
      v10 = 0;
    }

    if (*v8)
    {
      v11 = *(v8 + 24) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == v11)
    {
      v12 = (a1 + 16);
      v13 = (v8 + 16);
      for (i = 1; ; i = 0)
      {
        v15 = *v12;
        v16 = *v13;
        if (i)
        {
          if (!v9)
          {
            goto LABEL_26;
          }

          if (v9 != *v8)
          {
            break;
          }
        }

        if (v15 == a1 + 8)
        {
          goto LABEL_26;
        }

        if (*(v15 + 16) != *(v16 + 16))
        {
          break;
        }

        v12 = (v15 + 8);
        v13 = (v16 + 8);
      }
    }

    result = fst::StringWeight<int,(fst::StringType)1>::Zero();
    v18 = *v3;
    if (*v3)
    {
      v19 = *(v3 + 24) + 1;
    }

    else
    {
      v19 = 0;
    }

    if (*result)
    {
      v20 = result[3] + 1;
    }

    else
    {
      v20 = 0;
    }

    if (v19 != v20)
    {
LABEL_43:
      *(a3 + 8) = a3 + 8;
      *(a3 + 16) = a3 + 8;
      *(a3 + 24) = 0;
      *a3 = 0;
      if (*a1 && v18)
      {
        v26 = (v3 + 8);
        v27 = (a1 + 8);
        v28 = *(a1 + 16);
        do
        {
          v29 = a1;
          if (v27 != v28)
          {
            v29 = (*v27 + 16);
          }

          v30 = v3;
          if (v26 != *(v3 + 16))
          {
            v30 = (*v26 + 16);
          }

          if (*v29 != *v30)
          {
            break;
          }

          v31 = a1;
          if (v27 != v28)
          {
            v31 = (*v27 + 16);
          }

          result = fst::StringWeight<int,(fst::StringType)1>::PushFront(a3, *v31);
          v28 = *(a1 + 16);
          v32 = v27;
          if (v27 != v28)
          {
            v32 = *v27;
          }

          if (v26 == *(v3 + 16))
          {
            break;
          }

          v26 = *v26;
          v6 = v27 == v28;
          v27 = v32;
        }

        while (!v6);
      }

      return result;
    }

    v21 = (v3 + 16);
    v22 = result + 2;
    for (j = 1; ; j = 0)
    {
      v24 = *v21;
      v25 = *v22;
      if (j)
      {
        if (!v18)
        {
          break;
        }

        if (v18 != *result)
        {
          goto LABEL_43;
        }
      }

      if (v24 == v3 + 8)
      {
        break;
      }

      if (*(v24 + 16) != *(v25 + 16))
      {
        goto LABEL_43;
      }

      v21 = (v24 + 8);
      v22 = (v25 + 8);
    }

    v3 = a1;
  }

LABEL_26:
  *a3 = *v3;

  return std::list<int>::list((a3 + 8), v3 + 8);
}

uint64_t fst::StringWeight<int,(fst::StringType)0>::NoWeight()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)0>::NoWeight(void)::no_weight;
}

void fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::ShortestDistance(void *a1)
{
  if ((*(**a1 + 24))(*a1) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v11, __p);
    v3 = fst::cerr(v2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ShortestDistance: Weight needs to be right distributive: ", 57);
    v5 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type();
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_15;
  }

  if ((*(**a1 + 64))(*a1, 4, 0))
  {
LABEL_15:
    *(a1 + 116) = 1;
  }
}

void sub_37F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::Times<int,fst::LogWeightTpl<float>,(fst::GallicType)0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  fst::Times<int,(fst::StringType)0>(a1, a2, &v12);
  v6 = *(a1 + 32);
  v7 = NAN;
  if (v6 != -INFINITY)
  {
    v8 = *(a2 + 32);
    v7 = NAN;
    if (v8 != -INFINITY)
    {
      v7 = INFINITY;
      v9 = v8 == INFINITY || v6 == INFINITY;
      v10 = v6 + v8;
      if (!v9)
      {
        v7 = v10;
      }
    }
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(a3, &v12, v7);
  return std::__list_imp<char *>::clear(v13);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = std::list<int>::list((a4 + v7 + 8), v6 + v7 + 8);
      *(a4 + v7 + 32) = *(v6 + v7 + 32);
      v7 += 40;
    }

    while (v8 + 40 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 8));
      v6 += 40;
    }
  }

  return result;
}

void sub_38120(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}