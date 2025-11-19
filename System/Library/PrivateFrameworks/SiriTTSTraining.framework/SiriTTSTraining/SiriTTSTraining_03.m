uint64_t std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__list_imp<char *>::clear((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *fst::Times<int,(fst::StringType)0>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 3) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 24) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)0>::Zero();
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 3) + 1;
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

    if (v10 != v11)
    {
LABEL_26:
      v18 = fst::StringWeight<int,(fst::StringType)0>::Zero();
      v19 = *a2;
      if (*a2)
      {
        v20 = *(a2 + 24) + 1;
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

      if (v20 == v21)
      {
        v22 = (a2 + 16);
        v23 = (v18 + 16);
        for (i = 1; ; i = 0)
        {
          v25 = *v22;
          v26 = *v23;
          if (i)
          {
            if (!v19)
            {
              goto LABEL_50;
            }

            if (v19 != *v18)
            {
              break;
            }
          }

          if (v25 == a2 + 8)
          {
            goto LABEL_50;
          }

          if (*(v25 + 16) != *(v26 + 16))
          {
            break;
          }

          v22 = (v25 + 8);
          v23 = (v26 + 8);
        }
      }

      *a3 = *a1;
      result = std::list<int>::list((a3 + 8), (a1 + 2));
      v28 = (a2 + 16);
      for (j = 1; ; j = 0)
      {
        v30 = *v28;
        do
        {
          v31 = j;
          if (j)
          {
            v32 = *a2;
            if (!*a2)
            {
              return result;
            }
          }

          else
          {
            if (v30 == a2 + 8)
            {
              return result;
            }

            v32 = *(v30 + 16);
          }

          result = fst::StringWeight<int,(fst::StringType)0>::PushBack(a3, v32);
          j = 0;
        }

        while ((v31 & 1) != 0);
        v28 = (v30 + 8);
      }
    }

    v12 = (a1 + 4);
    v13 = (v8 + 16);
    for (k = 1; ; k = 0)
    {
      v15 = *v12;
      v16 = *v13;
      if (k)
      {
        if (!v9)
        {
          break;
        }

        if (v9 != *v8)
        {
          goto LABEL_26;
        }
      }

      if (v15 == a1 + 2)
      {
        break;
      }

      if (*(v15 + 16) != *(v16 + 16))
      {
        goto LABEL_26;
      }

      v12 = (v15 + 8);
      v13 = (v16 + 8);
    }

LABEL_50:
    v17 = fst::StringWeight<int,(fst::StringType)0>::Zero();
  }

  *a3 = *v17;

  return std::list<int>::list((a3 + 8), (v17 + 2));
}

uint64_t fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ShortestDistanceState(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    operator delete(v3);
  }

  v5 = (a1 + 40);
  std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

void fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~ImplToFst(a1);

  operator delete();
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void *fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  std::list<int>::list(v9, (a3 + 2));
  v10 = a3[8];
  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::SetFinal(v6, a2, &v8);
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddArc(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::DeleteArcs(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = off_272B68;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = off_272AB8;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_38E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = off_272B30;
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

  return fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~FstImpl(a1);

  operator delete();
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~FstImpl(uint64_t a1)
{
  *a1 = off_272B68;
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

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Write(uint64_t a1)
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

void sub_390C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_391BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_272B68;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = off_272AB8;
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
    v6 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::AddState();
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

uint64_t fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1)
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

void sub_399DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero(void)::zero;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Zero()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Zero(void)::zero;
}

uint64_t fst::StringWeight<int,(fst::StringType)1>::Zero()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)1>::Zero(void)::zero;
}

void *std::list<int>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void *std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::reserve(void *result, unint64_t a2)
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

void sub_3A014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_3A0C8(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> const&>(uint64_t *a1, uint64_t a2)
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>*>(a1, *a1, v8, v9);
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

void sub_3A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a1, a2, a3, 1);
  }
}

void sub_3A408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(v7, &v86);
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
              v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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
                v64 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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
            v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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

void sub_3AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
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

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One(void)::one;
}

void fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_3B83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::InitVisit(uint64_t a1, uint64_t a2)
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

unint64_t fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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

uint64_t fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~MemoryPool(void *a1)
{
  *a1 = off_272CD8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~MemoryPool(void *a1)
{
  *a1 = off_272CD8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_272D18;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_3BE9C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_272D18;
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

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>> *>>::__add_back_capacity(void *a1)
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

void sub_3C1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::One(void)::one;
}

uint64_t fst::StringWeight<int,(fst::StringType)1>::One()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)1>::One(void)::one;
}

void fst::ArcBuffer<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
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

