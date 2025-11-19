void *std::deque<marisa::grimoire::trie::Range>::push_back(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = 341 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == result[5] + result[4])
  {
    result = std::deque<marisa::grimoire::trie::Range>::__add_back_capacity(result);
    v4 = v3[1];
    v5 = v3[2];
  }

  if (v5 == v4 || (v7 = v3[5] + v3[4], (v8 = *(v4 + 8 * (v7 / 0x155))) == 0))
  {
    __break(1u);
  }

  else
  {
    v9 = v8 - 4092 * (v7 / 0x155) + 12 * v7;
    v10 = *a2;
    *(v9 + 8) = *(a2 + 2);
    *v9 = v10;
    ++v3[5];
  }

  return result;
}

void std::deque<marisa::grimoire::trie::Range>::pop_front(void *a1)
{
  v1 = a1[5];
  if (v1 && (v3 = a1[1], v4 = a1[4], *(v3 + (((((v4 * 0x8060180601806019) >> 64) + ((v4 - ((v4 * 0x8060180601806019) >> 64)) >> 1)) >> 5) & 0x7FFFFFFFFFFFFF8))))
  {
    v5 = v4 + 1;
    a1[4] = v5;
    a1[5] = v1 - 1;
    if (v5 >= 0x2AA)
    {
      operator delete(*v3);
      a1[1] += 8;
      a1[4] -= 341;
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 marisa::grimoire::vector::Vector<marisa::grimoire::trie::WeightedRange>::push_back(uint64_t *a1, __n128 *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  if (v4 < v5 + 1)
  {
    v6 = 2 * v4;
    if (v4 >> 59)
    {
      v6 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4 <= (v5 + 1) >> 1)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = operator new[](16 * v7, MEMORY[0x1E69E5398]);
    if (v5)
    {
      v9 = a1[1];
      v10 = v8;
      v11 = v5;
      do
      {
        v12 = *v9++;
        *v10++ = v12;
        --v11;
      }

      while (v11);
    }

    v13 = *a1;
    *a1 = v8;
    a1[1] = v8;
    a1[2] = v8;
    a1[4] = v7;
    if (v13)
    {
      MEMORY[0x1BFB49140](v13, 0x1000C8077774924);
      v5 = a1[3];
    }
  }

  result = *a2;
  *(a1[1] + 16 * v5) = *a2;
  ++a1[3];
  return result;
}

void std::__stable_sort_impl[abi:se200100]<std::_ClassicAlgPolicy,marisa::grimoire::trie::WeightedRange *,std::greater<marisa::grimoire::trie::WeightedRange>>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 < 129)
  {
    v9 = 0;
LABEL_7:

    std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, a2, v5, 0, v9, a3);
  }

  else
  {
    v6 = MEMORY[0x1E69E5398];
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(16 * v7, v6);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v11 = v8;
    std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, a2, v5, v8, v7, a3);

    operator delete(v11);
  }
}

_BYTE *marisa::grimoire::vector::Vector<unsigned char>::shrink(_BYTE *result)
{
  if (result[40] == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return marisa::grimoire::vector::Vector<char>::realloc(result, v2);
  }

  return result;
}

void **std::deque<marisa::grimoire::trie::Range>::~deque[abi:se200100](void **result)
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
    v6 = &v2[v5 / 0x155];
    v7 = *v6;
    v8 = *v6 + 12 * v5 + -4092 * (v5 / 0x155);
    while (v8 != v2[(result[5] + v5) / 0x155] + 12 * (result[5] + v5) + -4092 * ((result[5] + v5) / 0x155))
    {
      if (!v8)
      {
        __break(1u);
        return result;
      }

      v8 += 12;
      if (v8 - v7 == 4092)
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
    v11 = 170;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 341;
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

void *std::deque<marisa::grimoire::trie::Range>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
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

    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<marisa::grimoire::trie::Range *>::emplace_back<marisa::grimoire::trie::Range *&>(a1, &v10);
}

void sub_1BE65BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<marisa::grimoire::trie::Range *>::emplace_back<marisa::grimoire::trie::Range *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(v11);
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

  if (v4)
  {
    *v4 = *a2;
    v3[2] += 8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, unint64_t a3, float *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      a6.n128_u32[0] = a2[-1].n128_u32[3];
      if (a6.n128_f32[0] > a1->n128_f32[3])
      {
        a6 = *a1;
        *a1 = a2[-1];
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v17 = a4;
      v18 = a3 >> 1;
      v19 = &a1[a3 >> 1];
      v20 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, v19, v20, a4);
        v22 = &v17[v18];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v22);
        v23 = &v17[a3];
        v24 = v22;
        while (v24 != v23)
        {
          if (v24->n128_f32[3] <= v17->n128_f32[3])
          {
            v26 = *v17++;
            a6 = v26;
          }

          else
          {
            v25 = *v24++;
            a6 = v25;
          }

          *v7++ = a6;
          if (v17 == v22)
          {
            while (v24 != v23)
            {
              v28 = *v24++;
              a6.n128_u64[0] = v28.n128_u64[0];
              *v7++ = v28;
            }

            return a6.n128_f64[0];
          }
        }

        while (v17 != v22)
        {
          v27 = *v17++;
          a6.n128_u64[0] = v27.n128_u64[0];
          *v7++ = v27;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(a1, v19, v20, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v17, a5);

        a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v17, a5, v21).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v9 = a1 + 1;
      if (&a1[1] != a2)
      {
        v10 = 0;
        v11 = a1;
        do
        {
          a6.n128_u32[0] = v11[1].n128_u32[3];
          v12 = v11->n128_f32[3];
          v11 = v9;
          if (a6.n128_f32[0] > v12)
          {
            v30 = v9->n128_u64[0];
            v31 = v9->n128_u32[2];
            v13 = v10;
            while (1)
            {
              *(a1 + v13 + 16) = *(a1 + v13);
              if (!v13)
              {
                break;
              }

              v14 = *(&a1->n128_f32[-1] + v13);
              v13 -= 16;
              if (a6.n128_f32[0] <= v14)
              {
                v15 = &a1[1] + v13;
                goto LABEL_16;
              }
            }

            v15 = a1;
LABEL_16:
            *v15 = v30;
            *(v15 + 8) = v31;
            *(v15 + 12) = a6.n128_u32[0];
          }

          v9 = v11 + 1;
          v10 += 16;
        }

        while (&v11[1] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(uint64_t result, uint64_t a2, unint64_t a3, float *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v8 = (a2 - 16);
    if (*(a2 - 4) <= *(result + 12))
    {
      if (!a4)
      {
        goto LABEL_42;
      }

      *a4 = *result;
      v9 = *v8;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_42;
      }

      *a4 = *v8;
      v9 = *result;
    }

    *(a4 + 1) = v9;
    return result;
  }

  if (a3 == 1)
  {
    if (a4)
    {
      *a4 = *result;
      return result;
    }

    goto LABEL_42;
  }

  if (a3 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    if (a4)
    {
      *a4 = *result;
      v10 = result + 16;
      if (result + 16 != a2)
      {
        v11 = 0;
        v12 = a4;
        do
        {
          v13 = v7;
          v14 = v12;
          v7 = v10;
          v12 += 4;
          v15 = v12;
          if (*(v13 + 28) > v14[3])
          {
            *v12 = *v14;
            v15 = a4;
            if (v14 != a4)
            {
              v16 = v11;
              while (1)
              {
                v15 = (a4 + v16);
                if (*(v13 + 28) <= *(a4 + v16 - 4))
                {
                  break;
                }

                *v15 = *(v15 - 1);
                v16 -= 16;
                if (!v16)
                {
                  v15 = a4;
                  break;
                }
              }
            }
          }

          *v15 = *v7;
          v10 = v7 + 16;
          v11 += 16;
        }

        while (v7 + 16 != a2);
      }

      return result;
    }

LABEL_42:
    __break(1u);
    return result;
  }

  v17 = result + 16 * (a3 >> 1);
  std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(result, v17, a3 >> 1, a4, a3 >> 1);
  result = std::__stable_sort<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(v7 + 16 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[4 * (a3 >> 1)], a3 - (a3 >> 1));
  v18 = v7 + 16 * (a3 >> 1);
  while (v18 != a2)
  {
    if (*(v18 + 12) <= *(v7 + 12))
    {
      if (!v4)
      {
        goto LABEL_42;
      }

      v21 = *v7;
      v7 += 16;
      v20 = v21;
    }

    else
    {
      if (!v4)
      {
        goto LABEL_42;
      }

      v19 = *v18;
      v18 += 16;
      v20 = v19;
    }

    *v4 = v20;
    v4 += 4;
    if (v7 == v17)
    {
      while (v18 != a2)
      {
        v23 = *v18;
        v18 += 16;
        *v4 = v23;
        v4 += 4;
      }

      return result;
    }
  }

  while (v7 != v17)
  {
    if (!v4)
    {
      goto LABEL_42;
    }

    v22 = *v7;
    v7 += 16;
    *v4 = v22;
    v4 += 4;
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v9 = a5;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      result.n128_u32[0] = a2->n128_u32[3];
      while (result.n128_f32[0] <= a1->n128_f32[3])
      {
        ++a1;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          v74 = *a1;
          *a1 = *a2;
          result = v74;
          *a2 = v74;
          return result;
        }

        v21 = a4 / 2;
        v16 = &a1[a4 / 2];
        if (a3 == a2)
        {
          v14 = a2;
        }

        else
        {
          v22 = a3 - a2;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[v22 >> 1];
            v25 = v24->n128_f32[3];
            v26 = v24 + 1;
            v22 += ~(v22 >> 1);
            if (v25 > v16->n128_f32[3])
            {
              v14 = v26;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = v14 - a2;
      }

      else
      {
        v13 = v9 / 2;
        v14 = &a2[v9 / 2];
        if (a2 == a1)
        {
          v16 = a1;
        }

        else
        {
          v15 = a2 - a1;
          v16 = a1;
          do
          {
            v17 = v15 >> 1;
            v18 = &v16[v15 >> 1];
            v19 = v18->n128_f32[3];
            v20 = v18 + 1;
            v15 += ~(v15 >> 1);
            if (v14->n128_f32[3] > v19)
            {
              v15 = v17;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v15);
        }

        v21 = v16 - a1;
      }

      v27 = v14;
      if (v16 != a2)
      {
        v27 = v16;
        if (a2 != v14)
        {
          v28 = v16 + 1;
          if (&v16[1] == a2)
          {
            v72 = *v16;
            v34 = v14 - a2;
            v67 = v21;
            v69 = a6;
            v35 = a3;
            v36 = v13;
            memmove(v16, &v16[1], v14 - a2);
            v13 = v36;
            v21 = v67;
            a6 = v69;
            a3 = v35;
            v27 = (v16 + v34);
            *v27 = v72;
          }

          else
          {
            v29 = a2 + 1;
            if (&a2[1] == v14)
            {
              v27 = v16 + 1;
              v73 = v14[-1];
              if (&v14[-1] != v16)
              {
                v68 = v21;
                v70 = a6;
                v37 = a3;
                v38 = v13;
                memmove(&v16[1], v16, &v14[-1] - v16);
                v13 = v38;
                v21 = v68;
                a6 = v70;
                a3 = v37;
              }

              *v16 = v73;
            }

            else
            {
              v30 = a2 - v16;
              v31 = a2 - v16;
              v32 = v14 - a2;
              if (v31 == v14 - a2)
              {
                do
                {
                  v71 = v28[-1];
                  v28[-1] = v29[-1];
                  v29[-1] = v71;
                  if (v28 == a2)
                  {
                    break;
                  }

                  ++v28;
                }

                while (v29++ != v14);
                v27 = a2;
              }

              else
              {
                v39 = v32 >> 4;
                v40 = a2 - v16;
                do
                {
                  v41 = v40;
                  v40 = v39;
                  v39 = v41 % v39;
                }

                while (v39);
                v42 = &v16[v40];
                do
                {
                  v43 = v42[-1];
                  v44 = (--v42 + v30);
                  v45 = v42;
                  do
                  {
                    v46 = v45;
                    v45 = v44;
                    *v46 = *v44;
                    v47 = __OFSUB__(v31, v14 - v44);
                    v48 = v31 - (v14 - v44);
                    v59 = (v48 < 0) ^ v47;
                    v44 = &v16[v48];
                    if (v59)
                    {
                      v44 = (v45 + v30);
                    }
                  }

                  while (v44 != v42);
                  *v45 = v43;
                }

                while (v42 != v16);
                v27 = (v16 + v32);
              }
            }
          }
        }
      }

      a4 -= v21;
      v9 -= v13;
      if (v21 + v13 >= a4 + v9)
      {
        v52 = a4;
        v53 = v13;
        v50 = a6;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(v27, v14, a3, v52, v9, a6, a7);
        v14 = v16;
        v9 = v53;
        a4 = v21;
        a3 = v27;
      }

      else
      {
        v49 = a1;
        v50 = a6;
        v51 = a3;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<marisa::grimoire::trie::WeightedRange> &,marisa::grimoire::trie::WeightedRange*>(v49, v16, v27, v21, v13, a6, a7);
        a3 = v51;
        a1 = v27;
      }

      a2 = v14;
      a6 = v50;
      if (!v9)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a1 != a2)
      {
        v62 = a6;
        v63 = a1;
        do
        {
          v64 = *v63++;
          *v62 = v64;
          v62 += 16;
        }

        while (v63 != a2);
        while (a2 != a3)
        {
          if (a2->n128_f32[3] <= a6->n128_f32[3])
          {
            v66 = *a6++;
            result = v66;
          }

          else
          {
            v65 = *a2++;
            result = v65;
          }

          *a1++ = result;
          if (a6 == v62)
          {
            return result;
          }
        }

        memmove(a1, a6, v62 - a6);
      }
    }

    else if (a2 != a3)
    {
      v54 = a6;
      v55 = a2;
      do
      {
        v56 = *v55++;
        result.n128_u64[0] = v56.n128_u64[0];
        *v54++ = v56;
      }

      while (v55 != a3);
      while (a2 != a1)
      {
        v57 = v54[-1].n128_f32[3];
        v58 = a2[-1].n128_f32[3];
        v59 = v57 <= v58;
        if (v57 <= v58)
        {
          v60 = v54 - 1;
        }

        else
        {
          v60 = a2 - 1;
        }

        result = *v60;
        a3[-1] = *v60;
        --a3;
        if (v59)
        {
          --v54;
        }

        else
        {
          --a2;
        }

        if (v54 == a6)
        {
          return result;
        }
      }

      if (v54 != a6)
      {
        v61 = 0xFFFFFFFFFFFFFFFLL;
        do
        {
          result = v54[-1];
          a3[v61--] = result;
          --v54;
        }

        while (v54 != a6);
      }
    }
  }

  return result;
}

