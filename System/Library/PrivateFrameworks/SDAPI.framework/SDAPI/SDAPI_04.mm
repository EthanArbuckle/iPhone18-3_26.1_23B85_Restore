uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v14[0] = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 8) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = (*a3)(v14, v6 + v12);
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = result - 8;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12[0] = *v6;
          v11 = v9;
          do
          {
            *(v11 + 16) = *(v11 + 8);
            result = (*a3)(v12, v11);
            v11 -= 8;
          }

          while ((result & 1) != 0);
          *(v11 + 16) = v12[0];
        }

        v7 = v6 + 1;
        v9 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TPItnTagHandle_fake ***,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
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

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    do
    {
      ++v6;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v11;
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TPItnTagHandle_fake ***,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    ++v6;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  v8 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v13));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v13) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v13));
    }

    while (v9 < v10);
    v8 = v9 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v13;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *v17;
        *v17 = v28;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
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
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v30 = *v22;
      v25 = v23;
      while (1)
      {
        v26 = a1 + v25;
        *(a1 + v25 + 24) = *(a1 + v25 + 16);
        if (v25 == -16)
        {
          break;
        }

        v25 -= 8;
        if (((*a3)(&v30, (v26 + 8)) & 1) == 0)
        {
          v27 = (a1 + v25 + 24);
          goto LABEL_40;
        }
      }

      v27 = a1;
LABEL_40:
      *v27 = v30;
      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(a1, a4, v8, v11--);
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
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v24 = v6;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v19 = 2 * v14 + 2;
          if (v19 < v8)
          {
            v20 = v16 + 2;
            if ((*a4)(v16 + 1, (v16 + 2)))
            {
              v17 = v20;
              v18 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
          v14 = v18;
        }

        while (v18 <= ((v8 - 2) >> 1));
        v6 = v24 - 1;
        if (v17 == v24 - 1)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v19[11] = v4;
    v19[12] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v12 = (a4 - result) >> 2;
      v13 = v12 + 1;
      v14 = (result + 8 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19[0] = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = (v8 + 8 * v17);
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 8 * v17, v14 + 1))
            {
              ++v14;
              v17 = v18;
            }
          }

          result = (*a2)(v14, v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19[0];
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(uint64_t result, uint64_t a2, uint64_t (**a3)(void *, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v13[7] = v4;
    v13[8] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    result = (*a3)(v10, a2 - 8);
    if (result)
    {
      v13[0] = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 8 * v9);
        result = (*a3)(v10, v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13[0];
    }
  }

  return result;
}

void *std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TPItnTagHandle_fake **>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<TPItnTagHandle_fake **>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::vector<TItnControl>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      do
      {
        *v4 = -1;
        v4[1] = -1;
        v4[2] = 0;
        v4 += 3;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * v6 + 24 * a2;
    v13 = v11;
    do
    {
      *v13 = -1;
      v13[1] = -1;
      v13[2] = 0;
      v13 += 3;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,false>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = v9[1].n128_u64[0];
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          v9[1].n128_u64[0] = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = v9[1].n128_u64[0];
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        v9[1].n128_u64[0] = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = v9[1].n128_u64[0];
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        v9[1].n128_u64[0] = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,TItnControl*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 24 * (v15 >> 1));
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 16);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 16) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 16);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 16) = v17[1].n128_u64[0];
        *a1 = v29;
        v17[1].n128_u64[0] = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = v17[1].n128_u64[0];
          v81 = *v17;
          v30 = *v9;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = v17[1].n128_u64[0];
        v83 = *v17;
        v25 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 16);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 16) = v17[1].n128_u64[0];
          *a1 = v26;
          v17[1].n128_u64[0] = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 40);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 40) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 40);
          v41 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v41;
          *(a1 + 24 * v16 - 8) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 24 * v16 - 8);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 24 * v16 - 8);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 40);
          v38 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v38;
          *(a1 + 24 * v16 - 8) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), (a1 + 48));
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 64);
          v47 = *(a1 + 48);
          v48 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = *(a1 + 48);
        v122 = *(a1 + 64);
        v51 = *(v43 + 40);
        *(a1 + 48) = *(v43 + 24);
        *(a1 + 64) = v51;
        *(v43 + 40) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 40);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 40) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 40);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 40) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), (a1 + 48)))
        {
          v94 = *(a1 + 48);
          v121 = *(a1 + 64);
          v50 = *(v43 + 40);
          *(a1 + 48) = *(v43 + 24);
          *(a1 + 64) = v50;
          *(v43 + 40) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 40);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = v17[1].n128_u64[0];
        v17[1].n128_u64[0] = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = v17[1].n128_u64[0];
          v97 = *v17;
          *v17 = *(v43 + 24);
          v17[1].n128_u64[0] = *(v43 + 40);
LABEL_56:
          *(v43 + 40) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = v17[1].n128_u64[0];
        v98 = *v17;
        *v17 = *(v43 + 24);
        v17[1].n128_u64[0] = *(v43 + 40);
        *(v43 + 40) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 16);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 16) = v17[1].n128_u64[0];
      *a1 = v55;
      v17[1].n128_u64[0] = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = v17[1].n128_u64[0];
        v82 = *v17;
        v24 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = v17[1].n128_u64[0];
      v90 = *v17;
      v39 = *a1;
      v17[1].n128_u64[0] = *(a1 + 16);
      *v17 = v39;
      *(a1 + 16) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 16);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 16) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 16);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 16) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = v17[1].n128_u64[0];
        v86 = *v17;
        v28 = *a1;
        v17[1].n128_u64[0] = *(a1 + 16);
        *v17 = v28;
        *(a1 + 16) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TItnControl *,BOOL (*&)(TItnControl const&,TItnControl const&)>(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TItnControl *,BOOL (*&)(TItnControl const&,TItnControl const&)>(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,false>(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = v9[1].n128_u64[0];
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TItnControl *,BOOL (*&)(TItnControl const&,TItnControl const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TItnControl *,BOOL (*&)(TItnControl const&,TItnControl const&)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(a1 + v6, &v17) & 1) != 0);
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = (a1 + v6);
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 = (v9 + 24);
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,TItnControl*>(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __int8 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          v14[1].n128_u64[0] = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(v8, a4, v10, v8);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v30 = v8;
      do
      {
        v31 = v7;
        v19 = 0;
        v32 = *v8;
        v33 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = v20 + 24 * v19;
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = (v21 + 48);
            if ((*a4)((v21 + 24), v21 + 48))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = (v31 - 24);
        if (v22 == &v31[-2].n128_i8[8])
        {
          v22[1].n128_u64[0] = v33;
          *v22 = v32;
          v8 = v30;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = v31[-1].n128_u64[1];
          *v22 = v27;
          *v7 = v32;
          v31[-1].n128_u64[1] = v33;
          v8 = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(v30, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v30) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(uint64_t a1, unsigned int (**a2)(uint64_t, __int8 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, &v13[1].n128_i8[8]))
      {
        v13 = (v13 + 24);
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = v13[1].n128_u64[0];
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = (a1 + 24 * v18);
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, &v13[1].n128_i8[8]))
            {
              v13 = (v13 + 24);
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(const __int32 *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  return wmemcmp(a1, a2, v3) == 0;
}

void sub_2625A7B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2625A7BA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if (v3 >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = *(a3 + 8);
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (!v7 || (v5 >= 0 ? (v8 = a2) : (v8 = *a2), v3 >= 0 ? (v9 = a3) : (v9 = *a3), (v10 = wmemcmp(v8, v9, v7)) == 0))
  {
    if (v6 < v4)
    {
      v10 = -1;
    }

    else
    {
      v10 = v4 < v6;
    }
  }

  return v10 >> 31;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  while ((std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a2, (v3 + 4)) & 1) != 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, (v3 + 4), a2))
  {
    ++v3;
    goto LABEL_6;
  }

  v8 = *v3;
  v6 = v3;
  if (*v3)
  {
    v6 = v3;
    do
    {
      v9 = std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, (v8 + 4), a2);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v6 = v8;
      }

      v8 = v8[v10];
    }

    while (v8);
  }

  for (i = v3[1]; i; i = *(i + v13))
  {
    if (std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a2, i + 32))
    {
      v13 = 0;
    }

    else
    {
      v13 = 8;
    }
  }

  return v6;
}

uint64_t TBuffer<TPItnRuleHandle_fake **>::insert(uint64_t result, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = *(result + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 16);
  }

  if (*(result + 2072) == 1)
  {
    v7 = v5 + a4;
    v8 = *(result + 8);
    if (v5 + a4 > v8 && v8 < 2 * v7)
    {
      *(result + 8) = (2 * v7) | 1;
      operator new[]();
    }
  }

  v9 = v6 + a4;
  v10 = *(result + 8);
  if (v6 < v5 && v9 < v10)
  {
    v12 = v5 + a4;
    if (v10 < v5 + a4)
    {
      v12 = *(result + 8);
    }

    v13 = v12 - v9;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = 8 * v12 - 8;
    do
    {
      *(*result + v14) = *(*result + v14 - 8 * a4);
      v14 -= 8;
      --v13;
    }

    while (v13);
  }

  v15 = v10 - v6;
  if (v10 > v6)
  {
    if (v15 >= a4)
    {
      v15 = a4;
    }

    if (v15)
    {
      v16 = 8 * v6;
      do
      {
        v17 = *a3++;
        *(*result + v16) = v17;
        v16 += 8;
        --v15;
      }

      while (v15);
    }
  }

  *(result + 16) = v5 + a4;
  if (v5 + a4 < v10)
  {
    *(*result + 8 * (v5 + a4)) = 0;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

void std::vector<TItnRule *>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, v9);
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

void std::vector<TPItnRuleControl>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
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

void std::vector<TWord const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TWord const*>::__append(a1, a2 - v2);
  }
}

void std::vector<TWord const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void *std::vector<std::pair<TWord const*,unsigned int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned int>>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned int>>>(a1, v10);
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

void std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(a1, v10);
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
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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

void *std::vector<TWord const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TWord const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TWord const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2625A8724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TWord const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::vector<TWord const*>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a1, v9);
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

uint64_t std::vector<std::pair<TWord const*,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<TWord const*,unsigned int>*,std::pair<TWord const*,unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<TWord const*,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2625A88E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<TWord const*,unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned int>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2625A8A74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void sub_2625A8B88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MrecInitModule_constran_kernel(void)
{
  if (!gParDebugConstraint)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugConstraint", &unk_26286CC60, &unk_26286CC60, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugConstraint = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugConstraint);
  }

  if (!gParDiagnosticSearchActiveWordBuildAllSuccessorPhonemeContexts)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticSearchActiveWordBuildAllSuccessorPhonemeContexts", &unk_26286CC60, &unk_26286CC60, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticSearchActiveWordBuildAllSuccessorPhonemeContexts = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDiagnosticSearchActiveWordBuildAllSuccessorPhonemeContexts);
  }
}

uint64_t RecogGermIterator::advanceUntilMatch(uint64_t this)
{
  if (*(this + 32))
  {
    v1 = this;
    v5 = 0x3FFFFAFFFFFFLL;
    v6 = xmmword_26286CC40;
    v7 = 0;
    v8 = 1310720000;
    v9 = 0;
    v10 = 0x70000000FFFFFFFELL;
    v2 = *(this + 8);
    v3 = *(this + 12);
    while (v2 != v3)
    {
      this = (*(*v1 + 16))(v1, &v5);
      if (*(v1 + 16) == v5 >> 25)
      {
        v4 = *(v1 + 24);
        if ((v5 & 0xFFFFFF) < *(v4 + 8) && ((*(*v4 + (((v5 & 0xFFFFFF) >> 3) & 0x1FFFFC)) >> v5) & 1) != 0 && (!v6 || v6 == *(v1 + 20)))
        {
          break;
        }
      }

      v3 = *(v1 + 12);
      v2 = *(v1 + 8) + 1;
      *(v1 + 8) = v2;
    }
  }

  return this;
}

void RecogGermIterator::printSize(RecogGermIterator *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 142, &v59);
  if (v60)
  {
    v16 = v59;
  }

  else
  {
    v16 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286CC60, a3, &unk_26286CC60, v16);
  DgnString::~DgnString(&v59);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286CC60);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 143, &v59);
  if (v60)
  {
    v25 = v59;
  }

  else
  {
    v25 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v59);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 144, &v59);
  if (v60)
  {
    v30 = v59;
  }

  else
  {
    v30 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v30, 4, 4, 0);
  DgnString::~DgnString(&v59);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 146, &v59);
  if (v60)
  {
    v35 = v59;
  }

  else
  {
    v35 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v35, 8, 8, 0);
  v58 = a6;
  DgnString::~DgnString(&v59);
  *a4 += 8;
  *a5 += 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 4;
  }

  else
  {
    v36 = 8;
  }

  v37 = *(this + 3);
  if (v37)
  {
    v38 = BitArray::sizeObject(v37, 0) + v36;
    v39 = *(this + 3);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v36 = 4;
    }

    else
    {
      v36 = 8;
    }

    if (v39 && (v36 += BitArray::sizeObject(v39, 1), (v40 = *(this + 3)) != 0))
    {
      v41 = BitArray::sizeObject(v40, 3);
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
    v38 = v36;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 148, &v59);
  if (v60)
  {
    v46 = v59;
  }

  else
  {
    v46 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v46, v38, v36, v41);
  DgnString::~DgnString(&v59);
  *a4 += v38;
  *a5 += v36;
  *v58 += v41;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 149, &v59);
  if (v60)
  {
    v51 = v59;
  }

  else
  {
    v51 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v51, 1, 1, 0);
  DgnString::~DgnString(&v59);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 150, &v59);
  if (v60)
  {
    v56 = v59;
  }

  else
  {
    v56 = &unk_26286CC60;
  }

  v57 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, a3, &unk_26286CC60, (35 - a3), (35 - a3), v56, *a4, *a5, *v58);
  DgnString::~DgnString(&v59);
}