void sub_3C71C(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>(void *a1, void *a2, uint64_t a3)
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
    v37 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(a1);
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
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
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
  updated = fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
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

void sub_3CC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Type();
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

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::WriteFile(fst *a1, uint64_t a2)
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

void *fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::SetFinal(void *a1, int a2, int *a3)
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
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_3D87C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>(unint64_t a1, int *a2, int *a3)
{
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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
    v18 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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

  v30 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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
    v42 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::AddArc(void *a1, int a2, int *a3)
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
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>(unint64_t a1, int a2, int *a3, _DWORD *a4)
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

  v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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
    v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::DeleteArcs(void *a1, int a2)
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

uint64_t fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::SetValue(uint64_t a1, uint64_t a2)
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

  v10 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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
    v22 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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

  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
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
    result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
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

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v4 = (a1 + 4);
  v5 = 1;
LABEL_2:
  v6 = *v4;
  v7 = v3;
  while (1)
  {
    v8 = v5;
    if (v5)
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v7)
      {
LABEL_9:
        operator new();
      }

      goto LABEL_10;
    }

    if (v6 == a1 + 2)
    {
      break;
    }

    v3 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    v7 = v3;
    if ((v8 & 1) == 0)
    {
      v5 = 0;
      v4 = (v6 + 8);
      goto LABEL_2;
    }
  }

  v9 = a1[8];
  *a2 = v7;
  std::list<int>::list((a2 + 8), v11);
  *(a2 + 32) = v9;
  return std::__list_imp<char *>::clear(v11);
}

_DWORD *fst::StringWeight<int,(fst::StringType)1>::PushFront(_DWORD *result, int a2)
{
  if (*result)
  {
    operator new();
  }

  *result = a2;
  return result;
}

void *fst::Times<int,(fst::StringType)1>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 3) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 24) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)1>::NoWeight();
  }

  else
  {
    v8 = fst::StringWeight<int,(fst::StringType)1>::Zero();
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 3) + 1;
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

    if (v10 != v11)
    {
LABEL_26:
      v18 = fst::StringWeight<int,(fst::StringType)1>::Zero();
      v19 = *a2;
      if (*a2)
      {
        v20 = *(a2 + 24) + 1;
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

      if (v20 == v21)
      {
        v22 = (a2 + 16);
        v23 = (v18 + 16);
        for (i = 1; ; i = 0)
        {
          v25 = *v22;
          v26 = *v23;
          if (i)
          {
            if (!v19)
            {
              goto LABEL_50;
            }

            if (v19 != *v18)
            {
              break;
            }
          }

          if (v25 == a2 + 8)
          {
            goto LABEL_50;
          }

          if (*(v25 + 16) != *(v26 + 16))
          {
            break;
          }

          v22 = (v25 + 8);
          v23 = (v26 + 8);
        }
      }

      *a3 = *a1;
      result = std::list<int>::list((a3 + 8), (a1 + 2));
      v28 = (a2 + 16);
      for (j = 1; ; j = 0)
      {
        v30 = *v28;
        do
        {
          v31 = j;
          if (j)
          {
            v32 = *a2;
            if (!*a2)
            {
              return result;
            }
          }

          else
          {
            if (v30 == a2 + 8)
            {
              return result;
            }

            v32 = *(v30 + 16);
          }

          result = fst::StringWeight<int,(fst::StringType)0>::PushBack(a3, v32);
          j = 0;
        }

        while ((v31 & 1) != 0);
        v28 = (v30 + 8);
      }
    }

    v12 = (a1 + 4);
    v13 = (v8 + 16);
    for (k = 1; ; k = 0)
    {
      v15 = *v12;
      v16 = *v13;
      if (k)
      {
        if (!v9)
        {
          break;
        }

        if (v9 != *v8)
        {
          goto LABEL_26;
        }
      }

      if (v15 == a1 + 2)
      {
        break;
      }

      if (*(v15 + 16) != *(v16 + 16))
      {
        goto LABEL_26;
      }

      v12 = (v15 + 8);
      v13 = (v16 + 8);
    }

LABEL_50:
    v17 = fst::StringWeight<int,(fst::StringType)1>::Zero();
  }

  *a3 = *v17;

  return std::list<int>::list((a3 + 8), (v17 + 2));
}

uint64_t fst::StringWeight<int,(fst::StringType)1>::NoWeight()
{
  {
    operator new();
  }

  return fst::StringWeight<int,(fst::StringType)1>::NoWeight(void)::no_weight;
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2)
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
      fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_3EFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
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
        if (!a4 || (v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::operator()(a4, v16 + 8, v19)))
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

void sub_3F44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2)
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
  fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::TopOrderVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(a2);
}

void sub_3F624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::TopOrderVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    operator new();
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_3FE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Type()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Type(void)::type;
}

BOOL fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
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

void fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_158;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(&__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(&__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(v112, &__p);
    v5 = fst::cerr(v4);
    v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Weight does not have the path property: ", 40);
    v99 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Type();
    v100 = *(v99 + 23);
    if (v100 >= 0)
    {
      v101 = v99;
    }

    else
    {
      v101 = *v99;
    }

    if (v100 >= 0)
    {
      v102 = *(v99 + 23);
    }

    else
    {
      v102 = *(v99 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, v101, v102);
    fst::LogMessage::~LogMessage(v112);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(__p);
    }

LABEL_158:
    v103 = a1 + 116;
    goto LABEL_159;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    v6 = a1[1];
    v8 = *v6;
    v7 = v6[1];
    if (v7 != *v6)
    {
      do
      {
        v9 = v7 - 40;
        std::__list_imp<char *>::clear((v7 - 32));
        v7 = v9;
      }

      while (v9 != v8);
    }

    v6[1] = v8;
    v11 = a1[5];
    v10 = a1[6];
    if (v10 != v11)
    {
      do
      {
        v12 = v10 - 40;
        std::__list_imp<char *>::clear((v10 - 32));
        v10 = v12;
      }

      while (v12 != v11);
    }

    a1[6] = v11;
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v13 = a2;
  for (i = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((i[1] - *i) >> 3) <= a2; i = a1[1])
  {
    v15 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](i, v15);
    v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v16);
    LOBYTE(__p) = 0;
    std::vector<BOOL>::push_back((a1 + 8), &__p);
  }

  if (*(a1 + 33) == 1)
  {
    for (j = a1[11]; a2 >= ((a1[12] - j) >> 2); j = a1[11])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
    }

    *(j + 4 * a2) = *(a1 + 28);
  }

  v18 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  v19 = v18;
  v20 = *a1[1] + 40 * v13;
  *v20 = *v18;
  if (v20 != v18)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v20 + 8), *(v18 + 16), v18 + 8);
  }

  *(v20 + 32) = *(v19 + 32);
  v21 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  v22 = v21;
  v23 = a1 + 5;
  v24 = a1[5] + 40 * v13;
  *v24 = *v21;
  if (v24 != v21)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v24 + 8), *(v21 + 16), v21 + 8);
  }

  *(v24 + 32) = *(v22 + 32);
  v25 = a1 + 8;
  *(a1[8] + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v13);
  v103 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_147;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    for (k = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((k[1] - *k) >> 3) <= v26; k = a1[1])
    {
      v28 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](k, v28);
      v29 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v29);
      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back((a1 + 8), &__p);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&__p);
      v30 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      if (__p)
      {
        v31 = v118 + 1;
      }

      else
      {
        v31 = 0;
      }

      if (*v30)
      {
        v32 = *(v30 + 24) + 1;
      }

      else
      {
        v32 = 0;
      }

      if (v31 != v32)
      {
        goto LABEL_146;
      }

      v33 = v117;
      v34 = (v30 + 16);
      v35 = __p && __p == *v30;
      v36 = !v35;
      v37 = 1;
      v38 = !v36;
      while (1)
      {
        v39 = *v34;
        if ((v37 & 1) != 0 && !v38)
        {
          break;
        }

        if (v33 == &v116)
        {
          goto LABEL_50;
        }

        if (*(v33 + 16) != *(v39 + 16))
        {
          goto LABEL_146;
        }

        v37 = 0;
        v33 = *(v33 + 8);
        v34 = (v39 + 8);
      }

      if (__p)
      {
LABEL_146:
        std::__list_imp<char *>::clear(&v116);
LABEL_147:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_159:
        *v103 = 1;
        return;
      }

