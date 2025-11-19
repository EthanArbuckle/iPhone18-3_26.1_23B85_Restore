void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          v18 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            v12 = *(a1 + v10);
            *v11 = 0;
            *(v11 + 8) = 0;
            v13 = *(a1 + v10 + 24);
            *(v11 + 16) = v12;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (!v10)
            {
              break;
            }

            v14 = (*a3)(&v18, a1 + v10 - 16);
            v10 -= 16;
            if ((v14 & 1) == 0)
            {
              v15 = a1 + v10 + 16;
              goto LABEL_12;
            }
          }

          v15 = a1;
LABEL_12:
          v16 = v18;
          v18 = 0uLL;
          v17 = *(v15 + 8);
          *v15 = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }
        }

        v5 = (v8 + 16);
        v7 += 16;
      }

      while (v8 + 16 != a2);
    }
  }
}

void sub_1C65D750C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v7 = a1 - 1;
      do
      {
        v8 = v4;
        v4 = v5;
        if ((*a3)(v5, v8))
        {
          v15 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = v7;
          do
          {
            v10 = v9[1];
            *(v9 + 2) = 0;
            *(v9 + 3) = 0;
            v11 = *(v9 + 5);
            v9[2] = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = (*a3)(&v15, v9--);
          }

          while ((v12 & 1) != 0);
          v13 = v15;
          v15 = 0uLL;
          v14 = *(v9 + 5);
          v9[2] = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*(&v15 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
          }
        }

        v5 = v4 + 1;
        ++v7;
      }

      while (v4 + 1 != a2);
    }
  }
}

void sub_1C65D7608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Parse> *,BOOL (*&)(std::shared_ptr<QP::Parse>&,std::shared_ptr<QP::Parse>&)>(__int128 *a1, void *a2, uint64_t (**a3)(__int128 *, void *))
{
  v4 = a2;
  v17 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if ((*a3)(&v17, a2 - 2))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = v6[1];
    v6[1] = v4[1];
    v4[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v11 = (v6 - 2);
  if (v6 - 2 != a1)
  {
    v12 = *v11;
    *v11 = 0;
    *(v6 - 1) = 0;
    v13 = *(a1 + 1);
    *a1 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = v17;
  v17 = 0uLL;
  v15 = *(v6 - 1);
  *(v6 - 1) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  return v6;
}

void sub_1C65D7788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Parse> *,BOOL (*&)(std::shared_ptr<QP::Parse>&,std::shared_ptr<QP::Parse>&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v19 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  do
  {
    v7 = (*a3)(&a1[++v6], &v19);
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v19));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      v12 = *(v9 + 1);
      *(v9 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v19) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v19));
    }

    while (v9 < v10);
  }

  v13 = v9 - 1;
  if (v9 - 1 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    *(v9 - 1) = 0;
    v15 = *(a1 + 1);
    *a1 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v16 = v19;
  v19 = 0uLL;
  v17 = *(v9 - 1);
  *(v9 - 1) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  return v9 - 1;
}

void sub_1C65D7924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (*a3)(a1 + 2, a1);
      v15 = (*a3)(a2 - 2, a1 + 2);
      if (v14)
      {
        v17 = a1 + 1;
        v16 = *a1;
        if (v15)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v30 = *(a1 + 1);
          a1[3] = a1[1];
          v17 = a1 + 3;
          a1[2] = v16;
          *a1 = v30;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v16 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v16;
        v25 = a2 - 1;
      }

      else
      {
        if (!v15)
        {
          return 1;
        }

        v23 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v25 = a1 + 3;
        v24 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v24;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        v17 = a1 + 1;
      }

      v31 = *v17;
      *v17 = *v25;
      *v25 = v31;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)(a2 - 2, a1 + 6))
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v11 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v11;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v12 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v12;
              if ((*a3)(a1 + 2, a1))
              {
                v13 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 4;
  v19 = (*a3)(a1 + 2, a1);
  v20 = (*a3)(a1 + 4, a1 + 2);
  if (v19)
  {
    v22 = a1 + 1;
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[4];
    }

    else
    {
      v32 = *(a1 + 1);
      a1[3] = a1[1];
      v22 = a1 + 3;
      a1[2] = v21;
      *a1 = v32;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v21 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v21;
    v28 = a1 + 5;
    goto LABEL_34;
  }

  if (v20)
  {
    v27 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 2);
    *(a1 + 2) = v27;
    if ((*a3)(a1 + 2, a1))
    {
      v28 = a1 + 3;
      v29 = *a1;
      *a1 = a1[2];
      a1[2] = v29;
      v22 = a1 + 1;
LABEL_34:
      v33 = *v22;
      *v22 = *v28;
      *v28 = v33;
    }
  }

LABEL_35:
  v34 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ((*a3)(v34, v18))
    {
      v46 = *v34;
      *v34 = 0;
      v34[1] = 0;
      v37 = v35;
      while (1)
      {
        v38 = a1 + v37;
        v39 = *(a1 + v37 + 32);
        *(v38 + 4) = 0;
        *(v38 + 5) = 0;
        v40 = *(a1 + v37 + 56);
        *(v38 + 3) = v39;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v37 == -32)
        {
          break;
        }

        v41 = (*a3)(&v46, (a1 + v37 + 16));
        v37 -= 16;
        if ((v41 & 1) == 0)
        {
          v42 = a1 + v37 + 48;
          goto LABEL_45;
        }
      }

      v42 = a1;
LABEL_45:
      v43 = v46;
      v46 = 0uLL;
      v44 = *(v42 + 8);
      *v42 = v43;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (*(&v46 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
      }

      if (++v36 == 8)
      {
        return v34 + 2 == a2;
      }
    }

    v18 = v34;
    v35 += 16;
    v34 += 2;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

void sub_1C65D7D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*,std::shared_ptr<QP::Parse>*>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int (**a4)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(uint64_t a1, unsigned int (**a2)(__int128 *, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 1)))
      {
        ++v12;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v20 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        do
        {
          v14 = v12;
          v15 = *v12;
          *v12 = 0;
          *(v12 + 1) = 0;
          v16 = *(v5 + 1);
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)((a1 + 16 * v17), (v12 + 1)))
          {
            ++v12;
          }

          else
          {
            v11 = v17;
          }

          v5 = v14;
        }

        while (!(*a2)(v12, &v20));
        v18 = v20;
        v20 = 0uLL;
        v19 = *(v14 + 1);
        *v14 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }
      }
    }
  }
}

void sub_1C65D8008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = *(v9 + 1);
      *v10 = v8;
      *(v10 + 1) = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = *(v9 + 1);
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 1);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_1C65D8118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8, (a2 - 16)))
    {
      v15 = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v12 = *(v9 + 1);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0uLL;
      v14 = *(v10 + 1);
      *v10 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (*(&v15 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
        }
      }
    }
  }
}

void sub_1C65D8208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___ZL14qpparserLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "Parser");
  qpparserLogger(void)::log = result;
  return result;
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,unsigned short,unsigned short,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, 0);
  return a1;
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFString const*> &,long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),std::allocator<QP::Parse>,0>(void *a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),QP::Parse*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),QP::Parse*>(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  memset(v10, 0, sizeof(v10));
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v10, *a5, a5[1], (a5[1] - *a5) >> 4);
  QP::Parse::Parse(a1, v6, v7, v8, v10, 0, 0);
  v11 = v10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v11);
  return a1;
}

void sub_1C65D84E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFString const*> &,int,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),std::allocator<QP::Parse>,0>(void *a1, const void **a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,int,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),QP::Parse*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,int,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),QP::Parse*>(uint64_t a1, const void **a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  memset(v10, 0, sizeof(v10));
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v10, *a5, a5[1], (a5[1] - *a5) >> 4);
  QP::Parse::Parse(a1, v6, v7, v8, v10, 0, 0);
  v11 = v10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v11);
  return a1;
}

void sub_1C65D8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange,CFRange&,int,int,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, 0);
  return a1;
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),BOOL,std::allocator<QP::Parse>,0>(void *a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, char *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),BOOL,QP::Parse*>((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),BOOL,QP::Parse*>(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, char *a7)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  memset(v13, 0, sizeof(v13));
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v13, *a5, a5[1], (a5[1] - *a5) >> 4);
  QP::Parse::Parse(a1, v9, v10, v11, v13, 0, *a7);
  v14 = v13;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
  return a1;
}

void sub_1C65D8944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFString const*> &,int,int,std::vector<std::shared_ptr<QP::ParseAttribute>>,decltype(nullptr),std::allocator<QP::Parse>,0>(void *a1, const void **a2, int *a3, int *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,int,int,std::vector<std::shared_ptr<QP::ParseAttribute>>,decltype(nullptr),QP::Parse*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,int,int,std::vector<std::shared_ptr<QP::ParseAttribute>>,decltype(nullptr),QP::Parse*>(uint64_t a1, const void **a2, int *a3, int *a4, __int128 *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v10 = *a5;
  v11 = *(a5 + 2);
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  QP::Parse::Parse(a1, v6, v7, v8, &v10, 0, 0);
  v12 = &v10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v12);
  return a1;
}

void sub_1C65D8AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<QP::Completion>::__shared_ptr_emplace[abi:ne200100]<__CFString const*&,__CFString const*&,__CFString const*&,__CFString const*&,__CFString const*&,__CFString const*&,__CFString const*&,__CFString const*&,QPSymbolFlag &,std::allocator<QP::Completion>,0>(void *a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6, CFTypeRef *a7, CFTypeRef *a8, CFTypeRef *a9, __int16 *a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8BB8;
  QP::Completion::Completion((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  return a1;
}

void std::__shared_ptr_emplace<QP::Completion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t QP::Completion::Completion(uint64_t a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4, CFTypeRef a5, CFTypeRef a6, CFTypeRef a7, CFTypeRef a8, CFTypeRef cfa, __int16 a10)
{
  *(a1 + 16) = 0u;
  v17 = (a1 + 16);
  *(a1 + 32) = 0u;
  v18 = (a1 + 32);
  *(a1 + 48) = 0u;
  v19 = (a1 + 48);
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 72) = a10;
  if (cf)
  {
    v20 = CFRetain(cf);
    nlp::CFScopedPtr<__CFString const*>::reset(a1, v20);
  }

  if (a3)
  {
    v21 = CFRetain(a3);
    nlp::CFScopedPtr<__CFString const*>::reset((a1 + 8), v21);
  }

  if (a4)
  {
    v22 = CFRetain(a4);
    nlp::CFScopedPtr<__CFString const*>::reset(v17, v22);
  }

  if (a5)
  {
    v23 = CFRetain(a5);
    nlp::CFScopedPtr<__CFString const*>::reset((a1 + 24), v23);
  }

  if (a6)
  {
    v24 = CFRetain(a6);
    nlp::CFScopedPtr<__CFString const*>::reset(v18, v24);
  }

  if (a7)
  {
    v25 = CFRetain(a7);
    nlp::CFScopedPtr<__CFString const*>::reset((a1 + 40), v25);
  }

  if (a8)
  {
    v26 = CFRetain(a8);
    nlp::CFScopedPtr<__CFString const*>::reset(v19, v26);
  }

  if (cfa)
  {
    v27 = CFRetain(cfa);
    nlp::CFScopedPtr<__CFString const*>::reset((a1 + 56), v27);
  }

  return a1;
}

void sub_1C65D8DFC(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v1 + 8, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1 + 7, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v4, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1 + 5, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1 + 3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1 + 1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

void QP::Completion::~Completion(const void **this)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 6, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 5, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this, 0);
}

QP::ParserConfiguration *QP::ParserConfiguration::ParserConfiguration(QP::ParserConfiguration *this, const __CFDictionary *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_1F45E8C08;
  *(this + 12) = 256;
  *(this + 26) = 0;
  v6 = this + 26;
  *(this + 15) = 0;
  *(this + 8) = 65537;
  *(this + 37) = 0;
  v7 = this + 37;
  *(this + 11) = 0;
  valuePtr = this + 44;
  *(this + 6) = -1;
  *(this + 56) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 63) = 0;
  *(this + 73) = 256;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  v71 = (this + 96);
  *(this + 7) = 0u;
  v73 = (this + 112);
  *(this + 11) = 0u;
  v70 = (this + 176);
  *(this + 12) = 0u;
  v72 = (this + 192);
  *(this + 14) = 0u;
  v67 = (this + 224);
  *(this + 15) = 0u;
  v69 = (this + 240);
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 13) = 0u;
  *(this + 32) = 0;
  *(this + 33) = this + 264;
  *(this + 34) = this + 264;
  *(this + 35) = 0;
  QP::ParserConfiguration::updateCalendar(this);
  if (a2)
  {
    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionLocaleKey))
    {
      Value = CFDictionaryGetValue(a2, kQPQueryParserOptionLocaleKey);
      if (CFDictionaryContainsKey(a2, kQPQueryParserOptionPreferredLanguagesKey))
      {
        v9 = CFDictionaryGetValue(a2, kQPQueryParserOptionPreferredLanguagesKey);
        QP::ParserConfiguration::setLocale(this, Value, v9);
      }

      else
      {
        v10 = copyCurrentPreferredLanguages();
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v10);
        v12 = normalizedLanguageForLocale(Value);
        if (v12)
        {
          v74.length = CFArrayGetCount(MutableCopy);
          v74.location = 0;
          if (!CFArrayContainsValue(MutableCopy, v74, v12))
          {
            CFArrayAppendValue(MutableCopy, v12);
          }
        }

        QP::ParserConfiguration::setLocale(this, Value, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      *(this + 33) = 0;
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionReferenceCalendarRegionKey))
    {
      v13 = CFDictionaryGetValue(a2, kQPQueryParserOptionReferenceCalendarRegionKey);
      QP::ParserConfiguration::setCalendarRegion(this, v13);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionReferenceTimezoneKey))
    {
      v14 = CFDictionaryGetValue(a2, kQPQueryParserOptionReferenceTimezoneKey);
      QP::ParserConfiguration::setCustomTimezone(this, v14);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionReferenceCalendarKey))
    {
      v15 = CFDictionaryGetValue(a2, kQPQueryParserOptionReferenceCalendarKey);
      QP::ParserConfiguration::setCustomCalendar(this, v15);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionReferenceDateKey))
    {
      v16 = CFDictionaryGetValue(a2, kQPQueryParserOptionReferenceDateKey);
      QP::ParserConfiguration::setDate(this, v16);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionContextIdentifierKey))
    {
      v17 = CFDictionaryGetValue(a2, kQPQueryParserOptionContextIdentifierKey);
      QP::ParserConfiguration::setAppContext(this, v17);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionBundleIdentifierKey))
    {
      v18 = CFDictionaryGetValue(a2, kQPQueryParserOptionBundleIdentifierKey);
      v19 = CFRetain(v18);
      nlp::CFScopedPtr<__CFString const*>::reset(v72, v19);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionInternalBundleIdentifierKey))
    {
      v20 = CFDictionaryGetValue(a2, kQPQueryParserOptionInternalBundleIdentifierKey);
      v21 = CFRetain(v20);
      nlp::CFScopedPtr<__CFString const*>::reset(this + 25, v21);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionFormatKey))
    {
      v22 = CFDictionaryGetValue(a2, kQPQueryParserOptionFormatKey);
      CFNumberGetValue(v22, kCFNumberCFIndexType, v5);
    }

    v23 = CFDictionaryContainsKey(a2, kQPQueryParserOptionIncludeRankCategoriesKey);
    v24 = MEMORY[0x1E695E4D0];
    if (v23)
    {
      *(this + 21) = CFDictionaryGetValue(a2, kQPQueryParserOptionIncludeRankCategoriesKey) == *v24;
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionIgnoreAttributedParsesKey))
    {
      *(this + 22) = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionIgnoreAttributedParsesKey);
    }

    if (CFDictionaryContainsKey(a2, @"usePartOfSpeech"))
    {
      *(this + 30) = *v24 == CFDictionaryGetValue(a2, @"usePartOfSpeech");
    }

    if (CFDictionaryContainsKey(a2, @"waitForLoad"))
    {
      *(this + 35) = CFDictionaryGetValue(a2, @"waitForLoad") == *v24;
    }

    if (CFDictionaryContainsKey(a2, @"waitForGetUnderstanding"))
    {
      *(this + 36) = CFDictionaryGetValue(a2, @"waitForGetUnderstanding") == *v24;
    }

    if (CFDictionaryContainsKey(a2, @"forTesting"))
    {
      v25 = CFDictionaryGetValue(a2, @"forTesting") == *v24;
      *v7 = v25;
      if (v25)
      {
        if (CFDictionaryContainsKey(a2, @"meContent"))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v59 = CFDictionaryGetValue(a2, @"meContent");
            CFDictionarySetValue(Mutable, @"meContent", v59);
            if (CFDictionaryGetCount(Mutable))
            {
              v60 = CFRetain(Mutable);
              nlp::CFScopedPtr<__CFDictionary const*>::reset(v67, v60);
            }

            CFRelease(Mutable);
          }
        }
      }
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionIgnoreFutureDatesKey))
    {
      *(this + 23) = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionIgnoreFutureDatesKey);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionIgnorePastDatesKey))
    {
      *(this + 24) = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionIgnorePastDatesKey);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionIgnoreRecurringDatesKey))
    {
      *(this + 25) = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionIgnoreRecurringDatesKey);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionResolveDatesInFutureKey))
    {
      *v6 = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionResolveDatesInFutureKey);
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionResolveDatesInPastKey))
    {
      v26 = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionResolveDatesInPastKey);
      *(this + 27) = v26;
      *(this + 28) = v26;
    }

    if (CFDictionaryContainsKey(a2, @"resolveHolidayDatesInPast"))
    {
      *(this + 28) = *v24 == CFDictionaryGetValue(a2, @"resolveHolidayDatesInPast");
    }

    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionResolveConcreteDatesKey))
    {
      *(this + 29) = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionResolveConcreteDatesKey);
    }

    v27 = CFDictionaryGetValue(a2, kQPQueryParserOptionCustomResourceDirectoryKey);
    if (v27)
    {
      v28 = CFURLCopyAbsoluteURL(v27);
      v29 = CFURLCopyFileSystemPath(v28, kCFURLPOSIXPathStyle);
      v30 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v29, kCFURLPOSIXPathStyle, 1u);
      nlp::CFScopedPtr<__CFURL const*>::reset(v70, v30);
      if (v29)
      {
        CFRelease(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

    v31 = CFDictionaryGetValue(a2, @"username");
    if (v31)
    {
      v32 = CFRetain(v31);
      nlp::CFScopedPtr<__CFString const*>::reset(this + 27, v32);
    }

    v33 = CFDictionaryGetValue(a2, kQPQueryParserOptionCustomFieldSpecifications);
    QP::ParserConfiguration::setCustomFieldSpecifications(this, v33, 0);
    if (CFDictionaryContainsKey(a2, kQPQueryParserOptionIgnoreSingleYearSuggestionKey))
    {
      *(this + 39) = *v24 == CFDictionaryGetValue(a2, kQPQueryParserOptionIgnoreSingleYearSuggestionKey);
    }

    v34 = CFDictionaryGetValue(a2, kQPQueryParserOptionPrivateParsingKey);
    if (v34)
    {
      *(this + 57) = *v24 == v34;
    }

    v35 = CFDictionaryGetValue(a2, kQPQueryParserOptionEmbeddingsEnabledKey);
    if (v35)
    {
      *(this + 58) = *v24 == v35;
    }

    v36 = CFDictionaryGetValue(a2, kQPQueryParserOptionSeparateEmbeddingsEnabledKey);
    if (v36)
    {
      *(this + 59) = *v24 == v36;
    }

    v37 = CFDictionaryGetValue(a2, kQPQueryParserOptionEmbeddingsSafetyDisabledKey);
    if (v37)
    {
      *(this + 60) = *v24 == v37;
    }

    v38 = CFDictionaryGetValue(a2, @"loadAnnotations");
    if (v38)
    {
      *(this + 62) = *v24 == v38;
    }

    v39 = CFDictionaryGetValue(a2, kQPQueryParserOptionU2EnabledKey);
    if (v39)
    {
      *(this + 63) = *v24 == v39;
    }

    v40 = CFDictionaryGetValue(a2, kQPQueryParserOptionUseLLMParseKey);
    if (v40)
    {
      *(this + 64) = *v24 == v40;
    }

    v41 = CFDictionaryGetValue(a2, @"forcePeopleSpans");
    if (v41)
    {
      nlp::CFScopedPtr<__CFArray const*>::acquire(v69, v41);
    }

    v42 = CFDictionaryGetValue(a2, kQPQueryParserOptionUseECRInProcessKey);
    if (v42)
    {
      *(this + 65) = *v24 == v42;
    }

    v43 = CFDictionaryGetValue(a2, kQPQueryParserOptionUseECRForSpansKey);
    if (v43)
    {
      *(this + 66) = *v24 == v43;
    }

    v44 = CFDictionaryGetValue(a2, @"useECRForInferredNames");
    if (v44)
    {
      *(this + 67) = *v24 == v44;
    }

    v45 = CFDictionaryGetValue(a2, @"useECRForPets");
    if (v45)
    {
      *(this + 68) = *v24 == v45;
    }

    v46 = CFDictionaryGetValue(a2, @"useAggressiveECRPersonOverrides");
    if (v46)
    {
      *(this + 69) = *v24 == v46;
    }

    v47 = CFDictionaryGetValue(a2, kQPQueryParserOptionUseU2InSpotlightResourcesKey);
    if (v47)
    {
      *(this + 74) = *v24 == v47;
    }

    v48 = CFDictionaryGetValue(a2, kQPQueryParserOptionIsEntitySearchKey);
    v49 = CFDictionaryGetValue(a2, kQPQueryParserOptionEnableEntitySearchStemming);
    v50 = CFDictionaryGetValue(a2, kQPQueryParserOptionEnableEntitySearchSpellCorrect);
    if (v48)
    {
      v51 = *v24;
      *(this + 70) = *v24 == v48;
      *(this + 71) = v51 == v49;
      *(this + 72) = v51 == v50;
    }

    v52 = CFDictionaryGetValue(a2, kQPQueryParserOptionUseLexemeSubEntitiesKey);
    if (v52)
    {
      *(this + 75) = *v24 == v52;
    }

    v53 = CFDictionaryGetValue(a2, @"geoSearchEnabled");
    if (v53 && v53 == *v24)
    {
      *(this + 76) = 1;
    }

    v54 = CFDictionaryGetValue(a2, @"kMDQueryOptionEmbeddingGenerationTimeout");
    if (v54)
    {
      CFNumberGetValue(v54, kCFNumberIntType, valuePtr);
    }
  }

  if (!*v72)
  {
    MainBundle = CFBundleGetMainBundle();
    Identifier = CFBundleGetIdentifier(MainBundle);
    if (Identifier)
    {
      v57 = CFRetain(Identifier);
    }

    else
    {
      v57 = @"com.apple.spotlight.QueryParser";
    }

    nlp::CFScopedPtr<__CFString const*>::reset(v72, v57);
  }

  if (!*(this + 23))
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], kQPParseAttributeQueryParserContextIdentifier);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 23, Copy);
  }

  systemListenerEnableForceLoadingAssets(*(this + 35));
  if (*v73)
  {
    systemListenerSetLocale(*v73, *(this + 21));
  }

  else
  {
    *(this + 33) = 1;
    v62 = copyCurrentLocale();
    v63 = copyCurrentPreferredLanguages();
    systemListenerEnableAutoUpdatingLocale(1);
    QP::ParserConfiguration::setLocale(this, v62, v63);
    if (v63)
    {
      CFRelease(v63);
    }

    if (v62)
    {
      CFRelease(v62);
    }
  }

  v64 = CFLocaleGetValue(*v73, *MEMORY[0x1E695E6F0]);
  if (*v71)
  {
    v65 = MEMORY[0x1C695AA30]();
  }

  else
  {
    v65 = 0;
  }

  if (CFStringsAreEqual(v64, @"ja") && v65 && CFStringsAreEqual(v65, @"japanese"))
  {
    *(this + 20) = 1;
  }

  if (*v4 == 10)
  {
    *(this + 10) = 1;
  }

  QP::ParserConfiguration::updateCalendar(this);
  return this;
}