void sub_2625A91B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double RecogGerm::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void Constraint::setUpTranscription(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  if (a3)
  {
    DgnPrimArray<int>::copyArraySlice(a1 + 152, a3, 0, *(a3 + 8));
    *(a1 + 60) = 1;
    v9 = *(a2 + 2);
    if (v9 != *(a1 + 160))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 211, "kernel/constran", 2, "%s", v7, v8, &unk_26286CC60);
    }
  }

  else
  {
    *(a1 + 60) = 0;
    v9 = *(a2 + 2);
  }

  v10 = *(a1 + 84);
  if (v9 > v10)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 72, v9 - v10, 0);
  }

  v11 = *(a1 + 80);
  if (v11 <= v9)
  {
    if (v11 < v9)
    {
      v14 = v9 - v11;
      v15 = 16 * v11;
      do
      {
        v16 = (*(a1 + 72) + v15);
        *v16 = 0;
        v16[1] = 0;
        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  else if (v11 > v9)
  {
    v12 = v11;
    v13 = 16 * v11 - 16;
    do
    {
      --v12;
      DgnIArray<Utterance *>::~DgnIArray(*(a1 + 72) + v13);
      v13 -= 16;
    }

    while (v12 > v9);
  }

  *(a1 + 80) = v9;
  if (a4)
  {
    v17 = *a4;
  }

  else
  {
    v17 = 1;
  }

  PhnIndexSet::PhnIndexSet(v55, v17);
  v18 = *(a1 + 96);
  if (v18 >= 1)
  {
    v19 = 16 * v18 - 16;
    do
    {
      BitArray::~BitArray((*(a1 + 88) + v19));
      v19 -= 16;
    }

    while (v19 != -16);
  }

  *(a1 + 96) = 0;
  v20 = *(a1 + 112);
  if (v20 >= 1)
  {
    v21 = 16 * v20 - 16;
    do
    {
      BitArray::~BitArray((*(a1 + 104) + v21));
      v21 -= 16;
    }

    while (v21 != -16);
  }

  *(a1 + 112) = 0;
  v22 = *(a1 + 100);
  if (v9 > v22)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 88, v9 - v22, 0);
  }

  v23 = *(a1 + 116);
  if (v9 > v23)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 104, v9 - v23, 0);
  }

  v48 = (a1 + 120);
  BitArray::operator=((a1 + 120), v55);
  if (!v9)
  {
    if (*(a1 + 64) == 1)
    {
      **v48 |= 1u;
    }

    goto LABEL_60;
  }

  v24 = 0;
  do
  {
    PhnIndexSet::PhnIndexSet((*(a1 + 88) + 16 * *(a1 + 96)), v55);
    ++*(a1 + 96);
    PhnIndexSet::PhnIndexSet((*(a1 + 104) + 16 * *(a1 + 112)), v55);
    ++*(a1 + 112);
    ++v24;
  }

  while (v9 > v24);
  if (*(a1 + 64))
  {
    **v48 |= 1u;
    v25 = 0;
    v26 = *(a1 + 88);
    v27 = *(a1 + 104);
    do
    {
      v28 = 16 * v25;
      v29 = *(v26 + v28);
      v30 = *(v27 + v28);
      *v29 |= 1u;
      *v30 |= 1u;
      ++v25;
    }

    while (v9 > v25);
  }

  v31 = 0;
  v32 = 0;
  v33 = *a2;
  v49 = v9;
  do
  {
    *(*(a1 + 72) + 16 * v32 + 8) = 0;
    v34 = v33 + 16 * v32;
    if (!*(v34 + 8))
    {
      goto LABEL_59;
    }

    v35 = 0;
    v50 = (v31 - 1);
    v51 = (v31 + 1);
    do
    {
      v36 = *(*v34 + 4 * v35);
      v52 = v36;
      v53 = v32;
      v54 = xmmword_26286CC40;
      v37 = (v36 & 0xFE000000) == 0xFA000000 || (v36 & 0xFE000000) == -67108864;
      if (!v37 && DgnArray<CWIDAC>::find(*(a1 + 72) + 16 * v32, &v52) == -1)
      {
        v38 = *(*(**VocMgr::smpVocMgr + ((v36 >> 22) & 0x3F8)) + 48);
        v39 = v36 & 0xFFFFFF;
        v40 = *(a1 + 64);
        if (v40)
        {
          if (!*(v38[4] + 2 * v39))
          {
            goto LABEL_45;
          }
        }

        else if (*(v38[32] + 4 * v39) != v39)
        {
          goto LABEL_45;
        }

        v41 = *(a1 + 72) + 16 * v32;
        v42 = *(v41 + 8);
        if (v42 == *(v41 + 12))
        {
          DgnArray<CWIDAC>::reallocElts(*(a1 + 72) + 16 * v32, 1, 1);
          v42 = *(v41 + 8);
          v40 = *(a1 + 64);
        }

        v43 = *v41 + 24 * v42;
        *v43 = v52;
        *(v43 + 4) = v53;
        *(v43 + 8) = v54;
        *(v41 + 8) = v42 + 1;
        if ((v40 & 1) != 0 && *(v38[4] + 2 * v39))
        {
          v44 = (a1 + 120);
          if (v32)
          {
            v44 = (*(a1 + 88) + 16 * v50);
          }

          v45 = (v38[9] + 2 * *(v38[6] + 4 * v39));
          v46 = v45[*(v38[4] + 2 * v39) - 1];
          *(*v44 + ((*v45 >> 3) & 0x1FFC)) |= 1 << *v45;
          if (v51 != *(a1 + 96))
          {
            v47 = *(*(a1 + 104) + 16 * v51);
            *(v47 + ((v46 >> 3) & 0x1FFC)) |= 1 << v46;
          }
        }
      }

LABEL_45:
      ++v35;
      v33 = *a2;
      v34 = *a2 + 16 * v32;
    }

    while (v35 < *(v34 + 8));
    v9 = v49;
LABEL_59:
    v31 = ++v32;
  }

  while (v9 > v32);
LABEL_60:
  *(a1 + 296) = 0;
  BitArray::~BitArray(v55);
}

void sub_2625A9748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  BitArray::~BitArray(va);
  _Unwind_Resume(a1);
}

uint64_t Constraint::Constraint(uint64_t a1, __int16 a2, int a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10, int a11, char a12, unsigned int *a13)
{
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  PhnIndexSet::PhnIndexSet((a1 + 120), 0);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 300) = -16;
  *(a1 + 296) = 0;
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::Hash(a1 + 336, 0, 128);
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::Hash(a1 + 464, 0, 128);
  *(a1 + 576) = 0u;
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::Hash(a1 + 592, 0, 128);
  *(a1 + 64) = a12;
  *(a1 + 248) = 1879048192;
  if (a3 && a4)
  {
    v20 = 2;
LABEL_6:
    *(a1 + 68) = v20;
    goto LABEL_7;
  }

  if (a3)
  {
    v20 = 1;
    goto LABEL_6;
  }

  if (a4)
  {
    v20 = 0;
    *(a1 + 68) = 0;
  }

  else
  {
    v20 = *(a1 + 68);
  }

LABEL_7:
  *(a1 + 288) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0x10000000000;
  if ((v20 - 1) <= 1)
  {
    Constraint::setUpTranscription(a1, a5, a6, a13);
    v20 = *(a1 + 68);
  }

  if ((v20 & 0xFFFFFFFD) == 0)
  {
    DgnPrimArray<int>::copyArraySlice(a1 + 168, a7, 0, *(a7 + 8));
    if (a8)
    {
      DgnArray<DgnArray<ParseToken>>::copyArraySlice(a1 + 184, a8, 0, *(a8 + 8));
    }

    v23 = a9;
    *(a1 + 216) = a9;
    *(a1 + 240) = a10;
    *(a1 + 244) = a11;
    if (a9)
    {
      v28 = 0;
      v29 = 0;
      if (*(a9 + 24))
      {
        v24 = 0;
        do
        {
          v25 = *(*(v23 + 16) + 4 * v24);
          if (!*(*(v23 + 80) + 24 * v25 + 8))
          {
            Lattice<WordLatticeLC>::appendOutLinks(v23, v25, &v28);
            v23 = *(a1 + 216);
          }

          ++v24;
        }

        while (v24 < *(v23 + 24));
        if (v29)
        {
          v26 = 0;
          do
          {
            Lattice<WordLatticeLC>::appendOutLinks(*(a1 + 216), *(*(*(a1 + 216) + 128) + 136 * *(v28 + 4 * v26++) + 120), a1 + 224);
          }

          while (v26 < v29);
          v23 = *(a1 + 216);
        }
      }

      if ((*(v23 + 216) & 1) != 0 && *(a1 + 244) != -1)
      {
        if (*(a1 + 240))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 399, "kernel/constran", 3, "%s", v21, v22, &errStr_kernel_constran_E_LATTICE_TIME_CONSTRAINT);
          v23 = *(a1 + 216);
        }

        *(a1 + 248) = WordLattice::computeBackwardScores(v23, a1 + 256);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
    }
  }

  return a1;
}

void sub_2625A9A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(v14 + 592);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v14 + 576);
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(v14 + 464);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v14 + 448);
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::~Hash(v15 + 200);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a8);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a4);
  DgnIArray<Utterance *>::~DgnIArray(v15);
  BitArray::~BitArray((v14 + 120));
  DgnArray<PhnIndexSet>::releaseAll(a10);
  DgnArray<PhnIndexSet>::releaseAll(a9);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a7);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a5);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a6);
  _Unwind_Resume(a1);
}

unint64_t Lattice<WordLatticeLC>::appendOutLinks(unint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(*(result + 80) + 24 * a2 + 20);
  if (v3 != -2)
  {
    v5 = result;
    v6 = *(a3 + 8);
    do
    {
      if (v6 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v6 = *(a3 + 8);
      }

      *(*a3 + 4 * v6) = v3;
      v6 = *(a3 + 8) + 1;
      *(a3 + 8) = v6;
      v3 = *(*(v5 + 128) + 136 * v3 + 128);
    }

    while (v3 != -2);
  }

  return result;
}

void Constraint::~Constraint(Constraint *this)
{
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 36));
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(this + 592);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 576);
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(this + 464);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 448);
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::~Hash(this + 336);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 200);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnIArray<Utterance *>::~DgnIArray(this + 136);
  BitArray::~BitArray((this + 120));
  DgnArray<PhnIndexSet>::releaseAll(this + 104);
  DgnArray<PhnIndexSet>::releaseAll(this + 88);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 72);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 40);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 24);
}

uint64_t DgnDelete<DgnPrimArray<unsigned int>>(uint64_t result)
{
  if (result)
  {
    v1 = DgnPrimArray<unsigned int>::~DgnPrimArray(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void Constraint::printSize(Constraint *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 432, &v306);
  if (v307)
  {
    v16 = v306;
  }

  else
  {
    v16 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286CC60, a3, &unk_26286CC60, v16);
  DgnString::~DgnString(&v306);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286CC60);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 433, &v306);
  if (v307)
  {
    v27 = v306;
  }

  else
  {
    v27 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v27, 2, 2, 0);
  DgnString::~DgnString(&v306);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 4;
  }

  else
  {
    v28 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 434, &v306);
  if (v307)
  {
    v33 = v306;
  }

  else
  {
    v33 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v33, v28, v28, 0);
  v305 = a3;
  DgnString::~DgnString(&v306);
  *a4 += v28;
  *a5 += v28;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 436, &v306);
  if (v307)
  {
    v38 = v306;
  }

  else
  {
    v38 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_26286CC60, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  v39 = sizeObject<DgnArray<RecogGerm>>(this + 24, 0);
  v40 = sizeObject<DgnArray<RecogGerm>>(this + 24, 1);
  v41 = sizeObject<DgnArray<RecogGerm>>(this + 24, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 438, &v306);
  if (v307)
  {
    v46 = v306;
  }

  else
  {
    v46 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v21, &unk_26286CC60, v22, v22, v46, v39, v40, v41);
  DgnString::~DgnString(&v306);
  *a4 += v39;
  *a5 += v40;
  *a6 += v41;
  v47 = sizeObject<DgnArray<RecogGerm>>(this + 40, 0);
  v48 = sizeObject<DgnArray<RecogGerm>>(this + 40, 1);
  v49 = sizeObject<DgnArray<RecogGerm>>(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 440, &v306);
  if (v307)
  {
    v54 = v306;
  }

  else
  {
    v54 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v21, &unk_26286CC60, v22, v22, v54, v47, v48, v49);
  DgnString::~DgnString(&v306);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 441, &v306);
  if (v307)
  {
    v59 = v306;
  }

  else
  {
    v59 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v21, &unk_26286CC60, v22, v22, v59, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 442, &v306);
  if (v307)
  {
    v64 = v306;
  }

  else
  {
    v64 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v21, &unk_26286CC60, v22, v22, v64, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 444, &v306);
  if (v307)
  {
    v69 = v306;
  }

  else
  {
    v69 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v21, &unk_26286CC60, v22, v22, v69, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 446, &v306);
  if (v307)
  {
    v74 = v306;
  }

  else
  {
    v74 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v21, &unk_26286CC60, v22, v22, v74, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 448, &v306);
  if (v307)
  {
    v79 = v306;
  }

  else
  {
    v79 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, v21, &unk_26286CC60, v22, v22, v79, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 449, &v306);
  if (v307)
  {
    v84 = v306;
  }

  else
  {
    v84 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v21, &unk_26286CC60, v22, v22, v84, 1, 1, 0);
  DgnString::~DgnString(&v306);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 451, &v306);
  if (v307)
  {
    v89 = v306;
  }

  else
  {
    v89 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, v21, &unk_26286CC60, v22, v22, v89, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  v90 = sizeObject<DgnArray<CWIDAC>>(this + 72, 0);
  v91 = sizeObject<DgnArray<CWIDAC>>(this + 72, 1);
  v92 = sizeObject<DgnArray<CWIDAC>>(this + 72, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 453, &v306);
  if (v307)
  {
    v97 = v306;
  }

  else
  {
    v97 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26286CC60, v22, v22, v97, v90, v91, v92);
  DgnString::~DgnString(&v306);
  *a4 += v90;
  *a5 += v91;
  *a6 += v92;
  v98 = sizeObject<PhnIndexSet>(this + 88, 0);
  v99 = sizeObject<PhnIndexSet>(this + 88, 1);
  v100 = sizeObject<PhnIndexSet>(this + 88, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 455, &v306);
  if (v307)
  {
    v105 = v306;
  }

  else
  {
    v105 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v21, &unk_26286CC60, v22, v22, v105, v98, v99, v100);
  DgnString::~DgnString(&v306);
  *a4 += v98;
  *a5 += v99;
  *a6 += v100;
  v106 = sizeObject<PhnIndexSet>(this + 104, 0);
  v107 = sizeObject<PhnIndexSet>(this + 104, 1);
  v108 = sizeObject<PhnIndexSet>(this + 104, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 457, &v306);
  if (v307)
  {
    v113 = v306;
  }

  else
  {
    v113 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v110, v111, v112, v21, &unk_26286CC60, v22, v22, v113, v106, v107, v108);
  DgnString::~DgnString(&v306);
  *a4 += v106;
  *a5 += v107;
  *a6 += v108;
  v114 = PhnIndexSet::sizeObject(this + 120, 0);
  v115 = PhnIndexSet::sizeObject(this + 120, 1);
  v116 = PhnIndexSet::sizeObject(this + 120, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 459, &v306);
  if (v307)
  {
    v121 = v306;
  }

  else
  {
    v121 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v21, &unk_26286CC60, v22, v22, v121, v114, v115, v116);
  DgnString::~DgnString(&v306);
  *a4 += v114;
  *a5 += v115;
  *a6 += v116;
  v122 = sizeObject<RecogGerm>(this + 136, 0);
  v123 = sizeObject<RecogGerm>(this + 136, 1);
  v124 = sizeObject<RecogGerm>(this + 136, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 461, &v306);
  if (v307)
  {
    v129 = v306;
  }

  else
  {
    v129 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v126, v127, v128, v21, &unk_26286CC60, v22, v22, v129, v122, v123, v124);
  DgnString::~DgnString(&v306);
  *a4 += v122;
  *a5 += v123;
  *a6 += v124;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v130 = 12;
  }

  else
  {
    v130 = 16;
  }

  v131 = *(this + 40);
  v132 = *(this + 41);
  if (v132 >= v131)
  {
    v133 = 0;
    if (v131 > 0)
    {
      v130 += 4 * (v131 - 1) + 4;
    }

    v134 = v130 + 4 * (v132 - v131);
  }

  else
  {
    v133 = 4 * v131;
    v134 = v130;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 463, &v306);
  if (v307)
  {
    v139 = v306;
  }

  else
  {
    v139 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v21, &unk_26286CC60, v22, v22, v139, v134, v130, v133);
  DgnString::~DgnString(&v306);
  *a4 += v134;
  *a5 += v130;
  *a6 += v133;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v140 = 12;
  }

  else
  {
    v140 = 16;
  }

  v141 = *(this + 44);
  v142 = *(this + 45);
  if (v142 >= v141)
  {
    v143 = 0;
    if (v141 > 0)
    {
      v140 += 4 * (v141 - 1) + 4;
    }

    v144 = v140 + 4 * (v142 - v141);
  }

  else
  {
    v143 = 4 * v141;
    v144 = v140;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 465, &v306);
  if (v307)
  {
    v149 = v306;
  }

  else
  {
    v149 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26286CC60, v22, v22, v149, v144, v140, v143);
  DgnString::~DgnString(&v306);
  *a4 += v144;
  *a5 += v140;
  *a6 += v143;
  v150 = sizeObject<DgnArray<ParseToken>>(this + 184, 0);
  v151 = sizeObject<DgnArray<ParseToken>>(this + 184, 1);
  v152 = sizeObject<DgnArray<ParseToken>>(this + 184, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 467, &v306);
  if (v307)
  {
    v157 = v306;
  }

  else
  {
    v157 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v154, v155, v156, v21, &unk_26286CC60, v22, v22, v157, v150, v151, v152);
  DgnString::~DgnString(&v306);
  *a4 += v150;
  *a5 += v151;
  *a6 += v152;
  v158 = sizeObject<DgnPrimArray<unsigned int>>(this + 200, 0);
  v159 = sizeObject<DgnPrimArray<unsigned int>>(this + 200, 1);
  v306 = 0;
  v307 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v306);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 469, &v306);
  if (v307)
  {
    v164 = v306;
  }

  else
  {
    v164 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v161, v162, v163, v21, &unk_26286CC60, v22, v22, v164, v158, v159, 0);
  DgnString::~DgnString(&v306);
  *a4 += v158;
  *a5 += v159;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v165 = 4;
  }

  else
  {
    v165 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 471, &v306);
  if (v307)
  {
    v170 = v306;
  }

  else
  {
    v170 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v167, v168, v169, v21, &unk_26286CC60, v22, v22, v170, v165, v165, 0);
  DgnString::~DgnString(&v306);
  *a4 += v165;
  *a5 += v165;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v171 = 12;
  }

  else
  {
    v171 = 16;
  }

  v172 = *(this + 58);
  v173 = *(this + 59);
  if (v173 >= v172)
  {
    v174 = 0;
    if (v172 > 0)
    {
      v171 += 4 * (v172 - 1) + 4;
    }

    v175 = v171 + 4 * (v173 - v172);
  }

  else
  {
    v174 = 4 * v172;
    v175 = v171;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 473, &v306);
  if (v307)
  {
    v180 = v306;
  }

  else
  {
    v180 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v176, v177, v178, v179, v21, &unk_26286CC60, v22, v22, v180, v175, v171, v174);
  DgnString::~DgnString(&v306);
  *a4 += v175;
  *a5 += v171;
  *a6 += v174;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 475, &v306);
  if (v307)
  {
    v185 = v306;
  }

  else
  {
    v185 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v182, v183, v184, v21, &unk_26286CC60, v22, v22, v185, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 477, &v306);
  if (v307)
  {
    v190 = v306;
  }

  else
  {
    v190 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v187, v188, v189, v21, &unk_26286CC60, v22, v22, v190, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 479, &v306);
  if (v307)
  {
    v195 = v306;
  }

  else
  {
    v195 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v192, v193, v194, v21, &unk_26286CC60, v22, v22, v195, 4, 4, 0);
  DgnString::~DgnString(&v306);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v196 = 12;
  }

  else
  {
    v196 = 16;
  }

  v197 = *(this + 66);
  v198 = *(this + 67);
  if (v198 >= v197)
  {
    v199 = 0;
    if (v197 > 0)
    {
      v196 += 4 * (v197 - 1) + 4;
    }

    v200 = v196 + 4 * (v198 - v197);
  }

  else
  {
    v199 = 4 * v197;
    v200 = v196;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 481, &v306);
  if (v307)
  {
    v205 = v306;
  }

  else
  {
    v205 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v202, v203, v204, v21, &unk_26286CC60, v22, v22, v205, v200, v196, v199);
  DgnString::~DgnString(&v306);
  *a4 += v200;
  *a5 += v196;
  *a6 += v199;
  v206 = sizeObject<DgnPrimArray<unsigned int>>(this + 272, 0);
  v207 = sizeObject<DgnPrimArray<unsigned int>>(this + 272, 1);
  v306 = 0;
  v307 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v306);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 483, &v306);
  if (v307)
  {
    v212 = v306;
  }

  else
  {
    v212 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v21, &unk_26286CC60, v22, v22, v212, v206, v207, 0);
  DgnString::~DgnString(&v306);
  *a4 += v206;
  *a5 += v207;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v213 = 4;
  }

  else
  {
    v213 = 8;
  }

  v214 = *(this + 36);
  if (!v214)
  {
    v217 = 0;
LABEL_138:
    v218 = v213;
    goto LABEL_144;
  }

  v215 = *(v214 + 8);
  v216 = *(v214 + 12);
  if (v216 < v215)
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v213 = 16;
    }

    else
    {
      v213 = 24;
    }

    v217 = 4 * v215;
    goto LABEL_138;
  }

  v217 = 0;
  v219 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v219 = 12;
  }

  if (v215 > 0)
  {
    v219 += 4 * (v215 - 1) + 4;
  }

  v213 += v219;
  v218 = v213 + 4 * (v216 - v215);
