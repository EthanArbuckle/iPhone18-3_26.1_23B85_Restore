uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, void *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 168))(a1, v6);
    if ((*(*a1 + 152))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(a2, v7);
        (*(*a1 + 232))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 200))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 176))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 152))(a1));
    }

    v11 = *(*a1 + 184);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_8006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_i32[0];
        v46 = a2 - 1;
        if (v48 >= v12->n128_u32[0])
        {
          return result;
        }

LABEL_77:
        v77 = *v12;
        *v12 = *v46;
        result = v77;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = v12 + 1;
      v44 = v12[1].n128_i32[0];
      v47 = a2[-1].n128_u32[0];
      v46 = a2 - 1;
      v45 = v47;
      if (v44 < v12->n128_u32[0])
      {
        if (v45 < v44)
        {
          goto LABEL_77;
        }

        v76 = *v12;
        *v12 = *v43;
        result = v76;
        *v43 = v76;
        if (v46->n128_u32[0] >= v12[1].n128_u32[0])
        {
          return result;
        }

        result = *v43;
        *v43 = *v46;
LABEL_78:
        *v46 = result;
        return result;
      }

      if (v45 >= v44)
      {
        return result;
      }

      result = *v43;
      *v43 = *v46;
      *v46 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v12, v12 + 1, &v12[2], v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, a2);
      }

      else if (v12 != a2)
      {
        v52 = v12 + 1;
        while (v52 != a2)
        {
          v53 = v52;
          v54 = a1[1].n128_u64[0];
          if (v54 < a1->n128_u32[0])
          {
            v55 = a1[1].n128_u64[1];
            v56 = v53;
            do
            {
              result = v56[-1];
              *v56 = result;
              v57 = v56[-2].n128_i32[0];
              --v56;
            }

            while (v54 < v57);
            v56->n128_u64[0] = v54;
            v56->n128_u64[1] = v55;
          }

          v52 = v53 + 1;
          a1 = v53;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = v9->n128_u32[0];
    if (v15 >= 0x81)
    {
      v19 = v16->n128_u32[0];
      if (v16->n128_u32[0] >= v12->n128_u32[0])
      {
        if (v18 < v19)
        {
          v61 = *v16;
          *v16 = *v9;
          *v9 = v61;
          if (v16->n128_u32[0] < v12->n128_u32[0])
          {
            v62 = *v12;
            *v12 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v65 = *v12;
          *v12 = *v16;
          *v16 = v65;
          if (v9->n128_u32[0] >= v16->n128_u32[0])
          {
            goto LABEL_28;
          }

          v59 = *v16;
          *v16 = *v9;
        }

        else
        {
          v59 = *v12;
          *v12 = *v9;
        }

        *v9 = v59;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = v16[-1].n128_i32[0];
      v24 = v10->n128_u32[0];
      if (v23 >= v12[1].n128_u32[0])
      {
        if (v24 < v23)
        {
          v66 = *v22;
          *v22 = *v10;
          *v10 = v66;
          if (v22->n128_u32[0] < v21->n128_u32[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (v10->n128_u32[0] >= v22->n128_u32[0])
          {
            goto LABEL_40;
          }

          v68 = *v22;
          *v22 = *v10;
          v25 = v68;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v31 = v16[1].n128_i32[0];
      v29 = v16 + 1;
      v30 = v31;
      v32 = v11->n128_u32[0];
      if (v31 >= v12[2].n128_u32[0])
      {
        if (v32 < v30)
        {
          v69 = *v29;
          *v29 = *v11;
          *v11 = v69;
          if (v29->n128_u32[0] < v28->n128_u32[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (v11->n128_u32[0] >= v29->n128_u32[0])
          {
            goto LABEL_49;
          }

          v70 = *v29;
          *v29 = *v11;
          v33 = v70;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = v17->n128_u32[0];
      v37 = v29->n128_u32[0];
      if (v17->n128_u32[0] >= v22->n128_u32[0])
      {
        if (v37 < v36)
        {
          v72 = *v17;
          *v17 = *v29;
          *v29 = v72;
          if (v17->n128_u32[0] < v22->n128_u32[0])
          {
            v73 = *v22;
            *v22 = *v17;
            *v17 = v73;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v74 = *v22;
        *v22 = *v17;
        *v17 = v74;
        if (v29->n128_u32[0] >= v17->n128_u32[0])
        {
LABEL_58:
          v75 = *v12;
          *v12 = *v17;
          *v17 = v75;
          goto LABEL_59;
        }

        v71 = *v17;
        *v17 = *v29;
      }

      else
      {
        v71 = *v22;
        *v22 = *v29;
      }

      *v29 = v71;
      goto LABEL_58;
    }

    v20 = v12->n128_u32[0];
    if (v12->n128_u32[0] >= v17->n128_u32[0])
    {
      if (v18 < v20)
      {
        v63 = *v12;
        *v12 = *v9;
        *v9 = v63;
        if (v12->n128_u32[0] < v17->n128_u32[0])
        {
          v64 = *v17;
          *v17 = *v12;
          *v12 = v64;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v60 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v60;
        goto LABEL_59;
      }

      v67 = *v17;
      *v17 = *v12;
      *v12 = v67;
      if (v9->n128_u32[0] < v12->n128_u32[0])
      {
        v60 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_u32[0] >= v12->n128_u32[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v12, v38, v39);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>((v38 + 1), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = v12 + 1;
  v49 = v12[1].n128_i32[0];
  v50 = v12 + 2;
  v51 = v12[2].n128_i32[0];
  if (v49 >= v12->n128_u32[0])
  {
    if (v51 < v49)
    {
      result = *v43;
      *v43 = *v50;
      *v50 = result;
      if (v12[1].n128_u32[0] < v12->n128_u32[0])
      {
        v79 = *v12;
        *v12 = *v43;
        result = v79;
        *v43 = v79;
      }
    }
  }

  else
  {
    if (v51 < v49)
    {
      v78 = *v12;
      *v12 = *v50;
      result = v78;
      goto LABEL_105;
    }

    v80 = *v12;
    *v12 = *v43;
    result = v80;
    *v43 = v80;
    if (v51 < v12[1].n128_u32[0])
    {
      result = *v43;
      *v43 = *v50;
LABEL_105:
      *v50 = result;
    }
  }

  if (v9->n128_u32[0] >= v50->n128_u32[0])
  {
    return result;
  }

  result = *v50;
  *v50 = *v9;
  *v9 = result;
  if (v50->n128_u32[0] >= v43->n128_u32[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v50;
  *v50 = result;
LABEL_109:
  if (v12[1].n128_u32[0] < v12->n128_u32[0])
  {
    v81 = *v12;
    *v12 = *v43;
    result = v81;
    *v43 = v81;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(__n128 *a1, __n128 *a2, int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
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

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 < *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(_OWORD *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (v3 >= *(a2 - 4))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 4;
    }

    while (v3 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[4];
      v4 += 4;
    }

    while (v3 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2-- - 4);
    }

    while (v3 < v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[4];
      v4 += 4;
    }

    while (v3 >= v8);
    do
    {
      v9 = *(a2-- - 4);
    }

    while (v3 < v9);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v4 > v5);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 4);
    }

    while (v4 <= v9);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 4);
    }

    while (v4 <= v8);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 4);
      }

      while (v4 > v13);
      do
      {
        v14 = *(v11-- - 4);
      }

      while (v4 <= v14);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_i32[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] >= v18->n128_u32[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v18->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_i32[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u32[0];
    v35 = *v30;
    if (v35 < v34)
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v35 >= v37)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, v11--);
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
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, a1);
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
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = *(v16 + 8);
            v19 = v16 + 2;
            if (*(v19 - 4) >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[v24];
            v26 = *v17;
            if (*v25 < *v17)
            {
              v27 = *(v17 + 1);
              do
              {
                v28 = v25;
                *v17 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[v24];
                v17 = v28;
              }

              while (*v25 < v26);
              *v28 = v26;
              *(v28 + 1) = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && v10 < *(v8 + 2))
      {
        v10 = *(v8++ + 2);
        v7 = v9;
      }

      v11 = *a4;
      v12 = *a4;
      if (v12 <= v10)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v15 = 2 * v7 + 2;
          v16 = *v8;
          if (v15 < a3 && v16 < *(v8 + 2))
          {
            v16 = *(v8++ + 2);
            v14 = v15;
          }

          a4 = v13;
          v7 = v14;
        }

        while (v12 <= v16);
        *v13 = v11;
      }
    }
  }

  return result;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Determinize(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 88) == 1)
  {
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Determinize();
  }

  v4 = (*(**(a1 + 72) + 24))(*(a1 + 72));
  if (v4 != -1)
  {
    v5 = *(a1 + 204);
    LODWORD(v19) = v4;
    *(&v19 + 4) = v5;
    __p = 0;
    v17 = 0;
    v18 = 0;
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::push_back[abi:ne200100](&__p, &v19);
    if (fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetToStateId(a1, &__p))
    {
      __assert_rtn("Determinize", "determinize-star-inl.h", 314, "cur_id == 0 && Do not call Determinize twice.");
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      while (1)
      {
        v7 = *(a1 + 32);
        v19 = *(*(*(a1 + 8) + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7);
        *(a1 + 32) = v7 + 1;
        *(a1 + 40) = v6 - 1;
        std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
        fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessSubset(a1, &v19);
        if (a2 && *a2 == 1)
        {
          fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Debug(a1);
        }

        v9 = *(a1 + 84);
        if (v9 >= 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3) > v9)
        {
          break;
        }

        v6 = *(a1 + 40);
        if (!v6)
        {
          goto LABEL_18;
        }
      }

      if ((*(a1 + 89) & 1) == 0)
      {
        v12 = fst::cerr(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Determinization aborted since passed ", 37);
        v13 = *(a1 + 84);
        v14 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " states.\n", 9);
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "max-states reached in determinization");
      }

      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Determinize", "../subproject/libquasar/libkaldi/src/fstext/determinize-star-inl.h", 328);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Determinization terminated since passed ", 40);
        v10 = *(a1 + 84);
        v11 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " states, partial results will be generated.", 43);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }

      *(a1 + 90) = 1;
    }
  }

LABEL_18:
  *(a1 + 88) = 1;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Output(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Output();
  }

  if (a3)
  {
    *(a1 + 88) = 0;
    v34 = (a1 + 48);
    v6 = *(a1 + 56) - *(a1 + 48);
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::FreeMostMemory(a1);
  }

  else
  {
    v34 = (a1 + 48);
    v6 = *(a1 + 56) - *(a1 + 48);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  (*(*a2 + 216))(a2);
  if (!v7)
  {
    v32 = *(*a2 + 168);

    v32(a2, 0xFFFFFFFFLL);
    return;
  }

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 != (*(*a2 + 192))(a2))
      {
        fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Output();
      }

      ++v8;
    }

    while (v7 != v8);
    (*(*a2 + 168))(a2, 0);
    v9 = 0;
    v33 = v7 & 0x7FFFFFFF;
    while (1)
    {
      v10 = (*v34 + 24 * v9);
      v12 = *v10;
      v11 = v10[1];
      while (v12 != v11)
      {
        memset(&__p, 0, sizeof(__p));
        fst::StringRepository<int,int>::SeqOfId(a1 + 136, v12[1], &__p);
        begin = __p.__begin_;
        end = __p.__end_;
        if (v12[2] != -1)
        {
          if ((__p.__end_ - __p.__begin_) <= &dword_4)
          {
            v37 = v12[2];
            v18 = v9;
          }

          else
          {
            v16 = 0;
            v17 = v9;
            do
            {
              v18 = (*(*a2 + 192))(a2);
              v37 = v18;
              v19 = 0;
              if (!v16)
              {
                v19 = v12[3];
              }

              v36 = v19;
              v20 = *v12;
              if (v16)
              {
                v20 = 0;
              }

              LODWORD(p_p) = v20;
              HIDWORD(p_p) = __p.__begin_[v16];
              (*(*a2 + 200))(a2, v17, &p_p);
              begin = __p.__begin_;
              end = __p.__end_;
              v21 = v16 + 2;
              ++v16;
              v17 = v18;
            }

            while (v21 < __p.__end_ - __p.__begin_);
            v37 = v12[2];
            if ((__p.__end_ - __p.__begin_) > 1)
            {
              v22 = 0;
              v23 = 0;
LABEL_33:
              v36 = v23;
              if (v22)
              {
                v28 = *v12;
              }

              else
              {
                v28 = 0;
              }

              LODWORD(p_p) = v28;
              if (end == begin)
              {
                v29 = 0;
              }

              else
              {
                v29 = *(end - 1);
              }

              HIDWORD(p_p) = v29;
              (*(*a2 + 200))(a2, v18, &p_p);
              goto LABEL_40;
            }
          }

          v23 = v12[3];
          v22 = 1;
          goto LABEL_33;
        }

        v24 = v9;
        if (__p.__end_ == __p.__begin_)
        {
          goto LABEL_29;
        }

        v25 = 0;
        v26 = v9;
        do
        {
          v24 = (*(*a2 + 192))(a2);
          v37 = v24;
          v27 = 0;
          if (!v25)
          {
            v27 = v12[3];
          }

          v36 = v27;
          LODWORD(p_p) = 0;
          HIDWORD(p_p) = __p.__begin_[v25];
          (*(*a2 + 200))(a2, v26, &p_p);
          ++v25;
          v26 = v24;
        }

        while (v25 < __p.__end_ - __p.__begin_);
        v13.n128_u64[0] = 0;
        if (__p.__end_ == __p.__begin_)
        {
LABEL_29:
          v13.n128_u32[0] = v12[3];
        }

        (*(*a2 + 176))(a2, v24, v13);
LABEL_40:
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v12 += 4;
      }

      if (a3)
      {
        v30 = *v10;
        v10[1] = 0;
        v10[2] = 0;
        *v10 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      if (++v9 == v33)
      {
        if (a3)
        {
          goto LABEL_48;
        }

        return;
      }
    }
  }

  (*(*a2 + 168))(a2, 0);
  if (a3)
  {
LABEL_48:
    *&__p.__begin_ = *(a1 + 48);
    v31 = *(a1 + 64);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    __p.__end_cap_.__value_ = v31;
    fst::StringRepository<int,int>::Destroy(a1 + 136);
    p_p = &__p;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }
}

void sub_819A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::DeterminizerStar(uint64_t a1, uint64_t a2, int a3, char a4, float a5)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v10 = (*(*a2 + 88))(a2, 0);
  *(a1 + 92) = a5;
  *(a1 + 72) = v10;
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  *(a1 + 88) = 0;
  *(a1 + 89) = a4;
  *(a1 + 90) = 0;
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v11 = (*(*a2 + 152))(a2) / 2 + 3;
  }

  else
  {
    v11 = 20;
  }

  std::unordered_map<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const* const,int>>>::unordered_map(a1 + 96, v11, a1 + 91, (a1 + 92));
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = xmmword_218A50;
  return a1;
}

void sub_81B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::~deque[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const* const,int>>>::unordered_map(uint64_t a1, size_t a2, uint64_t a3, int *a4)
{
  v5 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = v5;
  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::~__split_buffer(a1);
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetToStateId(uint64_t a1, void *a2)
{
  __p = a2;
  v2 = std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>>>::find<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*>(a1 + 96, &__p);
  if (!v2)
  {
    operator new();
  }

  return *(v2 + 6);
}

void sub_81E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessSubset(fst *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  __p = 0;
  v6 = 0;
  v7 = 0;
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::EpsilonClosure(a1, v3, &__p);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessFinal(a1, &__p, v4);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessTransitions(a1, &__p, v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_81F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Debug(fst *a1)
{
  v2 = fst::cerr(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Debug function called (probably SIGUSR1 caught).\n", 49);
  memset(v52, 0, sizeof(v52));
  v53 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>>>::swap(v52, a1 + 96);
  v3 = std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(v52);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 7) - *(a1 + 6)) >> 3);
  v5 = v4 - 2;
  if (v4 <= 2)
  {
    v6 = fst::cerr(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Nothing to trace back");
    exit(1);
  }

  v7 = std::vector<int>::vector[abi:ne200100](v52, v4 - 1);
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 6);
    do
    {
      v10 = (v9 + 24 * v8);
      v11 = *v10;
      v12 = v10[1] - *v10;
      if (v12)
      {
        v13 = v12 >> 4;
        v14 = *&v52[0];
        if (v13 <= 1)
        {
          v13 = 1;
        }

        v15 = (v11 + 8);
        do
        {
          v17 = *v15;
          v15 += 4;
          v16 = v17;
          if (v5 >= v17 && v8 < v16)
          {
            *(v14 + 4 * v16) = v8;
          }

          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != v5);
  }

  v19 = 0;
  __p = 0;
  v50 = 0;
  v51 = 0;
  while (1)
  {
    if ((v5 - 1) > 0xFFFFFFFD)
    {
      if (v5 == -1)
      {
        v34 = fst::cerr(v7);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Traceback did not reach start state (possibly debug-code error)", 63);
      }

      v35 = fst::cerr(v7);
      begin = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Traceback below (or on standard error) in format ilabel (olabel olabel) ilabel (olabel) ...\n", 92);
      v37 = (v50 - __p) >> 3;
      if (v37 >= 1)
      {
        do
        {
          fst::cerr(begin);
          v38 = *(__p + 2 * v37 - 2);
          v39 = std::ostream::operator<<();
          LOBYTE(v48.__begin_) = 32;
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, &v48, 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "( ", 2);
          memset(&v48, 0, sizeof(v48));
          fst::StringRepository<int,int>::SeqOfId(a1 + 136, *(__p + 2 * v37 - 1), &v48);
          if (v48.__end_ != v48.__begin_)
          {
            v42 = 0;
            do
            {
              fst::cerr(v41);
              v43 = v48.__begin_[v42];
              v44 = std::ostream::operator<<();
              v54 = 32;
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, &v54, 1);
              ++v42;
            }

            while (v42 < v48.__end_ - v48.__begin_);
          }

          v45 = fst::cerr(v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ") ", 2);
          begin = v48.__begin_;
          if (v48.__begin_)
          {
            v48.__end_ = v48.__begin_;
            operator delete(v48.__begin_);
          }
        }

        while (v37-- > 1);
      }

      v47 = fst::cerr(begin);
      LOBYTE(v48.__begin_) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, &v48, 1);
      exit(1);
    }

    v20 = *(*&v52[0] + 4 * v5);
    v22 = *(*(a1 + 6) + 24 * v20);
    v21 = *(*(a1 + 6) + 24 * v20 + 8);
    v23 = 0;
    if (v21 == v22)
    {
      v26 = *(*(a1 + 6) + 24 * v20 + 8);
      goto LABEL_39;
    }

    v24 = (v21 - v22) >> 4;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v25 = (v22 + 4);
    while (v25[1] != v5)
    {
      ++v23;
      v25 += 4;
      if (v24 == v23)
      {
        v26 = *(*(a1 + 6) + 24 * v20 + 8);
        v21 = *(*(a1 + 6) + 24 * v20);
        v23 = v24;
        goto LABEL_39;
      }
    }

    v27 = *(v25 - 1);
    v28 = *v25;
    if (v19 >= v51)
    {
      v29 = (v19 - __p) >> 3;
      if ((v29 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v30 = (v51 - __p) >> 2;
      if (v30 <= v29 + 1)
      {
        v30 = v29 + 1;
      }

      if (v51 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v31 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      if (v31)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v31);
      }

      v32 = (8 * v29);
      *v32 = v27 | (v28 << 32);
      v19 = (8 * v29 + 8);
      v33 = v32 - (v50 - __p);
      memcpy(v33, __p, v50 - __p);
      v7 = __p;
      __p = v33;
      v50 = v19;
      v51 = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v19 = v27 | (v28 << 32);
      v19 += 8;
    }

    v50 = v19;
    v21 = *(*(a1 + 6) + 24 * v20);
    v26 = *(*(a1 + 6) + 24 * v20 + 8);
LABEL_39:
    LODWORD(v5) = v20;
    if (v23 == (v26 - v21) >> 4)
    {
      __assert_rtn("Debug", "determinize-star-inl.h", 848, "i != output_arcs_[last_state].size()");
    }
  }
}

void sub_82318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::TempArc,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::TempArc>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

int64x2_t std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::push_front(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 16) = *a2;
  result = vaddq_s64(a1[2], xmmword_218A60);
  a1[2] = result;
  return result;
}

__n128 std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>>>::find<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 3;
      v6 = v8 + v6 * v7 + 103333 * v9;
      v7 *= 23531;
    }

    while (v4 != v5);
  }

  v10 = *(a1 + 8);
  if (!*&v10)
  {
    return 0;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v10)
    {
      v13 = v6 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  for (i = *v14; i; i = *i)
  {
    v16 = i[1];
    if (v16 == v6)
    {
      if (fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual::operator()((a1 + 36), i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= *&v10 - 1;
      }

      if (v16 != v13)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual::operator()(float *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a3;
  if (v3 - *a2 != a3[1] - *a3)
  {
    return 0;
  }

  while (v4 < v3)
  {
    if (*v4 != *v5 || *(v4 + 4) != *(v5 + 4))
    {
      return 0;
    }

    v6 = *(v4 + 8);
    v7 = *(v5 + 8);
    if (v7 > (*a1 + v6) || v6 > (*a1 + v7))
    {
      return 0;
    }

    v4 += 12;
    v5 += 12;
  }

  return 1;
}

uint64_t std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::__init_with_size[abi:ne200100]<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element*,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_82824(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>>>::__emplace_unique_key_args<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::piecewise_construct_t const&,std::tuple<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const* const&>,std::tuple<>>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 3;
      v6 = v8 + v6 * v7 + 103333 * v9;
      v7 *= 23531;
    }

    while (v4 != v5);
  }

  v10 = *(a1 + 8);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v10)
    {
      v13 = v6 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v6)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if ((fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual::operator()((a1 + 36), v15[2], *a2) & 1) == 0)
  {
    goto LABEL_22;
  }

  return v15;
}

const void **std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>>::emplace_front<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *&>(a1, v11);
}