LABEL_50:
      *v112 = v119;
      v109 = *(v30 + 32);
      v40 = v119;
      v41 = v109;
      std::__list_imp<char *>::clear(&v116);
      if (v40 != v41)
      {
        goto LABEL_147;
      }
    }

    *(*v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = *v23 + 40 * v26;
    LODWORD(__p) = *v42;
    std::list<int>::list(&v116, v42 + 8);
    v119 = *(v42 + 32);
    v43 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    v44 = v43;
    v45 = *v23 + 40 * v26;
    *v45 = *v43;
    if (v45 != v43)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v45 + 8), *(v43 + 16), v43 + 8);
    }

    *(v45 + 32) = *(v44 + 32);
    v46 = *a1;
    v114 = 0;
    (*(*v46 + 136))(v46, v26, v112);
    while (v112[0])
    {
      if ((*(*v112[0] + 24))(v112[0]))
      {
        goto LABEL_139;
      }

      if (v112[0])
      {
        v47 = (*(*v112[0] + 32))(v112[0]);
        goto LABEL_60;
      }

LABEL_59:
      v47 = v112[1] + 56 * v114;
LABEL_60:
      v48 = a1[1];
      for (m = *(v47 + 48); 0xCCCCCCCCCCCCCCCDLL * ((v48[1] - *v48) >> 3) <= m; m = *(v47 + 48))
      {
        v50 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
        std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](v48, v50);
        v51 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
        std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v51);
        LOBYTE(v109) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v109);
        v48 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v52 = a1[11];
          LODWORD(m) = *(v47 + 48);
          if (m < ((a1[12] - v52) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        if (*(v52 + 4 * m) != *(a1 + 28))
        {
          v53 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
          v54 = v53;
          v55 = *a1[1] + 40 * *(v47 + 48);
          *v55 = *v53;
          if (v55 != v53)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v55 + 8), *(v53 + 16), v53 + 8);
          }

          *(v55 + 32) = *(v54 + 32);
          v56 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
          v57 = v56;
          v58 = *v23 + 40 * *(v47 + 48);
          *v58 = *v56;
          if (v58 != v56)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v58 + 8), *(v56 + 16), v56 + 8);
          }

          *(v58 + 32) = *(v57 + 32);
          v59 = *(v47 + 48);
          *(a1[8] + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v59);
          *(a1[11] + 4 * v59) = *(a1 + 28);
          LODWORD(m) = *(v47 + 48);
        }
      }

      v60 = *a1[1];
      v61 = a1[5];
      fst::Times<int,(fst::StringType)1>(&__p, v47 + 8, &v104);
      v62 = NAN;
      if (v119 != -INFINITY)
      {
        v63 = *(v47 + 40);
        v62 = NAN;
        if (v63 != -INFINITY)
        {
          v62 = INFINITY;
          if (v63 != INFINITY && v119 != INFINITY)
          {
            v62 = v119 + v63;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v109, &v104, v62);
      v65 = v60 + 40 * m;
      std::__list_imp<char *>::clear(&v105);
      fst::Plus<int>(v65, &v109, &v120);
      v66 = *(v65 + 32);
      v67 = v111;
      if (v66 != INFINITY)
      {
        if (v111 == INFINITY)
        {
          v67 = *(v65 + 32);
        }

        else if (v66 <= v111)
        {
          v69 = expf(-(v111 - v66));
          v67 = v66 - logf(v69 + 1.0);
        }

        else
        {
          v68 = expf(-(v66 - v111));
          v67 = v67 - logf(v68 + 1.0);
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v120, v67);
      std::__list_imp<char *>::clear(v121);
      v70 = *v65;
      if (*v65)
      {
        v71 = *(v65 + 24) + 1;
      }

      else
      {
        v71 = 0;
      }

      if (v104)
      {
        v72 = v107 + 1;
      }

      else
      {
        v72 = 0;
      }

      if (v71 == v72)
      {
        v73 = *(a1 + 7);
        v74 = (v65 + 16);
        v75 = v106;
        if (v70)
        {
          v76 = v70 == v104;
        }

        else
        {
          v76 = 0;
        }

        v77 = !v76;
        v78 = 1;
        v79 = v77 ^ 1;
        while (1)
        {
          v80 = *v74;
          if ((v78 & 1) != 0 && !v79)
          {
            break;
          }

          if (v80 == v65 + 8)
          {
            goto LABEL_108;
          }

          if (*(v80 + 16) != *(v75 + 16))
          {
            goto LABEL_104;
          }

          v78 = 0;
          v74 = (v80 + 8);
          v75 = *(v75 + 8);
        }

        if (v70)
        {
          goto LABEL_104;
        }

LABEL_108:
        v83 = *(v65 + 32);
        v84 = v108;
        v85 = v73 + v108;
        v86 = v73 + v83;
        std::__list_imp<char *>::clear(&v105);
        if (v84 <= v86 && v83 <= v85)
        {
          goto LABEL_135;
        }
      }

      else
      {
LABEL_104:
        std::__list_imp<char *>::clear(&v105);
      }

      fst::Plus<int>(v65, &v109, &v120);
      v81 = *(v65 + 32);
      v82 = v111;
      if (v81 != INFINITY)
      {
        if (v111 == INFINITY)
        {
          v82 = *(v65 + 32);
        }

        else if (v81 <= v111)
        {
          v89 = expf(-(v111 - v81));
          v82 = v81 - logf(v89 + 1.0);
        }

        else
        {
          v88 = expf(-(v81 - v111));
          v82 = v82 - logf(v88 + 1.0);
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v120, v82);
      std::__list_imp<char *>::clear(v121);
      *v65 = v104;
      if (v65 != &v104)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v65 + 8), v106, &v105);
      }

      v90 = v61 + 40 * m;
      *(v65 + 32) = v108;
      std::__list_imp<char *>::clear(&v105);
      fst::Plus<int>(v90, &v109, &v120);
      v91 = *(v90 + 32);
      v92 = v111;
      if (v91 != INFINITY)
      {
        if (v111 == INFINITY)
        {
          v92 = *(v90 + 32);
        }

        else if (v91 <= v111)
        {
          v94 = expf(-(v111 - v91));
          v92 = v91 - logf(v94 + 1.0);
        }

        else
        {
          v93 = expf(-(v91 - v111));
          v92 = v92 - logf(v93 + 1.0);
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v120, v92);
      std::__list_imp<char *>::clear(v121);
      *v90 = v104;
      if (v90 != &v104)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v90 + 8), v106, &v105);
      }

      *(v90 + 32) = v108;
      std::__list_imp<char *>::clear(&v105);
      if (*v65 == -2 && !*(v65 + 24) || *(v65 + 32) == -INFINITY || *v90 == -2 && !*(v90 + 24) || *(v90 + 32) == -INFINITY)
      {
        *v103 = 1;
        std::__list_imp<char *>::clear(v110);
        v96 = 0;
        goto LABEL_140;
      }

      v95 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v47 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 48)))
      {
        (*(v95 + 40))();
      }

      else
      {
        (*(v95 + 24))();
        *(*v25 + ((*(v47 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 48);
      }

LABEL_135:
      std::__list_imp<char *>::clear(v110);
      if (v112[0])
      {
        (*(*v112[0] + 40))(v112[0]);
      }

      else
      {
        ++v114;
      }
    }

    if (v114 < v112[2])
    {
      goto LABEL_59;
    }

LABEL_139:
    v96 = 1;
LABEL_140:
    if (v112[0])
    {
      (*(*v112[0] + 8))(v112[0]);
    }

    else if (v113)
    {
      --*v113;
    }

    std::__list_imp<char *>::clear(&v116);
  }

  while ((v96 & 1) != 0);
}