void sub_1C65D9B50(_Unwind_Exception *a1, uint64_t a2, void *a3, const void **a4, const void **a5, uint64_t a6, const void **a7, const void **a8, const void **a9, const void **a10, const void **a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlp::CFScopedPtr<__CFArray const*>::reset(va, 0);
  std::__list_imp<QP::Subscriber *>::clear(a3);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 32, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 31, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(a7, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v12 + 29, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(a5, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 27, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v12 + 26, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 25, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(a10, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 23, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(a8, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(v12 + 21, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 20, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 19, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 18, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 17, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 16, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(v12 + 15, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(a11, 0);
  nlp::CFScopedPtr<__CFTimeZone const*>::reset(v12 + 13, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(a9, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(v12 + 11, 0);
  nlp::CFScopedPtr<__CFDate const*>::reset(a4, 0);
  _Unwind_Resume(a1);
}

void QP::ParserConfiguration::updateCalendar(QP::ParserConfiguration *this)
{
  v2 = (this + 88);
  if (!*(this + 11))
  {
    v3 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
    if (v3)
    {
      v4 = v3;
      CFCalendarSetFirstWeekday(v3, 1);
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v6 = copyCurrentCalendar(*(this + 14), 0);
      v5 = v2;
    }

    nlp::CFScopedPtr<__CFCalendar *>::reset(v5, v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    v8 = *(this + 15);
    if (v8)
    {
      v9 = CFLocaleCreate(*MEMORY[0x1E695E480], v8);
      CFCalendarSetLocale(*(this + 12), v9);
      CFRelease(v9);
    }

    else
    {
      v11 = *(this + 14);
      if (v11)
      {
        CFCalendarSetLocale(v7, v11);
      }
    }
  }

  else
  {
    v10 = copyCurrentCalendar(*(this + 14), *(this + 15));
    nlp::CFScopedPtr<__CFCalendar *>::reset(this + 12, v10);
  }

  v12 = *(this + 10);

  QP::ParserConfiguration::setDate(this, v12);
}

uint64_t QP::ParserConfiguration::setLocale(QP::ParserConfiguration *this, const __CFLocale *a2, const __CFArray *a3)
{
  v7 = (this + 112);
  v6 = *(this + 14);
  if (a2 && v6)
  {
    if (CFLocalesAreEqual(v6, a2))
    {
      return 0;
    }

    nlp::CFScopedPtr<__CFLocale const*>::reset(v7, 0);
  }

  else
  {
    nlp::CFScopedPtr<__CFLocale const*>::reset(v7, 0);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  v9 = CFRetain(a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v7, v9);
  QP::ParserConfiguration::updateCalendar(this);
LABEL_9:
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 21, 0);
  if (a3)
  {
    v10 = CFGetTypeID(a3);
    if (v10 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a3);
      v12 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; Count != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
          if (ValueAtIndex)
          {
            v16 = ValueAtIndex;
            v17 = CFGetTypeID(ValueAtIndex);
            if (v17 != CFStringGetTypeID())
            {
              if (v17 != CFLocaleGetTypeID())
              {
                continue;
              }

              v19 = MEMORY[0x1C695ACD0](v16);
              if (!v19)
              {
                continue;
              }

              Copy = CFStringCreateCopy(v12, v19);
              v36 = Copy;
              if (!Copy)
              {
                continue;
              }

LABEL_20:
              v20 = Copy;
              CFArrayAppendValue(Mutable, Copy);
              CFRelease(v20);
              continue;
            }

            Copy = CFStringCreateCopy(v12, v16);
            v36 = Copy;
            if (Copy)
            {
              goto LABEL_20;
            }
          }
        }
      }

      nlp::CFScopedPtr<__CFArray const*>::reset(this + 21, Mutable);
    }
  }

  Value = CFLocaleGetValue(*v7, *MEMORY[0x1E695E6F0]);
  v22 = CFLocaleGetValue(*v7, *MEMORY[0x1E695E6F8]);
  v23 = *MEMORY[0x1E695E6D0];
  v24 = CFLocaleGetValue(*v7, *MEMORY[0x1E695E6D0]);
  if (!v24)
  {
    v25 = CFLocaleCopyCurrent();
    v36 = v25;
    v24 = CFLocaleGetValue(v25, v23);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (Value)
  {
    v26 = v22 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v30 = *MEMORY[0x1E695E480];
    v31 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_%@", Value, v22);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 19, v31);
    v32 = CFStringCreateWithFormat(v30, 0, @"%@-%@", Value, v22);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 17, v32);
    if (!v24)
    {
      return 1;
    }

    v33 = CFStringCreateWithFormat(v30, 0, @"%@_%@_%@", Value, v22, v24);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 20, v33);
    v29 = CFStringCreateWithFormat(v30, 0, @"%@-%@_%@", Value, v22, v24, v36);
    goto LABEL_36;
  }

  if (!Value)
  {
    if (!v24)
    {
      return 1;
    }

    goto LABEL_37;
  }

  v27 = *MEMORY[0x1E695E480];
  v28 = CFStringCreateCopy(*MEMORY[0x1E695E480], Value);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 17, v28);
  if (v24)
  {
    v29 = CFStringCreateWithFormat(v27, 0, @"%@_%@", Value, v24, v35, v36);
LABEL_36:
    nlp::CFScopedPtr<__CFString const*>::reset(this + 18, v29);
LABEL_37:
    v34 = CFStringCreateCopy(*MEMORY[0x1E695E480], v24);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 16, v34);
  }

  return 1;
}

void sub_1C65DA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::ParserConfiguration::setCalendarRegion(const void **this, CFTypeRef cf)
{
  if (cf)
  {
    cf = CFRetain(cf);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 15, cf);

  QP::ParserConfiguration::updateCalendar(this);
}

void QP::ParserConfiguration::setCustomTimezone(const void **this, CFTypeRef cf)
{
  if (cf)
  {
    cf = CFRetain(cf);
  }

  nlp::CFScopedPtr<__CFTimeZone const*>::reset(this + 13, cf);

  QP::ParserConfiguration::updateCalendar(this);
}

void QP::ParserConfiguration::setCustomCalendar(const void **this, CFTypeRef cf)
{
  if (cf)
  {
    cf = CFRetain(cf);
  }

  nlp::CFScopedPtr<__CFCalendar *>::reset(this + 12, cf);

  QP::ParserConfiguration::updateCalendar(this);
}

void QP::ParserConfiguration::setDate(QP::ParserConfiguration *this, CFDateRef otherDate)
{
  v5 = (this + 80);
  v4 = *(this + 10);
  if (!otherDate || !v4 || CFDateCompare(v4, otherDate, 0))
  {
    nlp::CFScopedPtr<__CFDate const*>::reset(v5, 0);
    v6 = *(this + 12);
    if (v6)
    {
      if (!otherDate)
      {
        return;
      }
    }

    else
    {
      v6 = *(this + 11);
      if (!otherDate)
      {
        return;
      }
    }

    if (v6)
    {
      v7 = MEMORY[0x1C695AA30]();
      v8 = *MEMORY[0x1E695E480];
      v9 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], v7);
      v10 = v9;
      *&at[1] = v9;
      v11 = *(this + 13);
      if (v11)
      {
        CFCalendarSetTimeZone(v9, v11);
      }

      else
      {
        v12 = CFTimeZoneCopyDefault();
        *&at[0] = v12;
        CFCalendarSetTimeZone(v10, v12);
        if (v12)
        {
          CFRelease(v12);
        }
      }

      at[0] = MEMORY[0x1C695AB50](otherDate);
      v19 = -1;
      v17 = -1;
      v18 = -1;
      v15 = -1;
      v16 = -1;
      v14 = -1;
      CFCalendarDecomposeAbsoluteTime(v10, at[0], "dMyHms", &v19, &v18, &v17, &v16, &v15, &v14);
      CFCalendarComposeAbsoluteTime(*(this + 11), at, "dMyHms", v19, v18, v17, v16, v15, v14);
      v13 = CFDateCreate(v8, at[0]);
      nlp::CFScopedPtr<__CFDate const*>::reset(v5, v13);
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

void sub_1C65DA4E0(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFTimeZone const*>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

BOOL QP::ParserConfiguration::setAppContext(QP::ParserConfiguration *this, CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  CFStringLowercase(MutableCopy, 0);
  if (CFStringCompare(MutableCopy, @"com.apple.mail", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.mobilemail", 1uLL) == kCFCompareEqualTo)
  {
    v4 = *(this + 1) != 2;
    *(this + 1) = 2;
    v6 = &kQPParseAttributeMailContextIdentifier;
LABEL_23:
    v7 = *v6;
    goto LABEL_24;
  }

  if (CFStringCompare(MutableCopy, @"com.apple.notes", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.mobilenotes", 1uLL) == kCFCompareEqualTo)
  {
    v4 = *(this + 1) != 3;
    *(this + 1) = 3;
    v6 = &kQPParseAttributeNotesContextIdentifier;
    goto LABEL_23;
  }

  if (CFStringCompare(MutableCopy, @"com.apple.calendar", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.calendarui", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.ical.calendarquerygenius", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.ical", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.mobilecal", 1uLL) == kCFCompareEqualTo)
  {
    v4 = *(this + 1) != 6;
    *(this + 1) = 6;
    v6 = &kQPParseAttributeCalendarContextIdentifier;
    goto LABEL_23;
  }

  if (CFStringCompare(MutableCopy, @"com.apple.finder", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.documentsapp", 1uLL) == kCFCompareEqualTo)
  {
    v4 = *(this + 1) != 4;
    *(this + 1) = 4;
    v7 = @"com.apple.finder";
    goto LABEL_24;
  }

  if (CFStringCompare(MutableCopy, @"com.apple.safari", 1uLL) == kCFCompareEqualTo)
  {
    v4 = *(this + 1) != 5;
    v5 = 5;
    goto LABEL_29;
  }

  if (CFStringCompare(MutableCopy, @"com.apple.spotlight", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.searchd", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.pommesctl", 1uLL) == kCFCompareEqualTo || CFStringHasPrefix(MutableCopy, @"com.apple.omniSearch") || CFStringHasPrefix(MutableCopy, @"com.apple.intelligenceflow") || CFStringHasPrefix(MutableCopy, @"com.apple.ondeviceeval"))
  {
    v4 = *(this + 1) != 7;
    v5 = 7;
LABEL_29:
    *(this + 1) = v5;
    v6 = &kQPParseAttributeSpotlightContextIdentifier;
    goto LABEL_23;
  }

  v9 = &kQPParseAttributeSearchtoolContextIdentifier;
  if (CFStringCompare(MutableCopy, kQPParseAttributeSearchtoolContextIdentifier, 1uLL))
  {
    if (CFStringCompare(MutableCopy, @"com.apple.memorycreation", 1uLL) == kCFCompareEqualTo)
    {
      v4 = *(this + 1) != 7;
      *(this + 1) = 7;
      v6 = &kQPParseAttributeMemoryCreationContextIdentifier;
      goto LABEL_23;
    }

    if (CFStringCompare(MutableCopy, @"com.apple.photos", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, @"com.apple.mobileslideshow", 1uLL) == kCFCompareEqualTo)
    {
      v4 = *(this + 1) != 10;
      *(this + 1) = 10;
      v6 = &kQPParseAttributePhotosContextIdentifier;
      goto LABEL_23;
    }

    if (CFStringCompare(MutableCopy, @"com.apple.reminders.parser", 1uLL) == kCFCompareEqualTo)
    {
      v4 = *(this + 1) != 13;
      *(this + 1) = 13;
      v6 = &kQPParseAttributeRemindersParserContextIdentifier;
      goto LABEL_23;
    }

    v9 = &kQPParseAttributeRemindersContextIdentifier;
    if (CFStringCompare(MutableCopy, kQPParseAttributeRemindersContextIdentifier, 1uLL))
    {
      v9 = &kQPParseAttributeQueryParserContextIdentifier;
      if (CFStringCompare(MutableCopy, @"com.apple.queryparser", 1uLL) == kCFCompareEqualTo || CFStringCompare(MutableCopy, kQPParseAttributeQueryParserContextIdentifier, 1uLL) == kCFCompareEqualTo)
      {
        v4 = *(this + 1) != 0;
        *(this + 1) = 0;
        goto LABEL_43;
      }

      v9 = &kQPParseAttributeQuerySearchContextIdentifier;
      if (CFStringCompare(MutableCopy, kQPParseAttributeQuerySearchContextIdentifier, 1uLL))
      {
        v9 = &kQPParseAttributeVisualGenerationContextIdentifier;
        v10 = CFStringCompare(MutableCopy, kQPParseAttributeVisualGenerationContextIdentifier, 1uLL);
        v11 = *(this + 1);
        if (v10)
        {
          v4 = v11 != 0;
          *(this + 1) = 0;
          v7 = @"com.apple.query.default";
          goto LABEL_24;
        }

        v4 = v11 != 14;
        v12 = 14;
      }

      else
      {
        v4 = *(this + 1) != 9;
        v12 = 9;
      }
    }

    else
    {
      v4 = *(this + 1) != 12;
      v12 = 12;
    }
  }

  else
  {
    v4 = *(this + 1) != 8;
    v12 = 8;
  }

  *(this + 1) = v12;
LABEL_43:
  v7 = *v9;
LABEL_24:
  nlp::CFScopedPtr<__CFString const*>::reset(this + 23, v7);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

void sub_1C65DA9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL QP::ParserConfiguration::setCustomFieldSpecifications(QP::ParserConfiguration *this, const __CFDictionary *a2, int a3)
{
  value[1] = *MEMORY[0x1E69E9840];
  v6 = (this + 232);
  v5 = *(this + 29);
  if (a2)
  {
    if (v5)
    {
      Count = CFDictionaryGetCount(v5);
      if (Count != CFDictionaryGetCount(a2))
      {
        goto LABEL_14;
      }

      v35 = a3;
      (MEMORY[0x1EEE9AC00])();
      v9 = (&v34 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v9, 8 * Count);
      (MEMORY[0x1EEE9AC00])();
      v10 = v9;
      bzero(v9, 8 * Count);
      CFDictionaryGetKeysAndValues(a2, v9, v9);
      if (Count < 1)
      {
LABEL_14:
        v21 = 0;
        goto LABEL_29;
      }

      v11 = *MEMORY[0x1E695E480];
      while (1)
      {
        v12 = CFGetTypeID(*v9);
        if (v12 != CFStringGetTypeID())
        {
          break;
        }

        v13 = CFGetTypeID(*v10);
        if (v13 != CFDictionaryGetTypeID())
        {
          break;
        }

        MutableCopy = CFStringCreateMutableCopy(v11, 0, *v9);
        v15 = MutableCopy;
        if (!MutableCopy)
        {
          break;
        }

        CFStringLowercase(MutableCopy, *(this + 14));
        value[0] = 0;
        v16 = CFDictionaryGetValueIfPresent(*(this + 29), v15, value) == 0;
        CFRelease(v15);
        if (v16)
        {
          break;
        }

        v17 = CFGetTypeID(value[0]);
        if (v17 != CFDictionaryGetTypeID())
        {
          break;
        }

        v18 = CFDictionaryCreateMutableCopy(v11, 0, value[0]);
        v19 = v18;
        if (!v18)
        {
          break;
        }

        CFDictionaryRemoveValue(v18, @"ORIGINAL_TEXT");
        v20 = CFEqual(*v10, v19) == 0;
        CFRelease(v19);
        if (v20)
        {
          break;
        }

        ++v10;
        ++v9;
        if (!--Count)
        {
          goto LABEL_14;
        }
      }

      a3 = v35;
    }

    if (configLogger(void)::token != -1)
    {
      QP::ParserConfiguration::setCustomFieldSpecifications();
    }

    v35 = a3;
    v22 = configLogger(void)::log;
    if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      LOWORD(value[0]) = 0;
      _os_log_impl(&dword_1C6584000, v22, OS_LOG_TYPE_INFO, "QueryParser: custom field specifications changed", value, 2u);
    }

    nlp::CFScopedPtr<__CFDictionary const*>::reset(v6, 0);
    v23 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v25 = CFDictionaryGetCount(a2);
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v25);
    v27 = (&v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v27, v26);
    CFDictionaryGetKeysAndValues(a2, v27, 0);
    if (v25 >= 1)
    {
      do
      {
        v28 = CFStringCreateMutableCopy(v23, 0, *v27);
        value[0] = v28;
        v29 = CFDictionaryGetValue(a2, v28);
        v30 = CFDictionaryCreateMutableCopy(v23, 0, v29);
        Copy = CFStringCreateCopy(v23, v28);
        CFDictionarySetValue(v30, @"ORIGINAL_TEXT", Copy);
        CFStringLowercase(v28, *(this + 14));
        CFDictionarySetValue(Mutable, v28, v30);
        CFRelease(v30);
        if (v28)
        {
          CFRelease(v28);
        }

        ++v27;
        --v25;
      }

      while (v25);
    }

    nlp::CFScopedPtr<__CFDictionary const*>::reset(v6, Mutable);
    if (v35)
    {
      (*(*this + 32))(this);
    }

    v21 = 1;
  }

  else
  {
    v21 = v5 != 0;
    nlp::CFScopedPtr<__CFDictionary const*>::reset(v6, 0);
    if (a3)
    {
      (*(*this + 32))(this);
    }
  }

LABEL_29:
  v32 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1C65DAF1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *QP::ParserConfiguration::setIsEntitySearch(_BYTE *this, const __CFBoolean *a2, const __CFBoolean *a3, const __CFBoolean *a4)
{
  v4 = *MEMORY[0x1E695E4D0];
  this[70] = *MEMORY[0x1E695E4D0] == a2;
  this[71] = v4 == a3;
  this[72] = v4 == a4;
  return this;
}

void QP::ParserConfiguration::loadConfigurationResource(QP::ParserConfiguration *this, const __CFURL *a2, __CFError **a3, __CFError **a4)
{
  v46 = *MEMORY[0x1E69E9840];
  *(this + 34) = 0;
  if (!a2)
  {
    goto LABEL_86;
  }

  cf = 0;
  DictionaryWithContentsOfURL = nlp::createDictionaryWithContentsOfURL(a2, &cf, a3, a4);
  v7 = DictionaryWithContentsOfURL;
  v40[2] = DictionaryWithContentsOfURL;
  if (!cf)
  {
    if (!DictionaryWithContentsOfURL)
    {
      goto LABEL_86;
    }

    if (*(this + 14))
    {
      v9 = MEMORY[0x1C695ACD0]();
    }

    else
    {
      v9 = 0;
    }

    if (configLogger(void)::token != -1)
    {
      QP::ParserConfiguration::setCustomFieldSpecifications();
    }

    v10 = configLogger(void)::log;
    if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v9;
      v44 = 2112;
      v45 = a2;
      _os_log_impl(&dword_1C6584000, v10, OS_LOG_TYPE_INFO, "QueryParser: loading %@ from %@", buf, 0x16u);
    }

    *(this + 34) = 1;
    if (!CFDictionaryContainsKey(v7, @"Contents"))
    {
      goto LABEL_60;
    }

    Value = CFDictionaryGetValue(v7, @"Contents");
    if (CFArrayGetCount(Value) != 3)
    {
      goto LABEL_60;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    v13 = CFDictionaryContainsKey(ValueAtIndex, @"Version");
    v14 = MEMORY[0x1E695E480];
    if (v13)
    {
      v15 = CFDictionaryGetValue(ValueAtIndex, @"Version");
      v16 = CFNumberCreate(*v14, kCFNumberCFIndexType, &QPPARSER_MIN_DATES_VERSION);
      v40[0] = v16;
      if (configLogger(void)::token != -1)
      {
        QP::ParserConfiguration::setCustomFieldSpecifications();
      }

      v17 = configLogger(void)::log;
      if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v15;
        _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_INFO, "QueryParser: loading %@ dates version", buf, 0xCu);
      }

      if (CFNumberCompare(v15, v16, 0))
      {
        if (configLogger(void)::token != -1)
        {
          QP::ParserConfiguration::setCustomFieldSpecifications();
        }

        v18 = configLogger(void)::log;
        if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v16;
          _os_log_impl(&dword_1C6584000, v18, OS_LOG_TYPE_INFO, "QueryParser: expected %@ dates version (error)", buf, 0xCu);
        }

        *(this + 34) = 0;
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      *(this + 34) = 0;
    }

    v19 = CFArrayGetValueAtIndex(Value, 1);
    if (CFDictionaryContainsKey(v19, @"Version"))
    {
      v20 = CFDictionaryGetValue(v19, @"Version");
      v21 = CFNumberCreate(*v14, kCFNumberCFIndexType, &QPPARSER_MIN_LEXICON_VERSION);
      v40[0] = v21;
      if (configLogger(void)::token != -1)
      {
        QP::ParserConfiguration::setCustomFieldSpecifications();
      }

      v22 = configLogger(void)::log;
      if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v20;
        _os_log_impl(&dword_1C6584000, v22, OS_LOG_TYPE_INFO, "QueryParser: loading %@ lexicon version", buf, 0xCu);
      }

      if (CFNumberCompare(v20, v21, 0))
      {
        if (configLogger(void)::token != -1)
        {
          QP::ParserConfiguration::setCustomFieldSpecifications();
        }

        v23 = configLogger(void)::log;
        if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v21;
          _os_log_impl(&dword_1C6584000, v23, OS_LOG_TYPE_INFO, "QueryParser: expected %@ lexicon version (error)", buf, 0xCu);
        }

        *(this + 34) = 0;
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    else
    {
      *(this + 34) = 0;
    }

    v24 = CFArrayGetValueAtIndex(Value, 2);
    if (CFDictionaryContainsKey(v24, @"Version"))
    {
      v25 = CFDictionaryGetValue(v24, @"Version");
      v26 = CFNumberCreate(*v14, kCFNumberCFIndexType, &QPPARSER_MIN_RULES_VERSION);
      v40[0] = v26;
      if (configLogger(void)::token != -1)
      {
        QP::ParserConfiguration::setCustomFieldSpecifications();
      }

      v27 = configLogger(void)::log;
      if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v25;
        _os_log_impl(&dword_1C6584000, v27, OS_LOG_TYPE_INFO, "QueryParser: loading %@ rules version", buf, 0xCu);
      }

      if (CFNumberCompare(v25, v26, 0))
      {
        if (configLogger(void)::token != -1)
        {
          QP::ParserConfiguration::setCustomFieldSpecifications();
        }

        v28 = configLogger(void)::log;
        if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v26;
          _os_log_impl(&dword_1C6584000, v28, OS_LOG_TYPE_INFO, "QueryParser: expected %@ rules version (error)", buf, 0xCu);
        }

        *(this + 34) = 0;
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    else
    {
LABEL_60:
      *(this + 34) = 0;
    }

    if (CFDictionaryContainsKey(v7, @"CanonicalRegions"))
    {
      v29 = CFDictionaryGetValue(v7, @"CanonicalRegions");
      QP::ParserConfiguration::setCanonicalRegions(this, v29);
    }

    if (CFDictionaryContainsKey(v7, @"EnableSuggestions"))
    {
      v30 = CFDictionaryGetValue(v7, @"EnableSuggestions");
      *buf = 0;
      CFNumberGetValue(v30, kCFNumberIntType, buf);
      v31 = *buf;
      *(this + 73) = *buf != 0;
      if (v31)
      {
        if (configLogger(void)::token != -1)
        {
          QP::ParserConfiguration::setCustomFieldSpecifications();
        }

        v32 = configLogger(void)::log;
        if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
        {
          LOWORD(v40[0]) = 0;
          _os_log_impl(&dword_1C6584000, v32, OS_LOG_TYPE_INFO, "QueryParser: suggestions enabled", v40, 2u);
        }
      }
    }

    if (!CFDictionaryContainsKey(v7, @"EnableParsing"))
    {
      goto LABEL_81;
    }

    v33 = CFDictionaryGetValue(v7, @"EnableParsing");
    *buf = 0;
    CFNumberGetValue(v33, kCFNumberIntType, buf);
    v34 = *buf;
    *(this + 56) = *buf != 0;
    if (!v34)
    {
      goto LABEL_81;
    }

    if (*(this + 57) == 1)
    {
      if (configLogger(void)::token != -1)
      {
        QP::ParserConfiguration::setCustomFieldSpecifications();
      }

      v35 = configLogger(void)::log;
      if (!os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_81;
      }

      LOWORD(v40[0]) = 0;
      v36 = "QueryParser: private parsing enabled";
    }

    else
    {
      if (configLogger(void)::token != -1)
      {
        QP::ParserConfiguration::setCustomFieldSpecifications();
      }

      v35 = configLogger(void)::log;
      if (!os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_81;
      }

      LOWORD(v40[0]) = 0;
      v36 = "QueryParser: parsing enabled";
    }

    _os_log_impl(&dword_1C6584000, v35, OS_LOG_TYPE_INFO, v36, v40, 2u);
LABEL_81:
    if (CFDictionaryContainsKey(v7, @"SpaceDelimited"))
    {
      v37 = CFDictionaryGetValue(v7, @"SpaceDelimited");
      *buf = 0;
      CFNumberGetValue(v37, kCFNumberIntType, buf);
      *(this + 32) = *buf != 0;
    }

    if (CFDictionaryContainsKey(v7, @"ParserReversed"))
    {
      v38 = CFDictionaryGetValue(v7, @"ParserReversed");
      *buf = 0;
      CFNumberGetValue(v38, kCFNumberIntType, buf);
      *(this + 31) = *buf != 0;
    }

    goto LABEL_85;
  }

  if (configLogger(void)::token != -1)
  {
    QP::ParserConfiguration::setCustomFieldSpecifications();
  }

  v8 = configLogger(void)::log;
  if (os_log_type_enabled(configLogger(void)::log, OS_LOG_TYPE_ERROR))
  {
    QP::ParserConfiguration::loadConfigurationResource(&cf, v8);
  }

  CFRelease(cf);
  if (v7)
  {
LABEL_85:
    CFRelease(v7);
  }

LABEL_86:
  v39 = *MEMORY[0x1E69E9840];
}

void sub_1C65DB7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserConfiguration::setCanonicalRegions(const void **this, const __CFDictionary *a2)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 26, 0);
  if (a2)
  {
    v4 = CFRetain(a2);
    nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 26, v4);
  }

  return 1;
}

BOOL QP::ParserConfiguration::setAppContext(QP::ParserConfiguration *this, const __CFString *a2, int a3)
{
  v5 = QP::ParserConfiguration::setAppContext(this, a2);
  if (v5 && a3)
  {
    (*(*this + 32))(this);
  }

  return v5;
}

uint64_t QP::ParserConfiguration::setCustomResourceDirectory(QP::ParserConfiguration *this, const __CFURL *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v7 = (this + 176);
  v6 = *(this + 22);
  if (v6)
  {
    v8 = CFURLGetString(v6);
    v9 = CFURLGetString(a2);
    if (CFStringsAreEqual(v8, v9))
    {
      return 0;
    }
  }

  nlp::CFScopedPtr<__CFURL const*>::reset(v7, 0);
  v11 = CFURLGetBaseURL(a2);
  v12 = CFURLGetString(a2);
  v13 = v12;
  if (v11 && v12)
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = CFURLGetString(v11);
    v16 = CFStringCreateWithFormat(v14, 0, @"%@%@", v15, v13);
    v17 = CFURLCreateWithString(v14, v16, 0);
    nlp::CFScopedPtr<__CFURL const*>::reset(v7, v17);
    if (v16)
    {
LABEL_11:
      CFRelease(v16);
    }
  }

  else if (v12)
  {
    v18 = *MEMORY[0x1E695E480];
    v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", v12);
    v19 = CFURLCreateWithString(v18, v16, 0);
    nlp::CFScopedPtr<__CFURL const*>::reset(v7, v19);
    if (v16)
    {
      goto LABEL_11;
    }
  }

  if (a3)
  {
    (*(*this + 32))(this);
  }

  return 1;
}

void sub_1C65DBAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t QP::ParserConfiguration::setLocale(QP::ParserConfiguration *this, const __CFLocale *a2, const __CFArray *a3, int a4)
{
  v6 = QP::ParserConfiguration::setLocale(this, a2, a3);
  if (v6)
  {
    systemListenerSetLocale(*(this + 14), *(this + 21));
    *(this + 33) = 0;
    if (a4)
    {
      (*(*this + 32))(this);
    }
  }

  return v6;
}

BOOL QP::ParserConfiguration::setParserFormat(_DWORD *a1, int a2, int a3)
{
  v4 = a1[4];
  if (v4 != a2)
  {
    a1[4] = a2;
    if (a3)
    {
      (*(*a1 + 32))(a1);
    }
  }

  return v4 != a2;
}

void nlp::CFScopedPtr<__CFTimeZone const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void QP::ParserConfiguration::setFirstWeekDay(QP::ParserConfiguration *this, CFIndex a2)
{
  if (a2 >= 1)
  {
    v2 = *(this + 12);
    if (v2)
    {
      CFCalendarSetFirstWeekday(v2, a2);
    }
  }
}

void nlp::CFScopedPtr<__CFArray const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFArray const*>::reset(a1, cf);
  }
}

uint64_t QP::ParserConfiguration::setEmbeddingGenerationTimeout(QP::ParserConfiguration *this, CFNumberRef number)
{
  valuePtr = 0;
  result = CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (result)
  {
    *(this + 11) = valuePtr;
  }

  return result;
}

void QP::ParserConfiguration::setS3RTestID(const void **this, CFTypeRef cf)
{
  if (cf)
  {
    cf = CFRetain(cf);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 31, cf);
}

void QP::ParserConfiguration::setS3RTestVersion(const void **this, CFTypeRef cf)
{
  if (cf)
  {
    cf = CFRetain(cf);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 32, cf);
}

BOOL QP::ParserConfiguration::regionValidForLanguage(QP::ParserConfiguration *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  if (!a4 || !a2 || !*(this + 26))
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  if (a3)
  {
    v8 = CFStringCreateWithFormat(v7, 0, @"%@-%@", a2, a3);
    if (!CFDictionaryContainsKey(*(this + 26), v8))
    {
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(*(this + 26), v8);
  }

  else
  {
    v8 = CFStringCreateWithFormat(v7, 0, @"%@_%@", a2, a4);
    v10 = CFDictionaryContainsKey(*(this + 26), v8);
    v11 = *(this + 26);
    if (v10)
    {
      Value = CFDictionaryGetValue(v11, v8);
    }

    else
    {
      if (!CFDictionaryContainsKey(v11, a2))
      {
        goto LABEL_16;
      }

      Value = CFDictionaryGetValue(*(this + 26), a2);
    }
  }

  if (!Value || (v12 = CFDictionaryGetValue(Value, @"ValidRegions"), (v13 = v12) == 0) || (v16.length = CFArrayGetCount(v12), v16.location = 0, !CFArrayContainsValue(v13, v16, a4)))
  {
LABEL_16:
    v14 = 1;
    if (!v8)
    {
      return (v14 & 1) == 0;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (v8)
  {
LABEL_17:
    CFRelease(v8);
  }

  return (v14 & 1) == 0;
}

void sub_1C65DBF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const void *QP::ParserConfiguration::canonicalRegionForLanguage(QP::ParserConfiguration *this, const __CFString *key, const __CFString *a3, const __CFString *a4)
{
  result = 0;
  if (!key || !*(this + 26))
  {
    return result;
  }

  if (a3)
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@", key, a3);
    if (CFDictionaryContainsKey(*(this + 26), v8))
    {
      Value = CFDictionaryGetValue(*(this + 26), v8);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Value = 0;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    CFRelease(v8);
    goto LABEL_11;
  }

  if (!CFDictionaryContainsKey(*(this + 26), key))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(this + 26), key);
LABEL_11:
  if (!Value)
  {
    return 0;
  }

  v10 = CFDictionaryGetValue(Value, @"Mappings");
  if (!v10 || (result = CFDictionaryGetValue(v10, a4)) == 0)
  {

    return CFDictionaryGetValue(Value, @"CanonicalRegion");
  }

  return result;
}

void sub_1C65DC078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::ParserConfiguration::~ParserConfiguration(QP::ParserConfiguration *this)
{
  QP::ParserConfiguration::~ParserConfiguration(this);

  JUMPOUT(0x1C695B850);
}

{
  *this = &unk_1F45E8C08;
  v2 = (this + 80);
  std::__list_imp<QP::Subscriber *>::clear(this + 33);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 32, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 31, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 30, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 29, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 28, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 27, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 26, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 25, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 24, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 23, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(this + 22, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 21, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 20, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 19, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 18, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 17, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 16, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 15, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 14, 0);
  nlp::CFScopedPtr<__CFTimeZone const*>::reset(this + 13, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(this + 12, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFDate const*>::reset(v2, 0);
}

uint64_t QP::ParserConfiguration::Notify(uint64_t this)
{
  v1 = this + 264;
  for (i = *(this + 272); i != v1; i = *(i + 8))
  {
    this = (*(**(i + 16) + 16))(*(i + 16));
  }

  return this;
}

void *std::__list_imp<QP::Subscriber *>::clear(void *result)
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

os_log_t ___ZL12configLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QueryParserConfiguration");
  configLogger(void)::log = result;
  return result;
}

uint64_t std::list<QP::Subscriber *>::remove(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<QP::Subscriber *>::splice(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  std::__list_imp<QP::Subscriber *>::clear(v11);
  return v9;
}

void sub_1C65DC474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<QP::Subscriber *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::list<QP::Subscriber *>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t QP::ParserGrammar::ParserGrammar(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0uLL;
  *(a1 + 72) = 0uLL;
  *(a1 + 88) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), kQPSymbolNone);
  *(a1 + 128) = 0u;
  *(a1 + 120) = a1 + 128;
  *(a1 + 152) = 0u;
  *(a1 + 144) = a1 + 152;
  *(a1 + 176) = 0u;
  *(a1 + 168) = a1 + 176;
  *(a1 + 200) = 0u;
  *(a1 + 192) = a1 + 200;
  *(a1 + 224) = 0u;
  *(a1 + 216) = a1 + 224;
  *(a1 + 248) = 0u;
  *(a1 + 240) = a1 + 248;
  *(a1 + 272) = 0u;
  *(a1 + 264) = a1 + 272;
  *(a1 + 296) = 0u;
  *(a1 + 288) = a1 + 296;
  *(a1 + 320) = 0u;
  *(a1 + 312) = a1 + 320;
  *(a1 + 344) = 0u;
  *(a1 + 336) = a1 + 344;
  *(a1 + 368) = 0u;
  *(a1 + 360) = a1 + 368;
  *(a1 + 392) = 0u;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 440) = 0u;
  *(a1 + 432) = a1 + 440;
  *(a1 + 464) = 0u;
  *(a1 + 456) = a1 + 464;
  *(a1 + 488) = 0u;
  *(a1 + 480) = a1 + 488;
  *(a1 + 512) = 0u;
  *(a1 + 504) = a1 + 512;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  *(a1 + 560) = 0u;
  *(a1 + 552) = a1 + 560;
  *(a1 + 584) = 0u;
  *(a1 + 576) = a1 + 584;
  *(a1 + 608) = 0u;
  *(a1 + 600) = a1 + 608;
  *(a1 + 632) = 0u;
  *(a1 + 624) = a1 + 632;
  *(a1 + 656) = 0u;
  *(a1 + 648) = a1 + 656;
  *(a1 + 680) = 0u;
  *(a1 + 672) = a1 + 680;
  *(a1 + 704) = 0u;
  *(a1 + 696) = a1 + 704;
  *(a1 + 728) = 0u;
  *(a1 + 720) = a1 + 728;
  *(a1 + 752) = 0u;
  *(a1 + 744) = a1 + 752;
  *(a1 + 776) = 0u;
  *(a1 + 768) = a1 + 776;
  *(a1 + 800) = 0u;
  *(a1 + 792) = a1 + 800;
  *(a1 + 824) = 0u;
  *(a1 + 816) = a1 + 824;
  *(a1 + 848) = 0u;
  *(a1 + 840) = a1 + 848;
  *(a1 + 872) = 0u;
  *(a1 + 864) = a1 + 872;
  *(a1 + 896) = 0u;
  *(a1 + 888) = a1 + 896;
  *(a1 + 920) = 0u;
  *(a1 + 912) = a1 + 920;
  *(a1 + 944) = 0u;
  *(a1 + 936) = a1 + 944;
  *(a1 + 968) = 0u;
  *(a1 + 960) = a1 + 968;
  *(a1 + 992) = 0u;
  *(a1 + 984) = a1 + 992;
  *(a1 + 1016) = 0u;
  *(a1 + 1008) = a1 + 1016;
  *(a1 + 1032) = 850045863;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  QP::ParserGrammar::clearResources(a1);
  return a1;
}

void sub_1C65DC7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  std::mutex::~mutex((v10 + 1032));
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>>>::destroy(v10 + 1008, *(v10 + 1016));
  std::__tree<unsigned int>::destroy(v10 + 984, *(v10 + 992));
  std::__tree<unsigned int>::destroy(v10 + 960, *(v10 + 968));
  std::__tree<unsigned int>::destroy(v10 + 936, *(v10 + 944));
  std::__tree<unsigned int>::destroy(v10 + 912, *(v10 + 920));
  std::__tree<unsigned int>::destroy(v10 + 888, *(v10 + 896));
  std::__tree<unsigned int>::destroy(v10 + 864, *(v10 + 872));
  std::__tree<unsigned int>::destroy(v10 + 840, *(v10 + 848));
  std::__tree<unsigned int>::destroy(v10 + 816, *(v10 + 824));
  std::__tree<unsigned int>::destroy(v10 + 792, *(v10 + 800));
  std::__tree<unsigned int>::destroy(v10 + 768, *(v10 + 776));
  std::__tree<unsigned int>::destroy(v10 + 744, *(v10 + 752));
  std::__tree<unsigned int>::destroy(v10 + 720, *(v10 + 728));
  std::__tree<unsigned int>::destroy(v10 + 696, *(v10 + 704));
  std::__tree<unsigned int>::destroy(v10 + 672, *(v10 + 680));
  std::__tree<unsigned int>::destroy(v10 + 648, *(v10 + 656));
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(v10 + 624, *(v10 + 632));
  std::__tree<std::string>::destroy(v10 + 600, *(v10 + 608));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(v10 + 576, *(v10 + 584));
  std::__tree<std::__value_type<unsigned short,std::map<std::string,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,std::string>>>>::destroy(v10 + 552, *(v10 + 560));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::destroy(v10 + 528, *(v10 + 536));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v10 + 504, *(v10 + 512));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v10 + 480, *(v10 + 488));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(v10 + 456, *(v10 + 464));
  std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::destroy(v10 + 432, *(v10 + 440));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::destroy(v10 + 408, *(v10 + 416));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(v10 + 384, *(v10 + 392));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(v10 + 360, *(v10 + 368));
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(v10 + 336, *(v10 + 344));
  std::__tree<unsigned int>::destroy(v10 + 312, *(v10 + 320));
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(v10 + 288, *(v10 + 296));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(v10 + 264, *(v10 + 272));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(v19, *(v10 + 248));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(v18, *(v10 + 224));
  std::__tree<unsigned int>::destroy(v17, *(v10 + 200));
  std::__tree<std::string>::destroy(v16, *(v10 + 176));
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(v15, *(v10 + 152));
  std::__tree<std::string>::destroy(v14, *(v10 + 128));
  if (*(v10 + 119) < 0)
  {
    operator delete(*(v11 + 40));
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(v13, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v11 + 24), 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v12, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v11 + 8), 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(v11, 0);
  v20 = *(v10 + 48);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset((v10 + 32), 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v10 + 24), 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v10 + 16), 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v10, 0);
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::clearResources(QP::ParserGrammar *this)
{
  std::mutex::lock((this + 1032));
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this, 0);
  v2 = *(this + 1);
  if (v2)
  {
    nlp::BurstTrieRelease(v2);
    *(this + 1) = 0;
  }

  nlp::BurstTrieCreateMutable(v2);
  *(this + 1) = v3;
  nlp::CFScopedPtr<__CFURL const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 11, 0);
  std::__tree<std::string>::destroy(this + 120, *(this + 16));
  *(this + 15) = this + 128;
  *(this + 8) = 0u;
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(this + 144, *(this + 19));
  *(this + 18) = this + 152;
  *(this + 152) = 0u;
  std::__tree<std::string>::destroy(this + 168, *(this + 22));
  *(this + 21) = this + 176;
  *(this + 11) = 0u;
  std::__tree<unsigned int>::destroy(this + 192, *(this + 25));
  *(this + 24) = this + 200;
  *(this + 200) = 0u;
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 216, *(this + 28));
  *(this + 27) = this + 224;
  *(this + 14) = 0u;
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 240, *(this + 31));
  *(this + 30) = this + 248;
  *(this + 248) = 0u;
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 264, *(this + 34));
  *(this + 33) = this + 272;
  *(this + 17) = 0u;
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(this + 288, *(this + 37));
  *(this + 36) = this + 296;
  *(this + 296) = 0u;
  std::__tree<unsigned int>::destroy(this + 312, *(this + 40));
  *(this + 39) = this + 320;
  *(this + 20) = 0u;
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(this + 336, *(this + 43));
  *(this + 42) = this + 344;
  *(this + 344) = 0u;
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(this + 360, *(this + 46));
  *(this + 45) = this + 368;
  *(this + 23) = 0u;
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(this + 384, *(this + 49));
  *(this + 48) = this + 392;
  *(this + 392) = 0u;
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::destroy(this + 408, *(this + 52));
  *(this + 51) = this + 416;
  *(this + 26) = 0u;
  std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(this + 456, *(this + 58));
  *(this + 57) = this + 464;
  *(this + 29) = 0u;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 480, *(this + 61));
  *(this + 60) = this + 488;
  *(this + 488) = 0u;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 504, *(this + 64));
  *(this + 63) = this + 512;
  *(this + 32) = 0u;
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 576, *(this + 73));
  *(this + 72) = this + 584;
  *(this + 584) = 0u;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 75) = this + 608;
  *(this + 38) = 0u;
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(this + 624, *(this + 79));
  *(this + 78) = this + 632;
  *(this + 632) = 0u;
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::destroy(this + 528, *(this + 67));
  *(this + 66) = this + 536;
  *(this + 536) = 0u;
  std::__tree<std::__value_type<unsigned short,std::map<std::string,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,std::string>>>>::destroy(this + 552, *(this + 70));
  *(this + 69) = this + 560;
  *(this + 35) = 0u;
  std::__tree<unsigned int>::destroy(this + 648, *(this + 82));
  *(this + 81) = this + 656;
  *(this + 41) = 0u;
  std::__tree<unsigned int>::destroy(this + 672, *(this + 85));
  *(this + 84) = this + 680;
  *(this + 680) = 0u;
  std::__tree<unsigned int>::destroy(this + 696, *(this + 88));
  *(this + 87) = this + 704;
  *(this + 44) = 0u;
  std::__tree<unsigned int>::destroy(this + 720, *(this + 91));
  *(this + 90) = this + 728;
  *(this + 728) = 0u;
  std::__tree<unsigned int>::destroy(this + 744, *(this + 94));
  *(this + 93) = this + 752;
  *(this + 47) = 0u;
  std::__tree<unsigned int>::destroy(this + 768, *(this + 97));
  *(this + 96) = this + 776;
  *(this + 776) = 0u;
  std::__tree<unsigned int>::destroy(this + 792, *(this + 100));
  *(this + 99) = this + 800;
  *(this + 50) = 0u;
  std::__tree<unsigned int>::destroy(this + 816, *(this + 103));
  *(this + 102) = this + 824;
  *(this + 824) = 0u;
  std::__tree<unsigned int>::destroy(this + 840, *(this + 106));
  *(this + 105) = this + 848;
  *(this + 53) = 0u;
  std::__tree<unsigned int>::destroy(this + 864, *(this + 109));
  *(this + 108) = this + 872;
  *(this + 872) = 0u;
  std::__tree<unsigned int>::destroy(this + 888, *(this + 112));
  *(this + 111) = this + 896;
  *(this + 56) = 0u;
  std::__tree<unsigned int>::destroy(this + 912, *(this + 115));
  *(this + 114) = this + 920;
  *(this + 920) = 0u;
  std::__tree<unsigned int>::destroy(this + 984, *(this + 124));
  *(this + 123) = this + 992;
  *(this + 62) = 0u;
  std::__tree<unsigned int>::destroy(this + 936, *(this + 118));
  *(this + 117) = this + 944;
  *(this + 59) = 0u;
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>>>::destroy(this + 1008, *(this + 127));
  *(this + 126) = this + 1016;
  *(this + 1016) = 0u;
  std::string::basic_string[abi:ne200100]<0>(v32, kQPSymbolNone);
  QP::ParserGrammar::addSymbol(this, v32);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v30, kQPSymbolRoot);
  QP::ParserGrammar::addSymbol(this, v30);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v28, kQPSymbolTerminal);
  QP::ParserGrammar::addSymbol(this, v28);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v26, kQPSymbolAirline);
  QP::ParserGrammar::addSymbol(this, v26);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v24, kQPSymbolAirport);
  QP::ParserGrammar::addSymbol(this, v24);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, kQPSymbolAirportCode);
  QP::ParserGrammar::addSymbol(this, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, kQPSymbolAppName);
  QP::ParserGrammar::addSymbol(this, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, kQPSymbolBundle);
  QP::ParserGrammar::addSymbol(this, v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, kQPSymbolCities);
  QP::ParserGrammar::addSymbol(this, v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, kQPSymbolField);
  QP::ParserGrammar::addSymbol(this, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, kQPSymbolFlightCode);
  QP::ParserGrammar::addSymbol(this, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v10, kQPSymbolPerson);
  QP::ParserGrammar::addSymbol(this, v10);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, kQPSymbolLocation);
  QP::ParserGrammar::addSymbol(this, v8);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, kQPSymbolActionDefault);
  QP::ParserGrammar::addSymbol(this, v6);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, kQPSymbolDefault);
  QP::ParserGrammar::addSymbol(this, v4);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  std::mutex::unlock((this + 1032));
}