void sub_82D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>>::emplace_front<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result, v9);
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

void *std::__split_buffer<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>>::emplace_back<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result, v11);
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

void *std::__split_buffer<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *> &>::emplace_back<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result[4], v11);
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

void *std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>>::emplace_back<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *>(a1, &v10);
}

void sub_83208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *> &>::emplace_front<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int> *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result[4], v9);
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

uint64_t std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::EpsilonClosure(uint64_t a1, uint64_t *a2, void *a3)
{
  v76 = 0;
  v77 = 0;
  v75 = &v76;
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = &v76;
    do
    {
      v10 = (v6 + v7);
      LODWORD(v66) = *v10;
      v11 = *v10;
      HIDWORD(v66) = v10[2];
      *(&v66 + 4) = v11;
      v9 = std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__emplace_hint_unique_key_args<int,std::pair<int const,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> const&>(&v75, v9, &v66);
      ++v8;
      v6 = *a2;
      v7 += 12;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  }

  v12 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0x10000000, 0);
  v62 = a3;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  begin = std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::__init_with_size[abi:ne200100]<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element*,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element*>(&v72, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  v15 = v73;
  if (v73 == v72)
  {
    goto LABEL_68;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v19 = *(v15 - 3);
    v18 = v15 - 3;
    v71 = v18[2];
    *v70 = v19;
    v73 = v18;
    if (v17)
    {
      *&v66 = v70;
      begin = std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, v70);
      if (*(begin + 8) != v70[0] || *(begin + 9) != v70[1] || (LODWORD(v66) = *(begin + 10), *&__p.__begin_ = v71, v14.n128_u32[0] = v66, *&v66 != v71))
      {
        v17 = 1;
        goto LABEL_67;
      }
    }

    v20 = *(a1 + 84);
    if (v20 >= 1)
    {
      if (v16 > v20)
      {
        v55 = fst::cerr(begin);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Determinization aborted since looped more than ", 47);
        v56 = *(a1 + 84);
        v57 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " times during epsilon closure.\n", 31);
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "looped more than max-states times in determinization");
      }

      ++v16;
    }

    v21 = *(a1 + 72);
    v69 = 0;
    (*(*v21 + 136))(v21, v70[0], &v66, v14);
    while (1)
    {
      begin = v66;
      if (!v66)
      {
        if (v69 >= v67)
        {
          goto LABEL_65;
        }

LABEL_20:
        v23 = *(&v66 + 1) + 16 * v69;
        goto LABEL_21;
      }

      v22 = (*(*v66 + 24))(v66);
      begin = v66;
      if (v22)
      {
        goto LABEL_63;
      }

      if (!v66)
      {
        goto LABEL_20;
      }

      begin = (*(*v66 + 32))();
      v23 = begin;
LABEL_21:
      v24 = *v23;
      if ((v12 & 0x10000000) != 0)
      {
        if (v24)
        {
          break;
        }
      }

      if (!v24)
      {
        v64[0] = *(v23 + 12);
        v25 = NAN;
        if (v71 != -INFINITY)
        {
          v26 = *(v23 + 8);
          v25 = NAN;
          if (v26 != -INFINITY)
          {
            v25 = INFINITY;
            v27 = v26 == INFINITY || v71 == INFINITY;
            if (!v27)
            {
              v25 = v71 + v26;
            }
          }
        }

        v65 = v25;
        v29 = *(v23 + 4);
        v28 = (v23 + 4);
        if (v29)
        {
          memset(&__p, 0, sizeof(__p));
          fst::StringRepository<int,int>::SeqOfId(a1 + 136, v70[1], &__p);
          if (*v28)
          {
            std::vector<int>::push_back[abi:ne200100](&__p.__begin_, v28);
          }

          v64[1] = fst::StringRepository<int,int>::IdOfSeq(a1 + 136, &__p);
          begin = __p.__begin_;
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }
        }

        else
        {
          v64[1] = v70[1];
        }

        v30 = v76;
        if (!v76)
        {
          goto LABEL_44;
        }

        v31 = &v76;
        do
        {
          if (*(v30 + 7) >= v64[0])
          {
            v31 = v30;
          }

          v30 = v30[*(v30 + 7) < v64[0]];
        }

        while (v30);
        if (v31 != &v76 && v64[0] >= *(v31 + 7))
        {
          if (*(v31 + 9) != v64[1])
          {
            v44 = fst::cerr(begin);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "DeterminizerStar: FST was not functional -> not determinizable\n", 63);
            memset(&__p, 0, sizeof(__p));
            fst::StringRepository<int,int>::SeqOfId(a1 + 136, *(v31 + 9), &__p);
            v46 = fst::cerr(v45);
            v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "First string: ", 14);
            if (__p.__end_ != __p.__begin_)
            {
              v59 = 0;
              do
              {
                fst::cerr(v47);
                v60 = __p.__begin_[v59];
                v61 = std::ostream::operator<<();
                v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " ", 1);
                ++v59;
              }

              while (v59 < __p.__end_ - __p.__begin_);
            }

            v48 = fst::cerr(v47);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "\nSecond string: ", 16);
            fst::StringRepository<int,int>::SeqOfId(a1 + 136, v64[1], &__p);
            if (__p.__end_ != __p.__begin_)
            {
              v50 = 0;
              do
              {
                fst::cerr(v49);
                v51 = __p.__begin_[v50];
                v52 = std::ostream::operator<<();
                v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " ", 1);
                ++v50;
              }

              while (v50 < __p.__end_ - __p.__begin_);
            }

            v53 = fst::cerr(v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            v54 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v54, "Non-functional FST: cannot determinize.\n");
          }

          v33 = *(v31 + 10);
          v34 = v65;
          if (v33 == INFINITY)
          {
            v35 = v65;
          }

          else
          {
            v35 = *(v31 + 10);
            if (v65 != INFINITY)
            {
              if (v33 <= v65)
              {
                v37 = expf(-(v65 - v33));
                v35 = v33 - logf(v37 + 1.0);
              }

              else
              {
                v36 = expf(-(v33 - v65));
                v35 = v34 - logf(v36 + 1.0);
              }
            }
          }

          v38 = *(a1 + 80);
          v39 = v33 + v38;
          v14.n128_f32[0] = v35 + v38;
          if (v33 > v14.n128_f32[0] || v35 > v39)
          {
            std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::push_back[abi:ne200100](&v72, v64);
            v17 = 1;
          }

          *(v31 + 10) = v35;
        }

        else
        {
LABEL_44:
          __p.__begin_ = v64;
          v32 = std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, v64);
          v32[4] = *v64;
          *(v32 + 10) = v65;
          std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::push_back[abi:ne200100](&v72, v64);
        }
      }

      if (v66)
      {
        (*(*v66 + 40))(v66);
      }

      else
      {
        ++v69;
      }
    }

    begin = v66;
LABEL_63:
    if (begin)
    {
      begin = (*(*begin + 8))(begin);
      goto LABEL_67;
    }

LABEL_65:
    if (v68)
    {
      --*v68;
    }

LABEL_67:
    v15 = v73;
  }

  while (v73 != v72);
LABEL_68:
  v62[1] = *v62;
  std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::reserve(v62, v77);
  v41 = v75;
  if (v75 != &v76)
  {
    do
    {
      std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::push_back[abi:ne200100](v62, v41 + 4);
      v42 = v41[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v41[2];
          v27 = *v43 == v41;
          v41 = v43;
        }

        while (!v27);
      }

      v41 = v43;
    }

    while (v43 != &v76);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v75, v76);
}