uint64_t marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Key *>(char *a1, char *a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if (a2 - a1 < 241)
  {
    v7 = 0;
    goto LABEL_83;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    if (a3 >= *(v9 + 2))
    {
      v10 = -1;
    }

    else
    {
      v10 = *(*v9 + a3);
    }

    v11 = &v9[3 * (v6 / 0x30uLL)];
    if (a3 >= *(v11 + 2))
    {
      v12 = -1;
    }

    else
    {
      v12 = *(*v11 + a3);
    }

    if (a3 >= *(v4 - 4))
    {
      v13 = -1;
    }

    else
    {
      v13 = *(*(v4 - 3) + a3);
    }

    if (v10 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    if (v10 < v12)
    {
      v12 = v10;
    }

    if (v12 <= v13)
    {
      v12 = v13;
    }

    if (v14 >= v13)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    v16 = v9;
    v5 = v4;
    v17 = v9;
    v18 = v4;
    while (v16 < v5)
    {
      v19 = *(v16 + 2);
      v20 = a3 >= v19 ? -1 : *(*v16 + a3);
      if (v20 > v15)
      {
        break;
      }

      if (v20 == v15)
      {
        v21 = *v16;
        *v16 = *v17;
        *(v16 + 2) = *(v17 + 8);
        v22 = *(v16 + 12);
        *(v16 + 3) = *(v17 + 12);
        *(v16 + 4) = *(v17 + 16);
        *v17 = v21;
        *(v17 + 8) = v19;
        *(v17 + 12) = v22;
        v17 += 24;
      }

LABEL_30:
      v16 += 3;
    }

    if (v16 < v5)
    {
      v23 = v5 - 3;
      do
      {
        v5 = v23;
        v24 = *(v23 + 2);
        if (a3 >= v24)
        {
          v25 = -1;
        }

        else
        {
          v25 = *(*v5 + a3);
        }

        if (v25 < v15)
        {
          break;
        }

        if (v25 == v15)
        {
          v26 = *(v18 - 3);
          v18 -= 3;
          v27 = *v5;
          *v5 = v26;
          *(v5 + 2) = *(v18 + 2);
          v28 = *(v5 + 12);
          *(v5 + 3) = *(v18 + 3);
          *(v5 + 4) = *(v18 + 4);
          *v18 = v27;
          *(v18 + 2) = v24;
          *(v18 + 12) = v28;
        }

        v23 = v5 - 3;
      }

      while (v16 < v5);
    }

    if (v16 < v5)
    {
      v29 = *v16;
      v30 = *(v16 + 4);
      *v16 = *v5;
      v31 = v16[1];
      *(v16 + 2) = *(v5 + 2);
      *(v16 + 3) = *(v5 + 3);
      *(v16 + 4) = *(v5 + 4);
      *v5 = v29;
      v5[1] = v31;
      *(v5 + 4) = v30;
      goto LABEL_30;
    }

    if (v17 > v9)
    {
      v32 = 0;
      do
      {
        v33 = v17 + v32 * 8;
        v34 = &v16[v32];
        v35 = *(v17 + v32 * 8 - 24);
        v36 = *(v17 + v32 * 8 - 8);
        *(v33 - 24) = v16[v32 - 3];
        v37 = *(v17 + v32 * 8 - 16);
        *(v33 - 16) = v16[v32 - 2];
        *(v33 - 12) = *(&v16[v32 - 1] - 1);
        *(v33 - 8) = v16[v32 - 1];
        *(v34 - 3) = v35;
        *(v34 - 2) = v37;
        *(v34 - 2) = v36;
        v32 -= 3;
      }

      while (v17 + v32 * 8 > v9);
      v16 = (v16 + v32 * 8);
    }

    while (v18 < v4)
    {
      v38 = *v18;
      v39 = *(v18 + 4);
      *v18 = *v5;
      v40 = v18[1];
      *(v18 + 2) = *(v5 + 2);
      *(v18 + 3) = *(v5 + 3);
      *(v18 + 4) = *(v5 + 4);
      *v5 = v38;
      v5[1] = v40;
      *(v5 + 4) = v39;
      v18 += 3;
      v5 += 3;
    }

    v41 = v16 - v8;
    v42 = v5 - v16;
    if (v16 - v8 <= v5 - v16)
    {
      v43 = v4 - v5;
      if (v4 - v5 <= v42)
      {
        if (v41 == 24)
        {
          ++v7;
        }

        else if (v41 >= 25)
        {
          v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Key *>(v9, v16, a3);
        }

        if (v43 == 24)
        {
          ++v7;
        }

        else if (v43 >= 25)
        {
          v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Key *>(v5, v4, a3);
        }

        if (v42 == 24)
        {
          ++v7;
        }

        else if (v42 >= 25)
        {
          if (v15 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_79;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v16;
        goto LABEL_79;
      }
    }

    if (v42 == 24)
    {
      goto LABEL_51;
    }

    if (v42 >= 25)
    {
      if (v15 == -1)
      {
LABEL_51:
        ++v7;
      }

      else
      {
        v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Key *>(v16, v5, a3 + 1);
      }
    }

    v44 = v4 - v5;
    if (v41 >= v4 - v5)
    {
      if (v44 == 24)
      {
        ++v7;
      }

      else if (v44 >= 25)
      {
        v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Key *>(v5, v4, a3);
      }

      v4 = v16;
      v5 = v9;
    }

    else if (v41 == 24)
    {
      ++v7;
    }

    else if (v41 >= 25)
    {
      v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Key *>(v9, v16, a3);
    }

LABEL_79:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while (v4 - v5 > 240);
LABEL_83:
  if (v6 >= 25)
  {
    v45 = v5 + 3;
    v46 = 1;
    while (1)
    {
      if (v45 >= v4)
      {
        v7 += v46;
        return v7;
      }

      if (v45 <= v5)
      {
        v57 = 0;
        goto LABEL_102;
      }

      v47 = v45;
      while (1)
      {
        v48 = *(v47 - 4);
        v49 = *(v47 + 2);
        if (a3 < v48)
        {
          v50 = *(v47 - 3);
          v51 = *v47;
          v52 = a3;
          while (v49 != v52)
          {
            v53 = *(v50 + v52) - *(v51 + v52);
            if (v53)
            {
              if (v53 < 1)
              {
                goto LABEL_101;
              }

              goto LABEL_97;
            }

            if (v48 == ++v52)
            {
              goto LABEL_93;
            }
          }

          goto LABEL_97;
        }

LABEL_93:
        if (v48 == v49)
        {
          break;
        }

        if (v48 < v49)
        {
          goto LABEL_98;
        }

        v50 = *(v47 - 3);
        v51 = *v47;
LABEL_97:
        v54 = *(v47 - 2);
        *(v47 - 3) = v51;
        v55 = v47[1];
        *(v47 - 2) = *(v47 + 4);
        *v47 = v50;
        v56 = *(v47 - 2);
        *(v47 - 2) = v55;
        v47[1] = v56;
        *(v47 + 4) = v54;
        v47 -= 3;
        if (v47 <= v5)
        {
LABEL_98:
          v53 = 1;
          goto LABEL_101;
        }
      }

      v53 = 0;
LABEL_101:
      v57 = v53 != 0;
LABEL_102:
      v46 += v57;
      v45 += 3;
    }
  }

  return v7;
}

char *marisa::grimoire::vector::Vector<marisa::grimoire::trie::Key>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](24 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = result + 16;
    v7 = (a1[1] + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

double marisa::grimoire::trie::LoudsTrie::map_(marisa::grimoire::trie::LoudsTrie **this, marisa::grimoire::io::Mapper *a2)
{
  v4 = this + 81;
  marisa::grimoire::vector::BitVector::map(this, a2);
  marisa::grimoire::vector::BitVector::map((this + 26), a2);
  marisa::grimoire::vector::BitVector::map((this + 52), a2);
  v5 = *marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  v6 = marisa::grimoire::io::Mapper::map_data(a2, v5);
  marisa::grimoire::io::Mapper::seek(a2, -v5 & 7);
  v7 = 0uLL;
  v8 = this[78];
  *(this + 39) = 0u;
  this[80] = v6;
  *v4 = v5;
  *(this + 664) = 1;
  if (v8)
  {
    MEMORY[0x1BFB49140](v8, 0x1000C8077774924);
    v7 = 0uLL;
  }

  *(&v32[1] + 9) = v7;
  v32[0] = v7;
  v32[1] = v7;
  *&v33[0] = 0;
  DWORD2(v33[0]) = 0;
  *&v33[1] = 0;
  marisa::grimoire::vector::Vector<unsigned long long>::map(v32, a2);
  v9 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (v9 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/flat-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/flat-vector.h:134: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  v10 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  DWORD2(v33[0]) = v10;
  *&v33[1] = *marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  v11 = *&v33[1];
  v12 = *(this + 42);
  *(this + 42) = v32[0];
  v32[0] = v12;
  v13 = this[86];
  this[86] = *&v32[1];
  *&v32[1] = v13;
  v14 = v4[3];
  v4[3] = *(&v32[1] + 8);
  *(&v32[1] + 8) = v14;
  *(this + 712) = BYTE8(v32[2]);
  this[90] = v9;
  *(this + 182) = v10;
  this[92] = v11;
  if (v12)
  {
    MEMORY[0x1BFB49140](v12, 0x1000C8077774924);
  }

  memset(v32, 0, 41);
  memset(v33, 0, 41);
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v33[3] = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v15 = *marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  v16 = marisa::grimoire::io::Mapper::map_data(a2, v15);
  marisa::grimoire::io::Mapper::seek(a2, -v15 & 7);
  v32[0] = 0uLL;
  *&v32[1] = v16;
  *(&v32[1] + 8) = v15;
  BYTE8(v32[2]) = 1;
  marisa::grimoire::vector::BitVector::map(v33, a2);
  v17 = v4[6];
  v4[6] = v32[0];
  v32[0] = v17;
  v18 = this[95];
  this[95] = *&v32[1];
  *&v32[1] = v18;
  v19 = *(this + 48);
  *(this + 48) = *(&v32[1] + 8);
  *(&v32[1] + 8) = v19;
  LOBYTE(v18) = *(this + 784);
  *(this + 784) = BYTE8(v32[2]);
  BYTE8(v32[2]) = v18;
  marisa::grimoire::vector::BitVector::swap((this + 99), v33);
  if (v38)
  {
    MEMORY[0x1BFB49140](v38, 0x1000C8077774924);
  }

  if (v36)
  {
    MEMORY[0x1BFB49140](v36, 0x1000C8077774924);
  }

  if (v34)
  {
    MEMORY[0x1BFB49140](v34, 0x1000C8077774924);
  }

  if (*&v33[0])
  {
    MEMORY[0x1BFB49140](*&v33[0], 0x1000C8077774924);
  }

  if (*&v32[0])
  {
    MEMORY[0x1BFB49140](*&v32[0], 0x1000C8077774924);
  }

  if (this[59] && !this[96])
  {
    v20 = this + 125;
    v21 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    if (v21)
    {
      v22 = v21;
      marisa::grimoire::trie::LoudsTrie::LoudsTrie(v21);
      marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset(this + 125, v22);
    }

    else
    {
      *&v32[0] = *v20;
      *v20 = 0;
      marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v32);
    }

    if (!*v20)
    {
      v30 = __cxa_allocate_exception(0x20uLL);
      *v30 = &unk_1F3CD9BC8;
      v30[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/louds-trie.cc";
      v30[2] = 0x800000220;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/louds-trie.cc:544: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
LABEL_29:
      v30[3] = v31;
    }

    marisa::grimoire::trie::LoudsTrie::map_(*v20, a2);
  }

  v23 = marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  v24 = *v23 / 0xCuLL;
  if (*v23 % 0xCuLL)
  {
    v30 = __cxa_allocate_exception(0x20uLL);
    *v30 = &unk_1F3CD9BC8;
    v30[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    v30[2] = 0xA000000CALL;
    v31 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    goto LABEL_29;
  }

  v25 = marisa::grimoire::io::Mapper::map_data(a2, 12 * v24);
  marisa::grimoire::io::Mapper::seek(a2, (-12 * v24) & 4);
  v26 = this[126];
  *(this + 63) = 0u;
  this[128] = v25;
  v4[24] = v24;
  *(this + 1048) = 1;
  if (v26)
  {
    MEMORY[0x1BFB49140](v26, 0x1000C8077774924);
    v24 = *(v4 + 48);
  }

  this[132] = (v24 - 1);
  this[133] = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v27 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  *&v32[0] = 3;
  *(&v32[0] + 1) = 0x100000000200;
  LODWORD(v32[1]) = 0x20000;
  marisa::grimoire::trie::Config::parse_(v32, v27);
  this[134] = *&v32[0];
  result = *(v32 + 1);
  this[135] = *(&v32[0] + 1);
  *(this + 272) = v32[1];
  return result;
}

uint64_t marisa::grimoire::trie::LoudsTrie::write_(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::io::Writer *a2)
{
  marisa::grimoire::vector::BitVector::write_(this, a2);
  marisa::grimoire::vector::BitVector::write_((this + 208), a2);
  marisa::grimoire::vector::BitVector::write_((this + 416), a2);
  __buf = *(this + 81);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
  v4 = *(this + 80);
  v5 = *(this + 81);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  marisa::grimoire::io::Writer::write_data(a2, v4, v5);
  marisa::grimoire::io::Writer::seek(a2, -*(this + 162) & 7);
  marisa::grimoire::vector::Vector<unsigned long long>::write_(this + 672, a2);
  LODWORD(__buf) = *(this + 90);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(this + 182);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  __buf = *(this + 92);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
  __buf = *(this + 96);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
  v7 = *(this + 95);
  v8 = *(this + 96);
  if (!v7)
  {
    if (v8)
    {
      goto LABEL_14;
    }
  }

  marisa::grimoire::io::Writer::write_data(a2, v7, v8);
  marisa::grimoire::io::Writer::seek(a2, -*(this + 192) & 7);
  marisa::grimoire::vector::BitVector::write_((this + 792), a2);
  v9 = *(this + 125);
  if (v9)
  {
    marisa::grimoire::trie::LoudsTrie::write_(v9, a2);
  }

  __buf = 12 * *(this + 129);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
  v10 = *(this + 128);
  v11 = *(this + 129);
  if (!v10)
  {
    if (v11)
    {
LABEL_14:
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F3CD9BC8;
      exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
      exception[2] = 0x20000001ELL;
      v14 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
      goto LABEL_16;
    }
  }

  if (v11 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000020;
    v14 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_16:
    exception[3] = v14;
  }

  marisa::grimoire::io::Writer::write_data(a2, v10, 12 * v11);
  marisa::grimoire::io::Writer::seek(a2, 4 * (*(this + 129) & 1));
  LODWORD(__buf) = *(this + 133);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(this + 271) | *(this + 268) | *(this + 272);
  return marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
}

uint64_t *marisa::grimoire::trie::LoudsTrie::restore_(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2, unint64_t a3)
{
  v6 = *(a2 + 5);
  while (1)
  {
    while (1)
    {
      v7 = *(this + 132) & a3;
      v8 = *(this + 128) + 12 * v7;
      if (a3 != *(v8 + 4))
      {
        break;
      }

      v9 = *(v8 + 8);
      if (v9 <= 0xFFFFFEFF)
      {
        v20 = *(this + 125);
        if (v20)
        {
          result = marisa::grimoire::trie::LoudsTrie::restore_(v20, a2, v9);
        }

        else
        {
          result = marisa::grimoire::trie::Tail::restore(this + 93, *(a2 + 5), v9);
        }
      }

      else
      {
        v24 = *(v8 + 8);
        result = marisa::grimoire::vector::Vector<char>::push_back(v6, &v24);
      }

      a3 = *(*(this + 128) + 12 * v7);
      if (!a3)
      {
        return result;
      }
    }

    if ((*(*(this + 54) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v11 = *(*(this + 80) + a3);
      v12 = marisa::grimoire::vector::BitVector::rank1((this + 416), a3);
      v13 = *(this + 90);
      v14 = v13 * v12;
      v15 = (v13 * v12) & 0x3F;
      v16 = v15 + v13;
      v17 = (*(this + 86) + 8 * ((v13 * v12) >> 6));
      v18 = *v17;
      v19 = v16 > 0x40 ? ((2 * v17[1]) << ~v14) | (v18 >> v14) : v18 >> v15;
      v21 = v11 | ((*(this + 182) & v19) << 8);
      v22 = *(this + 125);
      result = v22 ? marisa::grimoire::trie::LoudsTrie::restore_(v22, a2, v21) : marisa::grimoire::trie::Tail::restore(this + 93, *(a2 + 5), v21);
    }

    else
    {
      v23 = *(*(this + 80) + a3);
      result = marisa::grimoire::vector::Vector<char>::push_back(v6, &v23);
    }

    if (a3 <= *(this + 133))
    {
      break;
    }

    a3 = marisa::grimoire::vector::BitVector::select1(this, a3) + ~a3;
  }

  return result;
}

__n128 marisa::grimoire::vector::Vector<marisa::grimoire::trie::History>::push_back(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x666666666666666)
    {
      v7 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    marisa::grimoire::vector::Vector<marisa::grimoire::trie::History>::realloc(a1, v8);
    v4 = a1[3];
  }

  v9 = (a1[1] + 20 * v4);
  result = *a2;
  v9[1].n128_u32[0] = a2[1].n128_u32[0];
  *v9 = result;
  ++a1[3];
  return result;
}

_DWORD *marisa::grimoire::vector::Vector<marisa::grimoire::trie::History>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](20 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[4] = *(v6 + 4);
      *v7 = v8;
      v7 += 5;
      v6 = (v6 + 20);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

uint64_t marisa::grimoire::trie::LoudsTrie::prefix_match_(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2, unint64_t a3)
{
  v6 = *(a2 + 5);
  while (1)
  {
    v7 = *(this + 132) & a3;
    v8 = *(this + 128) + 12 * v7;
    if (a3 != *(v8 + 4))
    {
      v10 = *(*(this + 80) + a3);
      if ((*(*(this + 54) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        v11 = marisa::grimoire::vector::BitVector::rank1((this + 416), a3);
        v12 = *(this + 90);
        v13 = v12 * v11;
        v14 = (v12 * v11) & 0x3F;
        v15 = v14 + v12;
        v16 = (*(this + 86) + 8 * ((v12 * v11) >> 6));
        v17 = *v16;
        if (v15 > 0x40)
        {
          v18 = ((2 * v16[1]) << ~v13) | (v17 >> v13);
        }

        else
        {
          v18 = v17 >> v14;
        }

        v20 = v10 | ((*(this + 182) & v18) << 8);
        v21 = *(this + 125);
        if (v21)
        {
          if ((marisa::grimoire::trie::LoudsTrie::prefix_match_(v21, a2, v20) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!marisa::grimoire::trie::Tail::prefix_match((this + 744), a2, v20))
        {
          return 0;
        }
      }

      else
      {
        if (v10 != *(*a2 + *(v6 + 100)))
        {
          return 0;
        }

        v23 = *(*(this + 80) + a3);
        marisa::grimoire::vector::Vector<char>::push_back(v6, &v23);
        ++*(v6 + 100);
      }

      if (a3 <= *(this + 133))
      {
        return 1;
      }

      a3 = marisa::grimoire::vector::BitVector::select1(this, a3) + ~a3;
      goto LABEL_23;
    }

    v9 = *(v8 + 8);
    if (v9 > 0xFFFFFEFF)
    {
      if (*(*a2 + *(v6 + 100)) != v9)
      {
        return 0;
      }

      v24 = *(v8 + 8);
      marisa::grimoire::vector::Vector<char>::push_back(v6, &v24);
      ++*(v6 + 100);
      goto LABEL_22;
    }

    v19 = *(this + 125);
    if (!v19)
    {
      break;
    }

    if ((marisa::grimoire::trie::LoudsTrie::prefix_match_(v19, a2, v9) & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    a3 = *(*(this + 128) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

LABEL_23:
    if (*(a2 + 1) <= *(v6 + 100))
    {
      marisa::grimoire::trie::LoudsTrie::restore_(this, a2, a3);
      return 1;
    }
  }

  if (marisa::grimoire::trie::Tail::prefix_match((this + 744), a2, v9))
  {
    goto LABEL_22;
  }

  return 0;
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[9]);
  v7 = a3 + 8;
  if (a3 + 8 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v6 + 104);
  }

  Case = morphun::grammar::synthesis::FiGrammarSynthesizer::getCase(v8);
  v10 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[8]);
  if (v7 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v10 + 104);
  }

  LODWORD(v12) = morphun::grammar::synthesis::FiGrammarSynthesizer::getCount(v11);
  v13 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[11]);
  v14 = v7 == v13;
  if (v7 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v13 + 104);
  }

  if (v14)
  {
    v16 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[10]);
    if (v7 == v16)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v16 + 104);
    }
  }

  PronounPerson = morphun::grammar::synthesis::FiGrammarSynthesizer::getPronounPerson(v15);
  memset(&v66, 0, sizeof(v66));
  v18 = *(a2 + 8);
  if (v18 == *(a2 + 16))
  {
    size = 0;
    LODWORD(v20) = 0;
  }

  else
  {
    v19 = (*(*v18 + 24))(v18);
    std::basic_string<char16_t>::operator=(&v66, v19);
    LODWORD(v20) = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    size = v66.__r_.__value_.__l.__size_;
  }

  memset(&v65, 0, sizeof(v65));
  v22 = v20;
  v20 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = size;
  }

  if (v20 && Case | v12)
  {
    if (Case <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = Case;
    }

    if (v12 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v12;
    }

    v24 = v22 < 0;
    v25 = &v66;
    if (v24)
    {
      v25 = v66.__r_.__value_.__r.__words[0];
    }

    v26 = (v25 + 2 * v20);
    v27 = 2 * v20;
    v28 = v25;
    while (v28->__r_.__value_.__s.__data_[0] != 32)
    {
      v28 = (v28 + 2);
      v27 -= 2;
      if (!v27)
      {
        goto LABEL_99;
      }
    }

    if (v28 == v26)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    if (v28 == v26 || v29 - v25 == -2)
    {
      goto LABEL_99;
    }

    {
      operator new();
    }

    if (!morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::NUMBER_AND_UNIT(void)::NUMBER_AND_UNIT_)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    icu4cxx::RegularExpression::RegularExpression(&regexp, morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::NUMBER_AND_UNIT(void)::NUMBER_AND_UNIT_);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v66;
    }

    else
    {
      v30 = v66.__r_.__value_.__r.__words[0];
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v66.__r_.__value_.__r.__words[1];
    }

    icu4cxx::RegularExpression::setText(regexp, v30, v31);
    LODWORD(status.__r_.__value_.__l.__data_) = 0;
    v32 = uregex_matches(regexp, 0, &status);
    data = status.__r_.__value_.__l.__data_;
    if (SLODWORD(status.__r_.__value_.__l.__data_) >= 1)
    {
      v55 = __cxa_allocate_exception(0x38uLL);
      morphun::exception::ICUException::ICUException(v55, data);
    }

    if (v32)
    {
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v66.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::resize(&v65, v34, 0);
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v65;
      }

      else
      {
        v35 = v65.__r_.__value_.__r.__words[0];
      }

      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v65.__r_.__value_.__r.__words[1];
      }

      v37 = icu4cxx::RegularExpression::group(regexp, 1, v35, v36);
      std::basic_string<char16_t>::resize(&v65, v37, 0);
      memset(&status, 0, sizeof(status));
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v66.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::resize(&status, v38, 0);
      if ((status.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_status = &status;
      }

      else
      {
        p_status = status.__r_.__value_.__r.__words[0];
      }

      if ((status.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(status.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = status.__r_.__value_.__r.__words[1];
      }

      v41 = icu4cxx::RegularExpression::group(regexp, 2, p_status, v40);
      std::basic_string<char16_t>::resize(&status, v41, 0);
      morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(&__p, a1, &status, v23, v12, PronounPerson);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = __p.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v65, p_p, v43);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(status.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v66;
      }

      else
      {
        v44 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v66.__r_.__value_.__l.__size_;
      }

      v46 = morphun::util::StringViewUtils::trim(v44, v45);
      *&status.__r_.__value_.__l.__data_ = 0uLL;
      status.__r_.__value_.__r.__words[2] = &word_1BE80F394;
      v57 = 1;
      v58 = v46;
      v59 = v47;
      v60 = v47;
      v61 = 0;
      if (v47 >= 1)
      {
        morphun::util::DelimitedStringIterator::getNext(&status);
      }

      while (v61 < v60 || status.__r_.__value_.__l.__size_ != 0)
      {
        if (status.__r_.__value_.__l.__size_)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<std::u16string_view>>(1uLL);
        }

        morphun::util::DelimitedStringIterator::operator++(&status);
      }

      v23 = v23;
      v12 = v12;
    }

    if (v64 == 1)
    {
      uregex_close(regexp);
    }

    LOBYTE(v49) = *(&v65.__r_.__value_.__s + 23);
    v50 = v65.__r_.__value_.__l.__size_;
    v51 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if (!((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v65.__r_.__value_.__r.__words[2]) : v65.__r_.__value_.__l.__size_))
    {
LABEL_99:
      morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(&status, a1, &v66, v23, v12, PronounPerson);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      v65 = status;
      v49 = HIBYTE(status.__r_.__value_.__r.__words[2]);
      v50 = status.__r_.__value_.__l.__size_;
      v51 = HIBYTE(status.__r_.__value_.__r.__words[2]);
    }

    if ((v49 & 0x80u) == 0)
    {
      v53 = v51;
    }

    else
    {
      v53 = v50;
    }

    if (v53)
    {
      operator new();
    }
  }

  operator new();
}

void sub_1BE65E4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  MEMORY[0x1BFB49160](v48, 0x1020C405F07FB98);
  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t icu4cxx::RegularExpression::group(icu4cxx::RegularExpression *this, int32_t a2, unsigned __int16 *a3, int32_t a4)
{
  status = U_ZERO_ERROR;
  result = uregex_group(this, a2, a3, a4, &status);
  v5 = status;
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(exception, v5);
  }

  return result;
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(std::basic_string<char16_t> *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = a3;
  v65[1] = *MEMORY[0x1E69E9840];
  v62 = 0;
  v12 = *(a3 + 8);
  if (*(a3 + 23) >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    a3 = *a3;
    v13 = v12;
  }

  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a2[1], &v62, a3, v13) && (a2[15] & v62) == 0)
  {
    if (*(v9 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *v9, *(v9 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *v9;
      a1->__r_.__value_.__r.__words[2] = *(v9 + 16);
    }

    goto LABEL_138;
  }

  if (a6)
  {
    hasBackVowels = morphun::grammar::synthesis::FiGrammarSynthesizer::hasBackVowels(v9);
    memset(&v57, 0, sizeof(v57));
    if (a6 == 3)
    {
      if (hasBackVowels)
      {
        v31 = "n";
      }

      else
      {
        v31 = "n";
      }

      std::basic_string<char16_t>::__assign_external(&v57, v31);
    }

    else if (a6 == 2)
    {
      *(&v57.__r_.__value_.__s + 23) = 2;
      LODWORD(v57.__r_.__value_.__l.__data_) = 6881395;
      v57.__r_.__value_.__s.__data_[2] = 0;
    }

    if (a4 == 1 || a4 == 2 && a5 == 1)
    {
      morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(&__str, a2, v9, 10, 1, 0);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::basic_string(&v61, &__str, 0, size - 2, v32);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v57;
      }

      else
      {
        v34 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v57.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v37 = a4 == 2 && a5 == 2;
      if (a4 != 6 && !v37)
      {
        if (a4 != 11)
        {
          morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(&__str, a2, v9, a4, a5, 0);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &v57;
          }

          else
          {
            v44 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v45 = v57.__r_.__value_.__l.__size_;
          }

          std::basic_string<char16_t>::append(&__str, v44, v45);
          *a1 = __str;
          goto LABEL_63;
        }

        morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(&__str, a2, v9, 11, a5, 0);
        v39 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = __str.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::basic_string(&v60, &__str, 0, v39 - 1, v38);
        std::basic_string<char16_t>::append(&v60, byte_1BE80ECC4, 1uLL);
        v61 = v60;
        memset(&v60, 0, sizeof(v60));
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v57;
        }

        else
        {
          v40 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = v57.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v61, v40, v41);
        *a1 = v61;
        memset(&v61, 0, sizeof(v61));
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

LABEL_61:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

LABEL_63:
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

LABEL_138:
        v55 = *MEMORY[0x1E69E9840];
        return;
      }

      morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(&__str, a2, v9, a4, a5, 0);
      v43 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = __str.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::basic_string(&v61, &__str, 0, v43 - 1, v42);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v57;
      }

      else
      {
        v34 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v57.__r_.__value_.__l.__size_;
      }
    }

    std::basic_string<char16_t>::append(&v61, v34, v35);
    *a1 = v61;
    goto LABEL_61;
  }

  v15 = *(v9 + 23);
  if (v15 >= 0)
  {
    v16 = v9;
  }

  else
  {
    v16 = *v9;
  }

  if (v15 >= 0)
  {
    v17 = *(v9 + 23);
  }

  else
  {
    v17 = *(v9 + 8);
  }

  morphun::dictionary::DictionaryMetaData::getPropertyValues(a2[1], v16, v17, "i", 0xAuLL, &v61);
  v20 = v61.__r_.__value_.__l.__size_;
  v19 = v61.__r_.__value_.__r.__words[0];
  if (v61.__r_.__value_.__r.__words[0] != v61.__r_.__value_.__l.__size_)
  {
LABEL_103:
    if (v19 == v20)
    {
      morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::getBestMatchingKnownLemma(v9, (a2 + 4), v18, &v57);
      if (morphun::util::gLogLevel <= 1)
      {
        std::operator+<char16_t>(&v59, "N", v9);
        std::basic_string<char16_t>::append(&v59, ".", 0x15uLL);
        v60 = v59;
        memset(&v59, 0, sizeof(v59));
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v57;
        }

        else
        {
          v46 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v57.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v60, v46, v47);
        __str = v60;
        memset(&v60, 0, sizeof(v60));
        if (morphun::util::gLogLevel <= 1)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          morphun::util::logToTopOfStackLogger(1, 0, p_str);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v57;
      }

      else
      {
        v49 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v57.__r_.__value_.__l.__size_;
      }

      morphun::dictionary::DictionaryMetaData::getPropertyValues(a2[1], v49, v50, "i", 0xAuLL, &__str);
      std::vector<std::basic_string<char16_t>>::__vdeallocate(&v61);
      v61 = __str;
      memset(&__str, 0, sizeof(__str));
      v60.__r_.__value_.__r.__words[0] = &__str;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v60);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }
    }

    if (*(v9 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *v9, *(v9 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *v9;
      a1->__r_.__value_.__r.__words[2] = *(v9 + 16);
    }

    v51 = v61.__r_.__value_.__r.__words[0];
    if (v61.__r_.__value_.__r.__words[0] != v61.__r_.__value_.__l.__size_)
    {
      v52 = a2[2];
      v53 = *(v61.__r_.__value_.__r.__words[0] + 23);
      if (v53 < 0)
      {
        v51 = *v61.__r_.__value_.__l.__data_;
        v53 = *(v61.__r_.__value_.__r.__words[0] + 8);
      }

      KeyId = morphun::dictionary::metadata::MarisaTrie<int>::getKeyId((v52 + 256), v51, v53);
      morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(&v57, v52 + 8, KeyId);
      v58 = 1;
      morphun::grammar::synthesis::FiGrammarSynthesizer::toString(a4, &__str);
      morphun::grammar::synthesis::FiGrammarSynthesizer::toString(a5, &v64);
      memset(&v59, 0, sizeof(v59));
      std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v59, &__str, v65, 2uLL);
    }

    v57.__r_.__value_.__r.__words[0] = &v61;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v57);
    goto LABEL_138;
  }

  v21 = a2[3];
  if (!v21 || (v22 = (*(*v21 + 24))(v21, v9)) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::grammar::synthesis::GrammarSynthesizerUtil::getSignificantWords(&v57, v22);
  v23 = v57.__r_.__value_.__l.__size_;
  v24 = v57.__r_.__value_.__r.__words[0];
  if (v57.__r_.__value_.__r.__words[0] == v57.__r_.__value_.__l.__size_)
  {
LABEL_102:
    __str.__r_.__value_.__r.__words[0] = &v57;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__str);
    (*(*v22 + 16))(v22);
    v20 = v61.__r_.__value_.__l.__size_;
    v19 = v61.__r_.__value_.__r.__words[0];
    goto LABEL_103;
  }

  if (morphun::util::gLogLevel <= 1)
  {
    std::operator+<char16_t>(&v59, "N", v9);
    std::basic_string<char16_t>::append(&v59, L". Inflecting with last significant word ", 0x28uLL);
    v60 = v59;
    memset(&v59, 0, sizeof(v59));
    if (v57.__r_.__value_.__r.__words[0] == v57.__r_.__value_.__l.__size_)
    {
      goto LABEL_140;
    }

    v25 = *(v57.__r_.__value_.__l.__size_ - 1);
    if (v25 >= 0)
    {
      v26 = (v57.__r_.__value_.__l.__size_ - 24);
    }

    else
    {
      v26 = *(v57.__r_.__value_.__l.__size_ - 24);
    }

    if (v25 >= 0)
    {
      v27 = *(v57.__r_.__value_.__l.__size_ - 1);
    }

    else
    {
      v27 = *(v57.__r_.__value_.__l.__size_ - 16);
    }

    std::basic_string<char16_t>::append(&v60, v26, v27);
    __str = v60;
    memset(&v60, 0, sizeof(v60));
    if (morphun::util::gLogLevel <= 1)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &__str;
      }

      else
      {
        v28 = __str.__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(1, 0, v28);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    v23 = v57.__r_.__value_.__l.__size_;
    v24 = v57.__r_.__value_.__r.__words[0];
  }

  if (v24 != v23)
  {
    v29 = *(v23 - 1);
    if ((v29 & 0x8000000000000000) != 0)
    {
      v30 = *(v23 - 24);
      v29 = *(v23 - 16);
    }

    else
    {
      v30 = (v23 - 24);
    }

    morphun::dictionary::DictionaryMetaData::getPropertyValues(a2[1], v30, v29, "i", 0xAuLL, &__str);
    std::vector<std::basic_string<char16_t>>::__vdeallocate(&v61);
    v61 = __str;
    memset(&__str, 0, sizeof(__str));
    v60.__r_.__value_.__r.__words[0] = &__str;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v60);
    goto LABEL_102;
  }