void sub_41278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  fst::LogMessage::~LogMessage(&a22);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::resize(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__append(result, v7, a3);
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

uint64_t fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::NoWeight(void)::no_weight;
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1> const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    std::list<int>::list((v4 + 8), (a2 + 2));
    *(v4 + 32) = a2[8];
    result = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1> const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(&v14);
  return v13;
}

void sub_416A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_41744(_Unwind_Exception *exception_object)
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

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__append(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        result = std::list<int>::list((v7 + 8), (a3 + 2));
        *(v7 + 32) = a3[8];
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(result, v11);
    }

    v18 = 0;
    v19 = 40 * v8;
    v20 = 40 * v8;
    std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = v19 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_418EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__construct_at_end(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      result = std::list<int>::list((v4 + 8), (a3 + 2));
      *(v4 + 32) = a3[8];
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t *std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__append(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        result = std::list<int>::list((v7 + 8), (a3 + 2));
        *(v7 + 32) = a3[8];
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(result, v11);
    }

    v18 = 0;
    v19 = 40 * v8;
    v20 = 40 * v8;
    std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = v19 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_41CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__construct_at_end(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      result = std::list<int>::list((v4 + 8), (a3 + 2));
      *(v4 + 32) = a3[8];
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(&v14);
  return v13;
}

void sub_420B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__list_imp<char *>::clear(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~ImplToFst(void *a1)
{
  *a1 = off_272BA0;
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

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ImplToFst(a1);

  operator delete();
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Init(uint64_t a1)
{
  boost::filesystem::path::path(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v2);
  v3 = (*(**(a1 + 136) + 120))(*(a1 + 136));
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v3);
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    result = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    *(a1 + 8) = result & 0x3FFCFFFF0007 | *(a1 + 8) & 4 | 0x200000000;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_426F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ArcMapFstImpl(a1);

  operator delete();
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_272FA8;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_272F70;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = off_272FA8;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_272F70;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  *a1 = off_272FA8;
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

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~CacheBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>>::~FstImpl(a1);

  operator delete();
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::VectorCacheStore(uint64_t a1, _BYTE *a2)
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

void sub_42B54(_Unwind_Exception *a1)
{
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v1 + 80));
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v1 + 72));
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(v2);
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v1 + 56));
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Destroy(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
}

uint64_t fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Destroy(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 24);
    std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v3 + 48));
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>(*a2);
    *(v3 + 64) = *(result + 56);
    *(result + 56) = v3;
  }

  return result;
}