void sub_83B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, void *a27)
{
  __cxa_free_exception(v27);
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  else if (a19)
  {
    --*a19;
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a26, a27);
  _Unwind_Resume(a1);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessFinal(uint64_t a1, float **a2, int a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = (*(**(a1 + 72) + 32))(*(a1 + 72), *v4);
      *&v23 = v11;
      v24 = 2139095040;
      if (v11 != INFINITY)
      {
        if ((v8 & 1) == 0)
        {
          v16 = v4[2];
          v8 = 1;
          v3 = NAN;
          v9 = *(v4 + 1);
          if (v16 != -INFINITY)
          {
            v9 = *(v4 + 1);
            if (v11 != -INFINITY)
            {
              v17 = v16 == INFINITY || v11 == INFINITY;
              v18 = v11 + v16;
              if (v17)
              {
                v3 = INFINITY;
              }

              else
              {
                v3 = v18;
              }

              v9 = *(v4 + 1);
            }
          }

          goto LABEL_32;
        }

        if (v9 != *(v4 + 1))
        {
          v21 = fst::cerr(v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "DeterminizerStar: FST was not functional -> not determinizable\n", 63);
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Non-functional FST: cannot determinize.\n");
        }

        v12 = v4[2];
        if (v12 == -INFINITY || v11 == -INFINITY)
        {
          v15 = NAN;
          if (v3 != INFINITY)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v13 = v12 == INFINITY || v11 == INFINITY;
          v14 = v11 + v12;
          if (v13)
          {
            v15 = INFINITY;
          }

          else
          {
            v15 = v14;
          }

          if (v3 != INFINITY)
          {
            if (v15 != INFINITY)
            {
LABEL_28:
              if (v3 <= v15)
              {
                v20 = expf(-(v15 - v3));
                v3 = v3 - logf(v20 + 1.0);
              }

              else
              {
                v19 = expf(-(v3 - v15));
                v3 = v15 - logf(v19 + 1.0);
              }
            }

            v8 = 1;
            goto LABEL_32;
          }
        }

        v8 = 1;
        v3 = v15;
      }

LABEL_32:
      v4 += 3;
      if (v4 == v5)
      {
        if (v8)
        {
          *(&v23 + 4) = v9 | 0xFFFFFFFF00000000;
          LODWORD(v23) = 0;
          *(&v23 + 3) = v3;
          std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](*(a1 + 48) + 24 * a3, &v23);
        }

        return;
      }
    }
  }
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessTransitions(fst *a1, float **a2, int a3)
{
  v3 = a3;
  v43 = 0;
  v5 = 0uLL;
  *v42 = 0u;
  v6 = *a2;
  v35 = a2[1];
  if (*a2 == v35)
  {
    goto LABEL_44;
  }

  do
  {
    v7 = *(a1 + 9);
    v8 = *v6;
    v41 = 0;
    (*(*v7 + 136))(v7, v8, &v37);
    while (1)
    {
      if (!v37)
      {
        if (v41 >= v39)
        {
          goto LABEL_40;
        }

        goto LABEL_8;
      }

      if ((*(*v37 + 24))(v37))
      {
        break;
      }

      if (v37)
      {
        v9 = (*(*v37 + 32))();
        goto LABEL_9;
      }

LABEL_8:
      v9 = v38 + 16 * v41;
LABEL_9:
      v10 = *v9;
      if (*v9)
      {
        v11 = v6[2];
        v12 = NAN;
        if (v11 != -INFINITY)
        {
          v13 = *(v9 + 8);
          v12 = NAN;
          if (v13 != -INFINITY)
          {
            v14 = v13 == INFINITY || v11 == INFINITY;
            v15 = v11 + v13;
            if (v14)
            {
              v12 = INFINITY;
            }

            else
            {
              v12 = v15;
            }
          }
        }

        v16 = *(v9 + 12);
        v18 = *(v9 + 4);
        v17 = (v9 + 4);
        if (v18)
        {
          memset(&__p, 0, sizeof(__p));
          fst::StringRepository<int,int>::SeqOfId(a1 + 136, *(v6 + 1), &__p);
          std::vector<int>::push_back[abi:ne200100](&__p.__begin_, v17);
          v19 = fst::StringRepository<int,int>::IdOfSeq(a1 + 136, &__p);
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }
        }

        else
        {
          v19 = *(v6 + 1);
        }

        v20 = v42[1];
        if (v42[1] >= v43)
        {
          v22 = (v42[1] - v42[0]) >> 4;
          v23 = v22 + 1;
          if ((v22 + 1) >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v24 = v43 - v42[0];
          if ((v43 - v42[0]) >> 3 > v23)
          {
            v23 = v24 >> 3;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::TransitionModel::Tuple>>(v42, v25);
          }

          v26 = 16 * v22;
          *v26 = v10;
          *(v26 + 4) = v16;
          *(v26 + 8) = v19;
          *(v26 + 12) = v12;
          v21 = (16 * v22 + 16);
          v27 = (v26 - (v42[1] - v42[0]));
          memcpy(v27, v42[0], v42[1] - v42[0]);
          v28 = v42[0];
          v42[0] = v27;
          v42[1] = v21;
          v43 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v42[1] = v10;
          *(v20 + 1) = v16;
          *(v20 + 2) = v19;
          v21 = v20 + 4;
          v20[3] = v12;
        }

        v42[1] = v21;
      }

      if (v37)
      {
        (*(*v37 + 40))(v37);
      }

      else
      {
        ++v41;
      }
    }

    if (v37)
    {
      (*(*v37 + 8))();
      goto LABEL_42;
    }

LABEL_40:
    if (v40)
    {
      --*v40;
    }

LABEL_42:
    v6 += 3;
  }

  while (v6 != v35);
  v5 = *v42;
  v3 = a3;
LABEL_44:
  v29 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 4);
  if (*(&v5 + 1) == v5)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,false>(v5, *(&v5 + 1), &v37, v30, 1);
  v31 = v42[0];
  v32 = v42[1];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  while (v31 != v32)
  {
    v33 = *v31;
    v38 = v37;
    do
    {
      if (*v31 != v33)
      {
        break;
      }

      std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::push_back[abi:ne200100](&v37, (v31 + 4));
      v31 += 16;
    }

    while (v31 != v32);
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessTransition(a1, v3, v33, &v37);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }
}

void sub_84254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::StringRepository<int,int>::SeqOfId(uint64_t a1, int a2, std::vector<int> *a3)
{
  if (*(a1 + 68) == a2)
  {
    a3->__end_ = a3->__begin_;
  }

  else if (*(a1 + 72) <= a2)
  {
    std::vector<int>::resize(a3, 1uLL);
    *a3->__begin_ = a2 - *(a1 + 72);
  }

  else
  {
    if (a2 < 0 || ((*(a1 + 8) - *a1) >> 3) <= a2)
    {
      fst::StringRepository<int,int>::SeqOfId();
    }

    v6 = *(*a1 + 8 * a2);
    if (v6 != a3)
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = (v8 - *v6) >> 2;

      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, v7, v8, v9);
    }
  }
}

uint64_t fst::StringRepository<int,int>::IdOfSeq(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) - *a2) >> 2;
  if (v2 == 1)
  {
    return fst::StringRepository<int,int>::IdOfLabel(a1, **a2);
  }

  if (v2)
  {
    return fst::StringRepository<int,int>::IdOfSeqInternal(a1, a2);
  }

  return *(a1 + 68);
}