LABEL_140:
  __break(1u);
}

void sub_1BE65EFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  *(v41 - 144) = &a10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v41 - 144));
  (*(*v40 + 16))(v40);
  a10 = &a32;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a10);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::~FiGrammarSynthesizer_FiDisplayFunction(morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction *this)
{
  morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::~FiGrammarSynthesizer_FiDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD55F0;
  *(this + 4) = &unk_1F3CD5598;
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*(this + 6));
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

uint64_t morphun::analysis::stemmer::ArStemFilter::stem(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    return *(a2 + 23);
  }

  else
  {
    return *(a2 + 8);
  }
}

void morphun::analysis::stemmer::ArStemFilter::~ArStemFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CDA2B0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CDA2B0);
}

uint64_t marisa::grimoire::io::Writer::seek(uint64_t this, size_t __nitems)
{
  __buf[2] = *MEMORY[0x1E69E9840];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc:68: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    __buf[0] = 0;
    __buf[1] = 0;
    this = marisa::grimoire::io::Writer::write_data(this, __buf, __nitems);
  }

  v2 = *MEMORY[0x1E69E9840];
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
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc:113: MARISA_STATE_ERROR: !is_open()";
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
      *exception = &unk_1F3CD9BC8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc:129: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F3CD9BC8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc:134: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      this = fflush(*v5);
      if (this)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F3CD9BC8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000087;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc:135: MARISA_IO_ERROR: ::fflush(file_) != 0";
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
          *v10 = &unk_1F3CD9BC8;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008BLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.cc:139: MARISA_IO_ERROR: !stream_->write(static_cast<const char *>(data), static_cast<std::streamsize>(size))";
        }
      }
    }
  }

  return this;
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v178 = *MEMORY[0x1E69E9840];
  memset(&v157, 0, sizeof(v157));
  v5 = *(a2 + 8);
  if (v5 == *(a2 + 16))
  {
    goto LABEL_340;
  }

  v9 = (*(*v5 + 24))(v5);
  std::basic_string<char16_t>::operator=(&v157, v9);
  v10 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
  size = v157.__r_.__value_.__l.__size_;
  v12 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
  if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v157.__r_.__value_.__l.__size_;
  }

  if (!v13)
  {
    goto LABEL_338;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_334;
  }

  morphun::grammar::synthesis::getFeatureValue(&v156, a3, a1[5]);
  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v156.__r_.__value_.__l.__size_;
  }

  if (!v14)
  {
    goto LABEL_108;
  }

  v15 = (v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v156 : v156.__r_.__value_.__r.__words[0];
  if (!morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getSuffixMap(a1, v15, v14))
  {
    goto LABEL_108;
  }

  morphun::grammar::synthesis::getFeatureValue(&v175, a3, a1[2]);
  morphun::grammar::synthesis::getFeatureValue(&v160, a3, a1[3]);
  morphun::grammar::synthesis::getFeatureValue(&__dst, a3, a1[4]);
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v16 == v17)
  {
    goto LABEL_102;
  }

  v18 = 0;
  do
  {
    v19 = (*(*v16 + 40))(v16);
    std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](&v168, v19);
    if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v175.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v175.__r_.__value_.__l.__size_;
    }

    if (v20)
    {
      morphun::grammar::synthesis::getFeatureValue(&v159, &v168, a1[2]);
      v21 = HIBYTE(v175.__r_.__value_.__r.__words[2]);
      if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v175.__r_.__value_.__l.__size_;
      }

      v22 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v159.__r_.__value_.__l.__size_;
      }

      if (v21 != v22)
      {
        goto LABEL_66;
      }

      if (v21)
      {
        v23 = &v159;
        if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v159.__r_.__value_.__r.__words[0];
        }

        v24 = &v175;
        if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v175.__r_.__value_.__r.__words[0];
        }

        while (v23->__r_.__value_.__s.__data_[0] == v24->__r_.__value_.__s.__data_[0])
        {
          v24 = (v24 + 2);
          v23 = (v23 + 2);
          if (!--v21)
          {
            goto LABEL_33;
          }
        }

LABEL_66:
        LOBYTE(v36) = 0;
        goto LABEL_75;
      }
    }

LABEL_33:
    if ((v160.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v160.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v160.__r_.__value_.__l.__size_;
    }

    if (v25)
    {
      morphun::grammar::synthesis::getFeatureValue(&v158, &v168, a1[3]);
      v26 = HIBYTE(v160.__r_.__value_.__r.__words[2]);
      if ((v160.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v160.__r_.__value_.__l.__size_;
      }

      v27 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
      if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v158.__r_.__value_.__l.__size_;
      }

      if (v26 != v27)
      {
        goto LABEL_67;
      }

      if (v26)
      {
        v28 = &v158;
        if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v158.__r_.__value_.__r.__words[0];
        }

        v29 = &v160;
        if ((v160.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v160.__r_.__value_.__r.__words[0];
        }

        while (v28->__r_.__value_.__s.__data_[0] == v29->__r_.__value_.__s.__data_[0])
        {
          v29 = (v29 + 2);
          v28 = (v28 + 2);
          if (!--v26)
          {
            goto LABEL_49;
          }
        }

LABEL_67:
        v36 = 0;
        goto LABEL_73;
      }
    }

LABEL_49:
    v30 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __dst.__r_.__value_.__l.__size_;
    }

    if (v30)
    {
      morphun::grammar::synthesis::getFeatureValue(&__p, &v168, a1[4]);
      v31 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = __dst.__r_.__value_.__l.__size_;
      }

      v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = __p.__r_.__value_.__l.__size_;
      }

      if (v31 == v32)
      {
        if (!v31)
        {
LABEL_64:
          v36 = &v168.__r_.__value_.__r.__words[1] == std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(&v168, a1[5]);
          if ((v33 & 0x80000000) == 0)
          {
            goto LABEL_70;
          }

LABEL_69:
          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_70:
          if (!v25)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        while (p_p->__r_.__value_.__s.__data_[0] == p_dst->__r_.__value_.__s.__data_[0])
        {
          p_dst = (p_dst + 2);
          p_p = (p_p + 2);
          if (!--v31)
          {
            goto LABEL_64;
          }
        }
      }

      v36 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v36 = &v168.__r_.__value_.__r.__words[1] == std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(&v168, a1[5]);
    if (!v25)
    {
      goto LABEL_74;
    }

LABEL_73:
    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_74:
      if (!v20)
      {
        goto LABEL_80;
      }

      goto LABEL_75;
    }

    operator delete(v158.__r_.__value_.__l.__data_);
    if (!v20)
    {
LABEL_80:
      if (v36)
      {
        goto LABEL_92;
      }

      goto LABEL_81;
    }

LABEL_75:
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    if (v36)
    {
LABEL_92:
      operator new();
    }

LABEL_81:
    v37 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(&v168, a1[1]);
    if (v18)
    {
      v38 = 1;
    }

    else
    {
      v38 = &v168.__r_.__value_.__r.__words[1] == v37;
    }

    if (!v38)
    {
      v18 = v16;
    }

    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v168.__r_.__value_.__l.__size_);
    v16 += 56;
  }

  while (v16 != v17);
  if (v18)
  {
    v39 = (*(*v18 + 32))(v18, a1[1]);
    if (*(v39 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v168, *v39, *(v39 + 8));
    }

    else
    {
      v40 = *v39;
      v168.__r_.__value_.__r.__words[2] = *(v39 + 16);
      *&v168.__r_.__value_.__l.__data_ = v40;
    }

    v41 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v168.__r_.__value_.__l.__size_;
    }

    if (!v41)
    {
      v42 = (*(*v18 + 24))(v18);
      std::basic_string<char16_t>::operator=(&v168, v42);
    }

    morphun::grammar::synthesis::getFeatureValue(&v163, a3, a1[4]);
    morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getLookupDeclensionAdjective(&__p, a1, &v168, a3, &v163);
    if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v163.__r_.__value_.__l.__data_);
    }

    *&v163.__r_.__value_.__r.__words[1] = 0uLL;
    v163.__r_.__value_.__r.__words[0] = &v163.__r_.__value_.__l.__size_;
    v43 = *(*(*v18 + 40))(v18);
    v44 = (*(*v18 + 40))(v18);
    std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::insert[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(&v163, v43, (v44 + 8));
    std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::insert[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(&v163, *a3, (a3 + 8));
    operator new();
  }

LABEL_102:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

LABEL_108:
  morphun::grammar::synthesis::getFeatureValue(&v155, a3, a1[6]);
  morphun::grammar::synthesis::getFeatureValue(&v154, a3, a1[2]);
  if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v157.__r_.__value_.__l.__size_;
  }

  v153 = 0;
  LOBYTE(__str.__r_.__value_.__l.__data_) = 0;
  v152 = 0;
  v47 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v45);
  v48 = *(v47 + 23);
  v49 = v48;
  if ((v48 & 0x80u) != 0)
  {
    v48 = *(v47 + 8);
  }

  v50 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
  if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v50 = v154.__r_.__value_.__l.__size_;
  }

  if (v48 != v50)
  {
LABEL_142:
    if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = &v157;
    }

    else
    {
      v59 = v157.__r_.__value_.__r.__words[0];
    }

    if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v60 = v157.__r_.__value_.__l.__size_;
    }

    if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[16], &v153, v59, v60))
    {
      memset(&v160, 0, sizeof(v160));
      morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectWord(&v175, a1, &v157, v153, a3, &v160);
    }

    v61 = a1[58];
    if (!v61 || (v62 = (*(*v61 + 24))(v61, &v157), (v63 = v62) == 0))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v64 = (*(*v62 + 56))(v62);
    v65 = *(npc<morphun::Token>(v64) + 72);
    npc<morphun::Token>(v65);
    v66 = *(v65 + 39);
    if ((v66 & 0x80u) == 0)
    {
      v67 = *(v65 + 39);
    }

    else
    {
      v67 = *(v65 + 24);
    }

    if (!v67)
    {
      LOBYTE(v148[0]) = 0;
      v150 = 0;
      v140 = std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:se200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(&__str, v148);
      if (v150 == 1 && SHIBYTE(v149) < 0)
      {
        operator delete(v148[0]);
      }

      (*(*v63 + 16))(v63, v140);
      goto LABEL_322;
    }

    v68 = v65;
    while (1)
    {
      v69 = *(v68 + 65);
      v68 = *(v68 + 72);
      if (v69)
      {
        break;
      }

      if (!v68)
      {
        LOBYTE(v163.__r_.__value_.__l.__data_) = 0;
        v164 = 0;
        LOBYTE(v161.__r_.__value_.__l.__data_) = 0;
        v162 = 0;
LABEL_191:
        v168.__r_.__value_.__r.__words[0] = 0;
        if ((v66 & 0x80u) == 0)
        {
          v83 = (v65 + 16);
        }

        else
        {
          v83 = *(v65 + 16);
        }

        if ((v66 & 0x80u) == 0)
        {
          v84 = v66;
        }

        else
        {
          v84 = *(v65 + 24);
        }

        morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[16], &v168, v83, v84);
        memset(&v160, 0, sizeof(v160));
        morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectWord(&v175, a1, v65 + 16, v168.__r_.__value_.__l.__data_, a3, &v160);
      }
    }

    LOBYTE(v163.__r_.__value_.__l.__data_) = 0;
    v164 = 0;
    LOBYTE(v161.__r_.__value_.__l.__data_) = 0;
    v162 = 0;
    if (!v68 || *(v68 + 64) != 1)
    {
      goto LABEL_191;
    }

    v166 = 0;
    v167 = 0;
    v144 = v65 + 16;
    if ((v66 & 0x80u) == 0)
    {
      v70 = (v65 + 16);
    }

    else
    {
      v70 = *(v65 + 16);
    }

    if ((v66 & 0x80u) == 0)
    {
      v71 = v66;
    }

    else
    {
      v71 = *(v65 + 24);
    }

    morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[16], &v167, v70, v71);
    v72 = *(v68 + 39);
    if (v72 >= 0)
    {
      v73 = (v68 + 16);
    }

    else
    {
      v73 = *(v68 + 16);
    }

    if (v72 >= 0)
    {
      v74 = *(v68 + 39);
    }

    else
    {
      v74 = *(v68 + 24);
    }

    morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[16], &v166, v73, v74);
    if ((a1[62] & v166) == 0 || (a1[60] & v167) == 0)
    {
      memset(&v175, 0, sizeof(v175));
      morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectWord(&v168, a1, v144, v167, a3, &v175);
    }

    v143 = v167;
    v75 = *(v68 + 39);
    if (v75 >= 0)
    {
      v76 = (v68 + 16);
    }

    else
    {
      v76 = *(v68 + 16);
    }

    if (v75 >= 0)
    {
      v77 = *(v68 + 39);
    }

    else
    {
      v77 = *(v68 + 24);
    }

    morphun::analysis::DictionaryExposableMorphology::getWordGrammemeSets(&__p, (a1 + 18), v76, v77);
    v78 = *(v65 + 39);
    if (v78 >= 0)
    {
      v79 = (v65 + 16);
    }

    else
    {
      v79 = *(v65 + 16);
    }

    if (v78 >= 0)
    {
      v80 = *(v65 + 39);
    }

    else
    {
      v80 = *(v65 + 24);
    }

    morphun::analysis::DictionaryExposableMorphology::getWordGrammemeSets(&__s, (a1 + 18), v79, v80);
    morphun::grammar::synthesis::filterGrammemesFromSetThatDontContainGrammeme(&__p, a1[62]);
    morphun::grammar::synthesis::filterGrammemesFromSetThatDontContainGrammeme(&__s, a1[60]);
    if (morphun::util::gLogLevel < 1)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"\nPossible Grammemes for ");
      v85 = *(v68 + 39);
      if (v85 >= 0)
      {
        v86 = (v68 + 16);
      }

      else
      {
        v86 = *(v68 + 16);
      }

      if (v85 >= 0)
      {
        v87 = *(v68 + 39);
      }

      else
      {
        v87 = *(v68 + 24);
      }

      std::basic_string<char16_t>::append(&__dst, v86, v87);
      v175 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      if (morphun::util::gLogLevel <= 0)
      {
        if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = &v175;
        }

        else
        {
          v88 = v175.__r_.__value_.__r.__words[0];
        }

        morphun::util::logToTopOfStackLogger(0, 0, v88);
      }

      if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v175.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v81 = __p.__r_.__value_.__l.__size_;
      v82 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
      {
        v89 = __p.__r_.__value_.__r.__words[0];
        do
        {
          v90 = v81;
          v91 = *v89;
          v92 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1[16] + 8));
          morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(v92, v91, &v168);
          morphun::util::StringViewUtils::join(",", 1uLL, &v168, &__dst);
          std::basic_string<char16_t>::append(&__dst, "\n", 1uLL);
          v175 = __dst;
          memset(&__dst, 0, sizeof(__dst));
          if (morphun::util::gLogLevel <= 0)
          {
            if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = &v175;
            }

            else
            {
              v93 = v175.__r_.__value_.__r.__words[0];
            }

            morphun::util::logToTopOfStackLogger(0, 0, v93);
          }

          if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v175.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v172.__r_.__value_.__r.__words[0] = &v168;
          std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v172);
          ++v89;
          v81 = v90;
        }

        while (v89 != v90);
      }
    }

    else
    {
      v81 = __p.__r_.__value_.__l.__size_;
      v82 = __p.__r_.__value_.__r.__words[0];
    }

    if (v82 != v81)
    {
      v94 = v82 + 1;
      if (v82 + 1 != v81)
      {
        v95 = a1[41];
        v146 = a1[40];
        v96 = v82 + 1;
        v97 = *v82;
        do
        {
          v99 = *v96++;
          v98 = v99;
          v100 = v81;
          v101 = morphun::analysis::MorphologicalAnalyzer::compareGrammemes(v146, v95, v99, v97);
          v81 = v100;
          if (v101 < 0)
          {
            v97 = v98;
            v82 = v94;
          }

          v94 = v96;
        }

        while (v96 != v100);
      }
    }

    v102 = __s;
    v103 = __sz;
    v104 = __s + 4;
    if (__s != __sz && v104 != __sz)
    {
      v147 = a1[40];
      v145 = a1[41];
      v106 = (__s + 4);
      v107 = *__s;
      do
      {
        v109 = *v106++;
        v108 = v109;
        v110 = v102;
        v111 = v103;
        v112 = morphun::analysis::MorphologicalAnalyzer::compareGrammemes(v147, v145, v109, v107);
        v103 = v111;
        if (v112 >= 0)
        {
          v102 = v110;
        }

        else
        {
          v107 = v108;
          v102 = v104;
        }

        v104 = v106;
      }

      while (v106 != v111);
    }

    memset(&v172, 0, sizeof(v172));
    if (v82 == __p.__r_.__value_.__l.__size_)
    {
      v114 = v144;
    }

    else
    {
      v113 = v102;
      morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getFeatureNameFromConstraintsOrBinaryType(&__dst, a1, a3, *v82, a1[67], a1[2]);
      v114 = v144;
      v102 = v113;
      if (v171 == 1)
      {
        v115 = v172.__r_.__value_.__l.__size_;
        if (v172.__r_.__value_.__l.__size_ >= v172.__r_.__value_.__r.__words[2])
        {
          v117 = 0xAAAAAAAAAAAAAAABLL * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3);
          if (v117 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
          }

          v118 = 0x5555555555555556 * ((v172.__r_.__value_.__r.__words[2] - v172.__r_.__value_.__r.__words[0]) >> 3);
          if (v118 <= v117 + 1)
          {
            v118 = v117 + 1;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v172.__r_.__value_.__r.__words[2] - v172.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v119 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v119 = v118;
          }

          v177 = &v172;
          if (v119)
          {
            std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v119);
          }

          v175.__r_.__value_.__r.__words[0] = 0;
          v175.__r_.__value_.__l.__size_ = 8 * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3);
          v175.__r_.__value_.__r.__words[2] = v175.__r_.__value_.__l.__size_;
          v176 = 0;
          goto LABEL_347;
        }

        if (!v172.__r_.__value_.__l.__size_)
        {
          goto LABEL_347;
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v172.__r_.__value_.__l.__size_, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          v102 = v113;
        }

        else
        {
          v116 = *&__dst.__r_.__value_.__l.__data_;
          *(v172.__r_.__value_.__l.__size_ + 16) = *(&__dst.__r_.__value_.__l + 2);
          *v115 = v116;
        }

        v172.__r_.__value_.__l.__size_ = v115 + 24;
        v114 = v144;
        if ((v171 & 1) != 0 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          v102 = v113;
        }
      }

      v103 = __sz;
    }

    if (v102 == v103)
    {
      goto LABEL_317;
    }

    v120 = v102;
    morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getFeatureNameFromConstraintsOrBinaryType(&__dst, a1, a3, *v102, a1[72], a1[3]);
    if (v171 != 1)
    {
      goto LABEL_280;
    }

    v122 = v172.__r_.__value_.__l.__size_;
    if (v172.__r_.__value_.__l.__size_ >= v172.__r_.__value_.__r.__words[2])
    {
      v124 = 0xAAAAAAAAAAAAAAABLL * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3);
      if (v124 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      v125 = 0x5555555555555556 * ((v172.__r_.__value_.__r.__words[2] - v172.__r_.__value_.__r.__words[0]) >> 3);
      if (v125 <= v124 + 1)
      {
        v125 = v124 + 1;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v172.__r_.__value_.__r.__words[2] - v172.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v126 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v126 = v125;
      }

      v177 = &v172;
      if (v126)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v126);
      }

      v175.__r_.__value_.__r.__words[0] = 0;
      v175.__r_.__value_.__l.__size_ = 8 * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3);
      v175.__r_.__value_.__r.__words[2] = v175.__r_.__value_.__l.__size_;
      v176 = 0;
      goto LABEL_347;
    }

    if (v172.__r_.__value_.__l.__size_)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v172.__r_.__value_.__l.__size_, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v123 = *&__dst.__r_.__value_.__l.__data_;
        *(v172.__r_.__value_.__l.__size_ + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v122 = v123;
      }

      v172.__r_.__value_.__l.__size_ = v122 + 24;
      v114 = v144;