void std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::deallocate(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>(*a1);
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
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x11uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void std::vector<fst::MemoryPoolBase *>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::MemoryPoolBase *>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<fst::MemoryPoolBase *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_212100)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_212100)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_272FE0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_272FE0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273020;
  a1[1] = 24 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_43240(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273020;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x21uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_273060;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_273060;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2730A0;
  a1[1] = 40 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_435B0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2730A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x41uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_2730E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_2730E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273120;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_43920(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273120;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x81uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_273160;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_273160;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2731A0;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_43C90(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2731A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x101uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_2731E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_2731E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273220;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_44000(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273220;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x201uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_273260;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_273260;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2732A0;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_44370(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2732A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x401uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_2732E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_2732E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273320;
  a1[1] = 1032 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_446E0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273320;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x41uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_273360;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_273360;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2733A0;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_44A48(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2733A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x81uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_2733E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_2733E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273420;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_44DA8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273420;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x101uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_273460;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_273460;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2734A0;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_45108(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2734A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x201uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_2734E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_2734E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273520;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_45468(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273520;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x401uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_273560;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_273560;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2735A0;
  a1[1] = 1032 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_457C8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2735A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x4000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x801uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_2735E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_2735E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273620;
  a1[1] = 2056 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_45B30(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273620;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x8000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x1001uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_273660;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_273660;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2736A0;
  a1[1] = 4104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_45EA8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2736A0;
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

void *std::__list_imp<int,fst::PoolAllocator<int>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != v1)
    {
      v5 = v2[1];
      result = std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100](v1, v2);
      v2 = v5;
    }
  }

  return result;
}

uint64_t std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(*(a1 + 24));
  if (a2)
  {
    *(a2 + 24) = *(result + 56);
    *(result + 56) = a2;
  }

  return result;
}

void fst::PoolAllocator<std::__list_node<int,void *>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[6] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[3] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[12] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[24] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[48] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[96] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[192] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x19uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_2736E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_2736E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273720;
  a1[1] = 32 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_463C8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273720;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x31uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_273760;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_273760;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2737A0;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_46728(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2737A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x61uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_2737E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_2737E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273820;
  a1[1] = 104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_46A90(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273820;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0xC1uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_273860;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_273860;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2738A0;
  a1[1] = 200 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_46E00(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2738A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x181uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_2738E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_2738E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273920;
  a1[1] = 392 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_47170(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273920;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x301uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_273960;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_273960;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2739A0;
  a1[1] = 776 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_474E4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2739A0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x601uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_2739E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_2739E0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273A20;
  a1[1] = 1544 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_47858(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273A20;
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

fst::MemoryPoolCollection **fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator(fst::MemoryPoolCollection **a1)
{
  v2 = *a1;
  v3 = *(v2 + 1) - 1;
  *(v2 + 1) = v3;
  if (!v3)
  {
    fst::MemoryPoolCollection::~MemoryPoolCollection(v2);
    operator delete();
  }

  return a1;
}

void fst::MemoryPoolCollection::~MemoryPoolCollection(fst::MemoryPoolCollection *this)
{
  v4 = this + 16;
  v2 = *(this + 2);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = *(this + 2);
        v3 = *(this + 3);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~CacheBaseImpl(void *a1)
{
  *a1 = off_272F70;
  v2 = a1[15];
  if (v2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~VectorCacheStore(v2);
    operator delete();
  }

  v3 = a1[9];
  if (v3)
  {
    operator delete(v3);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>>::~FstImpl(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~VectorCacheStore(uint64_t a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Clear(a1);
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 80));
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 72));
  std::__list_imp<int,fst::PoolAllocator<int>>::clear((a1 + 32));
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 56));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = off_272EE0;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1 && *(a1 + 144))
  {
    operator delete();
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

float fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasFinal(a1, a2))
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 156);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 160) == a2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = INFINITY;
      }

      goto LABEL_19;
    }

    v7 = *(a1 + 136);
    v6 = *(a1 + 160);
LABEL_10:
    v9 = v6 != -1 && v6 <= a2;
    if ((*(*v7 + 32))(v7, (a2 - v9)) == INFINITY)
    {
      v5 = INFINITY;
    }

    else
    {
      v5 = 0.0;
    }

    goto LABEL_19;
  }

  v6 = *(a1 + 160);
  v5 = 0.0;
  if (v6 != a2)
  {
    v7 = *(a1 + 136);
    goto LABEL_10;
  }

LABEL_19:
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  *MutableState = v5;
  *(MutableState + 14) |= 9u;
LABEL_20:
  v11 = *(a1 + 120);
  if (*(v11 + 92) == a2)
  {
    v12 = v11 + 96;
  }

  else
  {
    v12 = *(v11 + 8) + 8 * a2 + 8;
  }

  return **v12;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasFinal(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 56) = v8 | 8;
  return 1;
}

void *fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::GetMutableState(a1, a2);
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
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::GetMutableState(a1, 0);
      *(a1 + 96) = MutableState;
      *(MutableState + 14) |= 4u;
      std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::reserve(MutableState + 3, 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = 2139095040;
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

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GC(uint64_t a1, void *a2, char a3, float a4)
{
  if (*(a1 + 120) == 1)
  {
    if (FLAGS_v >= 2)
    {
      boost::filesystem::path::path(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v41, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "), free recently cached = ", 26);
      v12 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", cache size = ", 15);
      v13 = *(a1 + 128);
      v14 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache frac = ", 15);
      v15 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", cache limit = ", 16);
      v16 = *(a1 + 112);
      v17 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
      fst::LogMessage::~LogMessage(v41);
      if (v46 < 0)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::GetMutableState(a1, v21);
      v23 = *(a1 + 128);
      if (v23 > v18 && !*(MutableState + 15))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v24 = *(MutableState + 14);
LABEL_19:
            if ((v24 & 4) != 0)
            {
              v25 = MutableState[4] - MutableState[3] + 64;
              FstCheck(v25 <= v23, "(size) <= (cache_size_)", "../subproject/libquasar/libkaldi/tools/openfst/src/include/fst/cache.h");
              *(a1 + 128) -= v25;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::Delete(a1);
            v19 = *(a1 + 64);
            continue;
          }
        }

        else
        {
          v24 = *(MutableState + 14);
          if ((v24 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 14) &= ~8u;
      v19 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v19;
    }

    if ((a3 & 1) != 0 || *(a1 + 128) <= v18)
    {
      v26 = *(a1 + 128);
      if (v18)
      {
        if (v26 > v18)
        {
          v27 = *(a1 + 112);
          do
          {
            v27 *= 2;
            v28 = v26 > 2 * v18;
            v18 *= 2;
          }

          while (v28);
          *(a1 + 112) = v27;
        }
      }

      else if (v26)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          boost::filesystem::path::path(__p, "FATAL");
        }

        else
        {
          boost::filesystem::path::path(__p, "ERROR");
        }

        v29 = fst::LogMessage::LogMessage(&v44, __p);
        v30 = fst::cerr(v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v44);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      boost::filesystem::path::path(v41, "INFO");
      v31 = fst::LogMessage::LogMessage(&v43, v41);
      v32 = fst::cerr(v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore: Exit GC: object = ", 32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "(", 1);
      v34 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "), free recently cached = ", 26);
      v35 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", cache size = ", 15);
      v36 = *(a1 + 128);
      v37 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", cache frac = ", 15);
      v38 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", cache limit = ", 16);
      v39 = *(a1 + 112);
      v40 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "\n", 1);
      fst::LogMessage::~LogMessage(&v43);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }
  }
}