LABEL_144:
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 485, &v306);
  if (v307)
  {
    v224 = v306;
  }

  else
  {
    v224 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v220, v221, v222, v223, v21, &unk_26286CC60, v22, v22, v224, v218, v213, v217);
  DgnString::~DgnString(&v306);
  *a4 += v218;
  *a5 += v213;
  *a6 += v217;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 486, &v306);
  if (v307)
  {
    v229 = v306;
  }

  else
  {
    v229 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v225, v226, v227, v228, v21, &unk_26286CC60, v22, v22, v229, 31, 31, 0);
  DgnString::~DgnString(&v306);
  *a4 += 31;
  *a5 += 31;
  v230 = sizeObject(this + 360);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v231 = 8;
  }

  else
  {
    v231 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v232 = 2;
  }

  else
  {
    v232 = 3;
  }

  v233 = *(this + 106) << v232;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v234 = 8;
  }

  else
  {
    v234 = 16;
  }

  v235 = v230 + v234 + v231 + v233 + 13;
  v236 = sizeObject(this + 360);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v237 = 8;
  }

  else
  {
    v237 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v238 = 2;
  }

  else
  {
    v238 = 3;
  }

  v239 = *(this + 106) << v238;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v240 = 8;
  }

  else
  {
    v240 = 16;
  }

  v241 = v236 + v240 + v237 + v239 + 13;
  v242 = sizeObject(this + 360);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 488, &v306);
  if (v307)
  {
    v247 = v306;
  }

  else
  {
    v247 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v243, v244, v245, v246, v21, &unk_26286CC60, v22, v22, v247, v235, v241, v242);
  DgnString::~DgnString(&v306);
  *a4 += v235;
  *a5 += v241;
  *a6 += v242;
  v248 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 448, 0);
  v249 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 448, 1);
  v250 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 448, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 490, &v306);
  if (v307)
  {
    v255 = v306;
  }

  else
  {
    v255 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v251, v252, v253, v254, v21, &unk_26286CC60, v22, v22, v255, v248, v249, v250);
  DgnString::~DgnString(&v306);
  *a4 += v248;
  *a5 += v249;
  *a6 += v250;
  v256 = sizeObject(this + 488);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v257 = 8;
  }

  else
  {
    v257 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v258 = 2;
  }

  else
  {
    v258 = 3;
  }

  v259 = *(this + 138) << v258;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v260 = 8;
  }

  else
  {
    v260 = 16;
  }

  v261 = v256 + v260 + v257 + v259 + 13;
  v262 = sizeObject(this + 488);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v263 = 8;
  }

  else
  {
    v263 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v264 = 2;
  }

  else
  {
    v264 = 3;
  }

  v265 = *(this + 138) << v264;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v266 = 8;
  }

  else
  {
    v266 = 16;
  }

  v267 = v262 + v266 + v263 + v265 + 13;
  v268 = sizeObject(this + 488);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 492, &v306);
  if (v307)
  {
    v273 = v306;
  }

  else
  {
    v273 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v269, v270, v271, v272, v21, &unk_26286CC60, v22, v22, v273, v261, v267, v268);
  DgnString::~DgnString(&v306);
  *a4 += v261;
  *a5 += v267;
  *a6 += v268;
  v274 = sizeObject<DgnPrimArray<unsigned int>>(this + 576, 0);
  v275 = sizeObject<DgnPrimArray<unsigned int>>(this + 576, 1);
  v306 = 0;
  v307 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v306);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 494, &v306);
  if (v307)
  {
    v280 = v306;
  }

  else
  {
    v280 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v276, v277, v278, v279, v21, &unk_26286CC60, v22, v22, v280, v274, v275, 0);
  DgnString::~DgnString(&v306);
  *a4 += v274;
  *a5 += v275;
  v281 = sizeObject(this + 616);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v282 = 8;
  }

  else
  {
    v282 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v283 = 2;
  }

  else
  {
    v283 = 3;
  }

  v284 = *(this + 170) << v283;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v285 = 8;
  }

  else
  {
    v285 = 16;
  }

  v286 = v281 + v285 + v282 + v284 + 13;
  v287 = sizeObject(this + 616);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v288 = 8;
  }

  else
  {
    v288 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v289 = 2;
  }

  else
  {
    v289 = 3;
  }

  v290 = *(this + 170) << v289;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v291 = 8;
  }

  else
  {
    v291 = 16;
  }

  v292 = v287 + v291 + v288 + v290 + 13;
  v293 = sizeObject(this + 616);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 496, &v306);
  if (v307)
  {
    v298 = v306;
  }

  else
  {
    v298 = &unk_26286CC60;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v294, v295, v296, v297, v21, &unk_26286CC60, v22, v22, v298, v286, v292, v293);
  DgnString::~DgnString(&v306);
  *a4 += v286;
  *a5 += v292;
  *a6 += v293;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 497, &v306);
  if (v307)
  {
    v303 = v306;
  }

  else
  {
    v303 = &unk_26286CC60;
  }

  v304 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v299, v300, v301, v302, v305, &unk_26286CC60, (35 - v305), (35 - v305), v303, *a4, *a5, *a6);
  DgnString::~DgnString(&v306);
}

void sub_2625AB2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<RecogGerm>>(uint64_t a1, int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v4 = sizeObject<RecogGerm>(v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 16 * v7 - 16;
        do
        {
          v5 += sizeObject<RecogGerm>(*a1 + v9, a2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v11);
  return v5;
}

uint64_t sizeObject<DgnArray<CWIDAC>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v12 = 0x3FFF;
  v13 = xmmword_26286CC40;
  sizeObject(v11, 2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  if (a2 == 3)
  {
    v4 = 0;
  }

  else if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 >= 1)
    {
      v7 = v5 + 1;
      v8 = 16 * v5 - 16;
      v6 = v4;
      do
      {
        v6 += sizeObject<CWIDAC>(*a1 + v8, a2);
        --v7;
        v8 -= 16;
      }

      while (v7 > 1);
    }

    if (a2)
    {
      v4 = v6;
    }

    else
    {
      v4 = v6 + v4 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v4;
}

void sub_2625AB590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<PhnIndexSet>(uint64_t a1, uint64_t a2)
{
  DgnString::DgnString(v11);
  v4 = PhnIndexSet::sizeObject(v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 16 * v7 - 16;
        do
        {
          v5 += PhnIndexSet::sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  BitArray::~BitArray(v11);
  return v5;
}

uint64_t sizeObject<RecogGerm>(uint64_t a1, int a2)
{
  v11 = 0x3FFFFAFFFFFFLL;
  v12 = xmmword_26286CC40;
  v13 = 0;
  v14 = 1310720000;
  v15 = 0;
  v16 = 0x70000000FFFFFFFELL;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 44 * v7 - 44;
      do
      {
        v5 += sizeObject(*a1 + v9, a2) + 18;
        --v8;
        v9 -= 44;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += (v6 + 18) * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t sizeObject<DgnPrimArray<unsigned int>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<unsigned int>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

uint64_t sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimArray<unsigned int>>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  return v5;
}

void Constraint::cloneConstraint(Constraint *this, const Constraint *a2)
{
  v3 = MemChunkAlloc(0x2C0uLL, 0);

  Constraint::Constraint(v3, this);
}

void Constraint::Constraint(Constraint *this, const Constraint *a2)
{
  v4 = *a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *this = v4;
  *(this + 9) = 0;
  *(this + 10) = 0;
  DgnArray<DgnArray<CWIDAC>>::copyArraySlice(this + 72, a2 + 9, 0, *(a2 + 20));
  *(this + 11) = 0;
  *(this + 12) = 0;
  DgnArray<PhnIndexSet>::copyArraySlice(this + 88, a2 + 11, 0, *(a2 + 24));
  *(this + 13) = 0;
  *(this + 14) = 0;
  DgnArray<PhnIndexSet>::copyArraySlice(this + 104, a2 + 13, 0, *(a2 + 28));
  PhnIndexSet::PhnIndexSet((this + 120), (a2 + 120));
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  DgnPrimArray<int>::copyArraySlice(this + 152, a2 + 19, 0, *(a2 + 40));
  *(this + 21) = 0;
  *(this + 22) = 0;
  DgnPrimArray<int>::copyArraySlice(this + 168, a2 + 21, 0, *(a2 + 44));
  *(this + 23) = 0;
  *(this + 24) = 0;
  DgnArray<DgnArray<ParseToken>>::copyArraySlice(this + 184, a2 + 23, 0, *(a2 + 48));
  *(this + 25) = 0;
  *(this + 26) = 0;
  v5 = *(a2 + 27);
  *(this + 28) = 0;
  *(this + 27) = v5;
  *(this + 29) = 0;
  DgnPrimArray<int>::copyArraySlice(this + 224, a2 + 28, 0, *(a2 + 58));
  *(this + 30) = *(a2 + 30);
  *(this + 62) = *(a2 + 62);
  *(this + 32) = 0;
  *(this + 33) = 0;
  DgnPrimArray<int>::copyArraySlice(this + 256, a2 + 32, 0, *(a2 + 66));
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 75) = -16;
  *(this + 296) = 0;
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::Hash(this + 336, 0, 128);
  *(this + 56) = 0;
  *(this + 57) = 0;
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::Hash(this + 464, 0, 128);
  *(this + 36) = 0u;
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::Hash(this + 592, 0, 128);
  v6 = 0;
  *(this + 61) = 1;
  *(this + 36) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 63) = 0;
  *(this + 14) = 0;
  *(this + 64) = *(a2 + 64);
  v7 = *(a2 + 17);
  *(this + 17) = v7;
  if ((v7 - 1) <= 1)
  {
    v6 = *(this + 40) != 0;
  }

  *(this + 60) = v6;
}

void sub_2625ABCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v15 + 576);
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(v15 + 464);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v15 + 448);
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::~Hash(v15 + 336);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v15 + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15 + 256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v13);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnIArray<Utterance *>::~DgnIArray(v18);
  BitArray::~BitArray((v15 + 120));
  DgnArray<PhnIndexSet>::releaseAll(v17);
  DgnArray<PhnIndexSet>::releaseAll(v16);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a11);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a12);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a10);
  _Unwind_Resume(a1);
}

uint64_t Constraint::setupConstraint(Constraint *this)
{
  *(this + 296) = 0;
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(this + 336);
  if (!*(this + 115))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 448, 1, 0);
  }

  v2 = *(this + 114);
  if (v2 <= 1)
  {
    if (!v2)
    {
      v5 = *(this + 56);
      *v5 = 0;
      v5[1] = 0;
    }
  }

  else if (v2 >= 2)
  {
    v3 = v2 + 1;
    v4 = 16 * v2 - 16;
    do
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*(this + 56) + v4);
      --v3;
      v4 -= 16;
    }

    while (v3 > 2);
  }

  *(this + 114) = 1;
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(this + 464);
  v6 = (this + 576);
  if (!*(this + 147))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 576, 1, 0);
  }

  v7 = *(this + 146);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v9 = *v6;
      *v9 = 0;
      v9[1] = 0;
    }
  }

  else if (v7 >= 2)
  {
    v8 = 16 * v7 - 16;
    do
    {
      --v7;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*v6 + v8);
      v8 -= 16;
    }

    while (v7 > 1);
  }

  *(this + 146) = 1;

  return Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(this + 592);
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 20);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

void Constraint::prunePreList(Constraint *this, RecogGermIterator *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    *(this + 62) = a3;
    *(this + 296) = 0;
    if ((*(this + 17) - 1) > 1)
    {
      *(this + 1) = 0;
      *(this + 4) = 0;
      return;
    }

    goto LABEL_28;
  }

  if (*(a2 + 3) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/constran.cpp", 595, "kernel/constran", 1, "%s", a7, a8, &errStr_kernel_constran_E_TOOMANYWORDS);
  }

  *(this + 62) = a3;
  *(this + 296) = 0;
  if ((*(this + 17) - 1) < 2)
  {
LABEL_28:
    if (a3)
    {
      v30 = a2;
    }

    else
    {
      v30 = 0;
    }

    *(this + 1) = v30;
    *(this + 61) = 1;
    return;
  }

  v11 = *(this + 52);
  if (v11 >= 1)
  {
    while (1)
    {
      v12 = v11 - 1;
      if ((*(this + 63) & 1) == 0)
      {
        break;
      }

      v13 = *(this + 25);
      if (v12 >= *(this + 70))
      {
        goto LABEL_14;
      }

      v14 = *(this + 34) + 16 * v12;
      v15 = *(v14 + 8);
      v16 = (v13 + 16 * v12);
      if (*(v16 + 2) <= (4 * v15))
      {
        goto LABEL_14;
      }

      v17 = v15 - 1;
      if (v17 >= 0)
      {
        v18 = *v14;
        v19 = *v16;
        v20 = 4 * v17;
        do
        {
          *(v19 + 4 * *(v18 + v20)) = -1;
          v20 -= 4;
        }

        while (v20 != -4);
      }

LABEL_16:
      if (v11-- <= 1)
      {
        goto LABEL_18;
      }
    }

    v13 = *(this + 25);
LABEL_14:
    v21 = v13 + 16 * v12;
    v22 = *(v21 + 8);
    if (v22)
    {
      memset(*v21, 255, 4 * v22);
    }

    goto LABEL_16;
  }