void sub_1C65DD190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v63 + 1032));
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::~ParserGrammar(QP::ParserGrammar *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    nlp::BurstTrieRelease(v2);
  }

  std::mutex::~mutex((this + 1032));
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>>>::destroy(this + 1008, *(this + 127));
  std::__tree<unsigned int>::destroy(this + 984, *(this + 124));
  std::__tree<unsigned int>::destroy(this + 960, *(this + 121));
  std::__tree<unsigned int>::destroy(this + 936, *(this + 118));
  std::__tree<unsigned int>::destroy(this + 912, *(this + 115));
  std::__tree<unsigned int>::destroy(this + 888, *(this + 112));
  std::__tree<unsigned int>::destroy(this + 864, *(this + 109));
  std::__tree<unsigned int>::destroy(this + 840, *(this + 106));
  std::__tree<unsigned int>::destroy(this + 816, *(this + 103));
  std::__tree<unsigned int>::destroy(this + 792, *(this + 100));
  std::__tree<unsigned int>::destroy(this + 768, *(this + 97));
  std::__tree<unsigned int>::destroy(this + 744, *(this + 94));
  std::__tree<unsigned int>::destroy(this + 720, *(this + 91));
  std::__tree<unsigned int>::destroy(this + 696, *(this + 88));
  std::__tree<unsigned int>::destroy(this + 672, *(this + 85));
  std::__tree<unsigned int>::destroy(this + 648, *(this + 82));
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(this + 624, *(this + 79));
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 576, *(this + 73));
  std::__tree<std::__value_type<unsigned short,std::map<std::string,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,std::string>>>>::destroy(this + 552, *(this + 70));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::destroy(this + 528, *(this + 67));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 504, *(this + 64));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 480, *(this + 61));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(this + 456, *(this + 58));
  std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::destroy(this + 432, *(this + 55));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::destroy(this + 408, *(this + 52));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(this + 384, *(this + 49));
  std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(this + 360, *(this + 46));
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(this + 336, *(this + 43));
  std::__tree<unsigned int>::destroy(this + 312, *(this + 40));
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(this + 288, *(this + 37));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 264, *(this + 34));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 240, *(this + 31));
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(this + 216, *(this + 28));
  std::__tree<unsigned int>::destroy(this + 192, *(this + 25));
  std::__tree<std::string>::destroy(this + 168, *(this + 22));
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(this + 144, *(this + 19));
  std::__tree<std::string>::destroy(this + 120, *(this + 16));
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(this + 7, 0);
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this, 0);
}