LABEL_280:
      v127 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v121);
      if (v171 == 1)
      {
        v128 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v129 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v128 = __dst.__r_.__value_.__l.__size_;
        }

        v130 = *(v127 + 23);
        v131 = v130;
        if ((v130 & 0x80u) != 0)
        {
          v130 = *(v127 + 8);
        }

        if (v128 == v130)
        {
          if (!v128)
          {
LABEL_294:
            v134 = 1;
LABEL_314:
            if ((v134 & 1) != 0 && v129 < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

LABEL_317:
            morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectWord(&__dst, a1, v114, v143, a3, &v172);
          }

          if (v131 >= 0)
          {
            v132 = v127;
          }

          else
          {
            v132 = *v127;
          }

          v133 = __dst.__r_.__value_.__r.__words[0];
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v133 = &__dst;
          }

          while (*v132 == v133->__r_.__value_.__s.__data_[0])
          {
            v133 = (v133 + 2);
            ++v132;
            if (!--v128)
            {
              goto LABEL_294;
            }
          }
        }
      }

      morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getFeatureNameFromConstraintsOrBinaryType(&v168, a1, a3, *v120, a1[63], a1[4]);
      if (v169 != 1)
      {
LABEL_313:
        v129 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v134 = v171;
        goto LABEL_314;
      }

      v135 = v172.__r_.__value_.__l.__size_;
      if (v172.__r_.__value_.__l.__size_ >= v172.__r_.__value_.__r.__words[2])
      {
        v137 = 0xAAAAAAAAAAAAAAABLL * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3);
        if (v137 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
        }

        v138 = 0x5555555555555556 * ((v172.__r_.__value_.__r.__words[2] - v172.__r_.__value_.__r.__words[0]) >> 3);
        if (v138 <= v137 + 1)
        {
          v138 = v137 + 1;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v172.__r_.__value_.__r.__words[2] - v172.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v139 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v139 = v138;
        }

        v177 = &v172;
        if (v139)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v139);
        }

        v175.__r_.__value_.__r.__words[0] = 0;
        v175.__r_.__value_.__l.__size_ = 8 * ((v172.__r_.__value_.__l.__size_ - v172.__r_.__value_.__r.__words[0]) >> 3);
        v175.__r_.__value_.__r.__words[2] = v175.__r_.__value_.__l.__size_;
        v176 = 0;
      }

      else if (v172.__r_.__value_.__l.__size_)
      {
        if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v172.__r_.__value_.__l.__size_, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
        }

        else
        {
          v136 = *&v168.__r_.__value_.__l.__data_;
          *(v172.__r_.__value_.__l.__size_ + 16) = *(&v168.__r_.__value_.__l + 2);
          *v135 = v136;
        }

        v172.__r_.__value_.__l.__size_ = v135 + 24;
        v114 = v144;
        if ((v169 & 1) != 0 && SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v168.__r_.__value_.__l.__data_);
        }

        goto LABEL_313;
      }
    }

LABEL_347:
    __break(1u);
    return;
  }

  if (v48)
  {
    v51 = &v154;
    if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v154.__r_.__value_.__r.__words[0];
    }

    if (v49 >= 0)
    {
      v52 = v47;
    }

    else
    {
      v52 = *v47;
    }

    while (v51->__r_.__value_.__s.__data_[0] == *v52)
    {
      ++v52;
      v51 = (v51 + 2);
      if (!--v48)
      {
        goto LABEL_124;
      }
    }

    goto LABEL_142;
  }

LABEL_124:
  v53 = morphun::grammar::synthesis::GrammemeConstants::POS_PROPER_NOUN(v47);
  v54 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v54 = v155.__r_.__value_.__l.__size_;
  }

  v55 = *(v53 + 23);
  v56 = v55;
  if ((v55 & 0x80u) != 0)
  {
    v55 = *(v53 + 8);
  }

  if (v54 != v55)
  {
    goto LABEL_142;
  }

  if (v54)
  {
    if (v56 >= 0)
    {
      v57 = v53;
    }

    else
    {
      v57 = *v53;
    }

    v58 = &v155;
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = v155.__r_.__value_.__r.__words[0];
    }

    while (*v57 == v58->__r_.__value_.__s.__data_[0])
    {
      v58 = (v58 + 2);
      ++v57;
      if (!--v54)
      {
        goto LABEL_137;
      }
    }

    goto LABEL_142;
  }

LABEL_137:
  if (v46 < 2)
  {
    goto LABEL_142;
  }

  morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectGenitiveProperNoun(&v175, &v157);
  if (v152 == 1)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v175;
  }

  else
  {
    __str = v175;
    v152 = 1;
  }

LABEL_322:
  if (v152 == 1)
  {
    std::basic_string<char16_t>::operator=(&v157, &__str);
    a4 = 1;
    if ((v152 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  v12 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
  if (a4)
  {
    size = v157.__r_.__value_.__l.__size_;
    v10 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
LABEL_334:
    if (v10 < 0)
    {
      v12 = size;
    }

    if (v12)
    {
      operator new();
    }

LABEL_338:
    if (v10 < 0)
    {
LABEL_339:
      operator delete(v157.__r_.__value_.__l.__data_);
    }
  }

  else if ((*(&v157.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_339;
  }

LABEL_340:
  v141 = *MEMORY[0x1E69E9840];
}

void sub_1BE6614E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (a79 == 1 && a78 < 0)
  {
    operator delete(a77);
  }

  if (a73 == 1 && a72 < 0)
  {
    operator delete(a70);
  }

  if (a76 == 1 && a75 < 0)
  {
    operator delete(a74);
  }

  (*(*v79 + 16))(v79);
  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectGenitiveProperNoun(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if (v2 >= 0)
  {
    v3 = a2[23];
  }

  else
  {
    v3 = *(a2 + 1);
  }

  if (!v3)
  {
    goto LABEL_48;
  }

  if (v2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = MEMORY[0x1BFB495D0](*(v6 + v3 - 1));
  v8 = v3 - 2;
  v9 = a2[23];
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 1);
  }

  if (v9 < v8)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v11 = v7;
  if (v10 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v13 = MEMORY[0x1BFB495D0](v12[v8]);
  v14 = (v11 - 115) > 7 || ((1 << (v11 - 115)) & 0xA1) == 0;
  if (!v14 || v11 == 223 || v11 == 101 && v13 == 99)
  {
    if (a2[23] >= 0)
    {
      v15 = a2[23];
    }

    else
    {
      v15 = *(a2 + 1);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100](a1, v15 + 1);
    if (*(a1 + 23) >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (a2[23] >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      v18 = &v16[2 * v15];
      if (v17 < v16 || v18 <= v17)
      {
        if (v15)
        {
          memmove(v16, v17, 2 * v15);
        }

        if (v18 > byte_1BE80D962 || v18 + 2 <= byte_1BE80D962)
        {
          *v18 = 8217;
          return;
        }
      }
    }

    goto LABEL_48;
  }

  if (v11 == 8217)
  {
    if (a2[23] < 0)
    {
      v19 = *a2;
      v20 = *(a2 + 1);

      std::basic_string<char16_t>::__init_copy_ctor_external(a1, v19, v20);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else
  {

    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, a2, 115);
  }
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::inflectWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  v10 = a6 + 1;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&v16, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  if (*a6 == *v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if ((*(a2 + 472) & a4) != 0)
    {
      __src = *(a2 + 24);
      v11 = *(a2 + 40);
      v21 = *(a2 + 16);
      v22 = v11;
      std::vector<morphun::dialog::SemanticFeature const*>::__assign_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v13, &__src, v23, 4uLL);
    }

    else
    {
      __src = *(a2 + 24);
      v21 = *(a2 + 16);
      std::vector<morphun::dialog::SemanticFeature const*>::__assign_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v13, &__src, &v22, 3uLL);
    }

    v12 = v13;
    morphun::grammar::synthesis::GrammarSynthesizerUtil::convertToStringConstraints(&__src, a5, v13, v14);
    std::vector<std::basic_string<char16_t>>::__vdeallocate(&v16);
    v16 = __src;
    v17 = v21;
    p_src = &__src;
    v21 = 0;
    __src = 0uLL;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&p_src);
    if (v12)
    {
      operator delete(v12);
    }
  }

  p_src = *(a2 + 48);
  v21 = 0;
  __src = 0uLL;
  std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&__src, &p_src, &v19, 1uLL);
}

void sub_1BE661F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a18;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a24);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

double morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getGender(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!a4)
  {
    goto LABEL_11;
  }

  v7 = a2[63] & a4;
  if (v7 == a2[64])
  {
    v8 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(a1);
    goto LABEL_8;
  }

  if (v7 == a2[65])
  {
    v8 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(a1);
    goto LABEL_8;
  }

  if (v7 != a2[66])
  {
LABEL_11:
    morphun::grammar::synthesis::getFeatureValue(&v11, a3, a2[4]);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    result = *&v11.__r_.__value_.__l.__data_;
    *a1 = v11;
    return result;
  }

  v8 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(a1);
LABEL_8:
  std::basic_string<char16_t>::operator=(a1, v8);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1BE66214C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getLookupDeclensionAdjective(std::basic_string<char16_t> *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  morphun::grammar::synthesis::getFeatureValue(&v23, a4, a2[5]);
  size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
    if (!v23.__r_.__value_.__l.__size_)
    {
      goto LABEL_18;
    }

    v11 = v23.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v23.__r_.__value_.__s + 23))
    {
      goto LABEL_18;
    }

    v11 = &v23;
  }

  SuffixMap = morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getSuffixMap(a2, v11, size);
  if (!SuffixMap)
  {
LABEL_18:
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a3;
      a1->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }

    goto LABEL_21;
  }

  morphun::grammar::synthesis::getFeatureValue(&v22, a4, a2[3]);
  morphun::grammar::synthesis::getFeatureValue(&__p, a4, a2[2]);
  Case = morphun::grammar::synthesis::DeGrammarSynthesizer::getCase(&__p);
  Count = morphun::grammar::synthesis::DeGrammarSynthesizer::getCount(&v22);
  Gender = morphun::grammar::synthesis::DeGrammarSynthesizer::getGender(a5);
  v18 = *(SuffixMap + 1);
  v17 = SuffixMap + 8;
  v16 = v18;
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = Count & 0xF | (16 * (Gender & 0xF)) | ((Case & 0xF) << 8);
  v20 = v17;
  do
  {
    if (*(v16 + 32) >= v19)
    {
      v20 = v16;
    }

    v16 = *(v16 + 8 * (*(v16 + 32) < v19));
  }

  while (v16);
  if (v20 == v17 || v19 < *(v20 + 8))
  {
LABEL_14:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    goto LABEL_18;
  }

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *a3;
    a1->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  std::basic_string<char16_t>::append(a1, *(v20 + 5), *(v20 + 6));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_1BE662328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

char *morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getSuffixMap(morphun::grammar::synthesis::DeGrammarSynthesizer *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_STRONG(a1);
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (a3 == v7)
  {
    if (!v7)
    {
      return a1 + 56;
    }

    if (v8 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = *v6;
    }

    for (i = a2; *v9 == *i; ++i)
    {
      ++v9;
      if (!--v7)
      {
        return a1 + 56;
      }
    }
  }

  v12 = morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_WEAK(v6);
  v13 = *(v12 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (a3 == v13)
  {
    if (!a3)
    {
      return a1 + 80;
    }

    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = *v12;
    }

    v16 = a3;
    for (j = a2; *v15 == *j; ++j)
    {
      ++v15;
      if (!--v16)
      {
        return a1 + 80;
      }
    }
  }

  v18 = morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_MIXED(v12);
  v19 = *(v18 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 8);
  }

  if (a3 == v19)
  {
    if (!a3)
    {
      return a1 + 104;
    }

    if (v20 >= 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = *v18;
    }

    while (*v21 == *a2)
    {
      ++a2;
      ++v21;
      if (!--a3)
      {
        return a1 + 104;
      }
    }
  }

  return 0;
}

uint64_t morphun::grammar::synthesis::filterGrammemesFromSetThatDontContainGrammeme(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v2 = *(result + 8);
  if (*result != v2)
  {
    while ((*v3 & a2) != 0)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      for (i = v3 + 1; i != v2; ++i)
      {
        if ((*i & a2) != 0)
        {
          *v3++ = *i;
        }
      }
    }
  }

  if (v3 > v2)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    *(result + 8) = v3;
  }

  return result;
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::getFeatureNameFromConstraintsOrBinaryType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  morphun::grammar::synthesis::getFeatureValue(&__s, a3, a6);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__s.__r_.__value_.__l.__size_)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      goto LABEL_6;
    }
  }

  else if (*(&__s.__r_.__value_.__s + 23))
  {
    *a1 = __s;
LABEL_6:
    *(a1 + 24) = 1;
    goto LABEL_15;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  v10 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(*(a2 + 128) + 8));
  morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(v10, a5 & a4, v12);
  if (v12[0] == v12[1])
  {
    v14 = v12;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v14);
LABEL_12:
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_15;
  }

  if (*(v12[0] + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1, *v12[0], *(v12[0] + 8));
  }

  else
  {
    v11 = *v12[0];
    *(a1 + 16) = *(v12[0] + 16);
    *a1 = v11;
  }

  *(a1 + 24) = 1;
  v14 = v12;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v14);
LABEL_15:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1BE6626B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v18 - 40) = &a10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<morphun::dialog::SemanticFeature const*>::__assign_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(void *result, char *__src, char *a3, unint64_t a4)
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

    std::vector<morphun::dialog::SemanticFeature const*>::__vallocate[abi:se200100](v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
    goto LABEL_21;
  }

  v13 = &__src[v12];
  if (v11 != v8)
  {
    result = memmove(*result, __src, v12);
    v11 = v6[1];
  }

  v14 = v11;
  if (v13 == a3)
  {
LABEL_17:
    v16 = v14;
LABEL_21:
    v6[1] = v16;
    return result;
  }

  v14 = v11;
  while (v14)
  {
    v15 = *v13;
    v13 += 8;
    *v14 = v15;
    v14 += 8;
    if (v13 == a3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::~DeGrammarSynthesizer_DeDisplayFunction(morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction *this)
{
  morphun::grammar::synthesis::DeGrammarSynthesizer_DeDisplayFunction::~DeGrammarSynthesizer_DeDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5708;
  v2 = *(this + 58);
  *(this + 58) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *(this + 47) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 56));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 53));
  std::__tree<std::u16string_view>::destroy(*(this + 14));
  std::__tree<std::u16string_view>::destroy(*(this + 11));
  std::__tree<std::u16string_view>::destroy(*(this + 8));
}

morphun::analysis::util::AttributeSource_State *morphun::analysis::stemmer::RuLemmaFilter::reset(morphun::analysis::stemmer::RuLemmaFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 18) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  *(this + 19) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  *(this + 20) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::OffsetAttribute>(this);
  result = *(this + 21);
  if (result)
  {
    morphun::analysis::util::AttributeSource_State::~AttributeSource_State(result);
    result = MEMORY[0x1BFB49160]();
  }

  *(this + 21) = 0;
  return result;
}