LABEL_18:
  v24 = *(this + 36);
  if (v24)
  {
    *(v24 + 8) = 0;
  }

  v25 = *(this + 52);
  v26 = *(this + 71);
  if (v25 > v26)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 272, v25 - v26, 0);
  }

  v27 = *(this + 70);
  if (v27 <= v25)
  {
    if (v27 < v25)
    {
      v31 = v25 - v27;
      v32 = 16 * v27;
      do
      {
        v33 = (*(this + 34) + v32);
        *v33 = 0;
        v33[1] = 0;
        v32 += 16;
        --v31;
      }

      while (v31);
    }
  }

  else if (v27 > v25)
  {
    v28 = v27;
    v29 = 16 * v27 - 16;
    do
    {
      --v28;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 34) + v29);
      v29 -= 16;
    }

    while (v28 > v25);
  }

  *(this + 70) = v25;
  if (v25 >= 1)
  {
    v34 = 0;
    v35 = vdupq_n_s64(v25 - 1);
    v36 = (*(this + 34) + 16 * v25 - 24);
    do
    {
      v37 = vdupq_n_s64(v34);
      v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_26286B680)));
      if (vuzp1_s16(v38, *v35.i8).u8[0])
      {
        v36[4] = 0;
      }

      if (vuzp1_s16(v38, *&v35).i8[2])
      {
        *v36 = 0;
      }

      if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_26286BF80)))).i32[1])
      {
        *(v36 - 4) = 0;
        *(v36 - 8) = 0;
      }

      v34 += 4;
      v36 -= 16;
    }

    while (((v25 + 3) & 0xFFFFFFFC) != v34);
  }

  *(this + 1) = a2;
  v39 = VocMgr::smpVocMgr;
  v40 = *(*VocMgr::smpVocMgr + 8);
  if (v40)
  {
    v41 = 0;
    for (i = 0; i < v40; ++i)
    {
      v43 = *(**VocMgr::smpVocMgr + 8 * i);
      if (v43)
      {
        v44 = *(v43 + 48);
        if (v44)
        {
          v41 += *(v44 + 388);
        }
      }
    }
  }

  else
  {
    v41 = 0;
  }

  v45 = *(a2 + 3);
  *(this + 63) = v41 > 4 * v45;
  v105 = 0x3FFFFAFFFFFFLL;
  v106 = xmmword_26286CC40;
  v107 = 0;
  v108 = 1310720000;
  v109 = 0;
  v110 = 0x70000000FFFFFFFELL;
  *(a2 + 32) = 0;
  *(a2 + 2) = 0;
  if (v45)
  {
    v46 = 0;
    while (1)
    {
      (*(*a2 + 16))(a2, &v105);
      v104 = v105;
      v47 = v105 >> 25;
      v48 = *(this + 52);
      v49 = v48;
      if (v47 >= v48)
      {
        break;
      }

      v50 = *(*(*(**v39 + 8 * v47) + 48) + 388);
      v51 = *(this + 25);
      if (v50 > *(v51 + 16 * v47 + 8))
      {
        v52 = v51 + 16 * v49;
        v54 = *(v52 + 8);
        v53 = *(v52 + 12);
        if (v50 > v53)
        {
          DgnPrimArray<unsigned int>::reallocElts(v51 + 16 * v49, v50 - v53, 0);
          v51 = *(this + 25);
        }

        v55 = v49;
        *(v52 + 8) = v50;
        memset((*(v51 + 16 * v49) + 4 * v54), 255, 4 * (v50 - v54));
        if (*(this + 63) == 1)
        {
          v56 = *(this + 34);
          v57 = v56 + 16 * v49;
          v58 = *(v57 + 8);
          v59 = *(a2 + 3);
          if (v59 >= v50)
          {
            v60 = v50;
          }

          else
          {
            v60 = *(a2 + 3);
          }

          if (v60 <= 0x3F8)
          {
            v61 = 1016;
          }

          else
          {
            v61 = v60;
          }

          v62 = *(v57 + 8);
          if (v61 > v58)
          {
            if (v59 <= v50)
            {
              if (v59 <= 0x3F8)
              {
                v62 = 1016;
              }

              else
              {
                v62 = *(a2 + 3);
              }
            }

            else if (v50 <= 0x3F8)
            {
              v62 = 1016;
            }

            else
            {
              v62 = v50;
            }
          }

          v101 = *(v57 + 12);
          if (v62 > v101)
          {
            DgnPrimArray<unsigned int>::reallocElts(v57, v62 - v101, 0);
            v56 = *(this + 34);
            v101 = *(v56 + 16 * v55 + 12);
          }

          v102 = v56 + 16 * v55;
          if (v58 > v101)
          {
            DgnPrimArray<unsigned int>::reallocElts(v56 + 16 * v55, v58 - v101, 0);
          }

          *(v102 + 8) = v58;
        }
      }

LABEL_108:
      v89 = v104 & 0xFFFFFF;
      if (v89 != 16777208)
      {
        v90 = *(*(this + 25) + 16 * v47);
        if (*(v90 + 4 * v89) == -1)
        {
          *(v90 + 4 * v89) = v46;
          if (*(this + 63) == 1)
          {
            v98 = *(this + 34) + 16 * v47;
            v99 = *(v98 + 8);
            if (v99 == *(v98 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(*(this + 34) + 16 * v47, 1, 1);
              v99 = *(v98 + 8);
            }

            *(*v98 + 4 * v99) = v89;
            ++*(v98 + 8);
          }
        }

        else
        {
          v91 = *(this + 36);
          if (!v91)
          {
            v91 = MemChunkAlloc(0x10uLL, 0);
            *v91 = 0;
            v91[1] = 0;
            *(this + 36) = v91;
          }

          v92 = *(a2 + 3);
          if (*(v91 + 2) < v92)
          {
            v93 = *(v91 + 3);
            v94 = v91;
            if (v92 > v93)
            {
              DgnPrimArray<unsigned int>::reallocElts(v91, v92 - v93, 0);
              v94 = *(this + 36);
            }

            *(v91 + 2) = v92;
            memset(*v94, 255, 4 * *(v94 + 2));
            v91 = *(this + 36);
          }

          v95 = *v91;
          v96 = *(*(*(this + 25) + 16 * v47) + 4 * v89);
          do
          {
            v97 = v96;
            v96 = *(v95 + 4 * v96);
          }

          while (v96 != -1);
          *(v95 + 4 * v97) = v46;
        }
      }

      v100 = *(a2 + 2) + 1;
      *(a2 + 2) = v100;
      if (*(a2 + 32))
      {
        (*(*a2 + 24))(a2);
        v100 = *(a2 + 2);
      }

      ++v46;
      if (v100 == *(a2 + 3))
      {
        goto LABEL_135;
      }
    }

    v63 = v47 + 1;
    v64 = *(this + 53);
    if (v64 <= v47)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 200, v63 - v64, 0);
      v48 = *(this + 52);
    }

    if (v48 <= v63)
    {
      if (v48 <= v47)
      {
        v67 = v47 - v48 + 1;
        v68 = 16 * v48;
        do
        {
          v69 = (*(this + 25) + v68);
          *v69 = 0;
          v69[1] = 0;
          v68 += 16;
          --v67;
        }

        while (v67);
      }
    }

    else if (v48 > v63)
    {
      v65 = v48;
      v66 = 16 * v48 - 16;
      do
      {
        --v65;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 25) + v66);
        v66 -= 16;
      }

      while (v65 > v63);
    }

    *(this + 52) = v63;
    v70 = *(this + 71);
    if (v70 <= v47)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 272, v63 - v70, 0);
    }

    v71 = *(this + 70);
    if (v71 <= v63)
    {
      if (v71 <= v47)
      {
        v74 = v47 - v71 + 1;
        v75 = 16 * v71;
        do
        {
          v76 = (*(this + 34) + v75);
          *v76 = 0;
          v76[1] = 0;
          v75 += 16;
          --v74;
        }

        while (v74);
      }
    }

    else
    {
      v72 = v71;
      if (v71 > v63)
      {
        v73 = 16 * v71 - 16;
        do
        {
          --v72;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 34) + v73);
          v73 -= 16;
        }

        while (v72 > v63);
      }
    }

    *(this + 70) = v63;
    v77 = 16 * v49;
    v78 = v63;
    while (1)
    {
      v79 = *(**v39 + 8 * v49);
      if (v79)
      {
        v80 = *(v79 + 48);
        if (v80)
        {
          break;
        }
      }

LABEL_107:
      ++v49;
      v77 += 16;
      if (v78 == v49)
      {
        goto LABEL_108;
      }
    }

    v81 = *(v80 + 388);
    v82 = *(this + 25);
    v83 = v82 + v77;
    v84 = *(v82 + v77 + 12);
    if (v81 <= v84)
    {
      *(v83 + 8) = v81;
      if (!v81)
      {
        goto LABEL_98;
      }
    }

    else
    {
      DgnPrimArray<unsigned int>::reallocElts(v82 + v77, v81 - v84, 0);
      *(v83 + 8) = v81;
      v82 = *(this + 25);
    }

    memset(*(v82 + v77), 255, 4 * v81);
LABEL_98:
    if (*(this + 63) == 1)
    {
      v85 = *(a2 + 3);
      if (v85 >= v81)
      {
        v85 = v81;
      }

      if (v85 <= 0x3F8)
      {
        v86 = 1016;
      }

      else
      {
        v86 = v85;
      }

      v87 = *(this + 34);
      v88 = *(v87 + v77 + 12);
      if (v86 > v88)
      {
        DgnPrimArray<unsigned int>::reallocElts(v87 + v77, v86 - v88, 0);
        v87 = *(this + 34);
      }

      *(v87 + v77 + 8) = 0;
    }

    goto LABEL_107;
  }

LABEL_135:
  *(this + 61) = 0;
  v103 = *(this + 36);
  if (v103)
  {
    if (!*(v103 + 8))
    {
      DgnDelete<DgnPrimArray<unsigned int>>(v103);
      *(this + 36) = 0;
    }
  }
}

void Constraint::addToReturnList(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v6 = *a2;
  if (v6 >> 25 == 126 || (v6 & 0xFFFFFF) == 0xFFFFF8)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(*(*(**VocMgr::smpVocMgr + ((v6 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v6 & 0xFFFFFF));
  }

  v8 = *(a1 + 32);
  if (v8 <= v7)
  {
    v9 = v7 + 1;
    v10 = *(a1 + 36);
    if (v10 <= v7)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 24, v9 - v10, 0);
      v8 = *(a1 + 32);
    }

    if (v8 <= v9)
    {
      if (v8 <= v7)
      {
        v13 = v7 - v8 + 1;
        v14 = 16 * v8;
        do
        {
          v15 = (*(a1 + 24) + v14);
          *v15 = 0;
          v15[1] = 0;
          v14 += 16;
          --v13;
        }

        while (v13);
      }
    }

    else if (v8 > v9)
    {
      v11 = v8;
      v12 = 16 * v8 - 16;
      do
      {
        --v11;
        DgnIArray<Utterance *>::~DgnIArray(*(a1 + 24) + v12);
        v12 -= 16;
      }

      while (v11 > v9);
    }

    *(a1 + 32) = v9;
  }

  v16 = *(a1 + 24) + 16 * v7;
  v17 = *(v16 + 8);
  if (v17 == *(v16 + 12))
  {
    DgnArray<RecogGerm>::reallocElts(v16, 1, 1);
    v17 = *(v16 + 8);
  }

  RecogGerm::operator=(*v16 + 44 * v17, a2);
  ++*(v16 + 8);
  ++*a3;
}

void Constraint::seedGivenTraceState(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v6 = VocMgr::smpVocMgr;
  v7 = *a2;
  v8 = *(*(**VocMgr::smpVocMgr + 8 * v7) + 56);
  v9 = *(a2 + 1);
  v10 = *(*(v8 + 62) + 4 * v9);
  if (!v10)
  {
    v10 = *(a2 + 1);
  }

  v32 = v10;
  v30 = *(*(v8 + 36) + 4 * v9);
  v42 = 0x3FFFFAFFFFFFLL;
  v43 = xmmword_26286CC40;
  v44 = 0;
  *v45 = 1310720000;
  *&v45[4] = 0;
  v46 = 0x70000000FFFFFFFELL;
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 12))
  {
    v14 = a2;
    v28 = v8;
    do
    {
      (*(*a4 + 16))(a4, &v42);
      if (*(a1 + 62) != 1 || (v43 ? (v20 = v43 == *(v14 + 1)) : (v20 = 1), v20))
      {
        v21 = v42;
        if (v7 == v42 >> 25 && StateMgr::isWordIdInState(v8, v32, v42 & 0xFFFFFF, 0, v16, v17, v18, v19))
        {
          v33 = v42;
          v35 = *(&v43 + 4);
          v36 = HIDWORD(v43);
          v37 = v44;
          v39 = *&v45[2];
          v40 = v46;
          v41 = v47;
          v34 = *(v14 + 1);
          v38 = v30;
          ++*a6;
          if (*(a1 + 216))
          {
            if (*(a3 + 2))
            {
              for (i = 0; i < *(a3 + 2); ++i)
              {
                v23 = *a3;
                v24 = *(a1 + 216);
                v25 = *(*(v24 + 128) + 136 * *(*a3 + 4 * i) + 88);
                if (*(v24 + 218) == 1)
                {
                  if (v25 != v21)
                  {
                    continue;
                  }
                }

                else
                {
                  if (v25 != VocMgr::getRoot(v6, v21))
                  {
                    continue;
                  }

                  v23 = *a3;
                }

                if (*(a1 + 62))
                {
                  v26 = *(v23 + 4 * i);
                  if (DWORD1(v43) != -2 && DWORD1(v43) != v26)
                  {
                    continue;
                  }
                }

                else
                {
                  v26 = *(v23 + 4 * i);
                }

                LODWORD(v35) = v26;
                Constraint::addToReturnList(a1, &v33, a5);
              }
            }
          }

          else
          {
            Constraint::addToReturnList(a1, &v33, a5);
          }

          v8 = v28;
          v14 = a2;
        }
      }

      v27 = *(a4 + 8) + 1;
      *(a4 + 8) = v27;
      if (*(a4 + 32))
      {
        (*(*a4 + 24))(a4);
        v27 = *(a4 + 8);
      }
    }

    while (v27 != *(a4 + 12));
  }
}

uint64_t VocMgr::getRoot(VocMgr *this, uint64_t a2)
{
  v2 = a2 & 0xFE000000;
  if ((a2 & 0xFE000000) != 0xFA000000 && v2 != -67108864)
  {
    v3 = a2 & 0xFFFFFF;
    if ((a2 & 0xFFFFFF) != 0xFFFFF8 && v3 != 16777211)
    {
      return *(*(*(*(**this + 8 * (a2 >> 25)) + 48) + 256) + 4 * v3) & 0xFFFFFF | v2;
    }
  }

  return a2;
}