void sub_48364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v13 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v12 = 0;
    std::vector<fst::MemoryPoolBase *>::resize(v4, a2 + 1, &v12);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::allocate((a1 + 72), 1uLL);
  *v7 = 2139095040;
  *(v7 + 1) = 0u;
  *(v7 + 3) = 0u;
  v7[5] = 0;
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

void *fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
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
            std::allocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::Allocate((v2 + 8), 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  *(v2 + 56) = v4;
  return result;
}

void std::allocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 72 * a2;
  v4 = a1[1];
  if (288 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 136 * a2;
  v4 = a1[1];
  if (544 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 264 * a2;
  v4 = a1[1];
  if (1056 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 520 * a2;
  v4 = a1[1];
  if (2080 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 1032 * a2;
  v4 = a1[1];
  if (4128 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 2056 * a2;
  v4 = a1[1];
  if (8224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 4104 * a2;
  v4 = a1[1];
  if (16416 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

void *std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = *(a1 + 24);
  ++*(v9 + 1);
  std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::__allocation_guard[abi:ne200100]<fst::PoolAllocator<std::__list_node<int,void *>>>(v10, &v9, 1uLL);
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator(&v9);
  v7 = v11;
  *v11 = a2;
  v7[1] = a3;
  *(v7 + 4) = *a4;
  v11 = 0;
  std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::~__allocation_guard[abi:ne200100](v10);
  return v7;
}

uint64_t *std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::__allocation_guard[abi:ne200100]<fst::PoolAllocator<std::__list_node<int,void *>>>(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  *(v4 + 8) = *(*a2 + 8) + 1;
  *a1 = v4;
  a1[1] = a3;
  a1[2] = fst::PoolAllocator<std::__list_node<int,void *>>::allocate(a1, a3);
  return a1;
}

void *fst::PoolAllocator<std::__list_node<int,void *>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::Allocate((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
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
            std::allocator<std::__list_node<int,void *>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::Allocate((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 32 * a2;
  v4 = a1[1];
  if (v4 < a2 << 7)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 104 * a2;
  v4 = a1[1];
  if (416 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 200 * a2;
  v4 = a1[1];
  if (800 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 392 * a2;
  v4 = a1[1];
  if (1568 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 776 * a2;
  v4 = a1[1];
  if (3104 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 1544 * a2;
  v4 = a1[1];
  if (6176 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

fst::MemoryPoolCollection **std::__allocation_guard<fst::PoolAllocator<std::__list_node<int,void *>>>::~__allocation_guard[abi:ne200100](uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    fst::PoolAllocator<std::__list_node<int,void *>>::deallocate(a1, v2, a1[1]);
  }

  return fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator(a1);
}

void *std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v3 = result;
    v4 = result[1] - *result;
    v12[4] = result + 3;
    v5 = fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::allocate(result + 3, a2);
    v6 = v5 + v4;
    v7 = &v5[2 * a2];
    v8 = v3[1] - *v3;
    v9 = &v6[-v8];
    memcpy(&v6[-v8], *v3, v8);
    v10 = *v3;
    *v3 = v9;
    v3[1] = v6;
    v11 = v3[2];
    v3[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return std::__split_buffer<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>> &>::~__split_buffer(v12);
  }

  return result;
}

void *fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
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
            std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 24 * a2;
  v4 = a1[1];
  if (96 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 40 * a2;
  v4 = a1[1];
  if (160 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t std::__split_buffer<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::deallocate(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

void FstCheck(char a1, const char *a2, const char *a3)
{
  if ((a1 & 1) == 0)
  {
    boost::filesystem::path::path(__p, "FATAL");
    v5 = fst::LogMessage::LogMessage(&v15, __p);
    v6 = fst::cerr(v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: ", 15);
    v8 = strlen(a2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " file: ", 8);
    v11 = strlen(a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a3, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " line: ", 7);
    std::ostream::operator<<();
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_49DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::Delete(void *a1)
{
  v1 = *(a1[8] + 16);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Delete(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Delete(void *a1)
{
  fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::Destroy(*(a1[1] + 8 * *(a1[8] + 16)), a1 + 9);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 56) = v8 | 8;
  return 1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v30 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v27);
  while (1)
  {
    if (!v27)
    {
      if (v30 >= v28)
      {
        goto LABEL_33;
      }

      goto LABEL_17;
    }

    if ((*(*v27 + 24))(v27))
    {
      break;
    }

    if (v27)
    {
      v9 = (*(*v27 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = *(&v27 + 1) + 16 * v30;
LABEL_18:
    v10 = *v9;
    v11 = *(v9 + 8);
    LODWORD(v12) = *(v9 + 12);
    v13 = *(a1 + 160);
    if (v13 != -1 && v13 <= v12)
    {
      v12 = (v12 + 1);
    }

    else
    {
      v12 = v12;
    }

    if (v12 >= *(a1 + 164))
    {
      *(a1 + 164) = v12 + 1;
    }

    v32 = v11;
    v31 = 2139095040;
    v15 = v11 == INFINITY;
    v16 = INFINITY;
    if (!v15)
    {
      v16 = 0.0;
    }

    *&v26 = v10;
    *(&v26 + 1) = LODWORD(v16) | (v12 << 32);
    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::PushArc(a1, a2, &v26);
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    else
    {
      ++v30;
    }
  }

  if (v27)
  {
    (*(*v27 + 8))();
    goto LABEL_35;
  }

LABEL_33:
  if (v29)
  {
    --*v29;
  }

LABEL_35:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v27) = fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Final(a1, a2), LODWORD(v26) = 2139095040, *&v27 == INFINITY))
  {
    v17 = *(a1 + 156);
    if (v17 == 2)
    {
      v21 = *(a1 + 160);
      v23 = v21 != -1 && v21 <= a2;
      LODWORD(v27) = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v23));
      LODWORD(v26) = 2139095040;
      v24 = INFINITY;
      if (*&v27 != INFINITY)
      {
        v24 = 0.0;
      }

      *&v27 = v24;
      LODWORD(v26) = 2139095040;
      if (v24 != INFINITY)
      {
        v25 = *(a1 + 160);
        *&v27 = 0;
        *(&v27 + 1) = __PAIR64__(v25, LODWORD(v24));
        fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::PushArc(a1, a2, &v27);
      }
    }

    else if (v17 == 1)
    {
      v18 = *(a1 + 160);
      v20 = v18 != -1 && v18 <= a2;
      LODWORD(v27) = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
      LODWORD(v26) = 2139095040;
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetArcs(a1, a2);
}

void sub_4A2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = MutableState[3];
  v6 = MutableState[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 68);
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
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetExpandedState(a1, a2);
  *(MutableState + 14) |= 0xAu;
  return result;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::PushArc(uint64_t a1, int a2, _OWORD *a3)
{
  result = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  v5 = result;
  v7 = result[4];
  v6 = result[5];
  if (v7 >= v6)
  {
    v9 = result[3];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v14 = result + 6;
    v23[4] = v5 + 6;
    if (v13)
    {
      v15 = fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::allocate(v14, v13);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[2 * v10];
    v17 = &v15[2 * v13];
    *v16 = *a3;
    v8 = v16 + 1;
    v18 = v5[3];
    v19 = v5[4] - v18;
    v20 = v16 - v19;
    memcpy(v16 - v19, v18, v19);
    v21 = v5[3];
    v5[3] = v20;
    v5[4] = v8;
    v22 = v5[5];
    v5[5] = v17;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>> &>::~__split_buffer(v23);
  }

  else
  {
    *v7 = *a3;
    v8 = v7 + 1;
  }

  v5[4] = v8;
  return result;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetArcs(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetExpandedState(uint64_t result, int a2)
{
  v2 = result;
  if (*(result + 100) < a2)
  {
    *(result + 100) = a2;
  }

  v3 = *(result + 96);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      *(result + 96) = a2 + 1;
    }

    if ((*(result + 104) & 1) != 0 || !*(result + 112))
    {
      v4 = a2;
      if (*(result + 80) <= a2)
      {
        do
        {
          v5 = 0;
          result = std::vector<BOOL>::push_back(v2 + 72, &v5);
        }

        while (*(v2 + 80) <= v4);
      }

      *(*(v2 + 72) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
    }
  }

  return result;
}

void *fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetArcs(void *result)
{
  v1 = result[3];
  v2 = result[4] - v1;
  if (v2)
  {
    v3 = v2 >> 4;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      if (!*(v4 - 1))
      {
        ++result[1];
      }

      if (!*v4)
      {
        ++result[2];
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
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

unint64_t fst::TestProperties<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::LogWeightTpl<float>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ArcTpl<fst::LogWeightTpl<float>>>(a1, a2, a3, 1);
  }
}

void sub_4A834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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
      fst::DfsVisit<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LogWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LogWeightTpl<float>>>>(a1, &v43);
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