void morphun::analysis::stemmer::RuLemmaFilter::incrementToken(morphun::analysis::stemmer::RuLemmaFilter *this)
{
  v132 = *MEMORY[0x1E69E9840];
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 44) = 0;
    morphun::analysis::util::AttributeSource::restoreState(this, v2);
    v3 = *(this + 21);
    if (v3)
    {
      morphun::analysis::util::AttributeSource_State::~AttributeSource_State(v3);
      MEMORY[0x1BFB49160]();
    }

    *(this + 21) = 0;
LABEL_5:
    v4 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *(this + 15);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  if (!(*(*v5 + 24))(v5))
  {
    goto LABEL_5;
  }

  v6 = *(this + 17);
  npc<morphun::analysis::tokenattributes::CharTermAttribute>(v6);
  v7 = *(*v6 - 96);
  v8 = *(this + 19);
  if (v8)
  {
    memset(v130, 0, 24);
    (*(*v8 + 64))(v8, v130);
    v123.__r_.__value_.__r.__words[0] = v130;
    std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](&v123);
  }

  v9 = (v6 + v7);
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = *v9;
    v10 = *(v9 + 1);
  }

  else
  {
    v11 = v9;
  }

  isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(v11, v10);
  v13 = isAllLowerCase;
  if (*(v9 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__str, *v9, *(v9 + 1));
  }

  else
  {
    v14 = *v9;
    __str.__r_.__value_.__r.__words[2] = *(v9 + 2);
    *&__str.__r_.__value_.__l.__data_ = v14;
  }

  if ((v13 & 1) == 0)
  {
    v15 = *(v9 + 23);
    if (v15 < 0)
    {
      v16 = *v9;
      v15 = *(v9 + 1);
    }

    else
    {
      v16 = v9;
    }

    v17 = morphun::util::LocaleUtils::RUSSIAN(isAllLowerCase);
    morphun::util::StringViewUtils::lowercase(&__str, v16, v15, v17);
  }

  v18 = *(this + 16);
  v19 = *(this + 19);
  v20 = v18[1];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((morphun::analysis::stemmer::RussianExposableMorphology::isInflectable(*(this + 16), p_str, size) & 1) == 0)
  {
    v24 = 0;
    LOBYTE(v123.__r_.__value_.__l.__data_) = 0;
    v124 = 0;
    goto LABEL_227;
  }

  *(this + 44) = 0;
  v127 = 0;
  v23 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v126, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    v23 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = __str.__r_.__value_.__l.__size_;
      v26 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_33;
    }
  }

  else
  {
    v126 = __str;
  }

  v25 = v23;
  v26 = &__str;
LABEL_33:
  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v20, &v127, v26, v25);
  v27 = v127;
  if (v127)
  {
    v24 = 0;
LABEL_35:
    if ((v18[49] & v27) == 0 || (v28 = v18[46], (v28 & ~v27) == 0) || (v18[51] & ~v27) == 0)
    {
      LOBYTE(v123.__r_.__value_.__l.__data_) = 0;
      v124 = 0;
      goto LABEL_196;
    }

    if (((v18[45] | v18[43] | v18[48] | v18[44] | v18[47] | v28) & v27) == 0)
    {
      goto LABEL_123;
    }

    memset(&v129, 0, sizeof(v129));
    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v126;
    }

    else
    {
      v39 = v126.__r_.__value_.__r.__words[0];
    }

    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v126.__r_.__value_.__l.__size_;
    }

    morphun::analysis::MorphologicalAnalyzer::getLemmaMappings(v18, v39, v40, v27, &v129);
    v44 = v129.__r_.__value_.__l.__size_;
    v43 = v129.__r_.__value_.__r.__words[0];
    if (v129.__r_.__value_.__r.__words[0] == v129.__r_.__value_.__l.__size_)
    {
      memset(__p, 0, 24);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v126;
      }

      else
      {
        v45 = v126.__r_.__value_.__r.__words[0];
      }

      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v126.__r_.__value_.__l.__size_;
      }

      morphun::dictionary::Inflector::getInflectionPatternsForWord(v18[2], v45, v46, __p);
      if (__p[0].n128_u64[0] != __p[0].n128_u64[1])
      {
        v47 = __p[0].n128_u64[0];
        while (*(v47 + 18))
        {
          v47 += 40;
          if (v47 == __p[0].n128_u64[1])
          {
            goto LABEL_81;
          }
        }

        if (v19)
        {
          v115 = v129.__r_.__value_.__l.__size_;
          if (v129.__r_.__value_.__l.__size_ >= v129.__r_.__value_.__r.__words[2])
          {
            v116 = 0xAAAAAAAAAAAAAAABLL * ((v129.__r_.__value_.__l.__size_ - v129.__r_.__value_.__r.__words[0]) >> 4);
            if (v116 + 1 > 0x555555555555555)
            {
              std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
            }

            v117 = 0x5555555555555556 * ((v129.__r_.__value_.__r.__words[2] - v129.__r_.__value_.__r.__words[0]) >> 4);
            if (v117 <= v116 + 1)
            {
              v117 = v116 + 1;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v129.__r_.__value_.__r.__words[2] - v129.__r_.__value_.__r.__words[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v118 = 0x555555555555555;
            }

            else
            {
              v118 = v117;
            }

            *&v130[32] = &v129;
            if (v118)
            {
              std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>(v118);
            }

            *v130 = 0;
            *&v130[8] = 16 * ((v129.__r_.__value_.__l.__size_ - v129.__r_.__value_.__r.__words[0]) >> 4);
            *&v130[16] = *&v130[8];
            *&v130[24] = 0;
            goto LABEL_263;
          }

          if (!v129.__r_.__value_.__l.__size_)
          {
            goto LABEL_263;
          }

          morphun::analysis::tokenattributes::LemmaMapping::LemmaMapping(v129.__r_.__value_.__l.__size_, v27, v27, &v126);
          v129.__r_.__value_.__l.__size_ = v115 + 48;
          (*(*v19 + 64))(v19, &v129);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v123, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
        }

        else
        {
          v123 = v126;
        }

        v124 = 1;
        if (__p[0].n128_u64[0])
        {
          operator delete(__p[0].n128_u64[0]);
        }

        goto LABEL_113;
      }

LABEL_81:
      v121 = v19;
      if (__p[0].n128_u64[0])
      {
        operator delete(__p[0].n128_u64[0]);
      }

      v44 = v129.__r_.__value_.__l.__size_;
      v43 = v129.__r_.__value_.__r.__words[0];
    }

    else
    {
      v121 = v19;
    }

    memset(__p, 0, 24);
    if (v43 != v44)
    {
      v48 = 0;
      do
      {
        v49 = v18[25];
        v50 = v18[26];
        if (v49 != v50)
        {
          while ((*v49 & ~*(v43 + 8)) != 0)
          {
            if (++v49 == v50)
            {
              goto LABEL_91;
            }
          }
        }

        if (v49 == v50)
        {
LABEL_91:
          if (v48 >= __p[1].n128_u64[0])
          {
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p[0].n128_u64[0]) >> 4);
            v52 = v51 + 1;
            if (v51 + 1 > 0x555555555555555)
            {
              std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
            }

            if (0x5555555555555556 * ((__p[1].n128_u64[0] - __p[0].n128_u64[0]) >> 4) > v52)
            {
              v52 = 0x5555555555555556 * ((__p[1].n128_u64[0] - __p[0].n128_u64[0]) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((__p[1].n128_u64[0] - __p[0].n128_u64[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v53 = 0x555555555555555;
            }

            else
            {
              v53 = v52;
            }

            *&v130[32] = __p;
            if (v53)
            {
              std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>(v53);
            }

            *v130 = 0;
            *&v130[8] = 48 * v51;
            *&v130[16] = 48 * v51;
            *&v130[24] = 0;
            std::allocator_traits<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>::construct[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping,morphun::analysis::tokenattributes::LemmaMapping const&,void,0>(48 * v51, v43, v41, v42);
            *&v130[16] += 48;
            v54 = *&v130[8] + __p[0].n128_u64[0] - __p[0].n128_u64[1];
            std::__uninitialized_allocator_relocate[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>,morphun::analysis::tokenattributes::LemmaMapping*>(__p[0].n128_i64[0], __p[0].n128_i64[1], v54);
            v55 = __p[0].n128_u64[0];
            v56 = __p[1].n128_u64[0];
            __p[0].n128_u64[0] = v54;
            v122 = *&v130[16];
            *(__p + 8) = *&v130[16];
            *&v130[16] = v55;
            *&v130[24] = v56;
            *v130 = v55;
            *&v130[8] = v55;
            std::__split_buffer<morphun::analysis::tokenattributes::LemmaMapping>::~__split_buffer(v130);
            v48 = v122;
          }

          else
          {
            std::allocator_traits<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>::construct[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping,morphun::analysis::tokenattributes::LemmaMapping const&,void,0>(v48, v43, v41, v42);
            v48 += 48;
          }

          __p[0].n128_u64[1] = v48;
        }

        v43 += 48;
      }

      while (v43 != v44);
    }

    v19 = v121;
    if (v121)
    {
      (*(*v121 + 64))(v121, &v129);
    }

    morphun::analysis::MorphologicalAnalyzer::selectBestLemmaMapping(v130, v18, __p[0]);
    if (v131 == 1)
    {
      if ((v130[47] & 0x80000000) == 0)
      {
        v123 = *&v130[24];
        v124 = 1;
LABEL_111:
        goto LABEL_112;
      }

      std::basic_string<char16_t>::__init_copy_ctor_external(&v123, *&v130[24], *&v130[32]);
      v124 = 1;
      if (v131)
      {
        goto LABEL_111;
      }
    }

    else
    {
      LOBYTE(v123.__r_.__value_.__l.__data_) = 0;
      v124 = 0;
    }

LABEL_112:
    *v130 = __p;
    std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](v130);
LABEL_113:
    *v130 = &v129;
    std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](v130);
    if (v124 != 1)
    {
      goto LABEL_123;
    }

    if (!v24)
    {
      v58 = *(this + 44);
      if (v58 >= 1)
      {
        v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &__str;
        }

        else
        {
          v59 = __str.__r_.__value_.__l.__size_;
          v60 = __str.__r_.__value_.__r.__words[0];
        }

        if (v59 >= v58)
        {
          v61 = *(this + 44);
        }

        else
        {
          v61 = v59;
        }

        std::basic_string<char16_t>::insert(&v123, v60, v61, v57);
        v24 = 0;
      }
    }

    goto LABEL_196;
  }

  v29 = v18[61];
  v30 = v18[62];
  if (v29 == v30)
  {
    goto LABEL_123;
  }

  v31 = (v29 + 8);
  while (1)
  {
    v32 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    v33 = *v31;
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 < SHIBYTE(__str.__r_.__value_.__r.__words[2]))
    {
      v34 = *(v31 - 1);
      v35 = &__str;
      goto LABEL_46;
    }

LABEL_56:
    v38 = v31 + 3;
    v31 += 4;
    if (v38 == v30)
    {
      v24 = 0;
      v27 = v127;
      if (v127)
      {
        goto LABEL_35;
      }

      goto LABEL_123;
    }
  }

  v32 = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__l.__size_ <= v33)
  {
    goto LABEL_56;
  }

  v34 = *(v31 - 1);
  v35 = __str.__r_.__value_.__r.__words[0];
LABEL_46:
  *v130 = v35;
  *&v130[8] = v32;
  if (!std::u16string_view::starts_with[abi:se200100](v130, v34, v33))
  {
    goto LABEL_56;
  }

  *v130 = 0;
  std::basic_string<char16_t>::erase(&v126, 0, *v31);
  if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v126;
  }

  else
  {
    v36 = v126.__r_.__value_.__r.__words[0];
  }

  if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v126.__r_.__value_.__l.__size_;
  }

  if (!morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v20, v130, v36, v37) || (v27 = *v130, (v31[1] & *v130) == 0))
  {
    std::basic_string<char16_t>::operator=(&v126, &__str);
    goto LABEL_56;
  }

  *(this + 44) = *v31;
  v127 = v27;
  v24 = v31[2];
  if (v27)
  {
    goto LABEL_35;
  }

LABEL_123:
  *(this + 44) = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v129, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = __str;
  }

  v62 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v62 = v129.__r_.__value_.__r.__words[1];
  }

  if (v62 >= 6)
  {
    morphun::analysis::stemmer::StemState::StemState(v130, &v129);
    v66 = *&v130[24];
    v65 = *&v130[28];
    *&v130[36] = *&v130[24];
    if (*&v130[28] > *&v130[24])
    {
      v67 = *&v130[24];
      do
      {
        v68 = v130[23];
        if (v130[23] < 0)
        {
          v68 = *&v130[8];
        }

        if (v68 < v67)
        {
          goto LABEL_263;
        }

        if (v130[23] >= 0)
        {
          v69 = v130;
        }

        else
        {
          v69 = *v130;
        }

        v70 = *&v69[2 * v67];
        v71 = v67 + 1;
        if (v70 == 1105)
        {
          *&v130[40] = v67 + 1;
          *&v130[24] = v67;
          morphun::analysis::stemmer::slice_from(v130, word_1BE800C28, 1uLL, v63, v64);
          v71 = *&v130[24];
          v65 = *&v130[28];
        }

        *&v130[36] = v71;
        v67 = v71;
      }

      while (v65 > v71);
    }

    *&v130[44] = v65;
    v131 = v65;
    *&v130[24] = v66;
    while ((morphun::analysis::stemmer::in_grouping(v130) & 1) == 0)
    {
      v72 = *&v130[28];
      if (*&v130[24] >= *&v130[28])
      {
        goto LABEL_156;
      }

      ++*&v130[24];
    }

    v131 = *&v130[24];
    while (!morphun::analysis::stemmer::out_grouping(v130))
    {
      v72 = *&v130[28];
      if (*&v130[24] >= *&v130[28])
      {
        goto LABEL_156;
      }

      ++*&v130[24];
    }

    while (!morphun::analysis::stemmer::in_grouping(v130))
    {
      v72 = *&v130[28];
      if (*&v130[24] >= *&v130[28])
      {
        goto LABEL_156;
      }

      ++*&v130[24];
    }

    while ((morphun::analysis::stemmer::out_grouping(v130) & 1) == 0)
    {
      v72 = *&v130[28];
      if (*&v130[24] >= *&v130[28])
      {
        goto LABEL_156;
      }

      ++*&v130[24];
    }

    *&v130[44] = *&v130[24];
    v72 = *&v130[28];
LABEL_156:
    *&v130[32] = v66;
    *&v130[24] = v72;
    if (v72 >= v131)
    {
      *&v130[32] = v131;
      if ((morphun::analysis::stemmer::r_verb_common(v130, &morphun::analysis::stemmer::a_0, 9) & 1) == 0)
      {
        *&v130[24] = *&v130[28];
        *&v130[40] = *&v130[28];
        if (morphun::analysis::stemmer::find_among_b(v130, &morphun::analysis::stemmer::a_3, 2))
        {
          *&v130[36] = *&v130[24];
          morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v73, v74);
          v75 = *&v130[24];
          v76 = *&v130[28];
        }

        else
        {
          v75 = *&v130[28];
          *&v130[24] = *&v130[28];
          v76 = *&v130[28];
        }

        *&v130[40] = v75;
        if (morphun::analysis::stemmer::find_among_b(v130, &morphun::analysis::stemmer::a_1, 26))
        {
          *&v130[36] = *&v130[24];
          morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v77, v78);
          *&v130[40] = *&v130[24];
          among_b = morphun::analysis::stemmer::find_among_b(v130, &morphun::analysis::stemmer::a_2, 8);
          if (!among_b)
          {
            goto LABEL_172;
          }

          v82 = *&v130[24];
          *&v130[36] = *&v130[24];
          if (among_b != 2)
          {
            if (among_b != 1)
            {
              goto LABEL_172;
            }

            v83 = *&v130[28];
            if ((morphun::analysis::stemmer::eq_s_b(v130, word_1BE800C8C, 1) & 1) == 0)
            {
              *&v130[24] = v82 - v83 + *&v130[28];
              if ((morphun::analysis::stemmer::eq_s_b(v130, word_1BE800C90, 1) & 1) == 0)
              {
                goto LABEL_172;
              }
            }
          }
        }

        else
        {
          v84 = v76 - v75;
          *&v130[24] = *&v130[28] - v84;
          if (morphun::analysis::stemmer::r_verb_common(v130, &morphun::analysis::stemmer::a_4, 46))
          {
            goto LABEL_172;
          }

          *&v130[24] = *&v130[28] - v84;
          *&v130[40] = *&v130[28] - v84;
          if (!morphun::analysis::stemmer::find_among_b(v130, &morphun::analysis::stemmer::a_5, 36))
          {
            goto LABEL_172;
          }

          *&v130[36] = *&v130[24];
        }

        morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v80, v81);
      }

LABEL_172:
      *&v130[24] = *&v130[28];
      *&v130[40] = *&v130[28];
      if (morphun::analysis::stemmer::eq_s_b(v130, word_1BE8089E4, 1))
      {
        *&v130[36] = *&v130[24];
        morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v85, v86);
        v87 = *&v130[24];
        v88 = *&v130[28];
      }

      else
      {
        v87 = *&v130[28];
        *&v130[24] = *&v130[28];
        v88 = *&v130[28];
      }

      *&v130[40] = v87;
      if (morphun::analysis::stemmer::find_among_b(v130, &morphun::analysis::stemmer::a_6, 2))
      {
        *&v130[36] = *&v130[24];
        if (*&v130[44] <= *&v130[24])
        {
          morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v89, v90);
        }
      }

      *&v130[24] = *&v130[28] + v87 - v88;
      *&v130[40] = *&v130[24];
      v91 = morphun::analysis::stemmer::find_among_b(v130, &morphun::analysis::stemmer::a_7, 4);
      if (v91)
      {
        *&v130[36] = *&v130[24];
        if (v91 != 1)
        {
          if (v91 != 3 && (v91 != 2 || (morphun::analysis::stemmer::eq_s_b(v130, word_1BE80F64E, 1) & 1) == 0))
          {
            goto LABEL_187;
          }

LABEL_186:
          morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v92, v93);
          goto LABEL_187;
        }

        morphun::analysis::stemmer::slice_from(v130, &word_1BE80F080, 0, v92, v93);
        *&v130[40] = *&v130[24];
        if (morphun::analysis::stemmer::eq_s_b(v130, word_1BE80F64E, 1))
        {
          *&v130[36] = *&v130[24];
          if (morphun::analysis::stemmer::eq_s_b(v130, word_1BE80F64E, 1))
          {
            goto LABEL_186;
          }
        }
      }

LABEL_187:
      *&v130[32] = v66;
      *&v130[24] = v66;
      std::basic_string<char16_t>::assign(&v129, v130, 0, *&v130[28]);
    }

    if ((v130[23] & 0x80000000) != 0)
    {
      operator delete(*v130);
    }
  }

  if (v19)
  {
    *&v130[8] = 0uLL;
    *v130 = &off_1F3CD2DC8;
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v130[24], v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v130[24] = v129;
    }

    memset(__p, 0, 24);
    std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__init_with_size[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping const*,morphun::analysis::tokenattributes::LemmaMapping const*>();
  }

  v24 = 0;
  v123 = v129;
  v124 = 1;
LABEL_196:
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  if ((v124 & 1) == 0)
  {
LABEL_227:
    if (*(this + 18))
    {
      *v130 = 0;
      v108 = *(v9 + 23);
      if (v108 < 0)
      {
        v109 = v9;
        v9 = *v9;
        v108 = *(v109 + 1);
      }

      morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(*(this + 16) + 8), v130, v9, v108);
      v110 = *(this + 18);
      if (!v110)
      {
        v120 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v120);
      }

      (*(*v110 + 64))(v110, *v130);
    }

    if (v24)
    {
      v111 = *(this + 20);
      if (v111)
      {
        v112 = (*(*v111 + 56))(*(this + 20));
        v113 = *(this + 44);
        v114 = (*(**(this + 20) + 72))(*(this + 20));
        (*(*v111 + 64))(v111, (v113 + v112), v114);
      }

      morphun::analysis::util::AttributeSource_State::clone((this + 72));
    }

    if (v124 == 1 && SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_5;
  }

  if ((v13 & 1) == 0)
  {
    v94 = *(v9 + 23);
    if ((v94 & 0x8000000000000000) != 0)
    {
      v95 = *v9;
      v94 = *(v9 + 1);
    }

    else
    {
      v95 = v9;
    }

    isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(v95, v94);
    if (isAllUpperCase)
    {
      memset(v130, 0, 24);
      if ((v124 & 1) == 0)
      {
        goto LABEL_263;
      }

      v97 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
      v98 = *&v123.__r_.__value_.__l.__data_;
      v99 = morphun::util::LocaleUtils::RUSSIAN(isAllUpperCase);
      if ((v97 & 0x80u) == 0)
      {
        v100 = &v123;
      }

      else
      {
        v100 = v98;
      }

      if ((v97 & 0x80u) == 0)
      {
        v101 = v97;
      }

      else
      {
        v101 = DWORD2(v98);
      }

      morphun::util::StringViewUtils::uppercase(v130, v100, v101, v99);
      std::optional<std::basic_string<char16_t>>::operator=[abi:se200100]<std::basic_string<char16_t> const&,void>(&v123, v130);
      if ((v130[23] & 0x80000000) != 0)
      {
        operator delete(*v130);
      }
    }

    else
    {
      if ((v124 & 1) == 0)
      {
        goto LABEL_263;
      }

      v102 = HIBYTE(v123.__r_.__value_.__r.__words[2]);
      v103 = *&v123.__r_.__value_.__l.__data_;
      v104 = morphun::util::LocaleUtils::RUSSIAN(isAllUpperCase);
      if ((v102 & 0x80u) == 0)
      {
        v105 = &v123;
      }

      else
      {
        v105 = v103;
      }

      if ((v102 & 0x80u) == 0)
      {
        v106 = v102;
      }

      else
      {
        v106 = *(&v103 + 1);
      }

      morphun::util::StringViewUtils::capitalizeFirst(v105, v106, v104, v130);
      if (v124 == 1)
      {
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        v123 = *v130;
      }

      else
      {
        v123 = *v130;
        v124 = 1;
      }
    }
  }

  v107 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 17));
  if (v124)
  {
    std::basic_string<char16_t>::operator=((v107 + *(*v107 - 96)), &v123);
    goto LABEL_227;
  }