void Constraint::seedGivenPhonyPreState(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v6 = *a2;
  v7 = VocMgr::smpVocMgr;
  v8 = *(*(**VocMgr::smpVocMgr + 8 * v6) + 56);
  v9 = *(a2 + 1);
  v10 = *(v8[62] + 4 * v9);
  if (!v10)
  {
    v10 = *(a2 + 1);
  }

  v25 = *v8 + 80 * v10;
  v24 = *(v25 + 16);
  if (v24)
  {
    v15 = 0;
    v22 = v6 << 25;
    v23 = *(v8[36] + 4 * v9);
    do
    {
      v16 = *(*(v25 + 8) + 4 * v15) & 0xFFFFFF | v22;
      v17 = *(a2 + 1);
      v27[0] = *(*(v25 + 8) + 4 * v15) & 0xFFFFFF | v22;
      v27[1] = 0x3FFF;
      v27[2] = v17;
      v28 = 0xFAFFFFFCFFFFFFFELL;
      v29 = -83886084;
      v30 = 0;
      v32 = 20000;
      v33 = 0x70000000FFFFFFFELL;
      v34 = 0;
      v31 = v23;
      ++*a6;
      if (*(a1 + 216))
      {
        if (*(a3 + 8))
        {
          v18 = 0;
          while (1)
          {
            v19 = *(*a3 + 4 * v18);
            v20 = *(a1 + 216);
            v21 = *(*(v20 + 128) + 136 * v19 + 88);
            if (*(v20 + 218) == 1)
            {
              break;
            }

            if (v21 == VocMgr::getRoot(v7, v16))
            {
              v19 = *(*a3 + 4 * v18);
LABEL_13:
              LODWORD(v28) = v19;
              Constraint::addToReturnList(a1, v27, a5);
            }

LABEL_14:
            if (++v18 >= *(a3 + 8))
            {
              goto LABEL_17;
            }
          }

          if (v21 != v16)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
        Constraint::addToReturnList(a1, v27, a5);
      }

LABEL_17:
      ++v15;
    }

    while (v15 != v24);
  }
}

void Constraint::seedGivenStateStateOverNothing(uint64_t a1, unsigned __int16 *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(**VocMgr::smpVocMgr + 8 * *a2);
  v5 = *(v4 + 56);
  v6 = *(a2 + 1);
  v7 = *(v5[62] + 4 * v6);
  if (!v7)
  {
    v7 = *(a2 + 1);
  }

  v8 = *v5 + 80 * v7;
  v9 = *(v8 + 16);
  if (v9)
  {
    v14 = 0;
    v15 = *(v5[36] + 4 * v6);
    v16 = *(v4 + 48);
    v17 = 4 * v9;
    while (1)
    {
      v18 = *(*(v8 + 8) + v14);
      if ((*(a1 + 64) & 1) == 0)
      {
        break;
      }

      if (*(*(v16 + 32) + 2 * v18))
      {
        goto LABEL_7;
      }

LABEL_8:
      v14 += 4;
      if (v17 == v14)
      {
        return;
      }
    }

    if (*(*(v16 + 256) + 4 * v18) != v18)
    {
      goto LABEL_8;
    }

LABEL_7:
    v19 = v18 & 0xFFFFFF | (*a2 << 25);
    v20 = *(a2 + 1);
    v21 = *(a1 + 16);
    *(a1 + 16) = v21 + 1;
    v22[0] = v19;
    v22[1] = 0x3FFF;
    v22[2] = v20;
    v23 = 0xFAFFFFFCFFFFFFFELL;
    v24 = -83886084;
    v25 = 0;
    v27 = 20000;
    v28 = 0x70000000FFFFFFFELL;
    v29 = v21;
    v26 = v15;
    ++*a4;
    Constraint::addToReturnList(a1, v22, a3);
    goto LABEL_8;
  }
}

uint64_t Constraint::seedGivenStateLatticeOverState(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v10 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 56);
  v28 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 48);
  v11 = *(a2 + 1);
  v12 = *(*(v10 + 36) + 4 * v11);
  if (*(*(v10 + 62) + 4 * v11))
  {
    v13 = *(*(v10 + 62) + 4 * v11);
  }

  else
  {
    v13 = *(a2 + 1);
  }

  BitWords = StateMgr::getBitWords(v10, v13);
  v29 = 0;
  v15 = realloc_array(0, &v29, 4uLL, 0, 0, 1);
  v38 = v29;
  v39 = 1;
  v40 = v15 >> 2;
  if (*(a3 + 8))
  {
    v16 = BitWords;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = -83886081;
    while (1)
    {
      v20 = v19;
      v21 = *(a1 + 216);
      v19 = *(*(v21 + 128) + 136 * *(*a3 + 4 * v17) + 88);
      v22 = *&v19 & 0xFFFFFFLL;
      if (v19 == v20)
      {
        break;
      }

      if (*a2 != v19 >> 25)
      {
        goto LABEL_20;
      }

      v18 = *(v28[4] + 2 * v22);
      if (v18)
      {
        if (*(v16 + 8) > v22 && ((*(*v16 + 4 * (v22 >> 5)) >> v19) & 1) != 0)
        {
          if (*(v21 + 218) != 1)
          {
            WordList::lookupAll(v28, v22, &v38);
LABEL_10:
            if (v39)
            {
              for (i = 0; i < v39; ++i)
              {
                v24 = v38[i] & 0xFFFFFF | (*a2 << 25);
                v25 = *(a2 + 1);
                v26 = *(a1 + 16);
                *(a1 + 16) = v26 + 1;
                v29 = (v24 | 0x3FFF00000000);
                v30 = v25;
                v31 = 0xFAFFFFFCFFFFFFFELL;
                v32 = -83886084;
                v33 = 0;
                v35 = 20000;
                v36 = 0x70000000FFFFFFFELL;
                v37 = v26;
                v34 = v12;
                LODWORD(v31) = *(*a3 + 4 * v17);
                Constraint::addToReturnList(a1, &v29, a4);
                ++*a5;
              }

              LOBYTE(v18) = 1;
              v16 = BitWords;
            }

            else
            {
              LOBYTE(v18) = 1;
            }

            goto LABEL_21;
          }

LABEL_9:
          *v38 = v22;
          goto LABEL_10;
        }

        goto LABEL_20;
      }

LABEL_21:
      if (++v17 >= *(a3 + 8))
      {
        return DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
      }
    }

    if (v18)
    {
      if ((*(v21 + 218) & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_20:
    LOBYTE(v18) = 0;
    goto LABEL_21;
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
}

void sub_2625AD24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void Constraint::seedGivenStateStateOverGerms(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = *(*(**VocMgr::smpVocMgr + 8 * v5) + 56);
  v7 = *(a2 + 1);
  v8 = *(v6[62] + 4 * v7);
  if (!v8)
  {
    v8 = *(a2 + 1);
  }

  v9 = *(v6[36] + 4 * v7);
  v21 = *v6 + 80 * v8;
  v10 = *(v21 + 16);
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  v22 = 0x3FFFFAFFFFFFLL;
  v23 = xmmword_26286CC40;
  v24 = 0;
  v25 = 1310720000;
  v26 = 0;
  v27 = 0x70000000FFFFFFFELL;
  if (v10)
  {
    v16 = 0;
    v17 = 16 * v5;
    do
    {
      for (i = *(*(*(a1 + 200) + v17) + 4 * *(*(v21 + 8) + 4 * v16)); i != -1; LODWORD(i) = *(*v20 + 4 * i))
      {
        *(a3 + 8) = i;
        (*(*a3 + 16))(a3, &v22);
        if (!v23 || v23 == *(a2 + 1))
        {
          LODWORD(v23) = *(a2 + 1);
          LOWORD(v25) = v9;
          ++*a5;
          Constraint::addToReturnList(a1, &v22, a4);
        }

        v20 = *(a1 + 288);
        if (!v20)
        {
          break;
        }
      }

      ++v16;
    }

    while (v16 != v10);
  }
}

void Constraint::seedGivenEmbFstStateStateOverGerms(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(*(*(*(**VocMgr::smpVocMgr + 8 * *a2) + 56) + 288) + 4 * *(a2 + 1));
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  v13 = 0x3FFFFAFFFFFFLL;
  v14 = xmmword_26286CC40;
  v15 = 0;
  v16 = 1310720000;
  v17 = 0;
  v18 = 0x70000000FFFFFFFELL;
  if (*(a3 + 12))
  {
    do
    {
      (*(*a3 + 16))(a3, &v13);
      if (v14)
      {
        v11 = v14 == *(a2 + 1);
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        LODWORD(v14) = *(a2 + 1);
        LOWORD(v16) = v5;
        ++*a5;
        Constraint::addToReturnList(a1, &v13, a4);
      }

      v12 = *(a3 + 8) + 1;
      *(a3 + 8) = v12;
      if (*(a3 + 32))
      {
        (*(*a3 + 24))(a3);
        v12 = *(a3 + 8);
      }
    }

    while (v12 != *(a3 + 12));
  }
}

uint64_t Constraint::seedGivenStateLatticeOverStateOverGerms(void *a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v12 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 56);
  v34 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 48);
  v13 = *(a2 + 1);
  if (*(*(v12 + 62) + 4 * v13))
  {
    v14 = *(*(v12 + 62) + 4 * v13);
  }

  else
  {
    v14 = *(a2 + 1);
  }

  v15 = *(*(v12 + 36) + 4 * v13);
  BitWords = StateMgr::getBitWords(v12, v14);
  v37 = 0;
  v17 = realloc_array(0, &v37, 4uLL, 0, 0, 1);
  v43 = v37;
  v44 = 1;
  v45 = v17 >> 2;
  v18 = *a2;
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  v37 = 0x3FFFFAFFFFFFLL;
  v38 = xmmword_26286CC40;
  v39 = 0;
  v40 = 1310720000;
  v41 = 0;
  v42 = 0x70000000FFFFFFFELL;
  if (*(a3 + 2))
  {
    v19 = 0;
    LOBYTE(v20) = 0;
    v21 = -83886081;
    v36 = 16 * v18;
    v33 = BitWords;
    while (1)
    {
      v22 = a1[27];
      v23 = *(*(v22 + 128) + 136 * *(*a3 + 4 * v19) + 88);
      v24 = *&v23 & 0xFFFFFFLL;
      v35 = v23;
      if (v23 == v21)
      {
        break;
      }

      if (*a2 != v23 >> 25)
      {
        goto LABEL_35;
      }

      v20 = *(v34[4] + 2 * v24);
      if (v20)
      {
        if (*(BitWords + 8) > v24 && ((*(*BitWords + 4 * (v24 >> 5)) >> v23) & 1) != 0)
        {
          if (*(v22 + 218) != 1)
          {
            WordList::lookupAll(v34, v24, &v43);
LABEL_10:
            v25 = v44;
            v21 = v35;
            if (v44)
            {
              v26 = 0;
              do
              {
                v27 = *(*(a1[25] + v36) + 4 * v43[v26]);
                if (v27 != -1)
                {
                  do
                  {
                    *(a4 + 8) = v27;
                    (*(*a4 + 16))(a4, &v37);
                    if (v38)
                    {
                      v28 = v38 == *(a2 + 1);
                    }

                    else
                    {
                      v28 = 1;
                    }

                    if (v28)
                    {
                      v29 = *a3;
                      if (DWORD1(v38) == -2 || DWORD1(v38) == *(*a3 + 4 * v19))
                      {
                        LODWORD(v38) = *(a2 + 1);
                        LOWORD(v40) = v15;
                        DWORD1(v38) = *(v29 + 4 * v19);
                        Constraint::addToReturnList(a1, &v37, a5);
                        ++*a6;
                      }
                    }

                    v31 = a1[36];
                    if (!v31)
                    {
                      break;
                    }

                    LODWORD(v27) = *(*v31 + 4 * v27);
                  }

                  while (v27 != -1);
                  v25 = v44;
                  v21 = v35;
                }

                ++v26;
              }

              while (v26 < v25);
              LOBYTE(v20) = 1;
              BitWords = v33;
            }

            else
            {
              LOBYTE(v20) = 1;
            }

            goto LABEL_37;
          }

LABEL_9:
          *v43 = v24;
          goto LABEL_10;
        }

        goto LABEL_35;
      }

LABEL_36:
      v21 = *(*(v22 + 128) + 136 * *(*a3 + 4 * v19) + 88);
LABEL_37:
      if (++v19 >= *(a3 + 2))
      {
        return DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
      }
    }

    if (v20)
    {
      if ((*(v22 + 218) & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_35:
    LOBYTE(v20) = 0;
    goto LABEL_36;
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
}

void sub_2625AD85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void Constraint::seedGivenStateGermsOverState(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v10 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 56);
  v11 = *(a2 + 1);
  if (*(*(v10 + 62) + 4 * v11))
  {
    v12 = *(*(v10 + 62) + 4 * v11);
  }

  else
  {
    v12 = *(a2 + 1);
  }

  v13 = *(*(v10 + 36) + 4 * v11);
  BitWords = StateMgr::getBitWords(v10, v12);
  v16 = 0x3FFFFAFFFFFFLL;
  v17 = xmmword_26286CC40;
  v18 = 0;
  v19 = 1310720000;
  v20 = 0;
  v21 = 0x70000000FFFFFFFELL;
  *(a3 + 8) = 0;
  *(a3 + 32) = 1;
  *(a3 + 16) = *a2;
  *(a3 + 24) = BitWords;
LABEL_5:
  (*(*a3 + 24))(a3);
  v15 = *(a3 + 8);
  while (v15 != *(a3 + 12))
  {
    (*(*a3 + 16))(a3, &v16);
    LODWORD(v17) = *(a2 + 1);
    LOWORD(v19) = v13;
    ++*a5;
    Constraint::addToReturnList(a1, &v16, a4);
    v15 = *(a3 + 8) + 1;
    *(a3 + 8) = v15;
    if (*(a3 + 32))
    {
      goto LABEL_5;
    }
  }
}

void Constraint::seedGivenState(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, uint64_t a13, void *a14, uint64_t a15, char a16)
{
  v16 = a6;
  v17 = a4;
  v18 = a14;
  v19 = a15;
  v20 = a13;
  v21 = a10;
  v22 = a11;
  v23 = *a2;
  if (a14)
  {
    v24 = *a14;
    if ((*(*a14 + v23) & 1) == 0)
    {
      v25 = *(a13 + 8);
      if (v25 == *(a13 + 12))
      {
        v61 = a1;
        v65 = a2;
        v59 = a3;
        v26 = a8;
        v27 = a7;
        v29 = a5;
        DgnPrimArray<short>::reallocElts(a13, 1, 1);
        v20 = a13;
        v18 = a14;
        a5 = v29;
        v17 = a4;
        v21 = a10;
        a1 = v61;
        v16 = a6;
        a7 = v27;
        a8 = v26;
        a3 = v59;
        v19 = a15;
        a2 = v65;
        v22 = a11;
        v25 = *(a13 + 8);
        v24 = *a14;
      }

      *(*v20 + 2 * v25) = v23;
      *(v20 + 8) = v25 + 1;
      v23 = *a2;
      *(v24 + v23) = 1;
    }
  }

  v30 = *(*(**VocMgr::smpVocMgr + 8 * v23) + 56);
  v31 = *(a2 + 1);
  if (*(*(v30 + 528) + 2 * v31) == 127)
  {
    v57 = *(*(**VocMgr::smpVocMgr + 8 * v23) + 56);
    v32 = v16;
    v33 = a9;
    v64 = v19;
    v58 = v20;
    v60 = v18;
    if (*(*(v30 + 336) + v31) == 1)
    {
      v34 = a1;
      v66 = a2;
      v35 = a3;
      v36 = v22;
      v37 = a8;
      v38 = a7;
      v39 = v21;
      v40 = v17;
      v41 = a5;
      v63 = v32;
      StateTransition = StateMgr::getStateTransition(v57, v31, 0, a4, a5, v32, a7, a8);
      v33 = a9;
      v32 = v63;
      v43 = a12;
      a5 = v41;
      v17 = v40;
      v21 = v39;
      LODWORD(a7) = v38;
      LODWORD(a8) = v37;
      a3 = v35;
      a2 = v66;
      v22 = v36;
      v44 = StateTransition;
      a1 = v34;
      *a12 += *(v44 + 8);
      if (*(v44 + 8))
      {
        v45 = 0;
        do
        {
          v46 = *(*v44 + 4 * v45);
          v67[0] = *a2;
          v68 = v46;
          LOBYTE(v56) = a16;
          Constraint::seedGivenState(v34, v67, v35, v17, a5, v32, v38, v37, v33, v21, v22, v43, v58, v60, v64, v56);
          v33 = a9;
          v32 = v63;
          v43 = a12;
          a5 = v41;
          v17 = v40;
          v21 = v39;
          LODWORD(a7) = v38;
          LODWORD(a8) = v37;
          a3 = v35;
          a1 = v34;
          a2 = v66;
          v22 = v36;
          ++v45;
        }

        while (v45 < *(v44 + 8));
      }
    }

    v47 = *(a2 + 1);
    if ((*(a1 + 64) & 1) == 0 || ((v48 = *(*(v57 + 50) + 4 * v47), v48 == -1) || (*a5 = 1, v48 <= v17)) && ((v49 = *(*(v57 + 52) + 4 * v47), v49 == -1) || (*a5 = 1, v49 >= v17)))
    {
      if (*(*(v57 + 62) + 4 * v47))
      {
        LODWORD(v47) = *(*(v57 + 62) + 4 * v47);
      }

      v50 = *(*v57 + 80 * v47 + 16);
      *v21 += v50;
      if (!v32)
      {
LABEL_39:
        if (*(a1 + 216))
        {

          Constraint::seedGivenStateLatticeOverState(a1, a2, a3, v33, v22);
        }

        else
        {

          Constraint::seedGivenStateStateOverNothing(a1, a2, v33, v22);
        }

        return;
      }

      if ((*(a1 + 68) - 1) < 2)
      {
        if (*(a1 + 61))
        {

          Constraint::seedGivenTraceState(a1, a2, a3, v32, v33, v22);
          return;
        }

LABEL_38:
        if (v50 >= a7 && (!a8 || *(*(v57 + 58) + *(a2 + 1))))
        {
          if (*(a1 + 216))
          {

            Constraint::seedGivenStateLatticeOverStateOverGerms(a1, a2, a3, v32, v33, v22);
          }

          else if (v50 >= *(v32 + 12) + 500)
          {

            Constraint::seedGivenStateGermsOverState(a1, a2, v32, v33, v22);
          }

          else
          {

            Constraint::seedGivenStateStateOverGerms(a1, a2, v32, v33, v22);
          }

          return;
        }

        goto LABEL_39;
      }

      if (*(a1 + 208) <= *a2)
      {
        return;
      }

      if ((*(a1 + 61) & 1) == 0)
      {
        goto LABEL_38;
      }

      Constraint::seedGivenPhonyPreState(a1, a2, a3, v32, v33, v22);
    }
  }

  else
  {
    if (v19)
    {
      v51 = *(v19 + 8);
      if (v51 == *(v19 + 12))
      {
        v52 = a1;
        v53 = a2;
        v54 = v22;
        DgnArray<RuleDesc>::reallocElts(v19, 1, 1);
        a1 = v52;
        a2 = v53;
        v22 = v54;
        v51 = *(v19 + 8);
      }

      v55 = *v19 + 12 * v51;
      *(v55 + 4) = v23;
      *(v55 + 8) = v31;
      ++*(v19 + 8);
    }

    if (a16)
    {

      Constraint::seedGivenEmbFstStateStateOverGerms(a1, a2, v16, a9, v22);
    }
  }
}

uint64_t Constraint::givenStateCanSeedFinalSilence(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 56);
  v11 = *(a2 + 1);
  if (*(*(v10 + 4) + v11))
  {
    return 1;
  }

  if (*(*(v10 + 42) + v11) != 1)
  {
    return 0;
  }

  StateTransition = StateMgr::getStateTransition(v10, v11, 0, a4, a5, a6, a7, a8);
  if (!*(StateTransition + 8))
  {
    return 0;
  }

  v14 = StateTransition;
  v15 = 0;
  do
  {
    v16 = *(*v14 + 4 * v15);
    v17[0] = *a2;
    v18 = v16;
    result = Constraint::givenStateCanSeedFinalSilence(a1, v17);
    if (result)
    {
      break;
    }

    ++v15;
  }

  while (v15 < *(v14 + 8));
  return result;
}

uint64_t Constraint::givenStateGetPrecedingNonAcousticWords(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  v11 = *(*(**VocMgr::smpVocMgr + 8 * *a2) + 56);
  v12 = *(a2 + 1);
  v13 = *(*(v11 + 64) + 4 * v12);
  if (v13)
  {
    v14 = *v11 + 80 * v13;
    v15 = *(v14 + 16);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        v17 = *(*(v14 + 8) + 4 * i);
        if (*(*(*(v11 + 93) + 256) + 4 * v17) == v17)
        {
          v18 = v17 & 0xFFFFFF | (*a2 << 25);
          v19 = *(a3 + 8);
          if (!v19)
          {
            goto LABEL_11;
          }

          v20 = *a3;
          v21 = *(a3 + 8);
          v22 = 0xFFFFFFFFLL;
          while (1)
          {
            v23 = *v20++;
            if (v23 == v18)
            {
              break;
            }

            --v22;
            if (!--v21)
            {
              goto LABEL_11;
            }
          }

          if (!v22)
          {
LABEL_11:
            if (v19 == *(a3 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v19 = *(a3 + 8);
            }

            *(*a3 + 4 * v19) = v18;
            ++*(a3 + 8);
            v15 = *(v14 + 16);
          }
        }
      }

      v12 = *(a2 + 1);
    }
  }

  if (*(*(v11 + 42) + v12) == 1)
  {
    result = StateMgr::getStateTransition(v11, v12, 0, a4, a5, a6, a7, a8);
    if (*(result + 8))
    {
      v24 = result;
      v25 = 0;
      do
      {
        v26 = *(*v24 + 4 * v25);
        v27[0] = *a2;
        v28 = v26;
        result = Constraint::givenStateGetPrecedingNonAcousticWords(v10, v27, a3);
        ++v25;
      }

      while (v25 < *(v24 + 8));
    }
  }

  return result;
}

uint64_t Constraint::givenStateGetWeights(uint64_t result, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  v12 = *a2;
  v13 = *(*(**VocMgr::smpVocMgr + 8 * v12) + 56);
  v14 = *(*(v13 + 34) + 4 * *(a2 + 1));
  v15 = *(a3 + 8);
  if (v15 <= v12)
  {
    v23 = v12 + 1;
    v24 = *(a3 + 12);
    if (v24 <= v12)
    {
      result = DgnArray<DgnPrimArray<double>>::reallocElts(a3, v23 - v24, 0);
      v15 = *(a3 + 8);
    }

    if (v15 <= v23)
    {
      if (v15 <= v12)
      {
        v27 = v12 - v15 + 1;
        v28 = 16 * v15;
        do
        {
          v29 = (*a3 + v28);
          *v29 = 0;
          v29[1] = 0;
          v28 += 16;
          --v27;
        }

        while (v27);
      }
    }

    else if (v15 > v23)
    {
      v25 = v15;
      v26 = 16 * v15 - 16;
      do
      {
        --v25;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*a3 + v26);
        v26 -= 16;
      }

      while (v25 > v23);
    }

    *(a3 + 8) = v23;
    v12 = *a2;
    v16 = *a3;
    LODWORD(v18) = *(*a3 + 16 * v12 + 8);
LABEL_18:
    v30 = v16 + 16 * v12;
    if (v18 == *(v30 + 12))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(v30, 1, 1);
      LODWORD(v18) = *(v30 + 8);
    }

    *(*v30 + 4 * v18) = v14;
    ++*(v30 + 8);
    if (v14 != 0xFFFF)
    {
      *a4 = 0;
    }

    goto LABEL_22;
  }

  v16 = *a3;
  v17 = *a3 + 16 * v12;
  v18 = *(v17 + 8);
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = *v17;
  v20 = 0xFFFFFFFFLL;
  v21 = v18;
  while (1)
  {
    v22 = *v19++;
    if (v22 == v14)
    {
      break;
    }

    --v20;
    if (!--v21)
    {
      goto LABEL_18;
    }
  }

  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_22:
  v31 = *(a2 + 1);
  if (*(*(v13 + 42) + v31) == 1)
  {
    result = StateMgr::getStateTransition(v13, v31, 0, a4, a5, a6, a7, a8);
    if (*(result + 8))
    {
      v32 = result;
      v33 = 0;
      do
      {
        v34 = *(*v32 + 4 * v33);
        v35[0] = *a2;
        v36 = v34;
        result = Constraint::givenStateGetWeights(v11, v35, a3, a4);
        ++v33;
      }

      while (v33 < *(v32 + 8));
    }
  }

  return result;
}

