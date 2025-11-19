void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_f32[3] <= a1->n128_f32[3])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*,marisa::grimoire::trie::WeightedRange*,marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v12);
    }

    else
    {

      a6.n128_u64[0] = std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, a2, a5).n128_u64[0];
    }
  }

  return a6.n128_f64[0];
}

double std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*,marisa::grimoire::trie::WeightedRange*,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v9 = *a1++;
        a6.n128_u64[0] = v9.n128_u64[0];
        *a5++ = v9;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f32[3] <= a1->n128_f32[3])
    {
      v7 = *a1++;
      a6 = v7;
    }

    else
    {
      v6 = *a3++;
      a6 = v6;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v8 = *a3++;
    a6.n128_u64[0] = v8.n128_u64[0];
    *a5++ = v8;
  }

  return a6.n128_f64[0];
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      result.n128_u32[0] = a2->n128_u32[3];
      v13 = -a5;
      while (1)
      {
        v14 = &a1[v12];
        if (result.n128_f32[0] > a1[v12].n128_f32[3])
        {
          break;
        }

        ++v12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v39 = a3;
      v40 = a8;
      if (-v13 >= v10)
      {
        if (v13 == -1)
        {
          v43 = a1[v12];
          a1[v12] = *a2;
          result = v43;
          *a2 = v43;
          return result;
        }

        v26 = v16 / 2;
        v20 = &a1[v16 / 2 + v12];
        if (a3 == a2)
        {
          v18 = a2;
        }

        else
        {
          v27 = a3 - a2;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[v27 >> 1];
            v30 = v29->n128_f32[3];
            v31 = v29 + 1;
            v27 += ~(v27 >> 1);
            if (v30 > v20->n128_f32[3])
            {
              v18 = v31;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = v18 - a2;
      }

      else
      {
        v17 = v10 / 2;
        v18 = &a2[v10 / 2];
        if (v14 == a2)
        {
          v25 = &a1[v12];
          v20 = &a1[v12];
        }

        else
        {
          v19 = (a2 - a1 - v12 * 16) >> 4;
          v20 = &a1[v12];
          do
          {
            v21 = v19 >> 1;
            v22 = &v20[v19 >> 1];
            v23 = v22->n128_f32[3];
            v24 = v22 + 1;
            v19 += ~(v19 >> 1);
            if (v18->n128_f32[3] > v23)
            {
              v19 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v19);
          v25 = v20;
        }

        v26 = (v25 - a1 - v12 * 16) >> 4;
      }

      a5 = -(v26 + v13);
      v32 = v10 - v17;
      v33 = v17;
      v34 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,marisa::grimoire::trie::WeightedRange *,marisa::grimoire::trie::WeightedRange *>(v20, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v26 + v35 >= v10 - (v26 + v35) - v13)
      {
        v38 = v35;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(v34, v18, v39, a4, a5, v32, a7, v40);
        v18 = v20;
        v32 = v38;
        a5 = v26;
        a8 = v40;
        a3 = v36;
      }

      else
      {
        v37 = v26;
        a8 = v40;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(v14, v20, v34, a4, v37, v35, a7, v40);
        v14 = v36;
        a3 = v39;
      }

      v10 = v32;
      a1 = v14;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    result.n128_u64[0] = std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, a2, a3, a4, a5, v10, a7, result).n128_u64[0];
  }

  return result;
}

__n128 std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    result = *a1;
    *a3 = *a1;
    v4 = a1 + 1;
    if (&a1[1] != a2)
    {
      v5 = 0;
      v6 = a3;
      do
      {
        v7 = a1;
        v8 = v6;
        a1 = v4;
        v9 = ++v6;
        if (v7[1].n128_f32[3] > v8->n128_f32[3])
        {
          *v6 = *v8;
          v9 = a3;
          if (v8 != a3)
          {
            v10 = v5;
            while (1)
            {
              v9 = (a3 + v10);
              if (v7[1].n128_f32[3] <= *(&a3->n128_f32[-1] + v10))
              {
                break;
              }

              *v9 = v9[-1];
              v10 -= 16;
              if (!v10)
              {
                v9 = a3;
                break;
              }
            }
          }
        }

        result = *a1;
        *v9 = *a1;
        v4 = a1 + 1;
        v5 += 16;
      }

      while (&a1[1] != a2);
    }
  }

  return result;
}