void QP::ParserGrammar::loadParserGrammarResource(const void **this, const __CFURL *a2, BOOL a3)
{
  if (grammarLogger(void)::token != -1)
  {
    QP::ParserGrammar::loadParserGrammarResource();
  }

  v8 = os_signpost_id_generate(grammarLogger(void)::log);
  if (grammarLogger(void)::token != -1)
  {
    QP::ParserGrammar::loadParserGrammarResource();
  }

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = grammarLogger(void)::log;
    if (os_signpost_enabled(grammarLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ParserGrammar::loadParserGrammarResource", &unk_1C664887A, buf, 2u);
    }
  }

  if (!a2)
  {
    goto LABEL_12;
  }

  if (!this[7] || (v10 = CFURLGetString(a2), v11 = CFURLGetString(this[7]), !CFStringsAreEqual(v10, v11)))
  {
    v12 = CFRetain(a2);
    nlp::CFScopedPtr<__CFURL const*>::reset(this + 7, v12);
LABEL_12:
    QP::ParserGrammar::loadResources(this, a3, v6, v7);
  }

  if (grammarLogger(void)::token != -1)
  {
    QP::ParserGrammar::loadParserGrammarResource();
  }

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = grammarLogger(void)::log;
    if (os_signpost_enabled(grammarLogger(void)::log))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v13, OS_SIGNPOST_INTERVAL_END, v8, "ParserGrammar::loadParserGrammarResource", &unk_1C664887A, v14, 2u);
    }
  }
}

void QP::ParserGrammar::loadResources(QP::ParserGrammar *this, BOOL a2, __CFError **a3, __CFError **a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!*(v4 + 184))
  {
    goto LABEL_27;
  }

  v6 = *(this + 7);
  if (!v6)
  {
    goto LABEL_27;
  }

  v50 = 0;
  v8 = nlp::createDictionaryWithContentsOfURL(v6, &v50, a3, a4);
  v49 = v8;
  if (v50)
  {
    CFRelease(v50);
LABEL_6:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = Mutable;
    v11 = *(this + 5);
    v12 = *(v11 + 184);
    if (v12)
    {
      CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, v12);
      v11 = *(this + 5);
    }

    v13 = *(v11 + 112);
    if (v13)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionLocaleKey, v13);
      v11 = *(this + 5);
    }

    v14 = *(v11 + 168);
    if (v14)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionPreferredLanguagesKey, v14);
      v11 = *(this + 5);
    }

    v15 = *(v11 + 96);
    if (v15)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionReferenceCalendarKey, v15);
      v11 = *(this + 5);
    }

    v16 = *(v11 + 80);
    if (v16)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionReferenceDateKey, v16);
      v11 = *(this + 5);
    }

    if (*(v11 + 23) == 1)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionIgnoreFutureDatesKey, *MEMORY[0x1E695E4D0]);
      v11 = *(this + 5);
    }

    if (*(v11 + 24) == 1)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionIgnorePastDatesKey, *MEMORY[0x1E695E4D0]);
      v11 = *(this + 5);
    }

    if (*(v11 + 26) == 1)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionResolveDatesInFutureKey, *MEMORY[0x1E695E4D0]);
      v11 = *(this + 5);
    }

    if (*(v11 + 27) == 1)
    {
      CFDictionarySetValue(v10, kQPQueryParserOptionResolveDatesInPastKey, *MEMORY[0x1E695E4D0]);
    }

    nlp::CFScopedPtr<__CFDictionary const*>::reset(this, v10);
    goto LABEL_25;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  v18 = CFURLGetString(*(this + 7));
  HasSuffix = CFStringHasSuffix(v18, @".bplist");
  if (!HasSuffix || !QP::bplistMissingAnything(v49, v19))
  {
    if (grammarLogger(void)::token != -1)
    {
      QP::ParserGrammar::loadParserGrammarResource();
    }

    v21 = grammarLogger(void)::log;
    if (os_log_type_enabled(grammarLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      v22 = CFURLGetString(*(this + 7));
      CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = CStringPtr;
      _os_log_impl(&dword_1C6584000, v21, OS_LOG_TYPE_INFO, "Processing plist loaded fromProcessing plist loaded from %s", &buf, 0xCu);
    }

    if (_os_feature_enabled_impl() && (Count = CFDictionaryGetCount(v49), HasSuffix) && Count == 1)
    {
      QP::ParserGrammar::loadUTIs(this, v49, *(*(this + 5) + 184));
      v25 = (*(this + 5) + 184);
    }

    else
    {
      v25 = &kQPParseAttributeQueryParserContextIdentifier;
      QP::ParserGrammar::loadUTIs(this, v49, kQPParseAttributeQueryParserContextIdentifier);
    }

    QP::ParserGrammar::loadFileExtensions(this, v49, *v25);
    QP::ParserGrammar::loadCFG(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadAttributes(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadValues(this, v49, *(*(this + 5) + 184));
    if (_os_feature_enabled_impl() && CFDictionaryGetCount(v49) == 1 && HasSuffix && (v26 = *(this + 5), *(v26 + 16) == 1))
    {
      v27 = (v26 + 184);
    }

    else
    {
      if (!CFDictionaryContainsKey(v49, kQPParseAttributeSpotlightContextIdentifier) || *(*(this + 5) + 16) != 1)
      {
        goto LABEL_50;
      }

      v27 = &kQPParseAttributeSpotlightContextIdentifier;
    }

    Value = CFDictionaryGetValue(v49, *v27);
    QP::ParserGrammar::loadCategories(this, Value);
LABEL_50:
    QP::ParserGrammar::loadTokens(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadProperties(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadActions(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadIntentActions(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadU2ArgActions(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadLLMArgsMap(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadTranslations(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadIgnoredTerms(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadReplacements(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadLLMStatusActionMap(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadAttributeImpactGroup(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadLLMRankingArgsMap(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadRankingTranslations(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadRankingPhraseWeights(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadRankingWeights(this, v49, *(*(this + 5) + 184));
    QP::ParserGrammar::loadImpactGroupCoefficients(this, v49, *(*(this + 5) + 184));
    if (_os_feature_enabled_impl() && (v29 = CFDictionaryGetCount(v49), HasSuffix) && v29 == 1)
    {
      v30 = CFDictionaryGetValue(v49, *(*(this + 5) + 184));
      v31 = v30;
      if (v30)
      {
        v32 = CFGetTypeID(v30);
        if (v32 == CFDictionaryGetTypeID())
        {
          v33 = *(this + 1);
          if (v33)
          {
            nlp::BurstTrieRelease(v33);
            *(this + 1) = 0;
          }

          QP::loadCompletionsFromPlist(v31, (this + 8), this + 2, this + 3, this + 4);
        }
      }
    }

    else
    {
      v34 = *(this + 1);
      if (!v34)
      {
        nlp::BurstTrieCreateMutableWithOptions(32, 0);
        v34 = v35;
        *(this + 1) = v35;
      }

      v36 = *(this + 5);
      BundleWithIdentifier = *(v36 + 200);
      if (BundleWithIdentifier)
      {
        BundleWithIdentifier = CFBundleGetBundleWithIdentifier(BundleWithIdentifier);
        v36 = *(this + 5);
        v34 = *(this + 1);
      }

      if (*(v36 + 8) == 2)
      {
        v38 = @"Mail";
      }

      else
      {
        v38 = @"Search";
      }

      QP::generateCompletions(BundleWithIdentifier, v38, *(v36 + 144), *(v36 + 112), v34, this + 2, this + 3, this + 4);
    }

    if (!a2)
    {
      QP::ParserGrammar::loadSuggestions(this, v49, *(*(this + 5) + 184));
      QP::ParserGrammar::loadCompletions(this, v49, *(*(this + 5) + 184));
    }

    v39 = *(this + 5);
    v40 = *(v39 + 232);
    if (!v40)
    {
      goto LABEL_6;
    }

    v41 = CFDictionaryGetCount(*(v39 + 232));
    MEMORY[0x1EEE9AC00](v41);
    v43 = (v48 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v43, v42);
    CFDictionaryGetKeysAndValues(v40, v43, 0);
    if (v41 < 1)
    {
      goto LABEL_6;
    }

    v44 = *MEMORY[0x1E695E480];
    while (1)
    {
      MutableCopy = CFStringCreateMutableCopy(v44, 0, *v43);
      v48[1] = MutableCopy;
      CFStringLowercase(MutableCopy, *(*(this + 5) + 112));
      buf = 0uLL;
      v52 = 0;
      QP::getUTF8StringFromCFString(MutableCopy, &buf);
      v46 = v52 >= 0 ? &buf : buf;
      v47 = v52 >= 0 ? HIBYTE(v52) : DWORD2(buf);
      nlp::BurstTrieAdd(*(this + 1), v46, v47, 1);
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(buf);
      if (MutableCopy)
      {
        goto LABEL_81;
      }

LABEL_82:
      ++v43;
      if (!--v41)
      {
        goto LABEL_6;
      }
    }

    if (!MutableCopy)
    {
      goto LABEL_82;
    }

LABEL_81:
    CFRelease(MutableCopy);
    goto LABEL_82;
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(&v49, 0);
  QP::ParserGrammar::fallbackToCFG(this, a2);
LABEL_25:
  if (v49)
  {
    CFRelease(v49);
  }

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t QP::ParserGrammar::loadCFG(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"CFG");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"CFG");
      v26 = &v26;
      Count = CFDictionaryGetCount(v8);
      MEMORY[0x1EEE9AC00](Count);
      v10 = (&v26 - v9);
      bzero(&v26 - v9, v11);
      v27 = v10;
      v28 = v8;
      CFDictionaryGetKeysAndValues(v8, v10, 0);
      if (Count >= 1)
      {
        v12 = 0;
        do
        {
          v31 = v12;
          v13 = v27[v12];
          v33 = CFDictionaryGetValue(v28, v13);
          v32 = CFDictionaryGetCount(v33);
          v30 = &v26;
          MEMORY[0x1EEE9AC00](v32);
          v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v15, v14);
          CFDictionaryGetKeysAndValues(v33, v15, 0);
          if (v32 >= 1)
          {
            for (i = 0; i != v32; ++i)
            {
              v17 = *&v15[8 * i];
              v18 = CFDictionaryGetValue(v33, v17);
              v19 = CFDictionaryGetCount(v18);
              MEMORY[0x1EEE9AC00](v19);
              v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
              bzero(v21, v20);
              CFDictionaryGetKeysAndValues(v18, v21, 0);
              if (v19 >= 1)
              {
                do
                {
                  v22 = *v21;
                  v23 = CFDictionaryGetValue(v18, *v21);
                  valuePtr[0] = 0.0;
                  CFNumberGetValue(v23, kCFNumberDoubleType, valuePtr);
                  QP::getUTF8StringFromCFString(v13, v38);
                  QP::getUTF8StringFromCFString(v17, v36);
                  QP::getUTF8StringFromCFString(v22, v34);
                  v24 = valuePtr[0];
                  QP::ParserGrammar::addRule(this, v38, v36, v34, v24);
                  if (v35 < 0)
                  {
                    operator delete(v34[0]);
                  }

                  if (v37 < 0)
                  {
                    operator delete(v36[0]);
                  }

                  if (v39 < 0)
                  {
                    operator delete(v38[0]);
                  }

                  ++v21;
                  --v19;
                }

                while (v19);
              }
            }
          }

          v12 = v31 + 1;
        }

        while (v31 + 1 != Count);
      }

      result = 1;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DE22C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(exception_object);
}

void QP::ParserGrammar::addRule(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, float a5)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v11 = QP::ParserGrammar::getSymbolID(a1, a3);
  v12 = QP::ParserGrammar::getSymbolID(a1, a4);
  v13 = (a1 + 1016);
  v14 = *(a1 + 1016);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = a1 + 1016;
  v16 = *(a1 + 1016);
  do
  {
    v17 = *(v16 + 32);
    v18 = v17 >= v11;
    v19 = v17 < v11;
    if (v18)
    {
      v15 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v15 == v13 || v11 < *(v15 + 32))
  {
LABEL_9:
    v47 = 0;
    v48 = 0;
    v46 = &v47;
    LOWORD(v49) = v11;
    v51 = 0;
    v52 = 0;
    v50 = &v51;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(a1 + 1008, &v49);
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(&v50, v51);
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(&v46, v47);
    v14 = *v13;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  v20 = a1 + 1016;
  v21 = v14;
  do
  {
    v22 = *(v21 + 32);
    v18 = v22 >= v11;
    v23 = v22 < v11;
    if (v18)
    {
      v20 = v21;
    }

    v21 = *(v21 + 8 * v23);
  }

  while (v21);
  if (v20 == v13 || v11 < *(v20 + 32))
  {
LABEL_18:
    v20 = a1 + 1016;
  }

  v26 = *(v20 + 48);
  v24 = v20 + 48;
  v25 = v26;
  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = v24;
  do
  {
    v28 = *(v25 + 32);
    v18 = v28 >= SymbolID;
    v29 = v28 < SymbolID;
    if (v18)
    {
      v27 = v25;
    }

    v25 = *(v25 + 8 * v29);
  }

  while (v25);
  if (v27 == v24 || SymbolID < *(v27 + 32))
  {
LABEL_27:
    v27 = v24;
  }

  if (!v14)
  {
    goto LABEL_36;
  }

  v30 = a1 + 1016;
  v31 = v14;
  do
  {
    v32 = *(v31 + 32);
    v18 = v32 >= v11;
    v33 = v32 < v11;
    if (v18)
    {
      v30 = v31;
    }

    v31 = *(v31 + 8 * v33);
  }

  while (v31);
  if (v30 == v13 || v11 < *(v30 + 32))
  {
LABEL_36:
    v30 = a1 + 1016;
  }

  if (v27 == v30 + 48)
  {
    if (!v14)
    {
      goto LABEL_48;
    }

    v34 = a1 + 1016;
    do
    {
      v35 = *(v14 + 32);
      v18 = v35 >= v11;
      v36 = v35 < v11;
      if (v18)
      {
        v34 = v14;
      }

      v14 = *(v14 + 8 * v36);
    }

    while (v14);
    if (v34 == v13 || v11 < *(v34 + 32))
    {
LABEL_48:
      v34 = a1 + 1016;
    }

    v47 = 0;
    v48 = 0;
    v46 = &v47;
    LOWORD(v49) = SymbolID;
    v51 = 0;
    v52 = 0;
    v50 = &v51;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(v34 + 40, &v49);
    std::__tree<unsigned int>::destroy(&v50, v51);
    std::__tree<unsigned int>::destroy(&v46, v47);
    v14 = *v13;
    if (!*v13)
    {
      goto LABEL_57;
    }
  }

  else if (!v14)
  {
LABEL_57:
    v37 = a1 + 1016;
    goto LABEL_58;
  }

  v37 = a1 + 1016;
  do
  {
    v38 = *(v14 + 32);
    v18 = v38 >= v11;
    v39 = v38 < v11;
    if (v18)
    {
      v37 = v14;
    }

    v14 = *(v14 + 8 * v39);
  }

  while (v14);
  if (v37 == v13 || v11 < *(v37 + 32))
  {
    goto LABEL_57;
  }

LABEL_58:
  v42 = *(v37 + 48);
  v40 = v37 + 48;
  v41 = v42;
  if (!v42)
  {
    goto LABEL_66;
  }

  v43 = v40;
  do
  {
    v44 = *(v41 + 32);
    v18 = v44 >= SymbolID;
    v45 = v44 < SymbolID;
    if (v18)
    {
      v43 = v41;
    }

    v41 = *(v41 + 8 * v45);
  }

  while (v41);
  if (v43 == v40 || SymbolID < *(v43 + 32))
  {
LABEL_66:
    v43 = v40;
  }

  v49 = v12 | (LODWORD(a5) << 32);
  std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,float>>(v43 + 40, &v49);
  QP::ParserGrammar::setModifier(a1, a2);
  QP::ParserGrammar::setModifier(a1, a3);
  QP::ParserGrammar::setModifier(a1, a4);
}

void sub_1C65DE5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__tree<unsigned int>::destroy(v15 + 8, a15);
  std::__tree<unsigned int>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadUTIs(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v24 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"UTI-CORE");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"UTI-CORE");
      Count = CFDictionaryGetCount(v8);
      v19 = &v19;
      MEMORY[0x1EEE9AC00](Count);
      v10 = &v20[-1] - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, 8 * Count);
      MEMORY[0x1EEE9AC00](v11);
      bzero(v10, 8 * Count);
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v13 = *&v10[8 * i];
          v14 = v13;
          v15 = CFArrayGetCount(v14);
          if (v15 >= 1)
          {
            for (j = 0; j != v15; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, j);
              QP::getUTF8StringFromCFString(v13, v22);
              QP::getUTF8StringFromCFString(ValueAtIndex, v20);
              QP::ParserGrammar::addUTI(this, v22, v20);
              if (v21 < 0)
              {
                operator delete(v20[0]);
              }

              if (v23 < 0)
              {
                operator delete(v22[0]);
              }
            }
          }
        }
      }

      result = 1;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DE7D0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addUTI(uint64_t a1, uint64_t a2, void **a3)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v6 = SymbolID;
  v9 = *(a1 + 224);
  v8 = (a1 + 224);
  v7 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v7;
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= SymbolID;
    v14 = v12 < SymbolID;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 == v8 || SymbolID < *(v10 + 16))
  {
LABEL_9:
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    v21 = SymbolID;
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>((v8 - 1), &v21);
    std::__tree<std::string>::destroy(&v22, v23[0]);
    std::__tree<std::string>::destroy(&v19, v20[0]);
    v7 = *v8;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v15 = v8;
  do
  {
    v16 = *(v7 + 32);
    v13 = v16 >= v6;
    v17 = v16 < v6;
    if (v13)
    {
      v15 = v7;
    }

    v7 = *(v7 + 8 * v17);
  }

  while (v7);
  if (v15 == v8 || v6 < *(v15 + 16))
  {
LABEL_18:
    v15 = v8;
  }

  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v15 + 5), a3);
}

void sub_1C65DE91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  std::__tree<std::string>::destroy(v15 + 8, a15);
  std::__tree<std::string>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadLLMArgsMap(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v46 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"LLMARGSMAP");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"LLMARGSMAP");
      v27[1] = v27;
      Count = CFDictionaryGetCount(v8);
      v9 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count);
      v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, v9);
      MEMORY[0x1EEE9AC00](v11);
      bzero(v10, v9);
      v29 = v10;
      v28 = v10;
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        v12 = 0;
        do
        {
          v13 = *&v29[8 * v12];
          v32 = v12;
          v14 = *&v28[8 * v12];
          v33 = CFDictionaryGetCount(v14);
          v31 = v27;
          v15 = 8 * v33;
          MEMORY[0x1EEE9AC00](v33);
          v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v16, v15);
          MEMORY[0x1EEE9AC00](v17);
          bzero(v16, v15);
          CFDictionaryGetKeysAndValues(v14, v16, v16);
          if (v33 >= 1)
          {
            for (i = 0; i != v33; ++i)
            {
              v19 = *&v16[8 * i];
              v20 = v19;
              v21 = CFArrayGetCount(v20);
              v22 = v21;
              if (v21)
              {
                if (v21 >= 1)
                {
                  v23 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v20, v23);
                    QP::getUTF8StringFromCFString(v13, &v38);
                    QP::getUTF8StringFromCFString(v19, v36);
                    QP::getUTF8StringFromCFString(ValueAtIndex, v34);
                    QP::ParserGrammar::addLLMArgMap(this, &v38, v36, v34);
                    if (v35 < 0)
                    {
                      operator delete(v34[0]);
                    }

                    if (v37 < 0)
                    {
                      operator delete(v36[0]);
                    }

                    if (v39 < 0)
                    {
                      operator delete(v38);
                    }

                    ++v23;
                  }

                  while (v22 != v23);
                }
              }

              else
              {
                v25 = CFStringCreateWithCString(0, "", 0x8000100u);
                QP::getUTF8StringFromCFString(v13, &v44);
                QP::getUTF8StringFromCFString(v19, v42);
                QP::getUTF8StringFromCFString(v25, v40);
                QP::ParserGrammar::addLLMArgMap(this, &v44, v42, v40);
                if (v41 < 0)
                {
                  operator delete(v40[0]);
                }

                if (v43 < 0)
                {
                  operator delete(v42[0]);
                }

                if (v45 < 0)
                {
                  operator delete(v44);
                }
              }
            }
          }

          v12 = v32 + 1;
        }

        while (v32 + 1 != Count);
      }

      result = 1;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DECE0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addLLMArgMap(uint64_t a1, __int128 *a2, void **a3, void **a4)
{
  if (a1 + 464 == std::__tree<std::string>::find<std::string>(a1 + 456, a2))
  {
    v15 = 0;
    v16 = 0;
    v14 = &v15;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a2, &v14);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,std::set<std::string>>>>(a1 + 456, &__p.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(&v18, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(&v14, v15);
    __p.__r_.__value_.__r.__words[0] = a2;
    v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 456, a2);
    v9 = std::__tree<std::string>::find<std::string>(v8 + 56, a3);
    __p.__r_.__value_.__r.__words[0] = a2;
    if (std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 456, a2) + 64 != v9)
    {
      __p.__r_.__value_.__r.__words[0] = a2;
      goto LABEL_7;
    }

    __p.__r_.__value_.__r.__words[0] = a2;
    v13 = std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 456, a2);
    v15 = 0;
    v16 = 0;
    v14 = &v15;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a3, &v14);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<std::string>>>(v13 + 56, &__p.__r_.__value_.__l.__data_);
    std::__tree<std::string>::destroy(&v18, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::destroy(&v14, v15);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
LABEL_7:
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 456, a2);
  __p.__r_.__value_.__r.__words[0] = a3;
  v11 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10 + 56, a3);
  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v11 + 56, a4);
}