void *std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__emplace_hint_unique_key_args<int,std::pair<int const,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t fst::StringRepository<int,int>::IdOfLabel(uint64_t a1, int a2)
{
  v8 = a2;
  if ((a2 & 0x80000000) == 0 && *(a1 + 76) >= a2)
  {
    return (*(a1 + 72) + a2);
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<int>::push_back[abi:ne200100](&__p, &v8);
  v3 = fst::StringRepository<int,int>::IdOfSeqInternal(a1, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_8484C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StringRepository<int,int>::IdOfSeqInternal(uint64_t *a1, int **a2)
{
  v7 = a2;
  v3 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::find<std::vector<int> const*>(a1 + 3, &v7);
  if (!v3)
  {
    v5 = *a1;
    v4 = a1[1];
    operator new();
  }

  return *(v3 + 6);
}

const void ***std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::find<std::vector<int> const*>(void *a1, int ***a2)
{
  v4 = fst::StringRepository<int,int>::VectorKey::operator()(a1, *a2);
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
      if (std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>::operator()[abi:ne200100](a1, i + 2, a2))
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

BOOL std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>::operator()[abi:ne200100](uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  return v5 == *(v3 + 8) - *v3 && memcmp(v4, *v3, v5) == 0;
}

uint64_t fst::StringRepository<int,int>::VectorKey::operator()(uint64_t a1, int **a2)
{
  if (!a2)
  {
    fst::StringRepository<int,int>::VectorKey::operator()();
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  result = 0;
  v5 = 1;
  do
  {
    v6 = *v2++;
    result += v5 * v6;
    v5 *= 103333;
  }

  while (v2 != v3);
  return result;
}

const void ***std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::__emplace_unique_key_args<std::vector<int> const*,std::piecewise_construct_t const&,std::tuple<std::vector<int> const* const&>,std::tuple<>>(void *a1, int ***a2)
{
  v4 = fst::StringRepository<int,int>::VectorKey::operator()(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::ProcessTransition(fst *a1, int a2, int a3, float **a4)
{
  v8 = *a4;
  v9 = a4[1];
  if (*a4 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *a4;
    do
    {
      if (v8 != v11)
      {
        v12 = *v8;
        v11[2] = v8[2];
        *v11 = v12;
      }

      v8 += 3;
      if (v8 != v9)
      {
        v13 = *v11;
        do
        {
          if (*v8 != v13)
          {
            break;
          }

          if (*(v8 + 1) != *(v11 + 1))
          {
            v37 = fst::cerr(a1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "DeterminizerStar: FST was not functional -> not determinizable\n", 63);
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Non-functional FST: cannot determinize.\n");
          }

          v14 = v11[2];
          v15 = v8[2];
          if (v14 != INFINITY)
          {
            if (v15 == INFINITY)
            {
              v15 = v11[2];
            }

            else if (v14 <= v15)
            {
              v17 = expf(-(v15 - v14));
              v15 = v14 - logf(v17 + 1.0);
            }

            else
            {
              v16 = expf(-(v14 - v15));
              v15 = v15 - logf(v16 + 1.0);
            }
          }

          v11[2] = v15;
          v8 += 3;
        }

        while (v8 != v9);
      }

      v11 += 3;
      ++v10;
    }

    while (v8 != v9);
  }

  std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::resize(a4, v10);
  memset(&v40, 0, sizeof(v40));
  v18 = *a4;
  v19 = a4[1];
  memset(&__p, 0, sizeof(__p));
  if (v18 != v19)
  {
    v20 = v18;
    while (1)
    {
      if (v20 == v18)
      {
        fst::StringRepository<int,int>::SeqOfId(a1 + 136, v18[1], &v40);
        begin = v40.__begin_;
        end = v40.__end_;
      }

      else
      {
        fst::StringRepository<int,int>::SeqOfId(a1 + 136, v20[1], &__p);
        begin = v40.__begin_;
        end = v40.__end_;
        if ((__p.__end_ - __p.__begin_) < (v40.__end_ - v40.__begin_))
        {
          std::vector<int>::resize(&v40, __p.__end_ - __p.__begin_);
          begin = v40.__begin_;
          end = v40.__end_;
        }

        if (end == begin)
        {
          break;
        }

        v23 = 0;
        do
        {
          if (__p.__begin_[v23] != begin[v23])
          {
            std::vector<int>::resize(&v40, v23);
            begin = v40.__begin_;
            end = v40.__end_;
          }

          ++v23;
        }

        while (v23 < end - begin);
      }

      if (end != begin)
      {
        v20 += 3;
        if (v20 != v19)
        {
          continue;
        }
      }

      break;
    }
  }

  v24 = fst::StringRepository<int,int>::IdOfSeq(a1 + 136, &v40);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  v25 = *(v18 + 2);
  v26 = v18 + 3;
  if (v18 + 3 == v19)
  {
    LODWORD(v27) = v18[2];
  }

  else
  {
    do
    {
      LODWORD(v27) = v26[2];
      if (v25 != INFINITY)
      {
        if (v27 == INFINITY)
        {
          v27 = v25;
        }

        else if (v25 <= v27)
        {
          v29 = expf(-(v27 - v25));
          v27 = v25 - logf(v29 + 1.0);
        }

        else
        {
          v28 = expf(-(v25 - v27));
          v27 = v27 - logf(v28 + 1.0);
        }
      }

      v26 += 3;
      v25 = v27;
    }

    while (v26 != v19);
  }

  v30 = v40.__begin_;
  if (v18 != v19)
  {
    v31 = v40.__end_ - v40.__begin_;
    do
    {
      v32 = *(v18 + 2);
      v33 = NAN;
      if (v32 != -INFINITY)
      {
        v34 = v32 == INFINITY;
        v35 = v32 - v27;
        if (v34)
        {
          v35 = INFINITY;
        }

        if ((LODWORD(v27) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v33 = v35;
        }
      }

      *(v18 + 2) = v33;
      v18[1] = fst::StringRepository<int,int>::RemovePrefix(a1 + 136, v18[1], v31);
      v18 += 3;
    }

    while (v18 != v19);
    v30 = v40.__begin_;
  }

  if (v30)
  {
    v40.__end_ = v30;
    operator delete(v30);
  }

  LODWORD(v40.__begin_) = a3;
  v36 = fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetToStateId(a1, a4);
  HIDWORD(v40.__begin_) = v24;
  v40.__end_ = __PAIR64__(LODWORD(v27), v36);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](*(a1 + 6) + 24 * a2, &v40);
}

void sub_851FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,false>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v21 = *(a2 - 4);
        v22 = *v9;
        if (v21 < *v9 || v21 <= v22 && *(a2 - 3) < *(v9 + 4))
        {
          *v9 = v21;
          *(a2 - 4) = v22;
          v37 = *(v9 + 4);
          v40 = *(v9 + 12);
          v23 = *(a2 - 3);
          *(v9 + 12) = *(a2 - 1);
          *(v9 + 4) = v23;
          *(a2 - 3) = v37;
          *(a2 - 1) = v40;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(v9, (v9 + 16), (v9 + 32));
      v24 = *(a2 - 4);
      v25 = *(v9 + 32);
      if (v24 < v25 || v24 <= v25 && *(a2 - 3) < *(v9 + 36))
      {
        *(v9 + 32) = v24;
        *(a2 - 4) = v25;
        v27 = (v9 + 36);
        v26 = *(v9 + 36);
        v28 = *(v9 + 44);
        v29 = *(a2 - 1);
        *(v9 + 36) = *(a2 - 3);
        *(v9 + 44) = v29;
        *(a2 - 3) = v26;
        *(a2 - 1) = v28;
        v30 = *(v9 + 32);
        v31 = *(v9 + 16);
        if (v30 < v31 || v30 <= v31 && *(v9 + 36) < *(v9 + 20))
        {
          *(v9 + 16) = v30;
          v32 = (v9 + 20);
          v33 = *(v9 + 20);
          v34 = *(v9 + 28);
          *(v9 + 20) = *v27;
          *(v9 + 28) = *(v9 + 44);
          *(v9 + 32) = v31;
          *v27 = v33;
          *(v9 + 44) = v34;
          v35 = *v9;
          if (v30 < *v9 || v30 <= v35 && *(v9 + 20) < *(v9 + 4))
          {
            *v9 = v30;
            v38 = *(v9 + 4);
            v41 = *(v9 + 12);
            *(v9 + 12) = *(v9 + 28);
            *(v9 + 16) = v35;
            *(v9 + 4) = *v32;
            *v32 = v38;
            *(v9 + 28) = v41;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 4);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>((v9 + 16 * (v12 >> 1)), v9, a2 - 4);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(v9, (v9 + 16 * (v12 >> 1)), a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>((v9 + 16), (v14 - 16), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>((v9 + 32), (v9 + 16 + 16 * v13), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>((v14 - 16), v14, (v9 + 16 + 16 * v13));
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v39 = *(v9 + 12);
      v36 = *(v9 + 4);
      v16 = *(v14 + 4);
      *(v9 + 12) = *(v14 + 12);
      *(v9 + 4) = v16;
      *(v14 + 12) = v39;
      *(v14 + 4) = v36;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (v17 > *v9 || *(v9 - 12) >= *(v9 + 4)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(v9, v18);
    v9 = v18 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(v9, (v9 + 16), a2 - 4);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v3 <= v4 && a2[1] < a1[1])
  {
    v5 = *a3;
    if (*a3 < v3 || v5 <= v3 && a3[1] < a2[1])
    {
      *a1 = v5;
      *a3 = v4;
      v6 = a1[3];
      v7 = *(a1 + 1);
      v8 = a3[3];
      *(a1 + 1) = *(a3 + 1);
      a1[3] = v8;
      *(a3 + 1) = v7;
      a3[3] = v6;
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v19 = (a2 + 1);
      v20 = a1[3];
      v21 = *(a1 + 1);
      v22 = a2[3];
      *(a1 + 1) = *(a2 + 1);
      a1[3] = v22;
      *(a2 + 1) = v21;
      a2[3] = v20;
      v23 = *a3;
      v24 = *a2;
      if (*a3 < *a2 || v23 <= v24 && a3[1] < *v19)
      {
        *a2 = v23;
        *a3 = v24;
        v25 = a2[3];
        v26 = *v19;
        v27 = a3[3];
        *v19 = *(a3 + 1);
        a2[3] = v27;
        *(a3 + 1) = v26;
        a3[3] = v25;
      }
    }
  }

  else
  {
    v9 = *a3;
    if (*a3 >= v3 && (v9 > v3 || a3[1] >= a2[1]))
    {
      return 0;
    }

    *a2 = v9;
    *a3 = v3;
    v10 = a2 + 1;
    v11 = *(a2 + 1);
    v12 = a2[3];
    v13 = a3[3];
    *(a2 + 1) = *(a3 + 1);
    a2[3] = v13;
    *(a3 + 1) = v11;
    a3[3] = v12;
    v14 = *a2;
    v15 = *a1;
    if (*a2 < *a1 || v14 <= v15 && *v10 < a1[1])
    {
      *a1 = v14;
      *a2 = v15;
      v16 = a1[3];
      v17 = *(a1 + 1);
      v18 = a2[3];
      *(a1 + 1) = *v10;
      a1[3] = v18;
      *v10 = v17;
      a2[3] = v16;
    }
  }

  return 1;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 < *a3 || v11 <= v12 && *(a4 + 4) < *(a3 + 4))
  {
    *a3 = v11;
    *a4 = v12;
    v13 = (a3 + 4);
    v14 = *(a3 + 4);
    v15 = *(a3 + 12);
    v16 = *(a4 + 12);
    *(a3 + 4) = *(a4 + 4);
    *(a3 + 12) = v16;
    *(a4 + 4) = v14;
    *(a4 + 12) = v15;
    v17 = *a3;
    v18 = *a2;
    if (*a3 < *a2 || v17 <= v18 && *v13 < *(a2 + 4))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = (a2 + 4);
      v20 = *(a2 + 4);
      v21 = *(a2 + 12);
      v22 = *(a3 + 12);
      *(a2 + 4) = *v13;
      *(a2 + 12) = v22;
      *v13 = v20;
      *(a3 + 12) = v21;
      v23 = *a2;
      v24 = *a1;
      if (*a2 < *a1 || v23 <= v24 && *v19 < *(a1 + 4))
      {
        *a1 = v23;
        *a2 = v24;
        v25 = *(a1 + 12);
        v26 = *(a1 + 4);
        v27 = *(a2 + 12);
        *(a1 + 4) = *v19;
        *(a1 + 12) = v27;
        *v19 = v26;
        *(a2 + 12) = v25;
      }
    }
  }

  v28 = *a5;
  v29 = *a4;
  if (*a5 < *a4 || v28 <= v29 && a5[1] < *(a4 + 4))
  {
    *a4 = v28;
    *a5 = v29;
    v30 = (a4 + 4);
    v31 = *(a4 + 4);
    v32 = *(a4 + 12);
    v33 = a5[3];
    *(a4 + 4) = *(a5 + 1);
    *(a4 + 12) = v33;
    *(a5 + 1) = v31;
    a5[3] = v32;
    v34 = *a4;
    v35 = *a3;
    if (*a4 < *a3 || v34 <= v35 && *v30 < *(a3 + 4))
    {
      *a3 = v34;
      *a4 = v35;
      v36 = (a3 + 4);
      v37 = *(a3 + 4);
      v38 = *(a3 + 12);
      v39 = *(a4 + 12);
      *(a3 + 4) = *v30;
      *(a3 + 12) = v39;
      *v30 = v37;
      *(a4 + 12) = v38;
      v40 = *a3;
      v41 = *a2;
      if (*a3 < *a2 || v40 <= v41 && *v36 < *(a2 + 4))
      {
        *a2 = v40;
        *a3 = v41;
        v42 = (a2 + 4);
        v43 = *(a2 + 4);
        v44 = *(a2 + 12);
        v45 = *(a3 + 12);
        *(a2 + 4) = *v36;
        *(a2 + 12) = v45;
        *v36 = v43;
        *(a3 + 12) = v44;
        v46 = *a2;
        v47 = *a1;
        if (*a2 < *a1 || v46 <= v47 && *v42 < *(a1 + 4))
        {
          *a1 = v46;
          *a2 = v47;
          v48 = *(a1 + 12);
          v49 = *(a1 + 4);
          v50 = *(a2 + 12);
          *(a1 + 4) = *v42;
          *(a1 + 12) = v50;
          *v42 = v49;
          *(a2 + 12) = v48;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[4];
        v7 = *v5;
        if (v6 < *v5)
        {
          break;
        }

        if (v6 <= v7)
        {
          v8 = v5[5];
          if (v8 < v5[1])
          {
            goto LABEL_6;
          }
        }

LABEL_17:
        v2 = v4 + 4;
        v3 += 16;
        if (v4 + 4 == a2)
        {
          return result;
        }
      }

      v8 = v5[5];
LABEL_6:
      v9 = *(v5 + 3);
      v5[4] = v7;
      v10 = v5 + 1;
      *(v4 + 1) = *(v5 + 1);
      v4[3] = v5[3];
      if (v5 == result)
      {
LABEL_13:
        v5 = result;
      }

      else
      {
        v11 = v3;
        while (1)
        {
          v12 = result + v11;
          v13 = *(result + v11 - 16);
          if (v6 >= v13)
          {
            if (v6 > v13)
            {
              goto LABEL_14;
            }

            if (v8 >= *(result + v11 - 12))
            {
              break;
            }
          }

          v10 = v5 - 3;
          v5 -= 4;
          *v12 = v13;
          *(v12 + 4) = *(v12 - 12);
          *(v12 + 12) = *(v12 - 4);
          v11 -= 16;
          if (!v11)
          {
            v10 = result + 1;
            goto LABEL_13;
          }
        }

        v10 = (result + v11 + 4);
        v5 = (result + v11);
      }

LABEL_14:
      *v5 = v6;
      *v10 = v8;
      *(v5 + 1) = v9;
      goto LABEL_17;
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      for (i = result + 1; ; i += 4)
      {
        v4 = result;
        result = v2;
        v5 = v4[4];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v5 <= v6)
        {
          v7 = v4[5];
          if (v7 < v4[1])
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 4;
        if (result + 4 == a2)
        {
          return result;
        }
      }

      v7 = v4[5];
LABEL_6:
      v8 = *(v4 + 3);
      for (j = i; ; j -= 4)
      {
        j[3] = v6;
        *(j + 2) = *j;
        j[6] = j[2];
        v6 = *(j - 5);
        if (v5 >= v6 && (v5 > v6 || v7 >= *(j - 4)))
        {
          break;
        }
      }

      *(j - 1) = v5;
      *j = v7;
      *(j + 1) = v8;
      goto LABEL_14;
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &>(int *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 4);
  if (*a1 < v4 || v2 <= v4 && v3 < *(a2 - 3))
  {
    i = a1;
    do
    {
      v7 = i[4];
      i += 4;
      v6 = v7;
    }

    while (v2 >= v7 && (v2 > v6 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 4; v2 < v4 || v2 <= v4 && v3 < a2[1]; a2 -= 4)
    {
      v8 = *(a2 - 4);
      v4 = v8;
    }
  }

  v9 = *(a1 + 1);
  if (i < a2)
  {
    v10 = *i;
    v11 = *a2;
    do
    {
      *i = v11;
      *a2 = v10;
      v19 = i[3];
      v18 = *(i + 1);
      v12 = *(a2 + 1);
      i[3] = a2[3];
      *(i + 1) = v12;
      a2[3] = v19;
      *(a2 + 1) = v18;
      do
      {
        v13 = i[4];
        i += 4;
        v10 = v13;
      }

      while (v2 >= v13 && (v2 > v10 || v3 >= i[1]));
      do
      {
        do
        {
          v14 = *(a2 - 4);
          a2 -= 4;
          v11 = v14;
          v15 = v2 <= v14;
        }

        while (v2 < v14);
      }

      while (v15 && v3 < a2[1]);
    }

    while (i < a2);
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 4);
    v16 = *(i - 3);
    a1[3] = *(i - 1);
    *(a1 + 1) = v16;
  }

  *(i - 4) = v2;
  *(i - 3) = v3;
  *(i - 1) = v9;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  while (1)
  {
    v6 = a1[v2 + 4];
    if (v6 >= v3 && (v6 > v3 || a1[v2 + 5] >= v4))
    {
      break;
    }

    v2 += 4;
  }

  v7 = &a1[v2 + 4];
  if (v2 * 4)
  {
    do
    {
      v9 = *(a2 - 4);
      a2 -= 4;
      v8 = v9;
    }

    while (v9 >= v3 && (v8 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v7 < a2)
    {
      do
      {
        v11 = *(a2 - 4);
        a2 -= 4;
        v10 = v11;
        if (v11 < v3)
        {
          break;
        }

        if (v10 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v7 < a2);
    }
  }

  if (v7 >= a2)
  {
    v14 = v7;
  }

  else
  {
    v13 = *a2;
    v14 = v7;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v6;
      v23 = *(v14 + 12);
      v22 = *(v14 + 4);
      v16 = *(v15 + 1);
      *(v14 + 12) = v15[3];
      *(v14 + 4) = v16;
      v15[3] = v23;
      *(v15 + 1) = v22;
      do
      {
        do
        {
          v17 = *(v14 + 16);
          v14 += 16;
          v6 = v17;
          v18 = v17 <= v3;
        }

        while (v17 < v3);
      }

      while (v18 && *(v14 + 4) < v4);
      do
      {
        v19 = *(v15 - 4);
        v15 -= 4;
        v13 = v19;
      }

      while (v19 >= v3 && (v13 > v3 || v15[1] >= v4));
    }

    while (v14 < v15);
  }

  if ((v14 - 16) != a1)
  {
    *a1 = *(v14 - 16);
    v20 = *(v14 - 12);
    a1[3] = *(v14 - 4);
    *(a1 + 1) = v20;
  }

  *(v14 - 16) = v3;
  *(v14 - 12) = v4;
  *(v14 - 8) = v5;
  return v14 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(a1, (a1 + 16), (a1 + 32));
        v23 = *(a2 - 16);
        v24 = *(a1 + 32);
        if (v23 < v24 || v23 <= v24 && *(a2 - 12) < *(a1 + 36))
        {
          *(a1 + 32) = v23;
          *(a2 - 16) = v24;
          v26 = (a1 + 36);
          v25 = *(a1 + 36);
          v27 = *(a1 + 44);
          v28 = *(a2 - 4);
          *(a1 + 36) = *(a2 - 12);
          *(a1 + 44) = v28;
          *(a2 - 12) = v25;
          *(a2 - 4) = v27;
          v29 = *(a1 + 32);
          v30 = *(a1 + 16);
          if (v29 < v30 || v29 <= v30 && *(a1 + 36) < *(a1 + 20))
          {
            *(a1 + 16) = v29;
            v31 = (a1 + 20);
            v32 = *(a1 + 20);
            v33 = *(a1 + 28);
            *(a1 + 20) = *v26;
            *(a1 + 28) = *(a1 + 44);
            *(a1 + 32) = v30;
            *v26 = v32;
            *(a1 + 44) = v33;
            v34 = *a1;
            if (v29 < *a1 || v29 <= v34 && *(a1 + 20) < *(a1 + 4))
            {
              *a1 = v29;
              v35 = *(a1 + 12);
              v36 = *(a1 + 4);
              *(a1 + 4) = *v31;
              *(a1 + 12) = *(a1 + 28);
              *(a1 + 16) = v34;
              *v31 = v36;
              *(a1 + 28) = v35;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1 || v5 <= v6 && *(a2 - 12) < *(a1 + 4))
      {
        *a1 = v5;
        *(a2 - 16) = v6;
        v7 = *(a1 + 12);
        v8 = *(a1 + 4);
        v9 = *(a2 - 4);
        *(a1 + 4) = *(a2 - 12);
        *(a1 + 12) = v9;
        *(a2 - 12) = v8;
        *(a2 - 4) = v7;
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 != a2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = *v10;
      if (*v11 >= *v10)
      {
        if (v14 > v15)
        {
          goto LABEL_26;
        }

        v16 = *(v11 + 4);
        if (v16 >= *(v10 + 4))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v16 = *(v11 + 4);
      }

      v17 = *(v11 + 8);
      *v11 = v15;
      v18 = (v10 + 4);
      *(v11 + 4) = *(v10 + 4);
      *(v11 + 12) = *(v10 + 12);
      v19 = v12;
      do
      {
        v20 = a1 + v19;
        v21 = *(a1 + v19 + 16);
        if (v14 >= v21)
        {
          if (v14 > v21)
          {
            v22 = a1 + v19;
            v18 = (v22 + 36);
            v10 = v22 + 32;
            goto LABEL_25;
          }

          if (v16 >= *(a1 + v19 + 20))
          {
            goto LABEL_25;
          }
        }

        v18 = (v10 - 12);
        v10 -= 16;
        *(v20 + 32) = v21;
        *(v20 + 36) = *(v20 + 20);
        *(v20 + 44) = *(v20 + 28);
        v19 -= 16;
      }

      while (v19 != -32);
      v18 = (a1 + 4);
      v10 = a1;
LABEL_25:
      *v10 = v14;
      *v18 = v16;
      *(v10 + 8) = v17;
      if (++v13 == 8)
      {
        return v11 + 16 == a2;
      }

LABEL_26:
      v10 = v11;
      v12 += 16;
      v11 += 16;
    }

    while (v11 != a2);
  }

  return 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(a1, a4, v8, v11);
        v11 -= 4;
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
        if (*v12 < *a1 || v13 <= v14 && *(v12 + 4) < *(a1 + 4))
        {
          *v12 = v14;
          *a1 = v13;
          v15 = *(v12 + 12);
          v16 = *(v12 + 4);
          v17 = *(a1 + 12);
          *(v12 + 4) = *(a1 + 4);
          *(v12 + 12) = v17;
          *(a1 + 4) = v16;
          *(a1 + 12) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 16;
      do
      {
        v19 = *a1;
        v24 = *(a1 + 4);
        v25 = *(a1 + 12);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(a1, a4, v8);
        if (v18 == v20)
        {
          *v20 = v19;
          *(v20 + 1) = v24;
          v20[3] = v25;
        }

        else
        {
          *v20 = *v18;
          v21 = *(v18 + 4);
          v20[3] = *(v18 + 12);
          *(v20 + 1) = v21;
          *v18 = v19;
          *(v18 + 4) = v24;
          *(v18 + 12) = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(a1, (v20 + 4), a4, (v20 - a1 + 16) >> 4);
        }

        v18 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[4];
        if (*v8 < v10 || *v8 <= v10 && v8[1] < v8[5])
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v11 <= v12)
        {
          v13 = a4[1];
          if (v8[1] < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[1];
        }

        v14 = *(a4 + 1);
        *a4 = v11;
        v15 = *(v8 + 1);
        a4[3] = v8[3];
        *(a4 + 1) = v15;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 16 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[4];
              if (*v16 < v19 || *v16 <= v19 && v16[1] < v16[5])
              {
                v16 += 4;
                v7 = v18;
              }
            }

            v20 = *v16;
            if (*v16 < v12 || v20 <= v12 && v16[1] < v13)
            {
              break;
            }

            *v8 = v20;
            v21 = *(v16 + 1);
            v8[3] = v16[3];
            *(v8 + 1) = v21;
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v16 = v8;
LABEL_14:
        *v16 = v12;
        v16[1] = v13;
        *(v16 + 1) = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[4 * v3];
    result = v5 + 4;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[8];
      v9 = v5[4];
      if (v9 < v8 || v9 <= v8 && v5[5] < v5[9])
      {
        result = v5 + 8;
        v3 = v7;
      }
    }

    *v4 = *result;
    v10 = *(result + 1);
    v4[3] = result[3];
    *(v4 + 1) = v10;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v7 > v8)
      {
        return result;
      }

      v9 = *(a2 - 12);
      if (v6[1] >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 12);
    }

    v10 = *(a2 - 8);
    *(a2 - 16) = v7;
    v11 = *(v6 + 1);
    *(a2 - 4) = v6[3];
    *(a2 - 12) = v11;
    if (v4 >= 2)
    {
      while (1)
      {
        v13 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v12 = (result + 16 * v5);
        v14 = *v12;
        if (*v12 >= v8 && (v14 > v8 || v12[1] >= v9))
        {
          break;
        }

        *v6 = v14;
        v15 = v12[3];
        *(v6 + 1) = *(v12 + 1);
        v6[3] = v15;
        v6 = (result + 16 * v5);
        if (v13 <= 1)
        {
          goto LABEL_10;
        }
      }
    }

    v12 = v6;
LABEL_10:
    *v12 = v8;
    v12[1] = v9;
    *(v12 + 1) = v10;
  }

  return result;
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t fst::StringRepository<int,int>::RemovePrefix(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    memset(&v13, 0, sizeof(v13));
    fst::StringRepository<int,int>::SeqOfId(a1, a2, &v13);
    v6 = v13.__end_ - v13.__begin_;
    v7 = v6 - a3;
    if (v6 < a3)
    {
      __assert_rtn("RemovePrefix", "determinize-star-inl.h", 101, "sz >= prefix_len");
    }

    std::vector<int>::vector[abi:ne200100](__p, v6 - a3);
    if (v6 != a3)
    {
      v8 = &v13.__begin_[a3];
      v9 = __p[0];
      do
      {
        v10 = *v8++;
        *v9++ = v10;
        --v7;
      }

      while (v7);
    }

    v3 = fst::StringRepository<int,int>::IdOfSeq(a1, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v13.__begin_)
    {
      v13.__end_ = v13.__begin_;
      operator delete(v13.__begin_);
    }
  }

  return v3;
}

void sub_868B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  v13 = *(a1 + 36);
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = v13;
  if (*(a1 + 24))
  {
    v14 = *(a1 + 8);
    v15 = *(*(a1 + 16) + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v15 >= v14)
      {
        v15 %= v14;
      }
    }

    else
    {
      v15 &= v14 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
  }

  if (v11)
  {
    v16 = *(a2 + 8);
    v17 = *(*(a2 + 16) + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v17 >= v16)
      {
        v17 %= v16;
      }
    }

    else
    {
      v17 &= v16 - 1;
    }

    *(*a2 + 8 * v17) = a2 + 16;
  }
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::FreeMostMemory(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 72) = 0;
  }

  for (i = *(a1 + 112); i; i = *i)
  {
    v4 = i[2];
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      operator delete();
    }
  }

  memset(v7, 0, sizeof(v7));
  v8 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> const*,int>>>::swap(v7, a1 + 96);
  return std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(v7);
}

void fst::StringRepository<int,int>::Destroy(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*a1 != v1)
  {
    do
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v4;
          operator delete(v4);
        }

        operator delete();
      }

      ++v2;
    }

    while (v2 != v1);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::swap(v5, a1 + 24);
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(v5);
  if (v2)
  {
    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  if (*(a1 + 24))
  {
    v13 = *(a1 + 8);
    v14 = *(*(a1 + 16) + 8);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v14 >= v13)
      {
        v14 %= v13;
      }
    }

    else
    {
      v14 &= v13 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
  }

  if (v11)
  {
    v15 = *(a2 + 8);
    v16 = *(*(a2 + 16) + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v16 >= v15)
      {
        v16 %= v15;
      }
    }

    else
    {
      v16 &= v15 - 1;
    }

    *(*a2 + 8 * v16) = a2 + 16;
  }
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::~DeterminizerStar(uint64_t a1)
{
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::FreeMostMemory(a1);
  fst::StringRepository<int,int>::~StringRepository((a1 + 136));
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(a1 + 96);
  v3 = (a1 + 48);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Element>> *,int>>::~deque[abi:ne200100](a1);
}

void **fst::StringRepository<int,int>::~StringRepository(void **a1)
{
  fst::StringRepository<int,int>::Destroy(a1);
  std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::AcceptorMinimize<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 0x200010000, 1))
  {
    fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    boost::filesystem::path::path(__p, "FATAL");
  }

  else
  {
    boost::filesystem::path::path(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "FST is not an unweighted acceptor", 33);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 184))(a1, 4, 4);
}

void sub_87180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::QuantizeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, float *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 152))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 288))(a1, v6, &v12);
        while (!(*(*v12 + 24))(v12))
        {
          v7 = (*(*v12 + 32))(v12);
          v8 = *(v7 + 8);
          if ((LODWORD(v8) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            v8 = *a2 * floorf((v8 / *a2) + 0.5);
          }

          v9 = *(v7 + 12);
          v11[0] = *v7;
          v11[1] = LODWORD(v8) | (v9 << 32);
          (*(*v12 + 88))(v12, v11);
          (*(*v12 + 40))(v12);
        }

        if (v12)
        {
          (*(*v12 + 8))();
        }

        v10.n128_f32[0] = (*(*a1 + 32))(a1, v6);
        if ((v10.n128_u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
        {
          v10.n128_f32[0] = *a2 * floorf((v10.n128_f32[0] / *a2) + 0.5);
        }

        (*(*a1 + 176))(a1, v6, v10);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 152))(a1));
    }

    return (*(*a1 + 184))(a1, v5 & 0x3FFCFFFF0007, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_87524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::EncodeMapper(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::EncodeTable(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = a2;
  v5 = a2 & 1;
  v6 = (a2 & 2) != 0;
  std::unordered_map<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const* const,int>>>::unordered_map(a1 + 32, 0x400uLL, &v4);
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_87650(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const* const,int>>>::unordered_map(uint64_t a1, size_t a2, int *a3)
{
  v4 = *a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 36) = v4 & 1;
  *(a1 + 37) = (v4 & 2) != 0;
  *(a1 + 40) = 1065353216;
  std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>>>::__rehash<true>(a1, a2);
  return a1;
}

void std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 40));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 272))(a1, 0);
  (*(*a1 + 280))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v25 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if (*(a2 + 4) == 1 && (*a2 & 2) != 0)
    {
      v5 = (*(*a1 + 192))(a1);
      (*(*a1 + 176))(a1, v5, 0.0);
      v6 = 0;
    }

    else
    {
      LODWORD(v5) = -1;
      v6 = 1;
    }

    if ((*(*a1 + 152))(a1) >= 1)
    {
      v7 = 0;
      while (1)
      {
        (*(*a1 + 288))(a1, v7, &v34);
        while (!(*(*v34 + 24))(v34))
        {
          v8 = (*(*v34 + 32))(v34);
          v32 = fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()(a2, v8);
          v33 = v9;
          (*(*v34 + 88))(v34, &v32);
          (*(*v34 + 40))(v34);
        }

        if (v34)
        {
          (*(*v34 + 8))();
        }

        if (v6)
        {
          break;
        }

        if (v7 != v5)
        {
          *&v18 = (*(*a1 + 32))(a1, v7);
          v32 = 0;
          v33 = v18 | 0xFFFFFFFF00000000;
          v19 = fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()(a2, &v32);
          if (HIDWORD(v19) || v19 || (*&v32 = v20, LODWORD(v34) = 2139095040, v20 != INFINITY))
          {
            v32 = v19;
            v33 = __PAIR64__(v5, LODWORD(v20));
            (*(*a1 + 200))(a1, v7, &v32);
            v12.n128_u32[0] = 2139095040;
          }

          else
          {
            v12.n128_u32[0] = 2139095040;
          }

          goto LABEL_31;
        }

LABEL_32:
        v7 = (v7 + 1);
        if (v7 >= (*(*a1 + 152))(a1))
        {
          goto LABEL_35;
        }
      }

      *&v10 = (*(*a1 + 32))(a1, v7);
      v32 = 0;
      v33 = v10 | 0xFFFFFFFF00000000;
      v11 = fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()(a2, &v32);
      v14 = v13;
      if (!v11)
      {
LABEL_30:
        v12.n128_u32[0] = v14;
LABEL_31:
        (*(*a1 + 176))(a1, v7, v12);
        goto LABEL_32;
      }

      v15 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        boost::filesystem::path::path(v29, "FATAL");
        v16 = fst::LogMessage::LogMessage(&v31, v29);
      }

      else
      {
        boost::filesystem::path::path(__p, "ERROR");
        v16 = fst::LogMessage::LogMessage(&v28, __p);
      }

      v17 = fst::cerr(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ArcMap: non-zero arc labels for superfinal arc", 46);
      if (v15)
      {
        fst::LogMessage::~LogMessage(&v31);
        if (v30 < 0)
        {
          v21 = v29[0];
LABEL_28:
          operator delete(v21);
        }
      }

      else
      {
        fst::LogMessage::~LogMessage(&v28);
        if (v27 < 0)
        {
          v21 = __p[0];
          goto LABEL_28;
        }
      }

      (*(*a1 + 184))(a1, 4, 4);
      goto LABEL_30;
    }