uint64_t Constraint::getTraceLegal(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 144) = 0;
  v4 = *(a2 + 4);
  if (v4 == 0x3FFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (*(a1 + 80) != v5)
  {
    if (*(a1 + 60))
    {
      v6 = v5;
      if (*(*(a1 + 152) + 4 * v5) != a3)
      {
        return a1 + 136;
      }
    }

    else
    {
      v6 = v5;
    }

    v7 = *(a1 + 72) + 16 * v6;
    if (*(v7 + 8))
    {
      v8 = 0;
      do
      {
        v9 = *v7 + 24 * v8;
        v10 = *v9;
        if (*(a1 + 62) == 1)
        {
          v26 = 0x3FFFFAFFFFFFLL;
          v27 = xmmword_26286CC40;
          v28 = 0;
          *v29 = 1310720000;
          *&v29[4] = 0;
          v30 = 0x70000000FFFFFFFELL;
          v11 = *(a1 + 8);
          *(v11 + 32) = 0;
          *(v11 + 8) = 0;
          if (*(v11 + 12))
          {
            do
            {
              (*(*v11 + 16))(v11, &v26);
              if (v26 == v10)
              {
                v12 = WORD2(v26);
                if (WORD2(v26) == *(v9 + 4))
                {
                  *v29 = 0;
                  v13 = *(a1 + 144);
                  if (v13 == *(a1 + 148))
                  {
                    DgnArray<RecogGerm>::reallocElts(a1 + 136, 1, 1);
                    v13 = *(a1 + 144);
                    v14 = v26;
                    v12 = WORD2(v26);
                    v15 = *v29;
                  }

                  else
                  {
                    v15 = 0;
                    v14 = v10;
                  }

                  v16 = *(a1 + 136) + 44 * v13;
                  *v16 = v14;
                  *(v16 + 4) = v12;
                  *(v16 + 6) = HIWORD(v26);
                  *(v16 + 8) = v27;
                  *(v16 + 24) = v28;
                  *(v16 + 26) = v15;
                  *(v16 + 28) = *&v29[2];
                  *(v16 + 32) = v30;
                  *(v16 + 40) = v31;
                  *(a1 + 144) = v13 + 1;
                }
              }

              v11 = *(a1 + 8);
              v17 = *(v11 + 8) + 1;
              *(v11 + 8) = v17;
              if (*(v11 + 32))
              {
                (*(*v11 + 24))(v11);
                v11 = *(a1 + 8);
                v17 = *(v11 + 8);
              }
            }

            while (v17 != *(v11 + 12));
          }
        }

        else
        {
          v18 = *(v9 + 4);
          v19 = *(v9 + 6);
          v20 = *(v9 + 8);
          v21 = *(a1 + 144);
          v22 = v21;
          if (v21 == *(a1 + 148))
          {
            v25 = v20;
            DgnArray<RecogGerm>::reallocElts(a1 + 136, 1, 1);
            v20 = v25;
            v22 = *(a1 + 144);
          }

          v23 = *(a1 + 136) + 44 * v22;
          *v23 = v10;
          *(v23 + 4) = v18;
          *(v23 + 6) = v19;
          *(v23 + 8) = v20;
          *(v23 + 24) = 0;
          *(v23 + 26) = 1310720000;
          *(v23 + 30) = 0;
          *(v23 + 32) = 0x70000000FFFFFFFELL;
          *(v23 + 40) = v21;
          *(a1 + 144) = v22 + 1;
        }

        ++v8;
        v7 = *(a1 + 72) + 16 * v6;
      }

      while (v8 < *(v7 + 8));
    }
  }

  return a1 + 136;
}