void sub_1C65DEF68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  std::pair<std::string,std::set<std::string>>::~pair(va1);
  std::__tree<std::string>::destroy(va, v5);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadLLMRankingArgsMap(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v21 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"LLMRANKINGARGSMAP");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"LLMRANKINGARGSMAP");
      Count = CFDictionaryGetCount(v8);
      MEMORY[0x1EEE9AC00](Count);
      v10 = (&v16 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v10, 8 * Count);
      MEMORY[0x1EEE9AC00](v11);
      v12 = v10;
      bzero(v10, 8 * Count);
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        do
        {
          v13 = *v12;
          QP::getUTF8StringFromCFString(*v10, v18);
          QP::getUTF8StringFromCFString(v13, &__str);
          v20 = v18;
          v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 480, v18);
          std::string::operator=((v14 + 56), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v19 < 0)
          {
            operator delete(v18[0]);
          }

          ++v12;
          ++v10;
          --Count;
        }

        while (Count);
      }

      result = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DF17C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::loadLLMStatusActionMap(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v21 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"LLMENTITYSTATUSARGSACTIONSMAP");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"LLMENTITYSTATUSARGSACTIONSMAP");
      Count = CFDictionaryGetCount(v8);
      MEMORY[0x1EEE9AC00](Count);
      v10 = (&v16 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v10, 8 * Count);
      MEMORY[0x1EEE9AC00](v11);
      v12 = v10;
      bzero(v10, 8 * Count);
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        do
        {
          v13 = *v12;
          QP::getUTF8StringFromCFString(*v10, v18);
          QP::getUTF8StringFromCFString(v13, &__str);
          v20 = v18;
          v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 504, v18);
          std::string::operator=((v14 + 56), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v19 < 0)
          {
            operator delete(v18[0]);
          }

          ++v12;
          ++v10;
          --Count;
        }

        while (Count);
      }

      result = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DF380(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::loadIntentActions(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v38 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"INTENTS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"INTENTS");
      result = CFDictionaryContainsKey(v8, @"ACTIONS");
      if (result)
      {
        v9 = CFDictionaryGetValue(v8, @"ACTIONS");
        v25[1] = v25;
        Count = CFDictionaryGetCount(v9);
        MEMORY[0x1EEE9AC00](Count);
        v11 = (v25 - v10);
        bzero(v25 - v10, v12);
        v26 = v11;
        v27 = v9;
        CFDictionaryGetKeysAndValues(v9, v11, 0);
        if (Count >= 1)
        {
          v13 = 0;
          do
          {
            v30 = v13;
            v14 = v26[v13];
            v31 = CFDictionaryGetValue(v27, v14);
            v15 = CFDictionaryGetCount(v31);
            v29 = v25;
            MEMORY[0x1EEE9AC00](v15);
            v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v17, v16);
            CFDictionaryGetKeysAndValues(v31, v17, 0);
            if (v15 >= 1)
            {
              for (i = 0; i != v15; ++i)
              {
                v19 = *&v17[8 * i];
                v20 = CFDictionaryGetValue(v31, v19);
                v21 = CFArrayGetCount(v20);
                if (v21 >= 1)
                {
                  for (j = 0; j != v21; ++j)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v20, j);
                    QP::getUTF8StringFromCFString(v14, &v36);
                    QP::getUTF8StringFromCFString(v19, v34);
                    QP::getUTF8StringFromCFString(ValueAtIndex, v32);
                    QP::ParserGrammar::addIntentAction(this, &v36, v34, v32);
                    if (v33 < 0)
                    {
                      operator delete(v32[0]);
                    }

                    if (v35 < 0)
                    {
                      operator delete(v34[0]);
                    }

                    if (v37 < 0)
                    {
                      operator delete(v36);
                    }
                  }
                }
              }
            }

            v13 = v30 + 1;
          }

          while (v30 + 1 != Count);
        }

        result = 1;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DF660(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *QP::ParserGrammar::addIntentAction(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v17 = QP::ParserGrammar::symbolID(a1, a3);
  v16 = QP::ParserGrammar::symbolID(a1, a4);
  if (a1 + 416 == std::__tree<std::string>::find<std::string>(a1 + 408, a2))
  {
    v12 = 0;
    v13 = 0;
    v11 = &v12;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a2, &v11);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::set<unsigned short>>>>(a1 + 408, &__p.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(v15, v15[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(&v11, v12);
    __p.__r_.__value_.__r.__words[0] = a2;
    v7 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 408, a2);
    v12 = 0;
    v13 = 0;
    v11 = &v12;
    LOWORD(__p.__r_.__value_.__l.__data_) = v17;
    __p.__r_.__value_.__r.__words[2] = 0;
    v15[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(v7 + 56, &__p);
    std::__tree<unsigned int>::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    std::__tree<unsigned int>::destroy(&v11, v12);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v8 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 408, a2);
  __p.__r_.__value_.__r.__words[0] = &v17;
  v9 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v8 + 56, &v17);
  return std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v9 + 5), &v16);
}

void sub_1C65DF840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<unsigned int>::destroy(v14 + 8, a14);
  std::__tree<unsigned int>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadU2ArgActions(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v25 = *MEMORY[0x1E69E9840];
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (CFDictionaryContainsKey(Value, @"U2ARGACTIONS"))
    {
      v7 = CFDictionaryGetValue(Value, @"U2ARGACTIONS");
      Count = CFDictionaryGetCount(v7);
      v20 = &v20;
      MEMORY[0x1EEE9AC00](Count);
      v10 = (&v21[-1] - v9);
      bzero(&v21[-1] - v9, v11);
      CFDictionaryGetKeysAndValues(v7, v10, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v13 = v10[i];
          v14 = CFDictionaryGetValue(v7, v13);
          v15 = CFArrayGetCount(v14);
          if (v15 >= 1)
          {
            for (j = 0; j != v15; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, j);
              QP::getUTF8StringFromCFString(v13, &v23);
              QP::getUTF8StringFromCFString(ValueAtIndex, v21);
              QP::ParserGrammar::addU2ArgAction(this, &v23, v21);
              if (v22 < 0)
              {
                operator delete(v21[0]);
              }

              if (v24 < 0)
              {
                operator delete(v23);
              }
            }
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1C65DFA4C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *QP::ParserGrammar::addU2ArgAction(uint64_t a1, __int128 *a2, uint64_t a3)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a3);
  if (a1 + 440 == std::__tree<std::string>::find<std::string>(a1 + 432, a2))
  {
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a2, &v7);
    std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<unsigned short>>>(a1 + 432, &__p.__r_.__value_.__l.__data_);
    std::__tree<unsigned int>::destroy(v10, v10[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<unsigned int>::destroy(&v7, v8[0]);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v5 = std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 432, a2);
  return std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(v5 + 56, &SymbolID);
}

void sub_1C65DFB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  std::pair<std::string,std::set<unsigned short>>::~pair(&a12);
  std::__tree<unsigned int>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadActions(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v48 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"ACTIONS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"ACTIONS");
      v27[1] = v27;
      Count = CFDictionaryGetCount(v8);
      MEMORY[0x1EEE9AC00](Count);
      v10 = (v27 - v9);
      bzero(v27 - v9, v11);
      v29 = v8;
      v28 = v10;
      CFDictionaryGetKeysAndValues(v8, v10, 0);
      if (Count >= 1)
      {
        v12 = 0;
        do
        {
          v32 = v12;
          v13 = v28[v12];
          v35 = CFDictionaryGetValue(v29, v13);
          v34 = CFDictionaryGetCount(v35);
          v31 = v27;
          MEMORY[0x1EEE9AC00](v34);
          v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v15, v14);
          v33 = v15;
          CFDictionaryGetKeysAndValues(v35, v15, 0);
          if (v34 >= 1)
          {
            v16 = 0;
            do
            {
              v37 = v16;
              v17 = *&v33[8 * v16];
              v39 = CFDictionaryGetValue(v35, v17);
              v38 = CFDictionaryGetCount(v39);
              v36 = v27;
              MEMORY[0x1EEE9AC00](v38);
              v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
              bzero(v19, v18);
              CFDictionaryGetKeysAndValues(v39, v19, 0);
              if (v38 >= 1)
              {
                for (i = 0; i != v38; ++i)
                {
                  v21 = *&v19[8 * i];
                  v22 = CFDictionaryGetValue(v39, v21);
                  v23 = CFArrayGetCount(v22);
                  if (v23 >= 1)
                  {
                    for (j = 0; j != v23; ++j)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v22, j);
                      QP::getUTF8StringFromCFString(v13, &v46);
                      QP::getUTF8StringFromCFString(v17, v44);
                      QP::getUTF8StringFromCFString(v21, v42);
                      QP::getUTF8StringFromCFString(ValueAtIndex, v40);
                      QP::ParserGrammar::addAction(this, &v46, v44, v42, v40);
                      if (v41 < 0)
                      {
                        operator delete(v40[0]);
                      }

                      if (v43 < 0)
                      {
                        operator delete(v42[0]);
                      }

                      if (v45 < 0)
                      {
                        operator delete(v44[0]);
                      }

                      if (v47 < 0)
                      {
                        operator delete(v46);
                      }
                    }
                  }
                }
              }

              v16 = v37 + 1;
            }

            while (v37 + 1 != v34);
          }

          v12 = v32 + 1;
        }

        while (v32 + 1 != Count);
      }

      result = 1;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65DFF1C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addAction(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void **a5)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a3);
  v21 = QP::ParserGrammar::getSymbolID(a1, a4);
  if (a1 + 368 == std::__tree<std::string>::find<std::string>(a1 + 360, a2))
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a2, &v16);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>(a1 + 360, &__p.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(v20, v20[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v10 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 360, a2);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    LOWORD(__p.__r_.__value_.__l.__data_) = SymbolID;
    __p.__r_.__value_.__r.__words[2] = 0;
    v20[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(v10 + 56, &__p);
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v11 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 360, a2);
    __p.__r_.__value_.__r.__words[0] = &SymbolID;
    v12 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v11 + 56, &SymbolID);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    LOWORD(__p.__r_.__value_.__l.__data_) = v21;
    __p.__r_.__value_.__r.__words[2] = 0;
    v20[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>((v12 + 5), &__p);
    std::__tree<std::string>::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    std::__tree<std::string>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v9 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 360, a2);
    __p.__r_.__value_.__r.__words[0] = &SymbolID;
  }

  else
  {
    v9 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 360, a2);
    __p.__r_.__value_.__r.__words[0] = &SymbolID;
  }

  v13 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v9 + 56, &SymbolID);
  __p.__r_.__value_.__r.__words[0] = &v21;
  v14 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v13 + 5), &v21);
  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v14 + 5), a5);
}

void sub_1C65E0200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  std::__tree<std::string>::destroy(v14 + 8, a14);
  std::__tree<std::string>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadAttributeImpactGroup(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v48 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"ATTRIBUTEIMPACTGROUP");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"ATTRIBUTEIMPACTGROUP");
      v27[1] = v27;
      Count = CFDictionaryGetCount(v8);
      MEMORY[0x1EEE9AC00](Count);
      v10 = (v27 - v9);
      bzero(v27 - v9, v11);
      v29 = v8;
      v28 = v10;
      CFDictionaryGetKeysAndValues(v8, v10, 0);
      if (Count >= 1)
      {
        v12 = 0;
        do
        {
          v32 = v12;
          v13 = v28[v12];
          v35 = CFDictionaryGetValue(v29, v13);
          v34 = CFDictionaryGetCount(v35);
          v31 = v27;
          MEMORY[0x1EEE9AC00](v34);
          v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v15, v14);
          v33 = v15;
          CFDictionaryGetKeysAndValues(v35, v15, 0);
          if (v34 >= 1)
          {
            v16 = 0;
            do
            {
              v37 = v16;
              v17 = *&v33[8 * v16];
              v39 = CFDictionaryGetValue(v35, v17);
              v38 = CFDictionaryGetCount(v39);
              v36 = v27;
              MEMORY[0x1EEE9AC00](v38);
              v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
              bzero(v19, v18);
              CFDictionaryGetKeysAndValues(v39, v19, 0);
              if (v38 >= 1)
              {
                for (i = 0; i != v38; ++i)
                {
                  v21 = *&v19[8 * i];
                  v22 = CFDictionaryGetValue(v39, v21);
                  v23 = CFArrayGetCount(v22);
                  if (v23 >= 1)
                  {
                    for (j = 0; j != v23; ++j)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v22, j);
                      QP::getUTF8StringFromCFString(v13, &v46);
                      QP::getUTF8StringFromCFString(v17, v44);
                      QP::getUTF8StringFromCFString(v21, v42);
                      QP::getUTF8StringFromCFString(ValueAtIndex, v40);
                      QP::ParserGrammar::addImpactGroup(this, &v46, v44, v42, v40);
                      if (v41 < 0)
                      {
                        operator delete(v40[0]);
                      }

                      if (v43 < 0)
                      {
                        operator delete(v42[0]);
                      }

                      if (v45 < 0)
                      {
                        operator delete(v44[0]);
                      }

                      if (v47 < 0)
                      {
                        operator delete(v46);
                      }
                    }
                  }
                }
              }

              v16 = v37 + 1;
            }

            while (v37 + 1 != v34);
          }

          v12 = v32 + 1;
        }

        while (v32 + 1 != Count);
      }

      result = 1;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E05F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addImpactGroup(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void **a5)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a3);
  v21 = QP::ParserGrammar::getSymbolID(a1, a4);
  if (a1 + 392 == std::__tree<std::string>::find<std::string>(a1 + 384, a2))
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a2, &v16);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>(a1 + 384, &__p.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(v20, v20[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v10 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 384, a2);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    LOWORD(__p.__r_.__value_.__l.__data_) = SymbolID;
    __p.__r_.__value_.__r.__words[2] = 0;
    v20[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(v10 + 56, &__p);
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v11 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 384, a2);
    __p.__r_.__value_.__r.__words[0] = &SymbolID;
    v12 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v11 + 56, &SymbolID);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    LOWORD(__p.__r_.__value_.__l.__data_) = v21;
    __p.__r_.__value_.__r.__words[2] = 0;
    v20[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>((v12 + 5), &__p);
    std::__tree<std::string>::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    std::__tree<std::string>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v9 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 384, a2);
    __p.__r_.__value_.__r.__words[0] = &SymbolID;
  }

  else
  {
    v9 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 384, a2);
    __p.__r_.__value_.__r.__words[0] = &SymbolID;
  }

  v13 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v9 + 56, &SymbolID);
  __p.__r_.__value_.__r.__words[0] = &v21;
  v14 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v13 + 5), &v21);
  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v14 + 5), a5);
}

void sub_1C65E08D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  std::__tree<std::string>::destroy(v14 + 8, a14);
  std::__tree<std::string>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadRankingPhraseWeights(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  *&valuePtr[5] = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"RANKINGPHRASEWEIGHTS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"RANKINGPHRASEWEIGHTS");
      Count = CFDictionaryGetCount(v8);
      MEMORY[0x1EEE9AC00](Count);
      v11 = (&v25[-1] - v10);
      bzero(&v25[-1] - v10, v12);
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      if (Count >= 1)
      {
        do
        {
          v13 = *v11;
          v14 = CFDictionaryGetValue(v8, *v11);
          v15 = v14;
          if (v14)
          {
            if (CFArrayGetCount(v14) == 2)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
              v17 = CFArrayGetValueAtIndex(v15, 1);
              if (ValueAtIndex)
              {
                v18 = v17;
                v19 = CFGetTypeID(ValueAtIndex);
                if (v19 == CFNumberGetTypeID())
                {
                  if (v18)
                  {
                    v20 = CFGetTypeID(v18);
                    if (v20 == CFNumberGetTypeID())
                    {
                      *valuePtr = 0;
                      CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr[1]);
                      CFNumberGetValue(v18, kCFNumberFloatType, valuePtr);
                      QP::getUTF8StringFromCFString(v13, v25);
                      v21 = *valuePtr;
                      *&valuePtr[3] = v25;
                      v22 = std::__tree<std::__value_type<std::string,std::pair<float,float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<float,float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<float,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 600, v25);
                      *(v22 + 56) = HIDWORD(v21);
                      *(v22 + 60) = v21;
                      if (v26 < 0)
                      {
                        operator delete(v25[0]);
                      }
                    }
                  }
                }
              }
            }
          }

          ++v11;
          --Count;
        }

        while (Count);
      }

      result = 1;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E0B60(_Unwind_Exception *exception_object)
{
  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::loadRankingWeights(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v29 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"RANKINGWEIGHTS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"RANKINGWEIGHTS");
      Count = CFDictionaryGetCount(v8);
      v22 = &v22;
      MEMORY[0x1EEE9AC00](Count);
      v11 = (&v22 - v10);
      bzero(&v22 - v10, v12);
      v23 = v8;
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v14 = v11[i];
          v15 = CFDictionaryGetValue(v23, v14);
          v16 = CFDictionaryGetCount(v15);
          MEMORY[0x1EEE9AC00](v16);
          v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
          bzero(v18, v17);
          CFDictionaryGetKeysAndValues(v15, v18, 0);
          if (v16 >= 1)
          {
            do
            {
              v19 = *v18;
              v20 = CFDictionaryGetValue(v15, *v18);
              valuePtr = 0.0;
              CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
              QP::getUTF8StringFromCFString(v14, v26);
              QP::getUTF8StringFromCFString(v19, v24);
              QP::ParserGrammar::addRankingWeights(this, v26, v24, valuePtr);
              if (v25 < 0)
              {
                operator delete(v24[0]);
              }

              if (v27 < 0)
              {
                operator delete(v26[0]);
              }

              ++v18;
              --v16;
            }

            while (v16);
          }
        }
      }

      result = 1;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E0DA8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addRankingWeights(uint64_t a1, uint64_t a2, void **a3, float a4)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v20 = SymbolID;
  v8 = *(a1 + 584);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 584;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= SymbolID;
    v12 = v10 < SymbolID;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == a1 + 584 || SymbolID < *(v9 + 32))
  {
LABEL_9:
    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    LOWORD(v17) = SymbolID;
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(a1 + 576, &v17);
    std::__tree<std::string>::destroy(&v18, v19[0]);
    std::__tree<std::string>::destroy(&v15, v16[0]);
  }

  v17 = &v20;
  v13 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 576, &v20);
  v17 = a3;
  result = std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v13 + 5), a3);
  *(result + 56) = a4;
  return result;
}

void sub_1C65E0EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  std::__tree<std::string>::destroy(v14 + 8, a14);
  std::__tree<std::string>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadImpactGroupCoefficients(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v29 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"IMPACTGROUPCOEFFICIENT");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"IMPACTGROUPCOEFFICIENT");
      Count = CFDictionaryGetCount(v8);
      v22 = &v22;
      MEMORY[0x1EEE9AC00](Count);
      v11 = (&v22 - v10);
      bzero(&v22 - v10, v12);
      v23 = v8;
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v14 = v11[i];
          v15 = CFDictionaryGetValue(v23, v14);
          v16 = CFDictionaryGetCount(v15);
          MEMORY[0x1EEE9AC00](v16);
          v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
          bzero(v18, v17);
          CFDictionaryGetKeysAndValues(v15, v18, 0);
          if (v16 >= 1)
          {
            do
            {
              v19 = *v18;
              v20 = CFDictionaryGetValue(v15, *v18);
              valuePtr = 0.0;
              CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
              QP::getUTF8StringFromCFString(v14, v26);
              QP::getUTF8StringFromCFString(v19, v24);
              QP::ParserGrammar::addImpactGroupCoefficients(this, v26, v24, valuePtr);
              if (v25 < 0)
              {
                operator delete(v24[0]);
              }

              if (v27 < 0)
              {
                operator delete(v26[0]);
              }

              ++v18;
              --v16;
            }

            while (v16);
          }
        }
      }

      result = 1;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E1144(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *QP::ParserGrammar::addImpactGroupCoefficients(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = QP::ParserGrammar::symbolID(a1, a2);
  v21 = v7;
  v20 = QP::ParserGrammar::symbolID(a1, a3);
  v8 = *(a1 + 632);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 632;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == a1 + 632 || v7 < *(v9 + 32))
  {
LABEL_9:
    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    LOWORD(v17) = v7;
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(a1 + 624, &v17);
    std::__tree<unsigned int>::destroy(&v18, v19[0]);
    std::__tree<unsigned int>::destroy(&v15, v16[0]);
  }

  v17 = &v21;
  v13 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 624, &v21);
  v17 = &v20;
  result = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v13 + 5), &v20);
  *(result + 8) = a4;
  return result;
}