LABEL_35:
    v22 = 0x3FFF00000007;
    if ((*a2 & 1) == 0)
    {
      v22 = 0x3FFFFFFF0007;
    }

    if ((*a2 & 2) != 0)
    {
      v23 = 0x1D7C48100007;
      if (*(a2 + 4) == 1)
      {
        v23 = 0x2EBC84200007;
      }

      v22 &= v23;
    }

    if (*(a2 + 16))
    {
      v24 = v25 | 4;
    }

    else
    {
      v24 = v25;
    }

    return (*(*a1 + 184))(a1, v22 & v24, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_87D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  fst::LogMessage::~LogMessage(&a29);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (a2)
  {
    result = (*(*a2 + 16))(a2);
    v6 = *a1 | 4;
  }

  else
  {
    result = 0;
    v6 = *a1 & 0xFFFFFFFB;
  }

  *(a1 + 88) = result;
  *a1 = v6;
  return result;
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (a2)
  {
    result = (*(*a2 + 16))(a2);
    v6 = *a1 | 8;
  }

  else
  {
    result = 0;
    v6 = *a1 & 0xFFFFFFF7;
  }

  *(a1 + 96) = result;
  *a1 = v6;
  return result;
}

unint64_t fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()(int *a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (a1[1] == 1)
  {
    if (v4 == -1)
    {
      if ((*a1 & 2) == 0 || (LODWORD(__p[0]) = *(a2 + 8), LODWORD(v25[0]) = 2139095040, *__p == INFINITY))
      {
LABEL_17:
        v5 = *a2;
        v6 = *(a2 + 4);
        v11 = *(a2 + 8);
        return v5 | (v6 << 32);
      }
    }

    v5 = fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Encode(*(a1 + 1), a2);
    LODWORD(v6) = *(a2 + 4);
    if (*a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = v6;
    }

    if ((*a1 & 2) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

LABEL_37:
    v17 = v7 | (*(a2 + 12) << 32);
    return v5 | (v6 << 32);
  }

  if (v4 == -1 || !*a2)
  {
    goto LABEL_17;
  }

  v8 = *a1;
  if ((*a1 & 1) != 0 && *a2 != *(a2 + 4))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v9 = fst::LogMessage::LogMessage(&v30, __p);
    v10 = fst::cerr(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "EncodeMapper: Label-encoded arc has different input and output labels", 69);
    fst::LogMessage::~LogMessage(&v30);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 1;
    v8 = *a1;
  }

  if ((v8 & 2) != 0)
  {
    LODWORD(v25[0]) = *(a2 + 8);
    LODWORD(v22[0]) = 0;
    if (*v25 != 0.0)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        boost::filesystem::path::path(v25, "FATAL");
      }

      else
      {
        boost::filesystem::path::path(v25, "ERROR");
      }

      v12 = fst::LogMessage::LogMessage(&v27, v25);
      v13 = fst::cerr(v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "EncodeMapper: Weight-encoded arc has non-trivial weight", 55);
      fst::LogMessage::~LogMessage(&v27);
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      *(a1 + 16) = 1;
    }
  }

  v14 = fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Decode(*(a1 + 1), *a2);
  if (v14)
  {
    v15 = v14;
    v5 = *v14;
    if (*a1)
    {
      v16 = v15;
    }

    else
    {
      v16 = a2;
    }

    v6 = *(v16 + 4);
    if ((*a1 & 2) == 0)
    {
      v15 = a2;
    }

    v7 = v15[2];
    goto LABEL_37;
  }

  if (FLAGS_fst_error_fatal == 1)
  {
    boost::filesystem::path::path(v22, "FATAL");
  }

  else
  {
    boost::filesystem::path::path(v22, "ERROR");
  }

  v19 = fst::LogMessage::LogMessage(&v24, v22);
  v20 = fst::cerr(v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "EncodeMapper: decode failed", 27);
  fst::LogMessage::~LogMessage(&v24);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *(a1 + 16) = 1;
  v21 = (*(a2 + 12) << 32) | 0x7FC00000;
  v5 = -1;
  v6 = 0xFFFFFFFFLL;
  return v5 | (v6 << 32);
}

void sub_88244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  fst::LogMessage::~LogMessage(&a28);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Encode(_DWORD *a1, uint64_t a2)
{
  v2 = ((*a1 << 31) >> 31) & *(a2 + 4);
  v3 = *(a2 + 8);
  if ((*a1 & 2) == 0)
  {
    v3 = 0.0;
  }

  v6[0] = *a2;
  v6[1] = v2;
  *&v6[2] = v3;
  v7 = v6;
  v4 = std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*>((a1 + 8), &v7);
  if (!v4)
  {
    operator new();
  }

  return *(v4 + 6);
}