__n128 std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src, __n128 result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v14 = -__src;
      v15 = __src;
      v16 = a1;
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 4;
        v14 -= 16;
      }

      while (v16 != a2);
      while (a2 != a3)
      {
        if (a2->n128_f32[3] <= *(__src + 12))
        {
          v19 = *__src;
          __src += 16;
          result = v19;
        }

        else
        {
          v18 = *a2++;
          result = v18;
        }

        *a1++ = result;
        if (v15 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v14));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      *(__src + v8 * 16) = result;
      ++v8;
    }

    while (&a2[v8] != a3);
    v9 = (__src + v8 * 16);
    while (a2 != a1)
    {
      v10 = v9[-1].n128_f32[3];
      v11 = a2[-1].n128_f32[3];
      v12 = v10 <= v11;
      if (v10 <= v11)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = a2 - 1;
      }

      result = *v13;
      a3[-1] = *v13;
      --a3;
      if (v12)
      {
        --v9;
      }

      else
      {
        --a2;
      }

      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        result = v9[-1];
        a3[v20--] = result;
        --v9;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,marisa::grimoire::trie::WeightedRange *,marisa::grimoire::trie::WeightedRange *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v9 = *__src;
      v6 = a3 - a2;
      memmove(__src, __src + 16, a3 - a2);
      v4 = &__src[v6];
      *v4 = v9;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v10 = *(a3 - 1);
      v7 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        memmove(__src + 16, __src, v7);
      }

      *__src = v10;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,marisa::grimoire::trie::WeightedRange *>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,marisa::grimoire::trie::WeightedRange *>(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 4;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 4)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 16;
      v7 = a1 + 16;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 16;
        v9 = v6 == a3;
        v6 += 16;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 4;
    v11 = (a2 - a1) >> 4;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[16 * v11];
    do
    {
      v14 = *(v13 - 1);
      v13 -= 16;
      v15 = &v13[v3];
      v16 = v13;
      do
      {
        v17 = v16;
        v16 = v15;
        *v17 = *v15;
        v18 = __OFSUB__(v4, (a3 - v15) >> 4);
        v20 = v4 - ((a3 - v15) >> 4);
        v19 = (v20 < 0) ^ v18;
        v15 = &a1[16 * v20];
        if (v19)
        {
          v15 = v16 + v3;
        }
      }

      while (v15 != v13);
      *v16 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

unsigned int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned char>::read_(uint64_t a1, marisa::grimoire::io::Reader *this)
{
  v6 = 0;
  marisa::grimoire::io::Reader::read_data(this, &v6, 8uLL);
  v4 = v6;
  marisa::grimoire::vector::Vector<char>::resize(a1, v6);
  marisa::grimoire::io::Reader::read<unsigned char>(this, *(a1 + 8), v4);
  return marisa::grimoire::io::Reader::seek(this, -v6 & 7);
}

uint64_t marisa::grimoire::io::Reader::read<unsigned char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x20000001FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return marisa::grimoire::io::Reader::read_data(a1, a2, a3);
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::read_(uint64_t a1, marisa::grimoire::io::Reader *this)
{
  v7 = 0;
  marisa::grimoire::io::Reader::read_data(this, &v7, 8uLL);
  v4 = v7 / 0xC;
  if (v7 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:213: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::resize(a1, v7 / 0xC);
  marisa::grimoire::io::Reader::read<marisa::grimoire::vector::RankIndex>(this, *(a1 + 8), v4);
  return marisa::grimoire::io::Reader::seek(this, -v7 & 7);
}

uint64_t marisa::grimoire::vector::Vector<unsigned char>::write_(uint64_t a1, marisa::grimoire::io::Writer *this)
{
  __buf = *(a1 + 24);
  marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  marisa::grimoire::io::Writer::write<unsigned char>(this, *(a1 + 16), *(a1 + 24));
  return marisa::grimoire::io::Writer::seek(this, -*(a1 + 24) & 7);
}

uint64_t marisa::grimoire::io::Writer::write<unsigned char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x20000001ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return marisa::grimoire::io::Writer::write_data(a1, a2, a3);
}

double marisa::Keyset::Keyset(marisa::Keyset *this)
{
  *(this + 12) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 12) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

int64x2_t marisa::Keyset::push_back(uint64_t a1, uint64_t a2)
{
  v4 = marisa::Keyset::reserve(a1, *(a2 + 8));
  if (*(a2 + 8))
  {
    v5 = 0;
    do
    {
      *(v4 + v5) = *(*a2 + v5);
      ++v5;
      v6 = *(a2 + 8);
    }

    while (v5 < v6);
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(*(a1 + 48) + ((*(a1 + 88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 88);
  *v8 = v4;
  *(v8 + 8) = v7;
  *(v8 + 12) = *(a2 + 12);
  v9.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v9.i64[1] = v6;
  result = vaddq_s64(*(a1 + 88), v9);
  *(a1 + 88) = result;
  return result;
}

int64x2_t marisa::Keyset::push_back(marisa::Keyset *this, uint64_t a2, char a3)
{
  if (*(this + 7) == *(this + 11) >> 8)
  {
    marisa::Keyset::append_key_block(this);
  }

  v6 = marisa::Keyset::reserve(this, *(a2 + 8) + 1);
  if (*(a2 + 8))
  {
    v7 = 0;
    do
    {
      *(v6 + v7) = *(*a2 + v7);
      ++v7;
      v8 = *(a2 + 8);
    }

    while (v7 < v8);
  }

  else
  {
    v8 = 0;
  }

  *(v6 + v8) = a3;
  v9 = *(*(this + 6) + ((*(this + 11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 11);
  v10 = *(a2 + 8);
  *v9 = v6;
  *(v9 + 8) = v10;
  *(v9 + 12) = *(a2 + 12);
  v11.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v11.i64[1] = v10;
  result = vaddq_s64(*(this + 88), v11);
  *(this + 88) = result;
  return result;
}

double marisa::Keyset::push_back(marisa::Keyset *this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    exception[2] = 0x200000032;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:50: MARISA_NULL_ERROR: str == NULL";
  }

  v3 = 0;
    ;
  }

  *&result = marisa::Keyset::push_back(this, a2, v3 - 1, 1.0).u64[0];
  return result;
}

double marisa::Keyset::reset(marisa::Keyset *this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t *marisa::Keyset::clear(marisa::Keyset *this)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  memset(v2, 0, sizeof(v2));
  marisa::Keyset::swap(v2, this);
  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v3);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v2[1] + 1);
  return marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v2);
}

uint64_t *marisa::Keyset::swap(uint64_t *this, marisa::Keyset *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = *(a2 + 1);
  *this = *a2;
  this[1] = v4;
  *a2 = v2;
  *(a2 + 1) = v3;
  v5 = this[2];
  v6 = this[3];
  v7 = *(a2 + 3);
  this[2] = *(a2 + 2);
  this[3] = v7;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  v8 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = this[5];
  v10 = this[6];
  v11 = *(a2 + 6);
  this[5] = *(a2 + 5);
  this[6] = v11;
  *(a2 + 5) = v9;
  *(a2 + 6) = v10;
  v12 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = this[8];
  v14 = this[9];
  v15 = *(a2 + 9);
  this[8] = *(a2 + 8);
  this[9] = v15;
  *(a2 + 8) = v13;
  *(a2 + 9) = v14;
  v16 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v17;
  v18 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v18;
  return this;
}

void *marisa::Keyset::append_extra_block(marisa::Keyset *this, size_t __sz)
{
  v4 = *(this + 4);
  if (v4 == *(this + 5))
  {
    if (v4)
    {
      v5 = 2 * v4;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5 >> 61 != 0;
    if (8 * v5 >= 0xFFFFFFFFFFFFFFF0)
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 8 * v5 + 16;
    }

    v8 = operator new[](v7, MEMORY[0x29EDC9418]);
    if (!v8)
    {
      v21 = 0;
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F2E168;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
      exception[2] = 0x800000097;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:151: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v8 = 8;
    v8[1] = v5;
    v9 = (v8 + 2);
    if (v5)
    {
      bzero(v8 + 2, 8 * v5);
    }

    v21 = v9;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v11 = *(this + 3);
        v12 = v21;
        v13 = *(v11 + 8 * i);
        *(v11 + 8 * i) = *(v21 + 8 * i);
        *(v12 + 8 * i) = v13;
      }

      v9 = v21;
    }

    v14 = *(this + 3);
    *(this + 3) = v9;
    v21 = v14;
    *(this + 5) = v5;
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v21);
  }

  result = operator new[](__sz, MEMORY[0x29EDC9418]);
  if (!result)
  {
    v19 = __cxa_allocate_exception(0x20uLL);
    *v19 = &unk_2A1F2E168;
    v19[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc";
    v19[2] = 0x80000009FLL;
    v19[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/keyset.cc:159: MARISA_MEMORY_ERROR: new_block.get() == NULL";
  }

  v17 = *(this + 3);
  v16 = *(this + 4);
  *(this + 4) = v16 + 1;
  v18 = *(v17 + 8 * v16);
  *(v17 + 8 * v16) = result;
  if (v18)
  {
    return MEMORY[0x29C2979F0](v18, 0x1000C8077774924);
  }

  return result;
}

void sub_2990D0A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::map(marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_2A1F2E168;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  marisa::grimoire::io::Mapper::Mapper(v12);
  marisa::grimoire::io::Mapper::open(v12, a2, a3);
  marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  marisa::grimoire::io::Mapper::~Mapper(v12);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_2990D0BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::load(marisa::grimoire::trie::LoudsTrie **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x20000002DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:45: MARISA_NULL_ERROR: filename == NULL";
  }

  v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_2A1F2E168;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x800000030;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:48: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Reader::Reader(v10);
  marisa::grimoire::io::Reader::open(v10, a2);
  marisa::grimoire::trie::LoudsTrie::read(v11, v10);
  v6 = *this;
  *this = v11;
  v11 = v6;
  marisa::grimoire::io::Reader::~Reader(v10);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

void sub_2990D0D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::read(marisa::grimoire::trie::LoudsTrie **this, int a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x500000039;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:57: MARISA_CODE_ERROR: fd == -1";
  }

  v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_2A1F2E168;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x80000003CLL;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:60: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Reader::Reader(v10);
  marisa::grimoire::io::Reader::open(v10, a2);
  marisa::grimoire::trie::LoudsTrie::read(v11, v10);
  v6 = *this;
  *this = v11;
  v11 = v6;
  marisa::grimoire::io::Reader::~Reader(v10);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
}

void sub_2990D0EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

void marisa::Trie::save(marisa::grimoire::trie::LoudsTrie ***this, const char *a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000045;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:69: MARISA_STATE_ERROR: trie_.get() == NULL";
    goto LABEL_6;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000046;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:70: MARISA_NULL_ERROR: filename == NULL";
LABEL_6:
    exception[3] = v5;
  }

  marisa::grimoire::io::Writer::Writer(v6);
  marisa::grimoire::io::Writer::open(v6, a2);
  marisa::grimoire::trie::LoudsTrie::write(*this, v6);
  marisa::grimoire::io::Writer::~Writer(v6);
}

void marisa::Trie::write(marisa::grimoire::trie::LoudsTrie ***this, int a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000004ELL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:78: MARISA_STATE_ERROR: trie_.get() == NULL";
    goto LABEL_6;
  }

  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x50000004FLL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:79: MARISA_CODE_ERROR: fd == -1";
LABEL_6:
    exception[3] = v5;
  }

  marisa::grimoire::io::Writer::Writer(v6);
  marisa::grimoire::io::Writer::open(v6, a2);
  marisa::grimoire::trie::LoudsTrie::write(*this, v6);
  marisa::grimoire::io::Writer::~Writer(v6);
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::lookup(result, a2);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::common_prefix_search(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::common_prefix_search(result, a2);
  }

  return result;
}