void sub_1C65E12B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<unsigned int>::destroy(v14 + 8, a14);
  std::__tree<unsigned int>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadProperties(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v42 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"PROPS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"PROPS");
      Count = CFDictionaryGetCount(v8);
      v32[1] = v32;
      MEMORY[0x1EEE9AC00](Count);
      v11 = (v32 - v10);
      bzero(v32 - v10, v12);
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v14 = v11[i];
          if (CFStringsAreEqual(v14, @"RequiresComplement"))
          {
            v15 = CFDictionaryGetValue(v8, v14);
            v16 = CFDictionaryGetCount(v15);
            MEMORY[0x1EEE9AC00](v16);
            v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
            bzero(v18, v17);
            CFDictionaryGetKeysAndValues(v15, v18, 0);
            if (v16 >= 1)
            {
              do
              {
                QP::getUTF8StringFromCFString(*v18, v39);
                SymbolID = QP::ParserGrammar::getSymbolID(this, v39);
                std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this + 912, &SymbolID);
                if (v40 < 0)
                {
                  operator delete(v39[0]);
                }

                ++v18;
                --v16;
              }

              while (v16);
            }
          }

          else if (CFStringsAreEqual(v14, @"IsExtended"))
          {
            v19 = CFDictionaryGetValue(v8, v14);
            v20 = CFDictionaryGetCount(v19);
            MEMORY[0x1EEE9AC00](v20);
            v22 = (v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
            bzero(v22, v21);
            CFDictionaryGetKeysAndValues(v19, v22, 0);
            if (v20 >= 1)
            {
              do
              {
                QP::getUTF8StringFromCFString(*v22, v37);
                SymbolID = QP::ParserGrammar::getSymbolID(this, v37);
                std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this + 984, &SymbolID);
                if (v38 < 0)
                {
                  operator delete(v37[0]);
                }

                ++v22;
                --v20;
              }

              while (v20);
            }
          }

          else if (CFStringsAreEqual(v14, @"IsParent"))
          {
            v23 = CFDictionaryGetValue(v8, v14);
            v24 = CFDictionaryGetCount(v23);
            MEMORY[0x1EEE9AC00](v24);
            v26 = (v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
            bzero(v26, v25);
            CFDictionaryGetKeysAndValues(v23, v26, 0);
            if (v24 >= 1)
            {
              do
              {
                QP::getUTF8StringFromCFString(*v26, v35);
                SymbolID = QP::ParserGrammar::getSymbolID(this, v35);
                std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this + 984, &SymbolID);
                if (v36 < 0)
                {
                  operator delete(v35[0]);
                }

                ++v26;
                --v24;
              }

              while (v24);
            }
          }

          else if (CFStringsAreEqual(v14, @"IsCombinable"))
          {
            v27 = CFDictionaryGetValue(v8, v14);
            v28 = CFDictionaryGetCount(v27);
            MEMORY[0x1EEE9AC00](v28);
            v30 = (v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
            bzero(v30, v29);
            CFDictionaryGetKeysAndValues(v27, v30, 0);
            if (v28 >= 1)
            {
              do
              {
                QP::getUTF8StringFromCFString(*v30, v33);
                SymbolID = QP::ParserGrammar::getSymbolID(this, v33);
                std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this + 888, &SymbolID);
                if (v34 < 0)
                {
                  operator delete(v33[0]);
                }

                ++v30;
                --v28;
              }

              while (v28);
            }
          }
        }
      }

      result = 1;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E1734(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::loadRankingTranslations(const void **this, CFDictionaryRef theDict, const __CFString *key)
{
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"RANKINGTRANSLATIONS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"RANKINGTRANSLATIONS");
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v8);
      nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 9, Copy);
      return 1;
    }
  }

  return result;
}

uint64_t QP::ParserGrammar::loadFileExtensions(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v24 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"FILE-EXTENSIONS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"FILE-EXTENSIONS");
      Count = CFDictionaryGetCount(v8);
      v19 = &v19;
      MEMORY[0x1EEE9AC00](Count);
      v10 = &v20[-1] - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, 8 * Count);
      MEMORY[0x1EEE9AC00](v11);
      bzero(v10, 8 * Count);
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v13 = *&v10[8 * i];
          v14 = v13;
          v15 = CFArrayGetCount(v14);
          if (v15 >= 1)
          {
            for (j = 0; j != v15; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, j);
              QP::getUTF8StringFromCFString(v13, v22);
              QP::getUTF8StringFromCFString(ValueAtIndex, v20);
              QP::ParserGrammar::addFileExtension(this, v22, v20);
              if (v21 < 0)
              {
                operator delete(v20[0]);
              }

              if (v23 < 0)
              {
                operator delete(v22[0]);
              }
            }
          }
        }
      }

      result = 1;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E1A18(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addFileExtension(uint64_t a1, uint64_t a2, void **a3)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v6 = SymbolID;
  v7 = (a1 + 272);
  v8 = *(a1 + 272);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 272;
  v10 = *(a1 + 272);
  do
  {
    v11 = *(v10 + 32);
    v12 = v11 >= SymbolID;
    v13 = v11 < SymbolID;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * v13);
  }

  while (v10);
  if (v9 == v7 || SymbolID < *(v9 + 32))
  {
LABEL_9:
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    v20 = SymbolID;
    v22[0] = 0;
    v22[1] = 0;
    v21 = v22;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(a1 + 264, &v20);
    std::__tree<std::string>::destroy(&v21, v22[0]);
    std::__tree<std::string>::destroy(&v18, v19[0]);
    v8 = *v7;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  v14 = a1 + 272;
  do
  {
    v15 = *(v8 + 32);
    v12 = v15 >= v6;
    v16 = v15 < v6;
    if (v12)
    {
      v14 = v8;
    }

    v8 = *(v8 + 8 * v16);
  }

  while (v8);
  if (v14 == v7 || v6 < *(v14 + 32))
  {
LABEL_18:
    v14 = a1 + 272;
  }

  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v14 + 40, a3);
}

void sub_1C65E1B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  std::__tree<std::string>::destroy(v15 + 8, a15);
  std::__tree<std::string>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadValues(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v30 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"VALUES");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"VALUES");
      v22[1] = v22;
      Count = CFDictionaryGetCount(v8);
      v9 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count);
      v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, v9);
      MEMORY[0x1EEE9AC00](v11);
      bzero(v10, v9);
      v23 = v10;
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v13 = *&v23[8 * i];
          v14 = *&v10[8 * i];
          v15 = CFDictionaryGetCount(v14);
          MEMORY[0x1EEE9AC00](v15);
          v16 = (v22 - ((8 * v15 + 15) & 0xFFFFFFFFFFFFFFF0));
          bzero(v16, 8 * v15);
          MEMORY[0x1EEE9AC00](v17);
          v18 = v16;
          bzero(v16, 8 * v15);
          CFDictionaryGetKeysAndValues(v14, v16, v16);
          if (v15 >= 1)
          {
            do
            {
              v19 = *v16;
              v20 = *v18;
              QP::getUTF8StringFromCFString(v13, v28);
              QP::getUTF8StringFromCFString(v19, v26);
              QP::getUTF8StringFromCFString(v20, &v25);
              QP::ParserGrammar::addValue(this, v28, v26, &v25);
              if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v25.__r_.__value_.__l.__data_);
              }

              if (v27 < 0)
              {
                operator delete(v26[0]);
              }

              if (v29 < 0)
              {
                operator delete(v28[0]);
              }

              ++v18;
              ++v16;
              --v15;
            }

            while (v15);
          }
        }
      }

      result = 1;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E1E24(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void QP::ParserGrammar::addValue(uint64_t a1, uint64_t a2, void *a3, const std::string *a4)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v27 = SymbolID;
  v9 = *(a1 + 560);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = a1 + 560;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= SymbolID;
    v13 = v11 < SymbolID;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == a1 + 560 || SymbolID < *(v10 + 32))
  {
LABEL_9:
    *&v24.__r_.__value_.__r.__words[1] = 0uLL;
    v24.__r_.__value_.__r.__words[0] = &v24.__r_.__value_.__l.__size_;
    LOWORD(__p[0]) = SymbolID;
    v26[0] = 0;
    v26[1] = 0;
    __p[1] = v26;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(a1 + 552, __p);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p[1], v26[0]);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v24, v24.__r_.__value_.__l.__size_);
  }

  __p[0] = &v27;
  v14 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 552, &v27);
  __p[0] = a3;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v14 + 5), a3);
  std::string::operator=((v15 + 56), a4);
  if (*(a2 + 23) >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  memset(&v24, 0, sizeof(v24));
  std::string::basic_string[abi:ne200100](&v24, v16 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v24;
  }

  else
  {
    v17 = v24.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    memmove(v17, v18, v16);
  }

  *(&v17->__r_.__value_.__l.__data_ + v16) = 45;
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
    v21 = a3[1];
  }

  v22 = std::string::append(&v24, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v26[0] = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  QP::ParserGrammar::getSymbolID(a1, __p);
  if (SHIBYTE(v26[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C65E2068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, void *a18)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v18 + 8, a18);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadCategories(QP::ParserGrammar *this, CFDictionaryRef theDict)
{
  v22 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, @"GROUPINGS");
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, @"GROUPINGS");
    result = CFDictionaryContainsKey(Value, @"ios");
    if (result)
    {
      result = CFDictionaryGetValue(Value, @"ios");
      if (result)
      {
        v6 = result;
        Count = CFDictionaryGetCount(result);
        v17 = &v17;
        MEMORY[0x1EEE9AC00](Count);
        v8 = &v18[-1] - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v8, 8 * Count);
        MEMORY[0x1EEE9AC00](v9);
        bzero(v8, 8 * Count);
        CFDictionaryGetKeysAndValues(v6, v8, v8);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v11 = *&v8[8 * i];
            v12 = v11;
            v13 = CFArrayGetCount(v12);
            if (v13 >= 1)
            {
              for (j = 0; j != v13; ++j)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v12, j);
                QP::getUTF8StringFromCFString(v11, v20);
                QP::getUTF8StringFromCFString(ValueAtIndex, v18);
                QP::ParserGrammar::addCategory(this, v20, v18);
                if (v19 < 0)
                {
                  operator delete(v18[0]);
                }

                if (v21 < 0)
                {
                  operator delete(v20[0]);
                }
              }
            }
          }
        }

        result = 1;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E22AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::addCategory(uint64_t a1, uint64_t a2, void **a3)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v6 = SymbolID;
  v9 = *(a1 + 248);
  v8 = (a1 + 248);
  v7 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v7;
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= SymbolID;
    v14 = v12 < SymbolID;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 == v8 || SymbolID < *(v10 + 16))
  {
LABEL_9:
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    v21 = SymbolID;
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>((v8 - 1), &v21);
    std::__tree<std::string>::destroy(&v22, v23[0]);
    std::__tree<std::string>::destroy(&v19, v20[0]);
    v7 = *v8;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v15 = v8;
  do
  {
    v16 = *(v7 + 32);
    v13 = v16 >= v6;
    v17 = v16 < v6;
    if (v13)
    {
      v15 = v7;
    }

    v7 = *(v7 + 8 * v17);
  }

  while (v7);
  if (v15 == v8 || v6 < *(v15 + 16))
  {
LABEL_18:
    v15 = v8;
  }

  return std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v15 + 5), a3);
}

void sub_1C65E23F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  std::__tree<std::string>::destroy(v15 + 8, a15);
  std::__tree<std::string>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadCompletions(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  if (CFDictionaryContainsKey(theDict, key))
  {
    Value = CFDictionaryGetValue(theDict, key);
    v7 = CFGetTypeID(Value);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = CFDictionaryGetValue(Value, @"COMPLETIONS");
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v9);
          if (Count >= 1)
          {
            v12 = Count;
            v13 = 0;
            v14 = *MEMORY[0x1E695E480];
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
              MutableCopy = CFStringCreateMutableCopy(v14, 0, ValueAtIndex);
              v23 = MutableCopy;
              CFStringLowercase(MutableCopy, *(*(this + 5) + 112));
              v24.length = CFStringGetLength(MutableCopy);
              v24.location = 0;
              CFStringFindAndReplace(MutableCopy, @"’", @"'", v24, 0);
              __p = 0;
              v21 = 0;
              v22 = 0;
              QP::getUTF8StringFromCFString(MutableCopy, &__p);
              v17 = v22 >= 0 ? &__p : __p;
              v18 = v22 >= 0 ? HIBYTE(v22) : v21;
              nlp::BurstTrieAdd(*(this + 1), v17, v18, 1);
              if ((SHIBYTE(v22) & 0x80000000) == 0)
              {
                break;
              }

              operator delete(__p);
              if (MutableCopy)
              {
                goto LABEL_17;
              }

LABEL_18:
              if (v12 == ++v13)
              {
                return 0;
              }
            }

            if (!MutableCopy)
            {
              goto LABEL_18;
            }

LABEL_17:
            CFRelease(MutableCopy);
            goto LABEL_18;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t QP::ParserGrammar::loadTokens(const void **this, CFDictionaryRef theDict, const __CFString *key)
{
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    v8 = CFGetTypeID(Value);
    if (v8 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(Value, @"TOKEN_INFO");
      if (!result)
      {
        return result;
      }

      v9 = result;
      v10 = CFGetTypeID(result);
      if (v10 == CFDictionaryGetTypeID())
      {
        v11 = *MEMORY[0x1E695E480];
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v9);
        nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 10, Copy);
        v13 = CFDictionaryGetValue(Value, @"TOKEN_TEXT");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFDictionaryGetTypeID())
          {
            v16 = CFDictionaryCreateCopy(v11, v14);
            nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 11, v16);
            return 1;
          }
        }

        Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 11, Mutable);
      }
    }

    return 0;
  }

  return result;
}

uint64_t QP::ParserGrammar::loadAttributes(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v36 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"ATTRIBUTES");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"ATTRIBUTES");
      v24[1] = v24;
      Count = CFDictionaryGetCount(v8);
      v9 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count);
      v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, v9);
      MEMORY[0x1EEE9AC00](v11);
      bzero(v10, v9);
      v25 = v10;
      v26 = v8;
      CFDictionaryGetKeysAndValues(v8, v10, v10);
      if (Count >= 1)
      {
        v12 = 0;
        do
        {
          v29 = v12;
          v13 = *&v25[8 * v12];
          v30 = CFDictionaryGetValue(v26, v13);
          v14 = CFDictionaryGetCount(v30);
          v28 = v24;
          MEMORY[0x1EEE9AC00](v14);
          v15 = v24 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v15, 8 * v14);
          MEMORY[0x1EEE9AC00](v16);
          bzero(v15, 8 * v14);
          CFDictionaryGetKeysAndValues(v30, v15, v15);
          if (v14 >= 1)
          {
            for (i = 0; i != v14; ++i)
            {
              v18 = *&v15[8 * i];
              v19 = CFDictionaryGetValue(v30, v18);
              v20 = CFArrayGetCount(v19);
              if (v20 >= 1)
              {
                for (j = 0; j != v20; ++j)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v19, j);
                  QP::getUTF8StringFromCFString(v18, v34);
                  QP::getUTF8StringFromCFString(ValueAtIndex, v32);
                  QP::getUTF8StringFromCFString(v13, &v31);
                  QP::ParserGrammar::setAttribute(this, v34, v32, &v31);
                  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v31.__r_.__value_.__l.__data_);
                  }

                  if (v33 < 0)
                  {
                    operator delete(v32[0]);
                  }

                  if (v35 < 0)
                  {
                    operator delete(v34[0]);
                  }
                }
              }
            }
          }

          v12 = v29 + 1;
        }

        while (v29 + 1 != Count);
      }

      result = 1;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E2A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

std::string *QP::ParserGrammar::setAttribute(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4)
{
  v7 = QP::ParserGrammar::symbolID(a1, a2);
  v25 = QP::ParserGrammar::symbolID(a1, a3);
  v8 = (a1 + 344);
  v9 = *(a1 + 344);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = a1 + 344;
  v11 = *(a1 + 344);
  do
  {
    v12 = *(v11 + 32);
    v13 = v12 >= v7;
    v14 = v12 < v7;
    if (v13)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v10 == v8 || v7 < *(v10 + 32))
  {
LABEL_9:
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    LOWORD(v22) = v7;
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(a1 + 336, &v22);
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v23, v24[0]);
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v20, v21[0]);
    v9 = *v8;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v15 = a1 + 344;
  do
  {
    v16 = *(v9 + 32);
    v13 = v16 >= v7;
    v17 = v16 < v7;
    if (v13)
    {
      v15 = v9;
    }

    v9 = *(v9 + 8 * v17);
  }

  while (v9);
  if (v15 == v8 || v7 < *(v15 + 32))
  {
LABEL_18:
    v15 = a1 + 344;
  }

  v22 = &v25;
  v18 = std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v15 + 40, &v25);
  return std::string::operator=((v18 + 5), a4);
}

void sub_1C65E2BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(v14 + 8, a14);
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::loadSuggestions(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v57 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    v43 = this;
    v7 = *(this + 5);
    v8 = *(v7 + 160);
    v9 = 152;
    if (!*(v7 + 152))
    {
      v9 = 136;
    }

    v47 = *(v7 + v9);
    v10 = 160;
    if (!v8)
    {
      v10 = 144;
    }

    v11 = *(v7 + v10);
    result = CFDictionaryGetValue(theDict, key);
    if (result)
    {
      v12 = result;
      v13 = CFGetTypeID(result);
      if (v13 != CFDictionaryGetTypeID())
      {
        goto LABEL_39;
      }

      result = CFDictionaryContainsKey(v12, @"SUGGESTIONS");
      if (!result)
      {
        goto LABEL_40;
      }

      result = CFDictionaryGetValue(v12, @"SUGGESTIONS");
      if (!result)
      {
        goto LABEL_40;
      }

      v14 = result;
      v15 = CFGetTypeID(result);
      if (v15 != CFDictionaryGetTypeID())
      {
LABEL_39:
        result = 0;
        goto LABEL_40;
      }

      v38[0] = v38;
      Count = CFDictionaryGetCount(v14);
      MEMORY[0x1EEE9AC00](Count);
      v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v40 = v14;
      v39 = v17;
      CFDictionaryGetKeysAndValues(v14, v17, 0);
      if (Count >= 1)
      {
        v18 = 0;
        while (1)
        {
          v42 = v18;
          v44 = *&v39[8 * v18];
          Value = CFDictionaryGetValue(v40, v44);
          v19 = CFGetTypeID(Value);
          if (v19 == CFDictionaryGetTypeID())
          {
            v46 = CFDictionaryGetCount(Value);
            v38[1] = v38;
            MEMORY[0x1EEE9AC00](v46);
            v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v21, v20);
            v45 = v21;
            CFDictionaryGetKeysAndValues(Value, v21, 0);
            if (v46 >= 1)
            {
              break;
            }
          }

LABEL_37:
          v18 = v42 + 1;
          if (v42 + 1 == Count)
          {
            goto LABEL_38;
          }
        }

        v22 = 0;
        while (1)
        {
          v23 = *&v45[8 * v22];
          v24 = CFDictionaryGetValue(Value, v23);
          v25 = v24;
          if (v24)
          {
            v26 = CFGetTypeID(v24);
            if (v26 == CFDictionaryGetTypeID())
            {
              v27 = CFDictionaryGetCount(v25);
              MEMORY[0x1EEE9AC00](v27);
              v29 = (v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
              bzero(v29, v28);
              CFDictionaryGetKeysAndValues(v25, v29, 0);
              if (v27 >= 1)
              {
                break;
              }
            }
          }

LABEL_36:
          if (++v22 == v46)
          {
            goto LABEL_37;
          }
        }

        while (1)
        {
          v30 = *v29;
          v31 = CFDictionaryGetValue(v25, *v29);
          v32 = v31;
          if (v31)
          {
            v33 = CFGetTypeID(v31);
            if (v33 == CFDictionaryGetTypeID())
            {
              if (CFDictionaryContainsKey(v32, v11))
              {
                v34 = CFDictionaryGetValue(v32, v11);
                v35 = v34;
                if (v34)
                {
                  goto LABEL_26;
                }
              }

              else if (CFDictionaryContainsKey(v32, v47))
              {
                v34 = CFDictionaryGetValue(v32, v47);
                v35 = v34;
                if (v34)
                {
LABEL_26:
                  v36 = CFGetTypeID(v34);
                  if (v36 == CFStringGetTypeID())
                  {
                    QP::getUTF8StringFromCFString(v44, &v55);
                    QP::getUTF8StringFromCFString(v23, v53);
                    QP::getUTF8StringFromCFString(v30, v51);
                    QP::getUTF8StringFromCFString(v35, v49);
                    QP::ParserGrammar::setSuggestion(v43, &v55, v53, v51, v49);
                    if (v50 < 0)
                    {
                      operator delete(v49[0]);
                    }

                    if (v52 < 0)
                    {
                      operator delete(v51[0]);
                    }

                    if (v54 < 0)
                    {
                      operator delete(v53[0]);
                    }

                    if (v56 < 0)
                    {
                      operator delete(v55);
                    }
                  }
                }
              }
            }
          }

          ++v29;
          if (!--v27)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_38:
      result = 1;
    }
  }

LABEL_40:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E303C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void QP::ParserGrammar::setSuggestion(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = QP::ParserGrammar::symbolID(a1, a3);
  v9 = QP::ParserGrammar::symbolID(a1, a4);
  v21 = v9;
  if (a1 + 536 == std::__tree<std::string>::find<std::string>(a1 + 528, a2))
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(&__p, a2, &v16);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>(a1 + 528, &__p.__r_.__value_.__l.__data_);
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(v20, v20[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v13 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 528, a2);
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    LOWORD(__p.__r_.__value_.__l.__data_) = v22;
    __p.__r_.__value_.__r.__words[2] = 0;
    v20[0] = 0;
    __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(v13 + 56, &__p);
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v16, v17);
    __p.__r_.__value_.__r.__words[0] = a2;
    v14 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 528, a2);
    __p.__r_.__value_.__r.__words[0] = &v22;
    v15 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v14 + 56, &v22);
    LOWORD(__p.__r_.__value_.__l.__data_) = v9;
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *a5, *(a5 + 8));
    }

    else
    {
      *&__p.__r_.__value_.__r.__words[1] = *a5;
      v20[0] = *(a5 + 16);
    }

    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::string>>((v15 + 5), &__p);
    if (SHIBYTE(v20[0]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v10 = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 528, a2);
    v11 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v10 + 56, &v22);
    __p.__r_.__value_.__r.__words[0] = &v21;
    v12 = std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((v11 + 5), &v21);
    std::string::operator=((v12 + 5), a5);
  }
}