uint64_t fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Decode(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = *(a1 + 8);
    if (a2 <= ((*(a1 + 16) - v2) >> 3))
    {
      return *(v2 + 8 * a2 - 8);
    }
  }

  boost::filesystem::path::path(__p, "ERROR");
  v3 = fst::LogMessage::LogMessage(&v8, __p);
  v4 = fst::cerr(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "EncodeTable::Decode: unknown decode key: ", 41);
  std::ostream::operator<<();
  fst::LogMessage::~LogMessage(&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_8850C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float **std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*>(uint64_t a1, float **a2)
{
  v4 = *a2;
  v5 = **a2;
  if (*(a1 + 36) == 1)
  {
    v5 += 7853 * *(v4 + 1);
    if ((*(a1 + 37) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 37))
  {
LABEL_5:
    v5 += 7867 * *(v4 + 2);
  }

LABEL_6:
  v6 = *(a1 + 8);
  if (!*&v6)
  {
    return 0;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v5)
    {
      if (std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>::operator()[abi:ne200100](uint64_t a1, float **a2, float **a3)
{
  v3 = *a2;
  v4 = *a3;
  return **a2 == **a3 && *(v3 + 1) == *(v4 + 1) && v3[2] == v4[2];
}

float **std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>>>::__emplace_unique_key_args<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::piecewise_construct_t const&,std::tuple<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const* const&>,std::tuple<>>(uint64_t a1, float **a2)
{
  v4 = *a2;
  v5 = **a2;
  if (*(a1 + 36) == 1)
  {
    v5 += 7853 * *(v4 + 1);
    if ((*(a1 + 37) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(a1 + 37))
  {
LABEL_5:
    v5 += 7867 * *(v4 + 2);
  }

LABEL_6:
  v6 = *(a1 + 8);
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (!std::__unordered_map_equal<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Tuple const*,int>,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleEqual,fst::EncodeTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TupleKey,true>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_22;
  }

  return v11;
}

void fst::MergeStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(void *a1, uint64_t a2)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((a1[5] - a1[4]) >> 3));
  v5 = a1[4];
  v4 = a1[5];
  v6 = v4 - v5;
  if (((v4 - v5) >> 3))
  {
    v7 = 0;
    v8 = (v6 >> 3);
    v9 = __p;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      *v9++ = **(v5 + (v7 >> 29));
      v7 += 0x100000000;
      --v8;
    }

    while (v8);
  }

  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    do
    {
      v11 = *(v5 + 8 * v10);
      if (v11)
      {
        do
        {
          v12 = *v11;
          (*(*a2 + 288))(a2, *v11, &v15);
          while (!(*(*v15 + 24))(v15))
          {
            v14 = *(*(*v15 + 32))(v15);
            HIDWORD(v14) = *(__p + *(a1[10] + 4 * SHIDWORD(v14)));
            if (v12 == *(__p + v10))
            {
              (*(*v15 + 88))(v15, &v14);
            }

            else
            {
              (*(*a2 + 200))(a2);
            }

            (*(*v15 + 40))(v15);
          }

          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          v11 = *(v11 + 1);
        }

        while (v11);
        v5 = a1[4];
        v4 = a1[5];
      }

      ++v10;
    }

    while (v10 < ((v4 - v5) >> 3));
  }

  v13 = (*(*a2 + 24))(a2);
  (*(*a2 + 168))(a2, *(__p + *(a1[10] + 4 * v13)));
  fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
}

void sub_88C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::AcyclicMinimizer(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 64))(a2, 0x40000, 1) == 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v4;
  if (!(*(*a2 + 64))(a2, 0x40000, 1))
  {
    FstCheck(1, "Weight::Properties() & kIdempotent", "../subproject/libquasar/libkaldi/tools/openfst/src/include/fst/minimize.h");
  }

  fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Initialize(a1, a2);
  fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Refine(a1, a2);
  return a1;
}

void fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Initialize(uint64_t a1, uint64_t a2)
{
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::HeightVisitor,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2);
  fst::Partition<int>::Initialize(a1, 0);
  fst::Partition<int>::AllocateClasses(a1, 1);
}

void sub_88E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Refine(void *a1, void *a2)
{
  v2 = a1[5] - a1[4];
  if ((v2 >> 3))
  {
    v5 = 0;
    v6 = (v2 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v17[0] = 0;
      v17[1] = 0;
      v17[2] = a2;
      v17[3] = a1;
      v18 = 7;
      v16 = v17;
      v8 = *(a1[4] + 8 * v5);
      v15 = *v8;
      v19 = &v15;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32) = v5;
      for (i = *(v8 + 8); i; i = *(i + 8))
      {
        v15 = *i;
        v10 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&v16, &v15);
        if (v17 == v10)
        {
          v11 = fst::Partition<int>::AddClass(a1);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v19 = &v15;
        *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32) = v11;
      }

      v12 = *(a1[4] + 8 * v5);
      while (v12)
      {
        v15 = *v12;
        v13 = *(a1[10] + 4 * v15);
        v19 = &v15;
        v14 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32);
        v12 = *(v12 + 8);
        if (v13 != v14)
        {
          fst::Partition<int>::Move(a1, v15, v14);
        }
      }

      std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v16, v17[0]);
      ++v5;
    }

    while (v5 != v7);
  }
}

void fst::Partition<int>::Initialize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      if (*(v4 + 8 * v6))
      {
        operator delete();
      }

      ++v6;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  v7 = *(a1 + 80);
  *(a1 + 16) = v4;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 88) = v7;
  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize((a1 + 8), a2);
  __x = -1;
  std::vector<int>::resize((a1 + 80), a2, &__x);
  std::vector<int>::reserve((a1 + 104), a2);
  if (a2)
  {
    operator new();
  }

  *a1 = 0;
}

void fst::Partition<int>::AllocateClasses(uint64_t a1, int a2)
{
  v2 = (a1 + 32);
  v3 = ((*(a1 + 40) - *(a1 + 32)) >> 3) + a2;
  *__x = 0;
  std::vector<fst::MemoryPoolBase *>::resize((a1 + 32), v3, __x);
  __x[0] = 0;
  std::vector<int>::resize(v2 + 3, v3, __x);
  *__x = 0;
  std::vector<fst::MemoryPoolBase *>::resize(&v2[1].__begin_, v3, __x);
  __x[0] = 0;
  std::vector<int>::resize(v2 + 4, v3, __x);
}

uint64_t fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::HeightVisitor,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
  }

  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    memset(&v7, 0, sizeof(v7));
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MemoryPool(v3, 64);
  }

  return result;
}

void sub_89958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AcyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::HeightVisitor::InitState(uint64_t a1, int a2)
{
  v4 = (*(a1 + 8) - *a1) >> 2;
  for (i = a2; v4 <= i; ++v4)
  {
    v7 = -1;
    std::vector<int>::push_back[abi:ne200100](a1, &v7);
  }

  if (*(a1 + 32) <= i)
  {
    *(a1 + 32) = a2 + 1;
  }

  return 1;
}

uint64_t fst::Partition<int>::AddClass(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (*(a1 + 40) - *(a1 + 32)) >> 3;
  *__x = 0;
  std::vector<fst::MemoryPoolBase *>::resize((a1 + 32), v2 + 1, __x);
  __x[0] = 0;
  std::vector<int>::resize(v1 + 3, v2 + 1, __x);
  *__x = 0;
  std::vector<fst::MemoryPoolBase *>::resize(&v1[1].__begin_, v2 + 1, __x);
  __x[0] = 0;
  std::vector<int>::resize(v1 + 4, v2 + 1, __x);
  return v2;
}

void *fst::Partition<int>::Move(void *result, int a2, int a3)
{
  v3 = *(result[10] + 4 * a2);
  v4 = result[1];
  v5 = *(v4 + 8 * a2);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6)
  {
    *(v6 + 16) = v7;
  }

  if (v7)
  {
    *(v7 + 8) = v6;
  }

  else
  {
    *(result[4] + 8 * v3) = v6;
    v4 = result[1];
  }

  v8 = *(v4 + 8 * a2);
  v9 = result[4];
  v10 = *(v9 + 8 * a3);
  if (v10)
  {
    *(v10 + 16) = v8;
    v10 = *(v9 + 8 * a3);
  }

  *(v8 + 8) = v10;
  *(v8 + 16) = 0;
  *(v9 + 8 * a3) = v8;
  *(result[10] + 4 * a2) = a3;
  v11 = result[13];
  ++*(v11 + 4 * a3);
  --*(v11 + 4 * v3);
  return result;
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()((a1 + 24), *a3, *(v4 + 7)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()((a1 + 24), *(v8 + 7), *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 4);
  if (v6)
  {
    v16 = *a1;
    v17 = (*(**a1 + 32))();
    v18 = (*(**a1 + 32))(*a1, a3);
    if (LODWORD(v17) < LODWORD(v18))
    {
      return 1;
    }

    if (LODWORD(v17) <= LODWORD(v18) && (a1[2] & 2) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v6 & 2) == 0)
  {
    return 0;
  }

LABEL_3:
  v7 = (*(**a1 + 40))(*a1, a2);
  if (v7 < (*(**a1 + 40))(*a1, a3))
  {
    return 1;
  }

  v8 = (*(**a1 + 40))(*a1, a2);
  if (v8 > (*(**a1 + 40))(*a1, a3) || (a1[2] & 4) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v27 = 0;
  (*(*v9 + 136))(v9, a2, v25);
  v10 = *a1;
  v24 = 0;
  (*(*v10 + 136))(v10, a3, v22);
  while (1)
  {
    if (v25[0])
    {
      if ((*(*v25[0] + 24))(v25[0]))
      {
        goto LABEL_36;
      }
    }

    else if (v27 >= v25[2])
    {
      goto LABEL_36;
    }

    if (v22[0])
    {
      if ((*(*v22[0] + 24))(v22[0]))
      {
        goto LABEL_36;
      }
    }

    else if (v24 >= v22[2])
    {
LABEL_36:
      v19 = 0;
      v20 = 1;
      goto LABEL_39;
    }

    if (v25[0])
    {
      v11 = (*(*v25[0] + 32))(v25[0]);
    }

    else
    {
      v11 = (v25[1] + 16 * v27);
    }

    if (v22[0])
    {
      v12 = (*(*v22[0] + 32))(v22[0]);
    }

    else
    {
      v12 = (v22[1] + 16 * v24);
    }

    if (*v11 < *v12)
    {
      goto LABEL_37;
    }

    if (*v11 > *v12)
    {
      break;
    }

    v13 = *(a1[1] + 80);
    v14 = *(v13 + 4 * v11[3]);
    v15 = *(v13 + 4 * v12[3]);
    if (v14 < v15)
    {
LABEL_37:
      v20 = 0;
      v19 = 1;
      goto LABEL_39;
    }

    if (v14 > v15)
    {
      break;
    }

    if (v25[0])
    {
      (*(*v25[0] + 40))(v25[0]);
    }

    else
    {
      ++v27;
    }

    if (v22[0])
    {
      (*(*v22[0] + 40))(v22[0]);
    }

    else
    {
      ++v24;
    }
  }

  v20 = 0;
  v19 = 0;
LABEL_39:
  if (v22[0])
  {
    (*(*v22[0] + 8))(v22[0]);
  }

  else if (v23)
  {
    --*v23;
  }

  if (v25[0])
  {
    (*(*v25[0] + 8))(v25[0]);
  }

  else if (v26)
  {
    --*v26;
  }

  if (v20)
  {
    return 0;
  }

  return v19;
}

void sub_8A120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  else if (a17)
  {
    --*a17;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(uint64_t a1, unsigned int *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()((a1 + 24), *(v3 + 28), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::operator()((a1 + 24), *a2, *(v6 + 28)))
  {
    return v2;
  }

  return v6;
}

void *fst::Partition<int>::~Partition(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      if (*(v3 + 8 * v4))
      {
        operator delete();
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v5 = a1[19];
  if (v5)
  {
    a1[20] = v5;
    operator delete(v5);
  }

  v6 = a1[16];
  if (v6)
  {
    a1[17] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    a1[14] = v7;
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

  v10 = a1[4];
  if (v10)
  {
    a1[5] = v10;
    operator delete(v10);
  }

  v11 = a1[1];
  if (v11)
  {
    a1[2] = v11;
    operator delete(v11);
  }

  return a1;
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::CyclicMinimizer(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 64))(a2, 0x40000, 1);
  *(a1 + 200) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3 == 0;
  *(a1 + 192) = 2;
  *(a1 + 196) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = off_271D08;
  fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFst();
}

void sub_8A464(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v2);
  fst::Partition<int>::~Partition(v1);
  _Unwind_Resume(a1);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::Initialize(uint64_t a1, uint64_t a2)
{
  fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, (a1 + 248), 1);
  fst::ArcSort<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1 + 248);
  fst::Partition<int>::Initialize(a1, (((*(*(a1 + 256) + 72) - *(*(a1 + 256) + 64)) << 29) - 0x100000000) >> 32);
  fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::PrePartition(a1, a2);
  operator new();
}

uint64_t fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::Compute(uint64_t result)
{
  v1 = *(result + 240);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = *(*(v2[26] + ((v2[29] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v2[29] & 0x3FFLL));
      ++v2[29];
      v2[30] = v1 - 1;
      std::deque<int>::__maybe_remove_front_spare[abi:ne200100]((v2 + 25), 1);
      result = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::Split(v2, v3);
      v1 = v2[30];
    }

    while (v1);
  }

  return result;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void fst::ArcSort<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_8A6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::PrePartition(uint64_t a1, uint64_t a2)
{
  if (FLAGS_v >= 5)
  {
    boost::filesystem::path::path(&__p, "INFO");
    v4 = fst::LogMessage::LogMessage(&v33, &__p);
    v5 = fst::cerr(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "PrePartition", 12);
    fst::LogMessage::~LogMessage(&v33);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }
  }

  v38 = 0;
  v39 = a2;
  v40 = a1;
  v41 = 1;
  __p = &v37;
  v37 = 0;
  v35 = 0;
  (*(*a2 + 128))(a2, &v33);
  v6 = fst::Partition<int>::AddClass(a1);
  if (v33)
  {
    v7 = (*(*v33 + 24))(v33);
  }

  else
  {
    v7 = v35;
  }

  v8 = *(*(a1 + 8) + 8 * v7);
  v9 = *(a1 + 32);
  v10 = *(v9 + 8 * v6);
  if (v10)
  {
    *(v10 + 16) = v8;
    v10 = *(v9 + 8 * v6);
  }

  *(v8 + 8) = v10;
  *(v8 + 16) = 0;
  *(v9 + 8 * v6) = v8;
  *(*(a1 + 80) + 4 * v7) = v6;
  ++*(*(a1 + 104) + 4 * v6);
  if (v33)
  {
    v11 = (*(*v33 + 24))(v33);
  }

  else
  {
    v11 = v35;
  }

  v32 = v11;
  v30[0] = &v32;
  *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v6;
  LODWORD(v30[0]) = v6;
  std::deque<int>::push_front((a1 + 200), v30);
  v12 = v33;
  if (v33)
  {
    goto LABEL_28;
  }

  ++v35;
  while (v33)
  {
    if ((*(*v33 + 16))(v33))
    {
      goto LABEL_30;
    }

    if (!v33)
    {
      goto LABEL_19;
    }

    v13 = (*(*v33 + 24))(v33);
LABEL_20:
    v32 = v13;
    v14 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&__p, &v32);
    if (&v37 == v14)
    {
      v21 = fst::Partition<int>::AddClass(a1);
      v22 = v21;
      v23 = v32;
      v24 = *(*(a1 + 8) + 8 * v32);
      v25 = *(a1 + 32);
      v26 = *(v25 + 8 * v21);
      if (v26)
      {
        *(v26 + 16) = v24;
        v26 = *(v25 + 8 * v21);
      }

      *(v24 + 8) = v26;
      *(v24 + 16) = 0;
      *(v25 + 8 * v21) = v24;
      *(*(a1 + 80) + 4 * v23) = v21;
      ++*(*(a1 + 104) + 4 * v21);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v21;
      LODWORD(v30[0]) = v22;
      std::deque<int>::push_front((a1 + 200), v30);
    }

    else
    {
      v15 = v32;
      v16 = *(v14 + 32);
      v17 = *(*(a1 + 8) + 8 * v32);
      v18 = *(a1 + 32);
      v19 = *(v18 + 8 * v16);
      if (v19)
      {
        *(v19 + 16) = v17;
        v19 = *(v18 + 8 * v16);
      }

      *(v17 + 8) = v19;
      *(v17 + 16) = 0;
      *(v18 + 8 * v16) = v17;
      *(*(a1 + 80) + 4 * v15) = v16;
      ++*(*(a1 + 104) + 4 * v16);
      v20 = *(v14 + 32);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v20;
    }

    v12 = v33;
    if (v33)
    {
LABEL_28:
      (*(*v33 + 32))(v12);
    }

    else
    {
      ++v35;
    }
  }

  if (v35 < v34)
  {
LABEL_19:
    v13 = v35;
    goto LABEL_20;
  }

LABEL_30:
  if (FLAGS_v >= 5)
  {
    boost::filesystem::path::path(v30, "INFO");
    v27 = fst::LogMessage::LogMessage(&v32, v30);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Initial Partition: ", 19);
    v29 = *(a1 + 40) - *(a1 + 32);
    std::ostream::operator<<();
    fst::LogMessage::~LogMessage(&v32);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&__p, v37);
}