LABEL_263:
  __break(1u);
}

void sub_1BE663C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a38;
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](&__p);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::RuLemmaFilter::~RuLemmaFilter(morphun::analysis::stemmer::RuLemmaFilter *this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CD9E48);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CD9E48);
}

uint64_t morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 528) || (v4 = (*(*a2 + 32))(a2)) == 0)
  {
    v7 = (*(*a2 + 24))(a2);
    v8 = v7;
    if (*(a1 + 696) != 1)
    {
      goto LABEL_32;
    }

    v9 = *(v7 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (!v9)
    {
LABEL_32:
      v20 = *(a1 + 536);
      npc<morphun::dialog::SemanticFeature const>(v20);
      v21 = (*(*a2 + 32))(a2, v20);
      Count = morphun::grammar::synthesis::FrGrammarSynthesizer::getCount(v21);
      if (!Count)
      {
        morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::determine((a1 + 32), v8, &__p);
        Count = morphun::grammar::synthesis::FrGrammarSynthesizer::getCount(&__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v23 = *(a1 + 544);
      npc<morphun::dialog::SemanticFeature const>(v23);
      v24 = (*(*a2 + 32))(a2, v23);
      Gender = morphun::grammar::synthesis::FrGrammarSynthesizer::getGender(v24);
      v26 = Gender;
      if (!Gender)
      {
        morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::determine((a1 + 296), v8, &__p);
        Gender = morphun::grammar::synthesis::FrGrammarSynthesizer::getGender(&__p);
        v26 = Gender;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (Count != 1)
      {
        if (Count == 2)
        {
          return (*(*a1 + 32))(a1, a2, a1 + 672);
        }

        goto LABEL_55;
      }

      if ((*(a1 + 671) & 0x8000000000000000) != 0)
      {
        if (!*(a1 + 656))
        {
LABEL_52:
          if (v26 == 2)
          {
            return (*(*a1 + 32))(a1, a2, a1 + 624);
          }

          if (v26 == 1)
          {
            return (*(*a1 + 32))(a1, a2, a1 + 600);
          }

LABEL_55:
          if ((*(a1 + 599) & 0x8000000000000000) != 0)
          {
            if (!*(a1 + 584))
            {
              return (*(*a1 + 32))(a1, a2, a1 + 552);
            }
          }

          else if (!*(a1 + 599))
          {
            return (*(*a1 + 32))(a1, a2, a1 + 552);
          }

          v29 = *(v8 + 23);
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v8 + 8);
          }

          if (v29)
          {
            v30 = morphun::util::LocaleUtils::FRENCH(Gender);
            if (morphun::dictionary::PhraseProperties::isStartsWithVowel(v30, v8))
            {
              return (*(*a1 + 32))(a1, a2, a1 + 576);
            }
          }

          return (*(*a1 + 32))(a1, a2, a1 + 552);
        }
      }

      else if (!*(a1 + 671))
      {
        goto LABEL_52;
      }

      v27 = *(v8 + 23);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v8 + 8);
      }

      if (v27 && ((*(a1 + 697) & 1) != 0 || v26 == 1))
      {
        v28 = morphun::util::LocaleUtils::FRENCH(Gender);
        Gender = morphun::dictionary::PhraseProperties::isStartsWithVowel(v28, v8);
        if (Gender)
        {
          return (*(*a1 + 32))(a1, a2, a1 + 648);
        }
      }

      goto LABEL_52;
    }

    v10 = *(a1 + 24);
    if (!v10 || (v11 = (*(*v10 + 24))(v10, v8)) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v12 = v11;
    v13 = (*(*v11 + 104))(v11);
    if (!v13)
    {
      v32 = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(v32);
    }

    v14 = *(v13 + 80);
    npc<morphun::Token>(v14);
    v15 = (v14 + 40);
    v16 = *(v14 + 63);
    if (*(v14 + 63) < 0)
    {
      v18 = *(v14 + 48);
      if (v18 != 2)
      {
        if (v18 != 3)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v17 = *v15;
    }

    else
    {
      v17 = (v14 + 40);
      if (v16 != 2)
      {
        if (v16 != 3)
        {
LABEL_31:
          (*(*v12 + 16))(v12);
          goto LABEL_32;
        }

LABEL_27:
        v19 = 0;
        while (word_1BE80D966[v19] == *(v15 + v19 * 2))
        {
          if (++v19 == 3)
          {
            operator new();
          }
        }

        goto LABEL_31;
      }
    }

    if (*v17 == 108 && v17[1] == 101)
    {
      operator new();
    }

    if ((v16 & 0x80) == 0 || *(v14 + 48) != 3)
    {
      goto LABEL_31;
    }

LABEL_26:
    v15 = *v15;
    goto LABEL_27;
  }

  v5 = *(*a1 + 32);

  return v5(a1, a2, v4);
}

void sub_1BE664800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  MEMORY[0x1BFB49160](v28, 0x10B3C40F7FF9C27);
  (*(*v27 + 16))(v27);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleLookupFunction::~FrGrammarSynthesizer_ArticleLookupFunction(void **this)
{
  morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleLookupFunction::~FrGrammarSynthesizer_ArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4870;
  if (*(this + 695) < 0)
  {
    operator delete(this[84]);
  }

  if (*(this + 671) < 0)
  {
    operator delete(this[81]);
  }

  if (*(this + 647) < 0)
  {
    operator delete(this[78]);
  }

  if (*(this + 623) < 0)
  {
    operator delete(this[75]);
  }

  if (*(this + 599) < 0)
  {
    operator delete(this[72]);
  }

  if (*(this + 575) < 0)
  {
    operator delete(this[69]);
  }

  morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::~FrGrammarSynthesizer_GenderLookupFunction((this + 37));
  morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::~FrGrammarSynthesizer_CountLookupFunction((this + 4));
  v2 = this[3];
  this[3] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleLookupFunction::FrGrammarSynthesizer_ArticleLookupFunction(void *a1, uint64_t a2, char a3, int a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a1 = &off_1F3CE6A28;
  v14 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDB970, a2, a6 != 0, a3);
  *v14 = &unk_1F3CD4870;
  if (a4)
  {
    v15 = morphun::util::LocaleUtils::FRENCH(v14);
    morphun::TokenizerFactory::createTokenizer(v15, v16);
  }

  a1[3] = 0;
  morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::FrGrammarSynthesizer_CountLookupFunction((a1 + 4));
}

void sub_1BE664DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  if (*(v11 + 671) < 0)
  {
    operator delete(*v14);
  }

  if (*(v11 + 647) < 0)
  {
    operator delete(*v13);
  }

  if (*(v11 + 623) < 0)
  {
    operator delete(*v12);
  }

  if (*(v11 + 599) < 0)
  {
    operator delete(*a10);
  }

  if (*(v11 + 575) < 0)
  {
    operator delete(*a11);
  }

  morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::~FrGrammarSynthesizer_GenderLookupFunction((v11 + 296));
  morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::~FrGrammarSynthesizer_CountLookupFunction((v11 + 32));
  v16 = *(v11 + 24);
  *(v11 + 24) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  _Unwind_Resume(a1);
}

void morphun::exception::IncompatibleVersionException::~IncompatibleVersionException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::IncompatibleVersionException::IncompatibleVersionException(morphun::exception::IncompatibleVersionException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0940;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0940;
  return result;
}

void *morphun::exception::IncompatibleVersionException::IncompatibleVersionException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0940;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0940;
  return result;
}

void sub_1BE665384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (v33)
  {
    operator delete(v33);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::~FinnishMorphology_InflectionAnalysis(&a31);
  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void morphun::analysis::util::AttributeSource_State::~AttributeSource_State(morphun::analysis::util::AttributeSource_State *this)
{
  morphun::analysis::util::AttributeSource_State::~AttributeSource_State(this);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 32) == 1)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    while (v2 != v3)
    {
      if (*v2)
      {
        (*(**v2 + 16))(*v2);
      }

      ++v2;
    }
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

uint64_t morphun::analysis::util::AttributeSource_State::AttributeSource_State(uint64_t this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t morphun::analysis::util::AttributeSource_State::AttributeSource_State(uint64_t this)
{
  *this = &unk_1F3CD1B50;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void virtual thunk tomorphun::analysis::util::AttributeSource_State::~AttributeSource_State(morphun::analysis::util::AttributeSource_State *this)
{
  morphun::analysis::util::AttributeSource_State::~AttributeSource_State((this + *(*this - 32)));
}

{
  morphun::analysis::util::AttributeSource_State::~AttributeSource_State((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::analysis::util::AttributeSource_State::~AttributeSource_State(void *a1)
{
  morphun::analysis::util::AttributeSource_State::~AttributeSource_State((a1 + *(*a1 - 32)));
}

{
  morphun::analysis::util::AttributeSource_State::~AttributeSource_State((a1 + *(*a1 - 32)));

  JUMPOUT(0x1BFB49160);
}

void morphun::grammar::synthesis::HrGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::HrGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  operator new();
}

void sub_1BE665C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = 0;
  while (1)
  {
    if (*(&a31 + v33) < 0)
    {
      operator delete(*(&a26 + v33));
    }

    v33 -= 24;
    if (v33 == -48)
    {
      MEMORY[0x1BFB49160](v31, 0x10F3C40BE507067);
      if (a18 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1BE666060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v20);
  morphun::analysis::TokenFilter::~TokenFilter(v18, off_1F3CDA200);
  MEMORY[0x1BFB49160](v18, v19);
  _Unwind_Resume(a1);
}

void morphun::analysis::DeAnalyzer::~DeAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB1E0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB1E0);
}

void morphun::dialog::language::ElCommonConceptFactory::~ElCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC778);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC778);
}

void morphun::dictionary::Inflector_Inflection::inflect(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  v6 = npc<morphun::dictionary::Inflector_InflectionPattern const>(*a2);
  morphun::dictionary::metadata::StringContainer::getString((*(v6 + 32) + 144), *(a2 + 8), v24);
  v7 = *a2;
  npc<morphun::dictionary::Inflector_InflectionPattern const>(v7);
  if (*(v7 + 16) < 1)
  {
LABEL_18:
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, a3, v24);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = *(v7 + 32);
      v10 = morphun::dictionary::metadata::CompressedArray<long long>::read(v9 + 200, v8 + *(v7 + 20));
      morphun::dictionary::metadata::StringContainer::getString((v9 + 144), v10, &__p);
      if ((v23 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v23 & 0x80u) == 0)
      {
        v12 = v23;
      }

      else
      {
        v12 = v22;
      }

      v13 = *(a3 + 23);
      if ((v13 & 0x80u) == 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = *a3;
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a3 + 8);
      }

      v20.__r_.__value_.__r.__words[0] = v14;
      v20.__r_.__value_.__l.__size_ = v13;
      if (std::u16string_view::ends_with[abi:se200100](&v20, p_p, v12))
      {
        break;
      }

      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (++v8 >= *(v7 + 16))
      {
        goto LABEL_18;
      }
    }

    v16 = *(a3 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a3 + 8);
    }

    v17 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v17 = v22;
    }

    std::basic_string<char16_t>::basic_string(&v20, a3, 0, v16 - v17, v15);
    if ((v25 & 0x80u) == 0)
    {
      v18 = v24;
    }

    else
    {
      v18 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v19 = v25;
    }

    else
    {
      v19 = v24[1];
    }

    std::basic_string<char16_t>::append(&v20, v18, v19);
    *a1 = v20;
    if (v23 < 0)
    {
      operator delete(__p);
    }
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_1BE666388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::dictionary::Inflector_InflectionPattern const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::dictionary::Inflector_Inflection::lemmatize(std::basic_string<char16_t> *a1, uint64_t a2, std::basic_string<char16_t>::size_type a3)
{
  v6 = npc<morphun::dictionary::Inflector_InflectionPattern const>(*a2);
  morphun::dictionary::metadata::StringContainer::getString((*(v6 + 32) + 144), *(a2 + 8), &v22);
  v7 = *a2;
  npc<morphun::dictionary::Inflector_InflectionPattern const>(v7);
  if (!*(v7 + 16))
  {
    goto LABEL_27;
  }

  if ((v24 & 0x80u) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22;
  }

  if ((v24 & 0x80u) == 0)
  {
    v9 = v24;
  }

  else
  {
    v9 = v23;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  v21.__r_.__value_.__r.__words[0] = v11;
  v21.__r_.__value_.__l.__size_ = v10;
  if (std::u16string_view::ends_with[abi:se200100](&v21, v8, v9))
  {
    v13 = *(a3 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 8);
    }

    v14 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v14 = v23;
    }

    std::basic_string<char16_t>::basic_string(&v21, a3, 0, v13 - v14, v12);
    v15 = *(v7 + 32);
    v16 = morphun::dictionary::metadata::CompressedArray<long long>::read(v15 + 200, *(v7 + 20));
    morphun::dictionary::metadata::StringContainer::getString((v15 + 144), v16, __p);
    if ((v20 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v18 = v20;
    }

    else
    {
      v18 = __p[1];
    }

    std::basic_string<char16_t>::append(&v21, v17, v18);
    *a1 = v21;
    memset(&v21, 0, sizeof(v21));
    if (v20 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
LABEL_27:
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a3;
      a1->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }
}

void sub_1BE6665DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::HiGrammarSynthesizer_GenderLookupFunction::determine(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    morphun::dialog::DictionaryLookupFunction::determine(a1, a2, a3);
    v8 = *(a3 + 23);
    v9 = v8;
    v10 = *(a3 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    if (!v11)
    {
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v12)
      {
        v13 = a1[26];
        if (!v13 || (v14 = (*(*v13 + 24))(v13, a2), (v15 = v14) == 0))
        {
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }

        v64 = *(v14 + 8);
        v16 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
          goto LABEL_28;
        }

        while (v16 != v64)
        {
          if (v64)
          {
            v17 = **v64;
            {
              v18 = *(v64 + 63);
              v19 = v18 >= 0 ? (v64 + 40) : *(v64 + 40);
              v20 = v18 >= 0 ? *(v64 + 63) : *(v64 + 48);
              v21 = a1[27];
              v22 = a1[28];
              *&v66 = 0;
              v23 = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v21, &v66, v19, v20) && (v66 & v22) == v22;
              if (v23)
              {
                morphun::dialog::DictionaryLookupFunction::determine(a1, v64 + 16, &v66);
                if (*(a3 + 23) < 0)
                {
                  operator delete(*a3);
                }

                *a3 = v66;
                *(a3 + 16) = v67;
                break;
              }
            }
          }

          npc<morphun::Token const>(v64);
          *(&v24 + 1) = *(&v64 + 1);
          *&v24 = *(v64 + 80);
          v64 = v24;
          v16 = *(v15 + 16);
          if (v16)
          {
LABEL_28:
            v16 = *(v16 + 80);
          }
        }

        v25 = *(a3 + 23);
        v26 = v25;
        v27 = *(a3 + 8);
        if ((v25 & 0x80u) == 0)
        {
          v28 = *(a3 + 23);
        }

        else
        {
          v28 = *(a3 + 8);
        }

        if (!v28)
        {
          v65 = *(v15 + 8);
          v29 = *(&v65 + 1);
          if (!*(&v65 + 1))
          {
            goto LABEL_41;
          }

LABEL_40:
          v29 = *(v29 + 80);
LABEL_41:
          while (v29 != v65)
          {
            if (v65)
            {
              v30 = **v65;
              {
                morphun::dialog::DictionaryLookupFunction::determine(a1, v65 + 16, &v66);
                if (*(a3 + 23) < 0)
                {
                  operator delete(*a3);
                }

                *a3 = v66;
                *(a3 + 16) = v67;
                break;
              }
            }

            npc<morphun::Token const>(v65);
            *(&v31 + 1) = *(&v65 + 1);
            *&v31 = *(v65 + 80);
            v65 = v31;
            v29 = *(v15 + 16);
            if (v29)
            {
              goto LABEL_40;
            }
          }

          v25 = *(a3 + 23);
          v27 = *(a3 + 8);
          v26 = *(a3 + 23);
        }

        if (v26 < 0)
        {
          v25 = v27;
        }

        if (!v25)
        {
          v32 = (*(*v15 + 104))(v15);
          if (!v32)
          {
            v62 = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(v62);
          }

          v33 = *(v32 + 80);
          if (!v33)
          {
            v63 = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(v63);
          }

          {
            operator new();
          }

          v34 = morphun::grammar::synthesis::MASCULINE_SUFFIXES(void)::MASCULINE_SUFFIXES_;
          npc<std::set<std::u16string_view>>(morphun::grammar::synthesis::MASCULINE_SUFFIXES(void)::MASCULINE_SUFFIXES_);
          v37 = *v34;
          v35 = v34 + 1;
          v36 = v37;
          if (v37 != v35)
          {
            while (1)
            {
              v38 = v36[4];
              v39 = v36[5];
              v40 = *(v33 + 63);
              if ((v40 & 0x80u) == 0)
              {
                v41 = v33 + 40;
              }

              else
              {
                v41 = *(v33 + 40);
              }

              if ((v40 & 0x80u) != 0)
              {
                v40 = *(v33 + 48);
              }

              *&v66 = v41;
              *(&v66 + 1) = v40;
              v42 = std::u16string_view::ends_with[abi:se200100](&v66, v38, v39);
              if (v42)
              {
                break;
              }

              v43 = v36[1];
              if (v43)
              {
                do
                {
                  v44 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = v36[2];
                  v23 = *v44 == v36;
                  v36 = v44;
                }

                while (!v23);
              }

              v36 = v44;
              if (v44 == v35)
              {
                goto LABEL_71;
              }
            }

            v45 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v42);
            std::basic_string<char16_t>::operator=(a3, v45);
          }

LABEL_71:
          v46 = *(a3 + 23);
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(a3 + 8);
          }

          if (!v46)
          {
            {
              operator new();
            }

            v49 = morphun::grammar::synthesis::FEMININE_SUFFIXES(void)::FEMININE_SUFFIXES_;
            npc<std::set<std::u16string_view>>(morphun::grammar::synthesis::FEMININE_SUFFIXES(void)::FEMININE_SUFFIXES_);
            v52 = *v49;
            v50 = v49 + 1;
            v51 = v52;
            if (v52 != v50)
            {
              while (1)
              {
                v53 = v51[4];
                v54 = v51[5];
                v55 = *(v33 + 63);
                if ((v55 & 0x80u) == 0)
                {
                  v56 = v33 + 40;
                }

                else
                {
                  v56 = *(v33 + 40);
                }

                if ((v55 & 0x80u) != 0)
                {
                  v55 = *(v33 + 48);
                }

                *&v66 = v56;
                *(&v66 + 1) = v55;
                v57 = std::u16string_view::ends_with[abi:se200100](&v66, v53, v54);
                if (v57)
                {
                  break;
                }

                v58 = v51[1];
                if (v58)
                {
                  do
                  {
                    v59 = v58;
                    v58 = *v58;
                  }

                  while (v58);
                }

                else
                {
                  do
                  {
                    v59 = v51[2];
                    v23 = *v59 == v51;
                    v51 = v59;
                  }

                  while (!v23);
                }

                v51 = v59;
                if (v59 == v50)
                {
                  goto LABEL_74;
                }
              }

              v60 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v57);
              std::basic_string<char16_t>::operator=(a3, v60);
            }
          }
        }