void sub_1C65E32FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::loadTranslations(const void **this, CFDictionaryRef theDict, const __CFString *key)
{
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"TRANSLATIONS");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"TRANSLATIONS");
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v8);
      nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 8, Copy);
      return 1;
    }
  }

  return result;
}

uint64_t QP::ParserGrammar::loadReplacements(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  v21 = *MEMORY[0x1E69E9840];
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"REPLACEMENTS");
    if (result)
    {
      result = CFDictionaryGetValue(Value, @"REPLACEMENTS");
      if (result)
      {
        v8 = result;
        v9 = CFGetTypeID(result);
        if (v9 == CFDictionaryGetTypeID())
        {
          Count = CFDictionaryGetCount(v8);
          MEMORY[0x1EEE9AC00](Count);
          v11 = (&v17[-1] - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
          bzero(v11, 8 * Count);
          MEMORY[0x1EEE9AC00](v12);
          v13 = v11;
          bzero(v11, 8 * Count);
          CFDictionaryGetKeysAndValues(v8, v11, v11);
          if (Count >= 1)
          {
            do
            {
              v14 = *v13;
              QP::getUTF8StringFromCFString(*v11, v19);
              QP::getUTF8StringFromCFString(v14, v17);
              QP::ParserGrammar::setReplacement(this, v19, v17);
              if (v18 < 0)
              {
                operator delete(v17[0]);
              }

              if (v20 < 0)
              {
                operator delete(v19[0]);
              }

              ++v13;
              ++v11;
              --Count;
            }

            while (Count);
          }

          result = 1;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C65E35B8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *QP::ParserGrammar::setReplacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolID = QP::ParserGrammar::getSymbolID(a1, a2);
  v7 = SymbolID | (QP::ParserGrammar::getSymbolID(a1, a3) << 16);
  return std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,unsigned short>>(a1 + 312, &v7);
}

uint64_t QP::ParserGrammar::loadIgnoredTerms(QP::ParserGrammar *this, CFDictionaryRef theDict, const __CFString *key)
{
  result = CFDictionaryContainsKey(theDict, key);
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, key);
    result = CFDictionaryContainsKey(Value, @"IGNORE");
    if (result)
    {
      v8 = CFDictionaryGetValue(Value, @"IGNORE");
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
          QP::getUTF8StringFromCFString(ValueAtIndex, __p);
          v13 = v16;
          v14 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v13 = __p[1];
          }

          if (v13)
          {
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this + 120, __p);
            v14 = v16;
          }

          if ((v14 & 0x80) != 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      return 1;
    }
  }

  return result;
}

void sub_1C65E3740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::fallbackToCFG(CFURLRef *this, BOOL a2)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = this + 7;
  v6 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x1E695E480], this[7]);
  v7 = CFURLCreateCopyAppendingPathComponent(v4, v6, @"cfg.plist", 0);
  v8 = CFURLGetString(v7);
  Length = CFStringGetLength(v8);
  MutableCopy = CFStringCreateMutableCopy(v4, Length, v8);
  CFRelease(v6);
  CFRelease(v7);
  v14.length = CFStringGetLength(MutableCopy);
  v14.location = 0;
  CFStringFindAndReplace(MutableCopy, @"file://", &stru_1F45E9EA0, v14, 0);
  if (grammarLogger(void)::token != -1)
  {
    QP::ParserGrammar::loadParserGrammarResource();
  }

  v11 = grammarLogger(void)::log;
  if (os_log_type_enabled(grammarLogger(void)::log, OS_LOG_TYPE_ERROR))
  {
    QP::ParserGrammar::fallbackToCFG(v5, MutableCopy, v11);
  }

  v12 = CFURLCreateWithString(v4, MutableCopy, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(v5, v12);
  CFRelease(MutableCopy);
  return QP::ParserGrammar::loadResources(this, a2);
}

void QP::ParserGrammar::addSymbol(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  if (a1 + 176 == std::__tree<std::string>::find<std::string>(a1 + 168, a2))
  {
    v4 = *(a1 + 160);
    v5 = strlen(kQPSymbolNone);
    v6 = v5;
    v7 = *(a2 + 23);
    if (v7 < 0)
    {
      if (v5 != *(a2 + 8))
      {
        goto LABEL_14;
      }

      if (v5 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *a2;
    }

    else
    {
      v8 = a2;
      if (v6 != v7)
      {
        goto LABEL_14;
      }
    }

    if (!memcmp(v8, kQPSymbolNone, v6))
    {
      v4 = kQPSymbolIdNone;
    }

LABEL_14:
    v9 = strlen(kQPSymbolRoot);
    v10 = v9;
    if ((v7 & 0x80000000) != 0)
    {
      if (v9 != *(a2 + 8))
      {
        goto LABEL_22;
      }

      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v11 = *a2;
    }

    else
    {
      v11 = a2;
      if (v10 != v7)
      {
        goto LABEL_22;
      }
    }

    if (!memcmp(v11, kQPSymbolRoot, v10))
    {
      v4 = kQPSymbolIdRoot;
    }

LABEL_22:
    v12 = strlen(kQPSymbolTerminal);
    v13 = v12;
    if ((v7 & 0x80000000) != 0)
    {
      if (v12 != *(a2 + 8))
      {
        goto LABEL_30;
      }

      if (v12 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *a2;
    }

    else
    {
      v14 = a2;
      if (v13 != v7)
      {
        goto LABEL_30;
      }
    }

    if (!memcmp(v14, kQPSymbolTerminal, v13))
    {
      v4 = kQPSymbolIdTerminal;
    }

LABEL_30:
    v15 = strlen(kQPSymbolAirline);
    v16 = v15;
    if ((v7 & 0x80000000) != 0)
    {
      if (v15 != *(a2 + 8))
      {
        goto LABEL_38;
      }

      if (v15 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v17 = *a2;
    }

    else
    {
      v17 = a2;
      if (v16 != v7)
      {
        goto LABEL_38;
      }
    }

    if (!memcmp(v17, kQPSymbolAirline, v16))
    {
      v4 = kQPSymbolIdAirline;
    }

LABEL_38:
    v18 = strlen(kQPSymbolAirport);
    v19 = v18;
    if ((v7 & 0x80000000) != 0)
    {
      if (v18 != *(a2 + 8))
      {
        goto LABEL_46;
      }

      if (v18 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v20 = *a2;
    }

    else
    {
      v20 = a2;
      if (v19 != v7)
      {
        goto LABEL_46;
      }
    }

    if (!memcmp(v20, kQPSymbolAirport, v19))
    {
      v4 = kQPSymbolIdAirport;
    }

LABEL_46:
    v21 = strlen(kQPSymbolAirportCode);
    v22 = v21;
    if ((v7 & 0x80000000) != 0)
    {
      if (v21 != *(a2 + 8))
      {
        goto LABEL_54;
      }

      if (v21 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v23 = *a2;
    }

    else
    {
      v23 = a2;
      if (v22 != v7)
      {
        goto LABEL_54;
      }
    }

    if (!memcmp(v23, kQPSymbolAirportCode, v22))
    {
      v4 = kQPSymbolIdAirportCode;
    }

LABEL_54:
    v24 = strlen(kQPSymbolAppName);
    v25 = v24;
    if ((v7 & 0x80000000) != 0)
    {
      if (v24 != *(a2 + 8))
      {
        goto LABEL_62;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v26 = *a2;
    }

    else
    {
      v26 = a2;
      if (v25 != v7)
      {
        goto LABEL_62;
      }
    }

    if (!memcmp(v26, kQPSymbolAppName, v25))
    {
      v4 = kQPSymbolIdAppName;
    }

LABEL_62:
    v27 = strlen(kQPSymbolBundle);
    v28 = v27;
    if ((v7 & 0x80000000) != 0)
    {
      if (v27 != *(a2 + 8))
      {
        goto LABEL_70;
      }

      if (v27 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v29 = *a2;
    }

    else
    {
      v29 = a2;
      if (v28 != v7)
      {
        goto LABEL_70;
      }
    }

    if (!memcmp(v29, kQPSymbolBundle, v28))
    {
      v4 = kQPSymbolIdBundle;
    }

LABEL_70:
    v30 = strlen(kQPSymbolCities);
    v31 = v30;
    if ((v7 & 0x80000000) != 0)
    {
      if (v30 != *(a2 + 8))
      {
        goto LABEL_78;
      }

      if (v30 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v32 = *a2;
    }

    else
    {
      v32 = a2;
      if (v31 != v7)
      {
        goto LABEL_78;
      }
    }

    if (!memcmp(v32, kQPSymbolCities, v31))
    {
      v4 = kQPSymbolIdCities;
    }

LABEL_78:
    v33 = strlen(kQPSymbolField);
    v34 = v33;
    if ((v7 & 0x80000000) != 0)
    {
      if (v33 != *(a2 + 8))
      {
        goto LABEL_86;
      }

      if (v33 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v35 = *a2;
    }

    else
    {
      v35 = a2;
      if (v34 != v7)
      {
        goto LABEL_86;
      }
    }

    if (!memcmp(v35, kQPSymbolField, v34))
    {
      v4 = kQPSymbolIdField;
    }

LABEL_86:
    v36 = strlen(kQPSymbolFlightCode);
    v37 = v36;
    if ((v7 & 0x80000000) != 0)
    {
      if (v36 != *(a2 + 8))
      {
        goto LABEL_94;
      }

      if (v36 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v38 = *a2;
    }

    else
    {
      v38 = a2;
      if (v37 != v7)
      {
        goto LABEL_94;
      }
    }

    if (!memcmp(v38, kQPSymbolFlightCode, v37))
    {
      v4 = kQPSymbolIdFlightCode;
    }

LABEL_94:
    v39 = strlen(kQPSymbolPerson);
    v40 = v39;
    if ((v7 & 0x80000000) != 0)
    {
      if (v39 != *(a2 + 8))
      {
        goto LABEL_102;
      }

      if (v39 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v41 = *a2;
    }

    else
    {
      v41 = a2;
      if (v40 != v7)
      {
        goto LABEL_102;
      }
    }

    if (!memcmp(v41, kQPSymbolPerson, v40))
    {
      v4 = kQPSymbolIdPerson;
    }

LABEL_102:
    v42 = strlen(kQPSymbolLocation);
    v43 = v42;
    if ((v7 & 0x80000000) != 0)
    {
      if (v42 != *(a2 + 8))
      {
        goto LABEL_110;
      }

      if (v42 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v44 = *a2;
    }

    else
    {
      v44 = a2;
      if (v43 != v7)
      {
        goto LABEL_110;
      }
    }

    if (!memcmp(v44, kQPSymbolLocation, v43))
    {
      v4 = kQPSymbolIdLocation;
    }

LABEL_110:
    v45 = strlen(kQPSymbolActionDefault);
    v46 = v45;
    if ((v7 & 0x80000000) != 0)
    {
      if (v45 != *(a2 + 8))
      {
        goto LABEL_118;
      }

      if (v45 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v47 = *a2;
    }

    else
    {
      v47 = a2;
      if (v46 != v7)
      {
        goto LABEL_118;
      }
    }

    if (!memcmp(v47, kQPSymbolActionDefault, v46))
    {
      v4 = kQPSymbolIdActionDefault;
    }

LABEL_118:
    v48 = strlen(kQPSymbolDefault);
    v49 = v48;
    if ((v7 & 0x80000000) != 0)
    {
      v51 = *(a2 + 8);
      if (v48 != v51)
      {
        goto LABEL_129;
      }

      if (v48 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v50 = *a2;
    }

    else
    {
      v50 = a2;
      if (v49 != v7)
      {
LABEL_127:
        v83 = *a2;
        goto LABEL_130;
      }
    }

    if (!memcmp(v50, kQPSymbolDefault, v49))
    {
      v4 = kQPSymbolIdDefault;
    }

    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

    v51 = *(a2 + 8);
LABEL_129:
    std::string::__init_copy_ctor_external(&v83, *a2, v51);
LABEL_130:
    LOWORD(v84) = v4;
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned short>>(a1 + 168, &v83.__r_.__value_.__l.__data_);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    LOWORD(v83.__r_.__value_.__l.__data_) = v4;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v83.__r_.__value_.__r.__words[1], *a2, *(a2 + 8));
    }

    else
    {
      *&v83.__r_.__value_.__r.__words[1] = *a2;
      v84 = *(a2 + 16);
    }

    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::string>>(a1 + 144, &v83);
    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__size_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v83, "Time");
    v52 = QP::endswith(a2, &v83);
    v53 = v52;
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
      if (v53)
      {
LABEL_139:
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v82, *a2, *(a2 + 8));
        }

        else
        {
          v82 = *a2;
        }

        LOWORD(v83.__r_.__value_.__l.__data_) = QP::ParserGrammar::getSymbolID(a1, &v82);
        std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 696, &v83);
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          v56 = &v82;
LABEL_197:
          operator delete(v56->__r_.__value_.__l.__data_);
          goto LABEL_198;
        }

        goto LABEL_198;
      }
    }

    else if (v52)
    {
      goto LABEL_139;
    }

    std::string::basic_string[abi:ne200100]<0>(&v83, "Period");
    v54 = QP::endswith(a2, &v83);
    v55 = v54;
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
      if (v55)
      {
LABEL_144:
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, *a2, *(a2 + 8));
        }

        else
        {
          v81 = *a2;
        }

        LOWORD(v83.__r_.__value_.__l.__data_) = QP::ParserGrammar::getSymbolID(a1, &v81);
        std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 720, &v83);
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          v56 = &v81;
          goto LABEL_197;
        }

LABEL_198:
        std::string::basic_string[abi:ne200100]<0>(&v83, "Extension");
        v62 = QP::endswith(a2, &v83);
        v63 = v62;
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
          if (!v63)
          {
LABEL_207:
            memset(&v83, 0, sizeof(v83));
            std::string::basic_string[abi:ne200100]<0>(__p, "IsBy");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsIn");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsOf");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsOn");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsAt");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsFrom");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsFor");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsWith");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsTo");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsSince");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsUntil");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsBefore");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsAfter");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "IsAbout");
            std::vector<std::string>::push_back[abi:ne200100](&v83, __p);
            if (v78 < 0)
            {
              operator delete(__p[0]);
            }

            size = v83.__r_.__value_.__l.__size_;
            v64 = v83.__r_.__value_.__r.__words[0];
            if (v83.__r_.__value_.__r.__words[0] != v83.__r_.__value_.__l.__size_)
            {
              v66 = *(a2 + 23);
              if (v66 >= 0)
              {
                v67 = *(a2 + 23);
              }

              else
              {
                v67 = *(a2 + 8);
              }

              if (v66 >= 0)
              {
                v68 = a2;
              }

              else
              {
                v68 = *a2;
              }

              while (1)
              {
                v69 = *(v64 + 23);
                v70 = v69;
                if ((v69 & 0x80u) != 0)
                {
                  v69 = *(v64 + 8);
                }

                if (v69 == v67)
                {
                  v71 = v70 >= 0 ? v64 : *v64;
                  if (!memcmp(v71, v68, v67))
                  {
                    break;
                  }
                }

                v64 += 24;
                if (v64 == size)
                {
                  goto LABEL_257;
                }
              }
            }

            if (v64 != size)
            {
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v72, *a2, *(a2 + 8));
              }

              else
              {
                v72 = *a2;
              }

              SymbolID = QP::ParserGrammar::getSymbolID(a1, &v72);
              std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 840, &SymbolID);
              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }
            }

LABEL_257:
            __p[0] = &v83;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
            return;
          }
        }

        else if (!v62)
        {
          goto LABEL_207;
        }

        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v73, *a2, *(a2 + 8));
        }

        else
        {
          v73 = *a2;
        }

        LOWORD(v83.__r_.__value_.__l.__data_) = QP::ParserGrammar::getSymbolID(a1, &v73);
        std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 936, &v83);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        goto LABEL_207;
      }
    }

    else if (v54)
    {
      goto LABEL_144;
    }

    std::string::basic_string[abi:ne200100]<0>(&v83, "Date");
    v57 = QP::endswith(a2, &v83);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (v57)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v80, *a2, *(a2 + 8));
      }

      else
      {
        v80 = *a2;
      }

      LOWORD(v83.__r_.__value_.__l.__data_) = QP::ParserGrammar::getSymbolID(a1, &v80);
      std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 672, &v83);
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        v56 = &v80;
        goto LABEL_197;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v83, "Kind");
      v58 = QP::endswith(a2, &v83);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v58)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v79, *a2, *(a2 + 8));
        }

        else
        {
          v79 = *a2;
        }

        QP::ParserGrammar::setIsKind(a1, &v79);
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          v56 = &v79;
          goto LABEL_197;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v83, "Text");
        if (QP::endswith(a2, &v83))
        {
          v59 = 1;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "TOPIC");
          v59 = QP::startswith(a2, __p);
          if (v78 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (v59)
        {
          if (*(a2 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v76, *a2, *(a2 + 8));
          }

          else
          {
            v76 = *a2;
          }

          QP::ParserGrammar::setIsInferred(a1, &v76);
          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            v56 = &v76;
            goto LABEL_197;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v83, "UserAction");
          v60 = QP::startswith(a2, &v83);
          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if (v60)
          {
            if (*(a2 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v75, *a2, *(a2 + 8));
            }

            else
            {
              v75 = *a2;
            }

            QP::ParserGrammar::setIsUserAction(a1, &v75);
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              v56 = &v75;
              goto LABEL_197;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v83, "Action");
            v61 = QP::startswith(a2, &v83);
            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v83.__r_.__value_.__l.__data_);
            }

            if (v61)
            {
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v74, *a2, *(a2 + 8));
              }

              else
              {
                v74 = *a2;
              }

              QP::ParserGrammar::setIsAction(a1, &v74);
              if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
              {
                v56 = &v74;
                goto LABEL_197;
              }
            }
          }
        }
      }
    }

    goto LABEL_198;
  }
}

void sub_1C65E4780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *QP::ParserGrammar::symbol@<X0>(QP::ParserGrammar *this@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  result = std::string::basic_string[abi:ne200100]<0>(a3, kQPSymbolNone);
  v9 = *(this + 19);
  v8 = this + 152;
  v7 = v9;
  if (v9)
  {
    v10 = v8;
    v11 = v7;
    do
    {
      v12 = *(v11 + 16);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v10 = v11;
      }

      v11 = *&v11[8 * v14];
    }

    while (v11);
    if (v10 != v8 && *(v10 + 16) <= a2)
    {
      v15 = v8;
      do
      {
        v16 = *(v7 + 16);
        v13 = v16 >= a2;
        v17 = v16 < a2;
        if (v13)
        {
          v15 = v7;
        }

        v7 = *&v7[8 * v17];
      }

      while (v7);
      if (v15 == v8 || *(v15 + 16) > a2)
      {
        v15 = v8;
      }

      return std::string::operator=(a3, (v15 + 40));
    }
  }

  return result;
}

void sub_1C65E4A40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::ParserGrammar::symbolID(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  if (a1 + 176 == std::__tree<std::string>::find<std::string>(a1 + 168, a2))
  {
    return kQPSymbolIdNone;
  }

  return *(std::__tree<std::string>::find<std::string>(a1 + 168, a2) + 56);
}

uint64_t QP::ParserGrammar::replacementID(QP::ParserGrammar *this, uint64_t a2)
{
  v2 = *(this + 40);
  if (v2)
  {
    v3 = this + 320;
    v4 = this + 320;
    v5 = *(this + 40);
    do
    {
      v6 = *(v5 + 13);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v4 = v5;
      }

      v5 = *&v5[8 * v8];
    }

    while (v5);
    if (v4 != v3 && *(v4 + 13) <= a2)
    {
      v9 = this + 320;
      do
      {
        v10 = *(v2 + 13);
        v7 = v10 >= a2;
        v11 = v10 < a2;
        if (v7)
        {
          v9 = v2;
        }

        v2 = *&v2[8 * v11];
      }

      while (v2);
      if (v9 == v3 || *(v9 + 13) > a2)
      {
        v9 = this + 320;
      }

      return *(v9 + 14);
    }
  }

  return a2;
}

BOOL QP::ParserGrammar::hasExpansions(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = *(this + 127);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 1016;
  v4 = this + 1016;
  v5 = *(this + 127);
  do
  {
    v6 = *(v5 + 16);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v4 = v5;
    }

    v5 = *&v5[8 * v8];
  }

  while (v5);
  if (v4 == v3 || *(v4 + 16) > a2)
  {
    return 0;
  }

  v9 = this + 1016;
  do
  {
    v10 = *(v2 + 16);
    v7 = v10 >= a2;
    v11 = v10 < a2;
    if (v7)
    {
      v9 = v2;
    }

    v2 = *&v2[8 * v11];
  }

  while (v2);
  if (v9 == v3 || *(v9 + 16) > a2)
  {
    v9 = this + 1016;
  }

  return *(v9 + 7) != 0;
}

void QP::ParserGrammar::expansions(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v22 = 0;
  v3 = *(a1 + 1016);
  if (v3)
  {
    v5 = a1 + 1016;
    v6 = a1 + 1016;
    v7 = *(a1 + 1016);
    do
    {
      v8 = *(v7 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
    if (v6 != v5 && *(v6 + 32) <= a2)
    {
      v20 = 0;
      v21[0] = 0;
      v11 = a1 + 1016;
      v21[1] = 0;
      do
      {
        v12 = *(v3 + 32);
        v9 = v12 >= a2;
        v13 = v12 < a2;
        if (v9)
        {
          v11 = v3;
        }

        v3 = *(v3 + 8 * v13);
      }

      while (v3);
      if (v11 == v5 || *(v11 + 32) > a2)
      {
        v11 = a1 + 1016;
      }

      std::map<unsigned short,std::map<unsigned short,float>>::map[abi:ne200100](&v20, v11 + 40);
      v14 = v20;
      if (v20 != v21)
      {
        do
        {
          v15 = *(v14 + 16);
          std::map<unsigned short,float>::map[abi:ne200100](v19, (v14 + 5));
          (*(a3 + 16))(a3, v15, v19, &v22);
          std::__tree<unsigned int>::destroy(v19, v19[1]);
          if (v22)
          {
            break;
          }

          v16 = v14[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v14[2];
              v18 = *v17 == v14;
              v14 = v17;
            }

            while (!v18);
          }

          v14 = v17;
        }

        while (v17 != v21);
      }

      std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(&v20, v21[0]);
    }
  }
}

BOOL QP::ParserGrammar::hasFileExtensions(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = *(this + 34);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 272;
  v4 = this + 272;
  v5 = *(this + 34);
  do
  {
    v6 = *(v5 + 16);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v4 = v5;
    }

    v5 = *&v5[8 * v8];
  }

  while (v5);
  if (v4 == v3 || *(v4 + 16) > a2)
  {
    return 0;
  }

  v9 = this + 272;
  do
  {
    v10 = *(v2 + 16);
    v7 = v10 >= a2;
    v11 = v10 < a2;
    if (v7)
    {
      v9 = v2;
    }

    v2 = *&v2[8 * v11];
  }

  while (v2);
  if (v9 == v3 || *(v9 + 16) > a2)
  {
    v9 = this + 272;
  }

  return *(v9 + 7) != 0;
}