void sub_8AB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t fst::StateMap<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t a1, void *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 168))(a1, v6);
    if ((*(*a1 + 152))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(a2, v7);
        (*(*a1 + 232))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 200))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 176))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 152))(a1));
    }

    v11 = *(*a1 + 184);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_8B058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::ILabelCompare<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetState(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::Split(void *a1, int a2)
{
  for (i = *(a1[4] + 8 * a2); i; i = *(i + 1))
  {
    if (*(*(*(a1[32] + 64) + 8 * (*i + 1)) + 32) != *(*(*(a1[32] + 64) + 8 * (*i + 1)) + 24))
    {
      v4 = a1[33];
      operator new();
    }
  }

  v5 = a1[33];
  v6 = *v5;
  v7 = (v5 + 8);
  v8 = *(v5 + 8);
  if (*v5 != v8)
  {
    v9 = -1;
    while (1)
    {
      v10 = *v6;
      v37 = *(v5 + 24);
      v11 = (v8 - v6) >> 3;
      if (v11 >= 2)
      {
        v12 = *v6;
        v13 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> **>>(v6, &v37, v11);
        v14 = (v8 - 8);
        if ((v8 - 8) == v13)
        {
          *v13 = v12;
        }

        else
        {
          *v13 = *v14;
          *v14 = v12;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> **>>(v6, (v13 + 1), &v37, v13 + 1 - v6);
        }
      }

      *v7 -= 8;
      if (!*v10)
      {
        break;
      }

      v15 = (*(**v10 + 24))(*v10);
      v16 = *v10;
      if (v15)
      {
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        else
        {
LABEL_16:
          v17 = v10[3];
          if (v17)
          {
            --*v17;
          }
        }

        operator delete();
      }

      if (!v16)
      {
        goto LABEL_22;
      }

      v18 = (*(*v16 + 32))(v16);
      if (*v10)
      {
        v19 = (*(**v10 + 32))(*v10);
        goto LABEL_24;
      }

LABEL_23:
      v19 = v10[1] + 16 * v10[4];
LABEL_24:
      v20 = *(v19 + 12);
      v21 = *v18;
      if (v9 != *v18)
      {
        fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
      }

      if (*(a1[13] + 4 * *(a1[10] + 4 * (v20 - 1))) >= 2u)
      {
        fst::Partition<int>::SplitOn(a1, v20 - 1);
      }

      if (*v10)
      {
        (*(**v10 + 40))(*v10);
        if (*v10)
        {
          if ((*(**v10 + 24))(*v10))
          {
            if (*v10)
            {
              (*(**v10 + 8))(*v10);
            }

            else
            {
LABEL_37:
              v26 = v10[3];
              if (v26)
              {
                --*v26;
              }
            }

            operator delete();
          }

          goto LABEL_35;
        }
      }

      else
      {
        ++v10[4];
      }

      if (v10[4] >= v10[2])
      {
        goto LABEL_37;
      }

LABEL_35:
      v22 = a1[33];
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      if (v24 >= v23)
      {
        v27 = (v24 - *v22) >> 3;
        if ((v27 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v28 = v23 - *v22;
        v29 = v28 >> 2;
        if (v28 >> 2 <= (v27 + 1))
        {
          v29 = v27 + 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v30 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1[33], v30);
        }

        v31 = (8 * v27);
        *v31 = v10;
        v25 = 8 * v27 + 8;
        v32 = *(v22 + 8) - *v22;
        v33 = v31 - v32;
        memcpy(v31 - v32, *v22, v32);
        v34 = *v22;
        *v22 = v33;
        *(v22 + 8) = v25;
        *(v22 + 16) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v24 = v10;
        v25 = (v24 + 1);
      }

      *(v22 + 8) = v25;
      v35 = *v22;
      v37 = *(v22 + 24);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> **>>(v35, v25, &v37, (v25 - v35) >> 3);
      v9 = v21;
      v5 = a1[33];
      v6 = *v5;
      v7 = (v5 + 8);
      v8 = *(v5 + 8);
      if (*v5 == v8)
      {
        return fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
      }
    }

    if (v10[4] >= v10[2])
    {
      goto LABEL_16;
    }

LABEL_22:
    v18 = (v10[1] + 16 * v10[4]);
    goto LABEL_23;
  }

  return fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
}

uint64_t fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 152);
  if (*(result + 160) != v3)
  {
    v5 = 0;
    do
    {
      result = fst::Partition<int>::SplitRefine(v2, *(v3 + 4 * v5));
      if (a2 && result != -1)
      {
        v6 = result;
        result = std::deque<int>::push_front((a2 + 16), &v6);
      }

      ++v5;
      v3 = *(v2 + 152);
    }

    while (v5 < (*(v2 + 160) - v3) >> 2);
  }

  *(v2 + 160) = v3;
  return result;
}

void *fst::Partition<int>::SplitOn(void *result, int a2)
{
  v11 = *(result[10] + 4 * a2);
  v2 = v11;
  if (*(result[13] + 4 * v11) != 1)
  {
    v4 = result;
    v5 = result[16];
    v6 = *(v5 + 4 * v11);
    if (!v6)
    {
      std::vector<int>::push_back[abi:ne200100](result + 19, &v11);
      v2 = v11;
      *(v4[7] + 8 * v11) = *(v4[4] + 8 * v11);
      v5 = v4[16];
      v6 = *(v5 + 4 * v2);
    }

    *(v5 + 4 * v2) = v6 + 1;
    v7 = v11;
    v8 = v4[7];
    v9 = *(v8 + 8 * v11);
    if (v9)
    {
      v10 = *(v4[1] + 8 * a2);
      if (v9 == v10)
      {
        *(v8 + 8 * v11) = *(v10 + 8);
      }
    }

    return fst::Partition<int>::Move(v4, a2, v7);
  }

  return result;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> **>>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, *(a2 - 8));
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
        v8 = (v6 + 8 * v7);
        result = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

BOOL fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare::operator()(uint64_t a1, void *a2, void *a3)
{
  if (*a2)
  {
    v4 = (*(**a2 + 32))(*a2);
  }

  else
  {
    v4 = (a2[1] + 16 * a2[4]);
  }

  if (*a3)
  {
    v5 = (*(**a3 + 32))(*a3);
  }

  else
  {
    v5 = (a3[1] + 16 * a3[4]);
  }

  return *v4 > *v5;
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> **>>(void *a1, uint64_t a2, uint64_t a3)
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
      v11 = fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
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

uint64_t fst::Partition<int>::SplitRefine(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 56) + 8 * a2);
  if (v4)
  {
    result = fst::Partition<int>::AddClass(a1);
    if (*(a1 + 176))
    {
      v6 = *(*(a1 + 32) + 8 * a2);
      if (v6 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          ++v7;
          v6 = *(v6 + 8);
        }

        while (v6 != v4);
      }

      *(*(a1 + 128) + 4 * a2) = v7;
    }

    else
    {
      v7 = *(*(a1 + 128) + 4 * a2);
    }

    v8 = *(*(a1 + 104) + 4 * a2) - v7;
    if (v8 >= v7)
    {
      *(*(a1 + 32) + 8 * result) = *(*(a1 + 32) + 8 * a2);
      v12 = *(a1 + 104);
      *(v12 + 4 * a2) = v8;
      v9 = result << 32;
      *(v12 + 4 * result) = *(*(a1 + 128) + 4 * a2);
      *(*(v4 + 16) + 8) = 0;
      *(v4 + 16) = 0;
      *(*(a1 + 32) + 8 * a2) = v4;
    }

    else
    {
      *(*(a1 + 32) + 8 * result) = v4;
      v9 = result << 32;
      *(*(v4 + 16) + 8) = 0;
      v10 = *(*(a1 + 128) + 4 * a2);
      *(v4 + 16) = 0;
      v11 = *(a1 + 104);
      *(v11 + 4 * a2) = v10;
      *(v11 + 4 * result) = v8;
    }

    v13 = *(*(a1 + 32) + (v9 >> 29));
    if (v13)
    {
      v14 = *(a1 + 80);
      do
      {
        *(v14 + 4 * *v13) = result;
        v13 = *(v13 + 1);
      }

      while (v13);
    }

    *(*(a1 + 56) + 8 * a2) = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(*(a1 + 128) + 4 * a2) = 0;
  return result;
}