StateMgr *Constraint::getStateLegal(uint64_t a1, unsigned int *a2, unsigned int a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, uint64_t a12, void *a13, uint64_t a14, char a15)
{
  v38 = a6;
  v39 = a7;
  v17 = a2[2];
  if (!v17)
  {
    StateTransition = a1 + 168;
    LOWORD(v36) = *a1;
LABEL_15:
    v45 = 0;
    v46 = 0;
    v26 = *(a1 + 216);
    if (!v26)
    {
      goto LABEL_32;
    }

    v27 = a2[3];
    if (v27 == -2)
    {
      if (*(v26 + 215) != 1 || *(a1 + 240) == -1)
      {
        DgnPrimArray<int>::copyArraySlice(&v45, (a1 + 224), 0, *(a1 + 232));
      }

      else
      {
        v28 = *(a1 + 232);
        if (v28)
        {
          v29 = 0;
          v30 = 0;
          for (i = 0; i < v28; ++i)
          {
            v32 = *(*(a1 + 224) + 4 * i);
            v33 = *(*(*(a1 + 216) + 128) + 136 * v32 + 16) - a3;
            if (v33 < 0)
            {
              v33 = a3 - *(*(*(a1 + 216) + 128) + 136 * v32 + 16);
            }

            if (v33 <= *(a1 + 240))
            {
              if (v30 == HIDWORD(v46))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v45, 1, 1);
                v30 = v46;
                v29 = v45;
              }

              *(v29 + 4 * v30) = v32;
              v30 = v46 + 1;
              LODWORD(v46) = v46 + 1;
              v28 = *(a1 + 232);
            }
          }
        }
      }
    }

    else
    {
      Lattice<WordLatticeLC>::appendOutLinks(v26, *(*(v26 + 128) + 136 * v27 + 120), &v45);
    }

    if (v46)
    {
LABEL_32:
      *a11 += *(StateTransition + 8);
      if (*(StateTransition + 8))
      {
        v34 = 0;
        do
        {
          v35 = *(*StateTransition + 4 * v34);
          v43[0] = v36;
          v44 = v35;
          Constraint::seedGivenState(a1, v43, &v45, a3, a4, a5, v38, v39, a8, a9, a10, a11, a12, a13, a14, a15);
          ++v34;
        }

        while (v34 < *(StateTransition + 8));
      }
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
  }

  v36 = *a2 >> 25;
  result = *(*(**VocMgr::smpVocMgr + 8 * v36) + 56);
  if (*(a1 + 64) != 1)
  {
    goto LABEL_13;
  }

  v19 = *(*(result + 54) + 4 * v17);
  if (v19 == -1 || (*a4 = 1, v19 <= a3))
  {
    v20 = *(*(result + 56) + 4 * v17);
    if (v20 == -1 || (*a4 = 1, v20 >= a3))
    {
      v21 = *(a1 + 216);
      if (!v21)
      {
        goto LABEL_13;
      }

      if (*(v21 + 215) != 1)
      {
        goto LABEL_13;
      }

      v22 = *(a1 + 240);
      if (v22 == -1)
      {
        goto LABEL_13;
      }

      *a4 = 1;
      v23 = (*(v21 + 128) + 136 * a2[3]);
      v24 = v23[4] - a3 + v23[5] + v23[6];
      if (v24 < 0)
      {
        v24 = -v24;
      }

      if (v24 <= v22)
      {
LABEL_13:
        StateTransition = StateMgr::getStateTransition(result, v17, 0, a4, a5, a6, a7, a8);
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t Constraint::getLegal(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5, int a6, _DWORD *a7, uint64_t a8, uint64_t *a9, uint64_t a10, char a11)
{
  v13 = a6;
  v18 = a1;
  v91 = *a2;
  *a5 = 0;
  v101[0] = 0;
  if (ConstraintCacheInfo::match(a1 + 296, a2, a6))
  {
    *a5 = *(v18 + 320);
    v19 = *(v18 + 324);
    LODWORD(v101[0]) = *(v18 + 328);
    HIDWORD(v101[0]) = v19;
    goto LABEL_33;
  }

  *(v18 + 296) = 0;
  v20 = *(v18 + 32);
  if (v20)
  {
    v21 = (v20 + 3) & 0x1FFFFFFFCLL;
    v22 = vdupq_n_s64(v20 - 1);
    v23 = xmmword_26286BF80;
    v24 = xmmword_26286B680;
    v25 = (*(v18 + 24) + 40);
    v26 = vdupq_n_s64(4uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v22, v24));
      if (vuzp1_s16(v27, *v22.i8).u8[0])
      {
        *(v25 - 8) = 0;
      }

      if (vuzp1_s16(v27, *&v22).i8[2])
      {
        *(v25 - 4) = 0;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
      {
        *v25 = 0;
        v25[4] = 0;
      }

      v23 = vaddq_s64(v23, v26);
      v24 = vaddq_s64(v24, v26);
      v25 += 16;
      v21 -= 4;
    }

    while (v21);
  }

  v28 = *(v18 + 68);
  if ((v28 - 1) > 1)
  {
    v30 = *(v18 + 8);
  }

  else
  {
    v29 = v18;
    v30 = MemChunkAlloc(0x30uLL, 0);
    TraceLegal = Constraint::getTraceLegal(v29, a2, v13);
    *(v30 + 2) = 0;
    *(v30 + 32) = 0;
    v30[3] = 0;
    *v30 = &unk_287524340;
    v30[5] = TraceLegal;
    *(v30 + 3) = *(TraceLegal + 8);
    v28 = *(v29 + 68);
  }

  v100 = 0;
  if ((v28 & 0xFFFFFFFD) != 0)
  {
    v94 = 0x3FFFFAFFFFFFLL;
    v95 = xmmword_26286CC40;
    v96 = 0;
    v97 = 1310720000;
    v98 = 0;
    v99 = 0x70000000FFFFFFFELL;
    LODWORD(v92) = 0;
    *(v30 + 32) = 0;
    *(v30 + 2) = 0;
    v32 = *(v30 + 3);
    if (v32)
    {
      do
      {
        (*(*v30 + 16))(v30, &v94);
        Constraint::addToReturnList(a1, &v94, &v92);
        if (a9)
        {
          v33 = v94;
          v34 = v94 >> 25;
          v35 = *a9;
          if ((*(*a9 + v34) & 1) == 0)
          {
            v36 = *(a8 + 8);
            if (v36 == *(a8 + 12))
            {
              DgnPrimArray<short>::reallocElts(a8, 1, 1);
              v36 = *(a8 + 8);
              v35 = *a9;
            }

            *(*a8 + 2 * v36) = v33 >> 25;
            *(a8 + 8) = v36 + 1;
            *(v35 + v34) = 1;
          }
        }

        v32 = *(v30 + 2) + 1;
        *(v30 + 2) = v32;
        if (*(v30 + 32))
        {
          (*(*v30 + 24))(v30);
          v32 = *(v30 + 2);
        }
      }

      while (v32 != *(v30 + 3));
    }

    v37 = a5;
  }

  else
  {
    v85 = a8;
    v37 = a5;
    Constraint::getStateLegal(a1, a2, v13, &v100, v30, a3, a4, a5, v101 + 1, v101, a7, v85, a9, a10, a11);
    if (*a5)
    {
      goto LABEL_27;
    }

    if (!a11)
    {
      goto LABEL_27;
    }

    v84 = *a2;
    if (v84 >> 25 > 0x7A || *(*(*(*(**VocMgr::smpVocMgr + ((v84 >> 22) & 0x3F8)) + 56) + 528) + 2 * a2[2]) == 127)
    {
      goto LABEL_27;
    }

    v94 = 0x3FFFFAFFFFFFLL;
    v95 = xmmword_26286CC40;
    v96 = 0;
    v97 = 1310720000;
    v98 = 0;
    v99 = 0x70000000FFFFFFFELL;
    *(v30 + 32) = 0;
    *(v30 + 2) = 0;
    v32 = *(v30 + 3);
    if (v32)
    {
      do
      {
        (*(*v30 + 16))(v30, &v94);
        Constraint::addToReturnList(a1, &v94, a5);
        v32 = *(v30 + 2) + 1;
        *(v30 + 2) = v32;
        if (*(v30 + 32))
        {
          (*(*v30 + 24))(v30);
          v32 = *(v30 + 2);
        }
      }

      while (v32 != *(v30 + 3));
    }
  }

  *v37 = v32;
LABEL_27:
  if (v30 != *(a1 + 8))
  {
    DgnDelete<RecogGermIterator>(v30);
  }

  v18 = a1;
  if ((*(a1 + 60) & 1) == 0 && v100 != 1)
  {
    v13 = -16;
  }

  v38 = *v37;
  v40 = v101[0];
  v39 = HIDWORD(v101[0]);
  *(a1 + 296) = 1;
  *(a1 + 300) = v13;
  *(a1 + 304) = *a2 >> 25;
  *(a1 + 306) = a2[1];
  *(a1 + 312) = *(a2 + 1);
  *(a1 + 320) = v38;
  *(a1 + 324) = v39;
  *(a1 + 328) = v40;
LABEL_33:
  v41 = v91 >> 25;
  v42 = VocMgr::smpVocMgr;
  v43 = v91 & 0xFE000000;
  if ((v91 & 0xFE000000) == 0xFC000000)
  {
    v44 = 0;
    v94 = 0;
    *&v95 = 0;
  }

  else
  {
    if (*(*(*(**VocMgr::smpVocMgr + 8 * v41) + 48) + 418) != 1)
    {
      return v18 + 24;
    }

    v94 = 0;
    *&v95 = 0;
    v44 = *(*(**VocMgr::smpVocMgr + 8 * v41) + 48);
  }

  v45 = (v18 + 40);
  v46 = *(v18 + 48);
  if (v46 >= 1)
  {
    v47 = 16 * v46 - 16;
    do
    {
      DgnIArray<Utterance *>::~DgnIArray(*v45 + v47);
      v47 -= 16;
    }

    while (v47 != -16);
  }

  v48 = 0;
  *(v18 + 48) = 0;
  v49 = *(v18 + 32);
  v50 = *(v18 + 52);
  v89 = v42;
  v86 = v18 + 40;
  if (v49 <= v50 || (DgnArray<DgnPrimArray<double>>::reallocElts(v18 + 40, v49 - v50, 0), v48 = *(v18 + 48), v48 <= v49))
  {
    if (v48 < v49)
    {
      v53 = v49 - v48;
      v54 = 16 * v48;
      do
      {
        v55 = (*v45 + v54);
        *v55 = 0;
        v55[1] = 0;
        v54 += 16;
        --v53;
      }

      while (v53);
    }
  }

  else
  {
    if (v48 <= v49)
    {
      *(v18 + 48) = v49;
LABEL_50:
      v56 = 0;
      while (1)
      {
        v57 = *(v18 + 24) + 16 * v56;
        v58 = *(v18 + 40) + 16 * v56;
        *a5 -= *(v57 + 8);
        v59 = *(v57 + 8);
        v60 = *(v58 + 12);
        if (v59 > v60)
        {
          DgnArray<RecogGerm>::reallocElts(v58, v59 - v60, 0);
          v59 = *(v57 + 8);
        }

        v87 = v56;
        if (v59)
        {
          break;
        }

LABEL_107:
        v18 = a1;
        v56 = v87 + 1;
        if (*(a1 + 48) <= (v87 + 1))
        {
          goto LABEL_108;
        }
      }

      v61 = 0;
      while (1)
      {
        v62 = *v57;
        v63 = *(*v57 + 44 * v61);
        v64 = v63 >> 25;
        if (v43 == -67108864 || (v91 >> 25) == v64)
        {
          if (v43 == -67108864)
          {
            if ((v63 & 0xFFFFFF) == 0xFFFFF8)
            {
              goto LABEL_93;
            }

            v67 = *(*(**v89 + 8 * v64) + 48);
            v68 = *(v67 + 416);
            if ((v63 & 0xFFFFFF) == 0xFFFFFD)
            {
              PronSuccessorSeedCategory = *(v67 + 417);
            }

            else
            {
              PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(*(*(**v89 + 8 * v64) + 48), v63 & 0xFFFFFF);
            }

            if (*(*(*(v67 + 400) + 16 * v68) + PronSuccessorSeedCategory) == 1)
            {
              v62 = *v57;
LABEL_93:
              RecogGerm::operator=(*v58 + 44 * *(v58 + 8), v62 + 44 * v61);
LABEL_94:
              ++*(v58 + 8);
              ++*a5;
              goto LABEL_106;
            }

            if ((*(a1 + 64) & 1) == 0)
            {
              v92 = 0;
              v93 = 0;
              WordList::lookupAll(v67, v63 & 0xFFFFFF, &v92);
              if (v93)
              {
                v79 = 0;
                while (1)
                {
                  v80 = *(v92 + 4 * v79);
                  v81 = *(v67 + 416);
                  v82 = v80 == 16777213 ? *(v67 + 417) : WordList::getPronSuccessorSeedCategory(v67, v80);
                  if (*(*(*(v67 + 400) + 16 * v81) + v82) == 1)
                  {
                    goto LABEL_104;
                  }

                  if (++v79 >= v93)
                  {
                    goto LABEL_105;
                  }
                }
              }

              goto LABEL_105;
            }
          }

          else
          {
            if (WordList::seedPossible(v44, v91 & 0xFFFFFF, v63 & 0xFFFFFF))
            {
LABEL_58:
              RecogGerm::operator=(*v58 + 44 * *(v58 + 8), *v57 + 44 * v61);
              goto LABEL_94;
            }

            if ((*(a1 + 64) & 1) == 0)
            {
              if (!v95)
              {
                WordList::lookupAll(v44, v91 & 0xFFFFFF, &v94);
              }

              v92 = 0;
              v93 = 0;
              WordList::lookupAll(v44, v63 & 0xFFFFFF, &v92);
              v75 = v95;
              if (v95)
              {
                v76 = 0;
                v77 = v93;
                while (!v77)
                {
LABEL_87:
                  if (++v76 >= v75)
                  {
                    goto LABEL_105;
                  }
                }

                v78 = 0;
                while (!WordList::seedPossible(v44, *(v94 + 4 * v76), *(v92 + 4 * v78)))
                {
                  ++v78;
                  v77 = v93;
                  if (v78 >= v93)
                  {
                    v75 = v95;
                    goto LABEL_87;
                  }
                }

LABEL_104:
                RecogGerm::operator=(*v58 + 44 * *(v58 + 8), *v57 + 44 * v61);
                ++*(v58 + 8);
                ++*a5;
              }

LABEL_105:
              DgnPrimArray<unsigned int>::~DgnPrimArray(&v92);
            }
          }
        }

        else
        {
          v65 = *(*(**v89 + 8 * v64) + 48);
          PronPredecessorSeedCategory = WordList::getPronPredecessorSeedCategory(v44, v91 & 0xFFFFFF);
          if (*(*(*(v44 + 50) + 16 * PronPredecessorSeedCategory) + WordList::getPronSuccessorSeedCategory(v65, v63 & 0xFFFFFF)) == 1)
          {
            goto LABEL_58;
          }

          if ((*(a1 + 64) & 1) == 0)
          {
            if (!v95)
            {
              WordList::lookupAll(v44, v91 & 0xFFFFFF, &v94);
            }

            v92 = 0;
            v93 = 0;
            WordList::lookupAll(v65, v63 & 0xFFFFFF, &v92);
            v70 = v95;
            if (v95)
            {
              v71 = 0;
              v72 = v93;
              while (!v72)
              {
LABEL_75:
                if (++v71 >= v70)
                {
                  goto LABEL_105;
                }
              }

              v73 = 0;
              while (1)
              {
                v74 = WordList::getPronPredecessorSeedCategory(v44, *(v94 + 4 * v71));
                if (*(*(*(v44 + 50) + 16 * v74) + WordList::getPronSuccessorSeedCategory(v65, *(v92 + 4 * v73))) == 1)
                {
                  goto LABEL_104;
                }

                ++v73;
                v72 = v93;
                if (v73 >= v93)
                {
                  v70 = v95;
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_105;
          }
        }

LABEL_106:
        if (++v61 >= *(v57 + 8))
        {
          goto LABEL_107;
        }
      }
    }

    v51 = v48;
    v52 = 16 * v48 - 16;
    do
    {
      --v51;
      DgnIArray<Utterance *>::~DgnIArray(*v45 + v52);
      v52 -= 16;
    }

    while (v51 > v49);
  }

  v18 = a1;
  *(a1 + 48) = v49;
  if (v49)
  {
    goto LABEL_50;
  }

LABEL_108:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v94);
  return v86;
}

void sub_2625AF40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

BOOL ConstraintCacheInfo::match(uint64_t a1, uint64_t a2, int a3)
{
  if (*a1 == 1 && ((v3 = *(a1 + 4), v3 != a3) ? (v4 = v3 == -16) : (v4 = 1), v4 && *(a1 + 8) == *a2 >> 25 && *(a2 + 4) == *(a1 + 10) && *(a2 + 6) == *(a1 + 12) && *(a2 + 8) == *(a1 + 16)))
  {
    return *(a2 + 12) == *(a1 + 20);
  }

  else
  {
    return 0;
  }
}

void (***DgnDelete<RecogGermIterator>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t WordList::seedPossible(WordList *this, unsigned int a2, unsigned int a3)
{
  if (a2 == 16777214)
  {
    PronPredecessorSeedCategory = *(this + 416);
  }

  else
  {
    PronPredecessorSeedCategory = WordList::getPronPredecessorSeedCategory(this, a2);
  }

  if (a3 == 16777213)
  {
    PronSuccessorSeedCategory = *(this + 417);
  }

  else
  {
    PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(this, a3);
  }

  return *(*(*(this + 50) + 16 * PronPredecessorSeedCategory) + PronSuccessorSeedCategory);
}

BOOL Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 68) & 0xFFFFFFFD) != 0)
  {
    return 1;
  }

  v4 = *(a1 + 216);
  if (!v4)
  {
    return 1;
  }

  if (*(v4 + 216) != 1)
  {
    return 1;
  }

  v5 = *(a1 + 244);
  if (v5 == -1)
  {
    return 1;
  }

  v6 = *(v4 + 128) + 136 * *(a2 + 12);
  return vaddvq_s32(*(v6 + 28)) + *(v6 + 44) + *(v6 + 48) + *(v6 + 52) + *(*(a1 + 256) + 4 * *(*(v4 + 80) + 24 * *(v6 + 120))) + a3 <= *(a1 + 248) + v5;
}

uint64_t Constraint::getCanSeedFinalSilence(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v47 = 1;
  v6 = *(a1 + 68);
  if ((v6 - 1) > 1 || ((v7 = *(a2 + 2), v7 != 0x3FFF) ? (v8 = v7 + 1) : (v8 = 0), *(a1 + 80) == v8))
  {
    if ((v6 & 0xFFFFFFFD) != 0 || (v10 = *(a1 + 216)) == 0)
    {
      v9 = 1;
    }

    else
    {
      v11 = a2[3];
      v45 = 0;
      v46 = 0;
      if (v11 == -2)
      {
        DgnPrimArray<int>::copyArraySlice(&v45, (a1 + 224), 0, *(a1 + 232));
      }

      else
      {
        Lattice<WordLatticeLC>::appendOutLinks(v10, *(*(v10 + 128) + 136 * v11 + 120), &v45);
      }

      v12 = v46;
      if (v46)
      {
        v13 = v45;
        while (1)
        {
          v14 = *v13++;
          if (*(*(*(a1 + 216) + 128) + 136 * v14 + 88) == -50331651)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_17;
          }
        }

        v9 = 1;
      }

      else
      {
LABEL_17:
        v9 = 0;
        v47 = 0;
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
      v6 = *(a1 + 68);
    }
  }

  else
  {
    v9 = 0;
    v47 = 0;
  }

  if ((v6 & 0xFFFFFFFD) != 0)
  {
    if (!v9)
    {
      return v47;
    }

    goto LABEL_22;
  }

  if (!v9)
  {
    return v47;
  }

  v19 = a2[2];
  LOWORD(v45) = *a2 >> 25;
  HIDWORD(v45) = v19;
  Bucket = Hash<StateSpec,StateSpec,StateSpec,BOOL>::findBucket(a1 + 336, &v45);
  if (*Bucket)
  {
    v47 = *(*Bucket + 20);
    if ((v47 & 1) == 0)
    {
      return v47;
    }

    goto LABEL_22;
  }

  if (v19)
  {
    v27 = *(*(**VocMgr::smpVocMgr + ((*a2 >> 22) & 0x3F8)) + 56);
    if (*(a1 + 64) == 1)
    {
      v28 = *(*(v27 + 54) + 4 * v19);
      v29 = v28 != -1;
      if (v28 != -1 && v28 > a3)
      {
        return 0;
      }

      v31 = *(*(v27 + 56) + 4 * v19);
      if (v31 != -1)
      {
        if (v31 < a3)
        {
          return 0;
        }

        v29 = 1;
      }

      v39 = *(a1 + 216);
      if (v39)
      {
        if (*(v39 + 215) == 1)
        {
          v40 = *(a1 + 240);
          if (v40 != -1)
          {
            v41 = (*(v39 + 128) + 136 * a2[3]);
            v42 = v41[4] - a3 + v41[5] + v41[6];
            if (v42 < 0)
            {
              v42 = -v42;
            }

            if (v42 > v40)
            {
              return 0;
            }

            v29 = 1;
          }
        }
      }
    }

    else
    {
      v29 = 0;
    }

    StateTransition = StateMgr::getStateTransition(v27, v19, 0, v22, v23, v24, v25, v26);
  }

  else
  {
    v29 = 0;
    StateTransition = a1 + 168;
  }

  if (!*(StateTransition + 8))
  {
LABEL_58:
    v47 = 0;
    if (v29)
    {
      return v47;
    }

    goto LABEL_61;
  }

  v36 = 0;
  while (1)
  {
    v37 = *(*StateTransition + 4 * v36);
    v43[0] = *a1;
    v44 = v37;
    if (Constraint::givenStateCanSeedFinalSilence(a1, v43, v21, v22, v23, v24, v25, v26))
    {
      break;
    }

    if (++v36 >= *(StateTransition + 8))
    {
      goto LABEL_58;
    }
  }

  if (!v29)
  {
LABEL_61:
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::add(a1 + 336, &v45, &v47);
    if ((v47 & 1) == 0)
    {
      return v47;
    }
  }

LABEL_22:
  v15 = *a2;
  if (v15 >> 25 != 126)
  {
    v16 = *(*(**VocMgr::smpVocMgr + ((v15 >> 22) & 0x3F8)) + 48);
    if (*(v16 + 418) == 1)
    {
      v47 = 0;
      v17 = v15 & 0xFFFFFF;
      if ((v15 & 0xFFFFFF) == 0xFFFFFE)
      {
        PronPredecessorSeedCategory = *(v16 + 416);
      }

      else
      {
        PronPredecessorSeedCategory = WordList::getPronPredecessorSeedCategory(v16, v17);
      }

      if (*(*(*(v16 + 400) + 16 * PronPredecessorSeedCategory) + *(v16 + 417)) == 1)
      {
        return 1;
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        v45 = 0;
        v46 = 0;
        WordList::lookupAll(v16, v17, &v45);
        if (v46)
        {
          v32 = 0;
          while (1)
          {
            v33 = v45[v32];
            v34 = v33 == 16777214 ? *(v16 + 416) : WordList::getPronPredecessorSeedCategory(v16, v33);
            if (*(*(*(v16 + 400) + 16 * v34) + *(v16 + 417)) == 1)
            {
              break;
            }

            if (++v32 >= v46)
            {
              goto LABEL_64;
            }
          }

          v47 = 1;
        }

LABEL_64:
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
      }
    }
  }

  return v47;
}

void sub_2625AFA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,BOOL>::add(uint64_t result, unsigned __int16 *a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *(a2 + 1) + (*a2 << 13);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 32);
  if (!v11)
  {
    result = DgnPool::addChunk((v5 + 24));
    v11 = *(v5 + 32);
  }

  v12 = (v10 + 8 * v9);
  *(v5 + 32) = *v11;
  *(v11 + 8) = 0;
  *(v11 + 12) = *a2;
  *(v11 + 20) = *a3;
  *(v11 + 8) = v7;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v13 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v12 = v11;
  return result;
}