uint64_t marisa::Trie::num_tries(marisa::Trie *this)
{
  if (*this)
  {
    return *(*this + 1072);
  }

  else
  {
    return 0;
  }
}

uint64_t marisa::Trie::num_keys(marisa::Trie *this)
{
  if (*this)
  {
    return *(*this + 264);
  }

  else
  {
    return 0;
  }
}

uint64_t marisa::Trie::num_nodes(marisa::Trie *this)
{
  if (*this)
  {
    return (*(*this + 48) >> 1) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t marisa::Trie::tail_mode(marisa::Trie *this)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:134: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return *(*this + 1084);
}

uint64_t marisa::Trie::node_order(marisa::Trie *this)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000008BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:139: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return *(*this + 1088);
}

uint64_t marisa::Trie::size(marisa::Trie *this)
{
  if (*this)
  {
    return *(*this + 264);
  }

  else
  {
    return 0;
  }
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::total_size(marisa::grimoire::trie::LoudsTrie **this)
{
  result = *this;
  if (result)
  {
    return marisa::grimoire::trie::LoudsTrie::total_size(result);
  }

  return result;
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::io_size(marisa::grimoire::trie::LoudsTrie **this)
{
  result = *this;
  if (result)
  {
    return marisa::grimoire::trie::LoudsTrie::io_size(result);
  }

  return result;
}

uint64_t *marisa::Trie::swap(uint64_t *this, marisa::Trie *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  return this;
}

marisa::grimoire::trie::LoudsTrie **marisa::fread(__sFILE *this, __sFILE *a2, marisa::Trie *a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000DELL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:222: MARISA_NULL_ERROR: file == NULL";
    goto LABEL_8;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000DFLL;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:223: MARISA_NULL_ERROR: trie == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return marisa::TrieIO::fread(this, a2, a3);
}

marisa::grimoire::trie::LoudsTrie **marisa::TrieIO::fread(__sFILE *this, __sFILE *a2, marisa::Trie *a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000B4;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:180: MARISA_NULL_ERROR: trie == NULL";
  }

  v5 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v5)
  {
    v12 = 0;
    v10 = __cxa_allocate_exception(0x20uLL);
    *v10 = &unk_2A1F2E168;
    v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v10[2] = 0x8000000B8;
    v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:184: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v6 = v5;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v5);
  v12 = v6;
  marisa::grimoire::io::Reader::Reader(v11);
  marisa::grimoire::io::Reader::open(v11, this);
  marisa::grimoire::trie::LoudsTrie::read(v12, v11);
  p = a2->_p;
  a2->_p = v12;
  v12 = p;
  marisa::grimoire::io::Reader::~Reader(v11);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v12);
}