LABEL_74:
        v7 = (*(*v15 + 16))(v15);
        v8 = *(a3 + 23);
        v10 = *(a3 + 8);
        v9 = *(a3 + 23);
      }
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      v47 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v7);
      std::basic_string<char16_t>::operator=(a3, v47);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1BE666CAC(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1020C4062D53EE8);
  (*(*v2 + 16))(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::HiGrammarSynthesizer_GenderLookupFunction::~HiGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::HiGrammarSynthesizer_GenderLookupFunction *this)
{
  morphun::grammar::synthesis::HiGrammarSynthesizer_GenderLookupFunction::~HiGrammarSynthesizer_GenderLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4D48;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE7240;
  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  *(this + 1) = &unk_1F3CD2000;
}

void sub_1BE666FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE66711C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::TrCommonConceptFactory::~TrCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC1E8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC1E8);
}

uint64_t morphun::grammar::synthesis::NbGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  v4 = a1[4];
  npc<morphun::dialog::SemanticFeature const>(v4);
  v5 = (*(*a2 + 32))(a2, v4);
  Count = morphun::grammar::synthesis::NbGrammarSynthesizer::getCount(v5);
  if (!Count)
  {
    FeatureValue = morphun::dialog::DictionaryLookupFunction::getFeatureValue((a1 + 17), a2);
    if (!FeatureValue)
    {
      goto LABEL_6;
    }

    v8 = FeatureValue;
    v9 = (*(*FeatureValue + 32))(FeatureValue);
    Count = morphun::grammar::synthesis::NbGrammarSynthesizer::getCount(v9);
    (*(*v8 + 16))(v8);
  }

  if (Count == 2)
  {
    v10 = 14;
    goto LABEL_13;
  }

LABEL_6:
  v11 = a1[3];
  npc<morphun::dialog::SemanticFeature const>(v11);
  v12 = (*(*a2 + 32))(a2, v11);
  Gender = morphun::grammar::synthesis::NbGrammarSynthesizer::getGender(v12);
  if (!Gender)
  {
    v14 = morphun::dialog::DictionaryLookupFunction::getFeatureValue((a1 + 43), a2);
    if (!v14)
    {
      v10 = 5;
      goto LABEL_13;
    }

    v15 = v14;
    v16 = (*(*v14 + 32))(v14);
    Gender = morphun::grammar::synthesis::NbGrammarSynthesizer::getGender(v16);
    (*(*v15 + 16))(v15);
  }

  v10 = 5;
  if (Gender == 2)
  {
    v10 = 8;
  }

  if (Gender == 3)
  {
    v10 = 11;
  }

LABEL_13:
  v17 = *(*a1 + 32);

  return v17(a1, a2, &a1[v10]);
}

void morphun::grammar::synthesis::NbGrammarSynthesizer_ArticleLookupFunction::~NbGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::NbGrammarSynthesizer_ArticleLookupFunction *this)
{
  morphun::grammar::synthesis::NbGrammarSynthesizer_ArticleLookupFunction::~NbGrammarSynthesizer_ArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CD4798;
  *(this + 43) = &unk_1F3CD8738;
  v2 = *(this + 65);
  if (v2)
  {
    *(this + 66) = v2;
    operator delete(v2);
  }

  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 44) = &unk_1F3CD2000;
  *(this + 17) = &unk_1F3CD8738;
  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = *(this + 37);
  *(this + 37) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  *(this + 18) = &unk_1F3CD2000;
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

void morphun::grammar::synthesis::NbGrammarSynthesizer_ArticleLookupFunction::NbGrammarSynthesizer_ArticleLookupFunction(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v25[3] = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE6950;
  v12 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDB928, a2, a3, 1);
  *a1 = &off_1F3CD4798;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v13;
  }

  if (*(a5 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 64), *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    *(a1 + 80) = *(a5 + 2);
    *(a1 + 64) = v14;
  }

  if (*(a6 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 88), *a6, *(a6 + 1));
  }

  else
  {
    v15 = *a6;
    *(a1 + 104) = *(a6 + 2);
    *(a1 + 88) = v15;
  }

  if (*(a7 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 112), *a7, *(a7 + 1));
  }

  else
  {
    v16 = *a7;
    *(a1 + 128) = *(a7 + 2);
    *(a1 + 112) = v16;
  }

  v17 = morphun::util::LocaleUtils::NORWEGIAN(v12);
  v18 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v17);
  if (*(v18 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__dst, *v18, *(v18 + 8));
  }

  else
  {
    v19 = *v18;
    __dst.__r_.__value_.__r.__words[2] = *(v18 + 16);
    *&__dst.__r_.__value_.__l.__data_ = v19;
  }

  v20 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v18);
  if (*(v20 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v24, *v20, *(v20 + 8));
  }

  else
  {
    v21 = *v20;
    v24.__r_.__value_.__r.__words[2] = *(v20 + 16);
    *&v24.__r_.__value_.__l.__data_ = v21;
  }

  memset(v22, 0, sizeof(v22));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v22, &__dst, v25, 2uLL);
}

void sub_1BE667ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 111) < 0)
  {
    operator delete(*(v18 + 88));
  }

  if (*(v18 + 87) < 0)
  {
    operator delete(*(v18 + 64));
  }

  if (*(v18 + 63) < 0)
  {
    operator delete(*(v18 + 40));
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::determine(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    morphun::dialog::DictionaryLookupFunction::determine(a1, a2, a3);
    v8 = *(a3 + 23);
    v9 = v8;
    v10 = *(a3 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    if (!v11)
    {
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v12)
      {
        v13 = a1[26];
        if (!v13 || (v14 = (*(*v13 + 24))(v13, a2), (v15 = v14) == 0))
        {
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }

        v64 = *(v14 + 8);
        v16 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
          goto LABEL_28;
        }

        while (v16 != v64)
        {
          if (v64)
          {
            v17 = **v64;
            {
              v18 = *(v64 + 63);
              v19 = v18 >= 0 ? (v64 + 40) : *(v64 + 40);
              v20 = v18 >= 0 ? *(v64 + 63) : *(v64 + 48);
              v21 = a1[27];
              v22 = a1[28];
              *&__dst = 0;
              v23 = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v21, &__dst, v19, v20) && (__dst & v22) == v22;
              if (v23)
              {
                morphun::dialog::DictionaryLookupFunction::determine(a1, v64 + 16, &__dst);
                if (*(a3 + 23) < 0)
                {
                  operator delete(*a3);
                }

                *a3 = __dst;
                *(a3 + 16) = v67;
                break;
              }
            }
          }

          npc<morphun::Token const>(v64);
          *(&v24 + 1) = *(&v64 + 1);
          *&v24 = *(v64 + 80);
          v64 = v24;
          v16 = *(v15 + 16);
          if (v16)
          {
LABEL_28:
            v16 = *(v16 + 80);
          }
        }

        v25 = *(a3 + 23);
        v26 = v25;
        v27 = *(a3 + 8);
        if ((v25 & 0x80u) == 0)
        {
          v28 = *(a3 + 23);
        }

        else
        {
          v28 = *(a3 + 8);
        }

        if (!v28)
        {
          v65 = *(v15 + 8);
          v29 = *(&v65 + 1);
          if (!*(&v65 + 1))
          {
            goto LABEL_41;
          }

LABEL_40:
          v29 = *(v29 + 80);
LABEL_41:
          while (v29 != v65)
          {
            if (v65)
            {
              v30 = **v65;
              {
                morphun::dialog::DictionaryLookupFunction::determine(a1, v65 + 16, &__dst);
                if (*(a3 + 23) < 0)
                {
                  operator delete(*a3);
                }

                *a3 = __dst;
                *(a3 + 16) = v67;
                break;
              }
            }

            npc<morphun::Token const>(v65);
            *(&v31 + 1) = *(&v65 + 1);
            *&v31 = *(v65 + 80);
            v65 = v31;
            v29 = *(v15 + 16);
            if (v29)
            {
              goto LABEL_40;
            }
          }

          v25 = *(a3 + 23);
          v27 = *(a3 + 8);
          v26 = *(a3 + 23);
        }

        if (v26 < 0)
        {
          v25 = v27;
        }

        if (!v25)
        {
          v32 = (*(*v15 + 104))(v15);
          if (!v32)
          {
            v62 = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(v62);
          }

          v33 = *(v32 + 80);
          if (!v33)
          {
            v63 = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(v63);
          }

          {
            operator new();
          }

          v34 = morphun::grammar::synthesis::MASCULINE_SUFFIXES(void)::MASCULINE_SUFFIXES_;
          npc<std::set<std::u16string_view>>(morphun::grammar::synthesis::MASCULINE_SUFFIXES(void)::MASCULINE_SUFFIXES_);
          v37 = *v34;
          v35 = v34 + 1;
          v36 = v37;
          if (v37 != v35)
          {
            while (1)
            {
              v38 = v36[4];
              v39 = v36[5];
              v40 = *(v33 + 63);
              if ((v40 & 0x80u) == 0)
              {
                v41 = v33 + 40;
              }

              else
              {
                v41 = *(v33 + 40);
              }

              if ((v40 & 0x80u) != 0)
              {
                v40 = *(v33 + 48);
              }

              *&__dst = v41;
              *(&__dst + 1) = v40;
              v42 = std::u16string_view::ends_with[abi:se200100](&__dst, v38, v39);
              if (v42)
              {
                break;
              }

              v43 = v36[1];
              if (v43)
              {
                do
                {
                  v44 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = v36[2];
                  v23 = *v44 == v36;
                  v36 = v44;
                }

                while (!v23);
              }

              v36 = v44;
              if (v44 == v35)
              {
                goto LABEL_71;
              }
            }

            v45 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v42);
            std::basic_string<char16_t>::operator=(a3, v45);
          }

LABEL_71:
          v46 = *(a3 + 23);
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(a3 + 8);
          }

          if (!v46)
          {
            {
              operator new();
            }

            v49 = morphun::grammar::synthesis::FEMININE_SUFFIXES(void)::FEMININE_SUFFIXES_;
            npc<std::set<std::u16string_view>>(morphun::grammar::synthesis::FEMININE_SUFFIXES(void)::FEMININE_SUFFIXES_);
            v52 = *v49;
            v50 = v49 + 1;
            v51 = v52;
            if (v52 != v50)
            {
              while (1)
              {
                v53 = v51[4];
                v54 = v51[5];
                v55 = *(v33 + 63);
                if ((v55 & 0x80u) == 0)
                {
                  v56 = v33 + 40;
                }

                else
                {
                  v56 = *(v33 + 40);
                }

                if ((v55 & 0x80u) != 0)
                {
                  v55 = *(v33 + 48);
                }

                *&__dst = v56;
                *(&__dst + 1) = v55;
                v57 = std::u16string_view::ends_with[abi:se200100](&__dst, v53, v54);
                if (v57)
                {
                  break;
                }

                v58 = v51[1];
                if (v58)
                {
                  do
                  {
                    v59 = v58;
                    v58 = *v58;
                  }

                  while (v58);
                }

                else
                {
                  do
                  {
                    v59 = v51[2];
                    v23 = *v59 == v51;
                    v51 = v59;
                  }

                  while (!v23);
                }

                v51 = v59;
                if (v59 == v50)
                {
                  goto LABEL_74;
                }
              }

              v60 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v57);
              std::basic_string<char16_t>::operator=(a3, v60);
            }
          }
        }

LABEL_74:
        v7 = (*(*v15 + 16))(v15);
        v8 = *(a3 + 23);
        v10 = *(a3 + 8);
        v9 = *(a3 + 23);
      }
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      v47 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v7);
      std::basic_string<char16_t>::operator=(a3, v47);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1BE6682C0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1020C4062D53EE8);
  (*(*v2 + 16))(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::~FrGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction *this)
{
  morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::~FrGrammarSynthesizer_GenderLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4E20;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE73C0;
  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  *(this + 1) = &unk_1F3CD2000;
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction::FrGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::FrGrammarSynthesizer_GenderLookupFunction *this)
{
  __p[3] = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE7420;
  morphun::util::LocaleUtils::FRENCH(this);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"masculine");
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v2, L"feminine");
  memset(__p, 0, 24);
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(__p, &__dst, __p, 2uLL);
}

void sub_1BE66870C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 26);
  *(v25 + 26) = 0;
  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v25, off_1F3CDBCB8);
  _Unwind_Resume(a1);
}

void sub_1BE6688C4(_Unwind_Exception *a1)
{
  if (*(v2 + 119) < 0)
  {
    operator delete(*v3);
  }

  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator((v2 + 32));
  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

void morphun::tokenizer::TokenExtractorMecab::~TokenExtractorMecab(morphun::tokenizer::TokenExtractorMecab *this)
{
  icu4cxx::UnicodeSet::~UnicodeSet((this + 160));
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9CA0);

  JUMPOUT(0x1BFB49160);
}

{
  icu4cxx::UnicodeSet::~UnicodeSet((this + 160));

  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9CA0);
}

uint64_t morphun::tokenizer::TokenExtractorMecab::TokenExtractorMecab(uint64_t a1, morphun::util::ResourceLocator *a2, morphun::tokenizer *a3, void *a4, uint64_t a5)
{
  *a1 = &unk_1F3CD9158;
  WordsToNotSplit = morphun::tokenizer::TokenExtractor::createWordsToNotSplit(a2, a5);
  morphun::tokenizer::TokenExtractor::TokenExtractor(a1, off_1F3CD9CA0, a2, a5, WordsToNotSplit);
  *a1 = &unk_1F3CD0750;
  *(a1 + 152) = a3;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 160) = MEMORY[0x1BFB499E0](*a4);
  *(a1 + 168) = 1;
  result = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a5, "u", 0x20uLL);
  if (a5 + 8 == result)
  {
LABEL_14:
    LOBYTE(v13) = 0;
    goto LABEL_15;
  }

  v12 = *(result + 48);
  if (!v12)
  {
    __break(1u);
    return result;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
    }

    while (v12[++v14]);
    if (v15 == 4)
    {
      v17 = 0;
      do
      {
        LOBYTE(v13) = word_1BE80DBB2[v17] == v12[v17];
        v18 = word_1BE80DBB2[v17] != v12[v17] || v17 == 3;
        ++v17;
      }

      while (!v18);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  *(a1 + 176) = v13;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  v19 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a5, "t", 0x19uLL);
  if (a5 + 8 == v19 || !**(v19 + 48))
  {
    st_ino = 0;
    v22 = 0;
    LODWORD(v20) = 0;
  }

  else
  {
    morphun::tokenizer::TokenExtractor::getRequiredKeyAsPath(&__p, a2, a5, "t", 0x19uLL);
    v39 = *&__p.st_uid;
    *v38 = *&__p.st_dev;
    v20 = HIBYTE(*&__p.st_uid);
    st_ino = __p.st_ino;
    v22 = *&__p.st_dev;
  }

  memset(&v41, 0, sizeof(v41));
  if ((v20 & 0x80u) == 0)
  {
    v23 = v38;
  }

  else
  {
    v23 = v22;
  }

  if ((v20 & 0x80u) == 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = st_ino;
  }

  morphun::util::StringViewUtils::convert(&v41, v23, v24);
  v25 = &morphun::tokenizer::tokenizersMecab + 96 * a3;
  v26 = pthread_mutex_lock((v25 + 32));
  if (!*(v25 + 2))
  {
    size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    v28 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v29 = morphun::util::ResourceLocator::APPLE_FRAMEWORKS_ROOT_DIRECTORY(v26);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, v29);
      if ((__p.st_gid & 0x80000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = *&__p.st_dev;
      }

      if ((__p.st_gid & 0x80000000) == 0)
      {
        st_gid_high = HIBYTE(__p.st_gid);
      }

      else
      {
        st_gid_high = __p.st_ino;
      }

      morphun::util::StringViewUtils::convert(&v41, p_p, st_gid_high);
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      std::string::append(&v41, *(v25 + 3));
      v28 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    memset(&__p, 0, sizeof(__p));
    if (v28 >= 0)
    {
      v32 = &v41;
    }

    else
    {
      v32 = v41.__r_.__value_.__r.__words[0];
    }

    if (stat(v32, &__p) || (__p.st_mode & 0xF000) != 0x4000)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v41;
      }

      else
      {
        v36 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v41.__r_.__value_.__r.__words[1];
      }

      morphun::util::StringViewUtils::to_u16string(v36, v37, &v40);
      std::basic_string<char16_t>::append(&v40, L" was not found", 0xEuLL);
      *&__p.st_dev = *&v40.__r_.__value_.__l.__data_;
      *&__p.st_uid = *(&v40.__r_.__value_.__l + 2);
      memset(&v40, 0, sizeof(v40));
      morphun::exception::FileNotFoundException::FileNotFoundException(exception, &__p.st_dev);
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v41;
    }

    else
    {
      v33 = v41.__r_.__value_.__r.__words[0];
    }

    *(v25 + 2) = strdup(v33);
  }

  pthread_mutex_unlock((v25 + 32));
  v34 = morphun::tokenizer::checkoutCachedMecabTokenizer(a3);
  morphun::tokenizer::checkinCachedMecabTokenizer(v34, a3);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  return a1;
}

void sub_1BE668D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v37 & 1) == 0)
    {
LABEL_8:
      pthread_mutex_unlock((v36 + 32));
      if (a27 < 0)
      {
        operator delete(a22);
      }

      if (a14 < 0)
      {
        operator delete(a9);
      }

      icu4cxx::UnicodeSet::~UnicodeSet(v34);
      morphun::tokenizer::TokenExtractor::~TokenExtractor(v33, off_1F3CD9CA0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v35);
  goto LABEL_8;
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_DefinitenessLookupFunction::determine(uint64_t a1@<X0>, uint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, __p);
  v6 = HIBYTE(v17);
  v7 = SHIBYTE(v17);
  if (v17 < 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    *&a3->__r_.__value_.__l.__data_ = *__p;
    a3->__r_.__value_.__r.__words[2] = v17;
    return;
  }

  v15 = 0;
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

  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a1 + 208), &v15, v9, v10);
  if (CombinedBinaryType)
  {
    if ((*(a1 + 216) & v15) != 0)
    {
      v12 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(CombinedBinaryType);
      goto LABEL_17;
    }
  }

  else
  {
    v13 = std::basic_string<char16_t>::starts_with[abi:se200100](a2, word_1BE80F51E);
    if ((v13 & 1) != 0 || (v13 = std::basic_string<char16_t>::starts_with[abi:se200100](a2, word_1BE80F4FC), v13))
    {
      v12 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(v13);
LABEL_17:
      if (*(v12 + 23) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(a3, *v12, *(v12 + 8));
      }

      else
      {
        v14 = *v12;
        a3->__r_.__value_.__r.__words[2] = *(v12 + 16);
        *&a3->__r_.__value_.__l.__data_ = v14;
      }

      goto LABEL_21;
    }
  }

  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
LABEL_21:
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE668F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_DefinitenessLookupFunction::~HeGrammarSynthesizer_DefinitenessLookupFunction(morphun::grammar::synthesis::HeGrammarSynthesizer_DefinitenessLookupFunction *this)
{
  *this = &off_1F3CE61E8;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE61E8;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 1) = &unk_1F3CD2000;
}

uint64_t morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleElidedFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    v6 = v4;
    v7 = morphun::util::LocaleUtils::FRENCH(v4);
    isStartsWithVowel = morphun::dictionary::PhraseProperties::isStartsWithVowel(v7, v6);
    v9 = *(*a1 + 32);
    if (isStartsWithVowel)
    {
      v10 = a1 + 72;
    }

    else
    {
      v10 = a1 + 48;
    }
  }

  else
  {
    v10 = a1 + 24;
    v9 = *(*a1 + 32);
  }

  return v9(a1, a2, v10);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleElidedFunction::~FrGrammarSynthesizer_ArticleElidedFunction(void **this)
{
  *this = &unk_1F3CD48F8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD48F8;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

std::basic_string<char16_t> *morphun::grammar::synthesis::FrGrammarSynthesizer_ArticleElidedFunction::FrGrammarSynthesizer_ArticleElidedFunction(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  a1->__r_.__value_.__r.__words[0] = &off_1F3CE6B00;
  v10 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDB9B8, a2, a3 != 0, 0);
  v10->__r_.__value_.__r.__words[0] = &unk_1F3CD48F8;
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(v10 + 1, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    v10[1].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&v10[1].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a5 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1 + 2, *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    a1[2].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v12;
  }

  if (*(a6 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1 + 3, *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    a1[3].__r_.__value_.__r.__words[2] = *(a6 + 2);
    *&a1[3].__r_.__value_.__l.__data_ = v13;
  }

  return a1;
}

void sub_1BE6693F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void morphun::exception::IndexOutOfBoundsException::~IndexOutOfBoundsException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(morphun::exception::IndexOutOfBoundsException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0978;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0978;
  return result;
}

void *morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0978;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0978;
  return result;
}

uint64_t morphun::tokenizer::locale::fi::FiTokenExtractorIterator::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 132) = 0;
  result = morphun::tokenizer::ICUTokenExtractorIterator::reset(a1 + 16);
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 128) = 0;
  return result;
}