uint64_t Constraint::getMaxEndTime(uint64_t a1, unsigned int *a2)
{
  v3 = a2[2];
  result = 268435200;
  if (v3)
  {
    v5 = *(*(*(*(**VocMgr::smpVocMgr + ((*a2 >> 22) & 0x3F8)) + 56) + 448) + 4 * v3);
    if (v5 >= 268435200)
    {
      v6 = 268435200;
    }

    else
    {
      v6 = v5;
    }

    if (v5 == -1)
    {
      result = 268435200;
    }

    else
    {
      result = v6;
    }

    v7 = *(a1 + 216);
    if (v7)
    {
      if (*(v7 + 215) == 1)
      {
        v8 = *(a1 + 240);
        if (v8 != -1)
        {
          v9 = (*(v7 + 128) + 136 * a2[3]);
          v10 = v9[4] + v8 + v9[5] + v9[6];
          if (result >= v10)
          {
            return v10;
          }

          else
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Constraint::getSeededPrecedingNonAcousticWords(uint64_t a1, unsigned int *a2)
{
  v4 = a2[2];
  v31[0] = *a2 >> 25;
  v32 = v4;
  Bucket = Hash<StateSpec,StateSpec,StateSpec,BOOL>::findBucket(a1 + 592, v31);
  v11 = (a1 + 576);
  if (*Bucket)
  {
    return *v11 + 16 * *(*Bucket + 5);
  }

  v30 = *(a1 + 584);
  v13 = v30;
  v14 = v30;
  if (v30 == *(a1 + 588))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 576, 1, 1);
    v14 = *(a1 + 584);
  }

  v15 = (*(a1 + 576) + 16 * v14);
  *v15 = 0;
  v15[1] = 0;
  ++*(a1 + 584);
  v12 = *(a1 + 576) + 16 * v13;
  if (v4)
  {
    v16 = *a2 >> 25;
    StateTransition = StateMgr::getStateTransition(*(*(**VocMgr::smpVocMgr + 8 * v16) + 56), v4, 0, v6, v7, v8, v9, v10);
  }

  else
  {
    StateTransition = a1 + 168;
    LOWORD(v16) = *a1;
  }

  if (*(StateTransition + 8))
  {
    v18 = 0;
    do
    {
      v19 = *(*StateTransition + 4 * v18);
      v28 = v16;
      v29 = v19;
      Constraint::givenStateGetPrecedingNonAcousticWords(a1, &v28, v12, v6, v7, v8, v9, v10);
      ++v18;
    }

    while (v18 < *(StateTransition + 8));
  }

  if (!*(v12 + 8))
  {
    v20 = *(a1 + 588);
    if (v13 > v20)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 576, v13 - v20, 0);
    }

    v21 = *(a1 + 584);
    if (v21 <= v13)
    {
      if (v21 < v13)
      {
        v24 = v13 - v21;
        v25 = 16 * v21;
        do
        {
          v26 = (*v11 + v25);
          *v26 = 0;
          v26[1] = 0;
          v25 += 16;
          --v24;
        }

        while (v24);
      }
    }

    else if (v21 > v13)
    {
      v22 = v21;
      v23 = 16 * v21 - 16;
      do
      {
        --v22;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*v11 + v23);
        v23 -= 16;
      }

      while (v22 > v13);
    }

    *(a1 + 584) = v13;
    v30 = 0;
    v12 = *(a1 + 576);
  }

  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::add(a1 + 592, v31, &v30);
  return v12;
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,unsigned int>::add(uint64_t result, unsigned __int16 *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *(a2 + 1) + (*a2 << 13);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 32);
  if (!v11)
  {
    result = DgnPool::addChunk((v5 + 24));
    v11 = *(v5 + 32);
  }

  v12 = (v10 + 8 * v9);
  *(v5 + 32) = *v11;
  *(v11 + 8) = 0;
  *(v11 + 12) = *a2;
  *(v11 + 20) = *a3;
  *(v11 + 8) = v7;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v13 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v12 = v11;
  return result;
}

uint64_t Constraint::getSeededWeights(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v6 = a2[2];
  v7 = *a2 >> 25;
  v48[0] = v7;
  v49 = v6;
  Bucket = Hash<StateSpec,StateSpec,StateSpec,BOOL>::findBucket(a1 + 464, v48);
  if (*Bucket)
  {
    return *(a1 + 448) + 16 * *(*Bucket + 5);
  }

  v47 = *(a1 + 456);
  v15 = v47;
  v16 = v47;
  if (v47 == *(a1 + 460))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 448, 1, 1);
    v16 = *(a1 + 456);
  }

  v17 = (*(a1 + 448) + 16 * v16);
  *v17 = 0;
  v17[1] = 0;
  ++*(a1 + 456);
  v14 = *(a1 + 448) + 16 * v15;
  v18 = 1;
  v46 = 1;
  if (v6)
  {
    v19 = *(*(**VocMgr::smpVocMgr + 8 * v7) + 56);
    StateTransition = StateMgr::getStateTransition(v19, v6, 0, v9, v10, v11, v12, v13);
    v21 = *a2;
    v22 = v21 & 0xFFFFFF;
    if ((v21 & 0xFFFFFF) != 0xFFFFF8 && (v21 & 0xFE000000) != 0xFC000000)
    {
      v23 = *(*(**VocMgr::smpVocMgr + ((v21 >> 22) & 0x3F8)) + 48);
      if (*(*(v23 + 32) + 2 * v22) == 1 && !*(*(v23 + 592) + 2 * v22))
      {
        goto LABEL_25;
      }
    }

    if (!Constraint::getCanSeedFinalSilence(a1, a2, a3))
    {
      goto LABEL_25;
    }

    v24 = *(*(v19 + 34) + 4 * v6);
    v25 = (v7 + 1);
    v26 = *(v14 + 12);
    if (v26 <= v7)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v14, v25 - v26, 0);
    }

    v27 = *(v14 + 8);
    if (v27 <= v25)
    {
      if (v27 <= v7)
      {
        v29 = v7 - v27 + 1;
        v30 = 16 * v27;
        do
        {
          v31 = (*v14 + v30);
          *v31 = 0;
          v31[1] = 0;
          v30 += 16;
          --v29;
        }

        while (v29);
      }
    }

    else if (v27 > v25)
    {
      v28 = 16 * v27 - 16;
      do
      {
        --v27;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*v14 + v28);
        v28 -= 16;
      }

      while (v27 > v25);
    }

    *(v14 + 8) = v25;
    v32 = *v14 + 16 * v7;
    v33 = *(v32 + 8);
    if (v33 == *(v32 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(*v14 + 16 * v7, 1, 1);
      v33 = *(v32 + 8);
    }

    *(*v32 + 4 * v33) = v24;
    ++*(v32 + 8);
    if (v24 != 0xFFFF)
    {
      v18 = 0;
      v46 = 0;
    }

    else
    {
LABEL_25:
      v18 = 1;
    }
  }

  else
  {
    StateTransition = a1 + 168;
    LOWORD(v7) = *a1;
  }

  if (*(StateTransition + 8))
  {
    v34 = 0;
    do
    {
      v35 = *(*StateTransition + 4 * v34);
      v44[0] = v7;
      v45 = v35;
      Constraint::givenStateGetWeights(a1, v44, v14, &v46, v10, v11, v12, v13);
      ++v34;
    }

    while (v34 < *(StateTransition + 8));
    v18 = v46;
  }

  if (v18)
  {
    v36 = *(a1 + 460);
    if (v15 > v36)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 448, v15 - v36, 0);
    }

    v37 = *(a1 + 456);
    if (v37 <= v15)
    {
      if (v37 < v15)
      {
        v40 = v15 - v37;
        v41 = 16 * v37;
        do
        {
          v42 = (*(a1 + 448) + v41);
          *v42 = 0;
          v42[1] = 0;
          v41 += 16;
          --v40;
        }

        while (v40);
      }
    }

    else if (v37 > v15)
    {
      v38 = v37;
      v39 = 16 * v37 - 16;
      do
      {
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*(a1 + 448) + v39);
        --v38;
        v39 -= 16;
      }

      while (v38 > v15);
    }

    *(a1 + 456) = v15;
    v47 = 0;
    v14 = *(a1 + 448);
  }

  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::add(a1 + 464, v48, &v47);
  return v14;
}

BOOL Constraint::getSuccessorRecursivePrefilteringAllowed(unsigned __int16 *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[2];
  if (v9)
  {
    v10 = *a2 >> 25;
    StateTransition = StateMgr::getStateTransition(*(*(**VocMgr::smpVocMgr + 8 * v10) + 56), v9, 0, a4, a5, a6, a7, a8);
  }

  else
  {
    v12 = *a1;
    StateTransition = (a1 + 84);
    LODWORD(v10) = v12;
  }

  v13 = *(StateTransition + 2);
  if (!v13)
  {
    return 0;
  }

  v14 = *(*(*(**VocMgr::smpVocMgr + 8 * v10) + 56) + 680);
  if (*(v14 + **StateTransition) == 1)
  {
    return 1;
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v13 == v16)
    {
      break;
    }

    v18 = *(v14 + (*StateTransition)[v16++]);
  }

  while (v18 != 1);
  return v17 < v13;
}

uint64_t Constraint::getWeightsForState(uint64_t a1, unsigned int *a2)
{
  v2 = a2[2];
  if (v2)
  {
    return *(*(*(*(**VocMgr::smpVocMgr + ((*a2 >> 22) & 0x3F8)) + 56) + 272) + 4 * v2);
  }

  else
  {
    return 0xFFFFLL;
  }
}

BOOL Constraint::isPrecedingNonAcousticWordRequiredForState(uint64_t a1, unsigned int *a2)
{
  v2 = a2[2];
  result = 0;
  if (v2)
  {
    if (*(*(*(*(**VocMgr::smpVocMgr + ((*a2 >> 22) & 0x3F8)) + 56) + 480) + v2) == 1)
    {
      return 1;
    }

    v3 = *(a1 + 216);
    if (v3)
    {
      if (*(*(v3 + 128) + 136 * a2[3] + 108) != -83886084)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL Constraint::isPrecedingNonAcousticWordValidForState(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = *a2;
  if ((v3 ^ a3) >> 25)
  {
    return 0;
  }

  v4 = a2[2];
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    return *(*(v5 + 128) + 136 * a2[3] + 108) == a3;
  }

  else
  {
    return StateMgr::isPrecedingNonAcousticWordForState(*(*(**VocMgr::smpVocMgr + ((v3 >> 22) & 0x3F8)) + 56), a3 & 0xFFFFFF, v4);
  }
}

uint64_t Constraint::getTraceNextPhones(uint64_t a1, uint64_t a2, int *a3, int **a4)
{
  if (*a2 == -50331651)
  {
    return 0;
  }

  v5 = *(a2 + 4);
  v6 = *a3;
  if (v5 == 0x3FFF)
  {
    if (v6 != 1)
    {
      return 0;
    }

    v7 = a1 + 120;
  }

  else
  {
    v8 = v6 == 1;
    v9 = 104;
    if (v8)
    {
      v9 = 88;
    }

    v7 = *(a1 + v9) + 16 * v5;
  }

  BitArray::operator=(a4, v7);
  return 1;
}

uint64_t Constraint::getStateNextPhones(uint64_t a1, unsigned int *a2, _DWORD *a3, BitArray *a4)
{
  v4 = *a2;
  if (v4 >> 25 == 126 || !a2[2] || *a3 != 1 || (*(gParDiagnosticSearchActiveWordBuildAllSuccessorPhonemeContexts + 41) & 1) != 0)
  {
    return 0;
  }

  v9 = v4 >> 25;
  v10 = *(**VocMgr::smpVocMgr + 8 * (v4 >> 25));
  v11 = *(v10 + 56);
  BitArray::setSize(a4, *(v10 + 184));
  StateMgr::mergeNextPhones(v11, a2[2], a4);
  v12 = *(a1 + 216);
  if (v12)
  {
    v13 = a2[3];
    v30 = 0;
    v31 = 0;
    if (v13 == -2)
    {
      DgnPrimArray<int>::copyArraySlice(&v30, (a1 + 224), 0, *(a1 + 232));
    }

    else
    {
      Lattice<WordLatticeLC>::appendOutLinks(v12, *(*(v12 + 128) + 136 * v13 + 120), &v30);
    }

    PhnIndexSet::PhnIndexSet(v29, *(v10 + 184));
    *v29[0] |= 1u;
    if (v31)
    {
      v14 = 0;
      v15 = -83886081;
      do
      {
        v16 = *(a1 + 216);
        v17 = *(*(v16 + 128) + 136 * *(v30 + 4 * v14) + 88);
        if (v17 != v15 && (v17 & 0xFE000000) != -67108864)
        {
          v19 = *(*(**VocMgr::smpVocMgr + 8 * v9) + 48);
          v20 = *&v17 & 0xFFFFFFLL;
          if (*(v16 + 218) == 1)
          {
            v21 = *(v19[74] + 2 * v20);
            *(v29[0] + ((v21 >> 3) & 0x1FFC)) |= 1 << v21;
          }

          else
          {
            v27 = 0;
            v28 = 0;
            WordList::lookupAll(v19, v20, &v27);
            if (v28)
            {
              v22 = 0;
              v23 = v27;
              v24 = v19[74];
              v25 = v29[0];
              do
              {
                v26 = *(v24 + 2 * *(v23 + 4 * v22));
                *(v25 + ((v26 >> 3) & 0x1FFC)) |= 1 << v26;
                ++v22;
              }

              while (v22 < v28);
            }

            DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
          }

          v15 = v17;
        }

        ++v14;
      }

      while (v14 < v31);
    }

    BitArray::inplaceAndSameSize(a4, v29);
    BitArray::~BitArray(v29);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v30);
  }

  return 1;
}

void sub_2625B085C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t DgnArray<CWIDAC>::find(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  while (!CWIDAC::operator==(*a1 + v4, a2))
  {
    ++v5;
    v4 += 24;
    if (v5 >= *(a1 + 8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

unint64_t DgnArray<CWIDAC>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 24 * v6, 24 * v5, 24 * v5, 1);
  *(a1 + 12) = result / 0x18;
  *a1 = v8;
  return result;
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,BOOL>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523FF0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 17;
  }

  else
  {
    v7 = 21;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2625B0B6C(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<StateSpec,StateSpec,StateSpec,BOOL>::~Hash(uint64_t a1)
{
  Hash<StateSpec,StateSpec,StateSpec,BOOL>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523FC8;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 20;
  }

  else
  {
    v7 = 24;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2625B0C84(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(uint64_t a1)
{
  Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

void *DgnArray<PhnIndexSet>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      BitArray::~BitArray((*a1 + v3));
      v3 -= 16;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,BOOL>::~Hash(uint64_t a1)
{
  *a1 = &unk_287523FF0;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

void *DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    v4 = 16 * v2 - 16;
    do
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*a1 + v4);
      --v3;
      v4 -= 16;
    }

    while (v3 > 1);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t Hash<StateSpec,StateSpec,StateSpec,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287523FC8;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t sizeObject<CWIDAC>(uint64_t a1, int a2)
{
  v12 = 0x3FFF;
  v13 = xmmword_26286CC40;
  v4 = sizeObject(v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 24 * v7 - 24;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 24;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t DgnArray<DgnArray<CWIDAC>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnIArray<Utterance *>::~DgnIArray(*v7 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(v7 + 8) = 0;
  v10 = *(v7 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v10, 0);
    v11 = *(v7 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*v7 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    result = DgnArray<CWIDAC>::copyArraySlice(v15, v14, 0, *(v14 + 8));
    v12 = *(v7 + 8) + 1;
    *(v7 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        result = DgnIArray<Utterance *>::~DgnIArray(*v7 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

unint64_t DgnArray<CWIDAC>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 8) = 0;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnArray<CWIDAC>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 8);
  }

  v11 = *a2;
  v12 = *v7;
  v13 = a4;
  v10 = v9;
  do
  {
    v14 = v11 + 24 * a3;
    v15 = v12 + 24 * v10;
    *v15 = *v14;
    *(v15 + 4) = *(v14 + 4);
    *(v15 + 8) = *(v14 + 8);
    ++v10;
    ++a3;
    --v13;
  }

  while (v13);
LABEL_6:
  if (v10 < a4)
  {
    v16 = a4 - v10;
    v17 = (*v7 + 24 * v10 + 8);
    do
    {
      *(v17 - 1) = 0x3FFF;
      *v17 = xmmword_26286CC40;
      v17 = (v17 + 24);
      --v16;
    }

    while (v16);
  }

  *(v7 + 8) = a4;
  return result;
}

void DgnArray<PhnIndexSet>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      BitArray::~BitArray((*a1 + v9));
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    PhnIndexSet::PhnIndexSet((*a1 + 16 * v12), (*a2 + 16 * a3));
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v14 = v12;
      v15 = 16 * v12 - 16;
      do
      {
        --v14;
        BitArray::~BitArray((*a1 + v15));
        v15 -= 16;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 16 * v12;
    do
    {
      DgnString::DgnString((*a1 + v17));
      v17 += 16;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}