void *fst::CyclicMinimizer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::LifoQueue<int>>::~CyclicMinimizer(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~ImplToFst(a1 + 31);
  std::deque<int>::~deque[abi:ne200100](a1 + 25);

  return fst::Partition<int>::~Partition(a1);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 168))(a1, v6);
    if ((*(*a1 + 152))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetState(a2, v7);
        (*(*a1 + 232))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= (a2[3] - v9) >> 4)
          {
            break;
          }

          (*(*a1 + 200))(a1, v7, v9 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 176))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 152))(a1));
    }

    v10 = *(*a1 + 184);

    return v10(a1, v5 & 0xA6A0A950007, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v4, v5);
  v6 = *a1;
  v15 = 0;
  (*(*v6 + 136))(v6, a2, v13);
  while (1)
  {
    if (!v13[0])
    {
      if (v15 >= v13[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v7 = (v13[1] + 16 * v15);
      goto LABEL_8;
    }

    if ((*(*v13[0] + 24))(v13[0]))
    {
      break;
    }

    if (!v13[0])
    {
      goto LABEL_7;
    }

    v7 = (*(*v13[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](v4, v7);
    if (v13[0])
    {
      (*(*v13[0] + 40))(v13[0]);
    }

    else
    {
      ++v15;
    }
  }

  if (v13[0])
  {
    (*(*v13[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v14)
  {
    --*v14;
  }

LABEL_15:
  v8 = a1[2];
  v9 = a1[3];
  v10 = 126 - 2 * __clz((v9 - v8) >> 4);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v8, v9, v13, v11, 1);
  v12 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> *>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> *>,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Equal &>(a1[2], a1[3], v13);
  std::vector<kaldi::TransitionModel::Tuple>::resize(v4, (v12 - a1[2]) >> 4);
}

void sub_8BF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(uint64_t result, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v21 = &a2[-1];
        v22 = a2[-1].n128_i32[0];
        if (v22 < *v9 || v22 <= *v9 && ((v31 = a2[-1].n128_i32[1], v32 = *(v9 + 4), v31 < v32) || v31 <= v32 && a2[-1].n128_u32[3] < *(v9 + 12)))
        {
          v40 = *v9;
          *v9 = *v21;
          *v21 = v40;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v9, (v9 + 16), (v9 + 32));
      v23 = a2 - 1;
      v24 = a2[-1].n128_i32[0];
      v25 = *(v9 + 32);
      if (v24 < v25 || v24 <= v25 && ((v33 = a2[-1].n128_i32[1], v34 = *(v9 + 36), v33 < v34) || v33 <= v34 && a2[-1].n128_u32[3] < *(v9 + 44)))
      {
        v26 = *(v9 + 32);
        *(v9 + 32) = *v23;
        *v23 = v26;
        v27 = *(v9 + 32);
        v28 = *(v9 + 16);
        if (v27 < v28 || v27 <= v28 && ((v35 = *(v9 + 36), v36 = *(v9 + 20), v35 < v36) || v35 <= v36 && *(v9 + 44) < *(v9 + 28)))
        {
          v29 = *(v9 + 16);
          *(v9 + 16) = *(v9 + 32);
          *(v9 + 32) = v29;
          v30 = *(v9 + 16);
          if (v30 < *v9 || v30 <= *v9 && ((v37 = *(v9 + 20), v38 = *(v9 + 4), v37 < v38) || v37 <= v38 && *(v9 + 28) < *(v9 + 12)))
          {
            v41 = *v9;
            *v9 = *(v9 + 16);
            *(v9 + 16) = v41;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v9, (v9 + 16), v9 + 32, (v9 + 48), &a2[-1]);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 16 * (v12 >> 1));
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>((v9 + 16 * (v12 >> 1)), v9, &a2[-1]);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v9, (v9 + 16 * (v12 >> 1)), &a2[-1]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>((v9 + 16), v14 - 4, &a2[-2]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>((v9 + 32), (v9 + 16 + 16 * v13), &a2[-3]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v14 - 1, v14, (v9 + 16 + 16 * v13));
      v39 = *v9;
      *v9 = *v14;
      *v14 = v39;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v15 = *(v9 - 16);
    if (v15 >= *v9)
    {
      if (v15 > *v9 || (v16 = *(v9 - 12), v17 = *(v9 + 4), v16 >= v17) && (v16 > v17 || *(v9 - 4) >= *(v9 + 12)))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &>(v9, a2);
        v9 = result;
        goto LABEL_27;
      }
    }

LABEL_22:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(v9, v18);
    v9 = (v18 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>((v18 + 1), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_25:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 1);
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(v9, (v9 + 16), &a2[-1]);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(__int128 *a1, int *a2, __int128 *a3)
{
  v3 = *a2;
  if (*a2 < *a1 || v3 <= *a1 && ((v9 = a2[1], v10 = *(a1 + 1), v9 < v10) || v9 <= v10 && a2[3] < *(a1 + 3)))
  {
    if (*a3 < v3 || *a3 <= v3 && ((v11 = *(a3 + 1), v12 = a2[1], v11 < v12) || v11 <= v12 && *(a3 + 3) < a2[3]))
    {
      v4 = *a1;
      *a1 = *a3;
    }

    else
    {
      v7 = *a1;
      *a1 = *a2;
      *a2 = v7;
      if (*a3 >= *a2)
      {
        if (*a3 > *a2)
        {
          return 1;
        }

        v15 = *(a3 + 1);
        v16 = a2[1];
        if (v15 >= v16 && (v15 > v16 || *(a3 + 3) >= a2[3]))
        {
          return 1;
        }
      }

      v4 = *a2;
      *a2 = *a3;
    }

    *a3 = v4;
    return 1;
  }

  if (*a3 < v3 || *a3 <= v3 && ((v17 = *(a3 + 1), v18 = a2[1], v17 < v18) || v17 <= v18 && *(a3 + 3) < a2[3]))
  {
    v5 = *a2;
    *a2 = *a3;
    *a3 = v5;
    if (*a2 < *a1 || *a2 <= *a1 && ((v13 = a2[1], v14 = *(a1 + 1), v13 < v14) || v13 <= v14 && a2[3] < *(a1 + 3)))
    {
      v6 = *a1;
      *a1 = *a2;
      *a2 = v6;
    }

    return 1;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(uint64_t a1, int *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v14 = *(a4 + 1), v15 = *(a3 + 4), v14 < v15) || v14 <= v15 && *(a4 + 3) < *(a3 + 12)))
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    if (*a3 < *a2 || *a3 <= *a2 && ((v16 = *(a3 + 4), v17 = a2[1], v16 < v17) || v16 <= v17 && *(a3 + 12) < a2[3]))
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      if (*a2 < *a1 || *a2 <= *a1 && ((v28 = a2[1], v29 = *(a1 + 4), v28 < v29) || v28 <= v29 && a2[3] < *(a1 + 12)))
      {
        v13 = *a1;
        *a1 = *a2;
        *a2 = v13;
      }
    }
  }

  if (*a5 < *a4 || *a5 <= *a4 && ((v22 = *(a5 + 1), v23 = *(a4 + 1), v22 < v23) || v22 <= v23 && *(a5 + 3) < *(a4 + 3)))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    if (*a4 < *a3 || *a4 <= *a3 && ((v24 = *(a4 + 1), v25 = *(a3 + 4), v24 < v25) || v24 <= v25 && *(a4 + 3) < *(a3 + 12)))
    {
      v19 = *a3;
      *a3 = *a4;
      *a4 = v19;
      if (*a3 < *a2 || *a3 <= *a2 && ((v26 = *(a3 + 4), v27 = a2[1], v26 < v27) || v26 <= v27 && *(a3 + 12) < a2[3]))
      {
        v20 = *a2;
        *a2 = *a3;
        *a3 = v20;
        if (*a2 < *a1 || *a2 <= *a1 && ((v30 = a2[1], v31 = *(a1 + 4), v30 < v31) || v30 <= v31 && a2[3] < *(a1 + 12)))
        {
          v21 = *a1;
          *a1 = *a2;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

_OWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(_OWORD *result, _OWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 1;
  if (result + 1 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[4];
    if (v6 >= *v5)
    {
      if (v6 > *v5)
      {
        goto LABEL_22;
      }

      v7 = v5[5];
      v14 = v5[1];
      if (v7 >= v14 && (v7 > v14 || v5[7] >= v5[3]))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v7 = v5[5];
    }

    v8 = v5[6];
    v9 = v5[7];
    *v4 = *v5;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_21;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        if (v6 > v12)
        {
          goto LABEL_20;
        }

        v13 = *(result + v11 - 12);
        if (v7 >= v13)
        {
          break;
        }
      }

LABEL_13:
      v5 -= 4;
      *(result + v11) = *(result + v11 - 16);
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_21;
      }
    }

    if (v7 <= v13)
    {
      v10 = (result + v11);
      if (v9 >= *(result + v11 - 4))
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

LABEL_20:
    v10 = v5;
LABEL_21:
    *v10 = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
LABEL_22:
    v2 = v4 + 1;
    v3 += 16;
  }

  while (v4 + 1 != a2);
  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 4 == a2)
      {
        return result;
      }

      v2 = result;
      result += 4;
      v3 = v2[4];
      if (v3 >= *v2)
      {
        if (v3 <= *v2)
        {
          v4 = v2[5];
          v11 = v2[1];
          if (v4 < v11 || v4 <= v11 && v2[7] < v2[3])
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v4 = v2[5];
LABEL_5:
        v5 = v2[6];
        v6 = v2[7];
        do
        {
          do
          {
            v7 = v2;
            *(v2 + 1) = *v2;
            v8 = *(v2 - 4);
            v2 -= 4;
            v9 = v3 <= v8;
          }

          while (v3 < v8);
          if (!v9)
          {
            break;
          }

          v10 = *(v7 - 3);
        }

        while (v4 < v10 || v4 <= v10 && v6 < *(v7 - 1));
        *v7 = v3;
        v7[1] = v4;
        v7[2] = v5;
        v7[3] = v6;
      }
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &>(_DWORD *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = *(a2 - 16);
  if (*a1 < v5 || v2 <= v5 && ((v21 = *(a2 - 12), v3 < v21) || v3 <= v21 && v4 < *(a2 - 4)))
  {
    i = a1;
    while (1)
    {
      v8 = i[4];
      i += 4;
      v7 = v8;
      if (v2 < v8)
      {
        break;
      }

      if (v2 <= v7)
      {
        v9 = i[1];
        if (v3 < v9 || v3 <= v9 && v4 < i[3])
        {
          break;
        }
      }
    }
  }

  else
  {
    for (i = a1 + 4; i < a2; i += 4)
    {
      if (v2 < *i)
      {
        break;
      }

      if (v2 <= *i)
      {
        v20 = i[1];
        if (v3 < v20 || v3 <= v20 && v4 < i[3])
        {
          break;
        }
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; ; a2 -= 16)
    {
      if (v2 >= v5)
      {
        if (v2 > v5)
        {
          break;
        }

        v10 = *(a2 + 4);
        if (v3 >= v10 && (v3 > v10 || v4 >= *(a2 + 12)))
        {
          break;
        }
      }

      v11 = *(a2 - 16);
      v5 = v11;
    }
  }

  v12 = a1[2];
  while (i < a2)
  {
    v22 = *i;
    *i = *a2;
    *a2 = v22;
    while (1)
    {
      v14 = i[4];
      i += 4;
      v13 = v14;
      if (v2 < v14)
      {
        break;
      }

      if (v2 <= v13)
      {
        v15 = i[1];
        if (v3 < v15 || v3 <= v15 && v4 < i[3])
        {
          break;
        }
      }
    }

    do
    {
      do
      {
        v16 = *(a2 - 16);
        a2 -= 16;
        v17 = v2 <= v16;
      }

      while (v2 < v16);
      if (!v17)
      {
        break;
      }

      v18 = *(a2 + 4);
    }

    while (v3 < v18 || v3 <= v18 && v4 < *(a2 + 12));
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 4) = v2;
  *(i - 3) = v3;
  *(i - 2) = v12;
  *(i - 1) = v4;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>> *,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &>(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  while (1)
  {
    v7 = a1[v2 + 4];
    if (v7 >= v3)
    {
      if (v7 > v3)
      {
        break;
      }

      v8 = a1[v2 + 5];
      if (v8 >= v4 && (v8 > v4 || a1[v2 + 7] >= v6))
      {
        break;
      }
    }

    v2 += 4;
  }

  v9 = &a1[v2 + 4];
  if (v2 * 4)
  {
    while (1)
    {
      v11 = *(a2 - 16);
      a2 -= 16;
      v10 = v11;
      if (v11 < v3)
      {
        break;
      }

      if (v10 <= v3)
      {
        v12 = *(a2 + 4);
        if (v12 < v4 || v12 <= v4 && *(a2 + 12) < v6)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_25:
    if (v9 < a2)
    {
      do
      {
        v14 = *(a2 - 16);
        a2 -= 16;
        v13 = v14;
        if (v14 < v3)
        {
          break;
        }

        if (v13 > v3)
        {
          goto LABEL_25;
        }

        v15 = *(a2 + 4);
        if (v15 < v4)
        {
          break;
        }

        if (v15 > v4)
        {
          goto LABEL_25;
        }
      }

      while (*(a2 + 12) >= v6 && v9 < a2);
    }
  }

  v17 = v9;
  if (v9 < a2)
  {
    v18 = a2;
    do
    {
      v26 = *v17;
      *v17 = *v18;
      *v18 = v26;
      do
      {
        do
        {
          v19 = *(v17 + 16);
          v17 += 16;
          v20 = v19 <= v3;
        }

        while (v19 < v3);
        if (!v20)
        {
          break;
        }

        v21 = *(v17 + 4);
      }

      while (v21 < v4 || v21 <= v4 && *(v17 + 12) < v6);
      while (1)
      {
        v23 = *(v18 - 16);
        v18 -= 16;
        v22 = v23;
        if (v23 < v3)
        {
          break;
        }

        if (v22 <= v3)
        {
          v24 = *(v18 + 4);
          if (v24 < v4 || v24 <= v4 && *(v18 + 12) < v6)
          {
            break;
          }
        }
      }
    }

    while (v17 < v18);
  }

  if ((v17 - 16) != a1)
  {
    *a1 = *(v17 - 16);
  }

  *(v17 - 16) = v3;
  *(v17 - 12) = v4;
  *(v17 - 8) = v5;
  *(v17 - 4) = v6;
  return v17 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), a2 - 1);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32));
        v20 = a2 - 1;
        v21 = *(a2 - 4);
        v22 = *(a1 + 32);
        if (v21 < v22 || v21 <= v22 && ((v31 = *(a2 - 3), v32 = *(a1 + 36), v31 < v32) || v31 <= v32 && *(a2 - 1) < *(a1 + 44)))
        {
          v23 = *(a1 + 32);
          *(a1 + 32) = *v20;
          *v20 = v23;
          v24 = *(a1 + 32);
          v25 = *(a1 + 16);
          if (v24 < v25 || v24 <= v25 && ((v33 = *(a1 + 36), v34 = *(a1 + 20), v33 < v34) || v33 <= v34 && *(a1 + 44) < *(a1 + 28)))
          {
            v26 = *(a1 + 16);
            *(a1 + 16) = *(a1 + 32);
            *(a1 + 32) = v26;
            v27 = *(a1 + 16);
            if (v27 < *a1 || v27 <= *a1 && ((v36 = *(a1 + 20), v37 = *(a1 + 4), v36 < v37) || v36 <= v37 && *(a1 + 28) < *(a1 + 12)))
            {
              v28 = *a1;
              *a1 = *(a1 + 16);
              *(a1 + 16) = v28;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), a1 + 32, (a1 + 48), a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 1;
      v6 = *(a2 - 4);
      if (v6 < *a1 || v6 <= *a1 && ((v29 = *(a2 - 3), v30 = *(a1 + 4), v29 < v30) || v29 <= v30 && *(a2 - 1) < *(a1 + 12)))
      {
        v7 = *a1;
        *a1 = *v5;
        *v5 = v7;
      }

      return 1;
    }
  }

  v8 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,0>(a1, (a1 + 16), (a1 + 32));
  v9 = (a1 + 48);
  if ((a1 + 48) != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      if (*v9 >= *v8)
      {
        if (v12 > *v8)
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 1);
        v19 = v8[1];
        if (v13 >= v19 && (v13 > v19 || *(v9 + 3) >= v8[3]))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v13 = *(v9 + 1);
      }

      v14 = *(v9 + 2);
      v15 = *(v9 + 3);
      *v9 = *v8;
      v16 = v10;
      do
      {
        v17 = *(a1 + v16 + 16);
        if (v12 >= v17)
        {
          if (v12 > v17)
          {
            goto LABEL_24;
          }

          v18 = *(a1 + v16 + 20);
          if (v13 >= v18)
          {
            if (v13 > v18)
            {
              v8 = (a1 + v16 + 32);
              goto LABEL_24;
            }

            if (v15 >= *(a1 + v16 + 28))
            {
              goto LABEL_24;
            }
          }
        }

        v8 -= 4;
        *(a1 + v16 + 32) = *(a1 + v16 + 16);
        v16 -= 16;
      }

      while (v16 != -32);
      v8 = a1;
LABEL_24:
      *v8 = v12;
      v8[1] = v13;
      v8[2] = v14;
      v8[3] = v15;
      if (++v11 == 8)
      {
        return v9 + 1 == a2;
      }

LABEL_27:
      v8 = v9;
      v10 += 16;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, v11);
        v11 -= 4;
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
        if (v12->n128_u32[0] < a1->n128_u32[0] || v12->n128_u32[0] <= a1->n128_u32[0] && ((v14 = v12->n128_i32[1], v15 = a1->n128_i32[1], v14 < v15) || v14 <= v15 && v12->n128_u32[3] < a1->n128_u32[3]))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 1;
      do
      {
        v20 = *a1;
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, a4, v8);
        if (v16 == v17)
        {
          *v17 = v20;
        }

        else
        {
          *v17 = *v16;
          *v16 = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(a1, &v17[1], a4, &v17[1] - a1);
        }

        --v16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[4];
        if (*v8 < v10 || *v8 <= v10 && ((v23 = v8[1], v24 = v8[5], v23 < v24) || v23 <= v24 && v8[3] < v8[7]))
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (*v8 >= *a4)
      {
        if (*v8 <= v11)
        {
          v22 = v8[1];
          v12 = a4[1];
          if (v22 < v12 || v22 <= v12 && v8[3] < a4[3])
          {
            return result;
          }
        }

        else
        {
          v12 = a4[1];
        }

        v13 = a4[2];
        v14 = a4[3];
        *a4 = *v8;
        while (v5 >= v7)
        {
          v15 = v8;
          v16 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v17 = v16 + 2;
          if (v17 < a3)
          {
            v18 = v8[4];
            if (*v8 < v18 || *v8 <= v18 && ((v20 = v8[1], v21 = v8[5], v20 < v21) || v20 <= v21 && v8[3] < v8[7]))
            {
              v8 += 4;
              v7 = v17;
            }
          }

          if (*v8 < v11 || *v8 <= v11 && ((v19 = v8[1], v19 < v12) || v19 <= v12 && v8[3] < v14))
          {
            v8 = v15;
            break;
          }

          *v15 = *v8;
        }

        *v8 = v11;
        v8[1] = v12;
        v8[2] = v13;
        v8[3] = v14;
      }
    }
  }

  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[v3];
    a1 = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[2].n128_i32[0];
      v9 = v5[1].n128_i32[0];
      if (v9 < v8 || v9 <= v8 && ((v11 = v5[1].n128_i32[1], v12 = v5[2].n128_i32[1], v11 < v12) || v11 <= v12 && v5[1].n128_u32[3] < v5[2].n128_u32[3]))
      {
        a1 = v5 + 2;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Compare &,fst::ArcTpl<fst::TropicalWeightTpl<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *(a2 - 16);
    if (*v6 >= v7)
    {
      if (*v6 > v7)
      {
        return result;
      }

      v14 = v6[1];
      v8 = *(a2 - 12);
      if (v14 >= v8 && (v14 > v8 || v6[3] >= *(a2 - 4)))
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 12);
    }

    v9 = *(a2 - 8);
    v10 = *(a2 - 4);
    *(a2 - 16) = *v6;
    if (v4 >= 2)
    {
      while (1)
      {
        v11 = v6;
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
        if (*v6 >= v7)
        {
          if (*v6 > v7)
          {
            break;
          }

          v13 = v6[1];
          if (v13 >= v8 && (v13 > v8 || v6[3] >= v10))
          {
            break;
          }
        }

        *v11 = *v6;
        if (v12 <= 1)
        {
          goto LABEL_18;
        }
      }

      v6 = v11;
    }

LABEL_18:
    *v6 = v7;
    v6[1] = v8;
    v6[2] = v9;
    v6[3] = v10;
  }

  return result;
}

uint64_t std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> *>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> *>,fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Equal &>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 16;
      if ((a1 + 16) == a2)
      {
        break;
      }

      v8 = fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Equal::operator()(a3, a1, a1 + 16);
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 16;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      for (i = (v9 + 32); i != a2; ++i)
      {
        if (!fst::ArcUniqueMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Equal::operator()(a3, v9, i))
        {
          *(v9 + 16) = *i;
          v9 += 16;
        }
      }

      return v9 + 16;
    }
  }

  return result;
}