void sub_2990D1614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

void marisa::fwrite(__sFILE *this, __sFILE *a2, const marisa::Trie *a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000E4;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:228: MARISA_NULL_ERROR: file == NULL";
  }

  marisa::TrieIO::fwrite(this, a2, a3);
}

void marisa::TrieIO::fwrite(__sFILE *this, __sFILE *a2, const marisa::Trie *a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000C0;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:192: MARISA_NULL_ERROR: file == NULL";
    goto LABEL_6;
  }

  if (!a2->_p)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000C1;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:193: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
LABEL_6:
    exception[3] = v6;
  }

  marisa::grimoire::io::Writer::Writer(v7);
  marisa::grimoire::io::Writer::open(v7, this);
  marisa::grimoire::trie::LoudsTrie::write(a2->_p, v7);
  marisa::grimoire::io::Writer::~Writer(v7);
}

uint64_t marisa::read(uint64_t a1, marisa::grimoire::trie::LoudsTrie **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000E9;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:233: MARISA_NULL_ERROR: trie == NULL";
  }

  return marisa::TrieIO::read(a1, a2);
}

uint64_t marisa::TrieIO::read(uint64_t a1, marisa::grimoire::trie::LoudsTrie **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x2000000C8;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:200: MARISA_NULL_ERROR: trie == NULL";
  }

  v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    v11 = 0;
    v9 = __cxa_allocate_exception(0x20uLL);
    *v9 = &unk_2A1F2E168;
    v9[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v9[2] = 0x8000000CCLL;
    v9[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:204: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v5 = v4;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  v11 = v5;
  marisa::grimoire::io::Reader::Reader(v10);
  marisa::grimoire::io::Reader::open(v10, a1);
  marisa::grimoire::trie::LoudsTrie::read(v11, v10);
  v6 = *a2;
  *a2 = v11;
  v11 = v6;
  marisa::grimoire::io::Reader::~Reader(v10);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v11);
  return a1;
}