BOOL QP::ParserGrammar::hasValue(uint64_t a1, unsigned int a2, void **a3)
{
  v3 = *(a1 + 560);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 560;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  return v4 != a1 + 560 && *(v4 + 32) <= a2 && v4 + 48 != std::__tree<std::string>::find<std::string>(v4 + 40, a3);
}

void QP::ParserGrammar::value(uint64_t a1@<X0>, unsigned int a2@<W1>, void **a3@<X2>, std::string *a4@<X8>)
{
  v5 = *(a1 + 560);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = a1 + 560;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == a1 + 560 || *(v6 + 32) > a2 || (v10 = std::__tree<std::string>::find<std::string>(v6 + 40, a3), v6 + 48 == v10))
  {
LABEL_12:
    v12 = kQPSymbolNone;

    std::string::basic_string[abi:ne200100]<0>(a4, v12);
  }

  else if (*(v10 + 79) < 0)
  {
    v13 = *(v10 + 56);
    v14 = *(v10 + 64);

    std::string::__init_copy_ctor_external(a4, v13, v14);
  }

  else
  {
    v11 = *(v10 + 56);
    a4->__r_.__value_.__r.__words[2] = *(v10 + 72);
    *&a4->__r_.__value_.__l.__data_ = v11;
  }
}

BOOL QP::ParserGrammar::hasCategories(QP::ParserGrammar *this, unsigned int a2)
{
  v4 = *(this + 31);
  v2 = this + 248;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  do
  {
    v7 = *(v6 + 16);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *&v6[8 * v9];
  }

  while (v6);
  if (v5 == v2 || *(v5 + 16) > a2)
  {
    return 0;
  }

  v10 = v2;
  do
  {
    v11 = *(v3 + 16);
    v8 = v11 >= a2;
    v12 = v11 < a2;
    if (v8)
    {
      v10 = v3;
    }

    v3 = *&v3[8 * v12];
  }

  while (v3);
  if (v10 == v2 || *(v10 + 16) > a2)
  {
    v10 = v2;
  }

  return *(v10 + 7) != 0;
}

void QP::ParserGrammar::categories(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 248);
  v3 = a1 + 248;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    v8 = v4;
    do
    {
      v9 = *(v8 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = *(v8 + 8 * v11);
    }

    while (v8);
    if (v7 != v3 && *(v7 + 32) <= a2)
    {
      v12 = v3;
      do
      {
        v13 = *(v4 + 32);
        v10 = v13 >= a2;
        v14 = v13 < a2;
        if (v10)
        {
          v12 = v4;
        }

        v4 = *(v4 + 8 * v14);
      }

      while (v4);
      if (v12 == v3 || *(v12 + 32) > a2)
      {
        v12 = v3;
      }

      v15 = *(v12 + 40);
      v16 = (v12 + 48);
      if (v15 != (v12 + 48))
      {
        do
        {
          if (*(v15 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v15[4], v15[5]);
          }

          else
          {
            __p = *(v15 + 4);
          }

          (*(a3 + 16))(a3, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

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
              v19 = *v18 == v15;
              v15 = v18;
            }

            while (!v19);
          }

          v15 = v18;
        }

        while (v18 != v16);
      }
    }
  }
}

void sub_1C65E510C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void QP::ParserGrammar::tokens(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, uint64_t a5)
{
  v83[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      if (*(a1 + 88))
      {
        v11 = *(a1 + 40);
        v12 = 152;
        if (!*(v11 + 152))
        {
          v12 = 136;
        }

        v13 = *(v11 + v12);
        v14 = 160;
        if (!*(v11 + 160))
        {
          v14 = 144;
        }

        v15 = *(v11 + v14);
        Value = CFDictionaryGetValue(v6, a2);
        if (Value)
        {
          v17 = Value;
          v18 = CFGetTypeID(Value);
          TypeID = CFDictionaryGetTypeID();
          if (a3)
          {
            if (v18 == TypeID)
            {
              v20 = CFDictionaryGetValue(v17, @"TYPE");
              if (v20)
              {
                v79 = v20;
                v21 = CFGetTypeID(v20);
                if (v21 == CFStringGetTypeID())
                {
                  v22 = CFDictionaryGetValue(v17, @"ROOT");
                  if (v22)
                  {
                    v23 = v22;
                    v24 = CFGetTypeID(v22);
                    if (v24 == CFStringGetTypeID())
                    {
                      v25 = v23;
                    }

                    else
                    {
                      v25 = 0;
                    }

                    v78 = v25;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  v26 = CFDictionaryGetValue(v17, @"TOKEN");
                  if (v26)
                  {
                    v27 = v26;
                    v28 = CFGetTypeID(v26);
                    if (v28 == CFStringGetTypeID())
                    {
                      v29 = v27;
                    }

                    else
                    {
                      v29 = 0;
                    }

                    v80 = v29;
                  }

                  else
                  {
                    v80 = 0;
                  }

                  v30 = CFDictionaryGetValue(v17, a3);
                  if (v30 && (v31 = v30, v32 = CFGetTypeID(v30), v33 = CFDictionaryGetTypeID(), a4) && v32 == v33)
                  {
                    v34 = CFDictionaryGetValue(v17, @"TOKEN");
                    v35 = CFDictionaryGetValue(v17, @"ROOT");
                    v80 = v34;
                    if (v34)
                    {
                      v36 = v35;
                      v37 = CFGetTypeID(v80);
                      if (v37 == CFStringGetTypeID())
                      {
                        if (v36)
                        {
                          v38 = CFGetTypeID(v36);
                          if (v38 == CFStringGetTypeID())
                          {
                            v39 = CFDictionaryGetValue(v31, a4);
                            if (v39)
                            {
                              v40 = v39;
                              v41 = CFGetTypeID(v39);
                              if (v41 == CFArrayGetTypeID())
                              {
                                v83[0] = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@", a3, a4);
                                v42 = _copyTokenText(a2, v36, v83[0], v13, v15, *(a1 + 88));
                                v82 = v42;
                                v43 = _copyTranslationStringWithContent(a4, v40);
                                v81 = v43;
                                if (v43 && v42)
                                {
                                  (*(a5 + 16))(a5, v80, v42, v79, v43);
                                }

                                nlp::CFScopedPtr<__CFString const*>::reset(&v81, 0);
                                nlp::CFScopedPtr<__CFString const*>::reset(&v82, 0);
LABEL_80:
                                nlp::CFScopedPtr<__CFString const*>::reset(v83, 0);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v44 = CFDictionaryGetValue(v17, @"Tokens");
                    if (v44 && (v45 = v44, v46 = CFGetTypeID(v44), v46 == CFDictionaryGetTypeID()))
                    {
                      v47 = CFDictionaryGetValue(v17, @"ROOT");
                      if (v47)
                      {
                        v48 = CFGetTypeID(v47);
                        if (v48 == CFStringGetTypeID())
                        {
                          v78 = CFDictionaryGetValue(v45, a3);
                          if (v78)
                          {
                            v49 = CFGetTypeID(v78);
                            v50 = v49 == CFArrayGetTypeID();
                            v51 = v79;
                            if (v50)
                            {
                              Count = CFArrayGetCount(v78);
                              if (Count >= 1)
                              {
                                v52 = 0;
                                v76[0] = a5 + 16;
                                do
                                {
                                  ValueAtIndex = CFArrayGetValueAtIndex(v78, v52);
                                  v54 = CFGetTypeID(ValueAtIndex);
                                  if (v54 == CFDictionaryGetTypeID())
                                  {
                                    v55 = CFDictionaryGetCount(ValueAtIndex);
                                    v76[1] = v76;
                                    MEMORY[0x1EEE9AC00](v55);
                                    v56 = (v76 - ((8 * v55 + 15) & 0xFFFFFFFFFFFFFFF0));
                                    bzero(v56, 8 * v55);
                                    MEMORY[0x1EEE9AC00](v57);
                                    v58 = v56;
                                    bzero(v56, 8 * v55);
                                    CFDictionaryGetKeysAndValues(ValueAtIndex, v56, v56);
                                    if (v55 < 1)
                                    {
                                      v79 = 0;
                                    }

                                    else
                                    {
                                      v79 = 0;
                                      v59 = 0;
                                      do
                                      {
                                        v60 = *v56;
                                        v61 = CFGetTypeID(*v56);
                                        if (v61 == CFStringGetTypeID())
                                        {
                                          v59 = v60;
                                        }

                                        if (CFStringsAreEqual(@"TOKEN", v59))
                                        {
                                          v62 = *v58;
                                          v63 = CFGetTypeID(*v58);
                                          v64 = CFStringGetTypeID();
                                          v65 = v80;
                                          if (v63 == v64)
                                          {
                                            v65 = v62;
                                          }

                                          v80 = v65;
                                        }

                                        else if (CFStringsAreEqual(@"TYPE", v59))
                                        {
                                          v66 = *v58;
                                          v67 = CFGetTypeID(*v58);
                                          if (v67 == CFStringGetTypeID())
                                          {
                                            v51 = v66;
                                          }
                                        }

                                        else if (CFStringsAreEqual(@"TRANSLATIONS", v59))
                                        {
                                          v68 = *v58;
                                          v69 = CFGetTypeID(*v58);
                                          v70 = CFArrayGetTypeID();
                                          v71 = v79;
                                          if (v69 == v70)
                                          {
                                            v71 = v68;
                                          }

                                          v79 = v71;
                                        }

                                        ++v58;
                                        ++v56;
                                        --v55;
                                      }

                                      while (v55);
                                    }

                                    if (a4 && v80 && v51)
                                    {
                                      v83[0] = 0;
                                      if (v79)
                                      {
                                        v72 = _copyTranslationStringWithContent(0, v79);
                                        nlp::CFScopedPtr<__CFString const*>::reset(v83, v72);
                                        v73 = v83[0];
                                      }

                                      else
                                      {
                                        v73 = 0;
                                      }

                                      (*(a5 + 16))(a5, v80, a4, v51, v73);
                                      nlp::CFScopedPtr<__CFString const*>::reset(v83, 0);
                                    }
                                  }

                                  ++v52;
                                }

                                while (v52 != Count);
                              }
                            }
                          }
                        }
                      }
                    }

                    else if (v78 && v80)
                    {
                      v74 = _copyTokenText(a2, v78, a3, v13, v15, *(a1 + 88));
                      v83[0] = v74;
                      if (v74)
                      {
                        (*(a5 + 16))(a5, v80, v74, v79, 0);
                      }

                      goto LABEL_80;
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

  v75 = *MEMORY[0x1E69E9840];
}

void sub_1C65E5730(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 112), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 104), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 96), 0);
  _Unwind_Resume(a1);
}

CFStringRef _copyTokenText(const __CFString *key, const __CFString *a2, const __CFString *a3, unint64_t a4, unint64_t a5, CFDictionaryRef theDict)
{
  if (!a3)
  {
    return 0;
  }

  if (!theDict)
  {
    return 0;
  }

  if (!(a4 | a5))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 0;
  }

  v11 = Value;
  v12 = CFGetTypeID(Value);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v13 = CFDictionaryGetValue(v11, a2);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = CFGetTypeID(v13);
  if (v15 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v16 = CFDictionaryGetValue(v14, a3);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = CFGetTypeID(v16);
  if (v18 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  if (a5 && CFDictionaryContainsKey(v17, a5))
  {
    v19 = v17;
    v20 = a5;
  }

  else
  {
    if (!a4 || !CFDictionaryContainsKey(v17, a4))
    {
      return 0;
    }

    v19 = v17;
    v20 = a4;
  }

  v21 = CFDictionaryGetValue(v19, v20);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  v23 = CFGetTypeID(v21);
  if (v23 != CFStringGetTypeID())
  {
    return 0;
  }

  v24 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v24, v22);
}

const __CFAllocator *_copyTranslationStringWithContent(const __CFString *a1, const __CFArray *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFStringGetTypeID())
      {
        MutableCopy = CFStringCreateMutableCopy(v4, 0, ValueAtIndex);
        v11 = MutableCopy;
        if (a1)
        {
          v14.length = CFStringGetLength(MutableCopy);
          v14.location = 0;
          CFStringFindAndReplace(v11, @"%@v", a1, v14, 0);
        }

        CFArrayAppendValue(Mutable, v11);
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  v12 = CFArrayGetCount(Mutable);
  if (!v12)
  {
    if (!Mutable)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v4 = CFStringCreateByCombiningStrings(v4, Mutable, @" && ");
  if (Mutable)
  {
LABEL_13:
    CFRelease(Mutable);
  }

LABEL_14:
  if (v12)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1C65E5A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFArray *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::tokenCompletions(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v50[4] = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString) && *(a1 + 8) && *(a1 + 16) && *(a1 + 32) && *(a1 + 24))
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v40 = v6;
    MutableCopy = CFStringCreateMutableCopy(v6, 0, theString);
    CFStringLowercase(MutableCopy, *(*(a1 + 40) + 112));
    v46 = 0;
    v47 = 0;
    v48 = 0;
    QP::getUTF8StringFromCFString(MutableCopy, &v46);
    v37 = a3;
    v8 = *(a1 + 8);
    if (v48 >= 0)
    {
      v9 = &v46;
    }

    else
    {
      v9 = v46;
    }

    v50[0] = &unk_1F45E9B88;
    v50[1] = searchCompletions;
    v50[3] = v50;
    if (v48 >= 0)
    {
      v10 = HIBYTE(v48);
    }

    else
    {
      v10 = v47;
    }

    nlp::BurstTrieSearch(v8, v9, v10, Mutable, v50, -1);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v50);
    v11 = Mutable;
    Count = CFDictionaryGetCount(Mutable);
    v35 = &v32;
    MEMORY[0x1EEE9AC00](Count);
    v13 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    bzero(&v32 - v13, 8 * Count);
    MEMORY[0x1EEE9AC00](v14);
    v15 = (&v32 - v13);
    bzero(&v32 - v13, 8 * Count);
    CFDictionaryGetKeysAndValues(v11, (&v32 - v13), (&v32 - v13));
    v36 = v11;
    v41 = CFSetCreateMutable(v40, 0, MEMORY[0x1E695E9F8]);
    v45 = v41;
    if (Count >= 1)
    {
      v32 = v37 + 16;
      while (1)
      {
        v16 = *v15;
        Value = CFDictionaryGetValue(*(a1 + 16), *v15);
        v18 = CFDictionaryGetValue(*(a1 + 32), Value);
        v19 = CFDictionaryGetValue(*(a1 + 24), Value);
        if (!Value)
        {
          break;
        }

        v20 = v19;
        if (!CFSetContainsValue(v41, Value))
        {
          CFSetSetValue(v41, Value);
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v40, Value, @":");
          v22 = ArrayBySeparatingStrings;
          v44 = ArrayBySeparatingStrings;
          if (ArrayBySeparatingStrings)
          {
            if (CFArrayGetCount(ArrayBySeparatingStrings) == 4)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
              v39 = CFArrayGetValueAtIndex(v22, 1);
              v38 = CFArrayGetValueAtIndex(v22, 2);
              v24 = CFArrayGetValueAtIndex(v22, 3);
              v25 = CFStringCreateArrayBySeparatingStrings(v40, v24, @"-");
              v43 = v25;
              if (CFArrayGetCount(v25) == 2)
              {
                v24 = CFArrayGetValueAtIndex(v25, 0);
                v34 = CFArrayGetValueAtIndex(v25, 1);
                v33 = 5;
              }

              else
              {
                v33 = 0;
                v34 = 0;
              }

              v26 = ValueAtIndex;
              v27 = CFStringCreateWithFormat(v40, 0, @"TOKEN:%@", ValueAtIndex);
              v42 = v27;
              v28 = CFDictionaryGetValue(*(a1 + 32), v27);
              if (v20 && v18 && v26 && v39 && v38 && v24)
              {
                LOWORD(v31) = v33;
                (*(v37 + 16))(v37, v20, v28, v18, v26, v39, v38, v24, v34, v31, v32);
              }

              if (v27)
              {
                CFRelease(v27);
              }

              if (v25)
              {
                CFRelease(v25);
              }
            }

            CFRelease(v22);
          }
        }

        ++v15;
        if (!--Count)
        {
          goto LABEL_40;
        }
      }

      if (grammarLogger(void)::token != -1)
      {
        QP::ParserGrammar::loadParserGrammarResource();
      }

      v29 = grammarLogger(void)::log;
      if (os_log_type_enabled(grammarLogger(void)::log, OS_LOG_TYPE_FAULT))
      {
        QP::ParserGrammar::tokenCompletions(v16, v29);
      }
    }

LABEL_40:
    CFRelease(v36);
    if (v41)
    {
      CFRelease(v41);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void searchCompletions(__CFDictionary *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Completion = nlp::TrieCompletionGetCompletion(a2);
  Length = nlp::TrieCompletionGetLength(a2);
  v7 = CFStringCreateWithBytes(v4, Completion, Length, 0x8000100u, 0);
  valuePtr = nlp::TrieCompletionGetPayload(a2);
  v8 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, v7, v8);
  CFRelease(v7);
  CFRelease(v8);
}

void QP::ParserGrammar::fallbackDateCompletions(uint64_t *a1, CFStringRef theString, uint64_t a3)
{
  if (theString && CFStringGetLength(theString))
  {
    BundleWithIdentifier = *(a1[5] + 200);
    if (BundleWithIdentifier)
    {
      BundleWithIdentifier = CFBundleGetBundleWithIdentifier(BundleWithIdentifier);
    }

    v7 = *a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZNK2QP13ParserGrammar23fallbackDateCompletionsEPK10__CFStringU13block_pointerFvS3_S3_S3_S3_S3_S3_S3_S3_PK14__CFDictionary12QPSymbolFlagE_block_invoke;
    v8[3] = &unk_1E8267158;
    v8[5] = a1;
    v8[6] = BundleWithIdentifier;
    v8[4] = a3;
    QPDataDetectorsEnumerateDatesInString(theString, v7, v8);
  }
}

void ___ZNK2QP13ParserGrammar23fallbackDateCompletionsEPK10__CFStringU13block_pointerFvS3_S3_S3_S3_S3_S3_S3_S3_PK14__CFDictionary12QPSymbolFlagE_block_invoke(void *a1, CFDictionaryRef theDict)
{
  v4 = a1[5];
  Value = CFDictionaryGetValue(theDict, @"kQPDateDisplay");
  v6 = CFDictionaryGetValue(theDict, @"kQPDateComponents");
  v7 = *(v4 + 40);
  if (*(v7 + 8) == 2)
  {
    v8 = @"Mail";
  }

  else
  {
    v8 = @"Search";
  }

  v9 = copyLocalizedStringForDomain(a1[6], v8, @"Tokens", @"TOKEN:kQPTokenDate", *(v7 + 144));
  v10 = v9;
  if (Value && v6)
  {
    if (!v9)
    {
      return;
    }

    (*(a1[4] + 16))(a1[4], Value, v9, Value);
  }

  else if (!v9)
  {
    return;
  }

  CFRelease(v10);
}

void sub_1C65E628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::completions(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (Length)
    {
      if (*(a1 + 8))
      {
        v7 = Length;
        v8 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        MutableCopy = CFStringCreateMutableCopy(v8, 0, theString);
        v23 = MutableCopy;
        CFStringLowercase(MutableCopy, *(*(a1 + 40) + 112));
        v25.location = 0;
        v25.length = v7;
        CFStringFindAndReplace(MutableCopy, @"’", @"'", v25, 0);
        v20 = 0;
        v21 = 0;
        v22 = 0;
        QP::getUTF8StringFromCFString(MutableCopy, &v20);
        v11 = *(a1 + 8);
        if (v22 >= 0)
        {
          v12 = &v20;
        }

        else
        {
          v12 = v20;
        }

        v24[0] = &unk_1F45E9B88;
        v24[1] = searchCompletions;
        v24[3] = v24;
        if (v22 >= 0)
        {
          v13 = HIBYTE(v22);
        }

        else
        {
          v13 = v21;
        }

        nlp::BurstTrieSearch(v11, v12, v13, Mutable, v24, -1);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v24);
        Count = CFDictionaryGetCount(Mutable);
        MEMORY[0x1EEE9AC00](Count);
        v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v16, v15);
        CFDictionaryGetKeysAndValues(Mutable, v16, 0);
        if (Count >= 1)
        {
          do
          {
            v17 = *v16;
            if (CFStringGetLength(*v16) > v7)
            {
              (*(a3 + 16))(a3, v17);
            }

            ++v16;
            --Count;
          }

          while (Count);
        }

        CFRelease(Mutable);
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          if (!MutableCopy)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        operator delete(v20);
        if (MutableCopy)
        {
LABEL_18:
          CFRelease(MutableCopy);
        }
      }
    }
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1C65E64F8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void QP::ParserGrammar::fileExtensions(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    v5 = a1 + 272;
    v6 = a1 + 272;
    v7 = *(a1 + 272);
    do
    {
      v8 = *(v7 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
    if (v6 != v5 && *(v6 + 32) <= a2)
    {
      v11 = a1 + 272;
      do
      {
        v12 = *(v3 + 32);
        v9 = v12 >= a2;
        v13 = v12 < a2;
        if (v9)
        {
          v11 = v3;
        }

        v3 = *(v3 + 8 * v13);
      }

      while (v3);
      if (v11 == v5 || *(v11 + 32) > a2)
      {
        v11 = a1 + 272;
      }

      v14 = *(v11 + 40);
      v15 = (v11 + 48);
      if (v14 != (v11 + 48))
      {
        do
        {
          if (*(v14 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v14[4], v14[5]);
          }

          else
          {
            __p = *(v14 + 4);
          }

          (*(a3 + 16))(a3, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v16 = v14[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v14[2];
              v18 = *v17 == v14;
              v14 = v17;
            }

            while (!v18);
          }

          v14 = v17;
        }

        while (v17 != v15);
      }
    }
  }
}

void sub_1C65E6688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL QP::ParserGrammar::hasUTIs(QP::ParserGrammar *this, unsigned int a2)
{
  v4 = *(this + 28);
  v2 = this + 224;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  do
  {
    v7 = *(v6 + 16);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *&v6[8 * v9];
  }

  while (v6);
  if (v5 == v2 || *(v5 + 16) > a2)
  {
    return 0;
  }

  v10 = v2;
  do
  {
    v11 = *(v3 + 16);
    v8 = v11 >= a2;
    v12 = v11 < a2;
    if (v8)
    {
      v10 = v3;
    }

    v3 = *&v3[8 * v12];
  }

  while (v3);
  if (v10 == v2 || *(v10 + 16) > a2)
  {
    v10 = v2;
  }

  return *(v10 + 7) != 0;
}