uint64_t morphun::tokenizer::locale::fi::FiTokenExtractorIterator::getNextBoundary(morphun::tokenizer::locale::fi::FiTokenExtractorIterator *this)
{
  v3 = (this + 104);
  v2 = *(this + 13);
  v4 = *(this + 32);
  v5 = (*(this + 14) - v2) >> 2;
  if (v4 >= v5)
  {
    *(this + 14) = v2;
    *(this + 32) = 0;
    v7 = *(this + 3);
    v8 = ubrk_next();
    if (v8 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = v8;
    v9 = *(this + 33);
    v10 = (v8 - v9);
    if (v10 < 4)
    {
      goto LABEL_32;
    }

    if (*(this + 79) < 0)
    {
      **(this + 7) = 0;
      *(this + 8) = 0;
    }

    else
    {
      *(this + 28) = 0;
      *(this + 79) = 0;
    }

    v11 = *(this + 5);
    v12 = *(this + 6);
    std::basic_string<char16_t>::reserve((this + 56), v10);
    if (v6 > v9)
    {
      v13 = (v11 + 2 * v9);
      v14 = v6 - v9;
      if (v12 >= v9)
      {
        v15 = v12 - v9;
      }

      else
      {
        v15 = 0;
      }

      while (v15)
      {
        v16 = *v13++;
        v17 = MEMORY[0x1BFB495D0](v16);
        morphun::util::StringUtils::appendCodePoint((this + 56), v17);
        --v15;
        if (!--v14)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_44;
    }

LABEL_16:
    v18 = this + 80;
    std::basic_string<char16_t>::operator=((this + 80), (this + 56));
    morphun::util::StringUtils::reverse(this + 80);
    LODWORD(v19) = *(this + 79);
    if ((v19 & 0x80000000) != 0)
    {
      v21 = *(this + 7);
      v19 = *(this + 8);
      v20 = v19;
    }

    else
    {
      v20 = *(this + 79);
      v21 = this + 56;
    }

    v22 = *(this + 103);
    if ((v22 & 0x8000000000000000) != 0)
    {
      v18 = *(this + 10);
      v22 = *(this + 11);
    }

    morphun::tokenizer::locale::fi::FiSegment::FiSegment(v37, *(this + 1), v21, v20, v18, v22, 0, v19, 1);
    if (v38 == 1)
    {
      morphun::tokenizer::locale::fi::FiSegment::addBoundaries(v37, v3);
    }

    else if (v19 >= 6)
    {
      v34 = v37;
      v35 = -998637568;
      v36 = v38;
      morphun::tokenizer::locale::fi::FiSuffixSplit::addBoundaries(&v34, v3, 0);
      if ((v36 & 1) == 0 && v19 != 6)
      {
        morphun::tokenizer::locale::fi::FiCompound::FiCompound(v33, &v34);
        *(this + 14) = *(this + 13);
        morphun::tokenizer::locale::fi::FiCompound::addBoundaries(v33, 14, v3);
      }
    }

    v23 = *(this + 13);
    v24 = *(this + 14);
    if (v23 == v24)
    {
LABEL_32:
      *(this + 33) = v6;
      return v6;
    }

    v25 = *(this + 13);
    do
    {
      *v25++ += *(this + 33);
    }

    while (v25 != v24);
    v26 = *(this + 15);
    if (v24 >= v26)
    {
      v28 = v24 - v23 + 1;
      if (v28 >> 62)
      {
        goto LABEL_45;
      }

      v29 = v26 - v23;
      if (v29 >> 1 > v28)
      {
        v28 = v29 >> 1;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v30 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v30);
      }
    }

    else
    {
      *v24 = v6;
      v27 = v24 + 1;
      *(this + 14) = v27;
      v31 = *(this + 32);
      *(this + 32) = v31 + 1;
      *(this + 33) = v6;
      if (v31 < v27 - v23)
      {
        return v23[v31];
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  *(this + 32) = v4 + 1;
  if (v5 <= v4)
  {
    goto LABEL_44;
  }

  return *(v2 + 4 * v4);
}

void morphun::tokenizer::locale::fi::FiTokenExtractorIterator::~FiTokenExtractorIterator(morphun::tokenizer::locale::fi::FiTokenExtractorIterator *this)
{
  morphun::tokenizer::locale::fi::FiTokenExtractorIterator::~FiTokenExtractorIterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD0328;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator((this + 16));
}

uint64_t morphun::util::UnicodeSetUtils::containsSome(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  LODWORD(v6) = 0;
  while (1)
  {
    v7 = v6;
    if (v6 >= a3)
    {
      return v7 < a3;
    }

    if (a3 <= v6)
    {
      goto LABEL_17;
    }

    v6 = v6 + 1;
    v8 = *(a2 + 2 * v7);
    if ((v8 & 0xFC00) == 0xD800 && v6 != a3)
    {
      break;
    }

LABEL_15:
    result = MEMORY[0x1BFB49A20](*v5, v8);
    if (result)
    {
      return v7 < a3;
    }
  }

  if (a3 > v6)
  {
    v10 = *(a2 + 2 * v6);
    v11 = (v10 & 0xFC00) == 56320;
    v12 = v10 + (v8 << 10) - 56613888;
    if (v11)
    {
      LODWORD(v6) = v7 + 2;
    }

    if (v11)
    {
      v8 = v12;
    }

    else
    {
      v8 = *(a2 + 2 * v7);
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t morphun::util::UnicodeSetUtils::removeSetFromString(uint64_t a1, void *a2, uint64_t a3, std::basic_string<char16_t>::size_type a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  morphun::util::UnicodeSetUtils::replaceSetFromString(a1, a2, a3, a4, __p, 0);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1BE669BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::UnicodeSetUtils::replaceSetFromString(uint64_t a1, void *a2, uint64_t a3, std::basic_string<char16_t>::size_type a4, const std::basic_string<char16_t>::value_type *a5, std::basic_string<char16_t>::size_type a6)
{
  if ((*(npc<std::basic_string<char16_t>>(a1) + 23) & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
LABEL_4:
    v12 = 10;
    goto LABEL_5;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v12 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
LABEL_5:
  if (a4 >= v12)
  {
    std::basic_string<char16_t>::reserve(a1, a4);
  }

  if (a4 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = morphun::util::StringViewUtils::codePointAt(a3, a4, v13);
      if (MEMORY[0x1BFB49A20](*a2, v14))
      {
        if (a6)
        {
          v15 = npc<std::basic_string<char16_t>>(a1);
          std::basic_string<char16_t>::append(v15, a5, a6);
        }
      }

      else
      {
        morphun::util::StringUtils::appendCodePoint(a1, v14);
      }

      if (v14 < 0x10000)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      v13 += v16;
    }

    while (v13 < a4);
  }

  return a1;
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
  memset(&v83, 0, sizeof(v83));
  v4 = *(v3 + 8);
  __str = v3;
  if (*(v3 + 23) >= 0)
  {
    v5 = *(v3 + 23);
  }

  else
  {
    v3 = *v3;
    v5 = v4;
  }

  if (v5)
  {
    v6 = 2 * v5;
    v7 = v3;
    v8 = (v3 + 2 * v5);
    while (*v7 != 44)
    {
      ++v7;
      v6 -= 2;
      if (!v6)
      {
        v7 = (v3 + 2 * v5);
        break;
      }
    }

    v15 = v7 == v8;
    v9 = v7 == v8;
    if (v15)
    {
      v7 = 0;
    }

    v10 = (v7 - v3) == -2 || v9;
  }

  else
  {
    v10 = 1;
  }

  v65 = v10;
  v11 = morphun::util::StringViewUtils::trim(v3, v5);
  morphun::util::StringViewUtils::split(v11, v12, &word_1BE80F394, 1, &v81);
  if (v65)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3) > 1)
    {
      memset(&v80, 0, sizeof(v80));
      memset(&v84, 0, sizeof(v84));
      morphun::grammar::synthesis::FiGrammarSynthesizer::getPossibleCombinations(&v81);
    }

    morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::getLocativeString(&__p, a1, __str, __str);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    v83 = __p;
    goto LABEL_105;
  }

  memset(&v80, 0, sizeof(v80));
  std::vector<std::basic_string<char16_t>>::reserve(&v80, 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3));
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v14 = __str->__r_.__value_.__r.__words[0];
  if (size >= 0)
  {
    v14 = __str;
  }

  if (size < 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  __p.__r_.__value_.__r.__words[2] = ",";
  v75 = 1;
  v76 = v14;
  v77 = size;
  v78 = size;
  v79 = 0;
  if (size >= 1)
  {
    morphun::util::DelimitedStringIterator::getNext(&__p);
  }

  while (1)
  {
    v15 = v79 >= v78 && __p.__r_.__value_.__l.__size_ == 0;
    if (v15)
    {
      break;
    }

    v17 = morphun::util::StringViewUtils::trim(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v18 = v80.__r_.__value_.__l.__size_;
    if (v80.__r_.__value_.__l.__size_ >= v80.__r_.__value_.__r.__words[2])
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]) >> 3) + 1;
      if (v20 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      if (0x5555555555555556 * ((v80.__r_.__value_.__r.__words[2] - v80.__r_.__value_.__r.__words[0]) >> 3) > v20)
      {
        v20 = 0x5555555555555556 * ((v80.__r_.__value_.__r.__words[2] - v80.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v80.__r_.__value_.__r.__words[2] - v80.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      v86 = &v80;
      if (v21)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v21);
      }

      v84.__r_.__value_.__r.__words[0] = 0;
      v84.__r_.__value_.__l.__size_ = 8 * ((v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]) >> 3);
      v84.__r_.__value_.__r.__words[2] = v84.__r_.__value_.__l.__size_;
      v85 = 0;
      std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:se200100]<std::basic_string<char16_t>,std::u16string_view,void,0>(v84.__r_.__value_.__l.__size_, v17, v16);
      v19 = v84.__r_.__value_.__r.__words[2] + 24;
      v22 = (v84.__r_.__value_.__l.__size_ - (v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]));
      memcpy(v22, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]);
      v23 = v80.__r_.__value_.__r.__words[0];
      v24 = v80.__r_.__value_.__r.__words[2];
      v80.__r_.__value_.__r.__words[0] = v22;
      v80.__r_.__value_.__l.__size_ = v19;
      v80.__r_.__value_.__r.__words[2] = v85;
      v84.__r_.__value_.__r.__words[2] = v23;
      v85 = v24;
      v84.__r_.__value_.__r.__words[0] = v23;
      v84.__r_.__value_.__l.__size_ = v23;
      std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v84);
    }

    else
    {
      std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:se200100]<std::basic_string<char16_t>,std::u16string_view,void,0>(v80.__r_.__value_.__l.__size_, v17, v16);
      v19 = v18 + 24;
    }

    v80.__r_.__value_.__l.__size_ = v19;
    morphun::util::DelimitedStringIterator::operator++(&__p);
  }

  memset(&v84, 0, sizeof(v84));
  std::vector<std::basic_string<char16_t>>::reserve(&v84, 0xAAAAAAAAAAAAAAABLL * ((v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0]) >> 3));
  v25 = v80.__r_.__value_.__l.__size_;
  v26 = v80.__r_.__value_.__r.__words[0];
  if (v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0] == 48)
  {
    v27 = *(a1 + 8);
    v28 = *(v80.__r_.__value_.__r.__words[0] + 23);
    if (v28 < 0)
    {
      v29 = *v80.__r_.__value_.__l.__data_;
      v28 = *(v80.__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v29 = v80.__r_.__value_.__r.__words[0];
    }

    v34 = *(a1 + 40);
    __p.__r_.__value_.__r.__words[0] = 0;
    if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v27, &__p, v29, v28))
    {
      v35 = (__p.__r_.__value_.__r.__words[0] & v34) == v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v26;
    if (v35)
    {
      v37 = *(a1 + 8);
      v38 = *(v26 + 47);
      if (v38 < 0)
      {
        v39 = *(v26 + 24);
        v38 = *(v26 + 32);
      }

      else
      {
        v39 = (v26 + 24);
      }

      v40 = *(a1 + 16);
      __p.__r_.__value_.__r.__words[0] = 0;
      CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v37, &__p, v39, v38);
      if ((__p.__r_.__value_.__r.__words[0] & v40) == 0 || CombinedBinaryType == 0)
      {
        v36 = v26;
      }

      else
      {
        v36 = v26 + 24;
      }
    }

    morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::getLocativeString(&v73, a1, v26, v36);
    v43 = v84.__r_.__value_.__l.__size_;
    if (v84.__r_.__value_.__l.__size_ >= v84.__r_.__value_.__r.__words[2])
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v84.__r_.__value_.__l.__size_ - v84.__r_.__value_.__r.__words[0]) >> 3) + 1;
      if (v45 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      if (0x5555555555555556 * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3) > v45)
      {
        v45 = 0x5555555555555556 * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v46 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v46 = v45;
      }

      v76 = &v84;
      if (v46)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v46);
      }
    }

    else if (v84.__r_.__value_.__l.__size_)
    {
      v44 = *&v73.__r_.__value_.__l.__data_;
      *(v84.__r_.__value_.__l.__size_ + 16) = *(&v73.__r_.__value_.__l + 2);
      *v43 = v44;
      v84.__r_.__value_.__l.__size_ = v43 + 24;
      morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::getLocativeString(&v73, a1, v26 + 24, v26 + 24);
      v47 = v84.__r_.__value_.__l.__size_;
      if (v84.__r_.__value_.__l.__size_ >= v84.__r_.__value_.__r.__words[2])
      {
        v49 = 0xAAAAAAAAAAAAAAABLL * ((v84.__r_.__value_.__l.__size_ - v84.__r_.__value_.__r.__words[0]) >> 3) + 1;
        if (v49 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
        }

        if (0x5555555555555556 * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3) > v49)
        {
          v49 = 0x5555555555555556 * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v50 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v50 = v49;
        }

        v76 = &v84;
        if (v50)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v50);
        }
      }

      else if (v84.__r_.__value_.__l.__size_)
      {
        v48 = *&v73.__r_.__value_.__l.__data_;
        *(v84.__r_.__value_.__l.__size_ + 16) = *(&v73.__r_.__value_.__l + 2);
        *v47 = v48;
        v84.__r_.__value_.__l.__size_ = v47 + 24;
        goto LABEL_97;
      }
    }
  }

  else
  {
    if (v80.__r_.__value_.__r.__words[0] == v80.__r_.__value_.__l.__size_)
    {
LABEL_97:
      if (asc_1BE80F1FC[0])
      {
        v51 = 0;
        do
        {
          v52 = v51 + 1;
        }

        while (asc_1BE80F1FC[++v51]);
      }

      else
      {
        v52 = 0;
      }

      morphun::util::StringViewUtils::join(L", ", v52, &v84, &__p);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      v83 = __p;
      __p.__r_.__value_.__r.__words[0] = &v84;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v80;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
LABEL_105:
      v54 = SHIBYTE(v83.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v54 = v83.__r_.__value_.__l.__size_;
        if (v83.__r_.__value_.__l.__size_)
        {
          v55 = v83.__r_.__value_.__r.__words[0];
LABEL_110:
          morphun::util::StringViewUtils::trim(v55, v54);
          if (v56)
          {
            goto LABEL_154;
          }
        }
      }

      else if (*(&v83.__r_.__value_.__s + 23))
      {
        v55 = &v83;
        goto LABEL_110;
      }

      if (morphun::util::gLogLevel <= 1)
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v70, "N");
        v57 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
        if (v57 >= 0)
        {
          v58 = __str;
        }

        else
        {
          v58 = __str->__r_.__value_.__r.__words[0];
        }

        if (v57 >= 0)
        {
          v59 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = __str->__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v70, v58, v59);
        v71 = v70;
        memset(&v70, 0, sizeof(v70));
        std::basic_string<char16_t>::append(&v71, L" in locative (", 0xEuLL);
        v72 = v71;
        memset(&v71, 0, sizeof(v71));
        morphun::grammar::synthesis::FiGrammarSynthesizer::toString(*(a1 + 60), &__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v61 = __dst.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v72, p_dst, v61);
        v73 = v72;
        memset(&v72, 0, sizeof(v72));
        std::basic_string<char16_t>::append(&v73, "/", 1uLL);
        v80 = v73;
        memset(&v73, 0, sizeof(v73));
        morphun::grammar::synthesis::FiGrammarSynthesizer::toString(*(a1 + 56), v67);
        if ((v68 & 0x80u) == 0)
        {
          v62 = v67;
        }

        else
        {
          v62 = v67[0];
        }

        if ((v68 & 0x80u) == 0)
        {
          v63 = v68;
        }

        else
        {
          v63 = v67[1];
        }

        std::basic_string<char16_t>::append(&v80, v62, v63);
        v84 = v80;
        memset(&v80, 0, sizeof(v80));
        std::basic_string<char16_t>::append(&v84, ")", 1uLL);
        __p = v84;
        memset(&v84, 0, sizeof(v84));
        if (morphun::util::gLogLevel <= 1)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          morphun::util::logToTopOfStackLogger(1, 0, p_p);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (v68 < 0)
        {
          operator delete(v67[0]);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }
      }

      std::basic_string<char16_t>::operator=(&v83, __str);
LABEL_154:
      operator new();
    }

    while (1)
    {
      morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::getLocativeString(&v73, a1, v26, v26);
      v30 = v84.__r_.__value_.__l.__size_;
      if (v84.__r_.__value_.__l.__size_ >= v84.__r_.__value_.__r.__words[2])
      {
        break;
      }

      if (!v84.__r_.__value_.__l.__size_)
      {
        goto LABEL_159;
      }

      v31 = *&v73.__r_.__value_.__l.__data_;
      *(v84.__r_.__value_.__l.__size_ + 16) = *(&v73.__r_.__value_.__l + 2);
      *v30 = v31;
      v84.__r_.__value_.__l.__size_ = v30 + 24;
      v26 += 24;
      if (v26 == v25)
      {
        goto LABEL_97;
      }
    }

    v32 = 1 - 0x5555555555555555 * ((v84.__r_.__value_.__l.__size_ - v84.__r_.__value_.__r.__words[0]) >> 3);
    if (v32 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }

    if (0x5555555555555556 * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3) > v32)
    {
      v32 = 0x5555555555555556 * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v84.__r_.__value_.__r.__words[2] - v84.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v33 = v32;
    }

    v76 = &v84;
    if (v33)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v33);
    }
  }

LABEL_159:
  __break(1u);
}

void sub_1BE66ADC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void ***a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void **a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  a30 = &a37;
  std::vector<std::vector<std::vector<std::basic_string<char16_t>>>>::__destroy_vector::operator()[abi:se200100](&a30);
  a37 = &a44;
  std::vector<std::vector<std::vector<std::basic_string<char16_t>>>>::__destroy_vector::operator()[abi:se200100](&a37);
  a44 = (v56 - 128);
  std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&a44);
  a44 = (v56 - 208);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a44);
  *(v56 - 208) = v56 - 184;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v56 - 208));
  if (*(v56 - 137) < 0)
  {
    operator delete(*(v56 - 160));
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::getLocativeString(std::basic_string<char16_t> *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if (v9 >= 0)
  {
    v11 = *(a4 + 23);
  }

  else
  {
    v11 = *(a4 + 8);
  }

  morphun::dictionary::DictionaryMetaData::getPropertyValues(v8, v10, v11, "i", 0xAuLL, v29);
  if (v29[0] != v29[1] && (std::basic_string<char16_t>::ends_with[abi:se200100](v29[0], "y") & 1) != 0 || ((v12 = a2[1], v13 = *(a4 + 23), v13 >= 0) ? (v14 = a4) : (v14 = *a4), v13 >= 0 ? (v15 = *(a4 + 23)) : (v15 = *(a4 + 8)), (v16 = a2[3], v30 = 0, morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v12, &v30, v14, v15)) ? (v17 = (v30 & v16) == v16) : (v17 = 0), v17))
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = a2[1];
  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 23);
  }

  else
  {
    v22 = *(a4 + 8);
  }

  v23 = a2[4];
  v30 = 0;
  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v19, &v30, v21, v22);
  v25 = a2[6];
  if (!v25)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v26 = (v23 & ~v30) != 0 || CombinedBinaryType == 0;
  v27 = 60;
  if (!v26)
  {
    v27 = 56;
  }

  morphun::grammar::synthesis::FiGrammarSynthesizer_FiDisplayFunction::inflectString(a1, v25, a3, *(a2 + v27), v18, 0);
  v30 = v29;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v30);
}

void sub_1BE66B25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  __cxa_free_exception(v13);
  a13 = &a10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a13);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LocativeBasedLookupFunction::FiGrammarSynthesizer_LocativeBasedLookupFunction(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v9 = *a2;
  *a1 = *a2;
  *(a1 + *(v9 - 56)) = a2[1];
  v10 = a2[2];
  *(a1 + *(*a1 - 40)) = v10;
  v11 = morphun::util::LocaleUtils::FINNISH(v10);
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(v11, v12);
  if (Dictionary)
  {
    *(a1 + 16) = 0u;
    *(a1 + 8) = Dictionary;
    *(a1 + 32) = 0u;
    *(a1 + 48) = a3;
    *(a1 + 56) = a5;
    *(a1 + 60) = a4;
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"noun");
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v16, L"proper-noun");
    memset(__p, 0, 24);
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(__p, &__dst, __p, 2uLL);
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}