void sub_2990D19D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t marisa::TrieIO::write(uint64_t a1, marisa::grimoire::trie::LoudsTrie ***a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x1000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:213: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
  }

  marisa::grimoire::io::Writer::Writer(v6);
  marisa::grimoire::io::Writer::open(v6, a1);
  marisa::grimoire::trie::LoudsTrie::write(*a2, v6);
  marisa::grimoire::io::Writer::~Writer(v6);
  return a1;
}

uint64_t marisa::grimoire::io::Reader::Reader(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void marisa::grimoire::io::Reader::~Reader(FILE **this)
{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

FILE *marisa::grimoire::io::Reader::open(FILE **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x20000001BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:27: MARISA_NULL_ERROR: filename == NULL";
  }

  v6 = 0;
  v7 = -1;
  v8 = 0;
  v9 = 0;
  marisa::grimoire::io::Reader::open_(&v6, a2);
  result = *this;
  *this = v6;
  *(this + 2) = v7;
  this[2] = v8;
  v4 = *(this + 24);
  *(this + 24) = v9;
  if (v4 == 1)
  {

    return fclose(result);
  }

  return result;
}

void sub_2990D1C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    fclose(a9);
  }

  _Unwind_Resume(exception_object);
}

FILE *marisa::grimoire::io::Reader::open_(marisa::grimoire::io::Reader *this, const char *__filename)
{
  result = fopen(__filename, "rb");
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x90000005ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:94: MARISA_IO_ERROR: file == NULL";
  }

  *this = result;
  *(this + 24) = 1;
  return result;
}

uint64_t *marisa::grimoire::io::Reader::swap(uint64_t *this, marisa::grimoire::io::Reader *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  LODWORD(v2) = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return this;
}

FILE *marisa::grimoire::io::Reader::open(FILE **this, __sFILE *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x200000023;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:35: MARISA_NULL_ERROR: file == NULL";
  }

  result = *this;
  *this = a2;
  *(this + 2) = -1;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Reader::open(FILE **this, int a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x50000002BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:43: MARISA_CODE_ERROR: fd == -1";
  }

  result = *this;
  *this = 0;
  *(this + 2) = a2;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Reader::open(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Reader::clear(FILE **this)
{
  result = *this;
  *this = 0;
  *(this + 2) = -1;
  this[2] = 0;
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t marisa::grimoire::io::Reader::seek(uint64_t this, size_t __nitems)
{
  v2 = __nitems;
  v3 = this;
  v8 = *MEMORY[0x29EDCA608];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:68: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        this = marisa::grimoire::io::Reader::read_data(v3, v7, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      this = marisa::grimoire::io::Reader::read_data(this, v7, __nitems);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t marisa::grimoire::io::Reader::read_data(uint64_t this, char *a2, size_t __nitems)
{
  v3 = __nitems;
  v4 = a2;
  v5 = this;
  v6 = *this;
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:113: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_19;
  }

  if (__nitems)
  {
    if (*(this + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        this = read(*(v5 + 8), v4, v7);
        if (this <= 0)
        {
          break;
        }

        v4 += this;
        v3 -= this;
        if (!v3)
        {
          return this;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F2E168;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:129: MARISA_IO_ERROR: size_read <= 0";
LABEL_19:
      exception[3] = v9;
    }

    if (v6)
    {
      this = fread(a2, 1uLL, __nitems, v6);
      if (this != v3)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F2E168;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:134: MARISA_IO_ERROR: ::fread(buf, 1, size, file_) != size";
        goto LABEL_19;
      }
    }

    else
    {
      this = *(this + 16);
      if (this)
      {
        this = std::istream::read();
        if ((*(this + *(*this - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_2A1F2E168;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
          v10[2] = 0x90000008ALL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:138: MARISA_IO_ERROR: !stream_->read(static_cast<char *>(buf), size)";
        }
      }
    }
  }

  return this;
}

uint64_t marisa::grimoire::trie::Tail::map_(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::Vector<char>::map(this, a2);

  return marisa::grimoire::vector::BitVector::map((this + 48), a2);
}

uint64_t marisa::grimoire::trie::Tail::read(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Reader *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  marisa::grimoire::vector::Vector<char>::read(v8, a2);
  marisa::grimoire::vector::BitVector::read(v9, a2);
  v4 = *this;
  *this = v8[0];
  v8[0] = v4;
  v5 = *(this + 2);
  *(this + 2) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(this + 24);
  *(this + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  marisa::grimoire::vector::BitVector::swap((this + 48), v9);
  if (v14)
  {
    MEMORY[0x29C2979F0](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x29C2979F0](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x29C2979F0](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x29C2979F0](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C2979F0](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t marisa::grimoire::trie::Tail::read_(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Reader *a2)
{
  marisa::grimoire::vector::Vector<char>::read(this, a2);

  return marisa::grimoire::vector::BitVector::read((this + 48), a2);
}

uint64_t marisa::grimoire::trie::Tail::write(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Writer *a2)
{
  marisa::grimoire::vector::Vector<char>::write_(this, a2);

  return marisa::grimoire::vector::BitVector::write_((this + 48), a2);
}

uint64_t marisa::grimoire::trie::Tail::write_(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Writer *a2)
{
  marisa::grimoire::vector::Vector<char>::write_(this, a2);

  return marisa::grimoire::vector::BitVector::write_((this + 48), a2);
}

uint64_t marisa::grimoire::trie::Tail::match(marisa::grimoire::trie::Tail *this, marisa::Agent *a2, unint64_t a3)
{
  v3 = *(a2 + 5);
  v4 = *(this + 2);
  if (*(this + 12))
  {
    v5 = *(v3 + 100);
    v6 = *a2;
    v7 = *(a2 + 1);
    do
    {
      if (*(v4 + a3) != *(v6 + v5))
      {
        break;
      }

      *(v3 + 100) = ++v5;
      if ((*(*(this + 8) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        return 1;
      }

      ++a3;
    }

    while (v7 > v5);
  }

  else
  {
    v12 = v4 + a3;
    v8 = v4 + a3 - *(v3 + 100);
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *v12;
    LODWORD(v12) = *(v3 + 100);
    while (v11 == *(v9 + v12))
    {
      v12 = (v12 + 1);
      *(v3 + 100) = v12;
      v11 = *(v8 + v12);
      if (!*(v8 + v12))
      {
        return 1;
      }

      if (v10 <= v12)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t marisa::grimoire::trie::Tail::clear(marisa::grimoire::trie::Tail *this)
{
  memset(v6, 0, 41);
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v6[3] = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v2 = *this;
  *this = 0u;
  v3 = *(this + 2);
  *(this + 2) = 0;
  v4 = *(this + 24);
  *(this + 24) = 0u;
  v5 = *(this + 40);
  *(this + 40) = 0;
  marisa::grimoire::vector::BitVector::swap(v6, (this + 48));
  if (v11)
  {
    MEMORY[0x29C2979F0](v11, 0x1000C8077774924);
  }

  if (v9)
  {
    MEMORY[0x29C2979F0](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x29C2979F0](v7, 0x1000C8077774924);
  }

  if (*&v6[0])
  {
    MEMORY[0x29C2979F0](*&v6[0], 0x1000C8077774924);
  }

  result = v2;
  if (v2)
  {
    return MEMORY[0x29C2979F0](v2, 0x1000C8077774924);
  }

  return result;
}

uint64_t marisa::grimoire::vector::Vector<char>::read(__int128 *a1, marisa::grimoire::io::Reader *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<char>::read_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C2979F0](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2990D2824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C2979F0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<char>::read_(uint64_t a1, marisa::grimoire::io::Reader *this)
{
  v6 = 0;
  marisa::grimoire::io::Reader::read_data(this, &v6, 8uLL);
  v4 = v6;
  marisa::grimoire::vector::Vector<char>::resize(a1, v6);
  marisa::grimoire::io::Reader::read<char>(this, *(a1 + 8), v4);
  return marisa::grimoire::io::Reader::seek(this, -v6 & 7);
}

uint64_t marisa::grimoire::io::Reader::read<char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/reader.h";
    exception[2] = 0x20000001FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return marisa::grimoire::io::Reader::read_data(a1, a2, a3);
}

uint64_t marisa::grimoire::vector::Vector<char>::write_(uint64_t a1, marisa::grimoire::io::Writer *this)
{
  __buf = *(a1 + 24);
  marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  marisa::grimoire::io::Writer::write<char>(this, *(a1 + 16), *(a1 + 24));
  return marisa::grimoire::io::Writer::seek(this, -*(a1 + 24) & 7);
}

uint64_t marisa::grimoire::io::Writer::write<char>(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/writer.h";
    exception[2] = 0x20000001ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
  }

  return marisa::grimoire::io::Writer::write_data(a1, a2, a3);
}

uint64_t marisa::grimoire::io::Writer::Writer(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void marisa::grimoire::io::Writer::~Writer(FILE **this)
{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

FILE *marisa::grimoire::io::Writer::open(FILE **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x20000001BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:27: MARISA_NULL_ERROR: filename == NULL";
  }

  v6 = 0;
  v7 = -1;
  v8 = 0;
  v9 = 0;
  marisa::grimoire::io::Writer::open_(&v6, a2);
  result = *this;
  *this = v6;
  *(this + 2) = v7;
  this[2] = v8;
  v4 = *(this + 24);
  *(this + 24) = v9;
  if (v4 == 1)
  {

    return fclose(result);
  }

  return result;
}

void sub_2990D2BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    fclose(a9);
  }

  _Unwind_Resume(exception_object);
}

FILE *marisa::grimoire::io::Writer::open_(marisa::grimoire::io::Writer *this, const char *__filename)
{
  result = fopen(__filename, "wb");
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x90000005ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:94: MARISA_IO_ERROR: file == NULL";
  }

  *this = result;
  *(this + 24) = 1;
  return result;
}

uint64_t *marisa::grimoire::io::Writer::swap(uint64_t *this, marisa::grimoire::io::Writer *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  LODWORD(v2) = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return this;
}

FILE *marisa::grimoire::io::Writer::open(FILE **this, __sFILE *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x200000023;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:35: MARISA_NULL_ERROR: file == NULL";
  }

  result = *this;
  *this = a2;
  *(this + 2) = -1;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Writer::open(FILE **this, int a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x50000002BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:43: MARISA_CODE_ERROR: fd == -1";
  }

  result = *this;
  *this = 0;
  *(this + 2) = a2;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Writer::open(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Writer::clear(FILE **this)
{
  result = *this;
  *this = 0;
  *(this + 2) = -1;
  this[2] = 0;
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t marisa::grimoire::io::Writer::seek(uint64_t this, size_t __nitems)
{
  v2 = __nitems;
  v3 = this;
  __buf[128] = *MEMORY[0x29EDCA608];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:68: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        this = marisa::grimoire::io::Writer::write_data(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      this = marisa::grimoire::io::Writer::write_data(this, __buf, __nitems);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t marisa::grimoire::io::Writer::write_data(uint64_t this, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = this;
  v6 = *this;
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:113: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(this + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        this = write(*(v5 + 8), v4, v7);
        if (this <= 0)
        {
          break;
        }

        v4 += this;
        v3 -= this;
        if (!v3)
        {
          return this;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F2E168;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:129: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F2E168;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:134: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      this = fflush(*v5);
      if (this)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F2E168;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000087;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:135: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      this = *(this + 16);
      if (this)
      {
        this = std::ostream::write();
        if ((*(this + *(*this - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_2A1F2E168;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008BLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:139: MARISA_IO_ERROR: !stream_->write(static_cast<const char *>(data), size)";
        }
      }
    }
  }

  return this;
}

double marisa::Agent::Agent(marisa::Agent *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void *marisa::Agent::set_query(void *this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x20000000DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:13: MARISA_NULL_ERROR: str == NULL";
  }

  v2 = this[5];
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  v3 = 0;
    ;
  }

  *this = a2;
  this[1] = v3 - 1;
  return this;
}

void *marisa::Agent::set_query(void *this, const char *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F2E168;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:21: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
  }

  v3 = this[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *this = a2;
  this[1] = a3;
  return this;
}

uint64_t marisa::Agent::set_query(uint64_t this, uint64_t a2)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  *(this + 16) = a2;
  return this;
}

void *marisa::Agent::clear(marisa::Agent *this)
{
  v2 = *this;
  v3 = *(this + 8);
  *this = 0;
  *(this + 1) = 0;
  v4 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v6);
}

uint64_t *marisa::Agent::swap(uint64_t *this, marisa::Agent *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = *(a2 + 1);
  *this = *a2;
  this[1] = v4;
  *a2 = v2;
  *(a2 + 1) = v3;
  v5 = this[2];
  v6 = this[3];
  v7 = *(a2 + 3);
  this[2] = *(a2 + 2);
  this[3] = v7;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v5) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  return this;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}